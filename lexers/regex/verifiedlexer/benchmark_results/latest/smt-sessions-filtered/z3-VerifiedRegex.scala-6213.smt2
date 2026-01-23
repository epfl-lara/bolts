; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!300446 () Bool)

(assert start!300446)

(declare-fun b!3201175 () Bool)

(declare-fun b_free!85121 () Bool)

(declare-fun b_next!85825 () Bool)

(assert (=> b!3201175 (= b_free!85121 (not b_next!85825))))

(declare-fun tp!1011828 () Bool)

(declare-fun b_and!212807 () Bool)

(assert (=> b!3201175 (= tp!1011828 b_and!212807)))

(declare-fun b_free!85123 () Bool)

(declare-fun b_next!85827 () Bool)

(assert (=> b!3201175 (= b_free!85123 (not b_next!85827))))

(declare-fun tp!1011824 () Bool)

(declare-fun b_and!212809 () Bool)

(assert (=> b!3201175 (= tp!1011824 b_and!212809)))

(declare-fun b!3201192 () Bool)

(declare-fun b_free!85125 () Bool)

(declare-fun b_next!85829 () Bool)

(assert (=> b!3201192 (= b_free!85125 (not b_next!85829))))

(declare-fun tp!1011818 () Bool)

(declare-fun b_and!212811 () Bool)

(assert (=> b!3201192 (= tp!1011818 b_and!212811)))

(declare-fun b_free!85127 () Bool)

(declare-fun b_next!85831 () Bool)

(assert (=> b!3201192 (= b_free!85127 (not b_next!85831))))

(declare-fun tp!1011826 () Bool)

(declare-fun b_and!212813 () Bool)

(assert (=> b!3201192 (= tp!1011826 b_and!212813)))

(declare-fun b!3201193 () Bool)

(declare-fun b_free!85129 () Bool)

(declare-fun b_next!85833 () Bool)

(assert (=> b!3201193 (= b_free!85129 (not b_next!85833))))

(declare-fun tp!1011819 () Bool)

(declare-fun b_and!212815 () Bool)

(assert (=> b!3201193 (= tp!1011819 b_and!212815)))

(declare-fun b_free!85131 () Bool)

(declare-fun b_next!85835 () Bool)

(assert (=> b!3201193 (= b_free!85131 (not b_next!85835))))

(declare-fun tp!1011827 () Bool)

(declare-fun b_and!212817 () Bool)

(assert (=> b!3201193 (= tp!1011827 b_and!212817)))

(declare-fun bs!540887 () Bool)

(declare-fun b!3201181 () Bool)

(declare-fun b!3201187 () Bool)

(assert (= bs!540887 (and b!3201181 b!3201187)))

(declare-fun lambda!117203 () Int)

(declare-fun lambda!117202 () Int)

(assert (=> bs!540887 (not (= lambda!117203 lambda!117202))))

(declare-fun b!3201220 () Bool)

(declare-fun e!1995934 () Bool)

(assert (=> b!3201220 (= e!1995934 true)))

(declare-fun b!3201219 () Bool)

(declare-fun e!1995933 () Bool)

(assert (=> b!3201219 (= e!1995933 e!1995934)))

(declare-fun b!3201218 () Bool)

(declare-fun e!1995932 () Bool)

(assert (=> b!3201218 (= e!1995932 e!1995933)))

(assert (=> b!3201181 e!1995932))

(assert (= b!3201219 b!3201220))

(assert (= b!3201218 b!3201219))

(declare-datatypes ((C!20116 0))(
  ( (C!20117 (val!12106 Int)) )
))
(declare-datatypes ((Regex!9965 0))(
  ( (ElementMatch!9965 (c!537386 C!20116)) (Concat!15401 (regOne!20442 Regex!9965) (regTwo!20442 Regex!9965)) (EmptyExpr!9965) (Star!9965 (reg!10294 Regex!9965)) (EmptyLang!9965) (Union!9965 (regOne!20443 Regex!9965) (regTwo!20443 Regex!9965)) )
))
(declare-datatypes ((List!36224 0))(
  ( (Nil!36100) (Cons!36100 (h!41520 (_ BitVec 16)) (t!237475 List!36224)) )
))
(declare-datatypes ((TokenValue!5436 0))(
  ( (FloatLiteralValue!10872 (text!38497 List!36224)) (TokenValueExt!5435 (__x!23089 Int)) (Broken!27180 (value!168805 List!36224)) (Object!5559) (End!5436) (Def!5436) (Underscore!5436) (Match!5436) (Else!5436) (Error!5436) (Case!5436) (If!5436) (Extends!5436) (Abstract!5436) (Class!5436) (Val!5436) (DelimiterValue!10872 (del!5496 List!36224)) (KeywordValue!5442 (value!168806 List!36224)) (CommentValue!10872 (value!168807 List!36224)) (WhitespaceValue!10872 (value!168808 List!36224)) (IndentationValue!5436 (value!168809 List!36224)) (String!40513) (Int32!5436) (Broken!27181 (value!168810 List!36224)) (Boolean!5437) (Unit!50515) (OperatorValue!5439 (op!5496 List!36224)) (IdentifierValue!10872 (value!168811 List!36224)) (IdentifierValue!10873 (value!168812 List!36224)) (WhitespaceValue!10873 (value!168813 List!36224)) (True!10872) (False!10872) (Broken!27182 (value!168814 List!36224)) (Broken!27183 (value!168815 List!36224)) (True!10873) (RightBrace!5436) (RightBracket!5436) (Colon!5436) (Null!5436) (Comma!5436) (LeftBracket!5436) (False!10873) (LeftBrace!5436) (ImaginaryLiteralValue!5436 (text!38498 List!36224)) (StringLiteralValue!16308 (value!168816 List!36224)) (EOFValue!5436 (value!168817 List!36224)) (IdentValue!5436 (value!168818 List!36224)) (DelimiterValue!10873 (value!168819 List!36224)) (DedentValue!5436 (value!168820 List!36224)) (NewLineValue!5436 (value!168821 List!36224)) (IntegerValue!16308 (value!168822 (_ BitVec 32)) (text!38499 List!36224)) (IntegerValue!16309 (value!168823 Int) (text!38500 List!36224)) (Times!5436) (Or!5436) (Equal!5436) (Minus!5436) (Broken!27184 (value!168824 List!36224)) (And!5436) (Div!5436) (LessEqual!5436) (Mod!5436) (Concat!15402) (Not!5436) (Plus!5436) (SpaceValue!5436 (value!168825 List!36224)) (IntegerValue!16310 (value!168826 Int) (text!38501 List!36224)) (StringLiteralValue!16309 (text!38502 List!36224)) (FloatLiteralValue!10873 (text!38503 List!36224)) (BytesLiteralValue!5436 (value!168827 List!36224)) (CommentValue!10873 (value!168828 List!36224)) (StringLiteralValue!16310 (value!168829 List!36224)) (ErrorTokenValue!5436 (msg!5497 List!36224)) )
))
(declare-datatypes ((List!36225 0))(
  ( (Nil!36101) (Cons!36101 (h!41521 C!20116) (t!237476 List!36225)) )
))
(declare-datatypes ((IArray!21579 0))(
  ( (IArray!21580 (innerList!10847 List!36225)) )
))
(declare-datatypes ((Conc!10787 0))(
  ( (Node!10787 (left!28052 Conc!10787) (right!28382 Conc!10787) (csize!21804 Int) (cheight!10998 Int)) (Leaf!17001 (xs!13905 IArray!21579) (csize!21805 Int)) (Empty!10787) )
))
(declare-datatypes ((BalanceConc!21188 0))(
  ( (BalanceConc!21189 (c!537387 Conc!10787)) )
))
(declare-datatypes ((String!40514 0))(
  ( (String!40515 (value!168830 String)) )
))
(declare-datatypes ((TokenValueInjection!10300 0))(
  ( (TokenValueInjection!10301 (toValue!7282 Int) (toChars!7141 Int)) )
))
(declare-datatypes ((Rule!10212 0))(
  ( (Rule!10213 (regex!5206 Regex!9965) (tag!5728 String!40514) (isSeparator!5206 Bool) (transformation!5206 TokenValueInjection!10300)) )
))
(declare-datatypes ((List!36226 0))(
  ( (Nil!36102) (Cons!36102 (h!41522 Rule!10212) (t!237477 List!36226)) )
))
(declare-fun rules!2135 () List!36226)

(get-info :version)

(assert (= (and b!3201181 ((_ is Cons!36102) rules!2135)) b!3201218))

(declare-fun order!18349 () Int)

(declare-fun order!18351 () Int)

(declare-fun dynLambda!14533 (Int Int) Int)

(declare-fun dynLambda!14534 (Int Int) Int)

(assert (=> b!3201220 (< (dynLambda!14533 order!18349 (toValue!7282 (transformation!5206 (h!41522 rules!2135)))) (dynLambda!14534 order!18351 lambda!117203))))

(declare-fun order!18353 () Int)

(declare-fun dynLambda!14535 (Int Int) Int)

(assert (=> b!3201220 (< (dynLambda!14535 order!18353 (toChars!7141 (transformation!5206 (h!41522 rules!2135)))) (dynLambda!14534 order!18351 lambda!117203))))

(assert (=> b!3201181 true))

(declare-fun b!3201171 () Bool)

(declare-fun e!1995912 () Bool)

(assert (=> b!3201171 (= e!1995912 false)))

(declare-fun b!3201172 () Bool)

(declare-fun res!1302741 () Bool)

(declare-fun e!1995894 () Bool)

(assert (=> b!3201172 (=> res!1302741 e!1995894)))

(declare-datatypes ((Token!9778 0))(
  ( (Token!9779 (value!168831 TokenValue!5436) (rule!7642 Rule!10212) (size!27189 Int) (originalCharacters!5920 List!36225)) )
))
(declare-datatypes ((List!36227 0))(
  ( (Nil!36103) (Cons!36103 (h!41523 Token!9778) (t!237478 List!36227)) )
))
(declare-fun tokens!494 () List!36227)

(declare-datatypes ((LexerInterface!4795 0))(
  ( (LexerInterfaceExt!4792 (__x!23090 Int)) (Lexer!4793) )
))
(declare-fun thiss!18206 () LexerInterface!4795)

(declare-fun rulesProduceIndividualToken!2287 (LexerInterface!4795 List!36226 Token!9778) Bool)

(assert (=> b!3201172 (= res!1302741 (not (rulesProduceIndividualToken!2287 thiss!18206 rules!2135 (h!41523 tokens!494))))))

(declare-fun b!3201173 () Bool)

(declare-fun e!1995918 () Bool)

(declare-fun e!1995920 () Bool)

(declare-fun tp!1011829 () Bool)

(assert (=> b!3201173 (= e!1995918 (and e!1995920 tp!1011829))))

(declare-fun b!3201174 () Bool)

(declare-fun e!1995903 () Bool)

(declare-fun lt!1079905 () Rule!10212)

(assert (=> b!3201174 (= e!1995903 (= (rule!7642 (h!41523 tokens!494)) lt!1079905))))

(declare-fun e!1995902 () Bool)

(assert (=> b!3201175 (= e!1995902 (and tp!1011828 tp!1011824))))

(declare-fun b!3201176 () Bool)

(declare-fun e!1995914 () Bool)

(declare-datatypes ((IArray!21581 0))(
  ( (IArray!21582 (innerList!10848 List!36227)) )
))
(declare-datatypes ((Conc!10788 0))(
  ( (Node!10788 (left!28053 Conc!10788) (right!28383 Conc!10788) (csize!21806 Int) (cheight!10999 Int)) (Leaf!17002 (xs!13906 IArray!21581) (csize!21807 Int)) (Empty!10788) )
))
(declare-datatypes ((BalanceConc!21190 0))(
  ( (BalanceConc!21191 (c!537388 Conc!10788)) )
))
(declare-datatypes ((tuple2!35478 0))(
  ( (tuple2!35479 (_1!20873 BalanceConc!21190) (_2!20873 BalanceConc!21188)) )
))
(declare-fun lt!1079891 () tuple2!35478)

(declare-fun isEmpty!20179 (BalanceConc!21188) Bool)

(assert (=> b!3201176 (= e!1995914 (isEmpty!20179 (_2!20873 lt!1079891)))))

(declare-fun b!3201177 () Bool)

(declare-fun res!1302727 () Bool)

(declare-fun e!1995910 () Bool)

(assert (=> b!3201177 (=> (not res!1302727) (not e!1995910))))

(declare-fun rulesInvariant!4192 (LexerInterface!4795 List!36226) Bool)

(assert (=> b!3201177 (= res!1302727 (rulesInvariant!4192 thiss!18206 rules!2135))))

(declare-fun b!3201178 () Bool)

(declare-fun res!1302732 () Bool)

(assert (=> b!3201178 (=> (not res!1302732) (not e!1995910))))

(declare-fun rulesProduceEachTokenIndividually!1246 (LexerInterface!4795 List!36226 BalanceConc!21190) Bool)

(declare-fun seqFromList!3483 (List!36227) BalanceConc!21190)

(assert (=> b!3201178 (= res!1302732 (rulesProduceEachTokenIndividually!1246 thiss!18206 rules!2135 (seqFromList!3483 tokens!494)))))

(declare-fun b!3201179 () Bool)

(declare-fun e!1995923 () Bool)

(declare-fun separatorToken!241 () Token!9778)

(declare-fun lt!1079889 () Rule!10212)

(assert (=> b!3201179 (= e!1995923 (= (rule!7642 separatorToken!241) lt!1079889))))

(declare-fun b!3201180 () Bool)

(declare-fun e!1995924 () Bool)

(declare-fun e!1995897 () Bool)

(declare-fun tp!1011821 () Bool)

(declare-fun inv!21 (TokenValue!5436) Bool)

(assert (=> b!3201180 (= e!1995924 (and (inv!21 (value!168831 (h!41523 tokens!494))) e!1995897 tp!1011821))))

(declare-fun e!1995925 () Bool)

(declare-fun e!1995898 () Bool)

(assert (=> b!3201181 (= e!1995925 e!1995898)))

(declare-fun res!1302737 () Bool)

(assert (=> b!3201181 (=> (not res!1302737) (not e!1995898))))

(declare-fun forall!7358 (List!36227 Int) Bool)

(assert (=> b!3201181 (= res!1302737 (forall!7358 tokens!494 lambda!117203))))

(declare-fun e!1995921 () Bool)

(assert (=> b!3201181 (= (rulesProduceIndividualToken!2287 thiss!18206 rules!2135 (h!41523 (t!237478 tokens!494))) e!1995921)))

(declare-fun res!1302749 () Bool)

(assert (=> b!3201181 (=> (not res!1302749) (not e!1995921))))

(declare-fun lt!1079896 () tuple2!35478)

(declare-fun size!27190 (BalanceConc!21190) Int)

(assert (=> b!3201181 (= res!1302749 (= (size!27190 (_1!20873 lt!1079896)) 1))))

(declare-fun lt!1079906 () BalanceConc!21188)

(declare-fun lex!2125 (LexerInterface!4795 List!36226 BalanceConc!21188) tuple2!35478)

(assert (=> b!3201181 (= lt!1079896 (lex!2125 thiss!18206 rules!2135 lt!1079906))))

(declare-fun lt!1079897 () BalanceConc!21190)

(declare-fun printTailRec!1292 (LexerInterface!4795 BalanceConc!21190 Int BalanceConc!21188) BalanceConc!21188)

(assert (=> b!3201181 (= lt!1079906 (printTailRec!1292 thiss!18206 lt!1079897 0 (BalanceConc!21189 Empty!10787)))))

(declare-fun print!1860 (LexerInterface!4795 BalanceConc!21190) BalanceConc!21188)

(assert (=> b!3201181 (= lt!1079906 (print!1860 thiss!18206 lt!1079897))))

(declare-fun singletonSeq!2302 (Token!9778) BalanceConc!21190)

(assert (=> b!3201181 (= lt!1079897 (singletonSeq!2302 (h!41523 (t!237478 tokens!494))))))

(assert (=> b!3201181 e!1995914))

(declare-fun res!1302735 () Bool)

(assert (=> b!3201181 (=> (not res!1302735) (not e!1995914))))

(assert (=> b!3201181 (= res!1302735 (= (size!27190 (_1!20873 lt!1079891)) 1))))

(declare-fun lt!1079881 () BalanceConc!21188)

(assert (=> b!3201181 (= lt!1079891 (lex!2125 thiss!18206 rules!2135 lt!1079881))))

(declare-fun lt!1079899 () BalanceConc!21190)

(assert (=> b!3201181 (= lt!1079881 (printTailRec!1292 thiss!18206 lt!1079899 0 (BalanceConc!21189 Empty!10787)))))

(assert (=> b!3201181 (= lt!1079881 (print!1860 thiss!18206 lt!1079899))))

(assert (=> b!3201181 (= lt!1079899 (singletonSeq!2302 separatorToken!241))))

(declare-datatypes ((Unit!50516 0))(
  ( (Unit!50517) )
))
(declare-fun lt!1079887 () Unit!50516)

(declare-fun e!1995915 () Unit!50516)

(assert (=> b!3201181 (= lt!1079887 e!1995915)))

(declare-fun c!537385 () Bool)

(declare-fun lt!1079902 () C!20116)

(declare-fun contains!6424 (List!36225 C!20116) Bool)

(declare-fun usedCharacters!522 (Regex!9965) List!36225)

(assert (=> b!3201181 (= c!537385 (not (contains!6424 (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241))) lt!1079902)))))

(declare-fun lt!1079883 () List!36225)

(declare-fun head!7021 (List!36225) C!20116)

(assert (=> b!3201181 (= lt!1079902 (head!7021 lt!1079883))))

(declare-fun e!1995911 () Bool)

(assert (=> b!3201181 e!1995911))

(declare-fun res!1302743 () Bool)

(assert (=> b!3201181 (=> (not res!1302743) (not e!1995911))))

(declare-datatypes ((Option!7107 0))(
  ( (None!7106) (Some!7106 (v!35636 Rule!10212)) )
))
(declare-fun lt!1079884 () Option!7107)

(declare-fun isDefined!5534 (Option!7107) Bool)

(assert (=> b!3201181 (= res!1302743 (isDefined!5534 lt!1079884))))

(declare-fun getRuleFromTag!911 (LexerInterface!4795 List!36226 String!40514) Option!7107)

(assert (=> b!3201181 (= lt!1079884 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241))))))

(declare-fun lt!1079890 () Unit!50516)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!911 (LexerInterface!4795 List!36226 List!36225 Token!9778) Unit!50516)

(assert (=> b!3201181 (= lt!1079890 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!911 thiss!18206 rules!2135 lt!1079883 separatorToken!241))))

(declare-fun lt!1079879 () List!36225)

(declare-fun lt!1079875 () BalanceConc!21188)

(declare-datatypes ((tuple2!35480 0))(
  ( (tuple2!35481 (_1!20874 Token!9778) (_2!20874 List!36225)) )
))
(declare-datatypes ((Option!7108 0))(
  ( (None!7107) (Some!7107 (v!35637 tuple2!35480)) )
))
(declare-fun maxPrefixOneRule!1574 (LexerInterface!4795 Rule!10212 List!36225) Option!7108)

(declare-fun apply!8149 (TokenValueInjection!10300 BalanceConc!21188) TokenValue!5436)

(declare-fun size!27191 (List!36225) Int)

(assert (=> b!3201181 (= (maxPrefixOneRule!1574 thiss!18206 (rule!7642 (h!41523 tokens!494)) lt!1079879) (Some!7107 (tuple2!35481 (Token!9779 (apply!8149 (transformation!5206 (rule!7642 (h!41523 tokens!494))) lt!1079875) (rule!7642 (h!41523 tokens!494)) (size!27191 lt!1079879) lt!1079879) Nil!36101)))))

(declare-fun lt!1079898 () Unit!50516)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!687 (LexerInterface!4795 List!36226 List!36225 List!36225 List!36225 Rule!10212) Unit!50516)

(assert (=> b!3201181 (= lt!1079898 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!687 thiss!18206 rules!2135 lt!1079879 lt!1079879 Nil!36101 (rule!7642 (h!41523 tokens!494))))))

(declare-fun e!1995916 () Bool)

(assert (=> b!3201181 e!1995916))

(declare-fun res!1302745 () Bool)

(assert (=> b!3201181 (=> (not res!1302745) (not e!1995916))))

(declare-fun lt!1079895 () Option!7107)

(assert (=> b!3201181 (= res!1302745 (isDefined!5534 lt!1079895))))

(assert (=> b!3201181 (= lt!1079895 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494)))))))

(declare-fun lt!1079892 () Unit!50516)

(assert (=> b!3201181 (= lt!1079892 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!911 thiss!18206 rules!2135 lt!1079879 (h!41523 tokens!494)))))

(declare-fun lt!1079877 () Unit!50516)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!834 (LexerInterface!4795 List!36226 List!36227 Token!9778) Unit!50516)

(assert (=> b!3201181 (= lt!1079877 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!834 thiss!18206 rules!2135 tokens!494 (h!41523 tokens!494)))))

(declare-fun b!3201182 () Bool)

(declare-fun e!1995901 () Bool)

(assert (=> b!3201182 (= e!1995901 e!1995925)))

(declare-fun res!1302731 () Bool)

(assert (=> b!3201182 (=> res!1302731 e!1995925)))

(declare-fun lt!1079876 () List!36225)

(declare-fun lt!1079885 () List!36225)

(assert (=> b!3201182 (= res!1302731 (not (= lt!1079876 lt!1079885)))))

(declare-fun lt!1079903 () List!36225)

(assert (=> b!3201182 (= lt!1079903 lt!1079885)))

(declare-fun lt!1079904 () List!36225)

(declare-fun ++!8650 (List!36225 List!36225) List!36225)

(assert (=> b!3201182 (= lt!1079885 (++!8650 lt!1079879 lt!1079904))))

(declare-fun lt!1079894 () Unit!50516)

(declare-fun lt!1079880 () List!36225)

(declare-fun lemmaConcatAssociativity!1724 (List!36225 List!36225 List!36225) Unit!50516)

(assert (=> b!3201182 (= lt!1079894 (lemmaConcatAssociativity!1724 lt!1079879 lt!1079883 lt!1079880))))

(declare-fun b!3201184 () Bool)

(declare-fun e!1995904 () Bool)

(assert (=> b!3201184 (= e!1995894 e!1995904)))

(declare-fun res!1302748 () Bool)

(assert (=> b!3201184 (=> res!1302748 e!1995904)))

(declare-fun isEmpty!20180 (BalanceConc!21190) Bool)

(assert (=> b!3201184 (= res!1302748 (isEmpty!20180 (_1!20873 (lex!2125 thiss!18206 rules!2135 lt!1079875))))))

(declare-fun seqFromList!3484 (List!36225) BalanceConc!21188)

(assert (=> b!3201184 (= lt!1079875 (seqFromList!3484 lt!1079879))))

(declare-fun b!3201185 () Bool)

(assert (=> b!3201185 (= e!1995911 e!1995923)))

(declare-fun res!1302724 () Bool)

(assert (=> b!3201185 (=> (not res!1302724) (not e!1995923))))

(declare-fun matchR!4599 (Regex!9965 List!36225) Bool)

(assert (=> b!3201185 (= res!1302724 (matchR!4599 (regex!5206 lt!1079889) lt!1079883))))

(declare-fun get!11486 (Option!7107) Rule!10212)

(assert (=> b!3201185 (= lt!1079889 (get!11486 lt!1079884))))

(declare-fun tp!1011825 () Bool)

(declare-fun b!3201186 () Bool)

(declare-fun inv!48949 (String!40514) Bool)

(declare-fun inv!48952 (TokenValueInjection!10300) Bool)

(assert (=> b!3201186 (= e!1995897 (and tp!1011825 (inv!48949 (tag!5728 (rule!7642 (h!41523 tokens!494)))) (inv!48952 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) e!1995902))))

(declare-fun res!1302742 () Bool)

(assert (=> b!3201187 (=> (not res!1302742) (not e!1995910))))

(assert (=> b!3201187 (= res!1302742 (forall!7358 tokens!494 lambda!117202))))

(declare-fun b!3201188 () Bool)

(declare-fun res!1302734 () Bool)

(assert (=> b!3201188 (=> (not res!1302734) (not e!1995910))))

(assert (=> b!3201188 (= res!1302734 (and (not ((_ is Nil!36103) tokens!494)) (not ((_ is Nil!36103) (t!237478 tokens!494)))))))

(declare-fun b!3201189 () Bool)

(declare-fun tp!1011823 () Bool)

(declare-fun e!1995896 () Bool)

(assert (=> b!3201189 (= e!1995920 (and tp!1011823 (inv!48949 (tag!5728 (h!41522 rules!2135))) (inv!48952 (transformation!5206 (h!41522 rules!2135))) e!1995896))))

(declare-fun b!3201190 () Bool)

(declare-fun res!1302744 () Bool)

(assert (=> b!3201190 (=> (not res!1302744) (not e!1995914))))

(declare-fun apply!8150 (BalanceConc!21190 Int) Token!9778)

(assert (=> b!3201190 (= res!1302744 (= (apply!8150 (_1!20873 lt!1079891) 0) separatorToken!241))))

(declare-fun b!3201191 () Bool)

(declare-fun Unit!50518 () Unit!50516)

(assert (=> b!3201191 (= e!1995915 Unit!50518)))

(declare-fun e!1995907 () Bool)

(assert (=> b!3201192 (= e!1995907 (and tp!1011818 tp!1011826))))

(assert (=> b!3201193 (= e!1995896 (and tp!1011819 tp!1011827))))

(declare-fun tp!1011822 () Bool)

(declare-fun b!3201194 () Bool)

(declare-fun e!1995905 () Bool)

(declare-fun inv!48953 (Token!9778) Bool)

(assert (=> b!3201194 (= e!1995905 (and (inv!48953 (h!41523 tokens!494)) e!1995924 tp!1011822))))

(declare-fun b!3201195 () Bool)

(declare-fun e!1995909 () Bool)

(assert (=> b!3201195 (= e!1995909 e!1995901)))

(declare-fun res!1302746 () Bool)

(assert (=> b!3201195 (=> res!1302746 e!1995901)))

(assert (=> b!3201195 (= res!1302746 (not (= lt!1079876 lt!1079903)))))

(assert (=> b!3201195 (= lt!1079903 (++!8650 (++!8650 lt!1079879 lt!1079883) lt!1079880))))

(declare-fun b!3201196 () Bool)

(declare-fun e!1995919 () Bool)

(assert (=> b!3201196 (= e!1995919 e!1995894)))

(declare-fun res!1302739 () Bool)

(assert (=> b!3201196 (=> res!1302739 e!1995894)))

(declare-fun lt!1079878 () List!36225)

(declare-fun lt!1079900 () List!36225)

(assert (=> b!3201196 (= res!1302739 (or (not (= lt!1079900 lt!1079879)) (not (= lt!1079878 lt!1079879))))))

(declare-fun list!12831 (BalanceConc!21188) List!36225)

(declare-fun charsOf!3222 (Token!9778) BalanceConc!21188)

(assert (=> b!3201196 (= lt!1079879 (list!12831 (charsOf!3222 (h!41523 tokens!494))))))

(declare-fun b!3201197 () Bool)

(declare-fun res!1302729 () Bool)

(assert (=> b!3201197 (=> (not res!1302729) (not e!1995910))))

(declare-fun isEmpty!20181 (List!36226) Bool)

(assert (=> b!3201197 (= res!1302729 (not (isEmpty!20181 rules!2135)))))

(declare-fun b!3201198 () Bool)

(assert (=> b!3201198 (= e!1995921 (isEmpty!20179 (_2!20873 lt!1079896)))))

(declare-fun b!3201199 () Bool)

(declare-fun e!1995913 () Bool)

(assert (=> b!3201199 (= e!1995904 e!1995913)))

(declare-fun res!1302738 () Bool)

(assert (=> b!3201199 (=> res!1302738 e!1995913)))

(assert (=> b!3201199 (= res!1302738 (or (isSeparator!5206 (rule!7642 (h!41523 tokens!494))) (isSeparator!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))))))

(declare-fun lt!1079882 () Unit!50516)

(declare-fun forallContained!1177 (List!36227 Int Token!9778) Unit!50516)

(assert (=> b!3201199 (= lt!1079882 (forallContained!1177 tokens!494 lambda!117202 (h!41523 (t!237478 tokens!494))))))

(declare-fun lt!1079888 () Unit!50516)

(assert (=> b!3201199 (= lt!1079888 (forallContained!1177 tokens!494 lambda!117202 (h!41523 tokens!494)))))

(declare-fun b!3201200 () Bool)

(assert (=> b!3201200 (= e!1995910 (not e!1995919))))

(declare-fun res!1302730 () Bool)

(assert (=> b!3201200 (=> res!1302730 e!1995919)))

(assert (=> b!3201200 (= res!1302730 (not (= lt!1079878 lt!1079900)))))

(declare-fun printList!1345 (LexerInterface!4795 List!36227) List!36225)

(assert (=> b!3201200 (= lt!1079900 (printList!1345 thiss!18206 (Cons!36103 (h!41523 tokens!494) Nil!36103)))))

(declare-fun lt!1079893 () BalanceConc!21188)

(assert (=> b!3201200 (= lt!1079878 (list!12831 lt!1079893))))

(declare-fun lt!1079886 () BalanceConc!21190)

(assert (=> b!3201200 (= lt!1079893 (printTailRec!1292 thiss!18206 lt!1079886 0 (BalanceConc!21189 Empty!10787)))))

(assert (=> b!3201200 (= lt!1079893 (print!1860 thiss!18206 lt!1079886))))

(assert (=> b!3201200 (= lt!1079886 (singletonSeq!2302 (h!41523 tokens!494)))))

(declare-fun b!3201201 () Bool)

(declare-fun res!1302728 () Bool)

(assert (=> b!3201201 (=> (not res!1302728) (not e!1995910))))

(assert (=> b!3201201 (= res!1302728 (isSeparator!5206 (rule!7642 separatorToken!241)))))

(declare-fun b!3201202 () Bool)

(declare-fun res!1302747 () Bool)

(assert (=> b!3201202 (=> (not res!1302747) (not e!1995921))))

(assert (=> b!3201202 (= res!1302747 (= (apply!8150 (_1!20873 lt!1079896) 0) (h!41523 (t!237478 tokens!494))))))

(declare-fun b!3201203 () Bool)

(assert (=> b!3201203 (= e!1995916 e!1995903)))

(declare-fun res!1302726 () Bool)

(assert (=> b!3201203 (=> (not res!1302726) (not e!1995903))))

(assert (=> b!3201203 (= res!1302726 (matchR!4599 (regex!5206 lt!1079905) lt!1079879))))

(assert (=> b!3201203 (= lt!1079905 (get!11486 lt!1079895))))

(declare-fun b!3201204 () Bool)

(declare-fun contains!6425 (List!36227 Token!9778) Bool)

(assert (=> b!3201204 (= e!1995898 (contains!6425 tokens!494 (h!41523 (t!237478 tokens!494))))))

(declare-fun e!1995908 () Bool)

(declare-fun tp!1011830 () Bool)

(declare-fun e!1995917 () Bool)

(declare-fun b!3201205 () Bool)

(assert (=> b!3201205 (= e!1995908 (and (inv!21 (value!168831 separatorToken!241)) e!1995917 tp!1011830))))

(declare-fun b!3201206 () Bool)

(declare-fun res!1302740 () Bool)

(assert (=> b!3201206 (=> (not res!1302740) (not e!1995910))))

(assert (=> b!3201206 (= res!1302740 (rulesProduceIndividualToken!2287 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun res!1302733 () Bool)

(assert (=> start!300446 (=> (not res!1302733) (not e!1995910))))

(assert (=> start!300446 (= res!1302733 ((_ is Lexer!4793) thiss!18206))))

(assert (=> start!300446 e!1995910))

(assert (=> start!300446 true))

(assert (=> start!300446 e!1995918))

(assert (=> start!300446 e!1995905))

(assert (=> start!300446 (and (inv!48953 separatorToken!241) e!1995908)))

(declare-fun b!3201183 () Bool)

(assert (=> b!3201183 (= e!1995913 e!1995909)))

(declare-fun res!1302725 () Bool)

(assert (=> b!3201183 (=> res!1302725 e!1995909)))

(declare-fun printWithSeparatorTokenList!140 (LexerInterface!4795 List!36227 Token!9778) List!36225)

(assert (=> b!3201183 (= res!1302725 (not (= lt!1079880 (++!8650 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)))))))

(assert (=> b!3201183 (= lt!1079904 (++!8650 lt!1079883 lt!1079880))))

(assert (=> b!3201183 (= lt!1079883 (list!12831 (charsOf!3222 separatorToken!241)))))

(assert (=> b!3201183 (= lt!1079880 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 tokens!494) separatorToken!241))))

(assert (=> b!3201183 (= lt!1079876 (printWithSeparatorTokenList!140 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3201207 () Bool)

(declare-fun res!1302736 () Bool)

(assert (=> b!3201207 (=> (not res!1302736) (not e!1995910))))

(declare-fun sepAndNonSepRulesDisjointChars!1400 (List!36226 List!36226) Bool)

(assert (=> b!3201207 (= res!1302736 (sepAndNonSepRulesDisjointChars!1400 rules!2135 rules!2135))))

(declare-fun tp!1011820 () Bool)

(declare-fun b!3201208 () Bool)

(assert (=> b!3201208 (= e!1995917 (and tp!1011820 (inv!48949 (tag!5728 (rule!7642 separatorToken!241))) (inv!48952 (transformation!5206 (rule!7642 separatorToken!241))) e!1995907))))

(declare-fun b!3201209 () Bool)

(declare-fun Unit!50519 () Unit!50516)

(assert (=> b!3201209 (= e!1995915 Unit!50519)))

(declare-fun lt!1079901 () Unit!50516)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!370 (Regex!9965 List!36225 C!20116) Unit!50516)

(assert (=> b!3201209 (= lt!1079901 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!370 (regex!5206 (rule!7642 separatorToken!241)) lt!1079883 lt!1079902))))

(declare-fun res!1302750 () Bool)

(assert (=> b!3201209 (= res!1302750 (not (matchR!4599 (regex!5206 (rule!7642 separatorToken!241)) lt!1079883)))))

(assert (=> b!3201209 (=> (not res!1302750) (not e!1995912))))

(assert (=> b!3201209 e!1995912))

(assert (= (and start!300446 res!1302733) b!3201197))

(assert (= (and b!3201197 res!1302729) b!3201177))

(assert (= (and b!3201177 res!1302727) b!3201178))

(assert (= (and b!3201178 res!1302732) b!3201206))

(assert (= (and b!3201206 res!1302740) b!3201201))

(assert (= (and b!3201201 res!1302728) b!3201187))

(assert (= (and b!3201187 res!1302742) b!3201207))

(assert (= (and b!3201207 res!1302736) b!3201188))

(assert (= (and b!3201188 res!1302734) b!3201200))

(assert (= (and b!3201200 (not res!1302730)) b!3201196))

(assert (= (and b!3201196 (not res!1302739)) b!3201172))

(assert (= (and b!3201172 (not res!1302741)) b!3201184))

(assert (= (and b!3201184 (not res!1302748)) b!3201199))

(assert (= (and b!3201199 (not res!1302738)) b!3201183))

(assert (= (and b!3201183 (not res!1302725)) b!3201195))

(assert (= (and b!3201195 (not res!1302746)) b!3201182))

(assert (= (and b!3201182 (not res!1302731)) b!3201181))

(assert (= (and b!3201181 res!1302745) b!3201203))

(assert (= (and b!3201203 res!1302726) b!3201174))

(assert (= (and b!3201181 res!1302743) b!3201185))

(assert (= (and b!3201185 res!1302724) b!3201179))

(assert (= (and b!3201181 c!537385) b!3201209))

(assert (= (and b!3201181 (not c!537385)) b!3201191))

(assert (= (and b!3201209 res!1302750) b!3201171))

(assert (= (and b!3201181 res!1302735) b!3201190))

(assert (= (and b!3201190 res!1302744) b!3201176))

(assert (= (and b!3201181 res!1302749) b!3201202))

(assert (= (and b!3201202 res!1302747) b!3201198))

(assert (= (and b!3201181 res!1302737) b!3201204))

(assert (= b!3201189 b!3201193))

(assert (= b!3201173 b!3201189))

(assert (= (and start!300446 ((_ is Cons!36102) rules!2135)) b!3201173))

(assert (= b!3201186 b!3201175))

(assert (= b!3201180 b!3201186))

(assert (= b!3201194 b!3201180))

(assert (= (and start!300446 ((_ is Cons!36103) tokens!494)) b!3201194))

(assert (= b!3201208 b!3201192))

(assert (= b!3201205 b!3201208))

(assert (= start!300446 b!3201205))

(declare-fun m!3463473 () Bool)

(assert (=> b!3201183 m!3463473))

(declare-fun m!3463475 () Bool)

(assert (=> b!3201183 m!3463475))

(declare-fun m!3463477 () Bool)

(assert (=> b!3201183 m!3463477))

(declare-fun m!3463479 () Bool)

(assert (=> b!3201183 m!3463479))

(declare-fun m!3463481 () Bool)

(assert (=> b!3201183 m!3463481))

(declare-fun m!3463483 () Bool)

(assert (=> b!3201183 m!3463483))

(declare-fun m!3463485 () Bool)

(assert (=> b!3201183 m!3463485))

(declare-fun m!3463487 () Bool)

(assert (=> b!3201183 m!3463487))

(assert (=> b!3201183 m!3463475))

(declare-fun m!3463489 () Bool)

(assert (=> b!3201183 m!3463489))

(assert (=> b!3201183 m!3463473))

(assert (=> b!3201183 m!3463483))

(assert (=> b!3201183 m!3463485))

(assert (=> b!3201183 m!3463487))

(declare-fun m!3463491 () Bool)

(assert (=> b!3201183 m!3463491))

(declare-fun m!3463493 () Bool)

(assert (=> b!3201198 m!3463493))

(declare-fun m!3463495 () Bool)

(assert (=> b!3201202 m!3463495))

(declare-fun m!3463497 () Bool)

(assert (=> b!3201189 m!3463497))

(declare-fun m!3463499 () Bool)

(assert (=> b!3201189 m!3463499))

(declare-fun m!3463501 () Bool)

(assert (=> b!3201181 m!3463501))

(declare-fun m!3463503 () Bool)

(assert (=> b!3201181 m!3463503))

(declare-fun m!3463505 () Bool)

(assert (=> b!3201181 m!3463505))

(declare-fun m!3463507 () Bool)

(assert (=> b!3201181 m!3463507))

(declare-fun m!3463509 () Bool)

(assert (=> b!3201181 m!3463509))

(declare-fun m!3463511 () Bool)

(assert (=> b!3201181 m!3463511))

(declare-fun m!3463513 () Bool)

(assert (=> b!3201181 m!3463513))

(declare-fun m!3463515 () Bool)

(assert (=> b!3201181 m!3463515))

(declare-fun m!3463517 () Bool)

(assert (=> b!3201181 m!3463517))

(declare-fun m!3463519 () Bool)

(assert (=> b!3201181 m!3463519))

(declare-fun m!3463521 () Bool)

(assert (=> b!3201181 m!3463521))

(declare-fun m!3463523 () Bool)

(assert (=> b!3201181 m!3463523))

(declare-fun m!3463525 () Bool)

(assert (=> b!3201181 m!3463525))

(declare-fun m!3463527 () Bool)

(assert (=> b!3201181 m!3463527))

(assert (=> b!3201181 m!3463525))

(declare-fun m!3463529 () Bool)

(assert (=> b!3201181 m!3463529))

(declare-fun m!3463531 () Bool)

(assert (=> b!3201181 m!3463531))

(declare-fun m!3463533 () Bool)

(assert (=> b!3201181 m!3463533))

(declare-fun m!3463535 () Bool)

(assert (=> b!3201181 m!3463535))

(declare-fun m!3463537 () Bool)

(assert (=> b!3201181 m!3463537))

(declare-fun m!3463539 () Bool)

(assert (=> b!3201181 m!3463539))

(declare-fun m!3463541 () Bool)

(assert (=> b!3201181 m!3463541))

(declare-fun m!3463543 () Bool)

(assert (=> b!3201181 m!3463543))

(declare-fun m!3463545 () Bool)

(assert (=> b!3201181 m!3463545))

(declare-fun m!3463547 () Bool)

(assert (=> b!3201181 m!3463547))

(declare-fun m!3463549 () Bool)

(assert (=> b!3201181 m!3463549))

(declare-fun m!3463551 () Bool)

(assert (=> b!3201181 m!3463551))

(declare-fun m!3463553 () Bool)

(assert (=> b!3201194 m!3463553))

(declare-fun m!3463555 () Bool)

(assert (=> b!3201187 m!3463555))

(declare-fun m!3463557 () Bool)

(assert (=> b!3201178 m!3463557))

(assert (=> b!3201178 m!3463557))

(declare-fun m!3463559 () Bool)

(assert (=> b!3201178 m!3463559))

(declare-fun m!3463561 () Bool)

(assert (=> b!3201196 m!3463561))

(assert (=> b!3201196 m!3463561))

(declare-fun m!3463563 () Bool)

(assert (=> b!3201196 m!3463563))

(declare-fun m!3463565 () Bool)

(assert (=> b!3201203 m!3463565))

(declare-fun m!3463567 () Bool)

(assert (=> b!3201203 m!3463567))

(declare-fun m!3463569 () Bool)

(assert (=> b!3201184 m!3463569))

(declare-fun m!3463571 () Bool)

(assert (=> b!3201184 m!3463571))

(declare-fun m!3463573 () Bool)

(assert (=> b!3201184 m!3463573))

(declare-fun m!3463575 () Bool)

(assert (=> b!3201209 m!3463575))

(declare-fun m!3463577 () Bool)

(assert (=> b!3201209 m!3463577))

(declare-fun m!3463579 () Bool)

(assert (=> b!3201186 m!3463579))

(declare-fun m!3463581 () Bool)

(assert (=> b!3201186 m!3463581))

(declare-fun m!3463583 () Bool)

(assert (=> b!3201182 m!3463583))

(declare-fun m!3463585 () Bool)

(assert (=> b!3201182 m!3463585))

(declare-fun m!3463587 () Bool)

(assert (=> b!3201199 m!3463587))

(declare-fun m!3463589 () Bool)

(assert (=> b!3201199 m!3463589))

(declare-fun m!3463591 () Bool)

(assert (=> b!3201190 m!3463591))

(declare-fun m!3463593 () Bool)

(assert (=> b!3201195 m!3463593))

(assert (=> b!3201195 m!3463593))

(declare-fun m!3463595 () Bool)

(assert (=> b!3201195 m!3463595))

(declare-fun m!3463597 () Bool)

(assert (=> b!3201185 m!3463597))

(declare-fun m!3463599 () Bool)

(assert (=> b!3201185 m!3463599))

(declare-fun m!3463601 () Bool)

(assert (=> b!3201208 m!3463601))

(declare-fun m!3463603 () Bool)

(assert (=> b!3201208 m!3463603))

(declare-fun m!3463605 () Bool)

(assert (=> start!300446 m!3463605))

(declare-fun m!3463607 () Bool)

(assert (=> b!3201176 m!3463607))

(declare-fun m!3463609 () Bool)

(assert (=> b!3201177 m!3463609))

(declare-fun m!3463611 () Bool)

(assert (=> b!3201207 m!3463611))

(declare-fun m!3463613 () Bool)

(assert (=> b!3201200 m!3463613))

(declare-fun m!3463615 () Bool)

(assert (=> b!3201200 m!3463615))

(declare-fun m!3463617 () Bool)

(assert (=> b!3201200 m!3463617))

(declare-fun m!3463619 () Bool)

(assert (=> b!3201200 m!3463619))

(declare-fun m!3463621 () Bool)

(assert (=> b!3201200 m!3463621))

(declare-fun m!3463623 () Bool)

(assert (=> b!3201205 m!3463623))

(declare-fun m!3463625 () Bool)

(assert (=> b!3201197 m!3463625))

(declare-fun m!3463627 () Bool)

(assert (=> b!3201206 m!3463627))

(declare-fun m!3463629 () Bool)

(assert (=> b!3201204 m!3463629))

(declare-fun m!3463631 () Bool)

(assert (=> b!3201172 m!3463631))

(declare-fun m!3463633 () Bool)

(assert (=> b!3201180 m!3463633))

(check-sat (not b!3201204) (not b!3201184) (not b!3201205) (not b!3201186) (not b!3201183) (not b!3201209) (not start!300446) (not b!3201218) b_and!212807 (not b_next!85833) (not b!3201206) (not b!3201200) (not b!3201172) (not b!3201180) (not b!3201196) (not b!3201182) b_and!212811 (not b_next!85831) (not b!3201198) (not b!3201189) (not b!3201181) b_and!212817 b_and!212809 (not b!3201194) b_and!212815 (not b_next!85835) (not b_next!85827) (not b_next!85829) (not b!3201207) (not b!3201199) (not b!3201203) (not b!3201202) b_and!212813 (not b!3201185) (not b!3201197) (not b!3201176) (not b!3201173) (not b_next!85825) (not b!3201177) (not b!3201208) (not b!3201187) (not b!3201178) (not b!3201190) (not b!3201195))
(check-sat b_and!212813 b_and!212807 (not b_next!85833) (not b_next!85825) b_and!212811 (not b_next!85831) b_and!212817 b_and!212809 b_and!212815 (not b_next!85835) (not b_next!85827) (not b_next!85829))
(get-model)

(declare-fun d!875750 () Bool)

(declare-fun dynLambda!14538 (Int Token!9778) Bool)

(assert (=> d!875750 (dynLambda!14538 lambda!117202 (h!41523 (t!237478 tokens!494)))))

(declare-fun lt!1079928 () Unit!50516)

(declare-fun choose!18683 (List!36227 Int Token!9778) Unit!50516)

(assert (=> d!875750 (= lt!1079928 (choose!18683 tokens!494 lambda!117202 (h!41523 (t!237478 tokens!494))))))

(declare-fun e!1995980 () Bool)

(assert (=> d!875750 e!1995980))

(declare-fun res!1302809 () Bool)

(assert (=> d!875750 (=> (not res!1302809) (not e!1995980))))

(assert (=> d!875750 (= res!1302809 (forall!7358 tokens!494 lambda!117202))))

(assert (=> d!875750 (= (forallContained!1177 tokens!494 lambda!117202 (h!41523 (t!237478 tokens!494))) lt!1079928)))

(declare-fun b!3201298 () Bool)

(assert (=> b!3201298 (= e!1995980 (contains!6425 tokens!494 (h!41523 (t!237478 tokens!494))))))

(assert (= (and d!875750 res!1302809) b!3201298))

(declare-fun b_lambda!87487 () Bool)

(assert (=> (not b_lambda!87487) (not d!875750)))

(declare-fun m!3463687 () Bool)

(assert (=> d!875750 m!3463687))

(declare-fun m!3463689 () Bool)

(assert (=> d!875750 m!3463689))

(assert (=> d!875750 m!3463555))

(assert (=> b!3201298 m!3463629))

(assert (=> b!3201199 d!875750))

(declare-fun d!875752 () Bool)

(assert (=> d!875752 (dynLambda!14538 lambda!117202 (h!41523 tokens!494))))

(declare-fun lt!1079929 () Unit!50516)

(assert (=> d!875752 (= lt!1079929 (choose!18683 tokens!494 lambda!117202 (h!41523 tokens!494)))))

(declare-fun e!1995981 () Bool)

(assert (=> d!875752 e!1995981))

(declare-fun res!1302810 () Bool)

(assert (=> d!875752 (=> (not res!1302810) (not e!1995981))))

(assert (=> d!875752 (= res!1302810 (forall!7358 tokens!494 lambda!117202))))

(assert (=> d!875752 (= (forallContained!1177 tokens!494 lambda!117202 (h!41523 tokens!494)) lt!1079929)))

(declare-fun b!3201299 () Bool)

(assert (=> b!3201299 (= e!1995981 (contains!6425 tokens!494 (h!41523 tokens!494)))))

(assert (= (and d!875752 res!1302810) b!3201299))

(declare-fun b_lambda!87489 () Bool)

(assert (=> (not b_lambda!87489) (not d!875752)))

(declare-fun m!3463691 () Bool)

(assert (=> d!875752 m!3463691))

(declare-fun m!3463693 () Bool)

(assert (=> d!875752 m!3463693))

(assert (=> d!875752 m!3463555))

(declare-fun m!3463695 () Bool)

(assert (=> b!3201299 m!3463695))

(assert (=> b!3201199 d!875752))

(declare-fun d!875754 () Bool)

(declare-fun lt!1079935 () Bool)

(declare-fun isEmpty!20186 (List!36225) Bool)

(assert (=> d!875754 (= lt!1079935 (isEmpty!20186 (list!12831 (_2!20873 lt!1079896))))))

(declare-fun isEmpty!20187 (Conc!10787) Bool)

(assert (=> d!875754 (= lt!1079935 (isEmpty!20187 (c!537387 (_2!20873 lt!1079896))))))

(assert (=> d!875754 (= (isEmpty!20179 (_2!20873 lt!1079896)) lt!1079935)))

(declare-fun bs!540891 () Bool)

(assert (= bs!540891 d!875754))

(declare-fun m!3463699 () Bool)

(assert (=> bs!540891 m!3463699))

(assert (=> bs!540891 m!3463699))

(declare-fun m!3463701 () Bool)

(assert (=> bs!540891 m!3463701))

(declare-fun m!3463703 () Bool)

(assert (=> bs!540891 m!3463703))

(assert (=> b!3201198 d!875754))

(declare-fun d!875758 () Bool)

(declare-fun res!1302813 () Bool)

(declare-fun e!1995984 () Bool)

(assert (=> d!875758 (=> (not res!1302813) (not e!1995984))))

(declare-fun rulesValid!1910 (LexerInterface!4795 List!36226) Bool)

(assert (=> d!875758 (= res!1302813 (rulesValid!1910 thiss!18206 rules!2135))))

(assert (=> d!875758 (= (rulesInvariant!4192 thiss!18206 rules!2135) e!1995984)))

(declare-fun b!3201302 () Bool)

(declare-datatypes ((List!36228 0))(
  ( (Nil!36104) (Cons!36104 (h!41524 String!40514) (t!237573 List!36228)) )
))
(declare-fun noDuplicateTag!1906 (LexerInterface!4795 List!36226 List!36228) Bool)

(assert (=> b!3201302 (= e!1995984 (noDuplicateTag!1906 thiss!18206 rules!2135 Nil!36104))))

(assert (= (and d!875758 res!1302813) b!3201302))

(declare-fun m!3463705 () Bool)

(assert (=> d!875758 m!3463705))

(declare-fun m!3463707 () Bool)

(assert (=> b!3201302 m!3463707))

(assert (=> b!3201177 d!875758))

(declare-fun d!875760 () Bool)

(declare-fun lt!1079954 () BalanceConc!21188)

(declare-fun list!12833 (BalanceConc!21190) List!36227)

(assert (=> d!875760 (= (list!12831 lt!1079954) (printList!1345 thiss!18206 (list!12833 lt!1079886)))))

(assert (=> d!875760 (= lt!1079954 (printTailRec!1292 thiss!18206 lt!1079886 0 (BalanceConc!21189 Empty!10787)))))

(assert (=> d!875760 (= (print!1860 thiss!18206 lt!1079886) lt!1079954)))

(declare-fun bs!540895 () Bool)

(assert (= bs!540895 d!875760))

(declare-fun m!3463739 () Bool)

(assert (=> bs!540895 m!3463739))

(declare-fun m!3463741 () Bool)

(assert (=> bs!540895 m!3463741))

(assert (=> bs!540895 m!3463741))

(declare-fun m!3463743 () Bool)

(assert (=> bs!540895 m!3463743))

(assert (=> bs!540895 m!3463613))

(assert (=> b!3201200 d!875760))

(declare-fun d!875770 () Bool)

(declare-fun list!12834 (Conc!10787) List!36225)

(assert (=> d!875770 (= (list!12831 lt!1079893) (list!12834 (c!537387 lt!1079893)))))

(declare-fun bs!540896 () Bool)

(assert (= bs!540896 d!875770))

(declare-fun m!3463745 () Bool)

(assert (=> bs!540896 m!3463745))

(assert (=> b!3201200 d!875770))

(declare-fun d!875772 () Bool)

(declare-fun lt!1079975 () BalanceConc!21188)

(declare-fun printListTailRec!557 (LexerInterface!4795 List!36227 List!36225) List!36225)

(declare-fun dropList!1074 (BalanceConc!21190 Int) List!36227)

(assert (=> d!875772 (= (list!12831 lt!1079975) (printListTailRec!557 thiss!18206 (dropList!1074 lt!1079886 0) (list!12831 (BalanceConc!21189 Empty!10787))))))

(declare-fun e!1996001 () BalanceConc!21188)

(assert (=> d!875772 (= lt!1079975 e!1996001)))

(declare-fun c!537413 () Bool)

(assert (=> d!875772 (= c!537413 (>= 0 (size!27190 lt!1079886)))))

(declare-fun e!1996002 () Bool)

(assert (=> d!875772 e!1996002))

(declare-fun res!1302822 () Bool)

(assert (=> d!875772 (=> (not res!1302822) (not e!1996002))))

(assert (=> d!875772 (= res!1302822 (>= 0 0))))

(assert (=> d!875772 (= (printTailRec!1292 thiss!18206 lt!1079886 0 (BalanceConc!21189 Empty!10787)) lt!1079975)))

(declare-fun b!3201327 () Bool)

(assert (=> b!3201327 (= e!1996002 (<= 0 (size!27190 lt!1079886)))))

(declare-fun b!3201328 () Bool)

(assert (=> b!3201328 (= e!1996001 (BalanceConc!21189 Empty!10787))))

(declare-fun b!3201329 () Bool)

(declare-fun ++!8652 (BalanceConc!21188 BalanceConc!21188) BalanceConc!21188)

(assert (=> b!3201329 (= e!1996001 (printTailRec!1292 thiss!18206 lt!1079886 (+ 0 1) (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079886 0)))))))

(declare-fun lt!1079971 () List!36227)

(assert (=> b!3201329 (= lt!1079971 (list!12833 lt!1079886))))

(declare-fun lt!1079972 () Unit!50516)

(declare-fun lemmaDropApply!1033 (List!36227 Int) Unit!50516)

(assert (=> b!3201329 (= lt!1079972 (lemmaDropApply!1033 lt!1079971 0))))

(declare-fun head!7023 (List!36227) Token!9778)

(declare-fun drop!1857 (List!36227 Int) List!36227)

(declare-fun apply!8152 (List!36227 Int) Token!9778)

(assert (=> b!3201329 (= (head!7023 (drop!1857 lt!1079971 0)) (apply!8152 lt!1079971 0))))

(declare-fun lt!1079970 () Unit!50516)

(assert (=> b!3201329 (= lt!1079970 lt!1079972)))

(declare-fun lt!1079973 () List!36227)

(assert (=> b!3201329 (= lt!1079973 (list!12833 lt!1079886))))

(declare-fun lt!1079969 () Unit!50516)

(declare-fun lemmaDropTail!917 (List!36227 Int) Unit!50516)

(assert (=> b!3201329 (= lt!1079969 (lemmaDropTail!917 lt!1079973 0))))

(declare-fun tail!5204 (List!36227) List!36227)

(assert (=> b!3201329 (= (tail!5204 (drop!1857 lt!1079973 0)) (drop!1857 lt!1079973 (+ 0 1)))))

(declare-fun lt!1079974 () Unit!50516)

(assert (=> b!3201329 (= lt!1079974 lt!1079969)))

(assert (= (and d!875772 res!1302822) b!3201327))

(assert (= (and d!875772 c!537413) b!3201328))

(assert (= (and d!875772 (not c!537413)) b!3201329))

(declare-fun m!3463747 () Bool)

(assert (=> d!875772 m!3463747))

(declare-fun m!3463749 () Bool)

(assert (=> d!875772 m!3463749))

(declare-fun m!3463751 () Bool)

(assert (=> d!875772 m!3463751))

(declare-fun m!3463753 () Bool)

(assert (=> d!875772 m!3463753))

(assert (=> d!875772 m!3463749))

(assert (=> d!875772 m!3463751))

(declare-fun m!3463755 () Bool)

(assert (=> d!875772 m!3463755))

(assert (=> b!3201327 m!3463753))

(declare-fun m!3463757 () Bool)

(assert (=> b!3201329 m!3463757))

(declare-fun m!3463759 () Bool)

(assert (=> b!3201329 m!3463759))

(declare-fun m!3463761 () Bool)

(assert (=> b!3201329 m!3463761))

(declare-fun m!3463763 () Bool)

(assert (=> b!3201329 m!3463763))

(assert (=> b!3201329 m!3463761))

(declare-fun m!3463765 () Bool)

(assert (=> b!3201329 m!3463765))

(declare-fun m!3463767 () Bool)

(assert (=> b!3201329 m!3463767))

(declare-fun m!3463769 () Bool)

(assert (=> b!3201329 m!3463769))

(declare-fun m!3463771 () Bool)

(assert (=> b!3201329 m!3463771))

(declare-fun m!3463773 () Bool)

(assert (=> b!3201329 m!3463773))

(assert (=> b!3201329 m!3463765))

(declare-fun m!3463775 () Bool)

(assert (=> b!3201329 m!3463775))

(assert (=> b!3201329 m!3463767))

(assert (=> b!3201329 m!3463771))

(declare-fun m!3463777 () Bool)

(assert (=> b!3201329 m!3463777))

(assert (=> b!3201329 m!3463759))

(declare-fun m!3463779 () Bool)

(assert (=> b!3201329 m!3463779))

(assert (=> b!3201329 m!3463741))

(assert (=> b!3201200 d!875772))

(declare-fun d!875774 () Bool)

(declare-fun e!1996005 () Bool)

(assert (=> d!875774 e!1996005))

(declare-fun res!1302825 () Bool)

(assert (=> d!875774 (=> (not res!1302825) (not e!1996005))))

(declare-fun lt!1079978 () BalanceConc!21190)

(assert (=> d!875774 (= res!1302825 (= (list!12833 lt!1079978) (Cons!36103 (h!41523 tokens!494) Nil!36103)))))

(declare-fun singleton!990 (Token!9778) BalanceConc!21190)

(assert (=> d!875774 (= lt!1079978 (singleton!990 (h!41523 tokens!494)))))

(assert (=> d!875774 (= (singletonSeq!2302 (h!41523 tokens!494)) lt!1079978)))

(declare-fun b!3201332 () Bool)

(declare-fun isBalanced!3209 (Conc!10788) Bool)

(assert (=> b!3201332 (= e!1996005 (isBalanced!3209 (c!537388 lt!1079978)))))

(assert (= (and d!875774 res!1302825) b!3201332))

(declare-fun m!3463781 () Bool)

(assert (=> d!875774 m!3463781))

(declare-fun m!3463783 () Bool)

(assert (=> d!875774 m!3463783))

(declare-fun m!3463785 () Bool)

(assert (=> b!3201332 m!3463785))

(assert (=> b!3201200 d!875774))

(declare-fun d!875776 () Bool)

(declare-fun c!537416 () Bool)

(assert (=> d!875776 (= c!537416 ((_ is Cons!36103) (Cons!36103 (h!41523 tokens!494) Nil!36103)))))

(declare-fun e!1996008 () List!36225)

(assert (=> d!875776 (= (printList!1345 thiss!18206 (Cons!36103 (h!41523 tokens!494) Nil!36103)) e!1996008)))

(declare-fun b!3201337 () Bool)

(assert (=> b!3201337 (= e!1996008 (++!8650 (list!12831 (charsOf!3222 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103)))) (printList!1345 thiss!18206 (t!237478 (Cons!36103 (h!41523 tokens!494) Nil!36103)))))))

(declare-fun b!3201338 () Bool)

(assert (=> b!3201338 (= e!1996008 Nil!36101)))

(assert (= (and d!875776 c!537416) b!3201337))

(assert (= (and d!875776 (not c!537416)) b!3201338))

(declare-fun m!3463787 () Bool)

(assert (=> b!3201337 m!3463787))

(assert (=> b!3201337 m!3463787))

(declare-fun m!3463789 () Bool)

(assert (=> b!3201337 m!3463789))

(declare-fun m!3463791 () Bool)

(assert (=> b!3201337 m!3463791))

(assert (=> b!3201337 m!3463789))

(assert (=> b!3201337 m!3463791))

(declare-fun m!3463793 () Bool)

(assert (=> b!3201337 m!3463793))

(assert (=> b!3201200 d!875776))

(declare-fun bs!540897 () Bool)

(declare-fun d!875778 () Bool)

(assert (= bs!540897 (and d!875778 b!3201187)))

(declare-fun lambda!117208 () Int)

(assert (=> bs!540897 (not (= lambda!117208 lambda!117202))))

(declare-fun bs!540898 () Bool)

(assert (= bs!540898 (and d!875778 b!3201181)))

(assert (=> bs!540898 (= lambda!117208 lambda!117203)))

(declare-fun b!3201410 () Bool)

(declare-fun e!1996054 () Bool)

(assert (=> b!3201410 (= e!1996054 true)))

(declare-fun b!3201409 () Bool)

(declare-fun e!1996053 () Bool)

(assert (=> b!3201409 (= e!1996053 e!1996054)))

(declare-fun b!3201408 () Bool)

(declare-fun e!1996052 () Bool)

(assert (=> b!3201408 (= e!1996052 e!1996053)))

(assert (=> d!875778 e!1996052))

(assert (= b!3201409 b!3201410))

(assert (= b!3201408 b!3201409))

(assert (= (and d!875778 ((_ is Cons!36102) rules!2135)) b!3201408))

(assert (=> b!3201410 (< (dynLambda!14533 order!18349 (toValue!7282 (transformation!5206 (h!41522 rules!2135)))) (dynLambda!14534 order!18351 lambda!117208))))

(assert (=> b!3201410 (< (dynLambda!14535 order!18353 (toChars!7141 (transformation!5206 (h!41522 rules!2135)))) (dynLambda!14534 order!18351 lambda!117208))))

(assert (=> d!875778 true))

(declare-fun e!1996051 () Bool)

(assert (=> d!875778 e!1996051))

(declare-fun res!1302872 () Bool)

(assert (=> d!875778 (=> (not res!1302872) (not e!1996051))))

(declare-fun lt!1080010 () Bool)

(assert (=> d!875778 (= res!1302872 (= lt!1080010 (forall!7358 (list!12833 (seqFromList!3483 tokens!494)) lambda!117208)))))

(declare-fun forall!7359 (BalanceConc!21190 Int) Bool)

(assert (=> d!875778 (= lt!1080010 (forall!7359 (seqFromList!3483 tokens!494) lambda!117208))))

(assert (=> d!875778 (not (isEmpty!20181 rules!2135))))

(assert (=> d!875778 (= (rulesProduceEachTokenIndividually!1246 thiss!18206 rules!2135 (seqFromList!3483 tokens!494)) lt!1080010)))

(declare-fun b!3201407 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1720 (LexerInterface!4795 List!36226 List!36227) Bool)

(assert (=> b!3201407 (= e!1996051 (= lt!1080010 (rulesProduceEachTokenIndividuallyList!1720 thiss!18206 rules!2135 (list!12833 (seqFromList!3483 tokens!494)))))))

(assert (= (and d!875778 res!1302872) b!3201407))

(assert (=> d!875778 m!3463557))

(declare-fun m!3463901 () Bool)

(assert (=> d!875778 m!3463901))

(assert (=> d!875778 m!3463901))

(declare-fun m!3463903 () Bool)

(assert (=> d!875778 m!3463903))

(assert (=> d!875778 m!3463557))

(declare-fun m!3463905 () Bool)

(assert (=> d!875778 m!3463905))

(assert (=> d!875778 m!3463625))

(assert (=> b!3201407 m!3463557))

(assert (=> b!3201407 m!3463901))

(assert (=> b!3201407 m!3463901))

(declare-fun m!3463907 () Bool)

(assert (=> b!3201407 m!3463907))

(assert (=> b!3201178 d!875778))

(declare-fun d!875798 () Bool)

(declare-fun fromListB!1531 (List!36227) BalanceConc!21190)

(assert (=> d!875798 (= (seqFromList!3483 tokens!494) (fromListB!1531 tokens!494))))

(declare-fun bs!540899 () Bool)

(assert (= bs!540899 d!875798))

(declare-fun m!3463909 () Bool)

(assert (=> bs!540899 m!3463909))

(assert (=> b!3201178 d!875798))

(declare-fun d!875800 () Bool)

(declare-fun c!537431 () Bool)

(assert (=> d!875800 (= c!537431 ((_ is IntegerValue!16308) (value!168831 (h!41523 tokens!494))))))

(declare-fun e!1996062 () Bool)

(assert (=> d!875800 (= (inv!21 (value!168831 (h!41523 tokens!494))) e!1996062)))

(declare-fun b!3201421 () Bool)

(declare-fun res!1302875 () Bool)

(declare-fun e!1996063 () Bool)

(assert (=> b!3201421 (=> res!1302875 e!1996063)))

(assert (=> b!3201421 (= res!1302875 (not ((_ is IntegerValue!16310) (value!168831 (h!41523 tokens!494)))))))

(declare-fun e!1996061 () Bool)

(assert (=> b!3201421 (= e!1996061 e!1996063)))

(declare-fun b!3201422 () Bool)

(declare-fun inv!16 (TokenValue!5436) Bool)

(assert (=> b!3201422 (= e!1996062 (inv!16 (value!168831 (h!41523 tokens!494))))))

(declare-fun b!3201423 () Bool)

(declare-fun inv!15 (TokenValue!5436) Bool)

(assert (=> b!3201423 (= e!1996063 (inv!15 (value!168831 (h!41523 tokens!494))))))

(declare-fun b!3201424 () Bool)

(assert (=> b!3201424 (= e!1996062 e!1996061)))

(declare-fun c!537432 () Bool)

(assert (=> b!3201424 (= c!537432 ((_ is IntegerValue!16309) (value!168831 (h!41523 tokens!494))))))

(declare-fun b!3201425 () Bool)

(declare-fun inv!17 (TokenValue!5436) Bool)

(assert (=> b!3201425 (= e!1996061 (inv!17 (value!168831 (h!41523 tokens!494))))))

(assert (= (and d!875800 c!537431) b!3201422))

(assert (= (and d!875800 (not c!537431)) b!3201424))

(assert (= (and b!3201424 c!537432) b!3201425))

(assert (= (and b!3201424 (not c!537432)) b!3201421))

(assert (= (and b!3201421 (not res!1302875)) b!3201423))

(declare-fun m!3463911 () Bool)

(assert (=> b!3201422 m!3463911))

(declare-fun m!3463913 () Bool)

(assert (=> b!3201423 m!3463913))

(declare-fun m!3463915 () Bool)

(assert (=> b!3201425 m!3463915))

(assert (=> b!3201180 d!875800))

(declare-fun bm!231747 () Bool)

(declare-fun call!231752 () Bool)

(assert (=> bm!231747 (= call!231752 (isEmpty!20186 lt!1079879))))

(declare-fun b!3201454 () Bool)

(declare-fun res!1302897 () Bool)

(declare-fun e!1996078 () Bool)

(assert (=> b!3201454 (=> res!1302897 e!1996078)))

(declare-fun tail!5205 (List!36225) List!36225)

(assert (=> b!3201454 (= res!1302897 (not (isEmpty!20186 (tail!5205 lt!1079879))))))

(declare-fun b!3201455 () Bool)

(declare-fun e!1996082 () Bool)

(declare-fun nullable!3394 (Regex!9965) Bool)

(assert (=> b!3201455 (= e!1996082 (nullable!3394 (regex!5206 lt!1079905)))))

(declare-fun d!875802 () Bool)

(declare-fun e!1996080 () Bool)

(assert (=> d!875802 e!1996080))

(declare-fun c!537439 () Bool)

(assert (=> d!875802 (= c!537439 ((_ is EmptyExpr!9965) (regex!5206 lt!1079905)))))

(declare-fun lt!1080013 () Bool)

(assert (=> d!875802 (= lt!1080013 e!1996082)))

(declare-fun c!537440 () Bool)

(assert (=> d!875802 (= c!537440 (isEmpty!20186 lt!1079879))))

(declare-fun validRegex!4548 (Regex!9965) Bool)

(assert (=> d!875802 (validRegex!4548 (regex!5206 lt!1079905))))

(assert (=> d!875802 (= (matchR!4599 (regex!5206 lt!1079905) lt!1079879) lt!1080013)))

(declare-fun b!3201456 () Bool)

(declare-fun e!1996079 () Bool)

(declare-fun e!1996084 () Bool)

(assert (=> b!3201456 (= e!1996079 e!1996084)))

(declare-fun res!1302892 () Bool)

(assert (=> b!3201456 (=> (not res!1302892) (not e!1996084))))

(assert (=> b!3201456 (= res!1302892 (not lt!1080013))))

(declare-fun b!3201457 () Bool)

(declare-fun e!1996083 () Bool)

(assert (=> b!3201457 (= e!1996083 (= (head!7021 lt!1079879) (c!537386 (regex!5206 lt!1079905))))))

(declare-fun b!3201458 () Bool)

(declare-fun res!1302894 () Bool)

(assert (=> b!3201458 (=> (not res!1302894) (not e!1996083))))

(assert (=> b!3201458 (= res!1302894 (isEmpty!20186 (tail!5205 lt!1079879)))))

(declare-fun b!3201459 () Bool)

(declare-fun derivativeStep!2947 (Regex!9965 C!20116) Regex!9965)

(assert (=> b!3201459 (= e!1996082 (matchR!4599 (derivativeStep!2947 (regex!5206 lt!1079905) (head!7021 lt!1079879)) (tail!5205 lt!1079879)))))

(declare-fun b!3201460 () Bool)

(declare-fun res!1302895 () Bool)

(assert (=> b!3201460 (=> res!1302895 e!1996079)))

(assert (=> b!3201460 (= res!1302895 e!1996083)))

(declare-fun res!1302896 () Bool)

(assert (=> b!3201460 (=> (not res!1302896) (not e!1996083))))

(assert (=> b!3201460 (= res!1302896 lt!1080013)))

(declare-fun b!3201461 () Bool)

(assert (=> b!3201461 (= e!1996084 e!1996078)))

(declare-fun res!1302893 () Bool)

(assert (=> b!3201461 (=> res!1302893 e!1996078)))

(assert (=> b!3201461 (= res!1302893 call!231752)))

(declare-fun b!3201462 () Bool)

(declare-fun e!1996081 () Bool)

(assert (=> b!3201462 (= e!1996080 e!1996081)))

(declare-fun c!537441 () Bool)

(assert (=> b!3201462 (= c!537441 ((_ is EmptyLang!9965) (regex!5206 lt!1079905)))))

(declare-fun b!3201463 () Bool)

(assert (=> b!3201463 (= e!1996081 (not lt!1080013))))

(declare-fun b!3201464 () Bool)

(assert (=> b!3201464 (= e!1996080 (= lt!1080013 call!231752))))

(declare-fun b!3201465 () Bool)

(declare-fun res!1302898 () Bool)

(assert (=> b!3201465 (=> res!1302898 e!1996079)))

(assert (=> b!3201465 (= res!1302898 (not ((_ is ElementMatch!9965) (regex!5206 lt!1079905))))))

(assert (=> b!3201465 (= e!1996081 e!1996079)))

(declare-fun b!3201466 () Bool)

(declare-fun res!1302899 () Bool)

(assert (=> b!3201466 (=> (not res!1302899) (not e!1996083))))

(assert (=> b!3201466 (= res!1302899 (not call!231752))))

(declare-fun b!3201467 () Bool)

(assert (=> b!3201467 (= e!1996078 (not (= (head!7021 lt!1079879) (c!537386 (regex!5206 lt!1079905)))))))

(assert (= (and d!875802 c!537440) b!3201455))

(assert (= (and d!875802 (not c!537440)) b!3201459))

(assert (= (and d!875802 c!537439) b!3201464))

(assert (= (and d!875802 (not c!537439)) b!3201462))

(assert (= (and b!3201462 c!537441) b!3201463))

(assert (= (and b!3201462 (not c!537441)) b!3201465))

(assert (= (and b!3201465 (not res!1302898)) b!3201460))

(assert (= (and b!3201460 res!1302896) b!3201466))

(assert (= (and b!3201466 res!1302899) b!3201458))

(assert (= (and b!3201458 res!1302894) b!3201457))

(assert (= (and b!3201460 (not res!1302895)) b!3201456))

(assert (= (and b!3201456 res!1302892) b!3201461))

(assert (= (and b!3201461 (not res!1302893)) b!3201454))

(assert (= (and b!3201454 (not res!1302897)) b!3201467))

(assert (= (or b!3201464 b!3201461 b!3201466) bm!231747))

(declare-fun m!3463917 () Bool)

(assert (=> b!3201467 m!3463917))

(assert (=> b!3201459 m!3463917))

(assert (=> b!3201459 m!3463917))

(declare-fun m!3463919 () Bool)

(assert (=> b!3201459 m!3463919))

(declare-fun m!3463921 () Bool)

(assert (=> b!3201459 m!3463921))

(assert (=> b!3201459 m!3463919))

(assert (=> b!3201459 m!3463921))

(declare-fun m!3463923 () Bool)

(assert (=> b!3201459 m!3463923))

(assert (=> b!3201458 m!3463921))

(assert (=> b!3201458 m!3463921))

(declare-fun m!3463925 () Bool)

(assert (=> b!3201458 m!3463925))

(declare-fun m!3463927 () Bool)

(assert (=> d!875802 m!3463927))

(declare-fun m!3463929 () Bool)

(assert (=> d!875802 m!3463929))

(assert (=> b!3201454 m!3463921))

(assert (=> b!3201454 m!3463921))

(assert (=> b!3201454 m!3463925))

(assert (=> bm!231747 m!3463927))

(assert (=> b!3201457 m!3463917))

(declare-fun m!3463931 () Bool)

(assert (=> b!3201455 m!3463931))

(assert (=> b!3201203 d!875802))

(declare-fun d!875804 () Bool)

(assert (=> d!875804 (= (get!11486 lt!1079895) (v!35636 lt!1079895))))

(assert (=> b!3201203 d!875804))

(declare-fun d!875806 () Bool)

(declare-fun lt!1080016 () Token!9778)

(assert (=> d!875806 (= lt!1080016 (apply!8152 (list!12833 (_1!20873 lt!1079896)) 0))))

(declare-fun apply!8153 (Conc!10788 Int) Token!9778)

(assert (=> d!875806 (= lt!1080016 (apply!8153 (c!537388 (_1!20873 lt!1079896)) 0))))

(declare-fun e!1996087 () Bool)

(assert (=> d!875806 e!1996087))

(declare-fun res!1302902 () Bool)

(assert (=> d!875806 (=> (not res!1302902) (not e!1996087))))

(assert (=> d!875806 (= res!1302902 (<= 0 0))))

(assert (=> d!875806 (= (apply!8150 (_1!20873 lt!1079896) 0) lt!1080016)))

(declare-fun b!3201470 () Bool)

(assert (=> b!3201470 (= e!1996087 (< 0 (size!27190 (_1!20873 lt!1079896))))))

(assert (= (and d!875806 res!1302902) b!3201470))

(declare-fun m!3463933 () Bool)

(assert (=> d!875806 m!3463933))

(assert (=> d!875806 m!3463933))

(declare-fun m!3463935 () Bool)

(assert (=> d!875806 m!3463935))

(declare-fun m!3463937 () Bool)

(assert (=> d!875806 m!3463937))

(assert (=> b!3201470 m!3463509))

(assert (=> b!3201202 d!875806))

(declare-fun d!875808 () Bool)

(declare-fun lt!1080019 () Int)

(assert (=> d!875808 (>= lt!1080019 0)))

(declare-fun e!1996090 () Int)

(assert (=> d!875808 (= lt!1080019 e!1996090)))

(declare-fun c!537444 () Bool)

(assert (=> d!875808 (= c!537444 ((_ is Nil!36101) lt!1079879))))

(assert (=> d!875808 (= (size!27191 lt!1079879) lt!1080019)))

(declare-fun b!3201475 () Bool)

(assert (=> b!3201475 (= e!1996090 0)))

(declare-fun b!3201476 () Bool)

(assert (=> b!3201476 (= e!1996090 (+ 1 (size!27191 (t!237476 lt!1079879))))))

(assert (= (and d!875808 c!537444) b!3201475))

(assert (= (and d!875808 (not c!537444)) b!3201476))

(declare-fun m!3463939 () Bool)

(assert (=> b!3201476 m!3463939))

(assert (=> b!3201181 d!875808))

(declare-fun d!875810 () Bool)

(declare-fun lt!1080063 () Bool)

(declare-fun e!1996121 () Bool)

(assert (=> d!875810 (= lt!1080063 e!1996121)))

(declare-fun res!1302933 () Bool)

(assert (=> d!875810 (=> (not res!1302933) (not e!1996121))))

(assert (=> d!875810 (= res!1302933 (= (list!12833 (_1!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494))))))) (list!12833 (singletonSeq!2302 (h!41523 (t!237478 tokens!494))))))))

(declare-fun e!1996120 () Bool)

(assert (=> d!875810 (= lt!1080063 e!1996120)))

(declare-fun res!1302931 () Bool)

(assert (=> d!875810 (=> (not res!1302931) (not e!1996120))))

(declare-fun lt!1080062 () tuple2!35478)

(assert (=> d!875810 (= res!1302931 (= (size!27190 (_1!20873 lt!1080062)) 1))))

(assert (=> d!875810 (= lt!1080062 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494))))))))

(assert (=> d!875810 (not (isEmpty!20181 rules!2135))))

(assert (=> d!875810 (= (rulesProduceIndividualToken!2287 thiss!18206 rules!2135 (h!41523 (t!237478 tokens!494))) lt!1080063)))

(declare-fun b!3201517 () Bool)

(declare-fun res!1302932 () Bool)

(assert (=> b!3201517 (=> (not res!1302932) (not e!1996120))))

(assert (=> b!3201517 (= res!1302932 (= (apply!8150 (_1!20873 lt!1080062) 0) (h!41523 (t!237478 tokens!494))))))

(declare-fun b!3201518 () Bool)

(assert (=> b!3201518 (= e!1996120 (isEmpty!20179 (_2!20873 lt!1080062)))))

(declare-fun b!3201519 () Bool)

(assert (=> b!3201519 (= e!1996121 (isEmpty!20179 (_2!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494))))))))))

(assert (= (and d!875810 res!1302931) b!3201517))

(assert (= (and b!3201517 res!1302932) b!3201518))

(assert (= (and d!875810 res!1302933) b!3201519))

(declare-fun m!3464041 () Bool)

(assert (=> d!875810 m!3464041))

(assert (=> d!875810 m!3463545))

(declare-fun m!3464043 () Bool)

(assert (=> d!875810 m!3464043))

(assert (=> d!875810 m!3464043))

(declare-fun m!3464045 () Bool)

(assert (=> d!875810 m!3464045))

(assert (=> d!875810 m!3463545))

(declare-fun m!3464047 () Bool)

(assert (=> d!875810 m!3464047))

(assert (=> d!875810 m!3463545))

(declare-fun m!3464049 () Bool)

(assert (=> d!875810 m!3464049))

(assert (=> d!875810 m!3463625))

(declare-fun m!3464051 () Bool)

(assert (=> b!3201517 m!3464051))

(declare-fun m!3464053 () Bool)

(assert (=> b!3201518 m!3464053))

(assert (=> b!3201519 m!3463545))

(assert (=> b!3201519 m!3463545))

(assert (=> b!3201519 m!3464043))

(assert (=> b!3201519 m!3464043))

(assert (=> b!3201519 m!3464045))

(declare-fun m!3464055 () Bool)

(assert (=> b!3201519 m!3464055))

(assert (=> b!3201181 d!875810))

(declare-fun d!875824 () Bool)

(declare-fun e!1996178 () Bool)

(assert (=> d!875824 e!1996178))

(declare-fun res!1302972 () Bool)

(assert (=> d!875824 (=> res!1302972 e!1996178)))

(declare-fun lt!1080102 () Option!7108)

(declare-fun isEmpty!20188 (Option!7108) Bool)

(assert (=> d!875824 (= res!1302972 (isEmpty!20188 lt!1080102))))

(declare-fun e!1996176 () Option!7108)

(assert (=> d!875824 (= lt!1080102 e!1996176)))

(declare-fun c!537482 () Bool)

(declare-datatypes ((tuple2!35486 0))(
  ( (tuple2!35487 (_1!20877 List!36225) (_2!20877 List!36225)) )
))
(declare-fun lt!1080104 () tuple2!35486)

(assert (=> d!875824 (= c!537482 (isEmpty!20186 (_1!20877 lt!1080104)))))

(declare-fun findLongestMatch!742 (Regex!9965 List!36225) tuple2!35486)

(assert (=> d!875824 (= lt!1080104 (findLongestMatch!742 (regex!5206 (rule!7642 (h!41523 tokens!494))) lt!1079879))))

(declare-fun ruleValid!1640 (LexerInterface!4795 Rule!10212) Bool)

(assert (=> d!875824 (ruleValid!1640 thiss!18206 (rule!7642 (h!41523 tokens!494)))))

(assert (=> d!875824 (= (maxPrefixOneRule!1574 thiss!18206 (rule!7642 (h!41523 tokens!494)) lt!1079879) lt!1080102)))

(declare-fun b!3201626 () Bool)

(declare-fun res!1302975 () Bool)

(declare-fun e!1996179 () Bool)

(assert (=> b!3201626 (=> (not res!1302975) (not e!1996179))))

(declare-fun get!11488 (Option!7108) tuple2!35480)

(assert (=> b!3201626 (= res!1302975 (< (size!27191 (_2!20874 (get!11488 lt!1080102))) (size!27191 lt!1079879)))))

(declare-fun b!3201627 () Bool)

(assert (=> b!3201627 (= e!1996176 None!7107)))

(declare-fun b!3201628 () Bool)

(assert (=> b!3201628 (= e!1996178 e!1996179)))

(declare-fun res!1302976 () Bool)

(assert (=> b!3201628 (=> (not res!1302976) (not e!1996179))))

(assert (=> b!3201628 (= res!1302976 (matchR!4599 (regex!5206 (rule!7642 (h!41523 tokens!494))) (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102))))))))

(declare-fun b!3201629 () Bool)

(declare-fun e!1996177 () Bool)

(declare-fun findLongestMatchInner!827 (Regex!9965 List!36225 Int List!36225 List!36225 Int) tuple2!35486)

(assert (=> b!3201629 (= e!1996177 (matchR!4599 (regex!5206 (rule!7642 (h!41523 tokens!494))) (_1!20877 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879)))))))

(declare-fun b!3201630 () Bool)

(declare-fun size!27195 (BalanceConc!21188) Int)

(assert (=> b!3201630 (= e!1996176 (Some!7107 (tuple2!35481 (Token!9779 (apply!8149 (transformation!5206 (rule!7642 (h!41523 tokens!494))) (seqFromList!3484 (_1!20877 lt!1080104))) (rule!7642 (h!41523 tokens!494)) (size!27195 (seqFromList!3484 (_1!20877 lt!1080104))) (_1!20877 lt!1080104)) (_2!20877 lt!1080104))))))

(declare-fun lt!1080103 () Unit!50516)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!800 (Regex!9965 List!36225) Unit!50516)

(assert (=> b!3201630 (= lt!1080103 (longestMatchIsAcceptedByMatchOrIsEmpty!800 (regex!5206 (rule!7642 (h!41523 tokens!494))) lt!1079879))))

(declare-fun res!1302978 () Bool)

(assert (=> b!3201630 (= res!1302978 (isEmpty!20186 (_1!20877 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879)))))))

(assert (=> b!3201630 (=> res!1302978 e!1996177)))

(assert (=> b!3201630 e!1996177))

(declare-fun lt!1080106 () Unit!50516)

(assert (=> b!3201630 (= lt!1080106 lt!1080103)))

(declare-fun lt!1080105 () Unit!50516)

(declare-fun lemmaSemiInverse!1171 (TokenValueInjection!10300 BalanceConc!21188) Unit!50516)

(assert (=> b!3201630 (= lt!1080105 (lemmaSemiInverse!1171 (transformation!5206 (rule!7642 (h!41523 tokens!494))) (seqFromList!3484 (_1!20877 lt!1080104))))))

(declare-fun b!3201631 () Bool)

(declare-fun res!1302977 () Bool)

(assert (=> b!3201631 (=> (not res!1302977) (not e!1996179))))

(assert (=> b!3201631 (= res!1302977 (= (rule!7642 (_1!20874 (get!11488 lt!1080102))) (rule!7642 (h!41523 tokens!494))))))

(declare-fun b!3201632 () Bool)

(assert (=> b!3201632 (= e!1996179 (= (size!27189 (_1!20874 (get!11488 lt!1080102))) (size!27191 (originalCharacters!5920 (_1!20874 (get!11488 lt!1080102))))))))

(declare-fun b!3201633 () Bool)

(declare-fun res!1302974 () Bool)

(assert (=> b!3201633 (=> (not res!1302974) (not e!1996179))))

(assert (=> b!3201633 (= res!1302974 (= (++!8650 (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102)))) (_2!20874 (get!11488 lt!1080102))) lt!1079879))))

(declare-fun b!3201634 () Bool)

(declare-fun res!1302973 () Bool)

(assert (=> b!3201634 (=> (not res!1302973) (not e!1996179))))

(assert (=> b!3201634 (= res!1302973 (= (value!168831 (_1!20874 (get!11488 lt!1080102))) (apply!8149 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))) (seqFromList!3484 (originalCharacters!5920 (_1!20874 (get!11488 lt!1080102)))))))))

(assert (= (and d!875824 c!537482) b!3201627))

(assert (= (and d!875824 (not c!537482)) b!3201630))

(assert (= (and b!3201630 (not res!1302978)) b!3201629))

(assert (= (and d!875824 (not res!1302972)) b!3201628))

(assert (= (and b!3201628 res!1302976) b!3201633))

(assert (= (and b!3201633 res!1302974) b!3201626))

(assert (= (and b!3201626 res!1302975) b!3201631))

(assert (= (and b!3201631 res!1302977) b!3201634))

(assert (= (and b!3201634 res!1302973) b!3201632))

(declare-fun m!3464245 () Bool)

(assert (=> b!3201632 m!3464245))

(declare-fun m!3464247 () Bool)

(assert (=> b!3201632 m!3464247))

(assert (=> b!3201628 m!3464245))

(declare-fun m!3464249 () Bool)

(assert (=> b!3201628 m!3464249))

(assert (=> b!3201628 m!3464249))

(declare-fun m!3464251 () Bool)

(assert (=> b!3201628 m!3464251))

(assert (=> b!3201628 m!3464251))

(declare-fun m!3464253 () Bool)

(assert (=> b!3201628 m!3464253))

(assert (=> b!3201631 m!3464245))

(declare-fun m!3464255 () Bool)

(assert (=> b!3201630 m!3464255))

(declare-fun m!3464257 () Bool)

(assert (=> b!3201630 m!3464257))

(assert (=> b!3201630 m!3464255))

(declare-fun m!3464259 () Bool)

(assert (=> b!3201630 m!3464259))

(assert (=> b!3201630 m!3464255))

(declare-fun m!3464261 () Bool)

(assert (=> b!3201630 m!3464261))

(assert (=> b!3201630 m!3464255))

(declare-fun m!3464263 () Bool)

(assert (=> b!3201630 m!3464263))

(declare-fun m!3464265 () Bool)

(assert (=> b!3201630 m!3464265))

(assert (=> b!3201630 m!3463549))

(declare-fun m!3464267 () Bool)

(assert (=> b!3201630 m!3464267))

(assert (=> b!3201630 m!3464265))

(assert (=> b!3201630 m!3463549))

(declare-fun m!3464269 () Bool)

(assert (=> b!3201630 m!3464269))

(assert (=> b!3201626 m!3464245))

(declare-fun m!3464271 () Bool)

(assert (=> b!3201626 m!3464271))

(assert (=> b!3201626 m!3463549))

(declare-fun m!3464273 () Bool)

(assert (=> d!875824 m!3464273))

(declare-fun m!3464275 () Bool)

(assert (=> d!875824 m!3464275))

(declare-fun m!3464277 () Bool)

(assert (=> d!875824 m!3464277))

(declare-fun m!3464279 () Bool)

(assert (=> d!875824 m!3464279))

(assert (=> b!3201633 m!3464245))

(assert (=> b!3201633 m!3464249))

(assert (=> b!3201633 m!3464249))

(assert (=> b!3201633 m!3464251))

(assert (=> b!3201633 m!3464251))

(declare-fun m!3464281 () Bool)

(assert (=> b!3201633 m!3464281))

(assert (=> b!3201634 m!3464245))

(declare-fun m!3464283 () Bool)

(assert (=> b!3201634 m!3464283))

(assert (=> b!3201634 m!3464283))

(declare-fun m!3464285 () Bool)

(assert (=> b!3201634 m!3464285))

(assert (=> b!3201629 m!3464265))

(assert (=> b!3201629 m!3463549))

(assert (=> b!3201629 m!3464265))

(assert (=> b!3201629 m!3463549))

(assert (=> b!3201629 m!3464269))

(declare-fun m!3464287 () Bool)

(assert (=> b!3201629 m!3464287))

(assert (=> b!3201181 d!875824))

(declare-fun d!875878 () Bool)

(declare-fun e!1996182 () Bool)

(assert (=> d!875878 e!1996182))

(declare-fun res!1302983 () Bool)

(assert (=> d!875878 (=> (not res!1302983) (not e!1996182))))

(assert (=> d!875878 (= res!1302983 (isDefined!5534 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494))))))))

(declare-fun lt!1080109 () Unit!50516)

(declare-fun choose!18686 (LexerInterface!4795 List!36226 List!36225 Token!9778) Unit!50516)

(assert (=> d!875878 (= lt!1080109 (choose!18686 thiss!18206 rules!2135 lt!1079879 (h!41523 tokens!494)))))

(assert (=> d!875878 (rulesInvariant!4192 thiss!18206 rules!2135)))

(assert (=> d!875878 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!911 thiss!18206 rules!2135 lt!1079879 (h!41523 tokens!494)) lt!1080109)))

(declare-fun b!3201639 () Bool)

(declare-fun res!1302984 () Bool)

(assert (=> b!3201639 (=> (not res!1302984) (not e!1996182))))

(assert (=> b!3201639 (= res!1302984 (matchR!4599 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494)))))) (list!12831 (charsOf!3222 (h!41523 tokens!494)))))))

(declare-fun b!3201640 () Bool)

(assert (=> b!3201640 (= e!1996182 (= (rule!7642 (h!41523 tokens!494)) (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494)))))))))

(assert (= (and d!875878 res!1302983) b!3201639))

(assert (= (and b!3201639 res!1302984) b!3201640))

(assert (=> d!875878 m!3463507))

(assert (=> d!875878 m!3463507))

(declare-fun m!3464289 () Bool)

(assert (=> d!875878 m!3464289))

(declare-fun m!3464291 () Bool)

(assert (=> d!875878 m!3464291))

(assert (=> d!875878 m!3463609))

(assert (=> b!3201639 m!3463507))

(declare-fun m!3464293 () Bool)

(assert (=> b!3201639 m!3464293))

(assert (=> b!3201639 m!3463561))

(assert (=> b!3201639 m!3463563))

(assert (=> b!3201639 m!3463561))

(assert (=> b!3201639 m!3463507))

(assert (=> b!3201639 m!3463563))

(declare-fun m!3464295 () Bool)

(assert (=> b!3201639 m!3464295))

(assert (=> b!3201640 m!3463507))

(assert (=> b!3201640 m!3463507))

(assert (=> b!3201640 m!3464293))

(assert (=> b!3201181 d!875878))

(declare-fun d!875880 () Bool)

(declare-fun lt!1080110 () BalanceConc!21188)

(assert (=> d!875880 (= (list!12831 lt!1080110) (printList!1345 thiss!18206 (list!12833 lt!1079899)))))

(assert (=> d!875880 (= lt!1080110 (printTailRec!1292 thiss!18206 lt!1079899 0 (BalanceConc!21189 Empty!10787)))))

(assert (=> d!875880 (= (print!1860 thiss!18206 lt!1079899) lt!1080110)))

(declare-fun bs!540909 () Bool)

(assert (= bs!540909 d!875880))

(declare-fun m!3464297 () Bool)

(assert (=> bs!540909 m!3464297))

(declare-fun m!3464299 () Bool)

(assert (=> bs!540909 m!3464299))

(assert (=> bs!540909 m!3464299))

(declare-fun m!3464301 () Bool)

(assert (=> bs!540909 m!3464301))

(assert (=> bs!540909 m!3463519))

(assert (=> b!3201181 d!875880))

(declare-fun d!875882 () Bool)

(declare-fun e!1996183 () Bool)

(assert (=> d!875882 e!1996183))

(declare-fun res!1302985 () Bool)

(assert (=> d!875882 (=> (not res!1302985) (not e!1996183))))

(declare-fun lt!1080111 () BalanceConc!21190)

(assert (=> d!875882 (= res!1302985 (= (list!12833 lt!1080111) (Cons!36103 (h!41523 (t!237478 tokens!494)) Nil!36103)))))

(assert (=> d!875882 (= lt!1080111 (singleton!990 (h!41523 (t!237478 tokens!494))))))

(assert (=> d!875882 (= (singletonSeq!2302 (h!41523 (t!237478 tokens!494))) lt!1080111)))

(declare-fun b!3201641 () Bool)

(assert (=> b!3201641 (= e!1996183 (isBalanced!3209 (c!537388 lt!1080111)))))

(assert (= (and d!875882 res!1302985) b!3201641))

(declare-fun m!3464303 () Bool)

(assert (=> d!875882 m!3464303))

(declare-fun m!3464305 () Bool)

(assert (=> d!875882 m!3464305))

(declare-fun m!3464307 () Bool)

(assert (=> b!3201641 m!3464307))

(assert (=> b!3201181 d!875882))

(declare-fun d!875884 () Bool)

(declare-fun isEmpty!20189 (Option!7107) Bool)

(assert (=> d!875884 (= (isDefined!5534 lt!1079895) (not (isEmpty!20189 lt!1079895)))))

(declare-fun bs!540910 () Bool)

(assert (= bs!540910 d!875884))

(declare-fun m!3464309 () Bool)

(assert (=> bs!540910 m!3464309))

(assert (=> b!3201181 d!875884))

(declare-fun bm!231768 () Bool)

(declare-fun call!231773 () List!36225)

(declare-fun c!537491 () Bool)

(assert (=> bm!231768 (= call!231773 (usedCharacters!522 (ite c!537491 (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))))))

(declare-fun bm!231769 () Bool)

(declare-fun call!231774 () List!36225)

(declare-fun call!231776 () List!36225)

(assert (=> bm!231769 (= call!231774 call!231776)))

(declare-fun b!3201659 () Bool)

(declare-fun e!1996192 () List!36225)

(declare-fun e!1996193 () List!36225)

(assert (=> b!3201659 (= e!1996192 e!1996193)))

(declare-fun c!537494 () Bool)

(assert (=> b!3201659 (= c!537494 ((_ is ElementMatch!9965) (regex!5206 (rule!7642 separatorToken!241))))))

(declare-fun b!3201660 () Bool)

(assert (=> b!3201660 (= e!1996193 (Cons!36101 (c!537386 (regex!5206 (rule!7642 separatorToken!241))) Nil!36101))))

(declare-fun b!3201661 () Bool)

(declare-fun e!1996195 () List!36225)

(declare-fun e!1996194 () List!36225)

(assert (=> b!3201661 (= e!1996195 e!1996194)))

(assert (=> b!3201661 (= c!537491 ((_ is Union!9965) (regex!5206 (rule!7642 separatorToken!241))))))

(declare-fun call!231775 () List!36225)

(declare-fun bm!231770 () Bool)

(assert (=> bm!231770 (= call!231775 (++!8650 (ite c!537491 call!231774 call!231773) (ite c!537491 call!231773 call!231774)))))

(declare-fun c!537493 () Bool)

(declare-fun bm!231771 () Bool)

(assert (=> bm!231771 (= call!231776 (usedCharacters!522 (ite c!537493 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))) (ite c!537491 (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241)))))))))

(declare-fun b!3201662 () Bool)

(assert (=> b!3201662 (= e!1996195 call!231776)))

(declare-fun b!3201663 () Bool)

(assert (=> b!3201663 (= e!1996194 call!231775)))

(declare-fun b!3201664 () Bool)

(assert (=> b!3201664 (= e!1996194 call!231775)))

(declare-fun b!3201665 () Bool)

(assert (=> b!3201665 (= e!1996192 Nil!36101)))

(declare-fun d!875886 () Bool)

(declare-fun c!537492 () Bool)

(assert (=> d!875886 (= c!537492 (or ((_ is EmptyExpr!9965) (regex!5206 (rule!7642 separatorToken!241))) ((_ is EmptyLang!9965) (regex!5206 (rule!7642 separatorToken!241)))))))

(assert (=> d!875886 (= (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241))) e!1996192)))

(declare-fun b!3201658 () Bool)

(assert (=> b!3201658 (= c!537493 ((_ is Star!9965) (regex!5206 (rule!7642 separatorToken!241))))))

(assert (=> b!3201658 (= e!1996193 e!1996195)))

(assert (= (and d!875886 c!537492) b!3201665))

(assert (= (and d!875886 (not c!537492)) b!3201659))

(assert (= (and b!3201659 c!537494) b!3201660))

(assert (= (and b!3201659 (not c!537494)) b!3201658))

(assert (= (and b!3201658 c!537493) b!3201662))

(assert (= (and b!3201658 (not c!537493)) b!3201661))

(assert (= (and b!3201661 c!537491) b!3201663))

(assert (= (and b!3201661 (not c!537491)) b!3201664))

(assert (= (or b!3201663 b!3201664) bm!231768))

(assert (= (or b!3201663 b!3201664) bm!231769))

(assert (= (or b!3201663 b!3201664) bm!231770))

(assert (= (or b!3201662 bm!231769) bm!231771))

(declare-fun m!3464311 () Bool)

(assert (=> bm!231768 m!3464311))

(declare-fun m!3464313 () Bool)

(assert (=> bm!231770 m!3464313))

(declare-fun m!3464315 () Bool)

(assert (=> bm!231771 m!3464315))

(assert (=> b!3201181 d!875886))

(declare-fun d!875888 () Bool)

(declare-fun lt!1080114 () Int)

(declare-fun size!27196 (List!36227) Int)

(assert (=> d!875888 (= lt!1080114 (size!27196 (list!12833 (_1!20873 lt!1079896))))))

(declare-fun size!27197 (Conc!10788) Int)

(assert (=> d!875888 (= lt!1080114 (size!27197 (c!537388 (_1!20873 lt!1079896))))))

(assert (=> d!875888 (= (size!27190 (_1!20873 lt!1079896)) lt!1080114)))

(declare-fun bs!540911 () Bool)

(assert (= bs!540911 d!875888))

(assert (=> bs!540911 m!3463933))

(assert (=> bs!540911 m!3463933))

(declare-fun m!3464317 () Bool)

(assert (=> bs!540911 m!3464317))

(declare-fun m!3464319 () Bool)

(assert (=> bs!540911 m!3464319))

(assert (=> b!3201181 d!875888))

(declare-fun d!875890 () Bool)

(assert (=> d!875890 (= (maxPrefixOneRule!1574 thiss!18206 (rule!7642 (h!41523 tokens!494)) lt!1079879) (Some!7107 (tuple2!35481 (Token!9779 (apply!8149 (transformation!5206 (rule!7642 (h!41523 tokens!494))) (seqFromList!3484 lt!1079879)) (rule!7642 (h!41523 tokens!494)) (size!27191 lt!1079879) lt!1079879) Nil!36101)))))

(declare-fun lt!1080117 () Unit!50516)

(declare-fun choose!18687 (LexerInterface!4795 List!36226 List!36225 List!36225 List!36225 Rule!10212) Unit!50516)

(assert (=> d!875890 (= lt!1080117 (choose!18687 thiss!18206 rules!2135 lt!1079879 lt!1079879 Nil!36101 (rule!7642 (h!41523 tokens!494))))))

(assert (=> d!875890 (not (isEmpty!20181 rules!2135))))

(assert (=> d!875890 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!687 thiss!18206 rules!2135 lt!1079879 lt!1079879 Nil!36101 (rule!7642 (h!41523 tokens!494))) lt!1080117)))

(declare-fun bs!540912 () Bool)

(assert (= bs!540912 d!875890))

(assert (=> bs!540912 m!3463549))

(assert (=> bs!540912 m!3463511))

(declare-fun m!3464321 () Bool)

(assert (=> bs!540912 m!3464321))

(assert (=> bs!540912 m!3463625))

(assert (=> bs!540912 m!3463573))

(assert (=> bs!540912 m!3463573))

(declare-fun m!3464323 () Bool)

(assert (=> bs!540912 m!3464323))

(assert (=> b!3201181 d!875890))

(declare-fun d!875892 () Bool)

(declare-fun lt!1080120 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4877 (List!36225) (InoxSet C!20116))

(assert (=> d!875892 (= lt!1080120 (select (content!4877 (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241)))) lt!1079902))))

(declare-fun e!1996200 () Bool)

(assert (=> d!875892 (= lt!1080120 e!1996200)))

(declare-fun res!1302990 () Bool)

(assert (=> d!875892 (=> (not res!1302990) (not e!1996200))))

(assert (=> d!875892 (= res!1302990 ((_ is Cons!36101) (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241)))))))

(assert (=> d!875892 (= (contains!6424 (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241))) lt!1079902) lt!1080120)))

(declare-fun b!3201670 () Bool)

(declare-fun e!1996201 () Bool)

(assert (=> b!3201670 (= e!1996200 e!1996201)))

(declare-fun res!1302991 () Bool)

(assert (=> b!3201670 (=> res!1302991 e!1996201)))

(assert (=> b!3201670 (= res!1302991 (= (h!41521 (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241)))) lt!1079902))))

(declare-fun b!3201671 () Bool)

(assert (=> b!3201671 (= e!1996201 (contains!6424 (t!237476 (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241)))) lt!1079902))))

(assert (= (and d!875892 res!1302990) b!3201670))

(assert (= (and b!3201670 (not res!1302991)) b!3201671))

(assert (=> d!875892 m!3463525))

(declare-fun m!3464325 () Bool)

(assert (=> d!875892 m!3464325))

(declare-fun m!3464327 () Bool)

(assert (=> d!875892 m!3464327))

(declare-fun m!3464329 () Bool)

(assert (=> b!3201671 m!3464329))

(assert (=> b!3201181 d!875892))

(declare-fun d!875894 () Bool)

(assert (=> d!875894 (rulesProduceIndividualToken!2287 thiss!18206 rules!2135 (h!41523 tokens!494))))

(declare-fun lt!1080142 () Unit!50516)

(declare-fun choose!18688 (LexerInterface!4795 List!36226 List!36227 Token!9778) Unit!50516)

(assert (=> d!875894 (= lt!1080142 (choose!18688 thiss!18206 rules!2135 tokens!494 (h!41523 tokens!494)))))

(assert (=> d!875894 (not (isEmpty!20181 rules!2135))))

(assert (=> d!875894 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!834 thiss!18206 rules!2135 tokens!494 (h!41523 tokens!494)) lt!1080142)))

(declare-fun bs!540920 () Bool)

(assert (= bs!540920 d!875894))

(assert (=> bs!540920 m!3463631))

(declare-fun m!3464489 () Bool)

(assert (=> bs!540920 m!3464489))

(assert (=> bs!540920 m!3463625))

(assert (=> b!3201181 d!875894))

(declare-fun b!3201813 () Bool)

(declare-fun lt!1080150 () Unit!50516)

(declare-fun lt!1080149 () Unit!50516)

(assert (=> b!3201813 (= lt!1080150 lt!1080149)))

(assert (=> b!3201813 (rulesInvariant!4192 thiss!18206 (t!237477 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!346 (LexerInterface!4795 Rule!10212 List!36226) Unit!50516)

(assert (=> b!3201813 (= lt!1080149 (lemmaInvariantOnRulesThenOnTail!346 thiss!18206 (h!41522 rules!2135) (t!237477 rules!2135)))))

(declare-fun e!1996306 () Option!7107)

(assert (=> b!3201813 (= e!1996306 (getRuleFromTag!911 thiss!18206 (t!237477 rules!2135) (tag!5728 (rule!7642 (h!41523 tokens!494)))))))

(declare-fun b!3201814 () Bool)

(assert (=> b!3201814 (= e!1996306 None!7106)))

(declare-fun b!3201815 () Bool)

(declare-fun e!1996307 () Bool)

(declare-fun lt!1080151 () Option!7107)

(assert (=> b!3201815 (= e!1996307 (= (tag!5728 (get!11486 lt!1080151)) (tag!5728 (rule!7642 (h!41523 tokens!494)))))))

(declare-fun b!3201816 () Bool)

(declare-fun e!1996305 () Option!7107)

(assert (=> b!3201816 (= e!1996305 (Some!7106 (h!41522 rules!2135)))))

(declare-fun b!3201817 () Bool)

(declare-fun e!1996304 () Bool)

(assert (=> b!3201817 (= e!1996304 e!1996307)))

(declare-fun res!1303048 () Bool)

(assert (=> b!3201817 (=> (not res!1303048) (not e!1996307))))

(declare-fun contains!6427 (List!36226 Rule!10212) Bool)

(assert (=> b!3201817 (= res!1303048 (contains!6427 rules!2135 (get!11486 lt!1080151)))))

(declare-fun d!875948 () Bool)

(assert (=> d!875948 e!1996304))

(declare-fun res!1303047 () Bool)

(assert (=> d!875948 (=> res!1303047 e!1996304)))

(assert (=> d!875948 (= res!1303047 (isEmpty!20189 lt!1080151))))

(assert (=> d!875948 (= lt!1080151 e!1996305)))

(declare-fun c!537508 () Bool)

(assert (=> d!875948 (= c!537508 (and ((_ is Cons!36102) rules!2135) (= (tag!5728 (h!41522 rules!2135)) (tag!5728 (rule!7642 (h!41523 tokens!494))))))))

(assert (=> d!875948 (rulesInvariant!4192 thiss!18206 rules!2135)))

(assert (=> d!875948 (= (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494)))) lt!1080151)))

(declare-fun b!3201818 () Bool)

(assert (=> b!3201818 (= e!1996305 e!1996306)))

(declare-fun c!537509 () Bool)

(assert (=> b!3201818 (= c!537509 (and ((_ is Cons!36102) rules!2135) (not (= (tag!5728 (h!41522 rules!2135)) (tag!5728 (rule!7642 (h!41523 tokens!494)))))))))

(assert (= (and d!875948 c!537508) b!3201816))

(assert (= (and d!875948 (not c!537508)) b!3201818))

(assert (= (and b!3201818 c!537509) b!3201813))

(assert (= (and b!3201818 (not c!537509)) b!3201814))

(assert (= (and d!875948 (not res!1303047)) b!3201817))

(assert (= (and b!3201817 res!1303048) b!3201815))

(declare-fun m!3464495 () Bool)

(assert (=> b!3201813 m!3464495))

(declare-fun m!3464497 () Bool)

(assert (=> b!3201813 m!3464497))

(declare-fun m!3464499 () Bool)

(assert (=> b!3201813 m!3464499))

(declare-fun m!3464501 () Bool)

(assert (=> b!3201815 m!3464501))

(assert (=> b!3201817 m!3464501))

(assert (=> b!3201817 m!3464501))

(declare-fun m!3464503 () Bool)

(assert (=> b!3201817 m!3464503))

(declare-fun m!3464505 () Bool)

(assert (=> d!875948 m!3464505))

(assert (=> d!875948 m!3463609))

(assert (=> b!3201181 d!875948))

(declare-fun d!875956 () Bool)

(declare-fun res!1303053 () Bool)

(declare-fun e!1996312 () Bool)

(assert (=> d!875956 (=> res!1303053 e!1996312)))

(assert (=> d!875956 (= res!1303053 ((_ is Nil!36103) tokens!494))))

(assert (=> d!875956 (= (forall!7358 tokens!494 lambda!117203) e!1996312)))

(declare-fun b!3201823 () Bool)

(declare-fun e!1996313 () Bool)

(assert (=> b!3201823 (= e!1996312 e!1996313)))

(declare-fun res!1303054 () Bool)

(assert (=> b!3201823 (=> (not res!1303054) (not e!1996313))))

(assert (=> b!3201823 (= res!1303054 (dynLambda!14538 lambda!117203 (h!41523 tokens!494)))))

(declare-fun b!3201824 () Bool)

(assert (=> b!3201824 (= e!1996313 (forall!7358 (t!237478 tokens!494) lambda!117203))))

(assert (= (and d!875956 (not res!1303053)) b!3201823))

(assert (= (and b!3201823 res!1303054) b!3201824))

(declare-fun b_lambda!87527 () Bool)

(assert (=> (not b_lambda!87527) (not b!3201823)))

(declare-fun m!3464507 () Bool)

(assert (=> b!3201823 m!3464507))

(declare-fun m!3464509 () Bool)

(assert (=> b!3201824 m!3464509))

(assert (=> b!3201181 d!875956))

(declare-fun d!875958 () Bool)

(declare-fun e!1996314 () Bool)

(assert (=> d!875958 e!1996314))

(declare-fun res!1303055 () Bool)

(assert (=> d!875958 (=> (not res!1303055) (not e!1996314))))

(declare-fun lt!1080152 () BalanceConc!21190)

(assert (=> d!875958 (= res!1303055 (= (list!12833 lt!1080152) (Cons!36103 separatorToken!241 Nil!36103)))))

(assert (=> d!875958 (= lt!1080152 (singleton!990 separatorToken!241))))

(assert (=> d!875958 (= (singletonSeq!2302 separatorToken!241) lt!1080152)))

(declare-fun b!3201825 () Bool)

(assert (=> b!3201825 (= e!1996314 (isBalanced!3209 (c!537388 lt!1080152)))))

(assert (= (and d!875958 res!1303055) b!3201825))

(declare-fun m!3464511 () Bool)

(assert (=> d!875958 m!3464511))

(declare-fun m!3464513 () Bool)

(assert (=> d!875958 m!3464513))

(declare-fun m!3464515 () Bool)

(assert (=> b!3201825 m!3464515))

(assert (=> b!3201181 d!875958))

(declare-fun d!875960 () Bool)

(assert (=> d!875960 (= (head!7021 lt!1079883) (h!41521 lt!1079883))))

(assert (=> b!3201181 d!875960))

(declare-fun d!875962 () Bool)

(declare-fun dynLambda!14540 (Int BalanceConc!21188) TokenValue!5436)

(assert (=> d!875962 (= (apply!8149 (transformation!5206 (rule!7642 (h!41523 tokens!494))) lt!1079875) (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) lt!1079875))))

(declare-fun b_lambda!87529 () Bool)

(assert (=> (not b_lambda!87529) (not d!875962)))

(declare-fun t!237534 () Bool)

(declare-fun tb!156827 () Bool)

(assert (=> (and b!3201175 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237534) tb!156827))

(declare-fun result!199124 () Bool)

(assert (=> tb!156827 (= result!199124 (inv!21 (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) lt!1079875)))))

(declare-fun m!3464517 () Bool)

(assert (=> tb!156827 m!3464517))

(assert (=> d!875962 t!237534))

(declare-fun b_and!212863 () Bool)

(assert (= b_and!212807 (and (=> t!237534 result!199124) b_and!212863)))

(declare-fun t!237536 () Bool)

(declare-fun tb!156829 () Bool)

(assert (=> (and b!3201192 (= (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237536) tb!156829))

(declare-fun result!199128 () Bool)

(assert (= result!199128 result!199124))

(assert (=> d!875962 t!237536))

(declare-fun b_and!212865 () Bool)

(assert (= b_and!212811 (and (=> t!237536 result!199128) b_and!212865)))

(declare-fun tb!156831 () Bool)

(declare-fun t!237538 () Bool)

(assert (=> (and b!3201193 (= (toValue!7282 (transformation!5206 (h!41522 rules!2135))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237538) tb!156831))

(declare-fun result!199130 () Bool)

(assert (= result!199130 result!199124))

(assert (=> d!875962 t!237538))

(declare-fun b_and!212867 () Bool)

(assert (= b_and!212815 (and (=> t!237538 result!199130) b_and!212867)))

(declare-fun m!3464519 () Bool)

(assert (=> d!875962 m!3464519))

(assert (=> b!3201181 d!875962))

(declare-fun b!3201828 () Bool)

(declare-fun lt!1080154 () Unit!50516)

(declare-fun lt!1080153 () Unit!50516)

(assert (=> b!3201828 (= lt!1080154 lt!1080153)))

(assert (=> b!3201828 (rulesInvariant!4192 thiss!18206 (t!237477 rules!2135))))

(assert (=> b!3201828 (= lt!1080153 (lemmaInvariantOnRulesThenOnTail!346 thiss!18206 (h!41522 rules!2135) (t!237477 rules!2135)))))

(declare-fun e!1996320 () Option!7107)

(assert (=> b!3201828 (= e!1996320 (getRuleFromTag!911 thiss!18206 (t!237477 rules!2135) (tag!5728 (rule!7642 separatorToken!241))))))

(declare-fun b!3201829 () Bool)

(assert (=> b!3201829 (= e!1996320 None!7106)))

(declare-fun b!3201830 () Bool)

(declare-fun e!1996321 () Bool)

(declare-fun lt!1080155 () Option!7107)

(assert (=> b!3201830 (= e!1996321 (= (tag!5728 (get!11486 lt!1080155)) (tag!5728 (rule!7642 separatorToken!241))))))

(declare-fun b!3201831 () Bool)

(declare-fun e!1996319 () Option!7107)

(assert (=> b!3201831 (= e!1996319 (Some!7106 (h!41522 rules!2135)))))

(declare-fun b!3201832 () Bool)

(declare-fun e!1996318 () Bool)

(assert (=> b!3201832 (= e!1996318 e!1996321)))

(declare-fun res!1303057 () Bool)

(assert (=> b!3201832 (=> (not res!1303057) (not e!1996321))))

(assert (=> b!3201832 (= res!1303057 (contains!6427 rules!2135 (get!11486 lt!1080155)))))

(declare-fun d!875964 () Bool)

(assert (=> d!875964 e!1996318))

(declare-fun res!1303056 () Bool)

(assert (=> d!875964 (=> res!1303056 e!1996318)))

(assert (=> d!875964 (= res!1303056 (isEmpty!20189 lt!1080155))))

(assert (=> d!875964 (= lt!1080155 e!1996319)))

(declare-fun c!537510 () Bool)

(assert (=> d!875964 (= c!537510 (and ((_ is Cons!36102) rules!2135) (= (tag!5728 (h!41522 rules!2135)) (tag!5728 (rule!7642 separatorToken!241)))))))

(assert (=> d!875964 (rulesInvariant!4192 thiss!18206 rules!2135)))

(assert (=> d!875964 (= (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241))) lt!1080155)))

(declare-fun b!3201833 () Bool)

(assert (=> b!3201833 (= e!1996319 e!1996320)))

(declare-fun c!537511 () Bool)

(assert (=> b!3201833 (= c!537511 (and ((_ is Cons!36102) rules!2135) (not (= (tag!5728 (h!41522 rules!2135)) (tag!5728 (rule!7642 separatorToken!241))))))))

(assert (= (and d!875964 c!537510) b!3201831))

(assert (= (and d!875964 (not c!537510)) b!3201833))

(assert (= (and b!3201833 c!537511) b!3201828))

(assert (= (and b!3201833 (not c!537511)) b!3201829))

(assert (= (and d!875964 (not res!1303056)) b!3201832))

(assert (= (and b!3201832 res!1303057) b!3201830))

(assert (=> b!3201828 m!3464495))

(assert (=> b!3201828 m!3464497))

(declare-fun m!3464521 () Bool)

(assert (=> b!3201828 m!3464521))

(declare-fun m!3464523 () Bool)

(assert (=> b!3201830 m!3464523))

(assert (=> b!3201832 m!3464523))

(assert (=> b!3201832 m!3464523))

(declare-fun m!3464525 () Bool)

(assert (=> b!3201832 m!3464525))

(declare-fun m!3464527 () Bool)

(assert (=> d!875964 m!3464527))

(assert (=> d!875964 m!3463609))

(assert (=> b!3201181 d!875964))

(declare-fun b!3201844 () Bool)

(declare-fun e!1996330 () Bool)

(declare-fun lt!1080158 () tuple2!35478)

(assert (=> b!3201844 (= e!1996330 (= (_2!20873 lt!1080158) lt!1079906))))

(declare-fun b!3201845 () Bool)

(declare-fun e!1996328 () Bool)

(declare-datatypes ((tuple2!35488 0))(
  ( (tuple2!35489 (_1!20878 List!36227) (_2!20878 List!36225)) )
))
(declare-fun lexList!1309 (LexerInterface!4795 List!36226 List!36225) tuple2!35488)

(assert (=> b!3201845 (= e!1996328 (= (list!12831 (_2!20873 lt!1080158)) (_2!20878 (lexList!1309 thiss!18206 rules!2135 (list!12831 lt!1079906)))))))

(declare-fun d!875966 () Bool)

(assert (=> d!875966 e!1996328))

(declare-fun res!1303065 () Bool)

(assert (=> d!875966 (=> (not res!1303065) (not e!1996328))))

(assert (=> d!875966 (= res!1303065 e!1996330)))

(declare-fun c!537514 () Bool)

(assert (=> d!875966 (= c!537514 (> (size!27190 (_1!20873 lt!1080158)) 0))))

(declare-fun lexTailRecV2!929 (LexerInterface!4795 List!36226 BalanceConc!21188 BalanceConc!21188 BalanceConc!21188 BalanceConc!21190) tuple2!35478)

(assert (=> d!875966 (= lt!1080158 (lexTailRecV2!929 thiss!18206 rules!2135 lt!1079906 (BalanceConc!21189 Empty!10787) lt!1079906 (BalanceConc!21191 Empty!10788)))))

(assert (=> d!875966 (= (lex!2125 thiss!18206 rules!2135 lt!1079906) lt!1080158)))

(declare-fun b!3201846 () Bool)

(declare-fun e!1996329 () Bool)

(assert (=> b!3201846 (= e!1996329 (not (isEmpty!20180 (_1!20873 lt!1080158))))))

(declare-fun b!3201847 () Bool)

(assert (=> b!3201847 (= e!1996330 e!1996329)))

(declare-fun res!1303064 () Bool)

(assert (=> b!3201847 (= res!1303064 (< (size!27195 (_2!20873 lt!1080158)) (size!27195 lt!1079906)))))

(assert (=> b!3201847 (=> (not res!1303064) (not e!1996329))))

(declare-fun b!3201848 () Bool)

(declare-fun res!1303066 () Bool)

(assert (=> b!3201848 (=> (not res!1303066) (not e!1996328))))

(assert (=> b!3201848 (= res!1303066 (= (list!12833 (_1!20873 lt!1080158)) (_1!20878 (lexList!1309 thiss!18206 rules!2135 (list!12831 lt!1079906)))))))

(assert (= (and d!875966 c!537514) b!3201847))

(assert (= (and d!875966 (not c!537514)) b!3201844))

(assert (= (and b!3201847 res!1303064) b!3201846))

(assert (= (and d!875966 res!1303065) b!3201848))

(assert (= (and b!3201848 res!1303066) b!3201845))

(declare-fun m!3464529 () Bool)

(assert (=> b!3201846 m!3464529))

(declare-fun m!3464531 () Bool)

(assert (=> b!3201847 m!3464531))

(declare-fun m!3464533 () Bool)

(assert (=> b!3201847 m!3464533))

(declare-fun m!3464535 () Bool)

(assert (=> b!3201848 m!3464535))

(declare-fun m!3464537 () Bool)

(assert (=> b!3201848 m!3464537))

(assert (=> b!3201848 m!3464537))

(declare-fun m!3464539 () Bool)

(assert (=> b!3201848 m!3464539))

(declare-fun m!3464541 () Bool)

(assert (=> d!875966 m!3464541))

(declare-fun m!3464543 () Bool)

(assert (=> d!875966 m!3464543))

(declare-fun m!3464545 () Bool)

(assert (=> b!3201845 m!3464545))

(assert (=> b!3201845 m!3464537))

(assert (=> b!3201845 m!3464537))

(assert (=> b!3201845 m!3464539))

(assert (=> b!3201181 d!875966))

(declare-fun d!875968 () Bool)

(declare-fun lt!1080165 () BalanceConc!21188)

(assert (=> d!875968 (= (list!12831 lt!1080165) (printListTailRec!557 thiss!18206 (dropList!1074 lt!1079897 0) (list!12831 (BalanceConc!21189 Empty!10787))))))

(declare-fun e!1996331 () BalanceConc!21188)

(assert (=> d!875968 (= lt!1080165 e!1996331)))

(declare-fun c!537515 () Bool)

(assert (=> d!875968 (= c!537515 (>= 0 (size!27190 lt!1079897)))))

(declare-fun e!1996332 () Bool)

(assert (=> d!875968 e!1996332))

(declare-fun res!1303067 () Bool)

(assert (=> d!875968 (=> (not res!1303067) (not e!1996332))))

(assert (=> d!875968 (= res!1303067 (>= 0 0))))

(assert (=> d!875968 (= (printTailRec!1292 thiss!18206 lt!1079897 0 (BalanceConc!21189 Empty!10787)) lt!1080165)))

(declare-fun b!3201849 () Bool)

(assert (=> b!3201849 (= e!1996332 (<= 0 (size!27190 lt!1079897)))))

(declare-fun b!3201850 () Bool)

(assert (=> b!3201850 (= e!1996331 (BalanceConc!21189 Empty!10787))))

(declare-fun b!3201851 () Bool)

(assert (=> b!3201851 (= e!1996331 (printTailRec!1292 thiss!18206 lt!1079897 (+ 0 1) (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079897 0)))))))

(declare-fun lt!1080161 () List!36227)

(assert (=> b!3201851 (= lt!1080161 (list!12833 lt!1079897))))

(declare-fun lt!1080162 () Unit!50516)

(assert (=> b!3201851 (= lt!1080162 (lemmaDropApply!1033 lt!1080161 0))))

(assert (=> b!3201851 (= (head!7023 (drop!1857 lt!1080161 0)) (apply!8152 lt!1080161 0))))

(declare-fun lt!1080160 () Unit!50516)

(assert (=> b!3201851 (= lt!1080160 lt!1080162)))

(declare-fun lt!1080163 () List!36227)

(assert (=> b!3201851 (= lt!1080163 (list!12833 lt!1079897))))

(declare-fun lt!1080159 () Unit!50516)

(assert (=> b!3201851 (= lt!1080159 (lemmaDropTail!917 lt!1080163 0))))

(assert (=> b!3201851 (= (tail!5204 (drop!1857 lt!1080163 0)) (drop!1857 lt!1080163 (+ 0 1)))))

(declare-fun lt!1080164 () Unit!50516)

(assert (=> b!3201851 (= lt!1080164 lt!1080159)))

(assert (= (and d!875968 res!1303067) b!3201849))

(assert (= (and d!875968 c!537515) b!3201850))

(assert (= (and d!875968 (not c!537515)) b!3201851))

(declare-fun m!3464547 () Bool)

(assert (=> d!875968 m!3464547))

(declare-fun m!3464549 () Bool)

(assert (=> d!875968 m!3464549))

(assert (=> d!875968 m!3463751))

(declare-fun m!3464551 () Bool)

(assert (=> d!875968 m!3464551))

(assert (=> d!875968 m!3464549))

(assert (=> d!875968 m!3463751))

(declare-fun m!3464553 () Bool)

(assert (=> d!875968 m!3464553))

(assert (=> b!3201849 m!3464551))

(declare-fun m!3464555 () Bool)

(assert (=> b!3201851 m!3464555))

(declare-fun m!3464557 () Bool)

(assert (=> b!3201851 m!3464557))

(declare-fun m!3464559 () Bool)

(assert (=> b!3201851 m!3464559))

(declare-fun m!3464561 () Bool)

(assert (=> b!3201851 m!3464561))

(assert (=> b!3201851 m!3464559))

(declare-fun m!3464563 () Bool)

(assert (=> b!3201851 m!3464563))

(declare-fun m!3464565 () Bool)

(assert (=> b!3201851 m!3464565))

(declare-fun m!3464567 () Bool)

(assert (=> b!3201851 m!3464567))

(declare-fun m!3464569 () Bool)

(assert (=> b!3201851 m!3464569))

(declare-fun m!3464571 () Bool)

(assert (=> b!3201851 m!3464571))

(assert (=> b!3201851 m!3464563))

(declare-fun m!3464573 () Bool)

(assert (=> b!3201851 m!3464573))

(assert (=> b!3201851 m!3464565))

(assert (=> b!3201851 m!3464569))

(declare-fun m!3464575 () Bool)

(assert (=> b!3201851 m!3464575))

(assert (=> b!3201851 m!3464557))

(declare-fun m!3464577 () Bool)

(assert (=> b!3201851 m!3464577))

(declare-fun m!3464579 () Bool)

(assert (=> b!3201851 m!3464579))

(assert (=> b!3201181 d!875968))

(declare-fun b!3201852 () Bool)

(declare-fun e!1996335 () Bool)

(declare-fun lt!1080166 () tuple2!35478)

(assert (=> b!3201852 (= e!1996335 (= (_2!20873 lt!1080166) lt!1079881))))

(declare-fun b!3201853 () Bool)

(declare-fun e!1996333 () Bool)

(assert (=> b!3201853 (= e!1996333 (= (list!12831 (_2!20873 lt!1080166)) (_2!20878 (lexList!1309 thiss!18206 rules!2135 (list!12831 lt!1079881)))))))

(declare-fun d!875970 () Bool)

(assert (=> d!875970 e!1996333))

(declare-fun res!1303069 () Bool)

(assert (=> d!875970 (=> (not res!1303069) (not e!1996333))))

(assert (=> d!875970 (= res!1303069 e!1996335)))

(declare-fun c!537516 () Bool)

(assert (=> d!875970 (= c!537516 (> (size!27190 (_1!20873 lt!1080166)) 0))))

(assert (=> d!875970 (= lt!1080166 (lexTailRecV2!929 thiss!18206 rules!2135 lt!1079881 (BalanceConc!21189 Empty!10787) lt!1079881 (BalanceConc!21191 Empty!10788)))))

(assert (=> d!875970 (= (lex!2125 thiss!18206 rules!2135 lt!1079881) lt!1080166)))

(declare-fun b!3201854 () Bool)

(declare-fun e!1996334 () Bool)

(assert (=> b!3201854 (= e!1996334 (not (isEmpty!20180 (_1!20873 lt!1080166))))))

(declare-fun b!3201855 () Bool)

(assert (=> b!3201855 (= e!1996335 e!1996334)))

(declare-fun res!1303068 () Bool)

(assert (=> b!3201855 (= res!1303068 (< (size!27195 (_2!20873 lt!1080166)) (size!27195 lt!1079881)))))

(assert (=> b!3201855 (=> (not res!1303068) (not e!1996334))))

(declare-fun b!3201856 () Bool)

(declare-fun res!1303070 () Bool)

(assert (=> b!3201856 (=> (not res!1303070) (not e!1996333))))

(assert (=> b!3201856 (= res!1303070 (= (list!12833 (_1!20873 lt!1080166)) (_1!20878 (lexList!1309 thiss!18206 rules!2135 (list!12831 lt!1079881)))))))

(assert (= (and d!875970 c!537516) b!3201855))

(assert (= (and d!875970 (not c!537516)) b!3201852))

(assert (= (and b!3201855 res!1303068) b!3201854))

(assert (= (and d!875970 res!1303069) b!3201856))

(assert (= (and b!3201856 res!1303070) b!3201853))

(declare-fun m!3464581 () Bool)

(assert (=> b!3201854 m!3464581))

(declare-fun m!3464583 () Bool)

(assert (=> b!3201855 m!3464583))

(declare-fun m!3464585 () Bool)

(assert (=> b!3201855 m!3464585))

(declare-fun m!3464587 () Bool)

(assert (=> b!3201856 m!3464587))

(declare-fun m!3464589 () Bool)

(assert (=> b!3201856 m!3464589))

(assert (=> b!3201856 m!3464589))

(declare-fun m!3464591 () Bool)

(assert (=> b!3201856 m!3464591))

(declare-fun m!3464593 () Bool)

(assert (=> d!875970 m!3464593))

(declare-fun m!3464595 () Bool)

(assert (=> d!875970 m!3464595))

(declare-fun m!3464597 () Bool)

(assert (=> b!3201853 m!3464597))

(assert (=> b!3201853 m!3464589))

(assert (=> b!3201853 m!3464589))

(assert (=> b!3201853 m!3464591))

(assert (=> b!3201181 d!875970))

(declare-fun d!875972 () Bool)

(declare-fun lt!1080173 () BalanceConc!21188)

(assert (=> d!875972 (= (list!12831 lt!1080173) (printListTailRec!557 thiss!18206 (dropList!1074 lt!1079899 0) (list!12831 (BalanceConc!21189 Empty!10787))))))

(declare-fun e!1996336 () BalanceConc!21188)

(assert (=> d!875972 (= lt!1080173 e!1996336)))

(declare-fun c!537517 () Bool)

(assert (=> d!875972 (= c!537517 (>= 0 (size!27190 lt!1079899)))))

(declare-fun e!1996337 () Bool)

(assert (=> d!875972 e!1996337))

(declare-fun res!1303071 () Bool)

(assert (=> d!875972 (=> (not res!1303071) (not e!1996337))))

(assert (=> d!875972 (= res!1303071 (>= 0 0))))

(assert (=> d!875972 (= (printTailRec!1292 thiss!18206 lt!1079899 0 (BalanceConc!21189 Empty!10787)) lt!1080173)))

(declare-fun b!3201857 () Bool)

(assert (=> b!3201857 (= e!1996337 (<= 0 (size!27190 lt!1079899)))))

(declare-fun b!3201858 () Bool)

(assert (=> b!3201858 (= e!1996336 (BalanceConc!21189 Empty!10787))))

(declare-fun b!3201859 () Bool)

(assert (=> b!3201859 (= e!1996336 (printTailRec!1292 thiss!18206 lt!1079899 (+ 0 1) (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079899 0)))))))

(declare-fun lt!1080169 () List!36227)

(assert (=> b!3201859 (= lt!1080169 (list!12833 lt!1079899))))

(declare-fun lt!1080170 () Unit!50516)

(assert (=> b!3201859 (= lt!1080170 (lemmaDropApply!1033 lt!1080169 0))))

(assert (=> b!3201859 (= (head!7023 (drop!1857 lt!1080169 0)) (apply!8152 lt!1080169 0))))

(declare-fun lt!1080168 () Unit!50516)

(assert (=> b!3201859 (= lt!1080168 lt!1080170)))

(declare-fun lt!1080171 () List!36227)

(assert (=> b!3201859 (= lt!1080171 (list!12833 lt!1079899))))

(declare-fun lt!1080167 () Unit!50516)

(assert (=> b!3201859 (= lt!1080167 (lemmaDropTail!917 lt!1080171 0))))

(assert (=> b!3201859 (= (tail!5204 (drop!1857 lt!1080171 0)) (drop!1857 lt!1080171 (+ 0 1)))))

(declare-fun lt!1080172 () Unit!50516)

(assert (=> b!3201859 (= lt!1080172 lt!1080167)))

(assert (= (and d!875972 res!1303071) b!3201857))

(assert (= (and d!875972 c!537517) b!3201858))

(assert (= (and d!875972 (not c!537517)) b!3201859))

(declare-fun m!3464599 () Bool)

(assert (=> d!875972 m!3464599))

(declare-fun m!3464601 () Bool)

(assert (=> d!875972 m!3464601))

(assert (=> d!875972 m!3463751))

(declare-fun m!3464603 () Bool)

(assert (=> d!875972 m!3464603))

(assert (=> d!875972 m!3464601))

(assert (=> d!875972 m!3463751))

(declare-fun m!3464605 () Bool)

(assert (=> d!875972 m!3464605))

(assert (=> b!3201857 m!3464603))

(declare-fun m!3464607 () Bool)

(assert (=> b!3201859 m!3464607))

(declare-fun m!3464609 () Bool)

(assert (=> b!3201859 m!3464609))

(declare-fun m!3464611 () Bool)

(assert (=> b!3201859 m!3464611))

(declare-fun m!3464613 () Bool)

(assert (=> b!3201859 m!3464613))

(assert (=> b!3201859 m!3464611))

(declare-fun m!3464615 () Bool)

(assert (=> b!3201859 m!3464615))

(declare-fun m!3464617 () Bool)

(assert (=> b!3201859 m!3464617))

(declare-fun m!3464619 () Bool)

(assert (=> b!3201859 m!3464619))

(declare-fun m!3464621 () Bool)

(assert (=> b!3201859 m!3464621))

(declare-fun m!3464623 () Bool)

(assert (=> b!3201859 m!3464623))

(assert (=> b!3201859 m!3464615))

(declare-fun m!3464625 () Bool)

(assert (=> b!3201859 m!3464625))

(assert (=> b!3201859 m!3464617))

(assert (=> b!3201859 m!3464621))

(declare-fun m!3464627 () Bool)

(assert (=> b!3201859 m!3464627))

(assert (=> b!3201859 m!3464609))

(declare-fun m!3464629 () Bool)

(assert (=> b!3201859 m!3464629))

(assert (=> b!3201859 m!3464299))

(assert (=> b!3201181 d!875972))

(declare-fun d!875974 () Bool)

(declare-fun e!1996338 () Bool)

(assert (=> d!875974 e!1996338))

(declare-fun res!1303072 () Bool)

(assert (=> d!875974 (=> (not res!1303072) (not e!1996338))))

(assert (=> d!875974 (= res!1303072 (isDefined!5534 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241)))))))

(declare-fun lt!1080174 () Unit!50516)

(assert (=> d!875974 (= lt!1080174 (choose!18686 thiss!18206 rules!2135 lt!1079883 separatorToken!241))))

(assert (=> d!875974 (rulesInvariant!4192 thiss!18206 rules!2135)))

(assert (=> d!875974 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!911 thiss!18206 rules!2135 lt!1079883 separatorToken!241) lt!1080174)))

(declare-fun b!3201860 () Bool)

(declare-fun res!1303073 () Bool)

(assert (=> b!3201860 (=> (not res!1303073) (not e!1996338))))

(assert (=> b!3201860 (= res!1303073 (matchR!4599 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241))))) (list!12831 (charsOf!3222 separatorToken!241))))))

(declare-fun b!3201861 () Bool)

(assert (=> b!3201861 (= e!1996338 (= (rule!7642 separatorToken!241) (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241))))))))

(assert (= (and d!875974 res!1303072) b!3201860))

(assert (= (and b!3201860 res!1303073) b!3201861))

(assert (=> d!875974 m!3463541))

(assert (=> d!875974 m!3463541))

(declare-fun m!3464631 () Bool)

(assert (=> d!875974 m!3464631))

(declare-fun m!3464633 () Bool)

(assert (=> d!875974 m!3464633))

(assert (=> d!875974 m!3463609))

(assert (=> b!3201860 m!3463541))

(declare-fun m!3464635 () Bool)

(assert (=> b!3201860 m!3464635))

(assert (=> b!3201860 m!3463475))

(assert (=> b!3201860 m!3463489))

(assert (=> b!3201860 m!3463475))

(assert (=> b!3201860 m!3463541))

(assert (=> b!3201860 m!3463489))

(declare-fun m!3464637 () Bool)

(assert (=> b!3201860 m!3464637))

(assert (=> b!3201861 m!3463541))

(assert (=> b!3201861 m!3463541))

(assert (=> b!3201861 m!3464635))

(assert (=> b!3201181 d!875974))

(declare-fun d!875976 () Bool)

(assert (=> d!875976 (= (isDefined!5534 lt!1079884) (not (isEmpty!20189 lt!1079884)))))

(declare-fun bs!540924 () Bool)

(assert (= bs!540924 d!875976))

(declare-fun m!3464639 () Bool)

(assert (=> bs!540924 m!3464639))

(assert (=> b!3201181 d!875976))

(declare-fun d!875978 () Bool)

(declare-fun lt!1080175 () BalanceConc!21188)

(assert (=> d!875978 (= (list!12831 lt!1080175) (printList!1345 thiss!18206 (list!12833 lt!1079897)))))

(assert (=> d!875978 (= lt!1080175 (printTailRec!1292 thiss!18206 lt!1079897 0 (BalanceConc!21189 Empty!10787)))))

(assert (=> d!875978 (= (print!1860 thiss!18206 lt!1079897) lt!1080175)))

(declare-fun bs!540925 () Bool)

(assert (= bs!540925 d!875978))

(declare-fun m!3464641 () Bool)

(assert (=> bs!540925 m!3464641))

(assert (=> bs!540925 m!3464579))

(assert (=> bs!540925 m!3464579))

(declare-fun m!3464643 () Bool)

(assert (=> bs!540925 m!3464643))

(assert (=> bs!540925 m!3463505))

(assert (=> b!3201181 d!875978))

(declare-fun d!875980 () Bool)

(declare-fun lt!1080176 () Int)

(assert (=> d!875980 (= lt!1080176 (size!27196 (list!12833 (_1!20873 lt!1079891))))))

(assert (=> d!875980 (= lt!1080176 (size!27197 (c!537388 (_1!20873 lt!1079891))))))

(assert (=> d!875980 (= (size!27190 (_1!20873 lt!1079891)) lt!1080176)))

(declare-fun bs!540926 () Bool)

(assert (= bs!540926 d!875980))

(declare-fun m!3464645 () Bool)

(assert (=> bs!540926 m!3464645))

(assert (=> bs!540926 m!3464645))

(declare-fun m!3464647 () Bool)

(assert (=> bs!540926 m!3464647))

(declare-fun m!3464649 () Bool)

(assert (=> bs!540926 m!3464649))

(assert (=> b!3201181 d!875980))

(declare-fun d!875982 () Bool)

(declare-fun lt!1080179 () Bool)

(declare-fun content!4878 (List!36227) (InoxSet Token!9778))

(assert (=> d!875982 (= lt!1080179 (select (content!4878 tokens!494) (h!41523 (t!237478 tokens!494))))))

(declare-fun e!1996344 () Bool)

(assert (=> d!875982 (= lt!1080179 e!1996344)))

(declare-fun res!1303079 () Bool)

(assert (=> d!875982 (=> (not res!1303079) (not e!1996344))))

(assert (=> d!875982 (= res!1303079 ((_ is Cons!36103) tokens!494))))

(assert (=> d!875982 (= (contains!6425 tokens!494 (h!41523 (t!237478 tokens!494))) lt!1080179)))

(declare-fun b!3201866 () Bool)

(declare-fun e!1996343 () Bool)

(assert (=> b!3201866 (= e!1996344 e!1996343)))

(declare-fun res!1303078 () Bool)

(assert (=> b!3201866 (=> res!1303078 e!1996343)))

(assert (=> b!3201866 (= res!1303078 (= (h!41523 tokens!494) (h!41523 (t!237478 tokens!494))))))

(declare-fun b!3201867 () Bool)

(assert (=> b!3201867 (= e!1996343 (contains!6425 (t!237478 tokens!494) (h!41523 (t!237478 tokens!494))))))

(assert (= (and d!875982 res!1303079) b!3201866))

(assert (= (and b!3201866 (not res!1303078)) b!3201867))

(declare-fun m!3464651 () Bool)

(assert (=> d!875982 m!3464651))

(declare-fun m!3464653 () Bool)

(assert (=> d!875982 m!3464653))

(declare-fun m!3464655 () Bool)

(assert (=> b!3201867 m!3464655))

(assert (=> b!3201204 d!875982))

(declare-fun d!875984 () Bool)

(declare-fun c!537520 () Bool)

(assert (=> d!875984 (= c!537520 ((_ is Cons!36103) tokens!494))))

(declare-fun e!1996347 () List!36225)

(assert (=> d!875984 (= (printWithSeparatorTokenList!140 thiss!18206 tokens!494 separatorToken!241) e!1996347)))

(declare-fun b!3201872 () Bool)

(assert (=> b!3201872 (= e!1996347 (++!8650 (++!8650 (list!12831 (charsOf!3222 (h!41523 tokens!494))) (list!12831 (charsOf!3222 separatorToken!241))) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 tokens!494) separatorToken!241)))))

(declare-fun b!3201873 () Bool)

(assert (=> b!3201873 (= e!1996347 Nil!36101)))

(assert (= (and d!875984 c!537520) b!3201872))

(assert (= (and d!875984 (not c!537520)) b!3201873))

(declare-fun m!3464657 () Bool)

(assert (=> b!3201872 m!3464657))

(assert (=> b!3201872 m!3463481))

(declare-fun m!3464659 () Bool)

(assert (=> b!3201872 m!3464659))

(assert (=> b!3201872 m!3463481))

(assert (=> b!3201872 m!3463475))

(assert (=> b!3201872 m!3463561))

(assert (=> b!3201872 m!3463475))

(assert (=> b!3201872 m!3463489))

(assert (=> b!3201872 m!3463563))

(assert (=> b!3201872 m!3463489))

(assert (=> b!3201872 m!3464657))

(assert (=> b!3201872 m!3463561))

(assert (=> b!3201872 m!3463563))

(assert (=> b!3201183 d!875984))

(declare-fun d!875986 () Bool)

(declare-fun e!1996352 () Bool)

(assert (=> d!875986 e!1996352))

(declare-fun res!1303084 () Bool)

(assert (=> d!875986 (=> (not res!1303084) (not e!1996352))))

(declare-fun lt!1080182 () List!36225)

(assert (=> d!875986 (= res!1303084 (= (content!4877 lt!1080182) ((_ map or) (content!4877 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883)) (content!4877 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)))))))

(declare-fun e!1996353 () List!36225)

(assert (=> d!875986 (= lt!1080182 e!1996353)))

(declare-fun c!537523 () Bool)

(assert (=> d!875986 (= c!537523 ((_ is Nil!36101) (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883)))))

(assert (=> d!875986 (= (++!8650 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)) lt!1080182)))

(declare-fun b!3201883 () Bool)

(assert (=> b!3201883 (= e!1996353 (Cons!36101 (h!41521 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883)) (++!8650 (t!237476 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883)) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241))))))

(declare-fun b!3201885 () Bool)

(assert (=> b!3201885 (= e!1996352 (or (not (= (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241) Nil!36101)) (= lt!1080182 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883))))))

(declare-fun b!3201884 () Bool)

(declare-fun res!1303085 () Bool)

(assert (=> b!3201884 (=> (not res!1303085) (not e!1996352))))

(assert (=> b!3201884 (= res!1303085 (= (size!27191 lt!1080182) (+ (size!27191 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883)) (size!27191 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)))))))

(declare-fun b!3201882 () Bool)

(assert (=> b!3201882 (= e!1996353 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241))))

(assert (= (and d!875986 c!537523) b!3201882))

(assert (= (and d!875986 (not c!537523)) b!3201883))

(assert (= (and d!875986 res!1303084) b!3201884))

(assert (= (and b!3201884 res!1303085) b!3201885))

(declare-fun m!3464661 () Bool)

(assert (=> d!875986 m!3464661))

(assert (=> d!875986 m!3463485))

(declare-fun m!3464663 () Bool)

(assert (=> d!875986 m!3464663))

(assert (=> d!875986 m!3463487))

(declare-fun m!3464665 () Bool)

(assert (=> d!875986 m!3464665))

(assert (=> b!3201883 m!3463487))

(declare-fun m!3464667 () Bool)

(assert (=> b!3201883 m!3464667))

(declare-fun m!3464669 () Bool)

(assert (=> b!3201884 m!3464669))

(assert (=> b!3201884 m!3463485))

(declare-fun m!3464671 () Bool)

(assert (=> b!3201884 m!3464671))

(assert (=> b!3201884 m!3463487))

(declare-fun m!3464673 () Bool)

(assert (=> b!3201884 m!3464673))

(assert (=> b!3201183 d!875986))

(declare-fun d!875988 () Bool)

(declare-fun lt!1080185 () BalanceConc!21188)

(assert (=> d!875988 (= (list!12831 lt!1080185) (originalCharacters!5920 separatorToken!241))))

(declare-fun dynLambda!14541 (Int TokenValue!5436) BalanceConc!21188)

(assert (=> d!875988 (= lt!1080185 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241)))))

(assert (=> d!875988 (= (charsOf!3222 separatorToken!241) lt!1080185)))

(declare-fun b_lambda!87531 () Bool)

(assert (=> (not b_lambda!87531) (not d!875988)))

(declare-fun t!237540 () Bool)

(declare-fun tb!156833 () Bool)

(assert (=> (and b!3201175 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241)))) t!237540) tb!156833))

(declare-fun b!3201890 () Bool)

(declare-fun e!1996356 () Bool)

(declare-fun tp!1011894 () Bool)

(declare-fun inv!48956 (Conc!10787) Bool)

(assert (=> b!3201890 (= e!1996356 (and (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241)))) tp!1011894))))

(declare-fun result!199132 () Bool)

(declare-fun inv!48957 (BalanceConc!21188) Bool)

(assert (=> tb!156833 (= result!199132 (and (inv!48957 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241))) e!1996356))))

(assert (= tb!156833 b!3201890))

(declare-fun m!3464675 () Bool)

(assert (=> b!3201890 m!3464675))

(declare-fun m!3464677 () Bool)

(assert (=> tb!156833 m!3464677))

(assert (=> d!875988 t!237540))

(declare-fun b_and!212869 () Bool)

(assert (= b_and!212809 (and (=> t!237540 result!199132) b_and!212869)))

(declare-fun t!237542 () Bool)

(declare-fun tb!156835 () Bool)

(assert (=> (and b!3201192 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241)))) t!237542) tb!156835))

(declare-fun result!199136 () Bool)

(assert (= result!199136 result!199132))

(assert (=> d!875988 t!237542))

(declare-fun b_and!212871 () Bool)

(assert (= b_and!212813 (and (=> t!237542 result!199136) b_and!212871)))

(declare-fun tb!156837 () Bool)

(declare-fun t!237544 () Bool)

(assert (=> (and b!3201193 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241)))) t!237544) tb!156837))

(declare-fun result!199138 () Bool)

(assert (= result!199138 result!199132))

(assert (=> d!875988 t!237544))

(declare-fun b_and!212873 () Bool)

(assert (= b_and!212817 (and (=> t!237544 result!199138) b_and!212873)))

(declare-fun m!3464679 () Bool)

(assert (=> d!875988 m!3464679))

(declare-fun m!3464681 () Bool)

(assert (=> d!875988 m!3464681))

(assert (=> b!3201183 d!875988))

(declare-fun d!875990 () Bool)

(assert (=> d!875990 (= (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) (list!12834 (c!537387 (charsOf!3222 (h!41523 (t!237478 tokens!494))))))))

(declare-fun bs!540927 () Bool)

(assert (= bs!540927 d!875990))

(declare-fun m!3464683 () Bool)

(assert (=> bs!540927 m!3464683))

(assert (=> b!3201183 d!875990))

(declare-fun d!875992 () Bool)

(declare-fun e!1996357 () Bool)

(assert (=> d!875992 e!1996357))

(declare-fun res!1303086 () Bool)

(assert (=> d!875992 (=> (not res!1303086) (not e!1996357))))

(declare-fun lt!1080186 () List!36225)

(assert (=> d!875992 (= res!1303086 (= (content!4877 lt!1080186) ((_ map or) (content!4877 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))) (content!4877 lt!1079883))))))

(declare-fun e!1996358 () List!36225)

(assert (=> d!875992 (= lt!1080186 e!1996358)))

(declare-fun c!537524 () Bool)

(assert (=> d!875992 (= c!537524 ((_ is Nil!36101) (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))))))

(assert (=> d!875992 (= (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883) lt!1080186)))

(declare-fun b!3201892 () Bool)

(assert (=> b!3201892 (= e!1996358 (Cons!36101 (h!41521 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))) (++!8650 (t!237476 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))) lt!1079883)))))

(declare-fun b!3201894 () Bool)

(assert (=> b!3201894 (= e!1996357 (or (not (= lt!1079883 Nil!36101)) (= lt!1080186 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))))))))

(declare-fun b!3201893 () Bool)

(declare-fun res!1303087 () Bool)

(assert (=> b!3201893 (=> (not res!1303087) (not e!1996357))))

(assert (=> b!3201893 (= res!1303087 (= (size!27191 lt!1080186) (+ (size!27191 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))) (size!27191 lt!1079883))))))

(declare-fun b!3201891 () Bool)

(assert (=> b!3201891 (= e!1996358 lt!1079883)))

(assert (= (and d!875992 c!537524) b!3201891))

(assert (= (and d!875992 (not c!537524)) b!3201892))

(assert (= (and d!875992 res!1303086) b!3201893))

(assert (= (and b!3201893 res!1303087) b!3201894))

(declare-fun m!3464685 () Bool)

(assert (=> d!875992 m!3464685))

(assert (=> d!875992 m!3463483))

(declare-fun m!3464687 () Bool)

(assert (=> d!875992 m!3464687))

(declare-fun m!3464689 () Bool)

(assert (=> d!875992 m!3464689))

(declare-fun m!3464691 () Bool)

(assert (=> b!3201892 m!3464691))

(declare-fun m!3464693 () Bool)

(assert (=> b!3201893 m!3464693))

(assert (=> b!3201893 m!3463483))

(declare-fun m!3464695 () Bool)

(assert (=> b!3201893 m!3464695))

(declare-fun m!3464697 () Bool)

(assert (=> b!3201893 m!3464697))

(assert (=> b!3201183 d!875992))

(declare-fun d!875994 () Bool)

(declare-fun c!537525 () Bool)

(assert (=> d!875994 (= c!537525 ((_ is Cons!36103) (t!237478 (t!237478 tokens!494))))))

(declare-fun e!1996359 () List!36225)

(assert (=> d!875994 (= (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241) e!1996359)))

(declare-fun b!3201895 () Bool)

(assert (=> b!3201895 (= e!1996359 (++!8650 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494))))) (list!12831 (charsOf!3222 separatorToken!241))) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 (t!237478 tokens!494))) separatorToken!241)))))

(declare-fun b!3201896 () Bool)

(assert (=> b!3201896 (= e!1996359 Nil!36101)))

(assert (= (and d!875994 c!537525) b!3201895))

(assert (= (and d!875994 (not c!537525)) b!3201896))

(declare-fun m!3464699 () Bool)

(assert (=> b!3201895 m!3464699))

(declare-fun m!3464701 () Bool)

(assert (=> b!3201895 m!3464701))

(declare-fun m!3464703 () Bool)

(assert (=> b!3201895 m!3464703))

(assert (=> b!3201895 m!3464701))

(assert (=> b!3201895 m!3463475))

(declare-fun m!3464705 () Bool)

(assert (=> b!3201895 m!3464705))

(assert (=> b!3201895 m!3463475))

(assert (=> b!3201895 m!3463489))

(declare-fun m!3464707 () Bool)

(assert (=> b!3201895 m!3464707))

(assert (=> b!3201895 m!3463489))

(assert (=> b!3201895 m!3464699))

(assert (=> b!3201895 m!3464705))

(assert (=> b!3201895 m!3464707))

(assert (=> b!3201183 d!875994))

(declare-fun d!875996 () Bool)

(declare-fun c!537526 () Bool)

(assert (=> d!875996 (= c!537526 ((_ is Cons!36103) (t!237478 tokens!494)))))

(declare-fun e!1996360 () List!36225)

(assert (=> d!875996 (= (printWithSeparatorTokenList!140 thiss!18206 (t!237478 tokens!494) separatorToken!241) e!1996360)))

(declare-fun b!3201897 () Bool)

(assert (=> b!3201897 (= e!1996360 (++!8650 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) (list!12831 (charsOf!3222 separatorToken!241))) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)))))

(declare-fun b!3201898 () Bool)

(assert (=> b!3201898 (= e!1996360 Nil!36101)))

(assert (= (and d!875996 c!537526) b!3201897))

(assert (= (and d!875996 (not c!537526)) b!3201898))

(declare-fun m!3464709 () Bool)

(assert (=> b!3201897 m!3464709))

(assert (=> b!3201897 m!3463487))

(declare-fun m!3464711 () Bool)

(assert (=> b!3201897 m!3464711))

(assert (=> b!3201897 m!3463487))

(assert (=> b!3201897 m!3463475))

(assert (=> b!3201897 m!3463473))

(assert (=> b!3201897 m!3463475))

(assert (=> b!3201897 m!3463489))

(assert (=> b!3201897 m!3463483))

(assert (=> b!3201897 m!3463489))

(assert (=> b!3201897 m!3464709))

(assert (=> b!3201897 m!3463473))

(assert (=> b!3201897 m!3463483))

(assert (=> b!3201183 d!875996))

(declare-fun d!875998 () Bool)

(declare-fun e!1996361 () Bool)

(assert (=> d!875998 e!1996361))

(declare-fun res!1303088 () Bool)

(assert (=> d!875998 (=> (not res!1303088) (not e!1996361))))

(declare-fun lt!1080187 () List!36225)

(assert (=> d!875998 (= res!1303088 (= (content!4877 lt!1080187) ((_ map or) (content!4877 lt!1079883) (content!4877 lt!1079880))))))

(declare-fun e!1996362 () List!36225)

(assert (=> d!875998 (= lt!1080187 e!1996362)))

(declare-fun c!537527 () Bool)

(assert (=> d!875998 (= c!537527 ((_ is Nil!36101) lt!1079883))))

(assert (=> d!875998 (= (++!8650 lt!1079883 lt!1079880) lt!1080187)))

(declare-fun b!3201900 () Bool)

(assert (=> b!3201900 (= e!1996362 (Cons!36101 (h!41521 lt!1079883) (++!8650 (t!237476 lt!1079883) lt!1079880)))))

(declare-fun b!3201902 () Bool)

(assert (=> b!3201902 (= e!1996361 (or (not (= lt!1079880 Nil!36101)) (= lt!1080187 lt!1079883)))))

(declare-fun b!3201901 () Bool)

(declare-fun res!1303089 () Bool)

(assert (=> b!3201901 (=> (not res!1303089) (not e!1996361))))

(assert (=> b!3201901 (= res!1303089 (= (size!27191 lt!1080187) (+ (size!27191 lt!1079883) (size!27191 lt!1079880))))))

(declare-fun b!3201899 () Bool)

(assert (=> b!3201899 (= e!1996362 lt!1079880)))

(assert (= (and d!875998 c!537527) b!3201899))

(assert (= (and d!875998 (not c!537527)) b!3201900))

(assert (= (and d!875998 res!1303088) b!3201901))

(assert (= (and b!3201901 res!1303089) b!3201902))

(declare-fun m!3464713 () Bool)

(assert (=> d!875998 m!3464713))

(assert (=> d!875998 m!3464689))

(declare-fun m!3464715 () Bool)

(assert (=> d!875998 m!3464715))

(declare-fun m!3464717 () Bool)

(assert (=> b!3201900 m!3464717))

(declare-fun m!3464719 () Bool)

(assert (=> b!3201901 m!3464719))

(assert (=> b!3201901 m!3464697))

(declare-fun m!3464721 () Bool)

(assert (=> b!3201901 m!3464721))

(assert (=> b!3201183 d!875998))

(declare-fun d!876000 () Bool)

(assert (=> d!876000 (= (list!12831 (charsOf!3222 separatorToken!241)) (list!12834 (c!537387 (charsOf!3222 separatorToken!241))))))

(declare-fun bs!540928 () Bool)

(assert (= bs!540928 d!876000))

(declare-fun m!3464723 () Bool)

(assert (=> bs!540928 m!3464723))

(assert (=> b!3201183 d!876000))

(declare-fun d!876002 () Bool)

(declare-fun lt!1080188 () BalanceConc!21188)

(assert (=> d!876002 (= (list!12831 lt!1080188) (originalCharacters!5920 (h!41523 (t!237478 tokens!494))))))

(assert (=> d!876002 (= lt!1080188 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494)))))))

(assert (=> d!876002 (= (charsOf!3222 (h!41523 (t!237478 tokens!494))) lt!1080188)))

(declare-fun b_lambda!87533 () Bool)

(assert (=> (not b_lambda!87533) (not d!876002)))

(declare-fun t!237546 () Bool)

(declare-fun tb!156839 () Bool)

(assert (=> (and b!3201175 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494)))))) t!237546) tb!156839))

(declare-fun b!3201903 () Bool)

(declare-fun e!1996363 () Bool)

(declare-fun tp!1011895 () Bool)

(assert (=> b!3201903 (= e!1996363 (and (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494)))))) tp!1011895))))

(declare-fun result!199140 () Bool)

(assert (=> tb!156839 (= result!199140 (and (inv!48957 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494))))) e!1996363))))

(assert (= tb!156839 b!3201903))

(declare-fun m!3464725 () Bool)

(assert (=> b!3201903 m!3464725))

(declare-fun m!3464727 () Bool)

(assert (=> tb!156839 m!3464727))

(assert (=> d!876002 t!237546))

(declare-fun b_and!212875 () Bool)

(assert (= b_and!212869 (and (=> t!237546 result!199140) b_and!212875)))

(declare-fun tb!156841 () Bool)

(declare-fun t!237548 () Bool)

(assert (=> (and b!3201192 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494)))))) t!237548) tb!156841))

(declare-fun result!199142 () Bool)

(assert (= result!199142 result!199140))

(assert (=> d!876002 t!237548))

(declare-fun b_and!212877 () Bool)

(assert (= b_and!212871 (and (=> t!237548 result!199142) b_and!212877)))

(declare-fun tb!156843 () Bool)

(declare-fun t!237550 () Bool)

(assert (=> (and b!3201193 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494)))))) t!237550) tb!156843))

(declare-fun result!199144 () Bool)

(assert (= result!199144 result!199140))

(assert (=> d!876002 t!237550))

(declare-fun b_and!212879 () Bool)

(assert (= b_and!212873 (and (=> t!237550 result!199144) b_and!212879)))

(declare-fun m!3464729 () Bool)

(assert (=> d!876002 m!3464729))

(declare-fun m!3464731 () Bool)

(assert (=> d!876002 m!3464731))

(assert (=> b!3201183 d!876002))

(declare-fun d!876004 () Bool)

(declare-fun e!1996364 () Bool)

(assert (=> d!876004 e!1996364))

(declare-fun res!1303090 () Bool)

(assert (=> d!876004 (=> (not res!1303090) (not e!1996364))))

(declare-fun lt!1080189 () List!36225)

(assert (=> d!876004 (= res!1303090 (= (content!4877 lt!1080189) ((_ map or) (content!4877 lt!1079879) (content!4877 lt!1079904))))))

(declare-fun e!1996365 () List!36225)

(assert (=> d!876004 (= lt!1080189 e!1996365)))

(declare-fun c!537528 () Bool)

(assert (=> d!876004 (= c!537528 ((_ is Nil!36101) lt!1079879))))

(assert (=> d!876004 (= (++!8650 lt!1079879 lt!1079904) lt!1080189)))

(declare-fun b!3201905 () Bool)

(assert (=> b!3201905 (= e!1996365 (Cons!36101 (h!41521 lt!1079879) (++!8650 (t!237476 lt!1079879) lt!1079904)))))

(declare-fun b!3201907 () Bool)

(assert (=> b!3201907 (= e!1996364 (or (not (= lt!1079904 Nil!36101)) (= lt!1080189 lt!1079879)))))

(declare-fun b!3201906 () Bool)

(declare-fun res!1303091 () Bool)

(assert (=> b!3201906 (=> (not res!1303091) (not e!1996364))))

(assert (=> b!3201906 (= res!1303091 (= (size!27191 lt!1080189) (+ (size!27191 lt!1079879) (size!27191 lt!1079904))))))

(declare-fun b!3201904 () Bool)

(assert (=> b!3201904 (= e!1996365 lt!1079904)))

(assert (= (and d!876004 c!537528) b!3201904))

(assert (= (and d!876004 (not c!537528)) b!3201905))

(assert (= (and d!876004 res!1303090) b!3201906))

(assert (= (and b!3201906 res!1303091) b!3201907))

(declare-fun m!3464733 () Bool)

(assert (=> d!876004 m!3464733))

(declare-fun m!3464735 () Bool)

(assert (=> d!876004 m!3464735))

(declare-fun m!3464737 () Bool)

(assert (=> d!876004 m!3464737))

(declare-fun m!3464739 () Bool)

(assert (=> b!3201905 m!3464739))

(declare-fun m!3464741 () Bool)

(assert (=> b!3201906 m!3464741))

(assert (=> b!3201906 m!3463549))

(declare-fun m!3464743 () Bool)

(assert (=> b!3201906 m!3464743))

(assert (=> b!3201182 d!876004))

(declare-fun d!876006 () Bool)

(assert (=> d!876006 (= (++!8650 (++!8650 lt!1079879 lt!1079883) lt!1079880) (++!8650 lt!1079879 (++!8650 lt!1079883 lt!1079880)))))

(declare-fun lt!1080192 () Unit!50516)

(declare-fun choose!18689 (List!36225 List!36225 List!36225) Unit!50516)

(assert (=> d!876006 (= lt!1080192 (choose!18689 lt!1079879 lt!1079883 lt!1079880))))

(assert (=> d!876006 (= (lemmaConcatAssociativity!1724 lt!1079879 lt!1079883 lt!1079880) lt!1080192)))

(declare-fun bs!540929 () Bool)

(assert (= bs!540929 d!876006))

(declare-fun m!3464745 () Bool)

(assert (=> bs!540929 m!3464745))

(assert (=> bs!540929 m!3463479))

(declare-fun m!3464747 () Bool)

(assert (=> bs!540929 m!3464747))

(assert (=> bs!540929 m!3463593))

(assert (=> bs!540929 m!3463593))

(assert (=> bs!540929 m!3463595))

(assert (=> bs!540929 m!3463479))

(assert (=> b!3201182 d!876006))

(declare-fun lt!1080195 () Bool)

(declare-fun d!876008 () Bool)

(declare-fun isEmpty!20192 (List!36227) Bool)

(assert (=> d!876008 (= lt!1080195 (isEmpty!20192 (list!12833 (_1!20873 (lex!2125 thiss!18206 rules!2135 lt!1079875)))))))

(declare-fun isEmpty!20193 (Conc!10788) Bool)

(assert (=> d!876008 (= lt!1080195 (isEmpty!20193 (c!537388 (_1!20873 (lex!2125 thiss!18206 rules!2135 lt!1079875)))))))

(assert (=> d!876008 (= (isEmpty!20180 (_1!20873 (lex!2125 thiss!18206 rules!2135 lt!1079875))) lt!1080195)))

(declare-fun bs!540930 () Bool)

(assert (= bs!540930 d!876008))

(declare-fun m!3464749 () Bool)

(assert (=> bs!540930 m!3464749))

(assert (=> bs!540930 m!3464749))

(declare-fun m!3464751 () Bool)

(assert (=> bs!540930 m!3464751))

(declare-fun m!3464753 () Bool)

(assert (=> bs!540930 m!3464753))

(assert (=> b!3201184 d!876008))

(declare-fun b!3201908 () Bool)

(declare-fun e!1996368 () Bool)

(declare-fun lt!1080196 () tuple2!35478)

(assert (=> b!3201908 (= e!1996368 (= (_2!20873 lt!1080196) lt!1079875))))

(declare-fun b!3201909 () Bool)

(declare-fun e!1996366 () Bool)

(assert (=> b!3201909 (= e!1996366 (= (list!12831 (_2!20873 lt!1080196)) (_2!20878 (lexList!1309 thiss!18206 rules!2135 (list!12831 lt!1079875)))))))

(declare-fun d!876010 () Bool)

(assert (=> d!876010 e!1996366))

(declare-fun res!1303093 () Bool)

(assert (=> d!876010 (=> (not res!1303093) (not e!1996366))))

(assert (=> d!876010 (= res!1303093 e!1996368)))

(declare-fun c!537529 () Bool)

(assert (=> d!876010 (= c!537529 (> (size!27190 (_1!20873 lt!1080196)) 0))))

(assert (=> d!876010 (= lt!1080196 (lexTailRecV2!929 thiss!18206 rules!2135 lt!1079875 (BalanceConc!21189 Empty!10787) lt!1079875 (BalanceConc!21191 Empty!10788)))))

(assert (=> d!876010 (= (lex!2125 thiss!18206 rules!2135 lt!1079875) lt!1080196)))

(declare-fun b!3201910 () Bool)

(declare-fun e!1996367 () Bool)

(assert (=> b!3201910 (= e!1996367 (not (isEmpty!20180 (_1!20873 lt!1080196))))))

(declare-fun b!3201911 () Bool)

(assert (=> b!3201911 (= e!1996368 e!1996367)))

(declare-fun res!1303092 () Bool)

(assert (=> b!3201911 (= res!1303092 (< (size!27195 (_2!20873 lt!1080196)) (size!27195 lt!1079875)))))

(assert (=> b!3201911 (=> (not res!1303092) (not e!1996367))))

(declare-fun b!3201912 () Bool)

(declare-fun res!1303094 () Bool)

(assert (=> b!3201912 (=> (not res!1303094) (not e!1996366))))

(assert (=> b!3201912 (= res!1303094 (= (list!12833 (_1!20873 lt!1080196)) (_1!20878 (lexList!1309 thiss!18206 rules!2135 (list!12831 lt!1079875)))))))

(assert (= (and d!876010 c!537529) b!3201911))

(assert (= (and d!876010 (not c!537529)) b!3201908))

(assert (= (and b!3201911 res!1303092) b!3201910))

(assert (= (and d!876010 res!1303093) b!3201912))

(assert (= (and b!3201912 res!1303094) b!3201909))

(declare-fun m!3464755 () Bool)

(assert (=> b!3201910 m!3464755))

(declare-fun m!3464757 () Bool)

(assert (=> b!3201911 m!3464757))

(declare-fun m!3464759 () Bool)

(assert (=> b!3201911 m!3464759))

(declare-fun m!3464761 () Bool)

(assert (=> b!3201912 m!3464761))

(declare-fun m!3464763 () Bool)

(assert (=> b!3201912 m!3464763))

(assert (=> b!3201912 m!3464763))

(declare-fun m!3464765 () Bool)

(assert (=> b!3201912 m!3464765))

(declare-fun m!3464767 () Bool)

(assert (=> d!876010 m!3464767))

(declare-fun m!3464769 () Bool)

(assert (=> d!876010 m!3464769))

(declare-fun m!3464771 () Bool)

(assert (=> b!3201909 m!3464771))

(assert (=> b!3201909 m!3464763))

(assert (=> b!3201909 m!3464763))

(assert (=> b!3201909 m!3464765))

(assert (=> b!3201184 d!876010))

(declare-fun d!876012 () Bool)

(declare-fun fromListB!1534 (List!36225) BalanceConc!21188)

(assert (=> d!876012 (= (seqFromList!3484 lt!1079879) (fromListB!1534 lt!1079879))))

(declare-fun bs!540931 () Bool)

(assert (= bs!540931 d!876012))

(declare-fun m!3464773 () Bool)

(assert (=> bs!540931 m!3464773))

(assert (=> b!3201184 d!876012))

(declare-fun d!876014 () Bool)

(declare-fun c!537530 () Bool)

(assert (=> d!876014 (= c!537530 ((_ is IntegerValue!16308) (value!168831 separatorToken!241)))))

(declare-fun e!1996370 () Bool)

(assert (=> d!876014 (= (inv!21 (value!168831 separatorToken!241)) e!1996370)))

(declare-fun b!3201913 () Bool)

(declare-fun res!1303095 () Bool)

(declare-fun e!1996371 () Bool)

(assert (=> b!3201913 (=> res!1303095 e!1996371)))

(assert (=> b!3201913 (= res!1303095 (not ((_ is IntegerValue!16310) (value!168831 separatorToken!241))))))

(declare-fun e!1996369 () Bool)

(assert (=> b!3201913 (= e!1996369 e!1996371)))

(declare-fun b!3201914 () Bool)

(assert (=> b!3201914 (= e!1996370 (inv!16 (value!168831 separatorToken!241)))))

(declare-fun b!3201915 () Bool)

(assert (=> b!3201915 (= e!1996371 (inv!15 (value!168831 separatorToken!241)))))

(declare-fun b!3201916 () Bool)

(assert (=> b!3201916 (= e!1996370 e!1996369)))

(declare-fun c!537531 () Bool)

(assert (=> b!3201916 (= c!537531 ((_ is IntegerValue!16309) (value!168831 separatorToken!241)))))

(declare-fun b!3201917 () Bool)

(assert (=> b!3201917 (= e!1996369 (inv!17 (value!168831 separatorToken!241)))))

(assert (= (and d!876014 c!537530) b!3201914))

(assert (= (and d!876014 (not c!537530)) b!3201916))

(assert (= (and b!3201916 c!537531) b!3201917))

(assert (= (and b!3201916 (not c!537531)) b!3201913))

(assert (= (and b!3201913 (not res!1303095)) b!3201915))

(declare-fun m!3464775 () Bool)

(assert (=> b!3201914 m!3464775))

(declare-fun m!3464777 () Bool)

(assert (=> b!3201915 m!3464777))

(declare-fun m!3464779 () Bool)

(assert (=> b!3201917 m!3464779))

(assert (=> b!3201205 d!876014))

(declare-fun d!876016 () Bool)

(declare-fun res!1303100 () Bool)

(declare-fun e!1996376 () Bool)

(assert (=> d!876016 (=> res!1303100 e!1996376)))

(assert (=> d!876016 (= res!1303100 (not ((_ is Cons!36102) rules!2135)))))

(assert (=> d!876016 (= (sepAndNonSepRulesDisjointChars!1400 rules!2135 rules!2135) e!1996376)))

(declare-fun b!3201922 () Bool)

(declare-fun e!1996377 () Bool)

(assert (=> b!3201922 (= e!1996376 e!1996377)))

(declare-fun res!1303101 () Bool)

(assert (=> b!3201922 (=> (not res!1303101) (not e!1996377))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!587 (Rule!10212 List!36226) Bool)

(assert (=> b!3201922 (= res!1303101 (ruleDisjointCharsFromAllFromOtherType!587 (h!41522 rules!2135) rules!2135))))

(declare-fun b!3201923 () Bool)

(assert (=> b!3201923 (= e!1996377 (sepAndNonSepRulesDisjointChars!1400 rules!2135 (t!237477 rules!2135)))))

(assert (= (and d!876016 (not res!1303100)) b!3201922))

(assert (= (and b!3201922 res!1303101) b!3201923))

(declare-fun m!3464781 () Bool)

(assert (=> b!3201922 m!3464781))

(declare-fun m!3464783 () Bool)

(assert (=> b!3201923 m!3464783))

(assert (=> b!3201207 d!876016))

(declare-fun d!876018 () Bool)

(declare-fun lt!1080198 () Bool)

(declare-fun e!1996379 () Bool)

(assert (=> d!876018 (= lt!1080198 e!1996379)))

(declare-fun res!1303104 () Bool)

(assert (=> d!876018 (=> (not res!1303104) (not e!1996379))))

(assert (=> d!876018 (= res!1303104 (= (list!12833 (_1!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241))))) (list!12833 (singletonSeq!2302 separatorToken!241))))))

(declare-fun e!1996378 () Bool)

(assert (=> d!876018 (= lt!1080198 e!1996378)))

(declare-fun res!1303102 () Bool)

(assert (=> d!876018 (=> (not res!1303102) (not e!1996378))))

(declare-fun lt!1080197 () tuple2!35478)

(assert (=> d!876018 (= res!1303102 (= (size!27190 (_1!20873 lt!1080197)) 1))))

(assert (=> d!876018 (= lt!1080197 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241))))))

(assert (=> d!876018 (not (isEmpty!20181 rules!2135))))

(assert (=> d!876018 (= (rulesProduceIndividualToken!2287 thiss!18206 rules!2135 separatorToken!241) lt!1080198)))

(declare-fun b!3201924 () Bool)

(declare-fun res!1303103 () Bool)

(assert (=> b!3201924 (=> (not res!1303103) (not e!1996378))))

(assert (=> b!3201924 (= res!1303103 (= (apply!8150 (_1!20873 lt!1080197) 0) separatorToken!241))))

(declare-fun b!3201925 () Bool)

(assert (=> b!3201925 (= e!1996378 (isEmpty!20179 (_2!20873 lt!1080197)))))

(declare-fun b!3201926 () Bool)

(assert (=> b!3201926 (= e!1996379 (isEmpty!20179 (_2!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241))))))))

(assert (= (and d!876018 res!1303102) b!3201924))

(assert (= (and b!3201924 res!1303103) b!3201925))

(assert (= (and d!876018 res!1303104) b!3201926))

(declare-fun m!3464785 () Bool)

(assert (=> d!876018 m!3464785))

(assert (=> d!876018 m!3463527))

(declare-fun m!3464787 () Bool)

(assert (=> d!876018 m!3464787))

(assert (=> d!876018 m!3464787))

(declare-fun m!3464789 () Bool)

(assert (=> d!876018 m!3464789))

(assert (=> d!876018 m!3463527))

(declare-fun m!3464791 () Bool)

(assert (=> d!876018 m!3464791))

(assert (=> d!876018 m!3463527))

(declare-fun m!3464793 () Bool)

(assert (=> d!876018 m!3464793))

(assert (=> d!876018 m!3463625))

(declare-fun m!3464795 () Bool)

(assert (=> b!3201924 m!3464795))

(declare-fun m!3464797 () Bool)

(assert (=> b!3201925 m!3464797))

(assert (=> b!3201926 m!3463527))

(assert (=> b!3201926 m!3463527))

(assert (=> b!3201926 m!3464787))

(assert (=> b!3201926 m!3464787))

(assert (=> b!3201926 m!3464789))

(declare-fun m!3464799 () Bool)

(assert (=> b!3201926 m!3464799))

(assert (=> b!3201206 d!876018))

(declare-fun bm!231774 () Bool)

(declare-fun call!231779 () Bool)

(assert (=> bm!231774 (= call!231779 (isEmpty!20186 lt!1079883))))

(declare-fun b!3201927 () Bool)

(declare-fun res!1303110 () Bool)

(declare-fun e!1996380 () Bool)

(assert (=> b!3201927 (=> res!1303110 e!1996380)))

(assert (=> b!3201927 (= res!1303110 (not (isEmpty!20186 (tail!5205 lt!1079883))))))

(declare-fun b!3201928 () Bool)

(declare-fun e!1996384 () Bool)

(assert (=> b!3201928 (= e!1996384 (nullable!3394 (regex!5206 lt!1079889)))))

(declare-fun d!876020 () Bool)

(declare-fun e!1996382 () Bool)

(assert (=> d!876020 e!1996382))

(declare-fun c!537532 () Bool)

(assert (=> d!876020 (= c!537532 ((_ is EmptyExpr!9965) (regex!5206 lt!1079889)))))

(declare-fun lt!1080199 () Bool)

(assert (=> d!876020 (= lt!1080199 e!1996384)))

(declare-fun c!537533 () Bool)

(assert (=> d!876020 (= c!537533 (isEmpty!20186 lt!1079883))))

(assert (=> d!876020 (validRegex!4548 (regex!5206 lt!1079889))))

(assert (=> d!876020 (= (matchR!4599 (regex!5206 lt!1079889) lt!1079883) lt!1080199)))

(declare-fun b!3201929 () Bool)

(declare-fun e!1996381 () Bool)

(declare-fun e!1996386 () Bool)

(assert (=> b!3201929 (= e!1996381 e!1996386)))

(declare-fun res!1303105 () Bool)

(assert (=> b!3201929 (=> (not res!1303105) (not e!1996386))))

(assert (=> b!3201929 (= res!1303105 (not lt!1080199))))

(declare-fun b!3201930 () Bool)

(declare-fun e!1996385 () Bool)

(assert (=> b!3201930 (= e!1996385 (= (head!7021 lt!1079883) (c!537386 (regex!5206 lt!1079889))))))

(declare-fun b!3201931 () Bool)

(declare-fun res!1303107 () Bool)

(assert (=> b!3201931 (=> (not res!1303107) (not e!1996385))))

(assert (=> b!3201931 (= res!1303107 (isEmpty!20186 (tail!5205 lt!1079883)))))

(declare-fun b!3201932 () Bool)

(assert (=> b!3201932 (= e!1996384 (matchR!4599 (derivativeStep!2947 (regex!5206 lt!1079889) (head!7021 lt!1079883)) (tail!5205 lt!1079883)))))

(declare-fun b!3201933 () Bool)

(declare-fun res!1303108 () Bool)

(assert (=> b!3201933 (=> res!1303108 e!1996381)))

(assert (=> b!3201933 (= res!1303108 e!1996385)))

(declare-fun res!1303109 () Bool)

(assert (=> b!3201933 (=> (not res!1303109) (not e!1996385))))

(assert (=> b!3201933 (= res!1303109 lt!1080199)))

(declare-fun b!3201934 () Bool)

(assert (=> b!3201934 (= e!1996386 e!1996380)))

(declare-fun res!1303106 () Bool)

(assert (=> b!3201934 (=> res!1303106 e!1996380)))

(assert (=> b!3201934 (= res!1303106 call!231779)))

(declare-fun b!3201935 () Bool)

(declare-fun e!1996383 () Bool)

(assert (=> b!3201935 (= e!1996382 e!1996383)))

(declare-fun c!537534 () Bool)

(assert (=> b!3201935 (= c!537534 ((_ is EmptyLang!9965) (regex!5206 lt!1079889)))))

(declare-fun b!3201936 () Bool)

(assert (=> b!3201936 (= e!1996383 (not lt!1080199))))

(declare-fun b!3201937 () Bool)

(assert (=> b!3201937 (= e!1996382 (= lt!1080199 call!231779))))

(declare-fun b!3201938 () Bool)

(declare-fun res!1303111 () Bool)

(assert (=> b!3201938 (=> res!1303111 e!1996381)))

(assert (=> b!3201938 (= res!1303111 (not ((_ is ElementMatch!9965) (regex!5206 lt!1079889))))))

(assert (=> b!3201938 (= e!1996383 e!1996381)))

(declare-fun b!3201939 () Bool)

(declare-fun res!1303112 () Bool)

(assert (=> b!3201939 (=> (not res!1303112) (not e!1996385))))

(assert (=> b!3201939 (= res!1303112 (not call!231779))))

(declare-fun b!3201940 () Bool)

(assert (=> b!3201940 (= e!1996380 (not (= (head!7021 lt!1079883) (c!537386 (regex!5206 lt!1079889)))))))

(assert (= (and d!876020 c!537533) b!3201928))

(assert (= (and d!876020 (not c!537533)) b!3201932))

(assert (= (and d!876020 c!537532) b!3201937))

(assert (= (and d!876020 (not c!537532)) b!3201935))

(assert (= (and b!3201935 c!537534) b!3201936))

(assert (= (and b!3201935 (not c!537534)) b!3201938))

(assert (= (and b!3201938 (not res!1303111)) b!3201933))

(assert (= (and b!3201933 res!1303109) b!3201939))

(assert (= (and b!3201939 res!1303112) b!3201931))

(assert (= (and b!3201931 res!1303107) b!3201930))

(assert (= (and b!3201933 (not res!1303108)) b!3201929))

(assert (= (and b!3201929 res!1303105) b!3201934))

(assert (= (and b!3201934 (not res!1303106)) b!3201927))

(assert (= (and b!3201927 (not res!1303110)) b!3201940))

(assert (= (or b!3201937 b!3201934 b!3201939) bm!231774))

(assert (=> b!3201940 m!3463547))

(assert (=> b!3201932 m!3463547))

(assert (=> b!3201932 m!3463547))

(declare-fun m!3464801 () Bool)

(assert (=> b!3201932 m!3464801))

(declare-fun m!3464803 () Bool)

(assert (=> b!3201932 m!3464803))

(assert (=> b!3201932 m!3464801))

(assert (=> b!3201932 m!3464803))

(declare-fun m!3464805 () Bool)

(assert (=> b!3201932 m!3464805))

(assert (=> b!3201931 m!3464803))

(assert (=> b!3201931 m!3464803))

(declare-fun m!3464807 () Bool)

(assert (=> b!3201931 m!3464807))

(declare-fun m!3464809 () Bool)

(assert (=> d!876020 m!3464809))

(declare-fun m!3464811 () Bool)

(assert (=> d!876020 m!3464811))

(assert (=> b!3201927 m!3464803))

(assert (=> b!3201927 m!3464803))

(assert (=> b!3201927 m!3464807))

(assert (=> bm!231774 m!3464809))

(assert (=> b!3201930 m!3463547))

(declare-fun m!3464813 () Bool)

(assert (=> b!3201928 m!3464813))

(assert (=> b!3201185 d!876020))

(declare-fun d!876022 () Bool)

(assert (=> d!876022 (= (get!11486 lt!1079884) (v!35636 lt!1079884))))

(assert (=> b!3201185 d!876022))

(declare-fun d!876024 () Bool)

(assert (=> d!876024 (= (inv!48949 (tag!5728 (rule!7642 separatorToken!241))) (= (mod (str.len (value!168830 (tag!5728 (rule!7642 separatorToken!241)))) 2) 0))))

(assert (=> b!3201208 d!876024))

(declare-fun d!876026 () Bool)

(declare-fun res!1303115 () Bool)

(declare-fun e!1996389 () Bool)

(assert (=> d!876026 (=> (not res!1303115) (not e!1996389))))

(declare-fun semiInverseModEq!2151 (Int Int) Bool)

(assert (=> d!876026 (= res!1303115 (semiInverseModEq!2151 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241)))))))

(assert (=> d!876026 (= (inv!48952 (transformation!5206 (rule!7642 separatorToken!241))) e!1996389)))

(declare-fun b!3201943 () Bool)

(declare-fun equivClasses!2050 (Int Int) Bool)

(assert (=> b!3201943 (= e!1996389 (equivClasses!2050 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241)))))))

(assert (= (and d!876026 res!1303115) b!3201943))

(declare-fun m!3464815 () Bool)

(assert (=> d!876026 m!3464815))

(declare-fun m!3464817 () Bool)

(assert (=> b!3201943 m!3464817))

(assert (=> b!3201208 d!876026))

(declare-fun d!876028 () Bool)

(declare-fun res!1303116 () Bool)

(declare-fun e!1996390 () Bool)

(assert (=> d!876028 (=> res!1303116 e!1996390)))

(assert (=> d!876028 (= res!1303116 ((_ is Nil!36103) tokens!494))))

(assert (=> d!876028 (= (forall!7358 tokens!494 lambda!117202) e!1996390)))

(declare-fun b!3201944 () Bool)

(declare-fun e!1996391 () Bool)

(assert (=> b!3201944 (= e!1996390 e!1996391)))

(declare-fun res!1303117 () Bool)

(assert (=> b!3201944 (=> (not res!1303117) (not e!1996391))))

(assert (=> b!3201944 (= res!1303117 (dynLambda!14538 lambda!117202 (h!41523 tokens!494)))))

(declare-fun b!3201945 () Bool)

(assert (=> b!3201945 (= e!1996391 (forall!7358 (t!237478 tokens!494) lambda!117202))))

(assert (= (and d!876028 (not res!1303116)) b!3201944))

(assert (= (and b!3201944 res!1303117) b!3201945))

(declare-fun b_lambda!87535 () Bool)

(assert (=> (not b_lambda!87535) (not b!3201944)))

(assert (=> b!3201944 m!3463691))

(declare-fun m!3464819 () Bool)

(assert (=> b!3201945 m!3464819))

(assert (=> b!3201187 d!876028))

(declare-fun d!876030 () Bool)

(assert (=> d!876030 (= (inv!48949 (tag!5728 (rule!7642 (h!41523 tokens!494)))) (= (mod (str.len (value!168830 (tag!5728 (rule!7642 (h!41523 tokens!494))))) 2) 0))))

(assert (=> b!3201186 d!876030))

(declare-fun d!876032 () Bool)

(declare-fun res!1303118 () Bool)

(declare-fun e!1996392 () Bool)

(assert (=> d!876032 (=> (not res!1303118) (not e!1996392))))

(assert (=> d!876032 (= res!1303118 (semiInverseModEq!2151 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))))))

(assert (=> d!876032 (= (inv!48952 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) e!1996392)))

(declare-fun b!3201946 () Bool)

(assert (=> b!3201946 (= e!1996392 (equivClasses!2050 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))))))

(assert (= (and d!876032 res!1303118) b!3201946))

(declare-fun m!3464821 () Bool)

(assert (=> d!876032 m!3464821))

(declare-fun m!3464823 () Bool)

(assert (=> b!3201946 m!3464823))

(assert (=> b!3201186 d!876032))

(declare-fun d!876034 () Bool)

(assert (=> d!876034 (not (matchR!4599 (regex!5206 (rule!7642 separatorToken!241)) lt!1079883))))

(declare-fun lt!1080202 () Unit!50516)

(declare-fun choose!18690 (Regex!9965 List!36225 C!20116) Unit!50516)

(assert (=> d!876034 (= lt!1080202 (choose!18690 (regex!5206 (rule!7642 separatorToken!241)) lt!1079883 lt!1079902))))

(assert (=> d!876034 (validRegex!4548 (regex!5206 (rule!7642 separatorToken!241)))))

(assert (=> d!876034 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!370 (regex!5206 (rule!7642 separatorToken!241)) lt!1079883 lt!1079902) lt!1080202)))

(declare-fun bs!540932 () Bool)

(assert (= bs!540932 d!876034))

(assert (=> bs!540932 m!3463577))

(declare-fun m!3464825 () Bool)

(assert (=> bs!540932 m!3464825))

(declare-fun m!3464827 () Bool)

(assert (=> bs!540932 m!3464827))

(assert (=> b!3201209 d!876034))

(declare-fun bm!231775 () Bool)

(declare-fun call!231780 () Bool)

(assert (=> bm!231775 (= call!231780 (isEmpty!20186 lt!1079883))))

(declare-fun b!3201947 () Bool)

(declare-fun res!1303124 () Bool)

(declare-fun e!1996393 () Bool)

(assert (=> b!3201947 (=> res!1303124 e!1996393)))

(assert (=> b!3201947 (= res!1303124 (not (isEmpty!20186 (tail!5205 lt!1079883))))))

(declare-fun b!3201948 () Bool)

(declare-fun e!1996397 () Bool)

(assert (=> b!3201948 (= e!1996397 (nullable!3394 (regex!5206 (rule!7642 separatorToken!241))))))

(declare-fun d!876036 () Bool)

(declare-fun e!1996395 () Bool)

(assert (=> d!876036 e!1996395))

(declare-fun c!537536 () Bool)

(assert (=> d!876036 (= c!537536 ((_ is EmptyExpr!9965) (regex!5206 (rule!7642 separatorToken!241))))))

(declare-fun lt!1080203 () Bool)

(assert (=> d!876036 (= lt!1080203 e!1996397)))

(declare-fun c!537537 () Bool)

(assert (=> d!876036 (= c!537537 (isEmpty!20186 lt!1079883))))

(assert (=> d!876036 (validRegex!4548 (regex!5206 (rule!7642 separatorToken!241)))))

(assert (=> d!876036 (= (matchR!4599 (regex!5206 (rule!7642 separatorToken!241)) lt!1079883) lt!1080203)))

(declare-fun b!3201949 () Bool)

(declare-fun e!1996394 () Bool)

(declare-fun e!1996399 () Bool)

(assert (=> b!3201949 (= e!1996394 e!1996399)))

(declare-fun res!1303119 () Bool)

(assert (=> b!3201949 (=> (not res!1303119) (not e!1996399))))

(assert (=> b!3201949 (= res!1303119 (not lt!1080203))))

(declare-fun b!3201950 () Bool)

(declare-fun e!1996398 () Bool)

(assert (=> b!3201950 (= e!1996398 (= (head!7021 lt!1079883) (c!537386 (regex!5206 (rule!7642 separatorToken!241)))))))

(declare-fun b!3201951 () Bool)

(declare-fun res!1303121 () Bool)

(assert (=> b!3201951 (=> (not res!1303121) (not e!1996398))))

(assert (=> b!3201951 (= res!1303121 (isEmpty!20186 (tail!5205 lt!1079883)))))

(declare-fun b!3201952 () Bool)

(assert (=> b!3201952 (= e!1996397 (matchR!4599 (derivativeStep!2947 (regex!5206 (rule!7642 separatorToken!241)) (head!7021 lt!1079883)) (tail!5205 lt!1079883)))))

(declare-fun b!3201953 () Bool)

(declare-fun res!1303122 () Bool)

(assert (=> b!3201953 (=> res!1303122 e!1996394)))

(assert (=> b!3201953 (= res!1303122 e!1996398)))

(declare-fun res!1303123 () Bool)

(assert (=> b!3201953 (=> (not res!1303123) (not e!1996398))))

(assert (=> b!3201953 (= res!1303123 lt!1080203)))

(declare-fun b!3201954 () Bool)

(assert (=> b!3201954 (= e!1996399 e!1996393)))

(declare-fun res!1303120 () Bool)

(assert (=> b!3201954 (=> res!1303120 e!1996393)))

(assert (=> b!3201954 (= res!1303120 call!231780)))

(declare-fun b!3201955 () Bool)

(declare-fun e!1996396 () Bool)

(assert (=> b!3201955 (= e!1996395 e!1996396)))

(declare-fun c!537538 () Bool)

(assert (=> b!3201955 (= c!537538 ((_ is EmptyLang!9965) (regex!5206 (rule!7642 separatorToken!241))))))

(declare-fun b!3201956 () Bool)

(assert (=> b!3201956 (= e!1996396 (not lt!1080203))))

(declare-fun b!3201957 () Bool)

(assert (=> b!3201957 (= e!1996395 (= lt!1080203 call!231780))))

(declare-fun b!3201958 () Bool)

(declare-fun res!1303125 () Bool)

(assert (=> b!3201958 (=> res!1303125 e!1996394)))

(assert (=> b!3201958 (= res!1303125 (not ((_ is ElementMatch!9965) (regex!5206 (rule!7642 separatorToken!241)))))))

(assert (=> b!3201958 (= e!1996396 e!1996394)))

(declare-fun b!3201959 () Bool)

(declare-fun res!1303126 () Bool)

(assert (=> b!3201959 (=> (not res!1303126) (not e!1996398))))

(assert (=> b!3201959 (= res!1303126 (not call!231780))))

(declare-fun b!3201960 () Bool)

(assert (=> b!3201960 (= e!1996393 (not (= (head!7021 lt!1079883) (c!537386 (regex!5206 (rule!7642 separatorToken!241))))))))

(assert (= (and d!876036 c!537537) b!3201948))

(assert (= (and d!876036 (not c!537537)) b!3201952))

(assert (= (and d!876036 c!537536) b!3201957))

(assert (= (and d!876036 (not c!537536)) b!3201955))

(assert (= (and b!3201955 c!537538) b!3201956))

(assert (= (and b!3201955 (not c!537538)) b!3201958))

(assert (= (and b!3201958 (not res!1303125)) b!3201953))

(assert (= (and b!3201953 res!1303123) b!3201959))

(assert (= (and b!3201959 res!1303126) b!3201951))

(assert (= (and b!3201951 res!1303121) b!3201950))

(assert (= (and b!3201953 (not res!1303122)) b!3201949))

(assert (= (and b!3201949 res!1303119) b!3201954))

(assert (= (and b!3201954 (not res!1303120)) b!3201947))

(assert (= (and b!3201947 (not res!1303124)) b!3201960))

(assert (= (or b!3201957 b!3201954 b!3201959) bm!231775))

(assert (=> b!3201960 m!3463547))

(assert (=> b!3201952 m!3463547))

(assert (=> b!3201952 m!3463547))

(declare-fun m!3464829 () Bool)

(assert (=> b!3201952 m!3464829))

(assert (=> b!3201952 m!3464803))

(assert (=> b!3201952 m!3464829))

(assert (=> b!3201952 m!3464803))

(declare-fun m!3464831 () Bool)

(assert (=> b!3201952 m!3464831))

(assert (=> b!3201951 m!3464803))

(assert (=> b!3201951 m!3464803))

(assert (=> b!3201951 m!3464807))

(assert (=> d!876036 m!3464809))

(assert (=> d!876036 m!3464827))

(assert (=> b!3201947 m!3464803))

(assert (=> b!3201947 m!3464803))

(assert (=> b!3201947 m!3464807))

(assert (=> bm!231775 m!3464809))

(assert (=> b!3201950 m!3463547))

(declare-fun m!3464833 () Bool)

(assert (=> b!3201948 m!3464833))

(assert (=> b!3201209 d!876036))

(declare-fun d!876038 () Bool)

(assert (=> d!876038 (= (inv!48949 (tag!5728 (h!41522 rules!2135))) (= (mod (str.len (value!168830 (tag!5728 (h!41522 rules!2135)))) 2) 0))))

(assert (=> b!3201189 d!876038))

(declare-fun d!876040 () Bool)

(declare-fun res!1303127 () Bool)

(declare-fun e!1996400 () Bool)

(assert (=> d!876040 (=> (not res!1303127) (not e!1996400))))

(assert (=> d!876040 (= res!1303127 (semiInverseModEq!2151 (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toValue!7282 (transformation!5206 (h!41522 rules!2135)))))))

(assert (=> d!876040 (= (inv!48952 (transformation!5206 (h!41522 rules!2135))) e!1996400)))

(declare-fun b!3201961 () Bool)

(assert (=> b!3201961 (= e!1996400 (equivClasses!2050 (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toValue!7282 (transformation!5206 (h!41522 rules!2135)))))))

(assert (= (and d!876040 res!1303127) b!3201961))

(declare-fun m!3464835 () Bool)

(assert (=> d!876040 m!3464835))

(declare-fun m!3464837 () Bool)

(assert (=> b!3201961 m!3464837))

(assert (=> b!3201189 d!876040))

(declare-fun d!876042 () Bool)

(declare-fun lt!1080204 () Token!9778)

(assert (=> d!876042 (= lt!1080204 (apply!8152 (list!12833 (_1!20873 lt!1079891)) 0))))

(assert (=> d!876042 (= lt!1080204 (apply!8153 (c!537388 (_1!20873 lt!1079891)) 0))))

(declare-fun e!1996401 () Bool)

(assert (=> d!876042 e!1996401))

(declare-fun res!1303128 () Bool)

(assert (=> d!876042 (=> (not res!1303128) (not e!1996401))))

(assert (=> d!876042 (= res!1303128 (<= 0 0))))

(assert (=> d!876042 (= (apply!8150 (_1!20873 lt!1079891) 0) lt!1080204)))

(declare-fun b!3201962 () Bool)

(assert (=> b!3201962 (= e!1996401 (< 0 (size!27190 (_1!20873 lt!1079891))))))

(assert (= (and d!876042 res!1303128) b!3201962))

(assert (=> d!876042 m!3464645))

(assert (=> d!876042 m!3464645))

(declare-fun m!3464839 () Bool)

(assert (=> d!876042 m!3464839))

(declare-fun m!3464841 () Bool)

(assert (=> d!876042 m!3464841))

(assert (=> b!3201962 m!3463535))

(assert (=> b!3201190 d!876042))

(declare-fun d!876044 () Bool)

(declare-fun lt!1080206 () Bool)

(declare-fun e!1996403 () Bool)

(assert (=> d!876044 (= lt!1080206 e!1996403)))

(declare-fun res!1303131 () Bool)

(assert (=> d!876044 (=> (not res!1303131) (not e!1996403))))

(assert (=> d!876044 (= res!1303131 (= (list!12833 (_1!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494)))))) (list!12833 (singletonSeq!2302 (h!41523 tokens!494)))))))

(declare-fun e!1996402 () Bool)

(assert (=> d!876044 (= lt!1080206 e!1996402)))

(declare-fun res!1303129 () Bool)

(assert (=> d!876044 (=> (not res!1303129) (not e!1996402))))

(declare-fun lt!1080205 () tuple2!35478)

(assert (=> d!876044 (= res!1303129 (= (size!27190 (_1!20873 lt!1080205)) 1))))

(assert (=> d!876044 (= lt!1080205 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494)))))))

(assert (=> d!876044 (not (isEmpty!20181 rules!2135))))

(assert (=> d!876044 (= (rulesProduceIndividualToken!2287 thiss!18206 rules!2135 (h!41523 tokens!494)) lt!1080206)))

(declare-fun b!3201963 () Bool)

(declare-fun res!1303130 () Bool)

(assert (=> b!3201963 (=> (not res!1303130) (not e!1996402))))

(assert (=> b!3201963 (= res!1303130 (= (apply!8150 (_1!20873 lt!1080205) 0) (h!41523 tokens!494)))))

(declare-fun b!3201964 () Bool)

(assert (=> b!3201964 (= e!1996402 (isEmpty!20179 (_2!20873 lt!1080205)))))

(declare-fun b!3201965 () Bool)

(assert (=> b!3201965 (= e!1996403 (isEmpty!20179 (_2!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494)))))))))

(assert (= (and d!876044 res!1303129) b!3201963))

(assert (= (and b!3201963 res!1303130) b!3201964))

(assert (= (and d!876044 res!1303131) b!3201965))

(declare-fun m!3464843 () Bool)

(assert (=> d!876044 m!3464843))

(assert (=> d!876044 m!3463617))

(declare-fun m!3464845 () Bool)

(assert (=> d!876044 m!3464845))

(assert (=> d!876044 m!3464845))

(declare-fun m!3464847 () Bool)

(assert (=> d!876044 m!3464847))

(assert (=> d!876044 m!3463617))

(declare-fun m!3464849 () Bool)

(assert (=> d!876044 m!3464849))

(assert (=> d!876044 m!3463617))

(declare-fun m!3464851 () Bool)

(assert (=> d!876044 m!3464851))

(assert (=> d!876044 m!3463625))

(declare-fun m!3464853 () Bool)

(assert (=> b!3201963 m!3464853))

(declare-fun m!3464855 () Bool)

(assert (=> b!3201964 m!3464855))

(assert (=> b!3201965 m!3463617))

(assert (=> b!3201965 m!3463617))

(assert (=> b!3201965 m!3464845))

(assert (=> b!3201965 m!3464845))

(assert (=> b!3201965 m!3464847))

(declare-fun m!3464857 () Bool)

(assert (=> b!3201965 m!3464857))

(assert (=> b!3201172 d!876044))

(declare-fun d!876046 () Bool)

(declare-fun e!1996404 () Bool)

(assert (=> d!876046 e!1996404))

(declare-fun res!1303132 () Bool)

(assert (=> d!876046 (=> (not res!1303132) (not e!1996404))))

(declare-fun lt!1080207 () List!36225)

(assert (=> d!876046 (= res!1303132 (= (content!4877 lt!1080207) ((_ map or) (content!4877 (++!8650 lt!1079879 lt!1079883)) (content!4877 lt!1079880))))))

(declare-fun e!1996405 () List!36225)

(assert (=> d!876046 (= lt!1080207 e!1996405)))

(declare-fun c!537539 () Bool)

(assert (=> d!876046 (= c!537539 ((_ is Nil!36101) (++!8650 lt!1079879 lt!1079883)))))

(assert (=> d!876046 (= (++!8650 (++!8650 lt!1079879 lt!1079883) lt!1079880) lt!1080207)))

(declare-fun b!3201967 () Bool)

(assert (=> b!3201967 (= e!1996405 (Cons!36101 (h!41521 (++!8650 lt!1079879 lt!1079883)) (++!8650 (t!237476 (++!8650 lt!1079879 lt!1079883)) lt!1079880)))))

(declare-fun b!3201969 () Bool)

(assert (=> b!3201969 (= e!1996404 (or (not (= lt!1079880 Nil!36101)) (= lt!1080207 (++!8650 lt!1079879 lt!1079883))))))

(declare-fun b!3201968 () Bool)

(declare-fun res!1303133 () Bool)

(assert (=> b!3201968 (=> (not res!1303133) (not e!1996404))))

(assert (=> b!3201968 (= res!1303133 (= (size!27191 lt!1080207) (+ (size!27191 (++!8650 lt!1079879 lt!1079883)) (size!27191 lt!1079880))))))

(declare-fun b!3201966 () Bool)

(assert (=> b!3201966 (= e!1996405 lt!1079880)))

(assert (= (and d!876046 c!537539) b!3201966))

(assert (= (and d!876046 (not c!537539)) b!3201967))

(assert (= (and d!876046 res!1303132) b!3201968))

(assert (= (and b!3201968 res!1303133) b!3201969))

(declare-fun m!3464859 () Bool)

(assert (=> d!876046 m!3464859))

(assert (=> d!876046 m!3463593))

(declare-fun m!3464861 () Bool)

(assert (=> d!876046 m!3464861))

(assert (=> d!876046 m!3464715))

(declare-fun m!3464863 () Bool)

(assert (=> b!3201967 m!3464863))

(declare-fun m!3464865 () Bool)

(assert (=> b!3201968 m!3464865))

(assert (=> b!3201968 m!3463593))

(declare-fun m!3464867 () Bool)

(assert (=> b!3201968 m!3464867))

(assert (=> b!3201968 m!3464721))

(assert (=> b!3201195 d!876046))

(declare-fun d!876048 () Bool)

(declare-fun e!1996406 () Bool)

(assert (=> d!876048 e!1996406))

(declare-fun res!1303134 () Bool)

(assert (=> d!876048 (=> (not res!1303134) (not e!1996406))))

(declare-fun lt!1080208 () List!36225)

(assert (=> d!876048 (= res!1303134 (= (content!4877 lt!1080208) ((_ map or) (content!4877 lt!1079879) (content!4877 lt!1079883))))))

(declare-fun e!1996407 () List!36225)

(assert (=> d!876048 (= lt!1080208 e!1996407)))

(declare-fun c!537540 () Bool)

(assert (=> d!876048 (= c!537540 ((_ is Nil!36101) lt!1079879))))

(assert (=> d!876048 (= (++!8650 lt!1079879 lt!1079883) lt!1080208)))

(declare-fun b!3201971 () Bool)

(assert (=> b!3201971 (= e!1996407 (Cons!36101 (h!41521 lt!1079879) (++!8650 (t!237476 lt!1079879) lt!1079883)))))

(declare-fun b!3201973 () Bool)

(assert (=> b!3201973 (= e!1996406 (or (not (= lt!1079883 Nil!36101)) (= lt!1080208 lt!1079879)))))

(declare-fun b!3201972 () Bool)

(declare-fun res!1303135 () Bool)

(assert (=> b!3201972 (=> (not res!1303135) (not e!1996406))))

(assert (=> b!3201972 (= res!1303135 (= (size!27191 lt!1080208) (+ (size!27191 lt!1079879) (size!27191 lt!1079883))))))

(declare-fun b!3201970 () Bool)

(assert (=> b!3201970 (= e!1996407 lt!1079883)))

(assert (= (and d!876048 c!537540) b!3201970))

(assert (= (and d!876048 (not c!537540)) b!3201971))

(assert (= (and d!876048 res!1303134) b!3201972))

(assert (= (and b!3201972 res!1303135) b!3201973))

(declare-fun m!3464869 () Bool)

(assert (=> d!876048 m!3464869))

(assert (=> d!876048 m!3464735))

(assert (=> d!876048 m!3464689))

(declare-fun m!3464871 () Bool)

(assert (=> b!3201971 m!3464871))

(declare-fun m!3464873 () Bool)

(assert (=> b!3201972 m!3464873))

(assert (=> b!3201972 m!3463549))

(assert (=> b!3201972 m!3464697))

(assert (=> b!3201195 d!876048))

(declare-fun d!876050 () Bool)

(declare-fun res!1303140 () Bool)

(declare-fun e!1996410 () Bool)

(assert (=> d!876050 (=> (not res!1303140) (not e!1996410))))

(assert (=> d!876050 (= res!1303140 (not (isEmpty!20186 (originalCharacters!5920 (h!41523 tokens!494)))))))

(assert (=> d!876050 (= (inv!48953 (h!41523 tokens!494)) e!1996410)))

(declare-fun b!3201978 () Bool)

(declare-fun res!1303141 () Bool)

(assert (=> b!3201978 (=> (not res!1303141) (not e!1996410))))

(assert (=> b!3201978 (= res!1303141 (= (originalCharacters!5920 (h!41523 tokens!494)) (list!12831 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494))))))))

(declare-fun b!3201979 () Bool)

(assert (=> b!3201979 (= e!1996410 (= (size!27189 (h!41523 tokens!494)) (size!27191 (originalCharacters!5920 (h!41523 tokens!494)))))))

(assert (= (and d!876050 res!1303140) b!3201978))

(assert (= (and b!3201978 res!1303141) b!3201979))

(declare-fun b_lambda!87537 () Bool)

(assert (=> (not b_lambda!87537) (not b!3201978)))

(declare-fun t!237552 () Bool)

(declare-fun tb!156845 () Bool)

(assert (=> (and b!3201175 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237552) tb!156845))

(declare-fun b!3201980 () Bool)

(declare-fun e!1996411 () Bool)

(declare-fun tp!1011896 () Bool)

(assert (=> b!3201980 (= e!1996411 (and (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494))))) tp!1011896))))

(declare-fun result!199146 () Bool)

(assert (=> tb!156845 (= result!199146 (and (inv!48957 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494)))) e!1996411))))

(assert (= tb!156845 b!3201980))

(declare-fun m!3464875 () Bool)

(assert (=> b!3201980 m!3464875))

(declare-fun m!3464877 () Bool)

(assert (=> tb!156845 m!3464877))

(assert (=> b!3201978 t!237552))

(declare-fun b_and!212881 () Bool)

(assert (= b_and!212875 (and (=> t!237552 result!199146) b_and!212881)))

(declare-fun tb!156847 () Bool)

(declare-fun t!237554 () Bool)

(assert (=> (and b!3201192 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237554) tb!156847))

(declare-fun result!199148 () Bool)

(assert (= result!199148 result!199146))

(assert (=> b!3201978 t!237554))

(declare-fun b_and!212883 () Bool)

(assert (= b_and!212877 (and (=> t!237554 result!199148) b_and!212883)))

(declare-fun t!237556 () Bool)

(declare-fun tb!156849 () Bool)

(assert (=> (and b!3201193 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237556) tb!156849))

(declare-fun result!199150 () Bool)

(assert (= result!199150 result!199146))

(assert (=> b!3201978 t!237556))

(declare-fun b_and!212885 () Bool)

(assert (= b_and!212879 (and (=> t!237556 result!199150) b_and!212885)))

(declare-fun m!3464879 () Bool)

(assert (=> d!876050 m!3464879))

(declare-fun m!3464881 () Bool)

(assert (=> b!3201978 m!3464881))

(assert (=> b!3201978 m!3464881))

(declare-fun m!3464883 () Bool)

(assert (=> b!3201978 m!3464883))

(declare-fun m!3464885 () Bool)

(assert (=> b!3201979 m!3464885))

(assert (=> b!3201194 d!876050))

(declare-fun d!876052 () Bool)

(assert (=> d!876052 (= (list!12831 (charsOf!3222 (h!41523 tokens!494))) (list!12834 (c!537387 (charsOf!3222 (h!41523 tokens!494)))))))

(declare-fun bs!540933 () Bool)

(assert (= bs!540933 d!876052))

(declare-fun m!3464887 () Bool)

(assert (=> bs!540933 m!3464887))

(assert (=> b!3201196 d!876052))

(declare-fun d!876054 () Bool)

(declare-fun lt!1080209 () BalanceConc!21188)

(assert (=> d!876054 (= (list!12831 lt!1080209) (originalCharacters!5920 (h!41523 tokens!494)))))

(assert (=> d!876054 (= lt!1080209 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494))))))

(assert (=> d!876054 (= (charsOf!3222 (h!41523 tokens!494)) lt!1080209)))

(declare-fun b_lambda!87539 () Bool)

(assert (=> (not b_lambda!87539) (not d!876054)))

(assert (=> d!876054 t!237552))

(declare-fun b_and!212887 () Bool)

(assert (= b_and!212881 (and (=> t!237552 result!199146) b_and!212887)))

(assert (=> d!876054 t!237554))

(declare-fun b_and!212889 () Bool)

(assert (= b_and!212883 (and (=> t!237554 result!199148) b_and!212889)))

(assert (=> d!876054 t!237556))

(declare-fun b_and!212891 () Bool)

(assert (= b_and!212885 (and (=> t!237556 result!199150) b_and!212891)))

(declare-fun m!3464889 () Bool)

(assert (=> d!876054 m!3464889))

(assert (=> d!876054 m!3464881))

(assert (=> b!3201196 d!876054))

(declare-fun d!876056 () Bool)

(declare-fun res!1303142 () Bool)

(declare-fun e!1996412 () Bool)

(assert (=> d!876056 (=> (not res!1303142) (not e!1996412))))

(assert (=> d!876056 (= res!1303142 (not (isEmpty!20186 (originalCharacters!5920 separatorToken!241))))))

(assert (=> d!876056 (= (inv!48953 separatorToken!241) e!1996412)))

(declare-fun b!3201981 () Bool)

(declare-fun res!1303143 () Bool)

(assert (=> b!3201981 (=> (not res!1303143) (not e!1996412))))

(assert (=> b!3201981 (= res!1303143 (= (originalCharacters!5920 separatorToken!241) (list!12831 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241)))))))

(declare-fun b!3201982 () Bool)

(assert (=> b!3201982 (= e!1996412 (= (size!27189 separatorToken!241) (size!27191 (originalCharacters!5920 separatorToken!241))))))

(assert (= (and d!876056 res!1303142) b!3201981))

(assert (= (and b!3201981 res!1303143) b!3201982))

(declare-fun b_lambda!87541 () Bool)

(assert (=> (not b_lambda!87541) (not b!3201981)))

(assert (=> b!3201981 t!237540))

(declare-fun b_and!212893 () Bool)

(assert (= b_and!212887 (and (=> t!237540 result!199132) b_and!212893)))

(assert (=> b!3201981 t!237542))

(declare-fun b_and!212895 () Bool)

(assert (= b_and!212889 (and (=> t!237542 result!199136) b_and!212895)))

(assert (=> b!3201981 t!237544))

(declare-fun b_and!212897 () Bool)

(assert (= b_and!212891 (and (=> t!237544 result!199138) b_and!212897)))

(declare-fun m!3464891 () Bool)

(assert (=> d!876056 m!3464891))

(assert (=> b!3201981 m!3464681))

(assert (=> b!3201981 m!3464681))

(declare-fun m!3464893 () Bool)

(assert (=> b!3201981 m!3464893))

(declare-fun m!3464895 () Bool)

(assert (=> b!3201982 m!3464895))

(assert (=> start!300446 d!876056))

(declare-fun d!876058 () Bool)

(declare-fun lt!1080210 () Bool)

(assert (=> d!876058 (= lt!1080210 (isEmpty!20186 (list!12831 (_2!20873 lt!1079891))))))

(assert (=> d!876058 (= lt!1080210 (isEmpty!20187 (c!537387 (_2!20873 lt!1079891))))))

(assert (=> d!876058 (= (isEmpty!20179 (_2!20873 lt!1079891)) lt!1080210)))

(declare-fun bs!540934 () Bool)

(assert (= bs!540934 d!876058))

(declare-fun m!3464897 () Bool)

(assert (=> bs!540934 m!3464897))

(assert (=> bs!540934 m!3464897))

(declare-fun m!3464899 () Bool)

(assert (=> bs!540934 m!3464899))

(declare-fun m!3464901 () Bool)

(assert (=> bs!540934 m!3464901))

(assert (=> b!3201176 d!876058))

(declare-fun d!876060 () Bool)

(assert (=> d!876060 (= (isEmpty!20181 rules!2135) ((_ is Nil!36102) rules!2135))))

(assert (=> b!3201197 d!876060))

(declare-fun b!3201993 () Bool)

(declare-fun e!1996415 () Bool)

(declare-fun tp_is_empty!17289 () Bool)

(assert (=> b!3201993 (= e!1996415 tp_is_empty!17289)))

(declare-fun b!3201996 () Bool)

(declare-fun tp!1011910 () Bool)

(declare-fun tp!1011909 () Bool)

(assert (=> b!3201996 (= e!1996415 (and tp!1011910 tp!1011909))))

(declare-fun b!3201994 () Bool)

(declare-fun tp!1011911 () Bool)

(declare-fun tp!1011908 () Bool)

(assert (=> b!3201994 (= e!1996415 (and tp!1011911 tp!1011908))))

(assert (=> b!3201189 (= tp!1011823 e!1996415)))

(declare-fun b!3201995 () Bool)

(declare-fun tp!1011907 () Bool)

(assert (=> b!3201995 (= e!1996415 tp!1011907)))

(assert (= (and b!3201189 ((_ is ElementMatch!9965) (regex!5206 (h!41522 rules!2135)))) b!3201993))

(assert (= (and b!3201189 ((_ is Concat!15401) (regex!5206 (h!41522 rules!2135)))) b!3201994))

(assert (= (and b!3201189 ((_ is Star!9965) (regex!5206 (h!41522 rules!2135)))) b!3201995))

(assert (= (and b!3201189 ((_ is Union!9965) (regex!5206 (h!41522 rules!2135)))) b!3201996))

(declare-fun b!3201999 () Bool)

(declare-fun e!1996418 () Bool)

(assert (=> b!3201999 (= e!1996418 true)))

(declare-fun b!3201998 () Bool)

(declare-fun e!1996417 () Bool)

(assert (=> b!3201998 (= e!1996417 e!1996418)))

(declare-fun b!3201997 () Bool)

(declare-fun e!1996416 () Bool)

(assert (=> b!3201997 (= e!1996416 e!1996417)))

(assert (=> b!3201218 e!1996416))

(assert (= b!3201998 b!3201999))

(assert (= b!3201997 b!3201998))

(assert (= (and b!3201218 ((_ is Cons!36102) (t!237477 rules!2135))) b!3201997))

(assert (=> b!3201999 (< (dynLambda!14533 order!18349 (toValue!7282 (transformation!5206 (h!41522 (t!237477 rules!2135))))) (dynLambda!14534 order!18351 lambda!117203))))

(assert (=> b!3201999 (< (dynLambda!14535 order!18353 (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135))))) (dynLambda!14534 order!18351 lambda!117203))))

(declare-fun b!3202004 () Bool)

(declare-fun e!1996421 () Bool)

(declare-fun tp!1011914 () Bool)

(assert (=> b!3202004 (= e!1996421 (and tp_is_empty!17289 tp!1011914))))

(assert (=> b!3201180 (= tp!1011821 e!1996421)))

(assert (= (and b!3201180 ((_ is Cons!36101) (originalCharacters!5920 (h!41523 tokens!494)))) b!3202004))

(declare-fun b!3202018 () Bool)

(declare-fun b_free!85141 () Bool)

(declare-fun b_next!85845 () Bool)

(assert (=> b!3202018 (= b_free!85141 (not b_next!85845))))

(declare-fun t!237558 () Bool)

(declare-fun tb!156851 () Bool)

(assert (=> (and b!3202018 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237558) tb!156851))

(declare-fun result!199158 () Bool)

(assert (= result!199158 result!199124))

(assert (=> d!875962 t!237558))

(declare-fun tp!1011926 () Bool)

(declare-fun b_and!212899 () Bool)

(assert (=> b!3202018 (= tp!1011926 (and (=> t!237558 result!199158) b_and!212899))))

(declare-fun b_free!85143 () Bool)

(declare-fun b_next!85847 () Bool)

(assert (=> b!3202018 (= b_free!85143 (not b_next!85847))))

(declare-fun t!237560 () Bool)

(declare-fun tb!156853 () Bool)

(assert (=> (and b!3202018 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237560) tb!156853))

(declare-fun result!199160 () Bool)

(assert (= result!199160 result!199146))

(assert (=> b!3201978 t!237560))

(declare-fun t!237562 () Bool)

(declare-fun tb!156855 () Bool)

(assert (=> (and b!3202018 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241)))) t!237562) tb!156855))

(declare-fun result!199162 () Bool)

(assert (= result!199162 result!199132))

(assert (=> d!875988 t!237562))

(assert (=> d!876054 t!237560))

(declare-fun t!237564 () Bool)

(declare-fun tb!156857 () Bool)

(assert (=> (and b!3202018 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494)))))) t!237564) tb!156857))

(declare-fun result!199164 () Bool)

(assert (= result!199164 result!199140))

(assert (=> d!876002 t!237564))

(assert (=> b!3201981 t!237562))

(declare-fun tp!1011927 () Bool)

(declare-fun b_and!212901 () Bool)

(assert (=> b!3202018 (= tp!1011927 (and (=> t!237562 result!199162) (=> t!237560 result!199160) (=> t!237564 result!199164) b_and!212901))))

(declare-fun e!1996437 () Bool)

(declare-fun tp!1011928 () Bool)

(declare-fun b!3202015 () Bool)

(declare-fun e!1996439 () Bool)

(assert (=> b!3202015 (= e!1996439 (and (inv!48953 (h!41523 (t!237478 tokens!494))) e!1996437 tp!1011928))))

(assert (=> b!3201194 (= tp!1011822 e!1996439)))

(declare-fun b!3202016 () Bool)

(declare-fun e!1996435 () Bool)

(declare-fun tp!1011925 () Bool)

(assert (=> b!3202016 (= e!1996437 (and (inv!21 (value!168831 (h!41523 (t!237478 tokens!494)))) e!1996435 tp!1011925))))

(declare-fun b!3202017 () Bool)

(declare-fun tp!1011929 () Bool)

(declare-fun e!1996436 () Bool)

(assert (=> b!3202017 (= e!1996435 (and tp!1011929 (inv!48949 (tag!5728 (rule!7642 (h!41523 (t!237478 tokens!494))))) (inv!48952 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) e!1996436))))

(assert (=> b!3202018 (= e!1996436 (and tp!1011926 tp!1011927))))

(assert (= b!3202017 b!3202018))

(assert (= b!3202016 b!3202017))

(assert (= b!3202015 b!3202016))

(assert (= (and b!3201194 ((_ is Cons!36103) (t!237478 tokens!494))) b!3202015))

(declare-fun m!3464903 () Bool)

(assert (=> b!3202015 m!3464903))

(declare-fun m!3464905 () Bool)

(assert (=> b!3202016 m!3464905))

(declare-fun m!3464907 () Bool)

(assert (=> b!3202017 m!3464907))

(declare-fun m!3464909 () Bool)

(assert (=> b!3202017 m!3464909))

(declare-fun b!3202029 () Bool)

(declare-fun b_free!85145 () Bool)

(declare-fun b_next!85849 () Bool)

(assert (=> b!3202029 (= b_free!85145 (not b_next!85849))))

(declare-fun tb!156859 () Bool)

(declare-fun t!237566 () Bool)

(assert (=> (and b!3202029 (= (toValue!7282 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237566) tb!156859))

(declare-fun result!199168 () Bool)

(assert (= result!199168 result!199124))

(assert (=> d!875962 t!237566))

(declare-fun tp!1011940 () Bool)

(declare-fun b_and!212903 () Bool)

(assert (=> b!3202029 (= tp!1011940 (and (=> t!237566 result!199168) b_and!212903))))

(declare-fun b_free!85147 () Bool)

(declare-fun b_next!85851 () Bool)

(assert (=> b!3202029 (= b_free!85147 (not b_next!85851))))

(declare-fun tb!156861 () Bool)

(declare-fun t!237568 () Bool)

(assert (=> (and b!3202029 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237568) tb!156861))

(declare-fun result!199170 () Bool)

(assert (= result!199170 result!199146))

(assert (=> b!3201978 t!237568))

(declare-fun t!237570 () Bool)

(declare-fun tb!156863 () Bool)

(assert (=> (and b!3202029 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241)))) t!237570) tb!156863))

(declare-fun result!199172 () Bool)

(assert (= result!199172 result!199132))

(assert (=> d!875988 t!237570))

(assert (=> d!876054 t!237568))

(declare-fun tb!156865 () Bool)

(declare-fun t!237572 () Bool)

(assert (=> (and b!3202029 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494)))))) t!237572) tb!156865))

(declare-fun result!199174 () Bool)

(assert (= result!199174 result!199140))

(assert (=> d!876002 t!237572))

(assert (=> b!3201981 t!237570))

(declare-fun tp!1011941 () Bool)

(declare-fun b_and!212905 () Bool)

(assert (=> b!3202029 (= tp!1011941 (and (=> t!237570 result!199172) (=> t!237572 result!199174) (=> t!237568 result!199170) b_and!212905))))

(declare-fun e!1996450 () Bool)

(assert (=> b!3202029 (= e!1996450 (and tp!1011940 tp!1011941))))

(declare-fun tp!1011939 () Bool)

(declare-fun e!1996448 () Bool)

(declare-fun b!3202028 () Bool)

(assert (=> b!3202028 (= e!1996448 (and tp!1011939 (inv!48949 (tag!5728 (h!41522 (t!237477 rules!2135)))) (inv!48952 (transformation!5206 (h!41522 (t!237477 rules!2135)))) e!1996450))))

(declare-fun b!3202027 () Bool)

(declare-fun e!1996449 () Bool)

(declare-fun tp!1011938 () Bool)

(assert (=> b!3202027 (= e!1996449 (and e!1996448 tp!1011938))))

(assert (=> b!3201173 (= tp!1011829 e!1996449)))

(assert (= b!3202028 b!3202029))

(assert (= b!3202027 b!3202028))

(assert (= (and b!3201173 ((_ is Cons!36102) (t!237477 rules!2135))) b!3202027))

(declare-fun m!3464911 () Bool)

(assert (=> b!3202028 m!3464911))

(declare-fun m!3464913 () Bool)

(assert (=> b!3202028 m!3464913))

(declare-fun b!3202030 () Bool)

(declare-fun e!1996452 () Bool)

(declare-fun tp!1011942 () Bool)

(assert (=> b!3202030 (= e!1996452 (and tp_is_empty!17289 tp!1011942))))

(assert (=> b!3201205 (= tp!1011830 e!1996452)))

(assert (= (and b!3201205 ((_ is Cons!36101) (originalCharacters!5920 separatorToken!241))) b!3202030))

(declare-fun b!3202031 () Bool)

(declare-fun e!1996453 () Bool)

(assert (=> b!3202031 (= e!1996453 tp_is_empty!17289)))

(declare-fun b!3202034 () Bool)

(declare-fun tp!1011946 () Bool)

(declare-fun tp!1011945 () Bool)

(assert (=> b!3202034 (= e!1996453 (and tp!1011946 tp!1011945))))

(declare-fun b!3202032 () Bool)

(declare-fun tp!1011947 () Bool)

(declare-fun tp!1011944 () Bool)

(assert (=> b!3202032 (= e!1996453 (and tp!1011947 tp!1011944))))

(assert (=> b!3201208 (= tp!1011820 e!1996453)))

(declare-fun b!3202033 () Bool)

(declare-fun tp!1011943 () Bool)

(assert (=> b!3202033 (= e!1996453 tp!1011943)))

(assert (= (and b!3201208 ((_ is ElementMatch!9965) (regex!5206 (rule!7642 separatorToken!241)))) b!3202031))

(assert (= (and b!3201208 ((_ is Concat!15401) (regex!5206 (rule!7642 separatorToken!241)))) b!3202032))

(assert (= (and b!3201208 ((_ is Star!9965) (regex!5206 (rule!7642 separatorToken!241)))) b!3202033))

(assert (= (and b!3201208 ((_ is Union!9965) (regex!5206 (rule!7642 separatorToken!241)))) b!3202034))

(declare-fun b!3202035 () Bool)

(declare-fun e!1996454 () Bool)

(assert (=> b!3202035 (= e!1996454 tp_is_empty!17289)))

(declare-fun b!3202038 () Bool)

(declare-fun tp!1011951 () Bool)

(declare-fun tp!1011950 () Bool)

(assert (=> b!3202038 (= e!1996454 (and tp!1011951 tp!1011950))))

(declare-fun b!3202036 () Bool)

(declare-fun tp!1011952 () Bool)

(declare-fun tp!1011949 () Bool)

(assert (=> b!3202036 (= e!1996454 (and tp!1011952 tp!1011949))))

(assert (=> b!3201186 (= tp!1011825 e!1996454)))

(declare-fun b!3202037 () Bool)

(declare-fun tp!1011948 () Bool)

(assert (=> b!3202037 (= e!1996454 tp!1011948)))

(assert (= (and b!3201186 ((_ is ElementMatch!9965) (regex!5206 (rule!7642 (h!41523 tokens!494))))) b!3202035))

(assert (= (and b!3201186 ((_ is Concat!15401) (regex!5206 (rule!7642 (h!41523 tokens!494))))) b!3202036))

(assert (= (and b!3201186 ((_ is Star!9965) (regex!5206 (rule!7642 (h!41523 tokens!494))))) b!3202037))

(assert (= (and b!3201186 ((_ is Union!9965) (regex!5206 (rule!7642 (h!41523 tokens!494))))) b!3202038))

(declare-fun b_lambda!87543 () Bool)

(assert (= b_lambda!87535 (or b!3201187 b_lambda!87543)))

(declare-fun bs!540935 () Bool)

(declare-fun d!876062 () Bool)

(assert (= bs!540935 (and d!876062 b!3201187)))

(assert (=> bs!540935 (= (dynLambda!14538 lambda!117202 (h!41523 tokens!494)) (not (isSeparator!5206 (rule!7642 (h!41523 tokens!494)))))))

(assert (=> b!3201944 d!876062))

(declare-fun b_lambda!87545 () Bool)

(assert (= b_lambda!87541 (or (and b!3202018 b_free!85143 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))))) (and b!3201175 b_free!85123 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))))) (and b!3201192 b_free!85127) (and b!3202029 b_free!85147 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))))) (and b!3201193 b_free!85131 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))))) b_lambda!87545)))

(declare-fun b_lambda!87547 () Bool)

(assert (= b_lambda!87489 (or b!3201187 b_lambda!87547)))

(assert (=> d!875752 d!876062))

(declare-fun b_lambda!87549 () Bool)

(assert (= b_lambda!87537 (or (and b!3202018 b_free!85143 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201192 b_free!85127 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201193 b_free!85131 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201175 b_free!85123) (and b!3202029 b_free!85147 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) b_lambda!87549)))

(declare-fun b_lambda!87551 () Bool)

(assert (= b_lambda!87527 (or b!3201181 b_lambda!87551)))

(declare-fun bs!540936 () Bool)

(declare-fun d!876064 () Bool)

(assert (= bs!540936 (and d!876064 b!3201181)))

(assert (=> bs!540936 (= (dynLambda!14538 lambda!117203 (h!41523 tokens!494)) (rulesProduceIndividualToken!2287 thiss!18206 rules!2135 (h!41523 tokens!494)))))

(assert (=> bs!540936 m!3463631))

(assert (=> b!3201823 d!876064))

(declare-fun b_lambda!87553 () Bool)

(assert (= b_lambda!87487 (or b!3201187 b_lambda!87553)))

(declare-fun bs!540937 () Bool)

(declare-fun d!876066 () Bool)

(assert (= bs!540937 (and d!876066 b!3201187)))

(assert (=> bs!540937 (= (dynLambda!14538 lambda!117202 (h!41523 (t!237478 tokens!494))) (not (isSeparator!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))))))

(assert (=> d!875750 d!876066))

(declare-fun b_lambda!87555 () Bool)

(assert (= b_lambda!87533 (or (and b!3201192 b_free!85127 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))))) (and b!3202029 b_free!85147 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))))) (and b!3202018 b_free!85143) (and b!3201193 b_free!85131 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))))) (and b!3201175 b_free!85123 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))))) b_lambda!87555)))

(declare-fun b_lambda!87557 () Bool)

(assert (= b_lambda!87529 (or (and b!3201192 b_free!85125 (= (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201193 b_free!85129 (= (toValue!7282 (transformation!5206 (h!41522 rules!2135))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201175 b_free!85121) (and b!3202018 b_free!85141 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3202029 b_free!85145 (= (toValue!7282 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) b_lambda!87557)))

(declare-fun b_lambda!87559 () Bool)

(assert (= b_lambda!87531 (or (and b!3202018 b_free!85143 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))))) (and b!3201175 b_free!85123 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))))) (and b!3201192 b_free!85127) (and b!3202029 b_free!85147 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))))) (and b!3201193 b_free!85131 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))))) b_lambda!87559)))

(declare-fun b_lambda!87561 () Bool)

(assert (= b_lambda!87539 (or (and b!3202018 b_free!85143 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201192 b_free!85127 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201193 b_free!85131 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201175 b_free!85123) (and b!3202029 b_free!85147 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) b_lambda!87561)))

(check-sat (not d!875990) (not d!875982) b_and!212893 (not b!3201628) (not b!3201853) (not b_lambda!87547) (not b_lambda!87559) (not d!876032) (not b!3201897) (not b!3201470) (not b!3201813) b_and!212863 (not b!3201922) (not d!875972) (not d!876058) (not b!3201962) (not b!3201872) (not d!875752) (not b!3202038) (not d!875754) (not b!3201425) (not b_lambda!87543) (not d!875890) (not d!875802) (not b!3201893) (not b!3201972) (not b_lambda!87557) (not b!3201848) (not b!3201633) (not b!3201859) (not b!3201817) (not b!3201960) (not d!876012) (not bm!231768) (not d!876000) (not b!3201943) (not b!3202016) (not d!875774) (not tb!156839) (not d!875892) (not d!876040) (not b!3201967) (not d!875888) (not d!875970) (not b!3201630) (not b_next!85847) (not d!875948) (not b!3201847) (not b!3201945) (not d!875806) (not b!3201997) b_and!212865 (not d!876046) (not b_lambda!87551) (not b!3201856) (not d!876002) (not b!3202030) (not b_lambda!87549) (not b!3201846) (not b!3201906) (not d!876018) (not b!3201857) (not d!875992) (not d!876020) (not b!3201910) (not b!3201327) (not b!3201519) (not b!3201332) (not b!3201900) (not bm!231771) (not bs!540936) (not b!3201299) (not b!3201298) (not b!3201671) (not b_next!85831) (not d!875958) (not b!3201830) (not b!3201895) (not b!3201854) (not b!3201971) (not b!3201407) (not b!3201825) (not d!875998) (not b!3201408) (not d!876050) b_and!212899 (not b_next!85835) (not b_next!85829) (not b!3201909) (not b!3201994) (not b!3202017) (not b_next!85827) (not b!3201517) (not b!3201851) (not b!3201631) (not b_next!85845) (not b!3201946) (not b!3201634) (not b!3201629) (not b!3201950) (not b!3201849) b_and!212867 (not d!875798) (not b!3201978) (not b!3201860) (not b!3201928) (not b!3201903) b_and!212895 (not bm!231774) (not b!3202034) (not b!3201640) (not b!3201641) b_and!212901 (not b!3201915) (not b!3201940) (not d!875878) (not b!3201932) (not d!876056) (not b!3201890) (not b_next!85849) (not b!3201996) (not b!3201855) (not b_lambda!87553) (not d!875974) (not b_lambda!87545) (not d!875980) (not tb!156833) (not b!3201861) (not b!3201965) (not b!3201457) (not b!3201459) (not b!3201632) (not d!876048) (not b!3201961) (not b!3202004) (not bm!231747) (not b!3201302) (not b!3201948) (not d!876042) (not b!3201925) (not b_next!85851) (not b!3201476) (not b!3201422) (not b!3201982) (not d!875810) (not bm!231770) (not d!875986) (not b!3201905) (not b!3201930) (not b!3201901) (not b!3202036) (not b!3201947) (not b!3201824) b_and!212903 (not d!875750) (not d!875880) (not b_lambda!87555) (not b!3201828) (not b!3201867) (not b!3201911) (not d!875884) (not b!3201892) (not b!3201329) (not b!3201815) (not b!3201979) (not d!875894) (not b!3201458) (not d!875778) (not b!3201639) (not b!3201964) tp_is_empty!17289 (not b!3201917) (not b!3201926) (not d!875964) (not d!875758) (not b!3201626) (not d!875772) (not d!875966) (not b!3201980) (not b!3201981) (not d!876036) (not b!3201518) (not b!3201963) (not d!876010) (not b!3201951) (not b!3201455) (not bm!231775) (not tb!156845) (not b!3201883) (not b!3202037) (not d!876004) (not b!3201923) (not tb!156827) (not b!3201912) (not b!3201467) (not d!875760) (not d!875882) (not b!3202033) (not b!3202027) (not b!3201337) (not d!876008) (not d!876026) (not b!3201924) (not d!876006) (not d!875978) (not d!875770) (not d!876034) (not d!876044) (not b!3201914) (not b_lambda!87561) (not b!3201423) (not d!876052) (not b_next!85833) (not d!875824) (not b!3201832) (not d!875988) (not b!3202028) (not b_next!85825) (not b!3201454) (not d!875976) (not b!3202015) (not b!3201884) (not b!3201968) (not b!3201995) b_and!212905 (not b!3201931) (not b!3201845) b_and!212897 (not b!3201927) (not b!3201952) (not d!876054) (not b!3202032) (not d!875968))
(check-sat b_and!212893 b_and!212863 (not b_next!85831) (not b_next!85845) b_and!212867 (not b_next!85849) (not b_next!85851) b_and!212903 (not b_next!85833) (not b_next!85825) (not b_next!85847) b_and!212865 b_and!212899 (not b_next!85835) (not b_next!85827) (not b_next!85829) b_and!212895 b_and!212901 b_and!212905 b_and!212897)
(get-model)

(declare-fun d!876128 () Bool)

(declare-fun lt!1080338 () Token!9778)

(assert (=> d!876128 (contains!6425 (list!12833 (_1!20873 lt!1079891)) lt!1080338)))

(declare-fun e!1996546 () Token!9778)

(assert (=> d!876128 (= lt!1080338 e!1996546)))

(declare-fun c!537593 () Bool)

(assert (=> d!876128 (= c!537593 (= 0 0))))

(declare-fun e!1996547 () Bool)

(assert (=> d!876128 e!1996547))

(declare-fun res!1303192 () Bool)

(assert (=> d!876128 (=> (not res!1303192) (not e!1996547))))

(assert (=> d!876128 (= res!1303192 (<= 0 0))))

(assert (=> d!876128 (= (apply!8152 (list!12833 (_1!20873 lt!1079891)) 0) lt!1080338)))

(declare-fun b!3202190 () Bool)

(assert (=> b!3202190 (= e!1996547 (< 0 (size!27196 (list!12833 (_1!20873 lt!1079891)))))))

(declare-fun b!3202191 () Bool)

(assert (=> b!3202191 (= e!1996546 (head!7023 (list!12833 (_1!20873 lt!1079891))))))

(declare-fun b!3202192 () Bool)

(assert (=> b!3202192 (= e!1996546 (apply!8152 (tail!5204 (list!12833 (_1!20873 lt!1079891))) (- 0 1)))))

(assert (= (and d!876128 res!1303192) b!3202190))

(assert (= (and d!876128 c!537593) b!3202191))

(assert (= (and d!876128 (not c!537593)) b!3202192))

(assert (=> d!876128 m!3464645))

(declare-fun m!3465135 () Bool)

(assert (=> d!876128 m!3465135))

(assert (=> b!3202190 m!3464645))

(assert (=> b!3202190 m!3464647))

(assert (=> b!3202191 m!3464645))

(declare-fun m!3465137 () Bool)

(assert (=> b!3202191 m!3465137))

(assert (=> b!3202192 m!3464645))

(declare-fun m!3465139 () Bool)

(assert (=> b!3202192 m!3465139))

(assert (=> b!3202192 m!3465139))

(declare-fun m!3465141 () Bool)

(assert (=> b!3202192 m!3465141))

(assert (=> d!876042 d!876128))

(declare-fun d!876138 () Bool)

(declare-fun list!12837 (Conc!10788) List!36227)

(assert (=> d!876138 (= (list!12833 (_1!20873 lt!1079891)) (list!12837 (c!537388 (_1!20873 lt!1079891))))))

(declare-fun bs!540946 () Bool)

(assert (= bs!540946 d!876138))

(declare-fun m!3465149 () Bool)

(assert (=> bs!540946 m!3465149))

(assert (=> d!876042 d!876138))

(declare-fun d!876144 () Bool)

(declare-fun lt!1080344 () Token!9778)

(assert (=> d!876144 (= lt!1080344 (apply!8152 (list!12837 (c!537388 (_1!20873 lt!1079891))) 0))))

(declare-fun e!1996572 () Token!9778)

(assert (=> d!876144 (= lt!1080344 e!1996572)))

(declare-fun c!537611 () Bool)

(assert (=> d!876144 (= c!537611 ((_ is Leaf!17002) (c!537388 (_1!20873 lt!1079891))))))

(declare-fun e!1996573 () Bool)

(assert (=> d!876144 e!1996573))

(declare-fun res!1303197 () Bool)

(assert (=> d!876144 (=> (not res!1303197) (not e!1996573))))

(assert (=> d!876144 (= res!1303197 (<= 0 0))))

(assert (=> d!876144 (= (apply!8153 (c!537388 (_1!20873 lt!1079891)) 0) lt!1080344)))

(declare-fun b!3202235 () Bool)

(declare-fun apply!8155 (IArray!21581 Int) Token!9778)

(assert (=> b!3202235 (= e!1996572 (apply!8155 (xs!13906 (c!537388 (_1!20873 lt!1079891))) 0))))

(declare-fun b!3202236 () Bool)

(declare-fun e!1996570 () Token!9778)

(declare-fun call!231816 () Token!9778)

(assert (=> b!3202236 (= e!1996570 call!231816)))

(declare-fun b!3202237 () Bool)

(assert (=> b!3202237 (= e!1996572 e!1996570)))

(declare-fun lt!1080345 () Bool)

(declare-fun appendIndex!303 (List!36227 List!36227 Int) Bool)

(assert (=> b!3202237 (= lt!1080345 (appendIndex!303 (list!12837 (left!28053 (c!537388 (_1!20873 lt!1079891)))) (list!12837 (right!28383 (c!537388 (_1!20873 lt!1079891)))) 0))))

(declare-fun c!537613 () Bool)

(assert (=> b!3202237 (= c!537613 (< 0 (size!27197 (left!28053 (c!537388 (_1!20873 lt!1079891))))))))

(declare-fun b!3202238 () Bool)

(assert (=> b!3202238 (= e!1996573 (< 0 (size!27197 (c!537388 (_1!20873 lt!1079891)))))))

(declare-fun bm!231811 () Bool)

(declare-fun c!537612 () Bool)

(assert (=> bm!231811 (= c!537612 c!537613)))

(declare-fun e!1996571 () Int)

(assert (=> bm!231811 (= call!231816 (apply!8153 (ite c!537613 (left!28053 (c!537388 (_1!20873 lt!1079891))) (right!28383 (c!537388 (_1!20873 lt!1079891)))) e!1996571))))

(declare-fun b!3202239 () Bool)

(assert (=> b!3202239 (= e!1996570 call!231816)))

(declare-fun b!3202240 () Bool)

(assert (=> b!3202240 (= e!1996571 0)))

(declare-fun b!3202241 () Bool)

(assert (=> b!3202241 (= e!1996571 (- 0 (size!27197 (left!28053 (c!537388 (_1!20873 lt!1079891))))))))

(assert (= (and d!876144 res!1303197) b!3202238))

(assert (= (and d!876144 c!537611) b!3202235))

(assert (= (and d!876144 (not c!537611)) b!3202237))

(assert (= (and b!3202237 c!537613) b!3202236))

(assert (= (and b!3202237 (not c!537613)) b!3202239))

(assert (= (or b!3202236 b!3202239) bm!231811))

(assert (= (and bm!231811 c!537612) b!3202240))

(assert (= (and bm!231811 (not c!537612)) b!3202241))

(declare-fun m!3465173 () Bool)

(assert (=> b!3202241 m!3465173))

(declare-fun m!3465175 () Bool)

(assert (=> b!3202235 m!3465175))

(declare-fun m!3465177 () Bool)

(assert (=> bm!231811 m!3465177))

(assert (=> b!3202238 m!3464649))

(declare-fun m!3465179 () Bool)

(assert (=> b!3202237 m!3465179))

(declare-fun m!3465181 () Bool)

(assert (=> b!3202237 m!3465181))

(assert (=> b!3202237 m!3465179))

(assert (=> b!3202237 m!3465181))

(declare-fun m!3465183 () Bool)

(assert (=> b!3202237 m!3465183))

(assert (=> b!3202237 m!3465173))

(assert (=> d!876144 m!3465149))

(assert (=> d!876144 m!3465149))

(declare-fun m!3465185 () Bool)

(assert (=> d!876144 m!3465185))

(assert (=> d!876042 d!876144))

(declare-fun d!876156 () Bool)

(assert (=> d!876156 (= (list!12833 (_1!20873 lt!1080166)) (list!12837 (c!537388 (_1!20873 lt!1080166))))))

(declare-fun bs!540948 () Bool)

(assert (= bs!540948 d!876156))

(declare-fun m!3465187 () Bool)

(assert (=> bs!540948 m!3465187))

(assert (=> b!3201856 d!876156))

(declare-fun d!876158 () Bool)

(declare-fun e!1996607 () Bool)

(assert (=> d!876158 e!1996607))

(declare-fun c!537627 () Bool)

(declare-fun lt!1080359 () tuple2!35488)

(assert (=> d!876158 (= c!537627 (> (size!27196 (_1!20878 lt!1080359)) 0))))

(declare-fun e!1996605 () tuple2!35488)

(assert (=> d!876158 (= lt!1080359 e!1996605)))

(declare-fun c!537626 () Bool)

(declare-fun lt!1080361 () Option!7108)

(assert (=> d!876158 (= c!537626 ((_ is Some!7107) lt!1080361))))

(declare-fun maxPrefix!2440 (LexerInterface!4795 List!36226 List!36225) Option!7108)

(assert (=> d!876158 (= lt!1080361 (maxPrefix!2440 thiss!18206 rules!2135 (list!12831 lt!1079881)))))

(assert (=> d!876158 (= (lexList!1309 thiss!18206 rules!2135 (list!12831 lt!1079881)) lt!1080359)))

(declare-fun b!3202286 () Bool)

(assert (=> b!3202286 (= e!1996607 (= (_2!20878 lt!1080359) (list!12831 lt!1079881)))))

(declare-fun b!3202287 () Bool)

(assert (=> b!3202287 (= e!1996605 (tuple2!35489 Nil!36103 (list!12831 lt!1079881)))))

(declare-fun b!3202288 () Bool)

(declare-fun e!1996606 () Bool)

(assert (=> b!3202288 (= e!1996606 (not (isEmpty!20192 (_1!20878 lt!1080359))))))

(declare-fun b!3202289 () Bool)

(declare-fun lt!1080360 () tuple2!35488)

(assert (=> b!3202289 (= e!1996605 (tuple2!35489 (Cons!36103 (_1!20874 (v!35637 lt!1080361)) (_1!20878 lt!1080360)) (_2!20878 lt!1080360)))))

(assert (=> b!3202289 (= lt!1080360 (lexList!1309 thiss!18206 rules!2135 (_2!20874 (v!35637 lt!1080361))))))

(declare-fun b!3202290 () Bool)

(assert (=> b!3202290 (= e!1996607 e!1996606)))

(declare-fun res!1303218 () Bool)

(assert (=> b!3202290 (= res!1303218 (< (size!27191 (_2!20878 lt!1080359)) (size!27191 (list!12831 lt!1079881))))))

(assert (=> b!3202290 (=> (not res!1303218) (not e!1996606))))

(assert (= (and d!876158 c!537626) b!3202289))

(assert (= (and d!876158 (not c!537626)) b!3202287))

(assert (= (and d!876158 c!537627) b!3202290))

(assert (= (and d!876158 (not c!537627)) b!3202286))

(assert (= (and b!3202290 res!1303218) b!3202288))

(declare-fun m!3465247 () Bool)

(assert (=> d!876158 m!3465247))

(assert (=> d!876158 m!3464589))

(declare-fun m!3465249 () Bool)

(assert (=> d!876158 m!3465249))

(declare-fun m!3465251 () Bool)

(assert (=> b!3202288 m!3465251))

(declare-fun m!3465253 () Bool)

(assert (=> b!3202289 m!3465253))

(declare-fun m!3465255 () Bool)

(assert (=> b!3202290 m!3465255))

(assert (=> b!3202290 m!3464589))

(declare-fun m!3465257 () Bool)

(assert (=> b!3202290 m!3465257))

(assert (=> b!3201856 d!876158))

(declare-fun d!876186 () Bool)

(assert (=> d!876186 (= (list!12831 lt!1079881) (list!12834 (c!537387 lt!1079881)))))

(declare-fun bs!540954 () Bool)

(assert (= bs!540954 d!876186))

(declare-fun m!3465259 () Bool)

(assert (=> bs!540954 m!3465259))

(assert (=> b!3201856 d!876186))

(declare-fun d!876188 () Bool)

(declare-fun charsToBigInt!0 (List!36224 Int) Int)

(assert (=> d!876188 (= (inv!15 (value!168831 separatorToken!241)) (= (charsToBigInt!0 (text!38501 (value!168831 separatorToken!241)) 0) (value!168826 (value!168831 separatorToken!241))))))

(declare-fun bs!540955 () Bool)

(assert (= bs!540955 d!876188))

(declare-fun m!3465261 () Bool)

(assert (=> bs!540955 m!3465261))

(assert (=> b!3201915 d!876188))

(declare-fun b!3202299 () Bool)

(declare-fun e!1996612 () List!36225)

(assert (=> b!3202299 (= e!1996612 Nil!36101)))

(declare-fun b!3202300 () Bool)

(declare-fun e!1996613 () List!36225)

(assert (=> b!3202300 (= e!1996612 e!1996613)))

(declare-fun c!537633 () Bool)

(assert (=> b!3202300 (= c!537633 ((_ is Leaf!17001) (c!537387 lt!1079893)))))

(declare-fun d!876190 () Bool)

(declare-fun c!537632 () Bool)

(assert (=> d!876190 (= c!537632 ((_ is Empty!10787) (c!537387 lt!1079893)))))

(assert (=> d!876190 (= (list!12834 (c!537387 lt!1079893)) e!1996612)))

(declare-fun b!3202301 () Bool)

(declare-fun list!12838 (IArray!21579) List!36225)

(assert (=> b!3202301 (= e!1996613 (list!12838 (xs!13905 (c!537387 lt!1079893))))))

(declare-fun b!3202302 () Bool)

(assert (=> b!3202302 (= e!1996613 (++!8650 (list!12834 (left!28052 (c!537387 lt!1079893))) (list!12834 (right!28382 (c!537387 lt!1079893)))))))

(assert (= (and d!876190 c!537632) b!3202299))

(assert (= (and d!876190 (not c!537632)) b!3202300))

(assert (= (and b!3202300 c!537633) b!3202301))

(assert (= (and b!3202300 (not c!537633)) b!3202302))

(declare-fun m!3465263 () Bool)

(assert (=> b!3202301 m!3465263))

(declare-fun m!3465265 () Bool)

(assert (=> b!3202302 m!3465265))

(declare-fun m!3465267 () Bool)

(assert (=> b!3202302 m!3465267))

(assert (=> b!3202302 m!3465265))

(assert (=> b!3202302 m!3465267))

(declare-fun m!3465269 () Bool)

(assert (=> b!3202302 m!3465269))

(assert (=> d!875770 d!876190))

(declare-fun d!876192 () Bool)

(assert (=> d!876192 (= (head!7021 lt!1079879) (h!41521 lt!1079879))))

(assert (=> b!3201467 d!876192))

(declare-fun b!3202315 () Bool)

(declare-fun res!1303235 () Bool)

(declare-fun e!1996618 () Bool)

(assert (=> b!3202315 (=> (not res!1303235) (not e!1996618))))

(assert (=> b!3202315 (= res!1303235 (not (isEmpty!20193 (left!28053 (c!537388 lt!1079978)))))))

(declare-fun d!876194 () Bool)

(declare-fun res!1303233 () Bool)

(declare-fun e!1996619 () Bool)

(assert (=> d!876194 (=> res!1303233 e!1996619)))

(assert (=> d!876194 (= res!1303233 (not ((_ is Node!10788) (c!537388 lt!1079978))))))

(assert (=> d!876194 (= (isBalanced!3209 (c!537388 lt!1079978)) e!1996619)))

(declare-fun b!3202316 () Bool)

(assert (=> b!3202316 (= e!1996619 e!1996618)))

(declare-fun res!1303232 () Bool)

(assert (=> b!3202316 (=> (not res!1303232) (not e!1996618))))

(declare-fun height!1546 (Conc!10788) Int)

(assert (=> b!3202316 (= res!1303232 (<= (- 1) (- (height!1546 (left!28053 (c!537388 lt!1079978))) (height!1546 (right!28383 (c!537388 lt!1079978))))))))

(declare-fun b!3202317 () Bool)

(assert (=> b!3202317 (= e!1996618 (not (isEmpty!20193 (right!28383 (c!537388 lt!1079978)))))))

(declare-fun b!3202318 () Bool)

(declare-fun res!1303234 () Bool)

(assert (=> b!3202318 (=> (not res!1303234) (not e!1996618))))

(assert (=> b!3202318 (= res!1303234 (<= (- (height!1546 (left!28053 (c!537388 lt!1079978))) (height!1546 (right!28383 (c!537388 lt!1079978)))) 1))))

(declare-fun b!3202319 () Bool)

(declare-fun res!1303236 () Bool)

(assert (=> b!3202319 (=> (not res!1303236) (not e!1996618))))

(assert (=> b!3202319 (= res!1303236 (isBalanced!3209 (right!28383 (c!537388 lt!1079978))))))

(declare-fun b!3202320 () Bool)

(declare-fun res!1303231 () Bool)

(assert (=> b!3202320 (=> (not res!1303231) (not e!1996618))))

(assert (=> b!3202320 (= res!1303231 (isBalanced!3209 (left!28053 (c!537388 lt!1079978))))))

(assert (= (and d!876194 (not res!1303233)) b!3202316))

(assert (= (and b!3202316 res!1303232) b!3202318))

(assert (= (and b!3202318 res!1303234) b!3202320))

(assert (= (and b!3202320 res!1303231) b!3202319))

(assert (= (and b!3202319 res!1303236) b!3202315))

(assert (= (and b!3202315 res!1303235) b!3202317))

(declare-fun m!3465271 () Bool)

(assert (=> b!3202316 m!3465271))

(declare-fun m!3465273 () Bool)

(assert (=> b!3202316 m!3465273))

(declare-fun m!3465275 () Bool)

(assert (=> b!3202315 m!3465275))

(declare-fun m!3465277 () Bool)

(assert (=> b!3202319 m!3465277))

(assert (=> b!3202318 m!3465271))

(assert (=> b!3202318 m!3465273))

(declare-fun m!3465279 () Bool)

(assert (=> b!3202317 m!3465279))

(declare-fun m!3465281 () Bool)

(assert (=> b!3202320 m!3465281))

(assert (=> b!3201332 d!876194))

(declare-fun d!876196 () Bool)

(assert (=> d!876196 (= (get!11488 lt!1080102) (v!35637 lt!1080102))))

(assert (=> b!3201631 d!876196))

(declare-fun d!876198 () Bool)

(declare-fun lt!1080362 () Bool)

(assert (=> d!876198 (= lt!1080362 (select (content!4878 tokens!494) (h!41523 tokens!494)))))

(declare-fun e!1996621 () Bool)

(assert (=> d!876198 (= lt!1080362 e!1996621)))

(declare-fun res!1303238 () Bool)

(assert (=> d!876198 (=> (not res!1303238) (not e!1996621))))

(assert (=> d!876198 (= res!1303238 ((_ is Cons!36103) tokens!494))))

(assert (=> d!876198 (= (contains!6425 tokens!494 (h!41523 tokens!494)) lt!1080362)))

(declare-fun b!3202321 () Bool)

(declare-fun e!1996620 () Bool)

(assert (=> b!3202321 (= e!1996621 e!1996620)))

(declare-fun res!1303237 () Bool)

(assert (=> b!3202321 (=> res!1303237 e!1996620)))

(assert (=> b!3202321 (= res!1303237 (= (h!41523 tokens!494) (h!41523 tokens!494)))))

(declare-fun b!3202322 () Bool)

(assert (=> b!3202322 (= e!1996620 (contains!6425 (t!237478 tokens!494) (h!41523 tokens!494)))))

(assert (= (and d!876198 res!1303238) b!3202321))

(assert (= (and b!3202321 (not res!1303237)) b!3202322))

(assert (=> d!876198 m!3464651))

(declare-fun m!3465283 () Bool)

(assert (=> d!876198 m!3465283))

(declare-fun m!3465285 () Bool)

(assert (=> b!3202322 m!3465285))

(assert (=> b!3201299 d!876198))

(declare-fun d!876200 () Bool)

(declare-fun lt!1080365 () Int)

(assert (=> d!876200 (= lt!1080365 (size!27191 (list!12831 (_2!20873 lt!1080158))))))

(declare-fun size!27199 (Conc!10787) Int)

(assert (=> d!876200 (= lt!1080365 (size!27199 (c!537387 (_2!20873 lt!1080158))))))

(assert (=> d!876200 (= (size!27195 (_2!20873 lt!1080158)) lt!1080365)))

(declare-fun bs!540956 () Bool)

(assert (= bs!540956 d!876200))

(assert (=> bs!540956 m!3464545))

(assert (=> bs!540956 m!3464545))

(declare-fun m!3465287 () Bool)

(assert (=> bs!540956 m!3465287))

(declare-fun m!3465289 () Bool)

(assert (=> bs!540956 m!3465289))

(assert (=> b!3201847 d!876200))

(declare-fun d!876202 () Bool)

(declare-fun lt!1080366 () Int)

(assert (=> d!876202 (= lt!1080366 (size!27191 (list!12831 lt!1079906)))))

(assert (=> d!876202 (= lt!1080366 (size!27199 (c!537387 lt!1079906)))))

(assert (=> d!876202 (= (size!27195 lt!1079906) lt!1080366)))

(declare-fun bs!540957 () Bool)

(assert (= bs!540957 d!876202))

(assert (=> bs!540957 m!3464537))

(assert (=> bs!540957 m!3464537))

(declare-fun m!3465291 () Bool)

(assert (=> bs!540957 m!3465291))

(declare-fun m!3465293 () Bool)

(assert (=> bs!540957 m!3465293))

(assert (=> b!3201847 d!876202))

(declare-fun d!876204 () Bool)

(assert (=> d!876204 (= (isEmpty!20189 lt!1079895) (not ((_ is Some!7106) lt!1079895)))))

(assert (=> d!875884 d!876204))

(declare-fun d!876206 () Bool)

(declare-fun c!537634 () Bool)

(assert (=> d!876206 (= c!537634 ((_ is IntegerValue!16308) (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) lt!1079875)))))

(declare-fun e!1996623 () Bool)

(assert (=> d!876206 (= (inv!21 (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) lt!1079875)) e!1996623)))

(declare-fun b!3202323 () Bool)

(declare-fun res!1303239 () Bool)

(declare-fun e!1996624 () Bool)

(assert (=> b!3202323 (=> res!1303239 e!1996624)))

(assert (=> b!3202323 (= res!1303239 (not ((_ is IntegerValue!16310) (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) lt!1079875))))))

(declare-fun e!1996622 () Bool)

(assert (=> b!3202323 (= e!1996622 e!1996624)))

(declare-fun b!3202324 () Bool)

(assert (=> b!3202324 (= e!1996623 (inv!16 (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) lt!1079875)))))

(declare-fun b!3202325 () Bool)

(assert (=> b!3202325 (= e!1996624 (inv!15 (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) lt!1079875)))))

(declare-fun b!3202326 () Bool)

(assert (=> b!3202326 (= e!1996623 e!1996622)))

(declare-fun c!537635 () Bool)

(assert (=> b!3202326 (= c!537635 ((_ is IntegerValue!16309) (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) lt!1079875)))))

(declare-fun b!3202327 () Bool)

(assert (=> b!3202327 (= e!1996622 (inv!17 (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) lt!1079875)))))

(assert (= (and d!876206 c!537634) b!3202324))

(assert (= (and d!876206 (not c!537634)) b!3202326))

(assert (= (and b!3202326 c!537635) b!3202327))

(assert (= (and b!3202326 (not c!537635)) b!3202323))

(assert (= (and b!3202323 (not res!1303239)) b!3202325))

(declare-fun m!3465295 () Bool)

(assert (=> b!3202324 m!3465295))

(declare-fun m!3465297 () Bool)

(assert (=> b!3202325 m!3465297))

(declare-fun m!3465299 () Bool)

(assert (=> b!3202327 m!3465299))

(assert (=> tb!156827 d!876206))

(declare-fun d!876208 () Bool)

(declare-fun c!537638 () Bool)

(assert (=> d!876208 (= c!537638 ((_ is Nil!36101) lt!1080207))))

(declare-fun e!1996627 () (InoxSet C!20116))

(assert (=> d!876208 (= (content!4877 lt!1080207) e!1996627)))

(declare-fun b!3202332 () Bool)

(assert (=> b!3202332 (= e!1996627 ((as const (Array C!20116 Bool)) false))))

(declare-fun b!3202333 () Bool)

(assert (=> b!3202333 (= e!1996627 ((_ map or) (store ((as const (Array C!20116 Bool)) false) (h!41521 lt!1080207) true) (content!4877 (t!237476 lt!1080207))))))

(assert (= (and d!876208 c!537638) b!3202332))

(assert (= (and d!876208 (not c!537638)) b!3202333))

(declare-fun m!3465301 () Bool)

(assert (=> b!3202333 m!3465301))

(declare-fun m!3465303 () Bool)

(assert (=> b!3202333 m!3465303))

(assert (=> d!876046 d!876208))

(declare-fun d!876210 () Bool)

(declare-fun c!537639 () Bool)

(assert (=> d!876210 (= c!537639 ((_ is Nil!36101) (++!8650 lt!1079879 lt!1079883)))))

(declare-fun e!1996628 () (InoxSet C!20116))

(assert (=> d!876210 (= (content!4877 (++!8650 lt!1079879 lt!1079883)) e!1996628)))

(declare-fun b!3202334 () Bool)

(assert (=> b!3202334 (= e!1996628 ((as const (Array C!20116 Bool)) false))))

(declare-fun b!3202335 () Bool)

(assert (=> b!3202335 (= e!1996628 ((_ map or) (store ((as const (Array C!20116 Bool)) false) (h!41521 (++!8650 lt!1079879 lt!1079883)) true) (content!4877 (t!237476 (++!8650 lt!1079879 lt!1079883)))))))

(assert (= (and d!876210 c!537639) b!3202334))

(assert (= (and d!876210 (not c!537639)) b!3202335))

(declare-fun m!3465305 () Bool)

(assert (=> b!3202335 m!3465305))

(declare-fun m!3465307 () Bool)

(assert (=> b!3202335 m!3465307))

(assert (=> d!876046 d!876210))

(declare-fun d!876212 () Bool)

(declare-fun c!537640 () Bool)

(assert (=> d!876212 (= c!537640 ((_ is Nil!36101) lt!1079880))))

(declare-fun e!1996629 () (InoxSet C!20116))

(assert (=> d!876212 (= (content!4877 lt!1079880) e!1996629)))

(declare-fun b!3202336 () Bool)

(assert (=> b!3202336 (= e!1996629 ((as const (Array C!20116 Bool)) false))))

(declare-fun b!3202337 () Bool)

(assert (=> b!3202337 (= e!1996629 ((_ map or) (store ((as const (Array C!20116 Bool)) false) (h!41521 lt!1079880) true) (content!4877 (t!237476 lt!1079880))))))

(assert (= (and d!876212 c!537640) b!3202336))

(assert (= (and d!876212 (not c!537640)) b!3202337))

(declare-fun m!3465309 () Bool)

(assert (=> b!3202337 m!3465309))

(declare-fun m!3465311 () Bool)

(assert (=> b!3202337 m!3465311))

(assert (=> d!876046 d!876212))

(declare-fun d!876214 () Bool)

(declare-fun lt!1080367 () Bool)

(assert (=> d!876214 (= lt!1080367 (select (content!4877 (t!237476 (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241))))) lt!1079902))))

(declare-fun e!1996630 () Bool)

(assert (=> d!876214 (= lt!1080367 e!1996630)))

(declare-fun res!1303240 () Bool)

(assert (=> d!876214 (=> (not res!1303240) (not e!1996630))))

(assert (=> d!876214 (= res!1303240 ((_ is Cons!36101) (t!237476 (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241))))))))

(assert (=> d!876214 (= (contains!6424 (t!237476 (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241)))) lt!1079902) lt!1080367)))

(declare-fun b!3202338 () Bool)

(declare-fun e!1996631 () Bool)

(assert (=> b!3202338 (= e!1996630 e!1996631)))

(declare-fun res!1303241 () Bool)

(assert (=> b!3202338 (=> res!1303241 e!1996631)))

(assert (=> b!3202338 (= res!1303241 (= (h!41521 (t!237476 (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241))))) lt!1079902))))

(declare-fun b!3202339 () Bool)

(assert (=> b!3202339 (= e!1996631 (contains!6424 (t!237476 (t!237476 (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241))))) lt!1079902))))

(assert (= (and d!876214 res!1303240) b!3202338))

(assert (= (and b!3202338 (not res!1303241)) b!3202339))

(declare-fun m!3465313 () Bool)

(assert (=> d!876214 m!3465313))

(declare-fun m!3465315 () Bool)

(assert (=> d!876214 m!3465315))

(declare-fun m!3465317 () Bool)

(assert (=> b!3202339 m!3465317))

(assert (=> b!3201671 d!876214))

(declare-fun b!3202351 () Bool)

(declare-fun e!1996634 () Bool)

(declare-fun lt!1080370 () BalanceConc!21188)

(assert (=> b!3202351 (= e!1996634 (= (list!12831 lt!1080370) (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) (list!12831 (charsOf!3222 (apply!8150 lt!1079897 0))))))))

(declare-fun d!876216 () Bool)

(assert (=> d!876216 e!1996634))

(declare-fun res!1303252 () Bool)

(assert (=> d!876216 (=> (not res!1303252) (not e!1996634))))

(declare-fun appendAssocInst!729 (Conc!10787 Conc!10787) Bool)

(assert (=> d!876216 (= res!1303252 (appendAssocInst!729 (c!537387 (BalanceConc!21189 Empty!10787)) (c!537387 (charsOf!3222 (apply!8150 lt!1079897 0)))))))

(declare-fun ++!8654 (Conc!10787 Conc!10787) Conc!10787)

(assert (=> d!876216 (= lt!1080370 (BalanceConc!21189 (++!8654 (c!537387 (BalanceConc!21189 Empty!10787)) (c!537387 (charsOf!3222 (apply!8150 lt!1079897 0))))))))

(assert (=> d!876216 (= (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079897 0))) lt!1080370)))

(declare-fun b!3202348 () Bool)

(declare-fun res!1303251 () Bool)

(assert (=> b!3202348 (=> (not res!1303251) (not e!1996634))))

(declare-fun isBalanced!3211 (Conc!10787) Bool)

(assert (=> b!3202348 (= res!1303251 (isBalanced!3211 (++!8654 (c!537387 (BalanceConc!21189 Empty!10787)) (c!537387 (charsOf!3222 (apply!8150 lt!1079897 0))))))))

(declare-fun b!3202349 () Bool)

(declare-fun res!1303253 () Bool)

(assert (=> b!3202349 (=> (not res!1303253) (not e!1996634))))

(declare-fun height!1547 (Conc!10787) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3202349 (= res!1303253 (<= (height!1547 (++!8654 (c!537387 (BalanceConc!21189 Empty!10787)) (c!537387 (charsOf!3222 (apply!8150 lt!1079897 0))))) (+ (max!0 (height!1547 (c!537387 (BalanceConc!21189 Empty!10787))) (height!1547 (c!537387 (charsOf!3222 (apply!8150 lt!1079897 0))))) 1)))))

(declare-fun b!3202350 () Bool)

(declare-fun res!1303250 () Bool)

(assert (=> b!3202350 (=> (not res!1303250) (not e!1996634))))

(assert (=> b!3202350 (= res!1303250 (>= (height!1547 (++!8654 (c!537387 (BalanceConc!21189 Empty!10787)) (c!537387 (charsOf!3222 (apply!8150 lt!1079897 0))))) (max!0 (height!1547 (c!537387 (BalanceConc!21189 Empty!10787))) (height!1547 (c!537387 (charsOf!3222 (apply!8150 lt!1079897 0)))))))))

(assert (= (and d!876216 res!1303252) b!3202348))

(assert (= (and b!3202348 res!1303251) b!3202349))

(assert (= (and b!3202349 res!1303253) b!3202350))

(assert (= (and b!3202350 res!1303250) b!3202351))

(declare-fun m!3465319 () Bool)

(assert (=> b!3202351 m!3465319))

(assert (=> b!3202351 m!3463751))

(assert (=> b!3202351 m!3464565))

(declare-fun m!3465321 () Bool)

(assert (=> b!3202351 m!3465321))

(assert (=> b!3202351 m!3463751))

(assert (=> b!3202351 m!3465321))

(declare-fun m!3465323 () Bool)

(assert (=> b!3202351 m!3465323))

(declare-fun m!3465325 () Bool)

(assert (=> b!3202350 m!3465325))

(declare-fun m!3465327 () Bool)

(assert (=> b!3202350 m!3465327))

(declare-fun m!3465329 () Bool)

(assert (=> b!3202350 m!3465329))

(assert (=> b!3202350 m!3465325))

(declare-fun m!3465331 () Bool)

(assert (=> b!3202350 m!3465331))

(assert (=> b!3202350 m!3465329))

(assert (=> b!3202350 m!3465327))

(declare-fun m!3465333 () Bool)

(assert (=> b!3202350 m!3465333))

(declare-fun m!3465335 () Bool)

(assert (=> d!876216 m!3465335))

(assert (=> d!876216 m!3465325))

(assert (=> b!3202349 m!3465325))

(assert (=> b!3202349 m!3465327))

(assert (=> b!3202349 m!3465329))

(assert (=> b!3202349 m!3465325))

(assert (=> b!3202349 m!3465331))

(assert (=> b!3202349 m!3465329))

(assert (=> b!3202349 m!3465327))

(assert (=> b!3202349 m!3465333))

(assert (=> b!3202348 m!3465325))

(assert (=> b!3202348 m!3465325))

(declare-fun m!3465337 () Bool)

(assert (=> b!3202348 m!3465337))

(assert (=> b!3201851 d!876216))

(declare-fun b!3202370 () Bool)

(declare-fun e!1996649 () Int)

(declare-fun call!231823 () Int)

(assert (=> b!3202370 (= e!1996649 (- call!231823 0))))

(declare-fun b!3202371 () Bool)

(declare-fun e!1996648 () List!36227)

(assert (=> b!3202371 (= e!1996648 lt!1080161)))

(declare-fun bm!231818 () Bool)

(assert (=> bm!231818 (= call!231823 (size!27196 lt!1080161))))

(declare-fun b!3202372 () Bool)

(assert (=> b!3202372 (= e!1996648 (drop!1857 (t!237478 lt!1080161) (- 0 1)))))

(declare-fun b!3202374 () Bool)

(declare-fun e!1996646 () Bool)

(declare-fun lt!1080373 () List!36227)

(declare-fun e!1996647 () Int)

(assert (=> b!3202374 (= e!1996646 (= (size!27196 lt!1080373) e!1996647))))

(declare-fun c!537652 () Bool)

(assert (=> b!3202374 (= c!537652 (<= 0 0))))

(declare-fun b!3202375 () Bool)

(assert (=> b!3202375 (= e!1996649 0)))

(declare-fun b!3202376 () Bool)

(declare-fun e!1996645 () List!36227)

(assert (=> b!3202376 (= e!1996645 Nil!36103)))

(declare-fun b!3202377 () Bool)

(assert (=> b!3202377 (= e!1996647 e!1996649)))

(declare-fun c!537655 () Bool)

(assert (=> b!3202377 (= c!537655 (>= 0 call!231823))))

(declare-fun b!3202378 () Bool)

(assert (=> b!3202378 (= e!1996647 call!231823)))

(declare-fun b!3202373 () Bool)

(assert (=> b!3202373 (= e!1996645 e!1996648)))

(declare-fun c!537654 () Bool)

(assert (=> b!3202373 (= c!537654 (<= 0 0))))

(declare-fun d!876218 () Bool)

(assert (=> d!876218 e!1996646))

(declare-fun res!1303256 () Bool)

(assert (=> d!876218 (=> (not res!1303256) (not e!1996646))))

(assert (=> d!876218 (= res!1303256 (= ((_ map implies) (content!4878 lt!1080373) (content!4878 lt!1080161)) ((as const (InoxSet Token!9778)) true)))))

(assert (=> d!876218 (= lt!1080373 e!1996645)))

(declare-fun c!537653 () Bool)

(assert (=> d!876218 (= c!537653 ((_ is Nil!36103) lt!1080161))))

(assert (=> d!876218 (= (drop!1857 lt!1080161 0) lt!1080373)))

(assert (= (and d!876218 c!537653) b!3202376))

(assert (= (and d!876218 (not c!537653)) b!3202373))

(assert (= (and b!3202373 c!537654) b!3202371))

(assert (= (and b!3202373 (not c!537654)) b!3202372))

(assert (= (and d!876218 res!1303256) b!3202374))

(assert (= (and b!3202374 c!537652) b!3202378))

(assert (= (and b!3202374 (not c!537652)) b!3202377))

(assert (= (and b!3202377 c!537655) b!3202375))

(assert (= (and b!3202377 (not c!537655)) b!3202370))

(assert (= (or b!3202378 b!3202377 b!3202370) bm!231818))

(declare-fun m!3465339 () Bool)

(assert (=> bm!231818 m!3465339))

(declare-fun m!3465341 () Bool)

(assert (=> b!3202372 m!3465341))

(declare-fun m!3465343 () Bool)

(assert (=> b!3202374 m!3465343))

(declare-fun m!3465345 () Bool)

(assert (=> d!876218 m!3465345))

(declare-fun m!3465347 () Bool)

(assert (=> d!876218 m!3465347))

(assert (=> b!3201851 d!876218))

(declare-fun d!876220 () Bool)

(assert (=> d!876220 (= (head!7023 (drop!1857 lt!1080161 0)) (h!41523 (drop!1857 lt!1080161 0)))))

(assert (=> b!3201851 d!876220))

(declare-fun d!876222 () Bool)

(assert (=> d!876222 (= (tail!5204 (drop!1857 lt!1080163 0)) (drop!1857 lt!1080163 (+ 0 1)))))

(declare-fun lt!1080376 () Unit!50516)

(declare-fun choose!18694 (List!36227 Int) Unit!50516)

(assert (=> d!876222 (= lt!1080376 (choose!18694 lt!1080163 0))))

(declare-fun e!1996652 () Bool)

(assert (=> d!876222 e!1996652))

(declare-fun res!1303259 () Bool)

(assert (=> d!876222 (=> (not res!1303259) (not e!1996652))))

(assert (=> d!876222 (= res!1303259 (>= 0 0))))

(assert (=> d!876222 (= (lemmaDropTail!917 lt!1080163 0) lt!1080376)))

(declare-fun b!3202381 () Bool)

(assert (=> b!3202381 (= e!1996652 (< 0 (size!27196 lt!1080163)))))

(assert (= (and d!876222 res!1303259) b!3202381))

(assert (=> d!876222 m!3464559))

(assert (=> d!876222 m!3464559))

(assert (=> d!876222 m!3464561))

(assert (=> d!876222 m!3464567))

(declare-fun m!3465349 () Bool)

(assert (=> d!876222 m!3465349))

(declare-fun m!3465351 () Bool)

(assert (=> b!3202381 m!3465351))

(assert (=> b!3201851 d!876222))

(declare-fun d!876224 () Bool)

(declare-fun lt!1080383 () BalanceConc!21188)

(assert (=> d!876224 (= (list!12831 lt!1080383) (printListTailRec!557 thiss!18206 (dropList!1074 lt!1079897 (+ 0 1)) (list!12831 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079897 0))))))))

(declare-fun e!1996653 () BalanceConc!21188)

(assert (=> d!876224 (= lt!1080383 e!1996653)))

(declare-fun c!537656 () Bool)

(assert (=> d!876224 (= c!537656 (>= (+ 0 1) (size!27190 lt!1079897)))))

(declare-fun e!1996654 () Bool)

(assert (=> d!876224 e!1996654))

(declare-fun res!1303260 () Bool)

(assert (=> d!876224 (=> (not res!1303260) (not e!1996654))))

(assert (=> d!876224 (= res!1303260 (>= (+ 0 1) 0))))

(assert (=> d!876224 (= (printTailRec!1292 thiss!18206 lt!1079897 (+ 0 1) (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079897 0)))) lt!1080383)))

(declare-fun b!3202382 () Bool)

(assert (=> b!3202382 (= e!1996654 (<= (+ 0 1) (size!27190 lt!1079897)))))

(declare-fun b!3202383 () Bool)

(assert (=> b!3202383 (= e!1996653 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079897 0))))))

(declare-fun b!3202384 () Bool)

(assert (=> b!3202384 (= e!1996653 (printTailRec!1292 thiss!18206 lt!1079897 (+ 0 1 1) (++!8652 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079897 0))) (charsOf!3222 (apply!8150 lt!1079897 (+ 0 1))))))))

(declare-fun lt!1080379 () List!36227)

(assert (=> b!3202384 (= lt!1080379 (list!12833 lt!1079897))))

(declare-fun lt!1080380 () Unit!50516)

(assert (=> b!3202384 (= lt!1080380 (lemmaDropApply!1033 lt!1080379 (+ 0 1)))))

(assert (=> b!3202384 (= (head!7023 (drop!1857 lt!1080379 (+ 0 1))) (apply!8152 lt!1080379 (+ 0 1)))))

(declare-fun lt!1080378 () Unit!50516)

(assert (=> b!3202384 (= lt!1080378 lt!1080380)))

(declare-fun lt!1080381 () List!36227)

(assert (=> b!3202384 (= lt!1080381 (list!12833 lt!1079897))))

(declare-fun lt!1080377 () Unit!50516)

(assert (=> b!3202384 (= lt!1080377 (lemmaDropTail!917 lt!1080381 (+ 0 1)))))

(assert (=> b!3202384 (= (tail!5204 (drop!1857 lt!1080381 (+ 0 1))) (drop!1857 lt!1080381 (+ 0 1 1)))))

(declare-fun lt!1080382 () Unit!50516)

(assert (=> b!3202384 (= lt!1080382 lt!1080377)))

(assert (= (and d!876224 res!1303260) b!3202382))

(assert (= (and d!876224 c!537656) b!3202383))

(assert (= (and d!876224 (not c!537656)) b!3202384))

(declare-fun m!3465353 () Bool)

(assert (=> d!876224 m!3465353))

(declare-fun m!3465355 () Bool)

(assert (=> d!876224 m!3465355))

(assert (=> d!876224 m!3464569))

(declare-fun m!3465357 () Bool)

(assert (=> d!876224 m!3465357))

(assert (=> d!876224 m!3464551))

(assert (=> d!876224 m!3465355))

(assert (=> d!876224 m!3465357))

(declare-fun m!3465359 () Bool)

(assert (=> d!876224 m!3465359))

(assert (=> b!3202382 m!3464551))

(declare-fun m!3465361 () Bool)

(assert (=> b!3202384 m!3465361))

(declare-fun m!3465363 () Bool)

(assert (=> b!3202384 m!3465363))

(declare-fun m!3465365 () Bool)

(assert (=> b!3202384 m!3465365))

(declare-fun m!3465367 () Bool)

(assert (=> b!3202384 m!3465367))

(assert (=> b!3202384 m!3465365))

(declare-fun m!3465369 () Bool)

(assert (=> b!3202384 m!3465369))

(declare-fun m!3465371 () Bool)

(assert (=> b!3202384 m!3465371))

(declare-fun m!3465373 () Bool)

(assert (=> b!3202384 m!3465373))

(declare-fun m!3465375 () Bool)

(assert (=> b!3202384 m!3465375))

(declare-fun m!3465377 () Bool)

(assert (=> b!3202384 m!3465377))

(assert (=> b!3202384 m!3465369))

(declare-fun m!3465379 () Bool)

(assert (=> b!3202384 m!3465379))

(assert (=> b!3202384 m!3464569))

(assert (=> b!3202384 m!3465371))

(assert (=> b!3202384 m!3465375))

(declare-fun m!3465381 () Bool)

(assert (=> b!3202384 m!3465381))

(assert (=> b!3202384 m!3465363))

(declare-fun m!3465383 () Bool)

(assert (=> b!3202384 m!3465383))

(assert (=> b!3202384 m!3464579))

(assert (=> b!3201851 d!876224))

(declare-fun d!876226 () Bool)

(declare-fun lt!1080384 () Token!9778)

(assert (=> d!876226 (contains!6425 lt!1080161 lt!1080384)))

(declare-fun e!1996655 () Token!9778)

(assert (=> d!876226 (= lt!1080384 e!1996655)))

(declare-fun c!537657 () Bool)

(assert (=> d!876226 (= c!537657 (= 0 0))))

(declare-fun e!1996656 () Bool)

(assert (=> d!876226 e!1996656))

(declare-fun res!1303261 () Bool)

(assert (=> d!876226 (=> (not res!1303261) (not e!1996656))))

(assert (=> d!876226 (= res!1303261 (<= 0 0))))

(assert (=> d!876226 (= (apply!8152 lt!1080161 0) lt!1080384)))

(declare-fun b!3202385 () Bool)

(assert (=> b!3202385 (= e!1996656 (< 0 (size!27196 lt!1080161)))))

(declare-fun b!3202386 () Bool)

(assert (=> b!3202386 (= e!1996655 (head!7023 lt!1080161))))

(declare-fun b!3202387 () Bool)

(assert (=> b!3202387 (= e!1996655 (apply!8152 (tail!5204 lt!1080161) (- 0 1)))))

(assert (= (and d!876226 res!1303261) b!3202385))

(assert (= (and d!876226 c!537657) b!3202386))

(assert (= (and d!876226 (not c!537657)) b!3202387))

(declare-fun m!3465385 () Bool)

(assert (=> d!876226 m!3465385))

(assert (=> b!3202385 m!3465339))

(declare-fun m!3465387 () Bool)

(assert (=> b!3202386 m!3465387))

(declare-fun m!3465389 () Bool)

(assert (=> b!3202387 m!3465389))

(assert (=> b!3202387 m!3465389))

(declare-fun m!3465391 () Bool)

(assert (=> b!3202387 m!3465391))

(assert (=> b!3201851 d!876226))

(declare-fun b!3202388 () Bool)

(declare-fun e!1996661 () Int)

(declare-fun call!231824 () Int)

(assert (=> b!3202388 (= e!1996661 (- call!231824 0))))

(declare-fun b!3202389 () Bool)

(declare-fun e!1996660 () List!36227)

(assert (=> b!3202389 (= e!1996660 lt!1080163)))

(declare-fun bm!231819 () Bool)

(assert (=> bm!231819 (= call!231824 (size!27196 lt!1080163))))

(declare-fun b!3202390 () Bool)

(assert (=> b!3202390 (= e!1996660 (drop!1857 (t!237478 lt!1080163) (- 0 1)))))

(declare-fun b!3202392 () Bool)

(declare-fun e!1996658 () Bool)

(declare-fun lt!1080385 () List!36227)

(declare-fun e!1996659 () Int)

(assert (=> b!3202392 (= e!1996658 (= (size!27196 lt!1080385) e!1996659))))

(declare-fun c!537658 () Bool)

(assert (=> b!3202392 (= c!537658 (<= 0 0))))

(declare-fun b!3202393 () Bool)

(assert (=> b!3202393 (= e!1996661 0)))

(declare-fun b!3202394 () Bool)

(declare-fun e!1996657 () List!36227)

(assert (=> b!3202394 (= e!1996657 Nil!36103)))

(declare-fun b!3202395 () Bool)

(assert (=> b!3202395 (= e!1996659 e!1996661)))

(declare-fun c!537661 () Bool)

(assert (=> b!3202395 (= c!537661 (>= 0 call!231824))))

(declare-fun b!3202396 () Bool)

(assert (=> b!3202396 (= e!1996659 call!231824)))

(declare-fun b!3202391 () Bool)

(assert (=> b!3202391 (= e!1996657 e!1996660)))

(declare-fun c!537660 () Bool)

(assert (=> b!3202391 (= c!537660 (<= 0 0))))

(declare-fun d!876228 () Bool)

(assert (=> d!876228 e!1996658))

(declare-fun res!1303262 () Bool)

(assert (=> d!876228 (=> (not res!1303262) (not e!1996658))))

(assert (=> d!876228 (= res!1303262 (= ((_ map implies) (content!4878 lt!1080385) (content!4878 lt!1080163)) ((as const (InoxSet Token!9778)) true)))))

(assert (=> d!876228 (= lt!1080385 e!1996657)))

(declare-fun c!537659 () Bool)

(assert (=> d!876228 (= c!537659 ((_ is Nil!36103) lt!1080163))))

(assert (=> d!876228 (= (drop!1857 lt!1080163 0) lt!1080385)))

(assert (= (and d!876228 c!537659) b!3202394))

(assert (= (and d!876228 (not c!537659)) b!3202391))

(assert (= (and b!3202391 c!537660) b!3202389))

(assert (= (and b!3202391 (not c!537660)) b!3202390))

(assert (= (and d!876228 res!1303262) b!3202392))

(assert (= (and b!3202392 c!537658) b!3202396))

(assert (= (and b!3202392 (not c!537658)) b!3202395))

(assert (= (and b!3202395 c!537661) b!3202393))

(assert (= (and b!3202395 (not c!537661)) b!3202388))

(assert (= (or b!3202396 b!3202395 b!3202388) bm!231819))

(assert (=> bm!231819 m!3465351))

(declare-fun m!3465393 () Bool)

(assert (=> b!3202390 m!3465393))

(declare-fun m!3465395 () Bool)

(assert (=> b!3202392 m!3465395))

(declare-fun m!3465397 () Bool)

(assert (=> d!876228 m!3465397))

(declare-fun m!3465399 () Bool)

(assert (=> d!876228 m!3465399))

(assert (=> b!3201851 d!876228))

(declare-fun d!876230 () Bool)

(declare-fun lt!1080386 () Token!9778)

(assert (=> d!876230 (= lt!1080386 (apply!8152 (list!12833 lt!1079897) 0))))

(assert (=> d!876230 (= lt!1080386 (apply!8153 (c!537388 lt!1079897) 0))))

(declare-fun e!1996662 () Bool)

(assert (=> d!876230 e!1996662))

(declare-fun res!1303263 () Bool)

(assert (=> d!876230 (=> (not res!1303263) (not e!1996662))))

(assert (=> d!876230 (= res!1303263 (<= 0 0))))

(assert (=> d!876230 (= (apply!8150 lt!1079897 0) lt!1080386)))

(declare-fun b!3202397 () Bool)

(assert (=> b!3202397 (= e!1996662 (< 0 (size!27190 lt!1079897)))))

(assert (= (and d!876230 res!1303263) b!3202397))

(assert (=> d!876230 m!3464579))

(assert (=> d!876230 m!3464579))

(declare-fun m!3465401 () Bool)

(assert (=> d!876230 m!3465401))

(declare-fun m!3465403 () Bool)

(assert (=> d!876230 m!3465403))

(assert (=> b!3202397 m!3464551))

(assert (=> b!3201851 d!876230))

(declare-fun d!876232 () Bool)

(assert (=> d!876232 (= (tail!5204 (drop!1857 lt!1080163 0)) (t!237478 (drop!1857 lt!1080163 0)))))

(assert (=> b!3201851 d!876232))

(declare-fun b!3202398 () Bool)

(declare-fun e!1996667 () Int)

(declare-fun call!231825 () Int)

(assert (=> b!3202398 (= e!1996667 (- call!231825 (+ 0 1)))))

(declare-fun b!3202399 () Bool)

(declare-fun e!1996666 () List!36227)

(assert (=> b!3202399 (= e!1996666 lt!1080163)))

(declare-fun bm!231820 () Bool)

(assert (=> bm!231820 (= call!231825 (size!27196 lt!1080163))))

(declare-fun b!3202400 () Bool)

(assert (=> b!3202400 (= e!1996666 (drop!1857 (t!237478 lt!1080163) (- (+ 0 1) 1)))))

(declare-fun b!3202402 () Bool)

(declare-fun e!1996664 () Bool)

(declare-fun lt!1080387 () List!36227)

(declare-fun e!1996665 () Int)

(assert (=> b!3202402 (= e!1996664 (= (size!27196 lt!1080387) e!1996665))))

(declare-fun c!537662 () Bool)

(assert (=> b!3202402 (= c!537662 (<= (+ 0 1) 0))))

(declare-fun b!3202403 () Bool)

(assert (=> b!3202403 (= e!1996667 0)))

(declare-fun b!3202404 () Bool)

(declare-fun e!1996663 () List!36227)

(assert (=> b!3202404 (= e!1996663 Nil!36103)))

(declare-fun b!3202405 () Bool)

(assert (=> b!3202405 (= e!1996665 e!1996667)))

(declare-fun c!537665 () Bool)

(assert (=> b!3202405 (= c!537665 (>= (+ 0 1) call!231825))))

(declare-fun b!3202406 () Bool)

(assert (=> b!3202406 (= e!1996665 call!231825)))

(declare-fun b!3202401 () Bool)

(assert (=> b!3202401 (= e!1996663 e!1996666)))

(declare-fun c!537664 () Bool)

(assert (=> b!3202401 (= c!537664 (<= (+ 0 1) 0))))

(declare-fun d!876234 () Bool)

(assert (=> d!876234 e!1996664))

(declare-fun res!1303264 () Bool)

(assert (=> d!876234 (=> (not res!1303264) (not e!1996664))))

(assert (=> d!876234 (= res!1303264 (= ((_ map implies) (content!4878 lt!1080387) (content!4878 lt!1080163)) ((as const (InoxSet Token!9778)) true)))))

(assert (=> d!876234 (= lt!1080387 e!1996663)))

(declare-fun c!537663 () Bool)

(assert (=> d!876234 (= c!537663 ((_ is Nil!36103) lt!1080163))))

(assert (=> d!876234 (= (drop!1857 lt!1080163 (+ 0 1)) lt!1080387)))

(assert (= (and d!876234 c!537663) b!3202404))

(assert (= (and d!876234 (not c!537663)) b!3202401))

(assert (= (and b!3202401 c!537664) b!3202399))

(assert (= (and b!3202401 (not c!537664)) b!3202400))

(assert (= (and d!876234 res!1303264) b!3202402))

(assert (= (and b!3202402 c!537662) b!3202406))

(assert (= (and b!3202402 (not c!537662)) b!3202405))

(assert (= (and b!3202405 c!537665) b!3202403))

(assert (= (and b!3202405 (not c!537665)) b!3202398))

(assert (= (or b!3202406 b!3202405 b!3202398) bm!231820))

(assert (=> bm!231820 m!3465351))

(declare-fun m!3465405 () Bool)

(assert (=> b!3202400 m!3465405))

(declare-fun m!3465407 () Bool)

(assert (=> b!3202402 m!3465407))

(declare-fun m!3465409 () Bool)

(assert (=> d!876234 m!3465409))

(assert (=> d!876234 m!3465399))

(assert (=> b!3201851 d!876234))

(declare-fun d!876236 () Bool)

(declare-fun lt!1080388 () BalanceConc!21188)

(assert (=> d!876236 (= (list!12831 lt!1080388) (originalCharacters!5920 (apply!8150 lt!1079897 0)))))

(assert (=> d!876236 (= lt!1080388 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079897 0)))) (value!168831 (apply!8150 lt!1079897 0))))))

(assert (=> d!876236 (= (charsOf!3222 (apply!8150 lt!1079897 0)) lt!1080388)))

(declare-fun b_lambda!87579 () Bool)

(assert (=> (not b_lambda!87579) (not d!876236)))

(declare-fun t!237620 () Bool)

(declare-fun tb!156907 () Bool)

(assert (=> (and b!3201192 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079897 0))))) t!237620) tb!156907))

(declare-fun b!3202407 () Bool)

(declare-fun e!1996668 () Bool)

(declare-fun tp!1011955 () Bool)

(assert (=> b!3202407 (= e!1996668 (and (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079897 0)))) (value!168831 (apply!8150 lt!1079897 0))))) tp!1011955))))

(declare-fun result!199216 () Bool)

(assert (=> tb!156907 (= result!199216 (and (inv!48957 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079897 0)))) (value!168831 (apply!8150 lt!1079897 0)))) e!1996668))))

(assert (= tb!156907 b!3202407))

(declare-fun m!3465411 () Bool)

(assert (=> b!3202407 m!3465411))

(declare-fun m!3465413 () Bool)

(assert (=> tb!156907 m!3465413))

(assert (=> d!876236 t!237620))

(declare-fun b_and!212967 () Bool)

(assert (= b_and!212895 (and (=> t!237620 result!199216) b_and!212967)))

(declare-fun t!237622 () Bool)

(declare-fun tb!156909 () Bool)

(assert (=> (and b!3202018 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079897 0))))) t!237622) tb!156909))

(declare-fun result!199218 () Bool)

(assert (= result!199218 result!199216))

(assert (=> d!876236 t!237622))

(declare-fun b_and!212969 () Bool)

(assert (= b_and!212901 (and (=> t!237622 result!199218) b_and!212969)))

(declare-fun tb!156911 () Bool)

(declare-fun t!237624 () Bool)

(assert (=> (and b!3201175 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079897 0))))) t!237624) tb!156911))

(declare-fun result!199220 () Bool)

(assert (= result!199220 result!199216))

(assert (=> d!876236 t!237624))

(declare-fun b_and!212971 () Bool)

(assert (= b_and!212893 (and (=> t!237624 result!199220) b_and!212971)))

(declare-fun t!237626 () Bool)

(declare-fun tb!156913 () Bool)

(assert (=> (and b!3201193 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079897 0))))) t!237626) tb!156913))

(declare-fun result!199222 () Bool)

(assert (= result!199222 result!199216))

(assert (=> d!876236 t!237626))

(declare-fun b_and!212973 () Bool)

(assert (= b_and!212897 (and (=> t!237626 result!199222) b_and!212973)))

(declare-fun t!237628 () Bool)

(declare-fun tb!156915 () Bool)

(assert (=> (and b!3202029 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079897 0))))) t!237628) tb!156915))

(declare-fun result!199224 () Bool)

(assert (= result!199224 result!199216))

(assert (=> d!876236 t!237628))

(declare-fun b_and!212975 () Bool)

(assert (= b_and!212905 (and (=> t!237628 result!199224) b_and!212975)))

(declare-fun m!3465415 () Bool)

(assert (=> d!876236 m!3465415))

(declare-fun m!3465417 () Bool)

(assert (=> d!876236 m!3465417))

(assert (=> b!3201851 d!876236))

(declare-fun d!876238 () Bool)

(assert (=> d!876238 (= (head!7023 (drop!1857 lt!1080161 0)) (apply!8152 lt!1080161 0))))

(declare-fun lt!1080391 () Unit!50516)

(declare-fun choose!18695 (List!36227 Int) Unit!50516)

(assert (=> d!876238 (= lt!1080391 (choose!18695 lt!1080161 0))))

(declare-fun e!1996671 () Bool)

(assert (=> d!876238 e!1996671))

(declare-fun res!1303267 () Bool)

(assert (=> d!876238 (=> (not res!1303267) (not e!1996671))))

(assert (=> d!876238 (= res!1303267 (>= 0 0))))

(assert (=> d!876238 (= (lemmaDropApply!1033 lt!1080161 0) lt!1080391)))

(declare-fun b!3202410 () Bool)

(assert (=> b!3202410 (= e!1996671 (< 0 (size!27196 lt!1080161)))))

(assert (= (and d!876238 res!1303267) b!3202410))

(assert (=> d!876238 m!3464557))

(assert (=> d!876238 m!3464557))

(assert (=> d!876238 m!3464577))

(assert (=> d!876238 m!3464555))

(declare-fun m!3465419 () Bool)

(assert (=> d!876238 m!3465419))

(assert (=> b!3202410 m!3465339))

(assert (=> b!3201851 d!876238))

(declare-fun d!876240 () Bool)

(assert (=> d!876240 (= (list!12833 lt!1079897) (list!12837 (c!537388 lt!1079897)))))

(declare-fun bs!540958 () Bool)

(assert (= bs!540958 d!876240))

(declare-fun m!3465421 () Bool)

(assert (=> bs!540958 m!3465421))

(assert (=> b!3201851 d!876240))

(declare-fun d!876242 () Bool)

(declare-fun lt!1080405 () List!36225)

(assert (=> d!876242 (= lt!1080405 (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) (printList!1345 thiss!18206 (dropList!1074 lt!1079886 0))))))

(declare-fun e!1996674 () List!36225)

(assert (=> d!876242 (= lt!1080405 e!1996674)))

(declare-fun c!537668 () Bool)

(assert (=> d!876242 (= c!537668 ((_ is Cons!36103) (dropList!1074 lt!1079886 0)))))

(assert (=> d!876242 (= (printListTailRec!557 thiss!18206 (dropList!1074 lt!1079886 0) (list!12831 (BalanceConc!21189 Empty!10787))) lt!1080405)))

(declare-fun b!3202415 () Bool)

(assert (=> b!3202415 (= e!1996674 (printListTailRec!557 thiss!18206 (t!237478 (dropList!1074 lt!1079886 0)) (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) (list!12831 (charsOf!3222 (h!41523 (dropList!1074 lt!1079886 0)))))))))

(declare-fun lt!1080402 () List!36225)

(assert (=> b!3202415 (= lt!1080402 (list!12831 (charsOf!3222 (h!41523 (dropList!1074 lt!1079886 0)))))))

(declare-fun lt!1080404 () List!36225)

(assert (=> b!3202415 (= lt!1080404 (printList!1345 thiss!18206 (t!237478 (dropList!1074 lt!1079886 0))))))

(declare-fun lt!1080406 () Unit!50516)

(assert (=> b!3202415 (= lt!1080406 (lemmaConcatAssociativity!1724 (list!12831 (BalanceConc!21189 Empty!10787)) lt!1080402 lt!1080404))))

(assert (=> b!3202415 (= (++!8650 (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) lt!1080402) lt!1080404) (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) (++!8650 lt!1080402 lt!1080404)))))

(declare-fun lt!1080403 () Unit!50516)

(assert (=> b!3202415 (= lt!1080403 lt!1080406)))

(declare-fun b!3202416 () Bool)

(assert (=> b!3202416 (= e!1996674 (list!12831 (BalanceConc!21189 Empty!10787)))))

(assert (= (and d!876242 c!537668) b!3202415))

(assert (= (and d!876242 (not c!537668)) b!3202416))

(assert (=> d!876242 m!3463749))

(declare-fun m!3465423 () Bool)

(assert (=> d!876242 m!3465423))

(assert (=> d!876242 m!3463751))

(assert (=> d!876242 m!3465423))

(declare-fun m!3465425 () Bool)

(assert (=> d!876242 m!3465425))

(declare-fun m!3465427 () Bool)

(assert (=> b!3202415 m!3465427))

(declare-fun m!3465429 () Bool)

(assert (=> b!3202415 m!3465429))

(declare-fun m!3465431 () Bool)

(assert (=> b!3202415 m!3465431))

(assert (=> b!3202415 m!3463751))

(declare-fun m!3465433 () Bool)

(assert (=> b!3202415 m!3465433))

(declare-fun m!3465435 () Bool)

(assert (=> b!3202415 m!3465435))

(declare-fun m!3465437 () Bool)

(assert (=> b!3202415 m!3465437))

(assert (=> b!3202415 m!3463751))

(assert (=> b!3202415 m!3465435))

(declare-fun m!3465439 () Bool)

(assert (=> b!3202415 m!3465439))

(declare-fun m!3465441 () Bool)

(assert (=> b!3202415 m!3465441))

(declare-fun m!3465443 () Bool)

(assert (=> b!3202415 m!3465443))

(assert (=> b!3202415 m!3463751))

(assert (=> b!3202415 m!3465443))

(declare-fun m!3465445 () Bool)

(assert (=> b!3202415 m!3465445))

(assert (=> b!3202415 m!3465427))

(assert (=> b!3202415 m!3463751))

(assert (=> b!3202415 m!3465429))

(assert (=> b!3202415 m!3465439))

(assert (=> d!875772 d!876242))

(declare-fun d!876244 () Bool)

(assert (=> d!876244 (= (list!12831 (BalanceConc!21189 Empty!10787)) (list!12834 (c!537387 (BalanceConc!21189 Empty!10787))))))

(declare-fun bs!540959 () Bool)

(assert (= bs!540959 d!876244))

(declare-fun m!3465447 () Bool)

(assert (=> bs!540959 m!3465447))

(assert (=> d!875772 d!876244))

(declare-fun d!876246 () Bool)

(assert (=> d!876246 (= (list!12831 lt!1079975) (list!12834 (c!537387 lt!1079975)))))

(declare-fun bs!540960 () Bool)

(assert (= bs!540960 d!876246))

(declare-fun m!3465449 () Bool)

(assert (=> bs!540960 m!3465449))

(assert (=> d!875772 d!876246))

(declare-fun d!876248 () Bool)

(declare-fun lt!1080407 () Int)

(assert (=> d!876248 (= lt!1080407 (size!27196 (list!12833 lt!1079886)))))

(assert (=> d!876248 (= lt!1080407 (size!27197 (c!537388 lt!1079886)))))

(assert (=> d!876248 (= (size!27190 lt!1079886) lt!1080407)))

(declare-fun bs!540961 () Bool)

(assert (= bs!540961 d!876248))

(assert (=> bs!540961 m!3463741))

(assert (=> bs!540961 m!3463741))

(declare-fun m!3465451 () Bool)

(assert (=> bs!540961 m!3465451))

(declare-fun m!3465453 () Bool)

(assert (=> bs!540961 m!3465453))

(assert (=> d!875772 d!876248))

(declare-fun d!876250 () Bool)

(assert (=> d!876250 (= (dropList!1074 lt!1079886 0) (drop!1857 (list!12837 (c!537388 lt!1079886)) 0))))

(declare-fun bs!540962 () Bool)

(assert (= bs!540962 d!876250))

(declare-fun m!3465455 () Bool)

(assert (=> bs!540962 m!3465455))

(assert (=> bs!540962 m!3465455))

(declare-fun m!3465457 () Bool)

(assert (=> bs!540962 m!3465457))

(assert (=> d!875772 d!876250))

(assert (=> b!3201950 d!875960))

(declare-fun d!876252 () Bool)

(declare-fun lt!1080408 () Int)

(assert (=> d!876252 (= lt!1080408 (size!27196 (list!12833 lt!1079899)))))

(assert (=> d!876252 (= lt!1080408 (size!27197 (c!537388 lt!1079899)))))

(assert (=> d!876252 (= (size!27190 lt!1079899) lt!1080408)))

(declare-fun bs!540963 () Bool)

(assert (= bs!540963 d!876252))

(assert (=> bs!540963 m!3464299))

(assert (=> bs!540963 m!3464299))

(declare-fun m!3465459 () Bool)

(assert (=> bs!540963 m!3465459))

(declare-fun m!3465461 () Bool)

(assert (=> bs!540963 m!3465461))

(assert (=> b!3201857 d!876252))

(declare-fun d!876254 () Bool)

(assert (=> d!876254 (= (isEmpty!20186 (tail!5205 lt!1079879)) ((_ is Nil!36101) (tail!5205 lt!1079879)))))

(assert (=> b!3201454 d!876254))

(declare-fun d!876256 () Bool)

(assert (=> d!876256 (= (tail!5205 lt!1079879) (t!237476 lt!1079879))))

(assert (=> b!3201454 d!876256))

(declare-fun d!876258 () Bool)

(assert (=> d!876258 (= (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241)))) (v!35636 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241)))))))

(assert (=> b!3201861 d!876258))

(assert (=> b!3201861 d!875964))

(declare-fun d!876260 () Bool)

(declare-fun nullableFct!963 (Regex!9965) Bool)

(assert (=> d!876260 (= (nullable!3394 (regex!5206 lt!1079905)) (nullableFct!963 (regex!5206 lt!1079905)))))

(declare-fun bs!540964 () Bool)

(assert (= bs!540964 d!876260))

(declare-fun m!3465463 () Bool)

(assert (=> bs!540964 m!3465463))

(assert (=> b!3201455 d!876260))

(declare-fun d!876262 () Bool)

(declare-fun lt!1080409 () Int)

(assert (=> d!876262 (>= lt!1080409 0)))

(declare-fun e!1996675 () Int)

(assert (=> d!876262 (= lt!1080409 e!1996675)))

(declare-fun c!537669 () Bool)

(assert (=> d!876262 (= c!537669 ((_ is Nil!36101) (originalCharacters!5920 (h!41523 tokens!494))))))

(assert (=> d!876262 (= (size!27191 (originalCharacters!5920 (h!41523 tokens!494))) lt!1080409)))

(declare-fun b!3202417 () Bool)

(assert (=> b!3202417 (= e!1996675 0)))

(declare-fun b!3202418 () Bool)

(assert (=> b!3202418 (= e!1996675 (+ 1 (size!27191 (t!237476 (originalCharacters!5920 (h!41523 tokens!494))))))))

(assert (= (and d!876262 c!537669) b!3202417))

(assert (= (and d!876262 (not c!537669)) b!3202418))

(declare-fun m!3465465 () Bool)

(assert (=> b!3202418 m!3465465))

(assert (=> b!3201979 d!876262))

(declare-fun call!231826 () List!36225)

(declare-fun c!537670 () Bool)

(declare-fun bm!231821 () Bool)

(assert (=> bm!231821 (= call!231826 (usedCharacters!522 (ite c!537670 (regTwo!20443 (ite c!537493 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))) (ite c!537491 (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241)))))) (regOne!20442 (ite c!537493 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))) (ite c!537491 (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241)))))))))))

(declare-fun bm!231822 () Bool)

(declare-fun call!231827 () List!36225)

(declare-fun call!231829 () List!36225)

(assert (=> bm!231822 (= call!231827 call!231829)))

(declare-fun b!3202420 () Bool)

(declare-fun e!1996676 () List!36225)

(declare-fun e!1996677 () List!36225)

(assert (=> b!3202420 (= e!1996676 e!1996677)))

(declare-fun c!537673 () Bool)

(assert (=> b!3202420 (= c!537673 ((_ is ElementMatch!9965) (ite c!537493 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))) (ite c!537491 (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241)))))))))

(declare-fun b!3202421 () Bool)

(assert (=> b!3202421 (= e!1996677 (Cons!36101 (c!537386 (ite c!537493 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))) (ite c!537491 (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241)))))) Nil!36101))))

(declare-fun b!3202422 () Bool)

(declare-fun e!1996679 () List!36225)

(declare-fun e!1996678 () List!36225)

(assert (=> b!3202422 (= e!1996679 e!1996678)))

(assert (=> b!3202422 (= c!537670 ((_ is Union!9965) (ite c!537493 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))) (ite c!537491 (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241)))))))))

(declare-fun call!231828 () List!36225)

(declare-fun bm!231823 () Bool)

(assert (=> bm!231823 (= call!231828 (++!8650 (ite c!537670 call!231827 call!231826) (ite c!537670 call!231826 call!231827)))))

(declare-fun c!537672 () Bool)

(declare-fun bm!231824 () Bool)

(assert (=> bm!231824 (= call!231829 (usedCharacters!522 (ite c!537672 (reg!10294 (ite c!537493 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))) (ite c!537491 (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241)))))) (ite c!537670 (regOne!20443 (ite c!537493 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))) (ite c!537491 (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241)))))) (regTwo!20442 (ite c!537493 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))) (ite c!537491 (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241))))))))))))

(declare-fun b!3202423 () Bool)

(assert (=> b!3202423 (= e!1996679 call!231829)))

(declare-fun b!3202424 () Bool)

(assert (=> b!3202424 (= e!1996678 call!231828)))

(declare-fun b!3202425 () Bool)

(assert (=> b!3202425 (= e!1996678 call!231828)))

(declare-fun b!3202426 () Bool)

(assert (=> b!3202426 (= e!1996676 Nil!36101)))

(declare-fun d!876264 () Bool)

(declare-fun c!537671 () Bool)

(assert (=> d!876264 (= c!537671 (or ((_ is EmptyExpr!9965) (ite c!537493 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))) (ite c!537491 (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241)))))) ((_ is EmptyLang!9965) (ite c!537493 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))) (ite c!537491 (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241))))))))))

(assert (=> d!876264 (= (usedCharacters!522 (ite c!537493 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))) (ite c!537491 (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241)))))) e!1996676)))

(declare-fun b!3202419 () Bool)

(assert (=> b!3202419 (= c!537672 ((_ is Star!9965) (ite c!537493 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))) (ite c!537491 (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241)))))))))

(assert (=> b!3202419 (= e!1996677 e!1996679)))

(assert (= (and d!876264 c!537671) b!3202426))

(assert (= (and d!876264 (not c!537671)) b!3202420))

(assert (= (and b!3202420 c!537673) b!3202421))

(assert (= (and b!3202420 (not c!537673)) b!3202419))

(assert (= (and b!3202419 c!537672) b!3202423))

(assert (= (and b!3202419 (not c!537672)) b!3202422))

(assert (= (and b!3202422 c!537670) b!3202424))

(assert (= (and b!3202422 (not c!537670)) b!3202425))

(assert (= (or b!3202424 b!3202425) bm!231821))

(assert (= (or b!3202424 b!3202425) bm!231822))

(assert (= (or b!3202424 b!3202425) bm!231823))

(assert (= (or b!3202423 bm!231822) bm!231824))

(declare-fun m!3465467 () Bool)

(assert (=> bm!231821 m!3465467))

(declare-fun m!3465469 () Bool)

(assert (=> bm!231823 m!3465469))

(declare-fun m!3465471 () Bool)

(assert (=> bm!231824 m!3465471))

(assert (=> bm!231771 d!876264))

(declare-fun d!876266 () Bool)

(declare-fun lt!1080410 () Int)

(assert (=> d!876266 (>= lt!1080410 0)))

(declare-fun e!1996680 () Int)

(assert (=> d!876266 (= lt!1080410 e!1996680)))

(declare-fun c!537674 () Bool)

(assert (=> d!876266 (= c!537674 ((_ is Nil!36101) lt!1080186))))

(assert (=> d!876266 (= (size!27191 lt!1080186) lt!1080410)))

(declare-fun b!3202427 () Bool)

(assert (=> b!3202427 (= e!1996680 0)))

(declare-fun b!3202428 () Bool)

(assert (=> b!3202428 (= e!1996680 (+ 1 (size!27191 (t!237476 lt!1080186))))))

(assert (= (and d!876266 c!537674) b!3202427))

(assert (= (and d!876266 (not c!537674)) b!3202428))

(declare-fun m!3465473 () Bool)

(assert (=> b!3202428 m!3465473))

(assert (=> b!3201893 d!876266))

(declare-fun d!876268 () Bool)

(declare-fun lt!1080411 () Int)

(assert (=> d!876268 (>= lt!1080411 0)))

(declare-fun e!1996681 () Int)

(assert (=> d!876268 (= lt!1080411 e!1996681)))

(declare-fun c!537675 () Bool)

(assert (=> d!876268 (= c!537675 ((_ is Nil!36101) (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))))))

(assert (=> d!876268 (= (size!27191 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))) lt!1080411)))

(declare-fun b!3202429 () Bool)

(assert (=> b!3202429 (= e!1996681 0)))

(declare-fun b!3202430 () Bool)

(assert (=> b!3202430 (= e!1996681 (+ 1 (size!27191 (t!237476 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))))))))

(assert (= (and d!876268 c!537675) b!3202429))

(assert (= (and d!876268 (not c!537675)) b!3202430))

(declare-fun m!3465475 () Bool)

(assert (=> b!3202430 m!3465475))

(assert (=> b!3201893 d!876268))

(declare-fun d!876270 () Bool)

(declare-fun lt!1080412 () Int)

(assert (=> d!876270 (>= lt!1080412 0)))

(declare-fun e!1996682 () Int)

(assert (=> d!876270 (= lt!1080412 e!1996682)))

(declare-fun c!537676 () Bool)

(assert (=> d!876270 (= c!537676 ((_ is Nil!36101) lt!1079883))))

(assert (=> d!876270 (= (size!27191 lt!1079883) lt!1080412)))

(declare-fun b!3202431 () Bool)

(assert (=> b!3202431 (= e!1996682 0)))

(declare-fun b!3202432 () Bool)

(assert (=> b!3202432 (= e!1996682 (+ 1 (size!27191 (t!237476 lt!1079883))))))

(assert (= (and d!876270 c!537676) b!3202431))

(assert (= (and d!876270 (not c!537676)) b!3202432))

(declare-fun m!3465477 () Bool)

(assert (=> b!3202432 m!3465477))

(assert (=> b!3201893 d!876270))

(declare-fun d!876272 () Bool)

(declare-fun res!1303268 () Bool)

(declare-fun e!1996683 () Bool)

(assert (=> d!876272 (=> res!1303268 e!1996683)))

(assert (=> d!876272 (= res!1303268 (not ((_ is Cons!36102) (t!237477 rules!2135))))))

(assert (=> d!876272 (= (sepAndNonSepRulesDisjointChars!1400 rules!2135 (t!237477 rules!2135)) e!1996683)))

(declare-fun b!3202433 () Bool)

(declare-fun e!1996684 () Bool)

(assert (=> b!3202433 (= e!1996683 e!1996684)))

(declare-fun res!1303269 () Bool)

(assert (=> b!3202433 (=> (not res!1303269) (not e!1996684))))

(assert (=> b!3202433 (= res!1303269 (ruleDisjointCharsFromAllFromOtherType!587 (h!41522 (t!237477 rules!2135)) rules!2135))))

(declare-fun b!3202434 () Bool)

(assert (=> b!3202434 (= e!1996684 (sepAndNonSepRulesDisjointChars!1400 rules!2135 (t!237477 (t!237477 rules!2135))))))

(assert (= (and d!876272 (not res!1303268)) b!3202433))

(assert (= (and b!3202433 res!1303269) b!3202434))

(declare-fun m!3465479 () Bool)

(assert (=> b!3202433 m!3465479))

(declare-fun m!3465481 () Bool)

(assert (=> b!3202434 m!3465481))

(assert (=> b!3201923 d!876272))

(assert (=> b!3201860 d!876258))

(assert (=> b!3201860 d!875964))

(declare-fun bm!231825 () Bool)

(declare-fun call!231830 () Bool)

(assert (=> bm!231825 (= call!231830 (isEmpty!20186 (list!12831 (charsOf!3222 separatorToken!241))))))

(declare-fun b!3202435 () Bool)

(declare-fun res!1303275 () Bool)

(declare-fun e!1996685 () Bool)

(assert (=> b!3202435 (=> res!1303275 e!1996685)))

(assert (=> b!3202435 (= res!1303275 (not (isEmpty!20186 (tail!5205 (list!12831 (charsOf!3222 separatorToken!241))))))))

(declare-fun b!3202436 () Bool)

(declare-fun e!1996689 () Bool)

(assert (=> b!3202436 (= e!1996689 (nullable!3394 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241)))))))))

(declare-fun d!876274 () Bool)

(declare-fun e!1996687 () Bool)

(assert (=> d!876274 e!1996687))

(declare-fun c!537677 () Bool)

(assert (=> d!876274 (= c!537677 ((_ is EmptyExpr!9965) (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241)))))))))

(declare-fun lt!1080413 () Bool)

(assert (=> d!876274 (= lt!1080413 e!1996689)))

(declare-fun c!537678 () Bool)

(assert (=> d!876274 (= c!537678 (isEmpty!20186 (list!12831 (charsOf!3222 separatorToken!241))))))

(assert (=> d!876274 (validRegex!4548 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241))))))))

(assert (=> d!876274 (= (matchR!4599 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241))))) (list!12831 (charsOf!3222 separatorToken!241))) lt!1080413)))

(declare-fun b!3202437 () Bool)

(declare-fun e!1996686 () Bool)

(declare-fun e!1996691 () Bool)

(assert (=> b!3202437 (= e!1996686 e!1996691)))

(declare-fun res!1303270 () Bool)

(assert (=> b!3202437 (=> (not res!1303270) (not e!1996691))))

(assert (=> b!3202437 (= res!1303270 (not lt!1080413))))

(declare-fun b!3202438 () Bool)

(declare-fun e!1996690 () Bool)

(assert (=> b!3202438 (= e!1996690 (= (head!7021 (list!12831 (charsOf!3222 separatorToken!241))) (c!537386 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241))))))))))

(declare-fun b!3202439 () Bool)

(declare-fun res!1303272 () Bool)

(assert (=> b!3202439 (=> (not res!1303272) (not e!1996690))))

(assert (=> b!3202439 (= res!1303272 (isEmpty!20186 (tail!5205 (list!12831 (charsOf!3222 separatorToken!241)))))))

(declare-fun b!3202440 () Bool)

(assert (=> b!3202440 (= e!1996689 (matchR!4599 (derivativeStep!2947 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241))))) (head!7021 (list!12831 (charsOf!3222 separatorToken!241)))) (tail!5205 (list!12831 (charsOf!3222 separatorToken!241)))))))

(declare-fun b!3202441 () Bool)

(declare-fun res!1303273 () Bool)

(assert (=> b!3202441 (=> res!1303273 e!1996686)))

(assert (=> b!3202441 (= res!1303273 e!1996690)))

(declare-fun res!1303274 () Bool)

(assert (=> b!3202441 (=> (not res!1303274) (not e!1996690))))

(assert (=> b!3202441 (= res!1303274 lt!1080413)))

(declare-fun b!3202442 () Bool)

(assert (=> b!3202442 (= e!1996691 e!1996685)))

(declare-fun res!1303271 () Bool)

(assert (=> b!3202442 (=> res!1303271 e!1996685)))

(assert (=> b!3202442 (= res!1303271 call!231830)))

(declare-fun b!3202443 () Bool)

(declare-fun e!1996688 () Bool)

(assert (=> b!3202443 (= e!1996687 e!1996688)))

(declare-fun c!537679 () Bool)

(assert (=> b!3202443 (= c!537679 ((_ is EmptyLang!9965) (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241)))))))))

(declare-fun b!3202444 () Bool)

(assert (=> b!3202444 (= e!1996688 (not lt!1080413))))

(declare-fun b!3202445 () Bool)

(assert (=> b!3202445 (= e!1996687 (= lt!1080413 call!231830))))

(declare-fun b!3202446 () Bool)

(declare-fun res!1303276 () Bool)

(assert (=> b!3202446 (=> res!1303276 e!1996686)))

(assert (=> b!3202446 (= res!1303276 (not ((_ is ElementMatch!9965) (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241))))))))))

(assert (=> b!3202446 (= e!1996688 e!1996686)))

(declare-fun b!3202447 () Bool)

(declare-fun res!1303277 () Bool)

(assert (=> b!3202447 (=> (not res!1303277) (not e!1996690))))

(assert (=> b!3202447 (= res!1303277 (not call!231830))))

(declare-fun b!3202448 () Bool)

(assert (=> b!3202448 (= e!1996685 (not (= (head!7021 (list!12831 (charsOf!3222 separatorToken!241))) (c!537386 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241)))))))))))

(assert (= (and d!876274 c!537678) b!3202436))

(assert (= (and d!876274 (not c!537678)) b!3202440))

(assert (= (and d!876274 c!537677) b!3202445))

(assert (= (and d!876274 (not c!537677)) b!3202443))

(assert (= (and b!3202443 c!537679) b!3202444))

(assert (= (and b!3202443 (not c!537679)) b!3202446))

(assert (= (and b!3202446 (not res!1303276)) b!3202441))

(assert (= (and b!3202441 res!1303274) b!3202447))

(assert (= (and b!3202447 res!1303277) b!3202439))

(assert (= (and b!3202439 res!1303272) b!3202438))

(assert (= (and b!3202441 (not res!1303273)) b!3202437))

(assert (= (and b!3202437 res!1303270) b!3202442))

(assert (= (and b!3202442 (not res!1303271)) b!3202435))

(assert (= (and b!3202435 (not res!1303275)) b!3202448))

(assert (= (or b!3202445 b!3202442 b!3202447) bm!231825))

(assert (=> b!3202448 m!3463489))

(declare-fun m!3465483 () Bool)

(assert (=> b!3202448 m!3465483))

(assert (=> b!3202440 m!3463489))

(assert (=> b!3202440 m!3465483))

(assert (=> b!3202440 m!3465483))

(declare-fun m!3465485 () Bool)

(assert (=> b!3202440 m!3465485))

(assert (=> b!3202440 m!3463489))

(declare-fun m!3465487 () Bool)

(assert (=> b!3202440 m!3465487))

(assert (=> b!3202440 m!3465485))

(assert (=> b!3202440 m!3465487))

(declare-fun m!3465489 () Bool)

(assert (=> b!3202440 m!3465489))

(assert (=> b!3202439 m!3463489))

(assert (=> b!3202439 m!3465487))

(assert (=> b!3202439 m!3465487))

(declare-fun m!3465491 () Bool)

(assert (=> b!3202439 m!3465491))

(assert (=> d!876274 m!3463489))

(declare-fun m!3465493 () Bool)

(assert (=> d!876274 m!3465493))

(declare-fun m!3465495 () Bool)

(assert (=> d!876274 m!3465495))

(assert (=> b!3202435 m!3463489))

(assert (=> b!3202435 m!3465487))

(assert (=> b!3202435 m!3465487))

(assert (=> b!3202435 m!3465491))

(assert (=> bm!231825 m!3463489))

(assert (=> bm!231825 m!3465493))

(assert (=> b!3202438 m!3463489))

(assert (=> b!3202438 m!3465483))

(declare-fun m!3465497 () Bool)

(assert (=> b!3202436 m!3465497))

(assert (=> b!3201860 d!876274))

(assert (=> b!3201860 d!875988))

(assert (=> b!3201860 d!876000))

(declare-fun d!876276 () Bool)

(declare-fun charsToBigInt!1 (List!36224) Int)

(assert (=> d!876276 (= (inv!17 (value!168831 (h!41523 tokens!494))) (= (charsToBigInt!1 (text!38500 (value!168831 (h!41523 tokens!494)))) (value!168823 (value!168831 (h!41523 tokens!494)))))))

(declare-fun bs!540965 () Bool)

(assert (= bs!540965 d!876276))

(declare-fun m!3465499 () Bool)

(assert (=> bs!540965 m!3465499))

(assert (=> b!3201425 d!876276))

(assert (=> b!3201298 d!875982))

(assert (=> b!3201872 d!876054))

(assert (=> b!3201872 d!876052))

(declare-fun d!876278 () Bool)

(declare-fun e!1996692 () Bool)

(assert (=> d!876278 e!1996692))

(declare-fun res!1303278 () Bool)

(assert (=> d!876278 (=> (not res!1303278) (not e!1996692))))

(declare-fun lt!1080414 () List!36225)

(assert (=> d!876278 (= res!1303278 (= (content!4877 lt!1080414) ((_ map or) (content!4877 (++!8650 (list!12831 (charsOf!3222 (h!41523 tokens!494))) (list!12831 (charsOf!3222 separatorToken!241)))) (content!4877 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 tokens!494) separatorToken!241)))))))

(declare-fun e!1996693 () List!36225)

(assert (=> d!876278 (= lt!1080414 e!1996693)))

(declare-fun c!537680 () Bool)

(assert (=> d!876278 (= c!537680 ((_ is Nil!36101) (++!8650 (list!12831 (charsOf!3222 (h!41523 tokens!494))) (list!12831 (charsOf!3222 separatorToken!241)))))))

(assert (=> d!876278 (= (++!8650 (++!8650 (list!12831 (charsOf!3222 (h!41523 tokens!494))) (list!12831 (charsOf!3222 separatorToken!241))) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 tokens!494) separatorToken!241)) lt!1080414)))

(declare-fun b!3202450 () Bool)

(assert (=> b!3202450 (= e!1996693 (Cons!36101 (h!41521 (++!8650 (list!12831 (charsOf!3222 (h!41523 tokens!494))) (list!12831 (charsOf!3222 separatorToken!241)))) (++!8650 (t!237476 (++!8650 (list!12831 (charsOf!3222 (h!41523 tokens!494))) (list!12831 (charsOf!3222 separatorToken!241)))) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 tokens!494) separatorToken!241))))))

(declare-fun b!3202452 () Bool)

(assert (=> b!3202452 (= e!1996692 (or (not (= (printWithSeparatorTokenList!140 thiss!18206 (t!237478 tokens!494) separatorToken!241) Nil!36101)) (= lt!1080414 (++!8650 (list!12831 (charsOf!3222 (h!41523 tokens!494))) (list!12831 (charsOf!3222 separatorToken!241))))))))

(declare-fun b!3202451 () Bool)

(declare-fun res!1303279 () Bool)

(assert (=> b!3202451 (=> (not res!1303279) (not e!1996692))))

(assert (=> b!3202451 (= res!1303279 (= (size!27191 lt!1080414) (+ (size!27191 (++!8650 (list!12831 (charsOf!3222 (h!41523 tokens!494))) (list!12831 (charsOf!3222 separatorToken!241)))) (size!27191 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 tokens!494) separatorToken!241)))))))

(declare-fun b!3202449 () Bool)

(assert (=> b!3202449 (= e!1996693 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 tokens!494) separatorToken!241))))

(assert (= (and d!876278 c!537680) b!3202449))

(assert (= (and d!876278 (not c!537680)) b!3202450))

(assert (= (and d!876278 res!1303278) b!3202451))

(assert (= (and b!3202451 res!1303279) b!3202452))

(declare-fun m!3465501 () Bool)

(assert (=> d!876278 m!3465501))

(assert (=> d!876278 m!3464657))

(declare-fun m!3465503 () Bool)

(assert (=> d!876278 m!3465503))

(assert (=> d!876278 m!3463481))

(declare-fun m!3465505 () Bool)

(assert (=> d!876278 m!3465505))

(assert (=> b!3202450 m!3463481))

(declare-fun m!3465507 () Bool)

(assert (=> b!3202450 m!3465507))

(declare-fun m!3465509 () Bool)

(assert (=> b!3202451 m!3465509))

(assert (=> b!3202451 m!3464657))

(declare-fun m!3465511 () Bool)

(assert (=> b!3202451 m!3465511))

(assert (=> b!3202451 m!3463481))

(declare-fun m!3465513 () Bool)

(assert (=> b!3202451 m!3465513))

(assert (=> b!3201872 d!876278))

(assert (=> b!3201872 d!875988))

(assert (=> b!3201872 d!876000))

(declare-fun d!876280 () Bool)

(declare-fun e!1996694 () Bool)

(assert (=> d!876280 e!1996694))

(declare-fun res!1303280 () Bool)

(assert (=> d!876280 (=> (not res!1303280) (not e!1996694))))

(declare-fun lt!1080415 () List!36225)

(assert (=> d!876280 (= res!1303280 (= (content!4877 lt!1080415) ((_ map or) (content!4877 (list!12831 (charsOf!3222 (h!41523 tokens!494)))) (content!4877 (list!12831 (charsOf!3222 separatorToken!241))))))))

(declare-fun e!1996695 () List!36225)

(assert (=> d!876280 (= lt!1080415 e!1996695)))

(declare-fun c!537681 () Bool)

(assert (=> d!876280 (= c!537681 ((_ is Nil!36101) (list!12831 (charsOf!3222 (h!41523 tokens!494)))))))

(assert (=> d!876280 (= (++!8650 (list!12831 (charsOf!3222 (h!41523 tokens!494))) (list!12831 (charsOf!3222 separatorToken!241))) lt!1080415)))

(declare-fun b!3202454 () Bool)

(assert (=> b!3202454 (= e!1996695 (Cons!36101 (h!41521 (list!12831 (charsOf!3222 (h!41523 tokens!494)))) (++!8650 (t!237476 (list!12831 (charsOf!3222 (h!41523 tokens!494)))) (list!12831 (charsOf!3222 separatorToken!241)))))))

(declare-fun b!3202456 () Bool)

(assert (=> b!3202456 (= e!1996694 (or (not (= (list!12831 (charsOf!3222 separatorToken!241)) Nil!36101)) (= lt!1080415 (list!12831 (charsOf!3222 (h!41523 tokens!494))))))))

(declare-fun b!3202455 () Bool)

(declare-fun res!1303281 () Bool)

(assert (=> b!3202455 (=> (not res!1303281) (not e!1996694))))

(assert (=> b!3202455 (= res!1303281 (= (size!27191 lt!1080415) (+ (size!27191 (list!12831 (charsOf!3222 (h!41523 tokens!494)))) (size!27191 (list!12831 (charsOf!3222 separatorToken!241))))))))

(declare-fun b!3202453 () Bool)

(assert (=> b!3202453 (= e!1996695 (list!12831 (charsOf!3222 separatorToken!241)))))

(assert (= (and d!876280 c!537681) b!3202453))

(assert (= (and d!876280 (not c!537681)) b!3202454))

(assert (= (and d!876280 res!1303280) b!3202455))

(assert (= (and b!3202455 res!1303281) b!3202456))

(declare-fun m!3465515 () Bool)

(assert (=> d!876280 m!3465515))

(assert (=> d!876280 m!3463563))

(declare-fun m!3465517 () Bool)

(assert (=> d!876280 m!3465517))

(assert (=> d!876280 m!3463489))

(declare-fun m!3465519 () Bool)

(assert (=> d!876280 m!3465519))

(assert (=> b!3202454 m!3463489))

(declare-fun m!3465521 () Bool)

(assert (=> b!3202454 m!3465521))

(declare-fun m!3465523 () Bool)

(assert (=> b!3202455 m!3465523))

(assert (=> b!3202455 m!3463563))

(declare-fun m!3465525 () Bool)

(assert (=> b!3202455 m!3465525))

(assert (=> b!3202455 m!3463489))

(declare-fun m!3465527 () Bool)

(assert (=> b!3202455 m!3465527))

(assert (=> b!3201872 d!876280))

(assert (=> b!3201872 d!875996))

(declare-fun d!876282 () Bool)

(declare-fun lt!1080416 () Int)

(assert (=> d!876282 (>= lt!1080416 0)))

(declare-fun e!1996696 () Int)

(assert (=> d!876282 (= lt!1080416 e!1996696)))

(declare-fun c!537682 () Bool)

(assert (=> d!876282 (= c!537682 ((_ is Nil!36101) lt!1080189))))

(assert (=> d!876282 (= (size!27191 lt!1080189) lt!1080416)))

(declare-fun b!3202457 () Bool)

(assert (=> b!3202457 (= e!1996696 0)))

(declare-fun b!3202458 () Bool)

(assert (=> b!3202458 (= e!1996696 (+ 1 (size!27191 (t!237476 lt!1080189))))))

(assert (= (and d!876282 c!537682) b!3202457))

(assert (= (and d!876282 (not c!537682)) b!3202458))

(declare-fun m!3465529 () Bool)

(assert (=> b!3202458 m!3465529))

(assert (=> b!3201906 d!876282))

(assert (=> b!3201906 d!875808))

(declare-fun d!876284 () Bool)

(declare-fun lt!1080417 () Int)

(assert (=> d!876284 (>= lt!1080417 0)))

(declare-fun e!1996697 () Int)

(assert (=> d!876284 (= lt!1080417 e!1996697)))

(declare-fun c!537683 () Bool)

(assert (=> d!876284 (= c!537683 ((_ is Nil!36101) lt!1079904))))

(assert (=> d!876284 (= (size!27191 lt!1079904) lt!1080417)))

(declare-fun b!3202459 () Bool)

(assert (=> b!3202459 (= e!1996697 0)))

(declare-fun b!3202460 () Bool)

(assert (=> b!3202460 (= e!1996697 (+ 1 (size!27191 (t!237476 lt!1079904))))))

(assert (= (and d!876284 c!537683) b!3202459))

(assert (= (and d!876284 (not c!537683)) b!3202460))

(declare-fun m!3465531 () Bool)

(assert (=> b!3202460 m!3465531))

(assert (=> b!3201906 d!876284))

(declare-fun d!876286 () Bool)

(declare-fun lt!1080422 () Bool)

(declare-fun content!4880 (List!36226) (InoxSet Rule!10212))

(assert (=> d!876286 (= lt!1080422 (select (content!4880 rules!2135) (get!11486 lt!1080151)))))

(declare-fun e!1996706 () Bool)

(assert (=> d!876286 (= lt!1080422 e!1996706)))

(declare-fun res!1303290 () Bool)

(assert (=> d!876286 (=> (not res!1303290) (not e!1996706))))

(assert (=> d!876286 (= res!1303290 ((_ is Cons!36102) rules!2135))))

(assert (=> d!876286 (= (contains!6427 rules!2135 (get!11486 lt!1080151)) lt!1080422)))

(declare-fun b!3202469 () Bool)

(declare-fun e!1996707 () Bool)

(assert (=> b!3202469 (= e!1996706 e!1996707)))

(declare-fun res!1303291 () Bool)

(assert (=> b!3202469 (=> res!1303291 e!1996707)))

(assert (=> b!3202469 (= res!1303291 (= (h!41522 rules!2135) (get!11486 lt!1080151)))))

(declare-fun b!3202470 () Bool)

(assert (=> b!3202470 (= e!1996707 (contains!6427 (t!237477 rules!2135) (get!11486 lt!1080151)))))

(assert (= (and d!876286 res!1303290) b!3202469))

(assert (= (and b!3202469 (not res!1303291)) b!3202470))

(declare-fun m!3465533 () Bool)

(assert (=> d!876286 m!3465533))

(assert (=> d!876286 m!3464501))

(declare-fun m!3465535 () Bool)

(assert (=> d!876286 m!3465535))

(assert (=> b!3202470 m!3464501))

(declare-fun m!3465537 () Bool)

(assert (=> b!3202470 m!3465537))

(assert (=> b!3201817 d!876286))

(declare-fun d!876288 () Bool)

(assert (=> d!876288 (= (get!11486 lt!1080151) (v!35636 lt!1080151))))

(assert (=> b!3201817 d!876288))

(declare-fun bs!540998 () Bool)

(declare-fun d!876290 () Bool)

(assert (= bs!540998 (and d!876290 b!3201187)))

(declare-fun lambda!117231 () Int)

(assert (=> bs!540998 (not (= lambda!117231 lambda!117202))))

(declare-fun bs!540999 () Bool)

(assert (= bs!540999 (and d!876290 b!3201181)))

(assert (=> bs!540999 (= lambda!117231 lambda!117203)))

(declare-fun bs!541000 () Bool)

(assert (= bs!541000 (and d!876290 d!875778)))

(assert (=> bs!541000 (= lambda!117231 lambda!117208)))

(declare-fun b!3202601 () Bool)

(declare-fun e!1996791 () Bool)

(assert (=> b!3202601 (= e!1996791 true)))

(declare-fun b!3202600 () Bool)

(declare-fun e!1996790 () Bool)

(assert (=> b!3202600 (= e!1996790 e!1996791)))

(declare-fun b!3202599 () Bool)

(declare-fun e!1996789 () Bool)

(assert (=> b!3202599 (= e!1996789 e!1996790)))

(assert (=> d!876290 e!1996789))

(assert (= b!3202600 b!3202601))

(assert (= b!3202599 b!3202600))

(assert (= (and d!876290 ((_ is Cons!36102) rules!2135)) b!3202599))

(assert (=> b!3202601 (< (dynLambda!14533 order!18349 (toValue!7282 (transformation!5206 (h!41522 rules!2135)))) (dynLambda!14534 order!18351 lambda!117231))))

(assert (=> b!3202601 (< (dynLambda!14535 order!18353 (toChars!7141 (transformation!5206 (h!41522 rules!2135)))) (dynLambda!14534 order!18351 lambda!117231))))

(assert (=> d!876290 true))

(declare-fun lt!1080484 () Bool)

(assert (=> d!876290 (= lt!1080484 (forall!7358 (list!12833 (seqFromList!3483 tokens!494)) lambda!117231))))

(declare-fun e!1996787 () Bool)

(assert (=> d!876290 (= lt!1080484 e!1996787)))

(declare-fun res!1303346 () Bool)

(assert (=> d!876290 (=> res!1303346 e!1996787)))

(assert (=> d!876290 (= res!1303346 (not ((_ is Cons!36103) (list!12833 (seqFromList!3483 tokens!494)))))))

(assert (=> d!876290 (not (isEmpty!20181 rules!2135))))

(assert (=> d!876290 (= (rulesProduceEachTokenIndividuallyList!1720 thiss!18206 rules!2135 (list!12833 (seqFromList!3483 tokens!494))) lt!1080484)))

(declare-fun b!3202597 () Bool)

(declare-fun e!1996788 () Bool)

(assert (=> b!3202597 (= e!1996787 e!1996788)))

(declare-fun res!1303345 () Bool)

(assert (=> b!3202597 (=> (not res!1303345) (not e!1996788))))

(assert (=> b!3202597 (= res!1303345 (rulesProduceIndividualToken!2287 thiss!18206 rules!2135 (h!41523 (list!12833 (seqFromList!3483 tokens!494)))))))

(declare-fun b!3202598 () Bool)

(assert (=> b!3202598 (= e!1996788 (rulesProduceEachTokenIndividuallyList!1720 thiss!18206 rules!2135 (t!237478 (list!12833 (seqFromList!3483 tokens!494)))))))

(assert (= (and d!876290 (not res!1303346)) b!3202597))

(assert (= (and b!3202597 res!1303345) b!3202598))

(assert (=> d!876290 m!3463901))

(declare-fun m!3465813 () Bool)

(assert (=> d!876290 m!3465813))

(assert (=> d!876290 m!3463625))

(declare-fun m!3465815 () Bool)

(assert (=> b!3202597 m!3465815))

(declare-fun m!3465817 () Bool)

(assert (=> b!3202598 m!3465817))

(assert (=> b!3201407 d!876290))

(declare-fun d!876398 () Bool)

(assert (=> d!876398 (= (list!12833 (seqFromList!3483 tokens!494)) (list!12837 (c!537388 (seqFromList!3483 tokens!494))))))

(declare-fun bs!541001 () Bool)

(assert (= bs!541001 d!876398))

(declare-fun m!3465819 () Bool)

(assert (=> bs!541001 m!3465819))

(assert (=> b!3201407 d!876398))

(declare-fun d!876400 () Bool)

(declare-fun lt!1080485 () Int)

(assert (=> d!876400 (= lt!1080485 (size!27196 (list!12833 (_1!20873 lt!1080166))))))

(assert (=> d!876400 (= lt!1080485 (size!27197 (c!537388 (_1!20873 lt!1080166))))))

(assert (=> d!876400 (= (size!27190 (_1!20873 lt!1080166)) lt!1080485)))

(declare-fun bs!541002 () Bool)

(assert (= bs!541002 d!876400))

(assert (=> bs!541002 m!3464587))

(assert (=> bs!541002 m!3464587))

(declare-fun m!3465821 () Bool)

(assert (=> bs!541002 m!3465821))

(declare-fun m!3465823 () Bool)

(assert (=> bs!541002 m!3465823))

(assert (=> d!875970 d!876400))

(declare-fun b!3202639 () Bool)

(declare-datatypes ((tuple2!35490 0))(
  ( (tuple2!35491 (_1!20879 Token!9778) (_2!20879 BalanceConc!21188)) )
))
(declare-datatypes ((Option!7109 0))(
  ( (None!7108) (Some!7108 (v!35648 tuple2!35490)) )
))
(declare-fun lt!1080645 () Option!7109)

(declare-fun lt!1080635 () tuple2!35478)

(declare-fun lexRec!682 (LexerInterface!4795 List!36226 BalanceConc!21188) tuple2!35478)

(assert (=> b!3202639 (= lt!1080635 (lexRec!682 thiss!18206 rules!2135 (_2!20879 (v!35648 lt!1080645))))))

(declare-fun e!1996818 () tuple2!35478)

(declare-fun prepend!1170 (BalanceConc!21190 Token!9778) BalanceConc!21190)

(assert (=> b!3202639 (= e!1996818 (tuple2!35479 (prepend!1170 (_1!20873 lt!1080635) (_1!20879 (v!35648 lt!1080645))) (_2!20873 lt!1080635)))))

(declare-fun d!876402 () Bool)

(declare-fun e!1996815 () Bool)

(assert (=> d!876402 e!1996815))

(declare-fun res!1303356 () Bool)

(assert (=> d!876402 (=> (not res!1303356) (not e!1996815))))

(declare-fun lt!1080629 () tuple2!35478)

(assert (=> d!876402 (= res!1303356 (= (list!12833 (_1!20873 lt!1080629)) (list!12833 (_1!20873 (lexRec!682 thiss!18206 rules!2135 lt!1079881)))))))

(declare-fun e!1996816 () tuple2!35478)

(assert (=> d!876402 (= lt!1080629 e!1996816)))

(declare-fun c!537730 () Bool)

(declare-fun lt!1080630 () Option!7109)

(assert (=> d!876402 (= c!537730 ((_ is Some!7108) lt!1080630))))

(declare-fun maxPrefixZipperSequenceV2!469 (LexerInterface!4795 List!36226 BalanceConc!21188 BalanceConc!21188) Option!7109)

(assert (=> d!876402 (= lt!1080630 (maxPrefixZipperSequenceV2!469 thiss!18206 rules!2135 lt!1079881 lt!1079881))))

(declare-fun lt!1080644 () Unit!50516)

(declare-fun lt!1080641 () Unit!50516)

(assert (=> d!876402 (= lt!1080644 lt!1080641)))

(declare-fun lt!1080650 () List!36225)

(declare-fun lt!1080653 () List!36225)

(declare-fun isSuffix!844 (List!36225 List!36225) Bool)

(assert (=> d!876402 (isSuffix!844 lt!1080650 (++!8650 lt!1080653 lt!1080650))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!529 (List!36225 List!36225) Unit!50516)

(assert (=> d!876402 (= lt!1080641 (lemmaConcatTwoListThenFSndIsSuffix!529 lt!1080653 lt!1080650))))

(assert (=> d!876402 (= lt!1080650 (list!12831 lt!1079881))))

(assert (=> d!876402 (= lt!1080653 (list!12831 (BalanceConc!21189 Empty!10787)))))

(assert (=> d!876402 (= (lexTailRecV2!929 thiss!18206 rules!2135 lt!1079881 (BalanceConc!21189 Empty!10787) lt!1079881 (BalanceConc!21191 Empty!10788)) lt!1080629)))

(declare-fun b!3202640 () Bool)

(assert (=> b!3202640 (= e!1996816 (tuple2!35479 (BalanceConc!21191 Empty!10788) lt!1079881))))

(declare-fun b!3202641 () Bool)

(declare-fun lt!1080633 () BalanceConc!21188)

(declare-fun append!862 (BalanceConc!21190 Token!9778) BalanceConc!21190)

(assert (=> b!3202641 (= e!1996816 (lexTailRecV2!929 thiss!18206 rules!2135 lt!1079881 lt!1080633 (_2!20879 (v!35648 lt!1080630)) (append!862 (BalanceConc!21191 Empty!10788) (_1!20879 (v!35648 lt!1080630)))))))

(declare-fun lt!1080656 () tuple2!35478)

(assert (=> b!3202641 (= lt!1080656 (lexRec!682 thiss!18206 rules!2135 (_2!20879 (v!35648 lt!1080630))))))

(declare-fun lt!1080639 () List!36225)

(assert (=> b!3202641 (= lt!1080639 (list!12831 (BalanceConc!21189 Empty!10787)))))

(declare-fun lt!1080634 () List!36225)

(assert (=> b!3202641 (= lt!1080634 (list!12831 (charsOf!3222 (_1!20879 (v!35648 lt!1080630)))))))

(declare-fun lt!1080643 () List!36225)

(assert (=> b!3202641 (= lt!1080643 (list!12831 (_2!20879 (v!35648 lt!1080630))))))

(declare-fun lt!1080625 () Unit!50516)

(assert (=> b!3202641 (= lt!1080625 (lemmaConcatAssociativity!1724 lt!1080639 lt!1080634 lt!1080643))))

(assert (=> b!3202641 (= (++!8650 (++!8650 lt!1080639 lt!1080634) lt!1080643) (++!8650 lt!1080639 (++!8650 lt!1080634 lt!1080643)))))

(declare-fun lt!1080654 () Unit!50516)

(assert (=> b!3202641 (= lt!1080654 lt!1080625)))

(declare-fun maxPrefixZipperSequence!1075 (LexerInterface!4795 List!36226 BalanceConc!21188) Option!7109)

(assert (=> b!3202641 (= lt!1080645 (maxPrefixZipperSequence!1075 thiss!18206 rules!2135 lt!1079881))))

(declare-fun c!537732 () Bool)

(assert (=> b!3202641 (= c!537732 ((_ is Some!7108) lt!1080645))))

(assert (=> b!3202641 (= (lexRec!682 thiss!18206 rules!2135 lt!1079881) e!1996818)))

(declare-fun lt!1080640 () Unit!50516)

(declare-fun Unit!50523 () Unit!50516)

(assert (=> b!3202641 (= lt!1080640 Unit!50523)))

(declare-fun lt!1080655 () List!36227)

(assert (=> b!3202641 (= lt!1080655 (list!12833 (BalanceConc!21191 Empty!10788)))))

(declare-fun lt!1080647 () List!36227)

(assert (=> b!3202641 (= lt!1080647 (Cons!36103 (_1!20879 (v!35648 lt!1080630)) Nil!36103))))

(declare-fun lt!1080648 () List!36227)

(assert (=> b!3202641 (= lt!1080648 (list!12833 (_1!20873 lt!1080656)))))

(declare-fun lt!1080637 () Unit!50516)

(declare-fun lemmaConcatAssociativity!1725 (List!36227 List!36227 List!36227) Unit!50516)

(assert (=> b!3202641 (= lt!1080637 (lemmaConcatAssociativity!1725 lt!1080655 lt!1080647 lt!1080648))))

(declare-fun ++!8655 (List!36227 List!36227) List!36227)

(assert (=> b!3202641 (= (++!8655 (++!8655 lt!1080655 lt!1080647) lt!1080648) (++!8655 lt!1080655 (++!8655 lt!1080647 lt!1080648)))))

(declare-fun lt!1080628 () Unit!50516)

(assert (=> b!3202641 (= lt!1080628 lt!1080637)))

(declare-fun lt!1080632 () List!36225)

(assert (=> b!3202641 (= lt!1080632 (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) (list!12831 (charsOf!3222 (_1!20879 (v!35648 lt!1080630))))))))

(declare-fun lt!1080646 () List!36225)

(assert (=> b!3202641 (= lt!1080646 (list!12831 (_2!20879 (v!35648 lt!1080630))))))

(declare-fun lt!1080651 () List!36227)

(assert (=> b!3202641 (= lt!1080651 (list!12833 (append!862 (BalanceConc!21191 Empty!10788) (_1!20879 (v!35648 lt!1080630)))))))

(declare-fun lt!1080657 () Unit!50516)

(declare-fun lemmaLexThenLexPrefix!447 (LexerInterface!4795 List!36226 List!36225 List!36225 List!36227 List!36227 List!36225) Unit!50516)

(assert (=> b!3202641 (= lt!1080657 (lemmaLexThenLexPrefix!447 thiss!18206 rules!2135 lt!1080632 lt!1080646 lt!1080651 (list!12833 (_1!20873 lt!1080656)) (list!12831 (_2!20873 lt!1080656))))))

(assert (=> b!3202641 (= (lexList!1309 thiss!18206 rules!2135 lt!1080632) (tuple2!35489 lt!1080651 Nil!36101))))

(declare-fun lt!1080626 () Unit!50516)

(assert (=> b!3202641 (= lt!1080626 lt!1080657)))

(declare-fun lt!1080638 () BalanceConc!21188)

(assert (=> b!3202641 (= lt!1080638 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (_1!20879 (v!35648 lt!1080630)))))))

(declare-fun lt!1080636 () Option!7109)

(assert (=> b!3202641 (= lt!1080636 (maxPrefixZipperSequence!1075 thiss!18206 rules!2135 lt!1080638))))

(declare-fun c!537731 () Bool)

(assert (=> b!3202641 (= c!537731 ((_ is Some!7108) lt!1080636))))

(declare-fun e!1996817 () tuple2!35478)

(assert (=> b!3202641 (= (lexRec!682 thiss!18206 rules!2135 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (_1!20879 (v!35648 lt!1080630))))) e!1996817)))

(declare-fun lt!1080642 () Unit!50516)

(declare-fun Unit!50524 () Unit!50516)

(assert (=> b!3202641 (= lt!1080642 Unit!50524)))

(assert (=> b!3202641 (= lt!1080633 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (_1!20879 (v!35648 lt!1080630)))))))

(declare-fun lt!1080624 () List!36225)

(assert (=> b!3202641 (= lt!1080624 (list!12831 lt!1080633))))

(declare-fun lt!1080652 () List!36225)

(assert (=> b!3202641 (= lt!1080652 (list!12831 (_2!20879 (v!35648 lt!1080630))))))

(declare-fun lt!1080631 () Unit!50516)

(assert (=> b!3202641 (= lt!1080631 (lemmaConcatTwoListThenFSndIsSuffix!529 lt!1080624 lt!1080652))))

(assert (=> b!3202641 (isSuffix!844 lt!1080652 (++!8650 lt!1080624 lt!1080652))))

(declare-fun lt!1080627 () Unit!50516)

(assert (=> b!3202641 (= lt!1080627 lt!1080631)))

(declare-fun b!3202642 () Bool)

(assert (=> b!3202642 (= e!1996818 (tuple2!35479 (BalanceConc!21191 Empty!10788) lt!1079881))))

(declare-fun b!3202643 () Bool)

(declare-fun lt!1080649 () tuple2!35478)

(assert (=> b!3202643 (= lt!1080649 (lexRec!682 thiss!18206 rules!2135 (_2!20879 (v!35648 lt!1080636))))))

(assert (=> b!3202643 (= e!1996817 (tuple2!35479 (prepend!1170 (_1!20873 lt!1080649) (_1!20879 (v!35648 lt!1080636))) (_2!20873 lt!1080649)))))

(declare-fun b!3202644 () Bool)

(assert (=> b!3202644 (= e!1996815 (= (list!12831 (_2!20873 lt!1080629)) (list!12831 (_2!20873 (lexRec!682 thiss!18206 rules!2135 lt!1079881)))))))

(declare-fun b!3202645 () Bool)

(assert (=> b!3202645 (= e!1996817 (tuple2!35479 (BalanceConc!21191 Empty!10788) lt!1080638))))

(assert (= (and d!876402 c!537730) b!3202641))

(assert (= (and d!876402 (not c!537730)) b!3202640))

(assert (= (and b!3202641 c!537732) b!3202639))

(assert (= (and b!3202641 (not c!537732)) b!3202642))

(assert (= (and b!3202641 c!537731) b!3202643))

(assert (= (and b!3202641 (not c!537731)) b!3202645))

(assert (= (and d!876402 res!1303356) b!3202644))

(declare-fun m!3465841 () Bool)

(assert (=> b!3202643 m!3465841))

(declare-fun m!3465843 () Bool)

(assert (=> b!3202643 m!3465843))

(declare-fun m!3465845 () Bool)

(assert (=> b!3202639 m!3465845))

(declare-fun m!3465847 () Bool)

(assert (=> b!3202639 m!3465847))

(declare-fun m!3465849 () Bool)

(assert (=> d!876402 m!3465849))

(assert (=> d!876402 m!3463751))

(declare-fun m!3465851 () Bool)

(assert (=> d!876402 m!3465851))

(declare-fun m!3465853 () Bool)

(assert (=> d!876402 m!3465853))

(assert (=> d!876402 m!3465849))

(declare-fun m!3465855 () Bool)

(assert (=> d!876402 m!3465855))

(declare-fun m!3465857 () Bool)

(assert (=> d!876402 m!3465857))

(assert (=> d!876402 m!3464589))

(declare-fun m!3465859 () Bool)

(assert (=> d!876402 m!3465859))

(declare-fun m!3465861 () Bool)

(assert (=> d!876402 m!3465861))

(declare-fun m!3465863 () Bool)

(assert (=> b!3202641 m!3465863))

(declare-fun m!3465865 () Bool)

(assert (=> b!3202641 m!3465865))

(declare-fun m!3465867 () Bool)

(assert (=> b!3202641 m!3465867))

(declare-fun m!3465869 () Bool)

(assert (=> b!3202641 m!3465869))

(declare-fun m!3465871 () Bool)

(assert (=> b!3202641 m!3465871))

(declare-fun m!3465873 () Bool)

(assert (=> b!3202641 m!3465873))

(declare-fun m!3465875 () Bool)

(assert (=> b!3202641 m!3465875))

(declare-fun m!3465877 () Bool)

(assert (=> b!3202641 m!3465877))

(declare-fun m!3465879 () Bool)

(assert (=> b!3202641 m!3465879))

(assert (=> b!3202641 m!3465875))

(declare-fun m!3465881 () Bool)

(assert (=> b!3202641 m!3465881))

(declare-fun m!3465883 () Bool)

(assert (=> b!3202641 m!3465883))

(declare-fun m!3465885 () Bool)

(assert (=> b!3202641 m!3465885))

(assert (=> b!3202641 m!3465853))

(declare-fun m!3465887 () Bool)

(assert (=> b!3202641 m!3465887))

(declare-fun m!3465889 () Bool)

(assert (=> b!3202641 m!3465889))

(assert (=> b!3202641 m!3465879))

(declare-fun m!3465891 () Bool)

(assert (=> b!3202641 m!3465891))

(assert (=> b!3202641 m!3465889))

(declare-fun m!3465893 () Bool)

(assert (=> b!3202641 m!3465893))

(assert (=> b!3202641 m!3465863))

(declare-fun m!3465895 () Bool)

(assert (=> b!3202641 m!3465895))

(declare-fun m!3465897 () Bool)

(assert (=> b!3202641 m!3465897))

(declare-fun m!3465899 () Bool)

(assert (=> b!3202641 m!3465899))

(assert (=> b!3202641 m!3465879))

(declare-fun m!3465901 () Bool)

(assert (=> b!3202641 m!3465901))

(assert (=> b!3202641 m!3463751))

(assert (=> b!3202641 m!3465873))

(declare-fun m!3465903 () Bool)

(assert (=> b!3202641 m!3465903))

(assert (=> b!3202641 m!3465871))

(declare-fun m!3465905 () Bool)

(assert (=> b!3202641 m!3465905))

(assert (=> b!3202641 m!3465905))

(declare-fun m!3465907 () Bool)

(assert (=> b!3202641 m!3465907))

(declare-fun m!3465909 () Bool)

(assert (=> b!3202641 m!3465909))

(assert (=> b!3202641 m!3463751))

(assert (=> b!3202641 m!3465883))

(declare-fun m!3465911 () Bool)

(assert (=> b!3202641 m!3465911))

(declare-fun m!3465913 () Bool)

(assert (=> b!3202641 m!3465913))

(assert (=> b!3202641 m!3465871))

(declare-fun m!3465915 () Bool)

(assert (=> b!3202641 m!3465915))

(declare-fun m!3465917 () Bool)

(assert (=> b!3202641 m!3465917))

(assert (=> b!3202641 m!3465867))

(declare-fun m!3465919 () Bool)

(assert (=> b!3202641 m!3465919))

(declare-fun m!3465921 () Bool)

(assert (=> b!3202641 m!3465921))

(assert (=> b!3202641 m!3465865))

(assert (=> b!3202641 m!3465909))

(declare-fun m!3465923 () Bool)

(assert (=> b!3202641 m!3465923))

(declare-fun m!3465925 () Bool)

(assert (=> b!3202644 m!3465925))

(assert (=> b!3202644 m!3465853))

(declare-fun m!3465927 () Bool)

(assert (=> b!3202644 m!3465927))

(assert (=> d!875970 d!876402))

(declare-fun bm!231837 () Bool)

(declare-fun call!231842 () Bool)

(assert (=> bm!231837 (= call!231842 (isEmpty!20186 (tail!5205 lt!1079879)))))

(declare-fun b!3202653 () Bool)

(declare-fun res!1303363 () Bool)

(declare-fun e!1996823 () Bool)

(assert (=> b!3202653 (=> res!1303363 e!1996823)))

(assert (=> b!3202653 (= res!1303363 (not (isEmpty!20186 (tail!5205 (tail!5205 lt!1079879)))))))

(declare-fun b!3202654 () Bool)

(declare-fun e!1996827 () Bool)

(assert (=> b!3202654 (= e!1996827 (nullable!3394 (derivativeStep!2947 (regex!5206 lt!1079905) (head!7021 lt!1079879))))))

(declare-fun d!876414 () Bool)

(declare-fun e!1996825 () Bool)

(assert (=> d!876414 e!1996825))

(declare-fun c!537736 () Bool)

(assert (=> d!876414 (= c!537736 ((_ is EmptyExpr!9965) (derivativeStep!2947 (regex!5206 lt!1079905) (head!7021 lt!1079879))))))

(declare-fun lt!1080692 () Bool)

(assert (=> d!876414 (= lt!1080692 e!1996827)))

(declare-fun c!537737 () Bool)

(assert (=> d!876414 (= c!537737 (isEmpty!20186 (tail!5205 lt!1079879)))))

(assert (=> d!876414 (validRegex!4548 (derivativeStep!2947 (regex!5206 lt!1079905) (head!7021 lt!1079879)))))

(assert (=> d!876414 (= (matchR!4599 (derivativeStep!2947 (regex!5206 lt!1079905) (head!7021 lt!1079879)) (tail!5205 lt!1079879)) lt!1080692)))

(declare-fun b!3202655 () Bool)

(declare-fun e!1996824 () Bool)

(declare-fun e!1996829 () Bool)

(assert (=> b!3202655 (= e!1996824 e!1996829)))

(declare-fun res!1303358 () Bool)

(assert (=> b!3202655 (=> (not res!1303358) (not e!1996829))))

(assert (=> b!3202655 (= res!1303358 (not lt!1080692))))

(declare-fun b!3202656 () Bool)

(declare-fun e!1996828 () Bool)

(assert (=> b!3202656 (= e!1996828 (= (head!7021 (tail!5205 lt!1079879)) (c!537386 (derivativeStep!2947 (regex!5206 lt!1079905) (head!7021 lt!1079879)))))))

(declare-fun b!3202657 () Bool)

(declare-fun res!1303360 () Bool)

(assert (=> b!3202657 (=> (not res!1303360) (not e!1996828))))

(assert (=> b!3202657 (= res!1303360 (isEmpty!20186 (tail!5205 (tail!5205 lt!1079879))))))

(declare-fun b!3202658 () Bool)

(assert (=> b!3202658 (= e!1996827 (matchR!4599 (derivativeStep!2947 (derivativeStep!2947 (regex!5206 lt!1079905) (head!7021 lt!1079879)) (head!7021 (tail!5205 lt!1079879))) (tail!5205 (tail!5205 lt!1079879))))))

(declare-fun b!3202659 () Bool)

(declare-fun res!1303361 () Bool)

(assert (=> b!3202659 (=> res!1303361 e!1996824)))

(assert (=> b!3202659 (= res!1303361 e!1996828)))

(declare-fun res!1303362 () Bool)

(assert (=> b!3202659 (=> (not res!1303362) (not e!1996828))))

(assert (=> b!3202659 (= res!1303362 lt!1080692)))

(declare-fun b!3202660 () Bool)

(assert (=> b!3202660 (= e!1996829 e!1996823)))

(declare-fun res!1303359 () Bool)

(assert (=> b!3202660 (=> res!1303359 e!1996823)))

(assert (=> b!3202660 (= res!1303359 call!231842)))

(declare-fun b!3202661 () Bool)

(declare-fun e!1996826 () Bool)

(assert (=> b!3202661 (= e!1996825 e!1996826)))

(declare-fun c!537738 () Bool)

(assert (=> b!3202661 (= c!537738 ((_ is EmptyLang!9965) (derivativeStep!2947 (regex!5206 lt!1079905) (head!7021 lt!1079879))))))

(declare-fun b!3202662 () Bool)

(assert (=> b!3202662 (= e!1996826 (not lt!1080692))))

(declare-fun b!3202663 () Bool)

(assert (=> b!3202663 (= e!1996825 (= lt!1080692 call!231842))))

(declare-fun b!3202664 () Bool)

(declare-fun res!1303364 () Bool)

(assert (=> b!3202664 (=> res!1303364 e!1996824)))

(assert (=> b!3202664 (= res!1303364 (not ((_ is ElementMatch!9965) (derivativeStep!2947 (regex!5206 lt!1079905) (head!7021 lt!1079879)))))))

(assert (=> b!3202664 (= e!1996826 e!1996824)))

(declare-fun b!3202665 () Bool)

(declare-fun res!1303365 () Bool)

(assert (=> b!3202665 (=> (not res!1303365) (not e!1996828))))

(assert (=> b!3202665 (= res!1303365 (not call!231842))))

(declare-fun b!3202666 () Bool)

(assert (=> b!3202666 (= e!1996823 (not (= (head!7021 (tail!5205 lt!1079879)) (c!537386 (derivativeStep!2947 (regex!5206 lt!1079905) (head!7021 lt!1079879))))))))

(assert (= (and d!876414 c!537737) b!3202654))

(assert (= (and d!876414 (not c!537737)) b!3202658))

(assert (= (and d!876414 c!537736) b!3202663))

(assert (= (and d!876414 (not c!537736)) b!3202661))

(assert (= (and b!3202661 c!537738) b!3202662))

(assert (= (and b!3202661 (not c!537738)) b!3202664))

(assert (= (and b!3202664 (not res!1303364)) b!3202659))

(assert (= (and b!3202659 res!1303362) b!3202665))

(assert (= (and b!3202665 res!1303365) b!3202657))

(assert (= (and b!3202657 res!1303360) b!3202656))

(assert (= (and b!3202659 (not res!1303361)) b!3202655))

(assert (= (and b!3202655 res!1303358) b!3202660))

(assert (= (and b!3202660 (not res!1303359)) b!3202653))

(assert (= (and b!3202653 (not res!1303363)) b!3202666))

(assert (= (or b!3202663 b!3202660 b!3202665) bm!231837))

(assert (=> b!3202666 m!3463921))

(declare-fun m!3465939 () Bool)

(assert (=> b!3202666 m!3465939))

(assert (=> b!3202658 m!3463921))

(assert (=> b!3202658 m!3465939))

(assert (=> b!3202658 m!3463919))

(assert (=> b!3202658 m!3465939))

(declare-fun m!3465943 () Bool)

(assert (=> b!3202658 m!3465943))

(assert (=> b!3202658 m!3463921))

(declare-fun m!3465945 () Bool)

(assert (=> b!3202658 m!3465945))

(assert (=> b!3202658 m!3465943))

(assert (=> b!3202658 m!3465945))

(declare-fun m!3465953 () Bool)

(assert (=> b!3202658 m!3465953))

(assert (=> b!3202657 m!3463921))

(assert (=> b!3202657 m!3465945))

(assert (=> b!3202657 m!3465945))

(declare-fun m!3465957 () Bool)

(assert (=> b!3202657 m!3465957))

(assert (=> d!876414 m!3463921))

(assert (=> d!876414 m!3463925))

(assert (=> d!876414 m!3463919))

(declare-fun m!3465961 () Bool)

(assert (=> d!876414 m!3465961))

(assert (=> b!3202653 m!3463921))

(assert (=> b!3202653 m!3465945))

(assert (=> b!3202653 m!3465945))

(assert (=> b!3202653 m!3465957))

(assert (=> bm!231837 m!3463921))

(assert (=> bm!231837 m!3463925))

(assert (=> b!3202656 m!3463921))

(assert (=> b!3202656 m!3465939))

(assert (=> b!3202654 m!3463919))

(declare-fun m!3465971 () Bool)

(assert (=> b!3202654 m!3465971))

(assert (=> b!3201459 d!876414))

(declare-fun b!3202703 () Bool)

(declare-fun c!537757 () Bool)

(assert (=> b!3202703 (= c!537757 (nullable!3394 (regOne!20442 (regex!5206 lt!1079905))))))

(declare-fun e!1996852 () Regex!9965)

(declare-fun e!1996851 () Regex!9965)

(assert (=> b!3202703 (= e!1996852 e!1996851)))

(declare-fun b!3202704 () Bool)

(declare-fun call!231854 () Regex!9965)

(assert (=> b!3202704 (= e!1996852 (Concat!15401 call!231854 (regex!5206 lt!1079905)))))

(declare-fun b!3202705 () Bool)

(declare-fun e!1996849 () Regex!9965)

(declare-fun e!1996850 () Regex!9965)

(assert (=> b!3202705 (= e!1996849 e!1996850)))

(declare-fun c!537756 () Bool)

(assert (=> b!3202705 (= c!537756 ((_ is ElementMatch!9965) (regex!5206 lt!1079905)))))

(declare-fun call!231852 () Regex!9965)

(declare-fun c!537758 () Bool)

(declare-fun bm!231846 () Bool)

(assert (=> bm!231846 (= call!231852 (derivativeStep!2947 (ite c!537758 (regTwo!20443 (regex!5206 lt!1079905)) (regTwo!20442 (regex!5206 lt!1079905))) (head!7021 lt!1079879)))))

(declare-fun b!3202706 () Bool)

(assert (=> b!3202706 (= e!1996849 EmptyLang!9965)))

(declare-fun b!3202707 () Bool)

(declare-fun call!231853 () Regex!9965)

(assert (=> b!3202707 (= e!1996851 (Union!9965 (Concat!15401 call!231853 (regTwo!20442 (regex!5206 lt!1079905))) call!231852))))

(declare-fun d!876416 () Bool)

(declare-fun lt!1080695 () Regex!9965)

(assert (=> d!876416 (validRegex!4548 lt!1080695)))

(assert (=> d!876416 (= lt!1080695 e!1996849)))

(declare-fun c!537754 () Bool)

(assert (=> d!876416 (= c!537754 (or ((_ is EmptyExpr!9965) (regex!5206 lt!1079905)) ((_ is EmptyLang!9965) (regex!5206 lt!1079905))))))

(assert (=> d!876416 (validRegex!4548 (regex!5206 lt!1079905))))

(assert (=> d!876416 (= (derivativeStep!2947 (regex!5206 lt!1079905) (head!7021 lt!1079879)) lt!1080695)))

(declare-fun b!3202708 () Bool)

(declare-fun e!1996848 () Regex!9965)

(declare-fun call!231851 () Regex!9965)

(assert (=> b!3202708 (= e!1996848 (Union!9965 call!231851 call!231852))))

(declare-fun b!3202709 () Bool)

(assert (=> b!3202709 (= c!537758 ((_ is Union!9965) (regex!5206 lt!1079905)))))

(assert (=> b!3202709 (= e!1996850 e!1996848)))

(declare-fun bm!231847 () Bool)

(assert (=> bm!231847 (= call!231854 call!231851)))

(declare-fun b!3202710 () Bool)

(assert (=> b!3202710 (= e!1996848 e!1996852)))

(declare-fun c!537755 () Bool)

(assert (=> b!3202710 (= c!537755 ((_ is Star!9965) (regex!5206 lt!1079905)))))

(declare-fun bm!231848 () Bool)

(assert (=> bm!231848 (= call!231853 call!231854)))

(declare-fun b!3202711 () Bool)

(assert (=> b!3202711 (= e!1996851 (Union!9965 (Concat!15401 call!231853 (regTwo!20442 (regex!5206 lt!1079905))) EmptyLang!9965))))

(declare-fun bm!231849 () Bool)

(assert (=> bm!231849 (= call!231851 (derivativeStep!2947 (ite c!537758 (regOne!20443 (regex!5206 lt!1079905)) (ite c!537755 (reg!10294 (regex!5206 lt!1079905)) (regOne!20442 (regex!5206 lt!1079905)))) (head!7021 lt!1079879)))))

(declare-fun b!3202712 () Bool)

(assert (=> b!3202712 (= e!1996850 (ite (= (head!7021 lt!1079879) (c!537386 (regex!5206 lt!1079905))) EmptyExpr!9965 EmptyLang!9965))))

(assert (= (and d!876416 c!537754) b!3202706))

(assert (= (and d!876416 (not c!537754)) b!3202705))

(assert (= (and b!3202705 c!537756) b!3202712))

(assert (= (and b!3202705 (not c!537756)) b!3202709))

(assert (= (and b!3202709 c!537758) b!3202708))

(assert (= (and b!3202709 (not c!537758)) b!3202710))

(assert (= (and b!3202710 c!537755) b!3202704))

(assert (= (and b!3202710 (not c!537755)) b!3202703))

(assert (= (and b!3202703 c!537757) b!3202707))

(assert (= (and b!3202703 (not c!537757)) b!3202711))

(assert (= (or b!3202707 b!3202711) bm!231848))

(assert (= (or b!3202704 bm!231848) bm!231847))

(assert (= (or b!3202708 bm!231847) bm!231849))

(assert (= (or b!3202708 b!3202707) bm!231846))

(declare-fun m!3466049 () Bool)

(assert (=> b!3202703 m!3466049))

(assert (=> bm!231846 m!3463917))

(declare-fun m!3466051 () Bool)

(assert (=> bm!231846 m!3466051))

(declare-fun m!3466053 () Bool)

(assert (=> d!876416 m!3466053))

(assert (=> d!876416 m!3463929))

(assert (=> bm!231849 m!3463917))

(declare-fun m!3466055 () Bool)

(assert (=> bm!231849 m!3466055))

(assert (=> b!3201459 d!876416))

(assert (=> b!3201459 d!876192))

(assert (=> b!3201459 d!876256))

(declare-fun d!876432 () Bool)

(declare-fun res!1303373 () Bool)

(declare-fun e!1996856 () Bool)

(assert (=> d!876432 (=> res!1303373 e!1996856)))

(assert (=> d!876432 (= res!1303373 ((_ is Nil!36103) (list!12833 (seqFromList!3483 tokens!494))))))

(assert (=> d!876432 (= (forall!7358 (list!12833 (seqFromList!3483 tokens!494)) lambda!117208) e!1996856)))

(declare-fun b!3202718 () Bool)

(declare-fun e!1996857 () Bool)

(assert (=> b!3202718 (= e!1996856 e!1996857)))

(declare-fun res!1303374 () Bool)

(assert (=> b!3202718 (=> (not res!1303374) (not e!1996857))))

(assert (=> b!3202718 (= res!1303374 (dynLambda!14538 lambda!117208 (h!41523 (list!12833 (seqFromList!3483 tokens!494)))))))

(declare-fun b!3202719 () Bool)

(assert (=> b!3202719 (= e!1996857 (forall!7358 (t!237478 (list!12833 (seqFromList!3483 tokens!494))) lambda!117208))))

(assert (= (and d!876432 (not res!1303373)) b!3202718))

(assert (= (and b!3202718 res!1303374) b!3202719))

(declare-fun b_lambda!87587 () Bool)

(assert (=> (not b_lambda!87587) (not b!3202718)))

(declare-fun m!3466063 () Bool)

(assert (=> b!3202718 m!3466063))

(declare-fun m!3466065 () Bool)

(assert (=> b!3202719 m!3466065))

(assert (=> d!875778 d!876432))

(assert (=> d!875778 d!876398))

(declare-fun d!876442 () Bool)

(declare-fun lt!1080701 () Bool)

(assert (=> d!876442 (= lt!1080701 (forall!7358 (list!12833 (seqFromList!3483 tokens!494)) lambda!117208))))

(declare-fun forall!7362 (Conc!10788 Int) Bool)

(assert (=> d!876442 (= lt!1080701 (forall!7362 (c!537388 (seqFromList!3483 tokens!494)) lambda!117208))))

(assert (=> d!876442 (= (forall!7359 (seqFromList!3483 tokens!494) lambda!117208) lt!1080701)))

(declare-fun bs!541009 () Bool)

(assert (= bs!541009 d!876442))

(assert (=> bs!541009 m!3463557))

(assert (=> bs!541009 m!3463901))

(assert (=> bs!541009 m!3463901))

(assert (=> bs!541009 m!3463903))

(declare-fun m!3466077 () Bool)

(assert (=> bs!541009 m!3466077))

(assert (=> d!875778 d!876442))

(assert (=> d!875778 d!876060))

(assert (=> b!3201930 d!875960))

(declare-fun d!876448 () Bool)

(declare-fun c!537762 () Bool)

(assert (=> d!876448 (= c!537762 ((_ is IntegerValue!16308) (value!168831 (h!41523 (t!237478 tokens!494)))))))

(declare-fun e!1996860 () Bool)

(assert (=> d!876448 (= (inv!21 (value!168831 (h!41523 (t!237478 tokens!494)))) e!1996860)))

(declare-fun b!3202722 () Bool)

(declare-fun res!1303375 () Bool)

(declare-fun e!1996861 () Bool)

(assert (=> b!3202722 (=> res!1303375 e!1996861)))

(assert (=> b!3202722 (= res!1303375 (not ((_ is IntegerValue!16310) (value!168831 (h!41523 (t!237478 tokens!494))))))))

(declare-fun e!1996859 () Bool)

(assert (=> b!3202722 (= e!1996859 e!1996861)))

(declare-fun b!3202723 () Bool)

(assert (=> b!3202723 (= e!1996860 (inv!16 (value!168831 (h!41523 (t!237478 tokens!494)))))))

(declare-fun b!3202726 () Bool)

(assert (=> b!3202726 (= e!1996861 (inv!15 (value!168831 (h!41523 (t!237478 tokens!494)))))))

(declare-fun b!3202727 () Bool)

(assert (=> b!3202727 (= e!1996860 e!1996859)))

(declare-fun c!537763 () Bool)

(assert (=> b!3202727 (= c!537763 ((_ is IntegerValue!16309) (value!168831 (h!41523 (t!237478 tokens!494)))))))

(declare-fun b!3202728 () Bool)

(assert (=> b!3202728 (= e!1996859 (inv!17 (value!168831 (h!41523 (t!237478 tokens!494)))))))

(assert (= (and d!876448 c!537762) b!3202723))

(assert (= (and d!876448 (not c!537762)) b!3202727))

(assert (= (and b!3202727 c!537763) b!3202728))

(assert (= (and b!3202727 (not c!537763)) b!3202722))

(assert (= (and b!3202722 (not res!1303375)) b!3202726))

(declare-fun m!3466079 () Bool)

(assert (=> b!3202723 m!3466079))

(declare-fun m!3466081 () Bool)

(assert (=> b!3202726 m!3466081))

(declare-fun m!3466083 () Bool)

(assert (=> b!3202728 m!3466083))

(assert (=> b!3202016 d!876448))

(declare-fun d!876450 () Bool)

(declare-fun lt!1080702 () Bool)

(assert (=> d!876450 (= lt!1080702 (select (content!4878 (t!237478 tokens!494)) (h!41523 (t!237478 tokens!494))))))

(declare-fun e!1996869 () Bool)

(assert (=> d!876450 (= lt!1080702 e!1996869)))

(declare-fun res!1303381 () Bool)

(assert (=> d!876450 (=> (not res!1303381) (not e!1996869))))

(assert (=> d!876450 (= res!1303381 ((_ is Cons!36103) (t!237478 tokens!494)))))

(assert (=> d!876450 (= (contains!6425 (t!237478 tokens!494) (h!41523 (t!237478 tokens!494))) lt!1080702)))

(declare-fun b!3202735 () Bool)

(declare-fun e!1996868 () Bool)

(assert (=> b!3202735 (= e!1996869 e!1996868)))

(declare-fun res!1303380 () Bool)

(assert (=> b!3202735 (=> res!1303380 e!1996868)))

(assert (=> b!3202735 (= res!1303380 (= (h!41523 (t!237478 tokens!494)) (h!41523 (t!237478 tokens!494))))))

(declare-fun b!3202736 () Bool)

(assert (=> b!3202736 (= e!1996868 (contains!6425 (t!237478 (t!237478 tokens!494)) (h!41523 (t!237478 tokens!494))))))

(assert (= (and d!876450 res!1303381) b!3202735))

(assert (= (and b!3202735 (not res!1303380)) b!3202736))

(declare-fun m!3466085 () Bool)

(assert (=> d!876450 m!3466085))

(declare-fun m!3466087 () Bool)

(assert (=> d!876450 m!3466087))

(declare-fun m!3466089 () Bool)

(assert (=> b!3202736 m!3466089))

(assert (=> b!3201867 d!876450))

(declare-fun d!876452 () Bool)

(declare-fun res!1303382 () Bool)

(declare-fun e!1996870 () Bool)

(assert (=> d!876452 (=> (not res!1303382) (not e!1996870))))

(assert (=> d!876452 (= res!1303382 (rulesValid!1910 thiss!18206 (t!237477 rules!2135)))))

(assert (=> d!876452 (= (rulesInvariant!4192 thiss!18206 (t!237477 rules!2135)) e!1996870)))

(declare-fun b!3202737 () Bool)

(assert (=> b!3202737 (= e!1996870 (noDuplicateTag!1906 thiss!18206 (t!237477 rules!2135) Nil!36104))))

(assert (= (and d!876452 res!1303382) b!3202737))

(declare-fun m!3466091 () Bool)

(assert (=> d!876452 m!3466091))

(declare-fun m!3466093 () Bool)

(assert (=> b!3202737 m!3466093))

(assert (=> b!3201813 d!876452))

(declare-fun d!876454 () Bool)

(assert (=> d!876454 (rulesInvariant!4192 thiss!18206 (t!237477 rules!2135))))

(declare-fun lt!1080706 () Unit!50516)

(declare-fun choose!18698 (LexerInterface!4795 Rule!10212 List!36226) Unit!50516)

(assert (=> d!876454 (= lt!1080706 (choose!18698 thiss!18206 (h!41522 rules!2135) (t!237477 rules!2135)))))

(assert (=> d!876454 (rulesInvariant!4192 thiss!18206 (Cons!36102 (h!41522 rules!2135) (t!237477 rules!2135)))))

(assert (=> d!876454 (= (lemmaInvariantOnRulesThenOnTail!346 thiss!18206 (h!41522 rules!2135) (t!237477 rules!2135)) lt!1080706)))

(declare-fun bs!541010 () Bool)

(assert (= bs!541010 d!876454))

(assert (=> bs!541010 m!3464495))

(declare-fun m!3466113 () Bool)

(assert (=> bs!541010 m!3466113))

(declare-fun m!3466115 () Bool)

(assert (=> bs!541010 m!3466115))

(assert (=> b!3201813 d!876454))

(declare-fun b!3202756 () Bool)

(declare-fun lt!1080708 () Unit!50516)

(declare-fun lt!1080707 () Unit!50516)

(assert (=> b!3202756 (= lt!1080708 lt!1080707)))

(assert (=> b!3202756 (rulesInvariant!4192 thiss!18206 (t!237477 (t!237477 rules!2135)))))

(assert (=> b!3202756 (= lt!1080707 (lemmaInvariantOnRulesThenOnTail!346 thiss!18206 (h!41522 (t!237477 rules!2135)) (t!237477 (t!237477 rules!2135))))))

(declare-fun e!1996883 () Option!7107)

(assert (=> b!3202756 (= e!1996883 (getRuleFromTag!911 thiss!18206 (t!237477 (t!237477 rules!2135)) (tag!5728 (rule!7642 (h!41523 tokens!494)))))))

(declare-fun b!3202757 () Bool)

(assert (=> b!3202757 (= e!1996883 None!7106)))

(declare-fun b!3202758 () Bool)

(declare-fun e!1996884 () Bool)

(declare-fun lt!1080709 () Option!7107)

(assert (=> b!3202758 (= e!1996884 (= (tag!5728 (get!11486 lt!1080709)) (tag!5728 (rule!7642 (h!41523 tokens!494)))))))

(declare-fun b!3202759 () Bool)

(declare-fun e!1996882 () Option!7107)

(assert (=> b!3202759 (= e!1996882 (Some!7106 (h!41522 (t!237477 rules!2135))))))

(declare-fun b!3202760 () Bool)

(declare-fun e!1996881 () Bool)

(assert (=> b!3202760 (= e!1996881 e!1996884)))

(declare-fun res!1303394 () Bool)

(assert (=> b!3202760 (=> (not res!1303394) (not e!1996884))))

(assert (=> b!3202760 (= res!1303394 (contains!6427 (t!237477 rules!2135) (get!11486 lt!1080709)))))

(declare-fun d!876460 () Bool)

(assert (=> d!876460 e!1996881))

(declare-fun res!1303393 () Bool)

(assert (=> d!876460 (=> res!1303393 e!1996881)))

(assert (=> d!876460 (= res!1303393 (isEmpty!20189 lt!1080709))))

(assert (=> d!876460 (= lt!1080709 e!1996882)))

(declare-fun c!537770 () Bool)

(assert (=> d!876460 (= c!537770 (and ((_ is Cons!36102) (t!237477 rules!2135)) (= (tag!5728 (h!41522 (t!237477 rules!2135))) (tag!5728 (rule!7642 (h!41523 tokens!494))))))))

(assert (=> d!876460 (rulesInvariant!4192 thiss!18206 (t!237477 rules!2135))))

(assert (=> d!876460 (= (getRuleFromTag!911 thiss!18206 (t!237477 rules!2135) (tag!5728 (rule!7642 (h!41523 tokens!494)))) lt!1080709)))

(declare-fun b!3202761 () Bool)

(assert (=> b!3202761 (= e!1996882 e!1996883)))

(declare-fun c!537771 () Bool)

(assert (=> b!3202761 (= c!537771 (and ((_ is Cons!36102) (t!237477 rules!2135)) (not (= (tag!5728 (h!41522 (t!237477 rules!2135))) (tag!5728 (rule!7642 (h!41523 tokens!494)))))))))

(assert (= (and d!876460 c!537770) b!3202759))

(assert (= (and d!876460 (not c!537770)) b!3202761))

(assert (= (and b!3202761 c!537771) b!3202756))

(assert (= (and b!3202761 (not c!537771)) b!3202757))

(assert (= (and d!876460 (not res!1303393)) b!3202760))

(assert (= (and b!3202760 res!1303394) b!3202758))

(declare-fun m!3466117 () Bool)

(assert (=> b!3202756 m!3466117))

(declare-fun m!3466119 () Bool)

(assert (=> b!3202756 m!3466119))

(declare-fun m!3466121 () Bool)

(assert (=> b!3202756 m!3466121))

(declare-fun m!3466123 () Bool)

(assert (=> b!3202758 m!3466123))

(assert (=> b!3202760 m!3466123))

(assert (=> b!3202760 m!3466123))

(declare-fun m!3466125 () Bool)

(assert (=> b!3202760 m!3466125))

(declare-fun m!3466127 () Bool)

(assert (=> d!876460 m!3466127))

(assert (=> d!876460 m!3464495))

(assert (=> b!3201813 d!876460))

(declare-fun d!876462 () Bool)

(assert (=> d!876462 (= (list!12833 (_1!20873 lt!1080196)) (list!12837 (c!537388 (_1!20873 lt!1080196))))))

(declare-fun bs!541011 () Bool)

(assert (= bs!541011 d!876462))

(declare-fun m!3466129 () Bool)

(assert (=> bs!541011 m!3466129))

(assert (=> b!3201912 d!876462))

(declare-fun d!876464 () Bool)

(declare-fun e!1996887 () Bool)

(assert (=> d!876464 e!1996887))

(declare-fun c!537773 () Bool)

(declare-fun lt!1080710 () tuple2!35488)

(assert (=> d!876464 (= c!537773 (> (size!27196 (_1!20878 lt!1080710)) 0))))

(declare-fun e!1996885 () tuple2!35488)

(assert (=> d!876464 (= lt!1080710 e!1996885)))

(declare-fun c!537772 () Bool)

(declare-fun lt!1080712 () Option!7108)

(assert (=> d!876464 (= c!537772 ((_ is Some!7107) lt!1080712))))

(assert (=> d!876464 (= lt!1080712 (maxPrefix!2440 thiss!18206 rules!2135 (list!12831 lt!1079875)))))

(assert (=> d!876464 (= (lexList!1309 thiss!18206 rules!2135 (list!12831 lt!1079875)) lt!1080710)))

(declare-fun b!3202762 () Bool)

(assert (=> b!3202762 (= e!1996887 (= (_2!20878 lt!1080710) (list!12831 lt!1079875)))))

(declare-fun b!3202763 () Bool)

(assert (=> b!3202763 (= e!1996885 (tuple2!35489 Nil!36103 (list!12831 lt!1079875)))))

(declare-fun b!3202764 () Bool)

(declare-fun e!1996886 () Bool)

(assert (=> b!3202764 (= e!1996886 (not (isEmpty!20192 (_1!20878 lt!1080710))))))

(declare-fun b!3202765 () Bool)

(declare-fun lt!1080711 () tuple2!35488)

(assert (=> b!3202765 (= e!1996885 (tuple2!35489 (Cons!36103 (_1!20874 (v!35637 lt!1080712)) (_1!20878 lt!1080711)) (_2!20878 lt!1080711)))))

(assert (=> b!3202765 (= lt!1080711 (lexList!1309 thiss!18206 rules!2135 (_2!20874 (v!35637 lt!1080712))))))

(declare-fun b!3202766 () Bool)

(assert (=> b!3202766 (= e!1996887 e!1996886)))

(declare-fun res!1303395 () Bool)

(assert (=> b!3202766 (= res!1303395 (< (size!27191 (_2!20878 lt!1080710)) (size!27191 (list!12831 lt!1079875))))))

(assert (=> b!3202766 (=> (not res!1303395) (not e!1996886))))

(assert (= (and d!876464 c!537772) b!3202765))

(assert (= (and d!876464 (not c!537772)) b!3202763))

(assert (= (and d!876464 c!537773) b!3202766))

(assert (= (and d!876464 (not c!537773)) b!3202762))

(assert (= (and b!3202766 res!1303395) b!3202764))

(declare-fun m!3466131 () Bool)

(assert (=> d!876464 m!3466131))

(assert (=> d!876464 m!3464763))

(declare-fun m!3466133 () Bool)

(assert (=> d!876464 m!3466133))

(declare-fun m!3466135 () Bool)

(assert (=> b!3202764 m!3466135))

(declare-fun m!3466137 () Bool)

(assert (=> b!3202765 m!3466137))

(declare-fun m!3466139 () Bool)

(assert (=> b!3202766 m!3466139))

(assert (=> b!3202766 m!3464763))

(declare-fun m!3466141 () Bool)

(assert (=> b!3202766 m!3466141))

(assert (=> b!3201912 d!876464))

(declare-fun d!876466 () Bool)

(assert (=> d!876466 (= (list!12831 lt!1079875) (list!12834 (c!537387 lt!1079875)))))

(declare-fun bs!541012 () Bool)

(assert (= bs!541012 d!876466))

(declare-fun m!3466143 () Bool)

(assert (=> bs!541012 m!3466143))

(assert (=> b!3201912 d!876466))

(assert (=> b!3201962 d!875980))

(declare-fun d!876468 () Bool)

(assert (=> d!876468 (dynLambda!14538 lambda!117202 (h!41523 (t!237478 tokens!494)))))

(assert (=> d!876468 true))

(declare-fun _$7!1068 () Unit!50516)

(assert (=> d!876468 (= (choose!18683 tokens!494 lambda!117202 (h!41523 (t!237478 tokens!494))) _$7!1068)))

(declare-fun b_lambda!87589 () Bool)

(assert (=> (not b_lambda!87589) (not d!876468)))

(declare-fun bs!541013 () Bool)

(assert (= bs!541013 d!876468))

(assert (=> bs!541013 m!3463687))

(assert (=> d!875750 d!876468))

(assert (=> d!875750 d!876028))

(declare-fun d!876470 () Bool)

(assert (=> d!876470 (= (isEmpty!20186 lt!1079883) ((_ is Nil!36101) lt!1079883))))

(assert (=> bm!231774 d!876470))

(declare-fun d!876472 () Bool)

(declare-fun e!1996888 () Bool)

(assert (=> d!876472 e!1996888))

(declare-fun res!1303396 () Bool)

(assert (=> d!876472 (=> (not res!1303396) (not e!1996888))))

(declare-fun lt!1080713 () List!36225)

(assert (=> d!876472 (= res!1303396 (= (content!4877 lt!1080713) ((_ map or) (content!4877 (t!237476 (++!8650 lt!1079879 lt!1079883))) (content!4877 lt!1079880))))))

(declare-fun e!1996889 () List!36225)

(assert (=> d!876472 (= lt!1080713 e!1996889)))

(declare-fun c!537774 () Bool)

(assert (=> d!876472 (= c!537774 ((_ is Nil!36101) (t!237476 (++!8650 lt!1079879 lt!1079883))))))

(assert (=> d!876472 (= (++!8650 (t!237476 (++!8650 lt!1079879 lt!1079883)) lt!1079880) lt!1080713)))

(declare-fun b!3202768 () Bool)

(assert (=> b!3202768 (= e!1996889 (Cons!36101 (h!41521 (t!237476 (++!8650 lt!1079879 lt!1079883))) (++!8650 (t!237476 (t!237476 (++!8650 lt!1079879 lt!1079883))) lt!1079880)))))

(declare-fun b!3202770 () Bool)

(assert (=> b!3202770 (= e!1996888 (or (not (= lt!1079880 Nil!36101)) (= lt!1080713 (t!237476 (++!8650 lt!1079879 lt!1079883)))))))

(declare-fun b!3202769 () Bool)

(declare-fun res!1303397 () Bool)

(assert (=> b!3202769 (=> (not res!1303397) (not e!1996888))))

(assert (=> b!3202769 (= res!1303397 (= (size!27191 lt!1080713) (+ (size!27191 (t!237476 (++!8650 lt!1079879 lt!1079883))) (size!27191 lt!1079880))))))

(declare-fun b!3202767 () Bool)

(assert (=> b!3202767 (= e!1996889 lt!1079880)))

(assert (= (and d!876472 c!537774) b!3202767))

(assert (= (and d!876472 (not c!537774)) b!3202768))

(assert (= (and d!876472 res!1303396) b!3202769))

(assert (= (and b!3202769 res!1303397) b!3202770))

(declare-fun m!3466145 () Bool)

(assert (=> d!876472 m!3466145))

(assert (=> d!876472 m!3465307))

(assert (=> d!876472 m!3464715))

(declare-fun m!3466147 () Bool)

(assert (=> b!3202768 m!3466147))

(declare-fun m!3466149 () Bool)

(assert (=> b!3202769 m!3466149))

(declare-fun m!3466151 () Bool)

(assert (=> b!3202769 m!3466151))

(assert (=> b!3202769 m!3464721))

(assert (=> b!3201967 d!876472))

(assert (=> d!876020 d!876470))

(declare-fun b!3202809 () Bool)

(declare-fun e!1996917 () Bool)

(declare-fun e!1996915 () Bool)

(assert (=> b!3202809 (= e!1996917 e!1996915)))

(declare-fun res!1303412 () Bool)

(assert (=> b!3202809 (= res!1303412 (not (nullable!3394 (reg!10294 (regex!5206 lt!1079889)))))))

(assert (=> b!3202809 (=> (not res!1303412) (not e!1996915))))

(declare-fun b!3202810 () Bool)

(declare-fun call!231873 () Bool)

(assert (=> b!3202810 (= e!1996915 call!231873)))

(declare-fun bm!231868 () Bool)

(declare-fun call!231875 () Bool)

(assert (=> bm!231868 (= call!231875 call!231873)))

(declare-fun b!3202811 () Bool)

(declare-fun res!1303409 () Bool)

(declare-fun e!1996918 () Bool)

(assert (=> b!3202811 (=> res!1303409 e!1996918)))

(assert (=> b!3202811 (= res!1303409 (not ((_ is Concat!15401) (regex!5206 lt!1079889))))))

(declare-fun e!1996914 () Bool)

(assert (=> b!3202811 (= e!1996914 e!1996918)))

(declare-fun b!3202812 () Bool)

(declare-fun e!1996916 () Bool)

(assert (=> b!3202812 (= e!1996916 e!1996917)))

(declare-fun c!537790 () Bool)

(assert (=> b!3202812 (= c!537790 ((_ is Star!9965) (regex!5206 lt!1079889)))))

(declare-fun d!876474 () Bool)

(declare-fun res!1303411 () Bool)

(assert (=> d!876474 (=> res!1303411 e!1996916)))

(assert (=> d!876474 (= res!1303411 ((_ is ElementMatch!9965) (regex!5206 lt!1079889)))))

(assert (=> d!876474 (= (validRegex!4548 (regex!5206 lt!1079889)) e!1996916)))

(declare-fun c!537789 () Bool)

(declare-fun bm!231869 () Bool)

(assert (=> bm!231869 (= call!231873 (validRegex!4548 (ite c!537790 (reg!10294 (regex!5206 lt!1079889)) (ite c!537789 (regOne!20443 (regex!5206 lt!1079889)) (regOne!20442 (regex!5206 lt!1079889))))))))

(declare-fun b!3202813 () Bool)

(declare-fun e!1996920 () Bool)

(declare-fun call!231874 () Bool)

(assert (=> b!3202813 (= e!1996920 call!231874)))

(declare-fun b!3202814 () Bool)

(declare-fun e!1996919 () Bool)

(assert (=> b!3202814 (= e!1996918 e!1996919)))

(declare-fun res!1303408 () Bool)

(assert (=> b!3202814 (=> (not res!1303408) (not e!1996919))))

(assert (=> b!3202814 (= res!1303408 call!231875)))

(declare-fun bm!231870 () Bool)

(assert (=> bm!231870 (= call!231874 (validRegex!4548 (ite c!537789 (regTwo!20443 (regex!5206 lt!1079889)) (regTwo!20442 (regex!5206 lt!1079889)))))))

(declare-fun b!3202815 () Bool)

(assert (=> b!3202815 (= e!1996919 call!231874)))

(declare-fun b!3202816 () Bool)

(assert (=> b!3202816 (= e!1996917 e!1996914)))

(assert (=> b!3202816 (= c!537789 ((_ is Union!9965) (regex!5206 lt!1079889)))))

(declare-fun b!3202817 () Bool)

(declare-fun res!1303410 () Bool)

(assert (=> b!3202817 (=> (not res!1303410) (not e!1996920))))

(assert (=> b!3202817 (= res!1303410 call!231875)))

(assert (=> b!3202817 (= e!1996914 e!1996920)))

(assert (= (and d!876474 (not res!1303411)) b!3202812))

(assert (= (and b!3202812 c!537790) b!3202809))

(assert (= (and b!3202812 (not c!537790)) b!3202816))

(assert (= (and b!3202809 res!1303412) b!3202810))

(assert (= (and b!3202816 c!537789) b!3202817))

(assert (= (and b!3202816 (not c!537789)) b!3202811))

(assert (= (and b!3202817 res!1303410) b!3202813))

(assert (= (and b!3202811 (not res!1303409)) b!3202814))

(assert (= (and b!3202814 res!1303408) b!3202815))

(assert (= (or b!3202813 b!3202815) bm!231870))

(assert (= (or b!3202817 b!3202814) bm!231868))

(assert (= (or b!3202810 bm!231868) bm!231869))

(declare-fun m!3466153 () Bool)

(assert (=> b!3202809 m!3466153))

(declare-fun m!3466155 () Bool)

(assert (=> bm!231869 m!3466155))

(declare-fun m!3466157 () Bool)

(assert (=> bm!231870 m!3466157))

(assert (=> d!876020 d!876474))

(declare-fun d!876476 () Bool)

(assert (=> d!876476 (= (isEmpty!20186 lt!1079879) ((_ is Nil!36101) lt!1079879))))

(assert (=> d!875802 d!876476))

(declare-fun b!3202828 () Bool)

(declare-fun e!1996929 () Bool)

(declare-fun e!1996927 () Bool)

(assert (=> b!3202828 (= e!1996929 e!1996927)))

(declare-fun res!1303417 () Bool)

(assert (=> b!3202828 (= res!1303417 (not (nullable!3394 (reg!10294 (regex!5206 lt!1079905)))))))

(assert (=> b!3202828 (=> (not res!1303417) (not e!1996927))))

(declare-fun b!3202829 () Bool)

(declare-fun call!231880 () Bool)

(assert (=> b!3202829 (= e!1996927 call!231880)))

(declare-fun bm!231875 () Bool)

(declare-fun call!231882 () Bool)

(assert (=> bm!231875 (= call!231882 call!231880)))

(declare-fun b!3202830 () Bool)

(declare-fun res!1303414 () Bool)

(declare-fun e!1996930 () Bool)

(assert (=> b!3202830 (=> res!1303414 e!1996930)))

(assert (=> b!3202830 (= res!1303414 (not ((_ is Concat!15401) (regex!5206 lt!1079905))))))

(declare-fun e!1996926 () Bool)

(assert (=> b!3202830 (= e!1996926 e!1996930)))

(declare-fun b!3202831 () Bool)

(declare-fun e!1996928 () Bool)

(assert (=> b!3202831 (= e!1996928 e!1996929)))

(declare-fun c!537797 () Bool)

(assert (=> b!3202831 (= c!537797 ((_ is Star!9965) (regex!5206 lt!1079905)))))

(declare-fun d!876478 () Bool)

(declare-fun res!1303416 () Bool)

(assert (=> d!876478 (=> res!1303416 e!1996928)))

(assert (=> d!876478 (= res!1303416 ((_ is ElementMatch!9965) (regex!5206 lt!1079905)))))

(assert (=> d!876478 (= (validRegex!4548 (regex!5206 lt!1079905)) e!1996928)))

(declare-fun bm!231876 () Bool)

(declare-fun c!537796 () Bool)

(assert (=> bm!231876 (= call!231880 (validRegex!4548 (ite c!537797 (reg!10294 (regex!5206 lt!1079905)) (ite c!537796 (regOne!20443 (regex!5206 lt!1079905)) (regOne!20442 (regex!5206 lt!1079905))))))))

(declare-fun b!3202832 () Bool)

(declare-fun e!1996932 () Bool)

(declare-fun call!231881 () Bool)

(assert (=> b!3202832 (= e!1996932 call!231881)))

(declare-fun b!3202833 () Bool)

(declare-fun e!1996931 () Bool)

(assert (=> b!3202833 (= e!1996930 e!1996931)))

(declare-fun res!1303413 () Bool)

(assert (=> b!3202833 (=> (not res!1303413) (not e!1996931))))

(assert (=> b!3202833 (= res!1303413 call!231882)))

(declare-fun bm!231877 () Bool)

(assert (=> bm!231877 (= call!231881 (validRegex!4548 (ite c!537796 (regTwo!20443 (regex!5206 lt!1079905)) (regTwo!20442 (regex!5206 lt!1079905)))))))

(declare-fun b!3202834 () Bool)

(assert (=> b!3202834 (= e!1996931 call!231881)))

(declare-fun b!3202835 () Bool)

(assert (=> b!3202835 (= e!1996929 e!1996926)))

(assert (=> b!3202835 (= c!537796 ((_ is Union!9965) (regex!5206 lt!1079905)))))

(declare-fun b!3202836 () Bool)

(declare-fun res!1303415 () Bool)

(assert (=> b!3202836 (=> (not res!1303415) (not e!1996932))))

(assert (=> b!3202836 (= res!1303415 call!231882)))

(assert (=> b!3202836 (= e!1996926 e!1996932)))

(assert (= (and d!876478 (not res!1303416)) b!3202831))

(assert (= (and b!3202831 c!537797) b!3202828))

(assert (= (and b!3202831 (not c!537797)) b!3202835))

(assert (= (and b!3202828 res!1303417) b!3202829))

(assert (= (and b!3202835 c!537796) b!3202836))

(assert (= (and b!3202835 (not c!537796)) b!3202830))

(assert (= (and b!3202836 res!1303415) b!3202832))

(assert (= (and b!3202830 (not res!1303414)) b!3202833))

(assert (= (and b!3202833 res!1303413) b!3202834))

(assert (= (or b!3202832 b!3202834) bm!231877))

(assert (= (or b!3202836 b!3202833) bm!231875))

(assert (= (or b!3202829 bm!231875) bm!231876))

(declare-fun m!3466165 () Bool)

(assert (=> b!3202828 m!3466165))

(declare-fun m!3466169 () Bool)

(assert (=> bm!231876 m!3466169))

(declare-fun m!3466171 () Bool)

(assert (=> bm!231877 m!3466171))

(assert (=> d!875802 d!876478))

(assert (=> d!875894 d!876044))

(declare-fun d!876482 () Bool)

(assert (=> d!876482 (rulesProduceIndividualToken!2287 thiss!18206 rules!2135 (h!41523 tokens!494))))

(assert (=> d!876482 true))

(declare-fun _$77!791 () Unit!50516)

(assert (=> d!876482 (= (choose!18688 thiss!18206 rules!2135 tokens!494 (h!41523 tokens!494)) _$77!791)))

(declare-fun bs!541046 () Bool)

(assert (= bs!541046 d!876482))

(assert (=> bs!541046 m!3463631))

(assert (=> d!875894 d!876482))

(assert (=> d!875894 d!876060))

(declare-fun d!876652 () Bool)

(declare-fun c!537868 () Bool)

(assert (=> d!876652 (= c!537868 ((_ is Nil!36103) tokens!494))))

(declare-fun e!1997054 () (InoxSet Token!9778))

(assert (=> d!876652 (= (content!4878 tokens!494) e!1997054)))

(declare-fun b!3203061 () Bool)

(assert (=> b!3203061 (= e!1997054 ((as const (Array Token!9778 Bool)) false))))

(declare-fun b!3203062 () Bool)

(assert (=> b!3203062 (= e!1997054 ((_ map or) (store ((as const (Array Token!9778 Bool)) false) (h!41523 tokens!494) true) (content!4878 (t!237478 tokens!494))))))

(assert (= (and d!876652 c!537868) b!3203061))

(assert (= (and d!876652 (not c!537868)) b!3203062))

(declare-fun m!3466599 () Bool)

(assert (=> b!3203062 m!3466599))

(assert (=> b!3203062 m!3466085))

(assert (=> d!875982 d!876652))

(declare-fun d!876658 () Bool)

(assert (=> d!876658 (dynLambda!14538 lambda!117202 (h!41523 tokens!494))))

(assert (=> d!876658 true))

(declare-fun _$7!1072 () Unit!50516)

(assert (=> d!876658 (= (choose!18683 tokens!494 lambda!117202 (h!41523 tokens!494)) _$7!1072)))

(declare-fun b_lambda!87597 () Bool)

(assert (=> (not b_lambda!87597) (not d!876658)))

(declare-fun bs!541052 () Bool)

(assert (= bs!541052 d!876658))

(assert (=> bs!541052 m!3463691))

(assert (=> d!875752 d!876658))

(assert (=> d!875752 d!876028))

(declare-fun d!876660 () Bool)

(declare-fun lt!1080814 () Bool)

(assert (=> d!876660 (= lt!1080814 (isEmpty!20186 (list!12831 (_2!20873 lt!1080062))))))

(assert (=> d!876660 (= lt!1080814 (isEmpty!20187 (c!537387 (_2!20873 lt!1080062))))))

(assert (=> d!876660 (= (isEmpty!20179 (_2!20873 lt!1080062)) lt!1080814)))

(declare-fun bs!541053 () Bool)

(assert (= bs!541053 d!876660))

(declare-fun m!3466601 () Bool)

(assert (=> bs!541053 m!3466601))

(assert (=> bs!541053 m!3466601))

(declare-fun m!3466603 () Bool)

(assert (=> bs!541053 m!3466603))

(declare-fun m!3466605 () Bool)

(assert (=> bs!541053 m!3466605))

(assert (=> b!3201518 d!876660))

(assert (=> b!3201634 d!876196))

(declare-fun d!876662 () Bool)

(assert (=> d!876662 (= (apply!8149 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))) (seqFromList!3484 (originalCharacters!5920 (_1!20874 (get!11488 lt!1080102))))) (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102))))) (seqFromList!3484 (originalCharacters!5920 (_1!20874 (get!11488 lt!1080102))))))))

(declare-fun b_lambda!87599 () Bool)

(assert (=> (not b_lambda!87599) (not d!876662)))

(declare-fun tb!156957 () Bool)

(declare-fun t!237681 () Bool)

(assert (=> (and b!3201175 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toValue!7282 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))))) t!237681) tb!156957))

(declare-fun result!199266 () Bool)

(assert (=> tb!156957 (= result!199266 (inv!21 (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102))))) (seqFromList!3484 (originalCharacters!5920 (_1!20874 (get!11488 lt!1080102)))))))))

(declare-fun m!3466617 () Bool)

(assert (=> tb!156957 m!3466617))

(assert (=> d!876662 t!237681))

(declare-fun b_and!213017 () Bool)

(assert (= b_and!212863 (and (=> t!237681 result!199266) b_and!213017)))

(declare-fun tb!156959 () Bool)

(declare-fun t!237683 () Bool)

(assert (=> (and b!3201192 (= (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241))) (toValue!7282 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))))) t!237683) tb!156959))

(declare-fun result!199268 () Bool)

(assert (= result!199268 result!199266))

(assert (=> d!876662 t!237683))

(declare-fun b_and!213019 () Bool)

(assert (= b_and!212865 (and (=> t!237683 result!199268) b_and!213019)))

(declare-fun t!237685 () Bool)

(declare-fun tb!156961 () Bool)

(assert (=> (and b!3201193 (= (toValue!7282 (transformation!5206 (h!41522 rules!2135))) (toValue!7282 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))))) t!237685) tb!156961))

(declare-fun result!199270 () Bool)

(assert (= result!199270 result!199266))

(assert (=> d!876662 t!237685))

(declare-fun b_and!213021 () Bool)

(assert (= b_and!212867 (and (=> t!237685 result!199270) b_and!213021)))

(declare-fun t!237687 () Bool)

(declare-fun tb!156963 () Bool)

(assert (=> (and b!3202018 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toValue!7282 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))))) t!237687) tb!156963))

(declare-fun result!199272 () Bool)

(assert (= result!199272 result!199266))

(assert (=> d!876662 t!237687))

(declare-fun b_and!213023 () Bool)

(assert (= b_and!212899 (and (=> t!237687 result!199272) b_and!213023)))

(declare-fun t!237689 () Bool)

(declare-fun tb!156965 () Bool)

(assert (=> (and b!3202029 (= (toValue!7282 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toValue!7282 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))))) t!237689) tb!156965))

(declare-fun result!199274 () Bool)

(assert (= result!199274 result!199266))

(assert (=> d!876662 t!237689))

(declare-fun b_and!213025 () Bool)

(assert (= b_and!212903 (and (=> t!237689 result!199274) b_and!213025)))

(assert (=> d!876662 m!3464283))

(declare-fun m!3466653 () Bool)

(assert (=> d!876662 m!3466653))

(assert (=> b!3201634 d!876662))

(declare-fun d!876664 () Bool)

(assert (=> d!876664 (= (seqFromList!3484 (originalCharacters!5920 (_1!20874 (get!11488 lt!1080102)))) (fromListB!1534 (originalCharacters!5920 (_1!20874 (get!11488 lt!1080102)))))))

(declare-fun bs!541054 () Bool)

(assert (= bs!541054 d!876664))

(declare-fun m!3466665 () Bool)

(assert (=> bs!541054 m!3466665))

(assert (=> b!3201634 d!876664))

(declare-fun d!876666 () Bool)

(declare-fun c!537869 () Bool)

(assert (=> d!876666 (= c!537869 ((_ is Nil!36101) lt!1080189))))

(declare-fun e!1997056 () (InoxSet C!20116))

(assert (=> d!876666 (= (content!4877 lt!1080189) e!1997056)))

(declare-fun b!3203063 () Bool)

(assert (=> b!3203063 (= e!1997056 ((as const (Array C!20116 Bool)) false))))

(declare-fun b!3203064 () Bool)

(assert (=> b!3203064 (= e!1997056 ((_ map or) (store ((as const (Array C!20116 Bool)) false) (h!41521 lt!1080189) true) (content!4877 (t!237476 lt!1080189))))))

(assert (= (and d!876666 c!537869) b!3203063))

(assert (= (and d!876666 (not c!537869)) b!3203064))

(declare-fun m!3466679 () Bool)

(assert (=> b!3203064 m!3466679))

(declare-fun m!3466683 () Bool)

(assert (=> b!3203064 m!3466683))

(assert (=> d!876004 d!876666))

(declare-fun d!876668 () Bool)

(declare-fun c!537870 () Bool)

(assert (=> d!876668 (= c!537870 ((_ is Nil!36101) lt!1079879))))

(declare-fun e!1997057 () (InoxSet C!20116))

(assert (=> d!876668 (= (content!4877 lt!1079879) e!1997057)))

(declare-fun b!3203065 () Bool)

(assert (=> b!3203065 (= e!1997057 ((as const (Array C!20116 Bool)) false))))

(declare-fun b!3203066 () Bool)

(assert (=> b!3203066 (= e!1997057 ((_ map or) (store ((as const (Array C!20116 Bool)) false) (h!41521 lt!1079879) true) (content!4877 (t!237476 lt!1079879))))))

(assert (= (and d!876668 c!537870) b!3203065))

(assert (= (and d!876668 (not c!537870)) b!3203066))

(declare-fun m!3466695 () Bool)

(assert (=> b!3203066 m!3466695))

(declare-fun m!3466697 () Bool)

(assert (=> b!3203066 m!3466697))

(assert (=> d!876004 d!876668))

(declare-fun d!876670 () Bool)

(declare-fun c!537871 () Bool)

(assert (=> d!876670 (= c!537871 ((_ is Nil!36101) lt!1079904))))

(declare-fun e!1997058 () (InoxSet C!20116))

(assert (=> d!876670 (= (content!4877 lt!1079904) e!1997058)))

(declare-fun b!3203067 () Bool)

(assert (=> b!3203067 (= e!1997058 ((as const (Array C!20116 Bool)) false))))

(declare-fun b!3203068 () Bool)

(assert (=> b!3203068 (= e!1997058 ((_ map or) (store ((as const (Array C!20116 Bool)) false) (h!41521 lt!1079904) true) (content!4877 (t!237476 lt!1079904))))))

(assert (= (and d!876670 c!537871) b!3203067))

(assert (= (and d!876670 (not c!537871)) b!3203068))

(declare-fun m!3466707 () Bool)

(assert (=> b!3203068 m!3466707))

(declare-fun m!3466709 () Bool)

(assert (=> b!3203068 m!3466709))

(assert (=> d!876004 d!876670))

(declare-fun d!876674 () Bool)

(declare-fun lt!1080816 () Bool)

(assert (=> d!876674 (= lt!1080816 (isEmpty!20186 (list!12831 (_2!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494))))))))))

(assert (=> d!876674 (= lt!1080816 (isEmpty!20187 (c!537387 (_2!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494))))))))))

(assert (=> d!876674 (= (isEmpty!20179 (_2!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494)))))) lt!1080816)))

(declare-fun bs!541056 () Bool)

(assert (= bs!541056 d!876674))

(declare-fun m!3466711 () Bool)

(assert (=> bs!541056 m!3466711))

(assert (=> bs!541056 m!3466711))

(declare-fun m!3466717 () Bool)

(assert (=> bs!541056 m!3466717))

(declare-fun m!3466719 () Bool)

(assert (=> bs!541056 m!3466719))

(assert (=> b!3201965 d!876674))

(declare-fun e!1997062 () Bool)

(declare-fun lt!1080818 () tuple2!35478)

(declare-fun b!3203071 () Bool)

(assert (=> b!3203071 (= e!1997062 (= (_2!20873 lt!1080818) (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494)))))))

(declare-fun b!3203072 () Bool)

(declare-fun e!1997060 () Bool)

(assert (=> b!3203072 (= e!1997060 (= (list!12831 (_2!20873 lt!1080818)) (_2!20878 (lexList!1309 thiss!18206 rules!2135 (list!12831 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494))))))))))

(declare-fun d!876678 () Bool)

(assert (=> d!876678 e!1997060))

(declare-fun res!1303506 () Bool)

(assert (=> d!876678 (=> (not res!1303506) (not e!1997060))))

(assert (=> d!876678 (= res!1303506 e!1997062)))

(declare-fun c!537873 () Bool)

(assert (=> d!876678 (= c!537873 (> (size!27190 (_1!20873 lt!1080818)) 0))))

(assert (=> d!876678 (= lt!1080818 (lexTailRecV2!929 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494))) (BalanceConc!21189 Empty!10787) (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494))) (BalanceConc!21191 Empty!10788)))))

(assert (=> d!876678 (= (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494)))) lt!1080818)))

(declare-fun b!3203073 () Bool)

(declare-fun e!1997061 () Bool)

(assert (=> b!3203073 (= e!1997061 (not (isEmpty!20180 (_1!20873 lt!1080818))))))

(declare-fun b!3203074 () Bool)

(assert (=> b!3203074 (= e!1997062 e!1997061)))

(declare-fun res!1303505 () Bool)

(assert (=> b!3203074 (= res!1303505 (< (size!27195 (_2!20873 lt!1080818)) (size!27195 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494))))))))

(assert (=> b!3203074 (=> (not res!1303505) (not e!1997061))))

(declare-fun b!3203075 () Bool)

(declare-fun res!1303507 () Bool)

(assert (=> b!3203075 (=> (not res!1303507) (not e!1997060))))

(assert (=> b!3203075 (= res!1303507 (= (list!12833 (_1!20873 lt!1080818)) (_1!20878 (lexList!1309 thiss!18206 rules!2135 (list!12831 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494))))))))))

(assert (= (and d!876678 c!537873) b!3203074))

(assert (= (and d!876678 (not c!537873)) b!3203071))

(assert (= (and b!3203074 res!1303505) b!3203073))

(assert (= (and d!876678 res!1303506) b!3203075))

(assert (= (and b!3203075 res!1303507) b!3203072))

(declare-fun m!3466729 () Bool)

(assert (=> b!3203073 m!3466729))

(declare-fun m!3466731 () Bool)

(assert (=> b!3203074 m!3466731))

(assert (=> b!3203074 m!3464845))

(declare-fun m!3466735 () Bool)

(assert (=> b!3203074 m!3466735))

(declare-fun m!3466739 () Bool)

(assert (=> b!3203075 m!3466739))

(assert (=> b!3203075 m!3464845))

(declare-fun m!3466743 () Bool)

(assert (=> b!3203075 m!3466743))

(assert (=> b!3203075 m!3466743))

(declare-fun m!3466745 () Bool)

(assert (=> b!3203075 m!3466745))

(declare-fun m!3466747 () Bool)

(assert (=> d!876678 m!3466747))

(assert (=> d!876678 m!3464845))

(assert (=> d!876678 m!3464845))

(declare-fun m!3466749 () Bool)

(assert (=> d!876678 m!3466749))

(declare-fun m!3466755 () Bool)

(assert (=> b!3203072 m!3466755))

(assert (=> b!3203072 m!3464845))

(assert (=> b!3203072 m!3466743))

(assert (=> b!3203072 m!3466743))

(assert (=> b!3203072 m!3466745))

(assert (=> b!3201965 d!876678))

(declare-fun d!876690 () Bool)

(declare-fun lt!1080821 () BalanceConc!21188)

(assert (=> d!876690 (= (list!12831 lt!1080821) (printList!1345 thiss!18206 (list!12833 (singletonSeq!2302 (h!41523 tokens!494)))))))

(assert (=> d!876690 (= lt!1080821 (printTailRec!1292 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494)) 0 (BalanceConc!21189 Empty!10787)))))

(assert (=> d!876690 (= (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494))) lt!1080821)))

(declare-fun bs!541059 () Bool)

(assert (= bs!541059 d!876690))

(declare-fun m!3466759 () Bool)

(assert (=> bs!541059 m!3466759))

(assert (=> bs!541059 m!3463617))

(assert (=> bs!541059 m!3464849))

(assert (=> bs!541059 m!3464849))

(declare-fun m!3466763 () Bool)

(assert (=> bs!541059 m!3466763))

(assert (=> bs!541059 m!3463617))

(declare-fun m!3466765 () Bool)

(assert (=> bs!541059 m!3466765))

(assert (=> b!3201965 d!876690))

(assert (=> b!3201965 d!875774))

(declare-fun d!876696 () Bool)

(declare-fun lt!1080827 () List!36225)

(assert (=> d!876696 (= lt!1080827 (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) (printList!1345 thiss!18206 (dropList!1074 lt!1079899 0))))))

(declare-fun e!1997068 () List!36225)

(assert (=> d!876696 (= lt!1080827 e!1997068)))

(declare-fun c!537877 () Bool)

(assert (=> d!876696 (= c!537877 ((_ is Cons!36103) (dropList!1074 lt!1079899 0)))))

(assert (=> d!876696 (= (printListTailRec!557 thiss!18206 (dropList!1074 lt!1079899 0) (list!12831 (BalanceConc!21189 Empty!10787))) lt!1080827)))

(declare-fun b!3203084 () Bool)

(assert (=> b!3203084 (= e!1997068 (printListTailRec!557 thiss!18206 (t!237478 (dropList!1074 lt!1079899 0)) (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) (list!12831 (charsOf!3222 (h!41523 (dropList!1074 lt!1079899 0)))))))))

(declare-fun lt!1080824 () List!36225)

(assert (=> b!3203084 (= lt!1080824 (list!12831 (charsOf!3222 (h!41523 (dropList!1074 lt!1079899 0)))))))

(declare-fun lt!1080826 () List!36225)

(assert (=> b!3203084 (= lt!1080826 (printList!1345 thiss!18206 (t!237478 (dropList!1074 lt!1079899 0))))))

(declare-fun lt!1080828 () Unit!50516)

(assert (=> b!3203084 (= lt!1080828 (lemmaConcatAssociativity!1724 (list!12831 (BalanceConc!21189 Empty!10787)) lt!1080824 lt!1080826))))

(assert (=> b!3203084 (= (++!8650 (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) lt!1080824) lt!1080826) (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) (++!8650 lt!1080824 lt!1080826)))))

(declare-fun lt!1080825 () Unit!50516)

(assert (=> b!3203084 (= lt!1080825 lt!1080828)))

(declare-fun b!3203085 () Bool)

(assert (=> b!3203085 (= e!1997068 (list!12831 (BalanceConc!21189 Empty!10787)))))

(assert (= (and d!876696 c!537877) b!3203084))

(assert (= (and d!876696 (not c!537877)) b!3203085))

(assert (=> d!876696 m!3464601))

(declare-fun m!3466781 () Bool)

(assert (=> d!876696 m!3466781))

(assert (=> d!876696 m!3463751))

(assert (=> d!876696 m!3466781))

(declare-fun m!3466783 () Bool)

(assert (=> d!876696 m!3466783))

(declare-fun m!3466785 () Bool)

(assert (=> b!3203084 m!3466785))

(declare-fun m!3466787 () Bool)

(assert (=> b!3203084 m!3466787))

(declare-fun m!3466789 () Bool)

(assert (=> b!3203084 m!3466789))

(assert (=> b!3203084 m!3463751))

(declare-fun m!3466791 () Bool)

(assert (=> b!3203084 m!3466791))

(declare-fun m!3466793 () Bool)

(assert (=> b!3203084 m!3466793))

(declare-fun m!3466795 () Bool)

(assert (=> b!3203084 m!3466795))

(assert (=> b!3203084 m!3463751))

(assert (=> b!3203084 m!3466793))

(declare-fun m!3466797 () Bool)

(assert (=> b!3203084 m!3466797))

(declare-fun m!3466801 () Bool)

(assert (=> b!3203084 m!3466801))

(declare-fun m!3466805 () Bool)

(assert (=> b!3203084 m!3466805))

(assert (=> b!3203084 m!3463751))

(assert (=> b!3203084 m!3466805))

(declare-fun m!3466809 () Bool)

(assert (=> b!3203084 m!3466809))

(assert (=> b!3203084 m!3466785))

(assert (=> b!3203084 m!3463751))

(assert (=> b!3203084 m!3466787))

(assert (=> b!3203084 m!3466797))

(assert (=> d!875972 d!876696))

(declare-fun d!876702 () Bool)

(assert (=> d!876702 (= (dropList!1074 lt!1079899 0) (drop!1857 (list!12837 (c!537388 lt!1079899)) 0))))

(declare-fun bs!541062 () Bool)

(assert (= bs!541062 d!876702))

(declare-fun m!3466819 () Bool)

(assert (=> bs!541062 m!3466819))

(assert (=> bs!541062 m!3466819))

(declare-fun m!3466821 () Bool)

(assert (=> bs!541062 m!3466821))

(assert (=> d!875972 d!876702))

(assert (=> d!875972 d!876252))

(declare-fun d!876706 () Bool)

(assert (=> d!876706 (= (list!12831 lt!1080173) (list!12834 (c!537387 lt!1080173)))))

(declare-fun bs!541064 () Bool)

(assert (= bs!541064 d!876706))

(declare-fun m!3466827 () Bool)

(assert (=> bs!541064 m!3466827))

(assert (=> d!875972 d!876706))

(assert (=> d!875972 d!876244))

(declare-fun d!876710 () Bool)

(declare-fun lt!1080833 () Int)

(assert (=> d!876710 (= lt!1080833 (size!27191 (list!12831 (_2!20873 lt!1080166))))))

(assert (=> d!876710 (= lt!1080833 (size!27199 (c!537387 (_2!20873 lt!1080166))))))

(assert (=> d!876710 (= (size!27195 (_2!20873 lt!1080166)) lt!1080833)))

(declare-fun bs!541066 () Bool)

(assert (= bs!541066 d!876710))

(assert (=> bs!541066 m!3464597))

(assert (=> bs!541066 m!3464597))

(declare-fun m!3466831 () Bool)

(assert (=> bs!541066 m!3466831))

(declare-fun m!3466833 () Bool)

(assert (=> bs!541066 m!3466833))

(assert (=> b!3201855 d!876710))

(declare-fun d!876714 () Bool)

(declare-fun lt!1080834 () Int)

(assert (=> d!876714 (= lt!1080834 (size!27191 (list!12831 lt!1079881)))))

(assert (=> d!876714 (= lt!1080834 (size!27199 (c!537387 lt!1079881)))))

(assert (=> d!876714 (= (size!27195 lt!1079881) lt!1080834)))

(declare-fun bs!541067 () Bool)

(assert (= bs!541067 d!876714))

(assert (=> bs!541067 m!3464589))

(assert (=> bs!541067 m!3464589))

(assert (=> bs!541067 m!3465257))

(declare-fun m!3466835 () Bool)

(assert (=> bs!541067 m!3466835))

(assert (=> b!3201855 d!876714))

(declare-fun d!876716 () Bool)

(declare-fun charsToInt!0 (List!36224) (_ BitVec 32))

(assert (=> d!876716 (= (inv!16 (value!168831 separatorToken!241)) (= (charsToInt!0 (text!38499 (value!168831 separatorToken!241))) (value!168822 (value!168831 separatorToken!241))))))

(declare-fun bs!541068 () Bool)

(assert (= bs!541068 d!876716))

(declare-fun m!3466845 () Bool)

(assert (=> bs!541068 m!3466845))

(assert (=> b!3201914 d!876716))

(declare-fun b!3203125 () Bool)

(declare-fun e!1997090 () Bool)

(assert (=> b!3203125 (= e!1997090 true)))

(declare-fun d!876718 () Bool)

(assert (=> d!876718 e!1997090))

(assert (= d!876718 b!3203125))

(declare-fun lambda!117237 () Int)

(declare-fun order!18359 () Int)

(declare-fun dynLambda!14544 (Int Int) Int)

(assert (=> b!3203125 (< (dynLambda!14533 order!18349 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) (dynLambda!14544 order!18359 lambda!117237))))

(assert (=> b!3203125 (< (dynLambda!14535 order!18353 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) (dynLambda!14544 order!18359 lambda!117237))))

(assert (=> d!876718 (= (list!12831 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (seqFromList!3484 (_1!20877 lt!1080104))))) (list!12831 (seqFromList!3484 (_1!20877 lt!1080104))))))

(declare-fun lt!1080849 () Unit!50516)

(declare-fun ForallOf!550 (Int BalanceConc!21188) Unit!50516)

(assert (=> d!876718 (= lt!1080849 (ForallOf!550 lambda!117237 (seqFromList!3484 (_1!20877 lt!1080104))))))

(assert (=> d!876718 (= (lemmaSemiInverse!1171 (transformation!5206 (rule!7642 (h!41523 tokens!494))) (seqFromList!3484 (_1!20877 lt!1080104))) lt!1080849)))

(declare-fun b_lambda!87605 () Bool)

(assert (=> (not b_lambda!87605) (not d!876718)))

(declare-fun t!237701 () Bool)

(declare-fun tb!156977 () Bool)

(assert (=> (and b!3201192 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237701) tb!156977))

(declare-fun b!3203129 () Bool)

(declare-fun e!1997093 () Bool)

(declare-fun tp!1011960 () Bool)

(assert (=> b!3203129 (= e!1997093 (and (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (seqFromList!3484 (_1!20877 lt!1080104)))))) tp!1011960))))

(declare-fun result!199286 () Bool)

(assert (=> tb!156977 (= result!199286 (and (inv!48957 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (seqFromList!3484 (_1!20877 lt!1080104))))) e!1997093))))

(assert (= tb!156977 b!3203129))

(declare-fun m!3466925 () Bool)

(assert (=> b!3203129 m!3466925))

(declare-fun m!3466929 () Bool)

(assert (=> tb!156977 m!3466929))

(assert (=> d!876718 t!237701))

(declare-fun b_and!213037 () Bool)

(assert (= b_and!212967 (and (=> t!237701 result!199286) b_and!213037)))

(declare-fun t!237703 () Bool)

(declare-fun tb!156979 () Bool)

(assert (=> (and b!3202029 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237703) tb!156979))

(declare-fun result!199288 () Bool)

(assert (= result!199288 result!199286))

(assert (=> d!876718 t!237703))

(declare-fun b_and!213039 () Bool)

(assert (= b_and!212975 (and (=> t!237703 result!199288) b_and!213039)))

(declare-fun tb!156981 () Bool)

(declare-fun t!237705 () Bool)

(assert (=> (and b!3201193 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237705) tb!156981))

(declare-fun result!199290 () Bool)

(assert (= result!199290 result!199286))

(assert (=> d!876718 t!237705))

(declare-fun b_and!213041 () Bool)

(assert (= b_and!212973 (and (=> t!237705 result!199290) b_and!213041)))

(declare-fun t!237707 () Bool)

(declare-fun tb!156983 () Bool)

(assert (=> (and b!3202018 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237707) tb!156983))

(declare-fun result!199292 () Bool)

(assert (= result!199292 result!199286))

(assert (=> d!876718 t!237707))

(declare-fun b_and!213043 () Bool)

(assert (= b_and!212969 (and (=> t!237707 result!199292) b_and!213043)))

(declare-fun t!237709 () Bool)

(declare-fun tb!156985 () Bool)

(assert (=> (and b!3201175 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237709) tb!156985))

(declare-fun result!199294 () Bool)

(assert (= result!199294 result!199286))

(assert (=> d!876718 t!237709))

(declare-fun b_and!213045 () Bool)

(assert (= b_and!212971 (and (=> t!237709 result!199294) b_and!213045)))

(declare-fun b_lambda!87607 () Bool)

(assert (=> (not b_lambda!87607) (not d!876718)))

(declare-fun t!237711 () Bool)

(declare-fun tb!156987 () Bool)

(assert (=> (and b!3201193 (= (toValue!7282 (transformation!5206 (h!41522 rules!2135))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237711) tb!156987))

(declare-fun result!199296 () Bool)

(assert (=> tb!156987 (= result!199296 (inv!21 (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (seqFromList!3484 (_1!20877 lt!1080104)))))))

(declare-fun m!3466941 () Bool)

(assert (=> tb!156987 m!3466941))

(assert (=> d!876718 t!237711))

(declare-fun b_and!213047 () Bool)

(assert (= b_and!213021 (and (=> t!237711 result!199296) b_and!213047)))

(declare-fun tb!156989 () Bool)

(declare-fun t!237713 () Bool)

(assert (=> (and b!3201192 (= (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237713) tb!156989))

(declare-fun result!199298 () Bool)

(assert (= result!199298 result!199296))

(assert (=> d!876718 t!237713))

(declare-fun b_and!213049 () Bool)

(assert (= b_and!213019 (and (=> t!237713 result!199298) b_and!213049)))

(declare-fun t!237715 () Bool)

(declare-fun tb!156991 () Bool)

(assert (=> (and b!3202018 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237715) tb!156991))

(declare-fun result!199300 () Bool)

(assert (= result!199300 result!199296))

(assert (=> d!876718 t!237715))

(declare-fun b_and!213051 () Bool)

(assert (= b_and!213023 (and (=> t!237715 result!199300) b_and!213051)))

(declare-fun t!237717 () Bool)

(declare-fun tb!156993 () Bool)

(assert (=> (and b!3202029 (= (toValue!7282 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237717) tb!156993))

(declare-fun result!199302 () Bool)

(assert (= result!199302 result!199296))

(assert (=> d!876718 t!237717))

(declare-fun b_and!213053 () Bool)

(assert (= b_and!213025 (and (=> t!237717 result!199302) b_and!213053)))

(declare-fun t!237719 () Bool)

(declare-fun tb!156995 () Bool)

(assert (=> (and b!3201175 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237719) tb!156995))

(declare-fun result!199304 () Bool)

(assert (= result!199304 result!199296))

(assert (=> d!876718 t!237719))

(declare-fun b_and!213055 () Bool)

(assert (= b_and!213017 (and (=> t!237719 result!199304) b_and!213055)))

(assert (=> d!876718 m!3464255))

(declare-fun m!3466949 () Bool)

(assert (=> d!876718 m!3466949))

(assert (=> d!876718 m!3464255))

(declare-fun m!3466951 () Bool)

(assert (=> d!876718 m!3466951))

(assert (=> d!876718 m!3466949))

(declare-fun m!3466953 () Bool)

(assert (=> d!876718 m!3466953))

(assert (=> d!876718 m!3464255))

(declare-fun m!3466955 () Bool)

(assert (=> d!876718 m!3466955))

(assert (=> d!876718 m!3466953))

(declare-fun m!3466957 () Bool)

(assert (=> d!876718 m!3466957))

(assert (=> b!3201630 d!876718))

(assert (=> b!3201630 d!875808))

(declare-fun bm!231922 () Bool)

(declare-fun call!231933 () Bool)

(assert (=> bm!231922 (= call!231933 (nullable!3394 (regex!5206 (rule!7642 (h!41523 tokens!494)))))))

(declare-fun b!3203301 () Bool)

(declare-fun e!1997196 () tuple2!35486)

(declare-fun call!231930 () tuple2!35486)

(assert (=> b!3203301 (= e!1997196 call!231930)))

(declare-fun bm!231923 () Bool)

(declare-fun call!231931 () C!20116)

(assert (=> bm!231923 (= call!231931 (head!7021 lt!1079879))))

(declare-fun b!3203302 () Bool)

(declare-fun e!1997194 () Bool)

(declare-fun lt!1081015 () tuple2!35486)

(assert (=> b!3203302 (= e!1997194 (>= (size!27191 (_1!20877 lt!1081015)) (size!27191 Nil!36101)))))

(declare-fun b!3203303 () Bool)

(declare-fun c!537949 () Bool)

(assert (=> b!3203303 (= c!537949 call!231933)))

(declare-fun lt!1081026 () Unit!50516)

(declare-fun lt!1081013 () Unit!50516)

(assert (=> b!3203303 (= lt!1081026 lt!1081013)))

(declare-fun lt!1081017 () C!20116)

(declare-fun lt!1081022 () List!36225)

(assert (=> b!3203303 (= (++!8650 (++!8650 Nil!36101 (Cons!36101 lt!1081017 Nil!36101)) lt!1081022) lt!1079879)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1116 (List!36225 C!20116 List!36225 List!36225) Unit!50516)

(assert (=> b!3203303 (= lt!1081013 (lemmaMoveElementToOtherListKeepsConcatEq!1116 Nil!36101 lt!1081017 lt!1081022 lt!1079879))))

(assert (=> b!3203303 (= lt!1081022 (tail!5205 lt!1079879))))

(assert (=> b!3203303 (= lt!1081017 (head!7021 lt!1079879))))

(declare-fun lt!1081021 () Unit!50516)

(declare-fun lt!1081020 () Unit!50516)

(assert (=> b!3203303 (= lt!1081021 lt!1081020)))

(declare-fun isPrefix!2780 (List!36225 List!36225) Bool)

(declare-fun getSuffix!1382 (List!36225 List!36225) List!36225)

(assert (=> b!3203303 (isPrefix!2780 (++!8650 Nil!36101 (Cons!36101 (head!7021 (getSuffix!1382 lt!1079879 Nil!36101)) Nil!36101)) lt!1079879)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!504 (List!36225 List!36225) Unit!50516)

(assert (=> b!3203303 (= lt!1081020 (lemmaAddHeadSuffixToPrefixStillPrefix!504 Nil!36101 lt!1079879))))

(declare-fun lt!1081019 () Unit!50516)

(declare-fun lt!1081014 () Unit!50516)

(assert (=> b!3203303 (= lt!1081019 lt!1081014)))

(assert (=> b!3203303 (= lt!1081014 (lemmaAddHeadSuffixToPrefixStillPrefix!504 Nil!36101 lt!1079879))))

(declare-fun lt!1081027 () List!36225)

(assert (=> b!3203303 (= lt!1081027 (++!8650 Nil!36101 (Cons!36101 (head!7021 lt!1079879) Nil!36101)))))

(declare-fun lt!1081025 () Unit!50516)

(declare-fun e!1997195 () Unit!50516)

(assert (=> b!3203303 (= lt!1081025 e!1997195)))

(declare-fun c!537948 () Bool)

(assert (=> b!3203303 (= c!537948 (= (size!27191 Nil!36101) (size!27191 lt!1079879)))))

(declare-fun lt!1081006 () Unit!50516)

(declare-fun lt!1081028 () Unit!50516)

(assert (=> b!3203303 (= lt!1081006 lt!1081028)))

(assert (=> b!3203303 (<= (size!27191 Nil!36101) (size!27191 lt!1079879))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!312 (List!36225 List!36225) Unit!50516)

(assert (=> b!3203303 (= lt!1081028 (lemmaIsPrefixThenSmallerEqSize!312 Nil!36101 lt!1079879))))

(declare-fun e!1997200 () tuple2!35486)

(assert (=> b!3203303 (= e!1997200 e!1997196)))

(declare-fun bm!231924 () Bool)

(declare-fun call!231934 () Unit!50516)

(declare-fun lemmaIsPrefixRefl!1739 (List!36225 List!36225) Unit!50516)

(assert (=> bm!231924 (= call!231934 (lemmaIsPrefixRefl!1739 lt!1079879 lt!1079879))))

(declare-fun b!3203304 () Bool)

(declare-fun e!1997197 () tuple2!35486)

(assert (=> b!3203304 (= e!1997197 (tuple2!35487 Nil!36101 lt!1079879))))

(declare-fun b!3203305 () Bool)

(declare-fun e!1997199 () Bool)

(assert (=> b!3203305 (= e!1997199 e!1997194)))

(declare-fun res!1303579 () Bool)

(assert (=> b!3203305 (=> res!1303579 e!1997194)))

(assert (=> b!3203305 (= res!1303579 (isEmpty!20186 (_1!20877 lt!1081015)))))

(declare-fun bm!231925 () Bool)

(declare-fun call!231929 () Unit!50516)

(declare-fun lemmaIsPrefixSameLengthThenSameList!511 (List!36225 List!36225 List!36225) Unit!50516)

(assert (=> bm!231925 (= call!231929 (lemmaIsPrefixSameLengthThenSameList!511 lt!1079879 Nil!36101 lt!1079879))))

(declare-fun b!3203307 () Bool)

(declare-fun e!1997198 () tuple2!35486)

(assert (=> b!3203307 (= e!1997198 (tuple2!35487 Nil!36101 Nil!36101))))

(declare-fun bm!231926 () Bool)

(declare-fun call!231932 () List!36225)

(assert (=> bm!231926 (= call!231932 (tail!5205 lt!1079879))))

(declare-fun b!3203308 () Bool)

(declare-fun e!1997193 () tuple2!35486)

(declare-fun lt!1081024 () tuple2!35486)

(assert (=> b!3203308 (= e!1997193 lt!1081024)))

(declare-fun b!3203309 () Bool)

(declare-fun c!537950 () Bool)

(assert (=> b!3203309 (= c!537950 call!231933)))

(declare-fun lt!1081012 () Unit!50516)

(declare-fun lt!1081009 () Unit!50516)

(assert (=> b!3203309 (= lt!1081012 lt!1081009)))

(assert (=> b!3203309 (= lt!1079879 Nil!36101)))

(assert (=> b!3203309 (= lt!1081009 call!231929)))

(declare-fun lt!1081023 () Unit!50516)

(declare-fun lt!1081008 () Unit!50516)

(assert (=> b!3203309 (= lt!1081023 lt!1081008)))

(declare-fun call!231928 () Bool)

(assert (=> b!3203309 call!231928))

(assert (=> b!3203309 (= lt!1081008 call!231934)))

(assert (=> b!3203309 (= e!1997200 e!1997198)))

(declare-fun bm!231927 () Bool)

(declare-fun call!231927 () Regex!9965)

(assert (=> bm!231927 (= call!231927 (derivativeStep!2947 (regex!5206 (rule!7642 (h!41523 tokens!494))) call!231931))))

(declare-fun bm!231928 () Bool)

(assert (=> bm!231928 (= call!231930 (findLongestMatchInner!827 call!231927 lt!1081027 (+ (size!27191 Nil!36101) 1) call!231932 lt!1079879 (size!27191 lt!1079879)))))

(declare-fun bm!231929 () Bool)

(assert (=> bm!231929 (= call!231928 (isPrefix!2780 lt!1079879 lt!1079879))))

(declare-fun b!3203310 () Bool)

(assert (=> b!3203310 (= e!1997196 e!1997193)))

(assert (=> b!3203310 (= lt!1081024 call!231930)))

(declare-fun c!537951 () Bool)

(assert (=> b!3203310 (= c!537951 (isEmpty!20186 (_1!20877 lt!1081024)))))

(declare-fun b!3203306 () Bool)

(assert (=> b!3203306 (= e!1997197 e!1997200)))

(declare-fun c!537952 () Bool)

(assert (=> b!3203306 (= c!537952 (= (size!27191 Nil!36101) (size!27191 lt!1079879)))))

(declare-fun d!876750 () Bool)

(assert (=> d!876750 e!1997199))

(declare-fun res!1303580 () Bool)

(assert (=> d!876750 (=> (not res!1303580) (not e!1997199))))

(assert (=> d!876750 (= res!1303580 (= (++!8650 (_1!20877 lt!1081015) (_2!20877 lt!1081015)) lt!1079879))))

(assert (=> d!876750 (= lt!1081015 e!1997197)))

(declare-fun c!537953 () Bool)

(declare-fun lostCause!878 (Regex!9965) Bool)

(assert (=> d!876750 (= c!537953 (lostCause!878 (regex!5206 (rule!7642 (h!41523 tokens!494)))))))

(declare-fun lt!1081010 () Unit!50516)

(declare-fun Unit!50527 () Unit!50516)

(assert (=> d!876750 (= lt!1081010 Unit!50527)))

(assert (=> d!876750 (= (getSuffix!1382 lt!1079879 Nil!36101) lt!1079879)))

(declare-fun lt!1081003 () Unit!50516)

(declare-fun lt!1081002 () Unit!50516)

(assert (=> d!876750 (= lt!1081003 lt!1081002)))

(declare-fun lt!1081018 () List!36225)

(assert (=> d!876750 (= lt!1079879 lt!1081018)))

(declare-fun lemmaSamePrefixThenSameSuffix!1228 (List!36225 List!36225 List!36225 List!36225 List!36225) Unit!50516)

(assert (=> d!876750 (= lt!1081002 (lemmaSamePrefixThenSameSuffix!1228 Nil!36101 lt!1079879 Nil!36101 lt!1081018 lt!1079879))))

(assert (=> d!876750 (= lt!1081018 (getSuffix!1382 lt!1079879 Nil!36101))))

(declare-fun lt!1081005 () Unit!50516)

(declare-fun lt!1081007 () Unit!50516)

(assert (=> d!876750 (= lt!1081005 lt!1081007)))

(assert (=> d!876750 (isPrefix!2780 Nil!36101 (++!8650 Nil!36101 lt!1079879))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1762 (List!36225 List!36225) Unit!50516)

(assert (=> d!876750 (= lt!1081007 (lemmaConcatTwoListThenFirstIsPrefix!1762 Nil!36101 lt!1079879))))

(assert (=> d!876750 (validRegex!4548 (regex!5206 (rule!7642 (h!41523 tokens!494))))))

(assert (=> d!876750 (= (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879)) lt!1081015)))

(declare-fun b!3203311 () Bool)

(assert (=> b!3203311 (= e!1997193 (tuple2!35487 Nil!36101 lt!1079879))))

(declare-fun b!3203312 () Bool)

(declare-fun Unit!50528 () Unit!50516)

(assert (=> b!3203312 (= e!1997195 Unit!50528)))

(declare-fun lt!1081011 () Unit!50516)

(assert (=> b!3203312 (= lt!1081011 call!231934)))

(assert (=> b!3203312 call!231928))

(declare-fun lt!1081004 () Unit!50516)

(assert (=> b!3203312 (= lt!1081004 lt!1081011)))

(declare-fun lt!1081016 () Unit!50516)

(assert (=> b!3203312 (= lt!1081016 call!231929)))

(assert (=> b!3203312 (= lt!1079879 Nil!36101)))

(declare-fun lt!1081029 () Unit!50516)

(assert (=> b!3203312 (= lt!1081029 lt!1081016)))

(assert (=> b!3203312 false))

(declare-fun b!3203313 () Bool)

(declare-fun Unit!50529 () Unit!50516)

(assert (=> b!3203313 (= e!1997195 Unit!50529)))

(declare-fun b!3203314 () Bool)

(assert (=> b!3203314 (= e!1997198 (tuple2!35487 Nil!36101 lt!1079879))))

(assert (= (and d!876750 c!537953) b!3203304))

(assert (= (and d!876750 (not c!537953)) b!3203306))

(assert (= (and b!3203306 c!537952) b!3203309))

(assert (= (and b!3203306 (not c!537952)) b!3203303))

(assert (= (and b!3203309 c!537950) b!3203307))

(assert (= (and b!3203309 (not c!537950)) b!3203314))

(assert (= (and b!3203303 c!537948) b!3203312))

(assert (= (and b!3203303 (not c!537948)) b!3203313))

(assert (= (and b!3203303 c!537949) b!3203310))

(assert (= (and b!3203303 (not c!537949)) b!3203301))

(assert (= (and b!3203310 c!537951) b!3203311))

(assert (= (and b!3203310 (not c!537951)) b!3203308))

(assert (= (or b!3203310 b!3203301) bm!231923))

(assert (= (or b!3203310 b!3203301) bm!231926))

(assert (= (or b!3203310 b!3203301) bm!231927))

(assert (= (or b!3203310 b!3203301) bm!231928))

(assert (= (or b!3203309 b!3203312) bm!231924))

(assert (= (or b!3203309 b!3203312) bm!231929))

(assert (= (or b!3203309 b!3203312) bm!231925))

(assert (= (or b!3203309 b!3203303) bm!231922))

(assert (= (and d!876750 res!1303580) b!3203305))

(assert (= (and b!3203305 (not res!1303579)) b!3203302))

(declare-fun m!3467305 () Bool)

(assert (=> bm!231925 m!3467305))

(assert (=> bm!231928 m!3463549))

(declare-fun m!3467307 () Bool)

(assert (=> bm!231928 m!3467307))

(assert (=> bm!231923 m!3463917))

(declare-fun m!3467309 () Bool)

(assert (=> bm!231922 m!3467309))

(declare-fun m!3467311 () Bool)

(assert (=> b!3203305 m!3467311))

(declare-fun m!3467313 () Bool)

(assert (=> bm!231924 m!3467313))

(declare-fun m!3467315 () Bool)

(assert (=> bm!231929 m!3467315))

(declare-fun m!3467317 () Bool)

(assert (=> b!3203303 m!3467317))

(declare-fun m!3467319 () Bool)

(assert (=> b!3203303 m!3467319))

(assert (=> b!3203303 m!3463921))

(assert (=> b!3203303 m!3463549))

(declare-fun m!3467321 () Bool)

(assert (=> b!3203303 m!3467321))

(declare-fun m!3467323 () Bool)

(assert (=> b!3203303 m!3467323))

(declare-fun m!3467325 () Bool)

(assert (=> b!3203303 m!3467325))

(assert (=> b!3203303 m!3467325))

(declare-fun m!3467327 () Bool)

(assert (=> b!3203303 m!3467327))

(declare-fun m!3467329 () Bool)

(assert (=> b!3203303 m!3467329))

(assert (=> b!3203303 m!3467317))

(assert (=> b!3203303 m!3467321))

(assert (=> b!3203303 m!3464265))

(declare-fun m!3467331 () Bool)

(assert (=> b!3203303 m!3467331))

(declare-fun m!3467333 () Bool)

(assert (=> b!3203303 m!3467333))

(assert (=> b!3203303 m!3463917))

(declare-fun m!3467335 () Bool)

(assert (=> b!3203303 m!3467335))

(declare-fun m!3467337 () Bool)

(assert (=> b!3203302 m!3467337))

(assert (=> b!3203302 m!3464265))

(declare-fun m!3467339 () Bool)

(assert (=> bm!231927 m!3467339))

(declare-fun m!3467341 () Bool)

(assert (=> b!3203310 m!3467341))

(assert (=> bm!231926 m!3463921))

(declare-fun m!3467343 () Bool)

(assert (=> d!876750 m!3467343))

(declare-fun m!3467345 () Bool)

(assert (=> d!876750 m!3467345))

(declare-fun m!3467347 () Bool)

(assert (=> d!876750 m!3467347))

(assert (=> d!876750 m!3467343))

(declare-fun m!3467349 () Bool)

(assert (=> d!876750 m!3467349))

(declare-fun m!3467351 () Bool)

(assert (=> d!876750 m!3467351))

(declare-fun m!3467353 () Bool)

(assert (=> d!876750 m!3467353))

(declare-fun m!3467355 () Bool)

(assert (=> d!876750 m!3467355))

(assert (=> d!876750 m!3467317))

(assert (=> b!3201630 d!876750))

(declare-fun d!876842 () Bool)

(declare-fun e!1997203 () Bool)

(assert (=> d!876842 e!1997203))

(declare-fun res!1303583 () Bool)

(assert (=> d!876842 (=> res!1303583 e!1997203)))

(assert (=> d!876842 (= res!1303583 (isEmpty!20186 (_1!20877 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879)))))))

(declare-fun lt!1081032 () Unit!50516)

(declare-fun choose!18699 (Regex!9965 List!36225) Unit!50516)

(assert (=> d!876842 (= lt!1081032 (choose!18699 (regex!5206 (rule!7642 (h!41523 tokens!494))) lt!1079879))))

(assert (=> d!876842 (validRegex!4548 (regex!5206 (rule!7642 (h!41523 tokens!494))))))

(assert (=> d!876842 (= (longestMatchIsAcceptedByMatchOrIsEmpty!800 (regex!5206 (rule!7642 (h!41523 tokens!494))) lt!1079879) lt!1081032)))

(declare-fun b!3203317 () Bool)

(assert (=> b!3203317 (= e!1997203 (matchR!4599 (regex!5206 (rule!7642 (h!41523 tokens!494))) (_1!20877 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879)))))))

(assert (= (and d!876842 (not res!1303583)) b!3203317))

(assert (=> d!876842 m!3464265))

(assert (=> d!876842 m!3463549))

(assert (=> d!876842 m!3464265))

(assert (=> d!876842 m!3463549))

(assert (=> d!876842 m!3464269))

(assert (=> d!876842 m!3464267))

(declare-fun m!3467357 () Bool)

(assert (=> d!876842 m!3467357))

(assert (=> d!876842 m!3467349))

(assert (=> b!3203317 m!3464265))

(assert (=> b!3203317 m!3463549))

(assert (=> b!3203317 m!3464265))

(assert (=> b!3203317 m!3463549))

(assert (=> b!3203317 m!3464269))

(assert (=> b!3203317 m!3464287))

(assert (=> b!3201630 d!876842))

(declare-fun d!876844 () Bool)

(assert (=> d!876844 (= (apply!8149 (transformation!5206 (rule!7642 (h!41523 tokens!494))) (seqFromList!3484 (_1!20877 lt!1080104))) (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (seqFromList!3484 (_1!20877 lt!1080104))))))

(declare-fun b_lambda!87611 () Bool)

(assert (=> (not b_lambda!87611) (not d!876844)))

(assert (=> d!876844 t!237717))

(declare-fun b_and!213067 () Bool)

(assert (= b_and!213053 (and (=> t!237717 result!199302) b_and!213067)))

(assert (=> d!876844 t!237719))

(declare-fun b_and!213069 () Bool)

(assert (= b_and!213055 (and (=> t!237719 result!199304) b_and!213069)))

(assert (=> d!876844 t!237711))

(declare-fun b_and!213071 () Bool)

(assert (= b_and!213047 (and (=> t!237711 result!199296) b_and!213071)))

(assert (=> d!876844 t!237715))

(declare-fun b_and!213073 () Bool)

(assert (= b_and!213051 (and (=> t!237715 result!199300) b_and!213073)))

(assert (=> d!876844 t!237713))

(declare-fun b_and!213075 () Bool)

(assert (= b_and!213049 (and (=> t!237713 result!199298) b_and!213075)))

(assert (=> d!876844 m!3464255))

(assert (=> d!876844 m!3466949))

(assert (=> b!3201630 d!876844))

(declare-fun d!876846 () Bool)

(declare-fun lt!1081033 () Int)

(assert (=> d!876846 (= lt!1081033 (size!27191 (list!12831 (seqFromList!3484 (_1!20877 lt!1080104)))))))

(assert (=> d!876846 (= lt!1081033 (size!27199 (c!537387 (seqFromList!3484 (_1!20877 lt!1080104)))))))

(assert (=> d!876846 (= (size!27195 (seqFromList!3484 (_1!20877 lt!1080104))) lt!1081033)))

(declare-fun bs!541086 () Bool)

(assert (= bs!541086 d!876846))

(assert (=> bs!541086 m!3464255))

(assert (=> bs!541086 m!3466955))

(assert (=> bs!541086 m!3466955))

(declare-fun m!3467359 () Bool)

(assert (=> bs!541086 m!3467359))

(declare-fun m!3467361 () Bool)

(assert (=> bs!541086 m!3467361))

(assert (=> b!3201630 d!876846))

(declare-fun d!876848 () Bool)

(declare-fun lt!1081034 () Int)

(assert (=> d!876848 (>= lt!1081034 0)))

(declare-fun e!1997204 () Int)

(assert (=> d!876848 (= lt!1081034 e!1997204)))

(declare-fun c!537954 () Bool)

(assert (=> d!876848 (= c!537954 ((_ is Nil!36101) Nil!36101))))

(assert (=> d!876848 (= (size!27191 Nil!36101) lt!1081034)))

(declare-fun b!3203318 () Bool)

(assert (=> b!3203318 (= e!1997204 0)))

(declare-fun b!3203319 () Bool)

(assert (=> b!3203319 (= e!1997204 (+ 1 (size!27191 (t!237476 Nil!36101))))))

(assert (= (and d!876848 c!537954) b!3203318))

(assert (= (and d!876848 (not c!537954)) b!3203319))

(declare-fun m!3467363 () Bool)

(assert (=> b!3203319 m!3467363))

(assert (=> b!3201630 d!876848))

(declare-fun d!876850 () Bool)

(assert (=> d!876850 (= (isEmpty!20186 (_1!20877 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879)))) ((_ is Nil!36101) (_1!20877 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879)))))))

(assert (=> b!3201630 d!876850))

(declare-fun d!876852 () Bool)

(assert (=> d!876852 (= (seqFromList!3484 (_1!20877 lt!1080104)) (fromListB!1534 (_1!20877 lt!1080104)))))

(declare-fun bs!541087 () Bool)

(assert (= bs!541087 d!876852))

(declare-fun m!3467365 () Bool)

(assert (=> bs!541087 m!3467365))

(assert (=> b!3201630 d!876852))

(declare-fun bs!541088 () Bool)

(declare-fun d!876854 () Bool)

(assert (= bs!541088 (and d!876854 d!876718)))

(declare-fun lambda!117241 () Int)

(assert (=> bs!541088 (= (and (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) (= (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (= lambda!117241 lambda!117237))))

(assert (=> d!876854 true))

(assert (=> d!876854 (< (dynLambda!14535 order!18353 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241)))) (dynLambda!14544 order!18359 lambda!117241))))

(assert (=> d!876854 true))

(assert (=> d!876854 (< (dynLambda!14533 order!18349 (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241)))) (dynLambda!14544 order!18359 lambda!117241))))

(declare-fun Forall!1263 (Int) Bool)

(assert (=> d!876854 (= (semiInverseModEq!2151 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241)))) (Forall!1263 lambda!117241))))

(declare-fun bs!541089 () Bool)

(assert (= bs!541089 d!876854))

(declare-fun m!3467367 () Bool)

(assert (=> bs!541089 m!3467367))

(assert (=> d!876026 d!876854))

(declare-fun d!876856 () Bool)

(declare-fun lt!1081035 () Bool)

(assert (=> d!876856 (= lt!1081035 (isEmpty!20192 (list!12833 (_1!20873 lt!1080158))))))

(assert (=> d!876856 (= lt!1081035 (isEmpty!20193 (c!537388 (_1!20873 lt!1080158))))))

(assert (=> d!876856 (= (isEmpty!20180 (_1!20873 lt!1080158)) lt!1081035)))

(declare-fun bs!541090 () Bool)

(assert (= bs!541090 d!876856))

(assert (=> bs!541090 m!3464535))

(assert (=> bs!541090 m!3464535))

(declare-fun m!3467369 () Bool)

(assert (=> bs!541090 m!3467369))

(declare-fun m!3467371 () Bool)

(assert (=> bs!541090 m!3467371))

(assert (=> b!3201846 d!876856))

(declare-fun d!876858 () Bool)

(assert (=> d!876858 (= (list!12831 lt!1080110) (list!12834 (c!537387 lt!1080110)))))

(declare-fun bs!541091 () Bool)

(assert (= bs!541091 d!876858))

(declare-fun m!3467373 () Bool)

(assert (=> bs!541091 m!3467373))

(assert (=> d!875880 d!876858))

(declare-fun d!876860 () Bool)

(declare-fun c!537955 () Bool)

(assert (=> d!876860 (= c!537955 ((_ is Cons!36103) (list!12833 lt!1079899)))))

(declare-fun e!1997205 () List!36225)

(assert (=> d!876860 (= (printList!1345 thiss!18206 (list!12833 lt!1079899)) e!1997205)))

(declare-fun b!3203324 () Bool)

(assert (=> b!3203324 (= e!1997205 (++!8650 (list!12831 (charsOf!3222 (h!41523 (list!12833 lt!1079899)))) (printList!1345 thiss!18206 (t!237478 (list!12833 lt!1079899)))))))

(declare-fun b!3203325 () Bool)

(assert (=> b!3203325 (= e!1997205 Nil!36101)))

(assert (= (and d!876860 c!537955) b!3203324))

(assert (= (and d!876860 (not c!537955)) b!3203325))

(declare-fun m!3467375 () Bool)

(assert (=> b!3203324 m!3467375))

(assert (=> b!3203324 m!3467375))

(declare-fun m!3467377 () Bool)

(assert (=> b!3203324 m!3467377))

(declare-fun m!3467379 () Bool)

(assert (=> b!3203324 m!3467379))

(assert (=> b!3203324 m!3467377))

(assert (=> b!3203324 m!3467379))

(declare-fun m!3467381 () Bool)

(assert (=> b!3203324 m!3467381))

(assert (=> d!875880 d!876860))

(declare-fun d!876862 () Bool)

(assert (=> d!876862 (= (list!12833 lt!1079899) (list!12837 (c!537388 lt!1079899)))))

(declare-fun bs!541092 () Bool)

(assert (= bs!541092 d!876862))

(assert (=> bs!541092 m!3466819))

(assert (=> d!875880 d!876862))

(assert (=> d!875880 d!875972))

(assert (=> d!875890 d!875808))

(assert (=> d!875890 d!875824))

(declare-fun d!876864 () Bool)

(assert (=> d!876864 (= (apply!8149 (transformation!5206 (rule!7642 (h!41523 tokens!494))) (seqFromList!3484 lt!1079879)) (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (seqFromList!3484 lt!1079879)))))

(declare-fun b_lambda!87613 () Bool)

(assert (=> (not b_lambda!87613) (not d!876864)))

(declare-fun t!237731 () Bool)

(declare-fun tb!157007 () Bool)

(assert (=> (and b!3202018 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237731) tb!157007))

(declare-fun result!199316 () Bool)

(assert (=> tb!157007 (= result!199316 (inv!21 (dynLambda!14540 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (seqFromList!3484 lt!1079879))))))

(declare-fun m!3467383 () Bool)

(assert (=> tb!157007 m!3467383))

(assert (=> d!876864 t!237731))

(declare-fun b_and!213077 () Bool)

(assert (= b_and!213073 (and (=> t!237731 result!199316) b_and!213077)))

(declare-fun t!237733 () Bool)

(declare-fun tb!157009 () Bool)

(assert (=> (and b!3201192 (= (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237733) tb!157009))

(declare-fun result!199318 () Bool)

(assert (= result!199318 result!199316))

(assert (=> d!876864 t!237733))

(declare-fun b_and!213079 () Bool)

(assert (= b_and!213075 (and (=> t!237733 result!199318) b_and!213079)))

(declare-fun t!237735 () Bool)

(declare-fun tb!157011 () Bool)

(assert (=> (and b!3201175 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237735) tb!157011))

(declare-fun result!199320 () Bool)

(assert (= result!199320 result!199316))

(assert (=> d!876864 t!237735))

(declare-fun b_and!213081 () Bool)

(assert (= b_and!213069 (and (=> t!237735 result!199320) b_and!213081)))

(declare-fun t!237737 () Bool)

(declare-fun tb!157013 () Bool)

(assert (=> (and b!3201193 (= (toValue!7282 (transformation!5206 (h!41522 rules!2135))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237737) tb!157013))

(declare-fun result!199322 () Bool)

(assert (= result!199322 result!199316))

(assert (=> d!876864 t!237737))

(declare-fun b_and!213083 () Bool)

(assert (= b_and!213071 (and (=> t!237737 result!199322) b_and!213083)))

(declare-fun tb!157015 () Bool)

(declare-fun t!237739 () Bool)

(assert (=> (and b!3202029 (= (toValue!7282 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237739) tb!157015))

(declare-fun result!199324 () Bool)

(assert (= result!199324 result!199316))

(assert (=> d!876864 t!237739))

(declare-fun b_and!213085 () Bool)

(assert (= b_and!213067 (and (=> t!237739 result!199324) b_and!213085)))

(assert (=> d!876864 m!3463573))

(declare-fun m!3467385 () Bool)

(assert (=> d!876864 m!3467385))

(assert (=> d!875890 d!876864))

(declare-fun d!876866 () Bool)

(assert (=> d!876866 (= (maxPrefixOneRule!1574 thiss!18206 (rule!7642 (h!41523 tokens!494)) lt!1079879) (Some!7107 (tuple2!35481 (Token!9779 (apply!8149 (transformation!5206 (rule!7642 (h!41523 tokens!494))) (seqFromList!3484 lt!1079879)) (rule!7642 (h!41523 tokens!494)) (size!27191 lt!1079879) lt!1079879) Nil!36101)))))

(assert (=> d!876866 true))

(declare-fun _$59!373 () Unit!50516)

(assert (=> d!876866 (= (choose!18687 thiss!18206 rules!2135 lt!1079879 lt!1079879 Nil!36101 (rule!7642 (h!41523 tokens!494))) _$59!373)))

(declare-fun bs!541093 () Bool)

(assert (= bs!541093 d!876866))

(assert (=> bs!541093 m!3463511))

(assert (=> bs!541093 m!3463573))

(assert (=> bs!541093 m!3463573))

(assert (=> bs!541093 m!3464323))

(assert (=> bs!541093 m!3463549))

(assert (=> d!875890 d!876866))

(assert (=> d!875890 d!876060))

(assert (=> d!875890 d!876012))

(declare-fun d!876868 () Bool)

(declare-fun lt!1081036 () Int)

(assert (=> d!876868 (= lt!1081036 (size!27196 (list!12833 (_1!20873 lt!1080158))))))

(assert (=> d!876868 (= lt!1081036 (size!27197 (c!537388 (_1!20873 lt!1080158))))))

(assert (=> d!876868 (= (size!27190 (_1!20873 lt!1080158)) lt!1081036)))

(declare-fun bs!541094 () Bool)

(assert (= bs!541094 d!876868))

(assert (=> bs!541094 m!3464535))

(assert (=> bs!541094 m!3464535))

(declare-fun m!3467387 () Bool)

(assert (=> bs!541094 m!3467387))

(declare-fun m!3467389 () Bool)

(assert (=> bs!541094 m!3467389))

(assert (=> d!875966 d!876868))

(declare-fun lt!1081048 () tuple2!35478)

(declare-fun b!3203326 () Bool)

(declare-fun lt!1081058 () Option!7109)

(assert (=> b!3203326 (= lt!1081048 (lexRec!682 thiss!18206 rules!2135 (_2!20879 (v!35648 lt!1081058))))))

(declare-fun e!1997210 () tuple2!35478)

(assert (=> b!3203326 (= e!1997210 (tuple2!35479 (prepend!1170 (_1!20873 lt!1081048) (_1!20879 (v!35648 lt!1081058))) (_2!20873 lt!1081048)))))

(declare-fun d!876870 () Bool)

(declare-fun e!1997207 () Bool)

(assert (=> d!876870 e!1997207))

(declare-fun res!1303584 () Bool)

(assert (=> d!876870 (=> (not res!1303584) (not e!1997207))))

(declare-fun lt!1081042 () tuple2!35478)

(assert (=> d!876870 (= res!1303584 (= (list!12833 (_1!20873 lt!1081042)) (list!12833 (_1!20873 (lexRec!682 thiss!18206 rules!2135 lt!1079906)))))))

(declare-fun e!1997208 () tuple2!35478)

(assert (=> d!876870 (= lt!1081042 e!1997208)))

(declare-fun c!537956 () Bool)

(declare-fun lt!1081043 () Option!7109)

(assert (=> d!876870 (= c!537956 ((_ is Some!7108) lt!1081043))))

(assert (=> d!876870 (= lt!1081043 (maxPrefixZipperSequenceV2!469 thiss!18206 rules!2135 lt!1079906 lt!1079906))))

(declare-fun lt!1081057 () Unit!50516)

(declare-fun lt!1081054 () Unit!50516)

(assert (=> d!876870 (= lt!1081057 lt!1081054)))

(declare-fun lt!1081063 () List!36225)

(declare-fun lt!1081066 () List!36225)

(assert (=> d!876870 (isSuffix!844 lt!1081063 (++!8650 lt!1081066 lt!1081063))))

(assert (=> d!876870 (= lt!1081054 (lemmaConcatTwoListThenFSndIsSuffix!529 lt!1081066 lt!1081063))))

(assert (=> d!876870 (= lt!1081063 (list!12831 lt!1079906))))

(assert (=> d!876870 (= lt!1081066 (list!12831 (BalanceConc!21189 Empty!10787)))))

(assert (=> d!876870 (= (lexTailRecV2!929 thiss!18206 rules!2135 lt!1079906 (BalanceConc!21189 Empty!10787) lt!1079906 (BalanceConc!21191 Empty!10788)) lt!1081042)))

(declare-fun b!3203327 () Bool)

(assert (=> b!3203327 (= e!1997208 (tuple2!35479 (BalanceConc!21191 Empty!10788) lt!1079906))))

(declare-fun lt!1081046 () BalanceConc!21188)

(declare-fun b!3203328 () Bool)

(assert (=> b!3203328 (= e!1997208 (lexTailRecV2!929 thiss!18206 rules!2135 lt!1079906 lt!1081046 (_2!20879 (v!35648 lt!1081043)) (append!862 (BalanceConc!21191 Empty!10788) (_1!20879 (v!35648 lt!1081043)))))))

(declare-fun lt!1081069 () tuple2!35478)

(assert (=> b!3203328 (= lt!1081069 (lexRec!682 thiss!18206 rules!2135 (_2!20879 (v!35648 lt!1081043))))))

(declare-fun lt!1081052 () List!36225)

(assert (=> b!3203328 (= lt!1081052 (list!12831 (BalanceConc!21189 Empty!10787)))))

(declare-fun lt!1081047 () List!36225)

(assert (=> b!3203328 (= lt!1081047 (list!12831 (charsOf!3222 (_1!20879 (v!35648 lt!1081043)))))))

(declare-fun lt!1081056 () List!36225)

(assert (=> b!3203328 (= lt!1081056 (list!12831 (_2!20879 (v!35648 lt!1081043))))))

(declare-fun lt!1081038 () Unit!50516)

(assert (=> b!3203328 (= lt!1081038 (lemmaConcatAssociativity!1724 lt!1081052 lt!1081047 lt!1081056))))

(assert (=> b!3203328 (= (++!8650 (++!8650 lt!1081052 lt!1081047) lt!1081056) (++!8650 lt!1081052 (++!8650 lt!1081047 lt!1081056)))))

(declare-fun lt!1081067 () Unit!50516)

(assert (=> b!3203328 (= lt!1081067 lt!1081038)))

(assert (=> b!3203328 (= lt!1081058 (maxPrefixZipperSequence!1075 thiss!18206 rules!2135 lt!1079906))))

(declare-fun c!537958 () Bool)

(assert (=> b!3203328 (= c!537958 ((_ is Some!7108) lt!1081058))))

(assert (=> b!3203328 (= (lexRec!682 thiss!18206 rules!2135 lt!1079906) e!1997210)))

(declare-fun lt!1081053 () Unit!50516)

(declare-fun Unit!50530 () Unit!50516)

(assert (=> b!3203328 (= lt!1081053 Unit!50530)))

(declare-fun lt!1081068 () List!36227)

(assert (=> b!3203328 (= lt!1081068 (list!12833 (BalanceConc!21191 Empty!10788)))))

(declare-fun lt!1081060 () List!36227)

(assert (=> b!3203328 (= lt!1081060 (Cons!36103 (_1!20879 (v!35648 lt!1081043)) Nil!36103))))

(declare-fun lt!1081061 () List!36227)

(assert (=> b!3203328 (= lt!1081061 (list!12833 (_1!20873 lt!1081069)))))

(declare-fun lt!1081050 () Unit!50516)

(assert (=> b!3203328 (= lt!1081050 (lemmaConcatAssociativity!1725 lt!1081068 lt!1081060 lt!1081061))))

(assert (=> b!3203328 (= (++!8655 (++!8655 lt!1081068 lt!1081060) lt!1081061) (++!8655 lt!1081068 (++!8655 lt!1081060 lt!1081061)))))

(declare-fun lt!1081041 () Unit!50516)

(assert (=> b!3203328 (= lt!1081041 lt!1081050)))

(declare-fun lt!1081045 () List!36225)

(assert (=> b!3203328 (= lt!1081045 (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) (list!12831 (charsOf!3222 (_1!20879 (v!35648 lt!1081043))))))))

(declare-fun lt!1081059 () List!36225)

(assert (=> b!3203328 (= lt!1081059 (list!12831 (_2!20879 (v!35648 lt!1081043))))))

(declare-fun lt!1081064 () List!36227)

(assert (=> b!3203328 (= lt!1081064 (list!12833 (append!862 (BalanceConc!21191 Empty!10788) (_1!20879 (v!35648 lt!1081043)))))))

(declare-fun lt!1081070 () Unit!50516)

(assert (=> b!3203328 (= lt!1081070 (lemmaLexThenLexPrefix!447 thiss!18206 rules!2135 lt!1081045 lt!1081059 lt!1081064 (list!12833 (_1!20873 lt!1081069)) (list!12831 (_2!20873 lt!1081069))))))

(assert (=> b!3203328 (= (lexList!1309 thiss!18206 rules!2135 lt!1081045) (tuple2!35489 lt!1081064 Nil!36101))))

(declare-fun lt!1081039 () Unit!50516)

(assert (=> b!3203328 (= lt!1081039 lt!1081070)))

(declare-fun lt!1081051 () BalanceConc!21188)

(assert (=> b!3203328 (= lt!1081051 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (_1!20879 (v!35648 lt!1081043)))))))

(declare-fun lt!1081049 () Option!7109)

(assert (=> b!3203328 (= lt!1081049 (maxPrefixZipperSequence!1075 thiss!18206 rules!2135 lt!1081051))))

(declare-fun c!537957 () Bool)

(assert (=> b!3203328 (= c!537957 ((_ is Some!7108) lt!1081049))))

(declare-fun e!1997209 () tuple2!35478)

(assert (=> b!3203328 (= (lexRec!682 thiss!18206 rules!2135 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (_1!20879 (v!35648 lt!1081043))))) e!1997209)))

(declare-fun lt!1081055 () Unit!50516)

(declare-fun Unit!50531 () Unit!50516)

(assert (=> b!3203328 (= lt!1081055 Unit!50531)))

(assert (=> b!3203328 (= lt!1081046 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (_1!20879 (v!35648 lt!1081043)))))))

(declare-fun lt!1081037 () List!36225)

(assert (=> b!3203328 (= lt!1081037 (list!12831 lt!1081046))))

(declare-fun lt!1081065 () List!36225)

(assert (=> b!3203328 (= lt!1081065 (list!12831 (_2!20879 (v!35648 lt!1081043))))))

(declare-fun lt!1081044 () Unit!50516)

(assert (=> b!3203328 (= lt!1081044 (lemmaConcatTwoListThenFSndIsSuffix!529 lt!1081037 lt!1081065))))

(assert (=> b!3203328 (isSuffix!844 lt!1081065 (++!8650 lt!1081037 lt!1081065))))

(declare-fun lt!1081040 () Unit!50516)

(assert (=> b!3203328 (= lt!1081040 lt!1081044)))

(declare-fun b!3203329 () Bool)

(assert (=> b!3203329 (= e!1997210 (tuple2!35479 (BalanceConc!21191 Empty!10788) lt!1079906))))

(declare-fun lt!1081062 () tuple2!35478)

(declare-fun b!3203330 () Bool)

(assert (=> b!3203330 (= lt!1081062 (lexRec!682 thiss!18206 rules!2135 (_2!20879 (v!35648 lt!1081049))))))

(assert (=> b!3203330 (= e!1997209 (tuple2!35479 (prepend!1170 (_1!20873 lt!1081062) (_1!20879 (v!35648 lt!1081049))) (_2!20873 lt!1081062)))))

(declare-fun b!3203331 () Bool)

(assert (=> b!3203331 (= e!1997207 (= (list!12831 (_2!20873 lt!1081042)) (list!12831 (_2!20873 (lexRec!682 thiss!18206 rules!2135 lt!1079906)))))))

(declare-fun b!3203332 () Bool)

(assert (=> b!3203332 (= e!1997209 (tuple2!35479 (BalanceConc!21191 Empty!10788) lt!1081051))))

(assert (= (and d!876870 c!537956) b!3203328))

(assert (= (and d!876870 (not c!537956)) b!3203327))

(assert (= (and b!3203328 c!537958) b!3203326))

(assert (= (and b!3203328 (not c!537958)) b!3203329))

(assert (= (and b!3203328 c!537957) b!3203330))

(assert (= (and b!3203328 (not c!537957)) b!3203332))

(assert (= (and d!876870 res!1303584) b!3203331))

(declare-fun m!3467391 () Bool)

(assert (=> b!3203330 m!3467391))

(declare-fun m!3467393 () Bool)

(assert (=> b!3203330 m!3467393))

(declare-fun m!3467395 () Bool)

(assert (=> b!3203326 m!3467395))

(declare-fun m!3467397 () Bool)

(assert (=> b!3203326 m!3467397))

(declare-fun m!3467399 () Bool)

(assert (=> d!876870 m!3467399))

(assert (=> d!876870 m!3463751))

(declare-fun m!3467401 () Bool)

(assert (=> d!876870 m!3467401))

(declare-fun m!3467403 () Bool)

(assert (=> d!876870 m!3467403))

(assert (=> d!876870 m!3467399))

(declare-fun m!3467405 () Bool)

(assert (=> d!876870 m!3467405))

(declare-fun m!3467407 () Bool)

(assert (=> d!876870 m!3467407))

(assert (=> d!876870 m!3464537))

(declare-fun m!3467409 () Bool)

(assert (=> d!876870 m!3467409))

(declare-fun m!3467411 () Bool)

(assert (=> d!876870 m!3467411))

(declare-fun m!3467413 () Bool)

(assert (=> b!3203328 m!3467413))

(declare-fun m!3467415 () Bool)

(assert (=> b!3203328 m!3467415))

(declare-fun m!3467417 () Bool)

(assert (=> b!3203328 m!3467417))

(declare-fun m!3467419 () Bool)

(assert (=> b!3203328 m!3467419))

(declare-fun m!3467421 () Bool)

(assert (=> b!3203328 m!3467421))

(declare-fun m!3467423 () Bool)

(assert (=> b!3203328 m!3467423))

(declare-fun m!3467425 () Bool)

(assert (=> b!3203328 m!3467425))

(declare-fun m!3467427 () Bool)

(assert (=> b!3203328 m!3467427))

(declare-fun m!3467429 () Bool)

(assert (=> b!3203328 m!3467429))

(assert (=> b!3203328 m!3467425))

(declare-fun m!3467431 () Bool)

(assert (=> b!3203328 m!3467431))

(declare-fun m!3467433 () Bool)

(assert (=> b!3203328 m!3467433))

(declare-fun m!3467435 () Bool)

(assert (=> b!3203328 m!3467435))

(assert (=> b!3203328 m!3467403))

(declare-fun m!3467437 () Bool)

(assert (=> b!3203328 m!3467437))

(declare-fun m!3467439 () Bool)

(assert (=> b!3203328 m!3467439))

(assert (=> b!3203328 m!3467429))

(declare-fun m!3467441 () Bool)

(assert (=> b!3203328 m!3467441))

(assert (=> b!3203328 m!3467439))

(declare-fun m!3467443 () Bool)

(assert (=> b!3203328 m!3467443))

(assert (=> b!3203328 m!3467413))

(declare-fun m!3467445 () Bool)

(assert (=> b!3203328 m!3467445))

(declare-fun m!3467447 () Bool)

(assert (=> b!3203328 m!3467447))

(declare-fun m!3467449 () Bool)

(assert (=> b!3203328 m!3467449))

(assert (=> b!3203328 m!3467429))

(declare-fun m!3467451 () Bool)

(assert (=> b!3203328 m!3467451))

(assert (=> b!3203328 m!3463751))

(assert (=> b!3203328 m!3467423))

(declare-fun m!3467453 () Bool)

(assert (=> b!3203328 m!3467453))

(assert (=> b!3203328 m!3467421))

(declare-fun m!3467455 () Bool)

(assert (=> b!3203328 m!3467455))

(assert (=> b!3203328 m!3467455))

(declare-fun m!3467457 () Bool)

(assert (=> b!3203328 m!3467457))

(declare-fun m!3467459 () Bool)

(assert (=> b!3203328 m!3467459))

(assert (=> b!3203328 m!3463751))

(assert (=> b!3203328 m!3467433))

(declare-fun m!3467461 () Bool)

(assert (=> b!3203328 m!3467461))

(declare-fun m!3467463 () Bool)

(assert (=> b!3203328 m!3467463))

(assert (=> b!3203328 m!3467421))

(declare-fun m!3467465 () Bool)

(assert (=> b!3203328 m!3467465))

(declare-fun m!3467467 () Bool)

(assert (=> b!3203328 m!3467467))

(assert (=> b!3203328 m!3467417))

(assert (=> b!3203328 m!3465919))

(declare-fun m!3467469 () Bool)

(assert (=> b!3203328 m!3467469))

(assert (=> b!3203328 m!3467415))

(assert (=> b!3203328 m!3467459))

(declare-fun m!3467471 () Bool)

(assert (=> b!3203328 m!3467471))

(declare-fun m!3467473 () Bool)

(assert (=> b!3203331 m!3467473))

(assert (=> b!3203331 m!3467403))

(declare-fun m!3467475 () Bool)

(assert (=> b!3203331 m!3467475))

(assert (=> d!875966 d!876870))

(declare-fun d!876872 () Bool)

(declare-fun lt!1081071 () Int)

(assert (=> d!876872 (>= lt!1081071 0)))

(declare-fun e!1997211 () Int)

(assert (=> d!876872 (= lt!1081071 e!1997211)))

(declare-fun c!537959 () Bool)

(assert (=> d!876872 (= c!537959 ((_ is Nil!36101) (_2!20874 (get!11488 lt!1080102))))))

(assert (=> d!876872 (= (size!27191 (_2!20874 (get!11488 lt!1080102))) lt!1081071)))

(declare-fun b!3203333 () Bool)

(assert (=> b!3203333 (= e!1997211 0)))

(declare-fun b!3203334 () Bool)

(assert (=> b!3203334 (= e!1997211 (+ 1 (size!27191 (t!237476 (_2!20874 (get!11488 lt!1080102))))))))

(assert (= (and d!876872 c!537959) b!3203333))

(assert (= (and d!876872 (not c!537959)) b!3203334))

(declare-fun m!3467477 () Bool)

(assert (=> b!3203334 m!3467477))

(assert (=> b!3201626 d!876872))

(assert (=> b!3201626 d!876196))

(assert (=> b!3201626 d!875808))

(declare-fun d!876874 () Bool)

(declare-fun c!537966 () Bool)

(assert (=> d!876874 (= c!537966 ((_ is Node!10787) (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494)))))))))

(declare-fun e!1997221 () Bool)

(assert (=> d!876874 (= (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494)))))) e!1997221)))

(declare-fun b!3203351 () Bool)

(declare-fun inv!48960 (Conc!10787) Bool)

(assert (=> b!3203351 (= e!1997221 (inv!48960 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494)))))))))

(declare-fun b!3203352 () Bool)

(declare-fun e!1997222 () Bool)

(assert (=> b!3203352 (= e!1997221 e!1997222)))

(declare-fun res!1303589 () Bool)

(assert (=> b!3203352 (= res!1303589 (not ((_ is Leaf!17001) (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494))))))))))

(assert (=> b!3203352 (=> res!1303589 e!1997222)))

(declare-fun b!3203353 () Bool)

(declare-fun inv!48961 (Conc!10787) Bool)

(assert (=> b!3203353 (= e!1997222 (inv!48961 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494)))))))))

(assert (= (and d!876874 c!537966) b!3203351))

(assert (= (and d!876874 (not c!537966)) b!3203352))

(assert (= (and b!3203352 (not res!1303589)) b!3203353))

(declare-fun m!3467499 () Bool)

(assert (=> b!3203351 m!3467499))

(declare-fun m!3467501 () Bool)

(assert (=> b!3203353 m!3467501))

(assert (=> b!3201903 d!876874))

(assert (=> bm!231747 d!876476))

(declare-fun d!876888 () Bool)

(declare-fun lt!1081073 () Int)

(assert (=> d!876888 (= lt!1081073 (size!27196 (list!12833 (_1!20873 lt!1080196))))))

(assert (=> d!876888 (= lt!1081073 (size!27197 (c!537388 (_1!20873 lt!1080196))))))

(assert (=> d!876888 (= (size!27190 (_1!20873 lt!1080196)) lt!1081073)))

(declare-fun bs!541098 () Bool)

(assert (= bs!541098 d!876888))

(assert (=> bs!541098 m!3464761))

(assert (=> bs!541098 m!3464761))

(declare-fun m!3467505 () Bool)

(assert (=> bs!541098 m!3467505))

(declare-fun m!3467509 () Bool)

(assert (=> bs!541098 m!3467509))

(assert (=> d!876010 d!876888))

(declare-fun b!3203358 () Bool)

(declare-fun lt!1081095 () Option!7109)

(declare-fun lt!1081085 () tuple2!35478)

(assert (=> b!3203358 (= lt!1081085 (lexRec!682 thiss!18206 rules!2135 (_2!20879 (v!35648 lt!1081095))))))

(declare-fun e!1997228 () tuple2!35478)

(assert (=> b!3203358 (= e!1997228 (tuple2!35479 (prepend!1170 (_1!20873 lt!1081085) (_1!20879 (v!35648 lt!1081095))) (_2!20873 lt!1081085)))))

(declare-fun d!876894 () Bool)

(declare-fun e!1997225 () Bool)

(assert (=> d!876894 e!1997225))

(declare-fun res!1303590 () Bool)

(assert (=> d!876894 (=> (not res!1303590) (not e!1997225))))

(declare-fun lt!1081079 () tuple2!35478)

(assert (=> d!876894 (= res!1303590 (= (list!12833 (_1!20873 lt!1081079)) (list!12833 (_1!20873 (lexRec!682 thiss!18206 rules!2135 lt!1079875)))))))

(declare-fun e!1997226 () tuple2!35478)

(assert (=> d!876894 (= lt!1081079 e!1997226)))

(declare-fun c!537969 () Bool)

(declare-fun lt!1081080 () Option!7109)

(assert (=> d!876894 (= c!537969 ((_ is Some!7108) lt!1081080))))

(assert (=> d!876894 (= lt!1081080 (maxPrefixZipperSequenceV2!469 thiss!18206 rules!2135 lt!1079875 lt!1079875))))

(declare-fun lt!1081094 () Unit!50516)

(declare-fun lt!1081091 () Unit!50516)

(assert (=> d!876894 (= lt!1081094 lt!1081091)))

(declare-fun lt!1081100 () List!36225)

(declare-fun lt!1081103 () List!36225)

(assert (=> d!876894 (isSuffix!844 lt!1081100 (++!8650 lt!1081103 lt!1081100))))

(assert (=> d!876894 (= lt!1081091 (lemmaConcatTwoListThenFSndIsSuffix!529 lt!1081103 lt!1081100))))

(assert (=> d!876894 (= lt!1081100 (list!12831 lt!1079875))))

(assert (=> d!876894 (= lt!1081103 (list!12831 (BalanceConc!21189 Empty!10787)))))

(assert (=> d!876894 (= (lexTailRecV2!929 thiss!18206 rules!2135 lt!1079875 (BalanceConc!21189 Empty!10787) lt!1079875 (BalanceConc!21191 Empty!10788)) lt!1081079)))

(declare-fun b!3203359 () Bool)

(assert (=> b!3203359 (= e!1997226 (tuple2!35479 (BalanceConc!21191 Empty!10788) lt!1079875))))

(declare-fun lt!1081083 () BalanceConc!21188)

(declare-fun b!3203360 () Bool)

(assert (=> b!3203360 (= e!1997226 (lexTailRecV2!929 thiss!18206 rules!2135 lt!1079875 lt!1081083 (_2!20879 (v!35648 lt!1081080)) (append!862 (BalanceConc!21191 Empty!10788) (_1!20879 (v!35648 lt!1081080)))))))

(declare-fun lt!1081106 () tuple2!35478)

(assert (=> b!3203360 (= lt!1081106 (lexRec!682 thiss!18206 rules!2135 (_2!20879 (v!35648 lt!1081080))))))

(declare-fun lt!1081089 () List!36225)

(assert (=> b!3203360 (= lt!1081089 (list!12831 (BalanceConc!21189 Empty!10787)))))

(declare-fun lt!1081084 () List!36225)

(assert (=> b!3203360 (= lt!1081084 (list!12831 (charsOf!3222 (_1!20879 (v!35648 lt!1081080)))))))

(declare-fun lt!1081093 () List!36225)

(assert (=> b!3203360 (= lt!1081093 (list!12831 (_2!20879 (v!35648 lt!1081080))))))

(declare-fun lt!1081075 () Unit!50516)

(assert (=> b!3203360 (= lt!1081075 (lemmaConcatAssociativity!1724 lt!1081089 lt!1081084 lt!1081093))))

(assert (=> b!3203360 (= (++!8650 (++!8650 lt!1081089 lt!1081084) lt!1081093) (++!8650 lt!1081089 (++!8650 lt!1081084 lt!1081093)))))

(declare-fun lt!1081104 () Unit!50516)

(assert (=> b!3203360 (= lt!1081104 lt!1081075)))

(assert (=> b!3203360 (= lt!1081095 (maxPrefixZipperSequence!1075 thiss!18206 rules!2135 lt!1079875))))

(declare-fun c!537971 () Bool)

(assert (=> b!3203360 (= c!537971 ((_ is Some!7108) lt!1081095))))

(assert (=> b!3203360 (= (lexRec!682 thiss!18206 rules!2135 lt!1079875) e!1997228)))

(declare-fun lt!1081090 () Unit!50516)

(declare-fun Unit!50532 () Unit!50516)

(assert (=> b!3203360 (= lt!1081090 Unit!50532)))

(declare-fun lt!1081105 () List!36227)

(assert (=> b!3203360 (= lt!1081105 (list!12833 (BalanceConc!21191 Empty!10788)))))

(declare-fun lt!1081097 () List!36227)

(assert (=> b!3203360 (= lt!1081097 (Cons!36103 (_1!20879 (v!35648 lt!1081080)) Nil!36103))))

(declare-fun lt!1081098 () List!36227)

(assert (=> b!3203360 (= lt!1081098 (list!12833 (_1!20873 lt!1081106)))))

(declare-fun lt!1081087 () Unit!50516)

(assert (=> b!3203360 (= lt!1081087 (lemmaConcatAssociativity!1725 lt!1081105 lt!1081097 lt!1081098))))

(assert (=> b!3203360 (= (++!8655 (++!8655 lt!1081105 lt!1081097) lt!1081098) (++!8655 lt!1081105 (++!8655 lt!1081097 lt!1081098)))))

(declare-fun lt!1081078 () Unit!50516)

(assert (=> b!3203360 (= lt!1081078 lt!1081087)))

(declare-fun lt!1081082 () List!36225)

(assert (=> b!3203360 (= lt!1081082 (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) (list!12831 (charsOf!3222 (_1!20879 (v!35648 lt!1081080))))))))

(declare-fun lt!1081096 () List!36225)

(assert (=> b!3203360 (= lt!1081096 (list!12831 (_2!20879 (v!35648 lt!1081080))))))

(declare-fun lt!1081101 () List!36227)

(assert (=> b!3203360 (= lt!1081101 (list!12833 (append!862 (BalanceConc!21191 Empty!10788) (_1!20879 (v!35648 lt!1081080)))))))

(declare-fun lt!1081107 () Unit!50516)

(assert (=> b!3203360 (= lt!1081107 (lemmaLexThenLexPrefix!447 thiss!18206 rules!2135 lt!1081082 lt!1081096 lt!1081101 (list!12833 (_1!20873 lt!1081106)) (list!12831 (_2!20873 lt!1081106))))))

(assert (=> b!3203360 (= (lexList!1309 thiss!18206 rules!2135 lt!1081082) (tuple2!35489 lt!1081101 Nil!36101))))

(declare-fun lt!1081076 () Unit!50516)

(assert (=> b!3203360 (= lt!1081076 lt!1081107)))

(declare-fun lt!1081088 () BalanceConc!21188)

(assert (=> b!3203360 (= lt!1081088 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (_1!20879 (v!35648 lt!1081080)))))))

(declare-fun lt!1081086 () Option!7109)

(assert (=> b!3203360 (= lt!1081086 (maxPrefixZipperSequence!1075 thiss!18206 rules!2135 lt!1081088))))

(declare-fun c!537970 () Bool)

(assert (=> b!3203360 (= c!537970 ((_ is Some!7108) lt!1081086))))

(declare-fun e!1997227 () tuple2!35478)

(assert (=> b!3203360 (= (lexRec!682 thiss!18206 rules!2135 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (_1!20879 (v!35648 lt!1081080))))) e!1997227)))

(declare-fun lt!1081092 () Unit!50516)

(declare-fun Unit!50533 () Unit!50516)

(assert (=> b!3203360 (= lt!1081092 Unit!50533)))

(assert (=> b!3203360 (= lt!1081083 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (_1!20879 (v!35648 lt!1081080)))))))

(declare-fun lt!1081074 () List!36225)

(assert (=> b!3203360 (= lt!1081074 (list!12831 lt!1081083))))

(declare-fun lt!1081102 () List!36225)

(assert (=> b!3203360 (= lt!1081102 (list!12831 (_2!20879 (v!35648 lt!1081080))))))

(declare-fun lt!1081081 () Unit!50516)

(assert (=> b!3203360 (= lt!1081081 (lemmaConcatTwoListThenFSndIsSuffix!529 lt!1081074 lt!1081102))))

(assert (=> b!3203360 (isSuffix!844 lt!1081102 (++!8650 lt!1081074 lt!1081102))))

(declare-fun lt!1081077 () Unit!50516)

(assert (=> b!3203360 (= lt!1081077 lt!1081081)))

(declare-fun b!3203361 () Bool)

(assert (=> b!3203361 (= e!1997228 (tuple2!35479 (BalanceConc!21191 Empty!10788) lt!1079875))))

(declare-fun b!3203362 () Bool)

(declare-fun lt!1081099 () tuple2!35478)

(assert (=> b!3203362 (= lt!1081099 (lexRec!682 thiss!18206 rules!2135 (_2!20879 (v!35648 lt!1081086))))))

(assert (=> b!3203362 (= e!1997227 (tuple2!35479 (prepend!1170 (_1!20873 lt!1081099) (_1!20879 (v!35648 lt!1081086))) (_2!20873 lt!1081099)))))

(declare-fun b!3203363 () Bool)

(assert (=> b!3203363 (= e!1997225 (= (list!12831 (_2!20873 lt!1081079)) (list!12831 (_2!20873 (lexRec!682 thiss!18206 rules!2135 lt!1079875)))))))

(declare-fun b!3203364 () Bool)

(assert (=> b!3203364 (= e!1997227 (tuple2!35479 (BalanceConc!21191 Empty!10788) lt!1081088))))

(assert (= (and d!876894 c!537969) b!3203360))

(assert (= (and d!876894 (not c!537969)) b!3203359))

(assert (= (and b!3203360 c!537971) b!3203358))

(assert (= (and b!3203360 (not c!537971)) b!3203361))

(assert (= (and b!3203360 c!537970) b!3203362))

(assert (= (and b!3203360 (not c!537970)) b!3203364))

(assert (= (and d!876894 res!1303590) b!3203363))

(declare-fun m!3467519 () Bool)

(assert (=> b!3203362 m!3467519))

(declare-fun m!3467521 () Bool)

(assert (=> b!3203362 m!3467521))

(declare-fun m!3467523 () Bool)

(assert (=> b!3203358 m!3467523))

(declare-fun m!3467525 () Bool)

(assert (=> b!3203358 m!3467525))

(declare-fun m!3467527 () Bool)

(assert (=> d!876894 m!3467527))

(assert (=> d!876894 m!3463751))

(declare-fun m!3467529 () Bool)

(assert (=> d!876894 m!3467529))

(declare-fun m!3467531 () Bool)

(assert (=> d!876894 m!3467531))

(assert (=> d!876894 m!3467527))

(declare-fun m!3467533 () Bool)

(assert (=> d!876894 m!3467533))

(declare-fun m!3467535 () Bool)

(assert (=> d!876894 m!3467535))

(assert (=> d!876894 m!3464763))

(declare-fun m!3467537 () Bool)

(assert (=> d!876894 m!3467537))

(declare-fun m!3467539 () Bool)

(assert (=> d!876894 m!3467539))

(declare-fun m!3467541 () Bool)

(assert (=> b!3203360 m!3467541))

(declare-fun m!3467543 () Bool)

(assert (=> b!3203360 m!3467543))

(declare-fun m!3467545 () Bool)

(assert (=> b!3203360 m!3467545))

(declare-fun m!3467547 () Bool)

(assert (=> b!3203360 m!3467547))

(declare-fun m!3467549 () Bool)

(assert (=> b!3203360 m!3467549))

(declare-fun m!3467551 () Bool)

(assert (=> b!3203360 m!3467551))

(declare-fun m!3467553 () Bool)

(assert (=> b!3203360 m!3467553))

(declare-fun m!3467555 () Bool)

(assert (=> b!3203360 m!3467555))

(declare-fun m!3467557 () Bool)

(assert (=> b!3203360 m!3467557))

(assert (=> b!3203360 m!3467553))

(declare-fun m!3467559 () Bool)

(assert (=> b!3203360 m!3467559))

(declare-fun m!3467561 () Bool)

(assert (=> b!3203360 m!3467561))

(declare-fun m!3467563 () Bool)

(assert (=> b!3203360 m!3467563))

(assert (=> b!3203360 m!3467531))

(declare-fun m!3467565 () Bool)

(assert (=> b!3203360 m!3467565))

(declare-fun m!3467567 () Bool)

(assert (=> b!3203360 m!3467567))

(assert (=> b!3203360 m!3467557))

(declare-fun m!3467569 () Bool)

(assert (=> b!3203360 m!3467569))

(assert (=> b!3203360 m!3467567))

(declare-fun m!3467571 () Bool)

(assert (=> b!3203360 m!3467571))

(assert (=> b!3203360 m!3467541))

(declare-fun m!3467573 () Bool)

(assert (=> b!3203360 m!3467573))

(declare-fun m!3467575 () Bool)

(assert (=> b!3203360 m!3467575))

(declare-fun m!3467577 () Bool)

(assert (=> b!3203360 m!3467577))

(assert (=> b!3203360 m!3467557))

(declare-fun m!3467579 () Bool)

(assert (=> b!3203360 m!3467579))

(assert (=> b!3203360 m!3463751))

(assert (=> b!3203360 m!3467551))

(declare-fun m!3467581 () Bool)

(assert (=> b!3203360 m!3467581))

(assert (=> b!3203360 m!3467549))

(declare-fun m!3467585 () Bool)

(assert (=> b!3203360 m!3467585))

(assert (=> b!3203360 m!3467585))

(declare-fun m!3467591 () Bool)

(assert (=> b!3203360 m!3467591))

(declare-fun m!3467593 () Bool)

(assert (=> b!3203360 m!3467593))

(assert (=> b!3203360 m!3463751))

(assert (=> b!3203360 m!3467561))

(declare-fun m!3467595 () Bool)

(assert (=> b!3203360 m!3467595))

(declare-fun m!3467597 () Bool)

(assert (=> b!3203360 m!3467597))

(assert (=> b!3203360 m!3467549))

(declare-fun m!3467599 () Bool)

(assert (=> b!3203360 m!3467599))

(declare-fun m!3467601 () Bool)

(assert (=> b!3203360 m!3467601))

(assert (=> b!3203360 m!3467545))

(assert (=> b!3203360 m!3465919))

(declare-fun m!3467605 () Bool)

(assert (=> b!3203360 m!3467605))

(assert (=> b!3203360 m!3467543))

(assert (=> b!3203360 m!3467593))

(declare-fun m!3467607 () Bool)

(assert (=> b!3203360 m!3467607))

(declare-fun m!3467609 () Bool)

(assert (=> b!3203363 m!3467609))

(assert (=> b!3203363 m!3467531))

(declare-fun m!3467611 () Bool)

(assert (=> b!3203363 m!3467611))

(assert (=> d!876010 d!876894))

(declare-fun d!876906 () Bool)

(assert (=> d!876906 (= (inv!15 (value!168831 (h!41523 tokens!494))) (= (charsToBigInt!0 (text!38501 (value!168831 (h!41523 tokens!494))) 0) (value!168826 (value!168831 (h!41523 tokens!494)))))))

(declare-fun bs!541102 () Bool)

(assert (= bs!541102 d!876906))

(declare-fun m!3467615 () Bool)

(assert (=> bs!541102 m!3467615))

(assert (=> b!3201423 d!876906))

(assert (=> bs!540936 d!876044))

(declare-fun bs!541103 () Bool)

(declare-fun d!876910 () Bool)

(assert (= bs!541103 (and d!876910 d!876718)))

(declare-fun lambda!117242 () Int)

(assert (=> bs!541103 (= (and (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) (= (toValue!7282 (transformation!5206 (h!41522 rules!2135))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (= lambda!117242 lambda!117237))))

(declare-fun bs!541104 () Bool)

(assert (= bs!541104 (and d!876910 d!876854)))

(assert (=> bs!541104 (= (and (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241)))) (= (toValue!7282 (transformation!5206 (h!41522 rules!2135))) (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241))))) (= lambda!117242 lambda!117241))))

(assert (=> d!876910 true))

(assert (=> d!876910 (< (dynLambda!14535 order!18353 (toChars!7141 (transformation!5206 (h!41522 rules!2135)))) (dynLambda!14544 order!18359 lambda!117242))))

(assert (=> d!876910 true))

(assert (=> d!876910 (< (dynLambda!14533 order!18349 (toValue!7282 (transformation!5206 (h!41522 rules!2135)))) (dynLambda!14544 order!18359 lambda!117242))))

(assert (=> d!876910 (= (semiInverseModEq!2151 (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toValue!7282 (transformation!5206 (h!41522 rules!2135)))) (Forall!1263 lambda!117242))))

(declare-fun bs!541105 () Bool)

(assert (= bs!541105 d!876910))

(declare-fun m!3467627 () Bool)

(assert (=> bs!541105 m!3467627))

(assert (=> d!876040 d!876910))

(declare-fun d!876916 () Bool)

(declare-fun c!537975 () Bool)

(assert (=> d!876916 (= c!537975 ((_ is Node!10787) (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241)))))))

(declare-fun e!1997236 () Bool)

(assert (=> d!876916 (= (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241)))) e!1997236)))

(declare-fun b!3203374 () Bool)

(assert (=> b!3203374 (= e!1997236 (inv!48960 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241)))))))

(declare-fun b!3203375 () Bool)

(declare-fun e!1997237 () Bool)

(assert (=> b!3203375 (= e!1997236 e!1997237)))

(declare-fun res!1303596 () Bool)

(assert (=> b!3203375 (= res!1303596 (not ((_ is Leaf!17001) (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241))))))))

(assert (=> b!3203375 (=> res!1303596 e!1997237)))

(declare-fun b!3203376 () Bool)

(assert (=> b!3203376 (= e!1997237 (inv!48961 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241)))))))

(assert (= (and d!876916 c!537975) b!3203374))

(assert (= (and d!876916 (not c!537975)) b!3203375))

(assert (= (and b!3203375 (not res!1303596)) b!3203376))

(declare-fun m!3467633 () Bool)

(assert (=> b!3203374 m!3467633))

(declare-fun m!3467635 () Bool)

(assert (=> b!3203376 m!3467635))

(assert (=> b!3201890 d!876916))

(declare-fun d!876920 () Bool)

(declare-fun e!1997239 () Bool)

(assert (=> d!876920 e!1997239))

(declare-fun res!1303598 () Bool)

(assert (=> d!876920 (=> (not res!1303598) (not e!1997239))))

(declare-fun lt!1081114 () List!36225)

(assert (=> d!876920 (= res!1303598 (= (content!4877 lt!1081114) ((_ map or) (content!4877 (t!237476 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))))) (content!4877 lt!1079883))))))

(declare-fun e!1997240 () List!36225)

(assert (=> d!876920 (= lt!1081114 e!1997240)))

(declare-fun c!537976 () Bool)

(assert (=> d!876920 (= c!537976 ((_ is Nil!36101) (t!237476 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))))))))

(assert (=> d!876920 (= (++!8650 (t!237476 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))) lt!1079883) lt!1081114)))

(declare-fun b!3203379 () Bool)

(assert (=> b!3203379 (= e!1997240 (Cons!36101 (h!41521 (t!237476 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))))) (++!8650 (t!237476 (t!237476 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))))) lt!1079883)))))

(declare-fun b!3203381 () Bool)

(assert (=> b!3203381 (= e!1997239 (or (not (= lt!1079883 Nil!36101)) (= lt!1081114 (t!237476 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))))))))

(declare-fun b!3203380 () Bool)

(declare-fun res!1303599 () Bool)

(assert (=> b!3203380 (=> (not res!1303599) (not e!1997239))))

(assert (=> b!3203380 (= res!1303599 (= (size!27191 lt!1081114) (+ (size!27191 (t!237476 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))))) (size!27191 lt!1079883))))))

(declare-fun b!3203378 () Bool)

(assert (=> b!3203378 (= e!1997240 lt!1079883)))

(assert (= (and d!876920 c!537976) b!3203378))

(assert (= (and d!876920 (not c!537976)) b!3203379))

(assert (= (and d!876920 res!1303598) b!3203380))

(assert (= (and b!3203380 res!1303599) b!3203381))

(declare-fun m!3467643 () Bool)

(assert (=> d!876920 m!3467643))

(declare-fun m!3467645 () Bool)

(assert (=> d!876920 m!3467645))

(assert (=> d!876920 m!3464689))

(declare-fun m!3467647 () Bool)

(assert (=> b!3203379 m!3467647))

(declare-fun m!3467649 () Bool)

(assert (=> b!3203380 m!3467649))

(assert (=> b!3203380 m!3465475))

(assert (=> b!3203380 m!3464697))

(assert (=> b!3201892 d!876920))

(declare-fun b!3203400 () Bool)

(declare-fun e!1997257 () Bool)

(declare-fun call!231937 () Bool)

(assert (=> b!3203400 (= e!1997257 call!231937)))

(declare-fun b!3203401 () Bool)

(declare-fun e!1997255 () Bool)

(assert (=> b!3203401 (= e!1997255 e!1997257)))

(declare-fun res!1303610 () Bool)

(declare-fun rulesUseDisjointChars!267 (Rule!10212 Rule!10212) Bool)

(assert (=> b!3203401 (= res!1303610 (rulesUseDisjointChars!267 (h!41522 rules!2135) (h!41522 rules!2135)))))

(assert (=> b!3203401 (=> (not res!1303610) (not e!1997257))))

(declare-fun b!3203402 () Bool)

(declare-fun e!1997256 () Bool)

(assert (=> b!3203402 (= e!1997256 call!231937)))

(declare-fun b!3203403 () Bool)

(assert (=> b!3203403 (= e!1997255 e!1997256)))

(declare-fun res!1303609 () Bool)

(assert (=> b!3203403 (= res!1303609 (not ((_ is Cons!36102) rules!2135)))))

(assert (=> b!3203403 (=> res!1303609 e!1997256)))

(declare-fun d!876926 () Bool)

(declare-fun c!537980 () Bool)

(assert (=> d!876926 (= c!537980 (and ((_ is Cons!36102) rules!2135) (not (= (isSeparator!5206 (h!41522 rules!2135)) (isSeparator!5206 (h!41522 rules!2135))))))))

(assert (=> d!876926 (= (ruleDisjointCharsFromAllFromOtherType!587 (h!41522 rules!2135) rules!2135) e!1997255)))

(declare-fun bm!231932 () Bool)

(assert (=> bm!231932 (= call!231937 (ruleDisjointCharsFromAllFromOtherType!587 (h!41522 rules!2135) (t!237477 rules!2135)))))

(assert (= (and d!876926 c!537980) b!3203401))

(assert (= (and d!876926 (not c!537980)) b!3203403))

(assert (= (and b!3203401 res!1303610) b!3203400))

(assert (= (and b!3203403 (not res!1303609)) b!3203402))

(assert (= (or b!3203400 b!3203402) bm!231932))

(declare-fun m!3467667 () Bool)

(assert (=> b!3203401 m!3467667))

(declare-fun m!3467669 () Bool)

(assert (=> bm!231932 m!3467669))

(assert (=> b!3201922 d!876926))

(declare-fun d!876936 () Bool)

(assert (=> d!876936 (= (list!12833 lt!1080152) (list!12837 (c!537388 lt!1080152)))))

(declare-fun bs!541109 () Bool)

(assert (= bs!541109 d!876936))

(declare-fun m!3467671 () Bool)

(assert (=> bs!541109 m!3467671))

(assert (=> d!875958 d!876936))

(declare-fun d!876938 () Bool)

(declare-fun e!1997273 () Bool)

(assert (=> d!876938 e!1997273))

(declare-fun res!1303613 () Bool)

(assert (=> d!876938 (=> (not res!1303613) (not e!1997273))))

(declare-fun lt!1081119 () BalanceConc!21190)

(assert (=> d!876938 (= res!1303613 (= (list!12833 lt!1081119) (Cons!36103 separatorToken!241 Nil!36103)))))

(declare-fun choose!18700 (Token!9778) BalanceConc!21190)

(assert (=> d!876938 (= lt!1081119 (choose!18700 separatorToken!241))))

(assert (=> d!876938 (= (singleton!990 separatorToken!241) lt!1081119)))

(declare-fun b!3203435 () Bool)

(assert (=> b!3203435 (= e!1997273 (isBalanced!3209 (c!537388 lt!1081119)))))

(assert (= (and d!876938 res!1303613) b!3203435))

(declare-fun m!3467677 () Bool)

(assert (=> d!876938 m!3467677))

(declare-fun m!3467679 () Bool)

(assert (=> d!876938 m!3467679))

(declare-fun m!3467681 () Bool)

(assert (=> b!3203435 m!3467681))

(assert (=> d!875958 d!876938))

(declare-fun d!876940 () Bool)

(declare-fun e!1997274 () Bool)

(assert (=> d!876940 e!1997274))

(declare-fun res!1303614 () Bool)

(assert (=> d!876940 (=> (not res!1303614) (not e!1997274))))

(declare-fun lt!1081120 () List!36225)

(assert (=> d!876940 (= res!1303614 (= (content!4877 lt!1081120) ((_ map or) (content!4877 (ite c!537491 call!231774 call!231773)) (content!4877 (ite c!537491 call!231773 call!231774)))))))

(declare-fun e!1997275 () List!36225)

(assert (=> d!876940 (= lt!1081120 e!1997275)))

(declare-fun c!537981 () Bool)

(assert (=> d!876940 (= c!537981 ((_ is Nil!36101) (ite c!537491 call!231774 call!231773)))))

(assert (=> d!876940 (= (++!8650 (ite c!537491 call!231774 call!231773) (ite c!537491 call!231773 call!231774)) lt!1081120)))

(declare-fun b!3203437 () Bool)

(assert (=> b!3203437 (= e!1997275 (Cons!36101 (h!41521 (ite c!537491 call!231774 call!231773)) (++!8650 (t!237476 (ite c!537491 call!231774 call!231773)) (ite c!537491 call!231773 call!231774))))))

(declare-fun b!3203439 () Bool)

(assert (=> b!3203439 (= e!1997274 (or (not (= (ite c!537491 call!231773 call!231774) Nil!36101)) (= lt!1081120 (ite c!537491 call!231774 call!231773))))))

(declare-fun b!3203438 () Bool)

(declare-fun res!1303615 () Bool)

(assert (=> b!3203438 (=> (not res!1303615) (not e!1997274))))

(assert (=> b!3203438 (= res!1303615 (= (size!27191 lt!1081120) (+ (size!27191 (ite c!537491 call!231774 call!231773)) (size!27191 (ite c!537491 call!231773 call!231774)))))))

(declare-fun b!3203436 () Bool)

(assert (=> b!3203436 (= e!1997275 (ite c!537491 call!231773 call!231774))))

(assert (= (and d!876940 c!537981) b!3203436))

(assert (= (and d!876940 (not c!537981)) b!3203437))

(assert (= (and d!876940 res!1303614) b!3203438))

(assert (= (and b!3203438 res!1303615) b!3203439))

(declare-fun m!3467691 () Bool)

(assert (=> d!876940 m!3467691))

(declare-fun m!3467693 () Bool)

(assert (=> d!876940 m!3467693))

(declare-fun m!3467695 () Bool)

(assert (=> d!876940 m!3467695))

(declare-fun m!3467697 () Bool)

(assert (=> b!3203437 m!3467697))

(declare-fun m!3467699 () Bool)

(assert (=> b!3203438 m!3467699))

(declare-fun m!3467701 () Bool)

(assert (=> b!3203438 m!3467701))

(declare-fun m!3467703 () Bool)

(assert (=> b!3203438 m!3467703))

(assert (=> bm!231770 d!876940))

(declare-fun d!876942 () Bool)

(declare-fun lt!1081121 () BalanceConc!21188)

(assert (=> d!876942 (= (list!12831 lt!1081121) (originalCharacters!5920 (h!41523 (t!237478 (t!237478 tokens!494)))))))

(assert (=> d!876942 (= lt!1081121 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (value!168831 (h!41523 (t!237478 (t!237478 tokens!494))))))))

(assert (=> d!876942 (= (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494)))) lt!1081121)))

(declare-fun b_lambda!87615 () Bool)

(assert (=> (not b_lambda!87615) (not d!876942)))

(declare-fun tb!157073 () Bool)

(declare-fun t!237799 () Bool)

(assert (=> (and b!3202029 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494))))))) t!237799) tb!157073))

(declare-fun b!3203448 () Bool)

(declare-fun e!1997280 () Bool)

(declare-fun tp!1012008 () Bool)

(assert (=> b!3203448 (= e!1997280 (and (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (value!168831 (h!41523 (t!237478 (t!237478 tokens!494))))))) tp!1012008))))

(declare-fun result!199384 () Bool)

(assert (=> tb!157073 (= result!199384 (and (inv!48957 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (value!168831 (h!41523 (t!237478 (t!237478 tokens!494)))))) e!1997280))))

(assert (= tb!157073 b!3203448))

(declare-fun m!3467705 () Bool)

(assert (=> b!3203448 m!3467705))

(declare-fun m!3467707 () Bool)

(assert (=> tb!157073 m!3467707))

(assert (=> d!876942 t!237799))

(declare-fun b_and!213095 () Bool)

(assert (= b_and!213039 (and (=> t!237799 result!199384) b_and!213095)))

(declare-fun t!237801 () Bool)

(declare-fun tb!157075 () Bool)

(assert (=> (and b!3201193 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494))))))) t!237801) tb!157075))

(declare-fun result!199386 () Bool)

(assert (= result!199386 result!199384))

(assert (=> d!876942 t!237801))

(declare-fun b_and!213097 () Bool)

(assert (= b_and!213041 (and (=> t!237801 result!199386) b_and!213097)))

(declare-fun t!237803 () Bool)

(declare-fun tb!157077 () Bool)

(assert (=> (and b!3201192 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494))))))) t!237803) tb!157077))

(declare-fun result!199388 () Bool)

(assert (= result!199388 result!199384))

(assert (=> d!876942 t!237803))

(declare-fun b_and!213099 () Bool)

(assert (= b_and!213037 (and (=> t!237803 result!199388) b_and!213099)))

(declare-fun t!237805 () Bool)

(declare-fun tb!157079 () Bool)

(assert (=> (and b!3202018 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494))))))) t!237805) tb!157079))

(declare-fun result!199390 () Bool)

(assert (= result!199390 result!199384))

(assert (=> d!876942 t!237805))

(declare-fun b_and!213101 () Bool)

(assert (= b_and!213043 (and (=> t!237805 result!199390) b_and!213101)))

(declare-fun t!237807 () Bool)

(declare-fun tb!157081 () Bool)

(assert (=> (and b!3201175 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494))))))) t!237807) tb!157081))

(declare-fun result!199392 () Bool)

(assert (= result!199392 result!199384))

(assert (=> d!876942 t!237807))

(declare-fun b_and!213103 () Bool)

(assert (= b_and!213045 (and (=> t!237807 result!199392) b_and!213103)))

(declare-fun m!3467709 () Bool)

(assert (=> d!876942 m!3467709))

(declare-fun m!3467711 () Bool)

(assert (=> d!876942 m!3467711))

(assert (=> b!3201895 d!876942))

(declare-fun d!876944 () Bool)

(assert (=> d!876944 (= (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494))))) (list!12834 (c!537387 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494)))))))))

(declare-fun bs!541110 () Bool)

(assert (= bs!541110 d!876944))

(declare-fun m!3467713 () Bool)

(assert (=> bs!541110 m!3467713))

(assert (=> b!3201895 d!876944))

(declare-fun d!876946 () Bool)

(declare-fun c!537982 () Bool)

(assert (=> d!876946 (= c!537982 ((_ is Cons!36103) (t!237478 (t!237478 (t!237478 tokens!494)))))))

(declare-fun e!1997283 () List!36225)

(assert (=> d!876946 (= (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 (t!237478 tokens!494))) separatorToken!241) e!1997283)))

(declare-fun b!3203452 () Bool)

(assert (=> b!3203452 (= e!1997283 (++!8650 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 (t!237478 tokens!494)))))) (list!12831 (charsOf!3222 separatorToken!241))) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 (t!237478 (t!237478 tokens!494)))) separatorToken!241)))))

(declare-fun b!3203453 () Bool)

(assert (=> b!3203453 (= e!1997283 Nil!36101)))

(assert (= (and d!876946 c!537982) b!3203452))

(assert (= (and d!876946 (not c!537982)) b!3203453))

(declare-fun m!3467721 () Bool)

(assert (=> b!3203452 m!3467721))

(declare-fun m!3467723 () Bool)

(assert (=> b!3203452 m!3467723))

(declare-fun m!3467725 () Bool)

(assert (=> b!3203452 m!3467725))

(assert (=> b!3203452 m!3467723))

(assert (=> b!3203452 m!3463475))

(declare-fun m!3467727 () Bool)

(assert (=> b!3203452 m!3467727))

(assert (=> b!3203452 m!3463475))

(assert (=> b!3203452 m!3463489))

(declare-fun m!3467729 () Bool)

(assert (=> b!3203452 m!3467729))

(assert (=> b!3203452 m!3463489))

(assert (=> b!3203452 m!3467721))

(assert (=> b!3203452 m!3467727))

(assert (=> b!3203452 m!3467729))

(assert (=> b!3201895 d!876946))

(declare-fun d!876948 () Bool)

(declare-fun e!1997289 () Bool)

(assert (=> d!876948 e!1997289))

(declare-fun res!1303616 () Bool)

(assert (=> d!876948 (=> (not res!1303616) (not e!1997289))))

(declare-fun lt!1081122 () List!36225)

(assert (=> d!876948 (= res!1303616 (= (content!4877 lt!1081122) ((_ map or) (content!4877 (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494)))))) (content!4877 (list!12831 (charsOf!3222 separatorToken!241))))))))

(declare-fun e!1997290 () List!36225)

(assert (=> d!876948 (= lt!1081122 e!1997290)))

(declare-fun c!537983 () Bool)

(assert (=> d!876948 (= c!537983 ((_ is Nil!36101) (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494)))))))))

(assert (=> d!876948 (= (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494))))) (list!12831 (charsOf!3222 separatorToken!241))) lt!1081122)))

(declare-fun b!3203466 () Bool)

(assert (=> b!3203466 (= e!1997290 (Cons!36101 (h!41521 (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494)))))) (++!8650 (t!237476 (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494)))))) (list!12831 (charsOf!3222 separatorToken!241)))))))

(declare-fun b!3203468 () Bool)

(assert (=> b!3203468 (= e!1997289 (or (not (= (list!12831 (charsOf!3222 separatorToken!241)) Nil!36101)) (= lt!1081122 (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494))))))))))

(declare-fun b!3203467 () Bool)

(declare-fun res!1303617 () Bool)

(assert (=> b!3203467 (=> (not res!1303617) (not e!1997289))))

(assert (=> b!3203467 (= res!1303617 (= (size!27191 lt!1081122) (+ (size!27191 (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494)))))) (size!27191 (list!12831 (charsOf!3222 separatorToken!241))))))))

(declare-fun b!3203465 () Bool)

(assert (=> b!3203465 (= e!1997290 (list!12831 (charsOf!3222 separatorToken!241)))))

(assert (= (and d!876948 c!537983) b!3203465))

(assert (= (and d!876948 (not c!537983)) b!3203466))

(assert (= (and d!876948 res!1303616) b!3203467))

(assert (= (and b!3203467 res!1303617) b!3203468))

(declare-fun m!3467731 () Bool)

(assert (=> d!876948 m!3467731))

(assert (=> d!876948 m!3464707))

(declare-fun m!3467733 () Bool)

(assert (=> d!876948 m!3467733))

(assert (=> d!876948 m!3463489))

(assert (=> d!876948 m!3465519))

(assert (=> b!3203466 m!3463489))

(declare-fun m!3467735 () Bool)

(assert (=> b!3203466 m!3467735))

(declare-fun m!3467737 () Bool)

(assert (=> b!3203467 m!3467737))

(assert (=> b!3203467 m!3464707))

(declare-fun m!3467739 () Bool)

(assert (=> b!3203467 m!3467739))

(assert (=> b!3203467 m!3463489))

(assert (=> b!3203467 m!3465527))

(assert (=> b!3201895 d!876948))

(assert (=> b!3201895 d!875988))

(assert (=> b!3201895 d!876000))

(declare-fun d!876950 () Bool)

(declare-fun e!1997297 () Bool)

(assert (=> d!876950 e!1997297))

(declare-fun res!1303618 () Bool)

(assert (=> d!876950 (=> (not res!1303618) (not e!1997297))))

(declare-fun lt!1081123 () List!36225)

(assert (=> d!876950 (= res!1303618 (= (content!4877 lt!1081123) ((_ map or) (content!4877 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494))))) (list!12831 (charsOf!3222 separatorToken!241)))) (content!4877 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 (t!237478 tokens!494))) separatorToken!241)))))))

(declare-fun e!1997298 () List!36225)

(assert (=> d!876950 (= lt!1081123 e!1997298)))

(declare-fun c!537984 () Bool)

(assert (=> d!876950 (= c!537984 ((_ is Nil!36101) (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494))))) (list!12831 (charsOf!3222 separatorToken!241)))))))

(assert (=> d!876950 (= (++!8650 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494))))) (list!12831 (charsOf!3222 separatorToken!241))) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 (t!237478 tokens!494))) separatorToken!241)) lt!1081123)))

(declare-fun b!3203485 () Bool)

(assert (=> b!3203485 (= e!1997298 (Cons!36101 (h!41521 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494))))) (list!12831 (charsOf!3222 separatorToken!241)))) (++!8650 (t!237476 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494))))) (list!12831 (charsOf!3222 separatorToken!241)))) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 (t!237478 tokens!494))) separatorToken!241))))))

(declare-fun b!3203487 () Bool)

(assert (=> b!3203487 (= e!1997297 (or (not (= (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 (t!237478 tokens!494))) separatorToken!241) Nil!36101)) (= lt!1081123 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494))))) (list!12831 (charsOf!3222 separatorToken!241))))))))

(declare-fun b!3203486 () Bool)

(declare-fun res!1303619 () Bool)

(assert (=> b!3203486 (=> (not res!1303619) (not e!1997297))))

(assert (=> b!3203486 (= res!1303619 (= (size!27191 lt!1081123) (+ (size!27191 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 (t!237478 tokens!494))))) (list!12831 (charsOf!3222 separatorToken!241)))) (size!27191 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 (t!237478 tokens!494))) separatorToken!241)))))))

(declare-fun b!3203484 () Bool)

(assert (=> b!3203484 (= e!1997298 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 (t!237478 tokens!494))) separatorToken!241))))

(assert (= (and d!876950 c!537984) b!3203484))

(assert (= (and d!876950 (not c!537984)) b!3203485))

(assert (= (and d!876950 res!1303618) b!3203486))

(assert (= (and b!3203486 res!1303619) b!3203487))

(declare-fun m!3467741 () Bool)

(assert (=> d!876950 m!3467741))

(assert (=> d!876950 m!3464699))

(declare-fun m!3467743 () Bool)

(assert (=> d!876950 m!3467743))

(assert (=> d!876950 m!3464701))

(declare-fun m!3467745 () Bool)

(assert (=> d!876950 m!3467745))

(assert (=> b!3203485 m!3464701))

(declare-fun m!3467747 () Bool)

(assert (=> b!3203485 m!3467747))

(declare-fun m!3467749 () Bool)

(assert (=> b!3203486 m!3467749))

(assert (=> b!3203486 m!3464699))

(declare-fun m!3467751 () Bool)

(assert (=> b!3203486 m!3467751))

(assert (=> b!3203486 m!3464701))

(declare-fun m!3467753 () Bool)

(assert (=> b!3203486 m!3467753))

(assert (=> b!3201895 d!876950))

(declare-fun d!876952 () Bool)

(assert (=> d!876952 (= (inv!48957 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494))))) (isBalanced!3211 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494)))))))))

(declare-fun bs!541111 () Bool)

(assert (= bs!541111 d!876952))

(declare-fun m!3467767 () Bool)

(assert (=> bs!541111 m!3467767))

(assert (=> tb!156839 d!876952))

(declare-fun d!876954 () Bool)

(assert (=> d!876954 (= (isEmpty!20189 lt!1080151) (not ((_ is Some!7106) lt!1080151)))))

(assert (=> d!875948 d!876954))

(assert (=> d!875948 d!875758))

(declare-fun d!876956 () Bool)

(assert (=> d!876956 (= (list!12831 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494)))) (list!12834 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494))))))))

(declare-fun bs!541112 () Bool)

(assert (= bs!541112 d!876956))

(declare-fun m!3467769 () Bool)

(assert (=> bs!541112 m!3467769))

(assert (=> b!3201978 d!876956))

(declare-fun d!876958 () Bool)

(declare-fun e!1997311 () Bool)

(assert (=> d!876958 e!1997311))

(declare-fun res!1303620 () Bool)

(assert (=> d!876958 (=> (not res!1303620) (not e!1997311))))

(declare-fun lt!1081124 () List!36225)

(assert (=> d!876958 (= res!1303620 (= (content!4877 lt!1081124) ((_ map or) (content!4877 (t!237476 lt!1079879)) (content!4877 lt!1079904))))))

(declare-fun e!1997312 () List!36225)

(assert (=> d!876958 (= lt!1081124 e!1997312)))

(declare-fun c!537985 () Bool)

(assert (=> d!876958 (= c!537985 ((_ is Nil!36101) (t!237476 lt!1079879)))))

(assert (=> d!876958 (= (++!8650 (t!237476 lt!1079879) lt!1079904) lt!1081124)))

(declare-fun b!3203521 () Bool)

(assert (=> b!3203521 (= e!1997312 (Cons!36101 (h!41521 (t!237476 lt!1079879)) (++!8650 (t!237476 (t!237476 lt!1079879)) lt!1079904)))))

(declare-fun b!3203523 () Bool)

(assert (=> b!3203523 (= e!1997311 (or (not (= lt!1079904 Nil!36101)) (= lt!1081124 (t!237476 lt!1079879))))))

(declare-fun b!3203522 () Bool)

(declare-fun res!1303621 () Bool)

(assert (=> b!3203522 (=> (not res!1303621) (not e!1997311))))

(assert (=> b!3203522 (= res!1303621 (= (size!27191 lt!1081124) (+ (size!27191 (t!237476 lt!1079879)) (size!27191 lt!1079904))))))

(declare-fun b!3203520 () Bool)

(assert (=> b!3203520 (= e!1997312 lt!1079904)))

(assert (= (and d!876958 c!537985) b!3203520))

(assert (= (and d!876958 (not c!537985)) b!3203521))

(assert (= (and d!876958 res!1303620) b!3203522))

(assert (= (and b!3203522 res!1303621) b!3203523))

(declare-fun m!3467771 () Bool)

(assert (=> d!876958 m!3467771))

(assert (=> d!876958 m!3466697))

(assert (=> d!876958 m!3464737))

(declare-fun m!3467773 () Bool)

(assert (=> b!3203521 m!3467773))

(declare-fun m!3467775 () Bool)

(assert (=> b!3203522 m!3467775))

(assert (=> b!3203522 m!3463939))

(assert (=> b!3203522 m!3464743))

(assert (=> b!3201905 d!876958))

(assert (=> b!3201458 d!876254))

(assert (=> b!3201458 d!876256))

(declare-fun d!876964 () Bool)

(assert (=> d!876964 true))

(declare-fun order!18361 () Int)

(declare-fun lambda!117245 () Int)

(declare-fun dynLambda!14545 (Int Int) Int)

(assert (=> d!876964 (< (dynLambda!14533 order!18349 (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241)))) (dynLambda!14545 order!18361 lambda!117245))))

(declare-fun Forall2!860 (Int) Bool)

(assert (=> d!876964 (= (equivClasses!2050 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241)))) (Forall2!860 lambda!117245))))

(declare-fun bs!541115 () Bool)

(assert (= bs!541115 d!876964))

(declare-fun m!3467777 () Bool)

(assert (=> bs!541115 m!3467777))

(assert (=> b!3201943 d!876964))

(declare-fun d!876966 () Bool)

(declare-fun lt!1081125 () Int)

(assert (=> d!876966 (>= lt!1081125 0)))

(declare-fun e!1997315 () Int)

(assert (=> d!876966 (= lt!1081125 e!1997315)))

(declare-fun c!537986 () Bool)

(assert (=> d!876966 (= c!537986 ((_ is Nil!36101) lt!1080182))))

(assert (=> d!876966 (= (size!27191 lt!1080182) lt!1081125)))

(declare-fun b!3203528 () Bool)

(assert (=> b!3203528 (= e!1997315 0)))

(declare-fun b!3203529 () Bool)

(assert (=> b!3203529 (= e!1997315 (+ 1 (size!27191 (t!237476 lt!1080182))))))

(assert (= (and d!876966 c!537986) b!3203528))

(assert (= (and d!876966 (not c!537986)) b!3203529))

(declare-fun m!3467779 () Bool)

(assert (=> b!3203529 m!3467779))

(assert (=> b!3201884 d!876966))

(declare-fun d!876968 () Bool)

(declare-fun lt!1081126 () Int)

(assert (=> d!876968 (>= lt!1081126 0)))

(declare-fun e!1997316 () Int)

(assert (=> d!876968 (= lt!1081126 e!1997316)))

(declare-fun c!537987 () Bool)

(assert (=> d!876968 (= c!537987 ((_ is Nil!36101) (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883)))))

(assert (=> d!876968 (= (size!27191 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883)) lt!1081126)))

(declare-fun b!3203530 () Bool)

(assert (=> b!3203530 (= e!1997316 0)))

(declare-fun b!3203531 () Bool)

(assert (=> b!3203531 (= e!1997316 (+ 1 (size!27191 (t!237476 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883)))))))

(assert (= (and d!876968 c!537987) b!3203530))

(assert (= (and d!876968 (not c!537987)) b!3203531))

(declare-fun m!3467781 () Bool)

(assert (=> b!3203531 m!3467781))

(assert (=> b!3201884 d!876968))

(declare-fun d!876970 () Bool)

(declare-fun lt!1081127 () Int)

(assert (=> d!876970 (>= lt!1081127 0)))

(declare-fun e!1997317 () Int)

(assert (=> d!876970 (= lt!1081127 e!1997317)))

(declare-fun c!537988 () Bool)

(assert (=> d!876970 (= c!537988 ((_ is Nil!36101) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)))))

(assert (=> d!876970 (= (size!27191 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)) lt!1081127)))

(declare-fun b!3203532 () Bool)

(assert (=> b!3203532 (= e!1997317 0)))

(declare-fun b!3203533 () Bool)

(assert (=> b!3203533 (= e!1997317 (+ 1 (size!27191 (t!237476 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)))))))

(assert (= (and d!876970 c!537988) b!3203532))

(assert (= (and d!876970 (not c!537988)) b!3203533))

(declare-fun m!3467783 () Bool)

(assert (=> b!3203533 m!3467783))

(assert (=> b!3201884 d!876970))

(declare-fun d!876972 () Bool)

(declare-fun res!1303624 () Bool)

(declare-fun e!1997318 () Bool)

(assert (=> d!876972 (=> (not res!1303624) (not e!1997318))))

(assert (=> d!876972 (= res!1303624 (not (isEmpty!20186 (originalCharacters!5920 (h!41523 (t!237478 tokens!494))))))))

(assert (=> d!876972 (= (inv!48953 (h!41523 (t!237478 tokens!494))) e!1997318)))

(declare-fun b!3203534 () Bool)

(declare-fun res!1303625 () Bool)

(assert (=> b!3203534 (=> (not res!1303625) (not e!1997318))))

(assert (=> b!3203534 (= res!1303625 (= (originalCharacters!5920 (h!41523 (t!237478 tokens!494))) (list!12831 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494)))))))))

(declare-fun b!3203535 () Bool)

(assert (=> b!3203535 (= e!1997318 (= (size!27189 (h!41523 (t!237478 tokens!494))) (size!27191 (originalCharacters!5920 (h!41523 (t!237478 tokens!494))))))))

(assert (= (and d!876972 res!1303624) b!3203534))

(assert (= (and b!3203534 res!1303625) b!3203535))

(declare-fun b_lambda!87639 () Bool)

(assert (=> (not b_lambda!87639) (not b!3203534)))

(assert (=> b!3203534 t!237548))

(declare-fun b_and!213105 () Bool)

(assert (= b_and!213099 (and (=> t!237548 result!199142) b_and!213105)))

(assert (=> b!3203534 t!237546))

(declare-fun b_and!213107 () Bool)

(assert (= b_and!213103 (and (=> t!237546 result!199140) b_and!213107)))

(assert (=> b!3203534 t!237550))

(declare-fun b_and!213109 () Bool)

(assert (= b_and!213097 (and (=> t!237550 result!199144) b_and!213109)))

(assert (=> b!3203534 t!237572))

(declare-fun b_and!213111 () Bool)

(assert (= b_and!213095 (and (=> t!237572 result!199174) b_and!213111)))

(assert (=> b!3203534 t!237564))

(declare-fun b_and!213113 () Bool)

(assert (= b_and!213101 (and (=> t!237564 result!199164) b_and!213113)))

(declare-fun m!3467785 () Bool)

(assert (=> d!876972 m!3467785))

(assert (=> b!3203534 m!3464731))

(assert (=> b!3203534 m!3464731))

(declare-fun m!3467787 () Bool)

(assert (=> b!3203534 m!3467787))

(declare-fun m!3467789 () Bool)

(assert (=> b!3203535 m!3467789))

(assert (=> b!3202015 d!876972))

(declare-fun d!876974 () Bool)

(assert (=> d!876974 (= (isDefined!5534 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241)))) (not (isEmpty!20189 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241))))))))

(declare-fun bs!541116 () Bool)

(assert (= bs!541116 d!876974))

(assert (=> bs!541116 m!3463541))

(declare-fun m!3467791 () Bool)

(assert (=> bs!541116 m!3467791))

(assert (=> d!875974 d!876974))

(assert (=> d!875974 d!875964))

(declare-fun d!876976 () Bool)

(declare-fun e!1997321 () Bool)

(assert (=> d!876976 e!1997321))

(declare-fun res!1303630 () Bool)

(assert (=> d!876976 (=> (not res!1303630) (not e!1997321))))

(assert (=> d!876976 (= res!1303630 (isDefined!5534 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241)))))))

(assert (=> d!876976 true))

(declare-fun _$52!1530 () Unit!50516)

(assert (=> d!876976 (= (choose!18686 thiss!18206 rules!2135 lt!1079883 separatorToken!241) _$52!1530)))

(declare-fun b!3203540 () Bool)

(declare-fun res!1303631 () Bool)

(assert (=> b!3203540 (=> (not res!1303631) (not e!1997321))))

(assert (=> b!3203540 (= res!1303631 (matchR!4599 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241))))) (list!12831 (charsOf!3222 separatorToken!241))))))

(declare-fun b!3203541 () Bool)

(assert (=> b!3203541 (= e!1997321 (= (rule!7642 separatorToken!241) (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 separatorToken!241))))))))

(assert (= (and d!876976 res!1303630) b!3203540))

(assert (= (and b!3203540 res!1303631) b!3203541))

(assert (=> d!876976 m!3463541))

(assert (=> d!876976 m!3463541))

(assert (=> d!876976 m!3464631))

(assert (=> b!3203540 m!3463475))

(assert (=> b!3203540 m!3463489))

(assert (=> b!3203540 m!3463541))

(assert (=> b!3203540 m!3464635))

(assert (=> b!3203540 m!3463489))

(assert (=> b!3203540 m!3464637))

(assert (=> b!3203540 m!3463541))

(assert (=> b!3203540 m!3463475))

(assert (=> b!3203541 m!3463541))

(assert (=> b!3203541 m!3463541))

(assert (=> b!3203541 m!3464635))

(assert (=> d!875974 d!876976))

(assert (=> d!875974 d!875758))

(declare-fun d!876978 () Bool)

(declare-fun e!1997322 () Bool)

(assert (=> d!876978 e!1997322))

(declare-fun res!1303632 () Bool)

(assert (=> d!876978 (=> (not res!1303632) (not e!1997322))))

(declare-fun lt!1081128 () List!36225)

(assert (=> d!876978 (= res!1303632 (= (content!4877 lt!1081128) ((_ map or) (content!4877 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))) (content!4877 (list!12831 (charsOf!3222 separatorToken!241))))))))

(declare-fun e!1997323 () List!36225)

(assert (=> d!876978 (= lt!1081128 e!1997323)))

(declare-fun c!537989 () Bool)

(assert (=> d!876978 (= c!537989 ((_ is Nil!36101) (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))))))

(assert (=> d!876978 (= (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) (list!12831 (charsOf!3222 separatorToken!241))) lt!1081128)))

(declare-fun b!3203543 () Bool)

(assert (=> b!3203543 (= e!1997323 (Cons!36101 (h!41521 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))) (++!8650 (t!237476 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))) (list!12831 (charsOf!3222 separatorToken!241)))))))

(declare-fun b!3203545 () Bool)

(assert (=> b!3203545 (= e!1997322 (or (not (= (list!12831 (charsOf!3222 separatorToken!241)) Nil!36101)) (= lt!1081128 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))))))))

(declare-fun b!3203544 () Bool)

(declare-fun res!1303633 () Bool)

(assert (=> b!3203544 (=> (not res!1303633) (not e!1997322))))

(assert (=> b!3203544 (= res!1303633 (= (size!27191 lt!1081128) (+ (size!27191 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))) (size!27191 (list!12831 (charsOf!3222 separatorToken!241))))))))

(declare-fun b!3203542 () Bool)

(assert (=> b!3203542 (= e!1997323 (list!12831 (charsOf!3222 separatorToken!241)))))

(assert (= (and d!876978 c!537989) b!3203542))

(assert (= (and d!876978 (not c!537989)) b!3203543))

(assert (= (and d!876978 res!1303632) b!3203544))

(assert (= (and b!3203544 res!1303633) b!3203545))

(declare-fun m!3467793 () Bool)

(assert (=> d!876978 m!3467793))

(assert (=> d!876978 m!3463483))

(assert (=> d!876978 m!3464687))

(assert (=> d!876978 m!3463489))

(assert (=> d!876978 m!3465519))

(assert (=> b!3203543 m!3463489))

(declare-fun m!3467795 () Bool)

(assert (=> b!3203543 m!3467795))

(declare-fun m!3467797 () Bool)

(assert (=> b!3203544 m!3467797))

(assert (=> b!3203544 m!3463483))

(assert (=> b!3203544 m!3464695))

(assert (=> b!3203544 m!3463489))

(assert (=> b!3203544 m!3465527))

(assert (=> b!3201897 d!876978))

(assert (=> b!3201897 d!875994))

(assert (=> b!3201897 d!875988))

(assert (=> b!3201897 d!875990))

(declare-fun d!876980 () Bool)

(declare-fun e!1997324 () Bool)

(assert (=> d!876980 e!1997324))

(declare-fun res!1303634 () Bool)

(assert (=> d!876980 (=> (not res!1303634) (not e!1997324))))

(declare-fun lt!1081129 () List!36225)

(assert (=> d!876980 (= res!1303634 (= (content!4877 lt!1081129) ((_ map or) (content!4877 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) (list!12831 (charsOf!3222 separatorToken!241)))) (content!4877 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)))))))

(declare-fun e!1997325 () List!36225)

(assert (=> d!876980 (= lt!1081129 e!1997325)))

(declare-fun c!537990 () Bool)

(assert (=> d!876980 (= c!537990 ((_ is Nil!36101) (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) (list!12831 (charsOf!3222 separatorToken!241)))))))

(assert (=> d!876980 (= (++!8650 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) (list!12831 (charsOf!3222 separatorToken!241))) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)) lt!1081129)))

(declare-fun b!3203547 () Bool)

(assert (=> b!3203547 (= e!1997325 (Cons!36101 (h!41521 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) (list!12831 (charsOf!3222 separatorToken!241)))) (++!8650 (t!237476 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) (list!12831 (charsOf!3222 separatorToken!241)))) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241))))))

(declare-fun b!3203549 () Bool)

(assert (=> b!3203549 (= e!1997324 (or (not (= (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241) Nil!36101)) (= lt!1081129 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) (list!12831 (charsOf!3222 separatorToken!241))))))))

(declare-fun b!3203548 () Bool)

(declare-fun res!1303635 () Bool)

(assert (=> b!3203548 (=> (not res!1303635) (not e!1997324))))

(assert (=> b!3203548 (= res!1303635 (= (size!27191 lt!1081129) (+ (size!27191 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) (list!12831 (charsOf!3222 separatorToken!241)))) (size!27191 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)))))))

(declare-fun b!3203546 () Bool)

(assert (=> b!3203546 (= e!1997325 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241))))

(assert (= (and d!876980 c!537990) b!3203546))

(assert (= (and d!876980 (not c!537990)) b!3203547))

(assert (= (and d!876980 res!1303634) b!3203548))

(assert (= (and b!3203548 res!1303635) b!3203549))

(declare-fun m!3467799 () Bool)

(assert (=> d!876980 m!3467799))

(assert (=> d!876980 m!3464709))

(declare-fun m!3467801 () Bool)

(assert (=> d!876980 m!3467801))

(assert (=> d!876980 m!3463487))

(assert (=> d!876980 m!3464665))

(assert (=> b!3203547 m!3463487))

(declare-fun m!3467803 () Bool)

(assert (=> b!3203547 m!3467803))

(declare-fun m!3467805 () Bool)

(assert (=> b!3203548 m!3467805))

(assert (=> b!3203548 m!3464709))

(declare-fun m!3467807 () Bool)

(assert (=> b!3203548 m!3467807))

(assert (=> b!3203548 m!3463487))

(assert (=> b!3203548 m!3464673))

(assert (=> b!3201897 d!876980))

(assert (=> b!3201897 d!876000))

(assert (=> b!3201897 d!876002))

(declare-fun d!876982 () Bool)

(declare-fun lt!1081136 () BalanceConc!21188)

(assert (=> d!876982 (= (list!12831 lt!1081136) (printListTailRec!557 thiss!18206 (dropList!1074 lt!1079886 (+ 0 1)) (list!12831 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079886 0))))))))

(declare-fun e!1997326 () BalanceConc!21188)

(assert (=> d!876982 (= lt!1081136 e!1997326)))

(declare-fun c!537991 () Bool)

(assert (=> d!876982 (= c!537991 (>= (+ 0 1) (size!27190 lt!1079886)))))

(declare-fun e!1997327 () Bool)

(assert (=> d!876982 e!1997327))

(declare-fun res!1303636 () Bool)

(assert (=> d!876982 (=> (not res!1303636) (not e!1997327))))

(assert (=> d!876982 (= res!1303636 (>= (+ 0 1) 0))))

(assert (=> d!876982 (= (printTailRec!1292 thiss!18206 lt!1079886 (+ 0 1) (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079886 0)))) lt!1081136)))

(declare-fun b!3203550 () Bool)

(assert (=> b!3203550 (= e!1997327 (<= (+ 0 1) (size!27190 lt!1079886)))))

(declare-fun b!3203551 () Bool)

(assert (=> b!3203551 (= e!1997326 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079886 0))))))

(declare-fun b!3203552 () Bool)

(assert (=> b!3203552 (= e!1997326 (printTailRec!1292 thiss!18206 lt!1079886 (+ 0 1 1) (++!8652 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079886 0))) (charsOf!3222 (apply!8150 lt!1079886 (+ 0 1))))))))

(declare-fun lt!1081132 () List!36227)

(assert (=> b!3203552 (= lt!1081132 (list!12833 lt!1079886))))

(declare-fun lt!1081133 () Unit!50516)

(assert (=> b!3203552 (= lt!1081133 (lemmaDropApply!1033 lt!1081132 (+ 0 1)))))

(assert (=> b!3203552 (= (head!7023 (drop!1857 lt!1081132 (+ 0 1))) (apply!8152 lt!1081132 (+ 0 1)))))

(declare-fun lt!1081131 () Unit!50516)

(assert (=> b!3203552 (= lt!1081131 lt!1081133)))

(declare-fun lt!1081134 () List!36227)

(assert (=> b!3203552 (= lt!1081134 (list!12833 lt!1079886))))

(declare-fun lt!1081130 () Unit!50516)

(assert (=> b!3203552 (= lt!1081130 (lemmaDropTail!917 lt!1081134 (+ 0 1)))))

(assert (=> b!3203552 (= (tail!5204 (drop!1857 lt!1081134 (+ 0 1))) (drop!1857 lt!1081134 (+ 0 1 1)))))

(declare-fun lt!1081135 () Unit!50516)

(assert (=> b!3203552 (= lt!1081135 lt!1081130)))

(assert (= (and d!876982 res!1303636) b!3203550))

(assert (= (and d!876982 c!537991) b!3203551))

(assert (= (and d!876982 (not c!537991)) b!3203552))

(declare-fun m!3467809 () Bool)

(assert (=> d!876982 m!3467809))

(declare-fun m!3467811 () Bool)

(assert (=> d!876982 m!3467811))

(assert (=> d!876982 m!3463771))

(declare-fun m!3467813 () Bool)

(assert (=> d!876982 m!3467813))

(assert (=> d!876982 m!3463753))

(assert (=> d!876982 m!3467811))

(assert (=> d!876982 m!3467813))

(declare-fun m!3467815 () Bool)

(assert (=> d!876982 m!3467815))

(assert (=> b!3203550 m!3463753))

(declare-fun m!3467817 () Bool)

(assert (=> b!3203552 m!3467817))

(declare-fun m!3467819 () Bool)

(assert (=> b!3203552 m!3467819))

(declare-fun m!3467821 () Bool)

(assert (=> b!3203552 m!3467821))

(declare-fun m!3467823 () Bool)

(assert (=> b!3203552 m!3467823))

(assert (=> b!3203552 m!3467821))

(declare-fun m!3467825 () Bool)

(assert (=> b!3203552 m!3467825))

(declare-fun m!3467827 () Bool)

(assert (=> b!3203552 m!3467827))

(declare-fun m!3467829 () Bool)

(assert (=> b!3203552 m!3467829))

(declare-fun m!3467831 () Bool)

(assert (=> b!3203552 m!3467831))

(declare-fun m!3467833 () Bool)

(assert (=> b!3203552 m!3467833))

(assert (=> b!3203552 m!3467825))

(declare-fun m!3467835 () Bool)

(assert (=> b!3203552 m!3467835))

(assert (=> b!3203552 m!3463771))

(assert (=> b!3203552 m!3467827))

(assert (=> b!3203552 m!3467831))

(declare-fun m!3467837 () Bool)

(assert (=> b!3203552 m!3467837))

(assert (=> b!3203552 m!3467819))

(declare-fun m!3467839 () Bool)

(assert (=> b!3203552 m!3467839))

(assert (=> b!3203552 m!3463741))

(assert (=> b!3201329 d!876982))

(declare-fun b!3203556 () Bool)

(declare-fun e!1997328 () Bool)

(declare-fun lt!1081137 () BalanceConc!21188)

(assert (=> b!3203556 (= e!1997328 (= (list!12831 lt!1081137) (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) (list!12831 (charsOf!3222 (apply!8150 lt!1079886 0))))))))

(declare-fun d!876984 () Bool)

(assert (=> d!876984 e!1997328))

(declare-fun res!1303639 () Bool)

(assert (=> d!876984 (=> (not res!1303639) (not e!1997328))))

(assert (=> d!876984 (= res!1303639 (appendAssocInst!729 (c!537387 (BalanceConc!21189 Empty!10787)) (c!537387 (charsOf!3222 (apply!8150 lt!1079886 0)))))))

(assert (=> d!876984 (= lt!1081137 (BalanceConc!21189 (++!8654 (c!537387 (BalanceConc!21189 Empty!10787)) (c!537387 (charsOf!3222 (apply!8150 lt!1079886 0))))))))

(assert (=> d!876984 (= (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079886 0))) lt!1081137)))

(declare-fun b!3203553 () Bool)

(declare-fun res!1303638 () Bool)

(assert (=> b!3203553 (=> (not res!1303638) (not e!1997328))))

(assert (=> b!3203553 (= res!1303638 (isBalanced!3211 (++!8654 (c!537387 (BalanceConc!21189 Empty!10787)) (c!537387 (charsOf!3222 (apply!8150 lt!1079886 0))))))))

(declare-fun b!3203554 () Bool)

(declare-fun res!1303640 () Bool)

(assert (=> b!3203554 (=> (not res!1303640) (not e!1997328))))

(assert (=> b!3203554 (= res!1303640 (<= (height!1547 (++!8654 (c!537387 (BalanceConc!21189 Empty!10787)) (c!537387 (charsOf!3222 (apply!8150 lt!1079886 0))))) (+ (max!0 (height!1547 (c!537387 (BalanceConc!21189 Empty!10787))) (height!1547 (c!537387 (charsOf!3222 (apply!8150 lt!1079886 0))))) 1)))))

(declare-fun b!3203555 () Bool)

(declare-fun res!1303637 () Bool)

(assert (=> b!3203555 (=> (not res!1303637) (not e!1997328))))

(assert (=> b!3203555 (= res!1303637 (>= (height!1547 (++!8654 (c!537387 (BalanceConc!21189 Empty!10787)) (c!537387 (charsOf!3222 (apply!8150 lt!1079886 0))))) (max!0 (height!1547 (c!537387 (BalanceConc!21189 Empty!10787))) (height!1547 (c!537387 (charsOf!3222 (apply!8150 lt!1079886 0)))))))))

(assert (= (and d!876984 res!1303639) b!3203553))

(assert (= (and b!3203553 res!1303638) b!3203554))

(assert (= (and b!3203554 res!1303640) b!3203555))

(assert (= (and b!3203555 res!1303637) b!3203556))

(declare-fun m!3467841 () Bool)

(assert (=> b!3203556 m!3467841))

(assert (=> b!3203556 m!3463751))

(assert (=> b!3203556 m!3463767))

(declare-fun m!3467843 () Bool)

(assert (=> b!3203556 m!3467843))

(assert (=> b!3203556 m!3463751))

(assert (=> b!3203556 m!3467843))

(declare-fun m!3467845 () Bool)

(assert (=> b!3203556 m!3467845))

(declare-fun m!3467847 () Bool)

(assert (=> b!3203555 m!3467847))

(declare-fun m!3467849 () Bool)

(assert (=> b!3203555 m!3467849))

(assert (=> b!3203555 m!3465329))

(assert (=> b!3203555 m!3467847))

(declare-fun m!3467851 () Bool)

(assert (=> b!3203555 m!3467851))

(assert (=> b!3203555 m!3465329))

(assert (=> b!3203555 m!3467849))

(declare-fun m!3467853 () Bool)

(assert (=> b!3203555 m!3467853))

(declare-fun m!3467855 () Bool)

(assert (=> d!876984 m!3467855))

(assert (=> d!876984 m!3467847))

(assert (=> b!3203554 m!3467847))

(assert (=> b!3203554 m!3467849))

(assert (=> b!3203554 m!3465329))

(assert (=> b!3203554 m!3467847))

(assert (=> b!3203554 m!3467851))

(assert (=> b!3203554 m!3465329))

(assert (=> b!3203554 m!3467849))

(assert (=> b!3203554 m!3467853))

(assert (=> b!3203553 m!3467847))

(assert (=> b!3203553 m!3467847))

(declare-fun m!3467857 () Bool)

(assert (=> b!3203553 m!3467857))

(assert (=> b!3201329 d!876984))

(declare-fun d!876986 () Bool)

(assert (=> d!876986 (= (list!12833 lt!1079886) (list!12837 (c!537388 lt!1079886)))))

(declare-fun bs!541117 () Bool)

(assert (= bs!541117 d!876986))

(assert (=> bs!541117 m!3465455))

(assert (=> b!3201329 d!876986))

(declare-fun d!876988 () Bool)

(declare-fun lt!1081138 () BalanceConc!21188)

(assert (=> d!876988 (= (list!12831 lt!1081138) (originalCharacters!5920 (apply!8150 lt!1079886 0)))))

(assert (=> d!876988 (= lt!1081138 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079886 0)))) (value!168831 (apply!8150 lt!1079886 0))))))

(assert (=> d!876988 (= (charsOf!3222 (apply!8150 lt!1079886 0)) lt!1081138)))

(declare-fun b_lambda!87641 () Bool)

(assert (=> (not b_lambda!87641) (not d!876988)))

(declare-fun tb!157083 () Bool)

(declare-fun t!237809 () Bool)

(assert (=> (and b!3201192 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079886 0))))) t!237809) tb!157083))

(declare-fun b!3203557 () Bool)

(declare-fun e!1997329 () Bool)

(declare-fun tp!1012075 () Bool)

(assert (=> b!3203557 (= e!1997329 (and (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079886 0)))) (value!168831 (apply!8150 lt!1079886 0))))) tp!1012075))))

(declare-fun result!199394 () Bool)

(assert (=> tb!157083 (= result!199394 (and (inv!48957 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079886 0)))) (value!168831 (apply!8150 lt!1079886 0)))) e!1997329))))

(assert (= tb!157083 b!3203557))

(declare-fun m!3467859 () Bool)

(assert (=> b!3203557 m!3467859))

(declare-fun m!3467861 () Bool)

(assert (=> tb!157083 m!3467861))

(assert (=> d!876988 t!237809))

(declare-fun b_and!213115 () Bool)

(assert (= b_and!213105 (and (=> t!237809 result!199394) b_and!213115)))

(declare-fun tb!157085 () Bool)

(declare-fun t!237811 () Bool)

(assert (=> (and b!3201193 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079886 0))))) t!237811) tb!157085))

(declare-fun result!199396 () Bool)

(assert (= result!199396 result!199394))

(assert (=> d!876988 t!237811))

(declare-fun b_and!213117 () Bool)

(assert (= b_and!213109 (and (=> t!237811 result!199396) b_and!213117)))

(declare-fun t!237813 () Bool)

(declare-fun tb!157087 () Bool)

(assert (=> (and b!3201175 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079886 0))))) t!237813) tb!157087))

(declare-fun result!199398 () Bool)

(assert (= result!199398 result!199394))

(assert (=> d!876988 t!237813))

(declare-fun b_and!213119 () Bool)

(assert (= b_and!213107 (and (=> t!237813 result!199398) b_and!213119)))

(declare-fun t!237815 () Bool)

(declare-fun tb!157089 () Bool)

(assert (=> (and b!3202018 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079886 0))))) t!237815) tb!157089))

(declare-fun result!199400 () Bool)

(assert (= result!199400 result!199394))

(assert (=> d!876988 t!237815))

(declare-fun b_and!213121 () Bool)

(assert (= b_and!213113 (and (=> t!237815 result!199400) b_and!213121)))

(declare-fun t!237817 () Bool)

(declare-fun tb!157091 () Bool)

(assert (=> (and b!3202029 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079886 0))))) t!237817) tb!157091))

(declare-fun result!199402 () Bool)

(assert (= result!199402 result!199394))

(assert (=> d!876988 t!237817))

(declare-fun b_and!213123 () Bool)

(assert (= b_and!213111 (and (=> t!237817 result!199402) b_and!213123)))

(declare-fun m!3467863 () Bool)

(assert (=> d!876988 m!3467863))

(declare-fun m!3467865 () Bool)

(assert (=> d!876988 m!3467865))

(assert (=> b!3201329 d!876988))

(declare-fun d!876990 () Bool)

(declare-fun lt!1081139 () Token!9778)

(assert (=> d!876990 (contains!6425 lt!1079971 lt!1081139)))

(declare-fun e!1997330 () Token!9778)

(assert (=> d!876990 (= lt!1081139 e!1997330)))

(declare-fun c!537992 () Bool)

(assert (=> d!876990 (= c!537992 (= 0 0))))

(declare-fun e!1997331 () Bool)

(assert (=> d!876990 e!1997331))

(declare-fun res!1303641 () Bool)

(assert (=> d!876990 (=> (not res!1303641) (not e!1997331))))

(assert (=> d!876990 (= res!1303641 (<= 0 0))))

(assert (=> d!876990 (= (apply!8152 lt!1079971 0) lt!1081139)))

(declare-fun b!3203558 () Bool)

(assert (=> b!3203558 (= e!1997331 (< 0 (size!27196 lt!1079971)))))

(declare-fun b!3203559 () Bool)

(assert (=> b!3203559 (= e!1997330 (head!7023 lt!1079971))))

(declare-fun b!3203560 () Bool)

(assert (=> b!3203560 (= e!1997330 (apply!8152 (tail!5204 lt!1079971) (- 0 1)))))

(assert (= (and d!876990 res!1303641) b!3203558))

(assert (= (and d!876990 c!537992) b!3203559))

(assert (= (and d!876990 (not c!537992)) b!3203560))

(declare-fun m!3467867 () Bool)

(assert (=> d!876990 m!3467867))

(declare-fun m!3467869 () Bool)

(assert (=> b!3203558 m!3467869))

(declare-fun m!3467871 () Bool)

(assert (=> b!3203559 m!3467871))

(declare-fun m!3467873 () Bool)

(assert (=> b!3203560 m!3467873))

(assert (=> b!3203560 m!3467873))

(declare-fun m!3467875 () Bool)

(assert (=> b!3203560 m!3467875))

(assert (=> b!3201329 d!876990))

(declare-fun b!3203561 () Bool)

(declare-fun e!1997336 () Int)

(declare-fun call!231938 () Int)

(assert (=> b!3203561 (= e!1997336 (- call!231938 (+ 0 1)))))

(declare-fun b!3203562 () Bool)

(declare-fun e!1997335 () List!36227)

(assert (=> b!3203562 (= e!1997335 lt!1079973)))

(declare-fun bm!231933 () Bool)

(assert (=> bm!231933 (= call!231938 (size!27196 lt!1079973))))

(declare-fun b!3203563 () Bool)

(assert (=> b!3203563 (= e!1997335 (drop!1857 (t!237478 lt!1079973) (- (+ 0 1) 1)))))

(declare-fun b!3203565 () Bool)

(declare-fun e!1997333 () Bool)

(declare-fun lt!1081140 () List!36227)

(declare-fun e!1997334 () Int)

(assert (=> b!3203565 (= e!1997333 (= (size!27196 lt!1081140) e!1997334))))

(declare-fun c!537993 () Bool)

(assert (=> b!3203565 (= c!537993 (<= (+ 0 1) 0))))

(declare-fun b!3203566 () Bool)

(assert (=> b!3203566 (= e!1997336 0)))

(declare-fun b!3203567 () Bool)

(declare-fun e!1997332 () List!36227)

(assert (=> b!3203567 (= e!1997332 Nil!36103)))

(declare-fun b!3203568 () Bool)

(assert (=> b!3203568 (= e!1997334 e!1997336)))

(declare-fun c!537996 () Bool)

(assert (=> b!3203568 (= c!537996 (>= (+ 0 1) call!231938))))

(declare-fun b!3203569 () Bool)

(assert (=> b!3203569 (= e!1997334 call!231938)))

(declare-fun b!3203564 () Bool)

(assert (=> b!3203564 (= e!1997332 e!1997335)))

(declare-fun c!537995 () Bool)

(assert (=> b!3203564 (= c!537995 (<= (+ 0 1) 0))))

(declare-fun d!876992 () Bool)

(assert (=> d!876992 e!1997333))

(declare-fun res!1303642 () Bool)

(assert (=> d!876992 (=> (not res!1303642) (not e!1997333))))

(assert (=> d!876992 (= res!1303642 (= ((_ map implies) (content!4878 lt!1081140) (content!4878 lt!1079973)) ((as const (InoxSet Token!9778)) true)))))

(assert (=> d!876992 (= lt!1081140 e!1997332)))

(declare-fun c!537994 () Bool)

(assert (=> d!876992 (= c!537994 ((_ is Nil!36103) lt!1079973))))

(assert (=> d!876992 (= (drop!1857 lt!1079973 (+ 0 1)) lt!1081140)))

(assert (= (and d!876992 c!537994) b!3203567))

(assert (= (and d!876992 (not c!537994)) b!3203564))

(assert (= (and b!3203564 c!537995) b!3203562))

(assert (= (and b!3203564 (not c!537995)) b!3203563))

(assert (= (and d!876992 res!1303642) b!3203565))

(assert (= (and b!3203565 c!537993) b!3203569))

(assert (= (and b!3203565 (not c!537993)) b!3203568))

(assert (= (and b!3203568 c!537996) b!3203566))

(assert (= (and b!3203568 (not c!537996)) b!3203561))

(assert (= (or b!3203569 b!3203568 b!3203561) bm!231933))

(declare-fun m!3467877 () Bool)

(assert (=> bm!231933 m!3467877))

(declare-fun m!3467879 () Bool)

(assert (=> b!3203563 m!3467879))

(declare-fun m!3467881 () Bool)

(assert (=> b!3203565 m!3467881))

(declare-fun m!3467883 () Bool)

(assert (=> d!876992 m!3467883))

(declare-fun m!3467885 () Bool)

(assert (=> d!876992 m!3467885))

(assert (=> b!3201329 d!876992))

(declare-fun b!3203570 () Bool)

(declare-fun e!1997341 () Int)

(declare-fun call!231939 () Int)

(assert (=> b!3203570 (= e!1997341 (- call!231939 0))))

(declare-fun b!3203571 () Bool)

(declare-fun e!1997340 () List!36227)

(assert (=> b!3203571 (= e!1997340 lt!1079971)))

(declare-fun bm!231934 () Bool)

(assert (=> bm!231934 (= call!231939 (size!27196 lt!1079971))))

(declare-fun b!3203572 () Bool)

(assert (=> b!3203572 (= e!1997340 (drop!1857 (t!237478 lt!1079971) (- 0 1)))))

(declare-fun b!3203574 () Bool)

(declare-fun e!1997338 () Bool)

(declare-fun lt!1081141 () List!36227)

(declare-fun e!1997339 () Int)

(assert (=> b!3203574 (= e!1997338 (= (size!27196 lt!1081141) e!1997339))))

(declare-fun c!537997 () Bool)

(assert (=> b!3203574 (= c!537997 (<= 0 0))))

(declare-fun b!3203575 () Bool)

(assert (=> b!3203575 (= e!1997341 0)))

(declare-fun b!3203576 () Bool)

(declare-fun e!1997337 () List!36227)

(assert (=> b!3203576 (= e!1997337 Nil!36103)))

(declare-fun b!3203577 () Bool)

(assert (=> b!3203577 (= e!1997339 e!1997341)))

(declare-fun c!538000 () Bool)

(assert (=> b!3203577 (= c!538000 (>= 0 call!231939))))

(declare-fun b!3203578 () Bool)

(assert (=> b!3203578 (= e!1997339 call!231939)))

(declare-fun b!3203573 () Bool)

(assert (=> b!3203573 (= e!1997337 e!1997340)))

(declare-fun c!537999 () Bool)

(assert (=> b!3203573 (= c!537999 (<= 0 0))))

(declare-fun d!876994 () Bool)

(assert (=> d!876994 e!1997338))

(declare-fun res!1303643 () Bool)

(assert (=> d!876994 (=> (not res!1303643) (not e!1997338))))

(assert (=> d!876994 (= res!1303643 (= ((_ map implies) (content!4878 lt!1081141) (content!4878 lt!1079971)) ((as const (InoxSet Token!9778)) true)))))

(assert (=> d!876994 (= lt!1081141 e!1997337)))

(declare-fun c!537998 () Bool)

(assert (=> d!876994 (= c!537998 ((_ is Nil!36103) lt!1079971))))

(assert (=> d!876994 (= (drop!1857 lt!1079971 0) lt!1081141)))

(assert (= (and d!876994 c!537998) b!3203576))

(assert (= (and d!876994 (not c!537998)) b!3203573))

(assert (= (and b!3203573 c!537999) b!3203571))

(assert (= (and b!3203573 (not c!537999)) b!3203572))

(assert (= (and d!876994 res!1303643) b!3203574))

(assert (= (and b!3203574 c!537997) b!3203578))

(assert (= (and b!3203574 (not c!537997)) b!3203577))

(assert (= (and b!3203577 c!538000) b!3203575))

(assert (= (and b!3203577 (not c!538000)) b!3203570))

(assert (= (or b!3203578 b!3203577 b!3203570) bm!231934))

(assert (=> bm!231934 m!3467869))

(declare-fun m!3467887 () Bool)

(assert (=> b!3203572 m!3467887))

(declare-fun m!3467889 () Bool)

(assert (=> b!3203574 m!3467889))

(declare-fun m!3467891 () Bool)

(assert (=> d!876994 m!3467891))

(declare-fun m!3467893 () Bool)

(assert (=> d!876994 m!3467893))

(assert (=> b!3201329 d!876994))

(declare-fun d!876996 () Bool)

(declare-fun lt!1081142 () Token!9778)

(assert (=> d!876996 (= lt!1081142 (apply!8152 (list!12833 lt!1079886) 0))))

(assert (=> d!876996 (= lt!1081142 (apply!8153 (c!537388 lt!1079886) 0))))

(declare-fun e!1997342 () Bool)

(assert (=> d!876996 e!1997342))

(declare-fun res!1303644 () Bool)

(assert (=> d!876996 (=> (not res!1303644) (not e!1997342))))

(assert (=> d!876996 (= res!1303644 (<= 0 0))))

(assert (=> d!876996 (= (apply!8150 lt!1079886 0) lt!1081142)))

(declare-fun b!3203579 () Bool)

(assert (=> b!3203579 (= e!1997342 (< 0 (size!27190 lt!1079886)))))

(assert (= (and d!876996 res!1303644) b!3203579))

(assert (=> d!876996 m!3463741))

(assert (=> d!876996 m!3463741))

(declare-fun m!3467895 () Bool)

(assert (=> d!876996 m!3467895))

(declare-fun m!3467897 () Bool)

(assert (=> d!876996 m!3467897))

(assert (=> b!3203579 m!3463753))

(assert (=> b!3201329 d!876996))

(declare-fun d!876998 () Bool)

(assert (=> d!876998 (= (head!7023 (drop!1857 lt!1079971 0)) (h!41523 (drop!1857 lt!1079971 0)))))

(assert (=> b!3201329 d!876998))

(declare-fun d!877000 () Bool)

(assert (=> d!877000 (= (tail!5204 (drop!1857 lt!1079973 0)) (drop!1857 lt!1079973 (+ 0 1)))))

(declare-fun lt!1081143 () Unit!50516)

(assert (=> d!877000 (= lt!1081143 (choose!18694 lt!1079973 0))))

(declare-fun e!1997343 () Bool)

(assert (=> d!877000 e!1997343))

(declare-fun res!1303645 () Bool)

(assert (=> d!877000 (=> (not res!1303645) (not e!1997343))))

(assert (=> d!877000 (= res!1303645 (>= 0 0))))

(assert (=> d!877000 (= (lemmaDropTail!917 lt!1079973 0) lt!1081143)))

(declare-fun b!3203580 () Bool)

(assert (=> b!3203580 (= e!1997343 (< 0 (size!27196 lt!1079973)))))

(assert (= (and d!877000 res!1303645) b!3203580))

(assert (=> d!877000 m!3463761))

(assert (=> d!877000 m!3463761))

(assert (=> d!877000 m!3463763))

(assert (=> d!877000 m!3463769))

(declare-fun m!3467899 () Bool)

(assert (=> d!877000 m!3467899))

(assert (=> b!3203580 m!3467877))

(assert (=> b!3201329 d!877000))

(declare-fun d!877002 () Bool)

(assert (=> d!877002 (= (tail!5204 (drop!1857 lt!1079973 0)) (t!237478 (drop!1857 lt!1079973 0)))))

(assert (=> b!3201329 d!877002))

(declare-fun d!877004 () Bool)

(assert (=> d!877004 (= (head!7023 (drop!1857 lt!1079971 0)) (apply!8152 lt!1079971 0))))

(declare-fun lt!1081144 () Unit!50516)

(assert (=> d!877004 (= lt!1081144 (choose!18695 lt!1079971 0))))

(declare-fun e!1997344 () Bool)

(assert (=> d!877004 e!1997344))

(declare-fun res!1303646 () Bool)

(assert (=> d!877004 (=> (not res!1303646) (not e!1997344))))

(assert (=> d!877004 (= res!1303646 (>= 0 0))))

(assert (=> d!877004 (= (lemmaDropApply!1033 lt!1079971 0) lt!1081144)))

(declare-fun b!3203581 () Bool)

(assert (=> b!3203581 (= e!1997344 (< 0 (size!27196 lt!1079971)))))

(assert (= (and d!877004 res!1303646) b!3203581))

(assert (=> d!877004 m!3463759))

(assert (=> d!877004 m!3463759))

(assert (=> d!877004 m!3463779))

(assert (=> d!877004 m!3463757))

(declare-fun m!3467901 () Bool)

(assert (=> d!877004 m!3467901))

(assert (=> b!3203581 m!3467869))

(assert (=> b!3201329 d!877004))

(declare-fun b!3203582 () Bool)

(declare-fun e!1997349 () Int)

(declare-fun call!231940 () Int)

(assert (=> b!3203582 (= e!1997349 (- call!231940 0))))

(declare-fun b!3203583 () Bool)

(declare-fun e!1997348 () List!36227)

(assert (=> b!3203583 (= e!1997348 lt!1079973)))

(declare-fun bm!231935 () Bool)

(assert (=> bm!231935 (= call!231940 (size!27196 lt!1079973))))

(declare-fun b!3203584 () Bool)

(assert (=> b!3203584 (= e!1997348 (drop!1857 (t!237478 lt!1079973) (- 0 1)))))

(declare-fun b!3203586 () Bool)

(declare-fun e!1997346 () Bool)

(declare-fun lt!1081145 () List!36227)

(declare-fun e!1997347 () Int)

(assert (=> b!3203586 (= e!1997346 (= (size!27196 lt!1081145) e!1997347))))

(declare-fun c!538001 () Bool)

(assert (=> b!3203586 (= c!538001 (<= 0 0))))

(declare-fun b!3203587 () Bool)

(assert (=> b!3203587 (= e!1997349 0)))

(declare-fun b!3203588 () Bool)

(declare-fun e!1997345 () List!36227)

(assert (=> b!3203588 (= e!1997345 Nil!36103)))

(declare-fun b!3203589 () Bool)

(assert (=> b!3203589 (= e!1997347 e!1997349)))

(declare-fun c!538004 () Bool)

(assert (=> b!3203589 (= c!538004 (>= 0 call!231940))))

(declare-fun b!3203590 () Bool)

(assert (=> b!3203590 (= e!1997347 call!231940)))

(declare-fun b!3203585 () Bool)

(assert (=> b!3203585 (= e!1997345 e!1997348)))

(declare-fun c!538003 () Bool)

(assert (=> b!3203585 (= c!538003 (<= 0 0))))

(declare-fun d!877006 () Bool)

(assert (=> d!877006 e!1997346))

(declare-fun res!1303647 () Bool)

(assert (=> d!877006 (=> (not res!1303647) (not e!1997346))))

(assert (=> d!877006 (= res!1303647 (= ((_ map implies) (content!4878 lt!1081145) (content!4878 lt!1079973)) ((as const (InoxSet Token!9778)) true)))))

(assert (=> d!877006 (= lt!1081145 e!1997345)))

(declare-fun c!538002 () Bool)

(assert (=> d!877006 (= c!538002 ((_ is Nil!36103) lt!1079973))))

(assert (=> d!877006 (= (drop!1857 lt!1079973 0) lt!1081145)))

(assert (= (and d!877006 c!538002) b!3203588))

(assert (= (and d!877006 (not c!538002)) b!3203585))

(assert (= (and b!3203585 c!538003) b!3203583))

(assert (= (and b!3203585 (not c!538003)) b!3203584))

(assert (= (and d!877006 res!1303647) b!3203586))

(assert (= (and b!3203586 c!538001) b!3203590))

(assert (= (and b!3203586 (not c!538001)) b!3203589))

(assert (= (and b!3203589 c!538004) b!3203587))

(assert (= (and b!3203589 (not c!538004)) b!3203582))

(assert (= (or b!3203590 b!3203589 b!3203582) bm!231935))

(assert (=> bm!231935 m!3467877))

(declare-fun m!3467903 () Bool)

(assert (=> b!3203584 m!3467903))

(declare-fun m!3467905 () Bool)

(assert (=> b!3203586 m!3467905))

(declare-fun m!3467907 () Bool)

(assert (=> d!877006 m!3467907))

(assert (=> d!877006 m!3467885))

(assert (=> b!3201329 d!877006))

(declare-fun d!877008 () Bool)

(declare-fun lt!1081146 () Bool)

(assert (=> d!877008 (= lt!1081146 (isEmpty!20186 (list!12831 (_2!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241)))))))))

(assert (=> d!877008 (= lt!1081146 (isEmpty!20187 (c!537387 (_2!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241)))))))))

(assert (=> d!877008 (= (isEmpty!20179 (_2!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241))))) lt!1081146)))

(declare-fun bs!541118 () Bool)

(assert (= bs!541118 d!877008))

(declare-fun m!3467909 () Bool)

(assert (=> bs!541118 m!3467909))

(assert (=> bs!541118 m!3467909))

(declare-fun m!3467911 () Bool)

(assert (=> bs!541118 m!3467911))

(declare-fun m!3467913 () Bool)

(assert (=> bs!541118 m!3467913))

(assert (=> b!3201926 d!877008))

(declare-fun lt!1081147 () tuple2!35478)

(declare-fun b!3203591 () Bool)

(declare-fun e!1997352 () Bool)

(assert (=> b!3203591 (= e!1997352 (= (_2!20873 lt!1081147) (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241))))))

(declare-fun b!3203592 () Bool)

(declare-fun e!1997350 () Bool)

(assert (=> b!3203592 (= e!1997350 (= (list!12831 (_2!20873 lt!1081147)) (_2!20878 (lexList!1309 thiss!18206 rules!2135 (list!12831 (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241)))))))))

(declare-fun d!877010 () Bool)

(assert (=> d!877010 e!1997350))

(declare-fun res!1303649 () Bool)

(assert (=> d!877010 (=> (not res!1303649) (not e!1997350))))

(assert (=> d!877010 (= res!1303649 e!1997352)))

(declare-fun c!538005 () Bool)

(assert (=> d!877010 (= c!538005 (> (size!27190 (_1!20873 lt!1081147)) 0))))

(assert (=> d!877010 (= lt!1081147 (lexTailRecV2!929 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241)) (BalanceConc!21189 Empty!10787) (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241)) (BalanceConc!21191 Empty!10788)))))

(assert (=> d!877010 (= (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241))) lt!1081147)))

(declare-fun b!3203593 () Bool)

(declare-fun e!1997351 () Bool)

(assert (=> b!3203593 (= e!1997351 (not (isEmpty!20180 (_1!20873 lt!1081147))))))

(declare-fun b!3203594 () Bool)

(assert (=> b!3203594 (= e!1997352 e!1997351)))

(declare-fun res!1303648 () Bool)

(assert (=> b!3203594 (= res!1303648 (< (size!27195 (_2!20873 lt!1081147)) (size!27195 (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241)))))))

(assert (=> b!3203594 (=> (not res!1303648) (not e!1997351))))

(declare-fun b!3203595 () Bool)

(declare-fun res!1303650 () Bool)

(assert (=> b!3203595 (=> (not res!1303650) (not e!1997350))))

(assert (=> b!3203595 (= res!1303650 (= (list!12833 (_1!20873 lt!1081147)) (_1!20878 (lexList!1309 thiss!18206 rules!2135 (list!12831 (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241)))))))))

(assert (= (and d!877010 c!538005) b!3203594))

(assert (= (and d!877010 (not c!538005)) b!3203591))

(assert (= (and b!3203594 res!1303648) b!3203593))

(assert (= (and d!877010 res!1303649) b!3203595))

(assert (= (and b!3203595 res!1303650) b!3203592))

(declare-fun m!3467915 () Bool)

(assert (=> b!3203593 m!3467915))

(declare-fun m!3467917 () Bool)

(assert (=> b!3203594 m!3467917))

(assert (=> b!3203594 m!3464787))

(declare-fun m!3467919 () Bool)

(assert (=> b!3203594 m!3467919))

(declare-fun m!3467921 () Bool)

(assert (=> b!3203595 m!3467921))

(assert (=> b!3203595 m!3464787))

(declare-fun m!3467923 () Bool)

(assert (=> b!3203595 m!3467923))

(assert (=> b!3203595 m!3467923))

(declare-fun m!3467925 () Bool)

(assert (=> b!3203595 m!3467925))

(declare-fun m!3467927 () Bool)

(assert (=> d!877010 m!3467927))

(assert (=> d!877010 m!3464787))

(assert (=> d!877010 m!3464787))

(declare-fun m!3467929 () Bool)

(assert (=> d!877010 m!3467929))

(declare-fun m!3467931 () Bool)

(assert (=> b!3203592 m!3467931))

(assert (=> b!3203592 m!3464787))

(assert (=> b!3203592 m!3467923))

(assert (=> b!3203592 m!3467923))

(assert (=> b!3203592 m!3467925))

(assert (=> b!3201926 d!877010))

(declare-fun d!877012 () Bool)

(declare-fun lt!1081148 () BalanceConc!21188)

(assert (=> d!877012 (= (list!12831 lt!1081148) (printList!1345 thiss!18206 (list!12833 (singletonSeq!2302 separatorToken!241))))))

(assert (=> d!877012 (= lt!1081148 (printTailRec!1292 thiss!18206 (singletonSeq!2302 separatorToken!241) 0 (BalanceConc!21189 Empty!10787)))))

(assert (=> d!877012 (= (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241)) lt!1081148)))

(declare-fun bs!541119 () Bool)

(assert (= bs!541119 d!877012))

(declare-fun m!3467933 () Bool)

(assert (=> bs!541119 m!3467933))

(assert (=> bs!541119 m!3463527))

(assert (=> bs!541119 m!3464791))

(assert (=> bs!541119 m!3464791))

(declare-fun m!3467935 () Bool)

(assert (=> bs!541119 m!3467935))

(assert (=> bs!541119 m!3463527))

(declare-fun m!3467937 () Bool)

(assert (=> bs!541119 m!3467937))

(assert (=> b!3201926 d!877012))

(assert (=> b!3201926 d!875958))

(declare-fun d!877014 () Bool)

(assert (=> d!877014 (= (list!12831 lt!1080175) (list!12834 (c!537387 lt!1080175)))))

(declare-fun bs!541120 () Bool)

(assert (= bs!541120 d!877014))

(declare-fun m!3467939 () Bool)

(assert (=> bs!541120 m!3467939))

(assert (=> d!875978 d!877014))

(declare-fun d!877016 () Bool)

(declare-fun c!538006 () Bool)

(assert (=> d!877016 (= c!538006 ((_ is Cons!36103) (list!12833 lt!1079897)))))

(declare-fun e!1997353 () List!36225)

(assert (=> d!877016 (= (printList!1345 thiss!18206 (list!12833 lt!1079897)) e!1997353)))

(declare-fun b!3203596 () Bool)

(assert (=> b!3203596 (= e!1997353 (++!8650 (list!12831 (charsOf!3222 (h!41523 (list!12833 lt!1079897)))) (printList!1345 thiss!18206 (t!237478 (list!12833 lt!1079897)))))))

(declare-fun b!3203597 () Bool)

(assert (=> b!3203597 (= e!1997353 Nil!36101)))

(assert (= (and d!877016 c!538006) b!3203596))

(assert (= (and d!877016 (not c!538006)) b!3203597))

(declare-fun m!3467941 () Bool)

(assert (=> b!3203596 m!3467941))

(assert (=> b!3203596 m!3467941))

(declare-fun m!3467943 () Bool)

(assert (=> b!3203596 m!3467943))

(declare-fun m!3467945 () Bool)

(assert (=> b!3203596 m!3467945))

(assert (=> b!3203596 m!3467943))

(assert (=> b!3203596 m!3467945))

(declare-fun m!3467947 () Bool)

(assert (=> b!3203596 m!3467947))

(assert (=> d!875978 d!877016))

(assert (=> d!875978 d!876240))

(assert (=> d!875978 d!875968))

(declare-fun d!877018 () Bool)

(assert (=> d!877018 (= (isDefined!5534 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494))))) (not (isEmpty!20189 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494)))))))))

(declare-fun bs!541121 () Bool)

(assert (= bs!541121 d!877018))

(assert (=> bs!541121 m!3463507))

(declare-fun m!3467949 () Bool)

(assert (=> bs!541121 m!3467949))

(assert (=> d!875878 d!877018))

(assert (=> d!875878 d!875948))

(declare-fun d!877020 () Bool)

(declare-fun e!1997354 () Bool)

(assert (=> d!877020 e!1997354))

(declare-fun res!1303651 () Bool)

(assert (=> d!877020 (=> (not res!1303651) (not e!1997354))))

(assert (=> d!877020 (= res!1303651 (isDefined!5534 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494))))))))

(assert (=> d!877020 true))

(declare-fun _$52!1531 () Unit!50516)

(assert (=> d!877020 (= (choose!18686 thiss!18206 rules!2135 lt!1079879 (h!41523 tokens!494)) _$52!1531)))

(declare-fun b!3203598 () Bool)

(declare-fun res!1303652 () Bool)

(assert (=> b!3203598 (=> (not res!1303652) (not e!1997354))))

(assert (=> b!3203598 (= res!1303652 (matchR!4599 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494)))))) (list!12831 (charsOf!3222 (h!41523 tokens!494)))))))

(declare-fun b!3203599 () Bool)

(assert (=> b!3203599 (= e!1997354 (= (rule!7642 (h!41523 tokens!494)) (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494)))))))))

(assert (= (and d!877020 res!1303651) b!3203598))

(assert (= (and b!3203598 res!1303652) b!3203599))

(assert (=> d!877020 m!3463507))

(assert (=> d!877020 m!3463507))

(assert (=> d!877020 m!3464289))

(assert (=> b!3203598 m!3463561))

(assert (=> b!3203598 m!3463563))

(assert (=> b!3203598 m!3463507))

(assert (=> b!3203598 m!3464293))

(assert (=> b!3203598 m!3463563))

(assert (=> b!3203598 m!3464295))

(assert (=> b!3203598 m!3463507))

(assert (=> b!3203598 m!3463561))

(assert (=> b!3203599 m!3463507))

(assert (=> b!3203599 m!3463507))

(assert (=> b!3203599 m!3464293))

(assert (=> d!875878 d!877020))

(assert (=> d!875878 d!875758))

(declare-fun d!877022 () Bool)

(assert (=> d!877022 (= (list!12831 lt!1079954) (list!12834 (c!537387 lt!1079954)))))

(declare-fun bs!541122 () Bool)

(assert (= bs!541122 d!877022))

(declare-fun m!3467951 () Bool)

(assert (=> bs!541122 m!3467951))

(assert (=> d!875760 d!877022))

(declare-fun d!877024 () Bool)

(declare-fun c!538007 () Bool)

(assert (=> d!877024 (= c!538007 ((_ is Cons!36103) (list!12833 lt!1079886)))))

(declare-fun e!1997355 () List!36225)

(assert (=> d!877024 (= (printList!1345 thiss!18206 (list!12833 lt!1079886)) e!1997355)))

(declare-fun b!3203600 () Bool)

(assert (=> b!3203600 (= e!1997355 (++!8650 (list!12831 (charsOf!3222 (h!41523 (list!12833 lt!1079886)))) (printList!1345 thiss!18206 (t!237478 (list!12833 lt!1079886)))))))

(declare-fun b!3203601 () Bool)

(assert (=> b!3203601 (= e!1997355 Nil!36101)))

(assert (= (and d!877024 c!538007) b!3203600))

(assert (= (and d!877024 (not c!538007)) b!3203601))

(declare-fun m!3467953 () Bool)

(assert (=> b!3203600 m!3467953))

(assert (=> b!3203600 m!3467953))

(declare-fun m!3467955 () Bool)

(assert (=> b!3203600 m!3467955))

(declare-fun m!3467957 () Bool)

(assert (=> b!3203600 m!3467957))

(assert (=> b!3203600 m!3467955))

(assert (=> b!3203600 m!3467957))

(declare-fun m!3467959 () Bool)

(assert (=> b!3203600 m!3467959))

(assert (=> d!875760 d!877024))

(assert (=> d!875760 d!876986))

(assert (=> d!875760 d!875772))

(declare-fun d!877026 () Bool)

(declare-fun e!1997358 () Bool)

(assert (=> d!877026 e!1997358))

(declare-fun res!1303655 () Bool)

(assert (=> d!877026 (=> (not res!1303655) (not e!1997358))))

(declare-fun lt!1081151 () BalanceConc!21188)

(assert (=> d!877026 (= res!1303655 (= (list!12831 lt!1081151) lt!1079879))))

(declare-fun fromList!605 (List!36225) Conc!10787)

(assert (=> d!877026 (= lt!1081151 (BalanceConc!21189 (fromList!605 lt!1079879)))))

(assert (=> d!877026 (= (fromListB!1534 lt!1079879) lt!1081151)))

(declare-fun b!3203604 () Bool)

(assert (=> b!3203604 (= e!1997358 (isBalanced!3211 (fromList!605 lt!1079879)))))

(assert (= (and d!877026 res!1303655) b!3203604))

(declare-fun m!3467961 () Bool)

(assert (=> d!877026 m!3467961))

(declare-fun m!3467963 () Bool)

(assert (=> d!877026 m!3467963))

(assert (=> b!3203604 m!3467963))

(assert (=> b!3203604 m!3467963))

(declare-fun m!3467965 () Bool)

(assert (=> b!3203604 m!3467965))

(assert (=> d!876012 d!877026))

(declare-fun d!877028 () Bool)

(assert (=> d!877028 (= (list!12831 lt!1080185) (list!12834 (c!537387 lt!1080185)))))

(declare-fun bs!541123 () Bool)

(assert (= bs!541123 d!877028))

(declare-fun m!3467967 () Bool)

(assert (=> bs!541123 m!3467967))

(assert (=> d!875988 d!877028))

(declare-fun d!877030 () Bool)

(declare-fun lt!1081152 () Int)

(assert (=> d!877030 (= lt!1081152 (size!27191 (list!12831 (_2!20873 lt!1080196))))))

(assert (=> d!877030 (= lt!1081152 (size!27199 (c!537387 (_2!20873 lt!1080196))))))

(assert (=> d!877030 (= (size!27195 (_2!20873 lt!1080196)) lt!1081152)))

(declare-fun bs!541124 () Bool)

(assert (= bs!541124 d!877030))

(assert (=> bs!541124 m!3464771))

(assert (=> bs!541124 m!3464771))

(declare-fun m!3467969 () Bool)

(assert (=> bs!541124 m!3467969))

(declare-fun m!3467971 () Bool)

(assert (=> bs!541124 m!3467971))

(assert (=> b!3201911 d!877030))

(declare-fun d!877032 () Bool)

(declare-fun lt!1081153 () Int)

(assert (=> d!877032 (= lt!1081153 (size!27191 (list!12831 lt!1079875)))))

(assert (=> d!877032 (= lt!1081153 (size!27199 (c!537387 lt!1079875)))))

(assert (=> d!877032 (= (size!27195 lt!1079875) lt!1081153)))

(declare-fun bs!541125 () Bool)

(assert (= bs!541125 d!877032))

(assert (=> bs!541125 m!3464763))

(assert (=> bs!541125 m!3464763))

(assert (=> bs!541125 m!3466141))

(declare-fun m!3467973 () Bool)

(assert (=> bs!541125 m!3467973))

(assert (=> b!3201911 d!877032))

(declare-fun d!877034 () Bool)

(declare-fun c!538009 () Bool)

(assert (=> d!877034 (= c!538009 ((_ is Nil!36101) lt!1080186))))

(declare-fun e!1997359 () (InoxSet C!20116))

(assert (=> d!877034 (= (content!4877 lt!1080186) e!1997359)))

(declare-fun b!3203605 () Bool)

(assert (=> b!3203605 (= e!1997359 ((as const (Array C!20116 Bool)) false))))

(declare-fun b!3203606 () Bool)

(assert (=> b!3203606 (= e!1997359 ((_ map or) (store ((as const (Array C!20116 Bool)) false) (h!41521 lt!1080186) true) (content!4877 (t!237476 lt!1080186))))))

(assert (= (and d!877034 c!538009) b!3203605))

(assert (= (and d!877034 (not c!538009)) b!3203606))

(declare-fun m!3467975 () Bool)

(assert (=> b!3203606 m!3467975))

(declare-fun m!3467977 () Bool)

(assert (=> b!3203606 m!3467977))

(assert (=> d!875992 d!877034))

(declare-fun d!877036 () Bool)

(declare-fun c!538010 () Bool)

(assert (=> d!877036 (= c!538010 ((_ is Nil!36101) (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))))))

(declare-fun e!1997360 () (InoxSet C!20116))

(assert (=> d!877036 (= (content!4877 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))) e!1997360)))

(declare-fun b!3203607 () Bool)

(assert (=> b!3203607 (= e!1997360 ((as const (Array C!20116 Bool)) false))))

(declare-fun b!3203608 () Bool)

(assert (=> b!3203608 (= e!1997360 ((_ map or) (store ((as const (Array C!20116 Bool)) false) (h!41521 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))) true) (content!4877 (t!237476 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494))))))))))

(assert (= (and d!877036 c!538010) b!3203607))

(assert (= (and d!877036 (not c!538010)) b!3203608))

(declare-fun m!3467979 () Bool)

(assert (=> b!3203608 m!3467979))

(assert (=> b!3203608 m!3467645))

(assert (=> d!875992 d!877036))

(declare-fun d!877038 () Bool)

(declare-fun c!538011 () Bool)

(assert (=> d!877038 (= c!538011 ((_ is Nil!36101) lt!1079883))))

(declare-fun e!1997361 () (InoxSet C!20116))

(assert (=> d!877038 (= (content!4877 lt!1079883) e!1997361)))

(declare-fun b!3203609 () Bool)

(assert (=> b!3203609 (= e!1997361 ((as const (Array C!20116 Bool)) false))))

(declare-fun b!3203610 () Bool)

(assert (=> b!3203610 (= e!1997361 ((_ map or) (store ((as const (Array C!20116 Bool)) false) (h!41521 lt!1079883) true) (content!4877 (t!237476 lt!1079883))))))

(assert (= (and d!877038 c!538011) b!3203609))

(assert (= (and d!877038 (not c!538011)) b!3203610))

(declare-fun m!3467981 () Bool)

(assert (=> b!3203610 m!3467981))

(declare-fun m!3467983 () Bool)

(assert (=> b!3203610 m!3467983))

(assert (=> d!875992 d!877038))

(declare-fun d!877040 () Bool)

(declare-fun res!1303656 () Bool)

(declare-fun e!1997362 () Bool)

(assert (=> d!877040 (=> res!1303656 e!1997362)))

(assert (=> d!877040 (= res!1303656 ((_ is Nil!36103) (t!237478 tokens!494)))))

(assert (=> d!877040 (= (forall!7358 (t!237478 tokens!494) lambda!117203) e!1997362)))

(declare-fun b!3203611 () Bool)

(declare-fun e!1997363 () Bool)

(assert (=> b!3203611 (= e!1997362 e!1997363)))

(declare-fun res!1303657 () Bool)

(assert (=> b!3203611 (=> (not res!1303657) (not e!1997363))))

(assert (=> b!3203611 (= res!1303657 (dynLambda!14538 lambda!117203 (h!41523 (t!237478 tokens!494))))))

(declare-fun b!3203612 () Bool)

(assert (=> b!3203612 (= e!1997363 (forall!7358 (t!237478 (t!237478 tokens!494)) lambda!117203))))

(assert (= (and d!877040 (not res!1303656)) b!3203611))

(assert (= (and b!3203611 res!1303657) b!3203612))

(declare-fun b_lambda!87643 () Bool)

(assert (=> (not b_lambda!87643) (not b!3203611)))

(declare-fun m!3467985 () Bool)

(assert (=> b!3203611 m!3467985))

(declare-fun m!3467987 () Bool)

(assert (=> b!3203612 m!3467987))

(assert (=> b!3201824 d!877040))

(declare-fun d!877042 () Bool)

(declare-fun lt!1081154 () Token!9778)

(assert (=> d!877042 (= lt!1081154 (apply!8152 (list!12833 (_1!20873 lt!1080062)) 0))))

(assert (=> d!877042 (= lt!1081154 (apply!8153 (c!537388 (_1!20873 lt!1080062)) 0))))

(declare-fun e!1997364 () Bool)

(assert (=> d!877042 e!1997364))

(declare-fun res!1303658 () Bool)

(assert (=> d!877042 (=> (not res!1303658) (not e!1997364))))

(assert (=> d!877042 (= res!1303658 (<= 0 0))))

(assert (=> d!877042 (= (apply!8150 (_1!20873 lt!1080062) 0) lt!1081154)))

(declare-fun b!3203613 () Bool)

(assert (=> b!3203613 (= e!1997364 (< 0 (size!27190 (_1!20873 lt!1080062))))))

(assert (= (and d!877042 res!1303658) b!3203613))

(declare-fun m!3467989 () Bool)

(assert (=> d!877042 m!3467989))

(assert (=> d!877042 m!3467989))

(declare-fun m!3467991 () Bool)

(assert (=> d!877042 m!3467991))

(declare-fun m!3467993 () Bool)

(assert (=> d!877042 m!3467993))

(assert (=> b!3203613 m!3464041))

(assert (=> b!3201517 d!877042))

(declare-fun d!877044 () Bool)

(declare-fun lt!1081157 () Int)

(assert (=> d!877044 (>= lt!1081157 0)))

(declare-fun e!1997367 () Int)

(assert (=> d!877044 (= lt!1081157 e!1997367)))

(declare-fun c!538014 () Bool)

(assert (=> d!877044 (= c!538014 ((_ is Nil!36103) (list!12833 (_1!20873 lt!1079896))))))

(assert (=> d!877044 (= (size!27196 (list!12833 (_1!20873 lt!1079896))) lt!1081157)))

(declare-fun b!3203618 () Bool)

(assert (=> b!3203618 (= e!1997367 0)))

(declare-fun b!3203619 () Bool)

(assert (=> b!3203619 (= e!1997367 (+ 1 (size!27196 (t!237478 (list!12833 (_1!20873 lt!1079896))))))))

(assert (= (and d!877044 c!538014) b!3203618))

(assert (= (and d!877044 (not c!538014)) b!3203619))

(declare-fun m!3467995 () Bool)

(assert (=> b!3203619 m!3467995))

(assert (=> d!875888 d!877044))

(declare-fun d!877046 () Bool)

(assert (=> d!877046 (= (list!12833 (_1!20873 lt!1079896)) (list!12837 (c!537388 (_1!20873 lt!1079896))))))

(declare-fun bs!541126 () Bool)

(assert (= bs!541126 d!877046))

(declare-fun m!3467997 () Bool)

(assert (=> bs!541126 m!3467997))

(assert (=> d!875888 d!877046))

(declare-fun d!877048 () Bool)

(declare-fun lt!1081160 () Int)

(assert (=> d!877048 (= lt!1081160 (size!27196 (list!12837 (c!537388 (_1!20873 lt!1079896)))))))

(assert (=> d!877048 (= lt!1081160 (ite ((_ is Empty!10788) (c!537388 (_1!20873 lt!1079896))) 0 (ite ((_ is Leaf!17002) (c!537388 (_1!20873 lt!1079896))) (csize!21807 (c!537388 (_1!20873 lt!1079896))) (csize!21806 (c!537388 (_1!20873 lt!1079896))))))))

(assert (=> d!877048 (= (size!27197 (c!537388 (_1!20873 lt!1079896))) lt!1081160)))

(declare-fun bs!541127 () Bool)

(assert (= bs!541127 d!877048))

(assert (=> bs!541127 m!3467997))

(assert (=> bs!541127 m!3467997))

(declare-fun m!3467999 () Bool)

(assert (=> bs!541127 m!3467999))

(assert (=> d!875888 d!877048))

(declare-fun d!877050 () Bool)

(assert (=> d!877050 (= (list!12831 lt!1080188) (list!12834 (c!537387 lt!1080188)))))

(declare-fun bs!541128 () Bool)

(assert (= bs!541128 d!877050))

(declare-fun m!3468001 () Bool)

(assert (=> bs!541128 m!3468001))

(assert (=> d!876002 d!877050))

(declare-fun d!877052 () Bool)

(assert (=> d!877052 (= (get!11486 lt!1080155) (v!35636 lt!1080155))))

(assert (=> b!3201830 d!877052))

(declare-fun d!877054 () Bool)

(assert (=> d!877054 (= (isEmpty!20189 lt!1079884) (not ((_ is Some!7106) lt!1079884)))))

(assert (=> d!875976 d!877054))

(declare-fun d!877056 () Bool)

(declare-fun e!1997368 () Bool)

(assert (=> d!877056 e!1997368))

(declare-fun res!1303659 () Bool)

(assert (=> d!877056 (=> (not res!1303659) (not e!1997368))))

(declare-fun lt!1081161 () List!36225)

(assert (=> d!877056 (= res!1303659 (= (content!4877 lt!1081161) ((_ map or) (content!4877 (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102))))) (content!4877 (_2!20874 (get!11488 lt!1080102))))))))

(declare-fun e!1997369 () List!36225)

(assert (=> d!877056 (= lt!1081161 e!1997369)))

(declare-fun c!538015 () Bool)

(assert (=> d!877056 (= c!538015 ((_ is Nil!36101) (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102))))))))

(assert (=> d!877056 (= (++!8650 (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102)))) (_2!20874 (get!11488 lt!1080102))) lt!1081161)))

(declare-fun b!3203621 () Bool)

(assert (=> b!3203621 (= e!1997369 (Cons!36101 (h!41521 (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102))))) (++!8650 (t!237476 (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102))))) (_2!20874 (get!11488 lt!1080102)))))))

(declare-fun b!3203623 () Bool)

(assert (=> b!3203623 (= e!1997368 (or (not (= (_2!20874 (get!11488 lt!1080102)) Nil!36101)) (= lt!1081161 (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102)))))))))

(declare-fun b!3203622 () Bool)

(declare-fun res!1303660 () Bool)

(assert (=> b!3203622 (=> (not res!1303660) (not e!1997368))))

(assert (=> b!3203622 (= res!1303660 (= (size!27191 lt!1081161) (+ (size!27191 (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102))))) (size!27191 (_2!20874 (get!11488 lt!1080102))))))))

(declare-fun b!3203620 () Bool)

(assert (=> b!3203620 (= e!1997369 (_2!20874 (get!11488 lt!1080102)))))

(assert (= (and d!877056 c!538015) b!3203620))

(assert (= (and d!877056 (not c!538015)) b!3203621))

(assert (= (and d!877056 res!1303659) b!3203622))

(assert (= (and b!3203622 res!1303660) b!3203623))

(declare-fun m!3468003 () Bool)

(assert (=> d!877056 m!3468003))

(assert (=> d!877056 m!3464251))

(declare-fun m!3468005 () Bool)

(assert (=> d!877056 m!3468005))

(declare-fun m!3468007 () Bool)

(assert (=> d!877056 m!3468007))

(declare-fun m!3468009 () Bool)

(assert (=> b!3203621 m!3468009))

(declare-fun m!3468011 () Bool)

(assert (=> b!3203622 m!3468011))

(assert (=> b!3203622 m!3464251))

(declare-fun m!3468013 () Bool)

(assert (=> b!3203622 m!3468013))

(assert (=> b!3203622 m!3464271))

(assert (=> b!3201633 d!877056))

(declare-fun d!877058 () Bool)

(assert (=> d!877058 (= (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102)))) (list!12834 (c!537387 (charsOf!3222 (_1!20874 (get!11488 lt!1080102))))))))

(declare-fun bs!541129 () Bool)

(assert (= bs!541129 d!877058))

(declare-fun m!3468015 () Bool)

(assert (=> bs!541129 m!3468015))

(assert (=> b!3201633 d!877058))

(declare-fun d!877060 () Bool)

(declare-fun lt!1081162 () BalanceConc!21188)

(assert (=> d!877060 (= (list!12831 lt!1081162) (originalCharacters!5920 (_1!20874 (get!11488 lt!1080102))))))

(assert (=> d!877060 (= lt!1081162 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102))))) (value!168831 (_1!20874 (get!11488 lt!1080102)))))))

(assert (=> d!877060 (= (charsOf!3222 (_1!20874 (get!11488 lt!1080102))) lt!1081162)))

(declare-fun b_lambda!87645 () Bool)

(assert (=> (not b_lambda!87645) (not d!877060)))

(declare-fun t!237820 () Bool)

(declare-fun tb!157093 () Bool)

(assert (=> (and b!3201193 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))))) t!237820) tb!157093))

(declare-fun b!3203624 () Bool)

(declare-fun e!1997370 () Bool)

(declare-fun tp!1012076 () Bool)

(assert (=> b!3203624 (= e!1997370 (and (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102))))) (value!168831 (_1!20874 (get!11488 lt!1080102)))))) tp!1012076))))

(declare-fun result!199404 () Bool)

(assert (=> tb!157093 (= result!199404 (and (inv!48957 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102))))) (value!168831 (_1!20874 (get!11488 lt!1080102))))) e!1997370))))

(assert (= tb!157093 b!3203624))

(declare-fun m!3468017 () Bool)

(assert (=> b!3203624 m!3468017))

(declare-fun m!3468019 () Bool)

(assert (=> tb!157093 m!3468019))

(assert (=> d!877060 t!237820))

(declare-fun b_and!213125 () Bool)

(assert (= b_and!213117 (and (=> t!237820 result!199404) b_and!213125)))

(declare-fun t!237822 () Bool)

(declare-fun tb!157095 () Bool)

(assert (=> (and b!3202018 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))))) t!237822) tb!157095))

(declare-fun result!199406 () Bool)

(assert (= result!199406 result!199404))

(assert (=> d!877060 t!237822))

(declare-fun b_and!213127 () Bool)

(assert (= b_and!213121 (and (=> t!237822 result!199406) b_and!213127)))

(declare-fun tb!157097 () Bool)

(declare-fun t!237824 () Bool)

(assert (=> (and b!3201175 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))))) t!237824) tb!157097))

(declare-fun result!199408 () Bool)

(assert (= result!199408 result!199404))

(assert (=> d!877060 t!237824))

(declare-fun b_and!213129 () Bool)

(assert (= b_and!213119 (and (=> t!237824 result!199408) b_and!213129)))

(declare-fun tb!157099 () Bool)

(declare-fun t!237826 () Bool)

(assert (=> (and b!3201192 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))))) t!237826) tb!157099))

(declare-fun result!199410 () Bool)

(assert (= result!199410 result!199404))

(assert (=> d!877060 t!237826))

(declare-fun b_and!213131 () Bool)

(assert (= b_and!213115 (and (=> t!237826 result!199410) b_and!213131)))

(declare-fun t!237828 () Bool)

(declare-fun tb!157101 () Bool)

(assert (=> (and b!3202029 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))))) t!237828) tb!157101))

(declare-fun result!199412 () Bool)

(assert (= result!199412 result!199404))

(assert (=> d!877060 t!237828))

(declare-fun b_and!213133 () Bool)

(assert (= b_and!213123 (and (=> t!237828 result!199412) b_and!213133)))

(declare-fun m!3468021 () Bool)

(assert (=> d!877060 m!3468021))

(declare-fun m!3468023 () Bool)

(assert (=> d!877060 m!3468023))

(assert (=> b!3201633 d!877060))

(assert (=> b!3201633 d!876196))

(declare-fun d!877062 () Bool)

(declare-fun c!538016 () Bool)

(assert (=> d!877062 (= c!538016 ((_ is Node!10787) (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494))))))))

(declare-fun e!1997371 () Bool)

(assert (=> d!877062 (= (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494))))) e!1997371)))

(declare-fun b!3203625 () Bool)

(assert (=> b!3203625 (= e!1997371 (inv!48960 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494))))))))

(declare-fun b!3203626 () Bool)

(declare-fun e!1997372 () Bool)

(assert (=> b!3203626 (= e!1997371 e!1997372)))

(declare-fun res!1303661 () Bool)

(assert (=> b!3203626 (= res!1303661 (not ((_ is Leaf!17001) (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494)))))))))

(assert (=> b!3203626 (=> res!1303661 e!1997372)))

(declare-fun b!3203627 () Bool)

(assert (=> b!3203627 (= e!1997372 (inv!48961 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494))))))))

(assert (= (and d!877062 c!538016) b!3203625))

(assert (= (and d!877062 (not c!538016)) b!3203626))

(assert (= (and b!3203626 (not res!1303661)) b!3203627))

(declare-fun m!3468025 () Bool)

(assert (=> b!3203625 m!3468025))

(declare-fun m!3468027 () Bool)

(assert (=> b!3203627 m!3468027))

(assert (=> b!3201980 d!877062))

(declare-fun d!877064 () Bool)

(declare-fun res!1303662 () Bool)

(declare-fun e!1997373 () Bool)

(assert (=> d!877064 (=> res!1303662 e!1997373)))

(assert (=> d!877064 (= res!1303662 ((_ is Nil!36103) (t!237478 tokens!494)))))

(assert (=> d!877064 (= (forall!7358 (t!237478 tokens!494) lambda!117202) e!1997373)))

(declare-fun b!3203628 () Bool)

(declare-fun e!1997374 () Bool)

(assert (=> b!3203628 (= e!1997373 e!1997374)))

(declare-fun res!1303663 () Bool)

(assert (=> b!3203628 (=> (not res!1303663) (not e!1997374))))

(assert (=> b!3203628 (= res!1303663 (dynLambda!14538 lambda!117202 (h!41523 (t!237478 tokens!494))))))

(declare-fun b!3203629 () Bool)

(assert (=> b!3203629 (= e!1997374 (forall!7358 (t!237478 (t!237478 tokens!494)) lambda!117202))))

(assert (= (and d!877064 (not res!1303662)) b!3203628))

(assert (= (and b!3203628 res!1303663) b!3203629))

(declare-fun b_lambda!87647 () Bool)

(assert (=> (not b_lambda!87647) (not b!3203628)))

(assert (=> b!3203628 m!3463687))

(declare-fun m!3468029 () Bool)

(assert (=> b!3203629 m!3468029))

(assert (=> b!3201945 d!877064))

(declare-fun d!877066 () Bool)

(declare-fun lt!1081163 () Int)

(assert (=> d!877066 (>= lt!1081163 0)))

(declare-fun e!1997375 () Int)

(assert (=> d!877066 (= lt!1081163 e!1997375)))

(declare-fun c!538017 () Bool)

(assert (=> d!877066 (= c!538017 ((_ is Nil!36101) (t!237476 lt!1079879)))))

(assert (=> d!877066 (= (size!27191 (t!237476 lt!1079879)) lt!1081163)))

(declare-fun b!3203630 () Bool)

(assert (=> b!3203630 (= e!1997375 0)))

(declare-fun b!3203631 () Bool)

(assert (=> b!3203631 (= e!1997375 (+ 1 (size!27191 (t!237476 (t!237476 lt!1079879)))))))

(assert (= (and d!877066 c!538017) b!3203630))

(assert (= (and d!877066 (not c!538017)) b!3203631))

(declare-fun m!3468031 () Bool)

(assert (=> b!3203631 m!3468031))

(assert (=> b!3201476 d!877066))

(declare-fun d!877068 () Bool)

(declare-fun lt!1081164 () Bool)

(assert (=> d!877068 (= lt!1081164 (isEmpty!20192 (list!12833 (_1!20873 lt!1080166))))))

(assert (=> d!877068 (= lt!1081164 (isEmpty!20193 (c!537388 (_1!20873 lt!1080166))))))

(assert (=> d!877068 (= (isEmpty!20180 (_1!20873 lt!1080166)) lt!1081164)))

(declare-fun bs!541130 () Bool)

(assert (= bs!541130 d!877068))

(assert (=> bs!541130 m!3464587))

(assert (=> bs!541130 m!3464587))

(declare-fun m!3468033 () Bool)

(assert (=> bs!541130 m!3468033))

(declare-fun m!3468035 () Bool)

(assert (=> bs!541130 m!3468035))

(assert (=> b!3201854 d!877068))

(declare-fun d!877070 () Bool)

(declare-fun lt!1081165 () Token!9778)

(assert (=> d!877070 (contains!6425 (list!12833 (_1!20873 lt!1079896)) lt!1081165)))

(declare-fun e!1997376 () Token!9778)

(assert (=> d!877070 (= lt!1081165 e!1997376)))

(declare-fun c!538018 () Bool)

(assert (=> d!877070 (= c!538018 (= 0 0))))

(declare-fun e!1997377 () Bool)

(assert (=> d!877070 e!1997377))

(declare-fun res!1303664 () Bool)

(assert (=> d!877070 (=> (not res!1303664) (not e!1997377))))

(assert (=> d!877070 (= res!1303664 (<= 0 0))))

(assert (=> d!877070 (= (apply!8152 (list!12833 (_1!20873 lt!1079896)) 0) lt!1081165)))

(declare-fun b!3203632 () Bool)

(assert (=> b!3203632 (= e!1997377 (< 0 (size!27196 (list!12833 (_1!20873 lt!1079896)))))))

(declare-fun b!3203633 () Bool)

(assert (=> b!3203633 (= e!1997376 (head!7023 (list!12833 (_1!20873 lt!1079896))))))

(declare-fun b!3203634 () Bool)

(assert (=> b!3203634 (= e!1997376 (apply!8152 (tail!5204 (list!12833 (_1!20873 lt!1079896))) (- 0 1)))))

(assert (= (and d!877070 res!1303664) b!3203632))

(assert (= (and d!877070 c!538018) b!3203633))

(assert (= (and d!877070 (not c!538018)) b!3203634))

(assert (=> d!877070 m!3463933))

(declare-fun m!3468037 () Bool)

(assert (=> d!877070 m!3468037))

(assert (=> b!3203632 m!3463933))

(assert (=> b!3203632 m!3464317))

(assert (=> b!3203633 m!3463933))

(declare-fun m!3468039 () Bool)

(assert (=> b!3203633 m!3468039))

(assert (=> b!3203634 m!3463933))

(declare-fun m!3468041 () Bool)

(assert (=> b!3203634 m!3468041))

(assert (=> b!3203634 m!3468041))

(declare-fun m!3468043 () Bool)

(assert (=> b!3203634 m!3468043))

(assert (=> d!875806 d!877070))

(assert (=> d!875806 d!877046))

(declare-fun d!877072 () Bool)

(declare-fun lt!1081166 () Token!9778)

(assert (=> d!877072 (= lt!1081166 (apply!8152 (list!12837 (c!537388 (_1!20873 lt!1079896))) 0))))

(declare-fun e!1997380 () Token!9778)

(assert (=> d!877072 (= lt!1081166 e!1997380)))

(declare-fun c!538019 () Bool)

(assert (=> d!877072 (= c!538019 ((_ is Leaf!17002) (c!537388 (_1!20873 lt!1079896))))))

(declare-fun e!1997381 () Bool)

(assert (=> d!877072 e!1997381))

(declare-fun res!1303665 () Bool)

(assert (=> d!877072 (=> (not res!1303665) (not e!1997381))))

(assert (=> d!877072 (= res!1303665 (<= 0 0))))

(assert (=> d!877072 (= (apply!8153 (c!537388 (_1!20873 lt!1079896)) 0) lt!1081166)))

(declare-fun b!3203635 () Bool)

(assert (=> b!3203635 (= e!1997380 (apply!8155 (xs!13906 (c!537388 (_1!20873 lt!1079896))) 0))))

(declare-fun b!3203636 () Bool)

(declare-fun e!1997378 () Token!9778)

(declare-fun call!231941 () Token!9778)

(assert (=> b!3203636 (= e!1997378 call!231941)))

(declare-fun b!3203637 () Bool)

(assert (=> b!3203637 (= e!1997380 e!1997378)))

(declare-fun lt!1081167 () Bool)

(assert (=> b!3203637 (= lt!1081167 (appendIndex!303 (list!12837 (left!28053 (c!537388 (_1!20873 lt!1079896)))) (list!12837 (right!28383 (c!537388 (_1!20873 lt!1079896)))) 0))))

(declare-fun c!538021 () Bool)

(assert (=> b!3203637 (= c!538021 (< 0 (size!27197 (left!28053 (c!537388 (_1!20873 lt!1079896))))))))

(declare-fun b!3203638 () Bool)

(assert (=> b!3203638 (= e!1997381 (< 0 (size!27197 (c!537388 (_1!20873 lt!1079896)))))))

(declare-fun bm!231936 () Bool)

(declare-fun c!538020 () Bool)

(assert (=> bm!231936 (= c!538020 c!538021)))

(declare-fun e!1997379 () Int)

(assert (=> bm!231936 (= call!231941 (apply!8153 (ite c!538021 (left!28053 (c!537388 (_1!20873 lt!1079896))) (right!28383 (c!537388 (_1!20873 lt!1079896)))) e!1997379))))

(declare-fun b!3203639 () Bool)

(assert (=> b!3203639 (= e!1997378 call!231941)))

(declare-fun b!3203640 () Bool)

(assert (=> b!3203640 (= e!1997379 0)))

(declare-fun b!3203641 () Bool)

(assert (=> b!3203641 (= e!1997379 (- 0 (size!27197 (left!28053 (c!537388 (_1!20873 lt!1079896))))))))

(assert (= (and d!877072 res!1303665) b!3203638))

(assert (= (and d!877072 c!538019) b!3203635))

(assert (= (and d!877072 (not c!538019)) b!3203637))

(assert (= (and b!3203637 c!538021) b!3203636))

(assert (= (and b!3203637 (not c!538021)) b!3203639))

(assert (= (or b!3203636 b!3203639) bm!231936))

(assert (= (and bm!231936 c!538020) b!3203640))

(assert (= (and bm!231936 (not c!538020)) b!3203641))

(declare-fun m!3468045 () Bool)

(assert (=> b!3203641 m!3468045))

(declare-fun m!3468047 () Bool)

(assert (=> b!3203635 m!3468047))

(declare-fun m!3468049 () Bool)

(assert (=> bm!231936 m!3468049))

(assert (=> b!3203638 m!3464319))

(declare-fun m!3468051 () Bool)

(assert (=> b!3203637 m!3468051))

(declare-fun m!3468053 () Bool)

(assert (=> b!3203637 m!3468053))

(assert (=> b!3203637 m!3468051))

(assert (=> b!3203637 m!3468053))

(declare-fun m!3468055 () Bool)

(assert (=> b!3203637 m!3468055))

(assert (=> b!3203637 m!3468045))

(assert (=> d!877072 m!3467997))

(assert (=> d!877072 m!3467997))

(declare-fun m!3468057 () Bool)

(assert (=> d!877072 m!3468057))

(assert (=> d!875806 d!877072))

(declare-fun d!877074 () Bool)

(declare-fun lt!1081168 () Bool)

(assert (=> d!877074 (= lt!1081168 (isEmpty!20186 (list!12831 (_2!20873 lt!1080205))))))

(assert (=> d!877074 (= lt!1081168 (isEmpty!20187 (c!537387 (_2!20873 lt!1080205))))))

(assert (=> d!877074 (= (isEmpty!20179 (_2!20873 lt!1080205)) lt!1081168)))

(declare-fun bs!541131 () Bool)

(assert (= bs!541131 d!877074))

(declare-fun m!3468059 () Bool)

(assert (=> bs!541131 m!3468059))

(assert (=> bs!541131 m!3468059))

(declare-fun m!3468061 () Bool)

(assert (=> bs!541131 m!3468061))

(declare-fun m!3468063 () Bool)

(assert (=> bs!541131 m!3468063))

(assert (=> b!3201964 d!877074))

(declare-fun d!877076 () Bool)

(declare-fun e!1997382 () Bool)

(assert (=> d!877076 e!1997382))

(declare-fun res!1303666 () Bool)

(assert (=> d!877076 (=> (not res!1303666) (not e!1997382))))

(declare-fun lt!1081169 () List!36225)

(assert (=> d!877076 (= res!1303666 (= (content!4877 lt!1081169) ((_ map or) (content!4877 (list!12831 (charsOf!3222 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103))))) (content!4877 (printList!1345 thiss!18206 (t!237478 (Cons!36103 (h!41523 tokens!494) Nil!36103)))))))))

(declare-fun e!1997383 () List!36225)

(assert (=> d!877076 (= lt!1081169 e!1997383)))

(declare-fun c!538022 () Bool)

(assert (=> d!877076 (= c!538022 ((_ is Nil!36101) (list!12831 (charsOf!3222 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103))))))))

(assert (=> d!877076 (= (++!8650 (list!12831 (charsOf!3222 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103)))) (printList!1345 thiss!18206 (t!237478 (Cons!36103 (h!41523 tokens!494) Nil!36103)))) lt!1081169)))

(declare-fun b!3203643 () Bool)

(assert (=> b!3203643 (= e!1997383 (Cons!36101 (h!41521 (list!12831 (charsOf!3222 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103))))) (++!8650 (t!237476 (list!12831 (charsOf!3222 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103))))) (printList!1345 thiss!18206 (t!237478 (Cons!36103 (h!41523 tokens!494) Nil!36103))))))))

(declare-fun b!3203645 () Bool)

(assert (=> b!3203645 (= e!1997382 (or (not (= (printList!1345 thiss!18206 (t!237478 (Cons!36103 (h!41523 tokens!494) Nil!36103))) Nil!36101)) (= lt!1081169 (list!12831 (charsOf!3222 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103)))))))))

(declare-fun b!3203644 () Bool)

(declare-fun res!1303667 () Bool)

(assert (=> b!3203644 (=> (not res!1303667) (not e!1997382))))

(assert (=> b!3203644 (= res!1303667 (= (size!27191 lt!1081169) (+ (size!27191 (list!12831 (charsOf!3222 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103))))) (size!27191 (printList!1345 thiss!18206 (t!237478 (Cons!36103 (h!41523 tokens!494) Nil!36103)))))))))

(declare-fun b!3203642 () Bool)

(assert (=> b!3203642 (= e!1997383 (printList!1345 thiss!18206 (t!237478 (Cons!36103 (h!41523 tokens!494) Nil!36103))))))

(assert (= (and d!877076 c!538022) b!3203642))

(assert (= (and d!877076 (not c!538022)) b!3203643))

(assert (= (and d!877076 res!1303666) b!3203644))

(assert (= (and b!3203644 res!1303667) b!3203645))

(declare-fun m!3468065 () Bool)

(assert (=> d!877076 m!3468065))

(assert (=> d!877076 m!3463789))

(declare-fun m!3468067 () Bool)

(assert (=> d!877076 m!3468067))

(assert (=> d!877076 m!3463791))

(declare-fun m!3468069 () Bool)

(assert (=> d!877076 m!3468069))

(assert (=> b!3203643 m!3463791))

(declare-fun m!3468071 () Bool)

(assert (=> b!3203643 m!3468071))

(declare-fun m!3468073 () Bool)

(assert (=> b!3203644 m!3468073))

(assert (=> b!3203644 m!3463789))

(declare-fun m!3468075 () Bool)

(assert (=> b!3203644 m!3468075))

(assert (=> b!3203644 m!3463791))

(declare-fun m!3468077 () Bool)

(assert (=> b!3203644 m!3468077))

(assert (=> b!3201337 d!877076))

(declare-fun d!877078 () Bool)

(assert (=> d!877078 (= (list!12831 (charsOf!3222 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103)))) (list!12834 (c!537387 (charsOf!3222 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103))))))))

(declare-fun bs!541132 () Bool)

(assert (= bs!541132 d!877078))

(declare-fun m!3468079 () Bool)

(assert (=> bs!541132 m!3468079))

(assert (=> b!3201337 d!877078))

(declare-fun d!877080 () Bool)

(declare-fun lt!1081170 () BalanceConc!21188)

(assert (=> d!877080 (= (list!12831 lt!1081170) (originalCharacters!5920 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103))))))

(assert (=> d!877080 (= lt!1081170 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103))))) (value!168831 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103)))))))

(assert (=> d!877080 (= (charsOf!3222 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103))) lt!1081170)))

(declare-fun b_lambda!87649 () Bool)

(assert (=> (not b_lambda!87649) (not d!877080)))

(declare-fun tb!157103 () Bool)

(declare-fun t!237830 () Bool)

(assert (=> (and b!3201192 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103)))))) t!237830) tb!157103))

(declare-fun b!3203646 () Bool)

(declare-fun e!1997384 () Bool)

(declare-fun tp!1012077 () Bool)

(assert (=> b!3203646 (= e!1997384 (and (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103))))) (value!168831 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103)))))) tp!1012077))))

(declare-fun result!199414 () Bool)

(assert (=> tb!157103 (= result!199414 (and (inv!48957 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103))))) (value!168831 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103))))) e!1997384))))

(assert (= tb!157103 b!3203646))

(declare-fun m!3468081 () Bool)

(assert (=> b!3203646 m!3468081))

(declare-fun m!3468083 () Bool)

(assert (=> tb!157103 m!3468083))

(assert (=> d!877080 t!237830))

(declare-fun b_and!213135 () Bool)

(assert (= b_and!213131 (and (=> t!237830 result!199414) b_and!213135)))

(declare-fun t!237832 () Bool)

(declare-fun tb!157105 () Bool)

(assert (=> (and b!3202018 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103)))))) t!237832) tb!157105))

(declare-fun result!199416 () Bool)

(assert (= result!199416 result!199414))

(assert (=> d!877080 t!237832))

(declare-fun b_and!213137 () Bool)

(assert (= b_and!213127 (and (=> t!237832 result!199416) b_and!213137)))

(declare-fun t!237834 () Bool)

(declare-fun tb!157107 () Bool)

(assert (=> (and b!3201175 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103)))))) t!237834) tb!157107))

(declare-fun result!199418 () Bool)

(assert (= result!199418 result!199414))

(assert (=> d!877080 t!237834))

(declare-fun b_and!213139 () Bool)

(assert (= b_and!213129 (and (=> t!237834 result!199418) b_and!213139)))

(declare-fun tb!157109 () Bool)

(declare-fun t!237836 () Bool)

(assert (=> (and b!3202029 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103)))))) t!237836) tb!157109))

(declare-fun result!199420 () Bool)

(assert (= result!199420 result!199414))

(assert (=> d!877080 t!237836))

(declare-fun b_and!213141 () Bool)

(assert (= b_and!213133 (and (=> t!237836 result!199420) b_and!213141)))

(declare-fun t!237838 () Bool)

(declare-fun tb!157111 () Bool)

(assert (=> (and b!3201193 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103)))))) t!237838) tb!157111))

(declare-fun result!199422 () Bool)

(assert (= result!199422 result!199414))

(assert (=> d!877080 t!237838))

(declare-fun b_and!213143 () Bool)

(assert (= b_and!213125 (and (=> t!237838 result!199422) b_and!213143)))

(declare-fun m!3468085 () Bool)

(assert (=> d!877080 m!3468085))

(declare-fun m!3468087 () Bool)

(assert (=> d!877080 m!3468087))

(assert (=> b!3201337 d!877080))

(declare-fun d!877082 () Bool)

(declare-fun c!538023 () Bool)

(assert (=> d!877082 (= c!538023 ((_ is Cons!36103) (t!237478 (Cons!36103 (h!41523 tokens!494) Nil!36103))))))

(declare-fun e!1997385 () List!36225)

(assert (=> d!877082 (= (printList!1345 thiss!18206 (t!237478 (Cons!36103 (h!41523 tokens!494) Nil!36103))) e!1997385)))

(declare-fun b!3203647 () Bool)

(assert (=> b!3203647 (= e!1997385 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 (Cons!36103 (h!41523 tokens!494) Nil!36103))))) (printList!1345 thiss!18206 (t!237478 (t!237478 (Cons!36103 (h!41523 tokens!494) Nil!36103))))))))

(declare-fun b!3203648 () Bool)

(assert (=> b!3203648 (= e!1997385 Nil!36101)))

(assert (= (and d!877082 c!538023) b!3203647))

(assert (= (and d!877082 (not c!538023)) b!3203648))

(declare-fun m!3468089 () Bool)

(assert (=> b!3203647 m!3468089))

(assert (=> b!3203647 m!3468089))

(declare-fun m!3468091 () Bool)

(assert (=> b!3203647 m!3468091))

(declare-fun m!3468093 () Bool)

(assert (=> b!3203647 m!3468093))

(assert (=> b!3203647 m!3468091))

(assert (=> b!3203647 m!3468093))

(declare-fun m!3468095 () Bool)

(assert (=> b!3203647 m!3468095))

(assert (=> b!3201337 d!877082))

(declare-fun bm!231937 () Bool)

(declare-fun call!231942 () Bool)

(assert (=> bm!231937 (= call!231942 (isEmpty!20186 (_1!20877 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879)))))))

(declare-fun b!3203649 () Bool)

(declare-fun res!1303673 () Bool)

(declare-fun e!1997386 () Bool)

(assert (=> b!3203649 (=> res!1303673 e!1997386)))

(assert (=> b!3203649 (= res!1303673 (not (isEmpty!20186 (tail!5205 (_1!20877 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879)))))))))

(declare-fun b!3203650 () Bool)

(declare-fun e!1997390 () Bool)

(assert (=> b!3203650 (= e!1997390 (nullable!3394 (regex!5206 (rule!7642 (h!41523 tokens!494)))))))

(declare-fun d!877084 () Bool)

(declare-fun e!1997388 () Bool)

(assert (=> d!877084 e!1997388))

(declare-fun c!538024 () Bool)

(assert (=> d!877084 (= c!538024 ((_ is EmptyExpr!9965) (regex!5206 (rule!7642 (h!41523 tokens!494)))))))

(declare-fun lt!1081171 () Bool)

(assert (=> d!877084 (= lt!1081171 e!1997390)))

(declare-fun c!538025 () Bool)

(assert (=> d!877084 (= c!538025 (isEmpty!20186 (_1!20877 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879)))))))

(assert (=> d!877084 (validRegex!4548 (regex!5206 (rule!7642 (h!41523 tokens!494))))))

(assert (=> d!877084 (= (matchR!4599 (regex!5206 (rule!7642 (h!41523 tokens!494))) (_1!20877 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879)))) lt!1081171)))

(declare-fun b!3203651 () Bool)

(declare-fun e!1997387 () Bool)

(declare-fun e!1997392 () Bool)

(assert (=> b!3203651 (= e!1997387 e!1997392)))

(declare-fun res!1303668 () Bool)

(assert (=> b!3203651 (=> (not res!1303668) (not e!1997392))))

(assert (=> b!3203651 (= res!1303668 (not lt!1081171))))

(declare-fun b!3203652 () Bool)

(declare-fun e!1997391 () Bool)

(assert (=> b!3203652 (= e!1997391 (= (head!7021 (_1!20877 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879)))) (c!537386 (regex!5206 (rule!7642 (h!41523 tokens!494))))))))

(declare-fun b!3203653 () Bool)

(declare-fun res!1303670 () Bool)

(assert (=> b!3203653 (=> (not res!1303670) (not e!1997391))))

(assert (=> b!3203653 (= res!1303670 (isEmpty!20186 (tail!5205 (_1!20877 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879))))))))

(declare-fun b!3203654 () Bool)

(assert (=> b!3203654 (= e!1997390 (matchR!4599 (derivativeStep!2947 (regex!5206 (rule!7642 (h!41523 tokens!494))) (head!7021 (_1!20877 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879))))) (tail!5205 (_1!20877 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879))))))))

(declare-fun b!3203655 () Bool)

(declare-fun res!1303671 () Bool)

(assert (=> b!3203655 (=> res!1303671 e!1997387)))

(assert (=> b!3203655 (= res!1303671 e!1997391)))

(declare-fun res!1303672 () Bool)

(assert (=> b!3203655 (=> (not res!1303672) (not e!1997391))))

(assert (=> b!3203655 (= res!1303672 lt!1081171)))

(declare-fun b!3203656 () Bool)

(assert (=> b!3203656 (= e!1997392 e!1997386)))

(declare-fun res!1303669 () Bool)

(assert (=> b!3203656 (=> res!1303669 e!1997386)))

(assert (=> b!3203656 (= res!1303669 call!231942)))

(declare-fun b!3203657 () Bool)

(declare-fun e!1997389 () Bool)

(assert (=> b!3203657 (= e!1997388 e!1997389)))

(declare-fun c!538026 () Bool)

(assert (=> b!3203657 (= c!538026 ((_ is EmptyLang!9965) (regex!5206 (rule!7642 (h!41523 tokens!494)))))))

(declare-fun b!3203658 () Bool)

(assert (=> b!3203658 (= e!1997389 (not lt!1081171))))

(declare-fun b!3203659 () Bool)

(assert (=> b!3203659 (= e!1997388 (= lt!1081171 call!231942))))

(declare-fun b!3203660 () Bool)

(declare-fun res!1303674 () Bool)

(assert (=> b!3203660 (=> res!1303674 e!1997387)))

(assert (=> b!3203660 (= res!1303674 (not ((_ is ElementMatch!9965) (regex!5206 (rule!7642 (h!41523 tokens!494))))))))

(assert (=> b!3203660 (= e!1997389 e!1997387)))

(declare-fun b!3203661 () Bool)

(declare-fun res!1303675 () Bool)

(assert (=> b!3203661 (=> (not res!1303675) (not e!1997391))))

(assert (=> b!3203661 (= res!1303675 (not call!231942))))

(declare-fun b!3203662 () Bool)

(assert (=> b!3203662 (= e!1997386 (not (= (head!7021 (_1!20877 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 (size!27191 Nil!36101) lt!1079879 lt!1079879 (size!27191 lt!1079879)))) (c!537386 (regex!5206 (rule!7642 (h!41523 tokens!494)))))))))

(assert (= (and d!877084 c!538025) b!3203650))

(assert (= (and d!877084 (not c!538025)) b!3203654))

(assert (= (and d!877084 c!538024) b!3203659))

(assert (= (and d!877084 (not c!538024)) b!3203657))

(assert (= (and b!3203657 c!538026) b!3203658))

(assert (= (and b!3203657 (not c!538026)) b!3203660))

(assert (= (and b!3203660 (not res!1303674)) b!3203655))

(assert (= (and b!3203655 res!1303672) b!3203661))

(assert (= (and b!3203661 res!1303675) b!3203653))

(assert (= (and b!3203653 res!1303670) b!3203652))

(assert (= (and b!3203655 (not res!1303671)) b!3203651))

(assert (= (and b!3203651 res!1303668) b!3203656))

(assert (= (and b!3203656 (not res!1303669)) b!3203649))

(assert (= (and b!3203649 (not res!1303673)) b!3203662))

(assert (= (or b!3203659 b!3203656 b!3203661) bm!231937))

(declare-fun m!3468097 () Bool)

(assert (=> b!3203662 m!3468097))

(assert (=> b!3203654 m!3468097))

(assert (=> b!3203654 m!3468097))

(declare-fun m!3468099 () Bool)

(assert (=> b!3203654 m!3468099))

(declare-fun m!3468101 () Bool)

(assert (=> b!3203654 m!3468101))

(assert (=> b!3203654 m!3468099))

(assert (=> b!3203654 m!3468101))

(declare-fun m!3468103 () Bool)

(assert (=> b!3203654 m!3468103))

(assert (=> b!3203653 m!3468101))

(assert (=> b!3203653 m!3468101))

(declare-fun m!3468105 () Bool)

(assert (=> b!3203653 m!3468105))

(assert (=> d!877084 m!3464267))

(assert (=> d!877084 m!3467349))

(assert (=> b!3203649 m!3468101))

(assert (=> b!3203649 m!3468101))

(assert (=> b!3203649 m!3468105))

(assert (=> bm!231937 m!3464267))

(assert (=> b!3203652 m!3468097))

(assert (=> b!3203650 m!3467309))

(assert (=> b!3201629 d!877084))

(assert (=> b!3201629 d!876750))

(assert (=> b!3201629 d!876848))

(assert (=> b!3201629 d!875808))

(declare-fun b!3203663 () Bool)

(declare-fun e!1997393 () List!36225)

(assert (=> b!3203663 (= e!1997393 Nil!36101)))

(declare-fun b!3203664 () Bool)

(declare-fun e!1997394 () List!36225)

(assert (=> b!3203664 (= e!1997393 e!1997394)))

(declare-fun c!538028 () Bool)

(assert (=> b!3203664 (= c!538028 ((_ is Leaf!17001) (c!537387 (charsOf!3222 separatorToken!241))))))

(declare-fun d!877086 () Bool)

(declare-fun c!538027 () Bool)

(assert (=> d!877086 (= c!538027 ((_ is Empty!10787) (c!537387 (charsOf!3222 separatorToken!241))))))

(assert (=> d!877086 (= (list!12834 (c!537387 (charsOf!3222 separatorToken!241))) e!1997393)))

(declare-fun b!3203665 () Bool)

(assert (=> b!3203665 (= e!1997394 (list!12838 (xs!13905 (c!537387 (charsOf!3222 separatorToken!241)))))))

(declare-fun b!3203666 () Bool)

(assert (=> b!3203666 (= e!1997394 (++!8650 (list!12834 (left!28052 (c!537387 (charsOf!3222 separatorToken!241)))) (list!12834 (right!28382 (c!537387 (charsOf!3222 separatorToken!241))))))))

(assert (= (and d!877086 c!538027) b!3203663))

(assert (= (and d!877086 (not c!538027)) b!3203664))

(assert (= (and b!3203664 c!538028) b!3203665))

(assert (= (and b!3203664 (not c!538028)) b!3203666))

(declare-fun m!3468107 () Bool)

(assert (=> b!3203665 m!3468107))

(declare-fun m!3468109 () Bool)

(assert (=> b!3203666 m!3468109))

(declare-fun m!3468111 () Bool)

(assert (=> b!3203666 m!3468111))

(assert (=> b!3203666 m!3468109))

(assert (=> b!3203666 m!3468111))

(declare-fun m!3468113 () Bool)

(assert (=> b!3203666 m!3468113))

(assert (=> d!876000 d!877086))

(declare-fun d!877088 () Bool)

(assert (=> d!877088 (= (list!12831 (_2!20873 lt!1080158)) (list!12834 (c!537387 (_2!20873 lt!1080158))))))

(declare-fun bs!541133 () Bool)

(assert (= bs!541133 d!877088))

(declare-fun m!3468115 () Bool)

(assert (=> bs!541133 m!3468115))

(assert (=> b!3201845 d!877088))

(declare-fun d!877090 () Bool)

(declare-fun e!1997397 () Bool)

(assert (=> d!877090 e!1997397))

(declare-fun c!538030 () Bool)

(declare-fun lt!1081172 () tuple2!35488)

(assert (=> d!877090 (= c!538030 (> (size!27196 (_1!20878 lt!1081172)) 0))))

(declare-fun e!1997395 () tuple2!35488)

(assert (=> d!877090 (= lt!1081172 e!1997395)))

(declare-fun c!538029 () Bool)

(declare-fun lt!1081174 () Option!7108)

(assert (=> d!877090 (= c!538029 ((_ is Some!7107) lt!1081174))))

(assert (=> d!877090 (= lt!1081174 (maxPrefix!2440 thiss!18206 rules!2135 (list!12831 lt!1079906)))))

(assert (=> d!877090 (= (lexList!1309 thiss!18206 rules!2135 (list!12831 lt!1079906)) lt!1081172)))

(declare-fun b!3203667 () Bool)

(assert (=> b!3203667 (= e!1997397 (= (_2!20878 lt!1081172) (list!12831 lt!1079906)))))

(declare-fun b!3203668 () Bool)

(assert (=> b!3203668 (= e!1997395 (tuple2!35489 Nil!36103 (list!12831 lt!1079906)))))

(declare-fun b!3203669 () Bool)

(declare-fun e!1997396 () Bool)

(assert (=> b!3203669 (= e!1997396 (not (isEmpty!20192 (_1!20878 lt!1081172))))))

(declare-fun b!3203670 () Bool)

(declare-fun lt!1081173 () tuple2!35488)

(assert (=> b!3203670 (= e!1997395 (tuple2!35489 (Cons!36103 (_1!20874 (v!35637 lt!1081174)) (_1!20878 lt!1081173)) (_2!20878 lt!1081173)))))

(assert (=> b!3203670 (= lt!1081173 (lexList!1309 thiss!18206 rules!2135 (_2!20874 (v!35637 lt!1081174))))))

(declare-fun b!3203671 () Bool)

(assert (=> b!3203671 (= e!1997397 e!1997396)))

(declare-fun res!1303676 () Bool)

(assert (=> b!3203671 (= res!1303676 (< (size!27191 (_2!20878 lt!1081172)) (size!27191 (list!12831 lt!1079906))))))

(assert (=> b!3203671 (=> (not res!1303676) (not e!1997396))))

(assert (= (and d!877090 c!538029) b!3203670))

(assert (= (and d!877090 (not c!538029)) b!3203668))

(assert (= (and d!877090 c!538030) b!3203671))

(assert (= (and d!877090 (not c!538030)) b!3203667))

(assert (= (and b!3203671 res!1303676) b!3203669))

(declare-fun m!3468117 () Bool)

(assert (=> d!877090 m!3468117))

(assert (=> d!877090 m!3464537))

(declare-fun m!3468119 () Bool)

(assert (=> d!877090 m!3468119))

(declare-fun m!3468121 () Bool)

(assert (=> b!3203669 m!3468121))

(declare-fun m!3468123 () Bool)

(assert (=> b!3203670 m!3468123))

(declare-fun m!3468125 () Bool)

(assert (=> b!3203671 m!3468125))

(assert (=> b!3203671 m!3464537))

(assert (=> b!3203671 m!3465291))

(assert (=> b!3201845 d!877090))

(declare-fun d!877092 () Bool)

(assert (=> d!877092 (= (list!12831 lt!1079906) (list!12834 (c!537387 lt!1079906)))))

(declare-fun bs!541134 () Bool)

(assert (= bs!541134 d!877092))

(declare-fun m!3468127 () Bool)

(assert (=> bs!541134 m!3468127))

(assert (=> b!3201845 d!877092))

(declare-fun d!877094 () Bool)

(declare-fun c!538031 () Bool)

(assert (=> d!877094 (= c!538031 ((_ is Nil!36101) lt!1080182))))

(declare-fun e!1997398 () (InoxSet C!20116))

(assert (=> d!877094 (= (content!4877 lt!1080182) e!1997398)))

(declare-fun b!3203672 () Bool)

(assert (=> b!3203672 (= e!1997398 ((as const (Array C!20116 Bool)) false))))

(declare-fun b!3203673 () Bool)

(assert (=> b!3203673 (= e!1997398 ((_ map or) (store ((as const (Array C!20116 Bool)) false) (h!41521 lt!1080182) true) (content!4877 (t!237476 lt!1080182))))))

(assert (= (and d!877094 c!538031) b!3203672))

(assert (= (and d!877094 (not c!538031)) b!3203673))

(declare-fun m!3468129 () Bool)

(assert (=> b!3203673 m!3468129))

(declare-fun m!3468131 () Bool)

(assert (=> b!3203673 m!3468131))

(assert (=> d!875986 d!877094))

(declare-fun d!877096 () Bool)

(declare-fun c!538032 () Bool)

(assert (=> d!877096 (= c!538032 ((_ is Nil!36101) (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883)))))

(declare-fun e!1997399 () (InoxSet C!20116))

(assert (=> d!877096 (= (content!4877 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883)) e!1997399)))

(declare-fun b!3203674 () Bool)

(assert (=> b!3203674 (= e!1997399 ((as const (Array C!20116 Bool)) false))))

(declare-fun b!3203675 () Bool)

(assert (=> b!3203675 (= e!1997399 ((_ map or) (store ((as const (Array C!20116 Bool)) false) (h!41521 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883)) true) (content!4877 (t!237476 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883)))))))

(assert (= (and d!877096 c!538032) b!3203674))

(assert (= (and d!877096 (not c!538032)) b!3203675))

(declare-fun m!3468133 () Bool)

(assert (=> b!3203675 m!3468133))

(declare-fun m!3468135 () Bool)

(assert (=> b!3203675 m!3468135))

(assert (=> d!875986 d!877096))

(declare-fun d!877098 () Bool)

(declare-fun c!538033 () Bool)

(assert (=> d!877098 (= c!538033 ((_ is Nil!36101) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)))))

(declare-fun e!1997400 () (InoxSet C!20116))

(assert (=> d!877098 (= (content!4877 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)) e!1997400)))

(declare-fun b!3203676 () Bool)

(assert (=> b!3203676 (= e!1997400 ((as const (Array C!20116 Bool)) false))))

(declare-fun b!3203677 () Bool)

(assert (=> b!3203677 (= e!1997400 ((_ map or) (store ((as const (Array C!20116 Bool)) false) (h!41521 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)) true) (content!4877 (t!237476 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)))))))

(assert (= (and d!877098 c!538033) b!3203676))

(assert (= (and d!877098 (not c!538033)) b!3203677))

(declare-fun m!3468137 () Bool)

(assert (=> b!3203677 m!3468137))

(declare-fun m!3468139 () Bool)

(assert (=> b!3203677 m!3468139))

(assert (=> d!875986 d!877098))

(assert (=> d!876034 d!876036))

(declare-fun d!877100 () Bool)

(assert (=> d!877100 (not (matchR!4599 (regex!5206 (rule!7642 separatorToken!241)) lt!1079883))))

(assert (=> d!877100 true))

(declare-fun _$127!252 () Unit!50516)

(assert (=> d!877100 (= (choose!18690 (regex!5206 (rule!7642 separatorToken!241)) lt!1079883 lt!1079902) _$127!252)))

(declare-fun bs!541135 () Bool)

(assert (= bs!541135 d!877100))

(assert (=> bs!541135 m!3463577))

(assert (=> d!876034 d!877100))

(declare-fun b!3203678 () Bool)

(declare-fun e!1997404 () Bool)

(declare-fun e!1997402 () Bool)

(assert (=> b!3203678 (= e!1997404 e!1997402)))

(declare-fun res!1303681 () Bool)

(assert (=> b!3203678 (= res!1303681 (not (nullable!3394 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))))))))

(assert (=> b!3203678 (=> (not res!1303681) (not e!1997402))))

(declare-fun b!3203679 () Bool)

(declare-fun call!231943 () Bool)

(assert (=> b!3203679 (= e!1997402 call!231943)))

(declare-fun bm!231938 () Bool)

(declare-fun call!231945 () Bool)

(assert (=> bm!231938 (= call!231945 call!231943)))

(declare-fun b!3203680 () Bool)

(declare-fun res!1303678 () Bool)

(declare-fun e!1997405 () Bool)

(assert (=> b!3203680 (=> res!1303678 e!1997405)))

(assert (=> b!3203680 (= res!1303678 (not ((_ is Concat!15401) (regex!5206 (rule!7642 separatorToken!241)))))))

(declare-fun e!1997401 () Bool)

(assert (=> b!3203680 (= e!1997401 e!1997405)))

(declare-fun b!3203681 () Bool)

(declare-fun e!1997403 () Bool)

(assert (=> b!3203681 (= e!1997403 e!1997404)))

(declare-fun c!538036 () Bool)

(assert (=> b!3203681 (= c!538036 ((_ is Star!9965) (regex!5206 (rule!7642 separatorToken!241))))))

(declare-fun d!877102 () Bool)

(declare-fun res!1303680 () Bool)

(assert (=> d!877102 (=> res!1303680 e!1997403)))

(assert (=> d!877102 (= res!1303680 ((_ is ElementMatch!9965) (regex!5206 (rule!7642 separatorToken!241))))))

(assert (=> d!877102 (= (validRegex!4548 (regex!5206 (rule!7642 separatorToken!241))) e!1997403)))

(declare-fun bm!231939 () Bool)

(declare-fun c!538035 () Bool)

(assert (=> bm!231939 (= call!231943 (validRegex!4548 (ite c!538036 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))) (ite c!538035 (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241)))))))))

(declare-fun b!3203682 () Bool)

(declare-fun e!1997407 () Bool)

(declare-fun call!231944 () Bool)

(assert (=> b!3203682 (= e!1997407 call!231944)))

(declare-fun b!3203683 () Bool)

(declare-fun e!1997406 () Bool)

(assert (=> b!3203683 (= e!1997405 e!1997406)))

(declare-fun res!1303677 () Bool)

(assert (=> b!3203683 (=> (not res!1303677) (not e!1997406))))

(assert (=> b!3203683 (= res!1303677 call!231945)))

(declare-fun bm!231940 () Bool)

(assert (=> bm!231940 (= call!231944 (validRegex!4548 (ite c!538035 (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241))))))))

(declare-fun b!3203684 () Bool)

(assert (=> b!3203684 (= e!1997406 call!231944)))

(declare-fun b!3203685 () Bool)

(assert (=> b!3203685 (= e!1997404 e!1997401)))

(assert (=> b!3203685 (= c!538035 ((_ is Union!9965) (regex!5206 (rule!7642 separatorToken!241))))))

(declare-fun b!3203686 () Bool)

(declare-fun res!1303679 () Bool)

(assert (=> b!3203686 (=> (not res!1303679) (not e!1997407))))

(assert (=> b!3203686 (= res!1303679 call!231945)))

(assert (=> b!3203686 (= e!1997401 e!1997407)))

(assert (= (and d!877102 (not res!1303680)) b!3203681))

(assert (= (and b!3203681 c!538036) b!3203678))

(assert (= (and b!3203681 (not c!538036)) b!3203685))

(assert (= (and b!3203678 res!1303681) b!3203679))

(assert (= (and b!3203685 c!538035) b!3203686))

(assert (= (and b!3203685 (not c!538035)) b!3203680))

(assert (= (and b!3203686 res!1303679) b!3203682))

(assert (= (and b!3203680 (not res!1303678)) b!3203683))

(assert (= (and b!3203683 res!1303677) b!3203684))

(assert (= (or b!3203682 b!3203684) bm!231940))

(assert (= (or b!3203686 b!3203683) bm!231938))

(assert (= (or b!3203679 bm!231938) bm!231939))

(declare-fun m!3468141 () Bool)

(assert (=> b!3203678 m!3468141))

(declare-fun m!3468143 () Bool)

(assert (=> bm!231939 m!3468143))

(declare-fun m!3468145 () Bool)

(assert (=> bm!231940 m!3468145))

(assert (=> d!876034 d!877102))

(declare-fun bm!231941 () Bool)

(declare-fun call!231946 () Bool)

(assert (=> bm!231941 (= call!231946 (isEmpty!20186 (tail!5205 lt!1079883)))))

(declare-fun b!3203687 () Bool)

(declare-fun res!1303687 () Bool)

(declare-fun e!1997408 () Bool)

(assert (=> b!3203687 (=> res!1303687 e!1997408)))

(assert (=> b!3203687 (= res!1303687 (not (isEmpty!20186 (tail!5205 (tail!5205 lt!1079883)))))))

(declare-fun b!3203688 () Bool)

(declare-fun e!1997412 () Bool)

(assert (=> b!3203688 (= e!1997412 (nullable!3394 (derivativeStep!2947 (regex!5206 (rule!7642 separatorToken!241)) (head!7021 lt!1079883))))))

(declare-fun d!877104 () Bool)

(declare-fun e!1997410 () Bool)

(assert (=> d!877104 e!1997410))

(declare-fun c!538037 () Bool)

(assert (=> d!877104 (= c!538037 ((_ is EmptyExpr!9965) (derivativeStep!2947 (regex!5206 (rule!7642 separatorToken!241)) (head!7021 lt!1079883))))))

(declare-fun lt!1081175 () Bool)

(assert (=> d!877104 (= lt!1081175 e!1997412)))

(declare-fun c!538038 () Bool)

(assert (=> d!877104 (= c!538038 (isEmpty!20186 (tail!5205 lt!1079883)))))

(assert (=> d!877104 (validRegex!4548 (derivativeStep!2947 (regex!5206 (rule!7642 separatorToken!241)) (head!7021 lt!1079883)))))

(assert (=> d!877104 (= (matchR!4599 (derivativeStep!2947 (regex!5206 (rule!7642 separatorToken!241)) (head!7021 lt!1079883)) (tail!5205 lt!1079883)) lt!1081175)))

(declare-fun b!3203689 () Bool)

(declare-fun e!1997409 () Bool)

(declare-fun e!1997414 () Bool)

(assert (=> b!3203689 (= e!1997409 e!1997414)))

(declare-fun res!1303682 () Bool)

(assert (=> b!3203689 (=> (not res!1303682) (not e!1997414))))

(assert (=> b!3203689 (= res!1303682 (not lt!1081175))))

(declare-fun b!3203690 () Bool)

(declare-fun e!1997413 () Bool)

(assert (=> b!3203690 (= e!1997413 (= (head!7021 (tail!5205 lt!1079883)) (c!537386 (derivativeStep!2947 (regex!5206 (rule!7642 separatorToken!241)) (head!7021 lt!1079883)))))))

(declare-fun b!3203691 () Bool)

(declare-fun res!1303684 () Bool)

(assert (=> b!3203691 (=> (not res!1303684) (not e!1997413))))

(assert (=> b!3203691 (= res!1303684 (isEmpty!20186 (tail!5205 (tail!5205 lt!1079883))))))

(declare-fun b!3203692 () Bool)

(assert (=> b!3203692 (= e!1997412 (matchR!4599 (derivativeStep!2947 (derivativeStep!2947 (regex!5206 (rule!7642 separatorToken!241)) (head!7021 lt!1079883)) (head!7021 (tail!5205 lt!1079883))) (tail!5205 (tail!5205 lt!1079883))))))

(declare-fun b!3203693 () Bool)

(declare-fun res!1303685 () Bool)

(assert (=> b!3203693 (=> res!1303685 e!1997409)))

(assert (=> b!3203693 (= res!1303685 e!1997413)))

(declare-fun res!1303686 () Bool)

(assert (=> b!3203693 (=> (not res!1303686) (not e!1997413))))

(assert (=> b!3203693 (= res!1303686 lt!1081175)))

(declare-fun b!3203694 () Bool)

(assert (=> b!3203694 (= e!1997414 e!1997408)))

(declare-fun res!1303683 () Bool)

(assert (=> b!3203694 (=> res!1303683 e!1997408)))

(assert (=> b!3203694 (= res!1303683 call!231946)))

(declare-fun b!3203695 () Bool)

(declare-fun e!1997411 () Bool)

(assert (=> b!3203695 (= e!1997410 e!1997411)))

(declare-fun c!538039 () Bool)

(assert (=> b!3203695 (= c!538039 ((_ is EmptyLang!9965) (derivativeStep!2947 (regex!5206 (rule!7642 separatorToken!241)) (head!7021 lt!1079883))))))

(declare-fun b!3203696 () Bool)

(assert (=> b!3203696 (= e!1997411 (not lt!1081175))))

(declare-fun b!3203697 () Bool)

(assert (=> b!3203697 (= e!1997410 (= lt!1081175 call!231946))))

(declare-fun b!3203698 () Bool)

(declare-fun res!1303688 () Bool)

(assert (=> b!3203698 (=> res!1303688 e!1997409)))

(assert (=> b!3203698 (= res!1303688 (not ((_ is ElementMatch!9965) (derivativeStep!2947 (regex!5206 (rule!7642 separatorToken!241)) (head!7021 lt!1079883)))))))

(assert (=> b!3203698 (= e!1997411 e!1997409)))

(declare-fun b!3203699 () Bool)

(declare-fun res!1303689 () Bool)

(assert (=> b!3203699 (=> (not res!1303689) (not e!1997413))))

(assert (=> b!3203699 (= res!1303689 (not call!231946))))

(declare-fun b!3203700 () Bool)

(assert (=> b!3203700 (= e!1997408 (not (= (head!7021 (tail!5205 lt!1079883)) (c!537386 (derivativeStep!2947 (regex!5206 (rule!7642 separatorToken!241)) (head!7021 lt!1079883))))))))

(assert (= (and d!877104 c!538038) b!3203688))

(assert (= (and d!877104 (not c!538038)) b!3203692))

(assert (= (and d!877104 c!538037) b!3203697))

(assert (= (and d!877104 (not c!538037)) b!3203695))

(assert (= (and b!3203695 c!538039) b!3203696))

(assert (= (and b!3203695 (not c!538039)) b!3203698))

(assert (= (and b!3203698 (not res!1303688)) b!3203693))

(assert (= (and b!3203693 res!1303686) b!3203699))

(assert (= (and b!3203699 res!1303689) b!3203691))

(assert (= (and b!3203691 res!1303684) b!3203690))

(assert (= (and b!3203693 (not res!1303685)) b!3203689))

(assert (= (and b!3203689 res!1303682) b!3203694))

(assert (= (and b!3203694 (not res!1303683)) b!3203687))

(assert (= (and b!3203687 (not res!1303687)) b!3203700))

(assert (= (or b!3203697 b!3203694 b!3203699) bm!231941))

(assert (=> b!3203700 m!3464803))

(declare-fun m!3468147 () Bool)

(assert (=> b!3203700 m!3468147))

(assert (=> b!3203692 m!3464803))

(assert (=> b!3203692 m!3468147))

(assert (=> b!3203692 m!3464829))

(assert (=> b!3203692 m!3468147))

(declare-fun m!3468149 () Bool)

(assert (=> b!3203692 m!3468149))

(assert (=> b!3203692 m!3464803))

(declare-fun m!3468151 () Bool)

(assert (=> b!3203692 m!3468151))

(assert (=> b!3203692 m!3468149))

(assert (=> b!3203692 m!3468151))

(declare-fun m!3468153 () Bool)

(assert (=> b!3203692 m!3468153))

(assert (=> b!3203691 m!3464803))

(assert (=> b!3203691 m!3468151))

(assert (=> b!3203691 m!3468151))

(declare-fun m!3468155 () Bool)

(assert (=> b!3203691 m!3468155))

(assert (=> d!877104 m!3464803))

(assert (=> d!877104 m!3464807))

(assert (=> d!877104 m!3464829))

(declare-fun m!3468157 () Bool)

(assert (=> d!877104 m!3468157))

(assert (=> b!3203687 m!3464803))

(assert (=> b!3203687 m!3468151))

(assert (=> b!3203687 m!3468151))

(assert (=> b!3203687 m!3468155))

(assert (=> bm!231941 m!3464803))

(assert (=> bm!231941 m!3464807))

(assert (=> b!3203690 m!3464803))

(assert (=> b!3203690 m!3468147))

(assert (=> b!3203688 m!3464829))

(declare-fun m!3468159 () Bool)

(assert (=> b!3203688 m!3468159))

(assert (=> b!3201952 d!877104))

(declare-fun b!3203701 () Bool)

(declare-fun c!538043 () Bool)

(assert (=> b!3203701 (= c!538043 (nullable!3394 (regOne!20442 (regex!5206 (rule!7642 separatorToken!241)))))))

(declare-fun e!1997419 () Regex!9965)

(declare-fun e!1997418 () Regex!9965)

(assert (=> b!3203701 (= e!1997419 e!1997418)))

(declare-fun b!3203702 () Bool)

(declare-fun call!231950 () Regex!9965)

(assert (=> b!3203702 (= e!1997419 (Concat!15401 call!231950 (regex!5206 (rule!7642 separatorToken!241))))))

(declare-fun b!3203703 () Bool)

(declare-fun e!1997416 () Regex!9965)

(declare-fun e!1997417 () Regex!9965)

(assert (=> b!3203703 (= e!1997416 e!1997417)))

(declare-fun c!538042 () Bool)

(assert (=> b!3203703 (= c!538042 ((_ is ElementMatch!9965) (regex!5206 (rule!7642 separatorToken!241))))))

(declare-fun c!538044 () Bool)

(declare-fun call!231948 () Regex!9965)

(declare-fun bm!231942 () Bool)

(assert (=> bm!231942 (= call!231948 (derivativeStep!2947 (ite c!538044 (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241)))) (head!7021 lt!1079883)))))

(declare-fun b!3203704 () Bool)

(assert (=> b!3203704 (= e!1997416 EmptyLang!9965)))

(declare-fun b!3203705 () Bool)

(declare-fun call!231949 () Regex!9965)

(assert (=> b!3203705 (= e!1997418 (Union!9965 (Concat!15401 call!231949 (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241)))) call!231948))))

(declare-fun d!877106 () Bool)

(declare-fun lt!1081176 () Regex!9965)

(assert (=> d!877106 (validRegex!4548 lt!1081176)))

(assert (=> d!877106 (= lt!1081176 e!1997416)))

(declare-fun c!538040 () Bool)

(assert (=> d!877106 (= c!538040 (or ((_ is EmptyExpr!9965) (regex!5206 (rule!7642 separatorToken!241))) ((_ is EmptyLang!9965) (regex!5206 (rule!7642 separatorToken!241)))))))

(assert (=> d!877106 (validRegex!4548 (regex!5206 (rule!7642 separatorToken!241)))))

(assert (=> d!877106 (= (derivativeStep!2947 (regex!5206 (rule!7642 separatorToken!241)) (head!7021 lt!1079883)) lt!1081176)))

(declare-fun b!3203706 () Bool)

(declare-fun e!1997415 () Regex!9965)

(declare-fun call!231947 () Regex!9965)

(assert (=> b!3203706 (= e!1997415 (Union!9965 call!231947 call!231948))))

(declare-fun b!3203707 () Bool)

(assert (=> b!3203707 (= c!538044 ((_ is Union!9965) (regex!5206 (rule!7642 separatorToken!241))))))

(assert (=> b!3203707 (= e!1997417 e!1997415)))

(declare-fun bm!231943 () Bool)

(assert (=> bm!231943 (= call!231950 call!231947)))

(declare-fun b!3203708 () Bool)

(assert (=> b!3203708 (= e!1997415 e!1997419)))

(declare-fun c!538041 () Bool)

(assert (=> b!3203708 (= c!538041 ((_ is Star!9965) (regex!5206 (rule!7642 separatorToken!241))))))

(declare-fun bm!231944 () Bool)

(assert (=> bm!231944 (= call!231949 call!231950)))

(declare-fun b!3203709 () Bool)

(assert (=> b!3203709 (= e!1997418 (Union!9965 (Concat!15401 call!231949 (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241)))) EmptyLang!9965))))

(declare-fun bm!231945 () Bool)

(assert (=> bm!231945 (= call!231947 (derivativeStep!2947 (ite c!538044 (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))) (ite c!538041 (reg!10294 (regex!5206 (rule!7642 separatorToken!241))) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))) (head!7021 lt!1079883)))))

(declare-fun b!3203710 () Bool)

(assert (=> b!3203710 (= e!1997417 (ite (= (head!7021 lt!1079883) (c!537386 (regex!5206 (rule!7642 separatorToken!241)))) EmptyExpr!9965 EmptyLang!9965))))

(assert (= (and d!877106 c!538040) b!3203704))

(assert (= (and d!877106 (not c!538040)) b!3203703))

(assert (= (and b!3203703 c!538042) b!3203710))

(assert (= (and b!3203703 (not c!538042)) b!3203707))

(assert (= (and b!3203707 c!538044) b!3203706))

(assert (= (and b!3203707 (not c!538044)) b!3203708))

(assert (= (and b!3203708 c!538041) b!3203702))

(assert (= (and b!3203708 (not c!538041)) b!3203701))

(assert (= (and b!3203701 c!538043) b!3203705))

(assert (= (and b!3203701 (not c!538043)) b!3203709))

(assert (= (or b!3203705 b!3203709) bm!231944))

(assert (= (or b!3203702 bm!231944) bm!231943))

(assert (= (or b!3203706 bm!231943) bm!231945))

(assert (= (or b!3203706 b!3203705) bm!231942))

(declare-fun m!3468161 () Bool)

(assert (=> b!3203701 m!3468161))

(assert (=> bm!231942 m!3463547))

(declare-fun m!3468163 () Bool)

(assert (=> bm!231942 m!3468163))

(declare-fun m!3468165 () Bool)

(assert (=> d!877106 m!3468165))

(assert (=> d!877106 m!3464827))

(assert (=> bm!231945 m!3463547))

(declare-fun m!3468167 () Bool)

(assert (=> bm!231945 m!3468167))

(assert (=> b!3201952 d!877106))

(assert (=> b!3201952 d!875960))

(declare-fun d!877108 () Bool)

(assert (=> d!877108 (= (tail!5205 lt!1079883) (t!237476 lt!1079883))))

(assert (=> b!3201952 d!877108))

(declare-fun b!3203711 () Bool)

(declare-fun lt!1081177 () tuple2!35478)

(declare-fun e!1997422 () Bool)

(assert (=> b!3203711 (= e!1997422 (= (_2!20873 lt!1081177) (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494))))))))

(declare-fun b!3203712 () Bool)

(declare-fun e!1997420 () Bool)

(assert (=> b!3203712 (= e!1997420 (= (list!12831 (_2!20873 lt!1081177)) (_2!20878 (lexList!1309 thiss!18206 rules!2135 (list!12831 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494)))))))))))

(declare-fun d!877110 () Bool)

(assert (=> d!877110 e!1997420))

(declare-fun res!1303691 () Bool)

(assert (=> d!877110 (=> (not res!1303691) (not e!1997420))))

(assert (=> d!877110 (= res!1303691 e!1997422)))

(declare-fun c!538045 () Bool)

(assert (=> d!877110 (= c!538045 (> (size!27190 (_1!20873 lt!1081177)) 0))))

(assert (=> d!877110 (= lt!1081177 (lexTailRecV2!929 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494)))) (BalanceConc!21189 Empty!10787) (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494)))) (BalanceConc!21191 Empty!10788)))))

(assert (=> d!877110 (= (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494))))) lt!1081177)))

(declare-fun b!3203713 () Bool)

(declare-fun e!1997421 () Bool)

(assert (=> b!3203713 (= e!1997421 (not (isEmpty!20180 (_1!20873 lt!1081177))))))

(declare-fun b!3203714 () Bool)

(assert (=> b!3203714 (= e!1997422 e!1997421)))

(declare-fun res!1303690 () Bool)

(assert (=> b!3203714 (= res!1303690 (< (size!27195 (_2!20873 lt!1081177)) (size!27195 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494)))))))))

(assert (=> b!3203714 (=> (not res!1303690) (not e!1997421))))

(declare-fun b!3203715 () Bool)

(declare-fun res!1303692 () Bool)

(assert (=> b!3203715 (=> (not res!1303692) (not e!1997420))))

(assert (=> b!3203715 (= res!1303692 (= (list!12833 (_1!20873 lt!1081177)) (_1!20878 (lexList!1309 thiss!18206 rules!2135 (list!12831 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494)))))))))))

(assert (= (and d!877110 c!538045) b!3203714))

(assert (= (and d!877110 (not c!538045)) b!3203711))

(assert (= (and b!3203714 res!1303690) b!3203713))

(assert (= (and d!877110 res!1303691) b!3203715))

(assert (= (and b!3203715 res!1303692) b!3203712))

(declare-fun m!3468169 () Bool)

(assert (=> b!3203713 m!3468169))

(declare-fun m!3468171 () Bool)

(assert (=> b!3203714 m!3468171))

(assert (=> b!3203714 m!3464043))

(declare-fun m!3468173 () Bool)

(assert (=> b!3203714 m!3468173))

(declare-fun m!3468175 () Bool)

(assert (=> b!3203715 m!3468175))

(assert (=> b!3203715 m!3464043))

(declare-fun m!3468177 () Bool)

(assert (=> b!3203715 m!3468177))

(assert (=> b!3203715 m!3468177))

(declare-fun m!3468179 () Bool)

(assert (=> b!3203715 m!3468179))

(declare-fun m!3468181 () Bool)

(assert (=> d!877110 m!3468181))

(assert (=> d!877110 m!3464043))

(assert (=> d!877110 m!3464043))

(declare-fun m!3468183 () Bool)

(assert (=> d!877110 m!3468183))

(declare-fun m!3468185 () Bool)

(assert (=> b!3203712 m!3468185))

(assert (=> b!3203712 m!3464043))

(assert (=> b!3203712 m!3468177))

(assert (=> b!3203712 m!3468177))

(assert (=> b!3203712 m!3468179))

(assert (=> d!875810 d!877110))

(declare-fun d!877112 () Bool)

(declare-fun lt!1081178 () BalanceConc!21188)

(assert (=> d!877112 (= (list!12831 lt!1081178) (printList!1345 thiss!18206 (list!12833 (singletonSeq!2302 (h!41523 (t!237478 tokens!494))))))))

(assert (=> d!877112 (= lt!1081178 (printTailRec!1292 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494))) 0 (BalanceConc!21189 Empty!10787)))))

(assert (=> d!877112 (= (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494)))) lt!1081178)))

(declare-fun bs!541136 () Bool)

(assert (= bs!541136 d!877112))

(declare-fun m!3468187 () Bool)

(assert (=> bs!541136 m!3468187))

(assert (=> bs!541136 m!3463545))

(assert (=> bs!541136 m!3464047))

(assert (=> bs!541136 m!3464047))

(declare-fun m!3468189 () Bool)

(assert (=> bs!541136 m!3468189))

(assert (=> bs!541136 m!3463545))

(declare-fun m!3468191 () Bool)

(assert (=> bs!541136 m!3468191))

(assert (=> d!875810 d!877112))

(declare-fun d!877114 () Bool)

(assert (=> d!877114 (= (list!12833 (_1!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494))))))) (list!12837 (c!537388 (_1!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494)))))))))))

(declare-fun bs!541137 () Bool)

(assert (= bs!541137 d!877114))

(declare-fun m!3468193 () Bool)

(assert (=> bs!541137 m!3468193))

(assert (=> d!875810 d!877114))

(assert (=> d!875810 d!875882))

(declare-fun d!877116 () Bool)

(declare-fun lt!1081179 () Int)

(assert (=> d!877116 (= lt!1081179 (size!27196 (list!12833 (_1!20873 lt!1080062))))))

(assert (=> d!877116 (= lt!1081179 (size!27197 (c!537388 (_1!20873 lt!1080062))))))

(assert (=> d!877116 (= (size!27190 (_1!20873 lt!1080062)) lt!1081179)))

(declare-fun bs!541138 () Bool)

(assert (= bs!541138 d!877116))

(assert (=> bs!541138 m!3467989))

(assert (=> bs!541138 m!3467989))

(declare-fun m!3468195 () Bool)

(assert (=> bs!541138 m!3468195))

(declare-fun m!3468197 () Bool)

(assert (=> bs!541138 m!3468197))

(assert (=> d!875810 d!877116))

(assert (=> d!875810 d!876060))

(declare-fun d!877118 () Bool)

(assert (=> d!877118 (= (list!12833 (singletonSeq!2302 (h!41523 (t!237478 tokens!494)))) (list!12837 (c!537388 (singletonSeq!2302 (h!41523 (t!237478 tokens!494))))))))

(declare-fun bs!541139 () Bool)

(assert (= bs!541139 d!877118))

(declare-fun m!3468199 () Bool)

(assert (=> bs!541139 m!3468199))

(assert (=> d!875810 d!877118))

(declare-fun d!877120 () Bool)

(assert (=> d!877120 (= (inv!48957 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241))) (isBalanced!3211 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241)))))))

(declare-fun bs!541140 () Bool)

(assert (= bs!541140 d!877120))

(declare-fun m!3468201 () Bool)

(assert (=> bs!541140 m!3468201))

(assert (=> tb!156833 d!877120))

(declare-fun d!877122 () Bool)

(assert (=> d!877122 (= (head!7023 (drop!1857 lt!1080169 0)) (apply!8152 lt!1080169 0))))

(declare-fun lt!1081180 () Unit!50516)

(assert (=> d!877122 (= lt!1081180 (choose!18695 lt!1080169 0))))

(declare-fun e!1997423 () Bool)

(assert (=> d!877122 e!1997423))

(declare-fun res!1303693 () Bool)

(assert (=> d!877122 (=> (not res!1303693) (not e!1997423))))

(assert (=> d!877122 (= res!1303693 (>= 0 0))))

(assert (=> d!877122 (= (lemmaDropApply!1033 lt!1080169 0) lt!1081180)))

(declare-fun b!3203716 () Bool)

(assert (=> b!3203716 (= e!1997423 (< 0 (size!27196 lt!1080169)))))

(assert (= (and d!877122 res!1303693) b!3203716))

(assert (=> d!877122 m!3464609))

(assert (=> d!877122 m!3464609))

(assert (=> d!877122 m!3464629))

(assert (=> d!877122 m!3464607))

(declare-fun m!3468203 () Bool)

(assert (=> d!877122 m!3468203))

(declare-fun m!3468205 () Bool)

(assert (=> b!3203716 m!3468205))

(assert (=> b!3201859 d!877122))

(declare-fun b!3203717 () Bool)

(declare-fun e!1997428 () Int)

(declare-fun call!231951 () Int)

(assert (=> b!3203717 (= e!1997428 (- call!231951 (+ 0 1)))))

(declare-fun b!3203718 () Bool)

(declare-fun e!1997427 () List!36227)

(assert (=> b!3203718 (= e!1997427 lt!1080171)))

(declare-fun bm!231946 () Bool)

(assert (=> bm!231946 (= call!231951 (size!27196 lt!1080171))))

(declare-fun b!3203719 () Bool)

(assert (=> b!3203719 (= e!1997427 (drop!1857 (t!237478 lt!1080171) (- (+ 0 1) 1)))))

(declare-fun b!3203721 () Bool)

(declare-fun e!1997425 () Bool)

(declare-fun lt!1081181 () List!36227)

(declare-fun e!1997426 () Int)

(assert (=> b!3203721 (= e!1997425 (= (size!27196 lt!1081181) e!1997426))))

(declare-fun c!538046 () Bool)

(assert (=> b!3203721 (= c!538046 (<= (+ 0 1) 0))))

(declare-fun b!3203722 () Bool)

(assert (=> b!3203722 (= e!1997428 0)))

(declare-fun b!3203723 () Bool)

(declare-fun e!1997424 () List!36227)

(assert (=> b!3203723 (= e!1997424 Nil!36103)))

(declare-fun b!3203724 () Bool)

(assert (=> b!3203724 (= e!1997426 e!1997428)))

(declare-fun c!538049 () Bool)

(assert (=> b!3203724 (= c!538049 (>= (+ 0 1) call!231951))))

(declare-fun b!3203725 () Bool)

(assert (=> b!3203725 (= e!1997426 call!231951)))

(declare-fun b!3203720 () Bool)

(assert (=> b!3203720 (= e!1997424 e!1997427)))

(declare-fun c!538048 () Bool)

(assert (=> b!3203720 (= c!538048 (<= (+ 0 1) 0))))

(declare-fun d!877124 () Bool)

(assert (=> d!877124 e!1997425))

(declare-fun res!1303694 () Bool)

(assert (=> d!877124 (=> (not res!1303694) (not e!1997425))))

(assert (=> d!877124 (= res!1303694 (= ((_ map implies) (content!4878 lt!1081181) (content!4878 lt!1080171)) ((as const (InoxSet Token!9778)) true)))))

(assert (=> d!877124 (= lt!1081181 e!1997424)))

(declare-fun c!538047 () Bool)

(assert (=> d!877124 (= c!538047 ((_ is Nil!36103) lt!1080171))))

(assert (=> d!877124 (= (drop!1857 lt!1080171 (+ 0 1)) lt!1081181)))

(assert (= (and d!877124 c!538047) b!3203723))

(assert (= (and d!877124 (not c!538047)) b!3203720))

(assert (= (and b!3203720 c!538048) b!3203718))

(assert (= (and b!3203720 (not c!538048)) b!3203719))

(assert (= (and d!877124 res!1303694) b!3203721))

(assert (= (and b!3203721 c!538046) b!3203725))

(assert (= (and b!3203721 (not c!538046)) b!3203724))

(assert (= (and b!3203724 c!538049) b!3203722))

(assert (= (and b!3203724 (not c!538049)) b!3203717))

(assert (= (or b!3203725 b!3203724 b!3203717) bm!231946))

(declare-fun m!3468207 () Bool)

(assert (=> bm!231946 m!3468207))

(declare-fun m!3468209 () Bool)

(assert (=> b!3203719 m!3468209))

(declare-fun m!3468211 () Bool)

(assert (=> b!3203721 m!3468211))

(declare-fun m!3468213 () Bool)

(assert (=> d!877124 m!3468213))

(declare-fun m!3468215 () Bool)

(assert (=> d!877124 m!3468215))

(assert (=> b!3201859 d!877124))

(declare-fun d!877126 () Bool)

(assert (=> d!877126 (= (head!7023 (drop!1857 lt!1080169 0)) (h!41523 (drop!1857 lt!1080169 0)))))

(assert (=> b!3201859 d!877126))

(declare-fun d!877128 () Bool)

(declare-fun lt!1081188 () BalanceConc!21188)

(assert (=> d!877128 (= (list!12831 lt!1081188) (printListTailRec!557 thiss!18206 (dropList!1074 lt!1079899 (+ 0 1)) (list!12831 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079899 0))))))))

(declare-fun e!1997429 () BalanceConc!21188)

(assert (=> d!877128 (= lt!1081188 e!1997429)))

(declare-fun c!538050 () Bool)

(assert (=> d!877128 (= c!538050 (>= (+ 0 1) (size!27190 lt!1079899)))))

(declare-fun e!1997430 () Bool)

(assert (=> d!877128 e!1997430))

(declare-fun res!1303695 () Bool)

(assert (=> d!877128 (=> (not res!1303695) (not e!1997430))))

(assert (=> d!877128 (= res!1303695 (>= (+ 0 1) 0))))

(assert (=> d!877128 (= (printTailRec!1292 thiss!18206 lt!1079899 (+ 0 1) (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079899 0)))) lt!1081188)))

(declare-fun b!3203726 () Bool)

(assert (=> b!3203726 (= e!1997430 (<= (+ 0 1) (size!27190 lt!1079899)))))

(declare-fun b!3203727 () Bool)

(assert (=> b!3203727 (= e!1997429 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079899 0))))))

(declare-fun b!3203728 () Bool)

(assert (=> b!3203728 (= e!1997429 (printTailRec!1292 thiss!18206 lt!1079899 (+ 0 1 1) (++!8652 (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079899 0))) (charsOf!3222 (apply!8150 lt!1079899 (+ 0 1))))))))

(declare-fun lt!1081184 () List!36227)

(assert (=> b!3203728 (= lt!1081184 (list!12833 lt!1079899))))

(declare-fun lt!1081185 () Unit!50516)

(assert (=> b!3203728 (= lt!1081185 (lemmaDropApply!1033 lt!1081184 (+ 0 1)))))

(assert (=> b!3203728 (= (head!7023 (drop!1857 lt!1081184 (+ 0 1))) (apply!8152 lt!1081184 (+ 0 1)))))

(declare-fun lt!1081183 () Unit!50516)

(assert (=> b!3203728 (= lt!1081183 lt!1081185)))

(declare-fun lt!1081186 () List!36227)

(assert (=> b!3203728 (= lt!1081186 (list!12833 lt!1079899))))

(declare-fun lt!1081182 () Unit!50516)

(assert (=> b!3203728 (= lt!1081182 (lemmaDropTail!917 lt!1081186 (+ 0 1)))))

(assert (=> b!3203728 (= (tail!5204 (drop!1857 lt!1081186 (+ 0 1))) (drop!1857 lt!1081186 (+ 0 1 1)))))

(declare-fun lt!1081187 () Unit!50516)

(assert (=> b!3203728 (= lt!1081187 lt!1081182)))

(assert (= (and d!877128 res!1303695) b!3203726))

(assert (= (and d!877128 c!538050) b!3203727))

(assert (= (and d!877128 (not c!538050)) b!3203728))

(declare-fun m!3468217 () Bool)

(assert (=> d!877128 m!3468217))

(declare-fun m!3468219 () Bool)

(assert (=> d!877128 m!3468219))

(assert (=> d!877128 m!3464621))

(declare-fun m!3468221 () Bool)

(assert (=> d!877128 m!3468221))

(assert (=> d!877128 m!3464603))

(assert (=> d!877128 m!3468219))

(assert (=> d!877128 m!3468221))

(declare-fun m!3468223 () Bool)

(assert (=> d!877128 m!3468223))

(assert (=> b!3203726 m!3464603))

(declare-fun m!3468225 () Bool)

(assert (=> b!3203728 m!3468225))

(declare-fun m!3468227 () Bool)

(assert (=> b!3203728 m!3468227))

(declare-fun m!3468229 () Bool)

(assert (=> b!3203728 m!3468229))

(declare-fun m!3468231 () Bool)

(assert (=> b!3203728 m!3468231))

(assert (=> b!3203728 m!3468229))

(declare-fun m!3468233 () Bool)

(assert (=> b!3203728 m!3468233))

(declare-fun m!3468235 () Bool)

(assert (=> b!3203728 m!3468235))

(declare-fun m!3468237 () Bool)

(assert (=> b!3203728 m!3468237))

(declare-fun m!3468239 () Bool)

(assert (=> b!3203728 m!3468239))

(declare-fun m!3468241 () Bool)

(assert (=> b!3203728 m!3468241))

(assert (=> b!3203728 m!3468233))

(declare-fun m!3468243 () Bool)

(assert (=> b!3203728 m!3468243))

(assert (=> b!3203728 m!3464621))

(assert (=> b!3203728 m!3468235))

(assert (=> b!3203728 m!3468239))

(declare-fun m!3468245 () Bool)

(assert (=> b!3203728 m!3468245))

(assert (=> b!3203728 m!3468227))

(declare-fun m!3468247 () Bool)

(assert (=> b!3203728 m!3468247))

(assert (=> b!3203728 m!3464299))

(assert (=> b!3201859 d!877128))

(declare-fun d!877130 () Bool)

(declare-fun lt!1081189 () Token!9778)

(assert (=> d!877130 (contains!6425 lt!1080169 lt!1081189)))

(declare-fun e!1997431 () Token!9778)

(assert (=> d!877130 (= lt!1081189 e!1997431)))

(declare-fun c!538051 () Bool)

(assert (=> d!877130 (= c!538051 (= 0 0))))

(declare-fun e!1997432 () Bool)

(assert (=> d!877130 e!1997432))

(declare-fun res!1303696 () Bool)

(assert (=> d!877130 (=> (not res!1303696) (not e!1997432))))

(assert (=> d!877130 (= res!1303696 (<= 0 0))))

(assert (=> d!877130 (= (apply!8152 lt!1080169 0) lt!1081189)))

(declare-fun b!3203729 () Bool)

(assert (=> b!3203729 (= e!1997432 (< 0 (size!27196 lt!1080169)))))

(declare-fun b!3203730 () Bool)

(assert (=> b!3203730 (= e!1997431 (head!7023 lt!1080169))))

(declare-fun b!3203731 () Bool)

(assert (=> b!3203731 (= e!1997431 (apply!8152 (tail!5204 lt!1080169) (- 0 1)))))

(assert (= (and d!877130 res!1303696) b!3203729))

(assert (= (and d!877130 c!538051) b!3203730))

(assert (= (and d!877130 (not c!538051)) b!3203731))

(declare-fun m!3468249 () Bool)

(assert (=> d!877130 m!3468249))

(assert (=> b!3203729 m!3468205))

(declare-fun m!3468251 () Bool)

(assert (=> b!3203730 m!3468251))

(declare-fun m!3468253 () Bool)

(assert (=> b!3203731 m!3468253))

(assert (=> b!3203731 m!3468253))

(declare-fun m!3468255 () Bool)

(assert (=> b!3203731 m!3468255))

(assert (=> b!3201859 d!877130))

(declare-fun d!877132 () Bool)

(declare-fun lt!1081190 () BalanceConc!21188)

(assert (=> d!877132 (= (list!12831 lt!1081190) (originalCharacters!5920 (apply!8150 lt!1079899 0)))))

(assert (=> d!877132 (= lt!1081190 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079899 0)))) (value!168831 (apply!8150 lt!1079899 0))))))

(assert (=> d!877132 (= (charsOf!3222 (apply!8150 lt!1079899 0)) lt!1081190)))

(declare-fun b_lambda!87651 () Bool)

(assert (=> (not b_lambda!87651) (not d!877132)))

(declare-fun t!237840 () Bool)

(declare-fun tb!157113 () Bool)

(assert (=> (and b!3202029 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079899 0))))) t!237840) tb!157113))

(declare-fun b!3203732 () Bool)

(declare-fun e!1997433 () Bool)

(declare-fun tp!1012078 () Bool)

(assert (=> b!3203732 (= e!1997433 (and (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079899 0)))) (value!168831 (apply!8150 lt!1079899 0))))) tp!1012078))))

(declare-fun result!199424 () Bool)

(assert (=> tb!157113 (= result!199424 (and (inv!48957 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079899 0)))) (value!168831 (apply!8150 lt!1079899 0)))) e!1997433))))

(assert (= tb!157113 b!3203732))

(declare-fun m!3468257 () Bool)

(assert (=> b!3203732 m!3468257))

(declare-fun m!3468259 () Bool)

(assert (=> tb!157113 m!3468259))

(assert (=> d!877132 t!237840))

(declare-fun b_and!213145 () Bool)

(assert (= b_and!213141 (and (=> t!237840 result!199424) b_and!213145)))

(declare-fun t!237842 () Bool)

(declare-fun tb!157115 () Bool)

(assert (=> (and b!3202018 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079899 0))))) t!237842) tb!157115))

(declare-fun result!199426 () Bool)

(assert (= result!199426 result!199424))

(assert (=> d!877132 t!237842))

(declare-fun b_and!213147 () Bool)

(assert (= b_and!213137 (and (=> t!237842 result!199426) b_and!213147)))

(declare-fun tb!157117 () Bool)

(declare-fun t!237844 () Bool)

(assert (=> (and b!3201193 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079899 0))))) t!237844) tb!157117))

(declare-fun result!199428 () Bool)

(assert (= result!199428 result!199424))

(assert (=> d!877132 t!237844))

(declare-fun b_and!213149 () Bool)

(assert (= b_and!213143 (and (=> t!237844 result!199428) b_and!213149)))

(declare-fun t!237846 () Bool)

(declare-fun tb!157119 () Bool)

(assert (=> (and b!3201192 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079899 0))))) t!237846) tb!157119))

(declare-fun result!199430 () Bool)

(assert (= result!199430 result!199424))

(assert (=> d!877132 t!237846))

(declare-fun b_and!213151 () Bool)

(assert (= b_and!213135 (and (=> t!237846 result!199430) b_and!213151)))

(declare-fun tb!157121 () Bool)

(declare-fun t!237848 () Bool)

(assert (=> (and b!3201175 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079899 0))))) t!237848) tb!157121))

(declare-fun result!199432 () Bool)

(assert (= result!199432 result!199424))

(assert (=> d!877132 t!237848))

(declare-fun b_and!213153 () Bool)

(assert (= b_and!213139 (and (=> t!237848 result!199432) b_and!213153)))

(declare-fun m!3468261 () Bool)

(assert (=> d!877132 m!3468261))

(declare-fun m!3468263 () Bool)

(assert (=> d!877132 m!3468263))

(assert (=> b!3201859 d!877132))

(declare-fun b!3203733 () Bool)

(declare-fun e!1997438 () Int)

(declare-fun call!231952 () Int)

(assert (=> b!3203733 (= e!1997438 (- call!231952 0))))

(declare-fun b!3203734 () Bool)

(declare-fun e!1997437 () List!36227)

(assert (=> b!3203734 (= e!1997437 lt!1080171)))

(declare-fun bm!231947 () Bool)

(assert (=> bm!231947 (= call!231952 (size!27196 lt!1080171))))

(declare-fun b!3203735 () Bool)

(assert (=> b!3203735 (= e!1997437 (drop!1857 (t!237478 lt!1080171) (- 0 1)))))

(declare-fun b!3203737 () Bool)

(declare-fun e!1997435 () Bool)

(declare-fun lt!1081191 () List!36227)

(declare-fun e!1997436 () Int)

(assert (=> b!3203737 (= e!1997435 (= (size!27196 lt!1081191) e!1997436))))

(declare-fun c!538052 () Bool)

(assert (=> b!3203737 (= c!538052 (<= 0 0))))

(declare-fun b!3203738 () Bool)

(assert (=> b!3203738 (= e!1997438 0)))

(declare-fun b!3203739 () Bool)

(declare-fun e!1997434 () List!36227)

(assert (=> b!3203739 (= e!1997434 Nil!36103)))

(declare-fun b!3203740 () Bool)

(assert (=> b!3203740 (= e!1997436 e!1997438)))

(declare-fun c!538055 () Bool)

(assert (=> b!3203740 (= c!538055 (>= 0 call!231952))))

(declare-fun b!3203741 () Bool)

(assert (=> b!3203741 (= e!1997436 call!231952)))

(declare-fun b!3203736 () Bool)

(assert (=> b!3203736 (= e!1997434 e!1997437)))

(declare-fun c!538054 () Bool)

(assert (=> b!3203736 (= c!538054 (<= 0 0))))

(declare-fun d!877134 () Bool)

(assert (=> d!877134 e!1997435))

(declare-fun res!1303697 () Bool)

(assert (=> d!877134 (=> (not res!1303697) (not e!1997435))))

(assert (=> d!877134 (= res!1303697 (= ((_ map implies) (content!4878 lt!1081191) (content!4878 lt!1080171)) ((as const (InoxSet Token!9778)) true)))))

(assert (=> d!877134 (= lt!1081191 e!1997434)))

(declare-fun c!538053 () Bool)

(assert (=> d!877134 (= c!538053 ((_ is Nil!36103) lt!1080171))))

(assert (=> d!877134 (= (drop!1857 lt!1080171 0) lt!1081191)))

(assert (= (and d!877134 c!538053) b!3203739))

(assert (= (and d!877134 (not c!538053)) b!3203736))

(assert (= (and b!3203736 c!538054) b!3203734))

(assert (= (and b!3203736 (not c!538054)) b!3203735))

(assert (= (and d!877134 res!1303697) b!3203737))

(assert (= (and b!3203737 c!538052) b!3203741))

(assert (= (and b!3203737 (not c!538052)) b!3203740))

(assert (= (and b!3203740 c!538055) b!3203738))

(assert (= (and b!3203740 (not c!538055)) b!3203733))

(assert (= (or b!3203741 b!3203740 b!3203733) bm!231947))

(assert (=> bm!231947 m!3468207))

(declare-fun m!3468265 () Bool)

(assert (=> b!3203735 m!3468265))

(declare-fun m!3468267 () Bool)

(assert (=> b!3203737 m!3468267))

(declare-fun m!3468269 () Bool)

(assert (=> d!877134 m!3468269))

(assert (=> d!877134 m!3468215))

(assert (=> b!3201859 d!877134))

(declare-fun d!877136 () Bool)

(assert (=> d!877136 (= (tail!5204 (drop!1857 lt!1080171 0)) (drop!1857 lt!1080171 (+ 0 1)))))

(declare-fun lt!1081192 () Unit!50516)

(assert (=> d!877136 (= lt!1081192 (choose!18694 lt!1080171 0))))

(declare-fun e!1997439 () Bool)

(assert (=> d!877136 e!1997439))

(declare-fun res!1303698 () Bool)

(assert (=> d!877136 (=> (not res!1303698) (not e!1997439))))

(assert (=> d!877136 (= res!1303698 (>= 0 0))))

(assert (=> d!877136 (= (lemmaDropTail!917 lt!1080171 0) lt!1081192)))

(declare-fun b!3203742 () Bool)

(assert (=> b!3203742 (= e!1997439 (< 0 (size!27196 lt!1080171)))))

(assert (= (and d!877136 res!1303698) b!3203742))

(assert (=> d!877136 m!3464611))

(assert (=> d!877136 m!3464611))

(assert (=> d!877136 m!3464613))

(assert (=> d!877136 m!3464619))

(declare-fun m!3468271 () Bool)

(assert (=> d!877136 m!3468271))

(assert (=> b!3203742 m!3468207))

(assert (=> b!3201859 d!877136))

(declare-fun d!877138 () Bool)

(declare-fun lt!1081193 () Token!9778)

(assert (=> d!877138 (= lt!1081193 (apply!8152 (list!12833 lt!1079899) 0))))

(assert (=> d!877138 (= lt!1081193 (apply!8153 (c!537388 lt!1079899) 0))))

(declare-fun e!1997440 () Bool)

(assert (=> d!877138 e!1997440))

(declare-fun res!1303699 () Bool)

(assert (=> d!877138 (=> (not res!1303699) (not e!1997440))))

(assert (=> d!877138 (= res!1303699 (<= 0 0))))

(assert (=> d!877138 (= (apply!8150 lt!1079899 0) lt!1081193)))

(declare-fun b!3203743 () Bool)

(assert (=> b!3203743 (= e!1997440 (< 0 (size!27190 lt!1079899)))))

(assert (= (and d!877138 res!1303699) b!3203743))

(assert (=> d!877138 m!3464299))

(assert (=> d!877138 m!3464299))

(declare-fun m!3468273 () Bool)

(assert (=> d!877138 m!3468273))

(declare-fun m!3468275 () Bool)

(assert (=> d!877138 m!3468275))

(assert (=> b!3203743 m!3464603))

(assert (=> b!3201859 d!877138))

(declare-fun b!3203744 () Bool)

(declare-fun e!1997445 () Int)

(declare-fun call!231953 () Int)

(assert (=> b!3203744 (= e!1997445 (- call!231953 0))))

(declare-fun b!3203745 () Bool)

(declare-fun e!1997444 () List!36227)

(assert (=> b!3203745 (= e!1997444 lt!1080169)))

(declare-fun bm!231948 () Bool)

(assert (=> bm!231948 (= call!231953 (size!27196 lt!1080169))))

(declare-fun b!3203746 () Bool)

(assert (=> b!3203746 (= e!1997444 (drop!1857 (t!237478 lt!1080169) (- 0 1)))))

(declare-fun b!3203748 () Bool)

(declare-fun e!1997442 () Bool)

(declare-fun lt!1081194 () List!36227)

(declare-fun e!1997443 () Int)

(assert (=> b!3203748 (= e!1997442 (= (size!27196 lt!1081194) e!1997443))))

(declare-fun c!538056 () Bool)

(assert (=> b!3203748 (= c!538056 (<= 0 0))))

(declare-fun b!3203749 () Bool)

(assert (=> b!3203749 (= e!1997445 0)))

(declare-fun b!3203750 () Bool)

(declare-fun e!1997441 () List!36227)

(assert (=> b!3203750 (= e!1997441 Nil!36103)))

(declare-fun b!3203751 () Bool)

(assert (=> b!3203751 (= e!1997443 e!1997445)))

(declare-fun c!538059 () Bool)

(assert (=> b!3203751 (= c!538059 (>= 0 call!231953))))

(declare-fun b!3203752 () Bool)

(assert (=> b!3203752 (= e!1997443 call!231953)))

(declare-fun b!3203747 () Bool)

(assert (=> b!3203747 (= e!1997441 e!1997444)))

(declare-fun c!538058 () Bool)

(assert (=> b!3203747 (= c!538058 (<= 0 0))))

(declare-fun d!877140 () Bool)

(assert (=> d!877140 e!1997442))

(declare-fun res!1303700 () Bool)

(assert (=> d!877140 (=> (not res!1303700) (not e!1997442))))

(assert (=> d!877140 (= res!1303700 (= ((_ map implies) (content!4878 lt!1081194) (content!4878 lt!1080169)) ((as const (InoxSet Token!9778)) true)))))

(assert (=> d!877140 (= lt!1081194 e!1997441)))

(declare-fun c!538057 () Bool)

(assert (=> d!877140 (= c!538057 ((_ is Nil!36103) lt!1080169))))

(assert (=> d!877140 (= (drop!1857 lt!1080169 0) lt!1081194)))

(assert (= (and d!877140 c!538057) b!3203750))

(assert (= (and d!877140 (not c!538057)) b!3203747))

(assert (= (and b!3203747 c!538058) b!3203745))

(assert (= (and b!3203747 (not c!538058)) b!3203746))

(assert (= (and d!877140 res!1303700) b!3203748))

(assert (= (and b!3203748 c!538056) b!3203752))

(assert (= (and b!3203748 (not c!538056)) b!3203751))

(assert (= (and b!3203751 c!538059) b!3203749))

(assert (= (and b!3203751 (not c!538059)) b!3203744))

(assert (= (or b!3203752 b!3203751 b!3203744) bm!231948))

(assert (=> bm!231948 m!3468205))

(declare-fun m!3468277 () Bool)

(assert (=> b!3203746 m!3468277))

(declare-fun m!3468279 () Bool)

(assert (=> b!3203748 m!3468279))

(declare-fun m!3468281 () Bool)

(assert (=> d!877140 m!3468281))

(declare-fun m!3468283 () Bool)

(assert (=> d!877140 m!3468283))

(assert (=> b!3201859 d!877140))

(declare-fun d!877142 () Bool)

(assert (=> d!877142 (= (tail!5204 (drop!1857 lt!1080171 0)) (t!237478 (drop!1857 lt!1080171 0)))))

(assert (=> b!3201859 d!877142))

(assert (=> b!3201859 d!876862))

(declare-fun b!3203756 () Bool)

(declare-fun e!1997446 () Bool)

(declare-fun lt!1081195 () BalanceConc!21188)

(assert (=> b!3203756 (= e!1997446 (= (list!12831 lt!1081195) (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) (list!12831 (charsOf!3222 (apply!8150 lt!1079899 0))))))))

(declare-fun d!877144 () Bool)

(assert (=> d!877144 e!1997446))

(declare-fun res!1303703 () Bool)

(assert (=> d!877144 (=> (not res!1303703) (not e!1997446))))

(assert (=> d!877144 (= res!1303703 (appendAssocInst!729 (c!537387 (BalanceConc!21189 Empty!10787)) (c!537387 (charsOf!3222 (apply!8150 lt!1079899 0)))))))

(assert (=> d!877144 (= lt!1081195 (BalanceConc!21189 (++!8654 (c!537387 (BalanceConc!21189 Empty!10787)) (c!537387 (charsOf!3222 (apply!8150 lt!1079899 0))))))))

(assert (=> d!877144 (= (++!8652 (BalanceConc!21189 Empty!10787) (charsOf!3222 (apply!8150 lt!1079899 0))) lt!1081195)))

(declare-fun b!3203753 () Bool)

(declare-fun res!1303702 () Bool)

(assert (=> b!3203753 (=> (not res!1303702) (not e!1997446))))

(assert (=> b!3203753 (= res!1303702 (isBalanced!3211 (++!8654 (c!537387 (BalanceConc!21189 Empty!10787)) (c!537387 (charsOf!3222 (apply!8150 lt!1079899 0))))))))

(declare-fun b!3203754 () Bool)

(declare-fun res!1303704 () Bool)

(assert (=> b!3203754 (=> (not res!1303704) (not e!1997446))))

(assert (=> b!3203754 (= res!1303704 (<= (height!1547 (++!8654 (c!537387 (BalanceConc!21189 Empty!10787)) (c!537387 (charsOf!3222 (apply!8150 lt!1079899 0))))) (+ (max!0 (height!1547 (c!537387 (BalanceConc!21189 Empty!10787))) (height!1547 (c!537387 (charsOf!3222 (apply!8150 lt!1079899 0))))) 1)))))

(declare-fun b!3203755 () Bool)

(declare-fun res!1303701 () Bool)

(assert (=> b!3203755 (=> (not res!1303701) (not e!1997446))))

(assert (=> b!3203755 (= res!1303701 (>= (height!1547 (++!8654 (c!537387 (BalanceConc!21189 Empty!10787)) (c!537387 (charsOf!3222 (apply!8150 lt!1079899 0))))) (max!0 (height!1547 (c!537387 (BalanceConc!21189 Empty!10787))) (height!1547 (c!537387 (charsOf!3222 (apply!8150 lt!1079899 0)))))))))

(assert (= (and d!877144 res!1303703) b!3203753))

(assert (= (and b!3203753 res!1303702) b!3203754))

(assert (= (and b!3203754 res!1303704) b!3203755))

(assert (= (and b!3203755 res!1303701) b!3203756))

(declare-fun m!3468285 () Bool)

(assert (=> b!3203756 m!3468285))

(assert (=> b!3203756 m!3463751))

(assert (=> b!3203756 m!3464617))

(declare-fun m!3468287 () Bool)

(assert (=> b!3203756 m!3468287))

(assert (=> b!3203756 m!3463751))

(assert (=> b!3203756 m!3468287))

(declare-fun m!3468289 () Bool)

(assert (=> b!3203756 m!3468289))

(declare-fun m!3468291 () Bool)

(assert (=> b!3203755 m!3468291))

(declare-fun m!3468293 () Bool)

(assert (=> b!3203755 m!3468293))

(assert (=> b!3203755 m!3465329))

(assert (=> b!3203755 m!3468291))

(declare-fun m!3468295 () Bool)

(assert (=> b!3203755 m!3468295))

(assert (=> b!3203755 m!3465329))

(assert (=> b!3203755 m!3468293))

(declare-fun m!3468297 () Bool)

(assert (=> b!3203755 m!3468297))

(declare-fun m!3468299 () Bool)

(assert (=> d!877144 m!3468299))

(assert (=> d!877144 m!3468291))

(assert (=> b!3203754 m!3468291))

(assert (=> b!3203754 m!3468293))

(assert (=> b!3203754 m!3465329))

(assert (=> b!3203754 m!3468291))

(assert (=> b!3203754 m!3468295))

(assert (=> b!3203754 m!3465329))

(assert (=> b!3203754 m!3468293))

(assert (=> b!3203754 m!3468297))

(assert (=> b!3203753 m!3468291))

(assert (=> b!3203753 m!3468291))

(declare-fun m!3468301 () Bool)

(assert (=> b!3203753 m!3468301))

(assert (=> b!3201859 d!877144))

(declare-fun bs!541141 () Bool)

(declare-fun d!877146 () Bool)

(assert (= bs!541141 (and d!877146 d!876964)))

(declare-fun lambda!117246 () Int)

(assert (=> bs!541141 (= (= (toValue!7282 (transformation!5206 (h!41522 rules!2135))) (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241)))) (= lambda!117246 lambda!117245))))

(assert (=> d!877146 true))

(assert (=> d!877146 (< (dynLambda!14533 order!18349 (toValue!7282 (transformation!5206 (h!41522 rules!2135)))) (dynLambda!14545 order!18361 lambda!117246))))

(assert (=> d!877146 (= (equivClasses!2050 (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toValue!7282 (transformation!5206 (h!41522 rules!2135)))) (Forall2!860 lambda!117246))))

(declare-fun bs!541142 () Bool)

(assert (= bs!541142 d!877146))

(declare-fun m!3468303 () Bool)

(assert (=> bs!541142 m!3468303))

(assert (=> b!3201961 d!877146))

(declare-fun b!3203757 () Bool)

(declare-fun res!1303709 () Bool)

(declare-fun e!1997447 () Bool)

(assert (=> b!3203757 (=> (not res!1303709) (not e!1997447))))

(assert (=> b!3203757 (= res!1303709 (not (isEmpty!20193 (left!28053 (c!537388 lt!1080152)))))))

(declare-fun d!877148 () Bool)

(declare-fun res!1303707 () Bool)

(declare-fun e!1997448 () Bool)

(assert (=> d!877148 (=> res!1303707 e!1997448)))

(assert (=> d!877148 (= res!1303707 (not ((_ is Node!10788) (c!537388 lt!1080152))))))

(assert (=> d!877148 (= (isBalanced!3209 (c!537388 lt!1080152)) e!1997448)))

(declare-fun b!3203758 () Bool)

(assert (=> b!3203758 (= e!1997448 e!1997447)))

(declare-fun res!1303706 () Bool)

(assert (=> b!3203758 (=> (not res!1303706) (not e!1997447))))

(assert (=> b!3203758 (= res!1303706 (<= (- 1) (- (height!1546 (left!28053 (c!537388 lt!1080152))) (height!1546 (right!28383 (c!537388 lt!1080152))))))))

(declare-fun b!3203759 () Bool)

(assert (=> b!3203759 (= e!1997447 (not (isEmpty!20193 (right!28383 (c!537388 lt!1080152)))))))

(declare-fun b!3203760 () Bool)

(declare-fun res!1303708 () Bool)

(assert (=> b!3203760 (=> (not res!1303708) (not e!1997447))))

(assert (=> b!3203760 (= res!1303708 (<= (- (height!1546 (left!28053 (c!537388 lt!1080152))) (height!1546 (right!28383 (c!537388 lt!1080152)))) 1))))

(declare-fun b!3203761 () Bool)

(declare-fun res!1303710 () Bool)

(assert (=> b!3203761 (=> (not res!1303710) (not e!1997447))))

(assert (=> b!3203761 (= res!1303710 (isBalanced!3209 (right!28383 (c!537388 lt!1080152))))))

(declare-fun b!3203762 () Bool)

(declare-fun res!1303705 () Bool)

(assert (=> b!3203762 (=> (not res!1303705) (not e!1997447))))

(assert (=> b!3203762 (= res!1303705 (isBalanced!3209 (left!28053 (c!537388 lt!1080152))))))

(assert (= (and d!877148 (not res!1303707)) b!3203758))

(assert (= (and b!3203758 res!1303706) b!3203760))

(assert (= (and b!3203760 res!1303708) b!3203762))

(assert (= (and b!3203762 res!1303705) b!3203761))

(assert (= (and b!3203761 res!1303710) b!3203757))

(assert (= (and b!3203757 res!1303709) b!3203759))

(declare-fun m!3468305 () Bool)

(assert (=> b!3203758 m!3468305))

(declare-fun m!3468307 () Bool)

(assert (=> b!3203758 m!3468307))

(declare-fun m!3468309 () Bool)

(assert (=> b!3203757 m!3468309))

(declare-fun m!3468311 () Bool)

(assert (=> b!3203761 m!3468311))

(assert (=> b!3203760 m!3468305))

(assert (=> b!3203760 m!3468307))

(declare-fun m!3468313 () Bool)

(assert (=> b!3203759 m!3468313))

(declare-fun m!3468315 () Bool)

(assert (=> b!3203762 m!3468315))

(assert (=> b!3201825 d!877148))

(declare-fun d!877150 () Bool)

(assert (=> d!877150 (= (isEmpty!20186 (originalCharacters!5920 (h!41523 tokens!494))) ((_ is Nil!36101) (originalCharacters!5920 (h!41523 tokens!494))))))

(assert (=> d!876050 d!877150))

(declare-fun d!877152 () Bool)

(declare-fun lt!1081196 () Int)

(assert (=> d!877152 (>= lt!1081196 0)))

(declare-fun e!1997449 () Int)

(assert (=> d!877152 (= lt!1081196 e!1997449)))

(declare-fun c!538060 () Bool)

(assert (=> d!877152 (= c!538060 ((_ is Nil!36103) (list!12833 (_1!20873 lt!1079891))))))

(assert (=> d!877152 (= (size!27196 (list!12833 (_1!20873 lt!1079891))) lt!1081196)))

(declare-fun b!3203763 () Bool)

(assert (=> b!3203763 (= e!1997449 0)))

(declare-fun b!3203764 () Bool)

(assert (=> b!3203764 (= e!1997449 (+ 1 (size!27196 (t!237478 (list!12833 (_1!20873 lt!1079891))))))))

(assert (= (and d!877152 c!538060) b!3203763))

(assert (= (and d!877152 (not c!538060)) b!3203764))

(declare-fun m!3468317 () Bool)

(assert (=> b!3203764 m!3468317))

(assert (=> d!875980 d!877152))

(assert (=> d!875980 d!876138))

(declare-fun d!877154 () Bool)

(declare-fun lt!1081197 () Int)

(assert (=> d!877154 (= lt!1081197 (size!27196 (list!12837 (c!537388 (_1!20873 lt!1079891)))))))

(assert (=> d!877154 (= lt!1081197 (ite ((_ is Empty!10788) (c!537388 (_1!20873 lt!1079891))) 0 (ite ((_ is Leaf!17002) (c!537388 (_1!20873 lt!1079891))) (csize!21807 (c!537388 (_1!20873 lt!1079891))) (csize!21806 (c!537388 (_1!20873 lt!1079891))))))))

(assert (=> d!877154 (= (size!27197 (c!537388 (_1!20873 lt!1079891))) lt!1081197)))

(declare-fun bs!541143 () Bool)

(assert (= bs!541143 d!877154))

(assert (=> bs!541143 m!3465149))

(assert (=> bs!541143 m!3465149))

(declare-fun m!3468319 () Bool)

(assert (=> bs!541143 m!3468319))

(assert (=> d!875980 d!877154))

(declare-fun d!877156 () Bool)

(assert (=> d!877156 (= (list!12833 lt!1079978) (list!12837 (c!537388 lt!1079978)))))

(declare-fun bs!541144 () Bool)

(assert (= bs!541144 d!877156))

(declare-fun m!3468321 () Bool)

(assert (=> bs!541144 m!3468321))

(assert (=> d!875774 d!877156))

(declare-fun d!877158 () Bool)

(declare-fun e!1997450 () Bool)

(assert (=> d!877158 e!1997450))

(declare-fun res!1303711 () Bool)

(assert (=> d!877158 (=> (not res!1303711) (not e!1997450))))

(declare-fun lt!1081198 () BalanceConc!21190)

(assert (=> d!877158 (= res!1303711 (= (list!12833 lt!1081198) (Cons!36103 (h!41523 tokens!494) Nil!36103)))))

(assert (=> d!877158 (= lt!1081198 (choose!18700 (h!41523 tokens!494)))))

(assert (=> d!877158 (= (singleton!990 (h!41523 tokens!494)) lt!1081198)))

(declare-fun b!3203765 () Bool)

(assert (=> b!3203765 (= e!1997450 (isBalanced!3209 (c!537388 lt!1081198)))))

(assert (= (and d!877158 res!1303711) b!3203765))

(declare-fun m!3468323 () Bool)

(assert (=> d!877158 m!3468323))

(declare-fun m!3468325 () Bool)

(assert (=> d!877158 m!3468325))

(declare-fun m!3468327 () Bool)

(assert (=> b!3203765 m!3468327))

(assert (=> d!875774 d!877158))

(declare-fun d!877160 () Bool)

(assert (=> d!877160 (= (inv!16 (value!168831 (h!41523 tokens!494))) (= (charsToInt!0 (text!38499 (value!168831 (h!41523 tokens!494)))) (value!168822 (value!168831 (h!41523 tokens!494)))))))

(declare-fun bs!541145 () Bool)

(assert (= bs!541145 d!877160))

(declare-fun m!3468329 () Bool)

(assert (=> bs!541145 m!3468329))

(assert (=> b!3201422 d!877160))

(declare-fun d!877162 () Bool)

(assert (=> d!877162 (= (nullable!3394 (regex!5206 (rule!7642 separatorToken!241))) (nullableFct!963 (regex!5206 (rule!7642 separatorToken!241))))))

(declare-fun bs!541146 () Bool)

(assert (= bs!541146 d!877162))

(declare-fun m!3468331 () Bool)

(assert (=> bs!541146 m!3468331))

(assert (=> b!3201948 d!877162))

(declare-fun d!877164 () Bool)

(declare-fun lt!1081199 () Int)

(assert (=> d!877164 (= lt!1081199 (size!27196 (list!12833 lt!1079897)))))

(assert (=> d!877164 (= lt!1081199 (size!27197 (c!537388 lt!1079897)))))

(assert (=> d!877164 (= (size!27190 lt!1079897) lt!1081199)))

(declare-fun bs!541147 () Bool)

(assert (= bs!541147 d!877164))

(assert (=> bs!541147 m!3464579))

(assert (=> bs!541147 m!3464579))

(declare-fun m!3468333 () Bool)

(assert (=> bs!541147 m!3468333))

(declare-fun m!3468335 () Bool)

(assert (=> bs!541147 m!3468335))

(assert (=> b!3201849 d!877164))

(declare-fun d!877166 () Bool)

(declare-fun lt!1081200 () Int)

(assert (=> d!877166 (>= lt!1081200 0)))

(declare-fun e!1997451 () Int)

(assert (=> d!877166 (= lt!1081200 e!1997451)))

(declare-fun c!538061 () Bool)

(assert (=> d!877166 (= c!538061 ((_ is Nil!36101) (originalCharacters!5920 separatorToken!241)))))

(assert (=> d!877166 (= (size!27191 (originalCharacters!5920 separatorToken!241)) lt!1081200)))

(declare-fun b!3203766 () Bool)

(assert (=> b!3203766 (= e!1997451 0)))

(declare-fun b!3203767 () Bool)

(assert (=> b!3203767 (= e!1997451 (+ 1 (size!27191 (t!237476 (originalCharacters!5920 separatorToken!241)))))))

(assert (= (and d!877166 c!538061) b!3203766))

(assert (= (and d!877166 (not c!538061)) b!3203767))

(declare-fun m!3468337 () Bool)

(assert (=> b!3203767 m!3468337))

(assert (=> b!3201982 d!877166))

(declare-fun d!877168 () Bool)

(declare-fun e!1997454 () Bool)

(assert (=> d!877168 e!1997454))

(declare-fun res!1303714 () Bool)

(assert (=> d!877168 (=> (not res!1303714) (not e!1997454))))

(declare-fun lt!1081203 () BalanceConc!21190)

(assert (=> d!877168 (= res!1303714 (= (list!12833 lt!1081203) tokens!494))))

(declare-fun fromList!606 (List!36227) Conc!10788)

(assert (=> d!877168 (= lt!1081203 (BalanceConc!21191 (fromList!606 tokens!494)))))

(assert (=> d!877168 (= (fromListB!1531 tokens!494) lt!1081203)))

(declare-fun b!3203770 () Bool)

(assert (=> b!3203770 (= e!1997454 (isBalanced!3209 (fromList!606 tokens!494)))))

(assert (= (and d!877168 res!1303714) b!3203770))

(declare-fun m!3468339 () Bool)

(assert (=> d!877168 m!3468339))

(declare-fun m!3468341 () Bool)

(assert (=> d!877168 m!3468341))

(assert (=> b!3203770 m!3468341))

(assert (=> b!3203770 m!3468341))

(declare-fun m!3468343 () Bool)

(assert (=> b!3203770 m!3468343))

(assert (=> d!875798 d!877168))

(declare-fun d!877170 () Bool)

(assert (=> d!877170 (= (isEmpty!20186 (tail!5205 lt!1079883)) ((_ is Nil!36101) (tail!5205 lt!1079883)))))

(assert (=> b!3201947 d!877170))

(assert (=> b!3201947 d!877108))

(assert (=> b!3201457 d!876192))

(declare-fun d!877172 () Bool)

(declare-fun lt!1081204 () Int)

(assert (=> d!877172 (= lt!1081204 (size!27196 (list!12833 (_1!20873 lt!1080205))))))

(assert (=> d!877172 (= lt!1081204 (size!27197 (c!537388 (_1!20873 lt!1080205))))))

(assert (=> d!877172 (= (size!27190 (_1!20873 lt!1080205)) lt!1081204)))

(declare-fun bs!541148 () Bool)

(assert (= bs!541148 d!877172))

(declare-fun m!3468345 () Bool)

(assert (=> bs!541148 m!3468345))

(assert (=> bs!541148 m!3468345))

(declare-fun m!3468347 () Bool)

(assert (=> bs!541148 m!3468347))

(declare-fun m!3468349 () Bool)

(assert (=> bs!541148 m!3468349))

(assert (=> d!876044 d!877172))

(declare-fun d!877174 () Bool)

(assert (=> d!877174 (= (list!12833 (_1!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494)))))) (list!12837 (c!537388 (_1!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 tokens!494))))))))))

(declare-fun bs!541149 () Bool)

(assert (= bs!541149 d!877174))

(declare-fun m!3468351 () Bool)

(assert (=> bs!541149 m!3468351))

(assert (=> d!876044 d!877174))

(assert (=> d!876044 d!876678))

(assert (=> d!876044 d!876690))

(declare-fun d!877176 () Bool)

(assert (=> d!877176 (= (list!12833 (singletonSeq!2302 (h!41523 tokens!494))) (list!12837 (c!537388 (singletonSeq!2302 (h!41523 tokens!494)))))))

(declare-fun bs!541150 () Bool)

(assert (= bs!541150 d!877176))

(declare-fun m!3468353 () Bool)

(assert (=> bs!541150 m!3468353))

(assert (=> d!876044 d!877176))

(assert (=> d!876044 d!875774))

(assert (=> d!876044 d!876060))

(declare-fun bm!231949 () Bool)

(declare-fun call!231954 () Bool)

(assert (=> bm!231949 (= call!231954 (isEmpty!20186 (tail!5205 lt!1079883)))))

(declare-fun b!3203771 () Bool)

(declare-fun res!1303720 () Bool)

(declare-fun e!1997455 () Bool)

(assert (=> b!3203771 (=> res!1303720 e!1997455)))

(assert (=> b!3203771 (= res!1303720 (not (isEmpty!20186 (tail!5205 (tail!5205 lt!1079883)))))))

(declare-fun b!3203772 () Bool)

(declare-fun e!1997459 () Bool)

(assert (=> b!3203772 (= e!1997459 (nullable!3394 (derivativeStep!2947 (regex!5206 lt!1079889) (head!7021 lt!1079883))))))

(declare-fun d!877178 () Bool)

(declare-fun e!1997457 () Bool)

(assert (=> d!877178 e!1997457))

(declare-fun c!538063 () Bool)

(assert (=> d!877178 (= c!538063 ((_ is EmptyExpr!9965) (derivativeStep!2947 (regex!5206 lt!1079889) (head!7021 lt!1079883))))))

(declare-fun lt!1081205 () Bool)

(assert (=> d!877178 (= lt!1081205 e!1997459)))

(declare-fun c!538064 () Bool)

(assert (=> d!877178 (= c!538064 (isEmpty!20186 (tail!5205 lt!1079883)))))

(assert (=> d!877178 (validRegex!4548 (derivativeStep!2947 (regex!5206 lt!1079889) (head!7021 lt!1079883)))))

(assert (=> d!877178 (= (matchR!4599 (derivativeStep!2947 (regex!5206 lt!1079889) (head!7021 lt!1079883)) (tail!5205 lt!1079883)) lt!1081205)))

(declare-fun b!3203773 () Bool)

(declare-fun e!1997456 () Bool)

(declare-fun e!1997461 () Bool)

(assert (=> b!3203773 (= e!1997456 e!1997461)))

(declare-fun res!1303715 () Bool)

(assert (=> b!3203773 (=> (not res!1303715) (not e!1997461))))

(assert (=> b!3203773 (= res!1303715 (not lt!1081205))))

(declare-fun b!3203774 () Bool)

(declare-fun e!1997460 () Bool)

(assert (=> b!3203774 (= e!1997460 (= (head!7021 (tail!5205 lt!1079883)) (c!537386 (derivativeStep!2947 (regex!5206 lt!1079889) (head!7021 lt!1079883)))))))

(declare-fun b!3203775 () Bool)

(declare-fun res!1303717 () Bool)

(assert (=> b!3203775 (=> (not res!1303717) (not e!1997460))))

(assert (=> b!3203775 (= res!1303717 (isEmpty!20186 (tail!5205 (tail!5205 lt!1079883))))))

(declare-fun b!3203776 () Bool)

(assert (=> b!3203776 (= e!1997459 (matchR!4599 (derivativeStep!2947 (derivativeStep!2947 (regex!5206 lt!1079889) (head!7021 lt!1079883)) (head!7021 (tail!5205 lt!1079883))) (tail!5205 (tail!5205 lt!1079883))))))

(declare-fun b!3203777 () Bool)

(declare-fun res!1303718 () Bool)

(assert (=> b!3203777 (=> res!1303718 e!1997456)))

(assert (=> b!3203777 (= res!1303718 e!1997460)))

(declare-fun res!1303719 () Bool)

(assert (=> b!3203777 (=> (not res!1303719) (not e!1997460))))

(assert (=> b!3203777 (= res!1303719 lt!1081205)))

(declare-fun b!3203778 () Bool)

(assert (=> b!3203778 (= e!1997461 e!1997455)))

(declare-fun res!1303716 () Bool)

(assert (=> b!3203778 (=> res!1303716 e!1997455)))

(assert (=> b!3203778 (= res!1303716 call!231954)))

(declare-fun b!3203779 () Bool)

(declare-fun e!1997458 () Bool)

(assert (=> b!3203779 (= e!1997457 e!1997458)))

(declare-fun c!538065 () Bool)

(assert (=> b!3203779 (= c!538065 ((_ is EmptyLang!9965) (derivativeStep!2947 (regex!5206 lt!1079889) (head!7021 lt!1079883))))))

(declare-fun b!3203780 () Bool)

(assert (=> b!3203780 (= e!1997458 (not lt!1081205))))

(declare-fun b!3203781 () Bool)

(assert (=> b!3203781 (= e!1997457 (= lt!1081205 call!231954))))

(declare-fun b!3203782 () Bool)

(declare-fun res!1303721 () Bool)

(assert (=> b!3203782 (=> res!1303721 e!1997456)))

(assert (=> b!3203782 (= res!1303721 (not ((_ is ElementMatch!9965) (derivativeStep!2947 (regex!5206 lt!1079889) (head!7021 lt!1079883)))))))

(assert (=> b!3203782 (= e!1997458 e!1997456)))

(declare-fun b!3203783 () Bool)

(declare-fun res!1303722 () Bool)

(assert (=> b!3203783 (=> (not res!1303722) (not e!1997460))))

(assert (=> b!3203783 (= res!1303722 (not call!231954))))

(declare-fun b!3203784 () Bool)

(assert (=> b!3203784 (= e!1997455 (not (= (head!7021 (tail!5205 lt!1079883)) (c!537386 (derivativeStep!2947 (regex!5206 lt!1079889) (head!7021 lt!1079883))))))))

(assert (= (and d!877178 c!538064) b!3203772))

(assert (= (and d!877178 (not c!538064)) b!3203776))

(assert (= (and d!877178 c!538063) b!3203781))

(assert (= (and d!877178 (not c!538063)) b!3203779))

(assert (= (and b!3203779 c!538065) b!3203780))

(assert (= (and b!3203779 (not c!538065)) b!3203782))

(assert (= (and b!3203782 (not res!1303721)) b!3203777))

(assert (= (and b!3203777 res!1303719) b!3203783))

(assert (= (and b!3203783 res!1303722) b!3203775))

(assert (= (and b!3203775 res!1303717) b!3203774))

(assert (= (and b!3203777 (not res!1303718)) b!3203773))

(assert (= (and b!3203773 res!1303715) b!3203778))

(assert (= (and b!3203778 (not res!1303716)) b!3203771))

(assert (= (and b!3203771 (not res!1303720)) b!3203784))

(assert (= (or b!3203781 b!3203778 b!3203783) bm!231949))

(assert (=> b!3203784 m!3464803))

(assert (=> b!3203784 m!3468147))

(assert (=> b!3203776 m!3464803))

(assert (=> b!3203776 m!3468147))

(assert (=> b!3203776 m!3464801))

(assert (=> b!3203776 m!3468147))

(declare-fun m!3468355 () Bool)

(assert (=> b!3203776 m!3468355))

(assert (=> b!3203776 m!3464803))

(assert (=> b!3203776 m!3468151))

(assert (=> b!3203776 m!3468355))

(assert (=> b!3203776 m!3468151))

(declare-fun m!3468357 () Bool)

(assert (=> b!3203776 m!3468357))

(assert (=> b!3203775 m!3464803))

(assert (=> b!3203775 m!3468151))

(assert (=> b!3203775 m!3468151))

(assert (=> b!3203775 m!3468155))

(assert (=> d!877178 m!3464803))

(assert (=> d!877178 m!3464807))

(assert (=> d!877178 m!3464801))

(declare-fun m!3468359 () Bool)

(assert (=> d!877178 m!3468359))

(assert (=> b!3203771 m!3464803))

(assert (=> b!3203771 m!3468151))

(assert (=> b!3203771 m!3468151))

(assert (=> b!3203771 m!3468155))

(assert (=> bm!231949 m!3464803))

(assert (=> bm!231949 m!3464807))

(assert (=> b!3203774 m!3464803))

(assert (=> b!3203774 m!3468147))

(assert (=> b!3203772 m!3464801))

(declare-fun m!3468361 () Bool)

(assert (=> b!3203772 m!3468361))

(assert (=> b!3201932 d!877178))

(declare-fun b!3203785 () Bool)

(declare-fun c!538069 () Bool)

(assert (=> b!3203785 (= c!538069 (nullable!3394 (regOne!20442 (regex!5206 lt!1079889))))))

(declare-fun e!1997466 () Regex!9965)

(declare-fun e!1997465 () Regex!9965)

(assert (=> b!3203785 (= e!1997466 e!1997465)))

(declare-fun b!3203786 () Bool)

(declare-fun call!231958 () Regex!9965)

(assert (=> b!3203786 (= e!1997466 (Concat!15401 call!231958 (regex!5206 lt!1079889)))))

(declare-fun b!3203787 () Bool)

(declare-fun e!1997463 () Regex!9965)

(declare-fun e!1997464 () Regex!9965)

(assert (=> b!3203787 (= e!1997463 e!1997464)))

(declare-fun c!538068 () Bool)

(assert (=> b!3203787 (= c!538068 ((_ is ElementMatch!9965) (regex!5206 lt!1079889)))))

(declare-fun bm!231950 () Bool)

(declare-fun c!538070 () Bool)

(declare-fun call!231956 () Regex!9965)

(assert (=> bm!231950 (= call!231956 (derivativeStep!2947 (ite c!538070 (regTwo!20443 (regex!5206 lt!1079889)) (regTwo!20442 (regex!5206 lt!1079889))) (head!7021 lt!1079883)))))

(declare-fun b!3203788 () Bool)

(assert (=> b!3203788 (= e!1997463 EmptyLang!9965)))

(declare-fun call!231957 () Regex!9965)

(declare-fun b!3203789 () Bool)

(assert (=> b!3203789 (= e!1997465 (Union!9965 (Concat!15401 call!231957 (regTwo!20442 (regex!5206 lt!1079889))) call!231956))))

(declare-fun d!877180 () Bool)

(declare-fun lt!1081206 () Regex!9965)

(assert (=> d!877180 (validRegex!4548 lt!1081206)))

(assert (=> d!877180 (= lt!1081206 e!1997463)))

(declare-fun c!538066 () Bool)

(assert (=> d!877180 (= c!538066 (or ((_ is EmptyExpr!9965) (regex!5206 lt!1079889)) ((_ is EmptyLang!9965) (regex!5206 lt!1079889))))))

(assert (=> d!877180 (validRegex!4548 (regex!5206 lt!1079889))))

(assert (=> d!877180 (= (derivativeStep!2947 (regex!5206 lt!1079889) (head!7021 lt!1079883)) lt!1081206)))

(declare-fun b!3203790 () Bool)

(declare-fun e!1997462 () Regex!9965)

(declare-fun call!231955 () Regex!9965)

(assert (=> b!3203790 (= e!1997462 (Union!9965 call!231955 call!231956))))

(declare-fun b!3203791 () Bool)

(assert (=> b!3203791 (= c!538070 ((_ is Union!9965) (regex!5206 lt!1079889)))))

(assert (=> b!3203791 (= e!1997464 e!1997462)))

(declare-fun bm!231951 () Bool)

(assert (=> bm!231951 (= call!231958 call!231955)))

(declare-fun b!3203792 () Bool)

(assert (=> b!3203792 (= e!1997462 e!1997466)))

(declare-fun c!538067 () Bool)

(assert (=> b!3203792 (= c!538067 ((_ is Star!9965) (regex!5206 lt!1079889)))))

(declare-fun bm!231952 () Bool)

(assert (=> bm!231952 (= call!231957 call!231958)))

(declare-fun b!3203793 () Bool)

(assert (=> b!3203793 (= e!1997465 (Union!9965 (Concat!15401 call!231957 (regTwo!20442 (regex!5206 lt!1079889))) EmptyLang!9965))))

(declare-fun bm!231953 () Bool)

(assert (=> bm!231953 (= call!231955 (derivativeStep!2947 (ite c!538070 (regOne!20443 (regex!5206 lt!1079889)) (ite c!538067 (reg!10294 (regex!5206 lt!1079889)) (regOne!20442 (regex!5206 lt!1079889)))) (head!7021 lt!1079883)))))

(declare-fun b!3203794 () Bool)

(assert (=> b!3203794 (= e!1997464 (ite (= (head!7021 lt!1079883) (c!537386 (regex!5206 lt!1079889))) EmptyExpr!9965 EmptyLang!9965))))

(assert (= (and d!877180 c!538066) b!3203788))

(assert (= (and d!877180 (not c!538066)) b!3203787))

(assert (= (and b!3203787 c!538068) b!3203794))

(assert (= (and b!3203787 (not c!538068)) b!3203791))

(assert (= (and b!3203791 c!538070) b!3203790))

(assert (= (and b!3203791 (not c!538070)) b!3203792))

(assert (= (and b!3203792 c!538067) b!3203786))

(assert (= (and b!3203792 (not c!538067)) b!3203785))

(assert (= (and b!3203785 c!538069) b!3203789))

(assert (= (and b!3203785 (not c!538069)) b!3203793))

(assert (= (or b!3203789 b!3203793) bm!231952))

(assert (= (or b!3203786 bm!231952) bm!231951))

(assert (= (or b!3203790 bm!231951) bm!231953))

(assert (= (or b!3203790 b!3203789) bm!231950))

(declare-fun m!3468363 () Bool)

(assert (=> b!3203785 m!3468363))

(assert (=> bm!231950 m!3463547))

(declare-fun m!3468365 () Bool)

(assert (=> bm!231950 m!3468365))

(declare-fun m!3468367 () Bool)

(assert (=> d!877180 m!3468367))

(assert (=> d!877180 m!3464811))

(assert (=> bm!231953 m!3463547))

(declare-fun m!3468369 () Bool)

(assert (=> bm!231953 m!3468369))

(assert (=> b!3201932 d!877180))

(assert (=> b!3201932 d!875960))

(assert (=> b!3201932 d!877108))

(declare-fun d!877182 () Bool)

(assert (=> d!877182 (= (inv!48949 (tag!5728 (h!41522 (t!237477 rules!2135)))) (= (mod (str.len (value!168830 (tag!5728 (h!41522 (t!237477 rules!2135))))) 2) 0))))

(assert (=> b!3202028 d!877182))

(declare-fun d!877184 () Bool)

(declare-fun res!1303723 () Bool)

(declare-fun e!1997467 () Bool)

(assert (=> d!877184 (=> (not res!1303723) (not e!1997467))))

(assert (=> d!877184 (= res!1303723 (semiInverseModEq!2151 (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toValue!7282 (transformation!5206 (h!41522 (t!237477 rules!2135))))))))

(assert (=> d!877184 (= (inv!48952 (transformation!5206 (h!41522 (t!237477 rules!2135)))) e!1997467)))

(declare-fun b!3203795 () Bool)

(assert (=> b!3203795 (= e!1997467 (equivClasses!2050 (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toValue!7282 (transformation!5206 (h!41522 (t!237477 rules!2135))))))))

(assert (= (and d!877184 res!1303723) b!3203795))

(declare-fun m!3468371 () Bool)

(assert (=> d!877184 m!3468371))

(declare-fun m!3468373 () Bool)

(assert (=> b!3203795 m!3468373))

(assert (=> b!3202028 d!877184))

(declare-fun d!877186 () Bool)

(assert (=> d!877186 (= (isEmpty!20189 lt!1080155) (not ((_ is Some!7106) lt!1080155)))))

(assert (=> d!875964 d!877186))

(assert (=> d!875964 d!875758))

(declare-fun d!877188 () Bool)

(assert (=> d!877188 (= (isEmpty!20186 (originalCharacters!5920 separatorToken!241)) ((_ is Nil!36101) (originalCharacters!5920 separatorToken!241)))))

(assert (=> d!876056 d!877188))

(declare-fun bs!541151 () Bool)

(declare-fun d!877190 () Bool)

(assert (= bs!541151 (and d!877190 d!876718)))

(declare-fun lambda!117247 () Int)

(assert (=> bs!541151 (= lambda!117247 lambda!117237)))

(declare-fun bs!541152 () Bool)

(assert (= bs!541152 (and d!877190 d!876854)))

(assert (=> bs!541152 (= (and (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241)))) (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241))))) (= lambda!117247 lambda!117241))))

(declare-fun bs!541153 () Bool)

(assert (= bs!541153 (and d!877190 d!876910)))

(assert (=> bs!541153 (= (and (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (h!41522 rules!2135)))) (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toValue!7282 (transformation!5206 (h!41522 rules!2135))))) (= lambda!117247 lambda!117242))))

(assert (=> d!877190 true))

(assert (=> d!877190 (< (dynLambda!14535 order!18353 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) (dynLambda!14544 order!18359 lambda!117247))))

(assert (=> d!877190 true))

(assert (=> d!877190 (< (dynLambda!14533 order!18349 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) (dynLambda!14544 order!18359 lambda!117247))))

(assert (=> d!877190 (= (semiInverseModEq!2151 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) (Forall!1263 lambda!117247))))

(declare-fun bs!541154 () Bool)

(assert (= bs!541154 d!877190))

(declare-fun m!3468375 () Bool)

(assert (=> bs!541154 m!3468375))

(assert (=> d!876032 d!877190))

(declare-fun d!877192 () Bool)

(assert (=> d!877192 (= (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494))))) (v!35636 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494))))))))

(assert (=> b!3201640 d!877192))

(assert (=> b!3201640 d!875948))

(assert (=> b!3201815 d!876288))

(declare-fun d!877194 () Bool)

(assert (=> d!877194 (= (isEmpty!20186 (list!12831 (_2!20873 lt!1079891))) ((_ is Nil!36101) (list!12831 (_2!20873 lt!1079891))))))

(assert (=> d!876058 d!877194))

(declare-fun d!877196 () Bool)

(assert (=> d!877196 (= (list!12831 (_2!20873 lt!1079891)) (list!12834 (c!537387 (_2!20873 lt!1079891))))))

(declare-fun bs!541155 () Bool)

(assert (= bs!541155 d!877196))

(declare-fun m!3468377 () Bool)

(assert (=> bs!541155 m!3468377))

(assert (=> d!876058 d!877196))

(declare-fun d!877198 () Bool)

(declare-fun lt!1081209 () Bool)

(assert (=> d!877198 (= lt!1081209 (isEmpty!20186 (list!12834 (c!537387 (_2!20873 lt!1079891)))))))

(assert (=> d!877198 (= lt!1081209 (= (size!27199 (c!537387 (_2!20873 lt!1079891))) 0))))

(assert (=> d!877198 (= (isEmpty!20187 (c!537387 (_2!20873 lt!1079891))) lt!1081209)))

(declare-fun bs!541156 () Bool)

(assert (= bs!541156 d!877198))

(assert (=> bs!541156 m!3468377))

(assert (=> bs!541156 m!3468377))

(declare-fun m!3468379 () Bool)

(assert (=> bs!541156 m!3468379))

(declare-fun m!3468381 () Bool)

(assert (=> bs!541156 m!3468381))

(assert (=> d!876058 d!877198))

(declare-fun d!877200 () Bool)

(declare-fun e!1997468 () Bool)

(assert (=> d!877200 e!1997468))

(declare-fun res!1303724 () Bool)

(assert (=> d!877200 (=> (not res!1303724) (not e!1997468))))

(declare-fun lt!1081210 () List!36225)

(assert (=> d!877200 (= res!1303724 (= (content!4877 lt!1081210) ((_ map or) (content!4877 (t!237476 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883))) (content!4877 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)))))))

(declare-fun e!1997469 () List!36225)

(assert (=> d!877200 (= lt!1081210 e!1997469)))

(declare-fun c!538071 () Bool)

(assert (=> d!877200 (= c!538071 ((_ is Nil!36101) (t!237476 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883))))))

(assert (=> d!877200 (= (++!8650 (t!237476 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883)) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)) lt!1081210)))

(declare-fun b!3203797 () Bool)

(assert (=> b!3203797 (= e!1997469 (Cons!36101 (h!41521 (t!237476 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883))) (++!8650 (t!237476 (t!237476 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883))) (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241))))))

(declare-fun b!3203799 () Bool)

(assert (=> b!3203799 (= e!1997468 (or (not (= (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241) Nil!36101)) (= lt!1081210 (t!237476 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883)))))))

(declare-fun b!3203798 () Bool)

(declare-fun res!1303725 () Bool)

(assert (=> b!3203798 (=> (not res!1303725) (not e!1997468))))

(assert (=> b!3203798 (= res!1303725 (= (size!27191 lt!1081210) (+ (size!27191 (t!237476 (++!8650 (list!12831 (charsOf!3222 (h!41523 (t!237478 tokens!494)))) lt!1079883))) (size!27191 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241)))))))

(declare-fun b!3203796 () Bool)

(assert (=> b!3203796 (= e!1997469 (printWithSeparatorTokenList!140 thiss!18206 (t!237478 (t!237478 tokens!494)) separatorToken!241))))

(assert (= (and d!877200 c!538071) b!3203796))

(assert (= (and d!877200 (not c!538071)) b!3203797))

(assert (= (and d!877200 res!1303724) b!3203798))

(assert (= (and b!3203798 res!1303725) b!3203799))

(declare-fun m!3468383 () Bool)

(assert (=> d!877200 m!3468383))

(assert (=> d!877200 m!3468135))

(assert (=> d!877200 m!3463487))

(assert (=> d!877200 m!3464665))

(assert (=> b!3203797 m!3463487))

(declare-fun m!3468385 () Bool)

(assert (=> b!3203797 m!3468385))

(declare-fun m!3468387 () Bool)

(assert (=> b!3203798 m!3468387))

(assert (=> b!3203798 m!3467781))

(assert (=> b!3203798 m!3463487))

(assert (=> b!3203798 m!3464673))

(assert (=> b!3201883 d!877200))

(declare-fun d!877202 () Bool)

(declare-fun lt!1081211 () Int)

(assert (=> d!877202 (>= lt!1081211 0)))

(declare-fun e!1997470 () Int)

(assert (=> d!877202 (= lt!1081211 e!1997470)))

(declare-fun c!538072 () Bool)

(assert (=> d!877202 (= c!538072 ((_ is Nil!36101) lt!1080208))))

(assert (=> d!877202 (= (size!27191 lt!1080208) lt!1081211)))

(declare-fun b!3203800 () Bool)

(assert (=> b!3203800 (= e!1997470 0)))

(declare-fun b!3203801 () Bool)

(assert (=> b!3203801 (= e!1997470 (+ 1 (size!27191 (t!237476 lt!1080208))))))

(assert (= (and d!877202 c!538072) b!3203800))

(assert (= (and d!877202 (not c!538072)) b!3203801))

(declare-fun m!3468389 () Bool)

(assert (=> b!3203801 m!3468389))

(assert (=> b!3201972 d!877202))

(assert (=> b!3201972 d!875808))

(assert (=> b!3201972 d!876270))

(declare-fun d!877204 () Bool)

(declare-fun lt!1081212 () Bool)

(assert (=> d!877204 (= lt!1081212 (isEmpty!20186 (list!12831 (_2!20873 lt!1080197))))))

(assert (=> d!877204 (= lt!1081212 (isEmpty!20187 (c!537387 (_2!20873 lt!1080197))))))

(assert (=> d!877204 (= (isEmpty!20179 (_2!20873 lt!1080197)) lt!1081212)))

(declare-fun bs!541157 () Bool)

(assert (= bs!541157 d!877204))

(declare-fun m!3468391 () Bool)

(assert (=> bs!541157 m!3468391))

(assert (=> bs!541157 m!3468391))

(declare-fun m!3468393 () Bool)

(assert (=> bs!541157 m!3468393))

(declare-fun m!3468395 () Bool)

(assert (=> bs!541157 m!3468395))

(assert (=> b!3201925 d!877204))

(declare-fun d!877206 () Bool)

(declare-fun lt!1081213 () Int)

(assert (=> d!877206 (>= lt!1081213 0)))

(declare-fun e!1997471 () Int)

(assert (=> d!877206 (= lt!1081213 e!1997471)))

(declare-fun c!538073 () Bool)

(assert (=> d!877206 (= c!538073 ((_ is Nil!36101) lt!1080187))))

(assert (=> d!877206 (= (size!27191 lt!1080187) lt!1081213)))

(declare-fun b!3203802 () Bool)

(assert (=> b!3203802 (= e!1997471 0)))

(declare-fun b!3203803 () Bool)

(assert (=> b!3203803 (= e!1997471 (+ 1 (size!27191 (t!237476 lt!1080187))))))

(assert (= (and d!877206 c!538073) b!3203802))

(assert (= (and d!877206 (not c!538073)) b!3203803))

(declare-fun m!3468397 () Bool)

(assert (=> b!3203803 m!3468397))

(assert (=> b!3201901 d!877206))

(assert (=> b!3201901 d!876270))

(declare-fun d!877208 () Bool)

(declare-fun lt!1081214 () Int)

(assert (=> d!877208 (>= lt!1081214 0)))

(declare-fun e!1997472 () Int)

(assert (=> d!877208 (= lt!1081214 e!1997472)))

(declare-fun c!538074 () Bool)

(assert (=> d!877208 (= c!538074 ((_ is Nil!36101) lt!1079880))))

(assert (=> d!877208 (= (size!27191 lt!1079880) lt!1081214)))

(declare-fun b!3203804 () Bool)

(assert (=> b!3203804 (= e!1997472 0)))

(declare-fun b!3203805 () Bool)

(assert (=> b!3203805 (= e!1997472 (+ 1 (size!27191 (t!237476 lt!1079880))))))

(assert (= (and d!877208 c!538074) b!3203804))

(assert (= (and d!877208 (not c!538074)) b!3203805))

(declare-fun m!3468399 () Bool)

(assert (=> b!3203805 m!3468399))

(assert (=> b!3201901 d!877208))

(declare-fun d!877210 () Bool)

(assert (=> d!877210 (= (nullable!3394 (regex!5206 lt!1079889)) (nullableFct!963 (regex!5206 lt!1079889)))))

(declare-fun bs!541158 () Bool)

(assert (= bs!541158 d!877210))

(declare-fun m!3468401 () Bool)

(assert (=> bs!541158 m!3468401))

(assert (=> b!3201928 d!877210))

(declare-fun d!877212 () Bool)

(assert (=> d!877212 (= (isEmpty!20188 lt!1080102) (not ((_ is Some!7107) lt!1080102)))))

(assert (=> d!875824 d!877212))

(declare-fun d!877214 () Bool)

(assert (=> d!877214 (= (isEmpty!20186 (_1!20877 lt!1080104)) ((_ is Nil!36101) (_1!20877 lt!1080104)))))

(assert (=> d!875824 d!877214))

(declare-fun d!877216 () Bool)

(declare-fun lt!1081234 () tuple2!35486)

(assert (=> d!877216 (= (++!8650 (_1!20877 lt!1081234) (_2!20877 lt!1081234)) lt!1079879)))

(declare-fun sizeTr!157 (List!36225 Int) Int)

(assert (=> d!877216 (= lt!1081234 (findLongestMatchInner!827 (regex!5206 (rule!7642 (h!41523 tokens!494))) Nil!36101 0 lt!1079879 lt!1079879 (sizeTr!157 lt!1079879 0)))))

(declare-fun lt!1081238 () Unit!50516)

(declare-fun lt!1081235 () Unit!50516)

(assert (=> d!877216 (= lt!1081238 lt!1081235)))

(declare-fun lt!1081233 () List!36225)

(declare-fun lt!1081237 () Int)

(assert (=> d!877216 (= (sizeTr!157 lt!1081233 lt!1081237) (+ (size!27191 lt!1081233) lt!1081237))))

(declare-fun lemmaSizeTrEqualsSize!156 (List!36225 Int) Unit!50516)

(assert (=> d!877216 (= lt!1081235 (lemmaSizeTrEqualsSize!156 lt!1081233 lt!1081237))))

(assert (=> d!877216 (= lt!1081237 0)))

(assert (=> d!877216 (= lt!1081233 Nil!36101)))

(declare-fun lt!1081232 () Unit!50516)

(declare-fun lt!1081236 () Unit!50516)

(assert (=> d!877216 (= lt!1081232 lt!1081236)))

(declare-fun lt!1081231 () Int)

(assert (=> d!877216 (= (sizeTr!157 lt!1079879 lt!1081231) (+ (size!27191 lt!1079879) lt!1081231))))

(assert (=> d!877216 (= lt!1081236 (lemmaSizeTrEqualsSize!156 lt!1079879 lt!1081231))))

(assert (=> d!877216 (= lt!1081231 0)))

(assert (=> d!877216 (validRegex!4548 (regex!5206 (rule!7642 (h!41523 tokens!494))))))

(assert (=> d!877216 (= (findLongestMatch!742 (regex!5206 (rule!7642 (h!41523 tokens!494))) lt!1079879) lt!1081234)))

(declare-fun bs!541159 () Bool)

(assert (= bs!541159 d!877216))

(declare-fun m!3468403 () Bool)

(assert (=> bs!541159 m!3468403))

(declare-fun m!3468405 () Bool)

(assert (=> bs!541159 m!3468405))

(assert (=> bs!541159 m!3468403))

(declare-fun m!3468407 () Bool)

(assert (=> bs!541159 m!3468407))

(declare-fun m!3468409 () Bool)

(assert (=> bs!541159 m!3468409))

(declare-fun m!3468411 () Bool)

(assert (=> bs!541159 m!3468411))

(declare-fun m!3468413 () Bool)

(assert (=> bs!541159 m!3468413))

(assert (=> bs!541159 m!3467349))

(declare-fun m!3468415 () Bool)

(assert (=> bs!541159 m!3468415))

(declare-fun m!3468417 () Bool)

(assert (=> bs!541159 m!3468417))

(assert (=> bs!541159 m!3463549))

(assert (=> d!875824 d!877216))

(declare-fun d!877218 () Bool)

(declare-fun res!1303730 () Bool)

(declare-fun e!1997475 () Bool)

(assert (=> d!877218 (=> (not res!1303730) (not e!1997475))))

(assert (=> d!877218 (= res!1303730 (validRegex!4548 (regex!5206 (rule!7642 (h!41523 tokens!494)))))))

(assert (=> d!877218 (= (ruleValid!1640 thiss!18206 (rule!7642 (h!41523 tokens!494))) e!1997475)))

(declare-fun b!3203810 () Bool)

(declare-fun res!1303731 () Bool)

(assert (=> b!3203810 (=> (not res!1303731) (not e!1997475))))

(assert (=> b!3203810 (= res!1303731 (not (nullable!3394 (regex!5206 (rule!7642 (h!41523 tokens!494))))))))

(declare-fun b!3203811 () Bool)

(assert (=> b!3203811 (= e!1997475 (not (= (tag!5728 (rule!7642 (h!41523 tokens!494))) (String!40515 ""))))))

(assert (= (and d!877218 res!1303730) b!3203810))

(assert (= (and b!3203810 res!1303731) b!3203811))

(assert (=> d!877218 m!3467349))

(assert (=> b!3203810 m!3467309))

(assert (=> d!875824 d!877218))

(assert (=> d!876006 d!876048))

(declare-fun d!877220 () Bool)

(assert (=> d!877220 (= (++!8650 (++!8650 lt!1079879 lt!1079883) lt!1079880) (++!8650 lt!1079879 (++!8650 lt!1079883 lt!1079880)))))

(assert (=> d!877220 true))

(declare-fun _$52!1534 () Unit!50516)

(assert (=> d!877220 (= (choose!18689 lt!1079879 lt!1079883 lt!1079880) _$52!1534)))

(declare-fun bs!541160 () Bool)

(assert (= bs!541160 d!877220))

(assert (=> bs!541160 m!3463593))

(assert (=> bs!541160 m!3463593))

(assert (=> bs!541160 m!3463595))

(assert (=> bs!541160 m!3463479))

(assert (=> bs!541160 m!3463479))

(assert (=> bs!541160 m!3464747))

(assert (=> d!876006 d!877220))

(declare-fun d!877222 () Bool)

(declare-fun e!1997476 () Bool)

(assert (=> d!877222 e!1997476))

(declare-fun res!1303732 () Bool)

(assert (=> d!877222 (=> (not res!1303732) (not e!1997476))))

(declare-fun lt!1081239 () List!36225)

(assert (=> d!877222 (= res!1303732 (= (content!4877 lt!1081239) ((_ map or) (content!4877 lt!1079879) (content!4877 (++!8650 lt!1079883 lt!1079880)))))))

(declare-fun e!1997477 () List!36225)

(assert (=> d!877222 (= lt!1081239 e!1997477)))

(declare-fun c!538075 () Bool)

(assert (=> d!877222 (= c!538075 ((_ is Nil!36101) lt!1079879))))

(assert (=> d!877222 (= (++!8650 lt!1079879 (++!8650 lt!1079883 lt!1079880)) lt!1081239)))

(declare-fun b!3203813 () Bool)

(assert (=> b!3203813 (= e!1997477 (Cons!36101 (h!41521 lt!1079879) (++!8650 (t!237476 lt!1079879) (++!8650 lt!1079883 lt!1079880))))))

(declare-fun b!3203815 () Bool)

(assert (=> b!3203815 (= e!1997476 (or (not (= (++!8650 lt!1079883 lt!1079880) Nil!36101)) (= lt!1081239 lt!1079879)))))

(declare-fun b!3203814 () Bool)

(declare-fun res!1303733 () Bool)

(assert (=> b!3203814 (=> (not res!1303733) (not e!1997476))))

(assert (=> b!3203814 (= res!1303733 (= (size!27191 lt!1081239) (+ (size!27191 lt!1079879) (size!27191 (++!8650 lt!1079883 lt!1079880)))))))

(declare-fun b!3203812 () Bool)

(assert (=> b!3203812 (= e!1997477 (++!8650 lt!1079883 lt!1079880))))

(assert (= (and d!877222 c!538075) b!3203812))

(assert (= (and d!877222 (not c!538075)) b!3203813))

(assert (= (and d!877222 res!1303732) b!3203814))

(assert (= (and b!3203814 res!1303733) b!3203815))

(declare-fun m!3468419 () Bool)

(assert (=> d!877222 m!3468419))

(assert (=> d!877222 m!3464735))

(assert (=> d!877222 m!3463479))

(declare-fun m!3468421 () Bool)

(assert (=> d!877222 m!3468421))

(assert (=> b!3203813 m!3463479))

(declare-fun m!3468423 () Bool)

(assert (=> b!3203813 m!3468423))

(declare-fun m!3468425 () Bool)

(assert (=> b!3203814 m!3468425))

(assert (=> b!3203814 m!3463549))

(assert (=> b!3203814 m!3463479))

(declare-fun m!3468427 () Bool)

(assert (=> b!3203814 m!3468427))

(assert (=> d!876006 d!877222))

(assert (=> d!876006 d!875998))

(assert (=> d!876006 d!876046))

(assert (=> b!3201960 d!875960))

(declare-fun d!877224 () Bool)

(declare-fun lt!1081240 () Bool)

(assert (=> d!877224 (= lt!1081240 (isEmpty!20192 (list!12833 (_1!20873 lt!1080196))))))

(assert (=> d!877224 (= lt!1081240 (isEmpty!20193 (c!537388 (_1!20873 lt!1080196))))))

(assert (=> d!877224 (= (isEmpty!20180 (_1!20873 lt!1080196)) lt!1081240)))

(declare-fun bs!541161 () Bool)

(assert (= bs!541161 d!877224))

(assert (=> bs!541161 m!3464761))

(assert (=> bs!541161 m!3464761))

(declare-fun m!3468429 () Bool)

(assert (=> bs!541161 m!3468429))

(declare-fun m!3468431 () Bool)

(assert (=> bs!541161 m!3468431))

(assert (=> b!3201910 d!877224))

(declare-fun d!877226 () Bool)

(assert (=> d!877226 (= (inv!17 (value!168831 separatorToken!241)) (= (charsToBigInt!1 (text!38500 (value!168831 separatorToken!241))) (value!168823 (value!168831 separatorToken!241))))))

(declare-fun bs!541162 () Bool)

(assert (= bs!541162 d!877226))

(declare-fun m!3468433 () Bool)

(assert (=> bs!541162 m!3468433))

(assert (=> b!3201917 d!877226))

(declare-fun d!877228 () Bool)

(assert (=> d!877228 true))

(declare-fun lt!1081243 () Bool)

(declare-fun rulesValidInductive!1773 (LexerInterface!4795 List!36226) Bool)

(assert (=> d!877228 (= lt!1081243 (rulesValidInductive!1773 thiss!18206 rules!2135))))

(declare-fun lambda!117250 () Int)

(declare-fun forall!7364 (List!36226 Int) Bool)

(assert (=> d!877228 (= lt!1081243 (forall!7364 rules!2135 lambda!117250))))

(assert (=> d!877228 (= (rulesValid!1910 thiss!18206 rules!2135) lt!1081243)))

(declare-fun bs!541163 () Bool)

(assert (= bs!541163 d!877228))

(declare-fun m!3468435 () Bool)

(assert (=> bs!541163 m!3468435))

(declare-fun m!3468437 () Bool)

(assert (=> bs!541163 m!3468437))

(assert (=> d!875758 d!877228))

(declare-fun d!877230 () Bool)

(declare-fun lt!1081244 () Bool)

(assert (=> d!877230 (= lt!1081244 (isEmpty!20186 (list!12831 (_2!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494)))))))))))

(assert (=> d!877230 (= lt!1081244 (isEmpty!20187 (c!537387 (_2!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494)))))))))))

(assert (=> d!877230 (= (isEmpty!20179 (_2!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 (h!41523 (t!237478 tokens!494))))))) lt!1081244)))

(declare-fun bs!541164 () Bool)

(assert (= bs!541164 d!877230))

(declare-fun m!3468439 () Bool)

(assert (=> bs!541164 m!3468439))

(assert (=> bs!541164 m!3468439))

(declare-fun m!3468441 () Bool)

(assert (=> bs!541164 m!3468441))

(declare-fun m!3468443 () Bool)

(assert (=> bs!541164 m!3468443))

(assert (=> b!3201519 d!877230))

(assert (=> b!3201519 d!877110))

(assert (=> b!3201519 d!877112))

(assert (=> b!3201519 d!875882))

(assert (=> b!3201828 d!876452))

(assert (=> b!3201828 d!876454))

(declare-fun b!3203818 () Bool)

(declare-fun lt!1081246 () Unit!50516)

(declare-fun lt!1081245 () Unit!50516)

(assert (=> b!3203818 (= lt!1081246 lt!1081245)))

(assert (=> b!3203818 (rulesInvariant!4192 thiss!18206 (t!237477 (t!237477 rules!2135)))))

(assert (=> b!3203818 (= lt!1081245 (lemmaInvariantOnRulesThenOnTail!346 thiss!18206 (h!41522 (t!237477 rules!2135)) (t!237477 (t!237477 rules!2135))))))

(declare-fun e!1997480 () Option!7107)

(assert (=> b!3203818 (= e!1997480 (getRuleFromTag!911 thiss!18206 (t!237477 (t!237477 rules!2135)) (tag!5728 (rule!7642 separatorToken!241))))))

(declare-fun b!3203819 () Bool)

(assert (=> b!3203819 (= e!1997480 None!7106)))

(declare-fun b!3203820 () Bool)

(declare-fun e!1997481 () Bool)

(declare-fun lt!1081247 () Option!7107)

(assert (=> b!3203820 (= e!1997481 (= (tag!5728 (get!11486 lt!1081247)) (tag!5728 (rule!7642 separatorToken!241))))))

(declare-fun b!3203821 () Bool)

(declare-fun e!1997479 () Option!7107)

(assert (=> b!3203821 (= e!1997479 (Some!7106 (h!41522 (t!237477 rules!2135))))))

(declare-fun b!3203822 () Bool)

(declare-fun e!1997478 () Bool)

(assert (=> b!3203822 (= e!1997478 e!1997481)))

(declare-fun res!1303735 () Bool)

(assert (=> b!3203822 (=> (not res!1303735) (not e!1997481))))

(assert (=> b!3203822 (= res!1303735 (contains!6427 (t!237477 rules!2135) (get!11486 lt!1081247)))))

(declare-fun d!877232 () Bool)

(assert (=> d!877232 e!1997478))

(declare-fun res!1303734 () Bool)

(assert (=> d!877232 (=> res!1303734 e!1997478)))

(assert (=> d!877232 (= res!1303734 (isEmpty!20189 lt!1081247))))

(assert (=> d!877232 (= lt!1081247 e!1997479)))

(declare-fun c!538076 () Bool)

(assert (=> d!877232 (= c!538076 (and ((_ is Cons!36102) (t!237477 rules!2135)) (= (tag!5728 (h!41522 (t!237477 rules!2135))) (tag!5728 (rule!7642 separatorToken!241)))))))

(assert (=> d!877232 (rulesInvariant!4192 thiss!18206 (t!237477 rules!2135))))

(assert (=> d!877232 (= (getRuleFromTag!911 thiss!18206 (t!237477 rules!2135) (tag!5728 (rule!7642 separatorToken!241))) lt!1081247)))

(declare-fun b!3203823 () Bool)

(assert (=> b!3203823 (= e!1997479 e!1997480)))

(declare-fun c!538077 () Bool)

(assert (=> b!3203823 (= c!538077 (and ((_ is Cons!36102) (t!237477 rules!2135)) (not (= (tag!5728 (h!41522 (t!237477 rules!2135))) (tag!5728 (rule!7642 separatorToken!241))))))))

(assert (= (and d!877232 c!538076) b!3203821))

(assert (= (and d!877232 (not c!538076)) b!3203823))

(assert (= (and b!3203823 c!538077) b!3203818))

(assert (= (and b!3203823 (not c!538077)) b!3203819))

(assert (= (and d!877232 (not res!1303734)) b!3203822))

(assert (= (and b!3203822 res!1303735) b!3203820))

(assert (=> b!3203818 m!3466117))

(assert (=> b!3203818 m!3466119))

(declare-fun m!3468445 () Bool)

(assert (=> b!3203818 m!3468445))

(declare-fun m!3468447 () Bool)

(assert (=> b!3203820 m!3468447))

(assert (=> b!3203822 m!3468447))

(assert (=> b!3203822 m!3468447))

(declare-fun m!3468449 () Bool)

(assert (=> b!3203822 m!3468449))

(declare-fun m!3468451 () Bool)

(assert (=> d!877232 m!3468451))

(assert (=> d!877232 m!3464495))

(assert (=> b!3201828 d!877232))

(assert (=> b!3201632 d!876196))

(declare-fun d!877234 () Bool)

(declare-fun lt!1081248 () Int)

(assert (=> d!877234 (>= lt!1081248 0)))

(declare-fun e!1997482 () Int)

(assert (=> d!877234 (= lt!1081248 e!1997482)))

(declare-fun c!538078 () Bool)

(assert (=> d!877234 (= c!538078 ((_ is Nil!36101) (originalCharacters!5920 (_1!20874 (get!11488 lt!1080102)))))))

(assert (=> d!877234 (= (size!27191 (originalCharacters!5920 (_1!20874 (get!11488 lt!1080102)))) lt!1081248)))

(declare-fun b!3203824 () Bool)

(assert (=> b!3203824 (= e!1997482 0)))

(declare-fun b!3203825 () Bool)

(assert (=> b!3203825 (= e!1997482 (+ 1 (size!27191 (t!237476 (originalCharacters!5920 (_1!20874 (get!11488 lt!1080102)))))))))

(assert (= (and d!877234 c!538078) b!3203824))

(assert (= (and d!877234 (not c!538078)) b!3203825))

(declare-fun m!3468453 () Bool)

(assert (=> b!3203825 m!3468453))

(assert (=> b!3201632 d!877234))

(assert (=> d!875968 d!877164))

(declare-fun d!877236 () Bool)

(declare-fun lt!1081252 () List!36225)

(assert (=> d!877236 (= lt!1081252 (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) (printList!1345 thiss!18206 (dropList!1074 lt!1079897 0))))))

(declare-fun e!1997483 () List!36225)

(assert (=> d!877236 (= lt!1081252 e!1997483)))

(declare-fun c!538079 () Bool)

(assert (=> d!877236 (= c!538079 ((_ is Cons!36103) (dropList!1074 lt!1079897 0)))))

(assert (=> d!877236 (= (printListTailRec!557 thiss!18206 (dropList!1074 lt!1079897 0) (list!12831 (BalanceConc!21189 Empty!10787))) lt!1081252)))

(declare-fun b!3203826 () Bool)

(assert (=> b!3203826 (= e!1997483 (printListTailRec!557 thiss!18206 (t!237478 (dropList!1074 lt!1079897 0)) (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) (list!12831 (charsOf!3222 (h!41523 (dropList!1074 lt!1079897 0)))))))))

(declare-fun lt!1081249 () List!36225)

(assert (=> b!3203826 (= lt!1081249 (list!12831 (charsOf!3222 (h!41523 (dropList!1074 lt!1079897 0)))))))

(declare-fun lt!1081251 () List!36225)

(assert (=> b!3203826 (= lt!1081251 (printList!1345 thiss!18206 (t!237478 (dropList!1074 lt!1079897 0))))))

(declare-fun lt!1081253 () Unit!50516)

(assert (=> b!3203826 (= lt!1081253 (lemmaConcatAssociativity!1724 (list!12831 (BalanceConc!21189 Empty!10787)) lt!1081249 lt!1081251))))

(assert (=> b!3203826 (= (++!8650 (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) lt!1081249) lt!1081251) (++!8650 (list!12831 (BalanceConc!21189 Empty!10787)) (++!8650 lt!1081249 lt!1081251)))))

(declare-fun lt!1081250 () Unit!50516)

(assert (=> b!3203826 (= lt!1081250 lt!1081253)))

(declare-fun b!3203827 () Bool)

(assert (=> b!3203827 (= e!1997483 (list!12831 (BalanceConc!21189 Empty!10787)))))

(assert (= (and d!877236 c!538079) b!3203826))

(assert (= (and d!877236 (not c!538079)) b!3203827))

(assert (=> d!877236 m!3464549))

(declare-fun m!3468455 () Bool)

(assert (=> d!877236 m!3468455))

(assert (=> d!877236 m!3463751))

(assert (=> d!877236 m!3468455))

(declare-fun m!3468457 () Bool)

(assert (=> d!877236 m!3468457))

(declare-fun m!3468459 () Bool)

(assert (=> b!3203826 m!3468459))

(declare-fun m!3468461 () Bool)

(assert (=> b!3203826 m!3468461))

(declare-fun m!3468463 () Bool)

(assert (=> b!3203826 m!3468463))

(assert (=> b!3203826 m!3463751))

(declare-fun m!3468465 () Bool)

(assert (=> b!3203826 m!3468465))

(declare-fun m!3468467 () Bool)

(assert (=> b!3203826 m!3468467))

(declare-fun m!3468469 () Bool)

(assert (=> b!3203826 m!3468469))

(assert (=> b!3203826 m!3463751))

(assert (=> b!3203826 m!3468467))

(declare-fun m!3468471 () Bool)

(assert (=> b!3203826 m!3468471))

(declare-fun m!3468473 () Bool)

(assert (=> b!3203826 m!3468473))

(declare-fun m!3468475 () Bool)

(assert (=> b!3203826 m!3468475))

(assert (=> b!3203826 m!3463751))

(assert (=> b!3203826 m!3468475))

(declare-fun m!3468477 () Bool)

(assert (=> b!3203826 m!3468477))

(assert (=> b!3203826 m!3468459))

(assert (=> b!3203826 m!3463751))

(assert (=> b!3203826 m!3468461))

(assert (=> b!3203826 m!3468471))

(assert (=> d!875968 d!877236))

(assert (=> d!875968 d!876244))

(declare-fun d!877238 () Bool)

(assert (=> d!877238 (= (list!12831 lt!1080165) (list!12834 (c!537387 lt!1080165)))))

(declare-fun bs!541165 () Bool)

(assert (= bs!541165 d!877238))

(declare-fun m!3468479 () Bool)

(assert (=> bs!541165 m!3468479))

(assert (=> d!875968 d!877238))

(declare-fun d!877240 () Bool)

(assert (=> d!877240 (= (dropList!1074 lt!1079897 0) (drop!1857 (list!12837 (c!537388 lt!1079897)) 0))))

(declare-fun bs!541166 () Bool)

(assert (= bs!541166 d!877240))

(assert (=> bs!541166 m!3465421))

(assert (=> bs!541166 m!3465421))

(declare-fun m!3468481 () Bool)

(assert (=> bs!541166 m!3468481))

(assert (=> d!875968 d!877240))

(declare-fun d!877242 () Bool)

(assert (=> d!877242 (= (isEmpty!20192 (list!12833 (_1!20873 (lex!2125 thiss!18206 rules!2135 lt!1079875)))) ((_ is Nil!36103) (list!12833 (_1!20873 (lex!2125 thiss!18206 rules!2135 lt!1079875)))))))

(assert (=> d!876008 d!877242))

(declare-fun d!877244 () Bool)

(assert (=> d!877244 (= (list!12833 (_1!20873 (lex!2125 thiss!18206 rules!2135 lt!1079875))) (list!12837 (c!537388 (_1!20873 (lex!2125 thiss!18206 rules!2135 lt!1079875)))))))

(declare-fun bs!541167 () Bool)

(assert (= bs!541167 d!877244))

(declare-fun m!3468483 () Bool)

(assert (=> bs!541167 m!3468483))

(assert (=> d!876008 d!877244))

(declare-fun lt!1081256 () Bool)

(declare-fun d!877246 () Bool)

(assert (=> d!877246 (= lt!1081256 (isEmpty!20192 (list!12837 (c!537388 (_1!20873 (lex!2125 thiss!18206 rules!2135 lt!1079875))))))))

(assert (=> d!877246 (= lt!1081256 (= (size!27197 (c!537388 (_1!20873 (lex!2125 thiss!18206 rules!2135 lt!1079875)))) 0))))

(assert (=> d!877246 (= (isEmpty!20193 (c!537388 (_1!20873 (lex!2125 thiss!18206 rules!2135 lt!1079875)))) lt!1081256)))

(declare-fun bs!541168 () Bool)

(assert (= bs!541168 d!877246))

(assert (=> bs!541168 m!3468483))

(assert (=> bs!541168 m!3468483))

(declare-fun m!3468485 () Bool)

(assert (=> bs!541168 m!3468485))

(declare-fun m!3468487 () Bool)

(assert (=> bs!541168 m!3468487))

(assert (=> d!876008 d!877246))

(declare-fun d!877248 () Bool)

(assert (=> d!877248 (= (list!12833 (_1!20873 lt!1080158)) (list!12837 (c!537388 (_1!20873 lt!1080158))))))

(declare-fun bs!541169 () Bool)

(assert (= bs!541169 d!877248))

(declare-fun m!3468489 () Bool)

(assert (=> bs!541169 m!3468489))

(assert (=> b!3201848 d!877248))

(assert (=> b!3201848 d!877090))

(assert (=> b!3201848 d!877092))

(declare-fun b!3203828 () Bool)

(declare-fun e!1997484 () List!36225)

(assert (=> b!3203828 (= e!1997484 Nil!36101)))

(declare-fun b!3203829 () Bool)

(declare-fun e!1997485 () List!36225)

(assert (=> b!3203829 (= e!1997484 e!1997485)))

(declare-fun c!538081 () Bool)

(assert (=> b!3203829 (= c!538081 ((_ is Leaf!17001) (c!537387 (charsOf!3222 (h!41523 (t!237478 tokens!494))))))))

(declare-fun d!877250 () Bool)

(declare-fun c!538080 () Bool)

(assert (=> d!877250 (= c!538080 ((_ is Empty!10787) (c!537387 (charsOf!3222 (h!41523 (t!237478 tokens!494))))))))

(assert (=> d!877250 (= (list!12834 (c!537387 (charsOf!3222 (h!41523 (t!237478 tokens!494))))) e!1997484)))

(declare-fun b!3203830 () Bool)

(assert (=> b!3203830 (= e!1997485 (list!12838 (xs!13905 (c!537387 (charsOf!3222 (h!41523 (t!237478 tokens!494)))))))))

(declare-fun b!3203831 () Bool)

(assert (=> b!3203831 (= e!1997485 (++!8650 (list!12834 (left!28052 (c!537387 (charsOf!3222 (h!41523 (t!237478 tokens!494)))))) (list!12834 (right!28382 (c!537387 (charsOf!3222 (h!41523 (t!237478 tokens!494))))))))))

(assert (= (and d!877250 c!538080) b!3203828))

(assert (= (and d!877250 (not c!538080)) b!3203829))

(assert (= (and b!3203829 c!538081) b!3203830))

(assert (= (and b!3203829 (not c!538081)) b!3203831))

(declare-fun m!3468491 () Bool)

(assert (=> b!3203830 m!3468491))

(declare-fun m!3468493 () Bool)

(assert (=> b!3203831 m!3468493))

(declare-fun m!3468495 () Bool)

(assert (=> b!3203831 m!3468495))

(assert (=> b!3203831 m!3468493))

(assert (=> b!3203831 m!3468495))

(declare-fun m!3468497 () Bool)

(assert (=> b!3203831 m!3468497))

(assert (=> d!875990 d!877250))

(declare-fun d!877252 () Bool)

(declare-fun c!538082 () Bool)

(assert (=> d!877252 (= c!538082 ((_ is Nil!36101) lt!1080208))))

(declare-fun e!1997486 () (InoxSet C!20116))

(assert (=> d!877252 (= (content!4877 lt!1080208) e!1997486)))

(declare-fun b!3203832 () Bool)

(assert (=> b!3203832 (= e!1997486 ((as const (Array C!20116 Bool)) false))))

(declare-fun b!3203833 () Bool)

(assert (=> b!3203833 (= e!1997486 ((_ map or) (store ((as const (Array C!20116 Bool)) false) (h!41521 lt!1080208) true) (content!4877 (t!237476 lt!1080208))))))

(assert (= (and d!877252 c!538082) b!3203832))

(assert (= (and d!877252 (not c!538082)) b!3203833))

(declare-fun m!3468499 () Bool)

(assert (=> b!3203833 m!3468499))

(declare-fun m!3468501 () Bool)

(assert (=> b!3203833 m!3468501))

(assert (=> d!876048 d!877252))

(assert (=> d!876048 d!876668))

(assert (=> d!876048 d!877038))

(declare-fun d!877254 () Bool)

(assert (=> d!877254 (= (list!12831 (_2!20873 lt!1080166)) (list!12834 (c!537387 (_2!20873 lt!1080166))))))

(declare-fun bs!541170 () Bool)

(assert (= bs!541170 d!877254))

(declare-fun m!3468503 () Bool)

(assert (=> bs!541170 m!3468503))

(assert (=> b!3201853 d!877254))

(assert (=> b!3201853 d!876158))

(assert (=> b!3201853 d!876186))

(declare-fun d!877256 () Bool)

(declare-fun lt!1081257 () Token!9778)

(assert (=> d!877256 (= lt!1081257 (apply!8152 (list!12833 (_1!20873 lt!1080205)) 0))))

(assert (=> d!877256 (= lt!1081257 (apply!8153 (c!537388 (_1!20873 lt!1080205)) 0))))

(declare-fun e!1997487 () Bool)

(assert (=> d!877256 e!1997487))

(declare-fun res!1303736 () Bool)

(assert (=> d!877256 (=> (not res!1303736) (not e!1997487))))

(assert (=> d!877256 (= res!1303736 (<= 0 0))))

(assert (=> d!877256 (= (apply!8150 (_1!20873 lt!1080205) 0) lt!1081257)))

(declare-fun b!3203834 () Bool)

(assert (=> b!3203834 (= e!1997487 (< 0 (size!27190 (_1!20873 lt!1080205))))))

(assert (= (and d!877256 res!1303736) b!3203834))

(assert (=> d!877256 m!3468345))

(assert (=> d!877256 m!3468345))

(declare-fun m!3468505 () Bool)

(assert (=> d!877256 m!3468505))

(declare-fun m!3468507 () Bool)

(assert (=> d!877256 m!3468507))

(assert (=> b!3203834 m!3464843))

(assert (=> b!3201963 d!877256))

(declare-fun d!877258 () Bool)

(assert (=> d!877258 (= (list!12833 (singletonSeq!2302 separatorToken!241)) (list!12837 (c!537388 (singletonSeq!2302 separatorToken!241))))))

(declare-fun bs!541171 () Bool)

(assert (= bs!541171 d!877258))

(declare-fun m!3468509 () Bool)

(assert (=> bs!541171 m!3468509))

(assert (=> d!876018 d!877258))

(declare-fun d!877260 () Bool)

(declare-fun lt!1081258 () Int)

(assert (=> d!877260 (= lt!1081258 (size!27196 (list!12833 (_1!20873 lt!1080197))))))

(assert (=> d!877260 (= lt!1081258 (size!27197 (c!537388 (_1!20873 lt!1080197))))))

(assert (=> d!877260 (= (size!27190 (_1!20873 lt!1080197)) lt!1081258)))

(declare-fun bs!541172 () Bool)

(assert (= bs!541172 d!877260))

(declare-fun m!3468511 () Bool)

(assert (=> bs!541172 m!3468511))

(assert (=> bs!541172 m!3468511))

(declare-fun m!3468513 () Bool)

(assert (=> bs!541172 m!3468513))

(declare-fun m!3468515 () Bool)

(assert (=> bs!541172 m!3468515))

(assert (=> d!876018 d!877260))

(declare-fun d!877262 () Bool)

(assert (=> d!877262 (= (list!12833 (_1!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241))))) (list!12837 (c!537388 (_1!20873 (lex!2125 thiss!18206 rules!2135 (print!1860 thiss!18206 (singletonSeq!2302 separatorToken!241)))))))))

(declare-fun bs!541173 () Bool)

(assert (= bs!541173 d!877262))

(declare-fun m!3468517 () Bool)

(assert (=> bs!541173 m!3468517))

(assert (=> d!876018 d!877262))

(assert (=> d!876018 d!875958))

(assert (=> d!876018 d!877012))

(assert (=> d!876018 d!876060))

(assert (=> d!876018 d!877010))

(assert (=> b!3201940 d!875960))

(declare-fun d!877264 () Bool)

(assert (=> d!877264 (= (list!12831 lt!1080209) (list!12834 (c!537387 lt!1080209)))))

(declare-fun bs!541174 () Bool)

(assert (= bs!541174 d!877264))

(declare-fun m!3468519 () Bool)

(assert (=> bs!541174 m!3468519))

(assert (=> d!876054 d!877264))

(declare-fun d!877266 () Bool)

(declare-fun c!538083 () Bool)

(assert (=> d!877266 (= c!538083 ((_ is Nil!36101) lt!1080187))))

(declare-fun e!1997488 () (InoxSet C!20116))

(assert (=> d!877266 (= (content!4877 lt!1080187) e!1997488)))

(declare-fun b!3203835 () Bool)

(assert (=> b!3203835 (= e!1997488 ((as const (Array C!20116 Bool)) false))))

(declare-fun b!3203836 () Bool)

(assert (=> b!3203836 (= e!1997488 ((_ map or) (store ((as const (Array C!20116 Bool)) false) (h!41521 lt!1080187) true) (content!4877 (t!237476 lt!1080187))))))

(assert (= (and d!877266 c!538083) b!3203835))

(assert (= (and d!877266 (not c!538083)) b!3203836))

(declare-fun m!3468521 () Bool)

(assert (=> b!3203836 m!3468521))

(declare-fun m!3468523 () Bool)

(assert (=> b!3203836 m!3468523))

(assert (=> d!875998 d!877266))

(assert (=> d!875998 d!877038))

(assert (=> d!875998 d!876212))

(declare-fun bm!231954 () Bool)

(declare-fun call!231959 () Bool)

(assert (=> bm!231954 (= call!231959 (isEmpty!20186 (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102))))))))

(declare-fun b!3203837 () Bool)

(declare-fun res!1303742 () Bool)

(declare-fun e!1997489 () Bool)

(assert (=> b!3203837 (=> res!1303742 e!1997489)))

(assert (=> b!3203837 (= res!1303742 (not (isEmpty!20186 (tail!5205 (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102))))))))))

(declare-fun b!3203838 () Bool)

(declare-fun e!1997493 () Bool)

(assert (=> b!3203838 (= e!1997493 (nullable!3394 (regex!5206 (rule!7642 (h!41523 tokens!494)))))))

(declare-fun d!877268 () Bool)

(declare-fun e!1997491 () Bool)

(assert (=> d!877268 e!1997491))

(declare-fun c!538084 () Bool)

(assert (=> d!877268 (= c!538084 ((_ is EmptyExpr!9965) (regex!5206 (rule!7642 (h!41523 tokens!494)))))))

(declare-fun lt!1081259 () Bool)

(assert (=> d!877268 (= lt!1081259 e!1997493)))

(declare-fun c!538085 () Bool)

(assert (=> d!877268 (= c!538085 (isEmpty!20186 (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102))))))))

(assert (=> d!877268 (validRegex!4548 (regex!5206 (rule!7642 (h!41523 tokens!494))))))

(assert (=> d!877268 (= (matchR!4599 (regex!5206 (rule!7642 (h!41523 tokens!494))) (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102))))) lt!1081259)))

(declare-fun b!3203839 () Bool)

(declare-fun e!1997490 () Bool)

(declare-fun e!1997495 () Bool)

(assert (=> b!3203839 (= e!1997490 e!1997495)))

(declare-fun res!1303737 () Bool)

(assert (=> b!3203839 (=> (not res!1303737) (not e!1997495))))

(assert (=> b!3203839 (= res!1303737 (not lt!1081259))))

(declare-fun b!3203840 () Bool)

(declare-fun e!1997494 () Bool)

(assert (=> b!3203840 (= e!1997494 (= (head!7021 (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102))))) (c!537386 (regex!5206 (rule!7642 (h!41523 tokens!494))))))))

(declare-fun b!3203841 () Bool)

(declare-fun res!1303739 () Bool)

(assert (=> b!3203841 (=> (not res!1303739) (not e!1997494))))

(assert (=> b!3203841 (= res!1303739 (isEmpty!20186 (tail!5205 (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102)))))))))

(declare-fun b!3203842 () Bool)

(assert (=> b!3203842 (= e!1997493 (matchR!4599 (derivativeStep!2947 (regex!5206 (rule!7642 (h!41523 tokens!494))) (head!7021 (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102)))))) (tail!5205 (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102)))))))))

(declare-fun b!3203843 () Bool)

(declare-fun res!1303740 () Bool)

(assert (=> b!3203843 (=> res!1303740 e!1997490)))

(assert (=> b!3203843 (= res!1303740 e!1997494)))

(declare-fun res!1303741 () Bool)

(assert (=> b!3203843 (=> (not res!1303741) (not e!1997494))))

(assert (=> b!3203843 (= res!1303741 lt!1081259)))

(declare-fun b!3203844 () Bool)

(assert (=> b!3203844 (= e!1997495 e!1997489)))

(declare-fun res!1303738 () Bool)

(assert (=> b!3203844 (=> res!1303738 e!1997489)))

(assert (=> b!3203844 (= res!1303738 call!231959)))

(declare-fun b!3203845 () Bool)

(declare-fun e!1997492 () Bool)

(assert (=> b!3203845 (= e!1997491 e!1997492)))

(declare-fun c!538086 () Bool)

(assert (=> b!3203845 (= c!538086 ((_ is EmptyLang!9965) (regex!5206 (rule!7642 (h!41523 tokens!494)))))))

(declare-fun b!3203846 () Bool)

(assert (=> b!3203846 (= e!1997492 (not lt!1081259))))

(declare-fun b!3203847 () Bool)

(assert (=> b!3203847 (= e!1997491 (= lt!1081259 call!231959))))

(declare-fun b!3203848 () Bool)

(declare-fun res!1303743 () Bool)

(assert (=> b!3203848 (=> res!1303743 e!1997490)))

(assert (=> b!3203848 (= res!1303743 (not ((_ is ElementMatch!9965) (regex!5206 (rule!7642 (h!41523 tokens!494))))))))

(assert (=> b!3203848 (= e!1997492 e!1997490)))

(declare-fun b!3203849 () Bool)

(declare-fun res!1303744 () Bool)

(assert (=> b!3203849 (=> (not res!1303744) (not e!1997494))))

(assert (=> b!3203849 (= res!1303744 (not call!231959))))

(declare-fun b!3203850 () Bool)

(assert (=> b!3203850 (= e!1997489 (not (= (head!7021 (list!12831 (charsOf!3222 (_1!20874 (get!11488 lt!1080102))))) (c!537386 (regex!5206 (rule!7642 (h!41523 tokens!494)))))))))

(assert (= (and d!877268 c!538085) b!3203838))

(assert (= (and d!877268 (not c!538085)) b!3203842))

(assert (= (and d!877268 c!538084) b!3203847))

(assert (= (and d!877268 (not c!538084)) b!3203845))

(assert (= (and b!3203845 c!538086) b!3203846))

(assert (= (and b!3203845 (not c!538086)) b!3203848))

(assert (= (and b!3203848 (not res!1303743)) b!3203843))

(assert (= (and b!3203843 res!1303741) b!3203849))

(assert (= (and b!3203849 res!1303744) b!3203841))

(assert (= (and b!3203841 res!1303739) b!3203840))

(assert (= (and b!3203843 (not res!1303740)) b!3203839))

(assert (= (and b!3203839 res!1303737) b!3203844))

(assert (= (and b!3203844 (not res!1303738)) b!3203837))

(assert (= (and b!3203837 (not res!1303742)) b!3203850))

(assert (= (or b!3203847 b!3203844 b!3203849) bm!231954))

(assert (=> b!3203850 m!3464251))

(declare-fun m!3468525 () Bool)

(assert (=> b!3203850 m!3468525))

(assert (=> b!3203842 m!3464251))

(assert (=> b!3203842 m!3468525))

(assert (=> b!3203842 m!3468525))

(declare-fun m!3468527 () Bool)

(assert (=> b!3203842 m!3468527))

(assert (=> b!3203842 m!3464251))

(declare-fun m!3468529 () Bool)

(assert (=> b!3203842 m!3468529))

(assert (=> b!3203842 m!3468527))

(assert (=> b!3203842 m!3468529))

(declare-fun m!3468531 () Bool)

(assert (=> b!3203842 m!3468531))

(assert (=> b!3203841 m!3464251))

(assert (=> b!3203841 m!3468529))

(assert (=> b!3203841 m!3468529))

(declare-fun m!3468533 () Bool)

(assert (=> b!3203841 m!3468533))

(assert (=> d!877268 m!3464251))

(declare-fun m!3468535 () Bool)

(assert (=> d!877268 m!3468535))

(assert (=> d!877268 m!3467349))

(assert (=> b!3203837 m!3464251))

(assert (=> b!3203837 m!3468529))

(assert (=> b!3203837 m!3468529))

(assert (=> b!3203837 m!3468533))

(assert (=> bm!231954 m!3464251))

(assert (=> bm!231954 m!3468535))

(assert (=> b!3203840 m!3464251))

(assert (=> b!3203840 m!3468525))

(assert (=> b!3203838 m!3467309))

(assert (=> b!3201628 d!877268))

(assert (=> b!3201628 d!877058))

(assert (=> b!3201628 d!877060))

(assert (=> b!3201628 d!876196))

(declare-fun d!877270 () Bool)

(assert (=> d!877270 (= (inv!48957 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494)))) (isBalanced!3211 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494))))))))

(declare-fun bs!541175 () Bool)

(assert (= bs!541175 d!877270))

(declare-fun m!3468537 () Bool)

(assert (=> bs!541175 m!3468537))

(assert (=> tb!156845 d!877270))

(assert (=> b!3201951 d!877170))

(assert (=> b!3201951 d!877108))

(declare-fun d!877272 () Bool)

(assert (=> d!877272 (= (list!12831 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241))) (list!12834 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241)))))))

(declare-fun bs!541176 () Bool)

(assert (= bs!541176 d!877272))

(declare-fun m!3468539 () Bool)

(assert (=> bs!541176 m!3468539))

(assert (=> b!3201981 d!877272))

(declare-fun d!877274 () Bool)

(declare-fun c!538087 () Bool)

(assert (=> d!877274 (= c!538087 ((_ is Nil!36101) (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241)))))))

(declare-fun e!1997496 () (InoxSet C!20116))

(assert (=> d!877274 (= (content!4877 (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241)))) e!1997496)))

(declare-fun b!3203851 () Bool)

(assert (=> b!3203851 (= e!1997496 ((as const (Array C!20116 Bool)) false))))

(declare-fun b!3203852 () Bool)

(assert (=> b!3203852 (= e!1997496 ((_ map or) (store ((as const (Array C!20116 Bool)) false) (h!41521 (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241)))) true) (content!4877 (t!237476 (usedCharacters!522 (regex!5206 (rule!7642 separatorToken!241)))))))))

(assert (= (and d!877274 c!538087) b!3203851))

(assert (= (and d!877274 (not c!538087)) b!3203852))

(declare-fun m!3468541 () Bool)

(assert (=> b!3203852 m!3468541))

(assert (=> b!3203852 m!3465313))

(assert (=> d!875892 d!877274))

(declare-fun bs!541177 () Bool)

(declare-fun d!877276 () Bool)

(assert (= bs!541177 (and d!877276 d!876964)))

(declare-fun lambda!117251 () Int)

(assert (=> bs!541177 (= (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241)))) (= lambda!117251 lambda!117245))))

(declare-fun bs!541178 () Bool)

(assert (= bs!541178 (and d!877276 d!877146)))

(assert (=> bs!541178 (= (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toValue!7282 (transformation!5206 (h!41522 rules!2135)))) (= lambda!117251 lambda!117246))))

(assert (=> d!877276 true))

(assert (=> d!877276 (< (dynLambda!14533 order!18349 (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) (dynLambda!14545 order!18361 lambda!117251))))

(assert (=> d!877276 (= (equivClasses!2050 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) (Forall2!860 lambda!117251))))

(declare-fun bs!541179 () Bool)

(assert (= bs!541179 d!877276))

(declare-fun m!3468543 () Bool)

(assert (=> bs!541179 m!3468543))

(assert (=> b!3201946 d!877276))

(declare-fun b!3203853 () Bool)

(declare-fun e!1997497 () List!36225)

(assert (=> b!3203853 (= e!1997497 Nil!36101)))

(declare-fun b!3203854 () Bool)

(declare-fun e!1997498 () List!36225)

(assert (=> b!3203854 (= e!1997497 e!1997498)))

(declare-fun c!538089 () Bool)

(assert (=> b!3203854 (= c!538089 ((_ is Leaf!17001) (c!537387 (charsOf!3222 (h!41523 tokens!494)))))))

(declare-fun d!877278 () Bool)

(declare-fun c!538088 () Bool)

(assert (=> d!877278 (= c!538088 ((_ is Empty!10787) (c!537387 (charsOf!3222 (h!41523 tokens!494)))))))

(assert (=> d!877278 (= (list!12834 (c!537387 (charsOf!3222 (h!41523 tokens!494)))) e!1997497)))

(declare-fun b!3203855 () Bool)

(assert (=> b!3203855 (= e!1997498 (list!12838 (xs!13905 (c!537387 (charsOf!3222 (h!41523 tokens!494))))))))

(declare-fun b!3203856 () Bool)

(assert (=> b!3203856 (= e!1997498 (++!8650 (list!12834 (left!28052 (c!537387 (charsOf!3222 (h!41523 tokens!494))))) (list!12834 (right!28382 (c!537387 (charsOf!3222 (h!41523 tokens!494)))))))))

(assert (= (and d!877278 c!538088) b!3203853))

(assert (= (and d!877278 (not c!538088)) b!3203854))

(assert (= (and b!3203854 c!538089) b!3203855))

(assert (= (and b!3203854 (not c!538089)) b!3203856))

(declare-fun m!3468545 () Bool)

(assert (=> b!3203855 m!3468545))

(declare-fun m!3468547 () Bool)

(assert (=> b!3203856 m!3468547))

(declare-fun m!3468549 () Bool)

(assert (=> b!3203856 m!3468549))

(assert (=> b!3203856 m!3468547))

(assert (=> b!3203856 m!3468549))

(declare-fun m!3468551 () Bool)

(assert (=> b!3203856 m!3468551))

(assert (=> d!876052 d!877278))

(assert (=> d!876036 d!876470))

(assert (=> d!876036 d!877102))

(declare-fun d!877280 () Bool)

(declare-fun res!1303749 () Bool)

(declare-fun e!1997503 () Bool)

(assert (=> d!877280 (=> res!1303749 e!1997503)))

(assert (=> d!877280 (= res!1303749 ((_ is Nil!36102) rules!2135))))

(assert (=> d!877280 (= (noDuplicateTag!1906 thiss!18206 rules!2135 Nil!36104) e!1997503)))

(declare-fun b!3203861 () Bool)

(declare-fun e!1997504 () Bool)

(assert (=> b!3203861 (= e!1997503 e!1997504)))

(declare-fun res!1303750 () Bool)

(assert (=> b!3203861 (=> (not res!1303750) (not e!1997504))))

(declare-fun contains!6429 (List!36228 String!40514) Bool)

(assert (=> b!3203861 (= res!1303750 (not (contains!6429 Nil!36104 (tag!5728 (h!41522 rules!2135)))))))

(declare-fun b!3203862 () Bool)

(assert (=> b!3203862 (= e!1997504 (noDuplicateTag!1906 thiss!18206 (t!237477 rules!2135) (Cons!36104 (tag!5728 (h!41522 rules!2135)) Nil!36104)))))

(assert (= (and d!877280 (not res!1303749)) b!3203861))

(assert (= (and b!3203861 res!1303750) b!3203862))

(declare-fun m!3468553 () Bool)

(assert (=> b!3203861 m!3468553))

(declare-fun m!3468555 () Bool)

(assert (=> b!3203862 m!3468555))

(assert (=> b!3201302 d!877280))

(declare-fun b!3203863 () Bool)

(declare-fun res!1303755 () Bool)

(declare-fun e!1997505 () Bool)

(assert (=> b!3203863 (=> (not res!1303755) (not e!1997505))))

(assert (=> b!3203863 (= res!1303755 (not (isEmpty!20193 (left!28053 (c!537388 lt!1080111)))))))

(declare-fun d!877282 () Bool)

(declare-fun res!1303753 () Bool)

(declare-fun e!1997506 () Bool)

(assert (=> d!877282 (=> res!1303753 e!1997506)))

(assert (=> d!877282 (= res!1303753 (not ((_ is Node!10788) (c!537388 lt!1080111))))))

(assert (=> d!877282 (= (isBalanced!3209 (c!537388 lt!1080111)) e!1997506)))

(declare-fun b!3203864 () Bool)

(assert (=> b!3203864 (= e!1997506 e!1997505)))

(declare-fun res!1303752 () Bool)

(assert (=> b!3203864 (=> (not res!1303752) (not e!1997505))))

(assert (=> b!3203864 (= res!1303752 (<= (- 1) (- (height!1546 (left!28053 (c!537388 lt!1080111))) (height!1546 (right!28383 (c!537388 lt!1080111))))))))

(declare-fun b!3203865 () Bool)

(assert (=> b!3203865 (= e!1997505 (not (isEmpty!20193 (right!28383 (c!537388 lt!1080111)))))))

(declare-fun b!3203866 () Bool)

(declare-fun res!1303754 () Bool)

(assert (=> b!3203866 (=> (not res!1303754) (not e!1997505))))

(assert (=> b!3203866 (= res!1303754 (<= (- (height!1546 (left!28053 (c!537388 lt!1080111))) (height!1546 (right!28383 (c!537388 lt!1080111)))) 1))))

(declare-fun b!3203867 () Bool)

(declare-fun res!1303756 () Bool)

(assert (=> b!3203867 (=> (not res!1303756) (not e!1997505))))

(assert (=> b!3203867 (= res!1303756 (isBalanced!3209 (right!28383 (c!537388 lt!1080111))))))

(declare-fun b!3203868 () Bool)

(declare-fun res!1303751 () Bool)

(assert (=> b!3203868 (=> (not res!1303751) (not e!1997505))))

(assert (=> b!3203868 (= res!1303751 (isBalanced!3209 (left!28053 (c!537388 lt!1080111))))))

(assert (= (and d!877282 (not res!1303753)) b!3203864))

(assert (= (and b!3203864 res!1303752) b!3203866))

(assert (= (and b!3203866 res!1303754) b!3203868))

(assert (= (and b!3203868 res!1303751) b!3203867))

(assert (= (and b!3203867 res!1303756) b!3203863))

(assert (= (and b!3203863 res!1303755) b!3203865))

(declare-fun m!3468557 () Bool)

(assert (=> b!3203864 m!3468557))

(declare-fun m!3468559 () Bool)

(assert (=> b!3203864 m!3468559))

(declare-fun m!3468561 () Bool)

(assert (=> b!3203863 m!3468561))

(declare-fun m!3468563 () Bool)

(assert (=> b!3203867 m!3468563))

(assert (=> b!3203866 m!3468557))

(assert (=> b!3203866 m!3468559))

(declare-fun m!3468565 () Bool)

(assert (=> b!3203865 m!3468565))

(declare-fun m!3468567 () Bool)

(assert (=> b!3203868 m!3468567))

(assert (=> b!3201641 d!877282))

(assert (=> bm!231775 d!876470))

(declare-fun d!877284 () Bool)

(assert (=> d!877284 (= (isEmpty!20186 (list!12831 (_2!20873 lt!1079896))) ((_ is Nil!36101) (list!12831 (_2!20873 lt!1079896))))))

(assert (=> d!875754 d!877284))

(declare-fun d!877286 () Bool)

(assert (=> d!877286 (= (list!12831 (_2!20873 lt!1079896)) (list!12834 (c!537387 (_2!20873 lt!1079896))))))

(declare-fun bs!541180 () Bool)

(assert (= bs!541180 d!877286))

(declare-fun m!3468569 () Bool)

(assert (=> bs!541180 m!3468569))

(assert (=> d!875754 d!877286))

(declare-fun d!877288 () Bool)

(declare-fun lt!1081260 () Bool)

(assert (=> d!877288 (= lt!1081260 (isEmpty!20186 (list!12834 (c!537387 (_2!20873 lt!1079896)))))))

(assert (=> d!877288 (= lt!1081260 (= (size!27199 (c!537387 (_2!20873 lt!1079896))) 0))))

(assert (=> d!877288 (= (isEmpty!20187 (c!537387 (_2!20873 lt!1079896))) lt!1081260)))

(declare-fun bs!541181 () Bool)

(assert (= bs!541181 d!877288))

(assert (=> bs!541181 m!3468569))

(assert (=> bs!541181 m!3468569))

(declare-fun m!3468571 () Bool)

(assert (=> bs!541181 m!3468571))

(declare-fun m!3468573 () Bool)

(assert (=> bs!541181 m!3468573))

(assert (=> d!875754 d!877288))

(assert (=> b!3201327 d!876248))

(declare-fun d!877290 () Bool)

(assert (=> d!877290 (= (inv!48949 (tag!5728 (rule!7642 (h!41523 (t!237478 tokens!494))))) (= (mod (str.len (value!168830 (tag!5728 (rule!7642 (h!41523 (t!237478 tokens!494)))))) 2) 0))))

(assert (=> b!3202017 d!877290))

(declare-fun d!877292 () Bool)

(declare-fun res!1303757 () Bool)

(declare-fun e!1997507 () Bool)

(assert (=> d!877292 (=> (not res!1303757) (not e!1997507))))

(assert (=> d!877292 (= res!1303757 (semiInverseModEq!2151 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494)))))))))

(assert (=> d!877292 (= (inv!48952 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) e!1997507)))

(declare-fun b!3203869 () Bool)

(assert (=> b!3203869 (= e!1997507 (equivClasses!2050 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494)))))))))

(assert (= (and d!877292 res!1303757) b!3203869))

(declare-fun m!3468575 () Bool)

(assert (=> d!877292 m!3468575))

(declare-fun m!3468577 () Bool)

(assert (=> b!3203869 m!3468577))

(assert (=> b!3202017 d!877292))

(assert (=> b!3201931 d!877170))

(assert (=> b!3201931 d!877108))

(assert (=> b!3201639 d!876054))

(declare-fun bm!231955 () Bool)

(declare-fun call!231960 () Bool)

(assert (=> bm!231955 (= call!231960 (isEmpty!20186 (list!12831 (charsOf!3222 (h!41523 tokens!494)))))))

(declare-fun b!3203870 () Bool)

(declare-fun res!1303763 () Bool)

(declare-fun e!1997508 () Bool)

(assert (=> b!3203870 (=> res!1303763 e!1997508)))

(assert (=> b!3203870 (= res!1303763 (not (isEmpty!20186 (tail!5205 (list!12831 (charsOf!3222 (h!41523 tokens!494)))))))))

(declare-fun e!1997512 () Bool)

(declare-fun b!3203871 () Bool)

(assert (=> b!3203871 (= e!1997512 (nullable!3394 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494))))))))))

(declare-fun d!877294 () Bool)

(declare-fun e!1997510 () Bool)

(assert (=> d!877294 e!1997510))

(declare-fun c!538090 () Bool)

(assert (=> d!877294 (= c!538090 ((_ is EmptyExpr!9965) (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494))))))))))

(declare-fun lt!1081261 () Bool)

(assert (=> d!877294 (= lt!1081261 e!1997512)))

(declare-fun c!538091 () Bool)

(assert (=> d!877294 (= c!538091 (isEmpty!20186 (list!12831 (charsOf!3222 (h!41523 tokens!494)))))))

(assert (=> d!877294 (validRegex!4548 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494)))))))))

(assert (=> d!877294 (= (matchR!4599 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494)))))) (list!12831 (charsOf!3222 (h!41523 tokens!494)))) lt!1081261)))

(declare-fun b!3203872 () Bool)

(declare-fun e!1997509 () Bool)

(declare-fun e!1997514 () Bool)

(assert (=> b!3203872 (= e!1997509 e!1997514)))

(declare-fun res!1303758 () Bool)

(assert (=> b!3203872 (=> (not res!1303758) (not e!1997514))))

(assert (=> b!3203872 (= res!1303758 (not lt!1081261))))

(declare-fun e!1997513 () Bool)

(declare-fun b!3203873 () Bool)

(assert (=> b!3203873 (= e!1997513 (= (head!7021 (list!12831 (charsOf!3222 (h!41523 tokens!494)))) (c!537386 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494)))))))))))

(declare-fun b!3203874 () Bool)

(declare-fun res!1303760 () Bool)

(assert (=> b!3203874 (=> (not res!1303760) (not e!1997513))))

(assert (=> b!3203874 (= res!1303760 (isEmpty!20186 (tail!5205 (list!12831 (charsOf!3222 (h!41523 tokens!494))))))))

(declare-fun b!3203875 () Bool)

(assert (=> b!3203875 (= e!1997512 (matchR!4599 (derivativeStep!2947 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494)))))) (head!7021 (list!12831 (charsOf!3222 (h!41523 tokens!494))))) (tail!5205 (list!12831 (charsOf!3222 (h!41523 tokens!494))))))))

(declare-fun b!3203876 () Bool)

(declare-fun res!1303761 () Bool)

(assert (=> b!3203876 (=> res!1303761 e!1997509)))

(assert (=> b!3203876 (= res!1303761 e!1997513)))

(declare-fun res!1303762 () Bool)

(assert (=> b!3203876 (=> (not res!1303762) (not e!1997513))))

(assert (=> b!3203876 (= res!1303762 lt!1081261)))

(declare-fun b!3203877 () Bool)

(assert (=> b!3203877 (= e!1997514 e!1997508)))

(declare-fun res!1303759 () Bool)

(assert (=> b!3203877 (=> res!1303759 e!1997508)))

(assert (=> b!3203877 (= res!1303759 call!231960)))

(declare-fun b!3203878 () Bool)

(declare-fun e!1997511 () Bool)

(assert (=> b!3203878 (= e!1997510 e!1997511)))

(declare-fun c!538092 () Bool)

(assert (=> b!3203878 (= c!538092 ((_ is EmptyLang!9965) (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494))))))))))

(declare-fun b!3203879 () Bool)

(assert (=> b!3203879 (= e!1997511 (not lt!1081261))))

(declare-fun b!3203880 () Bool)

(assert (=> b!3203880 (= e!1997510 (= lt!1081261 call!231960))))

(declare-fun b!3203881 () Bool)

(declare-fun res!1303764 () Bool)

(assert (=> b!3203881 (=> res!1303764 e!1997509)))

(assert (=> b!3203881 (= res!1303764 (not ((_ is ElementMatch!9965) (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494)))))))))))

(assert (=> b!3203881 (= e!1997511 e!1997509)))

(declare-fun b!3203882 () Bool)

(declare-fun res!1303765 () Bool)

(assert (=> b!3203882 (=> (not res!1303765) (not e!1997513))))

(assert (=> b!3203882 (= res!1303765 (not call!231960))))

(declare-fun b!3203883 () Bool)

(assert (=> b!3203883 (= e!1997508 (not (= (head!7021 (list!12831 (charsOf!3222 (h!41523 tokens!494)))) (c!537386 (regex!5206 (get!11486 (getRuleFromTag!911 thiss!18206 rules!2135 (tag!5728 (rule!7642 (h!41523 tokens!494))))))))))))

(assert (= (and d!877294 c!538091) b!3203871))

(assert (= (and d!877294 (not c!538091)) b!3203875))

(assert (= (and d!877294 c!538090) b!3203880))

(assert (= (and d!877294 (not c!538090)) b!3203878))

(assert (= (and b!3203878 c!538092) b!3203879))

(assert (= (and b!3203878 (not c!538092)) b!3203881))

(assert (= (and b!3203881 (not res!1303764)) b!3203876))

(assert (= (and b!3203876 res!1303762) b!3203882))

(assert (= (and b!3203882 res!1303765) b!3203874))

(assert (= (and b!3203874 res!1303760) b!3203873))

(assert (= (and b!3203876 (not res!1303761)) b!3203872))

(assert (= (and b!3203872 res!1303758) b!3203877))

(assert (= (and b!3203877 (not res!1303759)) b!3203870))

(assert (= (and b!3203870 (not res!1303763)) b!3203883))

(assert (= (or b!3203880 b!3203877 b!3203882) bm!231955))

(assert (=> b!3203883 m!3463563))

(declare-fun m!3468579 () Bool)

(assert (=> b!3203883 m!3468579))

(assert (=> b!3203875 m!3463563))

(assert (=> b!3203875 m!3468579))

(assert (=> b!3203875 m!3468579))

(declare-fun m!3468581 () Bool)

(assert (=> b!3203875 m!3468581))

(assert (=> b!3203875 m!3463563))

(declare-fun m!3468583 () Bool)

(assert (=> b!3203875 m!3468583))

(assert (=> b!3203875 m!3468581))

(assert (=> b!3203875 m!3468583))

(declare-fun m!3468585 () Bool)

(assert (=> b!3203875 m!3468585))

(assert (=> b!3203874 m!3463563))

(assert (=> b!3203874 m!3468583))

(assert (=> b!3203874 m!3468583))

(declare-fun m!3468587 () Bool)

(assert (=> b!3203874 m!3468587))

(assert (=> d!877294 m!3463563))

(declare-fun m!3468589 () Bool)

(assert (=> d!877294 m!3468589))

(declare-fun m!3468591 () Bool)

(assert (=> d!877294 m!3468591))

(assert (=> b!3203870 m!3463563))

(assert (=> b!3203870 m!3468583))

(assert (=> b!3203870 m!3468583))

(assert (=> b!3203870 m!3468587))

(assert (=> bm!231955 m!3463563))

(assert (=> bm!231955 m!3468589))

(assert (=> b!3203873 m!3463563))

(assert (=> b!3203873 m!3468579))

(declare-fun m!3468593 () Bool)

(assert (=> b!3203871 m!3468593))

(assert (=> b!3201639 d!877294))

(assert (=> b!3201639 d!875948))

(assert (=> b!3201639 d!877192))

(assert (=> b!3201639 d!876052))

(declare-fun d!877296 () Bool)

(assert (=> d!877296 (= (list!12833 lt!1080111) (list!12837 (c!537388 lt!1080111)))))

(declare-fun bs!541182 () Bool)

(assert (= bs!541182 d!877296))

(declare-fun m!3468595 () Bool)

(assert (=> bs!541182 m!3468595))

(assert (=> d!875882 d!877296))

(declare-fun d!877298 () Bool)

(declare-fun e!1997515 () Bool)

(assert (=> d!877298 e!1997515))

(declare-fun res!1303766 () Bool)

(assert (=> d!877298 (=> (not res!1303766) (not e!1997515))))

(declare-fun lt!1081262 () BalanceConc!21190)

(assert (=> d!877298 (= res!1303766 (= (list!12833 lt!1081262) (Cons!36103 (h!41523 (t!237478 tokens!494)) Nil!36103)))))

(assert (=> d!877298 (= lt!1081262 (choose!18700 (h!41523 (t!237478 tokens!494))))))

(assert (=> d!877298 (= (singleton!990 (h!41523 (t!237478 tokens!494))) lt!1081262)))

(declare-fun b!3203884 () Bool)

(assert (=> b!3203884 (= e!1997515 (isBalanced!3209 (c!537388 lt!1081262)))))

(assert (= (and d!877298 res!1303766) b!3203884))

(declare-fun m!3468597 () Bool)

(assert (=> d!877298 m!3468597))

(declare-fun m!3468599 () Bool)

(assert (=> d!877298 m!3468599))

(declare-fun m!3468601 () Bool)

(assert (=> b!3203884 m!3468601))

(assert (=> d!875882 d!877298))

(declare-fun d!877300 () Bool)

(declare-fun e!1997516 () Bool)

(assert (=> d!877300 e!1997516))

(declare-fun res!1303767 () Bool)

(assert (=> d!877300 (=> (not res!1303767) (not e!1997516))))

(declare-fun lt!1081263 () List!36225)

(assert (=> d!877300 (= res!1303767 (= (content!4877 lt!1081263) ((_ map or) (content!4877 (t!237476 lt!1079879)) (content!4877 lt!1079883))))))

(declare-fun e!1997517 () List!36225)

(assert (=> d!877300 (= lt!1081263 e!1997517)))

(declare-fun c!538093 () Bool)

(assert (=> d!877300 (= c!538093 ((_ is Nil!36101) (t!237476 lt!1079879)))))

(assert (=> d!877300 (= (++!8650 (t!237476 lt!1079879) lt!1079883) lt!1081263)))

(declare-fun b!3203886 () Bool)

(assert (=> b!3203886 (= e!1997517 (Cons!36101 (h!41521 (t!237476 lt!1079879)) (++!8650 (t!237476 (t!237476 lt!1079879)) lt!1079883)))))

(declare-fun b!3203888 () Bool)

(assert (=> b!3203888 (= e!1997516 (or (not (= lt!1079883 Nil!36101)) (= lt!1081263 (t!237476 lt!1079879))))))

(declare-fun b!3203887 () Bool)

(declare-fun res!1303768 () Bool)

(assert (=> b!3203887 (=> (not res!1303768) (not e!1997516))))

(assert (=> b!3203887 (= res!1303768 (= (size!27191 lt!1081263) (+ (size!27191 (t!237476 lt!1079879)) (size!27191 lt!1079883))))))

(declare-fun b!3203885 () Bool)

(assert (=> b!3203885 (= e!1997517 lt!1079883)))

(assert (= (and d!877300 c!538093) b!3203885))

(assert (= (and d!877300 (not c!538093)) b!3203886))

(assert (= (and d!877300 res!1303767) b!3203887))

(assert (= (and b!3203887 res!1303768) b!3203888))

(declare-fun m!3468603 () Bool)

(assert (=> d!877300 m!3468603))

(assert (=> d!877300 m!3466697))

(assert (=> d!877300 m!3464689))

(declare-fun m!3468605 () Bool)

(assert (=> b!3203886 m!3468605))

(declare-fun m!3468607 () Bool)

(assert (=> b!3203887 m!3468607))

(assert (=> b!3203887 m!3463939))

(assert (=> b!3203887 m!3464697))

(assert (=> b!3201971 d!877300))

(declare-fun c!538094 () Bool)

(declare-fun call!231961 () List!36225)

(declare-fun bm!231956 () Bool)

(assert (=> bm!231956 (= call!231961 (usedCharacters!522 (ite c!538094 (regTwo!20443 (ite c!537491 (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))) (regOne!20442 (ite c!537491 (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))))))))

(declare-fun bm!231957 () Bool)

(declare-fun call!231962 () List!36225)

(declare-fun call!231964 () List!36225)

(assert (=> bm!231957 (= call!231962 call!231964)))

(declare-fun b!3203890 () Bool)

(declare-fun e!1997518 () List!36225)

(declare-fun e!1997519 () List!36225)

(assert (=> b!3203890 (= e!1997518 e!1997519)))

(declare-fun c!538097 () Bool)

(assert (=> b!3203890 (= c!538097 ((_ is ElementMatch!9965) (ite c!537491 (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))))))

(declare-fun b!3203891 () Bool)

(assert (=> b!3203891 (= e!1997519 (Cons!36101 (c!537386 (ite c!537491 (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))) Nil!36101))))

(declare-fun b!3203892 () Bool)

(declare-fun e!1997521 () List!36225)

(declare-fun e!1997520 () List!36225)

(assert (=> b!3203892 (= e!1997521 e!1997520)))

(assert (=> b!3203892 (= c!538094 ((_ is Union!9965) (ite c!537491 (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))))))

(declare-fun bm!231958 () Bool)

(declare-fun call!231963 () List!36225)

(assert (=> bm!231958 (= call!231963 (++!8650 (ite c!538094 call!231962 call!231961) (ite c!538094 call!231961 call!231962)))))

(declare-fun bm!231959 () Bool)

(declare-fun c!538096 () Bool)

(assert (=> bm!231959 (= call!231964 (usedCharacters!522 (ite c!538096 (reg!10294 (ite c!537491 (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))) (ite c!538094 (regOne!20443 (ite c!537491 (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))) (regTwo!20442 (ite c!537491 (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241)))))))))))

(declare-fun b!3203893 () Bool)

(assert (=> b!3203893 (= e!1997521 call!231964)))

(declare-fun b!3203894 () Bool)

(assert (=> b!3203894 (= e!1997520 call!231963)))

(declare-fun b!3203895 () Bool)

(assert (=> b!3203895 (= e!1997520 call!231963)))

(declare-fun b!3203896 () Bool)

(assert (=> b!3203896 (= e!1997518 Nil!36101)))

(declare-fun d!877302 () Bool)

(declare-fun c!538095 () Bool)

(assert (=> d!877302 (= c!538095 (or ((_ is EmptyExpr!9965) (ite c!537491 (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))) ((_ is EmptyLang!9965) (ite c!537491 (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241)))))))))

(assert (=> d!877302 (= (usedCharacters!522 (ite c!537491 (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))) e!1997518)))

(declare-fun b!3203889 () Bool)

(assert (=> b!3203889 (= c!538096 ((_ is Star!9965) (ite c!537491 (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))))))

(assert (=> b!3203889 (= e!1997519 e!1997521)))

(assert (= (and d!877302 c!538095) b!3203896))

(assert (= (and d!877302 (not c!538095)) b!3203890))

(assert (= (and b!3203890 c!538097) b!3203891))

(assert (= (and b!3203890 (not c!538097)) b!3203889))

(assert (= (and b!3203889 c!538096) b!3203893))

(assert (= (and b!3203889 (not c!538096)) b!3203892))

(assert (= (and b!3203892 c!538094) b!3203894))

(assert (= (and b!3203892 (not c!538094)) b!3203895))

(assert (= (or b!3203894 b!3203895) bm!231956))

(assert (= (or b!3203894 b!3203895) bm!231957))

(assert (= (or b!3203894 b!3203895) bm!231958))

(assert (= (or b!3203893 bm!231957) bm!231959))

(declare-fun m!3468609 () Bool)

(assert (=> bm!231956 m!3468609))

(declare-fun m!3468611 () Bool)

(assert (=> bm!231958 m!3468611))

(declare-fun m!3468613 () Bool)

(assert (=> bm!231959 m!3468613))

(assert (=> bm!231768 d!877302))

(declare-fun d!877304 () Bool)

(declare-fun lt!1081264 () Token!9778)

(assert (=> d!877304 (= lt!1081264 (apply!8152 (list!12833 (_1!20873 lt!1080197)) 0))))

(assert (=> d!877304 (= lt!1081264 (apply!8153 (c!537388 (_1!20873 lt!1080197)) 0))))

(declare-fun e!1997522 () Bool)

(assert (=> d!877304 e!1997522))

(declare-fun res!1303769 () Bool)

(assert (=> d!877304 (=> (not res!1303769) (not e!1997522))))

(assert (=> d!877304 (= res!1303769 (<= 0 0))))

(assert (=> d!877304 (= (apply!8150 (_1!20873 lt!1080197) 0) lt!1081264)))

(declare-fun b!3203897 () Bool)

(assert (=> b!3203897 (= e!1997522 (< 0 (size!27190 (_1!20873 lt!1080197))))))

(assert (= (and d!877304 res!1303769) b!3203897))

(assert (=> d!877304 m!3468511))

(assert (=> d!877304 m!3468511))

(declare-fun m!3468615 () Bool)

(assert (=> d!877304 m!3468615))

(declare-fun m!3468617 () Bool)

(assert (=> d!877304 m!3468617))

(assert (=> b!3203897 m!3464785))

(assert (=> b!3201924 d!877304))

(declare-fun d!877306 () Bool)

(declare-fun lt!1081265 () Int)

(assert (=> d!877306 (>= lt!1081265 0)))

(declare-fun e!1997523 () Int)

(assert (=> d!877306 (= lt!1081265 e!1997523)))

(declare-fun c!538098 () Bool)

(assert (=> d!877306 (= c!538098 ((_ is Nil!36101) lt!1080207))))

(assert (=> d!877306 (= (size!27191 lt!1080207) lt!1081265)))

(declare-fun b!3203898 () Bool)

(assert (=> b!3203898 (= e!1997523 0)))

(declare-fun b!3203899 () Bool)

(assert (=> b!3203899 (= e!1997523 (+ 1 (size!27191 (t!237476 lt!1080207))))))

(assert (= (and d!877306 c!538098) b!3203898))

(assert (= (and d!877306 (not c!538098)) b!3203899))

(declare-fun m!3468619 () Bool)

(assert (=> b!3203899 m!3468619))

(assert (=> b!3201968 d!877306))

(declare-fun d!877308 () Bool)

(declare-fun lt!1081266 () Int)

(assert (=> d!877308 (>= lt!1081266 0)))

(declare-fun e!1997524 () Int)

(assert (=> d!877308 (= lt!1081266 e!1997524)))

(declare-fun c!538099 () Bool)

(assert (=> d!877308 (= c!538099 ((_ is Nil!36101) (++!8650 lt!1079879 lt!1079883)))))

(assert (=> d!877308 (= (size!27191 (++!8650 lt!1079879 lt!1079883)) lt!1081266)))

(declare-fun b!3203900 () Bool)

(assert (=> b!3203900 (= e!1997524 0)))

(declare-fun b!3203901 () Bool)

(assert (=> b!3203901 (= e!1997524 (+ 1 (size!27191 (t!237476 (++!8650 lt!1079879 lt!1079883)))))))

(assert (= (and d!877308 c!538099) b!3203900))

(assert (= (and d!877308 (not c!538099)) b!3203901))

(assert (=> b!3203901 m!3466151))

(assert (=> b!3201968 d!877308))

(assert (=> b!3201968 d!877208))

(assert (=> b!3201470 d!875888))

(declare-fun d!877310 () Bool)

(declare-fun lt!1081267 () Bool)

(assert (=> d!877310 (= lt!1081267 (select (content!4880 rules!2135) (get!11486 lt!1080155)))))

(declare-fun e!1997525 () Bool)

(assert (=> d!877310 (= lt!1081267 e!1997525)))

(declare-fun res!1303770 () Bool)

(assert (=> d!877310 (=> (not res!1303770) (not e!1997525))))

(assert (=> d!877310 (= res!1303770 ((_ is Cons!36102) rules!2135))))

(assert (=> d!877310 (= (contains!6427 rules!2135 (get!11486 lt!1080155)) lt!1081267)))

(declare-fun b!3203902 () Bool)

(declare-fun e!1997526 () Bool)

(assert (=> b!3203902 (= e!1997525 e!1997526)))

(declare-fun res!1303771 () Bool)

(assert (=> b!3203902 (=> res!1303771 e!1997526)))

(assert (=> b!3203902 (= res!1303771 (= (h!41522 rules!2135) (get!11486 lt!1080155)))))

(declare-fun b!3203903 () Bool)

(assert (=> b!3203903 (= e!1997526 (contains!6427 (t!237477 rules!2135) (get!11486 lt!1080155)))))

(assert (= (and d!877310 res!1303770) b!3203902))

(assert (= (and b!3203902 (not res!1303771)) b!3203903))

(assert (=> d!877310 m!3465533))

(assert (=> d!877310 m!3464523))

(declare-fun m!3468621 () Bool)

(assert (=> d!877310 m!3468621))

(assert (=> b!3203903 m!3464523))

(declare-fun m!3468623 () Bool)

(assert (=> b!3203903 m!3468623))

(assert (=> b!3201832 d!877310))

(assert (=> b!3201832 d!877052))

(declare-fun d!877312 () Bool)

(declare-fun e!1997527 () Bool)

(assert (=> d!877312 e!1997527))

(declare-fun res!1303772 () Bool)

(assert (=> d!877312 (=> (not res!1303772) (not e!1997527))))

(declare-fun lt!1081268 () List!36225)

(assert (=> d!877312 (= res!1303772 (= (content!4877 lt!1081268) ((_ map or) (content!4877 (t!237476 lt!1079883)) (content!4877 lt!1079880))))))

(declare-fun e!1997528 () List!36225)

(assert (=> d!877312 (= lt!1081268 e!1997528)))

(declare-fun c!538100 () Bool)

(assert (=> d!877312 (= c!538100 ((_ is Nil!36101) (t!237476 lt!1079883)))))

(assert (=> d!877312 (= (++!8650 (t!237476 lt!1079883) lt!1079880) lt!1081268)))

(declare-fun b!3203905 () Bool)

(assert (=> b!3203905 (= e!1997528 (Cons!36101 (h!41521 (t!237476 lt!1079883)) (++!8650 (t!237476 (t!237476 lt!1079883)) lt!1079880)))))

(declare-fun b!3203907 () Bool)

(assert (=> b!3203907 (= e!1997527 (or (not (= lt!1079880 Nil!36101)) (= lt!1081268 (t!237476 lt!1079883))))))

(declare-fun b!3203906 () Bool)

(declare-fun res!1303773 () Bool)

(assert (=> b!3203906 (=> (not res!1303773) (not e!1997527))))

(assert (=> b!3203906 (= res!1303773 (= (size!27191 lt!1081268) (+ (size!27191 (t!237476 lt!1079883)) (size!27191 lt!1079880))))))

(declare-fun b!3203904 () Bool)

(assert (=> b!3203904 (= e!1997528 lt!1079880)))

(assert (= (and d!877312 c!538100) b!3203904))

(assert (= (and d!877312 (not c!538100)) b!3203905))

(assert (= (and d!877312 res!1303772) b!3203906))

(assert (= (and b!3203906 res!1303773) b!3203907))

(declare-fun m!3468625 () Bool)

(assert (=> d!877312 m!3468625))

(assert (=> d!877312 m!3467983))

(assert (=> d!877312 m!3464715))

(declare-fun m!3468627 () Bool)

(assert (=> b!3203905 m!3468627))

(declare-fun m!3468629 () Bool)

(assert (=> b!3203906 m!3468629))

(assert (=> b!3203906 m!3465477))

(assert (=> b!3203906 m!3464721))

(assert (=> b!3201900 d!877312))

(assert (=> b!3201927 d!877170))

(assert (=> b!3201927 d!877108))

(declare-fun d!877314 () Bool)

(assert (=> d!877314 (= (list!12831 (_2!20873 lt!1080196)) (list!12834 (c!537387 (_2!20873 lt!1080196))))))

(declare-fun bs!541183 () Bool)

(assert (= bs!541183 d!877314))

(declare-fun m!3468631 () Bool)

(assert (=> bs!541183 m!3468631))

(assert (=> b!3201909 d!877314))

(assert (=> b!3201909 d!876464))

(assert (=> b!3201909 d!876466))

(declare-fun tp!1012087 () Bool)

(declare-fun b!3203916 () Bool)

(declare-fun e!1997534 () Bool)

(declare-fun tp!1012086 () Bool)

(assert (=> b!3203916 (= e!1997534 (and (inv!48956 (left!28052 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494)))))) tp!1012087 (inv!48956 (right!28382 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494)))))) tp!1012086))))

(declare-fun b!3203918 () Bool)

(declare-fun e!1997533 () Bool)

(declare-fun tp!1012085 () Bool)

(assert (=> b!3203918 (= e!1997533 tp!1012085)))

(declare-fun b!3203917 () Bool)

(declare-fun inv!48963 (IArray!21579) Bool)

(assert (=> b!3203917 (= e!1997534 (and (inv!48963 (xs!13905 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494)))))) e!1997533))))

(assert (=> b!3201980 (= tp!1011896 (and (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494))))) e!1997534))))

(assert (= (and b!3201980 ((_ is Node!10787) (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494)))))) b!3203916))

(assert (= b!3203917 b!3203918))

(assert (= (and b!3201980 ((_ is Leaf!17001) (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (value!168831 (h!41523 tokens!494)))))) b!3203917))

(declare-fun m!3468633 () Bool)

(assert (=> b!3203916 m!3468633))

(declare-fun m!3468635 () Bool)

(assert (=> b!3203916 m!3468635))

(declare-fun m!3468637 () Bool)

(assert (=> b!3203917 m!3468637))

(assert (=> b!3201980 m!3464875))

(declare-fun b!3203921 () Bool)

(declare-fun e!1997537 () Bool)

(assert (=> b!3203921 (= e!1997537 true)))

(declare-fun b!3203920 () Bool)

(declare-fun e!1997536 () Bool)

(assert (=> b!3203920 (= e!1997536 e!1997537)))

(declare-fun b!3203919 () Bool)

(declare-fun e!1997535 () Bool)

(assert (=> b!3203919 (= e!1997535 e!1997536)))

(assert (=> b!3201997 e!1997535))

(assert (= b!3203920 b!3203921))

(assert (= b!3203919 b!3203920))

(assert (= (and b!3201997 ((_ is Cons!36102) (t!237477 (t!237477 rules!2135)))) b!3203919))

(assert (=> b!3203921 (< (dynLambda!14533 order!18349 (toValue!7282 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135)))))) (dynLambda!14534 order!18351 lambda!117203))))

(assert (=> b!3203921 (< (dynLambda!14535 order!18353 (toChars!7141 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135)))))) (dynLambda!14534 order!18351 lambda!117203))))

(declare-fun b!3203922 () Bool)

(declare-fun e!1997538 () Bool)

(assert (=> b!3203922 (= e!1997538 tp_is_empty!17289)))

(declare-fun b!3203925 () Bool)

(declare-fun tp!1012091 () Bool)

(declare-fun tp!1012090 () Bool)

(assert (=> b!3203925 (= e!1997538 (and tp!1012091 tp!1012090))))

(declare-fun b!3203923 () Bool)

(declare-fun tp!1012092 () Bool)

(declare-fun tp!1012089 () Bool)

(assert (=> b!3203923 (= e!1997538 (and tp!1012092 tp!1012089))))

(assert (=> b!3202033 (= tp!1011943 e!1997538)))

(declare-fun b!3203924 () Bool)

(declare-fun tp!1012088 () Bool)

(assert (=> b!3203924 (= e!1997538 tp!1012088)))

(assert (= (and b!3202033 ((_ is ElementMatch!9965) (reg!10294 (regex!5206 (rule!7642 separatorToken!241))))) b!3203922))

(assert (= (and b!3202033 ((_ is Concat!15401) (reg!10294 (regex!5206 (rule!7642 separatorToken!241))))) b!3203923))

(assert (= (and b!3202033 ((_ is Star!9965) (reg!10294 (regex!5206 (rule!7642 separatorToken!241))))) b!3203924))

(assert (= (and b!3202033 ((_ is Union!9965) (reg!10294 (regex!5206 (rule!7642 separatorToken!241))))) b!3203925))

(declare-fun b!3203926 () Bool)

(declare-fun e!1997539 () Bool)

(assert (=> b!3203926 (= e!1997539 tp_is_empty!17289)))

(declare-fun b!3203929 () Bool)

(declare-fun tp!1012096 () Bool)

(declare-fun tp!1012095 () Bool)

(assert (=> b!3203929 (= e!1997539 (and tp!1012096 tp!1012095))))

(declare-fun b!3203927 () Bool)

(declare-fun tp!1012097 () Bool)

(declare-fun tp!1012094 () Bool)

(assert (=> b!3203927 (= e!1997539 (and tp!1012097 tp!1012094))))

(assert (=> b!3202034 (= tp!1011946 e!1997539)))

(declare-fun b!3203928 () Bool)

(declare-fun tp!1012093 () Bool)

(assert (=> b!3203928 (= e!1997539 tp!1012093)))

(assert (= (and b!3202034 ((_ is ElementMatch!9965) (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))))) b!3203926))

(assert (= (and b!3202034 ((_ is Concat!15401) (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))))) b!3203927))

(assert (= (and b!3202034 ((_ is Star!9965) (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))))) b!3203928))

(assert (= (and b!3202034 ((_ is Union!9965) (regOne!20443 (regex!5206 (rule!7642 separatorToken!241))))) b!3203929))

(declare-fun b!3203930 () Bool)

(declare-fun e!1997540 () Bool)

(assert (=> b!3203930 (= e!1997540 tp_is_empty!17289)))

(declare-fun b!3203933 () Bool)

(declare-fun tp!1012101 () Bool)

(declare-fun tp!1012100 () Bool)

(assert (=> b!3203933 (= e!1997540 (and tp!1012101 tp!1012100))))

(declare-fun b!3203931 () Bool)

(declare-fun tp!1012102 () Bool)

(declare-fun tp!1012099 () Bool)

(assert (=> b!3203931 (= e!1997540 (and tp!1012102 tp!1012099))))

(assert (=> b!3202034 (= tp!1011945 e!1997540)))

(declare-fun b!3203932 () Bool)

(declare-fun tp!1012098 () Bool)

(assert (=> b!3203932 (= e!1997540 tp!1012098)))

(assert (= (and b!3202034 ((_ is ElementMatch!9965) (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))))) b!3203930))

(assert (= (and b!3202034 ((_ is Concat!15401) (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))))) b!3203931))

(assert (= (and b!3202034 ((_ is Star!9965) (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))))) b!3203932))

(assert (= (and b!3202034 ((_ is Union!9965) (regTwo!20443 (regex!5206 (rule!7642 separatorToken!241))))) b!3203933))

(declare-fun b!3203934 () Bool)

(declare-fun e!1997541 () Bool)

(assert (=> b!3203934 (= e!1997541 tp_is_empty!17289)))

(declare-fun b!3203937 () Bool)

(declare-fun tp!1012106 () Bool)

(declare-fun tp!1012105 () Bool)

(assert (=> b!3203937 (= e!1997541 (and tp!1012106 tp!1012105))))

(declare-fun b!3203935 () Bool)

(declare-fun tp!1012107 () Bool)

(declare-fun tp!1012104 () Bool)

(assert (=> b!3203935 (= e!1997541 (and tp!1012107 tp!1012104))))

(assert (=> b!3202032 (= tp!1011947 e!1997541)))

(declare-fun b!3203936 () Bool)

(declare-fun tp!1012103 () Bool)

(assert (=> b!3203936 (= e!1997541 tp!1012103)))

(assert (= (and b!3202032 ((_ is ElementMatch!9965) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))) b!3203934))

(assert (= (and b!3202032 ((_ is Concat!15401) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))) b!3203935))

(assert (= (and b!3202032 ((_ is Star!9965) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))) b!3203936))

(assert (= (and b!3202032 ((_ is Union!9965) (regOne!20442 (regex!5206 (rule!7642 separatorToken!241))))) b!3203937))

(declare-fun b!3203938 () Bool)

(declare-fun e!1997542 () Bool)

(assert (=> b!3203938 (= e!1997542 tp_is_empty!17289)))

(declare-fun b!3203941 () Bool)

(declare-fun tp!1012111 () Bool)

(declare-fun tp!1012110 () Bool)

(assert (=> b!3203941 (= e!1997542 (and tp!1012111 tp!1012110))))

(declare-fun b!3203939 () Bool)

(declare-fun tp!1012112 () Bool)

(declare-fun tp!1012109 () Bool)

(assert (=> b!3203939 (= e!1997542 (and tp!1012112 tp!1012109))))

(assert (=> b!3202032 (= tp!1011944 e!1997542)))

(declare-fun b!3203940 () Bool)

(declare-fun tp!1012108 () Bool)

(assert (=> b!3203940 (= e!1997542 tp!1012108)))

(assert (= (and b!3202032 ((_ is ElementMatch!9965) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241))))) b!3203938))

(assert (= (and b!3202032 ((_ is Concat!15401) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241))))) b!3203939))

(assert (= (and b!3202032 ((_ is Star!9965) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241))))) b!3203940))

(assert (= (and b!3202032 ((_ is Union!9965) (regTwo!20442 (regex!5206 (rule!7642 separatorToken!241))))) b!3203941))

(declare-fun b!3203942 () Bool)

(declare-fun e!1997543 () Bool)

(declare-fun tp!1012113 () Bool)

(assert (=> b!3203942 (= e!1997543 (and tp_is_empty!17289 tp!1012113))))

(assert (=> b!3202004 (= tp!1011914 e!1997543)))

(assert (= (and b!3202004 ((_ is Cons!36101) (t!237476 (originalCharacters!5920 (h!41523 tokens!494))))) b!3203942))

(declare-fun b!3203943 () Bool)

(declare-fun e!1997544 () Bool)

(assert (=> b!3203943 (= e!1997544 tp_is_empty!17289)))

(declare-fun b!3203946 () Bool)

(declare-fun tp!1012117 () Bool)

(declare-fun tp!1012116 () Bool)

(assert (=> b!3203946 (= e!1997544 (and tp!1012117 tp!1012116))))

(declare-fun b!3203944 () Bool)

(declare-fun tp!1012118 () Bool)

(declare-fun tp!1012115 () Bool)

(assert (=> b!3203944 (= e!1997544 (and tp!1012118 tp!1012115))))

(assert (=> b!3201996 (= tp!1011910 e!1997544)))

(declare-fun b!3203945 () Bool)

(declare-fun tp!1012114 () Bool)

(assert (=> b!3203945 (= e!1997544 tp!1012114)))

(assert (= (and b!3201996 ((_ is ElementMatch!9965) (regOne!20443 (regex!5206 (h!41522 rules!2135))))) b!3203943))

(assert (= (and b!3201996 ((_ is Concat!15401) (regOne!20443 (regex!5206 (h!41522 rules!2135))))) b!3203944))

(assert (= (and b!3201996 ((_ is Star!9965) (regOne!20443 (regex!5206 (h!41522 rules!2135))))) b!3203945))

(assert (= (and b!3201996 ((_ is Union!9965) (regOne!20443 (regex!5206 (h!41522 rules!2135))))) b!3203946))

(declare-fun b!3203947 () Bool)

(declare-fun e!1997545 () Bool)

(assert (=> b!3203947 (= e!1997545 tp_is_empty!17289)))

(declare-fun b!3203950 () Bool)

(declare-fun tp!1012122 () Bool)

(declare-fun tp!1012121 () Bool)

(assert (=> b!3203950 (= e!1997545 (and tp!1012122 tp!1012121))))

(declare-fun b!3203948 () Bool)

(declare-fun tp!1012123 () Bool)

(declare-fun tp!1012120 () Bool)

(assert (=> b!3203948 (= e!1997545 (and tp!1012123 tp!1012120))))

(assert (=> b!3201996 (= tp!1011909 e!1997545)))

(declare-fun b!3203949 () Bool)

(declare-fun tp!1012119 () Bool)

(assert (=> b!3203949 (= e!1997545 tp!1012119)))

(assert (= (and b!3201996 ((_ is ElementMatch!9965) (regTwo!20443 (regex!5206 (h!41522 rules!2135))))) b!3203947))

(assert (= (and b!3201996 ((_ is Concat!15401) (regTwo!20443 (regex!5206 (h!41522 rules!2135))))) b!3203948))

(assert (= (and b!3201996 ((_ is Star!9965) (regTwo!20443 (regex!5206 (h!41522 rules!2135))))) b!3203949))

(assert (= (and b!3201996 ((_ is Union!9965) (regTwo!20443 (regex!5206 (h!41522 rules!2135))))) b!3203950))

(declare-fun b!3203951 () Bool)

(declare-fun e!1997546 () Bool)

(assert (=> b!3203951 (= e!1997546 tp_is_empty!17289)))

(declare-fun b!3203954 () Bool)

(declare-fun tp!1012127 () Bool)

(declare-fun tp!1012126 () Bool)

(assert (=> b!3203954 (= e!1997546 (and tp!1012127 tp!1012126))))

(declare-fun b!3203952 () Bool)

(declare-fun tp!1012128 () Bool)

(declare-fun tp!1012125 () Bool)

(assert (=> b!3203952 (= e!1997546 (and tp!1012128 tp!1012125))))

(assert (=> b!3201994 (= tp!1011911 e!1997546)))

(declare-fun b!3203953 () Bool)

(declare-fun tp!1012124 () Bool)

(assert (=> b!3203953 (= e!1997546 tp!1012124)))

(assert (= (and b!3201994 ((_ is ElementMatch!9965) (regOne!20442 (regex!5206 (h!41522 rules!2135))))) b!3203951))

(assert (= (and b!3201994 ((_ is Concat!15401) (regOne!20442 (regex!5206 (h!41522 rules!2135))))) b!3203952))

(assert (= (and b!3201994 ((_ is Star!9965) (regOne!20442 (regex!5206 (h!41522 rules!2135))))) b!3203953))

(assert (= (and b!3201994 ((_ is Union!9965) (regOne!20442 (regex!5206 (h!41522 rules!2135))))) b!3203954))

(declare-fun b!3203955 () Bool)

(declare-fun e!1997547 () Bool)

(assert (=> b!3203955 (= e!1997547 tp_is_empty!17289)))

(declare-fun b!3203958 () Bool)

(declare-fun tp!1012132 () Bool)

(declare-fun tp!1012131 () Bool)

(assert (=> b!3203958 (= e!1997547 (and tp!1012132 tp!1012131))))

(declare-fun b!3203956 () Bool)

(declare-fun tp!1012133 () Bool)

(declare-fun tp!1012130 () Bool)

(assert (=> b!3203956 (= e!1997547 (and tp!1012133 tp!1012130))))

(assert (=> b!3201994 (= tp!1011908 e!1997547)))

(declare-fun b!3203957 () Bool)

(declare-fun tp!1012129 () Bool)

(assert (=> b!3203957 (= e!1997547 tp!1012129)))

(assert (= (and b!3201994 ((_ is ElementMatch!9965) (regTwo!20442 (regex!5206 (h!41522 rules!2135))))) b!3203955))

(assert (= (and b!3201994 ((_ is Concat!15401) (regTwo!20442 (regex!5206 (h!41522 rules!2135))))) b!3203956))

(assert (= (and b!3201994 ((_ is Star!9965) (regTwo!20442 (regex!5206 (h!41522 rules!2135))))) b!3203957))

(assert (= (and b!3201994 ((_ is Union!9965) (regTwo!20442 (regex!5206 (h!41522 rules!2135))))) b!3203958))

(declare-fun b!3203959 () Bool)

(declare-fun e!1997548 () Bool)

(assert (=> b!3203959 (= e!1997548 tp_is_empty!17289)))

(declare-fun b!3203962 () Bool)

(declare-fun tp!1012137 () Bool)

(declare-fun tp!1012136 () Bool)

(assert (=> b!3203962 (= e!1997548 (and tp!1012137 tp!1012136))))

(declare-fun b!3203960 () Bool)

(declare-fun tp!1012138 () Bool)

(declare-fun tp!1012135 () Bool)

(assert (=> b!3203960 (= e!1997548 (and tp!1012138 tp!1012135))))

(assert (=> b!3201995 (= tp!1011907 e!1997548)))

(declare-fun b!3203961 () Bool)

(declare-fun tp!1012134 () Bool)

(assert (=> b!3203961 (= e!1997548 tp!1012134)))

(assert (= (and b!3201995 ((_ is ElementMatch!9965) (reg!10294 (regex!5206 (h!41522 rules!2135))))) b!3203959))

(assert (= (and b!3201995 ((_ is Concat!15401) (reg!10294 (regex!5206 (h!41522 rules!2135))))) b!3203960))

(assert (= (and b!3201995 ((_ is Star!9965) (reg!10294 (regex!5206 (h!41522 rules!2135))))) b!3203961))

(assert (= (and b!3201995 ((_ is Union!9965) (reg!10294 (regex!5206 (h!41522 rules!2135))))) b!3203962))

(declare-fun e!1997550 () Bool)

(declare-fun b!3203963 () Bool)

(declare-fun tp!1012141 () Bool)

(declare-fun tp!1012140 () Bool)

(assert (=> b!3203963 (= e!1997550 (and (inv!48956 (left!28052 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494))))))) tp!1012141 (inv!48956 (right!28382 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494))))))) tp!1012140))))

(declare-fun b!3203965 () Bool)

(declare-fun e!1997549 () Bool)

(declare-fun tp!1012139 () Bool)

(assert (=> b!3203965 (= e!1997549 tp!1012139)))

(declare-fun b!3203964 () Bool)

(assert (=> b!3203964 (= e!1997550 (and (inv!48963 (xs!13905 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494))))))) e!1997549))))

(assert (=> b!3201903 (= tp!1011895 (and (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494)))))) e!1997550))))

(assert (= (and b!3201903 ((_ is Node!10787) (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494))))))) b!3203963))

(assert (= b!3203964 b!3203965))

(assert (= (and b!3201903 ((_ is Leaf!17001) (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (value!168831 (h!41523 (t!237478 tokens!494))))))) b!3203964))

(declare-fun m!3468639 () Bool)

(assert (=> b!3203963 m!3468639))

(declare-fun m!3468641 () Bool)

(assert (=> b!3203963 m!3468641))

(declare-fun m!3468643 () Bool)

(assert (=> b!3203964 m!3468643))

(assert (=> b!3201903 m!3464725))

(declare-fun tp!1012143 () Bool)

(declare-fun e!1997552 () Bool)

(declare-fun b!3203966 () Bool)

(declare-fun tp!1012144 () Bool)

(assert (=> b!3203966 (= e!1997552 (and (inv!48956 (left!28052 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241))))) tp!1012144 (inv!48956 (right!28382 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241))))) tp!1012143))))

(declare-fun b!3203968 () Bool)

(declare-fun e!1997551 () Bool)

(declare-fun tp!1012142 () Bool)

(assert (=> b!3203968 (= e!1997551 tp!1012142)))

(declare-fun b!3203967 () Bool)

(assert (=> b!3203967 (= e!1997552 (and (inv!48963 (xs!13905 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241))))) e!1997551))))

(assert (=> b!3201890 (= tp!1011894 (and (inv!48956 (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241)))) e!1997552))))

(assert (= (and b!3201890 ((_ is Node!10787) (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241))))) b!3203966))

(assert (= b!3203967 b!3203968))

(assert (= (and b!3201890 ((_ is Leaf!17001) (c!537387 (dynLambda!14541 (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (value!168831 separatorToken!241))))) b!3203967))

(declare-fun m!3468645 () Bool)

(assert (=> b!3203966 m!3468645))

(declare-fun m!3468647 () Bool)

(assert (=> b!3203966 m!3468647))

(declare-fun m!3468649 () Bool)

(assert (=> b!3203967 m!3468649))

(assert (=> b!3201890 m!3464675))

(declare-fun b!3203969 () Bool)

(declare-fun e!1997553 () Bool)

(declare-fun tp!1012145 () Bool)

(assert (=> b!3203969 (= e!1997553 (and tp_is_empty!17289 tp!1012145))))

(assert (=> b!3202030 (= tp!1011942 e!1997553)))

(assert (= (and b!3202030 ((_ is Cons!36101) (t!237476 (originalCharacters!5920 separatorToken!241)))) b!3203969))

(declare-fun b!3203970 () Bool)

(declare-fun e!1997554 () Bool)

(assert (=> b!3203970 (= e!1997554 tp_is_empty!17289)))

(declare-fun b!3203973 () Bool)

(declare-fun tp!1012149 () Bool)

(declare-fun tp!1012148 () Bool)

(assert (=> b!3203973 (= e!1997554 (and tp!1012149 tp!1012148))))

(declare-fun b!3203971 () Bool)

(declare-fun tp!1012150 () Bool)

(declare-fun tp!1012147 () Bool)

(assert (=> b!3203971 (= e!1997554 (and tp!1012150 tp!1012147))))

(assert (=> b!3202038 (= tp!1011951 e!1997554)))

(declare-fun b!3203972 () Bool)

(declare-fun tp!1012146 () Bool)

(assert (=> b!3203972 (= e!1997554 tp!1012146)))

(assert (= (and b!3202038 ((_ is ElementMatch!9965) (regOne!20443 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3203970))

(assert (= (and b!3202038 ((_ is Concat!15401) (regOne!20443 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3203971))

(assert (= (and b!3202038 ((_ is Star!9965) (regOne!20443 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3203972))

(assert (= (and b!3202038 ((_ is Union!9965) (regOne!20443 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3203973))

(declare-fun b!3203974 () Bool)

(declare-fun e!1997555 () Bool)

(assert (=> b!3203974 (= e!1997555 tp_is_empty!17289)))

(declare-fun b!3203977 () Bool)

(declare-fun tp!1012154 () Bool)

(declare-fun tp!1012153 () Bool)

(assert (=> b!3203977 (= e!1997555 (and tp!1012154 tp!1012153))))

(declare-fun b!3203975 () Bool)

(declare-fun tp!1012155 () Bool)

(declare-fun tp!1012152 () Bool)

(assert (=> b!3203975 (= e!1997555 (and tp!1012155 tp!1012152))))

(assert (=> b!3202038 (= tp!1011950 e!1997555)))

(declare-fun b!3203976 () Bool)

(declare-fun tp!1012151 () Bool)

(assert (=> b!3203976 (= e!1997555 tp!1012151)))

(assert (= (and b!3202038 ((_ is ElementMatch!9965) (regTwo!20443 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3203974))

(assert (= (and b!3202038 ((_ is Concat!15401) (regTwo!20443 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3203975))

(assert (= (and b!3202038 ((_ is Star!9965) (regTwo!20443 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3203976))

(assert (= (and b!3202038 ((_ is Union!9965) (regTwo!20443 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3203977))

(declare-fun b!3203978 () Bool)

(declare-fun e!1997556 () Bool)

(assert (=> b!3203978 (= e!1997556 tp_is_empty!17289)))

(declare-fun b!3203981 () Bool)

(declare-fun tp!1012159 () Bool)

(declare-fun tp!1012158 () Bool)

(assert (=> b!3203981 (= e!1997556 (and tp!1012159 tp!1012158))))

(declare-fun b!3203979 () Bool)

(declare-fun tp!1012160 () Bool)

(declare-fun tp!1012157 () Bool)

(assert (=> b!3203979 (= e!1997556 (and tp!1012160 tp!1012157))))

(assert (=> b!3202028 (= tp!1011939 e!1997556)))

(declare-fun b!3203980 () Bool)

(declare-fun tp!1012156 () Bool)

(assert (=> b!3203980 (= e!1997556 tp!1012156)))

(assert (= (and b!3202028 ((_ is ElementMatch!9965) (regex!5206 (h!41522 (t!237477 rules!2135))))) b!3203978))

(assert (= (and b!3202028 ((_ is Concat!15401) (regex!5206 (h!41522 (t!237477 rules!2135))))) b!3203979))

(assert (= (and b!3202028 ((_ is Star!9965) (regex!5206 (h!41522 (t!237477 rules!2135))))) b!3203980))

(assert (= (and b!3202028 ((_ is Union!9965) (regex!5206 (h!41522 (t!237477 rules!2135))))) b!3203981))

(declare-fun b!3203982 () Bool)

(declare-fun e!1997557 () Bool)

(assert (=> b!3203982 (= e!1997557 tp_is_empty!17289)))

(declare-fun b!3203985 () Bool)

(declare-fun tp!1012164 () Bool)

(declare-fun tp!1012163 () Bool)

(assert (=> b!3203985 (= e!1997557 (and tp!1012164 tp!1012163))))

(declare-fun b!3203983 () Bool)

(declare-fun tp!1012165 () Bool)

(declare-fun tp!1012162 () Bool)

(assert (=> b!3203983 (= e!1997557 (and tp!1012165 tp!1012162))))

(assert (=> b!3202017 (= tp!1011929 e!1997557)))

(declare-fun b!3203984 () Bool)

(declare-fun tp!1012161 () Bool)

(assert (=> b!3203984 (= e!1997557 tp!1012161)))

(assert (= (and b!3202017 ((_ is ElementMatch!9965) (regex!5206 (rule!7642 (h!41523 (t!237478 tokens!494)))))) b!3203982))

(assert (= (and b!3202017 ((_ is Concat!15401) (regex!5206 (rule!7642 (h!41523 (t!237478 tokens!494)))))) b!3203983))

(assert (= (and b!3202017 ((_ is Star!9965) (regex!5206 (rule!7642 (h!41523 (t!237478 tokens!494)))))) b!3203984))

(assert (= (and b!3202017 ((_ is Union!9965) (regex!5206 (rule!7642 (h!41523 (t!237478 tokens!494)))))) b!3203985))

(declare-fun b!3203989 () Bool)

(declare-fun b_free!85157 () Bool)

(declare-fun b_next!85861 () Bool)

(assert (=> b!3203989 (= b_free!85157 (not b_next!85861))))

(declare-fun tb!157123 () Bool)

(declare-fun t!237852 () Bool)

(assert (=> (and b!3203989 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toValue!7282 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))))) t!237852) tb!157123))

(declare-fun result!199436 () Bool)

(assert (= result!199436 result!199266))

(assert (=> d!876662 t!237852))

(declare-fun t!237854 () Bool)

(declare-fun tb!157125 () Bool)

(assert (=> (and b!3203989 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237854) tb!157125))

(declare-fun result!199438 () Bool)

(assert (= result!199438 result!199124))

(assert (=> d!875962 t!237854))

(declare-fun t!237856 () Bool)

(declare-fun tb!157127 () Bool)

(assert (=> (and b!3203989 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237856) tb!157127))

(declare-fun result!199440 () Bool)

(assert (= result!199440 result!199296))

(assert (=> d!876718 t!237856))

(assert (=> d!876844 t!237856))

(declare-fun t!237858 () Bool)

(declare-fun tb!157129 () Bool)

(assert (=> (and b!3203989 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237858) tb!157129))

(declare-fun result!199442 () Bool)

(assert (= result!199442 result!199316))

(assert (=> d!876864 t!237858))

(declare-fun b_and!213155 () Bool)

(declare-fun tp!1012167 () Bool)

(assert (=> b!3203989 (= tp!1012167 (and (=> t!237858 result!199442) (=> t!237856 result!199440) (=> t!237854 result!199438) (=> t!237852 result!199436) b_and!213155))))

(declare-fun b_free!85159 () Bool)

(declare-fun b_next!85863 () Bool)

(assert (=> b!3203989 (= b_free!85159 (not b_next!85863))))

(declare-fun t!237860 () Bool)

(declare-fun tb!157131 () Bool)

(assert (=> (and b!3203989 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494))))))) t!237860) tb!157131))

(declare-fun result!199444 () Bool)

(assert (= result!199444 result!199384))

(assert (=> d!876942 t!237860))

(declare-fun t!237862 () Bool)

(declare-fun tb!157133 () Bool)

(assert (=> (and b!3203989 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103)))))) t!237862) tb!157133))

(declare-fun result!199446 () Bool)

(assert (= result!199446 result!199414))

(assert (=> d!877080 t!237862))

(declare-fun t!237864 () Bool)

(declare-fun tb!157135 () Bool)

(assert (=> (and b!3203989 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237864) tb!157135))

(declare-fun result!199448 () Bool)

(assert (= result!199448 result!199146))

(assert (=> b!3201978 t!237864))

(declare-fun t!237866 () Bool)

(declare-fun tb!157137 () Bool)

(assert (=> (and b!3203989 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241)))) t!237866) tb!157137))

(declare-fun result!199450 () Bool)

(assert (= result!199450 result!199132))

(assert (=> d!875988 t!237866))

(declare-fun tb!157139 () Bool)

(declare-fun t!237868 () Bool)

(assert (=> (and b!3203989 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079886 0))))) t!237868) tb!157139))

(declare-fun result!199452 () Bool)

(assert (= result!199452 result!199394))

(assert (=> d!876988 t!237868))

(declare-fun tb!157141 () Bool)

(declare-fun t!237870 () Bool)

(assert (=> (and b!3203989 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toChars!7141 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))))) t!237870) tb!157141))

(declare-fun result!199454 () Bool)

(assert (= result!199454 result!199404))

(assert (=> d!877060 t!237870))

(declare-fun t!237872 () Bool)

(declare-fun tb!157143 () Bool)

(assert (=> (and b!3203989 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494)))))) t!237872) tb!157143))

(declare-fun result!199456 () Bool)

(assert (= result!199456 result!199140))

(assert (=> b!3203534 t!237872))

(declare-fun tb!157145 () Bool)

(declare-fun t!237874 () Bool)

(assert (=> (and b!3203989 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079899 0))))) t!237874) tb!157145))

(declare-fun result!199458 () Bool)

(assert (= result!199458 result!199424))

(assert (=> d!877132 t!237874))

(declare-fun tb!157147 () Bool)

(declare-fun t!237876 () Bool)

(assert (=> (and b!3203989 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079897 0))))) t!237876) tb!157147))

(declare-fun result!199460 () Bool)

(assert (= result!199460 result!199216))

(assert (=> d!876236 t!237876))

(assert (=> d!876002 t!237872))

(assert (=> b!3201981 t!237866))

(assert (=> d!876054 t!237864))

(declare-fun t!237878 () Bool)

(declare-fun tb!157149 () Bool)

(assert (=> (and b!3203989 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237878) tb!157149))

(declare-fun result!199462 () Bool)

(assert (= result!199462 result!199286))

(assert (=> d!876718 t!237878))

(declare-fun tp!1012168 () Bool)

(declare-fun b_and!213157 () Bool)

(assert (=> b!3203989 (= tp!1012168 (and (=> t!237870 result!199454) (=> t!237876 result!199460) (=> t!237862 result!199446) (=> t!237878 result!199462) (=> t!237864 result!199448) (=> t!237874 result!199458) (=> t!237872 result!199456) (=> t!237866 result!199450) (=> t!237868 result!199452) (=> t!237860 result!199444) b_and!213157))))

(declare-fun b!3203986 () Bool)

(declare-fun e!1997563 () Bool)

(declare-fun e!1997561 () Bool)

(declare-fun tp!1012169 () Bool)

(assert (=> b!3203986 (= e!1997563 (and (inv!48953 (h!41523 (t!237478 (t!237478 tokens!494)))) e!1997561 tp!1012169))))

(assert (=> b!3202015 (= tp!1011928 e!1997563)))

(declare-fun b!3203987 () Bool)

(declare-fun e!1997559 () Bool)

(declare-fun tp!1012166 () Bool)

(assert (=> b!3203987 (= e!1997561 (and (inv!21 (value!168831 (h!41523 (t!237478 (t!237478 tokens!494))))) e!1997559 tp!1012166))))

(declare-fun b!3203988 () Bool)

(declare-fun tp!1012170 () Bool)

(declare-fun e!1997560 () Bool)

(assert (=> b!3203988 (= e!1997559 (and tp!1012170 (inv!48949 (tag!5728 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (inv!48952 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) e!1997560))))

(assert (=> b!3203989 (= e!1997560 (and tp!1012167 tp!1012168))))

(assert (= b!3203988 b!3203989))

(assert (= b!3203987 b!3203988))

(assert (= b!3203986 b!3203987))

(assert (= (and b!3202015 ((_ is Cons!36103) (t!237478 (t!237478 tokens!494)))) b!3203986))

(declare-fun m!3468651 () Bool)

(assert (=> b!3203986 m!3468651))

(declare-fun m!3468653 () Bool)

(assert (=> b!3203987 m!3468653))

(declare-fun m!3468655 () Bool)

(assert (=> b!3203988 m!3468655))

(declare-fun m!3468657 () Bool)

(assert (=> b!3203988 m!3468657))

(declare-fun b!3203990 () Bool)

(declare-fun e!1997564 () Bool)

(declare-fun tp!1012171 () Bool)

(assert (=> b!3203990 (= e!1997564 (and tp_is_empty!17289 tp!1012171))))

(assert (=> b!3202016 (= tp!1011925 e!1997564)))

(assert (= (and b!3202016 ((_ is Cons!36101) (originalCharacters!5920 (h!41523 (t!237478 tokens!494))))) b!3203990))

(declare-fun b!3203991 () Bool)

(declare-fun e!1997565 () Bool)

(assert (=> b!3203991 (= e!1997565 tp_is_empty!17289)))

(declare-fun b!3203994 () Bool)

(declare-fun tp!1012175 () Bool)

(declare-fun tp!1012174 () Bool)

(assert (=> b!3203994 (= e!1997565 (and tp!1012175 tp!1012174))))

(declare-fun b!3203992 () Bool)

(declare-fun tp!1012176 () Bool)

(declare-fun tp!1012173 () Bool)

(assert (=> b!3203992 (= e!1997565 (and tp!1012176 tp!1012173))))

(assert (=> b!3202037 (= tp!1011948 e!1997565)))

(declare-fun b!3203993 () Bool)

(declare-fun tp!1012172 () Bool)

(assert (=> b!3203993 (= e!1997565 tp!1012172)))

(assert (= (and b!3202037 ((_ is ElementMatch!9965) (reg!10294 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3203991))

(assert (= (and b!3202037 ((_ is Concat!15401) (reg!10294 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3203992))

(assert (= (and b!3202037 ((_ is Star!9965) (reg!10294 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3203993))

(assert (= (and b!3202037 ((_ is Union!9965) (reg!10294 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3203994))

(declare-fun b!3203997 () Bool)

(declare-fun b_free!85161 () Bool)

(declare-fun b_next!85865 () Bool)

(assert (=> b!3203997 (= b_free!85161 (not b_next!85865))))

(declare-fun t!237880 () Bool)

(declare-fun tb!157151 () Bool)

(assert (=> (and b!3203997 (= (toValue!7282 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toValue!7282 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))))) t!237880) tb!157151))

(declare-fun result!199464 () Bool)

(assert (= result!199464 result!199266))

(assert (=> d!876662 t!237880))

(declare-fun tb!157153 () Bool)

(declare-fun t!237882 () Bool)

(assert (=> (and b!3203997 (= (toValue!7282 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237882) tb!157153))

(declare-fun result!199466 () Bool)

(assert (= result!199466 result!199124))

(assert (=> d!875962 t!237882))

(declare-fun t!237884 () Bool)

(declare-fun tb!157155 () Bool)

(assert (=> (and b!3203997 (= (toValue!7282 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237884) tb!157155))

(declare-fun result!199468 () Bool)

(assert (= result!199468 result!199296))

(assert (=> d!876718 t!237884))

(assert (=> d!876844 t!237884))

(declare-fun t!237886 () Bool)

(declare-fun tb!157157 () Bool)

(assert (=> (and b!3203997 (= (toValue!7282 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237886) tb!157157))

(declare-fun result!199470 () Bool)

(assert (= result!199470 result!199316))

(assert (=> d!876864 t!237886))

(declare-fun b_and!213159 () Bool)

(declare-fun tp!1012179 () Bool)

(assert (=> b!3203997 (= tp!1012179 (and (=> t!237880 result!199464) (=> t!237884 result!199468) (=> t!237882 result!199466) (=> t!237886 result!199470) b_and!213159))))

(declare-fun b_free!85163 () Bool)

(declare-fun b_next!85867 () Bool)

(assert (=> b!3203997 (= b_free!85163 (not b_next!85867))))

(declare-fun tb!157159 () Bool)

(declare-fun t!237888 () Bool)

(assert (=> (and b!3203997 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494))))))) t!237888) tb!157159))

(declare-fun result!199472 () Bool)

(assert (= result!199472 result!199384))

(assert (=> d!876942 t!237888))

(declare-fun t!237890 () Bool)

(declare-fun tb!157161 () Bool)

(assert (=> (and b!3203997 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (Cons!36103 (h!41523 tokens!494) Nil!36103)))))) t!237890) tb!157161))

(declare-fun result!199474 () Bool)

(assert (= result!199474 result!199414))

(assert (=> d!877080 t!237890))

(declare-fun tb!157163 () Bool)

(declare-fun t!237892 () Bool)

(assert (=> (and b!3203997 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237892) tb!157163))

(declare-fun result!199476 () Bool)

(assert (= result!199476 result!199146))

(assert (=> b!3201978 t!237892))

(declare-fun t!237894 () Bool)

(declare-fun tb!157165 () Bool)

(assert (=> (and b!3203997 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241)))) t!237894) tb!157165))

(declare-fun result!199478 () Bool)

(assert (= result!199478 result!199132))

(assert (=> d!875988 t!237894))

(declare-fun t!237896 () Bool)

(declare-fun tb!157167 () Bool)

(assert (=> (and b!3203997 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079886 0))))) t!237896) tb!157167))

(declare-fun result!199480 () Bool)

(assert (= result!199480 result!199394))

(assert (=> d!876988 t!237896))

(declare-fun tb!157169 () Bool)

(declare-fun t!237898 () Bool)

(assert (=> (and b!3203997 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toChars!7141 (transformation!5206 (rule!7642 (_1!20874 (get!11488 lt!1080102)))))) t!237898) tb!157169))

(declare-fun result!199482 () Bool)

(assert (= result!199482 result!199404))

(assert (=> d!877060 t!237898))

(declare-fun tb!157171 () Bool)

(declare-fun t!237900 () Bool)

(assert (=> (and b!3203997 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494)))))) t!237900) tb!157171))

(declare-fun result!199484 () Bool)

(assert (= result!199484 result!199140))

(assert (=> b!3203534 t!237900))

(declare-fun t!237902 () Bool)

(declare-fun tb!157173 () Bool)

(assert (=> (and b!3203997 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079899 0))))) t!237902) tb!157173))

(declare-fun result!199486 () Bool)

(assert (= result!199486 result!199424))

(assert (=> d!877132 t!237902))

(declare-fun t!237904 () Bool)

(declare-fun tb!157175 () Bool)

(assert (=> (and b!3203997 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toChars!7141 (transformation!5206 (rule!7642 (apply!8150 lt!1079897 0))))) t!237904) tb!157175))

(declare-fun result!199488 () Bool)

(assert (= result!199488 result!199216))

(assert (=> d!876236 t!237904))

(assert (=> d!876002 t!237900))

(assert (=> b!3201981 t!237894))

(assert (=> d!876054 t!237892))

(declare-fun t!237906 () Bool)

(declare-fun tb!157177 () Bool)

(assert (=> (and b!3203997 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494))))) t!237906) tb!157177))

(declare-fun result!199490 () Bool)

(assert (= result!199490 result!199286))

(assert (=> d!876718 t!237906))

(declare-fun b_and!213161 () Bool)

(declare-fun tp!1012180 () Bool)

(assert (=> b!3203997 (= tp!1012180 (and (=> t!237892 result!199476) (=> t!237904 result!199488) (=> t!237906 result!199490) (=> t!237890 result!199474) (=> t!237902 result!199486) (=> t!237898 result!199482) (=> t!237888 result!199472) (=> t!237894 result!199478) (=> t!237896 result!199480) (=> t!237900 result!199484) b_and!213161))))

(declare-fun e!1997568 () Bool)

(assert (=> b!3203997 (= e!1997568 (and tp!1012179 tp!1012180))))

(declare-fun e!1997566 () Bool)

(declare-fun b!3203996 () Bool)

(declare-fun tp!1012178 () Bool)

(assert (=> b!3203996 (= e!1997566 (and tp!1012178 (inv!48949 (tag!5728 (h!41522 (t!237477 (t!237477 rules!2135))))) (inv!48952 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) e!1997568))))

(declare-fun b!3203995 () Bool)

(declare-fun e!1997567 () Bool)

(declare-fun tp!1012177 () Bool)

(assert (=> b!3203995 (= e!1997567 (and e!1997566 tp!1012177))))

(assert (=> b!3202027 (= tp!1011938 e!1997567)))

(assert (= b!3203996 b!3203997))

(assert (= b!3203995 b!3203996))

(assert (= (and b!3202027 ((_ is Cons!36102) (t!237477 (t!237477 rules!2135)))) b!3203995))

(declare-fun m!3468659 () Bool)

(assert (=> b!3203996 m!3468659))

(declare-fun m!3468661 () Bool)

(assert (=> b!3203996 m!3468661))

(declare-fun b!3203998 () Bool)

(declare-fun e!1997570 () Bool)

(assert (=> b!3203998 (= e!1997570 tp_is_empty!17289)))

(declare-fun b!3204001 () Bool)

(declare-fun tp!1012184 () Bool)

(declare-fun tp!1012183 () Bool)

(assert (=> b!3204001 (= e!1997570 (and tp!1012184 tp!1012183))))

(declare-fun b!3203999 () Bool)

(declare-fun tp!1012185 () Bool)

(declare-fun tp!1012182 () Bool)

(assert (=> b!3203999 (= e!1997570 (and tp!1012185 tp!1012182))))

(assert (=> b!3202036 (= tp!1011952 e!1997570)))

(declare-fun b!3204000 () Bool)

(declare-fun tp!1012181 () Bool)

(assert (=> b!3204000 (= e!1997570 tp!1012181)))

(assert (= (and b!3202036 ((_ is ElementMatch!9965) (regOne!20442 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3203998))

(assert (= (and b!3202036 ((_ is Concat!15401) (regOne!20442 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3203999))

(assert (= (and b!3202036 ((_ is Star!9965) (regOne!20442 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3204000))

(assert (= (and b!3202036 ((_ is Union!9965) (regOne!20442 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3204001))

(declare-fun b!3204002 () Bool)

(declare-fun e!1997571 () Bool)

(assert (=> b!3204002 (= e!1997571 tp_is_empty!17289)))

(declare-fun b!3204005 () Bool)

(declare-fun tp!1012189 () Bool)

(declare-fun tp!1012188 () Bool)

(assert (=> b!3204005 (= e!1997571 (and tp!1012189 tp!1012188))))

(declare-fun b!3204003 () Bool)

(declare-fun tp!1012190 () Bool)

(declare-fun tp!1012187 () Bool)

(assert (=> b!3204003 (= e!1997571 (and tp!1012190 tp!1012187))))

(assert (=> b!3202036 (= tp!1011949 e!1997571)))

(declare-fun b!3204004 () Bool)

(declare-fun tp!1012186 () Bool)

(assert (=> b!3204004 (= e!1997571 tp!1012186)))

(assert (= (and b!3202036 ((_ is ElementMatch!9965) (regTwo!20442 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3204002))

(assert (= (and b!3202036 ((_ is Concat!15401) (regTwo!20442 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3204003))

(assert (= (and b!3202036 ((_ is Star!9965) (regTwo!20442 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3204004))

(assert (= (and b!3202036 ((_ is Union!9965) (regTwo!20442 (regex!5206 (rule!7642 (h!41523 tokens!494)))))) b!3204005))

(declare-fun b!3204008 () Bool)

(declare-fun e!1997574 () Bool)

(assert (=> b!3204008 (= e!1997574 true)))

(declare-fun b!3204007 () Bool)

(declare-fun e!1997573 () Bool)

(assert (=> b!3204007 (= e!1997573 e!1997574)))

(declare-fun b!3204006 () Bool)

(declare-fun e!1997572 () Bool)

(assert (=> b!3204006 (= e!1997572 e!1997573)))

(assert (=> b!3201408 e!1997572))

(assert (= b!3204007 b!3204008))

(assert (= b!3204006 b!3204007))

(assert (= (and b!3201408 ((_ is Cons!36102) (t!237477 rules!2135))) b!3204006))

(assert (=> b!3204008 (< (dynLambda!14533 order!18349 (toValue!7282 (transformation!5206 (h!41522 (t!237477 rules!2135))))) (dynLambda!14534 order!18351 lambda!117208))))

(assert (=> b!3204008 (< (dynLambda!14535 order!18353 (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135))))) (dynLambda!14534 order!18351 lambda!117208))))

(declare-fun b_lambda!87653 () Bool)

(assert (= b_lambda!87639 (or (and b!3203989 b_free!85159 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))))) (and b!3201192 b_free!85127 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))))) (and b!3202029 b_free!85147 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))))) (and b!3203997 b_free!85163 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))))) (and b!3202018 b_free!85143) (and b!3201193 b_free!85131 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))))) (and b!3201175 b_free!85123 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))))) b_lambda!87653)))

(declare-fun b_lambda!87655 () Bool)

(assert (= b_lambda!87605 (or (and b!3202018 b_free!85143 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201192 b_free!85127 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201193 b_free!85131 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3203989 b_free!85159 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3202029 b_free!85147 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3203997 b_free!85163 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201175 b_free!85123) b_lambda!87655)))

(declare-fun b_lambda!87657 () Bool)

(assert (= b_lambda!87589 (or b!3201187 b_lambda!87657)))

(assert (=> d!876468 d!876066))

(declare-fun b_lambda!87659 () Bool)

(assert (= b_lambda!87607 (or (and b!3201192 b_free!85125 (= (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201193 b_free!85129 (= (toValue!7282 (transformation!5206 (h!41522 rules!2135))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3203989 b_free!85157 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3203997 b_free!85161 (= (toValue!7282 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201175 b_free!85121) (and b!3202018 b_free!85141 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3202029 b_free!85145 (= (toValue!7282 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) b_lambda!87659)))

(declare-fun b_lambda!87661 () Bool)

(assert (= b_lambda!87587 (or d!875778 b_lambda!87661)))

(declare-fun bs!541184 () Bool)

(declare-fun d!877316 () Bool)

(assert (= bs!541184 (and d!877316 d!875778)))

(assert (=> bs!541184 (= (dynLambda!14538 lambda!117208 (h!41523 (list!12833 (seqFromList!3483 tokens!494)))) (rulesProduceIndividualToken!2287 thiss!18206 rules!2135 (h!41523 (list!12833 (seqFromList!3483 tokens!494)))))))

(assert (=> bs!541184 m!3465815))

(assert (=> b!3202718 d!877316))

(declare-fun b_lambda!87663 () Bool)

(assert (= b_lambda!87615 (or (and b!3201175 b_free!85123 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 tokens!494)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))))) (and b!3203989 b_free!85159) (and b!3201192 b_free!85127 (= (toChars!7141 (transformation!5206 (rule!7642 separatorToken!241))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))))) (and b!3202018 b_free!85143 (= (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))))) (and b!3201193 b_free!85131 (= (toChars!7141 (transformation!5206 (h!41522 rules!2135))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))))) (and b!3203997 b_free!85163 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))))) (and b!3202029 b_free!85147 (= (toChars!7141 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toChars!7141 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))))) b_lambda!87663)))

(declare-fun b_lambda!87665 () Bool)

(assert (= b_lambda!87611 (or (and b!3201192 b_free!85125 (= (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201193 b_free!85129 (= (toValue!7282 (transformation!5206 (h!41522 rules!2135))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3203989 b_free!85157 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3203997 b_free!85161 (= (toValue!7282 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201175 b_free!85121) (and b!3202018 b_free!85141 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3202029 b_free!85145 (= (toValue!7282 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) b_lambda!87665)))

(declare-fun b_lambda!87667 () Bool)

(assert (= b_lambda!87613 (or (and b!3201192 b_free!85125 (= (toValue!7282 (transformation!5206 (rule!7642 separatorToken!241))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201193 b_free!85129 (= (toValue!7282 (transformation!5206 (h!41522 rules!2135))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3203989 b_free!85157 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 (t!237478 tokens!494)))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3203997 b_free!85161 (= (toValue!7282 (transformation!5206 (h!41522 (t!237477 (t!237477 rules!2135))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3201175 b_free!85121) (and b!3202018 b_free!85141 (= (toValue!7282 (transformation!5206 (rule!7642 (h!41523 (t!237478 tokens!494))))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) (and b!3202029 b_free!85145 (= (toValue!7282 (transformation!5206 (h!41522 (t!237477 rules!2135)))) (toValue!7282 (transformation!5206 (rule!7642 (h!41523 tokens!494)))))) b_lambda!87667)))

(declare-fun b_lambda!87669 () Bool)

(assert (= b_lambda!87597 (or b!3201187 b_lambda!87669)))

(assert (=> d!876658 d!876062))

(declare-fun b_lambda!87671 () Bool)

(assert (= b_lambda!87643 (or b!3201181 b_lambda!87671)))

(declare-fun bs!541185 () Bool)

(declare-fun d!877318 () Bool)

(assert (= bs!541185 (and d!877318 b!3201181)))

(assert (=> bs!541185 (= (dynLambda!14538 lambda!117203 (h!41523 (t!237478 tokens!494))) (rulesProduceIndividualToken!2287 thiss!18206 rules!2135 (h!41523 (t!237478 tokens!494))))))

(assert (=> bs!541185 m!3463533))

(assert (=> b!3203611 d!877318))

(declare-fun b_lambda!87673 () Bool)

(assert (= b_lambda!87647 (or b!3201187 b_lambda!87673)))

(assert (=> b!3203628 d!876066))

(check-sat (not d!877050) (not d!876414) (not d!876464) (not b!3202460) (not b!3203643) (not b!3203917) b_and!213153 (not d!876978) (not d!876870) (not b!3203671) (not d!877228) (not b!3203862) (not b!3203968) (not d!877172) (not b!3202315) (not b_lambda!87547) b_and!213077 (not b!3203743) (not d!877160) (not b_lambda!87559) (not b!3204001) (not b_lambda!87653) (not tb!156957) (not b!3203969) (not d!876866) (not d!876690) (not b!3203935) (not d!877244) (not b!3203755) (not b!3203770) (not d!876244) (not b!3203813) (not b!3202400) (not b_lambda!87649) (not d!876246) (not b!3203358) (not d!877158) (not d!876910) (not d!876894) (not b_lambda!87657) (not bm!231837) (not b!3202320) (not d!876200) (not b!3203541) (not bm!231933) (not d!876852) (not d!876450) (not d!876290) (not b!3202387) (not b!3202327) (not b!3203765) (not b!3202657) (not b!3202723) (not d!877136) (not d!876942) (not b!3203820) (not b!3203713) (not b!3203756) (not tb!156987) (not d!877174) (not b_lambda!87543) b_and!213083 (not d!876994) (not b!3203999) (not b!3202809) (not b!3202386) (not b!3203522) (not b!3202235) (not b!3202350) (not b!3202348) (not d!877258) (not bm!231950) (not b!3203550) (not b!3203360) (not b!3203764) (not d!877232) (not b!3203380) b_and!213151 (not b_lambda!87557) (not b!3203374) (not b!3203785) (not b!3203687) (not b!3203925) (not b!3202415) b_and!213155 (not d!876958) (not b!3203754) (not b!3203942) (not d!876286) (not b!3202764) (not b!3203771) (not b!3203714) (not d!876462) (not b!3203760) (not b!3203326) (not b!3203939) (not b!3202410) (not d!876944) (not b!3202765) (not bm!231923) (not bm!231940) (not b!3203992) (not b!3203901) (not b!3203675) (not d!877300) (not b!3202639) (not d!877060) (not b!3203850) (not b!3203996) (not d!876990) (not b!3203544) (not d!877180) (not d!876988) (not b!3203776) (not b!3203825) (not b!3203652) (not b!3203864) (not b!3203884) (not d!876278) (not b!3202434) (not b!3202324) (not b!3203928) (not b!3203903) (not b!3203762) b_and!213149 (not d!877046) (not b!3203716) (not b!3203730) (not b!3203075) (not b!3203665) (not d!876702) (not b!3203637) (not d!876940) (not b!3203649) (not bm!231811) (not b!3203841) (not bm!231947) (not b!3202644) (not d!877018) (not b!3203906) (not d!877184) (not d!876996) (not b!3203700) (not d!877156) (not b!3203905) (not b!3203735) (not b!3203875) (not b!3203837) (not b!3203954) (not d!877028) (not b!3202599) (not b!3203466) (not b!3203993) (not b_next!85847) (not b!3203635) b_and!213079 (not d!876238) (not d!877000) (not b!3203831) (not b!3203688) (not tb!157083) (not d!876228) (not d!876980) (not b_lambda!87549) (not d!877140) (not b!3203485) (not b!3203966) (not b!3203328) (not b!3203330) (not d!877112) (not d!876216) (not b!3203543) (not b!3203923) (not b!3203715) (not b!3203629) (not d!876856) (not b!3203840) (not b!3203731) (not b_lambda!87551) (not b!3202436) (not d!877116) (not d!877218) (not b!3203557) (not b!3203452) b_and!213161 (not d!877204) (not d!876234) (not b!3203555) (not b!3203961) (not bm!231846) (not b!3203948) (not b!3203797) (not b!3203977) (not b!3203579) (not b!3202728) (not b!3202407) (not b!3203376) (not d!877246) (not b!3203803) (not b!3202597) (not d!877026) (not b!3203604) (not bm!231954) (not b!3203362) (not d!876482) (not b_lambda!87673) (not b!3202316) (not d!877124) (not b!3202335) (not b_next!85831) (not tb!156907) (not b!3202237) (not b!3202598) (not bm!231935) (not b!3203613) (not d!876242) (not b_lambda!87579) (not b!3203565) (not b!3203553) (not b!3202322) (not b_lambda!87663) (not b!3202301) (not b!3203074) (not b!3203980) (not b!3203933) (not b!3203305) (not b!3202402) (not b!3203634) (not d!877032) (not d!877138) (not b!3202768) (not b_next!85867) (not b!3203531) (not bs!541185) (not bm!231924) (not d!876842) (not b!3203818) (not b!3203673) (not b!3203826) (not b!3203068) (not b!3203836) b_and!213145 (not b!3203810) (not b!3202737) (not b!3203721) (not d!876678) (not b!3203712) (not b!3203863) (not b!3203886) (not d!877262) (not d!876138) (not b!3203767) (not b!3203596) (not bm!231922) (not b!3202448) (not d!876992) (not b!3202288) (not bm!231946) (not b!3203919) (not d!877198) (not d!877260) (not d!876156) (not d!877200) (not d!876128) (not bm!231869) (not b!3203062) (not b!3202428) (not d!877168) (not d!877130) (not b_next!85827) (not d!876222) (not b!3202319) (not b!3203650) (not b!3202653) (not b!3202325) (not b_lambda!87661) (not d!877236) (not d!877264) (not b_next!85835) (not b!3202654) (not b_next!85829) (not b!3203072) (not b_lambda!87665) (not b!3203949) (not b!3203976) (not d!877196) (not b!3203612) (not b!3203644) (not b!3203653) (not b!3202318) (not d!876416) (not d!876948) (not b!3203317) (not b!3203691) (not b!3203448) (not b!3203952) (not d!877176) (not d!876472) (not d!876660) (not b_next!85845) (not d!877288) (not b!3203556) (not b!3203351) (not d!876710) (not b!3203572) (not d!877230) (not b!3203729) (not d!877216) (not b!3203438) (not b!3202470) (not b!3203964) (not b!3202719) (not b!3203761) (not b!3202339) (not d!876984) (not b!3203719) (not b!3202438) (not b!3202418) (not d!877128) (not b!3202658) b_and!213081 (not b!3203861) (not b!3203871) (not b!3202382) (not bm!231956) (not bm!231937) (not b!3203983) (not b!3202241) (not bm!231955) (not b!3203963) (not b!3203625) (not b!3203855) (not b!3204005) (not d!877144) (not b!3203732) (not b!3203521) (not b!3203486) (not b!3203678) (not b!3203944) (not b!3204003) (not b!3201903) (not bm!231820) (not d!876938) (not b!3202450) (not b!3202381) (not d!877004) (not b!3203870) (not b!3203437) (not b!3203584) (not b!3203834) (not bs!541184) (not b!3203662) (not d!877314) (not b!3203814) (not bm!231953) (not b!3202432) (not d!876250) (not b_next!85849) (not b!3203379) (not b!3203967) (not b!3202455) (not b!3202349) (not d!877118) (not b!3203941) (not d!876466) (not b!3203897) (not b!3201890) (not b!3203927) (not d!876716) (not d!877240) (not tb!157103) (not b!3203401) (not b!3203646) (not b!3202769) (not b!3203798) (not b!3203592) (not b!3204000) (not tb!157093) (not b!3203560) (not b!3202374) (not b!3203838) (not d!876986) (not b!3203666) (not d!877190) (not d!877068) (not d!876252) (not b_lambda!87553) (not bm!231876) (not b!3203324) (not b!3203622) (not b_lambda!87545) (not d!876972) (not d!876400) (not b!3203331) (not b!3203874) (not b!3203956) (not d!877276) (not b!3203936) (not b!3203632) (not b!3203801) (not d!877220) (not b!3203595) (not d!877178) (not b!3202397) (not b!3203784) (not b!3203534) (not d!877210) (not b!3203552) (not b!3203084) (not b!3203633) (not b!3202666) (not d!877014) (not b!3203690) (not b!3203581) (not b!3203972) (not d!876888) (not b!3203759) (not b!3202390) (not d!876240) (not b!3203994) (not b!3203547) (not bm!231927) (not b!3203319) (not b!3202439) (not d!877058) (not b!3203467) (not b!3203987) (not d!876248) (not b_next!85851) (not bm!231823) (not d!876750) (not b!3203842) (not d!876274) (not b!3202372) (not d!877048) (not b!3203984) (not d!877134) (not b!3203064) (not d!877042) (not d!876862) (not d!877076) (not b!3203995) (not b_lambda!87599) (not d!876224) (not d!876706) (not b!3203334) (not tb!156977) (not b!3203946) (not b!3203670) (not d!876920) (not b!3203822) (not b!3203608) (not b!3202641) (not bm!231819) (not d!877222) (not bm!231941) (not b!3202435) (not b!3202191) (not b!3203945) (not d!877292) (not b!3203669) (not d!876186) (not d!877006) (not b!3203953) (not b!3202756) (not b_lambda!87667) (not bm!231939) (not b_lambda!87555) (not b!3203638) (not b!3202454) (not b!3203887) (not b!3203559) (not d!876976) (not b_next!85863) (not b!3202351) (not b!3202430) (not b!3203960) (not d!877114) (not d!876956) (not b!3203353) (not b!3203883) (not d!876144) (not d!877270) (not d!877080) (not b_lambda!87645) (not d!876202) (not b!3202384) (not d!876674) (not d!877238) (not b!3203746) (not b!3203580) (not d!876226) (not d!876442) (not d!876398) (not b!3202726) (not d!877154) (not d!876974) (not d!876952) (not b!3203548) (not b!3203363) (not bm!231932) (not d!877090) (not b!3202656) (not d!877294) (not d!877122) tp_is_empty!17289 (not b!3203979) (not b!3203916) (not b!3203775) (not b_lambda!87641) (not b!3203985) (not b!3203303) (not b!3202760) (not b!3203795) (not b!3203757) (not d!877072) (not b!3202317) (not b!3204006) (not d!877298) (not b!3203654) (not b!3202766) (not b!3203774) b_and!213147 (not b!3203692) (not b!3203066) (not b!3203129) (not d!877010) (not b!3201980) (not d!877020) (not d!876402) (not b!3203554) (not d!877100) (not bm!231958) (not bm!231926) (not b_lambda!87655) (not b!3202290) (not b!3203899) (not bm!231824) (not d!877224) (not d!877088) (not d!876858) (not bm!231934) (not b!3202643) (not d!877132) (not d!877022) (not b!3203950) (not b!3202337) (not b!3203971) (not bm!231945) (not b!3202333) (not d!876950) (not b!3203965) (not d!877268) (not d!876868) (not b!3203937) (not d!877092) (not tb!157073) (not d!877310) (not d!876854) (not d!877164) (not b!3203593) (not d!877304) (not b!3203865) (not b!3202392) (not b!3203975) (not b!3203701) (not b!3203958) (not d!876260) (not d!876714) (not b!3203677) (not b!3203624) (not b_next!85865) (not d!877078) (not d!876198) (not b!3203302) (not bm!231870) (not b!3203535) (not b_lambda!87669) (not b!3203619) (not b!3203606) (not b!3203931) (not b!3203856) (not bm!231948) (not b!3203867) (not b!3202302) (not d!876718) (not d!876964) (not b!3203873) (not d!877146) (not b!3204004) (not bm!231959) (not b!3203533) (not b!3203772) (not b!3202451) (not d!876158) (not d!876236) (not b!3203073) (not d!877070) (not b!3202703) (not d!877008) (not b!3203973) (not bm!231821) (not b!3203529) (not b_lambda!87659) (not b_lambda!87561) (not b!3203753) (not b!3203932) (not d!876276) (not d!876906) (not b_lambda!87651) (not b!3203435) (not b!3203868) (not d!877312) (not b!3203929) (not tb!157007) (not d!876460) (not b_next!85833) (not d!876664) (not bm!231877) (not b!3202440) (not b!3203990) (not d!877106) (not b!3202190) (not b!3202289) (not b!3203748) (not b!3203852) (not d!876188) (not d!876696) (not b!3203627) (not tb!157113) (not b!3202758) (not b!3203957) (not b!3203540) (not d!876454) (not b!3203728) (not bm!231928) (not d!877084) (not b!3202828) (not b!3203737) (not bm!231949) (not d!877030) (not d!877162) (not b!3203924) b_and!213157 (not b!3202736) (not b!3203758) (not d!877254) (not b_next!85825) (not b!3203600) (not b!3203598) (not b!3203310) b_and!213085 (not b!3203869) (not d!877012) (not b!3203594) (not d!877248) (not b!3203586) (not b!3202238) (not b!3202385) (not b!3203641) (not b_lambda!87671) (not bm!231929) (not d!877296) (not b!3203563) (not bm!231936) (not d!877104) (not bm!231849) (not d!876218) (not d!876936) (not b!3203621) (not d!876214) (not d!876846) (not b!3203610) (not b!3203574) (not b!3203833) (not b!3203631) (not b!3203647) (not b!3203599) (not d!877056) (not d!876452) (not d!877110) (not b!3203805) (not b!3203962) (not bm!231925) (not d!876280) (not b!3203981) (not b!3203830) (not d!877074) (not b!3202458) (not b!3202192) (not d!876982) b_and!213159 (not b!3203726) (not b!3203940) (not b!3203866) (not b!3202433) (not b_next!85861) (not b!3203988) (not d!877226) (not b!3203986) (not d!877286) (not d!877272) (not bm!231818) (not b!3203558) (not bm!231825) (not d!877256) (not bm!231942) (not b!3203742) (not d!876230) (not d!877120) (not b!3203918))
(check-sat b_and!213083 b_and!213149 b_and!213161 (not b_next!85831) (not b_next!85867) b_and!213145 (not b_next!85845) b_and!213081 (not b_next!85849) (not b_next!85851) (not b_next!85863) b_and!213147 (not b_next!85865) b_and!213159 (not b_next!85861) b_and!213153 b_and!213077 b_and!213151 b_and!213155 (not b_next!85847) b_and!213079 (not b_next!85835) (not b_next!85827) (not b_next!85829) (not b_next!85833) b_and!213157 (not b_next!85825) b_and!213085)
