; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18822 () Bool)

(assert start!18822)

(declare-fun b!174009 () Bool)

(declare-fun b_free!6689 () Bool)

(declare-fun b_next!6689 () Bool)

(assert (=> b!174009 (= b_free!6689 (not b_next!6689))))

(declare-fun tp!84887 () Bool)

(declare-fun b_and!11621 () Bool)

(assert (=> b!174009 (= tp!84887 b_and!11621)))

(declare-fun b_free!6691 () Bool)

(declare-fun b_next!6691 () Bool)

(assert (=> b!174009 (= b_free!6691 (not b_next!6691))))

(declare-fun tp!84880 () Bool)

(declare-fun b_and!11623 () Bool)

(assert (=> b!174009 (= tp!84880 b_and!11623)))

(declare-fun b!174005 () Bool)

(declare-fun b_free!6693 () Bool)

(declare-fun b_next!6693 () Bool)

(assert (=> b!174005 (= b_free!6693 (not b_next!6693))))

(declare-fun tp!84881 () Bool)

(declare-fun b_and!11625 () Bool)

(assert (=> b!174005 (= tp!84881 b_and!11625)))

(declare-fun b_free!6695 () Bool)

(declare-fun b_next!6695 () Bool)

(assert (=> b!174005 (= b_free!6695 (not b_next!6695))))

(declare-fun tp!84886 () Bool)

(declare-fun b_and!11627 () Bool)

(assert (=> b!174005 (= tp!84886 b_and!11627)))

(declare-fun b!174015 () Bool)

(declare-fun b_free!6697 () Bool)

(declare-fun b_next!6697 () Bool)

(assert (=> b!174015 (= b_free!6697 (not b_next!6697))))

(declare-fun tp!84877 () Bool)

(declare-fun b_and!11629 () Bool)

(assert (=> b!174015 (= tp!84877 b_and!11629)))

(declare-fun b_free!6699 () Bool)

(declare-fun b_next!6699 () Bool)

(assert (=> b!174015 (= b_free!6699 (not b_next!6699))))

(declare-fun tp!84882 () Bool)

(declare-fun b_and!11631 () Bool)

(assert (=> b!174015 (= tp!84882 b_and!11631)))

(declare-fun bs!17106 () Bool)

(declare-fun b!174010 () Bool)

(declare-fun b!173998 () Bool)

(assert (= bs!17106 (and b!174010 b!173998)))

(declare-fun lambda!5012 () Int)

(declare-fun lambda!5011 () Int)

(assert (=> bs!17106 (not (= lambda!5012 lambda!5011))))

(declare-fun b!174032 () Bool)

(declare-fun e!105527 () Bool)

(assert (=> b!174032 (= e!105527 true)))

(declare-fun b!174031 () Bool)

(declare-fun e!105526 () Bool)

(assert (=> b!174031 (= e!105526 e!105527)))

(declare-fun b!174030 () Bool)

(declare-fun e!105525 () Bool)

(assert (=> b!174030 (= e!105525 e!105526)))

(assert (=> b!174010 e!105525))

(assert (= b!174031 b!174032))

(assert (= b!174030 b!174031))

(declare-datatypes ((List!2945 0))(
  ( (Nil!2935) (Cons!2935 (h!8332 (_ BitVec 16)) (t!27583 List!2945)) )
))
(declare-datatypes ((TokenValue!549 0))(
  ( (FloatLiteralValue!1098 (text!4288 List!2945)) (TokenValueExt!548 (__x!2585 Int)) (Broken!2745 (value!19309 List!2945)) (Object!558) (End!549) (Def!549) (Underscore!549) (Match!549) (Else!549) (Error!549) (Case!549) (If!549) (Extends!549) (Abstract!549) (Class!549) (Val!549) (DelimiterValue!1098 (del!609 List!2945)) (KeywordValue!555 (value!19310 List!2945)) (CommentValue!1098 (value!19311 List!2945)) (WhitespaceValue!1098 (value!19312 List!2945)) (IndentationValue!549 (value!19313 List!2945)) (String!3824) (Int32!549) (Broken!2746 (value!19314 List!2945)) (Boolean!550) (Unit!2615) (OperatorValue!552 (op!609 List!2945)) (IdentifierValue!1098 (value!19315 List!2945)) (IdentifierValue!1099 (value!19316 List!2945)) (WhitespaceValue!1099 (value!19317 List!2945)) (True!1098) (False!1098) (Broken!2747 (value!19318 List!2945)) (Broken!2748 (value!19319 List!2945)) (True!1099) (RightBrace!549) (RightBracket!549) (Colon!549) (Null!549) (Comma!549) (LeftBracket!549) (False!1099) (LeftBrace!549) (ImaginaryLiteralValue!549 (text!4289 List!2945)) (StringLiteralValue!1647 (value!19320 List!2945)) (EOFValue!549 (value!19321 List!2945)) (IdentValue!549 (value!19322 List!2945)) (DelimiterValue!1099 (value!19323 List!2945)) (DedentValue!549 (value!19324 List!2945)) (NewLineValue!549 (value!19325 List!2945)) (IntegerValue!1647 (value!19326 (_ BitVec 32)) (text!4290 List!2945)) (IntegerValue!1648 (value!19327 Int) (text!4291 List!2945)) (Times!549) (Or!549) (Equal!549) (Minus!549) (Broken!2749 (value!19328 List!2945)) (And!549) (Div!549) (LessEqual!549) (Mod!549) (Concat!1300) (Not!549) (Plus!549) (SpaceValue!549 (value!19329 List!2945)) (IntegerValue!1649 (value!19330 Int) (text!4292 List!2945)) (StringLiteralValue!1648 (text!4293 List!2945)) (FloatLiteralValue!1099 (text!4294 List!2945)) (BytesLiteralValue!549 (value!19331 List!2945)) (CommentValue!1099 (value!19332 List!2945)) (StringLiteralValue!1649 (value!19333 List!2945)) (ErrorTokenValue!549 (msg!610 List!2945)) )
))
(declare-datatypes ((C!2424 0))(
  ( (C!2425 (val!1098 Int)) )
))
(declare-datatypes ((List!2946 0))(
  ( (Nil!2936) (Cons!2936 (h!8333 C!2424) (t!27584 List!2946)) )
))
(declare-datatypes ((IArray!1753 0))(
  ( (IArray!1754 (innerList!934 List!2946)) )
))
(declare-datatypes ((Conc!876 0))(
  ( (Node!876 (left!2250 Conc!876) (right!2580 Conc!876) (csize!1982 Int) (cheight!1087 Int)) (Leaf!1479 (xs!3471 IArray!1753) (csize!1983 Int)) (Empty!876) )
))
(declare-datatypes ((BalanceConc!1760 0))(
  ( (BalanceConc!1761 (c!34379 Conc!876)) )
))
(declare-datatypes ((TokenValueInjection!870 0))(
  ( (TokenValueInjection!871 (toValue!1194 Int) (toChars!1053 Int)) )
))
(declare-datatypes ((String!3825 0))(
  ( (String!3826 (value!19334 String)) )
))
(declare-datatypes ((Regex!751 0))(
  ( (ElementMatch!751 (c!34380 C!2424)) (Concat!1301 (regOne!2014 Regex!751) (regTwo!2014 Regex!751)) (EmptyExpr!751) (Star!751 (reg!1080 Regex!751)) (EmptyLang!751) (Union!751 (regOne!2015 Regex!751) (regTwo!2015 Regex!751)) )
))
(declare-datatypes ((Rule!854 0))(
  ( (Rule!855 (regex!527 Regex!751) (tag!705 String!3825) (isSeparator!527 Bool) (transformation!527 TokenValueInjection!870)) )
))
(declare-datatypes ((List!2947 0))(
  ( (Nil!2937) (Cons!2937 (h!8334 Rule!854) (t!27585 List!2947)) )
))
(declare-fun rules!1920 () List!2947)

(get-info :version)

(assert (= (and b!174010 ((_ is Cons!2937) rules!1920)) b!174030))

(declare-fun order!1631 () Int)

(declare-fun order!1629 () Int)

(declare-fun dynLambda!1129 (Int Int) Int)

(declare-fun dynLambda!1130 (Int Int) Int)

(assert (=> b!174032 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5012))))

(declare-fun order!1633 () Int)

(declare-fun dynLambda!1131 (Int Int) Int)

(assert (=> b!174032 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5012))))

(assert (=> b!174010 true))

(declare-fun b!173991 () Bool)

(declare-fun e!105511 () Bool)

(declare-fun e!105507 () Bool)

(assert (=> b!173991 (= e!105511 (not e!105507))))

(declare-fun res!78626 () Bool)

(assert (=> b!173991 (=> res!78626 e!105507)))

(declare-fun lt!55824 () List!2946)

(declare-datatypes ((Token!798 0))(
  ( (Token!799 (value!19335 TokenValue!549) (rule!1038 Rule!854) (size!2427 Int) (originalCharacters!570 List!2946)) )
))
(declare-fun separatorToken!170 () Token!798)

(declare-datatypes ((List!2948 0))(
  ( (Nil!2938) (Cons!2938 (h!8335 Token!798) (t!27586 List!2948)) )
))
(declare-fun tokens!465 () List!2948)

(declare-datatypes ((LexerInterface!413 0))(
  ( (LexerInterfaceExt!410 (__x!2586 Int)) (Lexer!411) )
))
(declare-fun thiss!17480 () LexerInterface!413)

(declare-fun list!1073 (BalanceConc!1760) List!2946)

(declare-datatypes ((IArray!1755 0))(
  ( (IArray!1756 (innerList!935 List!2948)) )
))
(declare-datatypes ((Conc!877 0))(
  ( (Node!877 (left!2251 Conc!877) (right!2581 Conc!877) (csize!1984 Int) (cheight!1088 Int)) (Leaf!1480 (xs!3472 IArray!1755) (csize!1985 Int)) (Empty!877) )
))
(declare-datatypes ((BalanceConc!1762 0))(
  ( (BalanceConc!1763 (c!34381 Conc!877)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!96 (LexerInterface!413 List!2947 BalanceConc!1762 Token!798 Int) BalanceConc!1760)

(declare-fun seqFromList!431 (List!2948) BalanceConc!1762)

(assert (=> b!173991 (= res!78626 (not (= lt!55824 (list!1073 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 (seqFromList!431 (t!27586 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!55822 () List!2946)

(declare-fun lt!55825 () List!2946)

(assert (=> b!173991 (= lt!55822 lt!55825)))

(declare-fun lt!55823 () List!2946)

(declare-fun lt!55815 () List!2946)

(declare-fun ++!680 (List!2946 List!2946) List!2946)

(assert (=> b!173991 (= lt!55825 (++!680 lt!55823 lt!55815))))

(declare-fun lt!55827 () List!2946)

(assert (=> b!173991 (= lt!55822 (++!680 (++!680 lt!55823 lt!55827) lt!55824))))

(declare-datatypes ((Unit!2616 0))(
  ( (Unit!2617) )
))
(declare-fun lt!55816 () Unit!2616)

(declare-fun lemmaConcatAssociativity!214 (List!2946 List!2946 List!2946) Unit!2616)

(assert (=> b!173991 (= lt!55816 (lemmaConcatAssociativity!214 lt!55823 lt!55827 lt!55824))))

(declare-fun charsOf!182 (Token!798) BalanceConc!1760)

(assert (=> b!173991 (= lt!55823 (list!1073 (charsOf!182 (h!8335 tokens!465))))))

(assert (=> b!173991 (= lt!55815 (++!680 lt!55827 lt!55824))))

(declare-fun printWithSeparatorTokenWhenNeededList!106 (LexerInterface!413 List!2947 List!2948 Token!798) List!2946)

(assert (=> b!173991 (= lt!55824 (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 (t!27586 tokens!465) separatorToken!170))))

(assert (=> b!173991 (= lt!55827 (list!1073 (charsOf!182 separatorToken!170)))))

(declare-fun b!173992 () Bool)

(declare-fun e!105505 () Bool)

(declare-fun matchR!89 (Regex!751 List!2946) Bool)

(assert (=> b!173992 (= e!105505 (matchR!89 (regex!527 (rule!1038 (h!8335 tokens!465))) lt!55823))))

(declare-fun b!173993 () Bool)

(declare-fun e!105499 () Bool)

(declare-fun e!105497 () Bool)

(assert (=> b!173993 (= e!105499 e!105497)))

(declare-fun res!78625 () Bool)

(assert (=> b!173993 (=> (not res!78625) (not e!105497))))

(declare-fun lt!55832 () BalanceConc!1762)

(declare-fun rulesProduceEachTokenIndividually!205 (LexerInterface!413 List!2947 BalanceConc!1762) Bool)

(assert (=> b!173993 (= res!78625 (rulesProduceEachTokenIndividually!205 thiss!17480 rules!1920 lt!55832))))

(assert (=> b!173993 (= lt!55832 (seqFromList!431 tokens!465))))

(declare-fun res!78628 () Bool)

(assert (=> start!18822 (=> (not res!78628) (not e!105499))))

(assert (=> start!18822 (= res!78628 ((_ is Lexer!411) thiss!17480))))

(assert (=> start!18822 e!105499))

(assert (=> start!18822 true))

(declare-fun e!105495 () Bool)

(assert (=> start!18822 e!105495))

(declare-fun e!105515 () Bool)

(declare-fun inv!3767 (Token!798) Bool)

(assert (=> start!18822 (and (inv!3767 separatorToken!170) e!105515)))

(declare-fun e!105504 () Bool)

(assert (=> start!18822 e!105504))

(declare-fun b!173994 () Bool)

(declare-fun res!78621 () Bool)

(declare-fun e!105506 () Bool)

(assert (=> b!173994 (=> res!78621 e!105506)))

(declare-fun isEmpty!1270 (BalanceConc!1762) Bool)

(declare-datatypes ((tuple2!2862 0))(
  ( (tuple2!2863 (_1!1647 BalanceConc!1762) (_2!1647 BalanceConc!1760)) )
))
(declare-fun lex!213 (LexerInterface!413 List!2947 BalanceConc!1760) tuple2!2862)

(declare-fun seqFromList!432 (List!2946) BalanceConc!1760)

(assert (=> b!173994 (= res!78621 (isEmpty!1270 (_1!1647 (lex!213 thiss!17480 rules!1920 (seqFromList!432 lt!55823)))))))

(declare-fun b!173995 () Bool)

(declare-fun e!105514 () Bool)

(declare-fun tp!84884 () Bool)

(declare-fun e!105502 () Bool)

(declare-fun inv!3764 (String!3825) Bool)

(declare-fun inv!3768 (TokenValueInjection!870) Bool)

(assert (=> b!173995 (= e!105502 (and tp!84884 (inv!3764 (tag!705 (rule!1038 separatorToken!170))) (inv!3768 (transformation!527 (rule!1038 separatorToken!170))) e!105514))))

(declare-fun b!173996 () Bool)

(declare-fun e!105508 () Bool)

(declare-fun e!105496 () Bool)

(declare-fun tp!84879 () Bool)

(assert (=> b!173996 (= e!105496 (and tp!84879 (inv!3764 (tag!705 (rule!1038 (h!8335 tokens!465)))) (inv!3768 (transformation!527 (rule!1038 (h!8335 tokens!465)))) e!105508))))

(declare-fun b!173997 () Bool)

(declare-fun tp!84883 () Bool)

(declare-fun e!105513 () Bool)

(declare-fun inv!21 (TokenValue!549) Bool)

(assert (=> b!173997 (= e!105513 (and (inv!21 (value!19335 (h!8335 tokens!465))) e!105496 tp!84883))))

(declare-fun res!78633 () Bool)

(assert (=> b!173998 (=> (not res!78633) (not e!105497))))

(declare-fun forall!583 (List!2948 Int) Bool)

(assert (=> b!173998 (= res!78633 (forall!583 tokens!465 lambda!5011))))

(declare-fun b!173999 () Bool)

(declare-fun res!78620 () Bool)

(assert (=> b!173999 (=> (not res!78620) (not e!105511))))

(declare-fun lt!55818 () List!2946)

(declare-fun lt!55831 () List!2946)

(assert (=> b!173999 (= res!78620 (= (list!1073 (seqFromList!432 lt!55818)) lt!55831))))

(declare-fun b!174000 () Bool)

(declare-fun res!78638 () Bool)

(assert (=> b!174000 (=> (not res!78638) (not e!105497))))

(assert (=> b!174000 (= res!78638 ((_ is Cons!2938) tokens!465))))

(declare-fun tp!84889 () Bool)

(declare-fun b!174001 () Bool)

(assert (=> b!174001 (= e!105515 (and (inv!21 (value!19335 separatorToken!170)) e!105502 tp!84889))))

(declare-fun b!174002 () Bool)

(assert (=> b!174002 (= e!105497 e!105511)))

(declare-fun res!78629 () Bool)

(assert (=> b!174002 (=> (not res!78629) (not e!105511))))

(assert (=> b!174002 (= res!78629 (= lt!55818 lt!55831))))

(assert (=> b!174002 (= lt!55831 (list!1073 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 lt!55832 separatorToken!170 0)))))

(assert (=> b!174002 (= lt!55818 (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!174003 () Bool)

(declare-fun tp!84878 () Bool)

(assert (=> b!174003 (= e!105504 (and (inv!3767 (h!8335 tokens!465)) e!105513 tp!84878))))

(declare-fun e!105501 () Bool)

(declare-fun b!174004 () Bool)

(assert (=> b!174004 (= e!105501 (not (= lt!55818 (++!680 lt!55823 lt!55824))))))

(declare-fun e!105500 () Bool)

(assert (=> b!174005 (= e!105500 (and tp!84881 tp!84886))))

(declare-fun b!174006 () Bool)

(declare-fun e!105509 () Bool)

(declare-fun tp!84885 () Bool)

(assert (=> b!174006 (= e!105495 (and e!105509 tp!84885))))

(declare-fun b!174007 () Bool)

(declare-fun res!78630 () Bool)

(assert (=> b!174007 (=> (not res!78630) (not e!105499))))

(declare-fun rulesInvariant!379 (LexerInterface!413 List!2947) Bool)

(assert (=> b!174007 (= res!78630 (rulesInvariant!379 thiss!17480 rules!1920))))

(declare-fun b!174008 () Bool)

(declare-fun res!78627 () Bool)

(assert (=> b!174008 (=> (not res!78627) (not e!105505))))

(declare-datatypes ((tuple2!2864 0))(
  ( (tuple2!2865 (_1!1648 Token!798) (_2!1648 List!2946)) )
))
(declare-fun lt!55826 () tuple2!2864)

(declare-fun isEmpty!1271 (List!2946) Bool)

(assert (=> b!174008 (= res!78627 (isEmpty!1271 (_2!1648 lt!55826)))))

(assert (=> b!174009 (= e!105508 (and tp!84887 tp!84880))))

(declare-fun e!105512 () Bool)

(assert (=> b!174010 (= e!105506 e!105512)))

(declare-fun res!78639 () Bool)

(assert (=> b!174010 (=> res!78639 e!105512)))

(declare-datatypes ((tuple2!2866 0))(
  ( (tuple2!2867 (_1!1649 Token!798) (_2!1649 BalanceConc!1760)) )
))
(declare-datatypes ((Option!330 0))(
  ( (None!329) (Some!329 (v!13782 tuple2!2866)) )
))
(declare-fun isDefined!181 (Option!330) Bool)

(declare-fun maxPrefixZipperSequence!106 (LexerInterface!413 List!2947 BalanceConc!1760) Option!330)

(assert (=> b!174010 (= res!78639 (not (isDefined!181 (maxPrefixZipperSequence!106 thiss!17480 rules!1920 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))

(declare-fun lt!55828 () Unit!2616)

(declare-fun forallContained!94 (List!2948 Int Token!798) Unit!2616)

(assert (=> b!174010 (= lt!55828 (forallContained!94 tokens!465 lambda!5012 (h!8335 tokens!465)))))

(assert (=> b!174010 (= lt!55823 (originalCharacters!570 (h!8335 tokens!465)))))

(declare-fun b!174011 () Bool)

(declare-fun e!105517 () Bool)

(assert (=> b!174011 (= e!105507 e!105517)))

(declare-fun res!78631 () Bool)

(assert (=> b!174011 (=> res!78631 e!105517)))

(assert (=> b!174011 (= res!78631 e!105501)))

(declare-fun res!78624 () Bool)

(assert (=> b!174011 (=> (not res!78624) (not e!105501))))

(declare-fun lt!55821 () Bool)

(assert (=> b!174011 (= res!78624 (not lt!55821))))

(assert (=> b!174011 (= lt!55821 (= lt!55818 lt!55825))))

(declare-fun b!174012 () Bool)

(declare-fun res!78637 () Bool)

(assert (=> b!174012 (=> (not res!78637) (not e!105497))))

(assert (=> b!174012 (= res!78637 (isSeparator!527 (rule!1038 separatorToken!170)))))

(declare-fun b!174013 () Bool)

(declare-fun tp!84888 () Bool)

(assert (=> b!174013 (= e!105509 (and tp!84888 (inv!3764 (tag!705 (h!8334 rules!1920))) (inv!3768 (transformation!527 (h!8334 rules!1920))) e!105500))))

(declare-fun b!174014 () Bool)

(declare-fun res!78632 () Bool)

(assert (=> b!174014 (=> res!78632 e!105506)))

(declare-fun rulesProduceIndividualToken!162 (LexerInterface!413 List!2947 Token!798) Bool)

(assert (=> b!174014 (= res!78632 (not (rulesProduceIndividualToken!162 thiss!17480 rules!1920 (h!8335 tokens!465))))))

(assert (=> b!174015 (= e!105514 (and tp!84877 tp!84882))))

(declare-fun b!174016 () Bool)

(declare-fun res!78619 () Bool)

(assert (=> b!174016 (=> (not res!78619) (not e!105497))))

(declare-fun sepAndNonSepRulesDisjointChars!116 (List!2947 List!2947) Bool)

(assert (=> b!174016 (= res!78619 (sepAndNonSepRulesDisjointChars!116 rules!1920 rules!1920))))

(declare-fun e!105516 () Bool)

(declare-fun b!174017 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!115 (LexerInterface!413 List!2947 List!2948) Bool)

(assert (=> b!174017 (= e!105516 (rulesProduceEachTokenIndividuallyList!115 thiss!17480 rules!1920 (t!27586 tokens!465)))))

(declare-fun b!174018 () Bool)

(assert (=> b!174018 (= e!105517 e!105506)))

(declare-fun res!78634 () Bool)

(assert (=> b!174018 (=> res!78634 e!105506)))

(declare-fun lt!55817 () List!2946)

(declare-fun lt!55820 () List!2946)

(assert (=> b!174018 (= res!78634 (or (not (= lt!55820 lt!55817)) (not (= lt!55817 lt!55823)) (not (= lt!55820 lt!55823))))))

(declare-fun printList!97 (LexerInterface!413 List!2948) List!2946)

(assert (=> b!174018 (= lt!55817 (printList!97 thiss!17480 (Cons!2938 (h!8335 tokens!465) Nil!2938)))))

(declare-fun lt!55829 () BalanceConc!1760)

(assert (=> b!174018 (= lt!55820 (list!1073 lt!55829))))

(declare-fun lt!55819 () BalanceConc!1762)

(declare-fun printTailRec!107 (LexerInterface!413 BalanceConc!1762 Int BalanceConc!1760) BalanceConc!1760)

(assert (=> b!174018 (= lt!55829 (printTailRec!107 thiss!17480 lt!55819 0 (BalanceConc!1761 Empty!876)))))

(declare-fun print!144 (LexerInterface!413 BalanceConc!1762) BalanceConc!1760)

(assert (=> b!174018 (= lt!55829 (print!144 thiss!17480 lt!55819))))

(declare-fun singletonSeq!79 (Token!798) BalanceConc!1762)

(assert (=> b!174018 (= lt!55819 (singletonSeq!79 (h!8335 tokens!465)))))

(declare-fun b!174019 () Bool)

(declare-fun res!78636 () Bool)

(assert (=> b!174019 (=> (not res!78636) (not e!105499))))

(declare-fun isEmpty!1272 (List!2947) Bool)

(assert (=> b!174019 (= res!78636 (not (isEmpty!1272 rules!1920)))))

(declare-fun b!174020 () Bool)

(assert (=> b!174020 (= e!105512 e!105516)))

(declare-fun res!78622 () Bool)

(assert (=> b!174020 (=> res!78622 e!105516)))

(assert (=> b!174020 (= res!78622 (not lt!55821))))

(assert (=> b!174020 e!105505))

(declare-fun res!78623 () Bool)

(assert (=> b!174020 (=> (not res!78623) (not e!105505))))

(assert (=> b!174020 (= res!78623 (= (_1!1648 lt!55826) (h!8335 tokens!465)))))

(declare-datatypes ((Option!331 0))(
  ( (None!330) (Some!330 (v!13783 tuple2!2864)) )
))
(declare-fun lt!55830 () Option!331)

(declare-fun get!811 (Option!331) tuple2!2864)

(assert (=> b!174020 (= lt!55826 (get!811 lt!55830))))

(declare-fun isDefined!182 (Option!331) Bool)

(assert (=> b!174020 (isDefined!182 lt!55830)))

(declare-fun maxPrefix!143 (LexerInterface!413 List!2947 List!2946) Option!331)

(assert (=> b!174020 (= lt!55830 (maxPrefix!143 thiss!17480 rules!1920 lt!55823))))

(declare-fun b!174021 () Bool)

(declare-fun res!78635 () Bool)

(assert (=> b!174021 (=> (not res!78635) (not e!105497))))

(assert (=> b!174021 (= res!78635 (rulesProduceIndividualToken!162 thiss!17480 rules!1920 separatorToken!170))))

(assert (= (and start!18822 res!78628) b!174019))

(assert (= (and b!174019 res!78636) b!174007))

(assert (= (and b!174007 res!78630) b!173993))

(assert (= (and b!173993 res!78625) b!174021))

(assert (= (and b!174021 res!78635) b!174012))

(assert (= (and b!174012 res!78637) b!173998))

(assert (= (and b!173998 res!78633) b!174016))

(assert (= (and b!174016 res!78619) b!174000))

(assert (= (and b!174000 res!78638) b!174002))

(assert (= (and b!174002 res!78629) b!173999))

(assert (= (and b!173999 res!78620) b!173991))

(assert (= (and b!173991 (not res!78626)) b!174011))

(assert (= (and b!174011 res!78624) b!174004))

(assert (= (and b!174011 (not res!78631)) b!174018))

(assert (= (and b!174018 (not res!78634)) b!174014))

(assert (= (and b!174014 (not res!78632)) b!173994))

(assert (= (and b!173994 (not res!78621)) b!174010))

(assert (= (and b!174010 (not res!78639)) b!174020))

(assert (= (and b!174020 res!78623) b!174008))

(assert (= (and b!174008 res!78627) b!173992))

(assert (= (and b!174020 (not res!78622)) b!174017))

(assert (= b!174013 b!174005))

(assert (= b!174006 b!174013))

(assert (= (and start!18822 ((_ is Cons!2937) rules!1920)) b!174006))

(assert (= b!173995 b!174015))

(assert (= b!174001 b!173995))

(assert (= start!18822 b!174001))

(assert (= b!173996 b!174009))

(assert (= b!173997 b!173996))

(assert (= b!174003 b!173997))

(assert (= (and start!18822 ((_ is Cons!2938) tokens!465)) b!174003))

(declare-fun m!172797 () Bool)

(assert (=> b!174020 m!172797))

(declare-fun m!172799 () Bool)

(assert (=> b!174020 m!172799))

(declare-fun m!172801 () Bool)

(assert (=> b!174020 m!172801))

(declare-fun m!172803 () Bool)

(assert (=> b!174007 m!172803))

(declare-fun m!172805 () Bool)

(assert (=> b!174010 m!172805))

(assert (=> b!174010 m!172805))

(declare-fun m!172807 () Bool)

(assert (=> b!174010 m!172807))

(assert (=> b!174010 m!172807))

(declare-fun m!172809 () Bool)

(assert (=> b!174010 m!172809))

(declare-fun m!172811 () Bool)

(assert (=> b!174010 m!172811))

(declare-fun m!172813 () Bool)

(assert (=> b!173996 m!172813))

(declare-fun m!172815 () Bool)

(assert (=> b!173996 m!172815))

(declare-fun m!172817 () Bool)

(assert (=> b!174016 m!172817))

(declare-fun m!172819 () Bool)

(assert (=> b!173997 m!172819))

(declare-fun m!172821 () Bool)

(assert (=> start!18822 m!172821))

(declare-fun m!172823 () Bool)

(assert (=> b!173999 m!172823))

(assert (=> b!173999 m!172823))

(declare-fun m!172825 () Bool)

(assert (=> b!173999 m!172825))

(declare-fun m!172827 () Bool)

(assert (=> b!174004 m!172827))

(declare-fun m!172829 () Bool)

(assert (=> b!174013 m!172829))

(declare-fun m!172831 () Bool)

(assert (=> b!174013 m!172831))

(declare-fun m!172833 () Bool)

(assert (=> b!174018 m!172833))

(declare-fun m!172835 () Bool)

(assert (=> b!174018 m!172835))

(declare-fun m!172837 () Bool)

(assert (=> b!174018 m!172837))

(declare-fun m!172839 () Bool)

(assert (=> b!174018 m!172839))

(declare-fun m!172841 () Bool)

(assert (=> b!174018 m!172841))

(declare-fun m!172843 () Bool)

(assert (=> b!174019 m!172843))

(declare-fun m!172845 () Bool)

(assert (=> b!173994 m!172845))

(assert (=> b!173994 m!172845))

(declare-fun m!172847 () Bool)

(assert (=> b!173994 m!172847))

(declare-fun m!172849 () Bool)

(assert (=> b!173994 m!172849))

(declare-fun m!172851 () Bool)

(assert (=> b!174017 m!172851))

(declare-fun m!172853 () Bool)

(assert (=> b!174008 m!172853))

(declare-fun m!172855 () Bool)

(assert (=> b!173991 m!172855))

(declare-fun m!172857 () Bool)

(assert (=> b!173991 m!172857))

(declare-fun m!172859 () Bool)

(assert (=> b!173991 m!172859))

(declare-fun m!172861 () Bool)

(assert (=> b!173991 m!172861))

(declare-fun m!172863 () Bool)

(assert (=> b!173991 m!172863))

(assert (=> b!173991 m!172859))

(declare-fun m!172865 () Bool)

(assert (=> b!173991 m!172865))

(declare-fun m!172867 () Bool)

(assert (=> b!173991 m!172867))

(assert (=> b!173991 m!172865))

(declare-fun m!172869 () Bool)

(assert (=> b!173991 m!172869))

(assert (=> b!173991 m!172855))

(declare-fun m!172871 () Bool)

(assert (=> b!173991 m!172871))

(declare-fun m!172873 () Bool)

(assert (=> b!173991 m!172873))

(assert (=> b!173991 m!172873))

(declare-fun m!172875 () Bool)

(assert (=> b!173991 m!172875))

(declare-fun m!172877 () Bool)

(assert (=> b!173991 m!172877))

(assert (=> b!173991 m!172871))

(declare-fun m!172879 () Bool)

(assert (=> b!173991 m!172879))

(declare-fun m!172881 () Bool)

(assert (=> b!173995 m!172881))

(declare-fun m!172883 () Bool)

(assert (=> b!173995 m!172883))

(declare-fun m!172885 () Bool)

(assert (=> b!173992 m!172885))

(declare-fun m!172887 () Bool)

(assert (=> b!174021 m!172887))

(declare-fun m!172889 () Bool)

(assert (=> b!173998 m!172889))

(declare-fun m!172891 () Bool)

(assert (=> b!174003 m!172891))

(declare-fun m!172893 () Bool)

(assert (=> b!174014 m!172893))

(declare-fun m!172895 () Bool)

(assert (=> b!174002 m!172895))

(assert (=> b!174002 m!172895))

(declare-fun m!172897 () Bool)

(assert (=> b!174002 m!172897))

(declare-fun m!172899 () Bool)

(assert (=> b!174002 m!172899))

(declare-fun m!172901 () Bool)

(assert (=> b!174001 m!172901))

(declare-fun m!172903 () Bool)

(assert (=> b!173993 m!172903))

(declare-fun m!172905 () Bool)

(assert (=> b!173993 m!172905))

(check-sat (not b!174018) b_and!11623 (not b!174021) (not b!174013) (not b!174006) (not b!173993) (not b!174020) (not b!173997) (not b_next!6691) (not b_next!6695) (not b!174010) (not b_next!6697) b_and!11631 b_and!11625 (not b_next!6693) b_and!11621 (not b!174016) (not b!174004) (not b!174001) (not b!174003) (not b!173991) (not b!174019) (not b!173995) b_and!11627 (not b!174008) (not b!173994) (not b_next!6689) (not b!174017) b_and!11629 (not b_next!6699) (not start!18822) (not b!173999) (not b!173992) (not b!174014) (not b!174007) (not b!174002) (not b!173996) (not b!173998) (not b!174030))
(check-sat b_and!11621 b_and!11623 b_and!11627 (not b_next!6691) (not b_next!6695) (not b_next!6697) b_and!11631 b_and!11625 (not b_next!6693) (not b_next!6689) b_and!11629 (not b_next!6699))
(get-model)

(declare-fun d!43939 () Bool)

(declare-fun e!105532 () Bool)

(assert (=> d!43939 e!105532))

(declare-fun res!78653 () Bool)

(assert (=> d!43939 (=> (not res!78653) (not e!105532))))

(declare-fun lt!55835 () List!2946)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!407 (List!2946) (InoxSet C!2424))

(assert (=> d!43939 (= res!78653 (= (content!407 lt!55835) ((_ map or) (content!407 lt!55823) (content!407 lt!55824))))))

(declare-fun e!105533 () List!2946)

(assert (=> d!43939 (= lt!55835 e!105533)))

(declare-fun c!34384 () Bool)

(assert (=> d!43939 (= c!34384 ((_ is Nil!2936) lt!55823))))

(assert (=> d!43939 (= (++!680 lt!55823 lt!55824) lt!55835)))

(declare-fun b!174046 () Bool)

(assert (=> b!174046 (= e!105532 (or (not (= lt!55824 Nil!2936)) (= lt!55835 lt!55823)))))

(declare-fun b!174045 () Bool)

(declare-fun res!78652 () Bool)

(assert (=> b!174045 (=> (not res!78652) (not e!105532))))

(declare-fun size!2431 (List!2946) Int)

(assert (=> b!174045 (= res!78652 (= (size!2431 lt!55835) (+ (size!2431 lt!55823) (size!2431 lt!55824))))))

(declare-fun b!174043 () Bool)

(assert (=> b!174043 (= e!105533 lt!55824)))

(declare-fun b!174044 () Bool)

(assert (=> b!174044 (= e!105533 (Cons!2936 (h!8333 lt!55823) (++!680 (t!27584 lt!55823) lt!55824)))))

(assert (= (and d!43939 c!34384) b!174043))

(assert (= (and d!43939 (not c!34384)) b!174044))

(assert (= (and d!43939 res!78653) b!174045))

(assert (= (and b!174045 res!78652) b!174046))

(declare-fun m!172909 () Bool)

(assert (=> d!43939 m!172909))

(declare-fun m!172911 () Bool)

(assert (=> d!43939 m!172911))

(declare-fun m!172913 () Bool)

(assert (=> d!43939 m!172913))

(declare-fun m!172915 () Bool)

(assert (=> b!174045 m!172915))

(declare-fun m!172917 () Bool)

(assert (=> b!174045 m!172917))

(declare-fun m!172919 () Bool)

(assert (=> b!174045 m!172919))

(declare-fun m!172921 () Bool)

(assert (=> b!174044 m!172921))

(assert (=> b!174004 d!43939))

(declare-fun d!43941 () Bool)

(declare-fun res!78658 () Bool)

(declare-fun e!105536 () Bool)

(assert (=> d!43941 (=> (not res!78658) (not e!105536))))

(assert (=> d!43941 (= res!78658 (not (isEmpty!1271 (originalCharacters!570 (h!8335 tokens!465)))))))

(assert (=> d!43941 (= (inv!3767 (h!8335 tokens!465)) e!105536)))

(declare-fun b!174051 () Bool)

(declare-fun res!78659 () Bool)

(assert (=> b!174051 (=> (not res!78659) (not e!105536))))

(declare-fun dynLambda!1132 (Int TokenValue!549) BalanceConc!1760)

(assert (=> b!174051 (= res!78659 (= (originalCharacters!570 (h!8335 tokens!465)) (list!1073 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465))))))))

(declare-fun b!174052 () Bool)

(assert (=> b!174052 (= e!105536 (= (size!2427 (h!8335 tokens!465)) (size!2431 (originalCharacters!570 (h!8335 tokens!465)))))))

(assert (= (and d!43941 res!78658) b!174051))

(assert (= (and b!174051 res!78659) b!174052))

(declare-fun b_lambda!4031 () Bool)

(assert (=> (not b_lambda!4031) (not b!174051)))

(declare-fun t!27588 () Bool)

(declare-fun tb!7093 () Bool)

(assert (=> (and b!174009 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465))))) t!27588) tb!7093))

(declare-fun b!174057 () Bool)

(declare-fun e!105539 () Bool)

(declare-fun tp!84892 () Bool)

(declare-fun inv!3769 (Conc!876) Bool)

(assert (=> b!174057 (= e!105539 (and (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465))))) tp!84892))))

(declare-fun result!9824 () Bool)

(declare-fun inv!3770 (BalanceConc!1760) Bool)

(assert (=> tb!7093 (= result!9824 (and (inv!3770 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465)))) e!105539))))

(assert (= tb!7093 b!174057))

(declare-fun m!172923 () Bool)

(assert (=> b!174057 m!172923))

(declare-fun m!172925 () Bool)

(assert (=> tb!7093 m!172925))

(assert (=> b!174051 t!27588))

(declare-fun b_and!11633 () Bool)

(assert (= b_and!11623 (and (=> t!27588 result!9824) b_and!11633)))

(declare-fun tb!7095 () Bool)

(declare-fun t!27590 () Bool)

(assert (=> (and b!174005 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465))))) t!27590) tb!7095))

(declare-fun result!9828 () Bool)

(assert (= result!9828 result!9824))

(assert (=> b!174051 t!27590))

(declare-fun b_and!11635 () Bool)

(assert (= b_and!11627 (and (=> t!27590 result!9828) b_and!11635)))

(declare-fun t!27592 () Bool)

(declare-fun tb!7097 () Bool)

(assert (=> (and b!174015 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465))))) t!27592) tb!7097))

(declare-fun result!9830 () Bool)

(assert (= result!9830 result!9824))

(assert (=> b!174051 t!27592))

(declare-fun b_and!11637 () Bool)

(assert (= b_and!11631 (and (=> t!27592 result!9830) b_and!11637)))

(declare-fun m!172927 () Bool)

(assert (=> d!43941 m!172927))

(declare-fun m!172929 () Bool)

(assert (=> b!174051 m!172929))

(assert (=> b!174051 m!172929))

(declare-fun m!172931 () Bool)

(assert (=> b!174051 m!172931))

(declare-fun m!172933 () Bool)

(assert (=> b!174052 m!172933))

(assert (=> b!174003 d!43941))

(declare-fun d!43943 () Bool)

(declare-fun list!1076 (Conc!876) List!2946)

(assert (=> d!43943 (= (list!1073 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 lt!55832 separatorToken!170 0)) (list!1076 (c!34379 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 lt!55832 separatorToken!170 0))))))

(declare-fun bs!17108 () Bool)

(assert (= bs!17108 d!43943))

(declare-fun m!172935 () Bool)

(assert (=> bs!17108 m!172935))

(assert (=> b!174002 d!43943))

(declare-fun bs!17114 () Bool)

(declare-fun d!43945 () Bool)

(assert (= bs!17114 (and d!43945 b!173998)))

(declare-fun lambda!5023 () Int)

(assert (=> bs!17114 (= lambda!5023 lambda!5011)))

(declare-fun bs!17115 () Bool)

(assert (= bs!17115 (and d!43945 b!174010)))

(assert (=> bs!17115 (not (= lambda!5023 lambda!5012))))

(declare-fun bs!17116 () Bool)

(declare-fun b!174118 () Bool)

(assert (= bs!17116 (and b!174118 b!173998)))

(declare-fun lambda!5024 () Int)

(assert (=> bs!17116 (not (= lambda!5024 lambda!5011))))

(declare-fun bs!17117 () Bool)

(assert (= bs!17117 (and b!174118 b!174010)))

(assert (=> bs!17117 (= lambda!5024 lambda!5012)))

(declare-fun bs!17118 () Bool)

(assert (= bs!17118 (and b!174118 d!43945)))

(assert (=> bs!17118 (not (= lambda!5024 lambda!5023))))

(declare-fun b!174123 () Bool)

(declare-fun e!105584 () Bool)

(assert (=> b!174123 (= e!105584 true)))

(declare-fun b!174122 () Bool)

(declare-fun e!105583 () Bool)

(assert (=> b!174122 (= e!105583 e!105584)))

(declare-fun b!174121 () Bool)

(declare-fun e!105582 () Bool)

(assert (=> b!174121 (= e!105582 e!105583)))

(assert (=> b!174118 e!105582))

(assert (= b!174122 b!174123))

(assert (= b!174121 b!174122))

(assert (= (and b!174118 ((_ is Cons!2937) rules!1920)) b!174121))

(assert (=> b!174123 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5024))))

(assert (=> b!174123 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5024))))

(assert (=> b!174118 true))

(declare-fun lt!55919 () BalanceConc!1760)

(declare-fun dropList!92 (BalanceConc!1762 Int) List!2948)

(assert (=> d!43945 (= (list!1073 lt!55919) (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 (dropList!92 lt!55832 0) separatorToken!170))))

(declare-fun e!105575 () BalanceConc!1760)

(assert (=> d!43945 (= lt!55919 e!105575)))

(declare-fun c!34402 () Bool)

(declare-fun size!2432 (BalanceConc!1762) Int)

(assert (=> d!43945 (= c!34402 (>= 0 (size!2432 lt!55832)))))

(declare-fun lt!55918 () Unit!2616)

(declare-fun lemmaContentSubsetPreservesForall!36 (List!2948 List!2948 Int) Unit!2616)

(declare-fun list!1077 (BalanceConc!1762) List!2948)

(assert (=> d!43945 (= lt!55918 (lemmaContentSubsetPreservesForall!36 (list!1077 lt!55832) (dropList!92 lt!55832 0) lambda!5023))))

(declare-fun e!105578 () Bool)

(assert (=> d!43945 e!105578))

(declare-fun res!78677 () Bool)

(assert (=> d!43945 (=> (not res!78677) (not e!105578))))

(assert (=> d!43945 (= res!78677 (>= 0 0))))

(assert (=> d!43945 (= (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 lt!55832 separatorToken!170 0) lt!55919)))

(declare-fun b!174110 () Bool)

(assert (=> b!174110 (= e!105578 (<= 0 (size!2432 lt!55832)))))

(declare-fun b!174111 () Bool)

(declare-fun e!105580 () BalanceConc!1760)

(declare-fun call!7708 () BalanceConc!1760)

(declare-fun lt!55908 () BalanceConc!1760)

(declare-fun ++!682 (BalanceConc!1760 BalanceConc!1760) BalanceConc!1760)

(assert (=> b!174111 (= e!105580 (++!682 call!7708 lt!55908))))

(declare-fun b!174112 () Bool)

(declare-fun e!105576 () Bool)

(declare-fun lt!55912 () Option!330)

(declare-fun call!7706 () Token!798)

(assert (=> b!174112 (= e!105576 (not (= (_1!1649 (v!13782 lt!55912)) call!7706)))))

(declare-fun bm!7701 () Bool)

(declare-fun call!7707 () BalanceConc!1760)

(declare-fun call!7710 () BalanceConc!1760)

(assert (=> bm!7701 (= call!7707 call!7710)))

(declare-fun b!174113 () Bool)

(declare-fun e!105581 () BalanceConc!1760)

(assert (=> b!174113 (= e!105581 call!7710)))

(declare-fun b!174114 () Bool)

(declare-fun c!34403 () Bool)

(assert (=> b!174114 (= c!34403 e!105576)))

(declare-fun res!78676 () Bool)

(assert (=> b!174114 (=> (not res!78676) (not e!105576))))

(assert (=> b!174114 (= res!78676 ((_ is Some!329) lt!55912))))

(declare-fun e!105577 () BalanceConc!1760)

(assert (=> b!174114 (= e!105577 e!105580)))

(declare-fun b!174115 () Bool)

(assert (=> b!174115 (= e!105575 (BalanceConc!1761 Empty!876))))

(declare-fun b!174116 () Bool)

(declare-fun call!7709 () Token!798)

(assert (=> b!174116 (= e!105581 (charsOf!182 call!7709))))

(declare-fun b!174117 () Bool)

(declare-fun e!105579 () Bool)

(declare-fun apply!429 (BalanceConc!1762 Int) Token!798)

(assert (=> b!174117 (= e!105579 (= (_1!1649 (v!13782 lt!55912)) (apply!429 lt!55832 0)))))

(declare-fun bm!7702 () Bool)

(assert (=> bm!7702 (= call!7706 (apply!429 lt!55832 0))))

(declare-fun bm!7703 () Bool)

(declare-fun c!34405 () Bool)

(declare-fun c!34404 () Bool)

(assert (=> bm!7703 (= c!34405 c!34404)))

(assert (=> bm!7703 (= call!7708 (++!682 e!105581 (ite c!34404 lt!55908 call!7707)))))

(assert (=> b!174118 (= e!105575 e!105577)))

(declare-fun lt!55911 () List!2948)

(assert (=> b!174118 (= lt!55911 (list!1077 lt!55832))))

(declare-fun lt!55906 () Unit!2616)

(declare-fun lemmaDropApply!132 (List!2948 Int) Unit!2616)

(assert (=> b!174118 (= lt!55906 (lemmaDropApply!132 lt!55911 0))))

(declare-fun head!608 (List!2948) Token!798)

(declare-fun drop!145 (List!2948 Int) List!2948)

(declare-fun apply!430 (List!2948 Int) Token!798)

(assert (=> b!174118 (= (head!608 (drop!145 lt!55911 0)) (apply!430 lt!55911 0))))

(declare-fun lt!55913 () Unit!2616)

(assert (=> b!174118 (= lt!55913 lt!55906)))

(declare-fun lt!55907 () List!2948)

(assert (=> b!174118 (= lt!55907 (list!1077 lt!55832))))

(declare-fun lt!55917 () Unit!2616)

(declare-fun lemmaDropTail!124 (List!2948 Int) Unit!2616)

(assert (=> b!174118 (= lt!55917 (lemmaDropTail!124 lt!55907 0))))

(declare-fun tail!348 (List!2948) List!2948)

(assert (=> b!174118 (= (tail!348 (drop!145 lt!55907 0)) (drop!145 lt!55907 (+ 0 1)))))

(declare-fun lt!55914 () Unit!2616)

(assert (=> b!174118 (= lt!55914 lt!55917)))

(declare-fun lt!55916 () Unit!2616)

(assert (=> b!174118 (= lt!55916 (forallContained!94 (list!1077 lt!55832) lambda!5024 (apply!429 lt!55832 0)))))

(assert (=> b!174118 (= lt!55908 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 lt!55832 separatorToken!170 (+ 0 1)))))

(assert (=> b!174118 (= lt!55912 (maxPrefixZipperSequence!106 thiss!17480 rules!1920 (++!682 (charsOf!182 (apply!429 lt!55832 0)) lt!55908)))))

(declare-fun res!78675 () Bool)

(assert (=> b!174118 (= res!78675 ((_ is Some!329) lt!55912))))

(assert (=> b!174118 (=> (not res!78675) (not e!105579))))

(assert (=> b!174118 (= c!34404 e!105579)))

(declare-fun bm!7704 () Bool)

(assert (=> bm!7704 (= call!7710 (charsOf!182 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709))))))

(declare-fun bm!7705 () Bool)

(assert (=> bm!7705 (= call!7709 call!7706)))

(declare-fun b!174119 () Bool)

(assert (=> b!174119 (= e!105577 call!7708)))

(declare-fun b!174120 () Bool)

(assert (=> b!174120 (= e!105580 (BalanceConc!1761 Empty!876))))

(assert (=> b!174120 (= (print!144 thiss!17480 (singletonSeq!79 call!7709)) (printTailRec!107 thiss!17480 (singletonSeq!79 call!7709) 0 (BalanceConc!1761 Empty!876)))))

(declare-fun lt!55910 () Unit!2616)

(declare-fun Unit!2622 () Unit!2616)

(assert (=> b!174120 (= lt!55910 Unit!2622)))

(declare-fun lt!55915 () Unit!2616)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!40 (LexerInterface!413 List!2947 List!2946 List!2946) Unit!2616)

(assert (=> b!174120 (= lt!55915 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!40 thiss!17480 rules!1920 (list!1073 call!7707) (list!1073 lt!55908)))))

(assert (=> b!174120 false))

(declare-fun lt!55909 () Unit!2616)

(declare-fun Unit!2623 () Unit!2616)

(assert (=> b!174120 (= lt!55909 Unit!2623)))

(assert (= (and d!43945 res!78677) b!174110))

(assert (= (and d!43945 c!34402) b!174115))

(assert (= (and d!43945 (not c!34402)) b!174118))

(assert (= (and b!174118 res!78675) b!174117))

(assert (= (and b!174118 c!34404) b!174119))

(assert (= (and b!174118 (not c!34404)) b!174114))

(assert (= (and b!174114 res!78676) b!174112))

(assert (= (and b!174114 c!34403) b!174111))

(assert (= (and b!174114 (not c!34403)) b!174120))

(assert (= (or b!174111 b!174120) bm!7705))

(assert (= (or b!174111 b!174120) bm!7701))

(assert (= (or b!174119 b!174112 bm!7705) bm!7702))

(assert (= (or b!174119 bm!7701) bm!7704))

(assert (= (or b!174119 b!174111) bm!7703))

(assert (= (and bm!7703 c!34405) b!174113))

(assert (= (and bm!7703 (not c!34405)) b!174116))

(declare-fun m!172997 () Bool)

(assert (=> d!43945 m!172997))

(declare-fun m!172999 () Bool)

(assert (=> d!43945 m!172999))

(assert (=> d!43945 m!172997))

(declare-fun m!173001 () Bool)

(assert (=> d!43945 m!173001))

(declare-fun m!173003 () Bool)

(assert (=> d!43945 m!173003))

(declare-fun m!173005 () Bool)

(assert (=> d!43945 m!173005))

(assert (=> d!43945 m!173005))

(assert (=> d!43945 m!172997))

(declare-fun m!173007 () Bool)

(assert (=> d!43945 m!173007))

(assert (=> b!174110 m!172999))

(declare-fun m!173009 () Bool)

(assert (=> b!174120 m!173009))

(declare-fun m!173011 () Bool)

(assert (=> b!174120 m!173011))

(declare-fun m!173013 () Bool)

(assert (=> b!174120 m!173013))

(assert (=> b!174120 m!173009))

(declare-fun m!173015 () Bool)

(assert (=> b!174120 m!173015))

(assert (=> b!174120 m!173013))

(assert (=> b!174120 m!173011))

(declare-fun m!173017 () Bool)

(assert (=> b!174120 m!173017))

(assert (=> b!174120 m!173009))

(declare-fun m!173019 () Bool)

(assert (=> b!174120 m!173019))

(declare-fun m!173021 () Bool)

(assert (=> bm!7702 m!173021))

(declare-fun m!173023 () Bool)

(assert (=> bm!7704 m!173023))

(declare-fun m!173025 () Bool)

(assert (=> b!174116 m!173025))

(assert (=> b!174118 m!173021))

(declare-fun m!173027 () Bool)

(assert (=> b!174118 m!173027))

(assert (=> b!174118 m!173005))

(declare-fun m!173029 () Bool)

(assert (=> b!174118 m!173029))

(declare-fun m!173031 () Bool)

(assert (=> b!174118 m!173031))

(declare-fun m!173033 () Bool)

(assert (=> b!174118 m!173033))

(declare-fun m!173035 () Bool)

(assert (=> b!174118 m!173035))

(declare-fun m!173037 () Bool)

(assert (=> b!174118 m!173037))

(assert (=> b!174118 m!173031))

(declare-fun m!173039 () Bool)

(assert (=> b!174118 m!173039))

(assert (=> b!174118 m!173005))

(assert (=> b!174118 m!173021))

(declare-fun m!173041 () Bool)

(assert (=> b!174118 m!173041))

(declare-fun m!173043 () Bool)

(assert (=> b!174118 m!173043))

(declare-fun m!173045 () Bool)

(assert (=> b!174118 m!173045))

(assert (=> b!174118 m!173021))

(declare-fun m!173047 () Bool)

(assert (=> b!174118 m!173047))

(declare-fun m!173049 () Bool)

(assert (=> b!174118 m!173049))

(assert (=> b!174118 m!173043))

(assert (=> b!174118 m!173047))

(assert (=> b!174118 m!173035))

(declare-fun m!173051 () Bool)

(assert (=> b!174118 m!173051))

(assert (=> b!174117 m!173021))

(declare-fun m!173053 () Bool)

(assert (=> b!174111 m!173053))

(declare-fun m!173055 () Bool)

(assert (=> bm!7703 m!173055))

(assert (=> b!174002 d!43945))

(declare-fun bs!17125 () Bool)

(declare-fun b!174198 () Bool)

(assert (= bs!17125 (and b!174198 b!173998)))

(declare-fun lambda!5030 () Int)

(assert (=> bs!17125 (not (= lambda!5030 lambda!5011))))

(declare-fun bs!17126 () Bool)

(assert (= bs!17126 (and b!174198 b!174010)))

(assert (=> bs!17126 (= lambda!5030 lambda!5012)))

(declare-fun bs!17127 () Bool)

(assert (= bs!17127 (and b!174198 d!43945)))

(assert (=> bs!17127 (not (= lambda!5030 lambda!5023))))

(declare-fun bs!17128 () Bool)

(assert (= bs!17128 (and b!174198 b!174118)))

(assert (=> bs!17128 (= lambda!5030 lambda!5024)))

(declare-fun b!174207 () Bool)

(declare-fun e!105632 () Bool)

(assert (=> b!174207 (= e!105632 true)))

(declare-fun b!174206 () Bool)

(declare-fun e!105631 () Bool)

(assert (=> b!174206 (= e!105631 e!105632)))

(declare-fun b!174205 () Bool)

(declare-fun e!105630 () Bool)

(assert (=> b!174205 (= e!105630 e!105631)))

(assert (=> b!174198 e!105630))

(assert (= b!174206 b!174207))

(assert (= b!174205 b!174206))

(assert (= (and b!174198 ((_ is Cons!2937) rules!1920)) b!174205))

(assert (=> b!174207 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5030))))

(assert (=> b!174207 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5030))))

(assert (=> b!174198 true))

(declare-fun d!43949 () Bool)

(declare-fun c!34435 () Bool)

(assert (=> d!43949 (= c!34435 ((_ is Cons!2938) tokens!465))))

(declare-fun e!105629 () List!2946)

(assert (=> d!43949 (= (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!105629)))

(declare-fun b!174197 () Bool)

(declare-fun e!105628 () List!2946)

(assert (=> b!174197 (= e!105628 Nil!2936)))

(assert (=> b!174197 (= (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465))) (printTailRec!107 thiss!17480 (singletonSeq!79 (h!8335 tokens!465)) 0 (BalanceConc!1761 Empty!876)))))

(declare-fun lt!55964 () Unit!2616)

(declare-fun Unit!2624 () Unit!2616)

(assert (=> b!174197 (= lt!55964 Unit!2624)))

(declare-fun lt!55962 () Unit!2616)

(declare-fun call!7740 () List!2946)

(declare-fun lt!55963 () List!2946)

(assert (=> b!174197 (= lt!55962 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!40 thiss!17480 rules!1920 call!7740 lt!55963))))

(assert (=> b!174197 false))

(declare-fun lt!55961 () Unit!2616)

(declare-fun Unit!2625 () Unit!2616)

(assert (=> b!174197 (= lt!55961 Unit!2625)))

(declare-fun e!105626 () List!2946)

(assert (=> b!174198 (= e!105629 e!105626)))

(declare-fun lt!55959 () Unit!2616)

(assert (=> b!174198 (= lt!55959 (forallContained!94 tokens!465 lambda!5030 (h!8335 tokens!465)))))

(assert (=> b!174198 (= lt!55963 (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 (t!27586 tokens!465) separatorToken!170))))

(declare-fun lt!55960 () Option!331)

(assert (=> b!174198 (= lt!55960 (maxPrefix!143 thiss!17480 rules!1920 (++!680 (list!1073 (charsOf!182 (h!8335 tokens!465))) lt!55963)))))

(declare-fun c!34434 () Bool)

(assert (=> b!174198 (= c!34434 (and ((_ is Some!330) lt!55960) (= (_1!1648 (v!13783 lt!55960)) (h!8335 tokens!465))))))

(declare-fun b!174199 () Bool)

(assert (=> b!174199 (= e!105629 Nil!2936)))

(declare-fun b!174200 () Bool)

(declare-fun e!105627 () BalanceConc!1760)

(assert (=> b!174200 (= e!105627 (charsOf!182 separatorToken!170))))

(declare-fun b!174201 () Bool)

(declare-fun call!7739 () List!2946)

(assert (=> b!174201 (= e!105626 call!7739)))

(declare-fun bm!7731 () Bool)

(assert (=> bm!7731 (= call!7740 (list!1073 e!105627))))

(declare-fun c!34433 () Bool)

(declare-fun c!34432 () Bool)

(assert (=> bm!7731 (= c!34433 c!34432)))

(declare-fun bm!7732 () Bool)

(declare-fun call!7738 () BalanceConc!1760)

(declare-fun call!7736 () List!2946)

(declare-fun call!7737 () BalanceConc!1760)

(assert (=> bm!7732 (= call!7736 (list!1073 (ite c!34434 call!7738 call!7737)))))

(declare-fun bm!7733 () Bool)

(assert (=> bm!7733 (= call!7739 (++!680 call!7736 (ite c!34434 lt!55963 call!7740)))))

(declare-fun b!174202 () Bool)

(assert (=> b!174202 (= e!105628 (++!680 call!7739 lt!55963))))

(declare-fun b!174203 () Bool)

(assert (=> b!174203 (= e!105627 call!7737)))

(declare-fun bm!7734 () Bool)

(assert (=> bm!7734 (= call!7737 call!7738)))

(declare-fun bm!7735 () Bool)

(assert (=> bm!7735 (= call!7738 (charsOf!182 (h!8335 tokens!465)))))

(declare-fun b!174204 () Bool)

(assert (=> b!174204 (= c!34432 (and ((_ is Some!330) lt!55960) (not (= (_1!1648 (v!13783 lt!55960)) (h!8335 tokens!465)))))))

(assert (=> b!174204 (= e!105626 e!105628)))

(assert (= (and d!43949 c!34435) b!174198))

(assert (= (and d!43949 (not c!34435)) b!174199))

(assert (= (and b!174198 c!34434) b!174201))

(assert (= (and b!174198 (not c!34434)) b!174204))

(assert (= (and b!174204 c!34432) b!174202))

(assert (= (and b!174204 (not c!34432)) b!174197))

(assert (= (or b!174202 b!174197) bm!7734))

(assert (= (or b!174202 b!174197) bm!7731))

(assert (= (and bm!7731 c!34433) b!174200))

(assert (= (and bm!7731 (not c!34433)) b!174203))

(assert (= (or b!174201 bm!7734) bm!7735))

(assert (= (or b!174201 b!174202) bm!7732))

(assert (= (or b!174201 b!174202) bm!7733))

(declare-fun m!173121 () Bool)

(assert (=> bm!7732 m!173121))

(declare-fun m!173123 () Bool)

(assert (=> bm!7733 m!173123))

(assert (=> bm!7735 m!172873))

(declare-fun m!173125 () Bool)

(assert (=> bm!7731 m!173125))

(assert (=> b!174198 m!172857))

(assert (=> b!174198 m!172875))

(declare-fun m!173127 () Bool)

(assert (=> b!174198 m!173127))

(assert (=> b!174198 m!173127))

(declare-fun m!173129 () Bool)

(assert (=> b!174198 m!173129))

(declare-fun m!173131 () Bool)

(assert (=> b!174198 m!173131))

(assert (=> b!174198 m!172873))

(assert (=> b!174198 m!172875))

(assert (=> b!174198 m!172873))

(declare-fun m!173133 () Bool)

(assert (=> b!174202 m!173133))

(assert (=> b!174200 m!172859))

(assert (=> b!174197 m!172839))

(assert (=> b!174197 m!172839))

(declare-fun m!173135 () Bool)

(assert (=> b!174197 m!173135))

(assert (=> b!174197 m!172839))

(declare-fun m!173137 () Bool)

(assert (=> b!174197 m!173137))

(declare-fun m!173139 () Bool)

(assert (=> b!174197 m!173139))

(assert (=> b!174002 d!43949))

(declare-fun d!43965 () Bool)

(declare-fun isEmpty!1276 (Option!330) Bool)

(assert (=> d!43965 (= (isDefined!181 (maxPrefixZipperSequence!106 thiss!17480 rules!1920 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))) (not (isEmpty!1276 (maxPrefixZipperSequence!106 thiss!17480 rules!1920 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))

(declare-fun bs!17129 () Bool)

(assert (= bs!17129 d!43965))

(assert (=> bs!17129 m!172807))

(declare-fun m!173141 () Bool)

(assert (=> bs!17129 m!173141))

(assert (=> b!174010 d!43965))

(declare-fun b!174230 () Bool)

(declare-fun e!105652 () Option!330)

(declare-fun call!7743 () Option!330)

(assert (=> b!174230 (= e!105652 call!7743)))

(declare-fun d!43967 () Bool)

(declare-fun e!105653 () Bool)

(assert (=> d!43967 e!105653))

(declare-fun res!78716 () Bool)

(assert (=> d!43967 (=> (not res!78716) (not e!105653))))

(declare-fun lt!55983 () Option!330)

(declare-fun maxPrefixZipper!44 (LexerInterface!413 List!2947 List!2946) Option!331)

(assert (=> d!43967 (= res!78716 (= (isDefined!181 lt!55983) (isDefined!182 (maxPrefixZipper!44 thiss!17480 rules!1920 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))))))))

(assert (=> d!43967 (= lt!55983 e!105652)))

(declare-fun c!34438 () Bool)

(assert (=> d!43967 (= c!34438 (and ((_ is Cons!2937) rules!1920) ((_ is Nil!2937) (t!27585 rules!1920))))))

(declare-fun lt!55987 () Unit!2616)

(declare-fun lt!55985 () Unit!2616)

(assert (=> d!43967 (= lt!55987 lt!55985)))

(declare-fun lt!55986 () List!2946)

(declare-fun lt!55984 () List!2946)

(declare-fun isPrefix!232 (List!2946 List!2946) Bool)

(assert (=> d!43967 (isPrefix!232 lt!55986 lt!55984)))

(declare-fun lemmaIsPrefixRefl!140 (List!2946 List!2946) Unit!2616)

(assert (=> d!43967 (= lt!55985 (lemmaIsPrefixRefl!140 lt!55986 lt!55984))))

(assert (=> d!43967 (= lt!55984 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))

(assert (=> d!43967 (= lt!55986 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))

(declare-fun rulesValidInductive!126 (LexerInterface!413 List!2947) Bool)

(assert (=> d!43967 (rulesValidInductive!126 thiss!17480 rules!1920)))

(assert (=> d!43967 (= (maxPrefixZipperSequence!106 thiss!17480 rules!1920 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))) lt!55983)))

(declare-fun b!174231 () Bool)

(declare-fun e!105650 () Bool)

(declare-fun get!812 (Option!330) tuple2!2866)

(assert (=> b!174231 (= e!105650 (= (list!1073 (_2!1649 (get!812 lt!55983))) (_2!1648 (get!811 (maxPrefix!143 thiss!17480 rules!1920 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))))

(declare-fun b!174232 () Bool)

(declare-fun res!78719 () Bool)

(assert (=> b!174232 (=> (not res!78719) (not e!105653))))

(declare-fun e!105654 () Bool)

(assert (=> b!174232 (= res!78719 e!105654)))

(declare-fun res!78714 () Bool)

(assert (=> b!174232 (=> res!78714 e!105654)))

(assert (=> b!174232 (= res!78714 (not (isDefined!181 lt!55983)))))

(declare-fun b!174233 () Bool)

(declare-fun lt!55989 () Option!330)

(declare-fun lt!55988 () Option!330)

(assert (=> b!174233 (= e!105652 (ite (and ((_ is None!329) lt!55989) ((_ is None!329) lt!55988)) None!329 (ite ((_ is None!329) lt!55988) lt!55989 (ite ((_ is None!329) lt!55989) lt!55988 (ite (>= (size!2427 (_1!1649 (v!13782 lt!55989))) (size!2427 (_1!1649 (v!13782 lt!55988)))) lt!55989 lt!55988)))))))

(assert (=> b!174233 (= lt!55989 call!7743)))

(assert (=> b!174233 (= lt!55988 (maxPrefixZipperSequence!106 thiss!17480 (t!27585 rules!1920) (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))

(declare-fun bm!7738 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!45 (LexerInterface!413 Rule!854 BalanceConc!1760) Option!330)

(assert (=> bm!7738 (= call!7743 (maxPrefixOneRuleZipperSequence!45 thiss!17480 (h!8334 rules!1920) (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))

(declare-fun b!174234 () Bool)

(declare-fun e!105651 () Bool)

(assert (=> b!174234 (= e!105654 e!105651)))

(declare-fun res!78715 () Bool)

(assert (=> b!174234 (=> (not res!78715) (not e!105651))))

(assert (=> b!174234 (= res!78715 (= (_1!1649 (get!812 lt!55983)) (_1!1648 (get!811 (maxPrefixZipper!44 thiss!17480 rules!1920 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))))

(declare-fun b!174235 () Bool)

(declare-fun e!105649 () Bool)

(assert (=> b!174235 (= e!105649 e!105650)))

(declare-fun res!78717 () Bool)

(assert (=> b!174235 (=> (not res!78717) (not e!105650))))

(assert (=> b!174235 (= res!78717 (= (_1!1649 (get!812 lt!55983)) (_1!1648 (get!811 (maxPrefix!143 thiss!17480 rules!1920 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))))

(declare-fun b!174236 () Bool)

(assert (=> b!174236 (= e!105653 e!105649)))

(declare-fun res!78718 () Bool)

(assert (=> b!174236 (=> res!78718 e!105649)))

(assert (=> b!174236 (= res!78718 (not (isDefined!181 lt!55983)))))

(declare-fun b!174237 () Bool)

(assert (=> b!174237 (= e!105651 (= (list!1073 (_2!1649 (get!812 lt!55983))) (_2!1648 (get!811 (maxPrefixZipper!44 thiss!17480 rules!1920 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))))

(assert (= (and d!43967 c!34438) b!174230))

(assert (= (and d!43967 (not c!34438)) b!174233))

(assert (= (or b!174230 b!174233) bm!7738))

(assert (= (and d!43967 res!78716) b!174232))

(assert (= (and b!174232 (not res!78714)) b!174234))

(assert (= (and b!174234 res!78715) b!174237))

(assert (= (and b!174232 res!78719) b!174236))

(assert (= (and b!174236 (not res!78718)) b!174235))

(assert (= (and b!174235 res!78717) b!174231))

(assert (=> bm!7738 m!172805))

(declare-fun m!173143 () Bool)

(assert (=> bm!7738 m!173143))

(assert (=> d!43967 m!172805))

(declare-fun m!173145 () Bool)

(assert (=> d!43967 m!173145))

(declare-fun m!173147 () Bool)

(assert (=> d!43967 m!173147))

(declare-fun m!173149 () Bool)

(assert (=> d!43967 m!173149))

(declare-fun m!173151 () Bool)

(assert (=> d!43967 m!173151))

(declare-fun m!173153 () Bool)

(assert (=> d!43967 m!173153))

(declare-fun m!173155 () Bool)

(assert (=> d!43967 m!173155))

(assert (=> d!43967 m!173145))

(assert (=> d!43967 m!173149))

(declare-fun m!173157 () Bool)

(assert (=> d!43967 m!173157))

(assert (=> b!174236 m!173147))

(declare-fun m!173159 () Bool)

(assert (=> b!174231 m!173159))

(assert (=> b!174231 m!172805))

(assert (=> b!174231 m!173145))

(assert (=> b!174231 m!173145))

(declare-fun m!173161 () Bool)

(assert (=> b!174231 m!173161))

(declare-fun m!173163 () Bool)

(assert (=> b!174231 m!173163))

(assert (=> b!174231 m!173161))

(declare-fun m!173165 () Bool)

(assert (=> b!174231 m!173165))

(assert (=> b!174234 m!173159))

(assert (=> b!174234 m!172805))

(assert (=> b!174234 m!173145))

(assert (=> b!174234 m!173145))

(assert (=> b!174234 m!173149))

(assert (=> b!174234 m!173149))

(declare-fun m!173167 () Bool)

(assert (=> b!174234 m!173167))

(assert (=> b!174237 m!173159))

(assert (=> b!174237 m!172805))

(assert (=> b!174237 m!173145))

(assert (=> b!174237 m!173145))

(assert (=> b!174237 m!173149))

(assert (=> b!174237 m!173149))

(assert (=> b!174237 m!173167))

(assert (=> b!174237 m!173163))

(assert (=> b!174232 m!173147))

(assert (=> b!174233 m!172805))

(declare-fun m!173169 () Bool)

(assert (=> b!174233 m!173169))

(assert (=> b!174235 m!173159))

(assert (=> b!174235 m!172805))

(assert (=> b!174235 m!173145))

(assert (=> b!174235 m!173145))

(assert (=> b!174235 m!173161))

(assert (=> b!174235 m!173161))

(assert (=> b!174235 m!173165))

(assert (=> b!174010 d!43967))

(declare-fun d!43969 () Bool)

(declare-fun fromListB!171 (List!2946) BalanceConc!1760)

(assert (=> d!43969 (= (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))) (fromListB!171 (originalCharacters!570 (h!8335 tokens!465))))))

(declare-fun bs!17130 () Bool)

(assert (= bs!17130 d!43969))

(declare-fun m!173185 () Bool)

(assert (=> bs!17130 m!173185))

(assert (=> b!174010 d!43969))

(declare-fun d!43973 () Bool)

(declare-fun dynLambda!1135 (Int Token!798) Bool)

(assert (=> d!43973 (dynLambda!1135 lambda!5012 (h!8335 tokens!465))))

(declare-fun lt!55994 () Unit!2616)

(declare-fun choose!1845 (List!2948 Int Token!798) Unit!2616)

(assert (=> d!43973 (= lt!55994 (choose!1845 tokens!465 lambda!5012 (h!8335 tokens!465)))))

(declare-fun e!105665 () Bool)

(assert (=> d!43973 e!105665))

(declare-fun res!78731 () Bool)

(assert (=> d!43973 (=> (not res!78731) (not e!105665))))

(assert (=> d!43973 (= res!78731 (forall!583 tokens!465 lambda!5012))))

(assert (=> d!43973 (= (forallContained!94 tokens!465 lambda!5012 (h!8335 tokens!465)) lt!55994)))

(declare-fun b!174249 () Bool)

(declare-fun contains!474 (List!2948 Token!798) Bool)

(assert (=> b!174249 (= e!105665 (contains!474 tokens!465 (h!8335 tokens!465)))))

(assert (= (and d!43973 res!78731) b!174249))

(declare-fun b_lambda!4033 () Bool)

(assert (=> (not b_lambda!4033) (not d!43973)))

(declare-fun m!173191 () Bool)

(assert (=> d!43973 m!173191))

(declare-fun m!173193 () Bool)

(assert (=> d!43973 m!173193))

(declare-fun m!173195 () Bool)

(assert (=> d!43973 m!173195))

(declare-fun m!173197 () Bool)

(assert (=> b!174249 m!173197))

(assert (=> b!174010 d!43973))

(declare-fun d!43977 () Bool)

(assert (=> d!43977 (= (isEmpty!1271 (_2!1648 lt!55826)) ((_ is Nil!2936) (_2!1648 lt!55826)))))

(assert (=> b!174008 d!43977))

(declare-fun d!43979 () Bool)

(declare-fun res!78734 () Bool)

(declare-fun e!105668 () Bool)

(assert (=> d!43979 (=> (not res!78734) (not e!105668))))

(declare-fun rulesValid!148 (LexerInterface!413 List!2947) Bool)

(assert (=> d!43979 (= res!78734 (rulesValid!148 thiss!17480 rules!1920))))

(assert (=> d!43979 (= (rulesInvariant!379 thiss!17480 rules!1920) e!105668)))

(declare-fun b!174252 () Bool)

(declare-datatypes ((List!2949 0))(
  ( (Nil!2939) (Cons!2939 (h!8336 String!3825) (t!27655 List!2949)) )
))
(declare-fun noDuplicateTag!148 (LexerInterface!413 List!2947 List!2949) Bool)

(assert (=> b!174252 (= e!105668 (noDuplicateTag!148 thiss!17480 rules!1920 Nil!2939))))

(assert (= (and d!43979 res!78734) b!174252))

(declare-fun m!173199 () Bool)

(assert (=> d!43979 m!173199))

(declare-fun m!173201 () Bool)

(assert (=> b!174252 m!173201))

(assert (=> b!174007 d!43979))

(declare-fun d!43981 () Bool)

(assert (=> d!43981 (= (inv!3764 (tag!705 (rule!1038 separatorToken!170))) (= (mod (str.len (value!19334 (tag!705 (rule!1038 separatorToken!170)))) 2) 0))))

(assert (=> b!173995 d!43981))

(declare-fun d!43983 () Bool)

(declare-fun res!78737 () Bool)

(declare-fun e!105671 () Bool)

(assert (=> d!43983 (=> (not res!78737) (not e!105671))))

(declare-fun semiInverseModEq!183 (Int Int) Bool)

(assert (=> d!43983 (= res!78737 (semiInverseModEq!183 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toValue!1194 (transformation!527 (rule!1038 separatorToken!170)))))))

(assert (=> d!43983 (= (inv!3768 (transformation!527 (rule!1038 separatorToken!170))) e!105671)))

(declare-fun b!174255 () Bool)

(declare-fun equivClasses!166 (Int Int) Bool)

(assert (=> b!174255 (= e!105671 (equivClasses!166 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toValue!1194 (transformation!527 (rule!1038 separatorToken!170)))))))

(assert (= (and d!43983 res!78737) b!174255))

(declare-fun m!173203 () Bool)

(assert (=> d!43983 m!173203))

(declare-fun m!173205 () Bool)

(assert (=> b!174255 m!173205))

(assert (=> b!173995 d!43983))

(declare-fun d!43985 () Bool)

(declare-fun res!78742 () Bool)

(declare-fun e!105676 () Bool)

(assert (=> d!43985 (=> res!78742 e!105676)))

(assert (=> d!43985 (= res!78742 (not ((_ is Cons!2937) rules!1920)))))

(assert (=> d!43985 (= (sepAndNonSepRulesDisjointChars!116 rules!1920 rules!1920) e!105676)))

(declare-fun b!174260 () Bool)

(declare-fun e!105677 () Bool)

(assert (=> b!174260 (= e!105676 e!105677)))

(declare-fun res!78743 () Bool)

(assert (=> b!174260 (=> (not res!78743) (not e!105677))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!42 (Rule!854 List!2947) Bool)

(assert (=> b!174260 (= res!78743 (ruleDisjointCharsFromAllFromOtherType!42 (h!8334 rules!1920) rules!1920))))

(declare-fun b!174261 () Bool)

(assert (=> b!174261 (= e!105677 (sepAndNonSepRulesDisjointChars!116 rules!1920 (t!27585 rules!1920)))))

(assert (= (and d!43985 (not res!78742)) b!174260))

(assert (= (and b!174260 res!78743) b!174261))

(declare-fun m!173207 () Bool)

(assert (=> b!174260 m!173207))

(declare-fun m!173209 () Bool)

(assert (=> b!174261 m!173209))

(assert (=> b!174016 d!43985))

(declare-fun bs!17137 () Bool)

(declare-fun d!43987 () Bool)

(assert (= bs!17137 (and d!43987 b!174198)))

(declare-fun lambda!5033 () Int)

(assert (=> bs!17137 (= lambda!5033 lambda!5030)))

(declare-fun bs!17138 () Bool)

(assert (= bs!17138 (and d!43987 b!174118)))

(assert (=> bs!17138 (= lambda!5033 lambda!5024)))

(declare-fun bs!17139 () Bool)

(assert (= bs!17139 (and d!43987 b!174010)))

(assert (=> bs!17139 (= lambda!5033 lambda!5012)))

(declare-fun bs!17140 () Bool)

(assert (= bs!17140 (and d!43987 b!173998)))

(assert (=> bs!17140 (not (= lambda!5033 lambda!5011))))

(declare-fun bs!17141 () Bool)

(assert (= bs!17141 (and d!43987 d!43945)))

(assert (=> bs!17141 (not (= lambda!5033 lambda!5023))))

(declare-fun b!174355 () Bool)

(declare-fun e!105734 () Bool)

(assert (=> b!174355 (= e!105734 true)))

(declare-fun b!174354 () Bool)

(declare-fun e!105733 () Bool)

(assert (=> b!174354 (= e!105733 e!105734)))

(declare-fun b!174353 () Bool)

(declare-fun e!105732 () Bool)

(assert (=> b!174353 (= e!105732 e!105733)))

(assert (=> d!43987 e!105732))

(assert (= b!174354 b!174355))

(assert (= b!174353 b!174354))

(assert (= (and d!43987 ((_ is Cons!2937) rules!1920)) b!174353))

(assert (=> b!174355 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5033))))

(assert (=> b!174355 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5033))))

(assert (=> d!43987 true))

(declare-fun lt!56041 () Bool)

(assert (=> d!43987 (= lt!56041 (forall!583 (t!27586 tokens!465) lambda!5033))))

(declare-fun e!105730 () Bool)

(assert (=> d!43987 (= lt!56041 e!105730)))

(declare-fun res!78798 () Bool)

(assert (=> d!43987 (=> res!78798 e!105730)))

(assert (=> d!43987 (= res!78798 (not ((_ is Cons!2938) (t!27586 tokens!465))))))

(assert (=> d!43987 (not (isEmpty!1272 rules!1920))))

(assert (=> d!43987 (= (rulesProduceEachTokenIndividuallyList!115 thiss!17480 rules!1920 (t!27586 tokens!465)) lt!56041)))

(declare-fun b!174351 () Bool)

(declare-fun e!105731 () Bool)

(assert (=> b!174351 (= e!105730 e!105731)))

(declare-fun res!78797 () Bool)

(assert (=> b!174351 (=> (not res!78797) (not e!105731))))

(assert (=> b!174351 (= res!78797 (rulesProduceIndividualToken!162 thiss!17480 rules!1920 (h!8335 (t!27586 tokens!465))))))

(declare-fun b!174352 () Bool)

(assert (=> b!174352 (= e!105731 (rulesProduceEachTokenIndividuallyList!115 thiss!17480 rules!1920 (t!27586 (t!27586 tokens!465))))))

(assert (= (and d!43987 (not res!78798)) b!174351))

(assert (= (and b!174351 res!78797) b!174352))

(declare-fun m!173367 () Bool)

(assert (=> d!43987 m!173367))

(assert (=> d!43987 m!172843))

(declare-fun m!173369 () Bool)

(assert (=> b!174351 m!173369))

(declare-fun m!173371 () Bool)

(assert (=> b!174352 m!173371))

(assert (=> b!174017 d!43987))

(declare-fun d!44029 () Bool)

(declare-fun lt!56044 () Bool)

(declare-fun isEmpty!1279 (List!2948) Bool)

(assert (=> d!44029 (= lt!56044 (isEmpty!1279 (list!1077 (_1!1647 (lex!213 thiss!17480 rules!1920 (seqFromList!432 lt!55823))))))))

(declare-fun isEmpty!1280 (Conc!877) Bool)

(assert (=> d!44029 (= lt!56044 (isEmpty!1280 (c!34381 (_1!1647 (lex!213 thiss!17480 rules!1920 (seqFromList!432 lt!55823))))))))

(assert (=> d!44029 (= (isEmpty!1270 (_1!1647 (lex!213 thiss!17480 rules!1920 (seqFromList!432 lt!55823)))) lt!56044)))

(declare-fun bs!17142 () Bool)

(assert (= bs!17142 d!44029))

(declare-fun m!173373 () Bool)

(assert (=> bs!17142 m!173373))

(assert (=> bs!17142 m!173373))

(declare-fun m!173375 () Bool)

(assert (=> bs!17142 m!173375))

(declare-fun m!173377 () Bool)

(assert (=> bs!17142 m!173377))

(assert (=> b!173994 d!44029))

(declare-fun b!174393 () Bool)

(declare-fun e!105762 () Bool)

(declare-fun lt!56071 () tuple2!2862)

(assert (=> b!174393 (= e!105762 (= (_2!1647 lt!56071) (seqFromList!432 lt!55823)))))

(declare-fun b!174394 () Bool)

(declare-fun e!105764 () Bool)

(assert (=> b!174394 (= e!105762 e!105764)))

(declare-fun res!78828 () Bool)

(declare-fun size!2433 (BalanceConc!1760) Int)

(assert (=> b!174394 (= res!78828 (< (size!2433 (_2!1647 lt!56071)) (size!2433 (seqFromList!432 lt!55823))))))

(assert (=> b!174394 (=> (not res!78828) (not e!105764))))

(declare-fun b!174395 () Bool)

(declare-fun res!78826 () Bool)

(declare-fun e!105763 () Bool)

(assert (=> b!174395 (=> (not res!78826) (not e!105763))))

(declare-datatypes ((tuple2!2870 0))(
  ( (tuple2!2871 (_1!1651 List!2948) (_2!1651 List!2946)) )
))
(declare-fun lexList!117 (LexerInterface!413 List!2947 List!2946) tuple2!2870)

(assert (=> b!174395 (= res!78826 (= (list!1077 (_1!1647 lt!56071)) (_1!1651 (lexList!117 thiss!17480 rules!1920 (list!1073 (seqFromList!432 lt!55823))))))))

(declare-fun b!174396 () Bool)

(assert (=> b!174396 (= e!105763 (= (list!1073 (_2!1647 lt!56071)) (_2!1651 (lexList!117 thiss!17480 rules!1920 (list!1073 (seqFromList!432 lt!55823))))))))

(declare-fun b!174397 () Bool)

(assert (=> b!174397 (= e!105764 (not (isEmpty!1270 (_1!1647 lt!56071))))))

(declare-fun d!44031 () Bool)

(assert (=> d!44031 e!105763))

(declare-fun res!78827 () Bool)

(assert (=> d!44031 (=> (not res!78827) (not e!105763))))

(assert (=> d!44031 (= res!78827 e!105762)))

(declare-fun c!34459 () Bool)

(assert (=> d!44031 (= c!34459 (> (size!2432 (_1!1647 lt!56071)) 0))))

(declare-fun lexTailRecV2!104 (LexerInterface!413 List!2947 BalanceConc!1760 BalanceConc!1760 BalanceConc!1760 BalanceConc!1762) tuple2!2862)

(assert (=> d!44031 (= lt!56071 (lexTailRecV2!104 thiss!17480 rules!1920 (seqFromList!432 lt!55823) (BalanceConc!1761 Empty!876) (seqFromList!432 lt!55823) (BalanceConc!1763 Empty!877)))))

(assert (=> d!44031 (= (lex!213 thiss!17480 rules!1920 (seqFromList!432 lt!55823)) lt!56071)))

(assert (= (and d!44031 c!34459) b!174394))

(assert (= (and d!44031 (not c!34459)) b!174393))

(assert (= (and b!174394 res!78828) b!174397))

(assert (= (and d!44031 res!78827) b!174395))

(assert (= (and b!174395 res!78826) b!174396))

(declare-fun m!173415 () Bool)

(assert (=> d!44031 m!173415))

(assert (=> d!44031 m!172845))

(assert (=> d!44031 m!172845))

(declare-fun m!173417 () Bool)

(assert (=> d!44031 m!173417))

(declare-fun m!173419 () Bool)

(assert (=> b!174397 m!173419))

(declare-fun m!173421 () Bool)

(assert (=> b!174394 m!173421))

(assert (=> b!174394 m!172845))

(declare-fun m!173423 () Bool)

(assert (=> b!174394 m!173423))

(declare-fun m!173425 () Bool)

(assert (=> b!174395 m!173425))

(assert (=> b!174395 m!172845))

(declare-fun m!173427 () Bool)

(assert (=> b!174395 m!173427))

(assert (=> b!174395 m!173427))

(declare-fun m!173429 () Bool)

(assert (=> b!174395 m!173429))

(declare-fun m!173431 () Bool)

(assert (=> b!174396 m!173431))

(assert (=> b!174396 m!172845))

(assert (=> b!174396 m!173427))

(assert (=> b!174396 m!173427))

(assert (=> b!174396 m!173429))

(assert (=> b!173994 d!44031))

(declare-fun d!44039 () Bool)

(assert (=> d!44039 (= (seqFromList!432 lt!55823) (fromListB!171 lt!55823))))

(declare-fun bs!17144 () Bool)

(assert (= bs!17144 d!44039))

(declare-fun m!173433 () Bool)

(assert (=> bs!17144 m!173433))

(assert (=> b!173994 d!44039))

(declare-fun b!174426 () Bool)

(declare-fun e!105782 () Bool)

(declare-fun lt!56074 () Bool)

(assert (=> b!174426 (= e!105782 (not lt!56074))))

(declare-fun d!44041 () Bool)

(declare-fun e!105781 () Bool)

(assert (=> d!44041 e!105781))

(declare-fun c!34466 () Bool)

(assert (=> d!44041 (= c!34466 ((_ is EmptyExpr!751) (regex!527 (rule!1038 (h!8335 tokens!465)))))))

(declare-fun e!105783 () Bool)

(assert (=> d!44041 (= lt!56074 e!105783)))

(declare-fun c!34468 () Bool)

(assert (=> d!44041 (= c!34468 (isEmpty!1271 lt!55823))))

(declare-fun validRegex!182 (Regex!751) Bool)

(assert (=> d!44041 (validRegex!182 (regex!527 (rule!1038 (h!8335 tokens!465))))))

(assert (=> d!44041 (= (matchR!89 (regex!527 (rule!1038 (h!8335 tokens!465))) lt!55823) lt!56074)))

(declare-fun b!174427 () Bool)

(declare-fun res!78846 () Bool)

(declare-fun e!105784 () Bool)

(assert (=> b!174427 (=> res!78846 e!105784)))

(assert (=> b!174427 (= res!78846 (not ((_ is ElementMatch!751) (regex!527 (rule!1038 (h!8335 tokens!465))))))))

(assert (=> b!174427 (= e!105782 e!105784)))

(declare-fun b!174428 () Bool)

(declare-fun call!7752 () Bool)

(assert (=> b!174428 (= e!105781 (= lt!56074 call!7752))))

(declare-fun b!174429 () Bool)

(declare-fun derivativeStep!75 (Regex!751 C!2424) Regex!751)

(declare-fun head!609 (List!2946) C!2424)

(declare-fun tail!349 (List!2946) List!2946)

(assert (=> b!174429 (= e!105783 (matchR!89 (derivativeStep!75 (regex!527 (rule!1038 (h!8335 tokens!465))) (head!609 lt!55823)) (tail!349 lt!55823)))))

(declare-fun b!174430 () Bool)

(declare-fun e!105779 () Bool)

(assert (=> b!174430 (= e!105784 e!105779)))

(declare-fun res!78848 () Bool)

(assert (=> b!174430 (=> (not res!78848) (not e!105779))))

(assert (=> b!174430 (= res!78848 (not lt!56074))))

(declare-fun b!174431 () Bool)

(assert (=> b!174431 (= e!105781 e!105782)))

(declare-fun c!34467 () Bool)

(assert (=> b!174431 (= c!34467 ((_ is EmptyLang!751) (regex!527 (rule!1038 (h!8335 tokens!465)))))))

(declare-fun b!174432 () Bool)

(declare-fun res!78847 () Bool)

(declare-fun e!105780 () Bool)

(assert (=> b!174432 (=> (not res!78847) (not e!105780))))

(assert (=> b!174432 (= res!78847 (isEmpty!1271 (tail!349 lt!55823)))))

(declare-fun b!174433 () Bool)

(declare-fun res!78845 () Bool)

(assert (=> b!174433 (=> (not res!78845) (not e!105780))))

(assert (=> b!174433 (= res!78845 (not call!7752))))

(declare-fun b!174434 () Bool)

(declare-fun e!105785 () Bool)

(assert (=> b!174434 (= e!105785 (not (= (head!609 lt!55823) (c!34380 (regex!527 (rule!1038 (h!8335 tokens!465)))))))))

(declare-fun b!174435 () Bool)

(declare-fun nullable!109 (Regex!751) Bool)

(assert (=> b!174435 (= e!105783 (nullable!109 (regex!527 (rule!1038 (h!8335 tokens!465)))))))

(declare-fun b!174436 () Bool)

(assert (=> b!174436 (= e!105779 e!105785)))

(declare-fun res!78852 () Bool)

(assert (=> b!174436 (=> res!78852 e!105785)))

(assert (=> b!174436 (= res!78852 call!7752)))

(declare-fun bm!7747 () Bool)

(assert (=> bm!7747 (= call!7752 (isEmpty!1271 lt!55823))))

(declare-fun b!174437 () Bool)

(assert (=> b!174437 (= e!105780 (= (head!609 lt!55823) (c!34380 (regex!527 (rule!1038 (h!8335 tokens!465))))))))

(declare-fun b!174438 () Bool)

(declare-fun res!78849 () Bool)

(assert (=> b!174438 (=> res!78849 e!105785)))

(assert (=> b!174438 (= res!78849 (not (isEmpty!1271 (tail!349 lt!55823))))))

(declare-fun b!174439 () Bool)

(declare-fun res!78851 () Bool)

(assert (=> b!174439 (=> res!78851 e!105784)))

(assert (=> b!174439 (= res!78851 e!105780)))

(declare-fun res!78850 () Bool)

(assert (=> b!174439 (=> (not res!78850) (not e!105780))))

(assert (=> b!174439 (= res!78850 lt!56074)))

(assert (= (and d!44041 c!34468) b!174435))

(assert (= (and d!44041 (not c!34468)) b!174429))

(assert (= (and d!44041 c!34466) b!174428))

(assert (= (and d!44041 (not c!34466)) b!174431))

(assert (= (and b!174431 c!34467) b!174426))

(assert (= (and b!174431 (not c!34467)) b!174427))

(assert (= (and b!174427 (not res!78846)) b!174439))

(assert (= (and b!174439 res!78850) b!174433))

(assert (= (and b!174433 res!78845) b!174432))

(assert (= (and b!174432 res!78847) b!174437))

(assert (= (and b!174439 (not res!78851)) b!174430))

(assert (= (and b!174430 res!78848) b!174436))

(assert (= (and b!174436 (not res!78852)) b!174438))

(assert (= (and b!174438 (not res!78849)) b!174434))

(assert (= (or b!174428 b!174433 b!174436) bm!7747))

(declare-fun m!173435 () Bool)

(assert (=> b!174435 m!173435))

(declare-fun m!173437 () Bool)

(assert (=> b!174438 m!173437))

(assert (=> b!174438 m!173437))

(declare-fun m!173439 () Bool)

(assert (=> b!174438 m!173439))

(declare-fun m!173441 () Bool)

(assert (=> b!174437 m!173441))

(assert (=> b!174432 m!173437))

(assert (=> b!174432 m!173437))

(assert (=> b!174432 m!173439))

(assert (=> b!174429 m!173441))

(assert (=> b!174429 m!173441))

(declare-fun m!173443 () Bool)

(assert (=> b!174429 m!173443))

(assert (=> b!174429 m!173437))

(assert (=> b!174429 m!173443))

(assert (=> b!174429 m!173437))

(declare-fun m!173445 () Bool)

(assert (=> b!174429 m!173445))

(assert (=> b!174434 m!173441))

(declare-fun m!173447 () Bool)

(assert (=> bm!7747 m!173447))

(assert (=> d!44041 m!173447))

(declare-fun m!173449 () Bool)

(assert (=> d!44041 m!173449))

(assert (=> b!173992 d!44041))

(declare-fun bs!17176 () Bool)

(declare-fun d!44043 () Bool)

(assert (= bs!17176 (and d!44043 b!174118)))

(declare-fun lambda!5044 () Int)

(assert (=> bs!17176 (= lambda!5044 lambda!5024)))

(declare-fun bs!17177 () Bool)

(assert (= bs!17177 (and d!44043 b!174010)))

(assert (=> bs!17177 (= lambda!5044 lambda!5012)))

(declare-fun bs!17178 () Bool)

(assert (= bs!17178 (and d!44043 b!173998)))

(assert (=> bs!17178 (not (= lambda!5044 lambda!5011))))

(declare-fun bs!17179 () Bool)

(assert (= bs!17179 (and d!44043 d!43945)))

(assert (=> bs!17179 (not (= lambda!5044 lambda!5023))))

(declare-fun bs!17180 () Bool)

(assert (= bs!17180 (and d!44043 d!43987)))

(assert (=> bs!17180 (= lambda!5044 lambda!5033)))

(declare-fun bs!17181 () Bool)

(assert (= bs!17181 (and d!44043 b!174198)))

(assert (=> bs!17181 (= lambda!5044 lambda!5030)))

(declare-fun b!174496 () Bool)

(declare-fun e!105827 () Bool)

(assert (=> b!174496 (= e!105827 true)))

(declare-fun b!174495 () Bool)

(declare-fun e!105826 () Bool)

(assert (=> b!174495 (= e!105826 e!105827)))

(declare-fun b!174494 () Bool)

(declare-fun e!105825 () Bool)

(assert (=> b!174494 (= e!105825 e!105826)))

(assert (=> d!44043 e!105825))

(assert (= b!174495 b!174496))

(assert (= b!174494 b!174495))

(assert (= (and d!44043 ((_ is Cons!2937) rules!1920)) b!174494))

(assert (=> b!174496 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5044))))

(assert (=> b!174496 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5044))))

(assert (=> d!44043 true))

(declare-fun e!105824 () Bool)

(assert (=> d!44043 e!105824))

(declare-fun res!78875 () Bool)

(assert (=> d!44043 (=> (not res!78875) (not e!105824))))

(declare-fun lt!56111 () Bool)

(assert (=> d!44043 (= res!78875 (= lt!56111 (forall!583 (list!1077 lt!55832) lambda!5044)))))

(declare-fun forall!584 (BalanceConc!1762 Int) Bool)

(assert (=> d!44043 (= lt!56111 (forall!584 lt!55832 lambda!5044))))

(assert (=> d!44043 (not (isEmpty!1272 rules!1920))))

(assert (=> d!44043 (= (rulesProduceEachTokenIndividually!205 thiss!17480 rules!1920 lt!55832) lt!56111)))

(declare-fun b!174493 () Bool)

(assert (=> b!174493 (= e!105824 (= lt!56111 (rulesProduceEachTokenIndividuallyList!115 thiss!17480 rules!1920 (list!1077 lt!55832))))))

(assert (= (and d!44043 res!78875) b!174493))

(assert (=> d!44043 m!173005))

(assert (=> d!44043 m!173005))

(declare-fun m!173601 () Bool)

(assert (=> d!44043 m!173601))

(declare-fun m!173603 () Bool)

(assert (=> d!44043 m!173603))

(assert (=> d!44043 m!172843))

(assert (=> b!174493 m!173005))

(assert (=> b!174493 m!173005))

(declare-fun m!173605 () Bool)

(assert (=> b!174493 m!173605))

(assert (=> b!173993 d!44043))

(declare-fun d!44079 () Bool)

(declare-fun fromListB!173 (List!2948) BalanceConc!1762)

(assert (=> d!44079 (= (seqFromList!431 tokens!465) (fromListB!173 tokens!465))))

(declare-fun bs!17182 () Bool)

(assert (= bs!17182 d!44079))

(declare-fun m!173607 () Bool)

(assert (=> bs!17182 m!173607))

(assert (=> b!173993 d!44079))

(declare-fun d!44081 () Bool)

(declare-fun lt!56119 () Bool)

(declare-fun e!105838 () Bool)

(assert (=> d!44081 (= lt!56119 e!105838)))

(declare-fun res!78885 () Bool)

(assert (=> d!44081 (=> (not res!78885) (not e!105838))))

(assert (=> d!44081 (= res!78885 (= (list!1077 (_1!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465)))))) (list!1077 (singletonSeq!79 (h!8335 tokens!465)))))))

(declare-fun e!105839 () Bool)

(assert (=> d!44081 (= lt!56119 e!105839)))

(declare-fun res!78886 () Bool)

(assert (=> d!44081 (=> (not res!78886) (not e!105839))))

(declare-fun lt!56120 () tuple2!2862)

(assert (=> d!44081 (= res!78886 (= (size!2432 (_1!1647 lt!56120)) 1))))

(assert (=> d!44081 (= lt!56120 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465)))))))

(assert (=> d!44081 (not (isEmpty!1272 rules!1920))))

(assert (=> d!44081 (= (rulesProduceIndividualToken!162 thiss!17480 rules!1920 (h!8335 tokens!465)) lt!56119)))

(declare-fun b!174509 () Bool)

(declare-fun res!78887 () Bool)

(assert (=> b!174509 (=> (not res!78887) (not e!105839))))

(assert (=> b!174509 (= res!78887 (= (apply!429 (_1!1647 lt!56120) 0) (h!8335 tokens!465)))))

(declare-fun b!174510 () Bool)

(declare-fun isEmpty!1281 (BalanceConc!1760) Bool)

(assert (=> b!174510 (= e!105839 (isEmpty!1281 (_2!1647 lt!56120)))))

(declare-fun b!174511 () Bool)

(assert (=> b!174511 (= e!105838 (isEmpty!1281 (_2!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465)))))))))

(assert (= (and d!44081 res!78886) b!174509))

(assert (= (and b!174509 res!78887) b!174510))

(assert (= (and d!44081 res!78885) b!174511))

(declare-fun m!173609 () Bool)

(assert (=> d!44081 m!173609))

(assert (=> d!44081 m!172839))

(assert (=> d!44081 m!173135))

(assert (=> d!44081 m!172839))

(assert (=> d!44081 m!172839))

(declare-fun m!173611 () Bool)

(assert (=> d!44081 m!173611))

(assert (=> d!44081 m!173135))

(declare-fun m!173613 () Bool)

(assert (=> d!44081 m!173613))

(assert (=> d!44081 m!172843))

(declare-fun m!173615 () Bool)

(assert (=> d!44081 m!173615))

(declare-fun m!173617 () Bool)

(assert (=> b!174509 m!173617))

(declare-fun m!173619 () Bool)

(assert (=> b!174510 m!173619))

(assert (=> b!174511 m!172839))

(assert (=> b!174511 m!172839))

(assert (=> b!174511 m!173135))

(assert (=> b!174511 m!173135))

(assert (=> b!174511 m!173613))

(declare-fun m!173623 () Bool)

(assert (=> b!174511 m!173623))

(assert (=> b!174014 d!44081))

(declare-fun d!44083 () Bool)

(declare-fun e!105840 () Bool)

(assert (=> d!44083 e!105840))

(declare-fun res!78889 () Bool)

(assert (=> d!44083 (=> (not res!78889) (not e!105840))))

(declare-fun lt!56121 () List!2946)

(assert (=> d!44083 (= res!78889 (= (content!407 lt!56121) ((_ map or) (content!407 lt!55823) (content!407 lt!55827))))))

(declare-fun e!105841 () List!2946)

(assert (=> d!44083 (= lt!56121 e!105841)))

(declare-fun c!34480 () Bool)

(assert (=> d!44083 (= c!34480 ((_ is Nil!2936) lt!55823))))

(assert (=> d!44083 (= (++!680 lt!55823 lt!55827) lt!56121)))

(declare-fun b!174515 () Bool)

(assert (=> b!174515 (= e!105840 (or (not (= lt!55827 Nil!2936)) (= lt!56121 lt!55823)))))

(declare-fun b!174514 () Bool)

(declare-fun res!78888 () Bool)

(assert (=> b!174514 (=> (not res!78888) (not e!105840))))

(assert (=> b!174514 (= res!78888 (= (size!2431 lt!56121) (+ (size!2431 lt!55823) (size!2431 lt!55827))))))

(declare-fun b!174512 () Bool)

(assert (=> b!174512 (= e!105841 lt!55827)))

(declare-fun b!174513 () Bool)

(assert (=> b!174513 (= e!105841 (Cons!2936 (h!8333 lt!55823) (++!680 (t!27584 lt!55823) lt!55827)))))

(assert (= (and d!44083 c!34480) b!174512))

(assert (= (and d!44083 (not c!34480)) b!174513))

(assert (= (and d!44083 res!78889) b!174514))

(assert (= (and b!174514 res!78888) b!174515))

(declare-fun m!173631 () Bool)

(assert (=> d!44083 m!173631))

(assert (=> d!44083 m!172911))

(declare-fun m!173633 () Bool)

(assert (=> d!44083 m!173633))

(declare-fun m!173635 () Bool)

(assert (=> b!174514 m!173635))

(assert (=> b!174514 m!172917))

(declare-fun m!173637 () Bool)

(assert (=> b!174514 m!173637))

(declare-fun m!173639 () Bool)

(assert (=> b!174513 m!173639))

(assert (=> b!173991 d!44083))

(declare-fun d!44089 () Bool)

(assert (=> d!44089 (= (seqFromList!431 (t!27586 tokens!465)) (fromListB!173 (t!27586 tokens!465)))))

(declare-fun bs!17193 () Bool)

(assert (= bs!17193 d!44089))

(declare-fun m!173641 () Bool)

(assert (=> bs!17193 m!173641))

(assert (=> b!173991 d!44089))

(declare-fun d!44091 () Bool)

(declare-fun e!105842 () Bool)

(assert (=> d!44091 e!105842))

(declare-fun res!78891 () Bool)

(assert (=> d!44091 (=> (not res!78891) (not e!105842))))

(declare-fun lt!56122 () List!2946)

(assert (=> d!44091 (= res!78891 (= (content!407 lt!56122) ((_ map or) (content!407 (++!680 lt!55823 lt!55827)) (content!407 lt!55824))))))

(declare-fun e!105843 () List!2946)

(assert (=> d!44091 (= lt!56122 e!105843)))

(declare-fun c!34481 () Bool)

(assert (=> d!44091 (= c!34481 ((_ is Nil!2936) (++!680 lt!55823 lt!55827)))))

(assert (=> d!44091 (= (++!680 (++!680 lt!55823 lt!55827) lt!55824) lt!56122)))

(declare-fun b!174519 () Bool)

(assert (=> b!174519 (= e!105842 (or (not (= lt!55824 Nil!2936)) (= lt!56122 (++!680 lt!55823 lt!55827))))))

(declare-fun b!174518 () Bool)

(declare-fun res!78890 () Bool)

(assert (=> b!174518 (=> (not res!78890) (not e!105842))))

(assert (=> b!174518 (= res!78890 (= (size!2431 lt!56122) (+ (size!2431 (++!680 lt!55823 lt!55827)) (size!2431 lt!55824))))))

(declare-fun b!174516 () Bool)

(assert (=> b!174516 (= e!105843 lt!55824)))

(declare-fun b!174517 () Bool)

(assert (=> b!174517 (= e!105843 (Cons!2936 (h!8333 (++!680 lt!55823 lt!55827)) (++!680 (t!27584 (++!680 lt!55823 lt!55827)) lt!55824)))))

(assert (= (and d!44091 c!34481) b!174516))

(assert (= (and d!44091 (not c!34481)) b!174517))

(assert (= (and d!44091 res!78891) b!174518))

(assert (= (and b!174518 res!78890) b!174519))

(declare-fun m!173643 () Bool)

(assert (=> d!44091 m!173643))

(assert (=> d!44091 m!172865))

(declare-fun m!173645 () Bool)

(assert (=> d!44091 m!173645))

(assert (=> d!44091 m!172913))

(declare-fun m!173647 () Bool)

(assert (=> b!174518 m!173647))

(assert (=> b!174518 m!172865))

(declare-fun m!173649 () Bool)

(assert (=> b!174518 m!173649))

(assert (=> b!174518 m!172919))

(declare-fun m!173651 () Bool)

(assert (=> b!174517 m!173651))

(assert (=> b!173991 d!44091))

(declare-fun d!44093 () Bool)

(assert (=> d!44093 (= (list!1073 (charsOf!182 separatorToken!170)) (list!1076 (c!34379 (charsOf!182 separatorToken!170))))))

(declare-fun bs!17194 () Bool)

(assert (= bs!17194 d!44093))

(declare-fun m!173653 () Bool)

(assert (=> bs!17194 m!173653))

(assert (=> b!173991 d!44093))

(declare-fun d!44095 () Bool)

(declare-fun e!105844 () Bool)

(assert (=> d!44095 e!105844))

(declare-fun res!78893 () Bool)

(assert (=> d!44095 (=> (not res!78893) (not e!105844))))

(declare-fun lt!56123 () List!2946)

(assert (=> d!44095 (= res!78893 (= (content!407 lt!56123) ((_ map or) (content!407 lt!55827) (content!407 lt!55824))))))

(declare-fun e!105845 () List!2946)

(assert (=> d!44095 (= lt!56123 e!105845)))

(declare-fun c!34482 () Bool)

(assert (=> d!44095 (= c!34482 ((_ is Nil!2936) lt!55827))))

(assert (=> d!44095 (= (++!680 lt!55827 lt!55824) lt!56123)))

(declare-fun b!174523 () Bool)

(assert (=> b!174523 (= e!105844 (or (not (= lt!55824 Nil!2936)) (= lt!56123 lt!55827)))))

(declare-fun b!174522 () Bool)

(declare-fun res!78892 () Bool)

(assert (=> b!174522 (=> (not res!78892) (not e!105844))))

(assert (=> b!174522 (= res!78892 (= (size!2431 lt!56123) (+ (size!2431 lt!55827) (size!2431 lt!55824))))))

(declare-fun b!174520 () Bool)

(assert (=> b!174520 (= e!105845 lt!55824)))

(declare-fun b!174521 () Bool)

(assert (=> b!174521 (= e!105845 (Cons!2936 (h!8333 lt!55827) (++!680 (t!27584 lt!55827) lt!55824)))))

(assert (= (and d!44095 c!34482) b!174520))

(assert (= (and d!44095 (not c!34482)) b!174521))

(assert (= (and d!44095 res!78893) b!174522))

(assert (= (and b!174522 res!78892) b!174523))

(declare-fun m!173655 () Bool)

(assert (=> d!44095 m!173655))

(assert (=> d!44095 m!173633))

(assert (=> d!44095 m!172913))

(declare-fun m!173657 () Bool)

(assert (=> b!174522 m!173657))

(assert (=> b!174522 m!173637))

(assert (=> b!174522 m!172919))

(declare-fun m!173659 () Bool)

(assert (=> b!174521 m!173659))

(assert (=> b!173991 d!44095))

(declare-fun d!44097 () Bool)

(assert (=> d!44097 (= (list!1073 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 (seqFromList!431 (t!27586 tokens!465)) separatorToken!170 0)) (list!1076 (c!34379 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 (seqFromList!431 (t!27586 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!17195 () Bool)

(assert (= bs!17195 d!44097))

(declare-fun m!173661 () Bool)

(assert (=> bs!17195 m!173661))

(assert (=> b!173991 d!44097))

(declare-fun bs!17196 () Bool)

(declare-fun b!174525 () Bool)

(assert (= bs!17196 (and b!174525 d!44043)))

(declare-fun lambda!5050 () Int)

(assert (=> bs!17196 (= lambda!5050 lambda!5044)))

(declare-fun bs!17197 () Bool)

(assert (= bs!17197 (and b!174525 b!174118)))

(assert (=> bs!17197 (= lambda!5050 lambda!5024)))

(declare-fun bs!17198 () Bool)

(assert (= bs!17198 (and b!174525 b!174010)))

(assert (=> bs!17198 (= lambda!5050 lambda!5012)))

(declare-fun bs!17199 () Bool)

(assert (= bs!17199 (and b!174525 b!173998)))

(assert (=> bs!17199 (not (= lambda!5050 lambda!5011))))

(declare-fun bs!17200 () Bool)

(assert (= bs!17200 (and b!174525 d!43945)))

(assert (=> bs!17200 (not (= lambda!5050 lambda!5023))))

(declare-fun bs!17201 () Bool)

(assert (= bs!17201 (and b!174525 d!43987)))

(assert (=> bs!17201 (= lambda!5050 lambda!5033)))

(declare-fun bs!17202 () Bool)

(assert (= bs!17202 (and b!174525 b!174198)))

(assert (=> bs!17202 (= lambda!5050 lambda!5030)))

(declare-fun b!174534 () Bool)

(declare-fun e!105852 () Bool)

(assert (=> b!174534 (= e!105852 true)))

(declare-fun b!174533 () Bool)

(declare-fun e!105851 () Bool)

(assert (=> b!174533 (= e!105851 e!105852)))

(declare-fun b!174532 () Bool)

(declare-fun e!105850 () Bool)

(assert (=> b!174532 (= e!105850 e!105851)))

(assert (=> b!174525 e!105850))

(assert (= b!174533 b!174534))

(assert (= b!174532 b!174533))

(assert (= (and b!174525 ((_ is Cons!2937) rules!1920)) b!174532))

(assert (=> b!174534 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5050))))

(assert (=> b!174534 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5050))))

(assert (=> b!174525 true))

(declare-fun d!44099 () Bool)

(declare-fun c!34486 () Bool)

(assert (=> d!44099 (= c!34486 ((_ is Cons!2938) (t!27586 tokens!465)))))

(declare-fun e!105849 () List!2946)

(assert (=> d!44099 (= (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 (t!27586 tokens!465) separatorToken!170) e!105849)))

(declare-fun b!174524 () Bool)

(declare-fun e!105848 () List!2946)

(assert (=> b!174524 (= e!105848 Nil!2936)))

(assert (=> b!174524 (= (print!144 thiss!17480 (singletonSeq!79 (h!8335 (t!27586 tokens!465)))) (printTailRec!107 thiss!17480 (singletonSeq!79 (h!8335 (t!27586 tokens!465))) 0 (BalanceConc!1761 Empty!876)))))

(declare-fun lt!56129 () Unit!2616)

(declare-fun Unit!2630 () Unit!2616)

(assert (=> b!174524 (= lt!56129 Unit!2630)))

(declare-fun call!7767 () List!2946)

(declare-fun lt!56128 () List!2946)

(declare-fun lt!56127 () Unit!2616)

(assert (=> b!174524 (= lt!56127 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!40 thiss!17480 rules!1920 call!7767 lt!56128))))

(assert (=> b!174524 false))

(declare-fun lt!56126 () Unit!2616)

(declare-fun Unit!2631 () Unit!2616)

(assert (=> b!174524 (= lt!56126 Unit!2631)))

(declare-fun e!105846 () List!2946)

(assert (=> b!174525 (= e!105849 e!105846)))

(declare-fun lt!56124 () Unit!2616)

(assert (=> b!174525 (= lt!56124 (forallContained!94 (t!27586 tokens!465) lambda!5050 (h!8335 (t!27586 tokens!465))))))

(assert (=> b!174525 (= lt!56128 (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 (t!27586 (t!27586 tokens!465)) separatorToken!170))))

(declare-fun lt!56125 () Option!331)

(assert (=> b!174525 (= lt!56125 (maxPrefix!143 thiss!17480 rules!1920 (++!680 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465)))) lt!56128)))))

(declare-fun c!34485 () Bool)

(assert (=> b!174525 (= c!34485 (and ((_ is Some!330) lt!56125) (= (_1!1648 (v!13783 lt!56125)) (h!8335 (t!27586 tokens!465)))))))

(declare-fun b!174526 () Bool)

(assert (=> b!174526 (= e!105849 Nil!2936)))

(declare-fun b!174527 () Bool)

(declare-fun e!105847 () BalanceConc!1760)

(assert (=> b!174527 (= e!105847 (charsOf!182 separatorToken!170))))

(declare-fun b!174528 () Bool)

(declare-fun call!7766 () List!2946)

(assert (=> b!174528 (= e!105846 call!7766)))

(declare-fun bm!7758 () Bool)

(assert (=> bm!7758 (= call!7767 (list!1073 e!105847))))

(declare-fun c!34484 () Bool)

(declare-fun c!34483 () Bool)

(assert (=> bm!7758 (= c!34484 c!34483)))

(declare-fun bm!7759 () Bool)

(declare-fun call!7765 () BalanceConc!1760)

(declare-fun call!7764 () BalanceConc!1760)

(declare-fun call!7763 () List!2946)

(assert (=> bm!7759 (= call!7763 (list!1073 (ite c!34485 call!7765 call!7764)))))

(declare-fun bm!7760 () Bool)

(assert (=> bm!7760 (= call!7766 (++!680 call!7763 (ite c!34485 lt!56128 call!7767)))))

(declare-fun b!174529 () Bool)

(assert (=> b!174529 (= e!105848 (++!680 call!7766 lt!56128))))

(declare-fun b!174530 () Bool)

(assert (=> b!174530 (= e!105847 call!7764)))

(declare-fun bm!7761 () Bool)

(assert (=> bm!7761 (= call!7764 call!7765)))

(declare-fun bm!7762 () Bool)

(assert (=> bm!7762 (= call!7765 (charsOf!182 (h!8335 (t!27586 tokens!465))))))

(declare-fun b!174531 () Bool)

(assert (=> b!174531 (= c!34483 (and ((_ is Some!330) lt!56125) (not (= (_1!1648 (v!13783 lt!56125)) (h!8335 (t!27586 tokens!465))))))))

(assert (=> b!174531 (= e!105846 e!105848)))

(assert (= (and d!44099 c!34486) b!174525))

(assert (= (and d!44099 (not c!34486)) b!174526))

(assert (= (and b!174525 c!34485) b!174528))

(assert (= (and b!174525 (not c!34485)) b!174531))

(assert (= (and b!174531 c!34483) b!174529))

(assert (= (and b!174531 (not c!34483)) b!174524))

(assert (= (or b!174529 b!174524) bm!7761))

(assert (= (or b!174529 b!174524) bm!7758))

(assert (= (and bm!7758 c!34484) b!174527))

(assert (= (and bm!7758 (not c!34484)) b!174530))

(assert (= (or b!174528 bm!7761) bm!7762))

(assert (= (or b!174528 b!174529) bm!7759))

(assert (= (or b!174528 b!174529) bm!7760))

(declare-fun m!173663 () Bool)

(assert (=> bm!7759 m!173663))

(declare-fun m!173665 () Bool)

(assert (=> bm!7760 m!173665))

(declare-fun m!173667 () Bool)

(assert (=> bm!7762 m!173667))

(declare-fun m!173669 () Bool)

(assert (=> bm!7758 m!173669))

(declare-fun m!173671 () Bool)

(assert (=> b!174525 m!173671))

(declare-fun m!173673 () Bool)

(assert (=> b!174525 m!173673))

(declare-fun m!173675 () Bool)

(assert (=> b!174525 m!173675))

(assert (=> b!174525 m!173675))

(declare-fun m!173677 () Bool)

(assert (=> b!174525 m!173677))

(declare-fun m!173679 () Bool)

(assert (=> b!174525 m!173679))

(assert (=> b!174525 m!173667))

(assert (=> b!174525 m!173673))

(assert (=> b!174525 m!173667))

(declare-fun m!173681 () Bool)

(assert (=> b!174529 m!173681))

(assert (=> b!174527 m!172859))

(declare-fun m!173683 () Bool)

(assert (=> b!174524 m!173683))

(assert (=> b!174524 m!173683))

(declare-fun m!173685 () Bool)

(assert (=> b!174524 m!173685))

(assert (=> b!174524 m!173683))

(declare-fun m!173687 () Bool)

(assert (=> b!174524 m!173687))

(declare-fun m!173689 () Bool)

(assert (=> b!174524 m!173689))

(assert (=> b!173991 d!44099))

(declare-fun bs!17203 () Bool)

(declare-fun d!44101 () Bool)

(assert (= bs!17203 (and d!44101 d!44043)))

(declare-fun lambda!5051 () Int)

(assert (=> bs!17203 (not (= lambda!5051 lambda!5044))))

(declare-fun bs!17204 () Bool)

(assert (= bs!17204 (and d!44101 b!174118)))

(assert (=> bs!17204 (not (= lambda!5051 lambda!5024))))

(declare-fun bs!17205 () Bool)

(assert (= bs!17205 (and d!44101 b!174010)))

(assert (=> bs!17205 (not (= lambda!5051 lambda!5012))))

(declare-fun bs!17206 () Bool)

(assert (= bs!17206 (and d!44101 b!173998)))

(assert (=> bs!17206 (= lambda!5051 lambda!5011)))

(declare-fun bs!17207 () Bool)

(assert (= bs!17207 (and d!44101 d!43945)))

(assert (=> bs!17207 (= lambda!5051 lambda!5023)))

(declare-fun bs!17208 () Bool)

(assert (= bs!17208 (and d!44101 b!174525)))

(assert (=> bs!17208 (not (= lambda!5051 lambda!5050))))

(declare-fun bs!17209 () Bool)

(assert (= bs!17209 (and d!44101 d!43987)))

(assert (=> bs!17209 (not (= lambda!5051 lambda!5033))))

(declare-fun bs!17210 () Bool)

(assert (= bs!17210 (and d!44101 b!174198)))

(assert (=> bs!17210 (not (= lambda!5051 lambda!5030))))

(declare-fun bs!17211 () Bool)

(declare-fun b!174547 () Bool)

(assert (= bs!17211 (and b!174547 d!44043)))

(declare-fun lambda!5052 () Int)

(assert (=> bs!17211 (= lambda!5052 lambda!5044)))

(declare-fun bs!17212 () Bool)

(assert (= bs!17212 (and b!174547 b!174118)))

(assert (=> bs!17212 (= lambda!5052 lambda!5024)))

(declare-fun bs!17213 () Bool)

(assert (= bs!17213 (and b!174547 b!174010)))

(assert (=> bs!17213 (= lambda!5052 lambda!5012)))

(declare-fun bs!17214 () Bool)

(assert (= bs!17214 (and b!174547 b!173998)))

(assert (=> bs!17214 (not (= lambda!5052 lambda!5011))))

(declare-fun bs!17215 () Bool)

(assert (= bs!17215 (and b!174547 d!43945)))

(assert (=> bs!17215 (not (= lambda!5052 lambda!5023))))

(declare-fun bs!17216 () Bool)

(assert (= bs!17216 (and b!174547 b!174525)))

(assert (=> bs!17216 (= lambda!5052 lambda!5050)))

(declare-fun bs!17217 () Bool)

(assert (= bs!17217 (and b!174547 d!44101)))

(assert (=> bs!17217 (not (= lambda!5052 lambda!5051))))

(declare-fun bs!17218 () Bool)

(assert (= bs!17218 (and b!174547 d!43987)))

(assert (=> bs!17218 (= lambda!5052 lambda!5033)))

(declare-fun bs!17219 () Bool)

(assert (= bs!17219 (and b!174547 b!174198)))

(assert (=> bs!17219 (= lambda!5052 lambda!5030)))

(declare-fun b!174576 () Bool)

(declare-fun e!105876 () Bool)

(assert (=> b!174576 (= e!105876 true)))

(declare-fun b!174575 () Bool)

(declare-fun e!105875 () Bool)

(assert (=> b!174575 (= e!105875 e!105876)))

(declare-fun b!174574 () Bool)

(declare-fun e!105874 () Bool)

(assert (=> b!174574 (= e!105874 e!105875)))

(assert (=> b!174547 e!105874))

(assert (= b!174575 b!174576))

(assert (= b!174574 b!174575))

(assert (= (and b!174547 ((_ is Cons!2937) rules!1920)) b!174574))

(assert (=> b!174576 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5052))))

(assert (=> b!174576 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5052))))

(assert (=> b!174547 true))

(declare-fun lt!56145 () BalanceConc!1760)

(assert (=> d!44101 (= (list!1073 lt!56145) (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0) separatorToken!170))))

(declare-fun e!105853 () BalanceConc!1760)

(assert (=> d!44101 (= lt!56145 e!105853)))

(declare-fun c!34487 () Bool)

(assert (=> d!44101 (= c!34487 (>= 0 (size!2432 (seqFromList!431 (t!27586 tokens!465)))))))

(declare-fun lt!56144 () Unit!2616)

(assert (=> d!44101 (= lt!56144 (lemmaContentSubsetPreservesForall!36 (list!1077 (seqFromList!431 (t!27586 tokens!465))) (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0) lambda!5051))))

(declare-fun e!105856 () Bool)

(assert (=> d!44101 e!105856))

(declare-fun res!78896 () Bool)

(assert (=> d!44101 (=> (not res!78896) (not e!105856))))

(assert (=> d!44101 (= res!78896 (>= 0 0))))

(assert (=> d!44101 (= (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 (seqFromList!431 (t!27586 tokens!465)) separatorToken!170 0) lt!56145)))

(declare-fun b!174537 () Bool)

(assert (=> b!174537 (= e!105856 (<= 0 (size!2432 (seqFromList!431 (t!27586 tokens!465)))))))

(declare-fun b!174538 () Bool)

(declare-fun e!105858 () BalanceConc!1760)

(declare-fun call!7770 () BalanceConc!1760)

(declare-fun lt!56132 () BalanceConc!1760)

(assert (=> b!174538 (= e!105858 (++!682 call!7770 lt!56132))))

(declare-fun b!174539 () Bool)

(declare-fun e!105854 () Bool)

(declare-fun lt!56136 () Option!330)

(declare-fun call!7768 () Token!798)

(assert (=> b!174539 (= e!105854 (not (= (_1!1649 (v!13782 lt!56136)) call!7768)))))

(declare-fun bm!7763 () Bool)

(declare-fun call!7769 () BalanceConc!1760)

(declare-fun call!7772 () BalanceConc!1760)

(assert (=> bm!7763 (= call!7769 call!7772)))

(declare-fun b!174542 () Bool)

(declare-fun e!105859 () BalanceConc!1760)

(assert (=> b!174542 (= e!105859 call!7772)))

(declare-fun b!174543 () Bool)

(declare-fun c!34488 () Bool)

(assert (=> b!174543 (= c!34488 e!105854)))

(declare-fun res!78895 () Bool)

(assert (=> b!174543 (=> (not res!78895) (not e!105854))))

(assert (=> b!174543 (= res!78895 ((_ is Some!329) lt!56136))))

(declare-fun e!105855 () BalanceConc!1760)

(assert (=> b!174543 (= e!105855 e!105858)))

(declare-fun b!174544 () Bool)

(assert (=> b!174544 (= e!105853 (BalanceConc!1761 Empty!876))))

(declare-fun b!174545 () Bool)

(declare-fun call!7771 () Token!798)

(assert (=> b!174545 (= e!105859 (charsOf!182 call!7771))))

(declare-fun b!174546 () Bool)

(declare-fun e!105857 () Bool)

(assert (=> b!174546 (= e!105857 (= (_1!1649 (v!13782 lt!56136)) (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)))))

(declare-fun bm!7764 () Bool)

(assert (=> bm!7764 (= call!7768 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))))

(declare-fun bm!7765 () Bool)

(declare-fun c!34490 () Bool)

(declare-fun c!34489 () Bool)

(assert (=> bm!7765 (= c!34490 c!34489)))

(assert (=> bm!7765 (= call!7770 (++!682 e!105859 (ite c!34489 lt!56132 call!7769)))))

(assert (=> b!174547 (= e!105853 e!105855)))

(declare-fun lt!56135 () List!2948)

(assert (=> b!174547 (= lt!56135 (list!1077 (seqFromList!431 (t!27586 tokens!465))))))

(declare-fun lt!56130 () Unit!2616)

(assert (=> b!174547 (= lt!56130 (lemmaDropApply!132 lt!56135 0))))

(assert (=> b!174547 (= (head!608 (drop!145 lt!56135 0)) (apply!430 lt!56135 0))))

(declare-fun lt!56137 () Unit!2616)

(assert (=> b!174547 (= lt!56137 lt!56130)))

(declare-fun lt!56131 () List!2948)

(assert (=> b!174547 (= lt!56131 (list!1077 (seqFromList!431 (t!27586 tokens!465))))))

(declare-fun lt!56143 () Unit!2616)

(assert (=> b!174547 (= lt!56143 (lemmaDropTail!124 lt!56131 0))))

(assert (=> b!174547 (= (tail!348 (drop!145 lt!56131 0)) (drop!145 lt!56131 (+ 0 1)))))

(declare-fun lt!56138 () Unit!2616)

(assert (=> b!174547 (= lt!56138 lt!56143)))

(declare-fun lt!56140 () Unit!2616)

(assert (=> b!174547 (= lt!56140 (forallContained!94 (list!1077 (seqFromList!431 (t!27586 tokens!465))) lambda!5052 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)))))

(assert (=> b!174547 (= lt!56132 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 (seqFromList!431 (t!27586 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!174547 (= lt!56136 (maxPrefixZipperSequence!106 thiss!17480 rules!1920 (++!682 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)) lt!56132)))))

(declare-fun res!78894 () Bool)

(assert (=> b!174547 (= res!78894 ((_ is Some!329) lt!56136))))

(assert (=> b!174547 (=> (not res!78894) (not e!105857))))

(assert (=> b!174547 (= c!34489 e!105857)))

(declare-fun bm!7766 () Bool)

(assert (=> bm!7766 (= call!7772 (charsOf!182 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771))))))

(declare-fun bm!7767 () Bool)

(assert (=> bm!7767 (= call!7771 call!7768)))

(declare-fun b!174548 () Bool)

(assert (=> b!174548 (= e!105855 call!7770)))

(declare-fun b!174549 () Bool)

(assert (=> b!174549 (= e!105858 (BalanceConc!1761 Empty!876))))

(assert (=> b!174549 (= (print!144 thiss!17480 (singletonSeq!79 call!7771)) (printTailRec!107 thiss!17480 (singletonSeq!79 call!7771) 0 (BalanceConc!1761 Empty!876)))))

(declare-fun lt!56134 () Unit!2616)

(declare-fun Unit!2632 () Unit!2616)

(assert (=> b!174549 (= lt!56134 Unit!2632)))

(declare-fun lt!56139 () Unit!2616)

(assert (=> b!174549 (= lt!56139 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!40 thiss!17480 rules!1920 (list!1073 call!7769) (list!1073 lt!56132)))))

(assert (=> b!174549 false))

(declare-fun lt!56133 () Unit!2616)

(declare-fun Unit!2633 () Unit!2616)

(assert (=> b!174549 (= lt!56133 Unit!2633)))

(assert (= (and d!44101 res!78896) b!174537))

(assert (= (and d!44101 c!34487) b!174544))

(assert (= (and d!44101 (not c!34487)) b!174547))

(assert (= (and b!174547 res!78894) b!174546))

(assert (= (and b!174547 c!34489) b!174548))

(assert (= (and b!174547 (not c!34489)) b!174543))

(assert (= (and b!174543 res!78895) b!174539))

(assert (= (and b!174543 c!34488) b!174538))

(assert (= (and b!174543 (not c!34488)) b!174549))

(assert (= (or b!174538 b!174549) bm!7767))

(assert (= (or b!174538 b!174549) bm!7763))

(assert (= (or b!174548 b!174539 bm!7767) bm!7764))

(assert (= (or b!174548 bm!7763) bm!7766))

(assert (= (or b!174548 b!174538) bm!7765))

(assert (= (and bm!7765 c!34490) b!174542))

(assert (= (and bm!7765 (not c!34490)) b!174545))

(assert (=> d!44101 m!172855))

(declare-fun m!173691 () Bool)

(assert (=> d!44101 m!173691))

(assert (=> d!44101 m!172855))

(declare-fun m!173693 () Bool)

(assert (=> d!44101 m!173693))

(assert (=> d!44101 m!173691))

(declare-fun m!173695 () Bool)

(assert (=> d!44101 m!173695))

(declare-fun m!173697 () Bool)

(assert (=> d!44101 m!173697))

(assert (=> d!44101 m!172855))

(declare-fun m!173699 () Bool)

(assert (=> d!44101 m!173699))

(assert (=> d!44101 m!173699))

(assert (=> d!44101 m!173691))

(declare-fun m!173701 () Bool)

(assert (=> d!44101 m!173701))

(assert (=> b!174537 m!172855))

(assert (=> b!174537 m!173693))

(declare-fun m!173703 () Bool)

(assert (=> b!174549 m!173703))

(declare-fun m!173705 () Bool)

(assert (=> b!174549 m!173705))

(declare-fun m!173707 () Bool)

(assert (=> b!174549 m!173707))

(assert (=> b!174549 m!173703))

(declare-fun m!173709 () Bool)

(assert (=> b!174549 m!173709))

(assert (=> b!174549 m!173707))

(assert (=> b!174549 m!173705))

(declare-fun m!173711 () Bool)

(assert (=> b!174549 m!173711))

(assert (=> b!174549 m!173703))

(declare-fun m!173713 () Bool)

(assert (=> b!174549 m!173713))

(assert (=> bm!7764 m!172855))

(declare-fun m!173715 () Bool)

(assert (=> bm!7764 m!173715))

(declare-fun m!173717 () Bool)

(assert (=> bm!7766 m!173717))

(declare-fun m!173719 () Bool)

(assert (=> b!174545 m!173719))

(assert (=> b!174547 m!172855))

(assert (=> b!174547 m!173715))

(declare-fun m!173721 () Bool)

(assert (=> b!174547 m!173721))

(assert (=> b!174547 m!172855))

(assert (=> b!174547 m!173699))

(declare-fun m!173723 () Bool)

(assert (=> b!174547 m!173723))

(declare-fun m!173725 () Bool)

(assert (=> b!174547 m!173725))

(declare-fun m!173727 () Bool)

(assert (=> b!174547 m!173727))

(declare-fun m!173729 () Bool)

(assert (=> b!174547 m!173729))

(declare-fun m!173731 () Bool)

(assert (=> b!174547 m!173731))

(assert (=> b!174547 m!173725))

(declare-fun m!173733 () Bool)

(assert (=> b!174547 m!173733))

(assert (=> b!174547 m!173699))

(assert (=> b!174547 m!173715))

(declare-fun m!173735 () Bool)

(assert (=> b!174547 m!173735))

(declare-fun m!173737 () Bool)

(assert (=> b!174547 m!173737))

(declare-fun m!173739 () Bool)

(assert (=> b!174547 m!173739))

(assert (=> b!174547 m!173715))

(declare-fun m!173741 () Bool)

(assert (=> b!174547 m!173741))

(declare-fun m!173743 () Bool)

(assert (=> b!174547 m!173743))

(assert (=> b!174547 m!173737))

(assert (=> b!174547 m!173741))

(assert (=> b!174547 m!173729))

(assert (=> b!174547 m!172855))

(declare-fun m!173745 () Bool)

(assert (=> b!174547 m!173745))

(assert (=> b!174546 m!172855))

(assert (=> b!174546 m!173715))

(declare-fun m!173747 () Bool)

(assert (=> b!174538 m!173747))

(declare-fun m!173749 () Bool)

(assert (=> bm!7765 m!173749))

(assert (=> b!173991 d!44101))

(declare-fun d!44103 () Bool)

(declare-fun lt!56149 () BalanceConc!1760)

(assert (=> d!44103 (= (list!1073 lt!56149) (originalCharacters!570 separatorToken!170))))

(assert (=> d!44103 (= lt!56149 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170)))))

(assert (=> d!44103 (= (charsOf!182 separatorToken!170) lt!56149)))

(declare-fun b_lambda!4047 () Bool)

(assert (=> (not b_lambda!4047) (not d!44103)))

(declare-fun tb!7111 () Bool)

(declare-fun t!27633 () Bool)

(assert (=> (and b!174009 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 separatorToken!170)))) t!27633) tb!7111))

(declare-fun b!174602 () Bool)

(declare-fun e!105889 () Bool)

(declare-fun tp!84899 () Bool)

(assert (=> b!174602 (= e!105889 (and (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170)))) tp!84899))))

(declare-fun result!9848 () Bool)

(assert (=> tb!7111 (= result!9848 (and (inv!3770 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170))) e!105889))))

(assert (= tb!7111 b!174602))

(declare-fun m!173773 () Bool)

(assert (=> b!174602 m!173773))

(declare-fun m!173775 () Bool)

(assert (=> tb!7111 m!173775))

(assert (=> d!44103 t!27633))

(declare-fun b_and!11663 () Bool)

(assert (= b_and!11633 (and (=> t!27633 result!9848) b_and!11663)))

(declare-fun tb!7113 () Bool)

(declare-fun t!27635 () Bool)

(assert (=> (and b!174005 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 separatorToken!170)))) t!27635) tb!7113))

(declare-fun result!9850 () Bool)

(assert (= result!9850 result!9848))

(assert (=> d!44103 t!27635))

(declare-fun b_and!11665 () Bool)

(assert (= b_and!11635 (and (=> t!27635 result!9850) b_and!11665)))

(declare-fun t!27637 () Bool)

(declare-fun tb!7115 () Bool)

(assert (=> (and b!174015 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 separatorToken!170)))) t!27637) tb!7115))

(declare-fun result!9852 () Bool)

(assert (= result!9852 result!9848))

(assert (=> d!44103 t!27637))

(declare-fun b_and!11667 () Bool)

(assert (= b_and!11637 (and (=> t!27637 result!9852) b_and!11667)))

(declare-fun m!173777 () Bool)

(assert (=> d!44103 m!173777))

(declare-fun m!173779 () Bool)

(assert (=> d!44103 m!173779))

(assert (=> b!173991 d!44103))

(declare-fun d!44107 () Bool)

(assert (=> d!44107 (= (list!1073 (charsOf!182 (h!8335 tokens!465))) (list!1076 (c!34379 (charsOf!182 (h!8335 tokens!465)))))))

(declare-fun bs!17220 () Bool)

(assert (= bs!17220 d!44107))

(declare-fun m!173781 () Bool)

(assert (=> bs!17220 m!173781))

(assert (=> b!173991 d!44107))

(declare-fun d!44109 () Bool)

(declare-fun lt!56150 () BalanceConc!1760)

(assert (=> d!44109 (= (list!1073 lt!56150) (originalCharacters!570 (h!8335 tokens!465)))))

(assert (=> d!44109 (= lt!56150 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465))))))

(assert (=> d!44109 (= (charsOf!182 (h!8335 tokens!465)) lt!56150)))

(declare-fun b_lambda!4049 () Bool)

(assert (=> (not b_lambda!4049) (not d!44109)))

(assert (=> d!44109 t!27588))

(declare-fun b_and!11669 () Bool)

(assert (= b_and!11663 (and (=> t!27588 result!9824) b_and!11669)))

(assert (=> d!44109 t!27590))

(declare-fun b_and!11671 () Bool)

(assert (= b_and!11665 (and (=> t!27590 result!9828) b_and!11671)))

(assert (=> d!44109 t!27592))

(declare-fun b_and!11673 () Bool)

(assert (= b_and!11667 (and (=> t!27592 result!9830) b_and!11673)))

(declare-fun m!173783 () Bool)

(assert (=> d!44109 m!173783))

(assert (=> d!44109 m!172929))

(assert (=> b!173991 d!44109))

(declare-fun d!44111 () Bool)

(assert (=> d!44111 (= (++!680 (++!680 lt!55823 lt!55827) lt!55824) (++!680 lt!55823 (++!680 lt!55827 lt!55824)))))

(declare-fun lt!56153 () Unit!2616)

(declare-fun choose!1848 (List!2946 List!2946 List!2946) Unit!2616)

(assert (=> d!44111 (= lt!56153 (choose!1848 lt!55823 lt!55827 lt!55824))))

(assert (=> d!44111 (= (lemmaConcatAssociativity!214 lt!55823 lt!55827 lt!55824) lt!56153)))

(declare-fun bs!17221 () Bool)

(assert (= bs!17221 d!44111))

(assert (=> bs!17221 m!172865))

(declare-fun m!173785 () Bool)

(assert (=> bs!17221 m!173785))

(assert (=> bs!17221 m!172865))

(assert (=> bs!17221 m!172869))

(assert (=> bs!17221 m!172877))

(assert (=> bs!17221 m!172877))

(declare-fun m!173787 () Bool)

(assert (=> bs!17221 m!173787))

(assert (=> b!173991 d!44111))

(declare-fun d!44113 () Bool)

(declare-fun e!105903 () Bool)

(assert (=> d!44113 e!105903))

(declare-fun res!78923 () Bool)

(assert (=> d!44113 (=> (not res!78923) (not e!105903))))

(declare-fun lt!56154 () List!2946)

(assert (=> d!44113 (= res!78923 (= (content!407 lt!56154) ((_ map or) (content!407 lt!55823) (content!407 lt!55815))))))

(declare-fun e!105904 () List!2946)

(assert (=> d!44113 (= lt!56154 e!105904)))

(declare-fun c!34502 () Bool)

(assert (=> d!44113 (= c!34502 ((_ is Nil!2936) lt!55823))))

(assert (=> d!44113 (= (++!680 lt!55823 lt!55815) lt!56154)))

(declare-fun b!174631 () Bool)

(assert (=> b!174631 (= e!105903 (or (not (= lt!55815 Nil!2936)) (= lt!56154 lt!55823)))))

(declare-fun b!174630 () Bool)

(declare-fun res!78922 () Bool)

(assert (=> b!174630 (=> (not res!78922) (not e!105903))))

(assert (=> b!174630 (= res!78922 (= (size!2431 lt!56154) (+ (size!2431 lt!55823) (size!2431 lt!55815))))))

(declare-fun b!174628 () Bool)

(assert (=> b!174628 (= e!105904 lt!55815)))

(declare-fun b!174629 () Bool)

(assert (=> b!174629 (= e!105904 (Cons!2936 (h!8333 lt!55823) (++!680 (t!27584 lt!55823) lt!55815)))))

(assert (= (and d!44113 c!34502) b!174628))

(assert (= (and d!44113 (not c!34502)) b!174629))

(assert (= (and d!44113 res!78923) b!174630))

(assert (= (and b!174630 res!78922) b!174631))

(declare-fun m!173789 () Bool)

(assert (=> d!44113 m!173789))

(assert (=> d!44113 m!172911))

(declare-fun m!173791 () Bool)

(assert (=> d!44113 m!173791))

(declare-fun m!173793 () Bool)

(assert (=> b!174630 m!173793))

(assert (=> b!174630 m!172917))

(declare-fun m!173795 () Bool)

(assert (=> b!174630 m!173795))

(declare-fun m!173797 () Bool)

(assert (=> b!174629 m!173797))

(assert (=> b!173991 d!44113))

(declare-fun d!44115 () Bool)

(assert (=> d!44115 (= (inv!3764 (tag!705 (h!8334 rules!1920))) (= (mod (str.len (value!19334 (tag!705 (h!8334 rules!1920)))) 2) 0))))

(assert (=> b!174013 d!44115))

(declare-fun d!44117 () Bool)

(declare-fun res!78924 () Bool)

(declare-fun e!105909 () Bool)

(assert (=> d!44117 (=> (not res!78924) (not e!105909))))

(assert (=> d!44117 (= res!78924 (semiInverseModEq!183 (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toValue!1194 (transformation!527 (h!8334 rules!1920)))))))

(assert (=> d!44117 (= (inv!3768 (transformation!527 (h!8334 rules!1920))) e!105909)))

(declare-fun b!174635 () Bool)

(assert (=> b!174635 (= e!105909 (equivClasses!166 (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toValue!1194 (transformation!527 (h!8334 rules!1920)))))))

(assert (= (and d!44117 res!78924) b!174635))

(declare-fun m!173801 () Bool)

(assert (=> d!44117 m!173801))

(declare-fun m!173805 () Bool)

(assert (=> b!174635 m!173805))

(assert (=> b!174013 d!44117))

(declare-fun d!44119 () Bool)

(declare-fun res!78925 () Bool)

(declare-fun e!105910 () Bool)

(assert (=> d!44119 (=> (not res!78925) (not e!105910))))

(assert (=> d!44119 (= res!78925 (not (isEmpty!1271 (originalCharacters!570 separatorToken!170))))))

(assert (=> d!44119 (= (inv!3767 separatorToken!170) e!105910)))

(declare-fun b!174636 () Bool)

(declare-fun res!78926 () Bool)

(assert (=> b!174636 (=> (not res!78926) (not e!105910))))

(assert (=> b!174636 (= res!78926 (= (originalCharacters!570 separatorToken!170) (list!1073 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170)))))))

(declare-fun b!174637 () Bool)

(assert (=> b!174637 (= e!105910 (= (size!2427 separatorToken!170) (size!2431 (originalCharacters!570 separatorToken!170))))))

(assert (= (and d!44119 res!78925) b!174636))

(assert (= (and b!174636 res!78926) b!174637))

(declare-fun b_lambda!4051 () Bool)

(assert (=> (not b_lambda!4051) (not b!174636)))

(assert (=> b!174636 t!27633))

(declare-fun b_and!11679 () Bool)

(assert (= b_and!11669 (and (=> t!27633 result!9848) b_and!11679)))

(assert (=> b!174636 t!27635))

(declare-fun b_and!11681 () Bool)

(assert (= b_and!11671 (and (=> t!27635 result!9850) b_and!11681)))

(assert (=> b!174636 t!27637))

(declare-fun b_and!11683 () Bool)

(assert (= b_and!11673 (and (=> t!27637 result!9852) b_and!11683)))

(declare-fun m!173807 () Bool)

(assert (=> d!44119 m!173807))

(assert (=> b!174636 m!173779))

(assert (=> b!174636 m!173779))

(declare-fun m!173809 () Bool)

(assert (=> b!174636 m!173809))

(declare-fun m!173811 () Bool)

(assert (=> b!174637 m!173811))

(assert (=> start!18822 d!44119))

(declare-fun d!44121 () Bool)

(declare-fun c!34508 () Bool)

(assert (=> d!44121 (= c!34508 ((_ is IntegerValue!1647) (value!19335 separatorToken!170)))))

(declare-fun e!105941 () Bool)

(assert (=> d!44121 (= (inv!21 (value!19335 separatorToken!170)) e!105941)))

(declare-fun b!174670 () Bool)

(declare-fun e!105942 () Bool)

(declare-fun inv!17 (TokenValue!549) Bool)

(assert (=> b!174670 (= e!105942 (inv!17 (value!19335 separatorToken!170)))))

(declare-fun b!174671 () Bool)

(declare-fun res!78929 () Bool)

(declare-fun e!105940 () Bool)

(assert (=> b!174671 (=> res!78929 e!105940)))

(assert (=> b!174671 (= res!78929 (not ((_ is IntegerValue!1649) (value!19335 separatorToken!170))))))

(assert (=> b!174671 (= e!105942 e!105940)))

(declare-fun b!174672 () Bool)

(declare-fun inv!16 (TokenValue!549) Bool)

(assert (=> b!174672 (= e!105941 (inv!16 (value!19335 separatorToken!170)))))

(declare-fun b!174673 () Bool)

(declare-fun inv!15 (TokenValue!549) Bool)

(assert (=> b!174673 (= e!105940 (inv!15 (value!19335 separatorToken!170)))))

(declare-fun b!174674 () Bool)

(assert (=> b!174674 (= e!105941 e!105942)))

(declare-fun c!34507 () Bool)

(assert (=> b!174674 (= c!34507 ((_ is IntegerValue!1648) (value!19335 separatorToken!170)))))

(assert (= (and d!44121 c!34508) b!174672))

(assert (= (and d!44121 (not c!34508)) b!174674))

(assert (= (and b!174674 c!34507) b!174670))

(assert (= (and b!174674 (not c!34507)) b!174671))

(assert (= (and b!174671 (not res!78929)) b!174673))

(declare-fun m!173821 () Bool)

(assert (=> b!174670 m!173821))

(declare-fun m!173823 () Bool)

(assert (=> b!174672 m!173823))

(declare-fun m!173825 () Bool)

(assert (=> b!174673 m!173825))

(assert (=> b!174001 d!44121))

(declare-fun d!44123 () Bool)

(assert (=> d!44123 (= (list!1073 (seqFromList!432 lt!55818)) (list!1076 (c!34379 (seqFromList!432 lt!55818))))))

(declare-fun bs!17222 () Bool)

(assert (= bs!17222 d!44123))

(declare-fun m!173827 () Bool)

(assert (=> bs!17222 m!173827))

(assert (=> b!173999 d!44123))

(declare-fun d!44125 () Bool)

(assert (=> d!44125 (= (seqFromList!432 lt!55818) (fromListB!171 lt!55818))))

(declare-fun bs!17223 () Bool)

(assert (= bs!17223 d!44125))

(declare-fun m!173829 () Bool)

(assert (=> bs!17223 m!173829))

(assert (=> b!173999 d!44125))

(declare-fun d!44129 () Bool)

(assert (=> d!44129 (= (get!811 lt!55830) (v!13783 lt!55830))))

(assert (=> b!174020 d!44129))

(declare-fun d!44133 () Bool)

(declare-fun isEmpty!1282 (Option!331) Bool)

(assert (=> d!44133 (= (isDefined!182 lt!55830) (not (isEmpty!1282 lt!55830)))))

(declare-fun bs!17226 () Bool)

(assert (= bs!17226 d!44133))

(declare-fun m!173831 () Bool)

(assert (=> bs!17226 m!173831))

(assert (=> b!174020 d!44133))

(declare-fun b!174693 () Bool)

(declare-fun e!105949 () Option!331)

(declare-fun call!7778 () Option!331)

(assert (=> b!174693 (= e!105949 call!7778)))

(declare-fun b!174694 () Bool)

(declare-fun res!78945 () Bool)

(declare-fun e!105950 () Bool)

(assert (=> b!174694 (=> (not res!78945) (not e!105950))))

(declare-fun lt!56168 () Option!331)

(assert (=> b!174694 (= res!78945 (= (++!680 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168)))) (_2!1648 (get!811 lt!56168))) lt!55823))))

(declare-fun b!174695 () Bool)

(declare-fun lt!56165 () Option!331)

(declare-fun lt!56169 () Option!331)

(assert (=> b!174695 (= e!105949 (ite (and ((_ is None!330) lt!56165) ((_ is None!330) lt!56169)) None!330 (ite ((_ is None!330) lt!56169) lt!56165 (ite ((_ is None!330) lt!56165) lt!56169 (ite (>= (size!2427 (_1!1648 (v!13783 lt!56165))) (size!2427 (_1!1648 (v!13783 lt!56169)))) lt!56165 lt!56169)))))))

(assert (=> b!174695 (= lt!56165 call!7778)))

(assert (=> b!174695 (= lt!56169 (maxPrefix!143 thiss!17480 (t!27585 rules!1920) lt!55823))))

(declare-fun bm!7773 () Bool)

(declare-fun maxPrefixOneRule!75 (LexerInterface!413 Rule!854 List!2946) Option!331)

(assert (=> bm!7773 (= call!7778 (maxPrefixOneRule!75 thiss!17480 (h!8334 rules!1920) lt!55823))))

(declare-fun b!174696 () Bool)

(declare-fun contains!476 (List!2947 Rule!854) Bool)

(assert (=> b!174696 (= e!105950 (contains!476 rules!1920 (rule!1038 (_1!1648 (get!811 lt!56168)))))))

(declare-fun b!174697 () Bool)

(declare-fun res!78944 () Bool)

(assert (=> b!174697 (=> (not res!78944) (not e!105950))))

(assert (=> b!174697 (= res!78944 (= (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168)))) (originalCharacters!570 (_1!1648 (get!811 lt!56168)))))))

(declare-fun b!174698 () Bool)

(declare-fun res!78947 () Bool)

(assert (=> b!174698 (=> (not res!78947) (not e!105950))))

(assert (=> b!174698 (= res!78947 (< (size!2431 (_2!1648 (get!811 lt!56168))) (size!2431 lt!55823)))))

(declare-fun d!44135 () Bool)

(declare-fun e!105951 () Bool)

(assert (=> d!44135 e!105951))

(declare-fun res!78950 () Bool)

(assert (=> d!44135 (=> res!78950 e!105951)))

(assert (=> d!44135 (= res!78950 (isEmpty!1282 lt!56168))))

(assert (=> d!44135 (= lt!56168 e!105949)))

(declare-fun c!34511 () Bool)

(assert (=> d!44135 (= c!34511 (and ((_ is Cons!2937) rules!1920) ((_ is Nil!2937) (t!27585 rules!1920))))))

(declare-fun lt!56167 () Unit!2616)

(declare-fun lt!56166 () Unit!2616)

(assert (=> d!44135 (= lt!56167 lt!56166)))

(assert (=> d!44135 (isPrefix!232 lt!55823 lt!55823)))

(assert (=> d!44135 (= lt!56166 (lemmaIsPrefixRefl!140 lt!55823 lt!55823))))

(assert (=> d!44135 (rulesValidInductive!126 thiss!17480 rules!1920)))

(assert (=> d!44135 (= (maxPrefix!143 thiss!17480 rules!1920 lt!55823) lt!56168)))

(declare-fun b!174699 () Bool)

(declare-fun res!78946 () Bool)

(assert (=> b!174699 (=> (not res!78946) (not e!105950))))

(declare-fun apply!432 (TokenValueInjection!870 BalanceConc!1760) TokenValue!549)

(assert (=> b!174699 (= res!78946 (= (value!19335 (_1!1648 (get!811 lt!56168))) (apply!432 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))) (seqFromList!432 (originalCharacters!570 (_1!1648 (get!811 lt!56168)))))))))

(declare-fun b!174700 () Bool)

(assert (=> b!174700 (= e!105951 e!105950)))

(declare-fun res!78948 () Bool)

(assert (=> b!174700 (=> (not res!78948) (not e!105950))))

(assert (=> b!174700 (= res!78948 (isDefined!182 lt!56168))))

(declare-fun b!174701 () Bool)

(declare-fun res!78949 () Bool)

(assert (=> b!174701 (=> (not res!78949) (not e!105950))))

(assert (=> b!174701 (= res!78949 (matchR!89 (regex!527 (rule!1038 (_1!1648 (get!811 lt!56168)))) (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168))))))))

(assert (= (and d!44135 c!34511) b!174693))

(assert (= (and d!44135 (not c!34511)) b!174695))

(assert (= (or b!174693 b!174695) bm!7773))

(assert (= (and d!44135 (not res!78950)) b!174700))

(assert (= (and b!174700 res!78948) b!174697))

(assert (= (and b!174697 res!78944) b!174698))

(assert (= (and b!174698 res!78947) b!174694))

(assert (= (and b!174694 res!78945) b!174699))

(assert (= (and b!174699 res!78946) b!174701))

(assert (= (and b!174701 res!78949) b!174696))

(declare-fun m!173833 () Bool)

(assert (=> b!174696 m!173833))

(declare-fun m!173835 () Bool)

(assert (=> b!174696 m!173835))

(declare-fun m!173837 () Bool)

(assert (=> d!44135 m!173837))

(declare-fun m!173839 () Bool)

(assert (=> d!44135 m!173839))

(declare-fun m!173841 () Bool)

(assert (=> d!44135 m!173841))

(assert (=> d!44135 m!173153))

(assert (=> b!174701 m!173833))

(declare-fun m!173843 () Bool)

(assert (=> b!174701 m!173843))

(assert (=> b!174701 m!173843))

(declare-fun m!173845 () Bool)

(assert (=> b!174701 m!173845))

(assert (=> b!174701 m!173845))

(declare-fun m!173847 () Bool)

(assert (=> b!174701 m!173847))

(assert (=> b!174698 m!173833))

(declare-fun m!173849 () Bool)

(assert (=> b!174698 m!173849))

(assert (=> b!174698 m!172917))

(declare-fun m!173851 () Bool)

(assert (=> bm!7773 m!173851))

(declare-fun m!173853 () Bool)

(assert (=> b!174700 m!173853))

(assert (=> b!174694 m!173833))

(assert (=> b!174694 m!173843))

(assert (=> b!174694 m!173843))

(assert (=> b!174694 m!173845))

(assert (=> b!174694 m!173845))

(declare-fun m!173855 () Bool)

(assert (=> b!174694 m!173855))

(declare-fun m!173857 () Bool)

(assert (=> b!174695 m!173857))

(assert (=> b!174697 m!173833))

(assert (=> b!174697 m!173843))

(assert (=> b!174697 m!173843))

(assert (=> b!174697 m!173845))

(assert (=> b!174699 m!173833))

(declare-fun m!173859 () Bool)

(assert (=> b!174699 m!173859))

(assert (=> b!174699 m!173859))

(declare-fun m!173861 () Bool)

(assert (=> b!174699 m!173861))

(assert (=> b!174020 d!44135))

(declare-fun d!44137 () Bool)

(declare-fun lt!56170 () Bool)

(declare-fun e!105952 () Bool)

(assert (=> d!44137 (= lt!56170 e!105952)))

(declare-fun res!78951 () Bool)

(assert (=> d!44137 (=> (not res!78951) (not e!105952))))

(assert (=> d!44137 (= res!78951 (= (list!1077 (_1!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 separatorToken!170))))) (list!1077 (singletonSeq!79 separatorToken!170))))))

(declare-fun e!105953 () Bool)

(assert (=> d!44137 (= lt!56170 e!105953)))

(declare-fun res!78952 () Bool)

(assert (=> d!44137 (=> (not res!78952) (not e!105953))))

(declare-fun lt!56171 () tuple2!2862)

(assert (=> d!44137 (= res!78952 (= (size!2432 (_1!1647 lt!56171)) 1))))

(assert (=> d!44137 (= lt!56171 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 separatorToken!170))))))

(assert (=> d!44137 (not (isEmpty!1272 rules!1920))))

(assert (=> d!44137 (= (rulesProduceIndividualToken!162 thiss!17480 rules!1920 separatorToken!170) lt!56170)))

(declare-fun b!174702 () Bool)

(declare-fun res!78953 () Bool)

(assert (=> b!174702 (=> (not res!78953) (not e!105953))))

(assert (=> b!174702 (= res!78953 (= (apply!429 (_1!1647 lt!56171) 0) separatorToken!170))))

(declare-fun b!174703 () Bool)

(assert (=> b!174703 (= e!105953 (isEmpty!1281 (_2!1647 lt!56171)))))

(declare-fun b!174704 () Bool)

(assert (=> b!174704 (= e!105952 (isEmpty!1281 (_2!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 separatorToken!170))))))))

(assert (= (and d!44137 res!78952) b!174702))

(assert (= (and b!174702 res!78953) b!174703))

(assert (= (and d!44137 res!78951) b!174704))

(declare-fun m!173863 () Bool)

(assert (=> d!44137 m!173863))

(declare-fun m!173865 () Bool)

(assert (=> d!44137 m!173865))

(declare-fun m!173867 () Bool)

(assert (=> d!44137 m!173867))

(assert (=> d!44137 m!173865))

(assert (=> d!44137 m!173865))

(declare-fun m!173869 () Bool)

(assert (=> d!44137 m!173869))

(assert (=> d!44137 m!173867))

(declare-fun m!173871 () Bool)

(assert (=> d!44137 m!173871))

(assert (=> d!44137 m!172843))

(declare-fun m!173873 () Bool)

(assert (=> d!44137 m!173873))

(declare-fun m!173875 () Bool)

(assert (=> b!174702 m!173875))

(declare-fun m!173877 () Bool)

(assert (=> b!174703 m!173877))

(assert (=> b!174704 m!173865))

(assert (=> b!174704 m!173865))

(assert (=> b!174704 m!173867))

(assert (=> b!174704 m!173867))

(assert (=> b!174704 m!173871))

(declare-fun m!173879 () Bool)

(assert (=> b!174704 m!173879))

(assert (=> b!174021 d!44137))

(declare-fun d!44139 () Bool)

(assert (=> d!44139 (= (isEmpty!1272 rules!1920) ((_ is Nil!2937) rules!1920))))

(assert (=> b!174019 d!44139))

(declare-fun d!44141 () Bool)

(declare-fun res!78958 () Bool)

(declare-fun e!105958 () Bool)

(assert (=> d!44141 (=> res!78958 e!105958)))

(assert (=> d!44141 (= res!78958 ((_ is Nil!2938) tokens!465))))

(assert (=> d!44141 (= (forall!583 tokens!465 lambda!5011) e!105958)))

(declare-fun b!174709 () Bool)

(declare-fun e!105959 () Bool)

(assert (=> b!174709 (= e!105958 e!105959)))

(declare-fun res!78959 () Bool)

(assert (=> b!174709 (=> (not res!78959) (not e!105959))))

(assert (=> b!174709 (= res!78959 (dynLambda!1135 lambda!5011 (h!8335 tokens!465)))))

(declare-fun b!174710 () Bool)

(assert (=> b!174710 (= e!105959 (forall!583 (t!27586 tokens!465) lambda!5011))))

(assert (= (and d!44141 (not res!78958)) b!174709))

(assert (= (and b!174709 res!78959) b!174710))

(declare-fun b_lambda!4065 () Bool)

(assert (=> (not b_lambda!4065) (not b!174709)))

(declare-fun m!173881 () Bool)

(assert (=> b!174709 m!173881))

(declare-fun m!173883 () Bool)

(assert (=> b!174710 m!173883))

(assert (=> b!173998 d!44141))

(declare-fun d!44143 () Bool)

(assert (=> d!44143 (= (inv!3764 (tag!705 (rule!1038 (h!8335 tokens!465)))) (= (mod (str.len (value!19334 (tag!705 (rule!1038 (h!8335 tokens!465))))) 2) 0))))

(assert (=> b!173996 d!44143))

(declare-fun d!44145 () Bool)

(declare-fun res!78960 () Bool)

(declare-fun e!105960 () Bool)

(assert (=> d!44145 (=> (not res!78960) (not e!105960))))

(assert (=> d!44145 (= res!78960 (semiInverseModEq!183 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toValue!1194 (transformation!527 (rule!1038 (h!8335 tokens!465))))))))

(assert (=> d!44145 (= (inv!3768 (transformation!527 (rule!1038 (h!8335 tokens!465)))) e!105960)))

(declare-fun b!174711 () Bool)

(assert (=> b!174711 (= e!105960 (equivClasses!166 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toValue!1194 (transformation!527 (rule!1038 (h!8335 tokens!465))))))))

(assert (= (and d!44145 res!78960) b!174711))

(declare-fun m!173885 () Bool)

(assert (=> d!44145 m!173885))

(declare-fun m!173887 () Bool)

(assert (=> b!174711 m!173887))

(assert (=> b!173996 d!44145))

(declare-fun d!44147 () Bool)

(declare-fun c!34513 () Bool)

(assert (=> d!44147 (= c!34513 ((_ is IntegerValue!1647) (value!19335 (h!8335 tokens!465))))))

(declare-fun e!105962 () Bool)

(assert (=> d!44147 (= (inv!21 (value!19335 (h!8335 tokens!465))) e!105962)))

(declare-fun b!174712 () Bool)

(declare-fun e!105963 () Bool)

(assert (=> b!174712 (= e!105963 (inv!17 (value!19335 (h!8335 tokens!465))))))

(declare-fun b!174713 () Bool)

(declare-fun res!78961 () Bool)

(declare-fun e!105961 () Bool)

(assert (=> b!174713 (=> res!78961 e!105961)))

(assert (=> b!174713 (= res!78961 (not ((_ is IntegerValue!1649) (value!19335 (h!8335 tokens!465)))))))

(assert (=> b!174713 (= e!105963 e!105961)))

(declare-fun b!174714 () Bool)

(assert (=> b!174714 (= e!105962 (inv!16 (value!19335 (h!8335 tokens!465))))))

(declare-fun b!174715 () Bool)

(assert (=> b!174715 (= e!105961 (inv!15 (value!19335 (h!8335 tokens!465))))))

(declare-fun b!174716 () Bool)

(assert (=> b!174716 (= e!105962 e!105963)))

(declare-fun c!34512 () Bool)

(assert (=> b!174716 (= c!34512 ((_ is IntegerValue!1648) (value!19335 (h!8335 tokens!465))))))

(assert (= (and d!44147 c!34513) b!174714))

(assert (= (and d!44147 (not c!34513)) b!174716))

(assert (= (and b!174716 c!34512) b!174712))

(assert (= (and b!174716 (not c!34512)) b!174713))

(assert (= (and b!174713 (not res!78961)) b!174715))

(declare-fun m!173889 () Bool)

(assert (=> b!174712 m!173889))

(declare-fun m!173891 () Bool)

(assert (=> b!174714 m!173891))

(declare-fun m!173893 () Bool)

(assert (=> b!174715 m!173893))

(assert (=> b!173997 d!44147))

(declare-fun d!44149 () Bool)

(declare-fun lt!56190 () BalanceConc!1760)

(declare-fun printListTailRec!60 (LexerInterface!413 List!2948 List!2946) List!2946)

(assert (=> d!44149 (= (list!1073 lt!56190) (printListTailRec!60 thiss!17480 (dropList!92 lt!55819 0) (list!1073 (BalanceConc!1761 Empty!876))))))

(declare-fun e!105969 () BalanceConc!1760)

(assert (=> d!44149 (= lt!56190 e!105969)))

(declare-fun c!34516 () Bool)

(assert (=> d!44149 (= c!34516 (>= 0 (size!2432 lt!55819)))))

(declare-fun e!105968 () Bool)

(assert (=> d!44149 e!105968))

(declare-fun res!78964 () Bool)

(assert (=> d!44149 (=> (not res!78964) (not e!105968))))

(assert (=> d!44149 (= res!78964 (>= 0 0))))

(assert (=> d!44149 (= (printTailRec!107 thiss!17480 lt!55819 0 (BalanceConc!1761 Empty!876)) lt!56190)))

(declare-fun b!174723 () Bool)

(assert (=> b!174723 (= e!105968 (<= 0 (size!2432 lt!55819)))))

(declare-fun b!174724 () Bool)

(assert (=> b!174724 (= e!105969 (BalanceConc!1761 Empty!876))))

(declare-fun b!174725 () Bool)

(assert (=> b!174725 (= e!105969 (printTailRec!107 thiss!17480 lt!55819 (+ 0 1) (++!682 (BalanceConc!1761 Empty!876) (charsOf!182 (apply!429 lt!55819 0)))))))

(declare-fun lt!56192 () List!2948)

(assert (=> b!174725 (= lt!56192 (list!1077 lt!55819))))

(declare-fun lt!56187 () Unit!2616)

(assert (=> b!174725 (= lt!56187 (lemmaDropApply!132 lt!56192 0))))

(assert (=> b!174725 (= (head!608 (drop!145 lt!56192 0)) (apply!430 lt!56192 0))))

(declare-fun lt!56191 () Unit!2616)

(assert (=> b!174725 (= lt!56191 lt!56187)))

(declare-fun lt!56189 () List!2948)

(assert (=> b!174725 (= lt!56189 (list!1077 lt!55819))))

(declare-fun lt!56186 () Unit!2616)

(assert (=> b!174725 (= lt!56186 (lemmaDropTail!124 lt!56189 0))))

(assert (=> b!174725 (= (tail!348 (drop!145 lt!56189 0)) (drop!145 lt!56189 (+ 0 1)))))

(declare-fun lt!56188 () Unit!2616)

(assert (=> b!174725 (= lt!56188 lt!56186)))

(assert (= (and d!44149 res!78964) b!174723))

(assert (= (and d!44149 c!34516) b!174724))

(assert (= (and d!44149 (not c!34516)) b!174725))

(declare-fun m!173895 () Bool)

(assert (=> d!44149 m!173895))

(declare-fun m!173897 () Bool)

(assert (=> d!44149 m!173897))

(declare-fun m!173899 () Bool)

(assert (=> d!44149 m!173899))

(assert (=> d!44149 m!173899))

(assert (=> d!44149 m!173897))

(declare-fun m!173901 () Bool)

(assert (=> d!44149 m!173901))

(declare-fun m!173903 () Bool)

(assert (=> d!44149 m!173903))

(assert (=> b!174723 m!173903))

(declare-fun m!173905 () Bool)

(assert (=> b!174725 m!173905))

(declare-fun m!173907 () Bool)

(assert (=> b!174725 m!173907))

(declare-fun m!173909 () Bool)

(assert (=> b!174725 m!173909))

(declare-fun m!173911 () Bool)

(assert (=> b!174725 m!173911))

(declare-fun m!173913 () Bool)

(assert (=> b!174725 m!173913))

(declare-fun m!173915 () Bool)

(assert (=> b!174725 m!173915))

(declare-fun m!173917 () Bool)

(assert (=> b!174725 m!173917))

(declare-fun m!173919 () Bool)

(assert (=> b!174725 m!173919))

(declare-fun m!173921 () Bool)

(assert (=> b!174725 m!173921))

(assert (=> b!174725 m!173917))

(declare-fun m!173923 () Bool)

(assert (=> b!174725 m!173923))

(declare-fun m!173925 () Bool)

(assert (=> b!174725 m!173925))

(assert (=> b!174725 m!173915))

(declare-fun m!173927 () Bool)

(assert (=> b!174725 m!173927))

(assert (=> b!174725 m!173925))

(assert (=> b!174725 m!173905))

(assert (=> b!174725 m!173921))

(declare-fun m!173929 () Bool)

(assert (=> b!174725 m!173929))

(assert (=> b!174018 d!44149))

(declare-fun d!44151 () Bool)

(declare-fun lt!56195 () BalanceConc!1760)

(assert (=> d!44151 (= (list!1073 lt!56195) (printList!97 thiss!17480 (list!1077 lt!55819)))))

(assert (=> d!44151 (= lt!56195 (printTailRec!107 thiss!17480 lt!55819 0 (BalanceConc!1761 Empty!876)))))

(assert (=> d!44151 (= (print!144 thiss!17480 lt!55819) lt!56195)))

(declare-fun bs!17227 () Bool)

(assert (= bs!17227 d!44151))

(declare-fun m!173931 () Bool)

(assert (=> bs!17227 m!173931))

(assert (=> bs!17227 m!173927))

(assert (=> bs!17227 m!173927))

(declare-fun m!173933 () Bool)

(assert (=> bs!17227 m!173933))

(assert (=> bs!17227 m!172833))

(assert (=> b!174018 d!44151))

(declare-fun d!44153 () Bool)

(assert (=> d!44153 (= (list!1073 lt!55829) (list!1076 (c!34379 lt!55829)))))

(declare-fun bs!17228 () Bool)

(assert (= bs!17228 d!44153))

(declare-fun m!173935 () Bool)

(assert (=> bs!17228 m!173935))

(assert (=> b!174018 d!44153))

(declare-fun d!44155 () Bool)

(declare-fun e!105972 () Bool)

(assert (=> d!44155 e!105972))

(declare-fun res!78967 () Bool)

(assert (=> d!44155 (=> (not res!78967) (not e!105972))))

(declare-fun lt!56198 () BalanceConc!1762)

(assert (=> d!44155 (= res!78967 (= (list!1077 lt!56198) (Cons!2938 (h!8335 tokens!465) Nil!2938)))))

(declare-fun singleton!41 (Token!798) BalanceConc!1762)

(assert (=> d!44155 (= lt!56198 (singleton!41 (h!8335 tokens!465)))))

(assert (=> d!44155 (= (singletonSeq!79 (h!8335 tokens!465)) lt!56198)))

(declare-fun b!174728 () Bool)

(declare-fun isBalanced!244 (Conc!877) Bool)

(assert (=> b!174728 (= e!105972 (isBalanced!244 (c!34381 lt!56198)))))

(assert (= (and d!44155 res!78967) b!174728))

(declare-fun m!173937 () Bool)

(assert (=> d!44155 m!173937))

(declare-fun m!173939 () Bool)

(assert (=> d!44155 m!173939))

(declare-fun m!173941 () Bool)

(assert (=> b!174728 m!173941))

(assert (=> b!174018 d!44155))

(declare-fun d!44157 () Bool)

(declare-fun c!34519 () Bool)

(assert (=> d!44157 (= c!34519 ((_ is Cons!2938) (Cons!2938 (h!8335 tokens!465) Nil!2938)))))

(declare-fun e!105975 () List!2946)

(assert (=> d!44157 (= (printList!97 thiss!17480 (Cons!2938 (h!8335 tokens!465) Nil!2938)) e!105975)))

(declare-fun b!174733 () Bool)

(assert (=> b!174733 (= e!105975 (++!680 (list!1073 (charsOf!182 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938)))) (printList!97 thiss!17480 (t!27586 (Cons!2938 (h!8335 tokens!465) Nil!2938)))))))

(declare-fun b!174734 () Bool)

(assert (=> b!174734 (= e!105975 Nil!2936)))

(assert (= (and d!44157 c!34519) b!174733))

(assert (= (and d!44157 (not c!34519)) b!174734))

(declare-fun m!173943 () Bool)

(assert (=> b!174733 m!173943))

(assert (=> b!174733 m!173943))

(declare-fun m!173945 () Bool)

(assert (=> b!174733 m!173945))

(declare-fun m!173947 () Bool)

(assert (=> b!174733 m!173947))

(assert (=> b!174733 m!173945))

(assert (=> b!174733 m!173947))

(declare-fun m!173949 () Bool)

(assert (=> b!174733 m!173949))

(assert (=> b!174018 d!44157))

(declare-fun e!105978 () Bool)

(assert (=> b!173995 (= tp!84884 e!105978)))

(declare-fun b!174748 () Bool)

(declare-fun tp!84965 () Bool)

(declare-fun tp!84966 () Bool)

(assert (=> b!174748 (= e!105978 (and tp!84965 tp!84966))))

(declare-fun b!174747 () Bool)

(declare-fun tp!84967 () Bool)

(assert (=> b!174747 (= e!105978 tp!84967)))

(declare-fun b!174746 () Bool)

(declare-fun tp!84964 () Bool)

(declare-fun tp!84968 () Bool)

(assert (=> b!174746 (= e!105978 (and tp!84964 tp!84968))))

(declare-fun b!174745 () Bool)

(declare-fun tp_is_empty!1663 () Bool)

(assert (=> b!174745 (= e!105978 tp_is_empty!1663)))

(assert (= (and b!173995 ((_ is ElementMatch!751) (regex!527 (rule!1038 separatorToken!170)))) b!174745))

(assert (= (and b!173995 ((_ is Concat!1301) (regex!527 (rule!1038 separatorToken!170)))) b!174746))

(assert (= (and b!173995 ((_ is Star!751) (regex!527 (rule!1038 separatorToken!170)))) b!174747))

(assert (= (and b!173995 ((_ is Union!751) (regex!527 (rule!1038 separatorToken!170)))) b!174748))

(declare-fun b!174759 () Bool)

(declare-fun b_free!6709 () Bool)

(declare-fun b_next!6709 () Bool)

(assert (=> b!174759 (= b_free!6709 (not b_next!6709))))

(declare-fun tp!84979 () Bool)

(declare-fun b_and!11689 () Bool)

(assert (=> b!174759 (= tp!84979 b_and!11689)))

(declare-fun b_free!6711 () Bool)

(declare-fun b_next!6711 () Bool)

(assert (=> b!174759 (= b_free!6711 (not b_next!6711))))

(declare-fun tb!7125 () Bool)

(declare-fun t!27648 () Bool)

(assert (=> (and b!174759 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465))))) t!27648) tb!7125))

(declare-fun result!9872 () Bool)

(assert (= result!9872 result!9824))

(assert (=> b!174051 t!27648))

(declare-fun tb!7127 () Bool)

(declare-fun t!27650 () Bool)

(assert (=> (and b!174759 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 separatorToken!170)))) t!27650) tb!7127))

(declare-fun result!9874 () Bool)

(assert (= result!9874 result!9848))

(assert (=> d!44103 t!27650))

(assert (=> d!44109 t!27648))

(assert (=> b!174636 t!27650))

(declare-fun tp!84977 () Bool)

(declare-fun b_and!11691 () Bool)

(assert (=> b!174759 (= tp!84977 (and (=> t!27648 result!9872) (=> t!27650 result!9874) b_and!11691))))

(declare-fun e!105987 () Bool)

(assert (=> b!174759 (= e!105987 (and tp!84979 tp!84977))))

(declare-fun tp!84980 () Bool)

(declare-fun e!105990 () Bool)

(declare-fun b!174758 () Bool)

(assert (=> b!174758 (= e!105990 (and tp!84980 (inv!3764 (tag!705 (h!8334 (t!27585 rules!1920)))) (inv!3768 (transformation!527 (h!8334 (t!27585 rules!1920)))) e!105987))))

(declare-fun b!174757 () Bool)

(declare-fun e!105989 () Bool)

(declare-fun tp!84978 () Bool)

(assert (=> b!174757 (= e!105989 (and e!105990 tp!84978))))

(assert (=> b!174006 (= tp!84885 e!105989)))

(assert (= b!174758 b!174759))

(assert (= b!174757 b!174758))

(assert (= (and b!174006 ((_ is Cons!2937) (t!27585 rules!1920))) b!174757))

(declare-fun m!173951 () Bool)

(assert (=> b!174758 m!173951))

(declare-fun m!173953 () Bool)

(assert (=> b!174758 m!173953))

(declare-fun b!174773 () Bool)

(declare-fun b_free!6713 () Bool)

(declare-fun b_next!6713 () Bool)

(assert (=> b!174773 (= b_free!6713 (not b_next!6713))))

(declare-fun tp!84994 () Bool)

(declare-fun b_and!11693 () Bool)

(assert (=> b!174773 (= tp!84994 b_and!11693)))

(declare-fun b_free!6715 () Bool)

(declare-fun b_next!6715 () Bool)

(assert (=> b!174773 (= b_free!6715 (not b_next!6715))))

(declare-fun t!27652 () Bool)

(declare-fun tb!7129 () Bool)

(assert (=> (and b!174773 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465))))) t!27652) tb!7129))

(declare-fun result!9878 () Bool)

(assert (= result!9878 result!9824))

(assert (=> b!174051 t!27652))

(declare-fun tb!7131 () Bool)

(declare-fun t!27654 () Bool)

(assert (=> (and b!174773 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 separatorToken!170)))) t!27654) tb!7131))

(declare-fun result!9880 () Bool)

(assert (= result!9880 result!9848))

(assert (=> d!44103 t!27654))

(assert (=> d!44109 t!27652))

(assert (=> b!174636 t!27654))

(declare-fun b_and!11695 () Bool)

(declare-fun tp!84992 () Bool)

(assert (=> b!174773 (= tp!84992 (and (=> t!27652 result!9878) (=> t!27654 result!9880) b_and!11695))))

(declare-fun e!106007 () Bool)

(assert (=> b!174773 (= e!106007 (and tp!84994 tp!84992))))

(declare-fun tp!84995 () Bool)

(declare-fun b!174772 () Bool)

(declare-fun e!106004 () Bool)

(assert (=> b!174772 (= e!106004 (and tp!84995 (inv!3764 (tag!705 (rule!1038 (h!8335 (t!27586 tokens!465))))) (inv!3768 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) e!106007))))

(declare-fun e!106008 () Bool)

(assert (=> b!174003 (= tp!84878 e!106008)))

(declare-fun tp!84991 () Bool)

(declare-fun e!106003 () Bool)

(declare-fun b!174770 () Bool)

(assert (=> b!174770 (= e!106008 (and (inv!3767 (h!8335 (t!27586 tokens!465))) e!106003 tp!84991))))

(declare-fun b!174771 () Bool)

(declare-fun tp!84993 () Bool)

(assert (=> b!174771 (= e!106003 (and (inv!21 (value!19335 (h!8335 (t!27586 tokens!465)))) e!106004 tp!84993))))

(assert (= b!174772 b!174773))

(assert (= b!174771 b!174772))

(assert (= b!174770 b!174771))

(assert (= (and b!174003 ((_ is Cons!2938) (t!27586 tokens!465))) b!174770))

(declare-fun m!173955 () Bool)

(assert (=> b!174772 m!173955))

(declare-fun m!173957 () Bool)

(assert (=> b!174772 m!173957))

(declare-fun m!173959 () Bool)

(assert (=> b!174770 m!173959))

(declare-fun m!173961 () Bool)

(assert (=> b!174771 m!173961))

(declare-fun e!106009 () Bool)

(assert (=> b!174013 (= tp!84888 e!106009)))

(declare-fun b!174777 () Bool)

(declare-fun tp!84997 () Bool)

(declare-fun tp!84998 () Bool)

(assert (=> b!174777 (= e!106009 (and tp!84997 tp!84998))))

(declare-fun b!174776 () Bool)

(declare-fun tp!84999 () Bool)

(assert (=> b!174776 (= e!106009 tp!84999)))

(declare-fun b!174775 () Bool)

(declare-fun tp!84996 () Bool)

(declare-fun tp!85000 () Bool)

(assert (=> b!174775 (= e!106009 (and tp!84996 tp!85000))))

(declare-fun b!174774 () Bool)

(assert (=> b!174774 (= e!106009 tp_is_empty!1663)))

(assert (= (and b!174013 ((_ is ElementMatch!751) (regex!527 (h!8334 rules!1920)))) b!174774))

(assert (= (and b!174013 ((_ is Concat!1301) (regex!527 (h!8334 rules!1920)))) b!174775))

(assert (= (and b!174013 ((_ is Star!751) (regex!527 (h!8334 rules!1920)))) b!174776))

(assert (= (and b!174013 ((_ is Union!751) (regex!527 (h!8334 rules!1920)))) b!174777))

(declare-fun b!174782 () Bool)

(declare-fun e!106012 () Bool)

(declare-fun tp!85003 () Bool)

(assert (=> b!174782 (= e!106012 (and tp_is_empty!1663 tp!85003))))

(assert (=> b!174001 (= tp!84889 e!106012)))

(assert (= (and b!174001 ((_ is Cons!2936) (originalCharacters!570 separatorToken!170))) b!174782))

(declare-fun b!174785 () Bool)

(declare-fun e!106015 () Bool)

(assert (=> b!174785 (= e!106015 true)))

(declare-fun b!174784 () Bool)

(declare-fun e!106014 () Bool)

(assert (=> b!174784 (= e!106014 e!106015)))

(declare-fun b!174783 () Bool)

(declare-fun e!106013 () Bool)

(assert (=> b!174783 (= e!106013 e!106014)))

(assert (=> b!174030 e!106013))

(assert (= b!174784 b!174785))

(assert (= b!174783 b!174784))

(assert (= (and b!174030 ((_ is Cons!2937) (t!27585 rules!1920))) b!174783))

(assert (=> b!174785 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 (t!27585 rules!1920))))) (dynLambda!1130 order!1631 lambda!5012))))

(assert (=> b!174785 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920))))) (dynLambda!1130 order!1631 lambda!5012))))

(declare-fun e!106016 () Bool)

(assert (=> b!173996 (= tp!84879 e!106016)))

(declare-fun b!174789 () Bool)

(declare-fun tp!85005 () Bool)

(declare-fun tp!85006 () Bool)

(assert (=> b!174789 (= e!106016 (and tp!85005 tp!85006))))

(declare-fun b!174788 () Bool)

(declare-fun tp!85007 () Bool)

(assert (=> b!174788 (= e!106016 tp!85007)))

(declare-fun b!174787 () Bool)

(declare-fun tp!85004 () Bool)

(declare-fun tp!85008 () Bool)

(assert (=> b!174787 (= e!106016 (and tp!85004 tp!85008))))

(declare-fun b!174786 () Bool)

(assert (=> b!174786 (= e!106016 tp_is_empty!1663)))

(assert (= (and b!173996 ((_ is ElementMatch!751) (regex!527 (rule!1038 (h!8335 tokens!465))))) b!174786))

(assert (= (and b!173996 ((_ is Concat!1301) (regex!527 (rule!1038 (h!8335 tokens!465))))) b!174787))

(assert (= (and b!173996 ((_ is Star!751) (regex!527 (rule!1038 (h!8335 tokens!465))))) b!174788))

(assert (= (and b!173996 ((_ is Union!751) (regex!527 (rule!1038 (h!8335 tokens!465))))) b!174789))

(declare-fun b!174790 () Bool)

(declare-fun e!106017 () Bool)

(declare-fun tp!85009 () Bool)

(assert (=> b!174790 (= e!106017 (and tp_is_empty!1663 tp!85009))))

(assert (=> b!173997 (= tp!84883 e!106017)))

(assert (= (and b!173997 ((_ is Cons!2936) (originalCharacters!570 (h!8335 tokens!465)))) b!174790))

(declare-fun b_lambda!4067 () Bool)

(assert (= b_lambda!4049 (or (and b!174015 b_free!6699 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))))) (and b!174773 b_free!6715 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))))) (and b!174009 b_free!6691) (and b!174759 b_free!6711 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))))) (and b!174005 b_free!6695 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))))) b_lambda!4067)))

(declare-fun b_lambda!4069 () Bool)

(assert (= b_lambda!4033 (or b!174010 b_lambda!4069)))

(declare-fun bs!17229 () Bool)

(declare-fun d!44159 () Bool)

(assert (= bs!17229 (and d!44159 b!174010)))

(assert (=> bs!17229 (= (dynLambda!1135 lambda!5012 (h!8335 tokens!465)) (rulesProduceIndividualToken!162 thiss!17480 rules!1920 (h!8335 tokens!465)))))

(assert (=> bs!17229 m!172893))

(assert (=> d!43973 d!44159))

(declare-fun b_lambda!4071 () Bool)

(assert (= b_lambda!4047 (or (and b!174759 b_free!6711 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))))) (and b!174005 b_free!6695 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))))) (and b!174773 b_free!6715 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))))) (and b!174015 b_free!6699) (and b!174009 b_free!6691 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))))) b_lambda!4071)))

(declare-fun b_lambda!4073 () Bool)

(assert (= b_lambda!4031 (or (and b!174015 b_free!6699 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))))) (and b!174773 b_free!6715 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))))) (and b!174009 b_free!6691) (and b!174759 b_free!6711 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))))) (and b!174005 b_free!6695 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))))) b_lambda!4073)))

(declare-fun b_lambda!4075 () Bool)

(assert (= b_lambda!4051 (or (and b!174759 b_free!6711 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))))) (and b!174005 b_free!6695 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))))) (and b!174773 b_free!6715 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))))) (and b!174015 b_free!6699) (and b!174009 b_free!6691 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))))) b_lambda!4075)))

(declare-fun b_lambda!4077 () Bool)

(assert (= b_lambda!4065 (or b!173998 b_lambda!4077)))

(declare-fun bs!17230 () Bool)

(declare-fun d!44161 () Bool)

(assert (= bs!17230 (and d!44161 b!173998)))

(assert (=> bs!17230 (= (dynLambda!1135 lambda!5011 (h!8335 tokens!465)) (not (isSeparator!527 (rule!1038 (h!8335 tokens!465)))))))

(assert (=> b!174709 d!44161))

(check-sat (not b!174549) (not d!44043) (not b!174525) (not b!174771) (not b!174697) (not b_lambda!4077) b_and!11625 (not b_next!6693) (not b!174121) (not b!174725) (not b!174574) b_and!11621 (not d!44039) (not b!174435) (not b!174775) (not b!174712) (not b!174200) (not b!174602) b_and!11679 (not b!174434) (not d!44109) (not b!174776) (not b!174395) (not b!174255) (not b!174782) (not b!174110) (not b!174770) (not b!174635) (not b!174205) (not bm!7773) b_and!11693 (not b!174699) (not d!44135) (not b!174513) (not b!174746) (not b!174045) (not b!174396) (not b!174527) (not b!174493) (not b_next!6713) (not b!174695) (not b!174704) (not d!44093) (not d!44123) (not b!174672) (not bm!7766) (not d!44041) (not b!174432) (not b!174524) (not b!174636) (not bm!7735) (not b!174696) (not bm!7762) (not b!174353) (not b!174694) (not d!44097) (not d!44103) (not d!44083) (not b!174234) (not bm!7731) (not b!174700) (not d!44091) (not b!174510) (not b!174787) (not b!174052) (not b!174637) (not d!44111) (not b!174790) b_and!11629 (not d!44079) (not b!174748) (not b_next!6699) (not b_lambda!4069) (not b!174509) (not b_next!6689) (not tb!7093) (not d!44155) (not d!43941) (not bs!17229) (not d!43967) (not b_next!6711) (not d!44113) (not b!174547) (not d!43945) (not d!43939) (not d!43973) b_and!11689 (not b!174197) (not b!174772) (not b!174397) (not d!44081) (not d!44149) (not b!174788) (not b!174703) (not d!43983) (not bm!7760) (not b!174352) (not bm!7733) (not b!174232) (not d!43943) b_and!11683 (not d!44145) (not d!43987) (not b!174777) (not b!174111) (not b!174429) (not d!43979) (not bm!7732) (not b!174260) (not b_next!6715) (not b!174351) (not b!174231) (not b!174733) (not bm!7764) (not b!174522) (not d!44151) (not b_lambda!4071) (not b!174438) (not b!174629) (not b!174702) (not d!44029) (not b!174252) (not b!174714) b_and!11695 (not d!44133) (not b_next!6709) (not b_lambda!4073) (not b!174518) (not b!174670) (not bm!7747) (not b!174711) (not b!174249) (not b!174710) tp_is_empty!1663 (not b!174537) (not b!174747) (not b!174673) (not b_lambda!4075) (not bm!7704) (not b!174051) b_and!11681 (not b!174757) (not b!174532) (not b!174202) (not d!44117) (not b!174715) (not b!174116) (not b!174394) (not b!174494) (not b!174117) (not d!44031) (not b!174237) (not d!44095) (not b!174529) (not b!174233) (not b_next!6691) (not b!174198) (not bm!7738) (not b!174514) (not d!44107) (not b!174728) (not b!174437) (not b!174261) (not b!174118) (not b!174546) (not tb!7111) (not b!174521) (not b!174783) (not b!174236) (not b_next!6695) (not b!174057) (not bm!7759) (not b!174758) (not b!174723) (not b_lambda!4067) (not d!44153) (not bm!7758) (not d!44089) (not b!174789) (not bm!7765) (not b_next!6697) (not b!174511) (not d!44137) (not b!174517) (not bm!7703) (not d!43965) (not b!174698) (not d!44101) (not d!43969) (not b!174630) (not b!174545) (not b!174538) (not b!174701) (not b!174044) b_and!11691 (not d!44125) (not d!44119) (not b!174235) (not bm!7702) (not b!174120))
(check-sat b_and!11621 b_and!11679 b_and!11693 (not b_next!6713) (not b_next!6711) b_and!11689 b_and!11683 (not b_next!6715) b_and!11695 (not b_next!6709) b_and!11681 (not b_next!6691) (not b_next!6695) (not b_next!6697) b_and!11691 b_and!11625 (not b_next!6693) (not b_next!6689) b_and!11629 (not b_next!6699))
(get-model)

(assert (=> d!44081 d!44155))

(declare-fun d!44303 () Bool)

(declare-fun list!1080 (Conc!877) List!2948)

(assert (=> d!44303 (= (list!1077 (singletonSeq!79 (h!8335 tokens!465))) (list!1080 (c!34381 (singletonSeq!79 (h!8335 tokens!465)))))))

(declare-fun bs!17249 () Bool)

(assert (= bs!17249 d!44303))

(declare-fun m!174377 () Bool)

(assert (=> bs!17249 m!174377))

(assert (=> d!44081 d!44303))

(declare-fun d!44309 () Bool)

(declare-fun lt!56318 () Int)

(declare-fun size!2437 (List!2948) Int)

(assert (=> d!44309 (= lt!56318 (size!2437 (list!1077 (_1!1647 lt!56120))))))

(declare-fun size!2438 (Conc!877) Int)

(assert (=> d!44309 (= lt!56318 (size!2438 (c!34381 (_1!1647 lt!56120))))))

(assert (=> d!44309 (= (size!2432 (_1!1647 lt!56120)) lt!56318)))

(declare-fun bs!17259 () Bool)

(assert (= bs!17259 d!44309))

(declare-fun m!174385 () Bool)

(assert (=> bs!17259 m!174385))

(assert (=> bs!17259 m!174385))

(declare-fun m!174387 () Bool)

(assert (=> bs!17259 m!174387))

(declare-fun m!174389 () Bool)

(assert (=> bs!17259 m!174389))

(assert (=> d!44081 d!44309))

(declare-fun e!106162 () Bool)

(declare-fun lt!56319 () tuple2!2862)

(declare-fun b!175032 () Bool)

(assert (=> b!175032 (= e!106162 (= (_2!1647 lt!56319) (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465)))))))

(declare-fun b!175033 () Bool)

(declare-fun e!106164 () Bool)

(assert (=> b!175033 (= e!106162 e!106164)))

(declare-fun res!79088 () Bool)

(assert (=> b!175033 (= res!79088 (< (size!2433 (_2!1647 lt!56319)) (size!2433 (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465))))))))

(assert (=> b!175033 (=> (not res!79088) (not e!106164))))

(declare-fun b!175034 () Bool)

(declare-fun res!79086 () Bool)

(declare-fun e!106163 () Bool)

(assert (=> b!175034 (=> (not res!79086) (not e!106163))))

(assert (=> b!175034 (= res!79086 (= (list!1077 (_1!1647 lt!56319)) (_1!1651 (lexList!117 thiss!17480 rules!1920 (list!1073 (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465))))))))))

(declare-fun b!175035 () Bool)

(assert (=> b!175035 (= e!106163 (= (list!1073 (_2!1647 lt!56319)) (_2!1651 (lexList!117 thiss!17480 rules!1920 (list!1073 (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465))))))))))

(declare-fun b!175036 () Bool)

(assert (=> b!175036 (= e!106164 (not (isEmpty!1270 (_1!1647 lt!56319))))))

(declare-fun d!44313 () Bool)

(assert (=> d!44313 e!106163))

(declare-fun res!79087 () Bool)

(assert (=> d!44313 (=> (not res!79087) (not e!106163))))

(assert (=> d!44313 (= res!79087 e!106162)))

(declare-fun c!34588 () Bool)

(assert (=> d!44313 (= c!34588 (> (size!2432 (_1!1647 lt!56319)) 0))))

(assert (=> d!44313 (= lt!56319 (lexTailRecV2!104 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465))) (BalanceConc!1761 Empty!876) (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465))) (BalanceConc!1763 Empty!877)))))

(assert (=> d!44313 (= (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465)))) lt!56319)))

(assert (= (and d!44313 c!34588) b!175033))

(assert (= (and d!44313 (not c!34588)) b!175032))

(assert (= (and b!175033 res!79088) b!175036))

(assert (= (and d!44313 res!79087) b!175034))

(assert (= (and b!175034 res!79086) b!175035))

(declare-fun m!174391 () Bool)

(assert (=> d!44313 m!174391))

(assert (=> d!44313 m!173135))

(assert (=> d!44313 m!173135))

(declare-fun m!174393 () Bool)

(assert (=> d!44313 m!174393))

(declare-fun m!174395 () Bool)

(assert (=> b!175036 m!174395))

(declare-fun m!174397 () Bool)

(assert (=> b!175033 m!174397))

(assert (=> b!175033 m!173135))

(declare-fun m!174399 () Bool)

(assert (=> b!175033 m!174399))

(declare-fun m!174401 () Bool)

(assert (=> b!175034 m!174401))

(assert (=> b!175034 m!173135))

(declare-fun m!174403 () Bool)

(assert (=> b!175034 m!174403))

(assert (=> b!175034 m!174403))

(declare-fun m!174405 () Bool)

(assert (=> b!175034 m!174405))

(declare-fun m!174409 () Bool)

(assert (=> b!175035 m!174409))

(assert (=> b!175035 m!173135))

(assert (=> b!175035 m!174403))

(assert (=> b!175035 m!174403))

(assert (=> b!175035 m!174405))

(assert (=> d!44081 d!44313))

(declare-fun d!44315 () Bool)

(assert (=> d!44315 (= (list!1077 (_1!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465)))))) (list!1080 (c!34381 (_1!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465))))))))))

(declare-fun bs!17262 () Bool)

(assert (= bs!17262 d!44315))

(declare-fun m!174419 () Bool)

(assert (=> bs!17262 m!174419))

(assert (=> d!44081 d!44315))

(assert (=> d!44081 d!44139))

(declare-fun d!44317 () Bool)

(declare-fun lt!56320 () BalanceConc!1760)

(assert (=> d!44317 (= (list!1073 lt!56320) (printList!97 thiss!17480 (list!1077 (singletonSeq!79 (h!8335 tokens!465)))))))

(assert (=> d!44317 (= lt!56320 (printTailRec!107 thiss!17480 (singletonSeq!79 (h!8335 tokens!465)) 0 (BalanceConc!1761 Empty!876)))))

(assert (=> d!44317 (= (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465))) lt!56320)))

(declare-fun bs!17263 () Bool)

(assert (= bs!17263 d!44317))

(declare-fun m!174433 () Bool)

(assert (=> bs!17263 m!174433))

(assert (=> bs!17263 m!172839))

(assert (=> bs!17263 m!173611))

(assert (=> bs!17263 m!173611))

(declare-fun m!174437 () Bool)

(assert (=> bs!17263 m!174437))

(assert (=> bs!17263 m!172839))

(assert (=> bs!17263 m!173137))

(assert (=> d!44081 d!44317))

(declare-fun d!44319 () Bool)

(declare-fun lt!56324 () Int)

(assert (=> d!44319 (>= lt!56324 0)))

(declare-fun e!106167 () Int)

(assert (=> d!44319 (= lt!56324 e!106167)))

(declare-fun c!34591 () Bool)

(assert (=> d!44319 (= c!34591 ((_ is Nil!2936) lt!56123))))

(assert (=> d!44319 (= (size!2431 lt!56123) lt!56324)))

(declare-fun b!175041 () Bool)

(assert (=> b!175041 (= e!106167 0)))

(declare-fun b!175042 () Bool)

(assert (=> b!175042 (= e!106167 (+ 1 (size!2431 (t!27584 lt!56123))))))

(assert (= (and d!44319 c!34591) b!175041))

(assert (= (and d!44319 (not c!34591)) b!175042))

(declare-fun m!174451 () Bool)

(assert (=> b!175042 m!174451))

(assert (=> b!174522 d!44319))

(declare-fun d!44329 () Bool)

(declare-fun lt!56332 () Int)

(assert (=> d!44329 (>= lt!56332 0)))

(declare-fun e!106174 () Int)

(assert (=> d!44329 (= lt!56332 e!106174)))

(declare-fun c!34593 () Bool)

(assert (=> d!44329 (= c!34593 ((_ is Nil!2936) lt!55827))))

(assert (=> d!44329 (= (size!2431 lt!55827) lt!56332)))

(declare-fun b!175051 () Bool)

(assert (=> b!175051 (= e!106174 0)))

(declare-fun b!175052 () Bool)

(assert (=> b!175052 (= e!106174 (+ 1 (size!2431 (t!27584 lt!55827))))))

(assert (= (and d!44329 c!34593) b!175051))

(assert (= (and d!44329 (not c!34593)) b!175052))

(declare-fun m!174453 () Bool)

(assert (=> b!175052 m!174453))

(assert (=> b!174522 d!44329))

(declare-fun d!44331 () Bool)

(declare-fun lt!56333 () Int)

(assert (=> d!44331 (>= lt!56333 0)))

(declare-fun e!106175 () Int)

(assert (=> d!44331 (= lt!56333 e!106175)))

(declare-fun c!34594 () Bool)

(assert (=> d!44331 (= c!34594 ((_ is Nil!2936) lt!55824))))

(assert (=> d!44331 (= (size!2431 lt!55824) lt!56333)))

(declare-fun b!175053 () Bool)

(assert (=> b!175053 (= e!106175 0)))

(declare-fun b!175054 () Bool)

(assert (=> b!175054 (= e!106175 (+ 1 (size!2431 (t!27584 lt!55824))))))

(assert (= (and d!44331 c!34594) b!175053))

(assert (= (and d!44331 (not c!34594)) b!175054))

(declare-fun m!174455 () Bool)

(assert (=> b!175054 m!174455))

(assert (=> b!174522 d!44331))

(declare-fun d!44333 () Bool)

(declare-fun e!106176 () Bool)

(assert (=> d!44333 e!106176))

(declare-fun res!79096 () Bool)

(assert (=> d!44333 (=> (not res!79096) (not e!106176))))

(declare-fun lt!56334 () List!2946)

(assert (=> d!44333 (= res!79096 (= (content!407 lt!56334) ((_ map or) (content!407 call!7766) (content!407 lt!56128))))))

(declare-fun e!106177 () List!2946)

(assert (=> d!44333 (= lt!56334 e!106177)))

(declare-fun c!34595 () Bool)

(assert (=> d!44333 (= c!34595 ((_ is Nil!2936) call!7766))))

(assert (=> d!44333 (= (++!680 call!7766 lt!56128) lt!56334)))

(declare-fun b!175058 () Bool)

(assert (=> b!175058 (= e!106176 (or (not (= lt!56128 Nil!2936)) (= lt!56334 call!7766)))))

(declare-fun b!175057 () Bool)

(declare-fun res!79095 () Bool)

(assert (=> b!175057 (=> (not res!79095) (not e!106176))))

(assert (=> b!175057 (= res!79095 (= (size!2431 lt!56334) (+ (size!2431 call!7766) (size!2431 lt!56128))))))

(declare-fun b!175055 () Bool)

(assert (=> b!175055 (= e!106177 lt!56128)))

(declare-fun b!175056 () Bool)

(assert (=> b!175056 (= e!106177 (Cons!2936 (h!8333 call!7766) (++!680 (t!27584 call!7766) lt!56128)))))

(assert (= (and d!44333 c!34595) b!175055))

(assert (= (and d!44333 (not c!34595)) b!175056))

(assert (= (and d!44333 res!79096) b!175057))

(assert (= (and b!175057 res!79095) b!175058))

(declare-fun m!174457 () Bool)

(assert (=> d!44333 m!174457))

(declare-fun m!174459 () Bool)

(assert (=> d!44333 m!174459))

(declare-fun m!174461 () Bool)

(assert (=> d!44333 m!174461))

(declare-fun m!174463 () Bool)

(assert (=> b!175057 m!174463))

(declare-fun m!174465 () Bool)

(assert (=> b!175057 m!174465))

(declare-fun m!174467 () Bool)

(assert (=> b!175057 m!174467))

(declare-fun m!174469 () Bool)

(assert (=> b!175056 m!174469))

(assert (=> b!174529 d!44333))

(declare-fun d!44335 () Bool)

(declare-fun charsToInt!0 (List!2945) (_ BitVec 32))

(assert (=> d!44335 (= (inv!16 (value!19335 separatorToken!170)) (= (charsToInt!0 (text!4290 (value!19335 separatorToken!170))) (value!19326 (value!19335 separatorToken!170))))))

(declare-fun bs!17267 () Bool)

(assert (= bs!17267 d!44335))

(declare-fun m!174486 () Bool)

(assert (=> bs!17267 m!174486))

(assert (=> b!174672 d!44335))

(declare-fun d!44337 () Bool)

(assert (=> d!44337 true))

(declare-fun lambda!5059 () Int)

(declare-fun order!1635 () Int)

(declare-fun dynLambda!1136 (Int Int) Int)

(assert (=> d!44337 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465))))) (dynLambda!1136 order!1635 lambda!5059))))

(assert (=> d!44337 true))

(assert (=> d!44337 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (rule!1038 (h!8335 tokens!465))))) (dynLambda!1136 order!1635 lambda!5059))))

(declare-fun Forall!137 (Int) Bool)

(assert (=> d!44337 (= (semiInverseModEq!183 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toValue!1194 (transformation!527 (rule!1038 (h!8335 tokens!465))))) (Forall!137 lambda!5059))))

(declare-fun bs!17268 () Bool)

(assert (= bs!17268 d!44337))

(declare-fun m!174517 () Bool)

(assert (=> bs!17268 m!174517))

(assert (=> d!44145 d!44337))

(declare-fun d!44343 () Bool)

(declare-fun e!106183 () Bool)

(assert (=> d!44343 e!106183))

(declare-fun res!79106 () Bool)

(assert (=> d!44343 (=> (not res!79106) (not e!106183))))

(declare-fun lt!56336 () List!2946)

(assert (=> d!44343 (= res!79106 (= (content!407 lt!56336) ((_ map or) (content!407 call!7739) (content!407 lt!55963))))))

(declare-fun e!106184 () List!2946)

(assert (=> d!44343 (= lt!56336 e!106184)))

(declare-fun c!34596 () Bool)

(assert (=> d!44343 (= c!34596 ((_ is Nil!2936) call!7739))))

(assert (=> d!44343 (= (++!680 call!7739 lt!55963) lt!56336)))

(declare-fun b!175074 () Bool)

(assert (=> b!175074 (= e!106183 (or (not (= lt!55963 Nil!2936)) (= lt!56336 call!7739)))))

(declare-fun b!175073 () Bool)

(declare-fun res!79105 () Bool)

(assert (=> b!175073 (=> (not res!79105) (not e!106183))))

(assert (=> b!175073 (= res!79105 (= (size!2431 lt!56336) (+ (size!2431 call!7739) (size!2431 lt!55963))))))

(declare-fun b!175071 () Bool)

(assert (=> b!175071 (= e!106184 lt!55963)))

(declare-fun b!175072 () Bool)

(assert (=> b!175072 (= e!106184 (Cons!2936 (h!8333 call!7739) (++!680 (t!27584 call!7739) lt!55963)))))

(assert (= (and d!44343 c!34596) b!175071))

(assert (= (and d!44343 (not c!34596)) b!175072))

(assert (= (and d!44343 res!79106) b!175073))

(assert (= (and b!175073 res!79105) b!175074))

(declare-fun m!174519 () Bool)

(assert (=> d!44343 m!174519))

(declare-fun m!174523 () Bool)

(assert (=> d!44343 m!174523))

(declare-fun m!174525 () Bool)

(assert (=> d!44343 m!174525))

(declare-fun m!174527 () Bool)

(assert (=> b!175073 m!174527))

(declare-fun m!174531 () Bool)

(assert (=> b!175073 m!174531))

(declare-fun m!174533 () Bool)

(assert (=> b!175073 m!174533))

(declare-fun m!174535 () Bool)

(assert (=> b!175072 m!174535))

(assert (=> b!174202 d!44343))

(declare-fun d!44347 () Bool)

(declare-fun c!34602 () Bool)

(assert (=> d!44347 (= c!34602 ((_ is Node!876) (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170)))))))

(declare-fun e!106195 () Bool)

(assert (=> d!44347 (= (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170)))) e!106195)))

(declare-fun b!175090 () Bool)

(declare-fun inv!3773 (Conc!876) Bool)

(assert (=> b!175090 (= e!106195 (inv!3773 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170)))))))

(declare-fun b!175091 () Bool)

(declare-fun e!106196 () Bool)

(assert (=> b!175091 (= e!106195 e!106196)))

(declare-fun res!79112 () Bool)

(assert (=> b!175091 (= res!79112 (not ((_ is Leaf!1479) (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170))))))))

(assert (=> b!175091 (=> res!79112 e!106196)))

(declare-fun b!175092 () Bool)

(declare-fun inv!3774 (Conc!876) Bool)

(assert (=> b!175092 (= e!106196 (inv!3774 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170)))))))

(assert (= (and d!44347 c!34602) b!175090))

(assert (= (and d!44347 (not c!34602)) b!175091))

(assert (= (and b!175091 (not res!79112)) b!175092))

(declare-fun m!174549 () Bool)

(assert (=> b!175090 m!174549))

(declare-fun m!174551 () Bool)

(assert (=> b!175092 m!174551))

(assert (=> b!174602 d!44347))

(declare-fun d!44361 () Bool)

(declare-fun lt!56344 () Token!798)

(assert (=> d!44361 (= lt!56344 (apply!430 (list!1077 (seqFromList!431 (t!27586 tokens!465))) 0))))

(declare-fun apply!434 (Conc!877 Int) Token!798)

(assert (=> d!44361 (= lt!56344 (apply!434 (c!34381 (seqFromList!431 (t!27586 tokens!465))) 0))))

(declare-fun e!106201 () Bool)

(assert (=> d!44361 e!106201))

(declare-fun res!79117 () Bool)

(assert (=> d!44361 (=> (not res!79117) (not e!106201))))

(assert (=> d!44361 (= res!79117 (<= 0 0))))

(assert (=> d!44361 (= (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0) lt!56344)))

(declare-fun b!175099 () Bool)

(assert (=> b!175099 (= e!106201 (< 0 (size!2432 (seqFromList!431 (t!27586 tokens!465)))))))

(assert (= (and d!44361 res!79117) b!175099))

(assert (=> d!44361 m!172855))

(assert (=> d!44361 m!173699))

(assert (=> d!44361 m!173699))

(declare-fun m!174567 () Bool)

(assert (=> d!44361 m!174567))

(declare-fun m!174569 () Bool)

(assert (=> d!44361 m!174569))

(assert (=> b!175099 m!172855))

(assert (=> b!175099 m!173693))

(assert (=> bm!7764 d!44361))

(declare-fun b!175151 () Bool)

(declare-fun res!79155 () Bool)

(declare-fun e!106238 () Bool)

(assert (=> b!175151 (=> (not res!79155) (not e!106238))))

(declare-fun lt!56392 () Option!331)

(assert (=> b!175151 (= res!79155 (< (size!2431 (_2!1648 (get!811 lt!56392))) (size!2431 lt!55823)))))

(declare-fun d!44365 () Bool)

(declare-fun e!106239 () Bool)

(assert (=> d!44365 e!106239))

(declare-fun res!79153 () Bool)

(assert (=> d!44365 (=> res!79153 e!106239)))

(assert (=> d!44365 (= res!79153 (isEmpty!1282 lt!56392))))

(declare-fun e!106237 () Option!331)

(assert (=> d!44365 (= lt!56392 e!106237)))

(declare-fun c!34610 () Bool)

(declare-datatypes ((tuple2!2874 0))(
  ( (tuple2!2875 (_1!1653 List!2946) (_2!1653 List!2946)) )
))
(declare-fun lt!56391 () tuple2!2874)

(assert (=> d!44365 (= c!34610 (isEmpty!1271 (_1!1653 lt!56391)))))

(declare-fun findLongestMatch!36 (Regex!751 List!2946) tuple2!2874)

(assert (=> d!44365 (= lt!56391 (findLongestMatch!36 (regex!527 (h!8334 rules!1920)) lt!55823))))

(declare-fun ruleValid!60 (LexerInterface!413 Rule!854) Bool)

(assert (=> d!44365 (ruleValid!60 thiss!17480 (h!8334 rules!1920))))

(assert (=> d!44365 (= (maxPrefixOneRule!75 thiss!17480 (h!8334 rules!1920) lt!55823) lt!56392)))

(declare-fun b!175152 () Bool)

(declare-fun res!79151 () Bool)

(assert (=> b!175152 (=> (not res!79151) (not e!106238))))

(assert (=> b!175152 (= res!79151 (= (rule!1038 (_1!1648 (get!811 lt!56392))) (h!8334 rules!1920)))))

(declare-fun b!175153 () Bool)

(declare-fun e!106236 () Bool)

(declare-fun findLongestMatchInner!54 (Regex!751 List!2946 Int List!2946 List!2946 Int) tuple2!2874)

(assert (=> b!175153 (= e!106236 (matchR!89 (regex!527 (h!8334 rules!1920)) (_1!1653 (findLongestMatchInner!54 (regex!527 (h!8334 rules!1920)) Nil!2936 (size!2431 Nil!2936) lt!55823 lt!55823 (size!2431 lt!55823)))))))

(declare-fun b!175154 () Bool)

(declare-fun res!79154 () Bool)

(assert (=> b!175154 (=> (not res!79154) (not e!106238))))

(assert (=> b!175154 (= res!79154 (= (++!680 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56392)))) (_2!1648 (get!811 lt!56392))) lt!55823))))

(declare-fun b!175155 () Bool)

(assert (=> b!175155 (= e!106237 (Some!330 (tuple2!2865 (Token!799 (apply!432 (transformation!527 (h!8334 rules!1920)) (seqFromList!432 (_1!1653 lt!56391))) (h!8334 rules!1920) (size!2433 (seqFromList!432 (_1!1653 lt!56391))) (_1!1653 lt!56391)) (_2!1653 lt!56391))))))

(declare-fun lt!56393 () Unit!2616)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!38 (Regex!751 List!2946) Unit!2616)

(assert (=> b!175155 (= lt!56393 (longestMatchIsAcceptedByMatchOrIsEmpty!38 (regex!527 (h!8334 rules!1920)) lt!55823))))

(declare-fun res!79149 () Bool)

(assert (=> b!175155 (= res!79149 (isEmpty!1271 (_1!1653 (findLongestMatchInner!54 (regex!527 (h!8334 rules!1920)) Nil!2936 (size!2431 Nil!2936) lt!55823 lt!55823 (size!2431 lt!55823)))))))

(assert (=> b!175155 (=> res!79149 e!106236)))

(assert (=> b!175155 e!106236))

(declare-fun lt!56394 () Unit!2616)

(assert (=> b!175155 (= lt!56394 lt!56393)))

(declare-fun lt!56390 () Unit!2616)

(declare-fun lemmaSemiInverse!34 (TokenValueInjection!870 BalanceConc!1760) Unit!2616)

(assert (=> b!175155 (= lt!56390 (lemmaSemiInverse!34 (transformation!527 (h!8334 rules!1920)) (seqFromList!432 (_1!1653 lt!56391))))))

(declare-fun b!175156 () Bool)

(declare-fun res!79150 () Bool)

(assert (=> b!175156 (=> (not res!79150) (not e!106238))))

(assert (=> b!175156 (= res!79150 (= (value!19335 (_1!1648 (get!811 lt!56392))) (apply!432 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56392)))) (seqFromList!432 (originalCharacters!570 (_1!1648 (get!811 lt!56392)))))))))

(declare-fun b!175157 () Bool)

(assert (=> b!175157 (= e!106239 e!106238)))

(declare-fun res!79152 () Bool)

(assert (=> b!175157 (=> (not res!79152) (not e!106238))))

(assert (=> b!175157 (= res!79152 (matchR!89 (regex!527 (h!8334 rules!1920)) (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56392))))))))

(declare-fun b!175158 () Bool)

(assert (=> b!175158 (= e!106237 None!330)))

(declare-fun b!175159 () Bool)

(assert (=> b!175159 (= e!106238 (= (size!2427 (_1!1648 (get!811 lt!56392))) (size!2431 (originalCharacters!570 (_1!1648 (get!811 lt!56392))))))))

(assert (= (and d!44365 c!34610) b!175158))

(assert (= (and d!44365 (not c!34610)) b!175155))

(assert (= (and b!175155 (not res!79149)) b!175153))

(assert (= (and d!44365 (not res!79153)) b!175157))

(assert (= (and b!175157 res!79152) b!175154))

(assert (= (and b!175154 res!79154) b!175151))

(assert (= (and b!175151 res!79155) b!175152))

(assert (= (and b!175152 res!79151) b!175156))

(assert (= (and b!175156 res!79150) b!175159))

(declare-fun m!174659 () Bool)

(assert (=> b!175153 m!174659))

(assert (=> b!175153 m!172917))

(assert (=> b!175153 m!174659))

(assert (=> b!175153 m!172917))

(declare-fun m!174661 () Bool)

(assert (=> b!175153 m!174661))

(declare-fun m!174663 () Bool)

(assert (=> b!175153 m!174663))

(declare-fun m!174665 () Bool)

(assert (=> b!175159 m!174665))

(declare-fun m!174667 () Bool)

(assert (=> b!175159 m!174667))

(assert (=> b!175157 m!174665))

(declare-fun m!174669 () Bool)

(assert (=> b!175157 m!174669))

(assert (=> b!175157 m!174669))

(declare-fun m!174671 () Bool)

(assert (=> b!175157 m!174671))

(assert (=> b!175157 m!174671))

(declare-fun m!174673 () Bool)

(assert (=> b!175157 m!174673))

(assert (=> b!175151 m!174665))

(declare-fun m!174675 () Bool)

(assert (=> b!175151 m!174675))

(assert (=> b!175151 m!172917))

(assert (=> b!175156 m!174665))

(declare-fun m!174677 () Bool)

(assert (=> b!175156 m!174677))

(assert (=> b!175156 m!174677))

(declare-fun m!174679 () Bool)

(assert (=> b!175156 m!174679))

(assert (=> b!175155 m!174659))

(declare-fun m!174681 () Bool)

(assert (=> b!175155 m!174681))

(assert (=> b!175155 m!174659))

(assert (=> b!175155 m!172917))

(assert (=> b!175155 m!174661))

(declare-fun m!174683 () Bool)

(assert (=> b!175155 m!174683))

(declare-fun m!174685 () Bool)

(assert (=> b!175155 m!174685))

(assert (=> b!175155 m!174683))

(assert (=> b!175155 m!172917))

(assert (=> b!175155 m!174683))

(declare-fun m!174687 () Bool)

(assert (=> b!175155 m!174687))

(declare-fun m!174689 () Bool)

(assert (=> b!175155 m!174689))

(assert (=> b!175155 m!174683))

(declare-fun m!174691 () Bool)

(assert (=> b!175155 m!174691))

(assert (=> b!175154 m!174665))

(assert (=> b!175154 m!174669))

(assert (=> b!175154 m!174669))

(assert (=> b!175154 m!174671))

(assert (=> b!175154 m!174671))

(declare-fun m!174693 () Bool)

(assert (=> b!175154 m!174693))

(assert (=> b!175152 m!174665))

(declare-fun m!174695 () Bool)

(assert (=> d!44365 m!174695))

(declare-fun m!174697 () Bool)

(assert (=> d!44365 m!174697))

(declare-fun m!174699 () Bool)

(assert (=> d!44365 m!174699))

(declare-fun m!174701 () Bool)

(assert (=> d!44365 m!174701))

(assert (=> bm!7773 d!44365))

(declare-fun d!44385 () Bool)

(assert (=> d!44385 (= (isEmpty!1279 (list!1077 (_1!1647 (lex!213 thiss!17480 rules!1920 (seqFromList!432 lt!55823))))) ((_ is Nil!2938) (list!1077 (_1!1647 (lex!213 thiss!17480 rules!1920 (seqFromList!432 lt!55823))))))))

(assert (=> d!44029 d!44385))

(declare-fun d!44387 () Bool)

(assert (=> d!44387 (= (list!1077 (_1!1647 (lex!213 thiss!17480 rules!1920 (seqFromList!432 lt!55823)))) (list!1080 (c!34381 (_1!1647 (lex!213 thiss!17480 rules!1920 (seqFromList!432 lt!55823))))))))

(declare-fun bs!17275 () Bool)

(assert (= bs!17275 d!44387))

(declare-fun m!174703 () Bool)

(assert (=> bs!17275 m!174703))

(assert (=> d!44029 d!44387))

(declare-fun d!44389 () Bool)

(declare-fun lt!56397 () Bool)

(assert (=> d!44389 (= lt!56397 (isEmpty!1279 (list!1080 (c!34381 (_1!1647 (lex!213 thiss!17480 rules!1920 (seqFromList!432 lt!55823)))))))))

(assert (=> d!44389 (= lt!56397 (= (size!2438 (c!34381 (_1!1647 (lex!213 thiss!17480 rules!1920 (seqFromList!432 lt!55823))))) 0))))

(assert (=> d!44389 (= (isEmpty!1280 (c!34381 (_1!1647 (lex!213 thiss!17480 rules!1920 (seqFromList!432 lt!55823))))) lt!56397)))

(declare-fun bs!17276 () Bool)

(assert (= bs!17276 d!44389))

(assert (=> bs!17276 m!174703))

(assert (=> bs!17276 m!174703))

(declare-fun m!174705 () Bool)

(assert (=> bs!17276 m!174705))

(declare-fun m!174707 () Bool)

(assert (=> bs!17276 m!174707))

(assert (=> d!44029 d!44389))

(declare-fun d!44391 () Bool)

(declare-fun lt!56409 () List!2946)

(assert (=> d!44391 (= lt!56409 (++!680 (list!1073 (BalanceConc!1761 Empty!876)) (printList!97 thiss!17480 (dropList!92 lt!55819 0))))))

(declare-fun e!106242 () List!2946)

(assert (=> d!44391 (= lt!56409 e!106242)))

(declare-fun c!34613 () Bool)

(assert (=> d!44391 (= c!34613 ((_ is Cons!2938) (dropList!92 lt!55819 0)))))

(assert (=> d!44391 (= (printListTailRec!60 thiss!17480 (dropList!92 lt!55819 0) (list!1073 (BalanceConc!1761 Empty!876))) lt!56409)))

(declare-fun b!175164 () Bool)

(assert (=> b!175164 (= e!106242 (printListTailRec!60 thiss!17480 (t!27586 (dropList!92 lt!55819 0)) (++!680 (list!1073 (BalanceConc!1761 Empty!876)) (list!1073 (charsOf!182 (h!8335 (dropList!92 lt!55819 0)))))))))

(declare-fun lt!56411 () List!2946)

(assert (=> b!175164 (= lt!56411 (list!1073 (charsOf!182 (h!8335 (dropList!92 lt!55819 0)))))))

(declare-fun lt!56412 () List!2946)

(assert (=> b!175164 (= lt!56412 (printList!97 thiss!17480 (t!27586 (dropList!92 lt!55819 0))))))

(declare-fun lt!56408 () Unit!2616)

(assert (=> b!175164 (= lt!56408 (lemmaConcatAssociativity!214 (list!1073 (BalanceConc!1761 Empty!876)) lt!56411 lt!56412))))

(assert (=> b!175164 (= (++!680 (++!680 (list!1073 (BalanceConc!1761 Empty!876)) lt!56411) lt!56412) (++!680 (list!1073 (BalanceConc!1761 Empty!876)) (++!680 lt!56411 lt!56412)))))

(declare-fun lt!56410 () Unit!2616)

(assert (=> b!175164 (= lt!56410 lt!56408)))

(declare-fun b!175165 () Bool)

(assert (=> b!175165 (= e!106242 (list!1073 (BalanceConc!1761 Empty!876)))))

(assert (= (and d!44391 c!34613) b!175164))

(assert (= (and d!44391 (not c!34613)) b!175165))

(assert (=> d!44391 m!173899))

(declare-fun m!174709 () Bool)

(assert (=> d!44391 m!174709))

(assert (=> d!44391 m!173897))

(assert (=> d!44391 m!174709))

(declare-fun m!174711 () Bool)

(assert (=> d!44391 m!174711))

(assert (=> b!175164 m!173897))

(declare-fun m!174713 () Bool)

(assert (=> b!175164 m!174713))

(assert (=> b!175164 m!173897))

(declare-fun m!174715 () Bool)

(assert (=> b!175164 m!174715))

(assert (=> b!175164 m!173897))

(declare-fun m!174717 () Bool)

(assert (=> b!175164 m!174717))

(declare-fun m!174719 () Bool)

(assert (=> b!175164 m!174719))

(declare-fun m!174721 () Bool)

(assert (=> b!175164 m!174721))

(assert (=> b!175164 m!174713))

(declare-fun m!174723 () Bool)

(assert (=> b!175164 m!174723))

(assert (=> b!175164 m!173897))

(declare-fun m!174725 () Bool)

(assert (=> b!175164 m!174725))

(declare-fun m!174727 () Bool)

(assert (=> b!175164 m!174727))

(assert (=> b!175164 m!174725))

(assert (=> b!175164 m!174721))

(assert (=> b!175164 m!174717))

(assert (=> b!175164 m!174719))

(declare-fun m!174729 () Bool)

(assert (=> b!175164 m!174729))

(declare-fun m!174731 () Bool)

(assert (=> b!175164 m!174731))

(assert (=> d!44149 d!44391))

(declare-fun d!44393 () Bool)

(assert (=> d!44393 (= (list!1073 lt!56190) (list!1076 (c!34379 lt!56190)))))

(declare-fun bs!17277 () Bool)

(assert (= bs!17277 d!44393))

(declare-fun m!174733 () Bool)

(assert (=> bs!17277 m!174733))

(assert (=> d!44149 d!44393))

(declare-fun d!44395 () Bool)

(assert (=> d!44395 (= (dropList!92 lt!55819 0) (drop!145 (list!1080 (c!34381 lt!55819)) 0))))

(declare-fun bs!17278 () Bool)

(assert (= bs!17278 d!44395))

(declare-fun m!174735 () Bool)

(assert (=> bs!17278 m!174735))

(assert (=> bs!17278 m!174735))

(declare-fun m!174737 () Bool)

(assert (=> bs!17278 m!174737))

(assert (=> d!44149 d!44395))

(declare-fun d!44397 () Bool)

(declare-fun lt!56413 () Int)

(assert (=> d!44397 (= lt!56413 (size!2437 (list!1077 lt!55819)))))

(assert (=> d!44397 (= lt!56413 (size!2438 (c!34381 lt!55819)))))

(assert (=> d!44397 (= (size!2432 lt!55819) lt!56413)))

(declare-fun bs!17279 () Bool)

(assert (= bs!17279 d!44397))

(assert (=> bs!17279 m!173927))

(assert (=> bs!17279 m!173927))

(declare-fun m!174739 () Bool)

(assert (=> bs!17279 m!174739))

(declare-fun m!174741 () Bool)

(assert (=> bs!17279 m!174741))

(assert (=> d!44149 d!44397))

(declare-fun d!44399 () Bool)

(assert (=> d!44399 (= (list!1073 (BalanceConc!1761 Empty!876)) (list!1076 (c!34379 (BalanceConc!1761 Empty!876))))))

(declare-fun bs!17280 () Bool)

(assert (= bs!17280 d!44399))

(declare-fun m!174743 () Bool)

(assert (=> bs!17280 m!174743))

(assert (=> d!44149 d!44399))

(declare-fun d!44401 () Bool)

(assert (=> d!44401 (= (isDefined!181 lt!55983) (not (isEmpty!1276 lt!55983)))))

(declare-fun bs!17281 () Bool)

(assert (= bs!17281 d!44401))

(declare-fun m!174745 () Bool)

(assert (=> bs!17281 m!174745))

(assert (=> b!174232 d!44401))

(declare-fun d!44403 () Bool)

(declare-fun lt!56416 () Bool)

(assert (=> d!44403 (= lt!56416 (isEmpty!1271 (list!1073 (_2!1647 lt!56120))))))

(declare-fun isEmpty!1284 (Conc!876) Bool)

(assert (=> d!44403 (= lt!56416 (isEmpty!1284 (c!34379 (_2!1647 lt!56120))))))

(assert (=> d!44403 (= (isEmpty!1281 (_2!1647 lt!56120)) lt!56416)))

(declare-fun bs!17282 () Bool)

(assert (= bs!17282 d!44403))

(declare-fun m!174747 () Bool)

(assert (=> bs!17282 m!174747))

(assert (=> bs!17282 m!174747))

(declare-fun m!174749 () Bool)

(assert (=> bs!17282 m!174749))

(declare-fun m!174751 () Bool)

(assert (=> bs!17282 m!174751))

(assert (=> b!174510 d!44403))

(declare-fun d!44405 () Bool)

(declare-fun lt!56417 () Bool)

(declare-fun e!106243 () Bool)

(assert (=> d!44405 (= lt!56417 e!106243)))

(declare-fun res!79156 () Bool)

(assert (=> d!44405 (=> (not res!79156) (not e!106243))))

(assert (=> d!44405 (= res!79156 (= (list!1077 (_1!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 (h!8335 (t!27586 tokens!465))))))) (list!1077 (singletonSeq!79 (h!8335 (t!27586 tokens!465))))))))

(declare-fun e!106244 () Bool)

(assert (=> d!44405 (= lt!56417 e!106244)))

(declare-fun res!79157 () Bool)

(assert (=> d!44405 (=> (not res!79157) (not e!106244))))

(declare-fun lt!56418 () tuple2!2862)

(assert (=> d!44405 (= res!79157 (= (size!2432 (_1!1647 lt!56418)) 1))))

(assert (=> d!44405 (= lt!56418 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 (h!8335 (t!27586 tokens!465))))))))

(assert (=> d!44405 (not (isEmpty!1272 rules!1920))))

(assert (=> d!44405 (= (rulesProduceIndividualToken!162 thiss!17480 rules!1920 (h!8335 (t!27586 tokens!465))) lt!56417)))

(declare-fun b!175166 () Bool)

(declare-fun res!79158 () Bool)

(assert (=> b!175166 (=> (not res!79158) (not e!106244))))

(assert (=> b!175166 (= res!79158 (= (apply!429 (_1!1647 lt!56418) 0) (h!8335 (t!27586 tokens!465))))))

(declare-fun b!175167 () Bool)

(assert (=> b!175167 (= e!106244 (isEmpty!1281 (_2!1647 lt!56418)))))

(declare-fun b!175168 () Bool)

(assert (=> b!175168 (= e!106243 (isEmpty!1281 (_2!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 (h!8335 (t!27586 tokens!465))))))))))

(assert (= (and d!44405 res!79157) b!175166))

(assert (= (and b!175166 res!79158) b!175167))

(assert (= (and d!44405 res!79156) b!175168))

(declare-fun m!174753 () Bool)

(assert (=> d!44405 m!174753))

(assert (=> d!44405 m!173683))

(assert (=> d!44405 m!173685))

(assert (=> d!44405 m!173683))

(assert (=> d!44405 m!173683))

(declare-fun m!174755 () Bool)

(assert (=> d!44405 m!174755))

(assert (=> d!44405 m!173685))

(declare-fun m!174757 () Bool)

(assert (=> d!44405 m!174757))

(assert (=> d!44405 m!172843))

(declare-fun m!174759 () Bool)

(assert (=> d!44405 m!174759))

(declare-fun m!174761 () Bool)

(assert (=> b!175166 m!174761))

(declare-fun m!174763 () Bool)

(assert (=> b!175167 m!174763))

(assert (=> b!175168 m!173683))

(assert (=> b!175168 m!173683))

(assert (=> b!175168 m!173685))

(assert (=> b!175168 m!173685))

(assert (=> b!175168 m!174757))

(declare-fun m!174765 () Bool)

(assert (=> b!175168 m!174765))

(assert (=> b!174351 d!44405))

(declare-fun d!44407 () Bool)

(declare-fun lt!56419 () Token!798)

(assert (=> d!44407 (= lt!56419 (apply!430 (list!1077 (_1!1647 lt!56171)) 0))))

(assert (=> d!44407 (= lt!56419 (apply!434 (c!34381 (_1!1647 lt!56171)) 0))))

(declare-fun e!106245 () Bool)

(assert (=> d!44407 e!106245))

(declare-fun res!79159 () Bool)

(assert (=> d!44407 (=> (not res!79159) (not e!106245))))

(assert (=> d!44407 (= res!79159 (<= 0 0))))

(assert (=> d!44407 (= (apply!429 (_1!1647 lt!56171) 0) lt!56419)))

(declare-fun b!175169 () Bool)

(assert (=> b!175169 (= e!106245 (< 0 (size!2432 (_1!1647 lt!56171))))))

(assert (= (and d!44407 res!79159) b!175169))

(declare-fun m!174767 () Bool)

(assert (=> d!44407 m!174767))

(assert (=> d!44407 m!174767))

(declare-fun m!174769 () Bool)

(assert (=> d!44407 m!174769))

(declare-fun m!174771 () Bool)

(assert (=> d!44407 m!174771))

(assert (=> b!175169 m!173873))

(assert (=> b!174702 d!44407))

(declare-fun d!44409 () Bool)

(declare-fun res!79164 () Bool)

(declare-fun e!106250 () Bool)

(assert (=> d!44409 (=> res!79164 e!106250)))

(assert (=> d!44409 (= res!79164 ((_ is Nil!2937) rules!1920))))

(assert (=> d!44409 (= (noDuplicateTag!148 thiss!17480 rules!1920 Nil!2939) e!106250)))

(declare-fun b!175174 () Bool)

(declare-fun e!106251 () Bool)

(assert (=> b!175174 (= e!106250 e!106251)))

(declare-fun res!79165 () Bool)

(assert (=> b!175174 (=> (not res!79165) (not e!106251))))

(declare-fun contains!478 (List!2949 String!3825) Bool)

(assert (=> b!175174 (= res!79165 (not (contains!478 Nil!2939 (tag!705 (h!8334 rules!1920)))))))

(declare-fun b!175175 () Bool)

(assert (=> b!175175 (= e!106251 (noDuplicateTag!148 thiss!17480 (t!27585 rules!1920) (Cons!2939 (tag!705 (h!8334 rules!1920)) Nil!2939)))))

(assert (= (and d!44409 (not res!79164)) b!175174))

(assert (= (and b!175174 res!79165) b!175175))

(declare-fun m!174773 () Bool)

(assert (=> b!175174 m!174773))

(declare-fun m!174775 () Bool)

(assert (=> b!175175 m!174775))

(assert (=> b!174252 d!44409))

(declare-fun d!44411 () Bool)

(assert (=> d!44411 (= (get!811 lt!56168) (v!13783 lt!56168))))

(assert (=> b!174699 d!44411))

(declare-fun d!44413 () Bool)

(declare-fun dynLambda!1138 (Int BalanceConc!1760) TokenValue!549)

(assert (=> d!44413 (= (apply!432 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))) (seqFromList!432 (originalCharacters!570 (_1!1648 (get!811 lt!56168))))) (dynLambda!1138 (toValue!1194 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168))))) (seqFromList!432 (originalCharacters!570 (_1!1648 (get!811 lt!56168))))))))

(declare-fun b_lambda!4091 () Bool)

(assert (=> (not b_lambda!4091) (not d!44413)))

(declare-fun tb!7163 () Bool)

(declare-fun t!27691 () Bool)

(assert (=> (and b!174759 (= (toValue!1194 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toValue!1194 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))) t!27691) tb!7163))

(declare-fun result!9914 () Bool)

(assert (=> tb!7163 (= result!9914 (inv!21 (dynLambda!1138 (toValue!1194 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168))))) (seqFromList!432 (originalCharacters!570 (_1!1648 (get!811 lt!56168)))))))))

(declare-fun m!174777 () Bool)

(assert (=> tb!7163 m!174777))

(assert (=> d!44413 t!27691))

(declare-fun b_and!11727 () Bool)

(assert (= b_and!11689 (and (=> t!27691 result!9914) b_and!11727)))

(declare-fun tb!7165 () Bool)

(declare-fun t!27693 () Bool)

(assert (=> (and b!174005 (= (toValue!1194 (transformation!527 (h!8334 rules!1920))) (toValue!1194 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))) t!27693) tb!7165))

(declare-fun result!9918 () Bool)

(assert (= result!9918 result!9914))

(assert (=> d!44413 t!27693))

(declare-fun b_and!11729 () Bool)

(assert (= b_and!11625 (and (=> t!27693 result!9918) b_and!11729)))

(declare-fun tb!7167 () Bool)

(declare-fun t!27695 () Bool)

(assert (=> (and b!174015 (= (toValue!1194 (transformation!527 (rule!1038 separatorToken!170))) (toValue!1194 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))) t!27695) tb!7167))

(declare-fun result!9920 () Bool)

(assert (= result!9920 result!9914))

(assert (=> d!44413 t!27695))

(declare-fun b_and!11731 () Bool)

(assert (= b_and!11629 (and (=> t!27695 result!9920) b_and!11731)))

(declare-fun tb!7169 () Bool)

(declare-fun t!27697 () Bool)

(assert (=> (and b!174009 (= (toValue!1194 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toValue!1194 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))) t!27697) tb!7169))

(declare-fun result!9922 () Bool)

(assert (= result!9922 result!9914))

(assert (=> d!44413 t!27697))

(declare-fun b_and!11733 () Bool)

(assert (= b_and!11621 (and (=> t!27697 result!9922) b_and!11733)))

(declare-fun t!27699 () Bool)

(declare-fun tb!7171 () Bool)

(assert (=> (and b!174773 (= (toValue!1194 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toValue!1194 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))) t!27699) tb!7171))

(declare-fun result!9924 () Bool)

(assert (= result!9924 result!9914))

(assert (=> d!44413 t!27699))

(declare-fun b_and!11735 () Bool)

(assert (= b_and!11693 (and (=> t!27699 result!9924) b_and!11735)))

(assert (=> d!44413 m!173859))

(declare-fun m!174779 () Bool)

(assert (=> d!44413 m!174779))

(assert (=> b!174699 d!44413))

(declare-fun d!44415 () Bool)

(assert (=> d!44415 (= (seqFromList!432 (originalCharacters!570 (_1!1648 (get!811 lt!56168)))) (fromListB!171 (originalCharacters!570 (_1!1648 (get!811 lt!56168)))))))

(declare-fun bs!17283 () Bool)

(assert (= bs!17283 d!44415))

(declare-fun m!174781 () Bool)

(assert (=> bs!17283 m!174781))

(assert (=> b!174699 d!44415))

(assert (=> b!174236 d!44401))

(declare-fun d!44417 () Bool)

(declare-fun e!106257 () Bool)

(assert (=> d!44417 e!106257))

(declare-fun res!79168 () Bool)

(assert (=> d!44417 (=> (not res!79168) (not e!106257))))

(declare-fun lt!56422 () BalanceConc!1760)

(assert (=> d!44417 (= res!79168 (= (list!1073 lt!56422) lt!55823))))

(declare-fun fromList!114 (List!2946) Conc!876)

(assert (=> d!44417 (= lt!56422 (BalanceConc!1761 (fromList!114 lt!55823)))))

(assert (=> d!44417 (= (fromListB!171 lt!55823) lt!56422)))

(declare-fun b!175180 () Bool)

(declare-fun isBalanced!246 (Conc!876) Bool)

(assert (=> b!175180 (= e!106257 (isBalanced!246 (fromList!114 lt!55823)))))

(assert (= (and d!44417 res!79168) b!175180))

(declare-fun m!174783 () Bool)

(assert (=> d!44417 m!174783))

(declare-fun m!174785 () Bool)

(assert (=> d!44417 m!174785))

(assert (=> b!175180 m!174785))

(assert (=> b!175180 m!174785))

(declare-fun m!174787 () Bool)

(assert (=> b!175180 m!174787))

(assert (=> d!44039 d!44417))

(declare-fun d!44419 () Bool)

(declare-fun res!79169 () Bool)

(declare-fun e!106258 () Bool)

(assert (=> d!44419 (=> res!79169 e!106258)))

(assert (=> d!44419 (= res!79169 (not ((_ is Cons!2937) (t!27585 rules!1920))))))

(assert (=> d!44419 (= (sepAndNonSepRulesDisjointChars!116 rules!1920 (t!27585 rules!1920)) e!106258)))

(declare-fun b!175181 () Bool)

(declare-fun e!106259 () Bool)

(assert (=> b!175181 (= e!106258 e!106259)))

(declare-fun res!79170 () Bool)

(assert (=> b!175181 (=> (not res!79170) (not e!106259))))

(assert (=> b!175181 (= res!79170 (ruleDisjointCharsFromAllFromOtherType!42 (h!8334 (t!27585 rules!1920)) rules!1920))))

(declare-fun b!175182 () Bool)

(assert (=> b!175182 (= e!106259 (sepAndNonSepRulesDisjointChars!116 rules!1920 (t!27585 (t!27585 rules!1920))))))

(assert (= (and d!44419 (not res!79169)) b!175181))

(assert (= (and b!175181 res!79170) b!175182))

(declare-fun m!174789 () Bool)

(assert (=> b!175181 m!174789))

(declare-fun m!174791 () Bool)

(assert (=> b!175182 m!174791))

(assert (=> b!174261 d!44419))

(declare-fun e!106265 () List!2946)

(declare-fun b!175193 () Bool)

(declare-fun list!1081 (IArray!1753) List!2946)

(assert (=> b!175193 (= e!106265 (list!1081 (xs!3471 (c!34379 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 (seqFromList!431 (t!27586 tokens!465)) separatorToken!170 0)))))))

(declare-fun b!175192 () Bool)

(declare-fun e!106264 () List!2946)

(assert (=> b!175192 (= e!106264 e!106265)))

(declare-fun c!34620 () Bool)

(assert (=> b!175192 (= c!34620 ((_ is Leaf!1479) (c!34379 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 (seqFromList!431 (t!27586 tokens!465)) separatorToken!170 0))))))

(declare-fun b!175191 () Bool)

(assert (=> b!175191 (= e!106264 Nil!2936)))

(declare-fun b!175194 () Bool)

(assert (=> b!175194 (= e!106265 (++!680 (list!1076 (left!2250 (c!34379 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 (seqFromList!431 (t!27586 tokens!465)) separatorToken!170 0)))) (list!1076 (right!2580 (c!34379 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 (seqFromList!431 (t!27586 tokens!465)) separatorToken!170 0))))))))

(declare-fun c!34619 () Bool)

(declare-fun d!44421 () Bool)

(assert (=> d!44421 (= c!34619 ((_ is Empty!876) (c!34379 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 (seqFromList!431 (t!27586 tokens!465)) separatorToken!170 0))))))

(assert (=> d!44421 (= (list!1076 (c!34379 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 (seqFromList!431 (t!27586 tokens!465)) separatorToken!170 0))) e!106264)))

(assert (= (and d!44421 c!34619) b!175191))

(assert (= (and d!44421 (not c!34619)) b!175192))

(assert (= (and b!175192 c!34620) b!175193))

(assert (= (and b!175192 (not c!34620)) b!175194))

(declare-fun m!174793 () Bool)

(assert (=> b!175193 m!174793))

(declare-fun m!174795 () Bool)

(assert (=> b!175194 m!174795))

(declare-fun m!174797 () Bool)

(assert (=> b!175194 m!174797))

(assert (=> b!175194 m!174795))

(assert (=> b!175194 m!174797))

(declare-fun m!174799 () Bool)

(assert (=> b!175194 m!174799))

(assert (=> d!44097 d!44421))

(assert (=> b!174197 d!44317))

(assert (=> b!174197 d!44155))

(declare-fun d!44423 () Bool)

(declare-fun lt!56427 () BalanceConc!1760)

(assert (=> d!44423 (= (list!1073 lt!56427) (printListTailRec!60 thiss!17480 (dropList!92 (singletonSeq!79 (h!8335 tokens!465)) 0) (list!1073 (BalanceConc!1761 Empty!876))))))

(declare-fun e!106267 () BalanceConc!1760)

(assert (=> d!44423 (= lt!56427 e!106267)))

(declare-fun c!34621 () Bool)

(assert (=> d!44423 (= c!34621 (>= 0 (size!2432 (singletonSeq!79 (h!8335 tokens!465)))))))

(declare-fun e!106266 () Bool)

(assert (=> d!44423 e!106266))

(declare-fun res!79171 () Bool)

(assert (=> d!44423 (=> (not res!79171) (not e!106266))))

(assert (=> d!44423 (= res!79171 (>= 0 0))))

(assert (=> d!44423 (= (printTailRec!107 thiss!17480 (singletonSeq!79 (h!8335 tokens!465)) 0 (BalanceConc!1761 Empty!876)) lt!56427)))

(declare-fun b!175195 () Bool)

(assert (=> b!175195 (= e!106266 (<= 0 (size!2432 (singletonSeq!79 (h!8335 tokens!465)))))))

(declare-fun b!175196 () Bool)

(assert (=> b!175196 (= e!106267 (BalanceConc!1761 Empty!876))))

(declare-fun b!175197 () Bool)

(assert (=> b!175197 (= e!106267 (printTailRec!107 thiss!17480 (singletonSeq!79 (h!8335 tokens!465)) (+ 0 1) (++!682 (BalanceConc!1761 Empty!876) (charsOf!182 (apply!429 (singletonSeq!79 (h!8335 tokens!465)) 0)))))))

(declare-fun lt!56429 () List!2948)

(assert (=> b!175197 (= lt!56429 (list!1077 (singletonSeq!79 (h!8335 tokens!465))))))

(declare-fun lt!56424 () Unit!2616)

(assert (=> b!175197 (= lt!56424 (lemmaDropApply!132 lt!56429 0))))

(assert (=> b!175197 (= (head!608 (drop!145 lt!56429 0)) (apply!430 lt!56429 0))))

(declare-fun lt!56428 () Unit!2616)

(assert (=> b!175197 (= lt!56428 lt!56424)))

(declare-fun lt!56426 () List!2948)

(assert (=> b!175197 (= lt!56426 (list!1077 (singletonSeq!79 (h!8335 tokens!465))))))

(declare-fun lt!56423 () Unit!2616)

(assert (=> b!175197 (= lt!56423 (lemmaDropTail!124 lt!56426 0))))

(assert (=> b!175197 (= (tail!348 (drop!145 lt!56426 0)) (drop!145 lt!56426 (+ 0 1)))))

(declare-fun lt!56425 () Unit!2616)

(assert (=> b!175197 (= lt!56425 lt!56423)))

(assert (= (and d!44423 res!79171) b!175195))

(assert (= (and d!44423 c!34621) b!175196))

(assert (= (and d!44423 (not c!34621)) b!175197))

(declare-fun m!174801 () Bool)

(assert (=> d!44423 m!174801))

(assert (=> d!44423 m!173897))

(assert (=> d!44423 m!172839))

(declare-fun m!174803 () Bool)

(assert (=> d!44423 m!174803))

(assert (=> d!44423 m!174803))

(assert (=> d!44423 m!173897))

(declare-fun m!174805 () Bool)

(assert (=> d!44423 m!174805))

(assert (=> d!44423 m!172839))

(declare-fun m!174807 () Bool)

(assert (=> d!44423 m!174807))

(assert (=> b!175195 m!172839))

(assert (=> b!175195 m!174807))

(declare-fun m!174809 () Bool)

(assert (=> b!175197 m!174809))

(declare-fun m!174811 () Bool)

(assert (=> b!175197 m!174811))

(declare-fun m!174813 () Bool)

(assert (=> b!175197 m!174813))

(declare-fun m!174815 () Bool)

(assert (=> b!175197 m!174815))

(declare-fun m!174817 () Bool)

(assert (=> b!175197 m!174817))

(declare-fun m!174819 () Bool)

(assert (=> b!175197 m!174819))

(declare-fun m!174821 () Bool)

(assert (=> b!175197 m!174821))

(declare-fun m!174823 () Bool)

(assert (=> b!175197 m!174823))

(declare-fun m!174825 () Bool)

(assert (=> b!175197 m!174825))

(assert (=> b!175197 m!172839))

(assert (=> b!175197 m!174821))

(declare-fun m!174827 () Bool)

(assert (=> b!175197 m!174827))

(declare-fun m!174829 () Bool)

(assert (=> b!175197 m!174829))

(assert (=> b!175197 m!174819))

(assert (=> b!175197 m!172839))

(assert (=> b!175197 m!173611))

(assert (=> b!175197 m!172839))

(assert (=> b!175197 m!174829))

(assert (=> b!175197 m!174809))

(assert (=> b!175197 m!174825))

(declare-fun m!174831 () Bool)

(assert (=> b!175197 m!174831))

(assert (=> b!174197 d!44423))

(declare-fun b!175265 () Bool)

(declare-fun e!106307 () Unit!2616)

(declare-fun Unit!2636 () Unit!2616)

(assert (=> b!175265 (= e!106307 Unit!2636)))

(declare-fun b!175262 () Bool)

(declare-fun res!79187 () Bool)

(declare-fun e!106308 () Bool)

(assert (=> b!175262 (=> (not res!79187) (not e!106308))))

(declare-fun lt!56591 () Token!798)

(declare-datatypes ((Option!332 0))(
  ( (None!331) (Some!331 (v!13794 Rule!854)) )
))
(declare-fun get!814 (Option!332) Rule!854)

(declare-fun getRuleFromTag!25 (LexerInterface!413 List!2947 String!3825) Option!332)

(assert (=> b!175262 (= res!79187 (matchR!89 (regex!527 (get!814 (getRuleFromTag!25 thiss!17480 rules!1920 (tag!705 (rule!1038 lt!56591))))) (list!1073 (charsOf!182 lt!56591))))))

(declare-fun b!175264 () Bool)

(declare-fun Unit!2638 () Unit!2616)

(assert (=> b!175264 (= e!106307 Unit!2638)))

(declare-fun lt!56590 () List!2946)

(assert (=> b!175264 (= lt!56590 (++!680 call!7740 lt!55963))))

(declare-fun lt!56597 () Unit!2616)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!25 (LexerInterface!413 Rule!854 List!2947 List!2946) Unit!2616)

(assert (=> b!175264 (= lt!56597 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!25 thiss!17480 (rule!1038 lt!56591) rules!1920 lt!56590))))

(assert (=> b!175264 (isEmpty!1282 (maxPrefixOneRule!75 thiss!17480 (rule!1038 lt!56591) lt!56590))))

(declare-fun lt!56585 () Unit!2616)

(assert (=> b!175264 (= lt!56585 lt!56597)))

(declare-fun lt!56586 () List!2946)

(assert (=> b!175264 (= lt!56586 (list!1073 (charsOf!182 lt!56591)))))

(declare-fun lt!56599 () Unit!2616)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!25 (LexerInterface!413 Rule!854 List!2946 List!2946) Unit!2616)

(assert (=> b!175264 (= lt!56599 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!25 thiss!17480 (rule!1038 lt!56591) lt!56586 (++!680 call!7740 lt!55963)))))

(assert (=> b!175264 (not (matchR!89 (regex!527 (rule!1038 lt!56591)) lt!56586))))

(declare-fun lt!56589 () Unit!2616)

(assert (=> b!175264 (= lt!56589 lt!56599)))

(assert (=> b!175264 false))

(declare-fun b!175263 () Bool)

(assert (=> b!175263 (= e!106308 (= (rule!1038 lt!56591) (get!814 (getRuleFromTag!25 thiss!17480 rules!1920 (tag!705 (rule!1038 lt!56591))))))))

(declare-fun d!44425 () Bool)

(assert (=> d!44425 (isDefined!182 (maxPrefix!143 thiss!17480 rules!1920 (++!680 call!7740 lt!55963)))))

(declare-fun lt!56592 () Unit!2616)

(assert (=> d!44425 (= lt!56592 e!106307)))

(declare-fun c!34645 () Bool)

(assert (=> d!44425 (= c!34645 (isEmpty!1282 (maxPrefix!143 thiss!17480 rules!1920 (++!680 call!7740 lt!55963))))))

(declare-fun lt!56593 () Unit!2616)

(declare-fun lt!56587 () Unit!2616)

(assert (=> d!44425 (= lt!56593 lt!56587)))

(assert (=> d!44425 e!106308))

(declare-fun res!79186 () Bool)

(assert (=> d!44425 (=> (not res!79186) (not e!106308))))

(declare-fun isDefined!183 (Option!332) Bool)

(assert (=> d!44425 (= res!79186 (isDefined!183 (getRuleFromTag!25 thiss!17480 rules!1920 (tag!705 (rule!1038 lt!56591)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!25 (LexerInterface!413 List!2947 List!2946 Token!798) Unit!2616)

(assert (=> d!44425 (= lt!56587 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!25 thiss!17480 rules!1920 call!7740 lt!56591))))

(declare-fun lt!56598 () Unit!2616)

(declare-fun lt!56601 () Unit!2616)

(assert (=> d!44425 (= lt!56598 lt!56601)))

(declare-fun lt!56594 () List!2946)

(assert (=> d!44425 (isPrefix!232 lt!56594 (++!680 call!7740 lt!55963))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!25 (List!2946 List!2946 List!2946) Unit!2616)

(assert (=> d!44425 (= lt!56601 (lemmaPrefixStaysPrefixWhenAddingToSuffix!25 lt!56594 call!7740 lt!55963))))

(assert (=> d!44425 (= lt!56594 (list!1073 (charsOf!182 lt!56591)))))

(declare-fun lt!56595 () Unit!2616)

(declare-fun lt!56596 () Unit!2616)

(assert (=> d!44425 (= lt!56595 lt!56596)))

(declare-fun lt!56588 () List!2946)

(declare-fun lt!56600 () List!2946)

(assert (=> d!44425 (isPrefix!232 lt!56588 (++!680 lt!56588 lt!56600))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!129 (List!2946 List!2946) Unit!2616)

(assert (=> d!44425 (= lt!56596 (lemmaConcatTwoListThenFirstIsPrefix!129 lt!56588 lt!56600))))

(assert (=> d!44425 (= lt!56600 (_2!1648 (get!811 (maxPrefix!143 thiss!17480 rules!1920 call!7740))))))

(assert (=> d!44425 (= lt!56588 (list!1073 (charsOf!182 lt!56591)))))

(assert (=> d!44425 (= lt!56591 (head!608 (list!1077 (_1!1647 (lex!213 thiss!17480 rules!1920 (seqFromList!432 call!7740))))))))

(assert (=> d!44425 (not (isEmpty!1272 rules!1920))))

(assert (=> d!44425 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!40 thiss!17480 rules!1920 call!7740 lt!55963) lt!56592)))

(assert (= (and d!44425 res!79186) b!175262))

(assert (= (and b!175262 res!79187) b!175263))

(assert (= (and d!44425 c!34645) b!175264))

(assert (= (and d!44425 (not c!34645)) b!175265))

(declare-fun m!175025 () Bool)

(assert (=> b!175262 m!175025))

(declare-fun m!175033 () Bool)

(assert (=> b!175262 m!175033))

(declare-fun m!175035 () Bool)

(assert (=> b!175262 m!175035))

(declare-fun m!175037 () Bool)

(assert (=> b!175262 m!175037))

(assert (=> b!175262 m!175033))

(assert (=> b!175262 m!175025))

(declare-fun m!175039 () Bool)

(assert (=> b!175262 m!175039))

(assert (=> b!175262 m!175037))

(declare-fun m!175041 () Bool)

(assert (=> b!175264 m!175041))

(declare-fun m!175043 () Bool)

(assert (=> b!175264 m!175043))

(assert (=> b!175264 m!175037))

(assert (=> b!175264 m!175033))

(declare-fun m!175045 () Bool)

(assert (=> b!175264 m!175045))

(assert (=> b!175264 m!175037))

(declare-fun m!175047 () Bool)

(assert (=> b!175264 m!175047))

(declare-fun m!175049 () Bool)

(assert (=> b!175264 m!175049))

(assert (=> b!175264 m!175047))

(assert (=> b!175264 m!175043))

(declare-fun m!175051 () Bool)

(assert (=> b!175264 m!175051))

(assert (=> b!175263 m!175025))

(assert (=> b!175263 m!175025))

(assert (=> b!175263 m!175039))

(assert (=> d!44425 m!175025))

(declare-fun m!175053 () Bool)

(assert (=> d!44425 m!175053))

(declare-fun m!175055 () Bool)

(assert (=> d!44425 m!175055))

(declare-fun m!175057 () Bool)

(assert (=> d!44425 m!175057))

(declare-fun m!175059 () Bool)

(assert (=> d!44425 m!175059))

(declare-fun m!175061 () Bool)

(assert (=> d!44425 m!175061))

(declare-fun m!175063 () Bool)

(assert (=> d!44425 m!175063))

(assert (=> d!44425 m!175043))

(declare-fun m!175065 () Bool)

(assert (=> d!44425 m!175065))

(assert (=> d!44425 m!175055))

(declare-fun m!175067 () Bool)

(assert (=> d!44425 m!175067))

(assert (=> d!44425 m!175059))

(declare-fun m!175069 () Bool)

(assert (=> d!44425 m!175069))

(declare-fun m!175073 () Bool)

(assert (=> d!44425 m!175073))

(declare-fun m!175075 () Bool)

(assert (=> d!44425 m!175075))

(assert (=> d!44425 m!175037))

(assert (=> d!44425 m!175053))

(declare-fun m!175079 () Bool)

(assert (=> d!44425 m!175079))

(assert (=> d!44425 m!175025))

(declare-fun m!175085 () Bool)

(assert (=> d!44425 m!175085))

(assert (=> d!44425 m!172843))

(declare-fun m!175089 () Bool)

(assert (=> d!44425 m!175089))

(assert (=> d!44425 m!175043))

(assert (=> d!44425 m!175075))

(declare-fun m!175093 () Bool)

(assert (=> d!44425 m!175093))

(assert (=> d!44425 m!175037))

(assert (=> d!44425 m!175033))

(assert (=> d!44425 m!175043))

(assert (=> d!44425 m!175055))

(assert (=> d!44425 m!175061))

(declare-fun m!175097 () Bool)

(assert (=> d!44425 m!175097))

(assert (=> b!174197 d!44425))

(declare-fun d!44451 () Bool)

(assert (=> d!44451 (= (list!1073 (_2!1647 lt!56071)) (list!1076 (c!34379 (_2!1647 lt!56071))))))

(declare-fun bs!17308 () Bool)

(assert (= bs!17308 d!44451))

(declare-fun m!175103 () Bool)

(assert (=> bs!17308 m!175103))

(assert (=> b!174396 d!44451))

(declare-fun d!44455 () Bool)

(declare-fun e!106339 () Bool)

(assert (=> d!44455 e!106339))

(declare-fun c!34658 () Bool)

(declare-fun lt!56627 () tuple2!2870)

(assert (=> d!44455 (= c!34658 (> (size!2437 (_1!1651 lt!56627)) 0))))

(declare-fun e!106337 () tuple2!2870)

(assert (=> d!44455 (= lt!56627 e!106337)))

(declare-fun c!34657 () Bool)

(declare-fun lt!56628 () Option!331)

(assert (=> d!44455 (= c!34657 ((_ is Some!330) lt!56628))))

(assert (=> d!44455 (= lt!56628 (maxPrefix!143 thiss!17480 rules!1920 (list!1073 (seqFromList!432 lt!55823))))))

(assert (=> d!44455 (= (lexList!117 thiss!17480 rules!1920 (list!1073 (seqFromList!432 lt!55823))) lt!56627)))

(declare-fun b!175309 () Bool)

(assert (=> b!175309 (= e!106339 (= (_2!1651 lt!56627) (list!1073 (seqFromList!432 lt!55823))))))

(declare-fun b!175310 () Bool)

(assert (=> b!175310 (= e!106337 (tuple2!2871 Nil!2938 (list!1073 (seqFromList!432 lt!55823))))))

(declare-fun b!175311 () Bool)

(declare-fun lt!56629 () tuple2!2870)

(assert (=> b!175311 (= e!106337 (tuple2!2871 (Cons!2938 (_1!1648 (v!13783 lt!56628)) (_1!1651 lt!56629)) (_2!1651 lt!56629)))))

(assert (=> b!175311 (= lt!56629 (lexList!117 thiss!17480 rules!1920 (_2!1648 (v!13783 lt!56628))))))

(declare-fun b!175312 () Bool)

(declare-fun e!106338 () Bool)

(assert (=> b!175312 (= e!106339 e!106338)))

(declare-fun res!79206 () Bool)

(assert (=> b!175312 (= res!79206 (< (size!2431 (_2!1651 lt!56627)) (size!2431 (list!1073 (seqFromList!432 lt!55823)))))))

(assert (=> b!175312 (=> (not res!79206) (not e!106338))))

(declare-fun b!175313 () Bool)

(assert (=> b!175313 (= e!106338 (not (isEmpty!1279 (_1!1651 lt!56627))))))

(assert (= (and d!44455 c!34657) b!175311))

(assert (= (and d!44455 (not c!34657)) b!175310))

(assert (= (and d!44455 c!34658) b!175312))

(assert (= (and d!44455 (not c!34658)) b!175309))

(assert (= (and b!175312 res!79206) b!175313))

(declare-fun m!175183 () Bool)

(assert (=> d!44455 m!175183))

(assert (=> d!44455 m!173427))

(declare-fun m!175185 () Bool)

(assert (=> d!44455 m!175185))

(declare-fun m!175187 () Bool)

(assert (=> b!175311 m!175187))

(declare-fun m!175189 () Bool)

(assert (=> b!175312 m!175189))

(assert (=> b!175312 m!173427))

(declare-fun m!175191 () Bool)

(assert (=> b!175312 m!175191))

(declare-fun m!175193 () Bool)

(assert (=> b!175313 m!175193))

(assert (=> b!174396 d!44455))

(declare-fun d!44469 () Bool)

(assert (=> d!44469 (= (list!1073 (seqFromList!432 lt!55823)) (list!1076 (c!34379 (seqFromList!432 lt!55823))))))

(declare-fun bs!17323 () Bool)

(assert (= bs!17323 d!44469))

(declare-fun m!175195 () Bool)

(assert (=> bs!17323 m!175195))

(assert (=> b!174396 d!44469))

(declare-fun lt!56630 () Bool)

(declare-fun d!44471 () Bool)

(assert (=> d!44471 (= lt!56630 (isEmpty!1271 (list!1073 (_2!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465))))))))))

(assert (=> d!44471 (= lt!56630 (isEmpty!1284 (c!34379 (_2!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465))))))))))

(assert (=> d!44471 (= (isEmpty!1281 (_2!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 (h!8335 tokens!465)))))) lt!56630)))

(declare-fun bs!17324 () Bool)

(assert (= bs!17324 d!44471))

(declare-fun m!175197 () Bool)

(assert (=> bs!17324 m!175197))

(assert (=> bs!17324 m!175197))

(declare-fun m!175199 () Bool)

(assert (=> bs!17324 m!175199))

(declare-fun m!175201 () Bool)

(assert (=> bs!17324 m!175201))

(assert (=> b!174511 d!44471))

(assert (=> b!174511 d!44313))

(assert (=> b!174511 d!44317))

(assert (=> b!174511 d!44155))

(declare-fun d!44473 () Bool)

(assert (=> d!44473 (= (inv!3770 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465)))) (isBalanced!246 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465))))))))

(declare-fun bs!17325 () Bool)

(assert (= bs!17325 d!44473))

(declare-fun m!175203 () Bool)

(assert (=> bs!17325 m!175203))

(assert (=> tb!7093 d!44473))

(declare-fun d!44475 () Bool)

(declare-fun e!106340 () Bool)

(assert (=> d!44475 e!106340))

(declare-fun res!79208 () Bool)

(assert (=> d!44475 (=> (not res!79208) (not e!106340))))

(declare-fun lt!56631 () List!2946)

(assert (=> d!44475 (= res!79208 (= (content!407 lt!56631) ((_ map or) (content!407 (t!27584 lt!55823)) (content!407 lt!55824))))))

(declare-fun e!106341 () List!2946)

(assert (=> d!44475 (= lt!56631 e!106341)))

(declare-fun c!34659 () Bool)

(assert (=> d!44475 (= c!34659 ((_ is Nil!2936) (t!27584 lt!55823)))))

(assert (=> d!44475 (= (++!680 (t!27584 lt!55823) lt!55824) lt!56631)))

(declare-fun b!175317 () Bool)

(assert (=> b!175317 (= e!106340 (or (not (= lt!55824 Nil!2936)) (= lt!56631 (t!27584 lt!55823))))))

(declare-fun b!175316 () Bool)

(declare-fun res!79207 () Bool)

(assert (=> b!175316 (=> (not res!79207) (not e!106340))))

(assert (=> b!175316 (= res!79207 (= (size!2431 lt!56631) (+ (size!2431 (t!27584 lt!55823)) (size!2431 lt!55824))))))

(declare-fun b!175314 () Bool)

(assert (=> b!175314 (= e!106341 lt!55824)))

(declare-fun b!175315 () Bool)

(assert (=> b!175315 (= e!106341 (Cons!2936 (h!8333 (t!27584 lt!55823)) (++!680 (t!27584 (t!27584 lt!55823)) lt!55824)))))

(assert (= (and d!44475 c!34659) b!175314))

(assert (= (and d!44475 (not c!34659)) b!175315))

(assert (= (and d!44475 res!79208) b!175316))

(assert (= (and b!175316 res!79207) b!175317))

(declare-fun m!175205 () Bool)

(assert (=> d!44475 m!175205))

(declare-fun m!175207 () Bool)

(assert (=> d!44475 m!175207))

(assert (=> d!44475 m!172913))

(declare-fun m!175209 () Bool)

(assert (=> b!175316 m!175209))

(declare-fun m!175211 () Bool)

(assert (=> b!175316 m!175211))

(assert (=> b!175316 m!172919))

(declare-fun m!175213 () Bool)

(assert (=> b!175315 m!175213))

(assert (=> b!174044 d!44475))

(declare-fun b!175318 () Bool)

(declare-fun e!106345 () Option!330)

(declare-fun call!7802 () Option!330)

(assert (=> b!175318 (= e!106345 call!7802)))

(declare-fun d!44477 () Bool)

(declare-fun e!106346 () Bool)

(assert (=> d!44477 e!106346))

(declare-fun res!79211 () Bool)

(assert (=> d!44477 (=> (not res!79211) (not e!106346))))

(declare-fun lt!56632 () Option!330)

(assert (=> d!44477 (= res!79211 (= (isDefined!181 lt!56632) (isDefined!182 (maxPrefixZipper!44 thiss!17480 (t!27585 rules!1920) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))))))))

(assert (=> d!44477 (= lt!56632 e!106345)))

(declare-fun c!34660 () Bool)

(assert (=> d!44477 (= c!34660 (and ((_ is Cons!2937) (t!27585 rules!1920)) ((_ is Nil!2937) (t!27585 (t!27585 rules!1920)))))))

(declare-fun lt!56636 () Unit!2616)

(declare-fun lt!56634 () Unit!2616)

(assert (=> d!44477 (= lt!56636 lt!56634)))

(declare-fun lt!56635 () List!2946)

(declare-fun lt!56633 () List!2946)

(assert (=> d!44477 (isPrefix!232 lt!56635 lt!56633)))

(assert (=> d!44477 (= lt!56634 (lemmaIsPrefixRefl!140 lt!56635 lt!56633))))

(assert (=> d!44477 (= lt!56633 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))

(assert (=> d!44477 (= lt!56635 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))

(assert (=> d!44477 (rulesValidInductive!126 thiss!17480 (t!27585 rules!1920))))

(assert (=> d!44477 (= (maxPrefixZipperSequence!106 thiss!17480 (t!27585 rules!1920) (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))) lt!56632)))

(declare-fun e!106343 () Bool)

(declare-fun b!175319 () Bool)

(assert (=> b!175319 (= e!106343 (= (list!1073 (_2!1649 (get!812 lt!56632))) (_2!1648 (get!811 (maxPrefix!143 thiss!17480 (t!27585 rules!1920) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))))

(declare-fun b!175320 () Bool)

(declare-fun res!79214 () Bool)

(assert (=> b!175320 (=> (not res!79214) (not e!106346))))

(declare-fun e!106347 () Bool)

(assert (=> b!175320 (= res!79214 e!106347)))

(declare-fun res!79209 () Bool)

(assert (=> b!175320 (=> res!79209 e!106347)))

(assert (=> b!175320 (= res!79209 (not (isDefined!181 lt!56632)))))

(declare-fun b!175321 () Bool)

(declare-fun lt!56638 () Option!330)

(declare-fun lt!56637 () Option!330)

(assert (=> b!175321 (= e!106345 (ite (and ((_ is None!329) lt!56638) ((_ is None!329) lt!56637)) None!329 (ite ((_ is None!329) lt!56637) lt!56638 (ite ((_ is None!329) lt!56638) lt!56637 (ite (>= (size!2427 (_1!1649 (v!13782 lt!56638))) (size!2427 (_1!1649 (v!13782 lt!56637)))) lt!56638 lt!56637)))))))

(assert (=> b!175321 (= lt!56638 call!7802)))

(assert (=> b!175321 (= lt!56637 (maxPrefixZipperSequence!106 thiss!17480 (t!27585 (t!27585 rules!1920)) (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))

(declare-fun bm!7797 () Bool)

(assert (=> bm!7797 (= call!7802 (maxPrefixOneRuleZipperSequence!45 thiss!17480 (h!8334 (t!27585 rules!1920)) (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))

(declare-fun b!175322 () Bool)

(declare-fun e!106344 () Bool)

(assert (=> b!175322 (= e!106347 e!106344)))

(declare-fun res!79210 () Bool)

(assert (=> b!175322 (=> (not res!79210) (not e!106344))))

(assert (=> b!175322 (= res!79210 (= (_1!1649 (get!812 lt!56632)) (_1!1648 (get!811 (maxPrefixZipper!44 thiss!17480 (t!27585 rules!1920) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))))

(declare-fun b!175323 () Bool)

(declare-fun e!106342 () Bool)

(assert (=> b!175323 (= e!106342 e!106343)))

(declare-fun res!79212 () Bool)

(assert (=> b!175323 (=> (not res!79212) (not e!106343))))

(assert (=> b!175323 (= res!79212 (= (_1!1649 (get!812 lt!56632)) (_1!1648 (get!811 (maxPrefix!143 thiss!17480 (t!27585 rules!1920) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))))

(declare-fun b!175324 () Bool)

(assert (=> b!175324 (= e!106346 e!106342)))

(declare-fun res!79213 () Bool)

(assert (=> b!175324 (=> res!79213 e!106342)))

(assert (=> b!175324 (= res!79213 (not (isDefined!181 lt!56632)))))

(declare-fun b!175325 () Bool)

(assert (=> b!175325 (= e!106344 (= (list!1073 (_2!1649 (get!812 lt!56632))) (_2!1648 (get!811 (maxPrefixZipper!44 thiss!17480 (t!27585 rules!1920) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))))

(assert (= (and d!44477 c!34660) b!175318))

(assert (= (and d!44477 (not c!34660)) b!175321))

(assert (= (or b!175318 b!175321) bm!7797))

(assert (= (and d!44477 res!79211) b!175320))

(assert (= (and b!175320 (not res!79209)) b!175322))

(assert (= (and b!175322 res!79210) b!175325))

(assert (= (and b!175320 res!79214) b!175324))

(assert (= (and b!175324 (not res!79213)) b!175323))

(assert (= (and b!175323 res!79212) b!175319))

(assert (=> bm!7797 m!172805))

(declare-fun m!175215 () Bool)

(assert (=> bm!7797 m!175215))

(assert (=> d!44477 m!172805))

(assert (=> d!44477 m!173145))

(declare-fun m!175217 () Bool)

(assert (=> d!44477 m!175217))

(declare-fun m!175219 () Bool)

(assert (=> d!44477 m!175219))

(declare-fun m!175221 () Bool)

(assert (=> d!44477 m!175221))

(declare-fun m!175223 () Bool)

(assert (=> d!44477 m!175223))

(declare-fun m!175225 () Bool)

(assert (=> d!44477 m!175225))

(assert (=> d!44477 m!173145))

(assert (=> d!44477 m!175219))

(declare-fun m!175227 () Bool)

(assert (=> d!44477 m!175227))

(assert (=> b!175324 m!175217))

(declare-fun m!175229 () Bool)

(assert (=> b!175319 m!175229))

(assert (=> b!175319 m!172805))

(assert (=> b!175319 m!173145))

(assert (=> b!175319 m!173145))

(declare-fun m!175231 () Bool)

(assert (=> b!175319 m!175231))

(declare-fun m!175233 () Bool)

(assert (=> b!175319 m!175233))

(assert (=> b!175319 m!175231))

(declare-fun m!175235 () Bool)

(assert (=> b!175319 m!175235))

(assert (=> b!175322 m!175229))

(assert (=> b!175322 m!172805))

(assert (=> b!175322 m!173145))

(assert (=> b!175322 m!173145))

(assert (=> b!175322 m!175219))

(assert (=> b!175322 m!175219))

(declare-fun m!175237 () Bool)

(assert (=> b!175322 m!175237))

(assert (=> b!175325 m!175229))

(assert (=> b!175325 m!172805))

(assert (=> b!175325 m!173145))

(assert (=> b!175325 m!173145))

(assert (=> b!175325 m!175219))

(assert (=> b!175325 m!175219))

(assert (=> b!175325 m!175237))

(assert (=> b!175325 m!175233))

(assert (=> b!175320 m!175217))

(assert (=> b!175321 m!172805))

(declare-fun m!175239 () Bool)

(assert (=> b!175321 m!175239))

(assert (=> b!175323 m!175229))

(assert (=> b!175323 m!172805))

(assert (=> b!175323 m!173145))

(assert (=> b!175323 m!173145))

(assert (=> b!175323 m!175231))

(assert (=> b!175323 m!175231))

(assert (=> b!175323 m!175235))

(assert (=> b!174233 d!44477))

(declare-fun d!44479 () Bool)

(declare-fun res!79215 () Bool)

(declare-fun e!106348 () Bool)

(assert (=> d!44479 (=> (not res!79215) (not e!106348))))

(assert (=> d!44479 (= res!79215 (not (isEmpty!1271 (originalCharacters!570 (h!8335 (t!27586 tokens!465))))))))

(assert (=> d!44479 (= (inv!3767 (h!8335 (t!27586 tokens!465))) e!106348)))

(declare-fun b!175326 () Bool)

(declare-fun res!79216 () Bool)

(assert (=> b!175326 (=> (not res!79216) (not e!106348))))

(assert (=> b!175326 (= res!79216 (= (originalCharacters!570 (h!8335 (t!27586 tokens!465))) (list!1073 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (value!19335 (h!8335 (t!27586 tokens!465)))))))))

(declare-fun b!175327 () Bool)

(assert (=> b!175327 (= e!106348 (= (size!2427 (h!8335 (t!27586 tokens!465))) (size!2431 (originalCharacters!570 (h!8335 (t!27586 tokens!465))))))))

(assert (= (and d!44479 res!79215) b!175326))

(assert (= (and b!175326 res!79216) b!175327))

(declare-fun b_lambda!4097 () Bool)

(assert (=> (not b_lambda!4097) (not b!175326)))

(declare-fun t!27712 () Bool)

(declare-fun tb!7183 () Bool)

(assert (=> (and b!174009 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465)))))) t!27712) tb!7183))

(declare-fun b!175328 () Bool)

(declare-fun e!106349 () Bool)

(declare-fun tp!85014 () Bool)

(assert (=> b!175328 (= e!106349 (and (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (value!19335 (h!8335 (t!27586 tokens!465)))))) tp!85014))))

(declare-fun result!9936 () Bool)

(assert (=> tb!7183 (= result!9936 (and (inv!3770 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (value!19335 (h!8335 (t!27586 tokens!465))))) e!106349))))

(assert (= tb!7183 b!175328))

(declare-fun m!175241 () Bool)

(assert (=> b!175328 m!175241))

(declare-fun m!175243 () Bool)

(assert (=> tb!7183 m!175243))

(assert (=> b!175326 t!27712))

(declare-fun b_and!11747 () Bool)

(assert (= b_and!11679 (and (=> t!27712 result!9936) b_and!11747)))

(declare-fun t!27714 () Bool)

(declare-fun tb!7185 () Bool)

(assert (=> (and b!174773 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465)))))) t!27714) tb!7185))

(declare-fun result!9938 () Bool)

(assert (= result!9938 result!9936))

(assert (=> b!175326 t!27714))

(declare-fun b_and!11749 () Bool)

(assert (= b_and!11695 (and (=> t!27714 result!9938) b_and!11749)))

(declare-fun tb!7187 () Bool)

(declare-fun t!27716 () Bool)

(assert (=> (and b!174005 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465)))))) t!27716) tb!7187))

(declare-fun result!9940 () Bool)

(assert (= result!9940 result!9936))

(assert (=> b!175326 t!27716))

(declare-fun b_and!11751 () Bool)

(assert (= b_and!11681 (and (=> t!27716 result!9940) b_and!11751)))

(declare-fun t!27718 () Bool)

(declare-fun tb!7189 () Bool)

(assert (=> (and b!174759 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465)))))) t!27718) tb!7189))

(declare-fun result!9942 () Bool)

(assert (= result!9942 result!9936))

(assert (=> b!175326 t!27718))

(declare-fun b_and!11753 () Bool)

(assert (= b_and!11691 (and (=> t!27718 result!9942) b_and!11753)))

(declare-fun t!27720 () Bool)

(declare-fun tb!7191 () Bool)

(assert (=> (and b!174015 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465)))))) t!27720) tb!7191))

(declare-fun result!9944 () Bool)

(assert (= result!9944 result!9936))

(assert (=> b!175326 t!27720))

(declare-fun b_and!11755 () Bool)

(assert (= b_and!11683 (and (=> t!27720 result!9944) b_and!11755)))

(declare-fun m!175245 () Bool)

(assert (=> d!44479 m!175245))

(declare-fun m!175247 () Bool)

(assert (=> b!175326 m!175247))

(assert (=> b!175326 m!175247))

(declare-fun m!175249 () Bool)

(assert (=> b!175326 m!175249))

(declare-fun m!175251 () Bool)

(assert (=> b!175327 m!175251))

(assert (=> b!174770 d!44479))

(declare-fun d!44481 () Bool)

(assert (=> d!44481 (= (isEmpty!1282 lt!56168) (not ((_ is Some!330) lt!56168)))))

(assert (=> d!44135 d!44481))

(declare-fun d!44483 () Bool)

(declare-fun e!106356 () Bool)

(assert (=> d!44483 e!106356))

(declare-fun res!79226 () Bool)

(assert (=> d!44483 (=> res!79226 e!106356)))

(declare-fun lt!56641 () Bool)

(assert (=> d!44483 (= res!79226 (not lt!56641))))

(declare-fun e!106358 () Bool)

(assert (=> d!44483 (= lt!56641 e!106358)))

(declare-fun res!79228 () Bool)

(assert (=> d!44483 (=> res!79228 e!106358)))

(assert (=> d!44483 (= res!79228 ((_ is Nil!2936) lt!55823))))

(assert (=> d!44483 (= (isPrefix!232 lt!55823 lt!55823) lt!56641)))

(declare-fun b!175340 () Bool)

(assert (=> b!175340 (= e!106356 (>= (size!2431 lt!55823) (size!2431 lt!55823)))))

(declare-fun b!175338 () Bool)

(declare-fun res!79227 () Bool)

(declare-fun e!106357 () Bool)

(assert (=> b!175338 (=> (not res!79227) (not e!106357))))

(assert (=> b!175338 (= res!79227 (= (head!609 lt!55823) (head!609 lt!55823)))))

(declare-fun b!175339 () Bool)

(assert (=> b!175339 (= e!106357 (isPrefix!232 (tail!349 lt!55823) (tail!349 lt!55823)))))

(declare-fun b!175337 () Bool)

(assert (=> b!175337 (= e!106358 e!106357)))

(declare-fun res!79225 () Bool)

(assert (=> b!175337 (=> (not res!79225) (not e!106357))))

(assert (=> b!175337 (= res!79225 (not ((_ is Nil!2936) lt!55823)))))

(assert (= (and d!44483 (not res!79228)) b!175337))

(assert (= (and b!175337 res!79225) b!175338))

(assert (= (and b!175338 res!79227) b!175339))

(assert (= (and d!44483 (not res!79226)) b!175340))

(assert (=> b!175340 m!172917))

(assert (=> b!175340 m!172917))

(assert (=> b!175338 m!173441))

(assert (=> b!175338 m!173441))

(assert (=> b!175339 m!173437))

(assert (=> b!175339 m!173437))

(assert (=> b!175339 m!173437))

(assert (=> b!175339 m!173437))

(declare-fun m!175253 () Bool)

(assert (=> b!175339 m!175253))

(assert (=> d!44135 d!44483))

(declare-fun d!44485 () Bool)

(assert (=> d!44485 (isPrefix!232 lt!55823 lt!55823)))

(declare-fun lt!56644 () Unit!2616)

(declare-fun choose!1854 (List!2946 List!2946) Unit!2616)

(assert (=> d!44485 (= lt!56644 (choose!1854 lt!55823 lt!55823))))

(assert (=> d!44485 (= (lemmaIsPrefixRefl!140 lt!55823 lt!55823) lt!56644)))

(declare-fun bs!17326 () Bool)

(assert (= bs!17326 d!44485))

(assert (=> bs!17326 m!173839))

(declare-fun m!175255 () Bool)

(assert (=> bs!17326 m!175255))

(assert (=> d!44135 d!44485))

(declare-fun d!44487 () Bool)

(assert (=> d!44487 true))

(declare-fun lt!56647 () Bool)

(declare-fun lambda!5070 () Int)

(declare-fun forall!587 (List!2947 Int) Bool)

(assert (=> d!44487 (= lt!56647 (forall!587 rules!1920 lambda!5070))))

(declare-fun e!106364 () Bool)

(assert (=> d!44487 (= lt!56647 e!106364)))

(declare-fun res!79233 () Bool)

(assert (=> d!44487 (=> res!79233 e!106364)))

(assert (=> d!44487 (= res!79233 (not ((_ is Cons!2937) rules!1920)))))

(assert (=> d!44487 (= (rulesValidInductive!126 thiss!17480 rules!1920) lt!56647)))

(declare-fun b!175345 () Bool)

(declare-fun e!106363 () Bool)

(assert (=> b!175345 (= e!106364 e!106363)))

(declare-fun res!79234 () Bool)

(assert (=> b!175345 (=> (not res!79234) (not e!106363))))

(assert (=> b!175345 (= res!79234 (ruleValid!60 thiss!17480 (h!8334 rules!1920)))))

(declare-fun b!175346 () Bool)

(assert (=> b!175346 (= e!106363 (rulesValidInductive!126 thiss!17480 (t!27585 rules!1920)))))

(assert (= (and d!44487 (not res!79233)) b!175345))

(assert (= (and b!175345 res!79234) b!175346))

(declare-fun m!175257 () Bool)

(assert (=> d!44487 m!175257))

(assert (=> b!175345 m!174701))

(assert (=> b!175346 m!175223))

(assert (=> d!44135 d!44487))

(declare-fun d!44489 () Bool)

(declare-fun e!106365 () Bool)

(assert (=> d!44489 e!106365))

(declare-fun res!79236 () Bool)

(assert (=> d!44489 (=> (not res!79236) (not e!106365))))

(declare-fun lt!56648 () List!2946)

(assert (=> d!44489 (= res!79236 (= (content!407 lt!56648) ((_ map or) (content!407 (list!1073 (charsOf!182 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938))))) (content!407 (printList!97 thiss!17480 (t!27586 (Cons!2938 (h!8335 tokens!465) Nil!2938)))))))))

(declare-fun e!106366 () List!2946)

(assert (=> d!44489 (= lt!56648 e!106366)))

(declare-fun c!34661 () Bool)

(assert (=> d!44489 (= c!34661 ((_ is Nil!2936) (list!1073 (charsOf!182 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938))))))))

(assert (=> d!44489 (= (++!680 (list!1073 (charsOf!182 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938)))) (printList!97 thiss!17480 (t!27586 (Cons!2938 (h!8335 tokens!465) Nil!2938)))) lt!56648)))

(declare-fun b!175352 () Bool)

(assert (=> b!175352 (= e!106365 (or (not (= (printList!97 thiss!17480 (t!27586 (Cons!2938 (h!8335 tokens!465) Nil!2938))) Nil!2936)) (= lt!56648 (list!1073 (charsOf!182 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938)))))))))

(declare-fun b!175351 () Bool)

(declare-fun res!79235 () Bool)

(assert (=> b!175351 (=> (not res!79235) (not e!106365))))

(assert (=> b!175351 (= res!79235 (= (size!2431 lt!56648) (+ (size!2431 (list!1073 (charsOf!182 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938))))) (size!2431 (printList!97 thiss!17480 (t!27586 (Cons!2938 (h!8335 tokens!465) Nil!2938)))))))))

(declare-fun b!175349 () Bool)

(assert (=> b!175349 (= e!106366 (printList!97 thiss!17480 (t!27586 (Cons!2938 (h!8335 tokens!465) Nil!2938))))))

(declare-fun b!175350 () Bool)

(assert (=> b!175350 (= e!106366 (Cons!2936 (h!8333 (list!1073 (charsOf!182 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938))))) (++!680 (t!27584 (list!1073 (charsOf!182 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938))))) (printList!97 thiss!17480 (t!27586 (Cons!2938 (h!8335 tokens!465) Nil!2938))))))))

(assert (= (and d!44489 c!34661) b!175349))

(assert (= (and d!44489 (not c!34661)) b!175350))

(assert (= (and d!44489 res!79236) b!175351))

(assert (= (and b!175351 res!79235) b!175352))

(declare-fun m!175259 () Bool)

(assert (=> d!44489 m!175259))

(assert (=> d!44489 m!173945))

(declare-fun m!175261 () Bool)

(assert (=> d!44489 m!175261))

(assert (=> d!44489 m!173947))

(declare-fun m!175263 () Bool)

(assert (=> d!44489 m!175263))

(declare-fun m!175265 () Bool)

(assert (=> b!175351 m!175265))

(assert (=> b!175351 m!173945))

(declare-fun m!175267 () Bool)

(assert (=> b!175351 m!175267))

(assert (=> b!175351 m!173947))

(declare-fun m!175269 () Bool)

(assert (=> b!175351 m!175269))

(assert (=> b!175350 m!173947))

(declare-fun m!175271 () Bool)

(assert (=> b!175350 m!175271))

(assert (=> b!174733 d!44489))

(declare-fun d!44491 () Bool)

(assert (=> d!44491 (= (list!1073 (charsOf!182 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938)))) (list!1076 (c!34379 (charsOf!182 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938))))))))

(declare-fun bs!17327 () Bool)

(assert (= bs!17327 d!44491))

(declare-fun m!175273 () Bool)

(assert (=> bs!17327 m!175273))

(assert (=> b!174733 d!44491))

(declare-fun d!44493 () Bool)

(declare-fun lt!56649 () BalanceConc!1760)

(assert (=> d!44493 (= (list!1073 lt!56649) (originalCharacters!570 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938))))))

(assert (=> d!44493 (= lt!56649 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938))))) (value!19335 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938)))))))

(assert (=> d!44493 (= (charsOf!182 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938))) lt!56649)))

(declare-fun b_lambda!4099 () Bool)

(assert (=> (not b_lambda!4099) (not d!44493)))

(declare-fun t!27722 () Bool)

(declare-fun tb!7193 () Bool)

(assert (=> (and b!174759 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938)))))) t!27722) tb!7193))

(declare-fun b!175353 () Bool)

(declare-fun e!106367 () Bool)

(declare-fun tp!85015 () Bool)

(assert (=> b!175353 (= e!106367 (and (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938))))) (value!19335 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938)))))) tp!85015))))

(declare-fun result!9946 () Bool)

(assert (=> tb!7193 (= result!9946 (and (inv!3770 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938))))) (value!19335 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938))))) e!106367))))

(assert (= tb!7193 b!175353))

(declare-fun m!175275 () Bool)

(assert (=> b!175353 m!175275))

(declare-fun m!175277 () Bool)

(assert (=> tb!7193 m!175277))

(assert (=> d!44493 t!27722))

(declare-fun b_and!11757 () Bool)

(assert (= b_and!11753 (and (=> t!27722 result!9946) b_and!11757)))

(declare-fun t!27724 () Bool)

(declare-fun tb!7195 () Bool)

(assert (=> (and b!174015 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938)))))) t!27724) tb!7195))

(declare-fun result!9948 () Bool)

(assert (= result!9948 result!9946))

(assert (=> d!44493 t!27724))

(declare-fun b_and!11759 () Bool)

(assert (= b_and!11755 (and (=> t!27724 result!9948) b_and!11759)))

(declare-fun t!27726 () Bool)

(declare-fun tb!7197 () Bool)

(assert (=> (and b!174773 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938)))))) t!27726) tb!7197))

(declare-fun result!9950 () Bool)

(assert (= result!9950 result!9946))

(assert (=> d!44493 t!27726))

(declare-fun b_and!11761 () Bool)

(assert (= b_and!11749 (and (=> t!27726 result!9950) b_and!11761)))

(declare-fun t!27728 () Bool)

(declare-fun tb!7199 () Bool)

(assert (=> (and b!174005 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938)))))) t!27728) tb!7199))

(declare-fun result!9952 () Bool)

(assert (= result!9952 result!9946))

(assert (=> d!44493 t!27728))

(declare-fun b_and!11763 () Bool)

(assert (= b_and!11751 (and (=> t!27728 result!9952) b_and!11763)))

(declare-fun t!27730 () Bool)

(declare-fun tb!7201 () Bool)

(assert (=> (and b!174009 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938)))))) t!27730) tb!7201))

(declare-fun result!9954 () Bool)

(assert (= result!9954 result!9946))

(assert (=> d!44493 t!27730))

(declare-fun b_and!11765 () Bool)

(assert (= b_and!11747 (and (=> t!27730 result!9954) b_and!11765)))

(declare-fun m!175279 () Bool)

(assert (=> d!44493 m!175279))

(declare-fun m!175281 () Bool)

(assert (=> d!44493 m!175281))

(assert (=> b!174733 d!44493))

(declare-fun d!44495 () Bool)

(declare-fun c!34662 () Bool)

(assert (=> d!44495 (= c!34662 ((_ is Cons!2938) (t!27586 (Cons!2938 (h!8335 tokens!465) Nil!2938))))))

(declare-fun e!106368 () List!2946)

(assert (=> d!44495 (= (printList!97 thiss!17480 (t!27586 (Cons!2938 (h!8335 tokens!465) Nil!2938))) e!106368)))

(declare-fun b!175354 () Bool)

(assert (=> b!175354 (= e!106368 (++!680 (list!1073 (charsOf!182 (h!8335 (t!27586 (Cons!2938 (h!8335 tokens!465) Nil!2938))))) (printList!97 thiss!17480 (t!27586 (t!27586 (Cons!2938 (h!8335 tokens!465) Nil!2938))))))))

(declare-fun b!175355 () Bool)

(assert (=> b!175355 (= e!106368 Nil!2936)))

(assert (= (and d!44495 c!34662) b!175354))

(assert (= (and d!44495 (not c!34662)) b!175355))

(declare-fun m!175283 () Bool)

(assert (=> b!175354 m!175283))

(assert (=> b!175354 m!175283))

(declare-fun m!175285 () Bool)

(assert (=> b!175354 m!175285))

(declare-fun m!175287 () Bool)

(assert (=> b!175354 m!175287))

(assert (=> b!175354 m!175285))

(assert (=> b!175354 m!175287))

(declare-fun m!175289 () Bool)

(assert (=> b!175354 m!175289))

(assert (=> b!174733 d!44495))

(declare-fun d!44497 () Bool)

(declare-fun e!106369 () Bool)

(assert (=> d!44497 e!106369))

(declare-fun res!79237 () Bool)

(assert (=> d!44497 (=> (not res!79237) (not e!106369))))

(declare-fun lt!56650 () BalanceConc!1762)

(assert (=> d!44497 (= res!79237 (= (list!1077 lt!56650) (Cons!2938 separatorToken!170 Nil!2938)))))

(assert (=> d!44497 (= lt!56650 (singleton!41 separatorToken!170))))

(assert (=> d!44497 (= (singletonSeq!79 separatorToken!170) lt!56650)))

(declare-fun b!175356 () Bool)

(assert (=> b!175356 (= e!106369 (isBalanced!244 (c!34381 lt!56650)))))

(assert (= (and d!44497 res!79237) b!175356))

(declare-fun m!175291 () Bool)

(assert (=> d!44497 m!175291))

(declare-fun m!175293 () Bool)

(assert (=> d!44497 m!175293))

(declare-fun m!175295 () Bool)

(assert (=> b!175356 m!175295))

(assert (=> d!44137 d!44497))

(declare-fun d!44499 () Bool)

(assert (=> d!44499 (= (list!1077 (_1!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 separatorToken!170))))) (list!1080 (c!34381 (_1!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 separatorToken!170)))))))))

(declare-fun bs!17328 () Bool)

(assert (= bs!17328 d!44499))

(declare-fun m!175297 () Bool)

(assert (=> bs!17328 m!175297))

(assert (=> d!44137 d!44499))

(declare-fun d!44501 () Bool)

(declare-fun lt!56651 () Int)

(assert (=> d!44501 (= lt!56651 (size!2437 (list!1077 (_1!1647 lt!56171))))))

(assert (=> d!44501 (= lt!56651 (size!2438 (c!34381 (_1!1647 lt!56171))))))

(assert (=> d!44501 (= (size!2432 (_1!1647 lt!56171)) lt!56651)))

(declare-fun bs!17329 () Bool)

(assert (= bs!17329 d!44501))

(assert (=> bs!17329 m!174767))

(assert (=> bs!17329 m!174767))

(declare-fun m!175299 () Bool)

(assert (=> bs!17329 m!175299))

(declare-fun m!175301 () Bool)

(assert (=> bs!17329 m!175301))

(assert (=> d!44137 d!44501))

(declare-fun b!175357 () Bool)

(declare-fun lt!56652 () tuple2!2862)

(declare-fun e!106370 () Bool)

(assert (=> b!175357 (= e!106370 (= (_2!1647 lt!56652) (print!144 thiss!17480 (singletonSeq!79 separatorToken!170))))))

(declare-fun b!175358 () Bool)

(declare-fun e!106372 () Bool)

(assert (=> b!175358 (= e!106370 e!106372)))

(declare-fun res!79240 () Bool)

(assert (=> b!175358 (= res!79240 (< (size!2433 (_2!1647 lt!56652)) (size!2433 (print!144 thiss!17480 (singletonSeq!79 separatorToken!170)))))))

(assert (=> b!175358 (=> (not res!79240) (not e!106372))))

(declare-fun b!175359 () Bool)

(declare-fun res!79238 () Bool)

(declare-fun e!106371 () Bool)

(assert (=> b!175359 (=> (not res!79238) (not e!106371))))

(assert (=> b!175359 (= res!79238 (= (list!1077 (_1!1647 lt!56652)) (_1!1651 (lexList!117 thiss!17480 rules!1920 (list!1073 (print!144 thiss!17480 (singletonSeq!79 separatorToken!170)))))))))

(declare-fun b!175360 () Bool)

(assert (=> b!175360 (= e!106371 (= (list!1073 (_2!1647 lt!56652)) (_2!1651 (lexList!117 thiss!17480 rules!1920 (list!1073 (print!144 thiss!17480 (singletonSeq!79 separatorToken!170)))))))))

(declare-fun b!175361 () Bool)

(assert (=> b!175361 (= e!106372 (not (isEmpty!1270 (_1!1647 lt!56652))))))

(declare-fun d!44503 () Bool)

(assert (=> d!44503 e!106371))

(declare-fun res!79239 () Bool)

(assert (=> d!44503 (=> (not res!79239) (not e!106371))))

(assert (=> d!44503 (= res!79239 e!106370)))

(declare-fun c!34663 () Bool)

(assert (=> d!44503 (= c!34663 (> (size!2432 (_1!1647 lt!56652)) 0))))

(assert (=> d!44503 (= lt!56652 (lexTailRecV2!104 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 separatorToken!170)) (BalanceConc!1761 Empty!876) (print!144 thiss!17480 (singletonSeq!79 separatorToken!170)) (BalanceConc!1763 Empty!877)))))

(assert (=> d!44503 (= (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 separatorToken!170))) lt!56652)))

(assert (= (and d!44503 c!34663) b!175358))

(assert (= (and d!44503 (not c!34663)) b!175357))

(assert (= (and b!175358 res!79240) b!175361))

(assert (= (and d!44503 res!79239) b!175359))

(assert (= (and b!175359 res!79238) b!175360))

(declare-fun m!175303 () Bool)

(assert (=> d!44503 m!175303))

(assert (=> d!44503 m!173867))

(assert (=> d!44503 m!173867))

(declare-fun m!175305 () Bool)

(assert (=> d!44503 m!175305))

(declare-fun m!175307 () Bool)

(assert (=> b!175361 m!175307))

(declare-fun m!175309 () Bool)

(assert (=> b!175358 m!175309))

(assert (=> b!175358 m!173867))

(declare-fun m!175311 () Bool)

(assert (=> b!175358 m!175311))

(declare-fun m!175313 () Bool)

(assert (=> b!175359 m!175313))

(assert (=> b!175359 m!173867))

(declare-fun m!175315 () Bool)

(assert (=> b!175359 m!175315))

(assert (=> b!175359 m!175315))

(declare-fun m!175317 () Bool)

(assert (=> b!175359 m!175317))

(declare-fun m!175319 () Bool)

(assert (=> b!175360 m!175319))

(assert (=> b!175360 m!173867))

(assert (=> b!175360 m!175315))

(assert (=> b!175360 m!175315))

(assert (=> b!175360 m!175317))

(assert (=> d!44137 d!44503))

(declare-fun d!44505 () Bool)

(assert (=> d!44505 (= (list!1077 (singletonSeq!79 separatorToken!170)) (list!1080 (c!34381 (singletonSeq!79 separatorToken!170))))))

(declare-fun bs!17330 () Bool)

(assert (= bs!17330 d!44505))

(declare-fun m!175321 () Bool)

(assert (=> bs!17330 m!175321))

(assert (=> d!44137 d!44505))

(declare-fun d!44507 () Bool)

(declare-fun lt!56653 () BalanceConc!1760)

(assert (=> d!44507 (= (list!1073 lt!56653) (printList!97 thiss!17480 (list!1077 (singletonSeq!79 separatorToken!170))))))

(assert (=> d!44507 (= lt!56653 (printTailRec!107 thiss!17480 (singletonSeq!79 separatorToken!170) 0 (BalanceConc!1761 Empty!876)))))

(assert (=> d!44507 (= (print!144 thiss!17480 (singletonSeq!79 separatorToken!170)) lt!56653)))

(declare-fun bs!17331 () Bool)

(assert (= bs!17331 d!44507))

(declare-fun m!175323 () Bool)

(assert (=> bs!17331 m!175323))

(assert (=> bs!17331 m!173865))

(assert (=> bs!17331 m!173869))

(assert (=> bs!17331 m!173869))

(declare-fun m!175325 () Bool)

(assert (=> bs!17331 m!175325))

(assert (=> bs!17331 m!173865))

(declare-fun m!175327 () Bool)

(assert (=> bs!17331 m!175327))

(assert (=> d!44137 d!44507))

(assert (=> d!44137 d!44139))

(declare-fun d!44509 () Bool)

(declare-fun lt!56654 () BalanceConc!1760)

(assert (=> d!44509 (= (list!1073 lt!56654) (originalCharacters!570 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709))))))

(assert (=> d!44509 (= lt!56654 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709))))) (value!19335 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709)))))))

(assert (=> d!44509 (= (charsOf!182 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709))) lt!56654)))

(declare-fun b_lambda!4101 () Bool)

(assert (=> (not b_lambda!4101) (not d!44509)))

(declare-fun t!27732 () Bool)

(declare-fun tb!7203 () Bool)

(assert (=> (and b!174005 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709)))))) t!27732) tb!7203))

(declare-fun b!175362 () Bool)

(declare-fun tp!85016 () Bool)

(declare-fun e!106373 () Bool)

(assert (=> b!175362 (= e!106373 (and (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709))))) (value!19335 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709)))))) tp!85016))))

(declare-fun result!9956 () Bool)

(assert (=> tb!7203 (= result!9956 (and (inv!3770 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709))))) (value!19335 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709))))) e!106373))))

(assert (= tb!7203 b!175362))

(declare-fun m!175329 () Bool)

(assert (=> b!175362 m!175329))

(declare-fun m!175331 () Bool)

(assert (=> tb!7203 m!175331))

(assert (=> d!44509 t!27732))

(declare-fun b_and!11767 () Bool)

(assert (= b_and!11763 (and (=> t!27732 result!9956) b_and!11767)))

(declare-fun t!27734 () Bool)

(declare-fun tb!7205 () Bool)

(assert (=> (and b!174759 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709)))))) t!27734) tb!7205))

(declare-fun result!9958 () Bool)

(assert (= result!9958 result!9956))

(assert (=> d!44509 t!27734))

(declare-fun b_and!11769 () Bool)

(assert (= b_and!11757 (and (=> t!27734 result!9958) b_and!11769)))

(declare-fun t!27736 () Bool)

(declare-fun tb!7207 () Bool)

(assert (=> (and b!174773 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709)))))) t!27736) tb!7207))

(declare-fun result!9960 () Bool)

(assert (= result!9960 result!9956))

(assert (=> d!44509 t!27736))

(declare-fun b_and!11771 () Bool)

(assert (= b_and!11761 (and (=> t!27736 result!9960) b_and!11771)))

(declare-fun t!27738 () Bool)

(declare-fun tb!7209 () Bool)

(assert (=> (and b!174009 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709)))))) t!27738) tb!7209))

(declare-fun result!9962 () Bool)

(assert (= result!9962 result!9956))

(assert (=> d!44509 t!27738))

(declare-fun b_and!11773 () Bool)

(assert (= b_and!11765 (and (=> t!27738 result!9962) b_and!11773)))

(declare-fun t!27740 () Bool)

(declare-fun tb!7211 () Bool)

(assert (=> (and b!174015 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709)))))) t!27740) tb!7211))

(declare-fun result!9964 () Bool)

(assert (= result!9964 result!9956))

(assert (=> d!44509 t!27740))

(declare-fun b_and!11775 () Bool)

(assert (= b_and!11759 (and (=> t!27740 result!9964) b_and!11775)))

(declare-fun m!175333 () Bool)

(assert (=> d!44509 m!175333))

(declare-fun m!175335 () Bool)

(assert (=> d!44509 m!175335))

(assert (=> bm!7704 d!44509))

(declare-fun d!44511 () Bool)

(assert (=> d!44511 (= (isEmpty!1271 (tail!349 lt!55823)) ((_ is Nil!2936) (tail!349 lt!55823)))))

(assert (=> b!174438 d!44511))

(declare-fun d!44513 () Bool)

(assert (=> d!44513 (= (tail!349 lt!55823) (t!27584 lt!55823))))

(assert (=> b!174438 d!44513))

(declare-fun d!44515 () Bool)

(declare-fun e!106376 () Bool)

(assert (=> d!44515 e!106376))

(declare-fun res!79243 () Bool)

(assert (=> d!44515 (=> (not res!79243) (not e!106376))))

(declare-fun lt!56657 () BalanceConc!1762)

(assert (=> d!44515 (= res!79243 (= (list!1077 lt!56657) tokens!465))))

(declare-fun fromList!115 (List!2948) Conc!877)

(assert (=> d!44515 (= lt!56657 (BalanceConc!1763 (fromList!115 tokens!465)))))

(assert (=> d!44515 (= (fromListB!173 tokens!465) lt!56657)))

(declare-fun b!175365 () Bool)

(assert (=> b!175365 (= e!106376 (isBalanced!244 (fromList!115 tokens!465)))))

(assert (= (and d!44515 res!79243) b!175365))

(declare-fun m!175337 () Bool)

(assert (=> d!44515 m!175337))

(declare-fun m!175339 () Bool)

(assert (=> d!44515 m!175339))

(assert (=> b!175365 m!175339))

(assert (=> b!175365 m!175339))

(declare-fun m!175341 () Bool)

(assert (=> b!175365 m!175341))

(assert (=> d!44079 d!44515))

(declare-fun d!44517 () Bool)

(declare-fun nullableFct!32 (Regex!751) Bool)

(assert (=> d!44517 (= (nullable!109 (regex!527 (rule!1038 (h!8335 tokens!465)))) (nullableFct!32 (regex!527 (rule!1038 (h!8335 tokens!465)))))))

(declare-fun bs!17332 () Bool)

(assert (= bs!17332 d!44517))

(declare-fun m!175343 () Bool)

(assert (=> bs!17332 m!175343))

(assert (=> b!174435 d!44517))

(declare-fun bs!17333 () Bool)

(declare-fun d!44519 () Bool)

(assert (= bs!17333 (and d!44519 d!44043)))

(declare-fun lambda!5071 () Int)

(assert (=> bs!17333 (= lambda!5071 lambda!5044)))

(declare-fun bs!17334 () Bool)

(assert (= bs!17334 (and d!44519 b!174118)))

(assert (=> bs!17334 (= lambda!5071 lambda!5024)))

(declare-fun bs!17335 () Bool)

(assert (= bs!17335 (and d!44519 b!174010)))

(assert (=> bs!17335 (= lambda!5071 lambda!5012)))

(declare-fun bs!17336 () Bool)

(assert (= bs!17336 (and d!44519 b!173998)))

(assert (=> bs!17336 (not (= lambda!5071 lambda!5011))))

(declare-fun bs!17337 () Bool)

(assert (= bs!17337 (and d!44519 d!43945)))

(assert (=> bs!17337 (not (= lambda!5071 lambda!5023))))

(declare-fun bs!17338 () Bool)

(assert (= bs!17338 (and d!44519 b!174525)))

(assert (=> bs!17338 (= lambda!5071 lambda!5050)))

(declare-fun bs!17339 () Bool)

(assert (= bs!17339 (and d!44519 d!44101)))

(assert (=> bs!17339 (not (= lambda!5071 lambda!5051))))

(declare-fun bs!17340 () Bool)

(assert (= bs!17340 (and d!44519 d!43987)))

(assert (=> bs!17340 (= lambda!5071 lambda!5033)))

(declare-fun bs!17341 () Bool)

(assert (= bs!17341 (and d!44519 b!174198)))

(assert (=> bs!17341 (= lambda!5071 lambda!5030)))

(declare-fun bs!17342 () Bool)

(assert (= bs!17342 (and d!44519 b!174547)))

(assert (=> bs!17342 (= lambda!5071 lambda!5052)))

(declare-fun b!175370 () Bool)

(declare-fun e!106381 () Bool)

(assert (=> b!175370 (= e!106381 true)))

(declare-fun b!175369 () Bool)

(declare-fun e!106380 () Bool)

(assert (=> b!175369 (= e!106380 e!106381)))

(declare-fun b!175368 () Bool)

(declare-fun e!106379 () Bool)

(assert (=> b!175368 (= e!106379 e!106380)))

(assert (=> d!44519 e!106379))

(assert (= b!175369 b!175370))

(assert (= b!175368 b!175369))

(assert (= (and d!44519 ((_ is Cons!2937) rules!1920)) b!175368))

(assert (=> b!175370 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5071))))

(assert (=> b!175370 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5071))))

(assert (=> d!44519 true))

(declare-fun lt!56658 () Bool)

(assert (=> d!44519 (= lt!56658 (forall!583 (list!1077 lt!55832) lambda!5071))))

(declare-fun e!106377 () Bool)

(assert (=> d!44519 (= lt!56658 e!106377)))

(declare-fun res!79245 () Bool)

(assert (=> d!44519 (=> res!79245 e!106377)))

(assert (=> d!44519 (= res!79245 (not ((_ is Cons!2938) (list!1077 lt!55832))))))

(assert (=> d!44519 (not (isEmpty!1272 rules!1920))))

(assert (=> d!44519 (= (rulesProduceEachTokenIndividuallyList!115 thiss!17480 rules!1920 (list!1077 lt!55832)) lt!56658)))

(declare-fun b!175366 () Bool)

(declare-fun e!106378 () Bool)

(assert (=> b!175366 (= e!106377 e!106378)))

(declare-fun res!79244 () Bool)

(assert (=> b!175366 (=> (not res!79244) (not e!106378))))

(assert (=> b!175366 (= res!79244 (rulesProduceIndividualToken!162 thiss!17480 rules!1920 (h!8335 (list!1077 lt!55832))))))

(declare-fun b!175367 () Bool)

(assert (=> b!175367 (= e!106378 (rulesProduceEachTokenIndividuallyList!115 thiss!17480 rules!1920 (t!27586 (list!1077 lt!55832))))))

(assert (= (and d!44519 (not res!79245)) b!175366))

(assert (= (and b!175366 res!79244) b!175367))

(assert (=> d!44519 m!173005))

(declare-fun m!175345 () Bool)

(assert (=> d!44519 m!175345))

(assert (=> d!44519 m!172843))

(declare-fun m!175347 () Bool)

(assert (=> b!175366 m!175347))

(declare-fun m!175349 () Bool)

(assert (=> b!175367 m!175349))

(assert (=> b!174493 d!44519))

(declare-fun d!44521 () Bool)

(assert (=> d!44521 (= (list!1077 lt!55832) (list!1080 (c!34381 lt!55832)))))

(declare-fun bs!17343 () Bool)

(assert (= bs!17343 d!44521))

(declare-fun m!175351 () Bool)

(assert (=> bs!17343 m!175351))

(assert (=> b!174493 d!44521))

(assert (=> b!174723 d!44397))

(declare-fun d!44523 () Bool)

(declare-fun charsToBigInt!1 (List!2945) Int)

(assert (=> d!44523 (= (inv!17 (value!19335 (h!8335 tokens!465))) (= (charsToBigInt!1 (text!4291 (value!19335 (h!8335 tokens!465)))) (value!19327 (value!19335 (h!8335 tokens!465)))))))

(declare-fun bs!17344 () Bool)

(assert (= bs!17344 d!44523))

(declare-fun m!175353 () Bool)

(assert (=> bs!17344 m!175353))

(assert (=> b!174712 d!44523))

(declare-fun d!44525 () Bool)

(declare-fun lt!56659 () BalanceConc!1760)

(assert (=> d!44525 (= (list!1073 lt!56659) (printList!97 thiss!17480 (list!1077 (singletonSeq!79 (h!8335 (t!27586 tokens!465))))))))

(assert (=> d!44525 (= lt!56659 (printTailRec!107 thiss!17480 (singletonSeq!79 (h!8335 (t!27586 tokens!465))) 0 (BalanceConc!1761 Empty!876)))))

(assert (=> d!44525 (= (print!144 thiss!17480 (singletonSeq!79 (h!8335 (t!27586 tokens!465)))) lt!56659)))

(declare-fun bs!17345 () Bool)

(assert (= bs!17345 d!44525))

(declare-fun m!175355 () Bool)

(assert (=> bs!17345 m!175355))

(assert (=> bs!17345 m!173683))

(assert (=> bs!17345 m!174755))

(assert (=> bs!17345 m!174755))

(declare-fun m!175357 () Bool)

(assert (=> bs!17345 m!175357))

(assert (=> bs!17345 m!173683))

(assert (=> bs!17345 m!173687))

(assert (=> b!174524 d!44525))

(declare-fun d!44527 () Bool)

(declare-fun e!106382 () Bool)

(assert (=> d!44527 e!106382))

(declare-fun res!79246 () Bool)

(assert (=> d!44527 (=> (not res!79246) (not e!106382))))

(declare-fun lt!56660 () BalanceConc!1762)

(assert (=> d!44527 (= res!79246 (= (list!1077 lt!56660) (Cons!2938 (h!8335 (t!27586 tokens!465)) Nil!2938)))))

(assert (=> d!44527 (= lt!56660 (singleton!41 (h!8335 (t!27586 tokens!465))))))

(assert (=> d!44527 (= (singletonSeq!79 (h!8335 (t!27586 tokens!465))) lt!56660)))

(declare-fun b!175371 () Bool)

(assert (=> b!175371 (= e!106382 (isBalanced!244 (c!34381 lt!56660)))))

(assert (= (and d!44527 res!79246) b!175371))

(declare-fun m!175359 () Bool)

(assert (=> d!44527 m!175359))

(declare-fun m!175361 () Bool)

(assert (=> d!44527 m!175361))

(declare-fun m!175363 () Bool)

(assert (=> b!175371 m!175363))

(assert (=> b!174524 d!44527))

(declare-fun d!44529 () Bool)

(declare-fun lt!56665 () BalanceConc!1760)

(assert (=> d!44529 (= (list!1073 lt!56665) (printListTailRec!60 thiss!17480 (dropList!92 (singletonSeq!79 (h!8335 (t!27586 tokens!465))) 0) (list!1073 (BalanceConc!1761 Empty!876))))))

(declare-fun e!106384 () BalanceConc!1760)

(assert (=> d!44529 (= lt!56665 e!106384)))

(declare-fun c!34665 () Bool)

(assert (=> d!44529 (= c!34665 (>= 0 (size!2432 (singletonSeq!79 (h!8335 (t!27586 tokens!465))))))))

(declare-fun e!106383 () Bool)

(assert (=> d!44529 e!106383))

(declare-fun res!79247 () Bool)

(assert (=> d!44529 (=> (not res!79247) (not e!106383))))

(assert (=> d!44529 (= res!79247 (>= 0 0))))

(assert (=> d!44529 (= (printTailRec!107 thiss!17480 (singletonSeq!79 (h!8335 (t!27586 tokens!465))) 0 (BalanceConc!1761 Empty!876)) lt!56665)))

(declare-fun b!175372 () Bool)

(assert (=> b!175372 (= e!106383 (<= 0 (size!2432 (singletonSeq!79 (h!8335 (t!27586 tokens!465))))))))

(declare-fun b!175373 () Bool)

(assert (=> b!175373 (= e!106384 (BalanceConc!1761 Empty!876))))

(declare-fun b!175374 () Bool)

(assert (=> b!175374 (= e!106384 (printTailRec!107 thiss!17480 (singletonSeq!79 (h!8335 (t!27586 tokens!465))) (+ 0 1) (++!682 (BalanceConc!1761 Empty!876) (charsOf!182 (apply!429 (singletonSeq!79 (h!8335 (t!27586 tokens!465))) 0)))))))

(declare-fun lt!56667 () List!2948)

(assert (=> b!175374 (= lt!56667 (list!1077 (singletonSeq!79 (h!8335 (t!27586 tokens!465)))))))

(declare-fun lt!56662 () Unit!2616)

(assert (=> b!175374 (= lt!56662 (lemmaDropApply!132 lt!56667 0))))

(assert (=> b!175374 (= (head!608 (drop!145 lt!56667 0)) (apply!430 lt!56667 0))))

(declare-fun lt!56666 () Unit!2616)

(assert (=> b!175374 (= lt!56666 lt!56662)))

(declare-fun lt!56664 () List!2948)

(assert (=> b!175374 (= lt!56664 (list!1077 (singletonSeq!79 (h!8335 (t!27586 tokens!465)))))))

(declare-fun lt!56661 () Unit!2616)

(assert (=> b!175374 (= lt!56661 (lemmaDropTail!124 lt!56664 0))))

(assert (=> b!175374 (= (tail!348 (drop!145 lt!56664 0)) (drop!145 lt!56664 (+ 0 1)))))

(declare-fun lt!56663 () Unit!2616)

(assert (=> b!175374 (= lt!56663 lt!56661)))

(assert (= (and d!44529 res!79247) b!175372))

(assert (= (and d!44529 c!34665) b!175373))

(assert (= (and d!44529 (not c!34665)) b!175374))

(declare-fun m!175365 () Bool)

(assert (=> d!44529 m!175365))

(assert (=> d!44529 m!173897))

(assert (=> d!44529 m!173683))

(declare-fun m!175367 () Bool)

(assert (=> d!44529 m!175367))

(assert (=> d!44529 m!175367))

(assert (=> d!44529 m!173897))

(declare-fun m!175369 () Bool)

(assert (=> d!44529 m!175369))

(assert (=> d!44529 m!173683))

(declare-fun m!175371 () Bool)

(assert (=> d!44529 m!175371))

(assert (=> b!175372 m!173683))

(assert (=> b!175372 m!175371))

(declare-fun m!175373 () Bool)

(assert (=> b!175374 m!175373))

(declare-fun m!175375 () Bool)

(assert (=> b!175374 m!175375))

(declare-fun m!175377 () Bool)

(assert (=> b!175374 m!175377))

(declare-fun m!175379 () Bool)

(assert (=> b!175374 m!175379))

(declare-fun m!175381 () Bool)

(assert (=> b!175374 m!175381))

(declare-fun m!175383 () Bool)

(assert (=> b!175374 m!175383))

(declare-fun m!175385 () Bool)

(assert (=> b!175374 m!175385))

(declare-fun m!175387 () Bool)

(assert (=> b!175374 m!175387))

(declare-fun m!175389 () Bool)

(assert (=> b!175374 m!175389))

(assert (=> b!175374 m!173683))

(assert (=> b!175374 m!175385))

(declare-fun m!175391 () Bool)

(assert (=> b!175374 m!175391))

(declare-fun m!175393 () Bool)

(assert (=> b!175374 m!175393))

(assert (=> b!175374 m!175383))

(assert (=> b!175374 m!173683))

(assert (=> b!175374 m!174755))

(assert (=> b!175374 m!173683))

(assert (=> b!175374 m!175393))

(assert (=> b!175374 m!175373))

(assert (=> b!175374 m!175389))

(declare-fun m!175395 () Bool)

(assert (=> b!175374 m!175395))

(assert (=> b!174524 d!44529))

(declare-fun b!175378 () Bool)

(declare-fun e!106385 () Unit!2616)

(declare-fun Unit!2642 () Unit!2616)

(assert (=> b!175378 (= e!106385 Unit!2642)))

(declare-fun b!175375 () Bool)

(declare-fun res!79249 () Bool)

(declare-fun e!106386 () Bool)

(assert (=> b!175375 (=> (not res!79249) (not e!106386))))

(declare-fun lt!56674 () Token!798)

(assert (=> b!175375 (= res!79249 (matchR!89 (regex!527 (get!814 (getRuleFromTag!25 thiss!17480 rules!1920 (tag!705 (rule!1038 lt!56674))))) (list!1073 (charsOf!182 lt!56674))))))

(declare-fun b!175377 () Bool)

(declare-fun Unit!2643 () Unit!2616)

(assert (=> b!175377 (= e!106385 Unit!2643)))

(declare-fun lt!56673 () List!2946)

(assert (=> b!175377 (= lt!56673 (++!680 call!7767 lt!56128))))

(declare-fun lt!56680 () Unit!2616)

(assert (=> b!175377 (= lt!56680 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!25 thiss!17480 (rule!1038 lt!56674) rules!1920 lt!56673))))

(assert (=> b!175377 (isEmpty!1282 (maxPrefixOneRule!75 thiss!17480 (rule!1038 lt!56674) lt!56673))))

(declare-fun lt!56668 () Unit!2616)

(assert (=> b!175377 (= lt!56668 lt!56680)))

(declare-fun lt!56669 () List!2946)

(assert (=> b!175377 (= lt!56669 (list!1073 (charsOf!182 lt!56674)))))

(declare-fun lt!56682 () Unit!2616)

(assert (=> b!175377 (= lt!56682 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!25 thiss!17480 (rule!1038 lt!56674) lt!56669 (++!680 call!7767 lt!56128)))))

(assert (=> b!175377 (not (matchR!89 (regex!527 (rule!1038 lt!56674)) lt!56669))))

(declare-fun lt!56672 () Unit!2616)

(assert (=> b!175377 (= lt!56672 lt!56682)))

(assert (=> b!175377 false))

(declare-fun b!175376 () Bool)

(assert (=> b!175376 (= e!106386 (= (rule!1038 lt!56674) (get!814 (getRuleFromTag!25 thiss!17480 rules!1920 (tag!705 (rule!1038 lt!56674))))))))

(declare-fun d!44531 () Bool)

(assert (=> d!44531 (isDefined!182 (maxPrefix!143 thiss!17480 rules!1920 (++!680 call!7767 lt!56128)))))

(declare-fun lt!56675 () Unit!2616)

(assert (=> d!44531 (= lt!56675 e!106385)))

(declare-fun c!34666 () Bool)

(assert (=> d!44531 (= c!34666 (isEmpty!1282 (maxPrefix!143 thiss!17480 rules!1920 (++!680 call!7767 lt!56128))))))

(declare-fun lt!56676 () Unit!2616)

(declare-fun lt!56670 () Unit!2616)

(assert (=> d!44531 (= lt!56676 lt!56670)))

(assert (=> d!44531 e!106386))

(declare-fun res!79248 () Bool)

(assert (=> d!44531 (=> (not res!79248) (not e!106386))))

(assert (=> d!44531 (= res!79248 (isDefined!183 (getRuleFromTag!25 thiss!17480 rules!1920 (tag!705 (rule!1038 lt!56674)))))))

(assert (=> d!44531 (= lt!56670 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!25 thiss!17480 rules!1920 call!7767 lt!56674))))

(declare-fun lt!56681 () Unit!2616)

(declare-fun lt!56684 () Unit!2616)

(assert (=> d!44531 (= lt!56681 lt!56684)))

(declare-fun lt!56677 () List!2946)

(assert (=> d!44531 (isPrefix!232 lt!56677 (++!680 call!7767 lt!56128))))

(assert (=> d!44531 (= lt!56684 (lemmaPrefixStaysPrefixWhenAddingToSuffix!25 lt!56677 call!7767 lt!56128))))

(assert (=> d!44531 (= lt!56677 (list!1073 (charsOf!182 lt!56674)))))

(declare-fun lt!56678 () Unit!2616)

(declare-fun lt!56679 () Unit!2616)

(assert (=> d!44531 (= lt!56678 lt!56679)))

(declare-fun lt!56671 () List!2946)

(declare-fun lt!56683 () List!2946)

(assert (=> d!44531 (isPrefix!232 lt!56671 (++!680 lt!56671 lt!56683))))

(assert (=> d!44531 (= lt!56679 (lemmaConcatTwoListThenFirstIsPrefix!129 lt!56671 lt!56683))))

(assert (=> d!44531 (= lt!56683 (_2!1648 (get!811 (maxPrefix!143 thiss!17480 rules!1920 call!7767))))))

(assert (=> d!44531 (= lt!56671 (list!1073 (charsOf!182 lt!56674)))))

(assert (=> d!44531 (= lt!56674 (head!608 (list!1077 (_1!1647 (lex!213 thiss!17480 rules!1920 (seqFromList!432 call!7767))))))))

(assert (=> d!44531 (not (isEmpty!1272 rules!1920))))

(assert (=> d!44531 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!40 thiss!17480 rules!1920 call!7767 lt!56128) lt!56675)))

(assert (= (and d!44531 res!79248) b!175375))

(assert (= (and b!175375 res!79249) b!175376))

(assert (= (and d!44531 c!34666) b!175377))

(assert (= (and d!44531 (not c!34666)) b!175378))

(declare-fun m!175397 () Bool)

(assert (=> b!175375 m!175397))

(declare-fun m!175399 () Bool)

(assert (=> b!175375 m!175399))

(declare-fun m!175401 () Bool)

(assert (=> b!175375 m!175401))

(declare-fun m!175403 () Bool)

(assert (=> b!175375 m!175403))

(assert (=> b!175375 m!175399))

(assert (=> b!175375 m!175397))

(declare-fun m!175405 () Bool)

(assert (=> b!175375 m!175405))

(assert (=> b!175375 m!175403))

(declare-fun m!175407 () Bool)

(assert (=> b!175377 m!175407))

(declare-fun m!175409 () Bool)

(assert (=> b!175377 m!175409))

(assert (=> b!175377 m!175403))

(assert (=> b!175377 m!175399))

(declare-fun m!175411 () Bool)

(assert (=> b!175377 m!175411))

(assert (=> b!175377 m!175403))

(declare-fun m!175413 () Bool)

(assert (=> b!175377 m!175413))

(declare-fun m!175415 () Bool)

(assert (=> b!175377 m!175415))

(assert (=> b!175377 m!175413))

(assert (=> b!175377 m!175409))

(declare-fun m!175417 () Bool)

(assert (=> b!175377 m!175417))

(assert (=> b!175376 m!175397))

(assert (=> b!175376 m!175397))

(assert (=> b!175376 m!175405))

(assert (=> d!44531 m!175397))

(declare-fun m!175419 () Bool)

(assert (=> d!44531 m!175419))

(declare-fun m!175421 () Bool)

(assert (=> d!44531 m!175421))

(declare-fun m!175423 () Bool)

(assert (=> d!44531 m!175423))

(declare-fun m!175425 () Bool)

(assert (=> d!44531 m!175425))

(declare-fun m!175427 () Bool)

(assert (=> d!44531 m!175427))

(declare-fun m!175429 () Bool)

(assert (=> d!44531 m!175429))

(assert (=> d!44531 m!175409))

(declare-fun m!175431 () Bool)

(assert (=> d!44531 m!175431))

(assert (=> d!44531 m!175421))

(declare-fun m!175433 () Bool)

(assert (=> d!44531 m!175433))

(assert (=> d!44531 m!175425))

(declare-fun m!175435 () Bool)

(assert (=> d!44531 m!175435))

(declare-fun m!175437 () Bool)

(assert (=> d!44531 m!175437))

(declare-fun m!175439 () Bool)

(assert (=> d!44531 m!175439))

(assert (=> d!44531 m!175403))

(assert (=> d!44531 m!175419))

(declare-fun m!175441 () Bool)

(assert (=> d!44531 m!175441))

(assert (=> d!44531 m!175397))

(declare-fun m!175443 () Bool)

(assert (=> d!44531 m!175443))

(assert (=> d!44531 m!172843))

(declare-fun m!175445 () Bool)

(assert (=> d!44531 m!175445))

(assert (=> d!44531 m!175409))

(assert (=> d!44531 m!175439))

(declare-fun m!175447 () Bool)

(assert (=> d!44531 m!175447))

(assert (=> d!44531 m!175403))

(assert (=> d!44531 m!175399))

(assert (=> d!44531 m!175409))

(assert (=> d!44531 m!175421))

(assert (=> d!44531 m!175427))

(declare-fun m!175449 () Bool)

(assert (=> d!44531 m!175449))

(assert (=> b!174524 d!44531))

(declare-fun d!44533 () Bool)

(declare-fun lt!56685 () Token!798)

(assert (=> d!44533 (= lt!56685 (apply!430 (list!1077 lt!55832) 0))))

(assert (=> d!44533 (= lt!56685 (apply!434 (c!34381 lt!55832) 0))))

(declare-fun e!106387 () Bool)

(assert (=> d!44533 e!106387))

(declare-fun res!79250 () Bool)

(assert (=> d!44533 (=> (not res!79250) (not e!106387))))

(assert (=> d!44533 (= res!79250 (<= 0 0))))

(assert (=> d!44533 (= (apply!429 lt!55832 0) lt!56685)))

(declare-fun b!175379 () Bool)

(assert (=> b!175379 (= e!106387 (< 0 (size!2432 lt!55832)))))

(assert (= (and d!44533 res!79250) b!175379))

(assert (=> d!44533 m!173005))

(assert (=> d!44533 m!173005))

(declare-fun m!175451 () Bool)

(assert (=> d!44533 m!175451))

(declare-fun m!175453 () Bool)

(assert (=> d!44533 m!175453))

(assert (=> b!175379 m!172999))

(assert (=> b!174117 d!44533))

(declare-fun b!175390 () Bool)

(declare-fun res!79261 () Bool)

(declare-fun e!106390 () Bool)

(assert (=> b!175390 (=> (not res!79261) (not e!106390))))

(declare-fun height!98 (Conc!876) Int)

(declare-fun ++!685 (Conc!876 Conc!876) Conc!876)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!175390 (= res!79261 (>= (height!98 (++!685 (c!34379 e!105859) (c!34379 (ite c!34489 lt!56132 call!7769)))) (max!0 (height!98 (c!34379 e!105859)) (height!98 (c!34379 (ite c!34489 lt!56132 call!7769))))))))

(declare-fun b!175388 () Bool)

(declare-fun res!79260 () Bool)

(assert (=> b!175388 (=> (not res!79260) (not e!106390))))

(assert (=> b!175388 (= res!79260 (isBalanced!246 (++!685 (c!34379 e!105859) (c!34379 (ite c!34489 lt!56132 call!7769)))))))

(declare-fun d!44535 () Bool)

(assert (=> d!44535 e!106390))

(declare-fun res!79262 () Bool)

(assert (=> d!44535 (=> (not res!79262) (not e!106390))))

(declare-fun appendAssocInst!33 (Conc!876 Conc!876) Bool)

(assert (=> d!44535 (= res!79262 (appendAssocInst!33 (c!34379 e!105859) (c!34379 (ite c!34489 lt!56132 call!7769))))))

(declare-fun lt!56688 () BalanceConc!1760)

(assert (=> d!44535 (= lt!56688 (BalanceConc!1761 (++!685 (c!34379 e!105859) (c!34379 (ite c!34489 lt!56132 call!7769)))))))

(assert (=> d!44535 (= (++!682 e!105859 (ite c!34489 lt!56132 call!7769)) lt!56688)))

(declare-fun b!175389 () Bool)

(declare-fun res!79259 () Bool)

(assert (=> b!175389 (=> (not res!79259) (not e!106390))))

(assert (=> b!175389 (= res!79259 (<= (height!98 (++!685 (c!34379 e!105859) (c!34379 (ite c!34489 lt!56132 call!7769)))) (+ (max!0 (height!98 (c!34379 e!105859)) (height!98 (c!34379 (ite c!34489 lt!56132 call!7769)))) 1)))))

(declare-fun b!175391 () Bool)

(assert (=> b!175391 (= e!106390 (= (list!1073 lt!56688) (++!680 (list!1073 e!105859) (list!1073 (ite c!34489 lt!56132 call!7769)))))))

(assert (= (and d!44535 res!79262) b!175388))

(assert (= (and b!175388 res!79260) b!175389))

(assert (= (and b!175389 res!79259) b!175390))

(assert (= (and b!175390 res!79261) b!175391))

(declare-fun m!175455 () Bool)

(assert (=> b!175389 m!175455))

(declare-fun m!175457 () Bool)

(assert (=> b!175389 m!175457))

(declare-fun m!175459 () Bool)

(assert (=> b!175389 m!175459))

(declare-fun m!175461 () Bool)

(assert (=> b!175389 m!175461))

(assert (=> b!175389 m!175459))

(assert (=> b!175389 m!175461))

(declare-fun m!175463 () Bool)

(assert (=> b!175389 m!175463))

(assert (=> b!175389 m!175455))

(declare-fun m!175465 () Bool)

(assert (=> b!175391 m!175465))

(declare-fun m!175467 () Bool)

(assert (=> b!175391 m!175467))

(declare-fun m!175469 () Bool)

(assert (=> b!175391 m!175469))

(assert (=> b!175391 m!175467))

(assert (=> b!175391 m!175469))

(declare-fun m!175471 () Bool)

(assert (=> b!175391 m!175471))

(assert (=> b!175388 m!175455))

(assert (=> b!175388 m!175455))

(declare-fun m!175473 () Bool)

(assert (=> b!175388 m!175473))

(assert (=> b!175390 m!175455))

(assert (=> b!175390 m!175457))

(assert (=> b!175390 m!175459))

(assert (=> b!175390 m!175461))

(assert (=> b!175390 m!175459))

(assert (=> b!175390 m!175461))

(assert (=> b!175390 m!175463))

(assert (=> b!175390 m!175455))

(declare-fun m!175475 () Bool)

(assert (=> d!44535 m!175475))

(assert (=> d!44535 m!175455))

(assert (=> bm!7765 d!44535))

(declare-fun d!44537 () Bool)

(declare-fun lt!56691 () Bool)

(declare-fun content!409 (List!2947) (InoxSet Rule!854))

(assert (=> d!44537 (= lt!56691 (select (content!409 rules!1920) (rule!1038 (_1!1648 (get!811 lt!56168)))))))

(declare-fun e!106395 () Bool)

(assert (=> d!44537 (= lt!56691 e!106395)))

(declare-fun res!79267 () Bool)

(assert (=> d!44537 (=> (not res!79267) (not e!106395))))

(assert (=> d!44537 (= res!79267 ((_ is Cons!2937) rules!1920))))

(assert (=> d!44537 (= (contains!476 rules!1920 (rule!1038 (_1!1648 (get!811 lt!56168)))) lt!56691)))

(declare-fun b!175396 () Bool)

(declare-fun e!106396 () Bool)

(assert (=> b!175396 (= e!106395 e!106396)))

(declare-fun res!79268 () Bool)

(assert (=> b!175396 (=> res!79268 e!106396)))

(assert (=> b!175396 (= res!79268 (= (h!8334 rules!1920) (rule!1038 (_1!1648 (get!811 lt!56168)))))))

(declare-fun b!175397 () Bool)

(assert (=> b!175397 (= e!106396 (contains!476 (t!27585 rules!1920) (rule!1038 (_1!1648 (get!811 lt!56168)))))))

(assert (= (and d!44537 res!79267) b!175396))

(assert (= (and b!175396 (not res!79268)) b!175397))

(declare-fun m!175477 () Bool)

(assert (=> d!44537 m!175477))

(declare-fun m!175479 () Bool)

(assert (=> d!44537 m!175479))

(declare-fun m!175481 () Bool)

(assert (=> b!175397 m!175481))

(assert (=> b!174696 d!44537))

(assert (=> b!174696 d!44411))

(declare-fun d!44539 () Bool)

(assert (=> d!44539 (= (isEmpty!1282 lt!55830) (not ((_ is Some!330) lt!55830)))))

(assert (=> d!44133 d!44539))

(declare-fun d!44541 () Bool)

(assert (=> d!44541 (= (list!1073 e!105847) (list!1076 (c!34379 e!105847)))))

(declare-fun bs!17346 () Bool)

(assert (= bs!17346 d!44541))

(declare-fun m!175483 () Bool)

(assert (=> bs!17346 m!175483))

(assert (=> bm!7758 d!44541))

(declare-fun d!44543 () Bool)

(assert (=> d!44543 true))

(declare-fun order!1639 () Int)

(declare-fun lambda!5074 () Int)

(declare-fun dynLambda!1139 (Int Int) Int)

(assert (=> d!44543 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1139 order!1639 lambda!5074))))

(declare-fun Forall2!113 (Int) Bool)

(assert (=> d!44543 (= (equivClasses!166 (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (Forall2!113 lambda!5074))))

(declare-fun bs!17347 () Bool)

(assert (= bs!17347 d!44543))

(declare-fun m!175485 () Bool)

(assert (=> bs!17347 m!175485))

(assert (=> b!174635 d!44543))

(declare-fun bs!17348 () Bool)

(declare-fun d!44545 () Bool)

(assert (= bs!17348 (and d!44545 d!44043)))

(declare-fun lambda!5075 () Int)

(assert (=> bs!17348 (= lambda!5075 lambda!5044)))

(declare-fun bs!17349 () Bool)

(assert (= bs!17349 (and d!44545 d!44519)))

(assert (=> bs!17349 (= lambda!5075 lambda!5071)))

(declare-fun bs!17350 () Bool)

(assert (= bs!17350 (and d!44545 b!174118)))

(assert (=> bs!17350 (= lambda!5075 lambda!5024)))

(declare-fun bs!17351 () Bool)

(assert (= bs!17351 (and d!44545 b!174010)))

(assert (=> bs!17351 (= lambda!5075 lambda!5012)))

(declare-fun bs!17352 () Bool)

(assert (= bs!17352 (and d!44545 b!173998)))

(assert (=> bs!17352 (not (= lambda!5075 lambda!5011))))

(declare-fun bs!17353 () Bool)

(assert (= bs!17353 (and d!44545 d!43945)))

(assert (=> bs!17353 (not (= lambda!5075 lambda!5023))))

(declare-fun bs!17354 () Bool)

(assert (= bs!17354 (and d!44545 b!174525)))

(assert (=> bs!17354 (= lambda!5075 lambda!5050)))

(declare-fun bs!17355 () Bool)

(assert (= bs!17355 (and d!44545 d!44101)))

(assert (=> bs!17355 (not (= lambda!5075 lambda!5051))))

(declare-fun bs!17356 () Bool)

(assert (= bs!17356 (and d!44545 d!43987)))

(assert (=> bs!17356 (= lambda!5075 lambda!5033)))

(declare-fun bs!17357 () Bool)

(assert (= bs!17357 (and d!44545 b!174198)))

(assert (=> bs!17357 (= lambda!5075 lambda!5030)))

(declare-fun bs!17358 () Bool)

(assert (= bs!17358 (and d!44545 b!174547)))

(assert (=> bs!17358 (= lambda!5075 lambda!5052)))

(declare-fun b!175406 () Bool)

(declare-fun e!106403 () Bool)

(assert (=> b!175406 (= e!106403 true)))

(declare-fun b!175405 () Bool)

(declare-fun e!106402 () Bool)

(assert (=> b!175405 (= e!106402 e!106403)))

(declare-fun b!175404 () Bool)

(declare-fun e!106401 () Bool)

(assert (=> b!175404 (= e!106401 e!106402)))

(assert (=> d!44545 e!106401))

(assert (= b!175405 b!175406))

(assert (= b!175404 b!175405))

(assert (= (and d!44545 ((_ is Cons!2937) rules!1920)) b!175404))

(assert (=> b!175406 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5075))))

(assert (=> b!175406 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5075))))

(assert (=> d!44545 true))

(declare-fun lt!56692 () Bool)

(assert (=> d!44545 (= lt!56692 (forall!583 (t!27586 (t!27586 tokens!465)) lambda!5075))))

(declare-fun e!106399 () Bool)

(assert (=> d!44545 (= lt!56692 e!106399)))

(declare-fun res!79272 () Bool)

(assert (=> d!44545 (=> res!79272 e!106399)))

(assert (=> d!44545 (= res!79272 (not ((_ is Cons!2938) (t!27586 (t!27586 tokens!465)))))))

(assert (=> d!44545 (not (isEmpty!1272 rules!1920))))

(assert (=> d!44545 (= (rulesProduceEachTokenIndividuallyList!115 thiss!17480 rules!1920 (t!27586 (t!27586 tokens!465))) lt!56692)))

(declare-fun b!175402 () Bool)

(declare-fun e!106400 () Bool)

(assert (=> b!175402 (= e!106399 e!106400)))

(declare-fun res!79271 () Bool)

(assert (=> b!175402 (=> (not res!79271) (not e!106400))))

(assert (=> b!175402 (= res!79271 (rulesProduceIndividualToken!162 thiss!17480 rules!1920 (h!8335 (t!27586 (t!27586 tokens!465)))))))

(declare-fun b!175403 () Bool)

(assert (=> b!175403 (= e!106400 (rulesProduceEachTokenIndividuallyList!115 thiss!17480 rules!1920 (t!27586 (t!27586 (t!27586 tokens!465)))))))

(assert (= (and d!44545 (not res!79272)) b!175402))

(assert (= (and b!175402 res!79271) b!175403))

(declare-fun m!175487 () Bool)

(assert (=> d!44545 m!175487))

(assert (=> d!44545 m!172843))

(declare-fun m!175489 () Bool)

(assert (=> b!175402 m!175489))

(declare-fun m!175491 () Bool)

(assert (=> b!175403 m!175491))

(assert (=> b!174352 d!44545))

(declare-fun d!44547 () Bool)

(declare-fun lt!56693 () Int)

(assert (=> d!44547 (= lt!56693 (size!2437 (list!1077 lt!55832)))))

(assert (=> d!44547 (= lt!56693 (size!2438 (c!34381 lt!55832)))))

(assert (=> d!44547 (= (size!2432 lt!55832) lt!56693)))

(declare-fun bs!17359 () Bool)

(assert (= bs!17359 d!44547))

(assert (=> bs!17359 m!173005))

(assert (=> bs!17359 m!173005))

(declare-fun m!175493 () Bool)

(assert (=> bs!17359 m!175493))

(declare-fun m!175495 () Bool)

(assert (=> bs!17359 m!175495))

(assert (=> b!174110 d!44547))

(declare-fun d!44549 () Bool)

(declare-fun charsToBigInt!0 (List!2945 Int) Int)

(assert (=> d!44549 (= (inv!15 (value!19335 separatorToken!170)) (= (charsToBigInt!0 (text!4292 (value!19335 separatorToken!170)) 0) (value!19330 (value!19335 separatorToken!170))))))

(declare-fun bs!17360 () Bool)

(assert (= bs!17360 d!44549))

(declare-fun m!175497 () Bool)

(assert (=> bs!17360 m!175497))

(assert (=> b!174673 d!44549))

(assert (=> d!44111 d!44083))

(assert (=> d!44111 d!44091))

(assert (=> d!44111 d!44095))

(declare-fun d!44551 () Bool)

(declare-fun e!106404 () Bool)

(assert (=> d!44551 e!106404))

(declare-fun res!79274 () Bool)

(assert (=> d!44551 (=> (not res!79274) (not e!106404))))

(declare-fun lt!56694 () List!2946)

(assert (=> d!44551 (= res!79274 (= (content!407 lt!56694) ((_ map or) (content!407 lt!55823) (content!407 (++!680 lt!55827 lt!55824)))))))

(declare-fun e!106405 () List!2946)

(assert (=> d!44551 (= lt!56694 e!106405)))

(declare-fun c!34670 () Bool)

(assert (=> d!44551 (= c!34670 ((_ is Nil!2936) lt!55823))))

(assert (=> d!44551 (= (++!680 lt!55823 (++!680 lt!55827 lt!55824)) lt!56694)))

(declare-fun b!175410 () Bool)

(assert (=> b!175410 (= e!106404 (or (not (= (++!680 lt!55827 lt!55824) Nil!2936)) (= lt!56694 lt!55823)))))

(declare-fun b!175409 () Bool)

(declare-fun res!79273 () Bool)

(assert (=> b!175409 (=> (not res!79273) (not e!106404))))

(assert (=> b!175409 (= res!79273 (= (size!2431 lt!56694) (+ (size!2431 lt!55823) (size!2431 (++!680 lt!55827 lt!55824)))))))

(declare-fun b!175407 () Bool)

(assert (=> b!175407 (= e!106405 (++!680 lt!55827 lt!55824))))

(declare-fun b!175408 () Bool)

(assert (=> b!175408 (= e!106405 (Cons!2936 (h!8333 lt!55823) (++!680 (t!27584 lt!55823) (++!680 lt!55827 lt!55824))))))

(assert (= (and d!44551 c!34670) b!175407))

(assert (= (and d!44551 (not c!34670)) b!175408))

(assert (= (and d!44551 res!79274) b!175409))

(assert (= (and b!175409 res!79273) b!175410))

(declare-fun m!175499 () Bool)

(assert (=> d!44551 m!175499))

(assert (=> d!44551 m!172911))

(assert (=> d!44551 m!172877))

(declare-fun m!175501 () Bool)

(assert (=> d!44551 m!175501))

(declare-fun m!175503 () Bool)

(assert (=> b!175409 m!175503))

(assert (=> b!175409 m!172917))

(assert (=> b!175409 m!172877))

(declare-fun m!175505 () Bool)

(assert (=> b!175409 m!175505))

(assert (=> b!175408 m!172877))

(declare-fun m!175507 () Bool)

(assert (=> b!175408 m!175507))

(assert (=> d!44111 d!44551))

(declare-fun d!44553 () Bool)

(assert (=> d!44553 (= (++!680 (++!680 lt!55823 lt!55827) lt!55824) (++!680 lt!55823 (++!680 lt!55827 lt!55824)))))

(assert (=> d!44553 true))

(declare-fun _$52!603 () Unit!2616)

(assert (=> d!44553 (= (choose!1848 lt!55823 lt!55827 lt!55824) _$52!603)))

(declare-fun bs!17361 () Bool)

(assert (= bs!17361 d!44553))

(assert (=> bs!17361 m!172865))

(assert (=> bs!17361 m!172865))

(assert (=> bs!17361 m!172869))

(assert (=> bs!17361 m!172877))

(assert (=> bs!17361 m!172877))

(assert (=> bs!17361 m!173787))

(assert (=> d!44111 d!44553))

(declare-fun d!44555 () Bool)

(declare-fun e!106406 () Bool)

(assert (=> d!44555 e!106406))

(declare-fun res!79275 () Bool)

(assert (=> d!44555 (=> (not res!79275) (not e!106406))))

(declare-fun lt!56695 () BalanceConc!1762)

(assert (=> d!44555 (= res!79275 (= (list!1077 lt!56695) (t!27586 tokens!465)))))

(assert (=> d!44555 (= lt!56695 (BalanceConc!1763 (fromList!115 (t!27586 tokens!465))))))

(assert (=> d!44555 (= (fromListB!173 (t!27586 tokens!465)) lt!56695)))

(declare-fun b!175411 () Bool)

(assert (=> b!175411 (= e!106406 (isBalanced!244 (fromList!115 (t!27586 tokens!465))))))

(assert (= (and d!44555 res!79275) b!175411))

(declare-fun m!175509 () Bool)

(assert (=> d!44555 m!175509))

(declare-fun m!175511 () Bool)

(assert (=> d!44555 m!175511))

(assert (=> b!175411 m!175511))

(assert (=> b!175411 m!175511))

(declare-fun m!175513 () Bool)

(assert (=> b!175411 m!175513))

(assert (=> d!44089 d!44555))

(declare-fun b!175414 () Bool)

(declare-fun e!106408 () List!2946)

(assert (=> b!175414 (= e!106408 (list!1081 (xs!3471 (c!34379 (seqFromList!432 lt!55818)))))))

(declare-fun b!175413 () Bool)

(declare-fun e!106407 () List!2946)

(assert (=> b!175413 (= e!106407 e!106408)))

(declare-fun c!34672 () Bool)

(assert (=> b!175413 (= c!34672 ((_ is Leaf!1479) (c!34379 (seqFromList!432 lt!55818))))))

(declare-fun b!175412 () Bool)

(assert (=> b!175412 (= e!106407 Nil!2936)))

(declare-fun b!175415 () Bool)

(assert (=> b!175415 (= e!106408 (++!680 (list!1076 (left!2250 (c!34379 (seqFromList!432 lt!55818)))) (list!1076 (right!2580 (c!34379 (seqFromList!432 lt!55818))))))))

(declare-fun d!44557 () Bool)

(declare-fun c!34671 () Bool)

(assert (=> d!44557 (= c!34671 ((_ is Empty!876) (c!34379 (seqFromList!432 lt!55818))))))

(assert (=> d!44557 (= (list!1076 (c!34379 (seqFromList!432 lt!55818))) e!106407)))

(assert (= (and d!44557 c!34671) b!175412))

(assert (= (and d!44557 (not c!34671)) b!175413))

(assert (= (and b!175413 c!34672) b!175414))

(assert (= (and b!175413 (not c!34672)) b!175415))

(declare-fun m!175515 () Bool)

(assert (=> b!175414 m!175515))

(declare-fun m!175517 () Bool)

(assert (=> b!175415 m!175517))

(declare-fun m!175519 () Bool)

(assert (=> b!175415 m!175519))

(assert (=> b!175415 m!175517))

(assert (=> b!175415 m!175519))

(declare-fun m!175521 () Bool)

(assert (=> b!175415 m!175521))

(assert (=> d!44123 d!44557))

(declare-fun d!44559 () Bool)

(declare-fun c!34673 () Bool)

(assert (=> d!44559 (= c!34673 ((_ is Node!876) (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465))))))))

(declare-fun e!106409 () Bool)

(assert (=> d!44559 (= (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465))))) e!106409)))

(declare-fun b!175416 () Bool)

(assert (=> b!175416 (= e!106409 (inv!3773 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465))))))))

(declare-fun b!175417 () Bool)

(declare-fun e!106410 () Bool)

(assert (=> b!175417 (= e!106409 e!106410)))

(declare-fun res!79276 () Bool)

(assert (=> b!175417 (= res!79276 (not ((_ is Leaf!1479) (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465)))))))))

(assert (=> b!175417 (=> res!79276 e!106410)))

(declare-fun b!175418 () Bool)

(assert (=> b!175418 (= e!106410 (inv!3774 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465))))))))

(assert (= (and d!44559 c!34673) b!175416))

(assert (= (and d!44559 (not c!34673)) b!175417))

(assert (= (and b!175417 (not res!79276)) b!175418))

(declare-fun m!175523 () Bool)

(assert (=> b!175416 m!175523))

(declare-fun m!175525 () Bool)

(assert (=> b!175418 m!175525))

(assert (=> b!174057 d!44559))

(declare-fun d!44561 () Bool)

(declare-fun lt!56696 () Bool)

(assert (=> d!44561 (= lt!56696 (isEmpty!1271 (list!1073 (_2!1647 lt!56171))))))

(assert (=> d!44561 (= lt!56696 (isEmpty!1284 (c!34379 (_2!1647 lt!56171))))))

(assert (=> d!44561 (= (isEmpty!1281 (_2!1647 lt!56171)) lt!56696)))

(declare-fun bs!17362 () Bool)

(assert (= bs!17362 d!44561))

(declare-fun m!175527 () Bool)

(assert (=> bs!17362 m!175527))

(assert (=> bs!17362 m!175527))

(declare-fun m!175529 () Bool)

(assert (=> bs!17362 m!175529))

(declare-fun m!175531 () Bool)

(assert (=> bs!17362 m!175531))

(assert (=> b!174703 d!44561))

(declare-fun d!44563 () Bool)

(declare-fun e!106411 () Bool)

(assert (=> d!44563 e!106411))

(declare-fun res!79278 () Bool)

(assert (=> d!44563 (=> (not res!79278) (not e!106411))))

(declare-fun lt!56697 () List!2946)

(assert (=> d!44563 (= res!79278 (= (content!407 lt!56697) ((_ map or) (content!407 (t!27584 lt!55823)) (content!407 lt!55827))))))

(declare-fun e!106412 () List!2946)

(assert (=> d!44563 (= lt!56697 e!106412)))

(declare-fun c!34674 () Bool)

(assert (=> d!44563 (= c!34674 ((_ is Nil!2936) (t!27584 lt!55823)))))

(assert (=> d!44563 (= (++!680 (t!27584 lt!55823) lt!55827) lt!56697)))

(declare-fun b!175422 () Bool)

(assert (=> b!175422 (= e!106411 (or (not (= lt!55827 Nil!2936)) (= lt!56697 (t!27584 lt!55823))))))

(declare-fun b!175421 () Bool)

(declare-fun res!79277 () Bool)

(assert (=> b!175421 (=> (not res!79277) (not e!106411))))

(assert (=> b!175421 (= res!79277 (= (size!2431 lt!56697) (+ (size!2431 (t!27584 lt!55823)) (size!2431 lt!55827))))))

(declare-fun b!175419 () Bool)

(assert (=> b!175419 (= e!106412 lt!55827)))

(declare-fun b!175420 () Bool)

(assert (=> b!175420 (= e!106412 (Cons!2936 (h!8333 (t!27584 lt!55823)) (++!680 (t!27584 (t!27584 lt!55823)) lt!55827)))))

(assert (= (and d!44563 c!34674) b!175419))

(assert (= (and d!44563 (not c!34674)) b!175420))

(assert (= (and d!44563 res!79278) b!175421))

(assert (= (and b!175421 res!79277) b!175422))

(declare-fun m!175533 () Bool)

(assert (=> d!44563 m!175533))

(assert (=> d!44563 m!175207))

(assert (=> d!44563 m!173633))

(declare-fun m!175535 () Bool)

(assert (=> b!175421 m!175535))

(assert (=> b!175421 m!175211))

(assert (=> b!175421 m!173637))

(declare-fun m!175537 () Bool)

(assert (=> b!175420 m!175537))

(assert (=> b!174513 d!44563))

(declare-fun d!44565 () Bool)

(assert (=> d!44565 (= (isDefined!182 lt!56168) (not (isEmpty!1282 lt!56168)))))

(declare-fun bs!17363 () Bool)

(assert (= bs!17363 d!44565))

(assert (=> bs!17363 m!173837))

(assert (=> b!174700 d!44565))

(declare-fun d!44567 () Bool)

(declare-fun c!34676 () Bool)

(assert (=> d!44567 (= c!34676 ((_ is IntegerValue!1647) (value!19335 (h!8335 (t!27586 tokens!465)))))))

(declare-fun e!106414 () Bool)

(assert (=> d!44567 (= (inv!21 (value!19335 (h!8335 (t!27586 tokens!465)))) e!106414)))

(declare-fun b!175423 () Bool)

(declare-fun e!106415 () Bool)

(assert (=> b!175423 (= e!106415 (inv!17 (value!19335 (h!8335 (t!27586 tokens!465)))))))

(declare-fun b!175424 () Bool)

(declare-fun res!79279 () Bool)

(declare-fun e!106413 () Bool)

(assert (=> b!175424 (=> res!79279 e!106413)))

(assert (=> b!175424 (= res!79279 (not ((_ is IntegerValue!1649) (value!19335 (h!8335 (t!27586 tokens!465))))))))

(assert (=> b!175424 (= e!106415 e!106413)))

(declare-fun b!175425 () Bool)

(assert (=> b!175425 (= e!106414 (inv!16 (value!19335 (h!8335 (t!27586 tokens!465)))))))

(declare-fun b!175426 () Bool)

(assert (=> b!175426 (= e!106413 (inv!15 (value!19335 (h!8335 (t!27586 tokens!465)))))))

(declare-fun b!175427 () Bool)

(assert (=> b!175427 (= e!106414 e!106415)))

(declare-fun c!34675 () Bool)

(assert (=> b!175427 (= c!34675 ((_ is IntegerValue!1648) (value!19335 (h!8335 (t!27586 tokens!465)))))))

(assert (= (and d!44567 c!34676) b!175425))

(assert (= (and d!44567 (not c!34676)) b!175427))

(assert (= (and b!175427 c!34675) b!175423))

(assert (= (and b!175427 (not c!34675)) b!175424))

(assert (= (and b!175424 (not res!79279)) b!175426))

(declare-fun m!175539 () Bool)

(assert (=> b!175423 m!175539))

(declare-fun m!175541 () Bool)

(assert (=> b!175425 m!175541))

(declare-fun m!175543 () Bool)

(assert (=> b!175426 m!175543))

(assert (=> b!174771 d!44567))

(assert (=> b!174432 d!44511))

(assert (=> b!174432 d!44513))

(declare-fun d!44569 () Bool)

(declare-fun lt!56764 () Option!331)

(assert (=> d!44569 (= lt!56764 (maxPrefix!143 thiss!17480 rules!1920 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))))))

(declare-fun e!106427 () Option!331)

(assert (=> d!44569 (= lt!56764 e!106427)))

(declare-fun c!34682 () Bool)

(assert (=> d!44569 (= c!34682 (and ((_ is Cons!2937) rules!1920) ((_ is Nil!2937) (t!27585 rules!1920))))))

(declare-fun lt!56763 () Unit!2616)

(declare-fun lt!56761 () Unit!2616)

(assert (=> d!44569 (= lt!56763 lt!56761)))

(assert (=> d!44569 (isPrefix!232 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))

(assert (=> d!44569 (= lt!56761 (lemmaIsPrefixRefl!140 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))))))

(assert (=> d!44569 (rulesValidInductive!126 thiss!17480 rules!1920)))

(assert (=> d!44569 (= (maxPrefixZipper!44 thiss!17480 rules!1920 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))) lt!56764)))

(declare-fun call!7805 () Option!331)

(declare-fun bm!7800 () Bool)

(declare-fun maxPrefixOneRuleZipper!13 (LexerInterface!413 Rule!854 List!2946) Option!331)

(assert (=> bm!7800 (= call!7805 (maxPrefixOneRuleZipper!13 thiss!17480 (h!8334 rules!1920) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))))))

(declare-fun b!175452 () Bool)

(assert (=> b!175452 (= e!106427 call!7805)))

(declare-fun b!175453 () Bool)

(declare-fun lt!56760 () Option!331)

(declare-fun lt!56762 () Option!331)

(assert (=> b!175453 (= e!106427 (ite (and ((_ is None!330) lt!56760) ((_ is None!330) lt!56762)) None!330 (ite ((_ is None!330) lt!56762) lt!56760 (ite ((_ is None!330) lt!56760) lt!56762 (ite (>= (size!2427 (_1!1648 (v!13783 lt!56760))) (size!2427 (_1!1648 (v!13783 lt!56762)))) lt!56760 lt!56762)))))))

(assert (=> b!175453 (= lt!56760 call!7805)))

(assert (=> b!175453 (= lt!56762 (maxPrefixZipper!44 thiss!17480 (t!27585 rules!1920) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))))))

(assert (= (and d!44569 c!34682) b!175452))

(assert (= (and d!44569 (not c!34682)) b!175453))

(assert (= (or b!175452 b!175453) bm!7800))

(assert (=> d!44569 m!173145))

(assert (=> d!44569 m!173161))

(assert (=> d!44569 m!173145))

(assert (=> d!44569 m!173145))

(declare-fun m!175621 () Bool)

(assert (=> d!44569 m!175621))

(assert (=> d!44569 m!173145))

(assert (=> d!44569 m!173145))

(declare-fun m!175623 () Bool)

(assert (=> d!44569 m!175623))

(assert (=> d!44569 m!173153))

(assert (=> bm!7800 m!173145))

(declare-fun m!175625 () Bool)

(assert (=> bm!7800 m!175625))

(assert (=> b!175453 m!173145))

(assert (=> b!175453 m!175219))

(assert (=> b!174237 d!44569))

(declare-fun d!44583 () Bool)

(assert (=> d!44583 (= (get!812 lt!55983) (v!13782 lt!55983))))

(assert (=> b!174237 d!44583))

(declare-fun d!44585 () Bool)

(assert (=> d!44585 (= (get!811 (maxPrefixZipper!44 thiss!17480 rules!1920 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))) (v!13783 (maxPrefixZipper!44 thiss!17480 rules!1920 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))

(assert (=> b!174237 d!44585))

(declare-fun d!44587 () Bool)

(assert (=> d!44587 (= (list!1073 (_2!1649 (get!812 lt!55983))) (list!1076 (c!34379 (_2!1649 (get!812 lt!55983)))))))

(declare-fun bs!17366 () Bool)

(assert (= bs!17366 d!44587))

(declare-fun m!175627 () Bool)

(assert (=> bs!17366 m!175627))

(assert (=> b!174237 d!44587))

(declare-fun d!44589 () Bool)

(assert (=> d!44589 (= (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))) (list!1076 (c!34379 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))))))

(declare-fun bs!17367 () Bool)

(assert (= bs!17367 d!44589))

(declare-fun m!175629 () Bool)

(assert (=> bs!17367 m!175629))

(assert (=> b!174237 d!44589))

(declare-fun d!44591 () Bool)

(declare-fun lt!56765 () Int)

(assert (=> d!44591 (>= lt!56765 0)))

(declare-fun e!106428 () Int)

(assert (=> d!44591 (= lt!56765 e!106428)))

(declare-fun c!34683 () Bool)

(assert (=> d!44591 (= c!34683 ((_ is Nil!2936) lt!55835))))

(assert (=> d!44591 (= (size!2431 lt!55835) lt!56765)))

(declare-fun b!175454 () Bool)

(assert (=> b!175454 (= e!106428 0)))

(declare-fun b!175455 () Bool)

(assert (=> b!175455 (= e!106428 (+ 1 (size!2431 (t!27584 lt!55835))))))

(assert (= (and d!44591 c!34683) b!175454))

(assert (= (and d!44591 (not c!34683)) b!175455))

(declare-fun m!175631 () Bool)

(assert (=> b!175455 m!175631))

(assert (=> b!174045 d!44591))

(declare-fun d!44593 () Bool)

(declare-fun lt!56766 () Int)

(assert (=> d!44593 (>= lt!56766 0)))

(declare-fun e!106429 () Int)

(assert (=> d!44593 (= lt!56766 e!106429)))

(declare-fun c!34684 () Bool)

(assert (=> d!44593 (= c!34684 ((_ is Nil!2936) lt!55823))))

(assert (=> d!44593 (= (size!2431 lt!55823) lt!56766)))

(declare-fun b!175456 () Bool)

(assert (=> b!175456 (= e!106429 0)))

(declare-fun b!175457 () Bool)

(assert (=> b!175457 (= e!106429 (+ 1 (size!2431 (t!27584 lt!55823))))))

(assert (= (and d!44593 c!34684) b!175456))

(assert (= (and d!44593 (not c!34684)) b!175457))

(assert (=> b!175457 m!175211))

(assert (=> b!174045 d!44593))

(assert (=> b!174045 d!44331))

(declare-fun d!44595 () Bool)

(declare-fun lt!56767 () Bool)

(assert (=> d!44595 (= lt!56767 (isEmpty!1279 (list!1077 (_1!1647 lt!56071))))))

(assert (=> d!44595 (= lt!56767 (isEmpty!1280 (c!34381 (_1!1647 lt!56071))))))

(assert (=> d!44595 (= (isEmpty!1270 (_1!1647 lt!56071)) lt!56767)))

(declare-fun bs!17368 () Bool)

(assert (= bs!17368 d!44595))

(assert (=> bs!17368 m!173425))

(assert (=> bs!17368 m!173425))

(declare-fun m!175633 () Bool)

(assert (=> bs!17368 m!175633))

(declare-fun m!175635 () Bool)

(assert (=> bs!17368 m!175635))

(assert (=> b!174397 d!44595))

(declare-fun d!44597 () Bool)

(assert (=> d!44597 (dynLambda!1135 lambda!5030 (h!8335 tokens!465))))

(declare-fun lt!56768 () Unit!2616)

(assert (=> d!44597 (= lt!56768 (choose!1845 tokens!465 lambda!5030 (h!8335 tokens!465)))))

(declare-fun e!106442 () Bool)

(assert (=> d!44597 e!106442))

(declare-fun res!79300 () Bool)

(assert (=> d!44597 (=> (not res!79300) (not e!106442))))

(assert (=> d!44597 (= res!79300 (forall!583 tokens!465 lambda!5030))))

(assert (=> d!44597 (= (forallContained!94 tokens!465 lambda!5030 (h!8335 tokens!465)) lt!56768)))

(declare-fun b!175474 () Bool)

(assert (=> b!175474 (= e!106442 (contains!474 tokens!465 (h!8335 tokens!465)))))

(assert (= (and d!44597 res!79300) b!175474))

(declare-fun b_lambda!4103 () Bool)

(assert (=> (not b_lambda!4103) (not d!44597)))

(declare-fun m!175637 () Bool)

(assert (=> d!44597 m!175637))

(declare-fun m!175639 () Bool)

(assert (=> d!44597 m!175639))

(declare-fun m!175641 () Bool)

(assert (=> d!44597 m!175641))

(assert (=> b!175474 m!173197))

(assert (=> b!174198 d!44597))

(assert (=> b!174198 d!44099))

(declare-fun d!44599 () Bool)

(declare-fun e!106445 () Bool)

(assert (=> d!44599 e!106445))

(declare-fun res!79304 () Bool)

(assert (=> d!44599 (=> (not res!79304) (not e!106445))))

(declare-fun lt!56769 () List!2946)

(assert (=> d!44599 (= res!79304 (= (content!407 lt!56769) ((_ map or) (content!407 (list!1073 (charsOf!182 (h!8335 tokens!465)))) (content!407 lt!55963))))))

(declare-fun e!106446 () List!2946)

(assert (=> d!44599 (= lt!56769 e!106446)))

(declare-fun c!34689 () Bool)

(assert (=> d!44599 (= c!34689 ((_ is Nil!2936) (list!1073 (charsOf!182 (h!8335 tokens!465)))))))

(assert (=> d!44599 (= (++!680 (list!1073 (charsOf!182 (h!8335 tokens!465))) lt!55963) lt!56769)))

(declare-fun b!175480 () Bool)

(assert (=> b!175480 (= e!106445 (or (not (= lt!55963 Nil!2936)) (= lt!56769 (list!1073 (charsOf!182 (h!8335 tokens!465))))))))

(declare-fun b!175479 () Bool)

(declare-fun res!79303 () Bool)

(assert (=> b!175479 (=> (not res!79303) (not e!106445))))

(assert (=> b!175479 (= res!79303 (= (size!2431 lt!56769) (+ (size!2431 (list!1073 (charsOf!182 (h!8335 tokens!465)))) (size!2431 lt!55963))))))

(declare-fun b!175477 () Bool)

(assert (=> b!175477 (= e!106446 lt!55963)))

(declare-fun b!175478 () Bool)

(assert (=> b!175478 (= e!106446 (Cons!2936 (h!8333 (list!1073 (charsOf!182 (h!8335 tokens!465)))) (++!680 (t!27584 (list!1073 (charsOf!182 (h!8335 tokens!465)))) lt!55963)))))

(assert (= (and d!44599 c!34689) b!175477))

(assert (= (and d!44599 (not c!34689)) b!175478))

(assert (= (and d!44599 res!79304) b!175479))

(assert (= (and b!175479 res!79303) b!175480))

(declare-fun m!175643 () Bool)

(assert (=> d!44599 m!175643))

(assert (=> d!44599 m!172875))

(declare-fun m!175645 () Bool)

(assert (=> d!44599 m!175645))

(assert (=> d!44599 m!174525))

(declare-fun m!175647 () Bool)

(assert (=> b!175479 m!175647))

(assert (=> b!175479 m!172875))

(declare-fun m!175649 () Bool)

(assert (=> b!175479 m!175649))

(assert (=> b!175479 m!174533))

(declare-fun m!175651 () Bool)

(assert (=> b!175478 m!175651))

(assert (=> b!174198 d!44599))

(assert (=> b!174198 d!44107))

(assert (=> b!174198 d!44109))

(declare-fun b!175481 () Bool)

(declare-fun e!106447 () Option!331)

(declare-fun call!7812 () Option!331)

(assert (=> b!175481 (= e!106447 call!7812)))

(declare-fun b!175482 () Bool)

(declare-fun res!79306 () Bool)

(declare-fun e!106448 () Bool)

(assert (=> b!175482 (=> (not res!79306) (not e!106448))))

(declare-fun lt!56773 () Option!331)

(assert (=> b!175482 (= res!79306 (= (++!680 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56773)))) (_2!1648 (get!811 lt!56773))) (++!680 (list!1073 (charsOf!182 (h!8335 tokens!465))) lt!55963)))))

(declare-fun b!175483 () Bool)

(declare-fun lt!56770 () Option!331)

(declare-fun lt!56774 () Option!331)

(assert (=> b!175483 (= e!106447 (ite (and ((_ is None!330) lt!56770) ((_ is None!330) lt!56774)) None!330 (ite ((_ is None!330) lt!56774) lt!56770 (ite ((_ is None!330) lt!56770) lt!56774 (ite (>= (size!2427 (_1!1648 (v!13783 lt!56770))) (size!2427 (_1!1648 (v!13783 lt!56774)))) lt!56770 lt!56774)))))))

(assert (=> b!175483 (= lt!56770 call!7812)))

(assert (=> b!175483 (= lt!56774 (maxPrefix!143 thiss!17480 (t!27585 rules!1920) (++!680 (list!1073 (charsOf!182 (h!8335 tokens!465))) lt!55963)))))

(declare-fun bm!7807 () Bool)

(assert (=> bm!7807 (= call!7812 (maxPrefixOneRule!75 thiss!17480 (h!8334 rules!1920) (++!680 (list!1073 (charsOf!182 (h!8335 tokens!465))) lt!55963)))))

(declare-fun b!175484 () Bool)

(assert (=> b!175484 (= e!106448 (contains!476 rules!1920 (rule!1038 (_1!1648 (get!811 lt!56773)))))))

(declare-fun b!175485 () Bool)

(declare-fun res!79305 () Bool)

(assert (=> b!175485 (=> (not res!79305) (not e!106448))))

(assert (=> b!175485 (= res!79305 (= (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56773)))) (originalCharacters!570 (_1!1648 (get!811 lt!56773)))))))

(declare-fun b!175486 () Bool)

(declare-fun res!79308 () Bool)

(assert (=> b!175486 (=> (not res!79308) (not e!106448))))

(assert (=> b!175486 (= res!79308 (< (size!2431 (_2!1648 (get!811 lt!56773))) (size!2431 (++!680 (list!1073 (charsOf!182 (h!8335 tokens!465))) lt!55963))))))

(declare-fun d!44601 () Bool)

(declare-fun e!106449 () Bool)

(assert (=> d!44601 e!106449))

(declare-fun res!79311 () Bool)

(assert (=> d!44601 (=> res!79311 e!106449)))

(assert (=> d!44601 (= res!79311 (isEmpty!1282 lt!56773))))

(assert (=> d!44601 (= lt!56773 e!106447)))

(declare-fun c!34690 () Bool)

(assert (=> d!44601 (= c!34690 (and ((_ is Cons!2937) rules!1920) ((_ is Nil!2937) (t!27585 rules!1920))))))

(declare-fun lt!56772 () Unit!2616)

(declare-fun lt!56771 () Unit!2616)

(assert (=> d!44601 (= lt!56772 lt!56771)))

(assert (=> d!44601 (isPrefix!232 (++!680 (list!1073 (charsOf!182 (h!8335 tokens!465))) lt!55963) (++!680 (list!1073 (charsOf!182 (h!8335 tokens!465))) lt!55963))))

(assert (=> d!44601 (= lt!56771 (lemmaIsPrefixRefl!140 (++!680 (list!1073 (charsOf!182 (h!8335 tokens!465))) lt!55963) (++!680 (list!1073 (charsOf!182 (h!8335 tokens!465))) lt!55963)))))

(assert (=> d!44601 (rulesValidInductive!126 thiss!17480 rules!1920)))

(assert (=> d!44601 (= (maxPrefix!143 thiss!17480 rules!1920 (++!680 (list!1073 (charsOf!182 (h!8335 tokens!465))) lt!55963)) lt!56773)))

(declare-fun b!175487 () Bool)

(declare-fun res!79307 () Bool)

(assert (=> b!175487 (=> (not res!79307) (not e!106448))))

(assert (=> b!175487 (= res!79307 (= (value!19335 (_1!1648 (get!811 lt!56773))) (apply!432 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56773)))) (seqFromList!432 (originalCharacters!570 (_1!1648 (get!811 lt!56773)))))))))

(declare-fun b!175488 () Bool)

(assert (=> b!175488 (= e!106449 e!106448)))

(declare-fun res!79309 () Bool)

(assert (=> b!175488 (=> (not res!79309) (not e!106448))))

(assert (=> b!175488 (= res!79309 (isDefined!182 lt!56773))))

(declare-fun b!175489 () Bool)

(declare-fun res!79310 () Bool)

(assert (=> b!175489 (=> (not res!79310) (not e!106448))))

(assert (=> b!175489 (= res!79310 (matchR!89 (regex!527 (rule!1038 (_1!1648 (get!811 lt!56773)))) (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56773))))))))

(assert (= (and d!44601 c!34690) b!175481))

(assert (= (and d!44601 (not c!34690)) b!175483))

(assert (= (or b!175481 b!175483) bm!7807))

(assert (= (and d!44601 (not res!79311)) b!175488))

(assert (= (and b!175488 res!79309) b!175485))

(assert (= (and b!175485 res!79305) b!175486))

(assert (= (and b!175486 res!79308) b!175482))

(assert (= (and b!175482 res!79306) b!175487))

(assert (= (and b!175487 res!79307) b!175489))

(assert (= (and b!175489 res!79310) b!175484))

(declare-fun m!175653 () Bool)

(assert (=> b!175484 m!175653))

(declare-fun m!175655 () Bool)

(assert (=> b!175484 m!175655))

(declare-fun m!175657 () Bool)

(assert (=> d!44601 m!175657))

(assert (=> d!44601 m!173127))

(assert (=> d!44601 m!173127))

(declare-fun m!175659 () Bool)

(assert (=> d!44601 m!175659))

(assert (=> d!44601 m!173127))

(assert (=> d!44601 m!173127))

(declare-fun m!175661 () Bool)

(assert (=> d!44601 m!175661))

(assert (=> d!44601 m!173153))

(assert (=> b!175489 m!175653))

(declare-fun m!175663 () Bool)

(assert (=> b!175489 m!175663))

(assert (=> b!175489 m!175663))

(declare-fun m!175665 () Bool)

(assert (=> b!175489 m!175665))

(assert (=> b!175489 m!175665))

(declare-fun m!175667 () Bool)

(assert (=> b!175489 m!175667))

(assert (=> b!175486 m!175653))

(declare-fun m!175669 () Bool)

(assert (=> b!175486 m!175669))

(assert (=> b!175486 m!173127))

(declare-fun m!175671 () Bool)

(assert (=> b!175486 m!175671))

(assert (=> bm!7807 m!173127))

(declare-fun m!175673 () Bool)

(assert (=> bm!7807 m!175673))

(declare-fun m!175675 () Bool)

(assert (=> b!175488 m!175675))

(assert (=> b!175482 m!175653))

(assert (=> b!175482 m!175663))

(assert (=> b!175482 m!175663))

(assert (=> b!175482 m!175665))

(assert (=> b!175482 m!175665))

(declare-fun m!175677 () Bool)

(assert (=> b!175482 m!175677))

(assert (=> b!175483 m!173127))

(declare-fun m!175679 () Bool)

(assert (=> b!175483 m!175679))

(assert (=> b!175485 m!175653))

(assert (=> b!175485 m!175663))

(assert (=> b!175485 m!175663))

(assert (=> b!175485 m!175665))

(assert (=> b!175487 m!175653))

(declare-fun m!175681 () Bool)

(assert (=> b!175487 m!175681))

(assert (=> b!175487 m!175681))

(declare-fun m!175685 () Bool)

(assert (=> b!175487 m!175685))

(assert (=> b!174198 d!44601))

(declare-fun d!44603 () Bool)

(declare-fun c!34695 () Bool)

(assert (=> d!44603 (= c!34695 ((_ is Nil!2936) lt!56122))))

(declare-fun e!106459 () (InoxSet C!2424))

(assert (=> d!44603 (= (content!407 lt!56122) e!106459)))

(declare-fun b!175503 () Bool)

(assert (=> b!175503 (= e!106459 ((as const (Array C!2424 Bool)) false))))

(declare-fun b!175504 () Bool)

(assert (=> b!175504 (= e!106459 ((_ map or) (store ((as const (Array C!2424 Bool)) false) (h!8333 lt!56122) true) (content!407 (t!27584 lt!56122))))))

(assert (= (and d!44603 c!34695) b!175503))

(assert (= (and d!44603 (not c!34695)) b!175504))

(declare-fun m!175701 () Bool)

(assert (=> b!175504 m!175701))

(declare-fun m!175703 () Bool)

(assert (=> b!175504 m!175703))

(assert (=> d!44091 d!44603))

(declare-fun d!44615 () Bool)

(declare-fun c!34696 () Bool)

(assert (=> d!44615 (= c!34696 ((_ is Nil!2936) (++!680 lt!55823 lt!55827)))))

(declare-fun e!106460 () (InoxSet C!2424))

(assert (=> d!44615 (= (content!407 (++!680 lt!55823 lt!55827)) e!106460)))

(declare-fun b!175505 () Bool)

(assert (=> b!175505 (= e!106460 ((as const (Array C!2424 Bool)) false))))

(declare-fun b!175506 () Bool)

(assert (=> b!175506 (= e!106460 ((_ map or) (store ((as const (Array C!2424 Bool)) false) (h!8333 (++!680 lt!55823 lt!55827)) true) (content!407 (t!27584 (++!680 lt!55823 lt!55827)))))))

(assert (= (and d!44615 c!34696) b!175505))

(assert (= (and d!44615 (not c!34696)) b!175506))

(declare-fun m!175705 () Bool)

(assert (=> b!175506 m!175705))

(declare-fun m!175707 () Bool)

(assert (=> b!175506 m!175707))

(assert (=> d!44091 d!44615))

(declare-fun d!44617 () Bool)

(declare-fun c!34697 () Bool)

(assert (=> d!44617 (= c!34697 ((_ is Nil!2936) lt!55824))))

(declare-fun e!106461 () (InoxSet C!2424))

(assert (=> d!44617 (= (content!407 lt!55824) e!106461)))

(declare-fun b!175507 () Bool)

(assert (=> b!175507 (= e!106461 ((as const (Array C!2424 Bool)) false))))

(declare-fun b!175508 () Bool)

(assert (=> b!175508 (= e!106461 ((_ map or) (store ((as const (Array C!2424 Bool)) false) (h!8333 lt!55824) true) (content!407 (t!27584 lt!55824))))))

(assert (= (and d!44617 c!34697) b!175507))

(assert (= (and d!44617 (not c!34697)) b!175508))

(declare-fun m!175709 () Bool)

(assert (=> b!175508 m!175709))

(declare-fun m!175711 () Bool)

(assert (=> b!175508 m!175711))

(assert (=> d!44091 d!44617))

(declare-fun bs!17394 () Bool)

(declare-fun b!175593 () Bool)

(assert (= bs!17394 (and b!175593 d!44337)))

(declare-fun lambda!5084 () Int)

(assert (=> bs!17394 (= (and (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465))))) (= (toValue!1194 (transformation!527 (h!8334 rules!1920))) (toValue!1194 (transformation!527 (rule!1038 (h!8335 tokens!465)))))) (= lambda!5084 lambda!5059))))

(declare-fun b!175603 () Bool)

(declare-fun e!106521 () Bool)

(assert (=> b!175603 (= e!106521 true)))

(declare-fun b!175602 () Bool)

(declare-fun e!106520 () Bool)

(assert (=> b!175602 (= e!106520 e!106521)))

(assert (=> b!175593 e!106520))

(assert (= b!175602 b!175603))

(assert (= b!175593 b!175602))

(assert (=> b!175603 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1136 order!1635 lambda!5084))))

(assert (=> b!175603 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1136 order!1635 lambda!5084))))

(declare-fun b!175589 () Bool)

(declare-fun e!106512 () Option!330)

(assert (=> b!175589 (= e!106512 None!329)))

(declare-fun d!44619 () Bool)

(declare-fun e!106510 () Bool)

(assert (=> d!44619 e!106510))

(declare-fun res!79350 () Bool)

(assert (=> d!44619 (=> (not res!79350) (not e!106510))))

(declare-fun lt!56866 () Option!330)

(assert (=> d!44619 (= res!79350 (= (isDefined!181 lt!56866) (isDefined!182 (maxPrefixOneRule!75 thiss!17480 (h!8334 rules!1920) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))))))))

(assert (=> d!44619 (= lt!56866 e!106512)))

(declare-fun c!34721 () Bool)

(declare-datatypes ((tuple2!2878 0))(
  ( (tuple2!2879 (_1!1655 BalanceConc!1760) (_2!1655 BalanceConc!1760)) )
))
(declare-fun lt!56869 () tuple2!2878)

(assert (=> d!44619 (= c!34721 (isEmpty!1281 (_1!1655 lt!56869)))))

(declare-fun findLongestMatchWithZipperSequence!13 (Regex!751 BalanceConc!1760) tuple2!2878)

(assert (=> d!44619 (= lt!56869 (findLongestMatchWithZipperSequence!13 (regex!527 (h!8334 rules!1920)) (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))

(assert (=> d!44619 (ruleValid!60 thiss!17480 (h!8334 rules!1920))))

(assert (=> d!44619 (= (maxPrefixOneRuleZipperSequence!45 thiss!17480 (h!8334 rules!1920) (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))) lt!56866)))

(declare-fun b!175590 () Bool)

(declare-fun e!106511 () Bool)

(assert (=> b!175590 (= e!106511 (= (list!1073 (_2!1649 (get!812 lt!56866))) (_2!1648 (get!811 (maxPrefixOneRule!75 thiss!17480 (h!8334 rules!1920) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))))

(declare-fun b!175591 () Bool)

(declare-fun e!106514 () Bool)

(declare-fun lt!56868 () List!2946)

(assert (=> b!175591 (= e!106514 (matchR!89 (regex!527 (h!8334 rules!1920)) (_1!1653 (findLongestMatchInner!54 (regex!527 (h!8334 rules!1920)) Nil!2936 (size!2431 Nil!2936) lt!56868 lt!56868 (size!2431 lt!56868)))))))

(declare-fun b!175592 () Bool)

(declare-fun e!106513 () Bool)

(assert (=> b!175592 (= e!106513 e!106511)))

(declare-fun res!79347 () Bool)

(assert (=> b!175592 (=> (not res!79347) (not e!106511))))

(assert (=> b!175592 (= res!79347 (= (_1!1649 (get!812 lt!56866)) (_1!1648 (get!811 (maxPrefixOneRule!75 thiss!17480 (h!8334 rules!1920) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))))

(assert (=> b!175593 (= e!106512 (Some!329 (tuple2!2867 (Token!799 (apply!432 (transformation!527 (h!8334 rules!1920)) (_1!1655 lt!56869)) (h!8334 rules!1920) (size!2433 (_1!1655 lt!56869)) (list!1073 (_1!1655 lt!56869))) (_2!1655 lt!56869))))))

(assert (=> b!175593 (= lt!56868 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))

(declare-fun lt!56862 () Unit!2616)

(assert (=> b!175593 (= lt!56862 (longestMatchIsAcceptedByMatchOrIsEmpty!38 (regex!527 (h!8334 rules!1920)) lt!56868))))

(declare-fun res!79349 () Bool)

(assert (=> b!175593 (= res!79349 (isEmpty!1271 (_1!1653 (findLongestMatchInner!54 (regex!527 (h!8334 rules!1920)) Nil!2936 (size!2431 Nil!2936) lt!56868 lt!56868 (size!2431 lt!56868)))))))

(assert (=> b!175593 (=> res!79349 e!106514)))

(assert (=> b!175593 e!106514))

(declare-fun lt!56870 () Unit!2616)

(assert (=> b!175593 (= lt!56870 lt!56862)))

(declare-fun lt!56863 () Unit!2616)

(declare-fun lemmaInv!16 (TokenValueInjection!870) Unit!2616)

(assert (=> b!175593 (= lt!56863 (lemmaInv!16 (transformation!527 (h!8334 rules!1920))))))

(declare-fun lt!56871 () Unit!2616)

(declare-fun ForallOf!13 (Int BalanceConc!1760) Unit!2616)

(assert (=> b!175593 (= lt!56871 (ForallOf!13 lambda!5084 (_1!1655 lt!56869)))))

(declare-fun lt!56865 () Unit!2616)

(assert (=> b!175593 (= lt!56865 (ForallOf!13 lambda!5084 (seqFromList!432 (list!1073 (_1!1655 lt!56869)))))))

(declare-fun lt!56867 () Option!330)

(assert (=> b!175593 (= lt!56867 (Some!329 (tuple2!2867 (Token!799 (apply!432 (transformation!527 (h!8334 rules!1920)) (_1!1655 lt!56869)) (h!8334 rules!1920) (size!2433 (_1!1655 lt!56869)) (list!1073 (_1!1655 lt!56869))) (_2!1655 lt!56869))))))

(declare-fun lt!56864 () Unit!2616)

(declare-fun lemmaEqSameImage!13 (TokenValueInjection!870 BalanceConc!1760 BalanceConc!1760) Unit!2616)

(assert (=> b!175593 (= lt!56864 (lemmaEqSameImage!13 (transformation!527 (h!8334 rules!1920)) (_1!1655 lt!56869) (seqFromList!432 (list!1073 (_1!1655 lt!56869)))))))

(declare-fun b!175594 () Bool)

(assert (=> b!175594 (= e!106510 e!106513)))

(declare-fun res!79348 () Bool)

(assert (=> b!175594 (=> res!79348 e!106513)))

(assert (=> b!175594 (= res!79348 (not (isDefined!181 lt!56866)))))

(assert (= (and d!44619 c!34721) b!175589))

(assert (= (and d!44619 (not c!34721)) b!175593))

(assert (= (and b!175593 (not res!79349)) b!175591))

(assert (= (and d!44619 res!79350) b!175594))

(assert (= (and b!175594 (not res!79348)) b!175592))

(assert (= (and b!175592 res!79347) b!175590))

(assert (=> b!175593 m!174659))

(declare-fun m!175989 () Bool)

(assert (=> b!175593 m!175989))

(declare-fun m!175991 () Bool)

(assert (=> b!175593 m!175991))

(declare-fun m!175993 () Bool)

(assert (=> b!175593 m!175993))

(declare-fun m!175995 () Bool)

(assert (=> b!175593 m!175995))

(declare-fun m!175997 () Bool)

(assert (=> b!175593 m!175997))

(declare-fun m!175999 () Bool)

(assert (=> b!175593 m!175999))

(assert (=> b!175593 m!174659))

(assert (=> b!175593 m!175993))

(declare-fun m!176001 () Bool)

(assert (=> b!175593 m!176001))

(declare-fun m!176003 () Bool)

(assert (=> b!175593 m!176003))

(assert (=> b!175593 m!175997))

(declare-fun m!176005 () Bool)

(assert (=> b!175593 m!176005))

(assert (=> b!175593 m!172805))

(assert (=> b!175593 m!173145))

(assert (=> b!175593 m!176003))

(declare-fun m!176007 () Bool)

(assert (=> b!175593 m!176007))

(declare-fun m!176009 () Bool)

(assert (=> b!175593 m!176009))

(assert (=> b!175593 m!175997))

(declare-fun m!176011 () Bool)

(assert (=> b!175593 m!176011))

(assert (=> d!44619 m!172805))

(assert (=> d!44619 m!173145))

(declare-fun m!176013 () Bool)

(assert (=> d!44619 m!176013))

(assert (=> d!44619 m!172805))

(declare-fun m!176015 () Bool)

(assert (=> d!44619 m!176015))

(assert (=> d!44619 m!173145))

(declare-fun m!176017 () Bool)

(assert (=> d!44619 m!176017))

(declare-fun m!176019 () Bool)

(assert (=> d!44619 m!176019))

(assert (=> d!44619 m!174701))

(assert (=> d!44619 m!176017))

(declare-fun m!176021 () Bool)

(assert (=> d!44619 m!176021))

(assert (=> b!175590 m!176017))

(declare-fun m!176023 () Bool)

(assert (=> b!175590 m!176023))

(declare-fun m!176025 () Bool)

(assert (=> b!175590 m!176025))

(declare-fun m!176027 () Bool)

(assert (=> b!175590 m!176027))

(assert (=> b!175590 m!172805))

(assert (=> b!175590 m!173145))

(assert (=> b!175590 m!173145))

(assert (=> b!175590 m!176017))

(assert (=> b!175594 m!176013))

(assert (=> b!175591 m!174659))

(assert (=> b!175591 m!175993))

(assert (=> b!175591 m!174659))

(assert (=> b!175591 m!175993))

(assert (=> b!175591 m!176001))

(declare-fun m!176029 () Bool)

(assert (=> b!175591 m!176029))

(assert (=> b!175592 m!176027))

(assert (=> b!175592 m!172805))

(assert (=> b!175592 m!173145))

(assert (=> b!175592 m!173145))

(assert (=> b!175592 m!176017))

(assert (=> b!175592 m!176017))

(assert (=> b!175592 m!176023))

(assert (=> bm!7738 d!44619))

(declare-fun d!44669 () Bool)

(declare-fun e!106528 () Bool)

(assert (=> d!44669 e!106528))

(declare-fun res!79355 () Bool)

(assert (=> d!44669 (=> (not res!79355) (not e!106528))))

(declare-fun lt!56873 () List!2946)

(assert (=> d!44669 (= res!79355 (= (content!407 lt!56873) ((_ map or) (content!407 (t!27584 (++!680 lt!55823 lt!55827))) (content!407 lt!55824))))))

(declare-fun e!106529 () List!2946)

(assert (=> d!44669 (= lt!56873 e!106529)))

(declare-fun c!34725 () Bool)

(assert (=> d!44669 (= c!34725 ((_ is Nil!2936) (t!27584 (++!680 lt!55823 lt!55827))))))

(assert (=> d!44669 (= (++!680 (t!27584 (++!680 lt!55823 lt!55827)) lt!55824) lt!56873)))

(declare-fun b!175616 () Bool)

(assert (=> b!175616 (= e!106528 (or (not (= lt!55824 Nil!2936)) (= lt!56873 (t!27584 (++!680 lt!55823 lt!55827)))))))

(declare-fun b!175615 () Bool)

(declare-fun res!79354 () Bool)

(assert (=> b!175615 (=> (not res!79354) (not e!106528))))

(assert (=> b!175615 (= res!79354 (= (size!2431 lt!56873) (+ (size!2431 (t!27584 (++!680 lt!55823 lt!55827))) (size!2431 lt!55824))))))

(declare-fun b!175613 () Bool)

(assert (=> b!175613 (= e!106529 lt!55824)))

(declare-fun b!175614 () Bool)

(assert (=> b!175614 (= e!106529 (Cons!2936 (h!8333 (t!27584 (++!680 lt!55823 lt!55827))) (++!680 (t!27584 (t!27584 (++!680 lt!55823 lt!55827))) lt!55824)))))

(assert (= (and d!44669 c!34725) b!175613))

(assert (= (and d!44669 (not c!34725)) b!175614))

(assert (= (and d!44669 res!79355) b!175615))

(assert (= (and b!175615 res!79354) b!175616))

(declare-fun m!176037 () Bool)

(assert (=> d!44669 m!176037))

(assert (=> d!44669 m!175707))

(assert (=> d!44669 m!172913))

(declare-fun m!176043 () Bool)

(assert (=> b!175615 m!176043))

(declare-fun m!176045 () Bool)

(assert (=> b!175615 m!176045))

(assert (=> b!175615 m!172919))

(declare-fun m!176047 () Bool)

(assert (=> b!175614 m!176047))

(assert (=> b!174517 d!44669))

(declare-fun d!44675 () Bool)

(assert (=> d!44675 (= (isEmpty!1271 lt!55823) ((_ is Nil!2936) lt!55823))))

(assert (=> d!44041 d!44675))

(declare-fun b!175652 () Bool)

(declare-fun e!106558 () Bool)

(declare-fun e!106556 () Bool)

(assert (=> b!175652 (= e!106558 e!106556)))

(declare-fun c!34735 () Bool)

(assert (=> b!175652 (= c!34735 ((_ is Union!751) (regex!527 (rule!1038 (h!8335 tokens!465)))))))

(declare-fun b!175653 () Bool)

(declare-fun e!106555 () Bool)

(assert (=> b!175653 (= e!106558 e!106555)))

(declare-fun res!79378 () Bool)

(assert (=> b!175653 (= res!79378 (not (nullable!109 (reg!1080 (regex!527 (rule!1038 (h!8335 tokens!465)))))))))

(assert (=> b!175653 (=> (not res!79378) (not e!106555))))

(declare-fun b!175654 () Bool)

(declare-fun res!79377 () Bool)

(declare-fun e!106560 () Bool)

(assert (=> b!175654 (=> res!79377 e!106560)))

(assert (=> b!175654 (= res!79377 (not ((_ is Concat!1301) (regex!527 (rule!1038 (h!8335 tokens!465))))))))

(assert (=> b!175654 (= e!106556 e!106560)))

(declare-fun bm!7823 () Bool)

(declare-fun call!7828 () Bool)

(declare-fun call!7830 () Bool)

(assert (=> bm!7823 (= call!7828 call!7830)))

(declare-fun b!175655 () Bool)

(declare-fun res!79376 () Bool)

(declare-fun e!106554 () Bool)

(assert (=> b!175655 (=> (not res!79376) (not e!106554))))

(declare-fun call!7829 () Bool)

(assert (=> b!175655 (= res!79376 call!7829)))

(assert (=> b!175655 (= e!106556 e!106554)))

(declare-fun b!175656 () Bool)

(declare-fun e!106559 () Bool)

(assert (=> b!175656 (= e!106560 e!106559)))

(declare-fun res!79379 () Bool)

(assert (=> b!175656 (=> (not res!79379) (not e!106559))))

(assert (=> b!175656 (= res!79379 call!7828)))

(declare-fun b!175658 () Bool)

(declare-fun e!106557 () Bool)

(assert (=> b!175658 (= e!106557 e!106558)))

(declare-fun c!34734 () Bool)

(assert (=> b!175658 (= c!34734 ((_ is Star!751) (regex!527 (rule!1038 (h!8335 tokens!465)))))))

(declare-fun bm!7824 () Bool)

(assert (=> bm!7824 (= call!7829 (validRegex!182 (ite c!34735 (regOne!2015 (regex!527 (rule!1038 (h!8335 tokens!465)))) (regTwo!2014 (regex!527 (rule!1038 (h!8335 tokens!465)))))))))

(declare-fun b!175659 () Bool)

(assert (=> b!175659 (= e!106559 call!7829)))

(declare-fun d!44677 () Bool)

(declare-fun res!79375 () Bool)

(assert (=> d!44677 (=> res!79375 e!106557)))

(assert (=> d!44677 (= res!79375 ((_ is ElementMatch!751) (regex!527 (rule!1038 (h!8335 tokens!465)))))))

(assert (=> d!44677 (= (validRegex!182 (regex!527 (rule!1038 (h!8335 tokens!465)))) e!106557)))

(declare-fun b!175657 () Bool)

(assert (=> b!175657 (= e!106554 call!7828)))

(declare-fun bm!7825 () Bool)

(assert (=> bm!7825 (= call!7830 (validRegex!182 (ite c!34734 (reg!1080 (regex!527 (rule!1038 (h!8335 tokens!465)))) (ite c!34735 (regTwo!2015 (regex!527 (rule!1038 (h!8335 tokens!465)))) (regOne!2014 (regex!527 (rule!1038 (h!8335 tokens!465))))))))))

(declare-fun b!175660 () Bool)

(assert (=> b!175660 (= e!106555 call!7830)))

(assert (= (and d!44677 (not res!79375)) b!175658))

(assert (= (and b!175658 c!34734) b!175653))

(assert (= (and b!175658 (not c!34734)) b!175652))

(assert (= (and b!175653 res!79378) b!175660))

(assert (= (and b!175652 c!34735) b!175655))

(assert (= (and b!175652 (not c!34735)) b!175654))

(assert (= (and b!175655 res!79376) b!175657))

(assert (= (and b!175654 (not res!79377)) b!175656))

(assert (= (and b!175656 res!79379) b!175659))

(assert (= (or b!175655 b!175659) bm!7824))

(assert (= (or b!175657 b!175656) bm!7823))

(assert (= (or b!175660 bm!7823) bm!7825))

(declare-fun m!176165 () Bool)

(assert (=> b!175653 m!176165))

(declare-fun m!176167 () Bool)

(assert (=> bm!7824 m!176167))

(declare-fun m!176169 () Bool)

(assert (=> bm!7825 m!176169))

(assert (=> d!44041 d!44677))

(declare-fun d!44695 () Bool)

(declare-fun res!79398 () Bool)

(declare-fun e!106567 () Bool)

(assert (=> d!44695 (=> res!79398 e!106567)))

(assert (=> d!44695 (= res!79398 (not ((_ is Node!877) (c!34381 lt!56198))))))

(assert (=> d!44695 (= (isBalanced!244 (c!34381 lt!56198)) e!106567)))

(declare-fun b!175681 () Bool)

(declare-fun res!79394 () Bool)

(declare-fun e!106568 () Bool)

(assert (=> b!175681 (=> (not res!79394) (not e!106568))))

(declare-fun height!99 (Conc!877) Int)

(assert (=> b!175681 (= res!79394 (<= (- (height!99 (left!2251 (c!34381 lt!56198))) (height!99 (right!2581 (c!34381 lt!56198)))) 1))))

(declare-fun b!175682 () Bool)

(assert (=> b!175682 (= e!106568 (not (isEmpty!1280 (right!2581 (c!34381 lt!56198)))))))

(declare-fun b!175683 () Bool)

(declare-fun res!79395 () Bool)

(assert (=> b!175683 (=> (not res!79395) (not e!106568))))

(assert (=> b!175683 (= res!79395 (not (isEmpty!1280 (left!2251 (c!34381 lt!56198)))))))

(declare-fun b!175684 () Bool)

(declare-fun res!79397 () Bool)

(assert (=> b!175684 (=> (not res!79397) (not e!106568))))

(assert (=> b!175684 (= res!79397 (isBalanced!244 (left!2251 (c!34381 lt!56198))))))

(declare-fun b!175685 () Bool)

(declare-fun res!79396 () Bool)

(assert (=> b!175685 (=> (not res!79396) (not e!106568))))

(assert (=> b!175685 (= res!79396 (isBalanced!244 (right!2581 (c!34381 lt!56198))))))

(declare-fun b!175686 () Bool)

(assert (=> b!175686 (= e!106567 e!106568)))

(declare-fun res!79399 () Bool)

(assert (=> b!175686 (=> (not res!79399) (not e!106568))))

(assert (=> b!175686 (= res!79399 (<= (- 1) (- (height!99 (left!2251 (c!34381 lt!56198))) (height!99 (right!2581 (c!34381 lt!56198))))))))

(assert (= (and d!44695 (not res!79398)) b!175686))

(assert (= (and b!175686 res!79399) b!175681))

(assert (= (and b!175681 res!79394) b!175684))

(assert (= (and b!175684 res!79397) b!175685))

(assert (= (and b!175685 res!79396) b!175683))

(assert (= (and b!175683 res!79395) b!175682))

(declare-fun m!176187 () Bool)

(assert (=> b!175684 m!176187))

(declare-fun m!176189 () Bool)

(assert (=> b!175682 m!176189))

(declare-fun m!176191 () Bool)

(assert (=> b!175681 m!176191))

(declare-fun m!176193 () Bool)

(assert (=> b!175681 m!176193))

(declare-fun m!176195 () Bool)

(assert (=> b!175685 m!176195))

(assert (=> b!175686 m!176191))

(assert (=> b!175686 m!176193))

(declare-fun m!176197 () Bool)

(assert (=> b!175683 m!176197))

(assert (=> b!174728 d!44695))

(assert (=> bm!7702 d!44533))

(declare-fun d!44705 () Bool)

(assert (=> d!44705 (= (list!1073 e!105627) (list!1076 (c!34379 e!105627)))))

(declare-fun bs!17402 () Bool)

(assert (= bs!17402 d!44705))

(declare-fun m!176199 () Bool)

(assert (=> bs!17402 m!176199))

(assert (=> bm!7731 d!44705))

(declare-fun b!175690 () Bool)

(declare-fun e!106571 () List!2946)

(assert (=> b!175690 (= e!106571 (list!1081 (xs!3471 (c!34379 lt!55829))))))

(declare-fun b!175689 () Bool)

(declare-fun e!106570 () List!2946)

(assert (=> b!175689 (= e!106570 e!106571)))

(declare-fun c!34738 () Bool)

(assert (=> b!175689 (= c!34738 ((_ is Leaf!1479) (c!34379 lt!55829)))))

(declare-fun b!175688 () Bool)

(assert (=> b!175688 (= e!106570 Nil!2936)))

(declare-fun b!175691 () Bool)

(assert (=> b!175691 (= e!106571 (++!680 (list!1076 (left!2250 (c!34379 lt!55829))) (list!1076 (right!2580 (c!34379 lt!55829)))))))

(declare-fun d!44707 () Bool)

(declare-fun c!34737 () Bool)

(assert (=> d!44707 (= c!34737 ((_ is Empty!876) (c!34379 lt!55829)))))

(assert (=> d!44707 (= (list!1076 (c!34379 lt!55829)) e!106570)))

(assert (= (and d!44707 c!34737) b!175688))

(assert (= (and d!44707 (not c!34737)) b!175689))

(assert (= (and b!175689 c!34738) b!175690))

(assert (= (and b!175689 (not c!34738)) b!175691))

(declare-fun m!176205 () Bool)

(assert (=> b!175690 m!176205))

(declare-fun m!176207 () Bool)

(assert (=> b!175691 m!176207))

(declare-fun m!176209 () Bool)

(assert (=> b!175691 m!176209))

(assert (=> b!175691 m!176207))

(assert (=> b!175691 m!176209))

(declare-fun m!176211 () Bool)

(assert (=> b!175691 m!176211))

(assert (=> d!44153 d!44707))

(declare-fun bs!17403 () Bool)

(declare-fun b!175694 () Bool)

(assert (= bs!17403 (and b!175694 d!44519)))

(declare-fun lambda!5088 () Int)

(assert (=> bs!17403 (= lambda!5088 lambda!5071)))

(declare-fun bs!17404 () Bool)

(assert (= bs!17404 (and b!175694 b!174118)))

(assert (=> bs!17404 (= lambda!5088 lambda!5024)))

(declare-fun bs!17405 () Bool)

(assert (= bs!17405 (and b!175694 b!174010)))

(assert (=> bs!17405 (= lambda!5088 lambda!5012)))

(declare-fun bs!17406 () Bool)

(assert (= bs!17406 (and b!175694 b!173998)))

(assert (=> bs!17406 (not (= lambda!5088 lambda!5011))))

(declare-fun bs!17407 () Bool)

(assert (= bs!17407 (and b!175694 d!43945)))

(assert (=> bs!17407 (not (= lambda!5088 lambda!5023))))

(declare-fun bs!17408 () Bool)

(assert (= bs!17408 (and b!175694 b!174525)))

(assert (=> bs!17408 (= lambda!5088 lambda!5050)))

(declare-fun bs!17409 () Bool)

(assert (= bs!17409 (and b!175694 d!44101)))

(assert (=> bs!17409 (not (= lambda!5088 lambda!5051))))

(declare-fun bs!17410 () Bool)

(assert (= bs!17410 (and b!175694 d!44043)))

(assert (=> bs!17410 (= lambda!5088 lambda!5044)))

(declare-fun bs!17411 () Bool)

(assert (= bs!17411 (and b!175694 d!44545)))

(assert (=> bs!17411 (= lambda!5088 lambda!5075)))

(declare-fun bs!17412 () Bool)

(assert (= bs!17412 (and b!175694 d!43987)))

(assert (=> bs!17412 (= lambda!5088 lambda!5033)))

(declare-fun bs!17413 () Bool)

(assert (= bs!17413 (and b!175694 b!174198)))

(assert (=> bs!17413 (= lambda!5088 lambda!5030)))

(declare-fun bs!17414 () Bool)

(assert (= bs!17414 (and b!175694 b!174547)))

(assert (=> bs!17414 (= lambda!5088 lambda!5052)))

(declare-fun b!175703 () Bool)

(declare-fun e!106579 () Bool)

(assert (=> b!175703 (= e!106579 true)))

(declare-fun b!175702 () Bool)

(declare-fun e!106578 () Bool)

(assert (=> b!175702 (= e!106578 e!106579)))

(declare-fun b!175701 () Bool)

(declare-fun e!106577 () Bool)

(assert (=> b!175701 (= e!106577 e!106578)))

(assert (=> b!175694 e!106577))

(assert (= b!175702 b!175703))

(assert (= b!175701 b!175702))

(assert (= (and b!175694 ((_ is Cons!2937) rules!1920)) b!175701))

(assert (=> b!175703 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5088))))

(assert (=> b!175703 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5088))))

(assert (=> b!175694 true))

(declare-fun d!44711 () Bool)

(declare-fun c!34742 () Bool)

(assert (=> d!44711 (= c!34742 ((_ is Cons!2938) (t!27586 (t!27586 tokens!465))))))

(declare-fun e!106576 () List!2946)

(assert (=> d!44711 (= (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 (t!27586 (t!27586 tokens!465)) separatorToken!170) e!106576)))

(declare-fun b!175693 () Bool)

(declare-fun e!106575 () List!2946)

(assert (=> b!175693 (= e!106575 Nil!2936)))

(assert (=> b!175693 (= (print!144 thiss!17480 (singletonSeq!79 (h!8335 (t!27586 (t!27586 tokens!465))))) (printTailRec!107 thiss!17480 (singletonSeq!79 (h!8335 (t!27586 (t!27586 tokens!465)))) 0 (BalanceConc!1761 Empty!876)))))

(declare-fun lt!56911 () Unit!2616)

(declare-fun Unit!2648 () Unit!2616)

(assert (=> b!175693 (= lt!56911 Unit!2648)))

(declare-fun lt!56910 () List!2946)

(declare-fun lt!56909 () Unit!2616)

(declare-fun call!7835 () List!2946)

(assert (=> b!175693 (= lt!56909 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!40 thiss!17480 rules!1920 call!7835 lt!56910))))

(assert (=> b!175693 false))

(declare-fun lt!56908 () Unit!2616)

(declare-fun Unit!2649 () Unit!2616)

(assert (=> b!175693 (= lt!56908 Unit!2649)))

(declare-fun e!106573 () List!2946)

(assert (=> b!175694 (= e!106576 e!106573)))

(declare-fun lt!56906 () Unit!2616)

(assert (=> b!175694 (= lt!56906 (forallContained!94 (t!27586 (t!27586 tokens!465)) lambda!5088 (h!8335 (t!27586 (t!27586 tokens!465)))))))

(assert (=> b!175694 (= lt!56910 (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 (t!27586 (t!27586 (t!27586 tokens!465))) separatorToken!170))))

(declare-fun lt!56907 () Option!331)

(assert (=> b!175694 (= lt!56907 (maxPrefix!143 thiss!17480 rules!1920 (++!680 (list!1073 (charsOf!182 (h!8335 (t!27586 (t!27586 tokens!465))))) lt!56910)))))

(declare-fun c!34741 () Bool)

(assert (=> b!175694 (= c!34741 (and ((_ is Some!330) lt!56907) (= (_1!1648 (v!13783 lt!56907)) (h!8335 (t!27586 (t!27586 tokens!465))))))))

(declare-fun b!175695 () Bool)

(assert (=> b!175695 (= e!106576 Nil!2936)))

(declare-fun b!175696 () Bool)

(declare-fun e!106574 () BalanceConc!1760)

(assert (=> b!175696 (= e!106574 (charsOf!182 separatorToken!170))))

(declare-fun b!175697 () Bool)

(declare-fun call!7834 () List!2946)

(assert (=> b!175697 (= e!106573 call!7834)))

(declare-fun bm!7826 () Bool)

(assert (=> bm!7826 (= call!7835 (list!1073 e!106574))))

(declare-fun c!34740 () Bool)

(declare-fun c!34739 () Bool)

(assert (=> bm!7826 (= c!34740 c!34739)))

(declare-fun bm!7827 () Bool)

(declare-fun call!7831 () List!2946)

(declare-fun call!7833 () BalanceConc!1760)

(declare-fun call!7832 () BalanceConc!1760)

(assert (=> bm!7827 (= call!7831 (list!1073 (ite c!34741 call!7833 call!7832)))))

(declare-fun bm!7828 () Bool)

(assert (=> bm!7828 (= call!7834 (++!680 call!7831 (ite c!34741 lt!56910 call!7835)))))

(declare-fun b!175698 () Bool)

(assert (=> b!175698 (= e!106575 (++!680 call!7834 lt!56910))))

(declare-fun b!175699 () Bool)

(assert (=> b!175699 (= e!106574 call!7832)))

(declare-fun bm!7829 () Bool)

(assert (=> bm!7829 (= call!7832 call!7833)))

(declare-fun bm!7830 () Bool)

(assert (=> bm!7830 (= call!7833 (charsOf!182 (h!8335 (t!27586 (t!27586 tokens!465)))))))

(declare-fun b!175700 () Bool)

(assert (=> b!175700 (= c!34739 (and ((_ is Some!330) lt!56907) (not (= (_1!1648 (v!13783 lt!56907)) (h!8335 (t!27586 (t!27586 tokens!465)))))))))

(assert (=> b!175700 (= e!106573 e!106575)))

(assert (= (and d!44711 c!34742) b!175694))

(assert (= (and d!44711 (not c!34742)) b!175695))

(assert (= (and b!175694 c!34741) b!175697))

(assert (= (and b!175694 (not c!34741)) b!175700))

(assert (= (and b!175700 c!34739) b!175698))

(assert (= (and b!175700 (not c!34739)) b!175693))

(assert (= (or b!175698 b!175693) bm!7829))

(assert (= (or b!175698 b!175693) bm!7826))

(assert (= (and bm!7826 c!34740) b!175696))

(assert (= (and bm!7826 (not c!34740)) b!175699))

(assert (= (or b!175697 bm!7829) bm!7830))

(assert (= (or b!175697 b!175698) bm!7827))

(assert (= (or b!175697 b!175698) bm!7828))

(declare-fun m!176237 () Bool)

(assert (=> bm!7827 m!176237))

(declare-fun m!176239 () Bool)

(assert (=> bm!7828 m!176239))

(declare-fun m!176241 () Bool)

(assert (=> bm!7830 m!176241))

(declare-fun m!176243 () Bool)

(assert (=> bm!7826 m!176243))

(declare-fun m!176245 () Bool)

(assert (=> b!175694 m!176245))

(declare-fun m!176247 () Bool)

(assert (=> b!175694 m!176247))

(declare-fun m!176249 () Bool)

(assert (=> b!175694 m!176249))

(assert (=> b!175694 m!176249))

(declare-fun m!176251 () Bool)

(assert (=> b!175694 m!176251))

(declare-fun m!176253 () Bool)

(assert (=> b!175694 m!176253))

(assert (=> b!175694 m!176241))

(assert (=> b!175694 m!176247))

(assert (=> b!175694 m!176241))

(declare-fun m!176255 () Bool)

(assert (=> b!175698 m!176255))

(assert (=> b!175696 m!172859))

(declare-fun m!176257 () Bool)

(assert (=> b!175693 m!176257))

(assert (=> b!175693 m!176257))

(declare-fun m!176259 () Bool)

(assert (=> b!175693 m!176259))

(assert (=> b!175693 m!176257))

(declare-fun m!176261 () Bool)

(assert (=> b!175693 m!176261))

(declare-fun m!176263 () Bool)

(assert (=> b!175693 m!176263))

(assert (=> b!174525 d!44711))

(declare-fun d!44717 () Bool)

(declare-fun e!106588 () Bool)

(assert (=> d!44717 e!106588))

(declare-fun res!79409 () Bool)

(assert (=> d!44717 (=> (not res!79409) (not e!106588))))

(declare-fun lt!56913 () List!2946)

(assert (=> d!44717 (= res!79409 (= (content!407 lt!56913) ((_ map or) (content!407 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465))))) (content!407 lt!56128))))))

(declare-fun e!106589 () List!2946)

(assert (=> d!44717 (= lt!56913 e!106589)))

(declare-fun c!34747 () Bool)

(assert (=> d!44717 (= c!34747 ((_ is Nil!2936) (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465))))))))

(assert (=> d!44717 (= (++!680 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465)))) lt!56128) lt!56913)))

(declare-fun b!175723 () Bool)

(assert (=> b!175723 (= e!106588 (or (not (= lt!56128 Nil!2936)) (= lt!56913 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465)))))))))

(declare-fun b!175722 () Bool)

(declare-fun res!79408 () Bool)

(assert (=> b!175722 (=> (not res!79408) (not e!106588))))

(assert (=> b!175722 (= res!79408 (= (size!2431 lt!56913) (+ (size!2431 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465))))) (size!2431 lt!56128))))))

(declare-fun b!175720 () Bool)

(assert (=> b!175720 (= e!106589 lt!56128)))

(declare-fun b!175721 () Bool)

(assert (=> b!175721 (= e!106589 (Cons!2936 (h!8333 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465))))) (++!680 (t!27584 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465))))) lt!56128)))))

(assert (= (and d!44717 c!34747) b!175720))

(assert (= (and d!44717 (not c!34747)) b!175721))

(assert (= (and d!44717 res!79409) b!175722))

(assert (= (and b!175722 res!79408) b!175723))

(declare-fun m!176273 () Bool)

(assert (=> d!44717 m!176273))

(assert (=> d!44717 m!173673))

(declare-fun m!176275 () Bool)

(assert (=> d!44717 m!176275))

(assert (=> d!44717 m!174461))

(declare-fun m!176277 () Bool)

(assert (=> b!175722 m!176277))

(assert (=> b!175722 m!173673))

(declare-fun m!176279 () Bool)

(assert (=> b!175722 m!176279))

(assert (=> b!175722 m!174467))

(declare-fun m!176281 () Bool)

(assert (=> b!175721 m!176281))

(assert (=> b!174525 d!44717))

(declare-fun d!44725 () Bool)

(assert (=> d!44725 (dynLambda!1135 lambda!5050 (h!8335 (t!27586 tokens!465)))))

(declare-fun lt!56919 () Unit!2616)

(assert (=> d!44725 (= lt!56919 (choose!1845 (t!27586 tokens!465) lambda!5050 (h!8335 (t!27586 tokens!465))))))

(declare-fun e!106593 () Bool)

(assert (=> d!44725 e!106593))

(declare-fun res!79417 () Bool)

(assert (=> d!44725 (=> (not res!79417) (not e!106593))))

(assert (=> d!44725 (= res!79417 (forall!583 (t!27586 tokens!465) lambda!5050))))

(assert (=> d!44725 (= (forallContained!94 (t!27586 tokens!465) lambda!5050 (h!8335 (t!27586 tokens!465))) lt!56919)))

(declare-fun b!175733 () Bool)

(assert (=> b!175733 (= e!106593 (contains!474 (t!27586 tokens!465) (h!8335 (t!27586 tokens!465))))))

(assert (= (and d!44725 res!79417) b!175733))

(declare-fun b_lambda!4115 () Bool)

(assert (=> (not b_lambda!4115) (not d!44725)))

(declare-fun m!176283 () Bool)

(assert (=> d!44725 m!176283))

(declare-fun m!176285 () Bool)

(assert (=> d!44725 m!176285))

(declare-fun m!176287 () Bool)

(assert (=> d!44725 m!176287))

(declare-fun m!176289 () Bool)

(assert (=> b!175733 m!176289))

(assert (=> b!174525 d!44725))

(declare-fun b!175734 () Bool)

(declare-fun e!106594 () Option!331)

(declare-fun call!7838 () Option!331)

(assert (=> b!175734 (= e!106594 call!7838)))

(declare-fun b!175735 () Bool)

(declare-fun res!79419 () Bool)

(declare-fun e!106595 () Bool)

(assert (=> b!175735 (=> (not res!79419) (not e!106595))))

(declare-fun lt!56923 () Option!331)

(assert (=> b!175735 (= res!79419 (= (++!680 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56923)))) (_2!1648 (get!811 lt!56923))) (++!680 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465)))) lt!56128)))))

(declare-fun b!175736 () Bool)

(declare-fun lt!56920 () Option!331)

(declare-fun lt!56924 () Option!331)

(assert (=> b!175736 (= e!106594 (ite (and ((_ is None!330) lt!56920) ((_ is None!330) lt!56924)) None!330 (ite ((_ is None!330) lt!56924) lt!56920 (ite ((_ is None!330) lt!56920) lt!56924 (ite (>= (size!2427 (_1!1648 (v!13783 lt!56920))) (size!2427 (_1!1648 (v!13783 lt!56924)))) lt!56920 lt!56924)))))))

(assert (=> b!175736 (= lt!56920 call!7838)))

(assert (=> b!175736 (= lt!56924 (maxPrefix!143 thiss!17480 (t!27585 rules!1920) (++!680 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465)))) lt!56128)))))

(declare-fun bm!7833 () Bool)

(assert (=> bm!7833 (= call!7838 (maxPrefixOneRule!75 thiss!17480 (h!8334 rules!1920) (++!680 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465)))) lt!56128)))))

(declare-fun b!175737 () Bool)

(assert (=> b!175737 (= e!106595 (contains!476 rules!1920 (rule!1038 (_1!1648 (get!811 lt!56923)))))))

(declare-fun b!175738 () Bool)

(declare-fun res!79418 () Bool)

(assert (=> b!175738 (=> (not res!79418) (not e!106595))))

(assert (=> b!175738 (= res!79418 (= (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56923)))) (originalCharacters!570 (_1!1648 (get!811 lt!56923)))))))

(declare-fun b!175739 () Bool)

(declare-fun res!79421 () Bool)

(assert (=> b!175739 (=> (not res!79421) (not e!106595))))

(assert (=> b!175739 (= res!79421 (< (size!2431 (_2!1648 (get!811 lt!56923))) (size!2431 (++!680 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465)))) lt!56128))))))

(declare-fun d!44727 () Bool)

(declare-fun e!106596 () Bool)

(assert (=> d!44727 e!106596))

(declare-fun res!79424 () Bool)

(assert (=> d!44727 (=> res!79424 e!106596)))

(assert (=> d!44727 (= res!79424 (isEmpty!1282 lt!56923))))

(assert (=> d!44727 (= lt!56923 e!106594)))

(declare-fun c!34749 () Bool)

(assert (=> d!44727 (= c!34749 (and ((_ is Cons!2937) rules!1920) ((_ is Nil!2937) (t!27585 rules!1920))))))

(declare-fun lt!56922 () Unit!2616)

(declare-fun lt!56921 () Unit!2616)

(assert (=> d!44727 (= lt!56922 lt!56921)))

(assert (=> d!44727 (isPrefix!232 (++!680 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465)))) lt!56128) (++!680 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465)))) lt!56128))))

(assert (=> d!44727 (= lt!56921 (lemmaIsPrefixRefl!140 (++!680 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465)))) lt!56128) (++!680 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465)))) lt!56128)))))

(assert (=> d!44727 (rulesValidInductive!126 thiss!17480 rules!1920)))

(assert (=> d!44727 (= (maxPrefix!143 thiss!17480 rules!1920 (++!680 (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465)))) lt!56128)) lt!56923)))

(declare-fun b!175740 () Bool)

(declare-fun res!79420 () Bool)

(assert (=> b!175740 (=> (not res!79420) (not e!106595))))

(assert (=> b!175740 (= res!79420 (= (value!19335 (_1!1648 (get!811 lt!56923))) (apply!432 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56923)))) (seqFromList!432 (originalCharacters!570 (_1!1648 (get!811 lt!56923)))))))))

(declare-fun b!175741 () Bool)

(assert (=> b!175741 (= e!106596 e!106595)))

(declare-fun res!79422 () Bool)

(assert (=> b!175741 (=> (not res!79422) (not e!106595))))

(assert (=> b!175741 (= res!79422 (isDefined!182 lt!56923))))

(declare-fun b!175742 () Bool)

(declare-fun res!79423 () Bool)

(assert (=> b!175742 (=> (not res!79423) (not e!106595))))

(assert (=> b!175742 (= res!79423 (matchR!89 (regex!527 (rule!1038 (_1!1648 (get!811 lt!56923)))) (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56923))))))))

(assert (= (and d!44727 c!34749) b!175734))

(assert (= (and d!44727 (not c!34749)) b!175736))

(assert (= (or b!175734 b!175736) bm!7833))

(assert (= (and d!44727 (not res!79424)) b!175741))

(assert (= (and b!175741 res!79422) b!175738))

(assert (= (and b!175738 res!79418) b!175739))

(assert (= (and b!175739 res!79421) b!175735))

(assert (= (and b!175735 res!79419) b!175740))

(assert (= (and b!175740 res!79420) b!175742))

(assert (= (and b!175742 res!79423) b!175737))

(declare-fun m!176307 () Bool)

(assert (=> b!175737 m!176307))

(declare-fun m!176309 () Bool)

(assert (=> b!175737 m!176309))

(declare-fun m!176311 () Bool)

(assert (=> d!44727 m!176311))

(assert (=> d!44727 m!173675))

(assert (=> d!44727 m!173675))

(declare-fun m!176313 () Bool)

(assert (=> d!44727 m!176313))

(assert (=> d!44727 m!173675))

(assert (=> d!44727 m!173675))

(declare-fun m!176317 () Bool)

(assert (=> d!44727 m!176317))

(assert (=> d!44727 m!173153))

(assert (=> b!175742 m!176307))

(declare-fun m!176321 () Bool)

(assert (=> b!175742 m!176321))

(assert (=> b!175742 m!176321))

(declare-fun m!176327 () Bool)

(assert (=> b!175742 m!176327))

(assert (=> b!175742 m!176327))

(declare-fun m!176329 () Bool)

(assert (=> b!175742 m!176329))

(assert (=> b!175739 m!176307))

(declare-fun m!176331 () Bool)

(assert (=> b!175739 m!176331))

(assert (=> b!175739 m!173675))

(declare-fun m!176333 () Bool)

(assert (=> b!175739 m!176333))

(assert (=> bm!7833 m!173675))

(declare-fun m!176335 () Bool)

(assert (=> bm!7833 m!176335))

(declare-fun m!176337 () Bool)

(assert (=> b!175741 m!176337))

(assert (=> b!175735 m!176307))

(assert (=> b!175735 m!176321))

(assert (=> b!175735 m!176321))

(assert (=> b!175735 m!176327))

(assert (=> b!175735 m!176327))

(declare-fun m!176339 () Bool)

(assert (=> b!175735 m!176339))

(assert (=> b!175736 m!173675))

(declare-fun m!176341 () Bool)

(assert (=> b!175736 m!176341))

(assert (=> b!175738 m!176307))

(assert (=> b!175738 m!176321))

(assert (=> b!175738 m!176321))

(assert (=> b!175738 m!176327))

(assert (=> b!175740 m!176307))

(declare-fun m!176351 () Bool)

(assert (=> b!175740 m!176351))

(assert (=> b!175740 m!176351))

(declare-fun m!176353 () Bool)

(assert (=> b!175740 m!176353))

(assert (=> b!174525 d!44727))

(declare-fun d!44737 () Bool)

(assert (=> d!44737 (= (list!1073 (charsOf!182 (h!8335 (t!27586 tokens!465)))) (list!1076 (c!34379 (charsOf!182 (h!8335 (t!27586 tokens!465))))))))

(declare-fun bs!17419 () Bool)

(assert (= bs!17419 d!44737))

(declare-fun m!176355 () Bool)

(assert (=> bs!17419 m!176355))

(assert (=> b!174525 d!44737))

(declare-fun d!44739 () Bool)

(declare-fun lt!56927 () BalanceConc!1760)

(assert (=> d!44739 (= (list!1073 lt!56927) (originalCharacters!570 (h!8335 (t!27586 tokens!465))))))

(assert (=> d!44739 (= lt!56927 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (value!19335 (h!8335 (t!27586 tokens!465)))))))

(assert (=> d!44739 (= (charsOf!182 (h!8335 (t!27586 tokens!465))) lt!56927)))

(declare-fun b_lambda!4117 () Bool)

(assert (=> (not b_lambda!4117) (not d!44739)))

(assert (=> d!44739 t!27718))

(declare-fun b_and!11817 () Bool)

(assert (= b_and!11769 (and (=> t!27718 result!9942) b_and!11817)))

(assert (=> d!44739 t!27712))

(declare-fun b_and!11819 () Bool)

(assert (= b_and!11773 (and (=> t!27712 result!9936) b_and!11819)))

(assert (=> d!44739 t!27716))

(declare-fun b_and!11821 () Bool)

(assert (= b_and!11767 (and (=> t!27716 result!9940) b_and!11821)))

(assert (=> d!44739 t!27720))

(declare-fun b_and!11823 () Bool)

(assert (= b_and!11775 (and (=> t!27720 result!9944) b_and!11823)))

(assert (=> d!44739 t!27714))

(declare-fun b_and!11825 () Bool)

(assert (= b_and!11771 (and (=> t!27714 result!9938) b_and!11825)))

(declare-fun m!176365 () Bool)

(assert (=> d!44739 m!176365))

(assert (=> d!44739 m!175247))

(assert (=> b!174525 d!44739))

(declare-fun d!44745 () Bool)

(declare-fun e!106600 () Bool)

(assert (=> d!44745 e!106600))

(declare-fun res!79429 () Bool)

(assert (=> d!44745 (=> (not res!79429) (not e!106600))))

(declare-fun lt!56928 () List!2946)

(assert (=> d!44745 (= res!79429 (= (content!407 lt!56928) ((_ map or) (content!407 (t!27584 lt!55823)) (content!407 lt!55815))))))

(declare-fun e!106601 () List!2946)

(assert (=> d!44745 (= lt!56928 e!106601)))

(declare-fun c!34751 () Bool)

(assert (=> d!44745 (= c!34751 ((_ is Nil!2936) (t!27584 lt!55823)))))

(assert (=> d!44745 (= (++!680 (t!27584 lt!55823) lt!55815) lt!56928)))

(declare-fun b!175751 () Bool)

(assert (=> b!175751 (= e!106600 (or (not (= lt!55815 Nil!2936)) (= lt!56928 (t!27584 lt!55823))))))

(declare-fun b!175750 () Bool)

(declare-fun res!79428 () Bool)

(assert (=> b!175750 (=> (not res!79428) (not e!106600))))

(assert (=> b!175750 (= res!79428 (= (size!2431 lt!56928) (+ (size!2431 (t!27584 lt!55823)) (size!2431 lt!55815))))))

(declare-fun b!175748 () Bool)

(assert (=> b!175748 (= e!106601 lt!55815)))

(declare-fun b!175749 () Bool)

(assert (=> b!175749 (= e!106601 (Cons!2936 (h!8333 (t!27584 lt!55823)) (++!680 (t!27584 (t!27584 lt!55823)) lt!55815)))))

(assert (= (and d!44745 c!34751) b!175748))

(assert (= (and d!44745 (not c!34751)) b!175749))

(assert (= (and d!44745 res!79429) b!175750))

(assert (= (and b!175750 res!79428) b!175751))

(declare-fun m!176367 () Bool)

(assert (=> d!44745 m!176367))

(assert (=> d!44745 m!175207))

(assert (=> d!44745 m!173791))

(declare-fun m!176371 () Bool)

(assert (=> b!175750 m!176371))

(assert (=> b!175750 m!175211))

(assert (=> b!175750 m!173795))

(declare-fun m!176373 () Bool)

(assert (=> b!175749 m!176373))

(assert (=> b!174629 d!44745))

(declare-fun d!44751 () Bool)

(assert (=> d!44751 (= (inv!17 (value!19335 separatorToken!170)) (= (charsToBigInt!1 (text!4291 (value!19335 separatorToken!170))) (value!19327 (value!19335 separatorToken!170))))))

(declare-fun bs!17422 () Bool)

(assert (= bs!17422 d!44751))

(declare-fun m!176375 () Bool)

(assert (=> bs!17422 m!176375))

(assert (=> b!174670 d!44751))

(declare-fun d!44753 () Bool)

(assert (=> d!44753 (= (list!1073 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465)))) (list!1076 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465))))))))

(declare-fun bs!17423 () Bool)

(assert (= bs!17423 d!44753))

(declare-fun m!176377 () Bool)

(assert (=> bs!17423 m!176377))

(assert (=> b!174051 d!44753))

(declare-fun d!44755 () Bool)

(declare-fun lt!56929 () Int)

(assert (=> d!44755 (= lt!56929 (size!2437 (list!1077 (_1!1647 lt!56071))))))

(assert (=> d!44755 (= lt!56929 (size!2438 (c!34381 (_1!1647 lt!56071))))))

(assert (=> d!44755 (= (size!2432 (_1!1647 lt!56071)) lt!56929)))

(declare-fun bs!17424 () Bool)

(assert (= bs!17424 d!44755))

(assert (=> bs!17424 m!173425))

(assert (=> bs!17424 m!173425))

(declare-fun m!176379 () Bool)

(assert (=> bs!17424 m!176379))

(declare-fun m!176381 () Bool)

(assert (=> bs!17424 m!176381))

(assert (=> d!44031 d!44755))

(declare-fun b!176126 () Bool)

(declare-fun e!106813 () tuple2!2862)

(assert (=> b!176126 (= e!106813 (tuple2!2863 (BalanceConc!1763 Empty!877) (seqFromList!432 lt!55823)))))

(declare-fun b!176127 () Bool)

(declare-fun lt!57111 () BalanceConc!1760)

(declare-fun lt!57125 () Option!330)

(declare-fun append!73 (BalanceConc!1762 Token!798) BalanceConc!1762)

(assert (=> b!176127 (= e!106813 (lexTailRecV2!104 thiss!17480 rules!1920 (seqFromList!432 lt!55823) lt!57111 (_2!1649 (v!13782 lt!57125)) (append!73 (BalanceConc!1763 Empty!877) (_1!1649 (v!13782 lt!57125)))))))

(declare-fun lt!57137 () tuple2!2862)

(declare-fun lexRec!68 (LexerInterface!413 List!2947 BalanceConc!1760) tuple2!2862)

(assert (=> b!176127 (= lt!57137 (lexRec!68 thiss!17480 rules!1920 (_2!1649 (v!13782 lt!57125))))))

(declare-fun lt!57118 () List!2946)

(assert (=> b!176127 (= lt!57118 (list!1073 (BalanceConc!1761 Empty!876)))))

(declare-fun lt!57124 () List!2946)

(assert (=> b!176127 (= lt!57124 (list!1073 (charsOf!182 (_1!1649 (v!13782 lt!57125)))))))

(declare-fun lt!57138 () List!2946)

(assert (=> b!176127 (= lt!57138 (list!1073 (_2!1649 (v!13782 lt!57125))))))

(declare-fun lt!57131 () Unit!2616)

(assert (=> b!176127 (= lt!57131 (lemmaConcatAssociativity!214 lt!57118 lt!57124 lt!57138))))

(assert (=> b!176127 (= (++!680 (++!680 lt!57118 lt!57124) lt!57138) (++!680 lt!57118 (++!680 lt!57124 lt!57138)))))

(declare-fun lt!57135 () Unit!2616)

(assert (=> b!176127 (= lt!57135 lt!57131)))

(declare-fun lt!57112 () Option!330)

(assert (=> b!176127 (= lt!57112 (maxPrefixZipperSequence!106 thiss!17480 rules!1920 (seqFromList!432 lt!55823)))))

(declare-fun c!34824 () Bool)

(assert (=> b!176127 (= c!34824 ((_ is Some!329) lt!57112))))

(declare-fun e!106814 () tuple2!2862)

(assert (=> b!176127 (= (lexRec!68 thiss!17480 rules!1920 (seqFromList!432 lt!55823)) e!106814)))

(declare-fun lt!57132 () Unit!2616)

(declare-fun Unit!2652 () Unit!2616)

(assert (=> b!176127 (= lt!57132 Unit!2652)))

(declare-fun lt!57116 () List!2948)

(assert (=> b!176127 (= lt!57116 (list!1077 (BalanceConc!1763 Empty!877)))))

(declare-fun lt!57128 () List!2948)

(assert (=> b!176127 (= lt!57128 (Cons!2938 (_1!1649 (v!13782 lt!57125)) Nil!2938))))

(declare-fun lt!57121 () List!2948)

(assert (=> b!176127 (= lt!57121 (list!1077 (_1!1647 lt!57137)))))

(declare-fun lt!57134 () Unit!2616)

(declare-fun lemmaConcatAssociativity!216 (List!2948 List!2948 List!2948) Unit!2616)

(assert (=> b!176127 (= lt!57134 (lemmaConcatAssociativity!216 lt!57116 lt!57128 lt!57121))))

(declare-fun ++!686 (List!2948 List!2948) List!2948)

(assert (=> b!176127 (= (++!686 (++!686 lt!57116 lt!57128) lt!57121) (++!686 lt!57116 (++!686 lt!57128 lt!57121)))))

(declare-fun lt!57108 () Unit!2616)

(assert (=> b!176127 (= lt!57108 lt!57134)))

(declare-fun lt!57122 () List!2946)

(assert (=> b!176127 (= lt!57122 (++!680 (list!1073 (BalanceConc!1761 Empty!876)) (list!1073 (charsOf!182 (_1!1649 (v!13782 lt!57125))))))))

(declare-fun lt!57123 () List!2946)

(assert (=> b!176127 (= lt!57123 (list!1073 (_2!1649 (v!13782 lt!57125))))))

(declare-fun lt!57127 () List!2948)

(assert (=> b!176127 (= lt!57127 (list!1077 (append!73 (BalanceConc!1763 Empty!877) (_1!1649 (v!13782 lt!57125)))))))

(declare-fun lt!57126 () Unit!2616)

(declare-fun lemmaLexThenLexPrefix!55 (LexerInterface!413 List!2947 List!2946 List!2946 List!2948 List!2948 List!2946) Unit!2616)

(assert (=> b!176127 (= lt!57126 (lemmaLexThenLexPrefix!55 thiss!17480 rules!1920 lt!57122 lt!57123 lt!57127 (list!1077 (_1!1647 lt!57137)) (list!1073 (_2!1647 lt!57137))))))

(assert (=> b!176127 (= (lexList!117 thiss!17480 rules!1920 lt!57122) (tuple2!2871 lt!57127 Nil!2936))))

(declare-fun lt!57117 () Unit!2616)

(assert (=> b!176127 (= lt!57117 lt!57126)))

(declare-fun lt!57140 () BalanceConc!1760)

(assert (=> b!176127 (= lt!57140 (++!682 (BalanceConc!1761 Empty!876) (charsOf!182 (_1!1649 (v!13782 lt!57125)))))))

(declare-fun lt!57120 () Option!330)

(assert (=> b!176127 (= lt!57120 (maxPrefixZipperSequence!106 thiss!17480 rules!1920 lt!57140))))

(declare-fun c!34823 () Bool)

(assert (=> b!176127 (= c!34823 ((_ is Some!329) lt!57120))))

(declare-fun e!106816 () tuple2!2862)

(assert (=> b!176127 (= (lexRec!68 thiss!17480 rules!1920 (++!682 (BalanceConc!1761 Empty!876) (charsOf!182 (_1!1649 (v!13782 lt!57125))))) e!106816)))

(declare-fun lt!57129 () Unit!2616)

(declare-fun Unit!2653 () Unit!2616)

(assert (=> b!176127 (= lt!57129 Unit!2653)))

(assert (=> b!176127 (= lt!57111 (++!682 (BalanceConc!1761 Empty!876) (charsOf!182 (_1!1649 (v!13782 lt!57125)))))))

(declare-fun lt!57110 () List!2946)

(assert (=> b!176127 (= lt!57110 (list!1073 lt!57111))))

(declare-fun lt!57119 () List!2946)

(assert (=> b!176127 (= lt!57119 (list!1073 (_2!1649 (v!13782 lt!57125))))))

(declare-fun lt!57133 () Unit!2616)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!53 (List!2946 List!2946) Unit!2616)

(assert (=> b!176127 (= lt!57133 (lemmaConcatTwoListThenFSndIsSuffix!53 lt!57110 lt!57119))))

(declare-fun isSuffix!53 (List!2946 List!2946) Bool)

(assert (=> b!176127 (isSuffix!53 lt!57119 (++!680 lt!57110 lt!57119))))

(declare-fun lt!57141 () Unit!2616)

(assert (=> b!176127 (= lt!57141 lt!57133)))

(declare-fun d!44757 () Bool)

(declare-fun e!106815 () Bool)

(assert (=> d!44757 e!106815))

(declare-fun res!79536 () Bool)

(assert (=> d!44757 (=> (not res!79536) (not e!106815))))

(declare-fun lt!57115 () tuple2!2862)

(assert (=> d!44757 (= res!79536 (= (list!1077 (_1!1647 lt!57115)) (list!1077 (_1!1647 (lexRec!68 thiss!17480 rules!1920 (seqFromList!432 lt!55823))))))))

(assert (=> d!44757 (= lt!57115 e!106813)))

(declare-fun c!34825 () Bool)

(assert (=> d!44757 (= c!34825 ((_ is Some!329) lt!57125))))

(declare-fun maxPrefixZipperSequenceV2!53 (LexerInterface!413 List!2947 BalanceConc!1760 BalanceConc!1760) Option!330)

(assert (=> d!44757 (= lt!57125 (maxPrefixZipperSequenceV2!53 thiss!17480 rules!1920 (seqFromList!432 lt!55823) (seqFromList!432 lt!55823)))))

(declare-fun lt!57113 () Unit!2616)

(declare-fun lt!57109 () Unit!2616)

(assert (=> d!44757 (= lt!57113 lt!57109)))

(declare-fun lt!57136 () List!2946)

(declare-fun lt!57139 () List!2946)

(assert (=> d!44757 (isSuffix!53 lt!57136 (++!680 lt!57139 lt!57136))))

(assert (=> d!44757 (= lt!57109 (lemmaConcatTwoListThenFSndIsSuffix!53 lt!57139 lt!57136))))

(assert (=> d!44757 (= lt!57136 (list!1073 (seqFromList!432 lt!55823)))))

(assert (=> d!44757 (= lt!57139 (list!1073 (BalanceConc!1761 Empty!876)))))

(assert (=> d!44757 (= (lexTailRecV2!104 thiss!17480 rules!1920 (seqFromList!432 lt!55823) (BalanceConc!1761 Empty!876) (seqFromList!432 lt!55823) (BalanceConc!1763 Empty!877)) lt!57115)))

(declare-fun b!176128 () Bool)

(assert (=> b!176128 (= e!106814 (tuple2!2863 (BalanceConc!1763 Empty!877) (seqFromList!432 lt!55823)))))

(declare-fun b!176129 () Bool)

(assert (=> b!176129 (= e!106816 (tuple2!2863 (BalanceConc!1763 Empty!877) lt!57140))))

(declare-fun lt!57114 () tuple2!2862)

(declare-fun b!176130 () Bool)

(assert (=> b!176130 (= lt!57114 (lexRec!68 thiss!17480 rules!1920 (_2!1649 (v!13782 lt!57112))))))

(declare-fun prepend!151 (BalanceConc!1762 Token!798) BalanceConc!1762)

(assert (=> b!176130 (= e!106814 (tuple2!2863 (prepend!151 (_1!1647 lt!57114) (_1!1649 (v!13782 lt!57112))) (_2!1647 lt!57114)))))

(declare-fun b!176131 () Bool)

(assert (=> b!176131 (= e!106815 (= (list!1073 (_2!1647 lt!57115)) (list!1073 (_2!1647 (lexRec!68 thiss!17480 rules!1920 (seqFromList!432 lt!55823))))))))

(declare-fun lt!57130 () tuple2!2862)

(declare-fun b!176132 () Bool)

(assert (=> b!176132 (= lt!57130 (lexRec!68 thiss!17480 rules!1920 (_2!1649 (v!13782 lt!57120))))))

(assert (=> b!176132 (= e!106816 (tuple2!2863 (prepend!151 (_1!1647 lt!57130) (_1!1649 (v!13782 lt!57120))) (_2!1647 lt!57130)))))

(assert (= (and d!44757 c!34825) b!176127))

(assert (= (and d!44757 (not c!34825)) b!176126))

(assert (= (and b!176127 c!34824) b!176130))

(assert (= (and b!176127 (not c!34824)) b!176128))

(assert (= (and b!176127 c!34823) b!176132))

(assert (= (and b!176127 (not c!34823)) b!176129))

(assert (= (and d!44757 res!79536) b!176131))

(declare-fun m!177035 () Bool)

(assert (=> b!176131 m!177035))

(assert (=> b!176131 m!172845))

(declare-fun m!177037 () Bool)

(assert (=> b!176131 m!177037))

(declare-fun m!177039 () Bool)

(assert (=> b!176131 m!177039))

(declare-fun m!177041 () Bool)

(assert (=> b!176132 m!177041))

(declare-fun m!177043 () Bool)

(assert (=> b!176132 m!177043))

(declare-fun m!177045 () Bool)

(assert (=> b!176130 m!177045))

(declare-fun m!177047 () Bool)

(assert (=> b!176130 m!177047))

(declare-fun m!177049 () Bool)

(assert (=> d!44757 m!177049))

(assert (=> d!44757 m!172845))

(assert (=> d!44757 m!177037))

(declare-fun m!177051 () Bool)

(assert (=> d!44757 m!177051))

(declare-fun m!177053 () Bool)

(assert (=> d!44757 m!177053))

(declare-fun m!177055 () Bool)

(assert (=> d!44757 m!177055))

(assert (=> d!44757 m!177053))

(declare-fun m!177057 () Bool)

(assert (=> d!44757 m!177057))

(assert (=> d!44757 m!172845))

(assert (=> d!44757 m!172845))

(declare-fun m!177059 () Bool)

(assert (=> d!44757 m!177059))

(assert (=> d!44757 m!173897))

(assert (=> d!44757 m!172845))

(assert (=> d!44757 m!173427))

(declare-fun m!177061 () Bool)

(assert (=> b!176127 m!177061))

(declare-fun m!177063 () Bool)

(assert (=> b!176127 m!177063))

(declare-fun m!177065 () Bool)

(assert (=> b!176127 m!177065))

(assert (=> b!176127 m!177061))

(declare-fun m!177067 () Bool)

(assert (=> b!176127 m!177067))

(declare-fun m!177069 () Bool)

(assert (=> b!176127 m!177069))

(declare-fun m!177071 () Bool)

(assert (=> b!176127 m!177071))

(declare-fun m!177073 () Bool)

(assert (=> b!176127 m!177073))

(assert (=> b!176127 m!173897))

(assert (=> b!176127 m!177073))

(declare-fun m!177075 () Bool)

(assert (=> b!176127 m!177075))

(declare-fun m!177077 () Bool)

(assert (=> b!176127 m!177077))

(declare-fun m!177079 () Bool)

(assert (=> b!176127 m!177079))

(declare-fun m!177081 () Bool)

(assert (=> b!176127 m!177081))

(declare-fun m!177083 () Bool)

(assert (=> b!176127 m!177083))

(assert (=> b!176127 m!177081))

(declare-fun m!177085 () Bool)

(assert (=> b!176127 m!177085))

(declare-fun m!177087 () Bool)

(assert (=> b!176127 m!177087))

(declare-fun m!177089 () Bool)

(assert (=> b!176127 m!177089))

(declare-fun m!177091 () Bool)

(assert (=> b!176127 m!177091))

(declare-fun m!177093 () Bool)

(assert (=> b!176127 m!177093))

(declare-fun m!177095 () Bool)

(assert (=> b!176127 m!177095))

(assert (=> b!176127 m!172845))

(assert (=> b!176127 m!177037))

(declare-fun m!177097 () Bool)

(assert (=> b!176127 m!177097))

(declare-fun m!177099 () Bool)

(assert (=> b!176127 m!177099))

(declare-fun m!177101 () Bool)

(assert (=> b!176127 m!177101))

(assert (=> b!176127 m!172845))

(declare-fun m!177103 () Bool)

(assert (=> b!176127 m!177103))

(assert (=> b!176127 m!177101))

(declare-fun m!177105 () Bool)

(assert (=> b!176127 m!177105))

(declare-fun m!177107 () Bool)

(assert (=> b!176127 m!177107))

(assert (=> b!176127 m!177081))

(assert (=> b!176127 m!177097))

(assert (=> b!176127 m!177077))

(declare-fun m!177109 () Bool)

(assert (=> b!176127 m!177109))

(declare-fun m!177111 () Bool)

(assert (=> b!176127 m!177111))

(assert (=> b!176127 m!177069))

(assert (=> b!176127 m!173897))

(assert (=> b!176127 m!177085))

(declare-fun m!177113 () Bool)

(assert (=> b!176127 m!177113))

(declare-fun m!177115 () Bool)

(assert (=> b!176127 m!177115))

(declare-fun m!177117 () Bool)

(assert (=> b!176127 m!177117))

(assert (=> b!176127 m!177109))

(assert (=> b!176127 m!177087))

(assert (=> b!176127 m!177089))

(declare-fun m!177119 () Bool)

(assert (=> b!176127 m!177119))

(assert (=> b!176127 m!172845))

(assert (=> b!176127 m!177073))

(declare-fun m!177121 () Bool)

(assert (=> b!176127 m!177121))

(assert (=> d!44031 d!44757))

(declare-fun d!44937 () Bool)

(assert (=> d!44937 (= (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168)))) (list!1076 (c!34379 (charsOf!182 (_1!1648 (get!811 lt!56168))))))))

(declare-fun bs!17535 () Bool)

(assert (= bs!17535 d!44937))

(declare-fun m!177123 () Bool)

(assert (=> bs!17535 m!177123))

(assert (=> b!174697 d!44937))

(declare-fun d!44939 () Bool)

(declare-fun lt!57142 () BalanceConc!1760)

(assert (=> d!44939 (= (list!1073 lt!57142) (originalCharacters!570 (_1!1648 (get!811 lt!56168))))))

(assert (=> d!44939 (= lt!57142 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168))))) (value!19335 (_1!1648 (get!811 lt!56168)))))))

(assert (=> d!44939 (= (charsOf!182 (_1!1648 (get!811 lt!56168))) lt!57142)))

(declare-fun b_lambda!4157 () Bool)

(assert (=> (not b_lambda!4157) (not d!44939)))

(declare-fun t!27867 () Bool)

(declare-fun tb!7335 () Bool)

(assert (=> (and b!174015 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))) t!27867) tb!7335))

(declare-fun b!176133 () Bool)

(declare-fun e!106817 () Bool)

(declare-fun tp!85132 () Bool)

(assert (=> b!176133 (= e!106817 (and (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168))))) (value!19335 (_1!1648 (get!811 lt!56168)))))) tp!85132))))

(declare-fun result!10092 () Bool)

(assert (=> tb!7335 (= result!10092 (and (inv!3770 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168))))) (value!19335 (_1!1648 (get!811 lt!56168))))) e!106817))))

(assert (= tb!7335 b!176133))

(declare-fun m!177125 () Bool)

(assert (=> b!176133 m!177125))

(declare-fun m!177127 () Bool)

(assert (=> tb!7335 m!177127))

(assert (=> d!44939 t!27867))

(declare-fun b_and!11875 () Bool)

(assert (= b_and!11823 (and (=> t!27867 result!10092) b_and!11875)))

(declare-fun t!27869 () Bool)

(declare-fun tb!7337 () Bool)

(assert (=> (and b!174009 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))) t!27869) tb!7337))

(declare-fun result!10094 () Bool)

(assert (= result!10094 result!10092))

(assert (=> d!44939 t!27869))

(declare-fun b_and!11877 () Bool)

(assert (= b_and!11819 (and (=> t!27869 result!10094) b_and!11877)))

(declare-fun tb!7339 () Bool)

(declare-fun t!27871 () Bool)

(assert (=> (and b!174773 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))) t!27871) tb!7339))

(declare-fun result!10096 () Bool)

(assert (= result!10096 result!10092))

(assert (=> d!44939 t!27871))

(declare-fun b_and!11879 () Bool)

(assert (= b_and!11825 (and (=> t!27871 result!10096) b_and!11879)))

(declare-fun tb!7341 () Bool)

(declare-fun t!27873 () Bool)

(assert (=> (and b!174759 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))) t!27873) tb!7341))

(declare-fun result!10098 () Bool)

(assert (= result!10098 result!10092))

(assert (=> d!44939 t!27873))

(declare-fun b_and!11881 () Bool)

(assert (= b_and!11817 (and (=> t!27873 result!10098) b_and!11881)))

(declare-fun t!27875 () Bool)

(declare-fun tb!7343 () Bool)

(assert (=> (and b!174005 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))) t!27875) tb!7343))

(declare-fun result!10100 () Bool)

(assert (= result!10100 result!10092))

(assert (=> d!44939 t!27875))

(declare-fun b_and!11883 () Bool)

(assert (= b_and!11821 (and (=> t!27875 result!10100) b_and!11883)))

(declare-fun m!177129 () Bool)

(assert (=> d!44939 m!177129))

(declare-fun m!177131 () Bool)

(assert (=> d!44939 m!177131))

(assert (=> b!174697 d!44939))

(assert (=> b!174697 d!44411))

(declare-fun d!44941 () Bool)

(assert (=> d!44941 (= (tail!348 (drop!145 lt!56131 0)) (drop!145 lt!56131 (+ 0 1)))))

(declare-fun lt!57145 () Unit!2616)

(declare-fun choose!1855 (List!2948 Int) Unit!2616)

(assert (=> d!44941 (= lt!57145 (choose!1855 lt!56131 0))))

(declare-fun e!106820 () Bool)

(assert (=> d!44941 e!106820))

(declare-fun res!79539 () Bool)

(assert (=> d!44941 (=> (not res!79539) (not e!106820))))

(assert (=> d!44941 (= res!79539 (>= 0 0))))

(assert (=> d!44941 (= (lemmaDropTail!124 lt!56131 0) lt!57145)))

(declare-fun b!176136 () Bool)

(assert (=> b!176136 (= e!106820 (< 0 (size!2437 lt!56131)))))

(assert (= (and d!44941 res!79539) b!176136))

(assert (=> d!44941 m!173725))

(assert (=> d!44941 m!173725))

(assert (=> d!44941 m!173727))

(assert (=> d!44941 m!173743))

(declare-fun m!177133 () Bool)

(assert (=> d!44941 m!177133))

(declare-fun m!177135 () Bool)

(assert (=> b!176136 m!177135))

(assert (=> b!174547 d!44941))

(declare-fun d!44943 () Bool)

(declare-fun lt!57148 () Token!798)

(assert (=> d!44943 (contains!474 lt!56135 lt!57148)))

(declare-fun e!106825 () Token!798)

(assert (=> d!44943 (= lt!57148 e!106825)))

(declare-fun c!34828 () Bool)

(assert (=> d!44943 (= c!34828 (= 0 0))))

(declare-fun e!106826 () Bool)

(assert (=> d!44943 e!106826))

(declare-fun res!79542 () Bool)

(assert (=> d!44943 (=> (not res!79542) (not e!106826))))

(assert (=> d!44943 (= res!79542 (<= 0 0))))

(assert (=> d!44943 (= (apply!430 lt!56135 0) lt!57148)))

(declare-fun b!176143 () Bool)

(assert (=> b!176143 (= e!106826 (< 0 (size!2437 lt!56135)))))

(declare-fun b!176144 () Bool)

(assert (=> b!176144 (= e!106825 (head!608 lt!56135))))

(declare-fun b!176145 () Bool)

(assert (=> b!176145 (= e!106825 (apply!430 (tail!348 lt!56135) (- 0 1)))))

(assert (= (and d!44943 res!79542) b!176143))

(assert (= (and d!44943 c!34828) b!176144))

(assert (= (and d!44943 (not c!34828)) b!176145))

(declare-fun m!177137 () Bool)

(assert (=> d!44943 m!177137))

(declare-fun m!177139 () Bool)

(assert (=> b!176143 m!177139))

(declare-fun m!177141 () Bool)

(assert (=> b!176144 m!177141))

(declare-fun m!177143 () Bool)

(assert (=> b!176145 m!177143))

(assert (=> b!176145 m!177143))

(declare-fun m!177145 () Bool)

(assert (=> b!176145 m!177145))

(assert (=> b!174547 d!44943))

(declare-fun b!176146 () Bool)

(declare-fun e!106830 () Option!330)

(declare-fun call!7871 () Option!330)

(assert (=> b!176146 (= e!106830 call!7871)))

(declare-fun d!44945 () Bool)

(declare-fun e!106831 () Bool)

(assert (=> d!44945 e!106831))

(declare-fun res!79545 () Bool)

(assert (=> d!44945 (=> (not res!79545) (not e!106831))))

(declare-fun lt!57149 () Option!330)

(assert (=> d!44945 (= res!79545 (= (isDefined!181 lt!57149) (isDefined!182 (maxPrefixZipper!44 thiss!17480 rules!1920 (list!1073 (++!682 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)) lt!56132))))))))

(assert (=> d!44945 (= lt!57149 e!106830)))

(declare-fun c!34829 () Bool)

(assert (=> d!44945 (= c!34829 (and ((_ is Cons!2937) rules!1920) ((_ is Nil!2937) (t!27585 rules!1920))))))

(declare-fun lt!57153 () Unit!2616)

(declare-fun lt!57151 () Unit!2616)

(assert (=> d!44945 (= lt!57153 lt!57151)))

(declare-fun lt!57152 () List!2946)

(declare-fun lt!57150 () List!2946)

(assert (=> d!44945 (isPrefix!232 lt!57152 lt!57150)))

(assert (=> d!44945 (= lt!57151 (lemmaIsPrefixRefl!140 lt!57152 lt!57150))))

(assert (=> d!44945 (= lt!57150 (list!1073 (++!682 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)) lt!56132)))))

(assert (=> d!44945 (= lt!57152 (list!1073 (++!682 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)) lt!56132)))))

(assert (=> d!44945 (rulesValidInductive!126 thiss!17480 rules!1920)))

(assert (=> d!44945 (= (maxPrefixZipperSequence!106 thiss!17480 rules!1920 (++!682 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)) lt!56132)) lt!57149)))

(declare-fun b!176147 () Bool)

(declare-fun e!106828 () Bool)

(assert (=> b!176147 (= e!106828 (= (list!1073 (_2!1649 (get!812 lt!57149))) (_2!1648 (get!811 (maxPrefix!143 thiss!17480 rules!1920 (list!1073 (++!682 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)) lt!56132)))))))))

(declare-fun b!176148 () Bool)

(declare-fun res!79548 () Bool)

(assert (=> b!176148 (=> (not res!79548) (not e!106831))))

(declare-fun e!106832 () Bool)

(assert (=> b!176148 (= res!79548 e!106832)))

(declare-fun res!79543 () Bool)

(assert (=> b!176148 (=> res!79543 e!106832)))

(assert (=> b!176148 (= res!79543 (not (isDefined!181 lt!57149)))))

(declare-fun b!176149 () Bool)

(declare-fun lt!57155 () Option!330)

(declare-fun lt!57154 () Option!330)

(assert (=> b!176149 (= e!106830 (ite (and ((_ is None!329) lt!57155) ((_ is None!329) lt!57154)) None!329 (ite ((_ is None!329) lt!57154) lt!57155 (ite ((_ is None!329) lt!57155) lt!57154 (ite (>= (size!2427 (_1!1649 (v!13782 lt!57155))) (size!2427 (_1!1649 (v!13782 lt!57154)))) lt!57155 lt!57154)))))))

(assert (=> b!176149 (= lt!57155 call!7871)))

(assert (=> b!176149 (= lt!57154 (maxPrefixZipperSequence!106 thiss!17480 (t!27585 rules!1920) (++!682 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)) lt!56132)))))

(declare-fun bm!7866 () Bool)

(assert (=> bm!7866 (= call!7871 (maxPrefixOneRuleZipperSequence!45 thiss!17480 (h!8334 rules!1920) (++!682 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)) lt!56132)))))

(declare-fun b!176150 () Bool)

(declare-fun e!106829 () Bool)

(assert (=> b!176150 (= e!106832 e!106829)))

(declare-fun res!79544 () Bool)

(assert (=> b!176150 (=> (not res!79544) (not e!106829))))

(assert (=> b!176150 (= res!79544 (= (_1!1649 (get!812 lt!57149)) (_1!1648 (get!811 (maxPrefixZipper!44 thiss!17480 rules!1920 (list!1073 (++!682 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)) lt!56132)))))))))

(declare-fun b!176151 () Bool)

(declare-fun e!106827 () Bool)

(assert (=> b!176151 (= e!106827 e!106828)))

(declare-fun res!79546 () Bool)

(assert (=> b!176151 (=> (not res!79546) (not e!106828))))

(assert (=> b!176151 (= res!79546 (= (_1!1649 (get!812 lt!57149)) (_1!1648 (get!811 (maxPrefix!143 thiss!17480 rules!1920 (list!1073 (++!682 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)) lt!56132)))))))))

(declare-fun b!176152 () Bool)

(assert (=> b!176152 (= e!106831 e!106827)))

(declare-fun res!79547 () Bool)

(assert (=> b!176152 (=> res!79547 e!106827)))

(assert (=> b!176152 (= res!79547 (not (isDefined!181 lt!57149)))))

(declare-fun b!176153 () Bool)

(assert (=> b!176153 (= e!106829 (= (list!1073 (_2!1649 (get!812 lt!57149))) (_2!1648 (get!811 (maxPrefixZipper!44 thiss!17480 rules!1920 (list!1073 (++!682 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)) lt!56132)))))))))

(assert (= (and d!44945 c!34829) b!176146))

(assert (= (and d!44945 (not c!34829)) b!176149))

(assert (= (or b!176146 b!176149) bm!7866))

(assert (= (and d!44945 res!79545) b!176148))

(assert (= (and b!176148 (not res!79543)) b!176150))

(assert (= (and b!176150 res!79544) b!176153))

(assert (= (and b!176148 res!79548) b!176152))

(assert (= (and b!176152 (not res!79547)) b!176151))

(assert (= (and b!176151 res!79546) b!176147))

(assert (=> bm!7866 m!173729))

(declare-fun m!177147 () Bool)

(assert (=> bm!7866 m!177147))

(assert (=> d!44945 m!173729))

(declare-fun m!177149 () Bool)

(assert (=> d!44945 m!177149))

(declare-fun m!177151 () Bool)

(assert (=> d!44945 m!177151))

(declare-fun m!177153 () Bool)

(assert (=> d!44945 m!177153))

(declare-fun m!177155 () Bool)

(assert (=> d!44945 m!177155))

(assert (=> d!44945 m!173153))

(declare-fun m!177157 () Bool)

(assert (=> d!44945 m!177157))

(assert (=> d!44945 m!177149))

(assert (=> d!44945 m!177153))

(declare-fun m!177159 () Bool)

(assert (=> d!44945 m!177159))

(assert (=> b!176152 m!177151))

(declare-fun m!177161 () Bool)

(assert (=> b!176147 m!177161))

(assert (=> b!176147 m!173729))

(assert (=> b!176147 m!177149))

(assert (=> b!176147 m!177149))

(declare-fun m!177163 () Bool)

(assert (=> b!176147 m!177163))

(declare-fun m!177165 () Bool)

(assert (=> b!176147 m!177165))

(assert (=> b!176147 m!177163))

(declare-fun m!177167 () Bool)

(assert (=> b!176147 m!177167))

(assert (=> b!176150 m!177161))

(assert (=> b!176150 m!173729))

(assert (=> b!176150 m!177149))

(assert (=> b!176150 m!177149))

(assert (=> b!176150 m!177153))

(assert (=> b!176150 m!177153))

(declare-fun m!177169 () Bool)

(assert (=> b!176150 m!177169))

(assert (=> b!176153 m!177161))

(assert (=> b!176153 m!173729))

(assert (=> b!176153 m!177149))

(assert (=> b!176153 m!177149))

(assert (=> b!176153 m!177153))

(assert (=> b!176153 m!177153))

(assert (=> b!176153 m!177169))

(assert (=> b!176153 m!177165))

(assert (=> b!176148 m!177151))

(assert (=> b!176149 m!173729))

(declare-fun m!177171 () Bool)

(assert (=> b!176149 m!177171))

(assert (=> b!176151 m!177161))

(assert (=> b!176151 m!173729))

(assert (=> b!176151 m!177149))

(assert (=> b!176151 m!177149))

(assert (=> b!176151 m!177163))

(assert (=> b!176151 m!177163))

(assert (=> b!176151 m!177167))

(assert (=> b!174547 d!44945))

(declare-fun bs!17536 () Bool)

(declare-fun d!44947 () Bool)

(assert (= bs!17536 (and d!44947 b!175694)))

(declare-fun lambda!5100 () Int)

(assert (=> bs!17536 (not (= lambda!5100 lambda!5088))))

(declare-fun bs!17537 () Bool)

(assert (= bs!17537 (and d!44947 d!44519)))

(assert (=> bs!17537 (not (= lambda!5100 lambda!5071))))

(declare-fun bs!17538 () Bool)

(assert (= bs!17538 (and d!44947 b!174118)))

(assert (=> bs!17538 (not (= lambda!5100 lambda!5024))))

(declare-fun bs!17539 () Bool)

(assert (= bs!17539 (and d!44947 b!174010)))

(assert (=> bs!17539 (not (= lambda!5100 lambda!5012))))

(declare-fun bs!17540 () Bool)

(assert (= bs!17540 (and d!44947 b!173998)))

(assert (=> bs!17540 (= lambda!5100 lambda!5011)))

(declare-fun bs!17541 () Bool)

(assert (= bs!17541 (and d!44947 d!43945)))

(assert (=> bs!17541 (= lambda!5100 lambda!5023)))

(declare-fun bs!17542 () Bool)

(assert (= bs!17542 (and d!44947 b!174525)))

(assert (=> bs!17542 (not (= lambda!5100 lambda!5050))))

(declare-fun bs!17543 () Bool)

(assert (= bs!17543 (and d!44947 d!44101)))

(assert (=> bs!17543 (= lambda!5100 lambda!5051)))

(declare-fun bs!17544 () Bool)

(assert (= bs!17544 (and d!44947 d!44043)))

(assert (=> bs!17544 (not (= lambda!5100 lambda!5044))))

(declare-fun bs!17545 () Bool)

(assert (= bs!17545 (and d!44947 d!44545)))

(assert (=> bs!17545 (not (= lambda!5100 lambda!5075))))

(declare-fun bs!17546 () Bool)

(assert (= bs!17546 (and d!44947 d!43987)))

(assert (=> bs!17546 (not (= lambda!5100 lambda!5033))))

(declare-fun bs!17547 () Bool)

(assert (= bs!17547 (and d!44947 b!174198)))

(assert (=> bs!17547 (not (= lambda!5100 lambda!5030))))

(declare-fun bs!17548 () Bool)

(assert (= bs!17548 (and d!44947 b!174547)))

(assert (=> bs!17548 (not (= lambda!5100 lambda!5052))))

(declare-fun bs!17549 () Bool)

(declare-fun b!176162 () Bool)

(assert (= bs!17549 (and b!176162 b!175694)))

(declare-fun lambda!5101 () Int)

(assert (=> bs!17549 (= lambda!5101 lambda!5088)))

(declare-fun bs!17550 () Bool)

(assert (= bs!17550 (and b!176162 d!44519)))

(assert (=> bs!17550 (= lambda!5101 lambda!5071)))

(declare-fun bs!17551 () Bool)

(assert (= bs!17551 (and b!176162 b!174118)))

(assert (=> bs!17551 (= lambda!5101 lambda!5024)))

(declare-fun bs!17552 () Bool)

(assert (= bs!17552 (and b!176162 d!44947)))

(assert (=> bs!17552 (not (= lambda!5101 lambda!5100))))

(declare-fun bs!17553 () Bool)

(assert (= bs!17553 (and b!176162 b!174010)))

(assert (=> bs!17553 (= lambda!5101 lambda!5012)))

(declare-fun bs!17554 () Bool)

(assert (= bs!17554 (and b!176162 b!173998)))

(assert (=> bs!17554 (not (= lambda!5101 lambda!5011))))

(declare-fun bs!17555 () Bool)

(assert (= bs!17555 (and b!176162 d!43945)))

(assert (=> bs!17555 (not (= lambda!5101 lambda!5023))))

(declare-fun bs!17556 () Bool)

(assert (= bs!17556 (and b!176162 b!174525)))

(assert (=> bs!17556 (= lambda!5101 lambda!5050)))

(declare-fun bs!17557 () Bool)

(assert (= bs!17557 (and b!176162 d!44101)))

(assert (=> bs!17557 (not (= lambda!5101 lambda!5051))))

(declare-fun bs!17558 () Bool)

(assert (= bs!17558 (and b!176162 d!44043)))

(assert (=> bs!17558 (= lambda!5101 lambda!5044)))

(declare-fun bs!17559 () Bool)

(assert (= bs!17559 (and b!176162 d!44545)))

(assert (=> bs!17559 (= lambda!5101 lambda!5075)))

(declare-fun bs!17560 () Bool)

(assert (= bs!17560 (and b!176162 d!43987)))

(assert (=> bs!17560 (= lambda!5101 lambda!5033)))

(declare-fun bs!17561 () Bool)

(assert (= bs!17561 (and b!176162 b!174198)))

(assert (=> bs!17561 (= lambda!5101 lambda!5030)))

(declare-fun bs!17562 () Bool)

(assert (= bs!17562 (and b!176162 b!174547)))

(assert (=> bs!17562 (= lambda!5101 lambda!5052)))

(declare-fun b!176167 () Bool)

(declare-fun e!106842 () Bool)

(assert (=> b!176167 (= e!106842 true)))

(declare-fun b!176166 () Bool)

(declare-fun e!106841 () Bool)

(assert (=> b!176166 (= e!106841 e!106842)))

(declare-fun b!176165 () Bool)

(declare-fun e!106840 () Bool)

(assert (=> b!176165 (= e!106840 e!106841)))

(assert (=> b!176162 e!106840))

(assert (= b!176166 b!176167))

(assert (= b!176165 b!176166))

(assert (= (and b!176162 ((_ is Cons!2937) rules!1920)) b!176165))

(assert (=> b!176167 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5101))))

(assert (=> b!176167 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5101))))

(assert (=> b!176162 true))

(declare-fun lt!57169 () BalanceConc!1760)

(assert (=> d!44947 (= (list!1073 lt!57169) (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 (dropList!92 (seqFromList!431 (t!27586 tokens!465)) (+ 0 1)) separatorToken!170))))

(declare-fun e!106833 () BalanceConc!1760)

(assert (=> d!44947 (= lt!57169 e!106833)))

(declare-fun c!34830 () Bool)

(assert (=> d!44947 (= c!34830 (>= (+ 0 1) (size!2432 (seqFromList!431 (t!27586 tokens!465)))))))

(declare-fun lt!57168 () Unit!2616)

(assert (=> d!44947 (= lt!57168 (lemmaContentSubsetPreservesForall!36 (list!1077 (seqFromList!431 (t!27586 tokens!465))) (dropList!92 (seqFromList!431 (t!27586 tokens!465)) (+ 0 1)) lambda!5100))))

(declare-fun e!106836 () Bool)

(assert (=> d!44947 e!106836))

(declare-fun res!79551 () Bool)

(assert (=> d!44947 (=> (not res!79551) (not e!106836))))

(assert (=> d!44947 (= res!79551 (>= (+ 0 1) 0))))

(assert (=> d!44947 (= (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 (seqFromList!431 (t!27586 tokens!465)) separatorToken!170 (+ 0 1)) lt!57169)))

(declare-fun b!176154 () Bool)

(assert (=> b!176154 (= e!106836 (<= (+ 0 1) (size!2432 (seqFromList!431 (t!27586 tokens!465)))))))

(declare-fun b!176155 () Bool)

(declare-fun e!106838 () BalanceConc!1760)

(declare-fun call!7874 () BalanceConc!1760)

(declare-fun lt!57158 () BalanceConc!1760)

(assert (=> b!176155 (= e!106838 (++!682 call!7874 lt!57158))))

(declare-fun b!176156 () Bool)

(declare-fun e!106834 () Bool)

(declare-fun lt!57162 () Option!330)

(declare-fun call!7872 () Token!798)

(assert (=> b!176156 (= e!106834 (not (= (_1!1649 (v!13782 lt!57162)) call!7872)))))

(declare-fun bm!7867 () Bool)

(declare-fun call!7873 () BalanceConc!1760)

(declare-fun call!7876 () BalanceConc!1760)

(assert (=> bm!7867 (= call!7873 call!7876)))

(declare-fun b!176157 () Bool)

(declare-fun e!106839 () BalanceConc!1760)

(assert (=> b!176157 (= e!106839 call!7876)))

(declare-fun b!176158 () Bool)

(declare-fun c!34831 () Bool)

(assert (=> b!176158 (= c!34831 e!106834)))

(declare-fun res!79550 () Bool)

(assert (=> b!176158 (=> (not res!79550) (not e!106834))))

(assert (=> b!176158 (= res!79550 ((_ is Some!329) lt!57162))))

(declare-fun e!106835 () BalanceConc!1760)

(assert (=> b!176158 (= e!106835 e!106838)))

(declare-fun b!176159 () Bool)

(assert (=> b!176159 (= e!106833 (BalanceConc!1761 Empty!876))))

(declare-fun b!176160 () Bool)

(declare-fun call!7875 () Token!798)

(assert (=> b!176160 (= e!106839 (charsOf!182 call!7875))))

(declare-fun b!176161 () Bool)

(declare-fun e!106837 () Bool)

(assert (=> b!176161 (= e!106837 (= (_1!1649 (v!13782 lt!57162)) (apply!429 (seqFromList!431 (t!27586 tokens!465)) (+ 0 1))))))

(declare-fun bm!7868 () Bool)

(assert (=> bm!7868 (= call!7872 (apply!429 (seqFromList!431 (t!27586 tokens!465)) (+ 0 1)))))

(declare-fun bm!7869 () Bool)

(declare-fun c!34833 () Bool)

(declare-fun c!34832 () Bool)

(assert (=> bm!7869 (= c!34833 c!34832)))

(assert (=> bm!7869 (= call!7874 (++!682 e!106839 (ite c!34832 lt!57158 call!7873)))))

(assert (=> b!176162 (= e!106833 e!106835)))

(declare-fun lt!57161 () List!2948)

(assert (=> b!176162 (= lt!57161 (list!1077 (seqFromList!431 (t!27586 tokens!465))))))

(declare-fun lt!57156 () Unit!2616)

(assert (=> b!176162 (= lt!57156 (lemmaDropApply!132 lt!57161 (+ 0 1)))))

(assert (=> b!176162 (= (head!608 (drop!145 lt!57161 (+ 0 1))) (apply!430 lt!57161 (+ 0 1)))))

(declare-fun lt!57163 () Unit!2616)

(assert (=> b!176162 (= lt!57163 lt!57156)))

(declare-fun lt!57157 () List!2948)

(assert (=> b!176162 (= lt!57157 (list!1077 (seqFromList!431 (t!27586 tokens!465))))))

(declare-fun lt!57167 () Unit!2616)

(assert (=> b!176162 (= lt!57167 (lemmaDropTail!124 lt!57157 (+ 0 1)))))

(assert (=> b!176162 (= (tail!348 (drop!145 lt!57157 (+ 0 1))) (drop!145 lt!57157 (+ 0 1 1)))))

(declare-fun lt!57164 () Unit!2616)

(assert (=> b!176162 (= lt!57164 lt!57167)))

(declare-fun lt!57166 () Unit!2616)

(assert (=> b!176162 (= lt!57166 (forallContained!94 (list!1077 (seqFromList!431 (t!27586 tokens!465))) lambda!5101 (apply!429 (seqFromList!431 (t!27586 tokens!465)) (+ 0 1))))))

(assert (=> b!176162 (= lt!57158 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 (seqFromList!431 (t!27586 tokens!465)) separatorToken!170 (+ 0 1 1)))))

(assert (=> b!176162 (= lt!57162 (maxPrefixZipperSequence!106 thiss!17480 rules!1920 (++!682 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) (+ 0 1))) lt!57158)))))

(declare-fun res!79549 () Bool)

(assert (=> b!176162 (= res!79549 ((_ is Some!329) lt!57162))))

(assert (=> b!176162 (=> (not res!79549) (not e!106837))))

(assert (=> b!176162 (= c!34832 e!106837)))

(declare-fun bm!7870 () Bool)

(assert (=> bm!7870 (= call!7876 (charsOf!182 (ite c!34832 call!7872 (ite c!34831 separatorToken!170 call!7875))))))

(declare-fun bm!7871 () Bool)

(assert (=> bm!7871 (= call!7875 call!7872)))

(declare-fun b!176163 () Bool)

(assert (=> b!176163 (= e!106835 call!7874)))

(declare-fun b!176164 () Bool)

(assert (=> b!176164 (= e!106838 (BalanceConc!1761 Empty!876))))

(assert (=> b!176164 (= (print!144 thiss!17480 (singletonSeq!79 call!7875)) (printTailRec!107 thiss!17480 (singletonSeq!79 call!7875) 0 (BalanceConc!1761 Empty!876)))))

(declare-fun lt!57160 () Unit!2616)

(declare-fun Unit!2656 () Unit!2616)

(assert (=> b!176164 (= lt!57160 Unit!2656)))

(declare-fun lt!57165 () Unit!2616)

(assert (=> b!176164 (= lt!57165 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!40 thiss!17480 rules!1920 (list!1073 call!7873) (list!1073 lt!57158)))))

(assert (=> b!176164 false))

(declare-fun lt!57159 () Unit!2616)

(declare-fun Unit!2657 () Unit!2616)

(assert (=> b!176164 (= lt!57159 Unit!2657)))

(assert (= (and d!44947 res!79551) b!176154))

(assert (= (and d!44947 c!34830) b!176159))

(assert (= (and d!44947 (not c!34830)) b!176162))

(assert (= (and b!176162 res!79549) b!176161))

(assert (= (and b!176162 c!34832) b!176163))

(assert (= (and b!176162 (not c!34832)) b!176158))

(assert (= (and b!176158 res!79550) b!176156))

(assert (= (and b!176158 c!34831) b!176155))

(assert (= (and b!176158 (not c!34831)) b!176164))

(assert (= (or b!176155 b!176164) bm!7871))

(assert (= (or b!176155 b!176164) bm!7867))

(assert (= (or b!176163 b!176156 bm!7871) bm!7868))

(assert (= (or b!176163 bm!7867) bm!7870))

(assert (= (or b!176163 b!176155) bm!7869))

(assert (= (and bm!7869 c!34833) b!176157))

(assert (= (and bm!7869 (not c!34833)) b!176160))

(assert (=> d!44947 m!172855))

(declare-fun m!177173 () Bool)

(assert (=> d!44947 m!177173))

(assert (=> d!44947 m!172855))

(assert (=> d!44947 m!173693))

(assert (=> d!44947 m!177173))

(declare-fun m!177175 () Bool)

(assert (=> d!44947 m!177175))

(declare-fun m!177177 () Bool)

(assert (=> d!44947 m!177177))

(assert (=> d!44947 m!172855))

(assert (=> d!44947 m!173699))

(assert (=> d!44947 m!173699))

(assert (=> d!44947 m!177173))

(declare-fun m!177179 () Bool)

(assert (=> d!44947 m!177179))

(assert (=> b!176154 m!172855))

(assert (=> b!176154 m!173693))

(declare-fun m!177181 () Bool)

(assert (=> b!176164 m!177181))

(declare-fun m!177183 () Bool)

(assert (=> b!176164 m!177183))

(declare-fun m!177185 () Bool)

(assert (=> b!176164 m!177185))

(assert (=> b!176164 m!177181))

(declare-fun m!177187 () Bool)

(assert (=> b!176164 m!177187))

(assert (=> b!176164 m!177185))

(assert (=> b!176164 m!177183))

(declare-fun m!177189 () Bool)

(assert (=> b!176164 m!177189))

(assert (=> b!176164 m!177181))

(declare-fun m!177191 () Bool)

(assert (=> b!176164 m!177191))

(assert (=> bm!7868 m!172855))

(declare-fun m!177193 () Bool)

(assert (=> bm!7868 m!177193))

(declare-fun m!177195 () Bool)

(assert (=> bm!7870 m!177195))

(declare-fun m!177197 () Bool)

(assert (=> b!176160 m!177197))

(assert (=> b!176162 m!172855))

(assert (=> b!176162 m!177193))

(declare-fun m!177199 () Bool)

(assert (=> b!176162 m!177199))

(assert (=> b!176162 m!172855))

(assert (=> b!176162 m!173699))

(declare-fun m!177201 () Bool)

(assert (=> b!176162 m!177201))

(declare-fun m!177203 () Bool)

(assert (=> b!176162 m!177203))

(declare-fun m!177205 () Bool)

(assert (=> b!176162 m!177205))

(declare-fun m!177207 () Bool)

(assert (=> b!176162 m!177207))

(declare-fun m!177209 () Bool)

(assert (=> b!176162 m!177209))

(assert (=> b!176162 m!177203))

(declare-fun m!177211 () Bool)

(assert (=> b!176162 m!177211))

(assert (=> b!176162 m!173699))

(assert (=> b!176162 m!177193))

(declare-fun m!177213 () Bool)

(assert (=> b!176162 m!177213))

(declare-fun m!177215 () Bool)

(assert (=> b!176162 m!177215))

(declare-fun m!177217 () Bool)

(assert (=> b!176162 m!177217))

(assert (=> b!176162 m!177193))

(declare-fun m!177219 () Bool)

(assert (=> b!176162 m!177219))

(declare-fun m!177221 () Bool)

(assert (=> b!176162 m!177221))

(assert (=> b!176162 m!177215))

(assert (=> b!176162 m!177219))

(assert (=> b!176162 m!177207))

(assert (=> b!176162 m!172855))

(declare-fun m!177223 () Bool)

(assert (=> b!176162 m!177223))

(assert (=> b!176161 m!172855))

(assert (=> b!176161 m!177193))

(declare-fun m!177225 () Bool)

(assert (=> b!176155 m!177225))

(declare-fun m!177227 () Bool)

(assert (=> bm!7869 m!177227))

(assert (=> b!174547 d!44947))

(declare-fun b!176186 () Bool)

(declare-fun e!106856 () Int)

(assert (=> b!176186 (= e!106856 0)))

(declare-fun bm!7874 () Bool)

(declare-fun call!7879 () Int)

(assert (=> bm!7874 (= call!7879 (size!2437 lt!56131))))

(declare-fun b!176187 () Bool)

(assert (=> b!176187 (= e!106856 (- call!7879 (+ 0 1)))))

(declare-fun d!44949 () Bool)

(declare-fun e!106857 () Bool)

(assert (=> d!44949 e!106857))

(declare-fun res!79554 () Bool)

(assert (=> d!44949 (=> (not res!79554) (not e!106857))))

(declare-fun lt!57172 () List!2948)

(declare-fun content!410 (List!2948) (InoxSet Token!798))

(assert (=> d!44949 (= res!79554 (= ((_ map implies) (content!410 lt!57172) (content!410 lt!56131)) ((as const (InoxSet Token!798)) true)))))

(declare-fun e!106853 () List!2948)

(assert (=> d!44949 (= lt!57172 e!106853)))

(declare-fun c!34842 () Bool)

(assert (=> d!44949 (= c!34842 ((_ is Nil!2938) lt!56131))))

(assert (=> d!44949 (= (drop!145 lt!56131 (+ 0 1)) lt!57172)))

(declare-fun b!176188 () Bool)

(declare-fun e!106854 () Int)

(assert (=> b!176188 (= e!106854 e!106856)))

(declare-fun c!34845 () Bool)

(assert (=> b!176188 (= c!34845 (>= (+ 0 1) call!7879))))

(declare-fun b!176189 () Bool)

(declare-fun e!106855 () List!2948)

(assert (=> b!176189 (= e!106853 e!106855)))

(declare-fun c!34843 () Bool)

(assert (=> b!176189 (= c!34843 (<= (+ 0 1) 0))))

(declare-fun b!176190 () Bool)

(assert (=> b!176190 (= e!106854 call!7879)))

(declare-fun b!176191 () Bool)

(assert (=> b!176191 (= e!106855 (drop!145 (t!27586 lt!56131) (- (+ 0 1) 1)))))

(declare-fun b!176192 () Bool)

(assert (=> b!176192 (= e!106857 (= (size!2437 lt!57172) e!106854))))

(declare-fun c!34844 () Bool)

(assert (=> b!176192 (= c!34844 (<= (+ 0 1) 0))))

(declare-fun b!176193 () Bool)

(assert (=> b!176193 (= e!106855 lt!56131)))

(declare-fun b!176194 () Bool)

(assert (=> b!176194 (= e!106853 Nil!2938)))

(assert (= (and d!44949 c!34842) b!176194))

(assert (= (and d!44949 (not c!34842)) b!176189))

(assert (= (and b!176189 c!34843) b!176193))

(assert (= (and b!176189 (not c!34843)) b!176191))

(assert (= (and d!44949 res!79554) b!176192))

(assert (= (and b!176192 c!34844) b!176190))

(assert (= (and b!176192 (not c!34844)) b!176188))

(assert (= (and b!176188 c!34845) b!176186))

(assert (= (and b!176188 (not c!34845)) b!176187))

(assert (= (or b!176190 b!176188 b!176187) bm!7874))

(assert (=> bm!7874 m!177135))

(declare-fun m!177229 () Bool)

(assert (=> d!44949 m!177229))

(declare-fun m!177231 () Bool)

(assert (=> d!44949 m!177231))

(declare-fun m!177233 () Bool)

(assert (=> b!176191 m!177233))

(declare-fun m!177235 () Bool)

(assert (=> b!176192 m!177235))

(assert (=> b!174547 d!44949))

(declare-fun d!44951 () Bool)

(assert (=> d!44951 (= (tail!348 (drop!145 lt!56131 0)) (t!27586 (drop!145 lt!56131 0)))))

(assert (=> b!174547 d!44951))

(declare-fun d!44953 () Bool)

(assert (=> d!44953 (= (head!608 (drop!145 lt!56135 0)) (h!8335 (drop!145 lt!56135 0)))))

(assert (=> b!174547 d!44953))

(declare-fun b!176195 () Bool)

(declare-fun e!106861 () Int)

(assert (=> b!176195 (= e!106861 0)))

(declare-fun bm!7875 () Bool)

(declare-fun call!7880 () Int)

(assert (=> bm!7875 (= call!7880 (size!2437 lt!56135))))

(declare-fun b!176196 () Bool)

(assert (=> b!176196 (= e!106861 (- call!7880 0))))

(declare-fun d!44955 () Bool)

(declare-fun e!106862 () Bool)

(assert (=> d!44955 e!106862))

(declare-fun res!79555 () Bool)

(assert (=> d!44955 (=> (not res!79555) (not e!106862))))

(declare-fun lt!57173 () List!2948)

(assert (=> d!44955 (= res!79555 (= ((_ map implies) (content!410 lt!57173) (content!410 lt!56135)) ((as const (InoxSet Token!798)) true)))))

(declare-fun e!106858 () List!2948)

(assert (=> d!44955 (= lt!57173 e!106858)))

(declare-fun c!34846 () Bool)

(assert (=> d!44955 (= c!34846 ((_ is Nil!2938) lt!56135))))

(assert (=> d!44955 (= (drop!145 lt!56135 0) lt!57173)))

(declare-fun b!176197 () Bool)

(declare-fun e!106859 () Int)

(assert (=> b!176197 (= e!106859 e!106861)))

(declare-fun c!34849 () Bool)

(assert (=> b!176197 (= c!34849 (>= 0 call!7880))))

(declare-fun b!176198 () Bool)

(declare-fun e!106860 () List!2948)

(assert (=> b!176198 (= e!106858 e!106860)))

(declare-fun c!34847 () Bool)

(assert (=> b!176198 (= c!34847 (<= 0 0))))

(declare-fun b!176199 () Bool)

(assert (=> b!176199 (= e!106859 call!7880)))

(declare-fun b!176200 () Bool)

(assert (=> b!176200 (= e!106860 (drop!145 (t!27586 lt!56135) (- 0 1)))))

(declare-fun b!176201 () Bool)

(assert (=> b!176201 (= e!106862 (= (size!2437 lt!57173) e!106859))))

(declare-fun c!34848 () Bool)

(assert (=> b!176201 (= c!34848 (<= 0 0))))

(declare-fun b!176202 () Bool)

(assert (=> b!176202 (= e!106860 lt!56135)))

(declare-fun b!176203 () Bool)

(assert (=> b!176203 (= e!106858 Nil!2938)))

(assert (= (and d!44955 c!34846) b!176203))

(assert (= (and d!44955 (not c!34846)) b!176198))

(assert (= (and b!176198 c!34847) b!176202))

(assert (= (and b!176198 (not c!34847)) b!176200))

(assert (= (and d!44955 res!79555) b!176201))

(assert (= (and b!176201 c!34848) b!176199))

(assert (= (and b!176201 (not c!34848)) b!176197))

(assert (= (and b!176197 c!34849) b!176195))

(assert (= (and b!176197 (not c!34849)) b!176196))

(assert (= (or b!176199 b!176197 b!176196) bm!7875))

(assert (=> bm!7875 m!177139))

(declare-fun m!177237 () Bool)

(assert (=> d!44955 m!177237))

(declare-fun m!177239 () Bool)

(assert (=> d!44955 m!177239))

(declare-fun m!177241 () Bool)

(assert (=> b!176200 m!177241))

(declare-fun m!177243 () Bool)

(assert (=> b!176201 m!177243))

(assert (=> b!174547 d!44955))

(declare-fun b!176206 () Bool)

(declare-fun res!79558 () Bool)

(declare-fun e!106863 () Bool)

(assert (=> b!176206 (=> (not res!79558) (not e!106863))))

(assert (=> b!176206 (= res!79558 (>= (height!98 (++!685 (c!34379 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))) (c!34379 lt!56132))) (max!0 (height!98 (c!34379 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)))) (height!98 (c!34379 lt!56132)))))))

(declare-fun b!176204 () Bool)

(declare-fun res!79557 () Bool)

(assert (=> b!176204 (=> (not res!79557) (not e!106863))))

(assert (=> b!176204 (= res!79557 (isBalanced!246 (++!685 (c!34379 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))) (c!34379 lt!56132))))))

(declare-fun d!44957 () Bool)

(assert (=> d!44957 e!106863))

(declare-fun res!79559 () Bool)

(assert (=> d!44957 (=> (not res!79559) (not e!106863))))

(assert (=> d!44957 (= res!79559 (appendAssocInst!33 (c!34379 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))) (c!34379 lt!56132)))))

(declare-fun lt!57174 () BalanceConc!1760)

(assert (=> d!44957 (= lt!57174 (BalanceConc!1761 (++!685 (c!34379 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))) (c!34379 lt!56132))))))

(assert (=> d!44957 (= (++!682 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)) lt!56132) lt!57174)))

(declare-fun b!176205 () Bool)

(declare-fun res!79556 () Bool)

(assert (=> b!176205 (=> (not res!79556) (not e!106863))))

(assert (=> b!176205 (= res!79556 (<= (height!98 (++!685 (c!34379 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))) (c!34379 lt!56132))) (+ (max!0 (height!98 (c!34379 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)))) (height!98 (c!34379 lt!56132))) 1)))))

(declare-fun b!176207 () Bool)

(assert (=> b!176207 (= e!106863 (= (list!1073 lt!57174) (++!680 (list!1073 (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))) (list!1073 lt!56132))))))

(assert (= (and d!44957 res!79559) b!176204))

(assert (= (and b!176204 res!79557) b!176205))

(assert (= (and b!176205 res!79556) b!176206))

(assert (= (and b!176206 res!79558) b!176207))

(declare-fun m!177245 () Bool)

(assert (=> b!176205 m!177245))

(declare-fun m!177247 () Bool)

(assert (=> b!176205 m!177247))

(declare-fun m!177249 () Bool)

(assert (=> b!176205 m!177249))

(declare-fun m!177251 () Bool)

(assert (=> b!176205 m!177251))

(assert (=> b!176205 m!177249))

(assert (=> b!176205 m!177251))

(declare-fun m!177253 () Bool)

(assert (=> b!176205 m!177253))

(assert (=> b!176205 m!177245))

(declare-fun m!177255 () Bool)

(assert (=> b!176207 m!177255))

(assert (=> b!176207 m!173741))

(declare-fun m!177257 () Bool)

(assert (=> b!176207 m!177257))

(assert (=> b!176207 m!173705))

(assert (=> b!176207 m!177257))

(assert (=> b!176207 m!173705))

(declare-fun m!177259 () Bool)

(assert (=> b!176207 m!177259))

(assert (=> b!176204 m!177245))

(assert (=> b!176204 m!177245))

(declare-fun m!177261 () Bool)

(assert (=> b!176204 m!177261))

(assert (=> b!176206 m!177245))

(assert (=> b!176206 m!177247))

(assert (=> b!176206 m!177249))

(assert (=> b!176206 m!177251))

(assert (=> b!176206 m!177249))

(assert (=> b!176206 m!177251))

(assert (=> b!176206 m!177253))

(assert (=> b!176206 m!177245))

(declare-fun m!177263 () Bool)

(assert (=> d!44957 m!177263))

(assert (=> d!44957 m!177245))

(assert (=> b!174547 d!44957))

(declare-fun d!44959 () Bool)

(assert (=> d!44959 (= (list!1077 (seqFromList!431 (t!27586 tokens!465))) (list!1080 (c!34381 (seqFromList!431 (t!27586 tokens!465)))))))

(declare-fun bs!17563 () Bool)

(assert (= bs!17563 d!44959))

(declare-fun m!177265 () Bool)

(assert (=> bs!17563 m!177265))

(assert (=> b!174547 d!44959))

(declare-fun d!44961 () Bool)

(assert (=> d!44961 (dynLambda!1135 lambda!5052 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))))

(declare-fun lt!57175 () Unit!2616)

(assert (=> d!44961 (= lt!57175 (choose!1845 (list!1077 (seqFromList!431 (t!27586 tokens!465))) lambda!5052 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)))))

(declare-fun e!106864 () Bool)

(assert (=> d!44961 e!106864))

(declare-fun res!79560 () Bool)

(assert (=> d!44961 (=> (not res!79560) (not e!106864))))

(assert (=> d!44961 (= res!79560 (forall!583 (list!1077 (seqFromList!431 (t!27586 tokens!465))) lambda!5052))))

(assert (=> d!44961 (= (forallContained!94 (list!1077 (seqFromList!431 (t!27586 tokens!465))) lambda!5052 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)) lt!57175)))

(declare-fun b!176208 () Bool)

(assert (=> b!176208 (= e!106864 (contains!474 (list!1077 (seqFromList!431 (t!27586 tokens!465))) (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)))))

(assert (= (and d!44961 res!79560) b!176208))

(declare-fun b_lambda!4159 () Bool)

(assert (=> (not b_lambda!4159) (not d!44961)))

(assert (=> d!44961 m!173715))

(declare-fun m!177267 () Bool)

(assert (=> d!44961 m!177267))

(assert (=> d!44961 m!173699))

(assert (=> d!44961 m!173715))

(declare-fun m!177269 () Bool)

(assert (=> d!44961 m!177269))

(assert (=> d!44961 m!173699))

(declare-fun m!177271 () Bool)

(assert (=> d!44961 m!177271))

(assert (=> b!176208 m!173699))

(assert (=> b!176208 m!173715))

(declare-fun m!177273 () Bool)

(assert (=> b!176208 m!177273))

(assert (=> b!174547 d!44961))

(declare-fun d!44963 () Bool)

(assert (=> d!44963 (= (head!608 (drop!145 lt!56135 0)) (apply!430 lt!56135 0))))

(declare-fun lt!57178 () Unit!2616)

(declare-fun choose!1856 (List!2948 Int) Unit!2616)

(assert (=> d!44963 (= lt!57178 (choose!1856 lt!56135 0))))

(declare-fun e!106867 () Bool)

(assert (=> d!44963 e!106867))

(declare-fun res!79563 () Bool)

(assert (=> d!44963 (=> (not res!79563) (not e!106867))))

(assert (=> d!44963 (= res!79563 (>= 0 0))))

(assert (=> d!44963 (= (lemmaDropApply!132 lt!56135 0) lt!57178)))

(declare-fun b!176211 () Bool)

(assert (=> b!176211 (= e!106867 (< 0 (size!2437 lt!56135)))))

(assert (= (and d!44963 res!79563) b!176211))

(assert (=> d!44963 m!173737))

(assert (=> d!44963 m!173737))

(assert (=> d!44963 m!173739))

(assert (=> d!44963 m!173733))

(declare-fun m!177275 () Bool)

(assert (=> d!44963 m!177275))

(assert (=> b!176211 m!177139))

(assert (=> b!174547 d!44963))

(declare-fun b!176212 () Bool)

(declare-fun e!106871 () Int)

(assert (=> b!176212 (= e!106871 0)))

(declare-fun bm!7876 () Bool)

(declare-fun call!7881 () Int)

(assert (=> bm!7876 (= call!7881 (size!2437 lt!56131))))

(declare-fun b!176213 () Bool)

(assert (=> b!176213 (= e!106871 (- call!7881 0))))

(declare-fun d!44965 () Bool)

(declare-fun e!106872 () Bool)

(assert (=> d!44965 e!106872))

(declare-fun res!79564 () Bool)

(assert (=> d!44965 (=> (not res!79564) (not e!106872))))

(declare-fun lt!57179 () List!2948)

(assert (=> d!44965 (= res!79564 (= ((_ map implies) (content!410 lt!57179) (content!410 lt!56131)) ((as const (InoxSet Token!798)) true)))))

(declare-fun e!106868 () List!2948)

(assert (=> d!44965 (= lt!57179 e!106868)))

(declare-fun c!34850 () Bool)

(assert (=> d!44965 (= c!34850 ((_ is Nil!2938) lt!56131))))

(assert (=> d!44965 (= (drop!145 lt!56131 0) lt!57179)))

(declare-fun b!176214 () Bool)

(declare-fun e!106869 () Int)

(assert (=> b!176214 (= e!106869 e!106871)))

(declare-fun c!34853 () Bool)

(assert (=> b!176214 (= c!34853 (>= 0 call!7881))))

(declare-fun b!176215 () Bool)

(declare-fun e!106870 () List!2948)

(assert (=> b!176215 (= e!106868 e!106870)))

(declare-fun c!34851 () Bool)

(assert (=> b!176215 (= c!34851 (<= 0 0))))

(declare-fun b!176216 () Bool)

(assert (=> b!176216 (= e!106869 call!7881)))

(declare-fun b!176217 () Bool)

(assert (=> b!176217 (= e!106870 (drop!145 (t!27586 lt!56131) (- 0 1)))))

(declare-fun b!176218 () Bool)

(assert (=> b!176218 (= e!106872 (= (size!2437 lt!57179) e!106869))))

(declare-fun c!34852 () Bool)

(assert (=> b!176218 (= c!34852 (<= 0 0))))

(declare-fun b!176219 () Bool)

(assert (=> b!176219 (= e!106870 lt!56131)))

(declare-fun b!176220 () Bool)

(assert (=> b!176220 (= e!106868 Nil!2938)))

(assert (= (and d!44965 c!34850) b!176220))

(assert (= (and d!44965 (not c!34850)) b!176215))

(assert (= (and b!176215 c!34851) b!176219))

(assert (= (and b!176215 (not c!34851)) b!176217))

(assert (= (and d!44965 res!79564) b!176218))

(assert (= (and b!176218 c!34852) b!176216))

(assert (= (and b!176218 (not c!34852)) b!176214))

(assert (= (and b!176214 c!34853) b!176212))

(assert (= (and b!176214 (not c!34853)) b!176213))

(assert (= (or b!176216 b!176214 b!176213) bm!7876))

(assert (=> bm!7876 m!177135))

(declare-fun m!177277 () Bool)

(assert (=> d!44965 m!177277))

(assert (=> d!44965 m!177231))

(declare-fun m!177279 () Bool)

(assert (=> b!176217 m!177279))

(declare-fun m!177281 () Bool)

(assert (=> b!176218 m!177281))

(assert (=> b!174547 d!44965))

(assert (=> b!174547 d!44361))

(declare-fun d!44967 () Bool)

(declare-fun lt!57180 () BalanceConc!1760)

(assert (=> d!44967 (= (list!1073 lt!57180) (originalCharacters!570 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)))))

(assert (=> d!44967 (= lt!57180 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)))) (value!19335 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))))))

(assert (=> d!44967 (= (charsOf!182 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)) lt!57180)))

(declare-fun b_lambda!4161 () Bool)

(assert (=> (not b_lambda!4161) (not d!44967)))

(declare-fun t!27877 () Bool)

(declare-fun tb!7345 () Bool)

(assert (=> (and b!174009 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))))) t!27877) tb!7345))

(declare-fun b!176221 () Bool)

(declare-fun e!106873 () Bool)

(declare-fun tp!85133 () Bool)

(assert (=> b!176221 (= e!106873 (and (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)))) (value!19335 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))))) tp!85133))))

(declare-fun result!10102 () Bool)

(assert (=> tb!7345 (= result!10102 (and (inv!3770 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)))) (value!19335 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)))) e!106873))))

(assert (= tb!7345 b!176221))

(declare-fun m!177283 () Bool)

(assert (=> b!176221 m!177283))

(declare-fun m!177285 () Bool)

(assert (=> tb!7345 m!177285))

(assert (=> d!44967 t!27877))

(declare-fun b_and!11885 () Bool)

(assert (= b_and!11877 (and (=> t!27877 result!10102) b_and!11885)))

(declare-fun t!27879 () Bool)

(declare-fun tb!7347 () Bool)

(assert (=> (and b!174773 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))))) t!27879) tb!7347))

(declare-fun result!10104 () Bool)

(assert (= result!10104 result!10102))

(assert (=> d!44967 t!27879))

(declare-fun b_and!11887 () Bool)

(assert (= b_and!11879 (and (=> t!27879 result!10104) b_and!11887)))

(declare-fun t!27881 () Bool)

(declare-fun tb!7349 () Bool)

(assert (=> (and b!174759 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))))) t!27881) tb!7349))

(declare-fun result!10106 () Bool)

(assert (= result!10106 result!10102))

(assert (=> d!44967 t!27881))

(declare-fun b_and!11889 () Bool)

(assert (= b_and!11881 (and (=> t!27881 result!10106) b_and!11889)))

(declare-fun t!27883 () Bool)

(declare-fun tb!7351 () Bool)

(assert (=> (and b!174015 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))))) t!27883) tb!7351))

(declare-fun result!10108 () Bool)

(assert (= result!10108 result!10102))

(assert (=> d!44967 t!27883))

(declare-fun b_and!11891 () Bool)

(assert (= b_and!11875 (and (=> t!27883 result!10108) b_and!11891)))

(declare-fun t!27885 () Bool)

(declare-fun tb!7353 () Bool)

(assert (=> (and b!174005 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))))) t!27885) tb!7353))

(declare-fun result!10110 () Bool)

(assert (= result!10110 result!10102))

(assert (=> d!44967 t!27885))

(declare-fun b_and!11893 () Bool)

(assert (= b_and!11883 (and (=> t!27885 result!10110) b_and!11893)))

(declare-fun m!177287 () Bool)

(assert (=> d!44967 m!177287))

(declare-fun m!177289 () Bool)

(assert (=> d!44967 m!177289))

(assert (=> b!174547 d!44967))

(declare-fun d!44969 () Bool)

(assert (=> d!44969 (= (list!1077 lt!56198) (list!1080 (c!34381 lt!56198)))))

(declare-fun bs!17564 () Bool)

(assert (= bs!17564 d!44969))

(declare-fun m!177291 () Bool)

(assert (=> bs!17564 m!177291))

(assert (=> d!44155 d!44969))

(declare-fun d!44971 () Bool)

(declare-fun e!106876 () Bool)

(assert (=> d!44971 e!106876))

(declare-fun res!79567 () Bool)

(assert (=> d!44971 (=> (not res!79567) (not e!106876))))

(declare-fun lt!57183 () BalanceConc!1762)

(assert (=> d!44971 (= res!79567 (= (list!1077 lt!57183) (Cons!2938 (h!8335 tokens!465) Nil!2938)))))

(declare-fun choose!1857 (Token!798) BalanceConc!1762)

(assert (=> d!44971 (= lt!57183 (choose!1857 (h!8335 tokens!465)))))

(assert (=> d!44971 (= (singleton!41 (h!8335 tokens!465)) lt!57183)))

(declare-fun b!176224 () Bool)

(assert (=> b!176224 (= e!106876 (isBalanced!244 (c!34381 lt!57183)))))

(assert (= (and d!44971 res!79567) b!176224))

(declare-fun m!177293 () Bool)

(assert (=> d!44971 m!177293))

(declare-fun m!177295 () Bool)

(assert (=> d!44971 m!177295))

(declare-fun m!177297 () Bool)

(assert (=> b!176224 m!177297))

(assert (=> d!44155 d!44971))

(declare-fun d!44973 () Bool)

(declare-fun e!106877 () Bool)

(assert (=> d!44973 e!106877))

(declare-fun res!79569 () Bool)

(assert (=> d!44973 (=> (not res!79569) (not e!106877))))

(declare-fun lt!57184 () List!2946)

(assert (=> d!44973 (= res!79569 (= (content!407 lt!57184) ((_ map or) (content!407 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168))))) (content!407 (_2!1648 (get!811 lt!56168))))))))

(declare-fun e!106878 () List!2946)

(assert (=> d!44973 (= lt!57184 e!106878)))

(declare-fun c!34854 () Bool)

(assert (=> d!44973 (= c!34854 ((_ is Nil!2936) (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168))))))))

(assert (=> d!44973 (= (++!680 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168)))) (_2!1648 (get!811 lt!56168))) lt!57184)))

(declare-fun b!176228 () Bool)

(assert (=> b!176228 (= e!106877 (or (not (= (_2!1648 (get!811 lt!56168)) Nil!2936)) (= lt!57184 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168)))))))))

(declare-fun b!176227 () Bool)

(declare-fun res!79568 () Bool)

(assert (=> b!176227 (=> (not res!79568) (not e!106877))))

(assert (=> b!176227 (= res!79568 (= (size!2431 lt!57184) (+ (size!2431 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168))))) (size!2431 (_2!1648 (get!811 lt!56168))))))))

(declare-fun b!176225 () Bool)

(assert (=> b!176225 (= e!106878 (_2!1648 (get!811 lt!56168)))))

(declare-fun b!176226 () Bool)

(assert (=> b!176226 (= e!106878 (Cons!2936 (h!8333 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168))))) (++!680 (t!27584 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168))))) (_2!1648 (get!811 lt!56168)))))))

(assert (= (and d!44973 c!34854) b!176225))

(assert (= (and d!44973 (not c!34854)) b!176226))

(assert (= (and d!44973 res!79569) b!176227))

(assert (= (and b!176227 res!79568) b!176228))

(declare-fun m!177299 () Bool)

(assert (=> d!44973 m!177299))

(assert (=> d!44973 m!173845))

(declare-fun m!177301 () Bool)

(assert (=> d!44973 m!177301))

(declare-fun m!177303 () Bool)

(assert (=> d!44973 m!177303))

(declare-fun m!177305 () Bool)

(assert (=> b!176227 m!177305))

(assert (=> b!176227 m!173845))

(declare-fun m!177307 () Bool)

(assert (=> b!176227 m!177307))

(assert (=> b!176227 m!173849))

(declare-fun m!177309 () Bool)

(assert (=> b!176226 m!177309))

(assert (=> b!174694 d!44973))

(assert (=> b!174694 d!44937))

(assert (=> b!174694 d!44939))

(assert (=> b!174694 d!44411))

(declare-fun d!44975 () Bool)

(assert (=> d!44975 (= (list!1073 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170))) (list!1076 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170)))))))

(declare-fun bs!17565 () Bool)

(assert (= bs!17565 d!44975))

(declare-fun m!177311 () Bool)

(assert (=> bs!17565 m!177311))

(assert (=> b!174636 d!44975))

(declare-fun d!44977 () Bool)

(declare-fun c!34855 () Bool)

(assert (=> d!44977 (= c!34855 ((_ is Nil!2936) lt!55835))))

(declare-fun e!106879 () (InoxSet C!2424))

(assert (=> d!44977 (= (content!407 lt!55835) e!106879)))

(declare-fun b!176229 () Bool)

(assert (=> b!176229 (= e!106879 ((as const (Array C!2424 Bool)) false))))

(declare-fun b!176230 () Bool)

(assert (=> b!176230 (= e!106879 ((_ map or) (store ((as const (Array C!2424 Bool)) false) (h!8333 lt!55835) true) (content!407 (t!27584 lt!55835))))))

(assert (= (and d!44977 c!34855) b!176229))

(assert (= (and d!44977 (not c!34855)) b!176230))

(declare-fun m!177313 () Bool)

(assert (=> b!176230 m!177313))

(declare-fun m!177315 () Bool)

(assert (=> b!176230 m!177315))

(assert (=> d!43939 d!44977))

(declare-fun d!44979 () Bool)

(declare-fun c!34856 () Bool)

(assert (=> d!44979 (= c!34856 ((_ is Nil!2936) lt!55823))))

(declare-fun e!106880 () (InoxSet C!2424))

(assert (=> d!44979 (= (content!407 lt!55823) e!106880)))

(declare-fun b!176231 () Bool)

(assert (=> b!176231 (= e!106880 ((as const (Array C!2424 Bool)) false))))

(declare-fun b!176232 () Bool)

(assert (=> b!176232 (= e!106880 ((_ map or) (store ((as const (Array C!2424 Bool)) false) (h!8333 lt!55823) true) (content!407 (t!27584 lt!55823))))))

(assert (= (and d!44979 c!34856) b!176231))

(assert (= (and d!44979 (not c!34856)) b!176232))

(declare-fun m!177317 () Bool)

(assert (=> b!176232 m!177317))

(assert (=> b!176232 m!175207))

(assert (=> d!43939 d!44979))

(assert (=> d!43939 d!44617))

(declare-fun d!44981 () Bool)

(declare-fun lt!57185 () BalanceConc!1760)

(assert (=> d!44981 (= (list!1073 lt!57185) (originalCharacters!570 call!7771))))

(assert (=> d!44981 (= lt!57185 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 call!7771))) (value!19335 call!7771)))))

(assert (=> d!44981 (= (charsOf!182 call!7771) lt!57185)))

(declare-fun b_lambda!4163 () Bool)

(assert (=> (not b_lambda!4163) (not d!44981)))

(declare-fun t!27888 () Bool)

(declare-fun tb!7355 () Bool)

(assert (=> (and b!174773 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 call!7771)))) t!27888) tb!7355))

(declare-fun b!176233 () Bool)

(declare-fun e!106881 () Bool)

(declare-fun tp!85134 () Bool)

(assert (=> b!176233 (= e!106881 (and (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 call!7771))) (value!19335 call!7771)))) tp!85134))))

(declare-fun result!10112 () Bool)

(assert (=> tb!7355 (= result!10112 (and (inv!3770 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 call!7771))) (value!19335 call!7771))) e!106881))))

(assert (= tb!7355 b!176233))

(declare-fun m!177319 () Bool)

(assert (=> b!176233 m!177319))

(declare-fun m!177321 () Bool)

(assert (=> tb!7355 m!177321))

(assert (=> d!44981 t!27888))

(declare-fun b_and!11895 () Bool)

(assert (= b_and!11887 (and (=> t!27888 result!10112) b_and!11895)))

(declare-fun tb!7357 () Bool)

(declare-fun t!27890 () Bool)

(assert (=> (and b!174005 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 call!7771)))) t!27890) tb!7357))

(declare-fun result!10114 () Bool)

(assert (= result!10114 result!10112))

(assert (=> d!44981 t!27890))

(declare-fun b_and!11897 () Bool)

(assert (= b_and!11893 (and (=> t!27890 result!10114) b_and!11897)))

(declare-fun t!27892 () Bool)

(declare-fun tb!7359 () Bool)

(assert (=> (and b!174759 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 call!7771)))) t!27892) tb!7359))

(declare-fun result!10116 () Bool)

(assert (= result!10116 result!10112))

(assert (=> d!44981 t!27892))

(declare-fun b_and!11899 () Bool)

(assert (= b_and!11889 (and (=> t!27892 result!10116) b_and!11899)))

(declare-fun tb!7361 () Bool)

(declare-fun t!27894 () Bool)

(assert (=> (and b!174009 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 call!7771)))) t!27894) tb!7361))

(declare-fun result!10118 () Bool)

(assert (= result!10118 result!10112))

(assert (=> d!44981 t!27894))

(declare-fun b_and!11901 () Bool)

(assert (= b_and!11885 (and (=> t!27894 result!10118) b_and!11901)))

(declare-fun t!27896 () Bool)

(declare-fun tb!7363 () Bool)

(assert (=> (and b!174015 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 call!7771)))) t!27896) tb!7363))

(declare-fun result!10120 () Bool)

(assert (= result!10120 result!10112))

(assert (=> d!44981 t!27896))

(declare-fun b_and!11903 () Bool)

(assert (= b_and!11891 (and (=> t!27896 result!10120) b_and!11903)))

(declare-fun m!177323 () Bool)

(assert (=> d!44981 m!177323))

(declare-fun m!177325 () Bool)

(assert (=> d!44981 m!177325))

(assert (=> b!174545 d!44981))

(declare-fun d!44983 () Bool)

(assert (=> d!44983 (= (list!1073 (ite c!34485 call!7765 call!7764)) (list!1076 (c!34379 (ite c!34485 call!7765 call!7764))))))

(declare-fun bs!17566 () Bool)

(assert (= bs!17566 d!44983))

(declare-fun m!177327 () Bool)

(assert (=> bs!17566 m!177327))

(assert (=> bm!7759 d!44983))

(declare-fun d!44985 () Bool)

(declare-fun res!79570 () Bool)

(declare-fun e!106882 () Bool)

(assert (=> d!44985 (=> res!79570 e!106882)))

(assert (=> d!44985 (= res!79570 ((_ is Nil!2938) (t!27586 tokens!465)))))

(assert (=> d!44985 (= (forall!583 (t!27586 tokens!465) lambda!5033) e!106882)))

(declare-fun b!176234 () Bool)

(declare-fun e!106883 () Bool)

(assert (=> b!176234 (= e!106882 e!106883)))

(declare-fun res!79571 () Bool)

(assert (=> b!176234 (=> (not res!79571) (not e!106883))))

(assert (=> b!176234 (= res!79571 (dynLambda!1135 lambda!5033 (h!8335 (t!27586 tokens!465))))))

(declare-fun b!176235 () Bool)

(assert (=> b!176235 (= e!106883 (forall!583 (t!27586 (t!27586 tokens!465)) lambda!5033))))

(assert (= (and d!44985 (not res!79570)) b!176234))

(assert (= (and b!176234 res!79571) b!176235))

(declare-fun b_lambda!4165 () Bool)

(assert (=> (not b_lambda!4165) (not b!176234)))

(declare-fun m!177329 () Bool)

(assert (=> b!176234 m!177329))

(declare-fun m!177331 () Bool)

(assert (=> b!176235 m!177331))

(assert (=> d!43987 d!44985))

(assert (=> d!43987 d!44139))

(declare-fun d!44987 () Bool)

(assert (=> d!44987 (= (inv!3770 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170))) (isBalanced!246 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170)))))))

(declare-fun bs!17567 () Bool)

(assert (= bs!17567 d!44987))

(declare-fun m!177333 () Bool)

(assert (=> bs!17567 m!177333))

(assert (=> tb!7111 d!44987))

(declare-fun d!44989 () Bool)

(declare-fun lt!57186 () Int)

(assert (=> d!44989 (= lt!57186 (size!2437 (list!1077 (seqFromList!431 (t!27586 tokens!465)))))))

(assert (=> d!44989 (= lt!57186 (size!2438 (c!34381 (seqFromList!431 (t!27586 tokens!465)))))))

(assert (=> d!44989 (= (size!2432 (seqFromList!431 (t!27586 tokens!465))) lt!57186)))

(declare-fun bs!17568 () Bool)

(assert (= bs!17568 d!44989))

(assert (=> bs!17568 m!172855))

(assert (=> bs!17568 m!173699))

(assert (=> bs!17568 m!173699))

(declare-fun m!177335 () Bool)

(assert (=> bs!17568 m!177335))

(declare-fun m!177337 () Bool)

(assert (=> bs!17568 m!177337))

(assert (=> b!174537 d!44989))

(declare-fun b!176236 () Bool)

(declare-fun e!106887 () Bool)

(declare-fun lt!57187 () Bool)

(assert (=> b!176236 (= e!106887 (not lt!57187))))

(declare-fun d!44991 () Bool)

(declare-fun e!106886 () Bool)

(assert (=> d!44991 e!106886))

(declare-fun c!34857 () Bool)

(assert (=> d!44991 (= c!34857 ((_ is EmptyExpr!751) (regex!527 (rule!1038 (_1!1648 (get!811 lt!56168))))))))

(declare-fun e!106888 () Bool)

(assert (=> d!44991 (= lt!57187 e!106888)))

(declare-fun c!34859 () Bool)

(assert (=> d!44991 (= c!34859 (isEmpty!1271 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168))))))))

(assert (=> d!44991 (validRegex!182 (regex!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))))

(assert (=> d!44991 (= (matchR!89 (regex!527 (rule!1038 (_1!1648 (get!811 lt!56168)))) (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168))))) lt!57187)))

(declare-fun b!176237 () Bool)

(declare-fun res!79573 () Bool)

(declare-fun e!106889 () Bool)

(assert (=> b!176237 (=> res!79573 e!106889)))

(assert (=> b!176237 (= res!79573 (not ((_ is ElementMatch!751) (regex!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))))))

(assert (=> b!176237 (= e!106887 e!106889)))

(declare-fun b!176238 () Bool)

(declare-fun call!7882 () Bool)

(assert (=> b!176238 (= e!106886 (= lt!57187 call!7882))))

(declare-fun b!176239 () Bool)

(assert (=> b!176239 (= e!106888 (matchR!89 (derivativeStep!75 (regex!527 (rule!1038 (_1!1648 (get!811 lt!56168)))) (head!609 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168)))))) (tail!349 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168)))))))))

(declare-fun b!176240 () Bool)

(declare-fun e!106884 () Bool)

(assert (=> b!176240 (= e!106889 e!106884)))

(declare-fun res!79575 () Bool)

(assert (=> b!176240 (=> (not res!79575) (not e!106884))))

(assert (=> b!176240 (= res!79575 (not lt!57187))))

(declare-fun b!176241 () Bool)

(assert (=> b!176241 (= e!106886 e!106887)))

(declare-fun c!34858 () Bool)

(assert (=> b!176241 (= c!34858 ((_ is EmptyLang!751) (regex!527 (rule!1038 (_1!1648 (get!811 lt!56168))))))))

(declare-fun b!176242 () Bool)

(declare-fun res!79574 () Bool)

(declare-fun e!106885 () Bool)

(assert (=> b!176242 (=> (not res!79574) (not e!106885))))

(assert (=> b!176242 (= res!79574 (isEmpty!1271 (tail!349 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168)))))))))

(declare-fun b!176243 () Bool)

(declare-fun res!79572 () Bool)

(assert (=> b!176243 (=> (not res!79572) (not e!106885))))

(assert (=> b!176243 (= res!79572 (not call!7882))))

(declare-fun b!176244 () Bool)

(declare-fun e!106890 () Bool)

(assert (=> b!176244 (= e!106890 (not (= (head!609 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168))))) (c!34380 (regex!527 (rule!1038 (_1!1648 (get!811 lt!56168))))))))))

(declare-fun b!176245 () Bool)

(assert (=> b!176245 (= e!106888 (nullable!109 (regex!527 (rule!1038 (_1!1648 (get!811 lt!56168))))))))

(declare-fun b!176246 () Bool)

(assert (=> b!176246 (= e!106884 e!106890)))

(declare-fun res!79579 () Bool)

(assert (=> b!176246 (=> res!79579 e!106890)))

(assert (=> b!176246 (= res!79579 call!7882)))

(declare-fun bm!7877 () Bool)

(assert (=> bm!7877 (= call!7882 (isEmpty!1271 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168))))))))

(declare-fun b!176247 () Bool)

(assert (=> b!176247 (= e!106885 (= (head!609 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168))))) (c!34380 (regex!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))))))

(declare-fun b!176248 () Bool)

(declare-fun res!79576 () Bool)

(assert (=> b!176248 (=> res!79576 e!106890)))

(assert (=> b!176248 (= res!79576 (not (isEmpty!1271 (tail!349 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!56168))))))))))

(declare-fun b!176249 () Bool)

(declare-fun res!79578 () Bool)

(assert (=> b!176249 (=> res!79578 e!106889)))

(assert (=> b!176249 (= res!79578 e!106885)))

(declare-fun res!79577 () Bool)

(assert (=> b!176249 (=> (not res!79577) (not e!106885))))

(assert (=> b!176249 (= res!79577 lt!57187)))

(assert (= (and d!44991 c!34859) b!176245))

(assert (= (and d!44991 (not c!34859)) b!176239))

(assert (= (and d!44991 c!34857) b!176238))

(assert (= (and d!44991 (not c!34857)) b!176241))

(assert (= (and b!176241 c!34858) b!176236))

(assert (= (and b!176241 (not c!34858)) b!176237))

(assert (= (and b!176237 (not res!79573)) b!176249))

(assert (= (and b!176249 res!79577) b!176243))

(assert (= (and b!176243 res!79572) b!176242))

(assert (= (and b!176242 res!79574) b!176247))

(assert (= (and b!176249 (not res!79578)) b!176240))

(assert (= (and b!176240 res!79575) b!176246))

(assert (= (and b!176246 (not res!79579)) b!176248))

(assert (= (and b!176248 (not res!79576)) b!176244))

(assert (= (or b!176238 b!176243 b!176246) bm!7877))

(declare-fun m!177339 () Bool)

(assert (=> b!176245 m!177339))

(assert (=> b!176248 m!173845))

(declare-fun m!177341 () Bool)

(assert (=> b!176248 m!177341))

(assert (=> b!176248 m!177341))

(declare-fun m!177343 () Bool)

(assert (=> b!176248 m!177343))

(assert (=> b!176247 m!173845))

(declare-fun m!177345 () Bool)

(assert (=> b!176247 m!177345))

(assert (=> b!176242 m!173845))

(assert (=> b!176242 m!177341))

(assert (=> b!176242 m!177341))

(assert (=> b!176242 m!177343))

(assert (=> b!176239 m!173845))

(assert (=> b!176239 m!177345))

(assert (=> b!176239 m!177345))

(declare-fun m!177347 () Bool)

(assert (=> b!176239 m!177347))

(assert (=> b!176239 m!173845))

(assert (=> b!176239 m!177341))

(assert (=> b!176239 m!177347))

(assert (=> b!176239 m!177341))

(declare-fun m!177349 () Bool)

(assert (=> b!176239 m!177349))

(assert (=> b!176244 m!173845))

(assert (=> b!176244 m!177345))

(assert (=> bm!7877 m!173845))

(declare-fun m!177351 () Bool)

(assert (=> bm!7877 m!177351))

(assert (=> d!44991 m!173845))

(assert (=> d!44991 m!177351))

(declare-fun m!177353 () Bool)

(assert (=> d!44991 m!177353))

(assert (=> b!174701 d!44991))

(assert (=> b!174701 d!44411))

(assert (=> b!174701 d!44937))

(assert (=> b!174701 d!44939))

(declare-fun d!44993 () Bool)

(assert (=> d!44993 (= (isEmpty!1271 (originalCharacters!570 (h!8335 tokens!465))) ((_ is Nil!2936) (originalCharacters!570 (h!8335 tokens!465))))))

(assert (=> d!43941 d!44993))

(declare-fun b!176252 () Bool)

(declare-fun res!79582 () Bool)

(declare-fun e!106891 () Bool)

(assert (=> b!176252 (=> (not res!79582) (not e!106891))))

(assert (=> b!176252 (= res!79582 (>= (height!98 (++!685 (c!34379 call!7708) (c!34379 lt!55908))) (max!0 (height!98 (c!34379 call!7708)) (height!98 (c!34379 lt!55908)))))))

(declare-fun b!176250 () Bool)

(declare-fun res!79581 () Bool)

(assert (=> b!176250 (=> (not res!79581) (not e!106891))))

(assert (=> b!176250 (= res!79581 (isBalanced!246 (++!685 (c!34379 call!7708) (c!34379 lt!55908))))))

(declare-fun d!44995 () Bool)

(assert (=> d!44995 e!106891))

(declare-fun res!79583 () Bool)

(assert (=> d!44995 (=> (not res!79583) (not e!106891))))

(assert (=> d!44995 (= res!79583 (appendAssocInst!33 (c!34379 call!7708) (c!34379 lt!55908)))))

(declare-fun lt!57188 () BalanceConc!1760)

(assert (=> d!44995 (= lt!57188 (BalanceConc!1761 (++!685 (c!34379 call!7708) (c!34379 lt!55908))))))

(assert (=> d!44995 (= (++!682 call!7708 lt!55908) lt!57188)))

(declare-fun b!176251 () Bool)

(declare-fun res!79580 () Bool)

(assert (=> b!176251 (=> (not res!79580) (not e!106891))))

(assert (=> b!176251 (= res!79580 (<= (height!98 (++!685 (c!34379 call!7708) (c!34379 lt!55908))) (+ (max!0 (height!98 (c!34379 call!7708)) (height!98 (c!34379 lt!55908))) 1)))))

(declare-fun b!176253 () Bool)

(assert (=> b!176253 (= e!106891 (= (list!1073 lt!57188) (++!680 (list!1073 call!7708) (list!1073 lt!55908))))))

(assert (= (and d!44995 res!79583) b!176250))

(assert (= (and b!176250 res!79581) b!176251))

(assert (= (and b!176251 res!79580) b!176252))

(assert (= (and b!176252 res!79582) b!176253))

(declare-fun m!177355 () Bool)

(assert (=> b!176251 m!177355))

(declare-fun m!177357 () Bool)

(assert (=> b!176251 m!177357))

(declare-fun m!177359 () Bool)

(assert (=> b!176251 m!177359))

(declare-fun m!177361 () Bool)

(assert (=> b!176251 m!177361))

(assert (=> b!176251 m!177359))

(assert (=> b!176251 m!177361))

(declare-fun m!177363 () Bool)

(assert (=> b!176251 m!177363))

(assert (=> b!176251 m!177355))

(declare-fun m!177365 () Bool)

(assert (=> b!176253 m!177365))

(declare-fun m!177367 () Bool)

(assert (=> b!176253 m!177367))

(assert (=> b!176253 m!173011))

(assert (=> b!176253 m!177367))

(assert (=> b!176253 m!173011))

(declare-fun m!177369 () Bool)

(assert (=> b!176253 m!177369))

(assert (=> b!176250 m!177355))

(assert (=> b!176250 m!177355))

(declare-fun m!177371 () Bool)

(assert (=> b!176250 m!177371))

(assert (=> b!176252 m!177355))

(assert (=> b!176252 m!177357))

(assert (=> b!176252 m!177359))

(assert (=> b!176252 m!177361))

(assert (=> b!176252 m!177359))

(assert (=> b!176252 m!177361))

(assert (=> b!176252 m!177363))

(assert (=> b!176252 m!177355))

(declare-fun m!177373 () Bool)

(assert (=> d!44995 m!177373))

(assert (=> d!44995 m!177355))

(assert (=> b!174111 d!44995))

(declare-fun d!44997 () Bool)

(declare-fun lt!57193 () BalanceConc!1760)

(assert (=> d!44997 (= (list!1073 lt!57193) (printListTailRec!60 thiss!17480 (dropList!92 (singletonSeq!79 call!7771) 0) (list!1073 (BalanceConc!1761 Empty!876))))))

(declare-fun e!106893 () BalanceConc!1760)

(assert (=> d!44997 (= lt!57193 e!106893)))

(declare-fun c!34860 () Bool)

(assert (=> d!44997 (= c!34860 (>= 0 (size!2432 (singletonSeq!79 call!7771))))))

(declare-fun e!106892 () Bool)

(assert (=> d!44997 e!106892))

(declare-fun res!79584 () Bool)

(assert (=> d!44997 (=> (not res!79584) (not e!106892))))

(assert (=> d!44997 (= res!79584 (>= 0 0))))

(assert (=> d!44997 (= (printTailRec!107 thiss!17480 (singletonSeq!79 call!7771) 0 (BalanceConc!1761 Empty!876)) lt!57193)))

(declare-fun b!176254 () Bool)

(assert (=> b!176254 (= e!106892 (<= 0 (size!2432 (singletonSeq!79 call!7771))))))

(declare-fun b!176255 () Bool)

(assert (=> b!176255 (= e!106893 (BalanceConc!1761 Empty!876))))

(declare-fun b!176256 () Bool)

(assert (=> b!176256 (= e!106893 (printTailRec!107 thiss!17480 (singletonSeq!79 call!7771) (+ 0 1) (++!682 (BalanceConc!1761 Empty!876) (charsOf!182 (apply!429 (singletonSeq!79 call!7771) 0)))))))

(declare-fun lt!57195 () List!2948)

(assert (=> b!176256 (= lt!57195 (list!1077 (singletonSeq!79 call!7771)))))

(declare-fun lt!57190 () Unit!2616)

(assert (=> b!176256 (= lt!57190 (lemmaDropApply!132 lt!57195 0))))

(assert (=> b!176256 (= (head!608 (drop!145 lt!57195 0)) (apply!430 lt!57195 0))))

(declare-fun lt!57194 () Unit!2616)

(assert (=> b!176256 (= lt!57194 lt!57190)))

(declare-fun lt!57192 () List!2948)

(assert (=> b!176256 (= lt!57192 (list!1077 (singletonSeq!79 call!7771)))))

(declare-fun lt!57189 () Unit!2616)

(assert (=> b!176256 (= lt!57189 (lemmaDropTail!124 lt!57192 0))))

(assert (=> b!176256 (= (tail!348 (drop!145 lt!57192 0)) (drop!145 lt!57192 (+ 0 1)))))

(declare-fun lt!57191 () Unit!2616)

(assert (=> b!176256 (= lt!57191 lt!57189)))

(assert (= (and d!44997 res!79584) b!176254))

(assert (= (and d!44997 c!34860) b!176255))

(assert (= (and d!44997 (not c!34860)) b!176256))

(declare-fun m!177375 () Bool)

(assert (=> d!44997 m!177375))

(assert (=> d!44997 m!173897))

(assert (=> d!44997 m!173703))

(declare-fun m!177377 () Bool)

(assert (=> d!44997 m!177377))

(assert (=> d!44997 m!177377))

(assert (=> d!44997 m!173897))

(declare-fun m!177379 () Bool)

(assert (=> d!44997 m!177379))

(assert (=> d!44997 m!173703))

(declare-fun m!177381 () Bool)

(assert (=> d!44997 m!177381))

(assert (=> b!176254 m!173703))

(assert (=> b!176254 m!177381))

(declare-fun m!177383 () Bool)

(assert (=> b!176256 m!177383))

(declare-fun m!177385 () Bool)

(assert (=> b!176256 m!177385))

(declare-fun m!177387 () Bool)

(assert (=> b!176256 m!177387))

(declare-fun m!177389 () Bool)

(assert (=> b!176256 m!177389))

(declare-fun m!177391 () Bool)

(assert (=> b!176256 m!177391))

(declare-fun m!177393 () Bool)

(assert (=> b!176256 m!177393))

(declare-fun m!177395 () Bool)

(assert (=> b!176256 m!177395))

(declare-fun m!177397 () Bool)

(assert (=> b!176256 m!177397))

(declare-fun m!177399 () Bool)

(assert (=> b!176256 m!177399))

(assert (=> b!176256 m!173703))

(assert (=> b!176256 m!177395))

(declare-fun m!177401 () Bool)

(assert (=> b!176256 m!177401))

(declare-fun m!177403 () Bool)

(assert (=> b!176256 m!177403))

(assert (=> b!176256 m!177393))

(assert (=> b!176256 m!173703))

(declare-fun m!177405 () Bool)

(assert (=> b!176256 m!177405))

(assert (=> b!176256 m!173703))

(assert (=> b!176256 m!177403))

(assert (=> b!176256 m!177383))

(assert (=> b!176256 m!177399))

(declare-fun m!177407 () Bool)

(assert (=> b!176256 m!177407))

(assert (=> b!174549 d!44997))

(declare-fun d!44999 () Bool)

(declare-fun e!106894 () Bool)

(assert (=> d!44999 e!106894))

(declare-fun res!79585 () Bool)

(assert (=> d!44999 (=> (not res!79585) (not e!106894))))

(declare-fun lt!57196 () BalanceConc!1762)

(assert (=> d!44999 (= res!79585 (= (list!1077 lt!57196) (Cons!2938 call!7771 Nil!2938)))))

(assert (=> d!44999 (= lt!57196 (singleton!41 call!7771))))

(assert (=> d!44999 (= (singletonSeq!79 call!7771) lt!57196)))

(declare-fun b!176257 () Bool)

(assert (=> b!176257 (= e!106894 (isBalanced!244 (c!34381 lt!57196)))))

(assert (= (and d!44999 res!79585) b!176257))

(declare-fun m!177409 () Bool)

(assert (=> d!44999 m!177409))

(declare-fun m!177411 () Bool)

(assert (=> d!44999 m!177411))

(declare-fun m!177413 () Bool)

(assert (=> b!176257 m!177413))

(assert (=> b!174549 d!44999))

(declare-fun d!45001 () Bool)

(assert (=> d!45001 (= (list!1073 lt!56132) (list!1076 (c!34379 lt!56132)))))

(declare-fun bs!17569 () Bool)

(assert (= bs!17569 d!45001))

(declare-fun m!177415 () Bool)

(assert (=> bs!17569 m!177415))

(assert (=> b!174549 d!45001))

(declare-fun b!176261 () Bool)

(declare-fun e!106895 () Unit!2616)

(declare-fun Unit!2658 () Unit!2616)

(assert (=> b!176261 (= e!106895 Unit!2658)))

(declare-fun b!176258 () Bool)

(declare-fun res!79587 () Bool)

(declare-fun e!106896 () Bool)

(assert (=> b!176258 (=> (not res!79587) (not e!106896))))

(declare-fun lt!57203 () Token!798)

(assert (=> b!176258 (= res!79587 (matchR!89 (regex!527 (get!814 (getRuleFromTag!25 thiss!17480 rules!1920 (tag!705 (rule!1038 lt!57203))))) (list!1073 (charsOf!182 lt!57203))))))

(declare-fun b!176260 () Bool)

(declare-fun Unit!2659 () Unit!2616)

(assert (=> b!176260 (= e!106895 Unit!2659)))

(declare-fun lt!57202 () List!2946)

(assert (=> b!176260 (= lt!57202 (++!680 (list!1073 call!7769) (list!1073 lt!56132)))))

(declare-fun lt!57209 () Unit!2616)

(assert (=> b!176260 (= lt!57209 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!25 thiss!17480 (rule!1038 lt!57203) rules!1920 lt!57202))))

(assert (=> b!176260 (isEmpty!1282 (maxPrefixOneRule!75 thiss!17480 (rule!1038 lt!57203) lt!57202))))

(declare-fun lt!57197 () Unit!2616)

(assert (=> b!176260 (= lt!57197 lt!57209)))

(declare-fun lt!57198 () List!2946)

(assert (=> b!176260 (= lt!57198 (list!1073 (charsOf!182 lt!57203)))))

(declare-fun lt!57211 () Unit!2616)

(assert (=> b!176260 (= lt!57211 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!25 thiss!17480 (rule!1038 lt!57203) lt!57198 (++!680 (list!1073 call!7769) (list!1073 lt!56132))))))

(assert (=> b!176260 (not (matchR!89 (regex!527 (rule!1038 lt!57203)) lt!57198))))

(declare-fun lt!57201 () Unit!2616)

(assert (=> b!176260 (= lt!57201 lt!57211)))

(assert (=> b!176260 false))

(declare-fun b!176259 () Bool)

(assert (=> b!176259 (= e!106896 (= (rule!1038 lt!57203) (get!814 (getRuleFromTag!25 thiss!17480 rules!1920 (tag!705 (rule!1038 lt!57203))))))))

(declare-fun d!45003 () Bool)

(assert (=> d!45003 (isDefined!182 (maxPrefix!143 thiss!17480 rules!1920 (++!680 (list!1073 call!7769) (list!1073 lt!56132))))))

(declare-fun lt!57204 () Unit!2616)

(assert (=> d!45003 (= lt!57204 e!106895)))

(declare-fun c!34861 () Bool)

(assert (=> d!45003 (= c!34861 (isEmpty!1282 (maxPrefix!143 thiss!17480 rules!1920 (++!680 (list!1073 call!7769) (list!1073 lt!56132)))))))

(declare-fun lt!57205 () Unit!2616)

(declare-fun lt!57199 () Unit!2616)

(assert (=> d!45003 (= lt!57205 lt!57199)))

(assert (=> d!45003 e!106896))

(declare-fun res!79586 () Bool)

(assert (=> d!45003 (=> (not res!79586) (not e!106896))))

(assert (=> d!45003 (= res!79586 (isDefined!183 (getRuleFromTag!25 thiss!17480 rules!1920 (tag!705 (rule!1038 lt!57203)))))))

(assert (=> d!45003 (= lt!57199 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!25 thiss!17480 rules!1920 (list!1073 call!7769) lt!57203))))

(declare-fun lt!57210 () Unit!2616)

(declare-fun lt!57213 () Unit!2616)

(assert (=> d!45003 (= lt!57210 lt!57213)))

(declare-fun lt!57206 () List!2946)

(assert (=> d!45003 (isPrefix!232 lt!57206 (++!680 (list!1073 call!7769) (list!1073 lt!56132)))))

(assert (=> d!45003 (= lt!57213 (lemmaPrefixStaysPrefixWhenAddingToSuffix!25 lt!57206 (list!1073 call!7769) (list!1073 lt!56132)))))

(assert (=> d!45003 (= lt!57206 (list!1073 (charsOf!182 lt!57203)))))

(declare-fun lt!57207 () Unit!2616)

(declare-fun lt!57208 () Unit!2616)

(assert (=> d!45003 (= lt!57207 lt!57208)))

(declare-fun lt!57200 () List!2946)

(declare-fun lt!57212 () List!2946)

(assert (=> d!45003 (isPrefix!232 lt!57200 (++!680 lt!57200 lt!57212))))

(assert (=> d!45003 (= lt!57208 (lemmaConcatTwoListThenFirstIsPrefix!129 lt!57200 lt!57212))))

(assert (=> d!45003 (= lt!57212 (_2!1648 (get!811 (maxPrefix!143 thiss!17480 rules!1920 (list!1073 call!7769)))))))

(assert (=> d!45003 (= lt!57200 (list!1073 (charsOf!182 lt!57203)))))

(assert (=> d!45003 (= lt!57203 (head!608 (list!1077 (_1!1647 (lex!213 thiss!17480 rules!1920 (seqFromList!432 (list!1073 call!7769)))))))))

(assert (=> d!45003 (not (isEmpty!1272 rules!1920))))

(assert (=> d!45003 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!40 thiss!17480 rules!1920 (list!1073 call!7769) (list!1073 lt!56132)) lt!57204)))

(assert (= (and d!45003 res!79586) b!176258))

(assert (= (and b!176258 res!79587) b!176259))

(assert (= (and d!45003 c!34861) b!176260))

(assert (= (and d!45003 (not c!34861)) b!176261))

(declare-fun m!177417 () Bool)

(assert (=> b!176258 m!177417))

(declare-fun m!177419 () Bool)

(assert (=> b!176258 m!177419))

(declare-fun m!177421 () Bool)

(assert (=> b!176258 m!177421))

(declare-fun m!177423 () Bool)

(assert (=> b!176258 m!177423))

(assert (=> b!176258 m!177419))

(assert (=> b!176258 m!177417))

(declare-fun m!177425 () Bool)

(assert (=> b!176258 m!177425))

(assert (=> b!176258 m!177423))

(declare-fun m!177427 () Bool)

(assert (=> b!176260 m!177427))

(assert (=> b!176260 m!173707))

(assert (=> b!176260 m!173705))

(declare-fun m!177429 () Bool)

(assert (=> b!176260 m!177429))

(assert (=> b!176260 m!177423))

(assert (=> b!176260 m!177419))

(declare-fun m!177431 () Bool)

(assert (=> b!176260 m!177431))

(assert (=> b!176260 m!177423))

(declare-fun m!177433 () Bool)

(assert (=> b!176260 m!177433))

(declare-fun m!177435 () Bool)

(assert (=> b!176260 m!177435))

(assert (=> b!176260 m!177433))

(assert (=> b!176260 m!177429))

(declare-fun m!177437 () Bool)

(assert (=> b!176260 m!177437))

(assert (=> b!176259 m!177417))

(assert (=> b!176259 m!177417))

(assert (=> b!176259 m!177425))

(assert (=> d!45003 m!177417))

(assert (=> d!45003 m!173707))

(declare-fun m!177439 () Bool)

(assert (=> d!45003 m!177439))

(declare-fun m!177441 () Bool)

(assert (=> d!45003 m!177441))

(declare-fun m!177443 () Bool)

(assert (=> d!45003 m!177443))

(assert (=> d!45003 m!173707))

(declare-fun m!177445 () Bool)

(assert (=> d!45003 m!177445))

(declare-fun m!177447 () Bool)

(assert (=> d!45003 m!177447))

(declare-fun m!177449 () Bool)

(assert (=> d!45003 m!177449))

(assert (=> d!45003 m!177429))

(declare-fun m!177451 () Bool)

(assert (=> d!45003 m!177451))

(assert (=> d!45003 m!177441))

(declare-fun m!177453 () Bool)

(assert (=> d!45003 m!177453))

(assert (=> d!45003 m!177445))

(declare-fun m!177455 () Bool)

(assert (=> d!45003 m!177455))

(declare-fun m!177457 () Bool)

(assert (=> d!45003 m!177457))

(declare-fun m!177459 () Bool)

(assert (=> d!45003 m!177459))

(assert (=> d!45003 m!177423))

(assert (=> d!45003 m!177439))

(declare-fun m!177461 () Bool)

(assert (=> d!45003 m!177461))

(assert (=> d!45003 m!177417))

(declare-fun m!177463 () Bool)

(assert (=> d!45003 m!177463))

(assert (=> d!45003 m!172843))

(assert (=> d!45003 m!173707))

(declare-fun m!177465 () Bool)

(assert (=> d!45003 m!177465))

(assert (=> d!45003 m!173707))

(assert (=> d!45003 m!173705))

(assert (=> d!45003 m!177429))

(assert (=> d!45003 m!177459))

(declare-fun m!177467 () Bool)

(assert (=> d!45003 m!177467))

(assert (=> d!45003 m!177423))

(assert (=> d!45003 m!177419))

(assert (=> d!45003 m!177429))

(assert (=> d!45003 m!177441))

(assert (=> d!45003 m!177447))

(assert (=> d!45003 m!173707))

(assert (=> d!45003 m!173705))

(declare-fun m!177469 () Bool)

(assert (=> d!45003 m!177469))

(assert (=> b!174549 d!45003))

(declare-fun d!45005 () Bool)

(declare-fun lt!57214 () BalanceConc!1760)

(assert (=> d!45005 (= (list!1073 lt!57214) (printList!97 thiss!17480 (list!1077 (singletonSeq!79 call!7771))))))

(assert (=> d!45005 (= lt!57214 (printTailRec!107 thiss!17480 (singletonSeq!79 call!7771) 0 (BalanceConc!1761 Empty!876)))))

(assert (=> d!45005 (= (print!144 thiss!17480 (singletonSeq!79 call!7771)) lt!57214)))

(declare-fun bs!17570 () Bool)

(assert (= bs!17570 d!45005))

(declare-fun m!177471 () Bool)

(assert (=> bs!17570 m!177471))

(assert (=> bs!17570 m!173703))

(assert (=> bs!17570 m!177405))

(assert (=> bs!17570 m!177405))

(declare-fun m!177473 () Bool)

(assert (=> bs!17570 m!177473))

(assert (=> bs!17570 m!173703))

(assert (=> bs!17570 m!173709))

(assert (=> b!174549 d!45005))

(declare-fun d!45007 () Bool)

(assert (=> d!45007 (= (list!1073 call!7769) (list!1076 (c!34379 call!7769)))))

(declare-fun bs!17571 () Bool)

(assert (= bs!17571 d!45007))

(declare-fun m!177475 () Bool)

(assert (=> bs!17571 m!177475))

(assert (=> b!174549 d!45007))

(declare-fun bs!17572 () Bool)

(declare-fun b!176263 () Bool)

(assert (= bs!17572 (and b!176263 d!44519)))

(declare-fun lambda!5102 () Int)

(assert (=> bs!17572 (= lambda!5102 lambda!5071)))

(declare-fun bs!17573 () Bool)

(assert (= bs!17573 (and b!176263 b!174118)))

(assert (=> bs!17573 (= lambda!5102 lambda!5024)))

(declare-fun bs!17574 () Bool)

(assert (= bs!17574 (and b!176263 d!44947)))

(assert (=> bs!17574 (not (= lambda!5102 lambda!5100))))

(declare-fun bs!17575 () Bool)

(assert (= bs!17575 (and b!176263 b!174010)))

(assert (=> bs!17575 (= lambda!5102 lambda!5012)))

(declare-fun bs!17576 () Bool)

(assert (= bs!17576 (and b!176263 b!173998)))

(assert (=> bs!17576 (not (= lambda!5102 lambda!5011))))

(declare-fun bs!17577 () Bool)

(assert (= bs!17577 (and b!176263 d!43945)))

(assert (=> bs!17577 (not (= lambda!5102 lambda!5023))))

(declare-fun bs!17578 () Bool)

(assert (= bs!17578 (and b!176263 b!174525)))

(assert (=> bs!17578 (= lambda!5102 lambda!5050)))

(declare-fun bs!17579 () Bool)

(assert (= bs!17579 (and b!176263 d!44101)))

(assert (=> bs!17579 (not (= lambda!5102 lambda!5051))))

(declare-fun bs!17580 () Bool)

(assert (= bs!17580 (and b!176263 d!44043)))

(assert (=> bs!17580 (= lambda!5102 lambda!5044)))

(declare-fun bs!17581 () Bool)

(assert (= bs!17581 (and b!176263 d!44545)))

(assert (=> bs!17581 (= lambda!5102 lambda!5075)))

(declare-fun bs!17582 () Bool)

(assert (= bs!17582 (and b!176263 b!175694)))

(assert (=> bs!17582 (= lambda!5102 lambda!5088)))

(declare-fun bs!17583 () Bool)

(assert (= bs!17583 (and b!176263 b!176162)))

(assert (=> bs!17583 (= lambda!5102 lambda!5101)))

(declare-fun bs!17584 () Bool)

(assert (= bs!17584 (and b!176263 d!43987)))

(assert (=> bs!17584 (= lambda!5102 lambda!5033)))

(declare-fun bs!17585 () Bool)

(assert (= bs!17585 (and b!176263 b!174198)))

(assert (=> bs!17585 (= lambda!5102 lambda!5030)))

(declare-fun bs!17586 () Bool)

(assert (= bs!17586 (and b!176263 b!174547)))

(assert (=> bs!17586 (= lambda!5102 lambda!5052)))

(declare-fun b!176272 () Bool)

(declare-fun e!106903 () Bool)

(assert (=> b!176272 (= e!106903 true)))

(declare-fun b!176271 () Bool)

(declare-fun e!106902 () Bool)

(assert (=> b!176271 (= e!106902 e!106903)))

(declare-fun b!176270 () Bool)

(declare-fun e!106901 () Bool)

(assert (=> b!176270 (= e!106901 e!106902)))

(assert (=> b!176263 e!106901))

(assert (= b!176271 b!176272))

(assert (= b!176270 b!176271))

(assert (= (and b!176263 ((_ is Cons!2937) rules!1920)) b!176270))

(assert (=> b!176272 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5102))))

(assert (=> b!176272 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5102))))

(assert (=> b!176263 true))

(declare-fun d!45009 () Bool)

(declare-fun c!34865 () Bool)

(assert (=> d!45009 (= c!34865 ((_ is Cons!2938) (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0)))))

(declare-fun e!106900 () List!2946)

(assert (=> d!45009 (= (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0) separatorToken!170) e!106900)))

(declare-fun b!176262 () Bool)

(declare-fun e!106899 () List!2946)

(assert (=> b!176262 (= e!106899 Nil!2936)))

(assert (=> b!176262 (= (print!144 thiss!17480 (singletonSeq!79 (h!8335 (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0)))) (printTailRec!107 thiss!17480 (singletonSeq!79 (h!8335 (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0))) 0 (BalanceConc!1761 Empty!876)))))

(declare-fun lt!57220 () Unit!2616)

(declare-fun Unit!2660 () Unit!2616)

(assert (=> b!176262 (= lt!57220 Unit!2660)))

(declare-fun lt!57219 () List!2946)

(declare-fun call!7887 () List!2946)

(declare-fun lt!57218 () Unit!2616)

(assert (=> b!176262 (= lt!57218 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!40 thiss!17480 rules!1920 call!7887 lt!57219))))

(assert (=> b!176262 false))

(declare-fun lt!57217 () Unit!2616)

(declare-fun Unit!2661 () Unit!2616)

(assert (=> b!176262 (= lt!57217 Unit!2661)))

(declare-fun e!106897 () List!2946)

(assert (=> b!176263 (= e!106900 e!106897)))

(declare-fun lt!57215 () Unit!2616)

(assert (=> b!176263 (= lt!57215 (forallContained!94 (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0) lambda!5102 (h!8335 (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0))))))

(assert (=> b!176263 (= lt!57219 (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 (t!27586 (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0)) separatorToken!170))))

(declare-fun lt!57216 () Option!331)

(assert (=> b!176263 (= lt!57216 (maxPrefix!143 thiss!17480 rules!1920 (++!680 (list!1073 (charsOf!182 (h!8335 (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0)))) lt!57219)))))

(declare-fun c!34864 () Bool)

(assert (=> b!176263 (= c!34864 (and ((_ is Some!330) lt!57216) (= (_1!1648 (v!13783 lt!57216)) (h!8335 (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0)))))))

(declare-fun b!176264 () Bool)

(assert (=> b!176264 (= e!106900 Nil!2936)))

(declare-fun b!176265 () Bool)

(declare-fun e!106898 () BalanceConc!1760)

(assert (=> b!176265 (= e!106898 (charsOf!182 separatorToken!170))))

(declare-fun b!176266 () Bool)

(declare-fun call!7886 () List!2946)

(assert (=> b!176266 (= e!106897 call!7886)))

(declare-fun bm!7878 () Bool)

(assert (=> bm!7878 (= call!7887 (list!1073 e!106898))))

(declare-fun c!34863 () Bool)

(declare-fun c!34862 () Bool)

(assert (=> bm!7878 (= c!34863 c!34862)))

(declare-fun call!7885 () BalanceConc!1760)

(declare-fun call!7883 () List!2946)

(declare-fun call!7884 () BalanceConc!1760)

(declare-fun bm!7879 () Bool)

(assert (=> bm!7879 (= call!7883 (list!1073 (ite c!34864 call!7885 call!7884)))))

(declare-fun bm!7880 () Bool)

(assert (=> bm!7880 (= call!7886 (++!680 call!7883 (ite c!34864 lt!57219 call!7887)))))

(declare-fun b!176267 () Bool)

(assert (=> b!176267 (= e!106899 (++!680 call!7886 lt!57219))))

(declare-fun b!176268 () Bool)

(assert (=> b!176268 (= e!106898 call!7884)))

(declare-fun bm!7881 () Bool)

(assert (=> bm!7881 (= call!7884 call!7885)))

(declare-fun bm!7882 () Bool)

(assert (=> bm!7882 (= call!7885 (charsOf!182 (h!8335 (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0))))))

(declare-fun b!176269 () Bool)

(assert (=> b!176269 (= c!34862 (and ((_ is Some!330) lt!57216) (not (= (_1!1648 (v!13783 lt!57216)) (h!8335 (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0))))))))

(assert (=> b!176269 (= e!106897 e!106899)))

(assert (= (and d!45009 c!34865) b!176263))

(assert (= (and d!45009 (not c!34865)) b!176264))

(assert (= (and b!176263 c!34864) b!176266))

(assert (= (and b!176263 (not c!34864)) b!176269))

(assert (= (and b!176269 c!34862) b!176267))

(assert (= (and b!176269 (not c!34862)) b!176262))

(assert (= (or b!176267 b!176262) bm!7881))

(assert (= (or b!176267 b!176262) bm!7878))

(assert (= (and bm!7878 c!34863) b!176265))

(assert (= (and bm!7878 (not c!34863)) b!176268))

(assert (= (or b!176266 bm!7881) bm!7882))

(assert (= (or b!176266 b!176267) bm!7879))

(assert (= (or b!176266 b!176267) bm!7880))

(declare-fun m!177477 () Bool)

(assert (=> bm!7879 m!177477))

(declare-fun m!177479 () Bool)

(assert (=> bm!7880 m!177479))

(declare-fun m!177481 () Bool)

(assert (=> bm!7882 m!177481))

(declare-fun m!177483 () Bool)

(assert (=> bm!7878 m!177483))

(declare-fun m!177485 () Bool)

(assert (=> b!176263 m!177485))

(declare-fun m!177487 () Bool)

(assert (=> b!176263 m!177487))

(declare-fun m!177489 () Bool)

(assert (=> b!176263 m!177489))

(assert (=> b!176263 m!177489))

(declare-fun m!177491 () Bool)

(assert (=> b!176263 m!177491))

(assert (=> b!176263 m!173691))

(declare-fun m!177493 () Bool)

(assert (=> b!176263 m!177493))

(assert (=> b!176263 m!177481))

(assert (=> b!176263 m!177487))

(assert (=> b!176263 m!177481))

(declare-fun m!177495 () Bool)

(assert (=> b!176267 m!177495))

(assert (=> b!176265 m!172859))

(declare-fun m!177497 () Bool)

(assert (=> b!176262 m!177497))

(assert (=> b!176262 m!177497))

(declare-fun m!177499 () Bool)

(assert (=> b!176262 m!177499))

(assert (=> b!176262 m!177497))

(declare-fun m!177501 () Bool)

(assert (=> b!176262 m!177501))

(declare-fun m!177503 () Bool)

(assert (=> b!176262 m!177503))

(assert (=> d!44101 d!45009))

(declare-fun d!45011 () Bool)

(assert (=> d!45011 (forall!583 (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0) lambda!5051)))

(declare-fun lt!57223 () Unit!2616)

(declare-fun choose!1858 (List!2948 List!2948 Int) Unit!2616)

(assert (=> d!45011 (= lt!57223 (choose!1858 (list!1077 (seqFromList!431 (t!27586 tokens!465))) (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0) lambda!5051))))

(assert (=> d!45011 (forall!583 (list!1077 (seqFromList!431 (t!27586 tokens!465))) lambda!5051)))

(assert (=> d!45011 (= (lemmaContentSubsetPreservesForall!36 (list!1077 (seqFromList!431 (t!27586 tokens!465))) (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0) lambda!5051) lt!57223)))

(declare-fun bs!17587 () Bool)

(assert (= bs!17587 d!45011))

(assert (=> bs!17587 m!173691))

(declare-fun m!177505 () Bool)

(assert (=> bs!17587 m!177505))

(assert (=> bs!17587 m!173699))

(assert (=> bs!17587 m!173691))

(declare-fun m!177507 () Bool)

(assert (=> bs!17587 m!177507))

(assert (=> bs!17587 m!173699))

(declare-fun m!177509 () Bool)

(assert (=> bs!17587 m!177509))

(assert (=> d!44101 d!45011))

(assert (=> d!44101 d!44989))

(assert (=> d!44101 d!44959))

(declare-fun d!45013 () Bool)

(assert (=> d!45013 (= (list!1073 lt!56145) (list!1076 (c!34379 lt!56145)))))

(declare-fun bs!17588 () Bool)

(assert (= bs!17588 d!45013))

(declare-fun m!177511 () Bool)

(assert (=> bs!17588 m!177511))

(assert (=> d!44101 d!45013))

(declare-fun d!45015 () Bool)

(assert (=> d!45015 (= (dropList!92 (seqFromList!431 (t!27586 tokens!465)) 0) (drop!145 (list!1080 (c!34381 (seqFromList!431 (t!27586 tokens!465)))) 0))))

(declare-fun bs!17589 () Bool)

(assert (= bs!17589 d!45015))

(assert (=> bs!17589 m!177265))

(assert (=> bs!17589 m!177265))

(declare-fun m!177513 () Bool)

(assert (=> bs!17589 m!177513))

(assert (=> d!44101 d!45015))

(declare-fun d!45017 () Bool)

(declare-fun e!106904 () Bool)

(assert (=> d!45017 e!106904))

(declare-fun res!79588 () Bool)

(assert (=> d!45017 (=> (not res!79588) (not e!106904))))

(declare-fun lt!57224 () BalanceConc!1760)

(assert (=> d!45017 (= res!79588 (= (list!1073 lt!57224) lt!55818))))

(assert (=> d!45017 (= lt!57224 (BalanceConc!1761 (fromList!114 lt!55818)))))

(assert (=> d!45017 (= (fromListB!171 lt!55818) lt!57224)))

(declare-fun b!176273 () Bool)

(assert (=> b!176273 (= e!106904 (isBalanced!246 (fromList!114 lt!55818)))))

(assert (= (and d!45017 res!79588) b!176273))

(declare-fun m!177515 () Bool)

(assert (=> d!45017 m!177515))

(declare-fun m!177517 () Bool)

(assert (=> d!45017 m!177517))

(assert (=> b!176273 m!177517))

(assert (=> b!176273 m!177517))

(declare-fun m!177519 () Bool)

(assert (=> b!176273 m!177519))

(assert (=> d!44125 d!45017))

(declare-fun d!45019 () Bool)

(declare-fun c!34866 () Bool)

(assert (=> d!45019 (= c!34866 ((_ is Nil!2936) lt!56154))))

(declare-fun e!106905 () (InoxSet C!2424))

(assert (=> d!45019 (= (content!407 lt!56154) e!106905)))

(declare-fun b!176274 () Bool)

(assert (=> b!176274 (= e!106905 ((as const (Array C!2424 Bool)) false))))

(declare-fun b!176275 () Bool)

(assert (=> b!176275 (= e!106905 ((_ map or) (store ((as const (Array C!2424 Bool)) false) (h!8333 lt!56154) true) (content!407 (t!27584 lt!56154))))))

(assert (= (and d!45019 c!34866) b!176274))

(assert (= (and d!45019 (not c!34866)) b!176275))

(declare-fun m!177521 () Bool)

(assert (=> b!176275 m!177521))

(declare-fun m!177523 () Bool)

(assert (=> b!176275 m!177523))

(assert (=> d!44113 d!45019))

(assert (=> d!44113 d!44979))

(declare-fun d!45021 () Bool)

(declare-fun c!34867 () Bool)

(assert (=> d!45021 (= c!34867 ((_ is Nil!2936) lt!55815))))

(declare-fun e!106906 () (InoxSet C!2424))

(assert (=> d!45021 (= (content!407 lt!55815) e!106906)))

(declare-fun b!176276 () Bool)

(assert (=> b!176276 (= e!106906 ((as const (Array C!2424 Bool)) false))))

(declare-fun b!176277 () Bool)

(assert (=> b!176277 (= e!106906 ((_ map or) (store ((as const (Array C!2424 Bool)) false) (h!8333 lt!55815) true) (content!407 (t!27584 lt!55815))))))

(assert (= (and d!45021 c!34867) b!176276))

(assert (= (and d!45021 (not c!34867)) b!176277))

(declare-fun m!177525 () Bool)

(assert (=> b!176277 m!177525))

(declare-fun m!177527 () Bool)

(assert (=> b!176277 m!177527))

(assert (=> d!44113 d!45021))

(declare-fun bs!17590 () Bool)

(declare-fun d!45023 () Bool)

(assert (= bs!17590 (and d!45023 d!44543)))

(declare-fun lambda!5103 () Int)

(assert (=> bs!17590 (= (= (toValue!1194 (transformation!527 (rule!1038 separatorToken!170))) (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (= lambda!5103 lambda!5074))))

(assert (=> d!45023 true))

(assert (=> d!45023 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (rule!1038 separatorToken!170)))) (dynLambda!1139 order!1639 lambda!5103))))

(assert (=> d!45023 (= (equivClasses!166 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toValue!1194 (transformation!527 (rule!1038 separatorToken!170)))) (Forall2!113 lambda!5103))))

(declare-fun bs!17591 () Bool)

(assert (= bs!17591 d!45023))

(declare-fun m!177529 () Bool)

(assert (=> bs!17591 m!177529))

(assert (=> b!174255 d!45023))

(declare-fun d!45025 () Bool)

(assert (=> d!45025 (= (list!1073 lt!56149) (list!1076 (c!34379 lt!56149)))))

(declare-fun bs!17592 () Bool)

(assert (= bs!17592 d!45025))

(declare-fun m!177531 () Bool)

(assert (=> bs!17592 m!177531))

(assert (=> d!44103 d!45025))

(declare-fun bs!17593 () Bool)

(declare-fun d!45027 () Bool)

(assert (= bs!17593 (and d!45027 d!44337)))

(declare-fun lambda!5104 () Int)

(assert (=> bs!17593 (= (and (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465))))) (= (toValue!1194 (transformation!527 (h!8334 rules!1920))) (toValue!1194 (transformation!527 (rule!1038 (h!8335 tokens!465)))))) (= lambda!5104 lambda!5059))))

(declare-fun bs!17594 () Bool)

(assert (= bs!17594 (and d!45027 b!175593)))

(assert (=> bs!17594 (= lambda!5104 lambda!5084)))

(assert (=> d!45027 true))

(assert (=> d!45027 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1136 order!1635 lambda!5104))))

(assert (=> d!45027 true))

(assert (=> d!45027 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1136 order!1635 lambda!5104))))

(assert (=> d!45027 (= (semiInverseModEq!183 (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (Forall!137 lambda!5104))))

(declare-fun bs!17595 () Bool)

(assert (= bs!17595 d!45027))

(declare-fun m!177533 () Bool)

(assert (=> bs!17595 m!177533))

(assert (=> d!44117 d!45027))

(declare-fun d!45029 () Bool)

(declare-fun lt!57225 () Int)

(assert (=> d!45029 (>= lt!57225 0)))

(declare-fun e!106907 () Int)

(assert (=> d!45029 (= lt!57225 e!106907)))

(declare-fun c!34868 () Bool)

(assert (=> d!45029 (= c!34868 ((_ is Nil!2936) lt!56121))))

(assert (=> d!45029 (= (size!2431 lt!56121) lt!57225)))

(declare-fun b!176278 () Bool)

(assert (=> b!176278 (= e!106907 0)))

(declare-fun b!176279 () Bool)

(assert (=> b!176279 (= e!106907 (+ 1 (size!2431 (t!27584 lt!56121))))))

(assert (= (and d!45029 c!34868) b!176278))

(assert (= (and d!45029 (not c!34868)) b!176279))

(declare-fun m!177535 () Bool)

(assert (=> b!176279 m!177535))

(assert (=> b!174514 d!45029))

(assert (=> b!174514 d!44593))

(assert (=> b!174514 d!44329))

(declare-fun d!45031 () Bool)

(declare-fun lt!57226 () Bool)

(assert (=> d!45031 (= lt!57226 (isEmpty!1271 (list!1073 (_2!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 separatorToken!170)))))))))

(assert (=> d!45031 (= lt!57226 (isEmpty!1284 (c!34379 (_2!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 separatorToken!170)))))))))

(assert (=> d!45031 (= (isEmpty!1281 (_2!1647 (lex!213 thiss!17480 rules!1920 (print!144 thiss!17480 (singletonSeq!79 separatorToken!170))))) lt!57226)))

(declare-fun bs!17596 () Bool)

(assert (= bs!17596 d!45031))

(declare-fun m!177537 () Bool)

(assert (=> bs!17596 m!177537))

(assert (=> bs!17596 m!177537))

(declare-fun m!177539 () Bool)

(assert (=> bs!17596 m!177539))

(declare-fun m!177541 () Bool)

(assert (=> bs!17596 m!177541))

(assert (=> b!174704 d!45031))

(assert (=> b!174704 d!44503))

(assert (=> b!174704 d!44507))

(assert (=> b!174704 d!44497))

(declare-fun d!45033 () Bool)

(assert (=> d!45033 (= (inv!3764 (tag!705 (rule!1038 (h!8335 (t!27586 tokens!465))))) (= (mod (str.len (value!19334 (tag!705 (rule!1038 (h!8335 (t!27586 tokens!465)))))) 2) 0))))

(assert (=> b!174772 d!45033))

(declare-fun d!45035 () Bool)

(declare-fun res!79589 () Bool)

(declare-fun e!106908 () Bool)

(assert (=> d!45035 (=> (not res!79589) (not e!106908))))

(assert (=> d!45035 (= res!79589 (semiInverseModEq!183 (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toValue!1194 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465)))))))))

(assert (=> d!45035 (= (inv!3768 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) e!106908)))

(declare-fun b!176280 () Bool)

(assert (=> b!176280 (= e!106908 (equivClasses!166 (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toValue!1194 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465)))))))))

(assert (= (and d!45035 res!79589) b!176280))

(declare-fun m!177543 () Bool)

(assert (=> d!45035 m!177543))

(declare-fun m!177545 () Bool)

(assert (=> b!176280 m!177545))

(assert (=> b!174772 d!45035))

(declare-fun d!45037 () Bool)

(assert (=> d!45037 (dynLambda!1135 lambda!5012 (h!8335 tokens!465))))

(assert (=> d!45037 true))

(declare-fun _$7!268 () Unit!2616)

(assert (=> d!45037 (= (choose!1845 tokens!465 lambda!5012 (h!8335 tokens!465)) _$7!268)))

(declare-fun b_lambda!4167 () Bool)

(assert (=> (not b_lambda!4167) (not d!45037)))

(declare-fun bs!17597 () Bool)

(assert (= bs!17597 d!45037))

(assert (=> bs!17597 m!173191))

(assert (=> d!43973 d!45037))

(declare-fun d!45039 () Bool)

(declare-fun res!79590 () Bool)

(declare-fun e!106909 () Bool)

(assert (=> d!45039 (=> res!79590 e!106909)))

(assert (=> d!45039 (= res!79590 ((_ is Nil!2938) tokens!465))))

(assert (=> d!45039 (= (forall!583 tokens!465 lambda!5012) e!106909)))

(declare-fun b!176281 () Bool)

(declare-fun e!106910 () Bool)

(assert (=> b!176281 (= e!106909 e!106910)))

(declare-fun res!79591 () Bool)

(assert (=> b!176281 (=> (not res!79591) (not e!106910))))

(assert (=> b!176281 (= res!79591 (dynLambda!1135 lambda!5012 (h!8335 tokens!465)))))

(declare-fun b!176282 () Bool)

(assert (=> b!176282 (= e!106910 (forall!583 (t!27586 tokens!465) lambda!5012))))

(assert (= (and d!45039 (not res!79590)) b!176281))

(assert (= (and b!176281 res!79591) b!176282))

(declare-fun b_lambda!4169 () Bool)

(assert (=> (not b_lambda!4169) (not b!176281)))

(assert (=> b!176281 m!173191))

(declare-fun m!177547 () Bool)

(assert (=> b!176282 m!177547))

(assert (=> d!43973 d!45039))

(declare-fun d!45041 () Bool)

(assert (=> d!45041 (= (list!1073 lt!56195) (list!1076 (c!34379 lt!56195)))))

(declare-fun bs!17598 () Bool)

(assert (= bs!17598 d!45041))

(declare-fun m!177549 () Bool)

(assert (=> bs!17598 m!177549))

(assert (=> d!44151 d!45041))

(declare-fun d!45043 () Bool)

(declare-fun c!34869 () Bool)

(assert (=> d!45043 (= c!34869 ((_ is Cons!2938) (list!1077 lt!55819)))))

(declare-fun e!106911 () List!2946)

(assert (=> d!45043 (= (printList!97 thiss!17480 (list!1077 lt!55819)) e!106911)))

(declare-fun b!176283 () Bool)

(assert (=> b!176283 (= e!106911 (++!680 (list!1073 (charsOf!182 (h!8335 (list!1077 lt!55819)))) (printList!97 thiss!17480 (t!27586 (list!1077 lt!55819)))))))

(declare-fun b!176284 () Bool)

(assert (=> b!176284 (= e!106911 Nil!2936)))

(assert (= (and d!45043 c!34869) b!176283))

(assert (= (and d!45043 (not c!34869)) b!176284))

(declare-fun m!177551 () Bool)

(assert (=> b!176283 m!177551))

(assert (=> b!176283 m!177551))

(declare-fun m!177553 () Bool)

(assert (=> b!176283 m!177553))

(declare-fun m!177555 () Bool)

(assert (=> b!176283 m!177555))

(assert (=> b!176283 m!177553))

(assert (=> b!176283 m!177555))

(declare-fun m!177557 () Bool)

(assert (=> b!176283 m!177557))

(assert (=> d!44151 d!45043))

(declare-fun d!45045 () Bool)

(assert (=> d!45045 (= (list!1077 lt!55819) (list!1080 (c!34381 lt!55819)))))

(declare-fun bs!17599 () Bool)

(assert (= bs!17599 d!45045))

(assert (=> bs!17599 m!174735))

(assert (=> d!44151 d!45045))

(assert (=> d!44151 d!44149))

(assert (=> b!174234 d!44583))

(assert (=> b!174234 d!44585))

(assert (=> b!174234 d!44569))

(assert (=> b!174234 d!44589))

(declare-fun b!176285 () Bool)

(declare-fun e!106915 () Bool)

(declare-fun lt!57227 () Bool)

(assert (=> b!176285 (= e!106915 (not lt!57227))))

(declare-fun d!45047 () Bool)

(declare-fun e!106914 () Bool)

(assert (=> d!45047 e!106914))

(declare-fun c!34870 () Bool)

(assert (=> d!45047 (= c!34870 ((_ is EmptyExpr!751) (derivativeStep!75 (regex!527 (rule!1038 (h!8335 tokens!465))) (head!609 lt!55823))))))

(declare-fun e!106916 () Bool)

(assert (=> d!45047 (= lt!57227 e!106916)))

(declare-fun c!34872 () Bool)

(assert (=> d!45047 (= c!34872 (isEmpty!1271 (tail!349 lt!55823)))))

(assert (=> d!45047 (validRegex!182 (derivativeStep!75 (regex!527 (rule!1038 (h!8335 tokens!465))) (head!609 lt!55823)))))

(assert (=> d!45047 (= (matchR!89 (derivativeStep!75 (regex!527 (rule!1038 (h!8335 tokens!465))) (head!609 lt!55823)) (tail!349 lt!55823)) lt!57227)))

(declare-fun b!176286 () Bool)

(declare-fun res!79593 () Bool)

(declare-fun e!106917 () Bool)

(assert (=> b!176286 (=> res!79593 e!106917)))

(assert (=> b!176286 (= res!79593 (not ((_ is ElementMatch!751) (derivativeStep!75 (regex!527 (rule!1038 (h!8335 tokens!465))) (head!609 lt!55823)))))))

(assert (=> b!176286 (= e!106915 e!106917)))

(declare-fun b!176287 () Bool)

(declare-fun call!7888 () Bool)

(assert (=> b!176287 (= e!106914 (= lt!57227 call!7888))))

(declare-fun b!176288 () Bool)

(assert (=> b!176288 (= e!106916 (matchR!89 (derivativeStep!75 (derivativeStep!75 (regex!527 (rule!1038 (h!8335 tokens!465))) (head!609 lt!55823)) (head!609 (tail!349 lt!55823))) (tail!349 (tail!349 lt!55823))))))

(declare-fun b!176289 () Bool)

(declare-fun e!106912 () Bool)

(assert (=> b!176289 (= e!106917 e!106912)))

(declare-fun res!79595 () Bool)

(assert (=> b!176289 (=> (not res!79595) (not e!106912))))

(assert (=> b!176289 (= res!79595 (not lt!57227))))

(declare-fun b!176290 () Bool)

(assert (=> b!176290 (= e!106914 e!106915)))

(declare-fun c!34871 () Bool)

(assert (=> b!176290 (= c!34871 ((_ is EmptyLang!751) (derivativeStep!75 (regex!527 (rule!1038 (h!8335 tokens!465))) (head!609 lt!55823))))))

(declare-fun b!176291 () Bool)

(declare-fun res!79594 () Bool)

(declare-fun e!106913 () Bool)

(assert (=> b!176291 (=> (not res!79594) (not e!106913))))

(assert (=> b!176291 (= res!79594 (isEmpty!1271 (tail!349 (tail!349 lt!55823))))))

(declare-fun b!176292 () Bool)

(declare-fun res!79592 () Bool)

(assert (=> b!176292 (=> (not res!79592) (not e!106913))))

(assert (=> b!176292 (= res!79592 (not call!7888))))

(declare-fun b!176293 () Bool)

(declare-fun e!106918 () Bool)

(assert (=> b!176293 (= e!106918 (not (= (head!609 (tail!349 lt!55823)) (c!34380 (derivativeStep!75 (regex!527 (rule!1038 (h!8335 tokens!465))) (head!609 lt!55823))))))))

(declare-fun b!176294 () Bool)

(assert (=> b!176294 (= e!106916 (nullable!109 (derivativeStep!75 (regex!527 (rule!1038 (h!8335 tokens!465))) (head!609 lt!55823))))))

(declare-fun b!176295 () Bool)

(assert (=> b!176295 (= e!106912 e!106918)))

(declare-fun res!79599 () Bool)

(assert (=> b!176295 (=> res!79599 e!106918)))

(assert (=> b!176295 (= res!79599 call!7888)))

(declare-fun bm!7883 () Bool)

(assert (=> bm!7883 (= call!7888 (isEmpty!1271 (tail!349 lt!55823)))))

(declare-fun b!176296 () Bool)

(assert (=> b!176296 (= e!106913 (= (head!609 (tail!349 lt!55823)) (c!34380 (derivativeStep!75 (regex!527 (rule!1038 (h!8335 tokens!465))) (head!609 lt!55823)))))))

(declare-fun b!176297 () Bool)

(declare-fun res!79596 () Bool)

(assert (=> b!176297 (=> res!79596 e!106918)))

(assert (=> b!176297 (= res!79596 (not (isEmpty!1271 (tail!349 (tail!349 lt!55823)))))))

(declare-fun b!176298 () Bool)

(declare-fun res!79598 () Bool)

(assert (=> b!176298 (=> res!79598 e!106917)))

(assert (=> b!176298 (= res!79598 e!106913)))

(declare-fun res!79597 () Bool)

(assert (=> b!176298 (=> (not res!79597) (not e!106913))))

(assert (=> b!176298 (= res!79597 lt!57227)))

(assert (= (and d!45047 c!34872) b!176294))

(assert (= (and d!45047 (not c!34872)) b!176288))

(assert (= (and d!45047 c!34870) b!176287))

(assert (= (and d!45047 (not c!34870)) b!176290))

(assert (= (and b!176290 c!34871) b!176285))

(assert (= (and b!176290 (not c!34871)) b!176286))

(assert (= (and b!176286 (not res!79593)) b!176298))

(assert (= (and b!176298 res!79597) b!176292))

(assert (= (and b!176292 res!79592) b!176291))

(assert (= (and b!176291 res!79594) b!176296))

(assert (= (and b!176298 (not res!79598)) b!176289))

(assert (= (and b!176289 res!79595) b!176295))

(assert (= (and b!176295 (not res!79599)) b!176297))

(assert (= (and b!176297 (not res!79596)) b!176293))

(assert (= (or b!176287 b!176292 b!176295) bm!7883))

(assert (=> b!176294 m!173443))

(declare-fun m!177559 () Bool)

(assert (=> b!176294 m!177559))

(assert (=> b!176297 m!173437))

(declare-fun m!177561 () Bool)

(assert (=> b!176297 m!177561))

(assert (=> b!176297 m!177561))

(declare-fun m!177563 () Bool)

(assert (=> b!176297 m!177563))

(assert (=> b!176296 m!173437))

(declare-fun m!177565 () Bool)

(assert (=> b!176296 m!177565))

(assert (=> b!176291 m!173437))

(assert (=> b!176291 m!177561))

(assert (=> b!176291 m!177561))

(assert (=> b!176291 m!177563))

(assert (=> b!176288 m!173437))

(assert (=> b!176288 m!177565))

(assert (=> b!176288 m!173443))

(assert (=> b!176288 m!177565))

(declare-fun m!177567 () Bool)

(assert (=> b!176288 m!177567))

(assert (=> b!176288 m!173437))

(assert (=> b!176288 m!177561))

(assert (=> b!176288 m!177567))

(assert (=> b!176288 m!177561))

(declare-fun m!177569 () Bool)

(assert (=> b!176288 m!177569))

(assert (=> b!176293 m!173437))

(assert (=> b!176293 m!177565))

(assert (=> bm!7883 m!173437))

(assert (=> bm!7883 m!173439))

(assert (=> d!45047 m!173437))

(assert (=> d!45047 m!173439))

(assert (=> d!45047 m!173443))

(declare-fun m!177571 () Bool)

(assert (=> d!45047 m!177571))

(assert (=> b!174429 d!45047))

(declare-fun c!34886 () Bool)

(declare-fun bm!7892 () Bool)

(declare-fun c!34884 () Bool)

(declare-fun call!7898 () Regex!751)

(assert (=> bm!7892 (= call!7898 (derivativeStep!75 (ite c!34886 (regOne!2015 (regex!527 (rule!1038 (h!8335 tokens!465)))) (ite c!34884 (reg!1080 (regex!527 (rule!1038 (h!8335 tokens!465)))) (regOne!2014 (regex!527 (rule!1038 (h!8335 tokens!465)))))) (head!609 lt!55823)))))

(declare-fun bm!7893 () Bool)

(declare-fun call!7900 () Regex!751)

(declare-fun call!7897 () Regex!751)

(assert (=> bm!7893 (= call!7900 call!7897)))

(declare-fun b!176319 () Bool)

(declare-fun e!106930 () Regex!751)

(assert (=> b!176319 (= e!106930 EmptyLang!751)))

(declare-fun b!176320 () Bool)

(assert (=> b!176320 (= c!34886 ((_ is Union!751) (regex!527 (rule!1038 (h!8335 tokens!465)))))))

(declare-fun e!106931 () Regex!751)

(declare-fun e!106932 () Regex!751)

(assert (=> b!176320 (= e!106931 e!106932)))

(declare-fun b!176321 () Bool)

(declare-fun e!106929 () Regex!751)

(assert (=> b!176321 (= e!106929 (Union!751 (Concat!1301 call!7900 (regTwo!2014 (regex!527 (rule!1038 (h!8335 tokens!465))))) EmptyLang!751))))

(declare-fun b!176322 () Bool)

(assert (=> b!176322 (= e!106930 e!106931)))

(declare-fun c!34887 () Bool)

(assert (=> b!176322 (= c!34887 ((_ is ElementMatch!751) (regex!527 (rule!1038 (h!8335 tokens!465)))))))

(declare-fun b!176323 () Bool)

(declare-fun call!7899 () Regex!751)

(assert (=> b!176323 (= e!106932 (Union!751 call!7898 call!7899))))

(declare-fun b!176324 () Bool)

(declare-fun e!106933 () Regex!751)

(assert (=> b!176324 (= e!106932 e!106933)))

(assert (=> b!176324 (= c!34884 ((_ is Star!751) (regex!527 (rule!1038 (h!8335 tokens!465)))))))

(declare-fun d!45049 () Bool)

(declare-fun lt!57230 () Regex!751)

(assert (=> d!45049 (validRegex!182 lt!57230)))

(assert (=> d!45049 (= lt!57230 e!106930)))

(declare-fun c!34885 () Bool)

(assert (=> d!45049 (= c!34885 (or ((_ is EmptyExpr!751) (regex!527 (rule!1038 (h!8335 tokens!465)))) ((_ is EmptyLang!751) (regex!527 (rule!1038 (h!8335 tokens!465))))))))

(assert (=> d!45049 (validRegex!182 (regex!527 (rule!1038 (h!8335 tokens!465))))))

(assert (=> d!45049 (= (derivativeStep!75 (regex!527 (rule!1038 (h!8335 tokens!465))) (head!609 lt!55823)) lt!57230)))

(declare-fun b!176325 () Bool)

(assert (=> b!176325 (= e!106931 (ite (= (head!609 lt!55823) (c!34380 (regex!527 (rule!1038 (h!8335 tokens!465))))) EmptyExpr!751 EmptyLang!751))))

(declare-fun b!176326 () Bool)

(assert (=> b!176326 (= e!106929 (Union!751 (Concat!1301 call!7900 (regTwo!2014 (regex!527 (rule!1038 (h!8335 tokens!465))))) call!7899))))

(declare-fun bm!7894 () Bool)

(assert (=> bm!7894 (= call!7899 (derivativeStep!75 (ite c!34886 (regTwo!2015 (regex!527 (rule!1038 (h!8335 tokens!465)))) (regTwo!2014 (regex!527 (rule!1038 (h!8335 tokens!465))))) (head!609 lt!55823)))))

(declare-fun b!176327 () Bool)

(assert (=> b!176327 (= e!106933 (Concat!1301 call!7897 (regex!527 (rule!1038 (h!8335 tokens!465)))))))

(declare-fun bm!7895 () Bool)

(assert (=> bm!7895 (= call!7897 call!7898)))

(declare-fun b!176328 () Bool)

(declare-fun c!34883 () Bool)

(assert (=> b!176328 (= c!34883 (nullable!109 (regOne!2014 (regex!527 (rule!1038 (h!8335 tokens!465))))))))

(assert (=> b!176328 (= e!106933 e!106929)))

(assert (= (and d!45049 c!34885) b!176319))

(assert (= (and d!45049 (not c!34885)) b!176322))

(assert (= (and b!176322 c!34887) b!176325))

(assert (= (and b!176322 (not c!34887)) b!176320))

(assert (= (and b!176320 c!34886) b!176323))

(assert (= (and b!176320 (not c!34886)) b!176324))

(assert (= (and b!176324 c!34884) b!176327))

(assert (= (and b!176324 (not c!34884)) b!176328))

(assert (= (and b!176328 c!34883) b!176326))

(assert (= (and b!176328 (not c!34883)) b!176321))

(assert (= (or b!176326 b!176321) bm!7893))

(assert (= (or b!176327 bm!7893) bm!7895))

(assert (= (or b!176323 b!176326) bm!7894))

(assert (= (or b!176323 bm!7895) bm!7892))

(assert (=> bm!7892 m!173441))

(declare-fun m!177573 () Bool)

(assert (=> bm!7892 m!177573))

(declare-fun m!177575 () Bool)

(assert (=> d!45049 m!177575))

(assert (=> d!45049 m!173449))

(assert (=> bm!7894 m!173441))

(declare-fun m!177577 () Bool)

(assert (=> bm!7894 m!177577))

(declare-fun m!177579 () Bool)

(assert (=> b!176328 m!177579))

(assert (=> b!174429 d!45049))

(declare-fun d!45051 () Bool)

(assert (=> d!45051 (= (head!609 lt!55823) (h!8333 lt!55823))))

(assert (=> b!174429 d!45051))

(assert (=> b!174429 d!44513))

(declare-fun d!45053 () Bool)

(declare-fun lt!57233 () Int)

(assert (=> d!45053 (= lt!57233 (size!2431 (list!1073 (_2!1647 lt!56071))))))

(declare-fun size!2439 (Conc!876) Int)

(assert (=> d!45053 (= lt!57233 (size!2439 (c!34379 (_2!1647 lt!56071))))))

(assert (=> d!45053 (= (size!2433 (_2!1647 lt!56071)) lt!57233)))

(declare-fun bs!17600 () Bool)

(assert (= bs!17600 d!45053))

(assert (=> bs!17600 m!173431))

(assert (=> bs!17600 m!173431))

(declare-fun m!177581 () Bool)

(assert (=> bs!17600 m!177581))

(declare-fun m!177583 () Bool)

(assert (=> bs!17600 m!177583))

(assert (=> b!174394 d!45053))

(declare-fun d!45055 () Bool)

(declare-fun lt!57234 () Int)

(assert (=> d!45055 (= lt!57234 (size!2431 (list!1073 (seqFromList!432 lt!55823))))))

(assert (=> d!45055 (= lt!57234 (size!2439 (c!34379 (seqFromList!432 lt!55823))))))

(assert (=> d!45055 (= (size!2433 (seqFromList!432 lt!55823)) lt!57234)))

(declare-fun bs!17601 () Bool)

(assert (= bs!17601 d!45055))

(assert (=> bs!17601 m!172845))

(assert (=> bs!17601 m!173427))

(assert (=> bs!17601 m!173427))

(assert (=> bs!17601 m!175191))

(declare-fun m!177585 () Bool)

(assert (=> bs!17601 m!177585))

(assert (=> b!174394 d!45055))

(declare-fun d!45057 () Bool)

(declare-fun res!79600 () Bool)

(declare-fun e!106934 () Bool)

(assert (=> d!45057 (=> res!79600 e!106934)))

(assert (=> d!45057 (= res!79600 ((_ is Nil!2938) (t!27586 tokens!465)))))

(assert (=> d!45057 (= (forall!583 (t!27586 tokens!465) lambda!5011) e!106934)))

(declare-fun b!176329 () Bool)

(declare-fun e!106935 () Bool)

(assert (=> b!176329 (= e!106934 e!106935)))

(declare-fun res!79601 () Bool)

(assert (=> b!176329 (=> (not res!79601) (not e!106935))))

(assert (=> b!176329 (= res!79601 (dynLambda!1135 lambda!5011 (h!8335 (t!27586 tokens!465))))))

(declare-fun b!176330 () Bool)

(assert (=> b!176330 (= e!106935 (forall!583 (t!27586 (t!27586 tokens!465)) lambda!5011))))

(assert (= (and d!45057 (not res!79600)) b!176329))

(assert (= (and b!176329 res!79601) b!176330))

(declare-fun b_lambda!4171 () Bool)

(assert (=> (not b_lambda!4171) (not b!176329)))

(declare-fun m!177587 () Bool)

(assert (=> b!176329 m!177587))

(declare-fun m!177589 () Bool)

(assert (=> b!176330 m!177589))

(assert (=> b!174710 d!45057))

(declare-fun b!176333 () Bool)

(declare-fun e!106937 () List!2946)

(assert (=> b!176333 (= e!106937 (list!1081 (xs!3471 (c!34379 (charsOf!182 separatorToken!170)))))))

(declare-fun b!176332 () Bool)

(declare-fun e!106936 () List!2946)

(assert (=> b!176332 (= e!106936 e!106937)))

(declare-fun c!34889 () Bool)

(assert (=> b!176332 (= c!34889 ((_ is Leaf!1479) (c!34379 (charsOf!182 separatorToken!170))))))

(declare-fun b!176331 () Bool)

(assert (=> b!176331 (= e!106936 Nil!2936)))

(declare-fun b!176334 () Bool)

(assert (=> b!176334 (= e!106937 (++!680 (list!1076 (left!2250 (c!34379 (charsOf!182 separatorToken!170)))) (list!1076 (right!2580 (c!34379 (charsOf!182 separatorToken!170))))))))

(declare-fun d!45059 () Bool)

(declare-fun c!34888 () Bool)

(assert (=> d!45059 (= c!34888 ((_ is Empty!876) (c!34379 (charsOf!182 separatorToken!170))))))

(assert (=> d!45059 (= (list!1076 (c!34379 (charsOf!182 separatorToken!170))) e!106936)))

(assert (= (and d!45059 c!34888) b!176331))

(assert (= (and d!45059 (not c!34888)) b!176332))

(assert (= (and b!176332 c!34889) b!176333))

(assert (= (and b!176332 (not c!34889)) b!176334))

(declare-fun m!177591 () Bool)

(assert (=> b!176333 m!177591))

(declare-fun m!177593 () Bool)

(assert (=> b!176334 m!177593))

(declare-fun m!177595 () Bool)

(assert (=> b!176334 m!177595))

(assert (=> b!176334 m!177593))

(assert (=> b!176334 m!177595))

(declare-fun m!177597 () Bool)

(assert (=> b!176334 m!177597))

(assert (=> d!44093 d!45059))

(declare-fun b!176335 () Bool)

(declare-fun e!106941 () Int)

(assert (=> b!176335 (= e!106941 0)))

(declare-fun bm!7896 () Bool)

(declare-fun call!7901 () Int)

(assert (=> bm!7896 (= call!7901 (size!2437 lt!56189))))

(declare-fun b!176336 () Bool)

(assert (=> b!176336 (= e!106941 (- call!7901 (+ 0 1)))))

(declare-fun d!45061 () Bool)

(declare-fun e!106942 () Bool)

(assert (=> d!45061 e!106942))

(declare-fun res!79602 () Bool)

(assert (=> d!45061 (=> (not res!79602) (not e!106942))))

(declare-fun lt!57235 () List!2948)

(assert (=> d!45061 (= res!79602 (= ((_ map implies) (content!410 lt!57235) (content!410 lt!56189)) ((as const (InoxSet Token!798)) true)))))

(declare-fun e!106938 () List!2948)

(assert (=> d!45061 (= lt!57235 e!106938)))

(declare-fun c!34890 () Bool)

(assert (=> d!45061 (= c!34890 ((_ is Nil!2938) lt!56189))))

(assert (=> d!45061 (= (drop!145 lt!56189 (+ 0 1)) lt!57235)))

(declare-fun b!176337 () Bool)

(declare-fun e!106939 () Int)

(assert (=> b!176337 (= e!106939 e!106941)))

(declare-fun c!34893 () Bool)

(assert (=> b!176337 (= c!34893 (>= (+ 0 1) call!7901))))

(declare-fun b!176338 () Bool)

(declare-fun e!106940 () List!2948)

(assert (=> b!176338 (= e!106938 e!106940)))

(declare-fun c!34891 () Bool)

(assert (=> b!176338 (= c!34891 (<= (+ 0 1) 0))))

(declare-fun b!176339 () Bool)

(assert (=> b!176339 (= e!106939 call!7901)))

(declare-fun b!176340 () Bool)

(assert (=> b!176340 (= e!106940 (drop!145 (t!27586 lt!56189) (- (+ 0 1) 1)))))

(declare-fun b!176341 () Bool)

(assert (=> b!176341 (= e!106942 (= (size!2437 lt!57235) e!106939))))

(declare-fun c!34892 () Bool)

(assert (=> b!176341 (= c!34892 (<= (+ 0 1) 0))))

(declare-fun b!176342 () Bool)

(assert (=> b!176342 (= e!106940 lt!56189)))

(declare-fun b!176343 () Bool)

(assert (=> b!176343 (= e!106938 Nil!2938)))

(assert (= (and d!45061 c!34890) b!176343))

(assert (= (and d!45061 (not c!34890)) b!176338))

(assert (= (and b!176338 c!34891) b!176342))

(assert (= (and b!176338 (not c!34891)) b!176340))

(assert (= (and d!45061 res!79602) b!176341))

(assert (= (and b!176341 c!34892) b!176339))

(assert (= (and b!176341 (not c!34892)) b!176337))

(assert (= (and b!176337 c!34893) b!176335))

(assert (= (and b!176337 (not c!34893)) b!176336))

(assert (= (or b!176339 b!176337 b!176336) bm!7896))

(declare-fun m!177599 () Bool)

(assert (=> bm!7896 m!177599))

(declare-fun m!177601 () Bool)

(assert (=> d!45061 m!177601))

(declare-fun m!177603 () Bool)

(assert (=> d!45061 m!177603))

(declare-fun m!177605 () Bool)

(assert (=> b!176340 m!177605))

(declare-fun m!177607 () Bool)

(assert (=> b!176341 m!177607))

(assert (=> b!174725 d!45061))

(declare-fun d!45063 () Bool)

(assert (=> d!45063 (= (head!608 (drop!145 lt!56192 0)) (apply!430 lt!56192 0))))

(declare-fun lt!57236 () Unit!2616)

(assert (=> d!45063 (= lt!57236 (choose!1856 lt!56192 0))))

(declare-fun e!106943 () Bool)

(assert (=> d!45063 e!106943))

(declare-fun res!79603 () Bool)

(assert (=> d!45063 (=> (not res!79603) (not e!106943))))

(assert (=> d!45063 (= res!79603 (>= 0 0))))

(assert (=> d!45063 (= (lemmaDropApply!132 lt!56192 0) lt!57236)))

(declare-fun b!176344 () Bool)

(assert (=> b!176344 (= e!106943 (< 0 (size!2437 lt!56192)))))

(assert (= (and d!45063 res!79603) b!176344))

(assert (=> d!45063 m!173905))

(assert (=> d!45063 m!173905))

(assert (=> d!45063 m!173907))

(assert (=> d!45063 m!173919))

(declare-fun m!177609 () Bool)

(assert (=> d!45063 m!177609))

(declare-fun m!177611 () Bool)

(assert (=> b!176344 m!177611))

(assert (=> b!174725 d!45063))

(declare-fun d!45065 () Bool)

(declare-fun lt!57237 () Token!798)

(assert (=> d!45065 (= lt!57237 (apply!430 (list!1077 lt!55819) 0))))

(assert (=> d!45065 (= lt!57237 (apply!434 (c!34381 lt!55819) 0))))

(declare-fun e!106944 () Bool)

(assert (=> d!45065 e!106944))

(declare-fun res!79604 () Bool)

(assert (=> d!45065 (=> (not res!79604) (not e!106944))))

(assert (=> d!45065 (= res!79604 (<= 0 0))))

(assert (=> d!45065 (= (apply!429 lt!55819 0) lt!57237)))

(declare-fun b!176345 () Bool)

(assert (=> b!176345 (= e!106944 (< 0 (size!2432 lt!55819)))))

(assert (= (and d!45065 res!79604) b!176345))

(assert (=> d!45065 m!173927))

(assert (=> d!45065 m!173927))

(declare-fun m!177613 () Bool)

(assert (=> d!45065 m!177613))

(declare-fun m!177615 () Bool)

(assert (=> d!45065 m!177615))

(assert (=> b!176345 m!173903))

(assert (=> b!174725 d!45065))

(declare-fun d!45067 () Bool)

(declare-fun lt!57238 () Token!798)

(assert (=> d!45067 (contains!474 lt!56192 lt!57238)))

(declare-fun e!106945 () Token!798)

(assert (=> d!45067 (= lt!57238 e!106945)))

(declare-fun c!34894 () Bool)

(assert (=> d!45067 (= c!34894 (= 0 0))))

(declare-fun e!106946 () Bool)

(assert (=> d!45067 e!106946))

(declare-fun res!79605 () Bool)

(assert (=> d!45067 (=> (not res!79605) (not e!106946))))

(assert (=> d!45067 (= res!79605 (<= 0 0))))

(assert (=> d!45067 (= (apply!430 lt!56192 0) lt!57238)))

(declare-fun b!176346 () Bool)

(assert (=> b!176346 (= e!106946 (< 0 (size!2437 lt!56192)))))

(declare-fun b!176347 () Bool)

(assert (=> b!176347 (= e!106945 (head!608 lt!56192))))

(declare-fun b!176348 () Bool)

(assert (=> b!176348 (= e!106945 (apply!430 (tail!348 lt!56192) (- 0 1)))))

(assert (= (and d!45067 res!79605) b!176346))

(assert (= (and d!45067 c!34894) b!176347))

(assert (= (and d!45067 (not c!34894)) b!176348))

(declare-fun m!177617 () Bool)

(assert (=> d!45067 m!177617))

(assert (=> b!176346 m!177611))

(declare-fun m!177619 () Bool)

(assert (=> b!176347 m!177619))

(declare-fun m!177621 () Bool)

(assert (=> b!176348 m!177621))

(assert (=> b!176348 m!177621))

(declare-fun m!177623 () Bool)

(assert (=> b!176348 m!177623))

(assert (=> b!174725 d!45067))

(assert (=> b!174725 d!45045))

(declare-fun d!45069 () Bool)

(declare-fun lt!57239 () BalanceConc!1760)

(assert (=> d!45069 (= (list!1073 lt!57239) (originalCharacters!570 (apply!429 lt!55819 0)))))

(assert (=> d!45069 (= lt!57239 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55819 0)))) (value!19335 (apply!429 lt!55819 0))))))

(assert (=> d!45069 (= (charsOf!182 (apply!429 lt!55819 0)) lt!57239)))

(declare-fun b_lambda!4173 () Bool)

(assert (=> (not b_lambda!4173) (not d!45069)))

(declare-fun tb!7365 () Bool)

(declare-fun t!27898 () Bool)

(assert (=> (and b!174005 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55819 0))))) t!27898) tb!7365))

(declare-fun b!176349 () Bool)

(declare-fun e!106947 () Bool)

(declare-fun tp!85135 () Bool)

(assert (=> b!176349 (= e!106947 (and (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55819 0)))) (value!19335 (apply!429 lt!55819 0))))) tp!85135))))

(declare-fun result!10122 () Bool)

(assert (=> tb!7365 (= result!10122 (and (inv!3770 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55819 0)))) (value!19335 (apply!429 lt!55819 0)))) e!106947))))

(assert (= tb!7365 b!176349))

(declare-fun m!177625 () Bool)

(assert (=> b!176349 m!177625))

(declare-fun m!177627 () Bool)

(assert (=> tb!7365 m!177627))

(assert (=> d!45069 t!27898))

(declare-fun b_and!11905 () Bool)

(assert (= b_and!11897 (and (=> t!27898 result!10122) b_and!11905)))

(declare-fun t!27900 () Bool)

(declare-fun tb!7367 () Bool)

(assert (=> (and b!174009 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55819 0))))) t!27900) tb!7367))

(declare-fun result!10124 () Bool)

(assert (= result!10124 result!10122))

(assert (=> d!45069 t!27900))

(declare-fun b_and!11907 () Bool)

(assert (= b_and!11901 (and (=> t!27900 result!10124) b_and!11907)))

(declare-fun t!27902 () Bool)

(declare-fun tb!7369 () Bool)

(assert (=> (and b!174015 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55819 0))))) t!27902) tb!7369))

(declare-fun result!10126 () Bool)

(assert (= result!10126 result!10122))

(assert (=> d!45069 t!27902))

(declare-fun b_and!11909 () Bool)

(assert (= b_and!11903 (and (=> t!27902 result!10126) b_and!11909)))

(declare-fun tb!7371 () Bool)

(declare-fun t!27904 () Bool)

(assert (=> (and b!174773 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55819 0))))) t!27904) tb!7371))

(declare-fun result!10128 () Bool)

(assert (= result!10128 result!10122))

(assert (=> d!45069 t!27904))

(declare-fun b_and!11911 () Bool)

(assert (= b_and!11895 (and (=> t!27904 result!10128) b_and!11911)))

(declare-fun t!27906 () Bool)

(declare-fun tb!7373 () Bool)

(assert (=> (and b!174759 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55819 0))))) t!27906) tb!7373))

(declare-fun result!10130 () Bool)

(assert (= result!10130 result!10122))

(assert (=> d!45069 t!27906))

(declare-fun b_and!11913 () Bool)

(assert (= b_and!11899 (and (=> t!27906 result!10130) b_and!11913)))

(declare-fun m!177629 () Bool)

(assert (=> d!45069 m!177629))

(declare-fun m!177631 () Bool)

(assert (=> d!45069 m!177631))

(assert (=> b!174725 d!45069))

(declare-fun d!45071 () Bool)

(assert (=> d!45071 (= (tail!348 (drop!145 lt!56189 0)) (t!27586 (drop!145 lt!56189 0)))))

(assert (=> b!174725 d!45071))

(declare-fun b!176350 () Bool)

(declare-fun e!106951 () Int)

(assert (=> b!176350 (= e!106951 0)))

(declare-fun bm!7897 () Bool)

(declare-fun call!7902 () Int)

(assert (=> bm!7897 (= call!7902 (size!2437 lt!56189))))

(declare-fun b!176351 () Bool)

(assert (=> b!176351 (= e!106951 (- call!7902 0))))

(declare-fun d!45073 () Bool)

(declare-fun e!106952 () Bool)

(assert (=> d!45073 e!106952))

(declare-fun res!79606 () Bool)

(assert (=> d!45073 (=> (not res!79606) (not e!106952))))

(declare-fun lt!57240 () List!2948)

(assert (=> d!45073 (= res!79606 (= ((_ map implies) (content!410 lt!57240) (content!410 lt!56189)) ((as const (InoxSet Token!798)) true)))))

(declare-fun e!106948 () List!2948)

(assert (=> d!45073 (= lt!57240 e!106948)))

(declare-fun c!34895 () Bool)

(assert (=> d!45073 (= c!34895 ((_ is Nil!2938) lt!56189))))

(assert (=> d!45073 (= (drop!145 lt!56189 0) lt!57240)))

(declare-fun b!176352 () Bool)

(declare-fun e!106949 () Int)

(assert (=> b!176352 (= e!106949 e!106951)))

(declare-fun c!34898 () Bool)

(assert (=> b!176352 (= c!34898 (>= 0 call!7902))))

(declare-fun b!176353 () Bool)

(declare-fun e!106950 () List!2948)

(assert (=> b!176353 (= e!106948 e!106950)))

(declare-fun c!34896 () Bool)

(assert (=> b!176353 (= c!34896 (<= 0 0))))

(declare-fun b!176354 () Bool)

(assert (=> b!176354 (= e!106949 call!7902)))

(declare-fun b!176355 () Bool)

(assert (=> b!176355 (= e!106950 (drop!145 (t!27586 lt!56189) (- 0 1)))))

(declare-fun b!176356 () Bool)

(assert (=> b!176356 (= e!106952 (= (size!2437 lt!57240) e!106949))))

(declare-fun c!34897 () Bool)

(assert (=> b!176356 (= c!34897 (<= 0 0))))

(declare-fun b!176357 () Bool)

(assert (=> b!176357 (= e!106950 lt!56189)))

(declare-fun b!176358 () Bool)

(assert (=> b!176358 (= e!106948 Nil!2938)))

(assert (= (and d!45073 c!34895) b!176358))

(assert (= (and d!45073 (not c!34895)) b!176353))

(assert (= (and b!176353 c!34896) b!176357))

(assert (= (and b!176353 (not c!34896)) b!176355))

(assert (= (and d!45073 res!79606) b!176356))

(assert (= (and b!176356 c!34897) b!176354))

(assert (= (and b!176356 (not c!34897)) b!176352))

(assert (= (and b!176352 c!34898) b!176350))

(assert (= (and b!176352 (not c!34898)) b!176351))

(assert (= (or b!176354 b!176352 b!176351) bm!7897))

(assert (=> bm!7897 m!177599))

(declare-fun m!177633 () Bool)

(assert (=> d!45073 m!177633))

(assert (=> d!45073 m!177603))

(declare-fun m!177635 () Bool)

(assert (=> b!176355 m!177635))

(declare-fun m!177637 () Bool)

(assert (=> b!176356 m!177637))

(assert (=> b!174725 d!45073))

(declare-fun d!45075 () Bool)

(assert (=> d!45075 (= (head!608 (drop!145 lt!56192 0)) (h!8335 (drop!145 lt!56192 0)))))

(assert (=> b!174725 d!45075))

(declare-fun d!45077 () Bool)

(assert (=> d!45077 (= (tail!348 (drop!145 lt!56189 0)) (drop!145 lt!56189 (+ 0 1)))))

(declare-fun lt!57241 () Unit!2616)

(assert (=> d!45077 (= lt!57241 (choose!1855 lt!56189 0))))

(declare-fun e!106953 () Bool)

(assert (=> d!45077 e!106953))

(declare-fun res!79607 () Bool)

(assert (=> d!45077 (=> (not res!79607) (not e!106953))))

(assert (=> d!45077 (= res!79607 (>= 0 0))))

(assert (=> d!45077 (= (lemmaDropTail!124 lt!56189 0) lt!57241)))

(declare-fun b!176359 () Bool)

(assert (=> b!176359 (= e!106953 (< 0 (size!2437 lt!56189)))))

(assert (= (and d!45077 res!79607) b!176359))

(assert (=> d!45077 m!173921))

(assert (=> d!45077 m!173921))

(assert (=> d!45077 m!173929))

(assert (=> d!45077 m!173911))

(declare-fun m!177639 () Bool)

(assert (=> d!45077 m!177639))

(assert (=> b!176359 m!177599))

(assert (=> b!174725 d!45077))

(declare-fun b!176362 () Bool)

(declare-fun res!79610 () Bool)

(declare-fun e!106954 () Bool)

(assert (=> b!176362 (=> (not res!79610) (not e!106954))))

(assert (=> b!176362 (= res!79610 (>= (height!98 (++!685 (c!34379 (BalanceConc!1761 Empty!876)) (c!34379 (charsOf!182 (apply!429 lt!55819 0))))) (max!0 (height!98 (c!34379 (BalanceConc!1761 Empty!876))) (height!98 (c!34379 (charsOf!182 (apply!429 lt!55819 0)))))))))

(declare-fun b!176360 () Bool)

(declare-fun res!79609 () Bool)

(assert (=> b!176360 (=> (not res!79609) (not e!106954))))

(assert (=> b!176360 (= res!79609 (isBalanced!246 (++!685 (c!34379 (BalanceConc!1761 Empty!876)) (c!34379 (charsOf!182 (apply!429 lt!55819 0))))))))

(declare-fun d!45079 () Bool)

(assert (=> d!45079 e!106954))

(declare-fun res!79611 () Bool)

(assert (=> d!45079 (=> (not res!79611) (not e!106954))))

(assert (=> d!45079 (= res!79611 (appendAssocInst!33 (c!34379 (BalanceConc!1761 Empty!876)) (c!34379 (charsOf!182 (apply!429 lt!55819 0)))))))

(declare-fun lt!57242 () BalanceConc!1760)

(assert (=> d!45079 (= lt!57242 (BalanceConc!1761 (++!685 (c!34379 (BalanceConc!1761 Empty!876)) (c!34379 (charsOf!182 (apply!429 lt!55819 0))))))))

(assert (=> d!45079 (= (++!682 (BalanceConc!1761 Empty!876) (charsOf!182 (apply!429 lt!55819 0))) lt!57242)))

(declare-fun b!176361 () Bool)

(declare-fun res!79608 () Bool)

(assert (=> b!176361 (=> (not res!79608) (not e!106954))))

(assert (=> b!176361 (= res!79608 (<= (height!98 (++!685 (c!34379 (BalanceConc!1761 Empty!876)) (c!34379 (charsOf!182 (apply!429 lt!55819 0))))) (+ (max!0 (height!98 (c!34379 (BalanceConc!1761 Empty!876))) (height!98 (c!34379 (charsOf!182 (apply!429 lt!55819 0))))) 1)))))

(declare-fun b!176363 () Bool)

(assert (=> b!176363 (= e!106954 (= (list!1073 lt!57242) (++!680 (list!1073 (BalanceConc!1761 Empty!876)) (list!1073 (charsOf!182 (apply!429 lt!55819 0))))))))

(assert (= (and d!45079 res!79611) b!176360))

(assert (= (and b!176360 res!79609) b!176361))

(assert (= (and b!176361 res!79608) b!176362))

(assert (= (and b!176362 res!79610) b!176363))

(declare-fun m!177641 () Bool)

(assert (=> b!176361 m!177641))

(declare-fun m!177643 () Bool)

(assert (=> b!176361 m!177643))

(declare-fun m!177645 () Bool)

(assert (=> b!176361 m!177645))

(declare-fun m!177647 () Bool)

(assert (=> b!176361 m!177647))

(assert (=> b!176361 m!177645))

(assert (=> b!176361 m!177647))

(declare-fun m!177649 () Bool)

(assert (=> b!176361 m!177649))

(assert (=> b!176361 m!177641))

(declare-fun m!177651 () Bool)

(assert (=> b!176363 m!177651))

(assert (=> b!176363 m!173897))

(assert (=> b!176363 m!173915))

(declare-fun m!177653 () Bool)

(assert (=> b!176363 m!177653))

(assert (=> b!176363 m!173897))

(assert (=> b!176363 m!177653))

(declare-fun m!177655 () Bool)

(assert (=> b!176363 m!177655))

(assert (=> b!176360 m!177641))

(assert (=> b!176360 m!177641))

(declare-fun m!177657 () Bool)

(assert (=> b!176360 m!177657))

(assert (=> b!176362 m!177641))

(assert (=> b!176362 m!177643))

(assert (=> b!176362 m!177645))

(assert (=> b!176362 m!177647))

(assert (=> b!176362 m!177645))

(assert (=> b!176362 m!177647))

(assert (=> b!176362 m!177649))

(assert (=> b!176362 m!177641))

(declare-fun m!177659 () Bool)

(assert (=> d!45079 m!177659))

(assert (=> d!45079 m!177641))

(assert (=> b!174725 d!45079))

(declare-fun d!45081 () Bool)

(declare-fun lt!57247 () BalanceConc!1760)

(assert (=> d!45081 (= (list!1073 lt!57247) (printListTailRec!60 thiss!17480 (dropList!92 lt!55819 (+ 0 1)) (list!1073 (++!682 (BalanceConc!1761 Empty!876) (charsOf!182 (apply!429 lt!55819 0))))))))

(declare-fun e!106956 () BalanceConc!1760)

(assert (=> d!45081 (= lt!57247 e!106956)))

(declare-fun c!34899 () Bool)

(assert (=> d!45081 (= c!34899 (>= (+ 0 1) (size!2432 lt!55819)))))

(declare-fun e!106955 () Bool)

(assert (=> d!45081 e!106955))

(declare-fun res!79612 () Bool)

(assert (=> d!45081 (=> (not res!79612) (not e!106955))))

(assert (=> d!45081 (= res!79612 (>= (+ 0 1) 0))))

(assert (=> d!45081 (= (printTailRec!107 thiss!17480 lt!55819 (+ 0 1) (++!682 (BalanceConc!1761 Empty!876) (charsOf!182 (apply!429 lt!55819 0)))) lt!57247)))

(declare-fun b!176364 () Bool)

(assert (=> b!176364 (= e!106955 (<= (+ 0 1) (size!2432 lt!55819)))))

(declare-fun b!176365 () Bool)

(assert (=> b!176365 (= e!106956 (++!682 (BalanceConc!1761 Empty!876) (charsOf!182 (apply!429 lt!55819 0))))))

(declare-fun b!176366 () Bool)

(assert (=> b!176366 (= e!106956 (printTailRec!107 thiss!17480 lt!55819 (+ 0 1 1) (++!682 (++!682 (BalanceConc!1761 Empty!876) (charsOf!182 (apply!429 lt!55819 0))) (charsOf!182 (apply!429 lt!55819 (+ 0 1))))))))

(declare-fun lt!57249 () List!2948)

(assert (=> b!176366 (= lt!57249 (list!1077 lt!55819))))

(declare-fun lt!57244 () Unit!2616)

(assert (=> b!176366 (= lt!57244 (lemmaDropApply!132 lt!57249 (+ 0 1)))))

(assert (=> b!176366 (= (head!608 (drop!145 lt!57249 (+ 0 1))) (apply!430 lt!57249 (+ 0 1)))))

(declare-fun lt!57248 () Unit!2616)

(assert (=> b!176366 (= lt!57248 lt!57244)))

(declare-fun lt!57246 () List!2948)

(assert (=> b!176366 (= lt!57246 (list!1077 lt!55819))))

(declare-fun lt!57243 () Unit!2616)

(assert (=> b!176366 (= lt!57243 (lemmaDropTail!124 lt!57246 (+ 0 1)))))

(assert (=> b!176366 (= (tail!348 (drop!145 lt!57246 (+ 0 1))) (drop!145 lt!57246 (+ 0 1 1)))))

(declare-fun lt!57245 () Unit!2616)

(assert (=> b!176366 (= lt!57245 lt!57243)))

(assert (= (and d!45081 res!79612) b!176364))

(assert (= (and d!45081 c!34899) b!176365))

(assert (= (and d!45081 (not c!34899)) b!176366))

(declare-fun m!177661 () Bool)

(assert (=> d!45081 m!177661))

(assert (=> d!45081 m!173917))

(declare-fun m!177663 () Bool)

(assert (=> d!45081 m!177663))

(declare-fun m!177665 () Bool)

(assert (=> d!45081 m!177665))

(assert (=> d!45081 m!177665))

(assert (=> d!45081 m!177663))

(declare-fun m!177667 () Bool)

(assert (=> d!45081 m!177667))

(assert (=> d!45081 m!173903))

(assert (=> b!176364 m!173903))

(declare-fun m!177669 () Bool)

(assert (=> b!176366 m!177669))

(declare-fun m!177671 () Bool)

(assert (=> b!176366 m!177671))

(declare-fun m!177673 () Bool)

(assert (=> b!176366 m!177673))

(declare-fun m!177675 () Bool)

(assert (=> b!176366 m!177675))

(declare-fun m!177677 () Bool)

(assert (=> b!176366 m!177677))

(assert (=> b!176366 m!173917))

(declare-fun m!177679 () Bool)

(assert (=> b!176366 m!177679))

(declare-fun m!177681 () Bool)

(assert (=> b!176366 m!177681))

(declare-fun m!177683 () Bool)

(assert (=> b!176366 m!177683))

(declare-fun m!177685 () Bool)

(assert (=> b!176366 m!177685))

(assert (=> b!176366 m!177681))

(declare-fun m!177687 () Bool)

(assert (=> b!176366 m!177687))

(declare-fun m!177689 () Bool)

(assert (=> b!176366 m!177689))

(assert (=> b!176366 m!177679))

(assert (=> b!176366 m!173927))

(assert (=> b!176366 m!177689))

(assert (=> b!176366 m!177669))

(assert (=> b!176366 m!177685))

(declare-fun m!177691 () Bool)

(assert (=> b!176366 m!177691))

(assert (=> b!174725 d!45081))

(declare-fun b!176367 () Bool)

(declare-fun e!106960 () Int)

(assert (=> b!176367 (= e!106960 0)))

(declare-fun bm!7898 () Bool)

(declare-fun call!7903 () Int)

(assert (=> bm!7898 (= call!7903 (size!2437 lt!56192))))

(declare-fun b!176368 () Bool)

(assert (=> b!176368 (= e!106960 (- call!7903 0))))

(declare-fun d!45083 () Bool)

(declare-fun e!106961 () Bool)

(assert (=> d!45083 e!106961))

(declare-fun res!79613 () Bool)

(assert (=> d!45083 (=> (not res!79613) (not e!106961))))

(declare-fun lt!57250 () List!2948)

(assert (=> d!45083 (= res!79613 (= ((_ map implies) (content!410 lt!57250) (content!410 lt!56192)) ((as const (InoxSet Token!798)) true)))))

(declare-fun e!106957 () List!2948)

(assert (=> d!45083 (= lt!57250 e!106957)))

(declare-fun c!34900 () Bool)

(assert (=> d!45083 (= c!34900 ((_ is Nil!2938) lt!56192))))

(assert (=> d!45083 (= (drop!145 lt!56192 0) lt!57250)))

(declare-fun b!176369 () Bool)

(declare-fun e!106958 () Int)

(assert (=> b!176369 (= e!106958 e!106960)))

(declare-fun c!34903 () Bool)

(assert (=> b!176369 (= c!34903 (>= 0 call!7903))))

(declare-fun b!176370 () Bool)

(declare-fun e!106959 () List!2948)

(assert (=> b!176370 (= e!106957 e!106959)))

(declare-fun c!34901 () Bool)

(assert (=> b!176370 (= c!34901 (<= 0 0))))

(declare-fun b!176371 () Bool)

(assert (=> b!176371 (= e!106958 call!7903)))

(declare-fun b!176372 () Bool)

(assert (=> b!176372 (= e!106959 (drop!145 (t!27586 lt!56192) (- 0 1)))))

(declare-fun b!176373 () Bool)

(assert (=> b!176373 (= e!106961 (= (size!2437 lt!57250) e!106958))))

(declare-fun c!34902 () Bool)

(assert (=> b!176373 (= c!34902 (<= 0 0))))

(declare-fun b!176374 () Bool)

(assert (=> b!176374 (= e!106959 lt!56192)))

(declare-fun b!176375 () Bool)

(assert (=> b!176375 (= e!106957 Nil!2938)))

(assert (= (and d!45083 c!34900) b!176375))

(assert (= (and d!45083 (not c!34900)) b!176370))

(assert (= (and b!176370 c!34901) b!176374))

(assert (= (and b!176370 (not c!34901)) b!176372))

(assert (= (and d!45083 res!79613) b!176373))

(assert (= (and b!176373 c!34902) b!176371))

(assert (= (and b!176373 (not c!34902)) b!176369))

(assert (= (and b!176369 c!34903) b!176367))

(assert (= (and b!176369 (not c!34903)) b!176368))

(assert (= (or b!176371 b!176369 b!176368) bm!7898))

(assert (=> bm!7898 m!177611))

(declare-fun m!177693 () Bool)

(assert (=> d!45083 m!177693))

(declare-fun m!177695 () Bool)

(assert (=> d!45083 m!177695))

(declare-fun m!177697 () Bool)

(assert (=> b!176372 m!177697))

(declare-fun m!177699 () Bool)

(assert (=> b!176373 m!177699))

(assert (=> b!174725 d!45083))

(declare-fun d!45085 () Bool)

(assert (=> d!45085 (= (inv!16 (value!19335 (h!8335 tokens!465))) (= (charsToInt!0 (text!4290 (value!19335 (h!8335 tokens!465)))) (value!19326 (value!19335 (h!8335 tokens!465)))))))

(declare-fun bs!17602 () Bool)

(assert (= bs!17602 d!45085))

(declare-fun m!177701 () Bool)

(assert (=> bs!17602 m!177701))

(assert (=> b!174714 d!45085))

(assert (=> bm!7747 d!44675))

(declare-fun d!45087 () Bool)

(declare-fun lt!57251 () Int)

(assert (=> d!45087 (>= lt!57251 0)))

(declare-fun e!106962 () Int)

(assert (=> d!45087 (= lt!57251 e!106962)))

(declare-fun c!34904 () Bool)

(assert (=> d!45087 (= c!34904 ((_ is Nil!2936) lt!56154))))

(assert (=> d!45087 (= (size!2431 lt!56154) lt!57251)))

(declare-fun b!176376 () Bool)

(assert (=> b!176376 (= e!106962 0)))

(declare-fun b!176377 () Bool)

(assert (=> b!176377 (= e!106962 (+ 1 (size!2431 (t!27584 lt!56154))))))

(assert (= (and d!45087 c!34904) b!176376))

(assert (= (and d!45087 (not c!34904)) b!176377))

(declare-fun m!177703 () Bool)

(assert (=> b!176377 m!177703))

(assert (=> b!174630 d!45087))

(assert (=> b!174630 d!44593))

(declare-fun d!45089 () Bool)

(declare-fun lt!57252 () Int)

(assert (=> d!45089 (>= lt!57252 0)))

(declare-fun e!106963 () Int)

(assert (=> d!45089 (= lt!57252 e!106963)))

(declare-fun c!34905 () Bool)

(assert (=> d!45089 (= c!34905 ((_ is Nil!2936) lt!55815))))

(assert (=> d!45089 (= (size!2431 lt!55815) lt!57252)))

(declare-fun b!176378 () Bool)

(assert (=> b!176378 (= e!106963 0)))

(declare-fun b!176379 () Bool)

(assert (=> b!176379 (= e!106963 (+ 1 (size!2431 (t!27584 lt!55815))))))

(assert (= (and d!45089 c!34905) b!176378))

(assert (= (and d!45089 (not c!34905)) b!176379))

(declare-fun m!177705 () Bool)

(assert (=> b!176379 m!177705))

(assert (=> b!174630 d!45089))

(declare-fun b!176382 () Bool)

(declare-fun res!79616 () Bool)

(declare-fun e!106964 () Bool)

(assert (=> b!176382 (=> (not res!79616) (not e!106964))))

(assert (=> b!176382 (= res!79616 (>= (height!98 (++!685 (c!34379 e!105581) (c!34379 (ite c!34404 lt!55908 call!7707)))) (max!0 (height!98 (c!34379 e!105581)) (height!98 (c!34379 (ite c!34404 lt!55908 call!7707))))))))

(declare-fun b!176380 () Bool)

(declare-fun res!79615 () Bool)

(assert (=> b!176380 (=> (not res!79615) (not e!106964))))

(assert (=> b!176380 (= res!79615 (isBalanced!246 (++!685 (c!34379 e!105581) (c!34379 (ite c!34404 lt!55908 call!7707)))))))

(declare-fun d!45091 () Bool)

(assert (=> d!45091 e!106964))

(declare-fun res!79617 () Bool)

(assert (=> d!45091 (=> (not res!79617) (not e!106964))))

(assert (=> d!45091 (= res!79617 (appendAssocInst!33 (c!34379 e!105581) (c!34379 (ite c!34404 lt!55908 call!7707))))))

(declare-fun lt!57253 () BalanceConc!1760)

(assert (=> d!45091 (= lt!57253 (BalanceConc!1761 (++!685 (c!34379 e!105581) (c!34379 (ite c!34404 lt!55908 call!7707)))))))

(assert (=> d!45091 (= (++!682 e!105581 (ite c!34404 lt!55908 call!7707)) lt!57253)))

(declare-fun b!176381 () Bool)

(declare-fun res!79614 () Bool)

(assert (=> b!176381 (=> (not res!79614) (not e!106964))))

(assert (=> b!176381 (= res!79614 (<= (height!98 (++!685 (c!34379 e!105581) (c!34379 (ite c!34404 lt!55908 call!7707)))) (+ (max!0 (height!98 (c!34379 e!105581)) (height!98 (c!34379 (ite c!34404 lt!55908 call!7707)))) 1)))))

(declare-fun b!176383 () Bool)

(assert (=> b!176383 (= e!106964 (= (list!1073 lt!57253) (++!680 (list!1073 e!105581) (list!1073 (ite c!34404 lt!55908 call!7707)))))))

(assert (= (and d!45091 res!79617) b!176380))

(assert (= (and b!176380 res!79615) b!176381))

(assert (= (and b!176381 res!79614) b!176382))

(assert (= (and b!176382 res!79616) b!176383))

(declare-fun m!177707 () Bool)

(assert (=> b!176381 m!177707))

(declare-fun m!177709 () Bool)

(assert (=> b!176381 m!177709))

(declare-fun m!177711 () Bool)

(assert (=> b!176381 m!177711))

(declare-fun m!177713 () Bool)

(assert (=> b!176381 m!177713))

(assert (=> b!176381 m!177711))

(assert (=> b!176381 m!177713))

(declare-fun m!177715 () Bool)

(assert (=> b!176381 m!177715))

(assert (=> b!176381 m!177707))

(declare-fun m!177717 () Bool)

(assert (=> b!176383 m!177717))

(declare-fun m!177719 () Bool)

(assert (=> b!176383 m!177719))

(declare-fun m!177721 () Bool)

(assert (=> b!176383 m!177721))

(assert (=> b!176383 m!177719))

(assert (=> b!176383 m!177721))

(declare-fun m!177723 () Bool)

(assert (=> b!176383 m!177723))

(assert (=> b!176380 m!177707))

(assert (=> b!176380 m!177707))

(declare-fun m!177725 () Bool)

(assert (=> b!176380 m!177725))

(assert (=> b!176382 m!177707))

(assert (=> b!176382 m!177709))

(assert (=> b!176382 m!177711))

(assert (=> b!176382 m!177713))

(assert (=> b!176382 m!177711))

(assert (=> b!176382 m!177713))

(assert (=> b!176382 m!177715))

(assert (=> b!176382 m!177707))

(declare-fun m!177727 () Bool)

(assert (=> d!45091 m!177727))

(assert (=> d!45091 m!177707))

(assert (=> bm!7703 d!45091))

(declare-fun b!176386 () Bool)

(declare-fun e!106966 () List!2946)

(assert (=> b!176386 (= e!106966 (list!1081 (xs!3471 (c!34379 (charsOf!182 (h!8335 tokens!465))))))))

(declare-fun b!176385 () Bool)

(declare-fun e!106965 () List!2946)

(assert (=> b!176385 (= e!106965 e!106966)))

(declare-fun c!34907 () Bool)

(assert (=> b!176385 (= c!34907 ((_ is Leaf!1479) (c!34379 (charsOf!182 (h!8335 tokens!465)))))))

(declare-fun b!176384 () Bool)

(assert (=> b!176384 (= e!106965 Nil!2936)))

(declare-fun b!176387 () Bool)

(assert (=> b!176387 (= e!106966 (++!680 (list!1076 (left!2250 (c!34379 (charsOf!182 (h!8335 tokens!465))))) (list!1076 (right!2580 (c!34379 (charsOf!182 (h!8335 tokens!465)))))))))

(declare-fun d!45093 () Bool)

(declare-fun c!34906 () Bool)

(assert (=> d!45093 (= c!34906 ((_ is Empty!876) (c!34379 (charsOf!182 (h!8335 tokens!465)))))))

(assert (=> d!45093 (= (list!1076 (c!34379 (charsOf!182 (h!8335 tokens!465)))) e!106965)))

(assert (= (and d!45093 c!34906) b!176384))

(assert (= (and d!45093 (not c!34906)) b!176385))

(assert (= (and b!176385 c!34907) b!176386))

(assert (= (and b!176385 (not c!34907)) b!176387))

(declare-fun m!177729 () Bool)

(assert (=> b!176386 m!177729))

(declare-fun m!177731 () Bool)

(assert (=> b!176387 m!177731))

(declare-fun m!177733 () Bool)

(assert (=> b!176387 m!177733))

(assert (=> b!176387 m!177731))

(assert (=> b!176387 m!177733))

(declare-fun m!177735 () Bool)

(assert (=> b!176387 m!177735))

(assert (=> d!44107 d!45093))

(declare-fun d!45095 () Bool)

(assert (=> d!45095 (= (list!1073 (ite c!34434 call!7738 call!7737)) (list!1076 (c!34379 (ite c!34434 call!7738 call!7737))))))

(declare-fun bs!17603 () Bool)

(assert (= bs!17603 d!45095))

(declare-fun m!177737 () Bool)

(assert (=> bs!17603 m!177737))

(assert (=> bm!7732 d!45095))

(declare-fun d!45097 () Bool)

(declare-fun lt!57254 () Int)

(assert (=> d!45097 (>= lt!57254 0)))

(declare-fun e!106967 () Int)

(assert (=> d!45097 (= lt!57254 e!106967)))

(declare-fun c!34908 () Bool)

(assert (=> d!45097 (= c!34908 ((_ is Nil!2936) lt!56122))))

(assert (=> d!45097 (= (size!2431 lt!56122) lt!57254)))

(declare-fun b!176388 () Bool)

(assert (=> b!176388 (= e!106967 0)))

(declare-fun b!176389 () Bool)

(assert (=> b!176389 (= e!106967 (+ 1 (size!2431 (t!27584 lt!56122))))))

(assert (= (and d!45097 c!34908) b!176388))

(assert (= (and d!45097 (not c!34908)) b!176389))

(declare-fun m!177739 () Bool)

(assert (=> b!176389 m!177739))

(assert (=> b!174518 d!45097))

(declare-fun d!45099 () Bool)

(declare-fun lt!57255 () Int)

(assert (=> d!45099 (>= lt!57255 0)))

(declare-fun e!106968 () Int)

(assert (=> d!45099 (= lt!57255 e!106968)))

(declare-fun c!34909 () Bool)

(assert (=> d!45099 (= c!34909 ((_ is Nil!2936) (++!680 lt!55823 lt!55827)))))

(assert (=> d!45099 (= (size!2431 (++!680 lt!55823 lt!55827)) lt!57255)))

(declare-fun b!176390 () Bool)

(assert (=> b!176390 (= e!106968 0)))

(declare-fun b!176391 () Bool)

(assert (=> b!176391 (= e!106968 (+ 1 (size!2431 (t!27584 (++!680 lt!55823 lt!55827)))))))

(assert (= (and d!45099 c!34909) b!176390))

(assert (= (and d!45099 (not c!34909)) b!176391))

(assert (=> b!176391 m!176045))

(assert (=> b!174518 d!45099))

(assert (=> b!174518 d!44331))

(declare-fun bs!17604 () Bool)

(declare-fun d!45101 () Bool)

(assert (= bs!17604 (and d!45101 d!44337)))

(declare-fun lambda!5105 () Int)

(assert (=> bs!17604 (= (and (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465))))) (= (toValue!1194 (transformation!527 (rule!1038 separatorToken!170))) (toValue!1194 (transformation!527 (rule!1038 (h!8335 tokens!465)))))) (= lambda!5105 lambda!5059))))

(declare-fun bs!17605 () Bool)

(assert (= bs!17605 (and d!45101 b!175593)))

(assert (=> bs!17605 (= (and (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (= (toValue!1194 (transformation!527 (rule!1038 separatorToken!170))) (toValue!1194 (transformation!527 (h!8334 rules!1920))))) (= lambda!5105 lambda!5084))))

(declare-fun bs!17606 () Bool)

(assert (= bs!17606 (and d!45101 d!45027)))

(assert (=> bs!17606 (= (and (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (= (toValue!1194 (transformation!527 (rule!1038 separatorToken!170))) (toValue!1194 (transformation!527 (h!8334 rules!1920))))) (= lambda!5105 lambda!5104))))

(assert (=> d!45101 true))

(assert (=> d!45101 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170)))) (dynLambda!1136 order!1635 lambda!5105))))

(assert (=> d!45101 true))

(assert (=> d!45101 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (rule!1038 separatorToken!170)))) (dynLambda!1136 order!1635 lambda!5105))))

(assert (=> d!45101 (= (semiInverseModEq!183 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toValue!1194 (transformation!527 (rule!1038 separatorToken!170)))) (Forall!137 lambda!5105))))

(declare-fun bs!17607 () Bool)

(assert (= bs!17607 d!45101))

(declare-fun m!177741 () Bool)

(assert (=> bs!17607 m!177741))

(assert (=> d!43983 d!45101))

(declare-fun d!45103 () Bool)

(declare-fun res!79618 () Bool)

(declare-fun e!106969 () Bool)

(assert (=> d!45103 (=> res!79618 e!106969)))

(assert (=> d!45103 (= res!79618 ((_ is Nil!2938) (list!1077 lt!55832)))))

(assert (=> d!45103 (= (forall!583 (list!1077 lt!55832) lambda!5044) e!106969)))

(declare-fun b!176392 () Bool)

(declare-fun e!106970 () Bool)

(assert (=> b!176392 (= e!106969 e!106970)))

(declare-fun res!79619 () Bool)

(assert (=> b!176392 (=> (not res!79619) (not e!106970))))

(assert (=> b!176392 (= res!79619 (dynLambda!1135 lambda!5044 (h!8335 (list!1077 lt!55832))))))

(declare-fun b!176393 () Bool)

(assert (=> b!176393 (= e!106970 (forall!583 (t!27586 (list!1077 lt!55832)) lambda!5044))))

(assert (= (and d!45103 (not res!79618)) b!176392))

(assert (= (and b!176392 res!79619) b!176393))

(declare-fun b_lambda!4175 () Bool)

(assert (=> (not b_lambda!4175) (not b!176392)))

(declare-fun m!177743 () Bool)

(assert (=> b!176392 m!177743))

(declare-fun m!177745 () Bool)

(assert (=> b!176393 m!177745))

(assert (=> d!44043 d!45103))

(assert (=> d!44043 d!44521))

(declare-fun d!45105 () Bool)

(declare-fun lt!57258 () Bool)

(assert (=> d!45105 (= lt!57258 (forall!583 (list!1077 lt!55832) lambda!5044))))

(declare-fun forall!588 (Conc!877 Int) Bool)

(assert (=> d!45105 (= lt!57258 (forall!588 (c!34381 lt!55832) lambda!5044))))

(assert (=> d!45105 (= (forall!584 lt!55832 lambda!5044) lt!57258)))

(declare-fun bs!17608 () Bool)

(assert (= bs!17608 d!45105))

(assert (=> bs!17608 m!173005))

(assert (=> bs!17608 m!173005))

(assert (=> bs!17608 m!173601))

(declare-fun m!177747 () Bool)

(assert (=> bs!17608 m!177747))

(assert (=> d!44043 d!45105))

(assert (=> d!44043 d!44139))

(declare-fun d!45107 () Bool)

(assert (=> d!45107 (= (isEmpty!1271 (originalCharacters!570 separatorToken!170)) ((_ is Nil!2936) (originalCharacters!570 separatorToken!170)))))

(assert (=> d!44119 d!45107))

(declare-fun d!45109 () Bool)

(declare-fun e!106971 () Bool)

(assert (=> d!45109 e!106971))

(declare-fun res!79621 () Bool)

(assert (=> d!45109 (=> (not res!79621) (not e!106971))))

(declare-fun lt!57259 () List!2946)

(assert (=> d!45109 (= res!79621 (= (content!407 lt!57259) ((_ map or) (content!407 (t!27584 lt!55827)) (content!407 lt!55824))))))

(declare-fun e!106972 () List!2946)

(assert (=> d!45109 (= lt!57259 e!106972)))

(declare-fun c!34910 () Bool)

(assert (=> d!45109 (= c!34910 ((_ is Nil!2936) (t!27584 lt!55827)))))

(assert (=> d!45109 (= (++!680 (t!27584 lt!55827) lt!55824) lt!57259)))

(declare-fun b!176397 () Bool)

(assert (=> b!176397 (= e!106971 (or (not (= lt!55824 Nil!2936)) (= lt!57259 (t!27584 lt!55827))))))

(declare-fun b!176396 () Bool)

(declare-fun res!79620 () Bool)

(assert (=> b!176396 (=> (not res!79620) (not e!106971))))

(assert (=> b!176396 (= res!79620 (= (size!2431 lt!57259) (+ (size!2431 (t!27584 lt!55827)) (size!2431 lt!55824))))))

(declare-fun b!176394 () Bool)

(assert (=> b!176394 (= e!106972 lt!55824)))

(declare-fun b!176395 () Bool)

(assert (=> b!176395 (= e!106972 (Cons!2936 (h!8333 (t!27584 lt!55827)) (++!680 (t!27584 (t!27584 lt!55827)) lt!55824)))))

(assert (= (and d!45109 c!34910) b!176394))

(assert (= (and d!45109 (not c!34910)) b!176395))

(assert (= (and d!45109 res!79621) b!176396))

(assert (= (and b!176396 res!79620) b!176397))

(declare-fun m!177749 () Bool)

(assert (=> d!45109 m!177749))

(declare-fun m!177751 () Bool)

(assert (=> d!45109 m!177751))

(assert (=> d!45109 m!172913))

(declare-fun m!177753 () Bool)

(assert (=> b!176396 m!177753))

(assert (=> b!176396 m!174453))

(assert (=> b!176396 m!172919))

(declare-fun m!177755 () Bool)

(assert (=> b!176395 m!177755))

(assert (=> b!174521 d!45109))

(declare-fun d!45111 () Bool)

(assert (=> d!45111 (= (list!1073 lt!55919) (list!1076 (c!34379 lt!55919)))))

(declare-fun bs!17609 () Bool)

(assert (= bs!17609 d!45111))

(declare-fun m!177757 () Bool)

(assert (=> bs!17609 m!177757))

(assert (=> d!43945 d!45111))

(assert (=> d!43945 d!44547))

(declare-fun d!45113 () Bool)

(assert (=> d!45113 (= (dropList!92 lt!55832 0) (drop!145 (list!1080 (c!34381 lt!55832)) 0))))

(declare-fun bs!17610 () Bool)

(assert (= bs!17610 d!45113))

(assert (=> bs!17610 m!175351))

(assert (=> bs!17610 m!175351))

(declare-fun m!177759 () Bool)

(assert (=> bs!17610 m!177759))

(assert (=> d!43945 d!45113))

(assert (=> d!43945 d!44521))

(declare-fun bs!17611 () Bool)

(declare-fun b!176399 () Bool)

(assert (= bs!17611 (and b!176399 d!44519)))

(declare-fun lambda!5106 () Int)

(assert (=> bs!17611 (= lambda!5106 lambda!5071)))

(declare-fun bs!17612 () Bool)

(assert (= bs!17612 (and b!176399 b!174118)))

(assert (=> bs!17612 (= lambda!5106 lambda!5024)))

(declare-fun bs!17613 () Bool)

(assert (= bs!17613 (and b!176399 d!44947)))

(assert (=> bs!17613 (not (= lambda!5106 lambda!5100))))

(declare-fun bs!17614 () Bool)

(assert (= bs!17614 (and b!176399 b!174010)))

(assert (=> bs!17614 (= lambda!5106 lambda!5012)))

(declare-fun bs!17615 () Bool)

(assert (= bs!17615 (and b!176399 b!173998)))

(assert (=> bs!17615 (not (= lambda!5106 lambda!5011))))

(declare-fun bs!17616 () Bool)

(assert (= bs!17616 (and b!176399 d!43945)))

(assert (=> bs!17616 (not (= lambda!5106 lambda!5023))))

(declare-fun bs!17617 () Bool)

(assert (= bs!17617 (and b!176399 b!174525)))

(assert (=> bs!17617 (= lambda!5106 lambda!5050)))

(declare-fun bs!17618 () Bool)

(assert (= bs!17618 (and b!176399 d!44101)))

(assert (=> bs!17618 (not (= lambda!5106 lambda!5051))))

(declare-fun bs!17619 () Bool)

(assert (= bs!17619 (and b!176399 d!44043)))

(assert (=> bs!17619 (= lambda!5106 lambda!5044)))

(declare-fun bs!17620 () Bool)

(assert (= bs!17620 (and b!176399 d!44545)))

(assert (=> bs!17620 (= lambda!5106 lambda!5075)))

(declare-fun bs!17621 () Bool)

(assert (= bs!17621 (and b!176399 b!176263)))

(assert (=> bs!17621 (= lambda!5106 lambda!5102)))

(declare-fun bs!17622 () Bool)

(assert (= bs!17622 (and b!176399 b!175694)))

(assert (=> bs!17622 (= lambda!5106 lambda!5088)))

(declare-fun bs!17623 () Bool)

(assert (= bs!17623 (and b!176399 b!176162)))

(assert (=> bs!17623 (= lambda!5106 lambda!5101)))

(declare-fun bs!17624 () Bool)

(assert (= bs!17624 (and b!176399 d!43987)))

(assert (=> bs!17624 (= lambda!5106 lambda!5033)))

(declare-fun bs!17625 () Bool)

(assert (= bs!17625 (and b!176399 b!174198)))

(assert (=> bs!17625 (= lambda!5106 lambda!5030)))

(declare-fun bs!17626 () Bool)

(assert (= bs!17626 (and b!176399 b!174547)))

(assert (=> bs!17626 (= lambda!5106 lambda!5052)))

(declare-fun b!176408 () Bool)

(declare-fun e!106979 () Bool)

(assert (=> b!176408 (= e!106979 true)))

(declare-fun b!176407 () Bool)

(declare-fun e!106978 () Bool)

(assert (=> b!176407 (= e!106978 e!106979)))

(declare-fun b!176406 () Bool)

(declare-fun e!106977 () Bool)

(assert (=> b!176406 (= e!106977 e!106978)))

(assert (=> b!176399 e!106977))

(assert (= b!176407 b!176408))

(assert (= b!176406 b!176407))

(assert (= (and b!176399 ((_ is Cons!2937) rules!1920)) b!176406))

(assert (=> b!176408 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5106))))

(assert (=> b!176408 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5106))))

(assert (=> b!176399 true))

(declare-fun d!45115 () Bool)

(declare-fun c!34914 () Bool)

(assert (=> d!45115 (= c!34914 ((_ is Cons!2938) (dropList!92 lt!55832 0)))))

(declare-fun e!106976 () List!2946)

(assert (=> d!45115 (= (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 (dropList!92 lt!55832 0) separatorToken!170) e!106976)))

(declare-fun b!176398 () Bool)

(declare-fun e!106975 () List!2946)

(assert (=> b!176398 (= e!106975 Nil!2936)))

(assert (=> b!176398 (= (print!144 thiss!17480 (singletonSeq!79 (h!8335 (dropList!92 lt!55832 0)))) (printTailRec!107 thiss!17480 (singletonSeq!79 (h!8335 (dropList!92 lt!55832 0))) 0 (BalanceConc!1761 Empty!876)))))

(declare-fun lt!57265 () Unit!2616)

(declare-fun Unit!2666 () Unit!2616)

(assert (=> b!176398 (= lt!57265 Unit!2666)))

(declare-fun call!7908 () List!2946)

(declare-fun lt!57264 () List!2946)

(declare-fun lt!57263 () Unit!2616)

(assert (=> b!176398 (= lt!57263 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!40 thiss!17480 rules!1920 call!7908 lt!57264))))

(assert (=> b!176398 false))

(declare-fun lt!57262 () Unit!2616)

(declare-fun Unit!2667 () Unit!2616)

(assert (=> b!176398 (= lt!57262 Unit!2667)))

(declare-fun e!106973 () List!2946)

(assert (=> b!176399 (= e!106976 e!106973)))

(declare-fun lt!57260 () Unit!2616)

(assert (=> b!176399 (= lt!57260 (forallContained!94 (dropList!92 lt!55832 0) lambda!5106 (h!8335 (dropList!92 lt!55832 0))))))

(assert (=> b!176399 (= lt!57264 (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 (t!27586 (dropList!92 lt!55832 0)) separatorToken!170))))

(declare-fun lt!57261 () Option!331)

(assert (=> b!176399 (= lt!57261 (maxPrefix!143 thiss!17480 rules!1920 (++!680 (list!1073 (charsOf!182 (h!8335 (dropList!92 lt!55832 0)))) lt!57264)))))

(declare-fun c!34913 () Bool)

(assert (=> b!176399 (= c!34913 (and ((_ is Some!330) lt!57261) (= (_1!1648 (v!13783 lt!57261)) (h!8335 (dropList!92 lt!55832 0)))))))

(declare-fun b!176400 () Bool)

(assert (=> b!176400 (= e!106976 Nil!2936)))

(declare-fun b!176401 () Bool)

(declare-fun e!106974 () BalanceConc!1760)

(assert (=> b!176401 (= e!106974 (charsOf!182 separatorToken!170))))

(declare-fun b!176402 () Bool)

(declare-fun call!7907 () List!2946)

(assert (=> b!176402 (= e!106973 call!7907)))

(declare-fun bm!7899 () Bool)

(assert (=> bm!7899 (= call!7908 (list!1073 e!106974))))

(declare-fun c!34912 () Bool)

(declare-fun c!34911 () Bool)

(assert (=> bm!7899 (= c!34912 c!34911)))

(declare-fun call!7905 () BalanceConc!1760)

(declare-fun call!7906 () BalanceConc!1760)

(declare-fun call!7904 () List!2946)

(declare-fun bm!7900 () Bool)

(assert (=> bm!7900 (= call!7904 (list!1073 (ite c!34913 call!7906 call!7905)))))

(declare-fun bm!7901 () Bool)

(assert (=> bm!7901 (= call!7907 (++!680 call!7904 (ite c!34913 lt!57264 call!7908)))))

(declare-fun b!176403 () Bool)

(assert (=> b!176403 (= e!106975 (++!680 call!7907 lt!57264))))

(declare-fun b!176404 () Bool)

(assert (=> b!176404 (= e!106974 call!7905)))

(declare-fun bm!7902 () Bool)

(assert (=> bm!7902 (= call!7905 call!7906)))

(declare-fun bm!7903 () Bool)

(assert (=> bm!7903 (= call!7906 (charsOf!182 (h!8335 (dropList!92 lt!55832 0))))))

(declare-fun b!176405 () Bool)

(assert (=> b!176405 (= c!34911 (and ((_ is Some!330) lt!57261) (not (= (_1!1648 (v!13783 lt!57261)) (h!8335 (dropList!92 lt!55832 0))))))))

(assert (=> b!176405 (= e!106973 e!106975)))

(assert (= (and d!45115 c!34914) b!176399))

(assert (= (and d!45115 (not c!34914)) b!176400))

(assert (= (and b!176399 c!34913) b!176402))

(assert (= (and b!176399 (not c!34913)) b!176405))

(assert (= (and b!176405 c!34911) b!176403))

(assert (= (and b!176405 (not c!34911)) b!176398))

(assert (= (or b!176403 b!176398) bm!7902))

(assert (= (or b!176403 b!176398) bm!7899))

(assert (= (and bm!7899 c!34912) b!176401))

(assert (= (and bm!7899 (not c!34912)) b!176404))

(assert (= (or b!176402 bm!7902) bm!7903))

(assert (= (or b!176402 b!176403) bm!7900))

(assert (= (or b!176402 b!176403) bm!7901))

(declare-fun m!177761 () Bool)

(assert (=> bm!7900 m!177761))

(declare-fun m!177763 () Bool)

(assert (=> bm!7901 m!177763))

(declare-fun m!177765 () Bool)

(assert (=> bm!7903 m!177765))

(declare-fun m!177767 () Bool)

(assert (=> bm!7899 m!177767))

(declare-fun m!177769 () Bool)

(assert (=> b!176399 m!177769))

(declare-fun m!177771 () Bool)

(assert (=> b!176399 m!177771))

(declare-fun m!177773 () Bool)

(assert (=> b!176399 m!177773))

(assert (=> b!176399 m!177773))

(declare-fun m!177775 () Bool)

(assert (=> b!176399 m!177775))

(assert (=> b!176399 m!172997))

(declare-fun m!177777 () Bool)

(assert (=> b!176399 m!177777))

(assert (=> b!176399 m!177765))

(assert (=> b!176399 m!177771))

(assert (=> b!176399 m!177765))

(declare-fun m!177779 () Bool)

(assert (=> b!176403 m!177779))

(assert (=> b!176401 m!172859))

(declare-fun m!177781 () Bool)

(assert (=> b!176398 m!177781))

(assert (=> b!176398 m!177781))

(declare-fun m!177783 () Bool)

(assert (=> b!176398 m!177783))

(assert (=> b!176398 m!177781))

(declare-fun m!177785 () Bool)

(assert (=> b!176398 m!177785))

(declare-fun m!177787 () Bool)

(assert (=> b!176398 m!177787))

(assert (=> d!43945 d!45115))

(declare-fun d!45117 () Bool)

(assert (=> d!45117 (forall!583 (dropList!92 lt!55832 0) lambda!5023)))

(declare-fun lt!57266 () Unit!2616)

(assert (=> d!45117 (= lt!57266 (choose!1858 (list!1077 lt!55832) (dropList!92 lt!55832 0) lambda!5023))))

(assert (=> d!45117 (forall!583 (list!1077 lt!55832) lambda!5023)))

(assert (=> d!45117 (= (lemmaContentSubsetPreservesForall!36 (list!1077 lt!55832) (dropList!92 lt!55832 0) lambda!5023) lt!57266)))

(declare-fun bs!17627 () Bool)

(assert (= bs!17627 d!45117))

(assert (=> bs!17627 m!172997))

(declare-fun m!177789 () Bool)

(assert (=> bs!17627 m!177789))

(assert (=> bs!17627 m!173005))

(assert (=> bs!17627 m!172997))

(declare-fun m!177791 () Bool)

(assert (=> bs!17627 m!177791))

(assert (=> bs!17627 m!173005))

(declare-fun m!177793 () Bool)

(assert (=> bs!17627 m!177793))

(assert (=> d!43945 d!45117))

(declare-fun bs!17628 () Bool)

(declare-fun d!45119 () Bool)

(assert (= bs!17628 (and d!45119 d!44543)))

(declare-fun lambda!5107 () Int)

(assert (=> bs!17628 (= (= (toValue!1194 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (= lambda!5107 lambda!5074))))

(declare-fun bs!17629 () Bool)

(assert (= bs!17629 (and d!45119 d!45023)))

(assert (=> bs!17629 (= (= (toValue!1194 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toValue!1194 (transformation!527 (rule!1038 separatorToken!170)))) (= lambda!5107 lambda!5103))))

(assert (=> d!45119 true))

(assert (=> d!45119 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (rule!1038 (h!8335 tokens!465))))) (dynLambda!1139 order!1639 lambda!5107))))

(assert (=> d!45119 (= (equivClasses!166 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toValue!1194 (transformation!527 (rule!1038 (h!8335 tokens!465))))) (Forall2!113 lambda!5107))))

(declare-fun bs!17630 () Bool)

(assert (= bs!17630 d!45119))

(declare-fun m!177795 () Bool)

(assert (=> bs!17630 m!177795))

(assert (=> b!174711 d!45119))

(declare-fun d!45121 () Bool)

(declare-fun e!106980 () Bool)

(assert (=> d!45121 e!106980))

(declare-fun res!79623 () Bool)

(assert (=> d!45121 (=> (not res!79623) (not e!106980))))

(declare-fun lt!57267 () List!2946)

(assert (=> d!45121 (= res!79623 (= (content!407 lt!57267) ((_ map or) (content!407 call!7763) (content!407 (ite c!34485 lt!56128 call!7767)))))))

(declare-fun e!106981 () List!2946)

(assert (=> d!45121 (= lt!57267 e!106981)))

(declare-fun c!34915 () Bool)

(assert (=> d!45121 (= c!34915 ((_ is Nil!2936) call!7763))))

(assert (=> d!45121 (= (++!680 call!7763 (ite c!34485 lt!56128 call!7767)) lt!57267)))

(declare-fun b!176412 () Bool)

(assert (=> b!176412 (= e!106980 (or (not (= (ite c!34485 lt!56128 call!7767) Nil!2936)) (= lt!57267 call!7763)))))

(declare-fun b!176411 () Bool)

(declare-fun res!79622 () Bool)

(assert (=> b!176411 (=> (not res!79622) (not e!106980))))

(assert (=> b!176411 (= res!79622 (= (size!2431 lt!57267) (+ (size!2431 call!7763) (size!2431 (ite c!34485 lt!56128 call!7767)))))))

(declare-fun b!176409 () Bool)

(assert (=> b!176409 (= e!106981 (ite c!34485 lt!56128 call!7767))))

(declare-fun b!176410 () Bool)

(assert (=> b!176410 (= e!106981 (Cons!2936 (h!8333 call!7763) (++!680 (t!27584 call!7763) (ite c!34485 lt!56128 call!7767))))))

(assert (= (and d!45121 c!34915) b!176409))

(assert (= (and d!45121 (not c!34915)) b!176410))

(assert (= (and d!45121 res!79623) b!176411))

(assert (= (and b!176411 res!79622) b!176412))

(declare-fun m!177797 () Bool)

(assert (=> d!45121 m!177797))

(declare-fun m!177799 () Bool)

(assert (=> d!45121 m!177799))

(declare-fun m!177801 () Bool)

(assert (=> d!45121 m!177801))

(declare-fun m!177803 () Bool)

(assert (=> b!176411 m!177803))

(declare-fun m!177805 () Bool)

(assert (=> b!176411 m!177805))

(declare-fun m!177807 () Bool)

(assert (=> b!176411 m!177807))

(declare-fun m!177809 () Bool)

(assert (=> b!176410 m!177809))

(assert (=> bm!7760 d!45121))

(declare-fun d!45123 () Bool)

(declare-fun e!106982 () Bool)

(assert (=> d!45123 e!106982))

(declare-fun res!79624 () Bool)

(assert (=> d!45123 (=> (not res!79624) (not e!106982))))

(declare-fun lt!57268 () BalanceConc!1762)

(assert (=> d!45123 (= res!79624 (= (list!1077 lt!57268) (Cons!2938 call!7709 Nil!2938)))))

(assert (=> d!45123 (= lt!57268 (singleton!41 call!7709))))

(assert (=> d!45123 (= (singletonSeq!79 call!7709) lt!57268)))

(declare-fun b!176413 () Bool)

(assert (=> b!176413 (= e!106982 (isBalanced!244 (c!34381 lt!57268)))))

(assert (= (and d!45123 res!79624) b!176413))

(declare-fun m!177811 () Bool)

(assert (=> d!45123 m!177811))

(declare-fun m!177813 () Bool)

(assert (=> d!45123 m!177813))

(declare-fun m!177815 () Bool)

(assert (=> b!176413 m!177815))

(assert (=> b!174120 d!45123))

(declare-fun d!45125 () Bool)

(declare-fun lt!57269 () BalanceConc!1760)

(assert (=> d!45125 (= (list!1073 lt!57269) (printList!97 thiss!17480 (list!1077 (singletonSeq!79 call!7709))))))

(assert (=> d!45125 (= lt!57269 (printTailRec!107 thiss!17480 (singletonSeq!79 call!7709) 0 (BalanceConc!1761 Empty!876)))))

(assert (=> d!45125 (= (print!144 thiss!17480 (singletonSeq!79 call!7709)) lt!57269)))

(declare-fun bs!17631 () Bool)

(assert (= bs!17631 d!45125))

(declare-fun m!177817 () Bool)

(assert (=> bs!17631 m!177817))

(assert (=> bs!17631 m!173009))

(declare-fun m!177819 () Bool)

(assert (=> bs!17631 m!177819))

(assert (=> bs!17631 m!177819))

(declare-fun m!177821 () Bool)

(assert (=> bs!17631 m!177821))

(assert (=> bs!17631 m!173009))

(assert (=> bs!17631 m!173015))

(assert (=> b!174120 d!45125))

(declare-fun d!45127 () Bool)

(assert (=> d!45127 (= (list!1073 lt!55908) (list!1076 (c!34379 lt!55908)))))

(declare-fun bs!17632 () Bool)

(assert (= bs!17632 d!45127))

(declare-fun m!177823 () Bool)

(assert (=> bs!17632 m!177823))

(assert (=> b!174120 d!45127))

(declare-fun b!176417 () Bool)

(declare-fun e!106983 () Unit!2616)

(declare-fun Unit!2668 () Unit!2616)

(assert (=> b!176417 (= e!106983 Unit!2668)))

(declare-fun b!176414 () Bool)

(declare-fun res!79626 () Bool)

(declare-fun e!106984 () Bool)

(assert (=> b!176414 (=> (not res!79626) (not e!106984))))

(declare-fun lt!57276 () Token!798)

(assert (=> b!176414 (= res!79626 (matchR!89 (regex!527 (get!814 (getRuleFromTag!25 thiss!17480 rules!1920 (tag!705 (rule!1038 lt!57276))))) (list!1073 (charsOf!182 lt!57276))))))

(declare-fun b!176416 () Bool)

(declare-fun Unit!2669 () Unit!2616)

(assert (=> b!176416 (= e!106983 Unit!2669)))

(declare-fun lt!57275 () List!2946)

(assert (=> b!176416 (= lt!57275 (++!680 (list!1073 call!7707) (list!1073 lt!55908)))))

(declare-fun lt!57282 () Unit!2616)

(assert (=> b!176416 (= lt!57282 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!25 thiss!17480 (rule!1038 lt!57276) rules!1920 lt!57275))))

(assert (=> b!176416 (isEmpty!1282 (maxPrefixOneRule!75 thiss!17480 (rule!1038 lt!57276) lt!57275))))

(declare-fun lt!57270 () Unit!2616)

(assert (=> b!176416 (= lt!57270 lt!57282)))

(declare-fun lt!57271 () List!2946)

(assert (=> b!176416 (= lt!57271 (list!1073 (charsOf!182 lt!57276)))))

(declare-fun lt!57284 () Unit!2616)

(assert (=> b!176416 (= lt!57284 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!25 thiss!17480 (rule!1038 lt!57276) lt!57271 (++!680 (list!1073 call!7707) (list!1073 lt!55908))))))

(assert (=> b!176416 (not (matchR!89 (regex!527 (rule!1038 lt!57276)) lt!57271))))

(declare-fun lt!57274 () Unit!2616)

(assert (=> b!176416 (= lt!57274 lt!57284)))

(assert (=> b!176416 false))

(declare-fun b!176415 () Bool)

(assert (=> b!176415 (= e!106984 (= (rule!1038 lt!57276) (get!814 (getRuleFromTag!25 thiss!17480 rules!1920 (tag!705 (rule!1038 lt!57276))))))))

(declare-fun d!45129 () Bool)

(assert (=> d!45129 (isDefined!182 (maxPrefix!143 thiss!17480 rules!1920 (++!680 (list!1073 call!7707) (list!1073 lt!55908))))))

(declare-fun lt!57277 () Unit!2616)

(assert (=> d!45129 (= lt!57277 e!106983)))

(declare-fun c!34916 () Bool)

(assert (=> d!45129 (= c!34916 (isEmpty!1282 (maxPrefix!143 thiss!17480 rules!1920 (++!680 (list!1073 call!7707) (list!1073 lt!55908)))))))

(declare-fun lt!57278 () Unit!2616)

(declare-fun lt!57272 () Unit!2616)

(assert (=> d!45129 (= lt!57278 lt!57272)))

(assert (=> d!45129 e!106984))

(declare-fun res!79625 () Bool)

(assert (=> d!45129 (=> (not res!79625) (not e!106984))))

(assert (=> d!45129 (= res!79625 (isDefined!183 (getRuleFromTag!25 thiss!17480 rules!1920 (tag!705 (rule!1038 lt!57276)))))))

(assert (=> d!45129 (= lt!57272 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!25 thiss!17480 rules!1920 (list!1073 call!7707) lt!57276))))

(declare-fun lt!57283 () Unit!2616)

(declare-fun lt!57286 () Unit!2616)

(assert (=> d!45129 (= lt!57283 lt!57286)))

(declare-fun lt!57279 () List!2946)

(assert (=> d!45129 (isPrefix!232 lt!57279 (++!680 (list!1073 call!7707) (list!1073 lt!55908)))))

(assert (=> d!45129 (= lt!57286 (lemmaPrefixStaysPrefixWhenAddingToSuffix!25 lt!57279 (list!1073 call!7707) (list!1073 lt!55908)))))

(assert (=> d!45129 (= lt!57279 (list!1073 (charsOf!182 lt!57276)))))

(declare-fun lt!57280 () Unit!2616)

(declare-fun lt!57281 () Unit!2616)

(assert (=> d!45129 (= lt!57280 lt!57281)))

(declare-fun lt!57273 () List!2946)

(declare-fun lt!57285 () List!2946)

(assert (=> d!45129 (isPrefix!232 lt!57273 (++!680 lt!57273 lt!57285))))

(assert (=> d!45129 (= lt!57281 (lemmaConcatTwoListThenFirstIsPrefix!129 lt!57273 lt!57285))))

(assert (=> d!45129 (= lt!57285 (_2!1648 (get!811 (maxPrefix!143 thiss!17480 rules!1920 (list!1073 call!7707)))))))

(assert (=> d!45129 (= lt!57273 (list!1073 (charsOf!182 lt!57276)))))

(assert (=> d!45129 (= lt!57276 (head!608 (list!1077 (_1!1647 (lex!213 thiss!17480 rules!1920 (seqFromList!432 (list!1073 call!7707)))))))))

(assert (=> d!45129 (not (isEmpty!1272 rules!1920))))

(assert (=> d!45129 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!40 thiss!17480 rules!1920 (list!1073 call!7707) (list!1073 lt!55908)) lt!57277)))

(assert (= (and d!45129 res!79625) b!176414))

(assert (= (and b!176414 res!79626) b!176415))

(assert (= (and d!45129 c!34916) b!176416))

(assert (= (and d!45129 (not c!34916)) b!176417))

(declare-fun m!177825 () Bool)

(assert (=> b!176414 m!177825))

(declare-fun m!177827 () Bool)

(assert (=> b!176414 m!177827))

(declare-fun m!177829 () Bool)

(assert (=> b!176414 m!177829))

(declare-fun m!177831 () Bool)

(assert (=> b!176414 m!177831))

(assert (=> b!176414 m!177827))

(assert (=> b!176414 m!177825))

(declare-fun m!177833 () Bool)

(assert (=> b!176414 m!177833))

(assert (=> b!176414 m!177831))

(declare-fun m!177835 () Bool)

(assert (=> b!176416 m!177835))

(assert (=> b!176416 m!173013))

(assert (=> b!176416 m!173011))

(declare-fun m!177837 () Bool)

(assert (=> b!176416 m!177837))

(assert (=> b!176416 m!177831))

(assert (=> b!176416 m!177827))

(declare-fun m!177839 () Bool)

(assert (=> b!176416 m!177839))

(assert (=> b!176416 m!177831))

(declare-fun m!177841 () Bool)

(assert (=> b!176416 m!177841))

(declare-fun m!177843 () Bool)

(assert (=> b!176416 m!177843))

(assert (=> b!176416 m!177841))

(assert (=> b!176416 m!177837))

(declare-fun m!177845 () Bool)

(assert (=> b!176416 m!177845))

(assert (=> b!176415 m!177825))

(assert (=> b!176415 m!177825))

(assert (=> b!176415 m!177833))

(assert (=> d!45129 m!177825))

(assert (=> d!45129 m!173013))

(declare-fun m!177847 () Bool)

(assert (=> d!45129 m!177847))

(declare-fun m!177849 () Bool)

(assert (=> d!45129 m!177849))

(declare-fun m!177851 () Bool)

(assert (=> d!45129 m!177851))

(assert (=> d!45129 m!173013))

(declare-fun m!177853 () Bool)

(assert (=> d!45129 m!177853))

(declare-fun m!177855 () Bool)

(assert (=> d!45129 m!177855))

(declare-fun m!177857 () Bool)

(assert (=> d!45129 m!177857))

(assert (=> d!45129 m!177837))

(declare-fun m!177859 () Bool)

(assert (=> d!45129 m!177859))

(assert (=> d!45129 m!177849))

(declare-fun m!177861 () Bool)

(assert (=> d!45129 m!177861))

(assert (=> d!45129 m!177853))

(declare-fun m!177863 () Bool)

(assert (=> d!45129 m!177863))

(declare-fun m!177865 () Bool)

(assert (=> d!45129 m!177865))

(declare-fun m!177867 () Bool)

(assert (=> d!45129 m!177867))

(assert (=> d!45129 m!177831))

(assert (=> d!45129 m!177847))

(declare-fun m!177869 () Bool)

(assert (=> d!45129 m!177869))

(assert (=> d!45129 m!177825))

(declare-fun m!177871 () Bool)

(assert (=> d!45129 m!177871))

(assert (=> d!45129 m!172843))

(assert (=> d!45129 m!173013))

(declare-fun m!177873 () Bool)

(assert (=> d!45129 m!177873))

(assert (=> d!45129 m!173013))

(assert (=> d!45129 m!173011))

(assert (=> d!45129 m!177837))

(assert (=> d!45129 m!177867))

(declare-fun m!177875 () Bool)

(assert (=> d!45129 m!177875))

(assert (=> d!45129 m!177831))

(assert (=> d!45129 m!177827))

(assert (=> d!45129 m!177837))

(assert (=> d!45129 m!177849))

(assert (=> d!45129 m!177855))

(assert (=> d!45129 m!173013))

(assert (=> d!45129 m!173011))

(declare-fun m!177877 () Bool)

(assert (=> d!45129 m!177877))

(assert (=> b!174120 d!45129))

(declare-fun d!45131 () Bool)

(assert (=> d!45131 (= (list!1073 call!7707) (list!1076 (c!34379 call!7707)))))

(declare-fun bs!17633 () Bool)

(assert (= bs!17633 d!45131))

(declare-fun m!177879 () Bool)

(assert (=> bs!17633 m!177879))

(assert (=> b!174120 d!45131))

(declare-fun d!45133 () Bool)

(declare-fun lt!57291 () BalanceConc!1760)

(assert (=> d!45133 (= (list!1073 lt!57291) (printListTailRec!60 thiss!17480 (dropList!92 (singletonSeq!79 call!7709) 0) (list!1073 (BalanceConc!1761 Empty!876))))))

(declare-fun e!106986 () BalanceConc!1760)

(assert (=> d!45133 (= lt!57291 e!106986)))

(declare-fun c!34917 () Bool)

(assert (=> d!45133 (= c!34917 (>= 0 (size!2432 (singletonSeq!79 call!7709))))))

(declare-fun e!106985 () Bool)

(assert (=> d!45133 e!106985))

(declare-fun res!79627 () Bool)

(assert (=> d!45133 (=> (not res!79627) (not e!106985))))

(assert (=> d!45133 (= res!79627 (>= 0 0))))

(assert (=> d!45133 (= (printTailRec!107 thiss!17480 (singletonSeq!79 call!7709) 0 (BalanceConc!1761 Empty!876)) lt!57291)))

(declare-fun b!176418 () Bool)

(assert (=> b!176418 (= e!106985 (<= 0 (size!2432 (singletonSeq!79 call!7709))))))

(declare-fun b!176419 () Bool)

(assert (=> b!176419 (= e!106986 (BalanceConc!1761 Empty!876))))

(declare-fun b!176420 () Bool)

(assert (=> b!176420 (= e!106986 (printTailRec!107 thiss!17480 (singletonSeq!79 call!7709) (+ 0 1) (++!682 (BalanceConc!1761 Empty!876) (charsOf!182 (apply!429 (singletonSeq!79 call!7709) 0)))))))

(declare-fun lt!57293 () List!2948)

(assert (=> b!176420 (= lt!57293 (list!1077 (singletonSeq!79 call!7709)))))

(declare-fun lt!57288 () Unit!2616)

(assert (=> b!176420 (= lt!57288 (lemmaDropApply!132 lt!57293 0))))

(assert (=> b!176420 (= (head!608 (drop!145 lt!57293 0)) (apply!430 lt!57293 0))))

(declare-fun lt!57292 () Unit!2616)

(assert (=> b!176420 (= lt!57292 lt!57288)))

(declare-fun lt!57290 () List!2948)

(assert (=> b!176420 (= lt!57290 (list!1077 (singletonSeq!79 call!7709)))))

(declare-fun lt!57287 () Unit!2616)

(assert (=> b!176420 (= lt!57287 (lemmaDropTail!124 lt!57290 0))))

(assert (=> b!176420 (= (tail!348 (drop!145 lt!57290 0)) (drop!145 lt!57290 (+ 0 1)))))

(declare-fun lt!57289 () Unit!2616)

(assert (=> b!176420 (= lt!57289 lt!57287)))

(assert (= (and d!45133 res!79627) b!176418))

(assert (= (and d!45133 c!34917) b!176419))

(assert (= (and d!45133 (not c!34917)) b!176420))

(declare-fun m!177881 () Bool)

(assert (=> d!45133 m!177881))

(assert (=> d!45133 m!173897))

(assert (=> d!45133 m!173009))

(declare-fun m!177883 () Bool)

(assert (=> d!45133 m!177883))

(assert (=> d!45133 m!177883))

(assert (=> d!45133 m!173897))

(declare-fun m!177885 () Bool)

(assert (=> d!45133 m!177885))

(assert (=> d!45133 m!173009))

(declare-fun m!177887 () Bool)

(assert (=> d!45133 m!177887))

(assert (=> b!176418 m!173009))

(assert (=> b!176418 m!177887))

(declare-fun m!177889 () Bool)

(assert (=> b!176420 m!177889))

(declare-fun m!177891 () Bool)

(assert (=> b!176420 m!177891))

(declare-fun m!177893 () Bool)

(assert (=> b!176420 m!177893))

(declare-fun m!177895 () Bool)

(assert (=> b!176420 m!177895))

(declare-fun m!177897 () Bool)

(assert (=> b!176420 m!177897))

(declare-fun m!177899 () Bool)

(assert (=> b!176420 m!177899))

(declare-fun m!177901 () Bool)

(assert (=> b!176420 m!177901))

(declare-fun m!177903 () Bool)

(assert (=> b!176420 m!177903))

(declare-fun m!177905 () Bool)

(assert (=> b!176420 m!177905))

(assert (=> b!176420 m!173009))

(assert (=> b!176420 m!177901))

(declare-fun m!177907 () Bool)

(assert (=> b!176420 m!177907))

(declare-fun m!177909 () Bool)

(assert (=> b!176420 m!177909))

(assert (=> b!176420 m!177899))

(assert (=> b!176420 m!173009))

(assert (=> b!176420 m!177819))

(assert (=> b!176420 m!173009))

(assert (=> b!176420 m!177909))

(assert (=> b!176420 m!177889))

(assert (=> b!176420 m!177905))

(declare-fun m!177911 () Bool)

(assert (=> b!176420 m!177911))

(assert (=> b!174120 d!45133))

(declare-fun d!45135 () Bool)

(assert (=> d!45135 (= (list!1073 lt!56150) (list!1076 (c!34379 lt!56150)))))

(declare-fun bs!17634 () Bool)

(assert (= bs!17634 d!45135))

(declare-fun m!177913 () Bool)

(assert (=> bs!17634 m!177913))

(assert (=> d!44109 d!45135))

(assert (=> bm!7735 d!44109))

(assert (=> d!43967 d!44487))

(assert (=> d!43967 d!44569))

(declare-fun d!45137 () Bool)

(assert (=> d!45137 (= (isDefined!182 (maxPrefixZipper!44 thiss!17480 rules!1920 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))) (not (isEmpty!1282 (maxPrefixZipper!44 thiss!17480 rules!1920 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))))))))

(declare-fun bs!17635 () Bool)

(assert (= bs!17635 d!45137))

(assert (=> bs!17635 m!173149))

(declare-fun m!177915 () Bool)

(assert (=> bs!17635 m!177915))

(assert (=> d!43967 d!45137))

(assert (=> d!43967 d!44401))

(assert (=> d!43967 d!44589))

(declare-fun d!45139 () Bool)

(assert (=> d!45139 (isPrefix!232 lt!55986 lt!55984)))

(declare-fun lt!57294 () Unit!2616)

(assert (=> d!45139 (= lt!57294 (choose!1854 lt!55986 lt!55984))))

(assert (=> d!45139 (= (lemmaIsPrefixRefl!140 lt!55986 lt!55984) lt!57294)))

(declare-fun bs!17636 () Bool)

(assert (= bs!17636 d!45139))

(assert (=> bs!17636 m!173157))

(declare-fun m!177917 () Bool)

(assert (=> bs!17636 m!177917))

(assert (=> d!43967 d!45139))

(declare-fun d!45141 () Bool)

(declare-fun e!106987 () Bool)

(assert (=> d!45141 e!106987))

(declare-fun res!79629 () Bool)

(assert (=> d!45141 (=> res!79629 e!106987)))

(declare-fun lt!57295 () Bool)

(assert (=> d!45141 (= res!79629 (not lt!57295))))

(declare-fun e!106989 () Bool)

(assert (=> d!45141 (= lt!57295 e!106989)))

(declare-fun res!79631 () Bool)

(assert (=> d!45141 (=> res!79631 e!106989)))

(assert (=> d!45141 (= res!79631 ((_ is Nil!2936) lt!55986))))

(assert (=> d!45141 (= (isPrefix!232 lt!55986 lt!55984) lt!57295)))

(declare-fun b!176424 () Bool)

(assert (=> b!176424 (= e!106987 (>= (size!2431 lt!55984) (size!2431 lt!55986)))))

(declare-fun b!176422 () Bool)

(declare-fun res!79630 () Bool)

(declare-fun e!106988 () Bool)

(assert (=> b!176422 (=> (not res!79630) (not e!106988))))

(assert (=> b!176422 (= res!79630 (= (head!609 lt!55986) (head!609 lt!55984)))))

(declare-fun b!176423 () Bool)

(assert (=> b!176423 (= e!106988 (isPrefix!232 (tail!349 lt!55986) (tail!349 lt!55984)))))

(declare-fun b!176421 () Bool)

(assert (=> b!176421 (= e!106989 e!106988)))

(declare-fun res!79628 () Bool)

(assert (=> b!176421 (=> (not res!79628) (not e!106988))))

(assert (=> b!176421 (= res!79628 (not ((_ is Nil!2936) lt!55984)))))

(assert (= (and d!45141 (not res!79631)) b!176421))

(assert (= (and b!176421 res!79628) b!176422))

(assert (= (and b!176422 res!79630) b!176423))

(assert (= (and d!45141 (not res!79629)) b!176424))

(declare-fun m!177919 () Bool)

(assert (=> b!176424 m!177919))

(declare-fun m!177921 () Bool)

(assert (=> b!176424 m!177921))

(declare-fun m!177923 () Bool)

(assert (=> b!176422 m!177923))

(declare-fun m!177925 () Bool)

(assert (=> b!176422 m!177925))

(declare-fun m!177927 () Bool)

(assert (=> b!176423 m!177927))

(declare-fun m!177929 () Bool)

(assert (=> b!176423 m!177929))

(assert (=> b!176423 m!177927))

(assert (=> b!176423 m!177929))

(declare-fun m!177931 () Bool)

(assert (=> b!176423 m!177931))

(assert (=> d!43967 d!45141))

(assert (=> bs!17229 d!44081))

(declare-fun b!176425 () Bool)

(declare-fun e!106990 () Option!331)

(declare-fun call!7909 () Option!331)

(assert (=> b!176425 (= e!106990 call!7909)))

(declare-fun b!176426 () Bool)

(declare-fun res!79633 () Bool)

(declare-fun e!106991 () Bool)

(assert (=> b!176426 (=> (not res!79633) (not e!106991))))

(declare-fun lt!57299 () Option!331)

(assert (=> b!176426 (= res!79633 (= (++!680 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!57299)))) (_2!1648 (get!811 lt!57299))) lt!55823))))

(declare-fun b!176427 () Bool)

(declare-fun lt!57296 () Option!331)

(declare-fun lt!57300 () Option!331)

(assert (=> b!176427 (= e!106990 (ite (and ((_ is None!330) lt!57296) ((_ is None!330) lt!57300)) None!330 (ite ((_ is None!330) lt!57300) lt!57296 (ite ((_ is None!330) lt!57296) lt!57300 (ite (>= (size!2427 (_1!1648 (v!13783 lt!57296))) (size!2427 (_1!1648 (v!13783 lt!57300)))) lt!57296 lt!57300)))))))

(assert (=> b!176427 (= lt!57296 call!7909)))

(assert (=> b!176427 (= lt!57300 (maxPrefix!143 thiss!17480 (t!27585 (t!27585 rules!1920)) lt!55823))))

(declare-fun bm!7904 () Bool)

(assert (=> bm!7904 (= call!7909 (maxPrefixOneRule!75 thiss!17480 (h!8334 (t!27585 rules!1920)) lt!55823))))

(declare-fun b!176428 () Bool)

(assert (=> b!176428 (= e!106991 (contains!476 (t!27585 rules!1920) (rule!1038 (_1!1648 (get!811 lt!57299)))))))

(declare-fun b!176429 () Bool)

(declare-fun res!79632 () Bool)

(assert (=> b!176429 (=> (not res!79632) (not e!106991))))

(assert (=> b!176429 (= res!79632 (= (list!1073 (charsOf!182 (_1!1648 (get!811 lt!57299)))) (originalCharacters!570 (_1!1648 (get!811 lt!57299)))))))

(declare-fun b!176430 () Bool)

(declare-fun res!79635 () Bool)

(assert (=> b!176430 (=> (not res!79635) (not e!106991))))

(assert (=> b!176430 (= res!79635 (< (size!2431 (_2!1648 (get!811 lt!57299))) (size!2431 lt!55823)))))

(declare-fun d!45143 () Bool)

(declare-fun e!106992 () Bool)

(assert (=> d!45143 e!106992))

(declare-fun res!79638 () Bool)

(assert (=> d!45143 (=> res!79638 e!106992)))

(assert (=> d!45143 (= res!79638 (isEmpty!1282 lt!57299))))

(assert (=> d!45143 (= lt!57299 e!106990)))

(declare-fun c!34918 () Bool)

(assert (=> d!45143 (= c!34918 (and ((_ is Cons!2937) (t!27585 rules!1920)) ((_ is Nil!2937) (t!27585 (t!27585 rules!1920)))))))

(declare-fun lt!57298 () Unit!2616)

(declare-fun lt!57297 () Unit!2616)

(assert (=> d!45143 (= lt!57298 lt!57297)))

(assert (=> d!45143 (isPrefix!232 lt!55823 lt!55823)))

(assert (=> d!45143 (= lt!57297 (lemmaIsPrefixRefl!140 lt!55823 lt!55823))))

(assert (=> d!45143 (rulesValidInductive!126 thiss!17480 (t!27585 rules!1920))))

(assert (=> d!45143 (= (maxPrefix!143 thiss!17480 (t!27585 rules!1920) lt!55823) lt!57299)))

(declare-fun b!176431 () Bool)

(declare-fun res!79634 () Bool)

(assert (=> b!176431 (=> (not res!79634) (not e!106991))))

(assert (=> b!176431 (= res!79634 (= (value!19335 (_1!1648 (get!811 lt!57299))) (apply!432 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!57299)))) (seqFromList!432 (originalCharacters!570 (_1!1648 (get!811 lt!57299)))))))))

(declare-fun b!176432 () Bool)

(assert (=> b!176432 (= e!106992 e!106991)))

(declare-fun res!79636 () Bool)

(assert (=> b!176432 (=> (not res!79636) (not e!106991))))

(assert (=> b!176432 (= res!79636 (isDefined!182 lt!57299))))

(declare-fun b!176433 () Bool)

(declare-fun res!79637 () Bool)

(assert (=> b!176433 (=> (not res!79637) (not e!106991))))

(assert (=> b!176433 (= res!79637 (matchR!89 (regex!527 (rule!1038 (_1!1648 (get!811 lt!57299)))) (list!1073 (charsOf!182 (_1!1648 (get!811 lt!57299))))))))

(assert (= (and d!45143 c!34918) b!176425))

(assert (= (and d!45143 (not c!34918)) b!176427))

(assert (= (or b!176425 b!176427) bm!7904))

(assert (= (and d!45143 (not res!79638)) b!176432))

(assert (= (and b!176432 res!79636) b!176429))

(assert (= (and b!176429 res!79632) b!176430))

(assert (= (and b!176430 res!79635) b!176426))

(assert (= (and b!176426 res!79633) b!176431))

(assert (= (and b!176431 res!79634) b!176433))

(assert (= (and b!176433 res!79637) b!176428))

(declare-fun m!177933 () Bool)

(assert (=> b!176428 m!177933))

(declare-fun m!177935 () Bool)

(assert (=> b!176428 m!177935))

(declare-fun m!177937 () Bool)

(assert (=> d!45143 m!177937))

(assert (=> d!45143 m!173839))

(assert (=> d!45143 m!173841))

(assert (=> d!45143 m!175223))

(assert (=> b!176433 m!177933))

(declare-fun m!177939 () Bool)

(assert (=> b!176433 m!177939))

(assert (=> b!176433 m!177939))

(declare-fun m!177941 () Bool)

(assert (=> b!176433 m!177941))

(assert (=> b!176433 m!177941))

(declare-fun m!177943 () Bool)

(assert (=> b!176433 m!177943))

(assert (=> b!176430 m!177933))

(declare-fun m!177945 () Bool)

(assert (=> b!176430 m!177945))

(assert (=> b!176430 m!172917))

(declare-fun m!177947 () Bool)

(assert (=> bm!7904 m!177947))

(declare-fun m!177949 () Bool)

(assert (=> b!176432 m!177949))

(assert (=> b!176426 m!177933))

(assert (=> b!176426 m!177939))

(assert (=> b!176426 m!177939))

(assert (=> b!176426 m!177941))

(assert (=> b!176426 m!177941))

(declare-fun m!177951 () Bool)

(assert (=> b!176426 m!177951))

(declare-fun m!177953 () Bool)

(assert (=> b!176427 m!177953))

(assert (=> b!176429 m!177933))

(assert (=> b!176429 m!177939))

(assert (=> b!176429 m!177939))

(assert (=> b!176429 m!177941))

(assert (=> b!176431 m!177933))

(declare-fun m!177955 () Bool)

(assert (=> b!176431 m!177955))

(assert (=> b!176431 m!177955))

(declare-fun m!177957 () Bool)

(assert (=> b!176431 m!177957))

(assert (=> b!174695 d!45143))

(assert (=> b!174546 d!44361))

(declare-fun d!45145 () Bool)

(declare-fun lt!57301 () Int)

(assert (=> d!45145 (>= lt!57301 0)))

(declare-fun e!106993 () Int)

(assert (=> d!45145 (= lt!57301 e!106993)))

(declare-fun c!34919 () Bool)

(assert (=> d!45145 (= c!34919 ((_ is Nil!2936) (originalCharacters!570 separatorToken!170)))))

(assert (=> d!45145 (= (size!2431 (originalCharacters!570 separatorToken!170)) lt!57301)))

(declare-fun b!176434 () Bool)

(assert (=> b!176434 (= e!106993 0)))

(declare-fun b!176435 () Bool)

(assert (=> b!176435 (= e!106993 (+ 1 (size!2431 (t!27584 (originalCharacters!570 separatorToken!170)))))))

(assert (= (and d!45145 c!34919) b!176434))

(assert (= (and d!45145 (not c!34919)) b!176435))

(declare-fun m!177959 () Bool)

(assert (=> b!176435 m!177959))

(assert (=> b!174637 d!45145))

(declare-fun d!45147 () Bool)

(assert (=> d!45147 (= (get!811 (maxPrefix!143 thiss!17480 rules!1920 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))) (v!13783 (maxPrefix!143 thiss!17480 rules!1920 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))

(assert (=> b!174231 d!45147))

(assert (=> b!174231 d!44587))

(assert (=> b!174231 d!44589))

(declare-fun b!176436 () Bool)

(declare-fun e!106994 () Option!331)

(declare-fun call!7910 () Option!331)

(assert (=> b!176436 (= e!106994 call!7910)))

(declare-fun b!176437 () Bool)

(declare-fun res!79640 () Bool)

(declare-fun e!106995 () Bool)

(assert (=> b!176437 (=> (not res!79640) (not e!106995))))

(declare-fun lt!57305 () Option!331)

(assert (=> b!176437 (= res!79640 (= (++!680 (list!1073 (charsOf!182 (_1!1648 (get!811 lt!57305)))) (_2!1648 (get!811 lt!57305))) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))))))

(declare-fun b!176438 () Bool)

(declare-fun lt!57302 () Option!331)

(declare-fun lt!57306 () Option!331)

(assert (=> b!176438 (= e!106994 (ite (and ((_ is None!330) lt!57302) ((_ is None!330) lt!57306)) None!330 (ite ((_ is None!330) lt!57306) lt!57302 (ite ((_ is None!330) lt!57302) lt!57306 (ite (>= (size!2427 (_1!1648 (v!13783 lt!57302))) (size!2427 (_1!1648 (v!13783 lt!57306)))) lt!57302 lt!57306)))))))

(assert (=> b!176438 (= lt!57302 call!7910)))

(assert (=> b!176438 (= lt!57306 (maxPrefix!143 thiss!17480 (t!27585 rules!1920) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))))))

(declare-fun bm!7905 () Bool)

(assert (=> bm!7905 (= call!7910 (maxPrefixOneRule!75 thiss!17480 (h!8334 rules!1920) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))))))

(declare-fun b!176439 () Bool)

(assert (=> b!176439 (= e!106995 (contains!476 rules!1920 (rule!1038 (_1!1648 (get!811 lt!57305)))))))

(declare-fun b!176440 () Bool)

(declare-fun res!79639 () Bool)

(assert (=> b!176440 (=> (not res!79639) (not e!106995))))

(assert (=> b!176440 (= res!79639 (= (list!1073 (charsOf!182 (_1!1648 (get!811 lt!57305)))) (originalCharacters!570 (_1!1648 (get!811 lt!57305)))))))

(declare-fun b!176441 () Bool)

(declare-fun res!79642 () Bool)

(assert (=> b!176441 (=> (not res!79642) (not e!106995))))

(assert (=> b!176441 (= res!79642 (< (size!2431 (_2!1648 (get!811 lt!57305))) (size!2431 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))

(declare-fun d!45149 () Bool)

(declare-fun e!106996 () Bool)

(assert (=> d!45149 e!106996))

(declare-fun res!79645 () Bool)

(assert (=> d!45149 (=> res!79645 e!106996)))

(assert (=> d!45149 (= res!79645 (isEmpty!1282 lt!57305))))

(assert (=> d!45149 (= lt!57305 e!106994)))

(declare-fun c!34920 () Bool)

(assert (=> d!45149 (= c!34920 (and ((_ is Cons!2937) rules!1920) ((_ is Nil!2937) (t!27585 rules!1920))))))

(declare-fun lt!57304 () Unit!2616)

(declare-fun lt!57303 () Unit!2616)

(assert (=> d!45149 (= lt!57304 lt!57303)))

(assert (=> d!45149 (isPrefix!232 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))

(assert (=> d!45149 (= lt!57303 (lemmaIsPrefixRefl!140 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))) (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))))))

(assert (=> d!45149 (rulesValidInductive!126 thiss!17480 rules!1920)))

(assert (=> d!45149 (= (maxPrefix!143 thiss!17480 rules!1920 (list!1073 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))) lt!57305)))

(declare-fun b!176442 () Bool)

(declare-fun res!79641 () Bool)

(assert (=> b!176442 (=> (not res!79641) (not e!106995))))

(assert (=> b!176442 (= res!79641 (= (value!19335 (_1!1648 (get!811 lt!57305))) (apply!432 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!57305)))) (seqFromList!432 (originalCharacters!570 (_1!1648 (get!811 lt!57305)))))))))

(declare-fun b!176443 () Bool)

(assert (=> b!176443 (= e!106996 e!106995)))

(declare-fun res!79643 () Bool)

(assert (=> b!176443 (=> (not res!79643) (not e!106995))))

(assert (=> b!176443 (= res!79643 (isDefined!182 lt!57305))))

(declare-fun b!176444 () Bool)

(declare-fun res!79644 () Bool)

(assert (=> b!176444 (=> (not res!79644) (not e!106995))))

(assert (=> b!176444 (= res!79644 (matchR!89 (regex!527 (rule!1038 (_1!1648 (get!811 lt!57305)))) (list!1073 (charsOf!182 (_1!1648 (get!811 lt!57305))))))))

(assert (= (and d!45149 c!34920) b!176436))

(assert (= (and d!45149 (not c!34920)) b!176438))

(assert (= (or b!176436 b!176438) bm!7905))

(assert (= (and d!45149 (not res!79645)) b!176443))

(assert (= (and b!176443 res!79643) b!176440))

(assert (= (and b!176440 res!79639) b!176441))

(assert (= (and b!176441 res!79642) b!176437))

(assert (= (and b!176437 res!79640) b!176442))

(assert (= (and b!176442 res!79641) b!176444))

(assert (= (and b!176444 res!79644) b!176439))

(declare-fun m!177961 () Bool)

(assert (=> b!176439 m!177961))

(declare-fun m!177963 () Bool)

(assert (=> b!176439 m!177963))

(declare-fun m!177965 () Bool)

(assert (=> d!45149 m!177965))

(assert (=> d!45149 m!173145))

(assert (=> d!45149 m!173145))

(assert (=> d!45149 m!175621))

(assert (=> d!45149 m!173145))

(assert (=> d!45149 m!173145))

(assert (=> d!45149 m!175623))

(assert (=> d!45149 m!173153))

(assert (=> b!176444 m!177961))

(declare-fun m!177967 () Bool)

(assert (=> b!176444 m!177967))

(assert (=> b!176444 m!177967))

(declare-fun m!177969 () Bool)

(assert (=> b!176444 m!177969))

(assert (=> b!176444 m!177969))

(declare-fun m!177971 () Bool)

(assert (=> b!176444 m!177971))

(assert (=> b!176441 m!177961))

(declare-fun m!177973 () Bool)

(assert (=> b!176441 m!177973))

(assert (=> b!176441 m!173145))

(declare-fun m!177975 () Bool)

(assert (=> b!176441 m!177975))

(assert (=> bm!7905 m!173145))

(assert (=> bm!7905 m!176017))

(declare-fun m!177977 () Bool)

(assert (=> b!176443 m!177977))

(assert (=> b!176437 m!177961))

(assert (=> b!176437 m!177967))

(assert (=> b!176437 m!177967))

(assert (=> b!176437 m!177969))

(assert (=> b!176437 m!177969))

(declare-fun m!177979 () Bool)

(assert (=> b!176437 m!177979))

(assert (=> b!176438 m!173145))

(assert (=> b!176438 m!175231))

(assert (=> b!176440 m!177961))

(assert (=> b!176440 m!177967))

(assert (=> b!176440 m!177967))

(assert (=> b!176440 m!177969))

(assert (=> b!176442 m!177961))

(declare-fun m!177981 () Bool)

(assert (=> b!176442 m!177981))

(assert (=> b!176442 m!177981))

(declare-fun m!177983 () Bool)

(assert (=> b!176442 m!177983))

(assert (=> b!174231 d!45149))

(assert (=> b!174231 d!44583))

(declare-fun d!45151 () Bool)

(declare-fun lt!57307 () Token!798)

(assert (=> d!45151 (= lt!57307 (apply!430 (list!1077 (_1!1647 lt!56120)) 0))))

(assert (=> d!45151 (= lt!57307 (apply!434 (c!34381 (_1!1647 lt!56120)) 0))))

(declare-fun e!106997 () Bool)

(assert (=> d!45151 e!106997))

(declare-fun res!79646 () Bool)

(assert (=> d!45151 (=> (not res!79646) (not e!106997))))

(assert (=> d!45151 (= res!79646 (<= 0 0))))

(assert (=> d!45151 (= (apply!429 (_1!1647 lt!56120) 0) lt!57307)))

(declare-fun b!176445 () Bool)

(assert (=> b!176445 (= e!106997 (< 0 (size!2432 (_1!1647 lt!56120))))))

(assert (= (and d!45151 res!79646) b!176445))

(assert (=> d!45151 m!174385))

(assert (=> d!45151 m!174385))

(declare-fun m!177985 () Bool)

(assert (=> d!45151 m!177985))

(declare-fun m!177987 () Bool)

(assert (=> d!45151 m!177987))

(assert (=> b!176445 m!173615))

(assert (=> b!174509 d!45151))

(declare-fun b!176448 () Bool)

(declare-fun res!79649 () Bool)

(declare-fun e!106998 () Bool)

(assert (=> b!176448 (=> (not res!79649) (not e!106998))))

(assert (=> b!176448 (= res!79649 (>= (height!98 (++!685 (c!34379 call!7770) (c!34379 lt!56132))) (max!0 (height!98 (c!34379 call!7770)) (height!98 (c!34379 lt!56132)))))))

(declare-fun b!176446 () Bool)

(declare-fun res!79648 () Bool)

(assert (=> b!176446 (=> (not res!79648) (not e!106998))))

(assert (=> b!176446 (= res!79648 (isBalanced!246 (++!685 (c!34379 call!7770) (c!34379 lt!56132))))))

(declare-fun d!45153 () Bool)

(assert (=> d!45153 e!106998))

(declare-fun res!79650 () Bool)

(assert (=> d!45153 (=> (not res!79650) (not e!106998))))

(assert (=> d!45153 (= res!79650 (appendAssocInst!33 (c!34379 call!7770) (c!34379 lt!56132)))))

(declare-fun lt!57308 () BalanceConc!1760)

(assert (=> d!45153 (= lt!57308 (BalanceConc!1761 (++!685 (c!34379 call!7770) (c!34379 lt!56132))))))

(assert (=> d!45153 (= (++!682 call!7770 lt!56132) lt!57308)))

(declare-fun b!176447 () Bool)

(declare-fun res!79647 () Bool)

(assert (=> b!176447 (=> (not res!79647) (not e!106998))))

(assert (=> b!176447 (= res!79647 (<= (height!98 (++!685 (c!34379 call!7770) (c!34379 lt!56132))) (+ (max!0 (height!98 (c!34379 call!7770)) (height!98 (c!34379 lt!56132))) 1)))))

(declare-fun b!176449 () Bool)

(assert (=> b!176449 (= e!106998 (= (list!1073 lt!57308) (++!680 (list!1073 call!7770) (list!1073 lt!56132))))))

(assert (= (and d!45153 res!79650) b!176446))

(assert (= (and b!176446 res!79648) b!176447))

(assert (= (and b!176447 res!79647) b!176448))

(assert (= (and b!176448 res!79649) b!176449))

(declare-fun m!177989 () Bool)

(assert (=> b!176447 m!177989))

(declare-fun m!177991 () Bool)

(assert (=> b!176447 m!177991))

(declare-fun m!177993 () Bool)

(assert (=> b!176447 m!177993))

(assert (=> b!176447 m!177251))

(assert (=> b!176447 m!177993))

(assert (=> b!176447 m!177251))

(declare-fun m!177995 () Bool)

(assert (=> b!176447 m!177995))

(assert (=> b!176447 m!177989))

(declare-fun m!177997 () Bool)

(assert (=> b!176449 m!177997))

(declare-fun m!177999 () Bool)

(assert (=> b!176449 m!177999))

(assert (=> b!176449 m!173705))

(assert (=> b!176449 m!177999))

(assert (=> b!176449 m!173705))

(declare-fun m!178001 () Bool)

(assert (=> b!176449 m!178001))

(assert (=> b!176446 m!177989))

(assert (=> b!176446 m!177989))

(declare-fun m!178003 () Bool)

(assert (=> b!176446 m!178003))

(assert (=> b!176448 m!177989))

(assert (=> b!176448 m!177991))

(assert (=> b!176448 m!177993))

(assert (=> b!176448 m!177251))

(assert (=> b!176448 m!177993))

(assert (=> b!176448 m!177251))

(assert (=> b!176448 m!177995))

(assert (=> b!176448 m!177989))

(declare-fun m!178005 () Bool)

(assert (=> d!45153 m!178005))

(assert (=> d!45153 m!177989))

(assert (=> b!174538 d!45153))

(declare-fun d!45155 () Bool)

(declare-fun lt!57309 () Int)

(assert (=> d!45155 (>= lt!57309 0)))

(declare-fun e!106999 () Int)

(assert (=> d!45155 (= lt!57309 e!106999)))

(declare-fun c!34921 () Bool)

(assert (=> d!45155 (= c!34921 ((_ is Nil!2936) (_2!1648 (get!811 lt!56168))))))

(assert (=> d!45155 (= (size!2431 (_2!1648 (get!811 lt!56168))) lt!57309)))

(declare-fun b!176450 () Bool)

(assert (=> b!176450 (= e!106999 0)))

(declare-fun b!176451 () Bool)

(assert (=> b!176451 (= e!106999 (+ 1 (size!2431 (t!27584 (_2!1648 (get!811 lt!56168))))))))

(assert (= (and d!45155 c!34921) b!176450))

(assert (= (and d!45155 (not c!34921)) b!176451))

(declare-fun m!178007 () Bool)

(assert (=> b!176451 m!178007))

(assert (=> b!174698 d!45155))

(assert (=> b!174698 d!44411))

(assert (=> b!174698 d!44593))

(declare-fun d!45157 () Bool)

(declare-fun lt!57310 () BalanceConc!1760)

(assert (=> d!45157 (= (list!1073 lt!57310) (originalCharacters!570 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771))))))

(assert (=> d!45157 (= lt!57310 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771))))) (value!19335 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771)))))))

(assert (=> d!45157 (= (charsOf!182 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771))) lt!57310)))

(declare-fun b_lambda!4177 () Bool)

(assert (=> (not b_lambda!4177) (not d!45157)))

(declare-fun t!27908 () Bool)

(declare-fun tb!7375 () Bool)

(assert (=> (and b!174773 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771)))))) t!27908) tb!7375))

(declare-fun tp!85136 () Bool)

(declare-fun e!107000 () Bool)

(declare-fun b!176452 () Bool)

(assert (=> b!176452 (= e!107000 (and (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771))))) (value!19335 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771)))))) tp!85136))))

(declare-fun result!10132 () Bool)

(assert (=> tb!7375 (= result!10132 (and (inv!3770 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771))))) (value!19335 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771))))) e!107000))))

(assert (= tb!7375 b!176452))

(declare-fun m!178009 () Bool)

(assert (=> b!176452 m!178009))

(declare-fun m!178011 () Bool)

(assert (=> tb!7375 m!178011))

(assert (=> d!45157 t!27908))

(declare-fun b_and!11915 () Bool)

(assert (= b_and!11911 (and (=> t!27908 result!10132) b_and!11915)))

(declare-fun t!27910 () Bool)

(declare-fun tb!7377 () Bool)

(assert (=> (and b!174005 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771)))))) t!27910) tb!7377))

(declare-fun result!10134 () Bool)

(assert (= result!10134 result!10132))

(assert (=> d!45157 t!27910))

(declare-fun b_and!11917 () Bool)

(assert (= b_and!11905 (and (=> t!27910 result!10134) b_and!11917)))

(declare-fun tb!7379 () Bool)

(declare-fun t!27912 () Bool)

(assert (=> (and b!174009 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771)))))) t!27912) tb!7379))

(declare-fun result!10136 () Bool)

(assert (= result!10136 result!10132))

(assert (=> d!45157 t!27912))

(declare-fun b_and!11919 () Bool)

(assert (= b_and!11907 (and (=> t!27912 result!10136) b_and!11919)))

(declare-fun t!27914 () Bool)

(declare-fun tb!7381 () Bool)

(assert (=> (and b!174759 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771)))))) t!27914) tb!7381))

(declare-fun result!10138 () Bool)

(assert (= result!10138 result!10132))

(assert (=> d!45157 t!27914))

(declare-fun b_and!11921 () Bool)

(assert (= b_and!11913 (and (=> t!27914 result!10138) b_and!11921)))

(declare-fun tb!7383 () Bool)

(declare-fun t!27916 () Bool)

(assert (=> (and b!174015 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771)))))) t!27916) tb!7383))

(declare-fun result!10140 () Bool)

(assert (= result!10140 result!10132))

(assert (=> d!45157 t!27916))

(declare-fun b_and!11923 () Bool)

(assert (= b_and!11909 (and (=> t!27916 result!10140) b_and!11923)))

(declare-fun m!178013 () Bool)

(assert (=> d!45157 m!178013))

(declare-fun m!178015 () Bool)

(assert (=> d!45157 m!178015))

(assert (=> bm!7766 d!45157))

(declare-fun d!45159 () Bool)

(declare-fun lt!57311 () Int)

(assert (=> d!45159 (>= lt!57311 0)))

(declare-fun e!107001 () Int)

(assert (=> d!45159 (= lt!57311 e!107001)))

(declare-fun c!34922 () Bool)

(assert (=> d!45159 (= c!34922 ((_ is Nil!2936) (originalCharacters!570 (h!8335 tokens!465))))))

(assert (=> d!45159 (= (size!2431 (originalCharacters!570 (h!8335 tokens!465))) lt!57311)))

(declare-fun b!176453 () Bool)

(assert (=> b!176453 (= e!107001 0)))

(declare-fun b!176454 () Bool)

(assert (=> b!176454 (= e!107001 (+ 1 (size!2431 (t!27584 (originalCharacters!570 (h!8335 tokens!465))))))))

(assert (= (and d!45159 c!34922) b!176453))

(assert (= (and d!45159 (not c!34922)) b!176454))

(declare-fun m!178017 () Bool)

(assert (=> b!176454 m!178017))

(assert (=> b!174052 d!45159))

(assert (=> bm!7762 d!44739))

(declare-fun b!176463 () Bool)

(declare-fun e!107009 () Bool)

(declare-fun e!107010 () Bool)

(assert (=> b!176463 (= e!107009 e!107010)))

(declare-fun res!79655 () Bool)

(assert (=> b!176463 (= res!79655 (not ((_ is Cons!2937) rules!1920)))))

(assert (=> b!176463 (=> res!79655 e!107010)))

(declare-fun d!45161 () Bool)

(declare-fun c!34925 () Bool)

(assert (=> d!45161 (= c!34925 (and ((_ is Cons!2937) rules!1920) (not (= (isSeparator!527 (h!8334 rules!1920)) (isSeparator!527 (h!8334 rules!1920))))))))

(assert (=> d!45161 (= (ruleDisjointCharsFromAllFromOtherType!42 (h!8334 rules!1920) rules!1920) e!107009)))

(declare-fun b!176464 () Bool)

(declare-fun e!107008 () Bool)

(declare-fun call!7913 () Bool)

(assert (=> b!176464 (= e!107008 call!7913)))

(declare-fun b!176465 () Bool)

(assert (=> b!176465 (= e!107009 e!107008)))

(declare-fun res!79656 () Bool)

(declare-fun rulesUseDisjointChars!28 (Rule!854 Rule!854) Bool)

(assert (=> b!176465 (= res!79656 (rulesUseDisjointChars!28 (h!8334 rules!1920) (h!8334 rules!1920)))))

(assert (=> b!176465 (=> (not res!79656) (not e!107008))))

(declare-fun bm!7908 () Bool)

(assert (=> bm!7908 (= call!7913 (ruleDisjointCharsFromAllFromOtherType!42 (h!8334 rules!1920) (t!27585 rules!1920)))))

(declare-fun b!176466 () Bool)

(assert (=> b!176466 (= e!107010 call!7913)))

(assert (= (and d!45161 c!34925) b!176465))

(assert (= (and d!45161 (not c!34925)) b!176463))

(assert (= (and b!176465 res!79656) b!176464))

(assert (= (and b!176463 (not res!79655)) b!176466))

(assert (= (or b!176464 b!176466) bm!7908))

(declare-fun m!178019 () Bool)

(assert (=> b!176465 m!178019))

(declare-fun m!178021 () Bool)

(assert (=> bm!7908 m!178021))

(assert (=> b!174260 d!45161))

(declare-fun d!45163 () Bool)

(assert (=> d!45163 (= (list!1077 (_1!1647 lt!56071)) (list!1080 (c!34381 (_1!1647 lt!56071))))))

(declare-fun bs!17637 () Bool)

(assert (= bs!17637 d!45163))

(declare-fun m!178023 () Bool)

(assert (=> bs!17637 m!178023))

(assert (=> b!174395 d!45163))

(assert (=> b!174395 d!44455))

(assert (=> b!174395 d!44469))

(declare-fun bs!17638 () Bool)

(declare-fun d!45165 () Bool)

(assert (= bs!17638 (and d!45165 d!44487)))

(declare-fun lambda!5110 () Int)

(assert (=> bs!17638 (= lambda!5110 lambda!5070)))

(assert (=> d!45165 true))

(declare-fun lt!57314 () Bool)

(assert (=> d!45165 (= lt!57314 (rulesValidInductive!126 thiss!17480 rules!1920))))

(assert (=> d!45165 (= lt!57314 (forall!587 rules!1920 lambda!5110))))

(assert (=> d!45165 (= (rulesValid!148 thiss!17480 rules!1920) lt!57314)))

(declare-fun bs!17639 () Bool)

(assert (= bs!17639 d!45165))

(assert (=> bs!17639 m!173153))

(declare-fun m!178025 () Bool)

(assert (=> bs!17639 m!178025))

(assert (=> d!43979 d!45165))

(declare-fun d!45167 () Bool)

(assert (=> d!45167 (= (isEmpty!1276 (maxPrefixZipperSequence!106 thiss!17480 rules!1920 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465))))) (not ((_ is Some!329) (maxPrefixZipperSequence!106 thiss!17480 rules!1920 (seqFromList!432 (originalCharacters!570 (h!8335 tokens!465)))))))))

(assert (=> d!43965 d!45167))

(assert (=> b!174434 d!45051))

(assert (=> b!174235 d!44583))

(assert (=> b!174235 d!45147))

(assert (=> b!174235 d!45149))

(assert (=> b!174235 d!44589))

(declare-fun d!45169 () Bool)

(declare-fun e!107011 () Bool)

(assert (=> d!45169 e!107011))

(declare-fun res!79657 () Bool)

(assert (=> d!45169 (=> (not res!79657) (not e!107011))))

(declare-fun lt!57315 () BalanceConc!1760)

(assert (=> d!45169 (= res!79657 (= (list!1073 lt!57315) (originalCharacters!570 (h!8335 tokens!465))))))

(assert (=> d!45169 (= lt!57315 (BalanceConc!1761 (fromList!114 (originalCharacters!570 (h!8335 tokens!465)))))))

(assert (=> d!45169 (= (fromListB!171 (originalCharacters!570 (h!8335 tokens!465))) lt!57315)))

(declare-fun b!176467 () Bool)

(assert (=> b!176467 (= e!107011 (isBalanced!246 (fromList!114 (originalCharacters!570 (h!8335 tokens!465)))))))

(assert (= (and d!45169 res!79657) b!176467))

(declare-fun m!178027 () Bool)

(assert (=> d!45169 m!178027))

(declare-fun m!178029 () Bool)

(assert (=> d!45169 m!178029))

(assert (=> b!176467 m!178029))

(assert (=> b!176467 m!178029))

(declare-fun m!178031 () Bool)

(assert (=> b!176467 m!178031))

(assert (=> d!43969 d!45169))

(declare-fun d!45171 () Bool)

(declare-fun lt!57318 () Bool)

(assert (=> d!45171 (= lt!57318 (select (content!410 tokens!465) (h!8335 tokens!465)))))

(declare-fun e!107017 () Bool)

(assert (=> d!45171 (= lt!57318 e!107017)))

(declare-fun res!79663 () Bool)

(assert (=> d!45171 (=> (not res!79663) (not e!107017))))

(assert (=> d!45171 (= res!79663 ((_ is Cons!2938) tokens!465))))

(assert (=> d!45171 (= (contains!474 tokens!465 (h!8335 tokens!465)) lt!57318)))

(declare-fun b!176472 () Bool)

(declare-fun e!107016 () Bool)

(assert (=> b!176472 (= e!107017 e!107016)))

(declare-fun res!79662 () Bool)

(assert (=> b!176472 (=> res!79662 e!107016)))

(assert (=> b!176472 (= res!79662 (= (h!8335 tokens!465) (h!8335 tokens!465)))))

(declare-fun b!176473 () Bool)

(assert (=> b!176473 (= e!107016 (contains!474 (t!27586 tokens!465) (h!8335 tokens!465)))))

(assert (= (and d!45171 res!79663) b!176472))

(assert (= (and b!176472 (not res!79662)) b!176473))

(declare-fun m!178033 () Bool)

(assert (=> d!45171 m!178033))

(declare-fun m!178035 () Bool)

(assert (=> d!45171 m!178035))

(declare-fun m!178037 () Bool)

(assert (=> b!176473 m!178037))

(assert (=> b!174249 d!45171))

(declare-fun bs!17640 () Bool)

(declare-fun d!45173 () Bool)

(assert (= bs!17640 (and d!45173 d!44519)))

(declare-fun lambda!5111 () Int)

(assert (=> bs!17640 (not (= lambda!5111 lambda!5071))))

(declare-fun bs!17641 () Bool)

(assert (= bs!17641 (and d!45173 b!174118)))

(assert (=> bs!17641 (not (= lambda!5111 lambda!5024))))

(declare-fun bs!17642 () Bool)

(assert (= bs!17642 (and d!45173 d!44947)))

(assert (=> bs!17642 (= lambda!5111 lambda!5100)))

(declare-fun bs!17643 () Bool)

(assert (= bs!17643 (and d!45173 b!174010)))

(assert (=> bs!17643 (not (= lambda!5111 lambda!5012))))

(declare-fun bs!17644 () Bool)

(assert (= bs!17644 (and d!45173 b!173998)))

(assert (=> bs!17644 (= lambda!5111 lambda!5011)))

(declare-fun bs!17645 () Bool)

(assert (= bs!17645 (and d!45173 d!43945)))

(assert (=> bs!17645 (= lambda!5111 lambda!5023)))

(declare-fun bs!17646 () Bool)

(assert (= bs!17646 (and d!45173 b!174525)))

(assert (=> bs!17646 (not (= lambda!5111 lambda!5050))))

(declare-fun bs!17647 () Bool)

(assert (= bs!17647 (and d!45173 b!176399)))

(assert (=> bs!17647 (not (= lambda!5111 lambda!5106))))

(declare-fun bs!17648 () Bool)

(assert (= bs!17648 (and d!45173 d!44101)))

(assert (=> bs!17648 (= lambda!5111 lambda!5051)))

(declare-fun bs!17649 () Bool)

(assert (= bs!17649 (and d!45173 d!44043)))

(assert (=> bs!17649 (not (= lambda!5111 lambda!5044))))

(declare-fun bs!17650 () Bool)

(assert (= bs!17650 (and d!45173 d!44545)))

(assert (=> bs!17650 (not (= lambda!5111 lambda!5075))))

(declare-fun bs!17651 () Bool)

(assert (= bs!17651 (and d!45173 b!176263)))

(assert (=> bs!17651 (not (= lambda!5111 lambda!5102))))

(declare-fun bs!17652 () Bool)

(assert (= bs!17652 (and d!45173 b!175694)))

(assert (=> bs!17652 (not (= lambda!5111 lambda!5088))))

(declare-fun bs!17653 () Bool)

(assert (= bs!17653 (and d!45173 b!176162)))

(assert (=> bs!17653 (not (= lambda!5111 lambda!5101))))

(declare-fun bs!17654 () Bool)

(assert (= bs!17654 (and d!45173 d!43987)))

(assert (=> bs!17654 (not (= lambda!5111 lambda!5033))))

(declare-fun bs!17655 () Bool)

(assert (= bs!17655 (and d!45173 b!174198)))

(assert (=> bs!17655 (not (= lambda!5111 lambda!5030))))

(declare-fun bs!17656 () Bool)

(assert (= bs!17656 (and d!45173 b!174547)))

(assert (=> bs!17656 (not (= lambda!5111 lambda!5052))))

(declare-fun bs!17657 () Bool)

(declare-fun b!176482 () Bool)

(assert (= bs!17657 (and b!176482 d!44519)))

(declare-fun lambda!5112 () Int)

(assert (=> bs!17657 (= lambda!5112 lambda!5071)))

(declare-fun bs!17658 () Bool)

(assert (= bs!17658 (and b!176482 b!174118)))

(assert (=> bs!17658 (= lambda!5112 lambda!5024)))

(declare-fun bs!17659 () Bool)

(assert (= bs!17659 (and b!176482 d!45173)))

(assert (=> bs!17659 (not (= lambda!5112 lambda!5111))))

(declare-fun bs!17660 () Bool)

(assert (= bs!17660 (and b!176482 d!44947)))

(assert (=> bs!17660 (not (= lambda!5112 lambda!5100))))

(declare-fun bs!17661 () Bool)

(assert (= bs!17661 (and b!176482 b!174010)))

(assert (=> bs!17661 (= lambda!5112 lambda!5012)))

(declare-fun bs!17662 () Bool)

(assert (= bs!17662 (and b!176482 b!173998)))

(assert (=> bs!17662 (not (= lambda!5112 lambda!5011))))

(declare-fun bs!17663 () Bool)

(assert (= bs!17663 (and b!176482 d!43945)))

(assert (=> bs!17663 (not (= lambda!5112 lambda!5023))))

(declare-fun bs!17664 () Bool)

(assert (= bs!17664 (and b!176482 b!174525)))

(assert (=> bs!17664 (= lambda!5112 lambda!5050)))

(declare-fun bs!17665 () Bool)

(assert (= bs!17665 (and b!176482 b!176399)))

(assert (=> bs!17665 (= lambda!5112 lambda!5106)))

(declare-fun bs!17666 () Bool)

(assert (= bs!17666 (and b!176482 d!44101)))

(assert (=> bs!17666 (not (= lambda!5112 lambda!5051))))

(declare-fun bs!17667 () Bool)

(assert (= bs!17667 (and b!176482 d!44043)))

(assert (=> bs!17667 (= lambda!5112 lambda!5044)))

(declare-fun bs!17668 () Bool)

(assert (= bs!17668 (and b!176482 d!44545)))

(assert (=> bs!17668 (= lambda!5112 lambda!5075)))

(declare-fun bs!17669 () Bool)

(assert (= bs!17669 (and b!176482 b!176263)))

(assert (=> bs!17669 (= lambda!5112 lambda!5102)))

(declare-fun bs!17670 () Bool)

(assert (= bs!17670 (and b!176482 b!175694)))

(assert (=> bs!17670 (= lambda!5112 lambda!5088)))

(declare-fun bs!17671 () Bool)

(assert (= bs!17671 (and b!176482 b!176162)))

(assert (=> bs!17671 (= lambda!5112 lambda!5101)))

(declare-fun bs!17672 () Bool)

(assert (= bs!17672 (and b!176482 d!43987)))

(assert (=> bs!17672 (= lambda!5112 lambda!5033)))

(declare-fun bs!17673 () Bool)

(assert (= bs!17673 (and b!176482 b!174198)))

(assert (=> bs!17673 (= lambda!5112 lambda!5030)))

(declare-fun bs!17674 () Bool)

(assert (= bs!17674 (and b!176482 b!174547)))

(assert (=> bs!17674 (= lambda!5112 lambda!5052)))

(declare-fun b!176487 () Bool)

(declare-fun e!107027 () Bool)

(assert (=> b!176487 (= e!107027 true)))

(declare-fun b!176486 () Bool)

(declare-fun e!107026 () Bool)

(assert (=> b!176486 (= e!107026 e!107027)))

(declare-fun b!176485 () Bool)

(declare-fun e!107025 () Bool)

(assert (=> b!176485 (= e!107025 e!107026)))

(assert (=> b!176482 e!107025))

(assert (= b!176486 b!176487))

(assert (= b!176485 b!176486))

(assert (= (and b!176482 ((_ is Cons!2937) rules!1920)) b!176485))

(assert (=> b!176487 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5112))))

(assert (=> b!176487 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 rules!1920)))) (dynLambda!1130 order!1631 lambda!5112))))

(assert (=> b!176482 true))

(declare-fun lt!57332 () BalanceConc!1760)

(assert (=> d!45173 (= (list!1073 lt!57332) (printWithSeparatorTokenWhenNeededList!106 thiss!17480 rules!1920 (dropList!92 lt!55832 (+ 0 1)) separatorToken!170))))

(declare-fun e!107018 () BalanceConc!1760)

(assert (=> d!45173 (= lt!57332 e!107018)))

(declare-fun c!34926 () Bool)

(assert (=> d!45173 (= c!34926 (>= (+ 0 1) (size!2432 lt!55832)))))

(declare-fun lt!57331 () Unit!2616)

(assert (=> d!45173 (= lt!57331 (lemmaContentSubsetPreservesForall!36 (list!1077 lt!55832) (dropList!92 lt!55832 (+ 0 1)) lambda!5111))))

(declare-fun e!107021 () Bool)

(assert (=> d!45173 e!107021))

(declare-fun res!79666 () Bool)

(assert (=> d!45173 (=> (not res!79666) (not e!107021))))

(assert (=> d!45173 (= res!79666 (>= (+ 0 1) 0))))

(assert (=> d!45173 (= (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 lt!55832 separatorToken!170 (+ 0 1)) lt!57332)))

(declare-fun b!176474 () Bool)

(assert (=> b!176474 (= e!107021 (<= (+ 0 1) (size!2432 lt!55832)))))

(declare-fun b!176475 () Bool)

(declare-fun e!107023 () BalanceConc!1760)

(declare-fun call!7916 () BalanceConc!1760)

(declare-fun lt!57321 () BalanceConc!1760)

(assert (=> b!176475 (= e!107023 (++!682 call!7916 lt!57321))))

(declare-fun b!176476 () Bool)

(declare-fun e!107019 () Bool)

(declare-fun lt!57325 () Option!330)

(declare-fun call!7914 () Token!798)

(assert (=> b!176476 (= e!107019 (not (= (_1!1649 (v!13782 lt!57325)) call!7914)))))

(declare-fun bm!7909 () Bool)

(declare-fun call!7915 () BalanceConc!1760)

(declare-fun call!7918 () BalanceConc!1760)

(assert (=> bm!7909 (= call!7915 call!7918)))

(declare-fun b!176477 () Bool)

(declare-fun e!107024 () BalanceConc!1760)

(assert (=> b!176477 (= e!107024 call!7918)))

(declare-fun b!176478 () Bool)

(declare-fun c!34927 () Bool)

(assert (=> b!176478 (= c!34927 e!107019)))

(declare-fun res!79665 () Bool)

(assert (=> b!176478 (=> (not res!79665) (not e!107019))))

(assert (=> b!176478 (= res!79665 ((_ is Some!329) lt!57325))))

(declare-fun e!107020 () BalanceConc!1760)

(assert (=> b!176478 (= e!107020 e!107023)))

(declare-fun b!176479 () Bool)

(assert (=> b!176479 (= e!107018 (BalanceConc!1761 Empty!876))))

(declare-fun b!176480 () Bool)

(declare-fun call!7917 () Token!798)

(assert (=> b!176480 (= e!107024 (charsOf!182 call!7917))))

(declare-fun b!176481 () Bool)

(declare-fun e!107022 () Bool)

(assert (=> b!176481 (= e!107022 (= (_1!1649 (v!13782 lt!57325)) (apply!429 lt!55832 (+ 0 1))))))

(declare-fun bm!7910 () Bool)

(assert (=> bm!7910 (= call!7914 (apply!429 lt!55832 (+ 0 1)))))

(declare-fun bm!7911 () Bool)

(declare-fun c!34929 () Bool)

(declare-fun c!34928 () Bool)

(assert (=> bm!7911 (= c!34929 c!34928)))

(assert (=> bm!7911 (= call!7916 (++!682 e!107024 (ite c!34928 lt!57321 call!7915)))))

(assert (=> b!176482 (= e!107018 e!107020)))

(declare-fun lt!57324 () List!2948)

(assert (=> b!176482 (= lt!57324 (list!1077 lt!55832))))

(declare-fun lt!57319 () Unit!2616)

(assert (=> b!176482 (= lt!57319 (lemmaDropApply!132 lt!57324 (+ 0 1)))))

(assert (=> b!176482 (= (head!608 (drop!145 lt!57324 (+ 0 1))) (apply!430 lt!57324 (+ 0 1)))))

(declare-fun lt!57326 () Unit!2616)

(assert (=> b!176482 (= lt!57326 lt!57319)))

(declare-fun lt!57320 () List!2948)

(assert (=> b!176482 (= lt!57320 (list!1077 lt!55832))))

(declare-fun lt!57330 () Unit!2616)

(assert (=> b!176482 (= lt!57330 (lemmaDropTail!124 lt!57320 (+ 0 1)))))

(assert (=> b!176482 (= (tail!348 (drop!145 lt!57320 (+ 0 1))) (drop!145 lt!57320 (+ 0 1 1)))))

(declare-fun lt!57327 () Unit!2616)

(assert (=> b!176482 (= lt!57327 lt!57330)))

(declare-fun lt!57329 () Unit!2616)

(assert (=> b!176482 (= lt!57329 (forallContained!94 (list!1077 lt!55832) lambda!5112 (apply!429 lt!55832 (+ 0 1))))))

(assert (=> b!176482 (= lt!57321 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 lt!55832 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!176482 (= lt!57325 (maxPrefixZipperSequence!106 thiss!17480 rules!1920 (++!682 (charsOf!182 (apply!429 lt!55832 (+ 0 1))) lt!57321)))))

(declare-fun res!79664 () Bool)

(assert (=> b!176482 (= res!79664 ((_ is Some!329) lt!57325))))

(assert (=> b!176482 (=> (not res!79664) (not e!107022))))

(assert (=> b!176482 (= c!34928 e!107022)))

(declare-fun bm!7912 () Bool)

(assert (=> bm!7912 (= call!7918 (charsOf!182 (ite c!34928 call!7914 (ite c!34927 separatorToken!170 call!7917))))))

(declare-fun bm!7913 () Bool)

(assert (=> bm!7913 (= call!7917 call!7914)))

(declare-fun b!176483 () Bool)

(assert (=> b!176483 (= e!107020 call!7916)))

(declare-fun b!176484 () Bool)

(assert (=> b!176484 (= e!107023 (BalanceConc!1761 Empty!876))))

(assert (=> b!176484 (= (print!144 thiss!17480 (singletonSeq!79 call!7917)) (printTailRec!107 thiss!17480 (singletonSeq!79 call!7917) 0 (BalanceConc!1761 Empty!876)))))

(declare-fun lt!57323 () Unit!2616)

(declare-fun Unit!2672 () Unit!2616)

(assert (=> b!176484 (= lt!57323 Unit!2672)))

(declare-fun lt!57328 () Unit!2616)

(assert (=> b!176484 (= lt!57328 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!40 thiss!17480 rules!1920 (list!1073 call!7915) (list!1073 lt!57321)))))

(assert (=> b!176484 false))

(declare-fun lt!57322 () Unit!2616)

(declare-fun Unit!2673 () Unit!2616)

(assert (=> b!176484 (= lt!57322 Unit!2673)))

(assert (= (and d!45173 res!79666) b!176474))

(assert (= (and d!45173 c!34926) b!176479))

(assert (= (and d!45173 (not c!34926)) b!176482))

(assert (= (and b!176482 res!79664) b!176481))

(assert (= (and b!176482 c!34928) b!176483))

(assert (= (and b!176482 (not c!34928)) b!176478))

(assert (= (and b!176478 res!79665) b!176476))

(assert (= (and b!176478 c!34927) b!176475))

(assert (= (and b!176478 (not c!34927)) b!176484))

(assert (= (or b!176475 b!176484) bm!7913))

(assert (= (or b!176475 b!176484) bm!7909))

(assert (= (or b!176483 b!176476 bm!7913) bm!7910))

(assert (= (or b!176483 bm!7909) bm!7912))

(assert (= (or b!176483 b!176475) bm!7911))

(assert (= (and bm!7911 c!34929) b!176477))

(assert (= (and bm!7911 (not c!34929)) b!176480))

(declare-fun m!178039 () Bool)

(assert (=> d!45173 m!178039))

(assert (=> d!45173 m!172999))

(assert (=> d!45173 m!178039))

(declare-fun m!178041 () Bool)

(assert (=> d!45173 m!178041))

(declare-fun m!178043 () Bool)

(assert (=> d!45173 m!178043))

(assert (=> d!45173 m!173005))

(assert (=> d!45173 m!173005))

(assert (=> d!45173 m!178039))

(declare-fun m!178045 () Bool)

(assert (=> d!45173 m!178045))

(assert (=> b!176474 m!172999))

(declare-fun m!178047 () Bool)

(assert (=> b!176484 m!178047))

(declare-fun m!178049 () Bool)

(assert (=> b!176484 m!178049))

(declare-fun m!178051 () Bool)

(assert (=> b!176484 m!178051))

(assert (=> b!176484 m!178047))

(declare-fun m!178053 () Bool)

(assert (=> b!176484 m!178053))

(assert (=> b!176484 m!178051))

(assert (=> b!176484 m!178049))

(declare-fun m!178055 () Bool)

(assert (=> b!176484 m!178055))

(assert (=> b!176484 m!178047))

(declare-fun m!178057 () Bool)

(assert (=> b!176484 m!178057))

(declare-fun m!178059 () Bool)

(assert (=> bm!7910 m!178059))

(declare-fun m!178061 () Bool)

(assert (=> bm!7912 m!178061))

(declare-fun m!178063 () Bool)

(assert (=> b!176480 m!178063))

(assert (=> b!176482 m!178059))

(declare-fun m!178065 () Bool)

(assert (=> b!176482 m!178065))

(assert (=> b!176482 m!173005))

(declare-fun m!178067 () Bool)

(assert (=> b!176482 m!178067))

(declare-fun m!178069 () Bool)

(assert (=> b!176482 m!178069))

(declare-fun m!178071 () Bool)

(assert (=> b!176482 m!178071))

(declare-fun m!178073 () Bool)

(assert (=> b!176482 m!178073))

(declare-fun m!178075 () Bool)

(assert (=> b!176482 m!178075))

(assert (=> b!176482 m!178069))

(declare-fun m!178077 () Bool)

(assert (=> b!176482 m!178077))

(assert (=> b!176482 m!173005))

(assert (=> b!176482 m!178059))

(declare-fun m!178079 () Bool)

(assert (=> b!176482 m!178079))

(declare-fun m!178081 () Bool)

(assert (=> b!176482 m!178081))

(declare-fun m!178083 () Bool)

(assert (=> b!176482 m!178083))

(assert (=> b!176482 m!178059))

(declare-fun m!178085 () Bool)

(assert (=> b!176482 m!178085))

(declare-fun m!178087 () Bool)

(assert (=> b!176482 m!178087))

(assert (=> b!176482 m!178081))

(assert (=> b!176482 m!178085))

(assert (=> b!176482 m!178073))

(declare-fun m!178089 () Bool)

(assert (=> b!176482 m!178089))

(assert (=> b!176481 m!178059))

(declare-fun m!178091 () Bool)

(assert (=> b!176475 m!178091))

(declare-fun m!178093 () Bool)

(assert (=> bm!7911 m!178093))

(assert (=> b!174118 d!45173))

(assert (=> b!174118 d!44533))

(declare-fun d!45175 () Bool)

(declare-fun lt!57333 () Token!798)

(assert (=> d!45175 (contains!474 lt!55911 lt!57333)))

(declare-fun e!107028 () Token!798)

(assert (=> d!45175 (= lt!57333 e!107028)))

(declare-fun c!34930 () Bool)

(assert (=> d!45175 (= c!34930 (= 0 0))))

(declare-fun e!107029 () Bool)

(assert (=> d!45175 e!107029))

(declare-fun res!79667 () Bool)

(assert (=> d!45175 (=> (not res!79667) (not e!107029))))

(assert (=> d!45175 (= res!79667 (<= 0 0))))

(assert (=> d!45175 (= (apply!430 lt!55911 0) lt!57333)))

(declare-fun b!176488 () Bool)

(assert (=> b!176488 (= e!107029 (< 0 (size!2437 lt!55911)))))

(declare-fun b!176489 () Bool)

(assert (=> b!176489 (= e!107028 (head!608 lt!55911))))

(declare-fun b!176490 () Bool)

(assert (=> b!176490 (= e!107028 (apply!430 (tail!348 lt!55911) (- 0 1)))))

(assert (= (and d!45175 res!79667) b!176488))

(assert (= (and d!45175 c!34930) b!176489))

(assert (= (and d!45175 (not c!34930)) b!176490))

(declare-fun m!178095 () Bool)

(assert (=> d!45175 m!178095))

(declare-fun m!178097 () Bool)

(assert (=> b!176488 m!178097))

(declare-fun m!178099 () Bool)

(assert (=> b!176489 m!178099))

(declare-fun m!178101 () Bool)

(assert (=> b!176490 m!178101))

(assert (=> b!176490 m!178101))

(declare-fun m!178103 () Bool)

(assert (=> b!176490 m!178103))

(assert (=> b!174118 d!45175))

(declare-fun d!45177 () Bool)

(assert (=> d!45177 (= (head!608 (drop!145 lt!55911 0)) (h!8335 (drop!145 lt!55911 0)))))

(assert (=> b!174118 d!45177))

(declare-fun d!45179 () Bool)

(assert (=> d!45179 (= (head!608 (drop!145 lt!55911 0)) (apply!430 lt!55911 0))))

(declare-fun lt!57334 () Unit!2616)

(assert (=> d!45179 (= lt!57334 (choose!1856 lt!55911 0))))

(declare-fun e!107030 () Bool)

(assert (=> d!45179 e!107030))

(declare-fun res!79668 () Bool)

(assert (=> d!45179 (=> (not res!79668) (not e!107030))))

(assert (=> d!45179 (= res!79668 (>= 0 0))))

(assert (=> d!45179 (= (lemmaDropApply!132 lt!55911 0) lt!57334)))

(declare-fun b!176491 () Bool)

(assert (=> b!176491 (= e!107030 (< 0 (size!2437 lt!55911)))))

(assert (= (and d!45179 res!79668) b!176491))

(assert (=> d!45179 m!173043))

(assert (=> d!45179 m!173043))

(assert (=> d!45179 m!173045))

(assert (=> d!45179 m!173039))

(declare-fun m!178105 () Bool)

(assert (=> d!45179 m!178105))

(assert (=> b!176491 m!178097))

(assert (=> b!174118 d!45179))

(assert (=> b!174118 d!44521))

(declare-fun b!176492 () Bool)

(declare-fun e!107034 () Int)

(assert (=> b!176492 (= e!107034 0)))

(declare-fun bm!7914 () Bool)

(declare-fun call!7919 () Int)

(assert (=> bm!7914 (= call!7919 (size!2437 lt!55907))))

(declare-fun b!176493 () Bool)

(assert (=> b!176493 (= e!107034 (- call!7919 (+ 0 1)))))

(declare-fun d!45181 () Bool)

(declare-fun e!107035 () Bool)

(assert (=> d!45181 e!107035))

(declare-fun res!79669 () Bool)

(assert (=> d!45181 (=> (not res!79669) (not e!107035))))

(declare-fun lt!57335 () List!2948)

(assert (=> d!45181 (= res!79669 (= ((_ map implies) (content!410 lt!57335) (content!410 lt!55907)) ((as const (InoxSet Token!798)) true)))))

(declare-fun e!107031 () List!2948)

(assert (=> d!45181 (= lt!57335 e!107031)))

(declare-fun c!34931 () Bool)

(assert (=> d!45181 (= c!34931 ((_ is Nil!2938) lt!55907))))

(assert (=> d!45181 (= (drop!145 lt!55907 (+ 0 1)) lt!57335)))

(declare-fun b!176494 () Bool)

(declare-fun e!107032 () Int)

(assert (=> b!176494 (= e!107032 e!107034)))

(declare-fun c!34934 () Bool)

(assert (=> b!176494 (= c!34934 (>= (+ 0 1) call!7919))))

(declare-fun b!176495 () Bool)

(declare-fun e!107033 () List!2948)

(assert (=> b!176495 (= e!107031 e!107033)))

(declare-fun c!34932 () Bool)

(assert (=> b!176495 (= c!34932 (<= (+ 0 1) 0))))

(declare-fun b!176496 () Bool)

(assert (=> b!176496 (= e!107032 call!7919)))

(declare-fun b!176497 () Bool)

(assert (=> b!176497 (= e!107033 (drop!145 (t!27586 lt!55907) (- (+ 0 1) 1)))))

(declare-fun b!176498 () Bool)

(assert (=> b!176498 (= e!107035 (= (size!2437 lt!57335) e!107032))))

(declare-fun c!34933 () Bool)

(assert (=> b!176498 (= c!34933 (<= (+ 0 1) 0))))

(declare-fun b!176499 () Bool)

(assert (=> b!176499 (= e!107033 lt!55907)))

(declare-fun b!176500 () Bool)

(assert (=> b!176500 (= e!107031 Nil!2938)))

(assert (= (and d!45181 c!34931) b!176500))

(assert (= (and d!45181 (not c!34931)) b!176495))

(assert (= (and b!176495 c!34932) b!176499))

(assert (= (and b!176495 (not c!34932)) b!176497))

(assert (= (and d!45181 res!79669) b!176498))

(assert (= (and b!176498 c!34933) b!176496))

(assert (= (and b!176498 (not c!34933)) b!176494))

(assert (= (and b!176494 c!34934) b!176492))

(assert (= (and b!176494 (not c!34934)) b!176493))

(assert (= (or b!176496 b!176494 b!176493) bm!7914))

(declare-fun m!178107 () Bool)

(assert (=> bm!7914 m!178107))

(declare-fun m!178109 () Bool)

(assert (=> d!45181 m!178109))

(declare-fun m!178111 () Bool)

(assert (=> d!45181 m!178111))

(declare-fun m!178113 () Bool)

(assert (=> b!176497 m!178113))

(declare-fun m!178115 () Bool)

(assert (=> b!176498 m!178115))

(assert (=> b!174118 d!45181))

(declare-fun d!45183 () Bool)

(assert (=> d!45183 (= (tail!348 (drop!145 lt!55907 0)) (drop!145 lt!55907 (+ 0 1)))))

(declare-fun lt!57336 () Unit!2616)

(assert (=> d!45183 (= lt!57336 (choose!1855 lt!55907 0))))

(declare-fun e!107036 () Bool)

(assert (=> d!45183 e!107036))

(declare-fun res!79670 () Bool)

(assert (=> d!45183 (=> (not res!79670) (not e!107036))))

(assert (=> d!45183 (= res!79670 (>= 0 0))))

(assert (=> d!45183 (= (lemmaDropTail!124 lt!55907 0) lt!57336)))

(declare-fun b!176501 () Bool)

(assert (=> b!176501 (= e!107036 (< 0 (size!2437 lt!55907)))))

(assert (= (and d!45183 res!79670) b!176501))

(assert (=> d!45183 m!173031))

(assert (=> d!45183 m!173031))

(assert (=> d!45183 m!173033))

(assert (=> d!45183 m!173049))

(declare-fun m!178117 () Bool)

(assert (=> d!45183 m!178117))

(assert (=> b!176501 m!178107))

(assert (=> b!174118 d!45183))

(declare-fun b!176502 () Bool)

(declare-fun e!107040 () Int)

(assert (=> b!176502 (= e!107040 0)))

(declare-fun bm!7915 () Bool)

(declare-fun call!7920 () Int)

(assert (=> bm!7915 (= call!7920 (size!2437 lt!55907))))

(declare-fun b!176503 () Bool)

(assert (=> b!176503 (= e!107040 (- call!7920 0))))

(declare-fun d!45185 () Bool)

(declare-fun e!107041 () Bool)

(assert (=> d!45185 e!107041))

(declare-fun res!79671 () Bool)

(assert (=> d!45185 (=> (not res!79671) (not e!107041))))

(declare-fun lt!57337 () List!2948)

(assert (=> d!45185 (= res!79671 (= ((_ map implies) (content!410 lt!57337) (content!410 lt!55907)) ((as const (InoxSet Token!798)) true)))))

(declare-fun e!107037 () List!2948)

(assert (=> d!45185 (= lt!57337 e!107037)))

(declare-fun c!34935 () Bool)

(assert (=> d!45185 (= c!34935 ((_ is Nil!2938) lt!55907))))

(assert (=> d!45185 (= (drop!145 lt!55907 0) lt!57337)))

(declare-fun b!176504 () Bool)

(declare-fun e!107038 () Int)

(assert (=> b!176504 (= e!107038 e!107040)))

(declare-fun c!34938 () Bool)

(assert (=> b!176504 (= c!34938 (>= 0 call!7920))))

(declare-fun b!176505 () Bool)

(declare-fun e!107039 () List!2948)

(assert (=> b!176505 (= e!107037 e!107039)))

(declare-fun c!34936 () Bool)

(assert (=> b!176505 (= c!34936 (<= 0 0))))

(declare-fun b!176506 () Bool)

(assert (=> b!176506 (= e!107038 call!7920)))

(declare-fun b!176507 () Bool)

(assert (=> b!176507 (= e!107039 (drop!145 (t!27586 lt!55907) (- 0 1)))))

(declare-fun b!176508 () Bool)

(assert (=> b!176508 (= e!107041 (= (size!2437 lt!57337) e!107038))))

(declare-fun c!34937 () Bool)

(assert (=> b!176508 (= c!34937 (<= 0 0))))

(declare-fun b!176509 () Bool)

(assert (=> b!176509 (= e!107039 lt!55907)))

(declare-fun b!176510 () Bool)

(assert (=> b!176510 (= e!107037 Nil!2938)))

(assert (= (and d!45185 c!34935) b!176510))

(assert (= (and d!45185 (not c!34935)) b!176505))

(assert (= (and b!176505 c!34936) b!176509))

(assert (= (and b!176505 (not c!34936)) b!176507))

(assert (= (and d!45185 res!79671) b!176508))

(assert (= (and b!176508 c!34937) b!176506))

(assert (= (and b!176508 (not c!34937)) b!176504))

(assert (= (and b!176504 c!34938) b!176502))

(assert (= (and b!176504 (not c!34938)) b!176503))

(assert (= (or b!176506 b!176504 b!176503) bm!7915))

(assert (=> bm!7915 m!178107))

(declare-fun m!178119 () Bool)

(assert (=> d!45185 m!178119))

(assert (=> d!45185 m!178111))

(declare-fun m!178121 () Bool)

(assert (=> b!176507 m!178121))

(declare-fun m!178123 () Bool)

(assert (=> b!176508 m!178123))

(assert (=> b!174118 d!45185))

(declare-fun b!176511 () Bool)

(declare-fun e!107045 () Int)

(assert (=> b!176511 (= e!107045 0)))

(declare-fun bm!7916 () Bool)

(declare-fun call!7921 () Int)

(assert (=> bm!7916 (= call!7921 (size!2437 lt!55911))))

(declare-fun b!176512 () Bool)

(assert (=> b!176512 (= e!107045 (- call!7921 0))))

(declare-fun d!45187 () Bool)

(declare-fun e!107046 () Bool)

(assert (=> d!45187 e!107046))

(declare-fun res!79672 () Bool)

(assert (=> d!45187 (=> (not res!79672) (not e!107046))))

(declare-fun lt!57338 () List!2948)

(assert (=> d!45187 (= res!79672 (= ((_ map implies) (content!410 lt!57338) (content!410 lt!55911)) ((as const (InoxSet Token!798)) true)))))

(declare-fun e!107042 () List!2948)

(assert (=> d!45187 (= lt!57338 e!107042)))

(declare-fun c!34939 () Bool)

(assert (=> d!45187 (= c!34939 ((_ is Nil!2938) lt!55911))))

(assert (=> d!45187 (= (drop!145 lt!55911 0) lt!57338)))

(declare-fun b!176513 () Bool)

(declare-fun e!107043 () Int)

(assert (=> b!176513 (= e!107043 e!107045)))

(declare-fun c!34942 () Bool)

(assert (=> b!176513 (= c!34942 (>= 0 call!7921))))

(declare-fun b!176514 () Bool)

(declare-fun e!107044 () List!2948)

(assert (=> b!176514 (= e!107042 e!107044)))

(declare-fun c!34940 () Bool)

(assert (=> b!176514 (= c!34940 (<= 0 0))))

(declare-fun b!176515 () Bool)

(assert (=> b!176515 (= e!107043 call!7921)))

(declare-fun b!176516 () Bool)

(assert (=> b!176516 (= e!107044 (drop!145 (t!27586 lt!55911) (- 0 1)))))

(declare-fun b!176517 () Bool)

(assert (=> b!176517 (= e!107046 (= (size!2437 lt!57338) e!107043))))

(declare-fun c!34941 () Bool)

(assert (=> b!176517 (= c!34941 (<= 0 0))))

(declare-fun b!176518 () Bool)

(assert (=> b!176518 (= e!107044 lt!55911)))

(declare-fun b!176519 () Bool)

(assert (=> b!176519 (= e!107042 Nil!2938)))

(assert (= (and d!45187 c!34939) b!176519))

(assert (= (and d!45187 (not c!34939)) b!176514))

(assert (= (and b!176514 c!34940) b!176518))

(assert (= (and b!176514 (not c!34940)) b!176516))

(assert (= (and d!45187 res!79672) b!176517))

(assert (= (and b!176517 c!34941) b!176515))

(assert (= (and b!176517 (not c!34941)) b!176513))

(assert (= (and b!176513 c!34942) b!176511))

(assert (= (and b!176513 (not c!34942)) b!176512))

(assert (= (or b!176515 b!176513 b!176512) bm!7916))

(assert (=> bm!7916 m!178097))

(declare-fun m!178125 () Bool)

(assert (=> d!45187 m!178125))

(declare-fun m!178127 () Bool)

(assert (=> d!45187 m!178127))

(declare-fun m!178129 () Bool)

(assert (=> b!176516 m!178129))

(declare-fun m!178131 () Bool)

(assert (=> b!176517 m!178131))

(assert (=> b!174118 d!45187))

(declare-fun d!45189 () Bool)

(assert (=> d!45189 (= (tail!348 (drop!145 lt!55907 0)) (t!27586 (drop!145 lt!55907 0)))))

(assert (=> b!174118 d!45189))

(declare-fun d!45191 () Bool)

(assert (=> d!45191 (dynLambda!1135 lambda!5024 (apply!429 lt!55832 0))))

(declare-fun lt!57339 () Unit!2616)

(assert (=> d!45191 (= lt!57339 (choose!1845 (list!1077 lt!55832) lambda!5024 (apply!429 lt!55832 0)))))

(declare-fun e!107047 () Bool)

(assert (=> d!45191 e!107047))

(declare-fun res!79673 () Bool)

(assert (=> d!45191 (=> (not res!79673) (not e!107047))))

(assert (=> d!45191 (= res!79673 (forall!583 (list!1077 lt!55832) lambda!5024))))

(assert (=> d!45191 (= (forallContained!94 (list!1077 lt!55832) lambda!5024 (apply!429 lt!55832 0)) lt!57339)))

(declare-fun b!176520 () Bool)

(assert (=> b!176520 (= e!107047 (contains!474 (list!1077 lt!55832) (apply!429 lt!55832 0)))))

(assert (= (and d!45191 res!79673) b!176520))

(declare-fun b_lambda!4179 () Bool)

(assert (=> (not b_lambda!4179) (not d!45191)))

(assert (=> d!45191 m!173021))

(declare-fun m!178133 () Bool)

(assert (=> d!45191 m!178133))

(assert (=> d!45191 m!173005))

(assert (=> d!45191 m!173021))

(declare-fun m!178135 () Bool)

(assert (=> d!45191 m!178135))

(assert (=> d!45191 m!173005))

(declare-fun m!178137 () Bool)

(assert (=> d!45191 m!178137))

(assert (=> b!176520 m!173005))

(assert (=> b!176520 m!173021))

(declare-fun m!178139 () Bool)

(assert (=> b!176520 m!178139))

(assert (=> b!174118 d!45191))

(declare-fun d!45193 () Bool)

(declare-fun lt!57340 () BalanceConc!1760)

(assert (=> d!45193 (= (list!1073 lt!57340) (originalCharacters!570 (apply!429 lt!55832 0)))))

(assert (=> d!45193 (= lt!57340 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55832 0)))) (value!19335 (apply!429 lt!55832 0))))))

(assert (=> d!45193 (= (charsOf!182 (apply!429 lt!55832 0)) lt!57340)))

(declare-fun b_lambda!4181 () Bool)

(assert (=> (not b_lambda!4181) (not d!45193)))

(declare-fun tb!7385 () Bool)

(declare-fun t!27918 () Bool)

(assert (=> (and b!174005 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55832 0))))) t!27918) tb!7385))

(declare-fun b!176521 () Bool)

(declare-fun e!107048 () Bool)

(declare-fun tp!85137 () Bool)

(assert (=> b!176521 (= e!107048 (and (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55832 0)))) (value!19335 (apply!429 lt!55832 0))))) tp!85137))))

(declare-fun result!10142 () Bool)

(assert (=> tb!7385 (= result!10142 (and (inv!3770 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55832 0)))) (value!19335 (apply!429 lt!55832 0)))) e!107048))))

(assert (= tb!7385 b!176521))

(declare-fun m!178141 () Bool)

(assert (=> b!176521 m!178141))

(declare-fun m!178143 () Bool)

(assert (=> tb!7385 m!178143))

(assert (=> d!45193 t!27918))

(declare-fun b_and!11925 () Bool)

(assert (= b_and!11917 (and (=> t!27918 result!10142) b_and!11925)))

(declare-fun t!27920 () Bool)

(declare-fun tb!7387 () Bool)

(assert (=> (and b!174009 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55832 0))))) t!27920) tb!7387))

(declare-fun result!10144 () Bool)

(assert (= result!10144 result!10142))

(assert (=> d!45193 t!27920))

(declare-fun b_and!11927 () Bool)

(assert (= b_and!11919 (and (=> t!27920 result!10144) b_and!11927)))

(declare-fun tb!7389 () Bool)

(declare-fun t!27922 () Bool)

(assert (=> (and b!174773 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55832 0))))) t!27922) tb!7389))

(declare-fun result!10146 () Bool)

(assert (= result!10146 result!10142))

(assert (=> d!45193 t!27922))

(declare-fun b_and!11929 () Bool)

(assert (= b_and!11915 (and (=> t!27922 result!10146) b_and!11929)))

(declare-fun t!27924 () Bool)

(declare-fun tb!7391 () Bool)

(assert (=> (and b!174015 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55832 0))))) t!27924) tb!7391))

(declare-fun result!10148 () Bool)

(assert (= result!10148 result!10142))

(assert (=> d!45193 t!27924))

(declare-fun b_and!11931 () Bool)

(assert (= b_and!11923 (and (=> t!27924 result!10148) b_and!11931)))

(declare-fun tb!7393 () Bool)

(declare-fun t!27926 () Bool)

(assert (=> (and b!174759 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55832 0))))) t!27926) tb!7393))

(declare-fun result!10150 () Bool)

(assert (= result!10150 result!10142))

(assert (=> d!45193 t!27926))

(declare-fun b_and!11933 () Bool)

(assert (= b_and!11921 (and (=> t!27926 result!10150) b_and!11933)))

(declare-fun m!178145 () Bool)

(assert (=> d!45193 m!178145))

(declare-fun m!178147 () Bool)

(assert (=> d!45193 m!178147))

(assert (=> b!174118 d!45193))

(declare-fun b!176524 () Bool)

(declare-fun res!79676 () Bool)

(declare-fun e!107049 () Bool)

(assert (=> b!176524 (=> (not res!79676) (not e!107049))))

(assert (=> b!176524 (= res!79676 (>= (height!98 (++!685 (c!34379 (charsOf!182 (apply!429 lt!55832 0))) (c!34379 lt!55908))) (max!0 (height!98 (c!34379 (charsOf!182 (apply!429 lt!55832 0)))) (height!98 (c!34379 lt!55908)))))))

(declare-fun b!176522 () Bool)

(declare-fun res!79675 () Bool)

(assert (=> b!176522 (=> (not res!79675) (not e!107049))))

(assert (=> b!176522 (= res!79675 (isBalanced!246 (++!685 (c!34379 (charsOf!182 (apply!429 lt!55832 0))) (c!34379 lt!55908))))))

(declare-fun d!45195 () Bool)

(assert (=> d!45195 e!107049))

(declare-fun res!79677 () Bool)

(assert (=> d!45195 (=> (not res!79677) (not e!107049))))

(assert (=> d!45195 (= res!79677 (appendAssocInst!33 (c!34379 (charsOf!182 (apply!429 lt!55832 0))) (c!34379 lt!55908)))))

(declare-fun lt!57341 () BalanceConc!1760)

(assert (=> d!45195 (= lt!57341 (BalanceConc!1761 (++!685 (c!34379 (charsOf!182 (apply!429 lt!55832 0))) (c!34379 lt!55908))))))

(assert (=> d!45195 (= (++!682 (charsOf!182 (apply!429 lt!55832 0)) lt!55908) lt!57341)))

(declare-fun b!176523 () Bool)

(declare-fun res!79674 () Bool)

(assert (=> b!176523 (=> (not res!79674) (not e!107049))))

(assert (=> b!176523 (= res!79674 (<= (height!98 (++!685 (c!34379 (charsOf!182 (apply!429 lt!55832 0))) (c!34379 lt!55908))) (+ (max!0 (height!98 (c!34379 (charsOf!182 (apply!429 lt!55832 0)))) (height!98 (c!34379 lt!55908))) 1)))))

(declare-fun b!176525 () Bool)

(assert (=> b!176525 (= e!107049 (= (list!1073 lt!57341) (++!680 (list!1073 (charsOf!182 (apply!429 lt!55832 0))) (list!1073 lt!55908))))))

(assert (= (and d!45195 res!79677) b!176522))

(assert (= (and b!176522 res!79675) b!176523))

(assert (= (and b!176523 res!79674) b!176524))

(assert (= (and b!176524 res!79676) b!176525))

(declare-fun m!178149 () Bool)

(assert (=> b!176523 m!178149))

(declare-fun m!178151 () Bool)

(assert (=> b!176523 m!178151))

(declare-fun m!178153 () Bool)

(assert (=> b!176523 m!178153))

(assert (=> b!176523 m!177361))

(assert (=> b!176523 m!178153))

(assert (=> b!176523 m!177361))

(declare-fun m!178155 () Bool)

(assert (=> b!176523 m!178155))

(assert (=> b!176523 m!178149))

(declare-fun m!178157 () Bool)

(assert (=> b!176525 m!178157))

(assert (=> b!176525 m!173047))

(declare-fun m!178159 () Bool)

(assert (=> b!176525 m!178159))

(assert (=> b!176525 m!173011))

(assert (=> b!176525 m!178159))

(assert (=> b!176525 m!173011))

(declare-fun m!178161 () Bool)

(assert (=> b!176525 m!178161))

(assert (=> b!176522 m!178149))

(assert (=> b!176522 m!178149))

(declare-fun m!178163 () Bool)

(assert (=> b!176522 m!178163))

(assert (=> b!176524 m!178149))

(assert (=> b!176524 m!178151))

(assert (=> b!176524 m!178153))

(assert (=> b!176524 m!177361))

(assert (=> b!176524 m!178153))

(assert (=> b!176524 m!177361))

(assert (=> b!176524 m!178155))

(assert (=> b!176524 m!178149))

(declare-fun m!178165 () Bool)

(assert (=> d!45195 m!178165))

(assert (=> d!45195 m!178149))

(assert (=> b!174118 d!45195))

(declare-fun b!176526 () Bool)

(declare-fun e!107053 () Option!330)

(declare-fun call!7922 () Option!330)

(assert (=> b!176526 (= e!107053 call!7922)))

(declare-fun d!45197 () Bool)

(declare-fun e!107054 () Bool)

(assert (=> d!45197 e!107054))

(declare-fun res!79680 () Bool)

(assert (=> d!45197 (=> (not res!79680) (not e!107054))))

(declare-fun lt!57342 () Option!330)

(assert (=> d!45197 (= res!79680 (= (isDefined!181 lt!57342) (isDefined!182 (maxPrefixZipper!44 thiss!17480 rules!1920 (list!1073 (++!682 (charsOf!182 (apply!429 lt!55832 0)) lt!55908))))))))

(assert (=> d!45197 (= lt!57342 e!107053)))

(declare-fun c!34943 () Bool)

(assert (=> d!45197 (= c!34943 (and ((_ is Cons!2937) rules!1920) ((_ is Nil!2937) (t!27585 rules!1920))))))

(declare-fun lt!57346 () Unit!2616)

(declare-fun lt!57344 () Unit!2616)

(assert (=> d!45197 (= lt!57346 lt!57344)))

(declare-fun lt!57345 () List!2946)

(declare-fun lt!57343 () List!2946)

(assert (=> d!45197 (isPrefix!232 lt!57345 lt!57343)))

(assert (=> d!45197 (= lt!57344 (lemmaIsPrefixRefl!140 lt!57345 lt!57343))))

(assert (=> d!45197 (= lt!57343 (list!1073 (++!682 (charsOf!182 (apply!429 lt!55832 0)) lt!55908)))))

(assert (=> d!45197 (= lt!57345 (list!1073 (++!682 (charsOf!182 (apply!429 lt!55832 0)) lt!55908)))))

(assert (=> d!45197 (rulesValidInductive!126 thiss!17480 rules!1920)))

(assert (=> d!45197 (= (maxPrefixZipperSequence!106 thiss!17480 rules!1920 (++!682 (charsOf!182 (apply!429 lt!55832 0)) lt!55908)) lt!57342)))

(declare-fun b!176527 () Bool)

(declare-fun e!107051 () Bool)

(assert (=> b!176527 (= e!107051 (= (list!1073 (_2!1649 (get!812 lt!57342))) (_2!1648 (get!811 (maxPrefix!143 thiss!17480 rules!1920 (list!1073 (++!682 (charsOf!182 (apply!429 lt!55832 0)) lt!55908)))))))))

(declare-fun b!176528 () Bool)

(declare-fun res!79683 () Bool)

(assert (=> b!176528 (=> (not res!79683) (not e!107054))))

(declare-fun e!107055 () Bool)

(assert (=> b!176528 (= res!79683 e!107055)))

(declare-fun res!79678 () Bool)

(assert (=> b!176528 (=> res!79678 e!107055)))

(assert (=> b!176528 (= res!79678 (not (isDefined!181 lt!57342)))))

(declare-fun b!176529 () Bool)

(declare-fun lt!57348 () Option!330)

(declare-fun lt!57347 () Option!330)

(assert (=> b!176529 (= e!107053 (ite (and ((_ is None!329) lt!57348) ((_ is None!329) lt!57347)) None!329 (ite ((_ is None!329) lt!57347) lt!57348 (ite ((_ is None!329) lt!57348) lt!57347 (ite (>= (size!2427 (_1!1649 (v!13782 lt!57348))) (size!2427 (_1!1649 (v!13782 lt!57347)))) lt!57348 lt!57347)))))))

(assert (=> b!176529 (= lt!57348 call!7922)))

(assert (=> b!176529 (= lt!57347 (maxPrefixZipperSequence!106 thiss!17480 (t!27585 rules!1920) (++!682 (charsOf!182 (apply!429 lt!55832 0)) lt!55908)))))

(declare-fun bm!7917 () Bool)

(assert (=> bm!7917 (= call!7922 (maxPrefixOneRuleZipperSequence!45 thiss!17480 (h!8334 rules!1920) (++!682 (charsOf!182 (apply!429 lt!55832 0)) lt!55908)))))

(declare-fun b!176530 () Bool)

(declare-fun e!107052 () Bool)

(assert (=> b!176530 (= e!107055 e!107052)))

(declare-fun res!79679 () Bool)

(assert (=> b!176530 (=> (not res!79679) (not e!107052))))

(assert (=> b!176530 (= res!79679 (= (_1!1649 (get!812 lt!57342)) (_1!1648 (get!811 (maxPrefixZipper!44 thiss!17480 rules!1920 (list!1073 (++!682 (charsOf!182 (apply!429 lt!55832 0)) lt!55908)))))))))

(declare-fun b!176531 () Bool)

(declare-fun e!107050 () Bool)

(assert (=> b!176531 (= e!107050 e!107051)))

(declare-fun res!79681 () Bool)

(assert (=> b!176531 (=> (not res!79681) (not e!107051))))

(assert (=> b!176531 (= res!79681 (= (_1!1649 (get!812 lt!57342)) (_1!1648 (get!811 (maxPrefix!143 thiss!17480 rules!1920 (list!1073 (++!682 (charsOf!182 (apply!429 lt!55832 0)) lt!55908)))))))))

(declare-fun b!176532 () Bool)

(assert (=> b!176532 (= e!107054 e!107050)))

(declare-fun res!79682 () Bool)

(assert (=> b!176532 (=> res!79682 e!107050)))

(assert (=> b!176532 (= res!79682 (not (isDefined!181 lt!57342)))))

(declare-fun b!176533 () Bool)

(assert (=> b!176533 (= e!107052 (= (list!1073 (_2!1649 (get!812 lt!57342))) (_2!1648 (get!811 (maxPrefixZipper!44 thiss!17480 rules!1920 (list!1073 (++!682 (charsOf!182 (apply!429 lt!55832 0)) lt!55908)))))))))

(assert (= (and d!45197 c!34943) b!176526))

(assert (= (and d!45197 (not c!34943)) b!176529))

(assert (= (or b!176526 b!176529) bm!7917))

(assert (= (and d!45197 res!79680) b!176528))

(assert (= (and b!176528 (not res!79678)) b!176530))

(assert (= (and b!176530 res!79679) b!176533))

(assert (= (and b!176528 res!79683) b!176532))

(assert (= (and b!176532 (not res!79682)) b!176531))

(assert (= (and b!176531 res!79681) b!176527))

(assert (=> bm!7917 m!173035))

(declare-fun m!178167 () Bool)

(assert (=> bm!7917 m!178167))

(assert (=> d!45197 m!173035))

(declare-fun m!178169 () Bool)

(assert (=> d!45197 m!178169))

(declare-fun m!178171 () Bool)

(assert (=> d!45197 m!178171))

(declare-fun m!178173 () Bool)

(assert (=> d!45197 m!178173))

(declare-fun m!178175 () Bool)

(assert (=> d!45197 m!178175))

(assert (=> d!45197 m!173153))

(declare-fun m!178177 () Bool)

(assert (=> d!45197 m!178177))

(assert (=> d!45197 m!178169))

(assert (=> d!45197 m!178173))

(declare-fun m!178179 () Bool)

(assert (=> d!45197 m!178179))

(assert (=> b!176532 m!178171))

(declare-fun m!178181 () Bool)

(assert (=> b!176527 m!178181))

(assert (=> b!176527 m!173035))

(assert (=> b!176527 m!178169))

(assert (=> b!176527 m!178169))

(declare-fun m!178183 () Bool)

(assert (=> b!176527 m!178183))

(declare-fun m!178185 () Bool)

(assert (=> b!176527 m!178185))

(assert (=> b!176527 m!178183))

(declare-fun m!178187 () Bool)

(assert (=> b!176527 m!178187))

(assert (=> b!176530 m!178181))

(assert (=> b!176530 m!173035))

(assert (=> b!176530 m!178169))

(assert (=> b!176530 m!178169))

(assert (=> b!176530 m!178173))

(assert (=> b!176530 m!178173))

(declare-fun m!178189 () Bool)

(assert (=> b!176530 m!178189))

(assert (=> b!176533 m!178181))

(assert (=> b!176533 m!173035))

(assert (=> b!176533 m!178169))

(assert (=> b!176533 m!178169))

(assert (=> b!176533 m!178173))

(assert (=> b!176533 m!178173))

(assert (=> b!176533 m!178189))

(assert (=> b!176533 m!178185))

(assert (=> b!176528 m!178171))

(assert (=> b!176529 m!173035))

(declare-fun m!178191 () Bool)

(assert (=> b!176529 m!178191))

(assert (=> b!176531 m!178181))

(assert (=> b!176531 m!173035))

(assert (=> b!176531 m!178169))

(assert (=> b!176531 m!178169))

(assert (=> b!176531 m!178183))

(assert (=> b!176531 m!178183))

(assert (=> b!176531 m!178187))

(assert (=> b!174118 d!45197))

(assert (=> b!174437 d!45051))

(declare-fun d!45199 () Bool)

(declare-fun e!107056 () Bool)

(assert (=> d!45199 e!107056))

(declare-fun res!79685 () Bool)

(assert (=> d!45199 (=> (not res!79685) (not e!107056))))

(declare-fun lt!57349 () List!2946)

(assert (=> d!45199 (= res!79685 (= (content!407 lt!57349) ((_ map or) (content!407 call!7736) (content!407 (ite c!34434 lt!55963 call!7740)))))))

(declare-fun e!107057 () List!2946)

(assert (=> d!45199 (= lt!57349 e!107057)))

(declare-fun c!34944 () Bool)

(assert (=> d!45199 (= c!34944 ((_ is Nil!2936) call!7736))))

(assert (=> d!45199 (= (++!680 call!7736 (ite c!34434 lt!55963 call!7740)) lt!57349)))

(declare-fun b!176537 () Bool)

(assert (=> b!176537 (= e!107056 (or (not (= (ite c!34434 lt!55963 call!7740) Nil!2936)) (= lt!57349 call!7736)))))

(declare-fun b!176536 () Bool)

(declare-fun res!79684 () Bool)

(assert (=> b!176536 (=> (not res!79684) (not e!107056))))

(assert (=> b!176536 (= res!79684 (= (size!2431 lt!57349) (+ (size!2431 call!7736) (size!2431 (ite c!34434 lt!55963 call!7740)))))))

(declare-fun b!176534 () Bool)

(assert (=> b!176534 (= e!107057 (ite c!34434 lt!55963 call!7740))))

(declare-fun b!176535 () Bool)

(assert (=> b!176535 (= e!107057 (Cons!2936 (h!8333 call!7736) (++!680 (t!27584 call!7736) (ite c!34434 lt!55963 call!7740))))))

(assert (= (and d!45199 c!34944) b!176534))

(assert (= (and d!45199 (not c!34944)) b!176535))

(assert (= (and d!45199 res!79685) b!176536))

(assert (= (and b!176536 res!79684) b!176537))

(declare-fun m!178193 () Bool)

(assert (=> d!45199 m!178193))

(declare-fun m!178195 () Bool)

(assert (=> d!45199 m!178195))

(declare-fun m!178197 () Bool)

(assert (=> d!45199 m!178197))

(declare-fun m!178199 () Bool)

(assert (=> b!176536 m!178199))

(declare-fun m!178201 () Bool)

(assert (=> b!176536 m!178201))

(declare-fun m!178203 () Bool)

(assert (=> b!176536 m!178203))

(declare-fun m!178205 () Bool)

(assert (=> b!176535 m!178205))

(assert (=> bm!7733 d!45199))

(assert (=> b!174527 d!44103))

(declare-fun d!45201 () Bool)

(assert (=> d!45201 (= (inv!3764 (tag!705 (h!8334 (t!27585 rules!1920)))) (= (mod (str.len (value!19334 (tag!705 (h!8334 (t!27585 rules!1920))))) 2) 0))))

(assert (=> b!174758 d!45201))

(declare-fun d!45203 () Bool)

(declare-fun res!79686 () Bool)

(declare-fun e!107058 () Bool)

(assert (=> d!45203 (=> (not res!79686) (not e!107058))))

(assert (=> d!45203 (= res!79686 (semiInverseModEq!183 (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toValue!1194 (transformation!527 (h!8334 (t!27585 rules!1920))))))))

(assert (=> d!45203 (= (inv!3768 (transformation!527 (h!8334 (t!27585 rules!1920)))) e!107058)))

(declare-fun b!176538 () Bool)

(assert (=> b!176538 (= e!107058 (equivClasses!166 (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toValue!1194 (transformation!527 (h!8334 (t!27585 rules!1920))))))))

(assert (= (and d!45203 res!79686) b!176538))

(declare-fun m!178207 () Bool)

(assert (=> d!45203 m!178207))

(declare-fun m!178209 () Bool)

(assert (=> b!176538 m!178209))

(assert (=> b!174758 d!45203))

(declare-fun d!45205 () Bool)

(assert (=> d!45205 (= (inv!15 (value!19335 (h!8335 tokens!465))) (= (charsToBigInt!0 (text!4292 (value!19335 (h!8335 tokens!465))) 0) (value!19330 (value!19335 (h!8335 tokens!465)))))))

(declare-fun bs!17675 () Bool)

(assert (= bs!17675 d!45205))

(declare-fun m!178211 () Bool)

(assert (=> bs!17675 m!178211))

(assert (=> b!174715 d!45205))

(declare-fun d!45207 () Bool)

(declare-fun c!34945 () Bool)

(assert (=> d!45207 (= c!34945 ((_ is Nil!2936) lt!56123))))

(declare-fun e!107059 () (InoxSet C!2424))

(assert (=> d!45207 (= (content!407 lt!56123) e!107059)))

(declare-fun b!176539 () Bool)

(assert (=> b!176539 (= e!107059 ((as const (Array C!2424 Bool)) false))))

(declare-fun b!176540 () Bool)

(assert (=> b!176540 (= e!107059 ((_ map or) (store ((as const (Array C!2424 Bool)) false) (h!8333 lt!56123) true) (content!407 (t!27584 lt!56123))))))

(assert (= (and d!45207 c!34945) b!176539))

(assert (= (and d!45207 (not c!34945)) b!176540))

(declare-fun m!178213 () Bool)

(assert (=> b!176540 m!178213))

(declare-fun m!178215 () Bool)

(assert (=> b!176540 m!178215))

(assert (=> d!44095 d!45207))

(declare-fun d!45209 () Bool)

(declare-fun c!34946 () Bool)

(assert (=> d!45209 (= c!34946 ((_ is Nil!2936) lt!55827))))

(declare-fun e!107060 () (InoxSet C!2424))

(assert (=> d!45209 (= (content!407 lt!55827) e!107060)))

(declare-fun b!176541 () Bool)

(assert (=> b!176541 (= e!107060 ((as const (Array C!2424 Bool)) false))))

(declare-fun b!176542 () Bool)

(assert (=> b!176542 (= e!107060 ((_ map or) (store ((as const (Array C!2424 Bool)) false) (h!8333 lt!55827) true) (content!407 (t!27584 lt!55827))))))

(assert (= (and d!45209 c!34946) b!176541))

(assert (= (and d!45209 (not c!34946)) b!176542))

(declare-fun m!178217 () Bool)

(assert (=> b!176542 m!178217))

(assert (=> b!176542 m!177751))

(assert (=> d!44095 d!45209))

(assert (=> d!44095 d!44617))

(declare-fun b!176545 () Bool)

(declare-fun e!107062 () List!2946)

(assert (=> b!176545 (= e!107062 (list!1081 (xs!3471 (c!34379 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 lt!55832 separatorToken!170 0)))))))

(declare-fun b!176544 () Bool)

(declare-fun e!107061 () List!2946)

(assert (=> b!176544 (= e!107061 e!107062)))

(declare-fun c!34948 () Bool)

(assert (=> b!176544 (= c!34948 ((_ is Leaf!1479) (c!34379 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 lt!55832 separatorToken!170 0))))))

(declare-fun b!176543 () Bool)

(assert (=> b!176543 (= e!107061 Nil!2936)))

(declare-fun b!176546 () Bool)

(assert (=> b!176546 (= e!107062 (++!680 (list!1076 (left!2250 (c!34379 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 lt!55832 separatorToken!170 0)))) (list!1076 (right!2580 (c!34379 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 lt!55832 separatorToken!170 0))))))))

(declare-fun d!45211 () Bool)

(declare-fun c!34947 () Bool)

(assert (=> d!45211 (= c!34947 ((_ is Empty!876) (c!34379 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 lt!55832 separatorToken!170 0))))))

(assert (=> d!45211 (= (list!1076 (c!34379 (printWithSeparatorTokenWhenNeededRec!96 thiss!17480 rules!1920 lt!55832 separatorToken!170 0))) e!107061)))

(assert (= (and d!45211 c!34947) b!176543))

(assert (= (and d!45211 (not c!34947)) b!176544))

(assert (= (and b!176544 c!34948) b!176545))

(assert (= (and b!176544 (not c!34948)) b!176546))

(declare-fun m!178219 () Bool)

(assert (=> b!176545 m!178219))

(declare-fun m!178221 () Bool)

(assert (=> b!176546 m!178221))

(declare-fun m!178223 () Bool)

(assert (=> b!176546 m!178223))

(assert (=> b!176546 m!178221))

(assert (=> b!176546 m!178223))

(declare-fun m!178225 () Bool)

(assert (=> b!176546 m!178225))

(assert (=> d!43943 d!45211))

(declare-fun d!45213 () Bool)

(declare-fun lt!57350 () BalanceConc!1760)

(assert (=> d!45213 (= (list!1073 lt!57350) (originalCharacters!570 call!7709))))

(assert (=> d!45213 (= lt!57350 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 call!7709))) (value!19335 call!7709)))))

(assert (=> d!45213 (= (charsOf!182 call!7709) lt!57350)))

(declare-fun b_lambda!4183 () Bool)

(assert (=> (not b_lambda!4183) (not d!45213)))

(declare-fun tb!7395 () Bool)

(declare-fun t!27928 () Bool)

(assert (=> (and b!174015 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 call!7709)))) t!27928) tb!7395))

(declare-fun b!176547 () Bool)

(declare-fun e!107063 () Bool)

(declare-fun tp!85138 () Bool)

(assert (=> b!176547 (= e!107063 (and (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 call!7709))) (value!19335 call!7709)))) tp!85138))))

(declare-fun result!10152 () Bool)

(assert (=> tb!7395 (= result!10152 (and (inv!3770 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 call!7709))) (value!19335 call!7709))) e!107063))))

(assert (= tb!7395 b!176547))

(declare-fun m!178227 () Bool)

(assert (=> b!176547 m!178227))

(declare-fun m!178229 () Bool)

(assert (=> tb!7395 m!178229))

(assert (=> d!45213 t!27928))

(declare-fun b_and!11935 () Bool)

(assert (= b_and!11931 (and (=> t!27928 result!10152) b_and!11935)))

(declare-fun tb!7397 () Bool)

(declare-fun t!27930 () Bool)

(assert (=> (and b!174009 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 call!7709)))) t!27930) tb!7397))

(declare-fun result!10154 () Bool)

(assert (= result!10154 result!10152))

(assert (=> d!45213 t!27930))

(declare-fun b_and!11937 () Bool)

(assert (= b_and!11927 (and (=> t!27930 result!10154) b_and!11937)))

(declare-fun t!27932 () Bool)

(declare-fun tb!7399 () Bool)

(assert (=> (and b!174005 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 call!7709)))) t!27932) tb!7399))

(declare-fun result!10156 () Bool)

(assert (= result!10156 result!10152))

(assert (=> d!45213 t!27932))

(declare-fun b_and!11939 () Bool)

(assert (= b_and!11925 (and (=> t!27932 result!10156) b_and!11939)))

(declare-fun tb!7401 () Bool)

(declare-fun t!27934 () Bool)

(assert (=> (and b!174773 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))) (toChars!1053 (transformation!527 (rule!1038 call!7709)))) t!27934) tb!7401))

(declare-fun result!10158 () Bool)

(assert (= result!10158 result!10152))

(assert (=> d!45213 t!27934))

(declare-fun b_and!11941 () Bool)

(assert (= b_and!11929 (and (=> t!27934 result!10158) b_and!11941)))

(declare-fun t!27936 () Bool)

(declare-fun tb!7403 () Bool)

(assert (=> (and b!174759 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 call!7709)))) t!27936) tb!7403))

(declare-fun result!10160 () Bool)

(assert (= result!10160 result!10152))

(assert (=> d!45213 t!27936))

(declare-fun b_and!11943 () Bool)

(assert (= b_and!11933 (and (=> t!27936 result!10160) b_and!11943)))

(declare-fun m!178231 () Bool)

(assert (=> d!45213 m!178231))

(declare-fun m!178233 () Bool)

(assert (=> d!45213 m!178233))

(assert (=> b!174116 d!45213))

(declare-fun d!45215 () Bool)

(declare-fun c!34949 () Bool)

(assert (=> d!45215 (= c!34949 ((_ is Nil!2936) lt!56121))))

(declare-fun e!107064 () (InoxSet C!2424))

(assert (=> d!45215 (= (content!407 lt!56121) e!107064)))

(declare-fun b!176548 () Bool)

(assert (=> b!176548 (= e!107064 ((as const (Array C!2424 Bool)) false))))

(declare-fun b!176549 () Bool)

(assert (=> b!176549 (= e!107064 ((_ map or) (store ((as const (Array C!2424 Bool)) false) (h!8333 lt!56121) true) (content!407 (t!27584 lt!56121))))))

(assert (= (and d!45215 c!34949) b!176548))

(assert (= (and d!45215 (not c!34949)) b!176549))

(declare-fun m!178235 () Bool)

(assert (=> b!176549 m!178235))

(declare-fun m!178237 () Bool)

(assert (=> b!176549 m!178237))

(assert (=> d!44083 d!45215))

(assert (=> d!44083 d!44979))

(assert (=> d!44083 d!45209))

(assert (=> b!174200 d!44103))

(declare-fun e!107065 () Bool)

(assert (=> b!174788 (= tp!85007 e!107065)))

(declare-fun b!176553 () Bool)

(declare-fun tp!85140 () Bool)

(declare-fun tp!85141 () Bool)

(assert (=> b!176553 (= e!107065 (and tp!85140 tp!85141))))

(declare-fun b!176552 () Bool)

(declare-fun tp!85142 () Bool)

(assert (=> b!176552 (= e!107065 tp!85142)))

(declare-fun b!176551 () Bool)

(declare-fun tp!85139 () Bool)

(declare-fun tp!85143 () Bool)

(assert (=> b!176551 (= e!107065 (and tp!85139 tp!85143))))

(declare-fun b!176550 () Bool)

(assert (=> b!176550 (= e!107065 tp_is_empty!1663)))

(assert (= (and b!174788 ((_ is ElementMatch!751) (reg!1080 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176550))

(assert (= (and b!174788 ((_ is Concat!1301) (reg!1080 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176551))

(assert (= (and b!174788 ((_ is Star!751) (reg!1080 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176552))

(assert (= (and b!174788 ((_ is Union!751) (reg!1080 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176553))

(declare-fun e!107066 () Bool)

(assert (=> b!174789 (= tp!85005 e!107066)))

(declare-fun b!176557 () Bool)

(declare-fun tp!85145 () Bool)

(declare-fun tp!85146 () Bool)

(assert (=> b!176557 (= e!107066 (and tp!85145 tp!85146))))

(declare-fun b!176556 () Bool)

(declare-fun tp!85147 () Bool)

(assert (=> b!176556 (= e!107066 tp!85147)))

(declare-fun b!176555 () Bool)

(declare-fun tp!85144 () Bool)

(declare-fun tp!85148 () Bool)

(assert (=> b!176555 (= e!107066 (and tp!85144 tp!85148))))

(declare-fun b!176554 () Bool)

(assert (=> b!176554 (= e!107066 tp_is_empty!1663)))

(assert (= (and b!174789 ((_ is ElementMatch!751) (regOne!2015 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176554))

(assert (= (and b!174789 ((_ is Concat!1301) (regOne!2015 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176555))

(assert (= (and b!174789 ((_ is Star!751) (regOne!2015 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176556))

(assert (= (and b!174789 ((_ is Union!751) (regOne!2015 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176557))

(declare-fun e!107067 () Bool)

(assert (=> b!174789 (= tp!85006 e!107067)))

(declare-fun b!176561 () Bool)

(declare-fun tp!85150 () Bool)

(declare-fun tp!85151 () Bool)

(assert (=> b!176561 (= e!107067 (and tp!85150 tp!85151))))

(declare-fun b!176560 () Bool)

(declare-fun tp!85152 () Bool)

(assert (=> b!176560 (= e!107067 tp!85152)))

(declare-fun b!176559 () Bool)

(declare-fun tp!85149 () Bool)

(declare-fun tp!85153 () Bool)

(assert (=> b!176559 (= e!107067 (and tp!85149 tp!85153))))

(declare-fun b!176558 () Bool)

(assert (=> b!176558 (= e!107067 tp_is_empty!1663)))

(assert (= (and b!174789 ((_ is ElementMatch!751) (regTwo!2015 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176558))

(assert (= (and b!174789 ((_ is Concat!1301) (regTwo!2015 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176559))

(assert (= (and b!174789 ((_ is Star!751) (regTwo!2015 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176560))

(assert (= (and b!174789 ((_ is Union!751) (regTwo!2015 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176561))

(declare-fun b!176564 () Bool)

(declare-fun e!107070 () Bool)

(assert (=> b!176564 (= e!107070 true)))

(declare-fun b!176563 () Bool)

(declare-fun e!107069 () Bool)

(assert (=> b!176563 (= e!107069 e!107070)))

(declare-fun b!176562 () Bool)

(declare-fun e!107068 () Bool)

(assert (=> b!176562 (= e!107068 e!107069)))

(assert (=> b!174494 e!107068))

(assert (= b!176563 b!176564))

(assert (= b!176562 b!176563))

(assert (= (and b!174494 ((_ is Cons!2937) (t!27585 rules!1920))) b!176562))

(assert (=> b!176564 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 (t!27585 rules!1920))))) (dynLambda!1130 order!1631 lambda!5044))))

(assert (=> b!176564 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920))))) (dynLambda!1130 order!1631 lambda!5044))))

(declare-fun e!107071 () Bool)

(assert (=> b!174746 (= tp!84964 e!107071)))

(declare-fun b!176568 () Bool)

(declare-fun tp!85155 () Bool)

(declare-fun tp!85156 () Bool)

(assert (=> b!176568 (= e!107071 (and tp!85155 tp!85156))))

(declare-fun b!176567 () Bool)

(declare-fun tp!85157 () Bool)

(assert (=> b!176567 (= e!107071 tp!85157)))

(declare-fun b!176566 () Bool)

(declare-fun tp!85154 () Bool)

(declare-fun tp!85158 () Bool)

(assert (=> b!176566 (= e!107071 (and tp!85154 tp!85158))))

(declare-fun b!176565 () Bool)

(assert (=> b!176565 (= e!107071 tp_is_empty!1663)))

(assert (= (and b!174746 ((_ is ElementMatch!751) (regOne!2014 (regex!527 (rule!1038 separatorToken!170))))) b!176565))

(assert (= (and b!174746 ((_ is Concat!1301) (regOne!2014 (regex!527 (rule!1038 separatorToken!170))))) b!176566))

(assert (= (and b!174746 ((_ is Star!751) (regOne!2014 (regex!527 (rule!1038 separatorToken!170))))) b!176567))

(assert (= (and b!174746 ((_ is Union!751) (regOne!2014 (regex!527 (rule!1038 separatorToken!170))))) b!176568))

(declare-fun e!107072 () Bool)

(assert (=> b!174746 (= tp!84968 e!107072)))

(declare-fun b!176572 () Bool)

(declare-fun tp!85160 () Bool)

(declare-fun tp!85161 () Bool)

(assert (=> b!176572 (= e!107072 (and tp!85160 tp!85161))))

(declare-fun b!176571 () Bool)

(declare-fun tp!85162 () Bool)

(assert (=> b!176571 (= e!107072 tp!85162)))

(declare-fun b!176570 () Bool)

(declare-fun tp!85159 () Bool)

(declare-fun tp!85163 () Bool)

(assert (=> b!176570 (= e!107072 (and tp!85159 tp!85163))))

(declare-fun b!176569 () Bool)

(assert (=> b!176569 (= e!107072 tp_is_empty!1663)))

(assert (= (and b!174746 ((_ is ElementMatch!751) (regTwo!2014 (regex!527 (rule!1038 separatorToken!170))))) b!176569))

(assert (= (and b!174746 ((_ is Concat!1301) (regTwo!2014 (regex!527 (rule!1038 separatorToken!170))))) b!176570))

(assert (= (and b!174746 ((_ is Star!751) (regTwo!2014 (regex!527 (rule!1038 separatorToken!170))))) b!176571))

(assert (= (and b!174746 ((_ is Union!751) (regTwo!2014 (regex!527 (rule!1038 separatorToken!170))))) b!176572))

(declare-fun e!107073 () Bool)

(assert (=> b!174747 (= tp!84967 e!107073)))

(declare-fun b!176576 () Bool)

(declare-fun tp!85165 () Bool)

(declare-fun tp!85166 () Bool)

(assert (=> b!176576 (= e!107073 (and tp!85165 tp!85166))))

(declare-fun b!176575 () Bool)

(declare-fun tp!85167 () Bool)

(assert (=> b!176575 (= e!107073 tp!85167)))

(declare-fun b!176574 () Bool)

(declare-fun tp!85164 () Bool)

(declare-fun tp!85168 () Bool)

(assert (=> b!176574 (= e!107073 (and tp!85164 tp!85168))))

(declare-fun b!176573 () Bool)

(assert (=> b!176573 (= e!107073 tp_is_empty!1663)))

(assert (= (and b!174747 ((_ is ElementMatch!751) (reg!1080 (regex!527 (rule!1038 separatorToken!170))))) b!176573))

(assert (= (and b!174747 ((_ is Concat!1301) (reg!1080 (regex!527 (rule!1038 separatorToken!170))))) b!176574))

(assert (= (and b!174747 ((_ is Star!751) (reg!1080 (regex!527 (rule!1038 separatorToken!170))))) b!176575))

(assert (= (and b!174747 ((_ is Union!751) (reg!1080 (regex!527 (rule!1038 separatorToken!170))))) b!176576))

(declare-fun tp!85177 () Bool)

(declare-fun e!107078 () Bool)

(declare-fun b!176585 () Bool)

(declare-fun tp!85176 () Bool)

(assert (=> b!176585 (= e!107078 (and (inv!3769 (left!2250 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170))))) tp!85177 (inv!3769 (right!2580 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170))))) tp!85176))))

(declare-fun b!176587 () Bool)

(declare-fun e!107079 () Bool)

(declare-fun tp!85175 () Bool)

(assert (=> b!176587 (= e!107079 tp!85175)))

(declare-fun b!176586 () Bool)

(declare-fun inv!3778 (IArray!1753) Bool)

(assert (=> b!176586 (= e!107078 (and (inv!3778 (xs!3471 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170))))) e!107079))))

(assert (=> b!174602 (= tp!84899 (and (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170)))) e!107078))))

(assert (= (and b!174602 ((_ is Node!876) (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170))))) b!176585))

(assert (= b!176586 b!176587))

(assert (= (and b!174602 ((_ is Leaf!1479) (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (value!19335 separatorToken!170))))) b!176586))

(declare-fun m!178239 () Bool)

(assert (=> b!176585 m!178239))

(declare-fun m!178241 () Bool)

(assert (=> b!176585 m!178241))

(declare-fun m!178243 () Bool)

(assert (=> b!176586 m!178243))

(assert (=> b!174602 m!173773))

(declare-fun e!107080 () Bool)

(assert (=> b!174787 (= tp!85004 e!107080)))

(declare-fun b!176591 () Bool)

(declare-fun tp!85179 () Bool)

(declare-fun tp!85180 () Bool)

(assert (=> b!176591 (= e!107080 (and tp!85179 tp!85180))))

(declare-fun b!176590 () Bool)

(declare-fun tp!85181 () Bool)

(assert (=> b!176590 (= e!107080 tp!85181)))

(declare-fun b!176589 () Bool)

(declare-fun tp!85178 () Bool)

(declare-fun tp!85182 () Bool)

(assert (=> b!176589 (= e!107080 (and tp!85178 tp!85182))))

(declare-fun b!176588 () Bool)

(assert (=> b!176588 (= e!107080 tp_is_empty!1663)))

(assert (= (and b!174787 ((_ is ElementMatch!751) (regOne!2014 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176588))

(assert (= (and b!174787 ((_ is Concat!1301) (regOne!2014 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176589))

(assert (= (and b!174787 ((_ is Star!751) (regOne!2014 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176590))

(assert (= (and b!174787 ((_ is Union!751) (regOne!2014 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176591))

(declare-fun e!107081 () Bool)

(assert (=> b!174787 (= tp!85008 e!107081)))

(declare-fun b!176595 () Bool)

(declare-fun tp!85184 () Bool)

(declare-fun tp!85185 () Bool)

(assert (=> b!176595 (= e!107081 (and tp!85184 tp!85185))))

(declare-fun b!176594 () Bool)

(declare-fun tp!85186 () Bool)

(assert (=> b!176594 (= e!107081 tp!85186)))

(declare-fun b!176593 () Bool)

(declare-fun tp!85183 () Bool)

(declare-fun tp!85187 () Bool)

(assert (=> b!176593 (= e!107081 (and tp!85183 tp!85187))))

(declare-fun b!176592 () Bool)

(assert (=> b!176592 (= e!107081 tp_is_empty!1663)))

(assert (= (and b!174787 ((_ is ElementMatch!751) (regTwo!2014 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176592))

(assert (= (and b!174787 ((_ is Concat!1301) (regTwo!2014 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176593))

(assert (= (and b!174787 ((_ is Star!751) (regTwo!2014 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176594))

(assert (= (and b!174787 ((_ is Union!751) (regTwo!2014 (regex!527 (rule!1038 (h!8335 tokens!465)))))) b!176595))

(declare-fun e!107082 () Bool)

(assert (=> b!174748 (= tp!84965 e!107082)))

(declare-fun b!176599 () Bool)

(declare-fun tp!85189 () Bool)

(declare-fun tp!85190 () Bool)

(assert (=> b!176599 (= e!107082 (and tp!85189 tp!85190))))

(declare-fun b!176598 () Bool)

(declare-fun tp!85191 () Bool)

(assert (=> b!176598 (= e!107082 tp!85191)))

(declare-fun b!176597 () Bool)

(declare-fun tp!85188 () Bool)

(declare-fun tp!85192 () Bool)

(assert (=> b!176597 (= e!107082 (and tp!85188 tp!85192))))

(declare-fun b!176596 () Bool)

(assert (=> b!176596 (= e!107082 tp_is_empty!1663)))

(assert (= (and b!174748 ((_ is ElementMatch!751) (regOne!2015 (regex!527 (rule!1038 separatorToken!170))))) b!176596))

(assert (= (and b!174748 ((_ is Concat!1301) (regOne!2015 (regex!527 (rule!1038 separatorToken!170))))) b!176597))

(assert (= (and b!174748 ((_ is Star!751) (regOne!2015 (regex!527 (rule!1038 separatorToken!170))))) b!176598))

(assert (= (and b!174748 ((_ is Union!751) (regOne!2015 (regex!527 (rule!1038 separatorToken!170))))) b!176599))

(declare-fun e!107083 () Bool)

(assert (=> b!174748 (= tp!84966 e!107083)))

(declare-fun b!176603 () Bool)

(declare-fun tp!85194 () Bool)

(declare-fun tp!85195 () Bool)

(assert (=> b!176603 (= e!107083 (and tp!85194 tp!85195))))

(declare-fun b!176602 () Bool)

(declare-fun tp!85196 () Bool)

(assert (=> b!176602 (= e!107083 tp!85196)))

(declare-fun b!176601 () Bool)

(declare-fun tp!85193 () Bool)

(declare-fun tp!85197 () Bool)

(assert (=> b!176601 (= e!107083 (and tp!85193 tp!85197))))

(declare-fun b!176600 () Bool)

(assert (=> b!176600 (= e!107083 tp_is_empty!1663)))

(assert (= (and b!174748 ((_ is ElementMatch!751) (regTwo!2015 (regex!527 (rule!1038 separatorToken!170))))) b!176600))

(assert (= (and b!174748 ((_ is Concat!1301) (regTwo!2015 (regex!527 (rule!1038 separatorToken!170))))) b!176601))

(assert (= (and b!174748 ((_ is Star!751) (regTwo!2015 (regex!527 (rule!1038 separatorToken!170))))) b!176602))

(assert (= (and b!174748 ((_ is Union!751) (regTwo!2015 (regex!527 (rule!1038 separatorToken!170))))) b!176603))

(declare-fun b!176604 () Bool)

(declare-fun e!107084 () Bool)

(declare-fun tp!85198 () Bool)

(assert (=> b!176604 (= e!107084 (and tp_is_empty!1663 tp!85198))))

(assert (=> b!174782 (= tp!85003 e!107084)))

(assert (= (and b!174782 ((_ is Cons!2936) (t!27584 (originalCharacters!570 separatorToken!170)))) b!176604))

(declare-fun b!176607 () Bool)

(declare-fun e!107087 () Bool)

(assert (=> b!176607 (= e!107087 true)))

(declare-fun b!176606 () Bool)

(declare-fun e!107086 () Bool)

(assert (=> b!176606 (= e!107086 e!107087)))

(declare-fun b!176605 () Bool)

(declare-fun e!107085 () Bool)

(assert (=> b!176605 (= e!107085 e!107086)))

(assert (=> b!174205 e!107085))

(assert (= b!176606 b!176607))

(assert (= b!176605 b!176606))

(assert (= (and b!174205 ((_ is Cons!2937) (t!27585 rules!1920))) b!176605))

(assert (=> b!176607 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 (t!27585 rules!1920))))) (dynLambda!1130 order!1631 lambda!5030))))

(assert (=> b!176607 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920))))) (dynLambda!1130 order!1631 lambda!5030))))

(declare-fun tp!85201 () Bool)

(declare-fun tp!85200 () Bool)

(declare-fun e!107088 () Bool)

(declare-fun b!176608 () Bool)

(assert (=> b!176608 (= e!107088 (and (inv!3769 (left!2250 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465)))))) tp!85201 (inv!3769 (right!2580 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465)))))) tp!85200))))

(declare-fun b!176610 () Bool)

(declare-fun e!107089 () Bool)

(declare-fun tp!85199 () Bool)

(assert (=> b!176610 (= e!107089 tp!85199)))

(declare-fun b!176609 () Bool)

(assert (=> b!176609 (= e!107088 (and (inv!3778 (xs!3471 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465)))))) e!107089))))

(assert (=> b!174057 (= tp!84892 (and (inv!3769 (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465))))) e!107088))))

(assert (= (and b!174057 ((_ is Node!876) (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465)))))) b!176608))

(assert (= b!176609 b!176610))

(assert (= (and b!174057 ((_ is Leaf!1479) (c!34379 (dynLambda!1132 (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (value!19335 (h!8335 tokens!465)))))) b!176609))

(declare-fun m!178245 () Bool)

(assert (=> b!176608 m!178245))

(declare-fun m!178247 () Bool)

(assert (=> b!176608 m!178247))

(declare-fun m!178249 () Bool)

(assert (=> b!176609 m!178249))

(assert (=> b!174057 m!172923))

(declare-fun b!176611 () Bool)

(declare-fun e!107090 () Bool)

(declare-fun tp!85202 () Bool)

(assert (=> b!176611 (= e!107090 (and tp_is_empty!1663 tp!85202))))

(assert (=> b!174790 (= tp!85009 e!107090)))

(assert (= (and b!174790 ((_ is Cons!2936) (t!27584 (originalCharacters!570 (h!8335 tokens!465))))) b!176611))

(declare-fun e!107091 () Bool)

(assert (=> b!174775 (= tp!84996 e!107091)))

(declare-fun b!176615 () Bool)

(declare-fun tp!85204 () Bool)

(declare-fun tp!85205 () Bool)

(assert (=> b!176615 (= e!107091 (and tp!85204 tp!85205))))

(declare-fun b!176614 () Bool)

(declare-fun tp!85206 () Bool)

(assert (=> b!176614 (= e!107091 tp!85206)))

(declare-fun b!176613 () Bool)

(declare-fun tp!85203 () Bool)

(declare-fun tp!85207 () Bool)

(assert (=> b!176613 (= e!107091 (and tp!85203 tp!85207))))

(declare-fun b!176612 () Bool)

(assert (=> b!176612 (= e!107091 tp_is_empty!1663)))

(assert (= (and b!174775 ((_ is ElementMatch!751) (regOne!2014 (regex!527 (h!8334 rules!1920))))) b!176612))

(assert (= (and b!174775 ((_ is Concat!1301) (regOne!2014 (regex!527 (h!8334 rules!1920))))) b!176613))

(assert (= (and b!174775 ((_ is Star!751) (regOne!2014 (regex!527 (h!8334 rules!1920))))) b!176614))

(assert (= (and b!174775 ((_ is Union!751) (regOne!2014 (regex!527 (h!8334 rules!1920))))) b!176615))

(declare-fun e!107092 () Bool)

(assert (=> b!174775 (= tp!85000 e!107092)))

(declare-fun b!176619 () Bool)

(declare-fun tp!85209 () Bool)

(declare-fun tp!85210 () Bool)

(assert (=> b!176619 (= e!107092 (and tp!85209 tp!85210))))

(declare-fun b!176618 () Bool)

(declare-fun tp!85211 () Bool)

(assert (=> b!176618 (= e!107092 tp!85211)))

(declare-fun b!176617 () Bool)

(declare-fun tp!85208 () Bool)

(declare-fun tp!85212 () Bool)

(assert (=> b!176617 (= e!107092 (and tp!85208 tp!85212))))

(declare-fun b!176616 () Bool)

(assert (=> b!176616 (= e!107092 tp_is_empty!1663)))

(assert (= (and b!174775 ((_ is ElementMatch!751) (regTwo!2014 (regex!527 (h!8334 rules!1920))))) b!176616))

(assert (= (and b!174775 ((_ is Concat!1301) (regTwo!2014 (regex!527 (h!8334 rules!1920))))) b!176617))

(assert (= (and b!174775 ((_ is Star!751) (regTwo!2014 (regex!527 (h!8334 rules!1920))))) b!176618))

(assert (= (and b!174775 ((_ is Union!751) (regTwo!2014 (regex!527 (h!8334 rules!1920))))) b!176619))

(declare-fun b!176622 () Bool)

(declare-fun e!107095 () Bool)

(assert (=> b!176622 (= e!107095 true)))

(declare-fun b!176621 () Bool)

(declare-fun e!107094 () Bool)

(assert (=> b!176621 (= e!107094 e!107095)))

(declare-fun b!176620 () Bool)

(declare-fun e!107093 () Bool)

(assert (=> b!176620 (= e!107093 e!107094)))

(assert (=> b!174574 e!107093))

(assert (= b!176621 b!176622))

(assert (= b!176620 b!176621))

(assert (= (and b!174574 ((_ is Cons!2937) (t!27585 rules!1920))) b!176620))

(assert (=> b!176622 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 (t!27585 rules!1920))))) (dynLambda!1130 order!1631 lambda!5052))))

(assert (=> b!176622 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920))))) (dynLambda!1130 order!1631 lambda!5052))))

(declare-fun b!176623 () Bool)

(declare-fun e!107096 () Bool)

(declare-fun tp!85213 () Bool)

(assert (=> b!176623 (= e!107096 (and tp_is_empty!1663 tp!85213))))

(assert (=> b!174771 (= tp!84993 e!107096)))

(assert (= (and b!174771 ((_ is Cons!2936) (originalCharacters!570 (h!8335 (t!27586 tokens!465))))) b!176623))

(declare-fun b!176626 () Bool)

(declare-fun e!107099 () Bool)

(assert (=> b!176626 (= e!107099 true)))

(declare-fun b!176625 () Bool)

(declare-fun e!107098 () Bool)

(assert (=> b!176625 (= e!107098 e!107099)))

(declare-fun b!176624 () Bool)

(declare-fun e!107097 () Bool)

(assert (=> b!176624 (= e!107097 e!107098)))

(assert (=> b!174783 e!107097))

(assert (= b!176625 b!176626))

(assert (= b!176624 b!176625))

(assert (= (and b!174783 ((_ is Cons!2937) (t!27585 (t!27585 rules!1920)))) b!176624))

(assert (=> b!176626 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920)))))) (dynLambda!1130 order!1631 lambda!5012))))

(assert (=> b!176626 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920)))))) (dynLambda!1130 order!1631 lambda!5012))))

(declare-fun e!107100 () Bool)

(assert (=> b!174772 (= tp!84995 e!107100)))

(declare-fun b!176630 () Bool)

(declare-fun tp!85215 () Bool)

(declare-fun tp!85216 () Bool)

(assert (=> b!176630 (= e!107100 (and tp!85215 tp!85216))))

(declare-fun b!176629 () Bool)

(declare-fun tp!85217 () Bool)

(assert (=> b!176629 (= e!107100 tp!85217)))

(declare-fun b!176628 () Bool)

(declare-fun tp!85214 () Bool)

(declare-fun tp!85218 () Bool)

(assert (=> b!176628 (= e!107100 (and tp!85214 tp!85218))))

(declare-fun b!176627 () Bool)

(assert (=> b!176627 (= e!107100 tp_is_empty!1663)))

(assert (= (and b!174772 ((_ is ElementMatch!751) (regex!527 (rule!1038 (h!8335 (t!27586 tokens!465)))))) b!176627))

(assert (= (and b!174772 ((_ is Concat!1301) (regex!527 (rule!1038 (h!8335 (t!27586 tokens!465)))))) b!176628))

(assert (= (and b!174772 ((_ is Star!751) (regex!527 (rule!1038 (h!8335 (t!27586 tokens!465)))))) b!176629))

(assert (= (and b!174772 ((_ is Union!751) (regex!527 (rule!1038 (h!8335 (t!27586 tokens!465)))))) b!176630))

(declare-fun b!176633 () Bool)

(declare-fun e!107103 () Bool)

(assert (=> b!176633 (= e!107103 true)))

(declare-fun b!176632 () Bool)

(declare-fun e!107102 () Bool)

(assert (=> b!176632 (= e!107102 e!107103)))

(declare-fun b!176631 () Bool)

(declare-fun e!107101 () Bool)

(assert (=> b!176631 (= e!107101 e!107102)))

(assert (=> b!174353 e!107101))

(assert (= b!176632 b!176633))

(assert (= b!176631 b!176632))

(assert (= (and b!174353 ((_ is Cons!2937) (t!27585 rules!1920))) b!176631))

(assert (=> b!176633 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 (t!27585 rules!1920))))) (dynLambda!1130 order!1631 lambda!5033))))

(assert (=> b!176633 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920))))) (dynLambda!1130 order!1631 lambda!5033))))

(declare-fun e!107104 () Bool)

(assert (=> b!174776 (= tp!84999 e!107104)))

(declare-fun b!176637 () Bool)

(declare-fun tp!85220 () Bool)

(declare-fun tp!85221 () Bool)

(assert (=> b!176637 (= e!107104 (and tp!85220 tp!85221))))

(declare-fun b!176636 () Bool)

(declare-fun tp!85222 () Bool)

(assert (=> b!176636 (= e!107104 tp!85222)))

(declare-fun b!176635 () Bool)

(declare-fun tp!85219 () Bool)

(declare-fun tp!85223 () Bool)

(assert (=> b!176635 (= e!107104 (and tp!85219 tp!85223))))

(declare-fun b!176634 () Bool)

(assert (=> b!176634 (= e!107104 tp_is_empty!1663)))

(assert (= (and b!174776 ((_ is ElementMatch!751) (reg!1080 (regex!527 (h!8334 rules!1920))))) b!176634))

(assert (= (and b!174776 ((_ is Concat!1301) (reg!1080 (regex!527 (h!8334 rules!1920))))) b!176635))

(assert (= (and b!174776 ((_ is Star!751) (reg!1080 (regex!527 (h!8334 rules!1920))))) b!176636))

(assert (= (and b!174776 ((_ is Union!751) (reg!1080 (regex!527 (h!8334 rules!1920))))) b!176637))

(declare-fun e!107105 () Bool)

(assert (=> b!174777 (= tp!84997 e!107105)))

(declare-fun b!176641 () Bool)

(declare-fun tp!85225 () Bool)

(declare-fun tp!85226 () Bool)

(assert (=> b!176641 (= e!107105 (and tp!85225 tp!85226))))

(declare-fun b!176640 () Bool)

(declare-fun tp!85227 () Bool)

(assert (=> b!176640 (= e!107105 tp!85227)))

(declare-fun b!176639 () Bool)

(declare-fun tp!85224 () Bool)

(declare-fun tp!85228 () Bool)

(assert (=> b!176639 (= e!107105 (and tp!85224 tp!85228))))

(declare-fun b!176638 () Bool)

(assert (=> b!176638 (= e!107105 tp_is_empty!1663)))

(assert (= (and b!174777 ((_ is ElementMatch!751) (regOne!2015 (regex!527 (h!8334 rules!1920))))) b!176638))

(assert (= (and b!174777 ((_ is Concat!1301) (regOne!2015 (regex!527 (h!8334 rules!1920))))) b!176639))

(assert (= (and b!174777 ((_ is Star!751) (regOne!2015 (regex!527 (h!8334 rules!1920))))) b!176640))

(assert (= (and b!174777 ((_ is Union!751) (regOne!2015 (regex!527 (h!8334 rules!1920))))) b!176641))

(declare-fun e!107106 () Bool)

(assert (=> b!174777 (= tp!84998 e!107106)))

(declare-fun b!176645 () Bool)

(declare-fun tp!85230 () Bool)

(declare-fun tp!85231 () Bool)

(assert (=> b!176645 (= e!107106 (and tp!85230 tp!85231))))

(declare-fun b!176644 () Bool)

(declare-fun tp!85232 () Bool)

(assert (=> b!176644 (= e!107106 tp!85232)))

(declare-fun b!176643 () Bool)

(declare-fun tp!85229 () Bool)

(declare-fun tp!85233 () Bool)

(assert (=> b!176643 (= e!107106 (and tp!85229 tp!85233))))

(declare-fun b!176642 () Bool)

(assert (=> b!176642 (= e!107106 tp_is_empty!1663)))

(assert (= (and b!174777 ((_ is ElementMatch!751) (regTwo!2015 (regex!527 (h!8334 rules!1920))))) b!176642))

(assert (= (and b!174777 ((_ is Concat!1301) (regTwo!2015 (regex!527 (h!8334 rules!1920))))) b!176643))

(assert (= (and b!174777 ((_ is Star!751) (regTwo!2015 (regex!527 (h!8334 rules!1920))))) b!176644))

(assert (= (and b!174777 ((_ is Union!751) (regTwo!2015 (regex!527 (h!8334 rules!1920))))) b!176645))

(declare-fun b!176648 () Bool)

(declare-fun e!107109 () Bool)

(assert (=> b!176648 (= e!107109 true)))

(declare-fun b!176647 () Bool)

(declare-fun e!107108 () Bool)

(assert (=> b!176647 (= e!107108 e!107109)))

(declare-fun b!176646 () Bool)

(declare-fun e!107107 () Bool)

(assert (=> b!176646 (= e!107107 e!107108)))

(assert (=> b!174121 e!107107))

(assert (= b!176647 b!176648))

(assert (= b!176646 b!176647))

(assert (= (and b!174121 ((_ is Cons!2937) (t!27585 rules!1920))) b!176646))

(assert (=> b!176648 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 (t!27585 rules!1920))))) (dynLambda!1130 order!1631 lambda!5024))))

(assert (=> b!176648 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920))))) (dynLambda!1130 order!1631 lambda!5024))))

(declare-fun b!176652 () Bool)

(declare-fun b_free!6725 () Bool)

(declare-fun b_next!6725 () Bool)

(assert (=> b!176652 (= b_free!6725 (not b_next!6725))))

(declare-fun t!27938 () Bool)

(declare-fun tb!7405 () Bool)

(assert (=> (and b!176652 (= (toValue!1194 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (toValue!1194 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))) t!27938) tb!7405))

(declare-fun result!10164 () Bool)

(assert (= result!10164 result!9914))

(assert (=> d!44413 t!27938))

(declare-fun b_and!11945 () Bool)

(declare-fun tp!85237 () Bool)

(assert (=> b!176652 (= tp!85237 (and (=> t!27938 result!10164) b_and!11945))))

(declare-fun b_free!6727 () Bool)

(declare-fun b_next!6727 () Bool)

(assert (=> b!176652 (= b_free!6727 (not b_next!6727))))

(declare-fun t!27940 () Bool)

(declare-fun tb!7407 () Bool)

(assert (=> (and b!176652 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (toChars!1053 (transformation!527 (rule!1038 call!7709)))) t!27940) tb!7407))

(declare-fun result!10166 () Bool)

(assert (= result!10166 result!10152))

(assert (=> d!45213 t!27940))

(declare-fun tb!7409 () Bool)

(declare-fun t!27942 () Bool)

(assert (=> (and b!176652 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55819 0))))) t!27942) tb!7409))

(declare-fun result!10168 () Bool)

(assert (= result!10168 result!10122))

(assert (=> d!45069 t!27942))

(declare-fun t!27944 () Bool)

(declare-fun tb!7411 () Bool)

(assert (=> (and b!176652 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (toChars!1053 (transformation!527 (rule!1038 call!7771)))) t!27944) tb!7411))

(declare-fun result!10170 () Bool)

(assert (= result!10170 result!10112))

(assert (=> d!44981 t!27944))

(declare-fun t!27946 () Bool)

(declare-fun tb!7413 () Bool)

(assert (=> (and b!176652 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (toChars!1053 (transformation!527 (rule!1038 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771)))))) t!27946) tb!7413))

(declare-fun result!10172 () Bool)

(assert (= result!10172 result!10132))

(assert (=> d!45157 t!27946))

(declare-fun t!27948 () Bool)

(declare-fun tb!7415 () Bool)

(assert (=> (and b!176652 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465))))) t!27948) tb!7415))

(declare-fun result!10174 () Bool)

(assert (= result!10174 result!9824))

(assert (=> b!174051 t!27948))

(declare-fun t!27950 () Bool)

(declare-fun tb!7417 () Bool)

(assert (=> (and b!176652 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465)))))) t!27950) tb!7417))

(declare-fun result!10176 () Bool)

(assert (= result!10176 result!9936))

(assert (=> b!175326 t!27950))

(assert (=> d!44739 t!27950))

(declare-fun tb!7419 () Bool)

(declare-fun t!27952 () Bool)

(assert (=> (and b!176652 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55832 0))))) t!27952) tb!7419))

(declare-fun result!10178 () Bool)

(assert (= result!10178 result!10142))

(assert (=> d!45193 t!27952))

(declare-fun t!27954 () Bool)

(declare-fun tb!7421 () Bool)

(assert (=> (and b!176652 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938)))))) t!27954) tb!7421))

(declare-fun result!10180 () Bool)

(assert (= result!10180 result!9946))

(assert (=> d!44493 t!27954))

(declare-fun t!27956 () Bool)

(declare-fun tb!7423 () Bool)

(assert (=> (and b!176652 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (toChars!1053 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))) t!27956) tb!7423))

(declare-fun result!10182 () Bool)

(assert (= result!10182 result!10092))

(assert (=> d!44939 t!27956))

(declare-fun t!27958 () Bool)

(declare-fun tb!7425 () Bool)

(assert (=> (and b!176652 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (toChars!1053 (transformation!527 (rule!1038 separatorToken!170)))) t!27958) tb!7425))

(declare-fun result!10184 () Bool)

(assert (= result!10184 result!9848))

(assert (=> b!174636 t!27958))

(declare-fun t!27960 () Bool)

(declare-fun tb!7427 () Bool)

(assert (=> (and b!176652 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (toChars!1053 (transformation!527 (rule!1038 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709)))))) t!27960) tb!7427))

(declare-fun result!10186 () Bool)

(assert (= result!10186 result!9956))

(assert (=> d!44509 t!27960))

(assert (=> d!44103 t!27958))

(assert (=> d!44109 t!27948))

(declare-fun t!27962 () Bool)

(declare-fun tb!7429 () Bool)

(assert (=> (and b!176652 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))))) t!27962) tb!7429))

(declare-fun result!10188 () Bool)

(assert (= result!10188 result!10102))

(assert (=> d!44967 t!27962))

(declare-fun b_and!11947 () Bool)

(declare-fun tp!85235 () Bool)

(assert (=> b!176652 (= tp!85235 (and (=> t!27956 result!10182) (=> t!27948 result!10174) (=> t!27954 result!10180) (=> t!27952 result!10178) (=> t!27946 result!10172) (=> t!27944 result!10170) (=> t!27960 result!10186) (=> t!27950 result!10176) (=> t!27942 result!10168) (=> t!27958 result!10184) (=> t!27962 result!10188) (=> t!27940 result!10166) b_and!11947))))

(declare-fun e!107114 () Bool)

(assert (=> b!176652 (= e!107114 (and tp!85237 tp!85235))))

(declare-fun tp!85238 () Bool)

(declare-fun e!107111 () Bool)

(declare-fun b!176651 () Bool)

(assert (=> b!176651 (= e!107111 (and tp!85238 (inv!3764 (tag!705 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (inv!3768 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) e!107114))))

(declare-fun e!107115 () Bool)

(assert (=> b!174770 (= tp!84991 e!107115)))

(declare-fun tp!85234 () Bool)

(declare-fun e!107110 () Bool)

(declare-fun b!176649 () Bool)

(assert (=> b!176649 (= e!107115 (and (inv!3767 (h!8335 (t!27586 (t!27586 tokens!465)))) e!107110 tp!85234))))

(declare-fun b!176650 () Bool)

(declare-fun tp!85236 () Bool)

(assert (=> b!176650 (= e!107110 (and (inv!21 (value!19335 (h!8335 (t!27586 (t!27586 tokens!465))))) e!107111 tp!85236))))

(assert (= b!176651 b!176652))

(assert (= b!176650 b!176651))

(assert (= b!176649 b!176650))

(assert (= (and b!174770 ((_ is Cons!2938) (t!27586 (t!27586 tokens!465)))) b!176649))

(declare-fun m!178251 () Bool)

(assert (=> b!176651 m!178251))

(declare-fun m!178253 () Bool)

(assert (=> b!176651 m!178253))

(declare-fun m!178255 () Bool)

(assert (=> b!176649 m!178255))

(declare-fun m!178257 () Bool)

(assert (=> b!176650 m!178257))

(declare-fun b!176655 () Bool)

(declare-fun e!107118 () Bool)

(assert (=> b!176655 (= e!107118 true)))

(declare-fun b!176654 () Bool)

(declare-fun e!107117 () Bool)

(assert (=> b!176654 (= e!107117 e!107118)))

(declare-fun b!176653 () Bool)

(declare-fun e!107116 () Bool)

(assert (=> b!176653 (= e!107116 e!107117)))

(assert (=> b!174532 e!107116))

(assert (= b!176654 b!176655))

(assert (= b!176653 b!176654))

(assert (= (and b!174532 ((_ is Cons!2937) (t!27585 rules!1920))) b!176653))

(assert (=> b!176655 (< (dynLambda!1129 order!1629 (toValue!1194 (transformation!527 (h!8334 (t!27585 rules!1920))))) (dynLambda!1130 order!1631 lambda!5050))))

(assert (=> b!176655 (< (dynLambda!1131 order!1633 (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920))))) (dynLambda!1130 order!1631 lambda!5050))))

(declare-fun b!176658 () Bool)

(declare-fun b_free!6729 () Bool)

(declare-fun b_next!6729 () Bool)

(assert (=> b!176658 (= b_free!6729 (not b_next!6729))))

(declare-fun tb!7431 () Bool)

(declare-fun t!27964 () Bool)

(assert (=> (and b!176658 (= (toValue!1194 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) (toValue!1194 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))) t!27964) tb!7431))

(declare-fun result!10190 () Bool)

(assert (= result!10190 result!9914))

(assert (=> d!44413 t!27964))

(declare-fun tp!85241 () Bool)

(declare-fun b_and!11949 () Bool)

(assert (=> b!176658 (= tp!85241 (and (=> t!27964 result!10190) b_and!11949))))

(declare-fun b_free!6731 () Bool)

(declare-fun b_next!6731 () Bool)

(assert (=> b!176658 (= b_free!6731 (not b_next!6731))))

(declare-fun t!27966 () Bool)

(declare-fun tb!7433 () Bool)

(assert (=> (and b!176658 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) (toChars!1053 (transformation!527 (rule!1038 call!7709)))) t!27966) tb!7433))

(declare-fun result!10192 () Bool)

(assert (= result!10192 result!10152))

(assert (=> d!45213 t!27966))

(declare-fun t!27968 () Bool)

(declare-fun tb!7435 () Bool)

(assert (=> (and b!176658 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55819 0))))) t!27968) tb!7435))

(declare-fun result!10194 () Bool)

(assert (= result!10194 result!10122))

(assert (=> d!45069 t!27968))

(declare-fun t!27970 () Bool)

(declare-fun tb!7437 () Bool)

(assert (=> (and b!176658 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) (toChars!1053 (transformation!527 (rule!1038 call!7771)))) t!27970) tb!7437))

(declare-fun result!10196 () Bool)

(assert (= result!10196 result!10112))

(assert (=> d!44981 t!27970))

(declare-fun tb!7439 () Bool)

(declare-fun t!27972 () Bool)

(assert (=> (and b!176658 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) (toChars!1053 (transformation!527 (rule!1038 (ite c!34489 call!7768 (ite c!34488 separatorToken!170 call!7771)))))) t!27972) tb!7439))

(declare-fun result!10198 () Bool)

(assert (= result!10198 result!10132))

(assert (=> d!45157 t!27972))

(declare-fun tb!7441 () Bool)

(declare-fun t!27974 () Bool)

(assert (=> (and b!176658 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465))))) t!27974) tb!7441))

(declare-fun result!10200 () Bool)

(assert (= result!10200 result!9824))

(assert (=> b!174051 t!27974))

(declare-fun tb!7443 () Bool)

(declare-fun t!27976 () Bool)

(assert (=> (and b!176658 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465)))))) t!27976) tb!7443))

(declare-fun result!10202 () Bool)

(assert (= result!10202 result!9936))

(assert (=> b!175326 t!27976))

(assert (=> d!44739 t!27976))

(declare-fun tb!7445 () Bool)

(declare-fun t!27978 () Bool)

(assert (=> (and b!176658 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 lt!55832 0))))) t!27978) tb!7445))

(declare-fun result!10204 () Bool)

(assert (= result!10204 result!10142))

(assert (=> d!45193 t!27978))

(declare-fun tb!7447 () Bool)

(declare-fun t!27980 () Bool)

(assert (=> (and b!176658 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (Cons!2938 (h!8335 tokens!465) Nil!2938)))))) t!27980) tb!7447))

(declare-fun result!10206 () Bool)

(assert (= result!10206 result!9946))

(assert (=> d!44493 t!27980))

(declare-fun t!27982 () Bool)

(declare-fun tb!7449 () Bool)

(assert (=> (and b!176658 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) (toChars!1053 (transformation!527 (rule!1038 (_1!1648 (get!811 lt!56168)))))) t!27982) tb!7449))

(declare-fun result!10208 () Bool)

(assert (= result!10208 result!10092))

(assert (=> d!44939 t!27982))

(declare-fun t!27984 () Bool)

(declare-fun tb!7451 () Bool)

(assert (=> (and b!176658 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) (toChars!1053 (transformation!527 (rule!1038 separatorToken!170)))) t!27984) tb!7451))

(declare-fun result!10210 () Bool)

(assert (= result!10210 result!9848))

(assert (=> b!174636 t!27984))

(declare-fun t!27986 () Bool)

(declare-fun tb!7453 () Bool)

(assert (=> (and b!176658 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) (toChars!1053 (transformation!527 (rule!1038 (ite c!34404 call!7706 (ite c!34403 separatorToken!170 call!7709)))))) t!27986) tb!7453))

(declare-fun result!10212 () Bool)

(assert (= result!10212 result!9956))

(assert (=> d!44509 t!27986))

(assert (=> d!44103 t!27984))

(assert (=> d!44109 t!27974))

(declare-fun tb!7455 () Bool)

(declare-fun t!27988 () Bool)

(assert (=> (and b!176658 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) (toChars!1053 (transformation!527 (rule!1038 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0))))) t!27988) tb!7455))

(declare-fun result!10214 () Bool)

(assert (= result!10214 result!10102))

(assert (=> d!44967 t!27988))

(declare-fun tp!85239 () Bool)

(declare-fun b_and!11951 () Bool)

(assert (=> b!176658 (= tp!85239 (and (=> t!27982 result!10208) (=> t!27966 result!10192) (=> t!27978 result!10204) (=> t!27970 result!10196) (=> t!27974 result!10200) (=> t!27986 result!10212) (=> t!27968 result!10194) (=> t!27976 result!10202) (=> t!27984 result!10210) (=> t!27972 result!10198) (=> t!27980 result!10206) (=> t!27988 result!10214) b_and!11951))))

(declare-fun e!107119 () Bool)

(assert (=> b!176658 (= e!107119 (and tp!85241 tp!85239))))

(declare-fun e!107122 () Bool)

(declare-fun tp!85242 () Bool)

(declare-fun b!176657 () Bool)

(assert (=> b!176657 (= e!107122 (and tp!85242 (inv!3764 (tag!705 (h!8334 (t!27585 (t!27585 rules!1920))))) (inv!3768 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) e!107119))))

(declare-fun b!176656 () Bool)

(declare-fun e!107121 () Bool)

(declare-fun tp!85240 () Bool)

(assert (=> b!176656 (= e!107121 (and e!107122 tp!85240))))

(assert (=> b!174757 (= tp!84978 e!107121)))

(assert (= b!176657 b!176658))

(assert (= b!176656 b!176657))

(assert (= (and b!174757 ((_ is Cons!2937) (t!27585 (t!27585 rules!1920)))) b!176656))

(declare-fun m!178259 () Bool)

(assert (=> b!176657 m!178259))

(declare-fun m!178261 () Bool)

(assert (=> b!176657 m!178261))

(declare-fun e!107123 () Bool)

(assert (=> b!174758 (= tp!84980 e!107123)))

(declare-fun b!176662 () Bool)

(declare-fun tp!85244 () Bool)

(declare-fun tp!85245 () Bool)

(assert (=> b!176662 (= e!107123 (and tp!85244 tp!85245))))

(declare-fun b!176661 () Bool)

(declare-fun tp!85246 () Bool)

(assert (=> b!176661 (= e!107123 tp!85246)))

(declare-fun b!176660 () Bool)

(declare-fun tp!85243 () Bool)

(declare-fun tp!85247 () Bool)

(assert (=> b!176660 (= e!107123 (and tp!85243 tp!85247))))

(declare-fun b!176659 () Bool)

(assert (=> b!176659 (= e!107123 tp_is_empty!1663)))

(assert (= (and b!174758 ((_ is ElementMatch!751) (regex!527 (h!8334 (t!27585 rules!1920))))) b!176659))

(assert (= (and b!174758 ((_ is Concat!1301) (regex!527 (h!8334 (t!27585 rules!1920))))) b!176660))

(assert (= (and b!174758 ((_ is Star!751) (regex!527 (h!8334 (t!27585 rules!1920))))) b!176661))

(assert (= (and b!174758 ((_ is Union!751) (regex!527 (h!8334 (t!27585 rules!1920))))) b!176662))

(declare-fun b_lambda!4185 () Bool)

(assert (= b_lambda!4165 (or d!43987 b_lambda!4185)))

(declare-fun bs!17676 () Bool)

(declare-fun d!45217 () Bool)

(assert (= bs!17676 (and d!45217 d!43987)))

(assert (=> bs!17676 (= (dynLambda!1135 lambda!5033 (h!8335 (t!27586 tokens!465))) (rulesProduceIndividualToken!162 thiss!17480 rules!1920 (h!8335 (t!27586 tokens!465))))))

(assert (=> bs!17676 m!173369))

(assert (=> b!176234 d!45217))

(declare-fun b_lambda!4187 () Bool)

(assert (= b_lambda!4167 (or b!174010 b_lambda!4187)))

(assert (=> d!45037 d!44159))

(declare-fun b_lambda!4189 () Bool)

(assert (= b_lambda!4159 (or b!174547 b_lambda!4189)))

(declare-fun bs!17677 () Bool)

(declare-fun d!45219 () Bool)

(assert (= bs!17677 (and d!45219 b!174547)))

(assert (=> bs!17677 (= (dynLambda!1135 lambda!5052 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)) (rulesProduceIndividualToken!162 thiss!17480 rules!1920 (apply!429 (seqFromList!431 (t!27586 tokens!465)) 0)))))

(assert (=> bs!17677 m!173715))

(declare-fun m!178263 () Bool)

(assert (=> bs!17677 m!178263))

(assert (=> d!44961 d!45219))

(declare-fun b_lambda!4191 () Bool)

(assert (= b_lambda!4115 (or b!174525 b_lambda!4191)))

(declare-fun bs!17678 () Bool)

(declare-fun d!45221 () Bool)

(assert (= bs!17678 (and d!45221 b!174525)))

(assert (=> bs!17678 (= (dynLambda!1135 lambda!5050 (h!8335 (t!27586 tokens!465))) (rulesProduceIndividualToken!162 thiss!17480 rules!1920 (h!8335 (t!27586 tokens!465))))))

(assert (=> bs!17678 m!173369))

(assert (=> d!44725 d!45221))

(declare-fun b_lambda!4193 () Bool)

(assert (= b_lambda!4117 (or (and b!176652 b_free!6727 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))))) (and b!174759 b_free!6711 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))))) (and b!174015 b_free!6699 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))))) (and b!176658 b_free!6731 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))))) (and b!174005 b_free!6695 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))))) (and b!174009 b_free!6691 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))))) (and b!174773 b_free!6715) b_lambda!4193)))

(declare-fun b_lambda!4195 () Bool)

(assert (= b_lambda!4169 (or b!174010 b_lambda!4195)))

(assert (=> b!176281 d!44159))

(declare-fun b_lambda!4197 () Bool)

(assert (= b_lambda!4097 (or (and b!176652 b_free!6727 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 (t!27586 tokens!465)))))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))))) (and b!174759 b_free!6711 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 rules!1920)))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))))) (and b!174015 b_free!6699 (= (toChars!1053 (transformation!527 (rule!1038 separatorToken!170))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))))) (and b!176658 b_free!6731 (= (toChars!1053 (transformation!527 (h!8334 (t!27585 (t!27585 rules!1920))))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))))) (and b!174005 b_free!6695 (= (toChars!1053 (transformation!527 (h!8334 rules!1920))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))))) (and b!174009 b_free!6691 (= (toChars!1053 (transformation!527 (rule!1038 (h!8335 tokens!465)))) (toChars!1053 (transformation!527 (rule!1038 (h!8335 (t!27586 tokens!465))))))) (and b!174773 b_free!6715) b_lambda!4197)))

(declare-fun b_lambda!4199 () Bool)

(assert (= b_lambda!4171 (or b!173998 b_lambda!4199)))

(declare-fun bs!17679 () Bool)

(declare-fun d!45223 () Bool)

(assert (= bs!17679 (and d!45223 b!173998)))

(assert (=> bs!17679 (= (dynLambda!1135 lambda!5011 (h!8335 (t!27586 tokens!465))) (not (isSeparator!527 (rule!1038 (h!8335 (t!27586 tokens!465))))))))

(assert (=> b!176329 d!45223))

(declare-fun b_lambda!4201 () Bool)

(assert (= b_lambda!4179 (or b!174118 b_lambda!4201)))

(declare-fun bs!17680 () Bool)

(declare-fun d!45225 () Bool)

(assert (= bs!17680 (and d!45225 b!174118)))

(assert (=> bs!17680 (= (dynLambda!1135 lambda!5024 (apply!429 lt!55832 0)) (rulesProduceIndividualToken!162 thiss!17480 rules!1920 (apply!429 lt!55832 0)))))

(assert (=> bs!17680 m!173021))

(declare-fun m!178265 () Bool)

(assert (=> bs!17680 m!178265))

(assert (=> d!45191 d!45225))

(declare-fun b_lambda!4203 () Bool)

(assert (= b_lambda!4103 (or b!174198 b_lambda!4203)))

(declare-fun bs!17681 () Bool)

(declare-fun d!45227 () Bool)

(assert (= bs!17681 (and d!45227 b!174198)))

(assert (=> bs!17681 (= (dynLambda!1135 lambda!5030 (h!8335 tokens!465)) (rulesProduceIndividualToken!162 thiss!17480 rules!1920 (h!8335 tokens!465)))))

(assert (=> bs!17681 m!172893))

(assert (=> d!44597 d!45227))

(declare-fun b_lambda!4205 () Bool)

(assert (= b_lambda!4175 (or d!44043 b_lambda!4205)))

(declare-fun bs!17682 () Bool)

(declare-fun d!45229 () Bool)

(assert (= bs!17682 (and d!45229 d!44043)))

(assert (=> bs!17682 (= (dynLambda!1135 lambda!5044 (h!8335 (list!1077 lt!55832))) (rulesProduceIndividualToken!162 thiss!17480 rules!1920 (h!8335 (list!1077 lt!55832))))))

(assert (=> bs!17682 m!175347))

(assert (=> b!176392 d!45229))

(check-sat (not d!45085) (not d!45111) (not d!45023) (not b!176418) (not b!175345) (not b!176383) (not d!45127) (not bm!7824) (not b!175182) (not d!44389) (not b!176430) (not b!175154) (not b!176629) (not b!176640) (not b!176586) (not b!176297) (not b!176132) (not d!44405) (not b_lambda!4199) (not b!176562) (not b!175072) (not b!176567) (not b!176389) (not b!176248) (not b!176589) (not b!176380) (not b!176258) (not d!44395) (not b!175157) (not b!175508) (not b_lambda!4077) (not d!45055) (not b!176429) (not b!176364) (not b!176657) (not b!176599) (not b_next!6693) (not d!45169) (not b!175457) (not b!175174) (not d!44937) (not b!175425) (not d!44989) (not b!175368) (not bs!17676) (not b!176547) (not b!176256) (not b!175738) (not b!175315) (not b!175320) b_and!11947 (not b_lambda!4193) (not b!176574) b_and!11729 (not d!44753) (not b!176576) (not b!175360) (not b!176624) (not b!176517) (not d!44491) (not bm!7917) (not b!176454) (not b!176529) (not d!45181) (not d!45001) (not b!175737) (not b!175722) (not b!174602) (not b!176348) (not d!45027) (not b!176501) (not b!175327) (not d!44949) (not b!175750) (not bm!7916) (not b!176424) (not tb!7193) (not bm!7876) (not b!175169) (not b!176150) (not b!175409) (not b!175749) (not b!175694) (not bm!7898) (not d!45073) (not d!44963) (not b!176161) (not d!45095) (not b_lambda!4203) (not b!176660) (not d!45129) (not b!175504) (not b!175340) (not d!44417) (not d!44739) (not b!176594) (not b!176165) (not b!176635) (not d!44387) (not d!44959) (not d!44415) (not b!175415) (not b!176619) (not b!175418) (not b!176381) (not d!44725) (not b!176610) (not d!44337) (not b!176396) (not b!176611) (not d!45125) (not b!175052) (not d!45079) (not b!176372) (not b!176349) (not b!175057) (not d!44333) (not b!176447) (not b!176379) (not b_lambda!4163) (not b!175099) (not b!175485) (not d!44981) (not b!176415) (not b!176208) (not b!176206) (not b!175323) (not d!45053) (not b!176291) (not bm!7915) (not b!176279) (not b!176244) (not b!175455) (not b!176260) (not d!44535) (not b!176416) (not b_next!6713) (not b_next!6725) (not d!44569) (not d!45139) (not bm!7900) (not b!176545) (not b!176575) (not b!176520) (not b!176334) (not b!176148) (not d!44705) (not d!45041) (not d!44947) (not b!176637) (not b_lambda!4191) (not b!176525) (not b!176465) (not b!175262) (not d!45017) (not b!175374) (not d!45193) b_and!11941 (not d!45203) (not d!44589) (not bm!7827) (not d!44515) (not b!176538) (not b_lambda!4181) (not d!45067) (not b!175264) (not b!176328) (not b!176239) (not d!45117) (not d!44955) (not d!44543) (not b!176227) (not d!45049) (not b!176149) (not b_next!6729) (not b!175486) (not b!176232) (not b!175379) (not b!175421) (not d!45011) (not b!175691) (not b_lambda!4101) (not b!175416) (not b!176661) (not b!175033) (not b_lambda!4161) (not d!45109) (not d!44549) (not b!176433) (not b!176204) (not b!175414) (not b!175036) (not bm!7912) (not b!175594) (not b!176247) (not b!176641) (not b!175371) (not b!176235) (not b!175682) (not b!175359) (not d!44315) (not b!175313) (not d!45113) (not d!45081) (not b!176136) (not bm!7830) (not d!44489) (not b!175195) (not b!176428) (not d!45149) (not b!176451) (not b!175328) (not b!176438) (not d!45013) (not b!176252) (not d!45143) (not b!176536) (not b_lambda!4091) (not b!175035) (not bm!7892) (not b!176393) (not b!176359) (not b!176145) (not b!175391) (not b!176133) (not d!45199) (not b!176595) (not b!176528) (not b!175739) (not b!175351) (not b!175591) (not bm!7894) (not b!176614) (not d!44503) (not d!44533) (not b!176340) (not b!175390) (not d!44961) (not bm!7868) (not b!176218) (not b!176448) (not d!45137) (not b!175372) (not b!175153) (not b!176164) (not b!176413) (not d!45173) (not d!44309) (not b!175056) (not tb!7203) (not b_next!6699) (not b!176294) (not b_lambda!4069) (not b!175733) (not bm!7908) (not tb!7385) (not b!176226) (not d!44485) (not b_next!6689) (not b!175684) (not d!45195) (not d!44561) (not d!45105) (not b!176446) (not b!175488) (not b!175696) (not b!175478) (not b!175484) (not d!44553) (not b!176546) (not b_next!6711) (not b!175034) (not b_lambda!4195) (not b!176639) (not b!176154) (not b!175362) (not b!176497) (not d!44477) (not d!44563) (not b!176395) (not b!176192) (not d!44545) (not d!44423) (not b!176144) (not d!44727) (not b!176608) (not b!176561) (not b!176386) (not b!176406) (not d!45165) (not b!176391) (not b!176439) (not b!175681) (not b!176345) (not b!176656) (not b!176531) (not d!45061) (not b!176211) (not b!175168) (not b!175194) (not b!176293) (not b!176604) (not bm!7904) (not b!176333) (not b!175483) (not b!176653) (not b!175740) b_and!11935 (not tb!7183) (not d!45183) (not d!44455) (not b!175361) (not b!176605) (not b!176488) (not d!44529) (not b!176401) (not b!176437) (not b!175166) (not b!176617) (not b!175180) (not b!175686) (not b!176443) b_and!11945 (not b!176484) (not b!176587) (not bm!7825) (not d!45121) (not bm!7879) (not d!44365) (not b!176254) (not b!176585) (not d!44537) (not bm!7896) (not bm!7797) (not d!44399) (not b!176387) (not b!176618) (not d!44361) (not b!175358) (not b!176267) (not b!176131) (not d!44969) (not d!45163) (not b!175590) (not b!176490) (not b!175326) (not b!175389) (not b!176245) (not d!44619) (not bm!7897) b_and!11733 (not d!45007) (not d!44975) (not d!45083) (not tb!7345) (not b!175197) (not b!175653) (not b!176242) (not bm!7878) (not b!175592) (not d!44939) (not d!45015) (not b!175151) (not b_next!6715) (not b!175311) (not b!175420) (not b!176435) (not b!176566) (not d!45213) (not b!175487) (not d!45179) (not b!175376) (not d!45005) (not b!176613) (not b!175615) (not b!176362) (not d!45031) (not tb!7365) (not d!45069) (not d!45131) (not b!176411) b_and!11939 (not b_next!6727) (not b!176523) (not b!176442) (not bm!7882) (not b!176426) (not b!176233) (not b!175489) (not d!44403) (not d!44335) (not b!176620) (not b!176556) (not b!176532) (not b!175683) (not bm!7877) (not bm!7910) (not b!175159) (not b!175354) (not d!44519) (not b!176155) (not b!176593) (not d!44517) (not b!176422) (not b!175375) (not b!175312) (not d!44757) (not b!175156) (not tb!7163) (not b!176224) (not b!176568) (not d!44595) (not b!175736) (not bm!7826) (not b!176636) (not b!175741) (not b!176489) (not d!45047) (not b!175322) (not b!175742) (not b!175735) (not b!176602) (not b!176230) (not b!175474) b_and!11951 (not b!176597) (not b!175377) (not d!44397) (not b!176551) (not b!175701) (not b!175402) (not b!175408) (not d!44343) (not d!45077) (not d!44957) (not b!176449) (not b!176480) (not b!176591) (not d!45123) (not b!176151) (not b_lambda!4071) (not b!176474) (not d!44391) (not d!44487) (not b!176257) (not d!44401) (not b!176251) (not b!176191) (not bm!7875) (not bm!7911) (not d!44471) (not d!44669) (not b!176414) (not b!176615) (not d!44527) (not tb!7375) (not b_lambda!4197) (not b_lambda!4187) (not b_lambda!4157) (not b!175479) (not b!176630) (not b!175685) (not b!176650) (not bm!7866) (not b!176555) (not d!44945) (not b!176440) (not d!45185) (not d!44499) (not b!176559) (not d!44991) (not bs!17682) (not b!176475) (not d!45191) (not d!45101) (not b!176557) (not d!44497) (not b_lambda!4073) (not b!176507) (not b!175404) b_and!11731 (not b!176282) (not b_next!6709) (not d!44313) (not d!44317) (not b!176360) (not d!44995) (not b!176277) (not b!176253) (not b!175698) (not b!176444) (not b!175346) (not b!176540) (not b!175397) (not b!176355) (not b!176296) (not b!175423) (not b!176552) (not d!44973) (not b!176524) (not b!175181) (not b!175090) (not bm!7869) (not d!44493) (not d!45003) (not b!176283) (not b!176491) tp_is_empty!1663 (not b!176160) (not d!44393) (not b!176373) (not b!176363) (not b_lambda!4075) (not d!45133) (not b!175693) (not b!175426) (not d!44425) (not b!176522) (not b!175167) (not d!44601) (not b!176127) (not d!44717) (not b!176221) (not d!44941) (not b!176153) (not b!176628) (not b!175365) (not b!176590) (not d!44597) (not b!176623) (not b!176609) (not b!176200) (not d!44469) (not b!175411) (not b!176571) (not b!176344) (not b_next!6731) (not d!44737) (not d!44997) (not d!45157) (not d!44521) (not b!176445) (not bs!17677) (not b!175164) (not b!176473) (not b!176341) (not b!175366) (not b!176521) (not bm!7903) (not bm!7880) (not d!44745) (not b!176535) b_and!11727 (not b!176262) (not b!176481) (not d!44967) (not d!45045) (not b!175353) (not b!175367) (not b_next!6691) (not b!176485) (not b_lambda!4183) (not d!44473) (not b!176482) (not b!176250) (not b!176143) (not tb!7335) (not b!176280) (not b!176207) (not b!176263) (not b!175339) b_and!11937 (not b!175321) (not b!176288) (not b!176427) (not bm!7870) (not bm!7833) (not d!44987) (not b!176560) (not b_lambda!4173) (not b!175690) (not b!176275) (not d!44555) (not b!175092) (not d!44509) (not d!44547) (not b!176553) (not b!176441) (not b_next!6695) (not b!175175) (not b!175325) (not d!44971) (not d!44303) (not d!45025) (not d!45119) (not b!176572) (not d!45091) (not b!176432) (not b!175073) (not d!44965) (not b!174057) (not b!176377) (not b!176570) (not b_lambda!4099) (not b_lambda!4067) (not b!176147) (not b!176651) (not b!176533) (not b!176330) (not b!176361) (not b!176527) (not d!44505) (not d!45135) (not d!44943) (not d!44531) (not b_lambda!4177) (not b!176403) (not d!44999) b_and!11943 (not tb!7355) (not d!45151) (not b!176346) (not d!45063) (not bm!7905) (not b!175356) (not b_lambda!4189) (not b!176631) (not bm!7800) (not d!45187) (not b!176603) (not b!176265) (not b_lambda!4185) (not b!176452) (not bm!7901) (not b_next!6697) (not b!175152) (not d!45205) (not b!175316) (not d!44551) (not b!176649) (not b!175482) (not bm!7914) (not b!176399) (not b!176508) (not d!45197) (not d!44479) (not b!175388) (not b!176530) (not d!45175) (not b!175324) (not b!176644) (not b!176270) (not b!175193) (not b!176259) (not b!176130) (not b!175403) (not b_lambda!4201) (not b!176431) (not d!44507) (not b!176542) (not b!175593) (not b!176201) (not b!176356) (not b!176467) (not b!176549) (not b!176273) (not bs!17680) (not b!176152) (not b!175054) (not b!176601) (not bs!17678) (not d!44599) (not b!176382) (not d!44451) (not b!176205) (not d!45035) (not d!45171) (not d!44541) (not bm!7807) (not b!175338) (not b!175453) b_and!11735 (not bm!7828) (not tb!7395) (not b!176217) (not b!176420) b_and!11949 (not d!44751) (not b!176645) (not d!45065) (not d!44475) (not d!44523) (not b_lambda!4205) (not b!176643) (not b!176423) (not d!44755) (not b!175042) (not d!44501) (not b!176646) (not b!176410) (not b!175350) (not b!176598) (not b!176162) (not d!44587) (not b!175506) (not d!44407) (not b!176498) (not b!176516) (not b!175155) (not b!176398) (not bm!7899) (not bm!7874) (not bm!7883) (not d!44525) (not d!44983) (not d!44565) (not d!45153) (not b!175614) (not b!175721) (not b!176662) (not b!175319) (not bs!17681) (not b!176347) (not b!176366) (not b!175263))
(check-sat (not b_next!6693) b_and!11947 b_and!11729 b_and!11941 (not b_next!6729) (not b_next!6711) b_and!11951 (not b_next!6731) (not b_next!6695) b_and!11943 (not b_next!6697) (not b_next!6713) (not b_next!6725) (not b_next!6689) (not b_next!6699) b_and!11935 b_and!11945 b_and!11733 (not b_next!6715) (not b_next!6727) b_and!11939 (not b_next!6709) b_and!11731 b_and!11727 (not b_next!6691) b_and!11937 b_and!11949 b_and!11735)
