; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19326 () Bool)

(assert start!19326)

(declare-fun b!178045 () Bool)

(declare-fun b_free!6809 () Bool)

(declare-fun b_next!6809 () Bool)

(assert (=> b!178045 (= b_free!6809 (not b_next!6809))))

(declare-fun tp!85599 () Bool)

(declare-fun b_and!12077 () Bool)

(assert (=> b!178045 (= tp!85599 b_and!12077)))

(declare-fun b_free!6811 () Bool)

(declare-fun b_next!6811 () Bool)

(assert (=> b!178045 (= b_free!6811 (not b_next!6811))))

(declare-fun tp!85597 () Bool)

(declare-fun b_and!12079 () Bool)

(assert (=> b!178045 (= tp!85597 b_and!12079)))

(declare-fun b!178036 () Bool)

(declare-fun b_free!6813 () Bool)

(declare-fun b_next!6813 () Bool)

(assert (=> b!178036 (= b_free!6813 (not b_next!6813))))

(declare-fun tp!85595 () Bool)

(declare-fun b_and!12081 () Bool)

(assert (=> b!178036 (= tp!85595 b_and!12081)))

(declare-fun b_free!6815 () Bool)

(declare-fun b_next!6815 () Bool)

(assert (=> b!178036 (= b_free!6815 (not b_next!6815))))

(declare-fun tp!85598 () Bool)

(declare-fun b_and!12083 () Bool)

(assert (=> b!178036 (= tp!85598 b_and!12083)))

(declare-fun b!178047 () Bool)

(declare-fun b_free!6817 () Bool)

(declare-fun b_next!6817 () Bool)

(assert (=> b!178047 (= b_free!6817 (not b_next!6817))))

(declare-fun tp!85601 () Bool)

(declare-fun b_and!12085 () Bool)

(assert (=> b!178047 (= tp!85601 b_and!12085)))

(declare-fun b_free!6819 () Bool)

(declare-fun b_next!6819 () Bool)

(assert (=> b!178047 (= b_free!6819 (not b_next!6819))))

(declare-fun tp!85593 () Bool)

(declare-fun b_and!12087 () Bool)

(assert (=> b!178047 (= tp!85593 b_and!12087)))

(declare-fun bs!17820 () Bool)

(declare-fun b!178049 () Bool)

(declare-fun b!178044 () Bool)

(assert (= bs!17820 (and b!178049 b!178044)))

(declare-fun lambda!5192 () Int)

(declare-fun lambda!5191 () Int)

(assert (=> bs!17820 (not (= lambda!5192 lambda!5191))))

(declare-fun b!178068 () Bool)

(declare-fun e!108121 () Bool)

(assert (=> b!178068 (= e!108121 true)))

(declare-fun b!178067 () Bool)

(declare-fun e!108120 () Bool)

(assert (=> b!178067 (= e!108120 e!108121)))

(declare-fun b!178066 () Bool)

(declare-fun e!108119 () Bool)

(assert (=> b!178066 (= e!108119 e!108120)))

(assert (=> b!178049 e!108119))

(assert (= b!178067 b!178068))

(assert (= b!178066 b!178067))

(declare-datatypes ((List!2973 0))(
  ( (Nil!2963) (Cons!2963 (h!8360 (_ BitVec 16)) (t!28091 List!2973)) )
))
(declare-datatypes ((TokenValue!555 0))(
  ( (FloatLiteralValue!1110 (text!4330 List!2973)) (TokenValueExt!554 (__x!2597 Int)) (Broken!2775 (value!19480 List!2973)) (Object!564) (End!555) (Def!555) (Underscore!555) (Match!555) (Else!555) (Error!555) (Case!555) (If!555) (Extends!555) (Abstract!555) (Class!555) (Val!555) (DelimiterValue!1110 (del!615 List!2973)) (KeywordValue!561 (value!19481 List!2973)) (CommentValue!1110 (value!19482 List!2973)) (WhitespaceValue!1110 (value!19483 List!2973)) (IndentationValue!555 (value!19484 List!2973)) (String!3854) (Int32!555) (Broken!2776 (value!19485 List!2973)) (Boolean!556) (Unit!2705) (OperatorValue!558 (op!615 List!2973)) (IdentifierValue!1110 (value!19486 List!2973)) (IdentifierValue!1111 (value!19487 List!2973)) (WhitespaceValue!1111 (value!19488 List!2973)) (True!1110) (False!1110) (Broken!2777 (value!19489 List!2973)) (Broken!2778 (value!19490 List!2973)) (True!1111) (RightBrace!555) (RightBracket!555) (Colon!555) (Null!555) (Comma!555) (LeftBracket!555) (False!1111) (LeftBrace!555) (ImaginaryLiteralValue!555 (text!4331 List!2973)) (StringLiteralValue!1665 (value!19491 List!2973)) (EOFValue!555 (value!19492 List!2973)) (IdentValue!555 (value!19493 List!2973)) (DelimiterValue!1111 (value!19494 List!2973)) (DedentValue!555 (value!19495 List!2973)) (NewLineValue!555 (value!19496 List!2973)) (IntegerValue!1665 (value!19497 (_ BitVec 32)) (text!4332 List!2973)) (IntegerValue!1666 (value!19498 Int) (text!4333 List!2973)) (Times!555) (Or!555) (Equal!555) (Minus!555) (Broken!2779 (value!19499 List!2973)) (And!555) (Div!555) (LessEqual!555) (Mod!555) (Concat!1312) (Not!555) (Plus!555) (SpaceValue!555 (value!19500 List!2973)) (IntegerValue!1667 (value!19501 Int) (text!4334 List!2973)) (StringLiteralValue!1666 (text!4335 List!2973)) (FloatLiteralValue!1111 (text!4336 List!2973)) (BytesLiteralValue!555 (value!19502 List!2973)) (CommentValue!1111 (value!19503 List!2973)) (StringLiteralValue!1667 (value!19504 List!2973)) (ErrorTokenValue!555 (msg!616 List!2973)) )
))
(declare-datatypes ((C!2436 0))(
  ( (C!2437 (val!1104 Int)) )
))
(declare-datatypes ((List!2974 0))(
  ( (Nil!2964) (Cons!2964 (h!8361 C!2436) (t!28092 List!2974)) )
))
(declare-datatypes ((IArray!1777 0))(
  ( (IArray!1778 (innerList!946 List!2974)) )
))
(declare-datatypes ((Conc!888 0))(
  ( (Node!888 (left!2277 Conc!888) (right!2607 Conc!888) (csize!2006 Int) (cheight!1099 Int)) (Leaf!1494 (xs!3483 IArray!1777) (csize!2007 Int)) (Empty!888) )
))
(declare-datatypes ((BalanceConc!1784 0))(
  ( (BalanceConc!1785 (c!35109 Conc!888)) )
))
(declare-datatypes ((TokenValueInjection!882 0))(
  ( (TokenValueInjection!883 (toValue!1204 Int) (toChars!1063 Int)) )
))
(declare-datatypes ((String!3855 0))(
  ( (String!3856 (value!19505 String)) )
))
(declare-datatypes ((Regex!757 0))(
  ( (ElementMatch!757 (c!35110 C!2436)) (Concat!1313 (regOne!2026 Regex!757) (regTwo!2026 Regex!757)) (EmptyExpr!757) (Star!757 (reg!1086 Regex!757)) (EmptyLang!757) (Union!757 (regOne!2027 Regex!757) (regTwo!2027 Regex!757)) )
))
(declare-datatypes ((Rule!866 0))(
  ( (Rule!867 (regex!533 Regex!757) (tag!711 String!3855) (isSeparator!533 Bool) (transformation!533 TokenValueInjection!882)) )
))
(declare-datatypes ((List!2975 0))(
  ( (Nil!2965) (Cons!2965 (h!8362 Rule!866) (t!28093 List!2975)) )
))
(declare-fun rules!1920 () List!2975)

(get-info :version)

(assert (= (and b!178049 ((_ is Cons!2965) rules!1920)) b!178066))

(declare-fun order!1675 () Int)

(declare-fun order!1673 () Int)

(declare-fun dynLambda!1161 (Int Int) Int)

(declare-fun dynLambda!1162 (Int Int) Int)

(assert (=> b!178068 (< (dynLambda!1161 order!1673 (toValue!1204 (transformation!533 (h!8362 rules!1920)))) (dynLambda!1162 order!1675 lambda!5192))))

(declare-fun order!1677 () Int)

(declare-fun dynLambda!1163 (Int Int) Int)

(assert (=> b!178068 (< (dynLambda!1163 order!1677 (toChars!1063 (transformation!533 (h!8362 rules!1920)))) (dynLambda!1162 order!1675 lambda!5192))))

(assert (=> b!178049 true))

(declare-fun b!178026 () Bool)

(declare-fun res!80402 () Bool)

(declare-fun e!108109 () Bool)

(assert (=> b!178026 (=> (not res!80402) (not e!108109))))

(declare-datatypes ((Token!810 0))(
  ( (Token!811 (value!19506 TokenValue!555) (rule!1048 Rule!866) (size!2451 Int) (originalCharacters!576 List!2974)) )
))
(declare-datatypes ((List!2976 0))(
  ( (Nil!2966) (Cons!2966 (h!8363 Token!810) (t!28094 List!2976)) )
))
(declare-fun tokens!465 () List!2976)

(assert (=> b!178026 (= res!80402 ((_ is Cons!2966) tokens!465))))

(declare-fun b!178027 () Bool)

(declare-fun e!108100 () Bool)

(assert (=> b!178027 (= e!108100 true)))

(declare-fun b!178028 () Bool)

(declare-fun res!80399 () Bool)

(assert (=> b!178028 (=> (not res!80399) (not e!108109))))

(declare-fun separatorToken!170 () Token!810)

(declare-datatypes ((LexerInterface!419 0))(
  ( (LexerInterfaceExt!416 (__x!2598 Int)) (Lexer!417) )
))
(declare-fun thiss!17480 () LexerInterface!419)

(declare-fun rulesProduceIndividualToken!168 (LexerInterface!419 List!2975 Token!810) Bool)

(assert (=> b!178028 (= res!80399 (rulesProduceIndividualToken!168 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!178029 () Bool)

(declare-fun res!80390 () Bool)

(declare-fun e!108101 () Bool)

(assert (=> b!178029 (=> (not res!80390) (not e!108101))))

(declare-datatypes ((tuple2!2914 0))(
  ( (tuple2!2915 (_1!1673 Token!810) (_2!1673 List!2974)) )
))
(declare-fun lt!58041 () tuple2!2914)

(declare-fun isEmpty!1310 (List!2974) Bool)

(assert (=> b!178029 (= res!80390 (isEmpty!1310 (_2!1673 lt!58041)))))

(declare-fun b!178030 () Bool)

(declare-fun e!108096 () Bool)

(declare-fun e!108108 () Bool)

(assert (=> b!178030 (= e!108096 e!108108)))

(declare-fun res!80407 () Bool)

(assert (=> b!178030 (=> res!80407 e!108108)))

(declare-fun lt!58031 () List!2974)

(declare-fun lt!58033 () List!2974)

(declare-fun lt!58045 () List!2974)

(assert (=> b!178030 (= res!80407 (or (not (= lt!58031 lt!58045)) (not (= lt!58045 lt!58033)) (not (= lt!58031 lt!58033))))))

(declare-fun printList!103 (LexerInterface!419 List!2976) List!2974)

(assert (=> b!178030 (= lt!58045 (printList!103 thiss!17480 (Cons!2966 (h!8363 tokens!465) Nil!2966)))))

(declare-fun lt!58038 () BalanceConc!1784)

(declare-fun list!1091 (BalanceConc!1784) List!2974)

(assert (=> b!178030 (= lt!58031 (list!1091 lt!58038))))

(declare-datatypes ((IArray!1779 0))(
  ( (IArray!1780 (innerList!947 List!2976)) )
))
(declare-datatypes ((Conc!889 0))(
  ( (Node!889 (left!2278 Conc!889) (right!2608 Conc!889) (csize!2008 Int) (cheight!1100 Int)) (Leaf!1495 (xs!3484 IArray!1779) (csize!2009 Int)) (Empty!889) )
))
(declare-datatypes ((BalanceConc!1786 0))(
  ( (BalanceConc!1787 (c!35111 Conc!889)) )
))
(declare-fun lt!58032 () BalanceConc!1786)

(declare-fun printTailRec!113 (LexerInterface!419 BalanceConc!1786 Int BalanceConc!1784) BalanceConc!1784)

(assert (=> b!178030 (= lt!58038 (printTailRec!113 thiss!17480 lt!58032 0 (BalanceConc!1785 Empty!888)))))

(declare-fun print!150 (LexerInterface!419 BalanceConc!1786) BalanceConc!1784)

(assert (=> b!178030 (= lt!58038 (print!150 thiss!17480 lt!58032))))

(declare-fun singletonSeq!85 (Token!810) BalanceConc!1786)

(assert (=> b!178030 (= lt!58032 (singletonSeq!85 (h!8363 tokens!465)))))

(declare-fun tp!85594 () Bool)

(declare-fun b!178031 () Bool)

(declare-fun e!108106 () Bool)

(declare-fun e!108088 () Bool)

(declare-fun inv!21 (TokenValue!555) Bool)

(assert (=> b!178031 (= e!108106 (and (inv!21 (value!19506 separatorToken!170)) e!108088 tp!85594))))

(declare-fun b!178032 () Bool)

(declare-fun matchR!95 (Regex!757 List!2974) Bool)

(assert (=> b!178032 (= e!108101 (matchR!95 (regex!533 (rule!1048 (h!8363 tokens!465))) lt!58033))))

(declare-fun b!178034 () Bool)

(declare-fun e!108112 () Bool)

(assert (=> b!178034 (= e!108112 e!108096)))

(declare-fun res!80403 () Bool)

(assert (=> b!178034 (=> res!80403 e!108096)))

(declare-fun e!108104 () Bool)

(assert (=> b!178034 (= res!80403 e!108104)))

(declare-fun res!80387 () Bool)

(assert (=> b!178034 (=> (not res!80387) (not e!108104))))

(declare-fun lt!58029 () Bool)

(assert (=> b!178034 (= res!80387 (not lt!58029))))

(declare-fun lt!58040 () List!2974)

(declare-fun lt!58042 () List!2974)

(assert (=> b!178034 (= lt!58029 (= lt!58040 lt!58042))))

(declare-fun b!178035 () Bool)

(declare-fun res!80397 () Bool)

(assert (=> b!178035 (=> res!80397 e!108108)))

(assert (=> b!178035 (= res!80397 (not (rulesProduceIndividualToken!168 thiss!17480 rules!1920 (h!8363 tokens!465))))))

(declare-fun e!108098 () Bool)

(assert (=> b!178036 (= e!108098 (and tp!85595 tp!85598))))

(declare-fun b!178037 () Bool)

(declare-fun e!108103 () Bool)

(assert (=> b!178037 (= e!108103 (not e!108112))))

(declare-fun res!80401 () Bool)

(assert (=> b!178037 (=> res!80401 e!108112)))

(declare-fun lt!58039 () List!2974)

(declare-fun printWithSeparatorTokenWhenNeededRec!102 (LexerInterface!419 List!2975 BalanceConc!1786 Token!810 Int) BalanceConc!1784)

(declare-fun seqFromList!443 (List!2976) BalanceConc!1786)

(assert (=> b!178037 (= res!80401 (not (= lt!58039 (list!1091 (printWithSeparatorTokenWhenNeededRec!102 thiss!17480 rules!1920 (seqFromList!443 (t!28094 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!58037 () List!2974)

(assert (=> b!178037 (= lt!58037 lt!58042)))

(declare-fun lt!58044 () List!2974)

(declare-fun ++!694 (List!2974 List!2974) List!2974)

(assert (=> b!178037 (= lt!58042 (++!694 lt!58033 lt!58044))))

(declare-fun lt!58035 () List!2974)

(assert (=> b!178037 (= lt!58037 (++!694 (++!694 lt!58033 lt!58035) lt!58039))))

(declare-datatypes ((Unit!2706 0))(
  ( (Unit!2707) )
))
(declare-fun lt!58036 () Unit!2706)

(declare-fun lemmaConcatAssociativity!222 (List!2974 List!2974 List!2974) Unit!2706)

(assert (=> b!178037 (= lt!58036 (lemmaConcatAssociativity!222 lt!58033 lt!58035 lt!58039))))

(declare-fun charsOf!188 (Token!810) BalanceConc!1784)

(assert (=> b!178037 (= lt!58033 (list!1091 (charsOf!188 (h!8363 tokens!465))))))

(assert (=> b!178037 (= lt!58044 (++!694 lt!58035 lt!58039))))

(declare-fun printWithSeparatorTokenWhenNeededList!112 (LexerInterface!419 List!2975 List!2976 Token!810) List!2974)

(assert (=> b!178037 (= lt!58039 (printWithSeparatorTokenWhenNeededList!112 thiss!17480 rules!1920 (t!28094 tokens!465) separatorToken!170))))

(assert (=> b!178037 (= lt!58035 (list!1091 (charsOf!188 separatorToken!170)))))

(declare-fun e!108089 () Bool)

(declare-fun tp!85600 () Bool)

(declare-fun b!178038 () Bool)

(declare-fun inv!3799 (String!3855) Bool)

(declare-fun inv!3802 (TokenValueInjection!882) Bool)

(assert (=> b!178038 (= e!108088 (and tp!85600 (inv!3799 (tag!711 (rule!1048 separatorToken!170))) (inv!3802 (transformation!533 (rule!1048 separatorToken!170))) e!108089))))

(declare-fun b!178039 () Bool)

(declare-fun res!80398 () Bool)

(declare-fun e!108110 () Bool)

(assert (=> b!178039 (=> (not res!80398) (not e!108110))))

(declare-fun rulesInvariant!385 (LexerInterface!419 List!2975) Bool)

(assert (=> b!178039 (= res!80398 (rulesInvariant!385 thiss!17480 rules!1920))))

(declare-fun b!178040 () Bool)

(declare-fun res!80393 () Bool)

(assert (=> b!178040 (=> (not res!80393) (not e!108110))))

(declare-fun isEmpty!1311 (List!2975) Bool)

(assert (=> b!178040 (= res!80393 (not (isEmpty!1311 rules!1920)))))

(declare-fun tp!85589 () Bool)

(declare-fun e!108099 () Bool)

(declare-fun e!108091 () Bool)

(declare-fun b!178041 () Bool)

(assert (=> b!178041 (= e!108099 (and tp!85589 (inv!3799 (tag!711 (rule!1048 (h!8363 tokens!465)))) (inv!3802 (transformation!533 (rule!1048 (h!8363 tokens!465)))) e!108091))))

(declare-fun b!178042 () Bool)

(declare-fun e!108105 () Bool)

(declare-fun e!108093 () Bool)

(declare-fun tp!85590 () Bool)

(assert (=> b!178042 (= e!108105 (and e!108093 tp!85590))))

(declare-fun b!178043 () Bool)

(declare-fun res!80405 () Bool)

(assert (=> b!178043 (=> res!80405 e!108108)))

(declare-fun isEmpty!1312 (BalanceConc!1786) Bool)

(declare-datatypes ((tuple2!2916 0))(
  ( (tuple2!2917 (_1!1674 BalanceConc!1786) (_2!1674 BalanceConc!1784)) )
))
(declare-fun lex!219 (LexerInterface!419 List!2975 BalanceConc!1784) tuple2!2916)

(declare-fun seqFromList!444 (List!2974) BalanceConc!1784)

(assert (=> b!178043 (= res!80405 (isEmpty!1312 (_1!1674 (lex!219 thiss!17480 rules!1920 (seqFromList!444 lt!58033)))))))

(declare-fun res!80404 () Bool)

(assert (=> b!178044 (=> (not res!80404) (not e!108109))))

(declare-fun forall!597 (List!2976 Int) Bool)

(assert (=> b!178044 (= res!80404 (forall!597 tokens!465 lambda!5191))))

(assert (=> b!178045 (= e!108091 (and tp!85599 tp!85597))))

(declare-fun b!178046 () Bool)

(assert (=> b!178046 (= e!108110 e!108109)))

(declare-fun res!80388 () Bool)

(assert (=> b!178046 (=> (not res!80388) (not e!108109))))

(declare-fun lt!58046 () BalanceConc!1786)

(declare-fun rulesProduceEachTokenIndividually!211 (LexerInterface!419 List!2975 BalanceConc!1786) Bool)

(assert (=> b!178046 (= res!80388 (rulesProduceEachTokenIndividually!211 thiss!17480 rules!1920 lt!58046))))

(assert (=> b!178046 (= lt!58046 (seqFromList!443 tokens!465))))

(assert (=> b!178047 (= e!108089 (and tp!85601 tp!85593))))

(declare-fun b!178048 () Bool)

(declare-fun res!80391 () Bool)

(assert (=> b!178048 (=> (not res!80391) (not e!108103))))

(declare-fun lt!58043 () List!2974)

(assert (=> b!178048 (= res!80391 (= (list!1091 (seqFromList!444 lt!58040)) lt!58043))))

(declare-fun e!108111 () Bool)

(assert (=> b!178049 (= e!108108 e!108111)))

(declare-fun res!80392 () Bool)

(assert (=> b!178049 (=> res!80392 e!108111)))

(declare-datatypes ((tuple2!2918 0))(
  ( (tuple2!2919 (_1!1675 Token!810) (_2!1675 BalanceConc!1784)) )
))
(declare-datatypes ((Option!344 0))(
  ( (None!343) (Some!343 (v!13812 tuple2!2918)) )
))
(declare-fun isDefined!195 (Option!344) Bool)

(declare-fun maxPrefixZipperSequence!112 (LexerInterface!419 List!2975 BalanceConc!1784) Option!344)

(assert (=> b!178049 (= res!80392 (not (isDefined!195 (maxPrefixZipperSequence!112 thiss!17480 rules!1920 (seqFromList!444 (originalCharacters!576 (h!8363 tokens!465)))))))))

(declare-fun lt!58030 () Unit!2706)

(declare-fun forallContained!100 (List!2976 Int Token!810) Unit!2706)

(assert (=> b!178049 (= lt!58030 (forallContained!100 tokens!465 lambda!5192 (h!8363 tokens!465)))))

(assert (=> b!178049 (= lt!58033 (originalCharacters!576 (h!8363 tokens!465)))))

(declare-fun b!178050 () Bool)

(assert (=> b!178050 (= e!108111 e!108100)))

(declare-fun res!80406 () Bool)

(assert (=> b!178050 (=> res!80406 e!108100)))

(assert (=> b!178050 (= res!80406 (not lt!58029))))

(assert (=> b!178050 e!108101))

(declare-fun res!80389 () Bool)

(assert (=> b!178050 (=> (not res!80389) (not e!108101))))

(assert (=> b!178050 (= res!80389 (= (_1!1673 lt!58041) (h!8363 tokens!465)))))

(declare-datatypes ((Option!345 0))(
  ( (None!344) (Some!344 (v!13813 tuple2!2914)) )
))
(declare-fun lt!58034 () Option!345)

(declare-fun get!826 (Option!345) tuple2!2914)

(assert (=> b!178050 (= lt!58041 (get!826 lt!58034))))

(declare-fun isDefined!196 (Option!345) Bool)

(assert (=> b!178050 (isDefined!196 lt!58034)))

(declare-fun maxPrefix!149 (LexerInterface!419 List!2975 List!2974) Option!345)

(assert (=> b!178050 (= lt!58034 (maxPrefix!149 thiss!17480 rules!1920 lt!58033))))

(declare-fun b!178051 () Bool)

(declare-fun res!80395 () Bool)

(assert (=> b!178051 (=> (not res!80395) (not e!108109))))

(declare-fun sepAndNonSepRulesDisjointChars!122 (List!2975 List!2975) Bool)

(assert (=> b!178051 (= res!80395 (sepAndNonSepRulesDisjointChars!122 rules!1920 rules!1920))))

(declare-fun e!108097 () Bool)

(declare-fun b!178052 () Bool)

(declare-fun tp!85591 () Bool)

(assert (=> b!178052 (= e!108097 (and (inv!21 (value!19506 (h!8363 tokens!465))) e!108099 tp!85591))))

(declare-fun b!178053 () Bool)

(assert (=> b!178053 (= e!108109 e!108103)))

(declare-fun res!80408 () Bool)

(assert (=> b!178053 (=> (not res!80408) (not e!108103))))

(assert (=> b!178053 (= res!80408 (= lt!58040 lt!58043))))

(assert (=> b!178053 (= lt!58043 (list!1091 (printWithSeparatorTokenWhenNeededRec!102 thiss!17480 rules!1920 lt!58046 separatorToken!170 0)))))

(assert (=> b!178053 (= lt!58040 (printWithSeparatorTokenWhenNeededList!112 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!178054 () Bool)

(assert (=> b!178054 (= e!108104 (not (= lt!58040 (++!694 lt!58033 lt!58039))))))

(declare-fun b!178055 () Bool)

(declare-fun res!80400 () Bool)

(assert (=> b!178055 (=> res!80400 e!108100)))

(declare-fun rulesProduceEachTokenIndividuallyList!121 (LexerInterface!419 List!2975 List!2976) Bool)

(assert (=> b!178055 (= res!80400 (not (rulesProduceEachTokenIndividuallyList!121 thiss!17480 rules!1920 (t!28094 tokens!465))))))

(declare-fun b!178056 () Bool)

(declare-fun res!80396 () Bool)

(assert (=> b!178056 (=> (not res!80396) (not e!108109))))

(assert (=> b!178056 (= res!80396 (isSeparator!533 (rule!1048 separatorToken!170)))))

(declare-fun b!178057 () Bool)

(declare-fun e!108094 () Bool)

(declare-fun tp!85592 () Bool)

(declare-fun inv!3803 (Token!810) Bool)

(assert (=> b!178057 (= e!108094 (and (inv!3803 (h!8363 tokens!465)) e!108097 tp!85592))))

(declare-fun res!80394 () Bool)

(assert (=> start!19326 (=> (not res!80394) (not e!108110))))

(assert (=> start!19326 (= res!80394 ((_ is Lexer!417) thiss!17480))))

(assert (=> start!19326 e!108110))

(assert (=> start!19326 true))

(assert (=> start!19326 e!108105))

(assert (=> start!19326 (and (inv!3803 separatorToken!170) e!108106)))

(assert (=> start!19326 e!108094))

(declare-fun tp!85596 () Bool)

(declare-fun b!178033 () Bool)

(assert (=> b!178033 (= e!108093 (and tp!85596 (inv!3799 (tag!711 (h!8362 rules!1920))) (inv!3802 (transformation!533 (h!8362 rules!1920))) e!108098))))

(assert (= (and start!19326 res!80394) b!178040))

(assert (= (and b!178040 res!80393) b!178039))

(assert (= (and b!178039 res!80398) b!178046))

(assert (= (and b!178046 res!80388) b!178028))

(assert (= (and b!178028 res!80399) b!178056))

(assert (= (and b!178056 res!80396) b!178044))

(assert (= (and b!178044 res!80404) b!178051))

(assert (= (and b!178051 res!80395) b!178026))

(assert (= (and b!178026 res!80402) b!178053))

(assert (= (and b!178053 res!80408) b!178048))

(assert (= (and b!178048 res!80391) b!178037))

(assert (= (and b!178037 (not res!80401)) b!178034))

(assert (= (and b!178034 res!80387) b!178054))

(assert (= (and b!178034 (not res!80403)) b!178030))

(assert (= (and b!178030 (not res!80407)) b!178035))

(assert (= (and b!178035 (not res!80397)) b!178043))

(assert (= (and b!178043 (not res!80405)) b!178049))

(assert (= (and b!178049 (not res!80392)) b!178050))

(assert (= (and b!178050 res!80389) b!178029))

(assert (= (and b!178029 res!80390) b!178032))

(assert (= (and b!178050 (not res!80406)) b!178055))

(assert (= (and b!178055 (not res!80400)) b!178027))

(assert (= b!178033 b!178036))

(assert (= b!178042 b!178033))

(assert (= (and start!19326 ((_ is Cons!2965) rules!1920)) b!178042))

(assert (= b!178038 b!178047))

(assert (= b!178031 b!178038))

(assert (= start!19326 b!178031))

(assert (= b!178041 b!178045))

(assert (= b!178052 b!178041))

(assert (= b!178057 b!178052))

(assert (= (and start!19326 ((_ is Cons!2966) tokens!465)) b!178057))

(declare-fun m!179881 () Bool)

(assert (=> b!178055 m!179881))

(declare-fun m!179883 () Bool)

(assert (=> b!178038 m!179883))

(declare-fun m!179885 () Bool)

(assert (=> b!178038 m!179885))

(declare-fun m!179887 () Bool)

(assert (=> b!178054 m!179887))

(declare-fun m!179889 () Bool)

(assert (=> b!178053 m!179889))

(assert (=> b!178053 m!179889))

(declare-fun m!179891 () Bool)

(assert (=> b!178053 m!179891))

(declare-fun m!179893 () Bool)

(assert (=> b!178053 m!179893))

(declare-fun m!179895 () Bool)

(assert (=> start!19326 m!179895))

(declare-fun m!179897 () Bool)

(assert (=> b!178032 m!179897))

(declare-fun m!179899 () Bool)

(assert (=> b!178035 m!179899))

(declare-fun m!179901 () Bool)

(assert (=> b!178041 m!179901))

(declare-fun m!179903 () Bool)

(assert (=> b!178041 m!179903))

(declare-fun m!179905 () Bool)

(assert (=> b!178049 m!179905))

(assert (=> b!178049 m!179905))

(declare-fun m!179907 () Bool)

(assert (=> b!178049 m!179907))

(assert (=> b!178049 m!179907))

(declare-fun m!179909 () Bool)

(assert (=> b!178049 m!179909))

(declare-fun m!179911 () Bool)

(assert (=> b!178049 m!179911))

(declare-fun m!179913 () Bool)

(assert (=> b!178048 m!179913))

(assert (=> b!178048 m!179913))

(declare-fun m!179915 () Bool)

(assert (=> b!178048 m!179915))

(declare-fun m!179917 () Bool)

(assert (=> b!178052 m!179917))

(declare-fun m!179919 () Bool)

(assert (=> b!178040 m!179919))

(declare-fun m!179921 () Bool)

(assert (=> b!178039 m!179921))

(declare-fun m!179923 () Bool)

(assert (=> b!178037 m!179923))

(declare-fun m!179925 () Bool)

(assert (=> b!178037 m!179925))

(declare-fun m!179927 () Bool)

(assert (=> b!178037 m!179927))

(declare-fun m!179929 () Bool)

(assert (=> b!178037 m!179929))

(declare-fun m!179931 () Bool)

(assert (=> b!178037 m!179931))

(assert (=> b!178037 m!179929))

(declare-fun m!179933 () Bool)

(assert (=> b!178037 m!179933))

(declare-fun m!179935 () Bool)

(assert (=> b!178037 m!179935))

(assert (=> b!178037 m!179923))

(declare-fun m!179937 () Bool)

(assert (=> b!178037 m!179937))

(declare-fun m!179939 () Bool)

(assert (=> b!178037 m!179939))

(assert (=> b!178037 m!179925))

(declare-fun m!179941 () Bool)

(assert (=> b!178037 m!179941))

(declare-fun m!179943 () Bool)

(assert (=> b!178037 m!179943))

(assert (=> b!178037 m!179939))

(declare-fun m!179945 () Bool)

(assert (=> b!178037 m!179945))

(assert (=> b!178037 m!179937))

(declare-fun m!179947 () Bool)

(assert (=> b!178037 m!179947))

(declare-fun m!179949 () Bool)

(assert (=> b!178030 m!179949))

(declare-fun m!179951 () Bool)

(assert (=> b!178030 m!179951))

(declare-fun m!179953 () Bool)

(assert (=> b!178030 m!179953))

(declare-fun m!179955 () Bool)

(assert (=> b!178030 m!179955))

(declare-fun m!179957 () Bool)

(assert (=> b!178030 m!179957))

(declare-fun m!179959 () Bool)

(assert (=> b!178057 m!179959))

(declare-fun m!179961 () Bool)

(assert (=> b!178043 m!179961))

(assert (=> b!178043 m!179961))

(declare-fun m!179963 () Bool)

(assert (=> b!178043 m!179963))

(declare-fun m!179965 () Bool)

(assert (=> b!178043 m!179965))

(declare-fun m!179967 () Bool)

(assert (=> b!178028 m!179967))

(declare-fun m!179969 () Bool)

(assert (=> b!178044 m!179969))

(declare-fun m!179971 () Bool)

(assert (=> b!178033 m!179971))

(declare-fun m!179973 () Bool)

(assert (=> b!178033 m!179973))

(declare-fun m!179975 () Bool)

(assert (=> b!178050 m!179975))

(declare-fun m!179977 () Bool)

(assert (=> b!178050 m!179977))

(declare-fun m!179979 () Bool)

(assert (=> b!178050 m!179979))

(declare-fun m!179981 () Bool)

(assert (=> b!178046 m!179981))

(declare-fun m!179983 () Bool)

(assert (=> b!178046 m!179983))

(declare-fun m!179985 () Bool)

(assert (=> b!178029 m!179985))

(declare-fun m!179987 () Bool)

(assert (=> b!178051 m!179987))

(declare-fun m!179989 () Bool)

(assert (=> b!178031 m!179989))

(check-sat b_and!12087 (not b!178057) (not b!178053) (not b!178050) (not b_next!6811) (not b!178031) (not b!178033) (not b!178041) b_and!12085 (not b!178032) b_and!12077 (not b!178055) (not b!178044) (not b!178043) (not b!178038) (not b!178052) (not b!178054) (not b!178048) (not b!178049) (not b!178029) (not b_next!6815) (not b_next!6809) (not b!178039) b_and!12083 (not b!178035) (not b!178037) (not b_next!6817) (not b_next!6819) (not b!178051) (not b!178066) (not b!178040) b_and!12081 (not b_next!6813) (not b!178030) (not b!178046) b_and!12079 (not b!178042) (not start!19326) (not b!178028))
(check-sat b_and!12087 b_and!12077 (not b_next!6815) (not b_next!6809) b_and!12083 (not b_next!6817) (not b_next!6819) (not b_next!6811) b_and!12079 b_and!12085 b_and!12081 (not b_next!6813))
