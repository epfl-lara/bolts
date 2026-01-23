; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!260754 () Bool)

(assert start!260754)

(declare-fun b!2677970 () Bool)

(declare-fun b_free!75529 () Bool)

(declare-fun b_next!76233 () Bool)

(assert (=> b!2677970 (= b_free!75529 (not b_next!76233))))

(declare-fun tp!846775 () Bool)

(declare-fun b_and!198129 () Bool)

(assert (=> b!2677970 (= tp!846775 b_and!198129)))

(declare-fun b_free!75531 () Bool)

(declare-fun b_next!76235 () Bool)

(assert (=> b!2677970 (= b_free!75531 (not b_next!76235))))

(declare-fun tp!846778 () Bool)

(declare-fun b_and!198131 () Bool)

(assert (=> b!2677970 (= tp!846778 b_and!198131)))

(declare-fun b!2677967 () Bool)

(declare-fun b_free!75533 () Bool)

(declare-fun b_next!76237 () Bool)

(assert (=> b!2677967 (= b_free!75533 (not b_next!76237))))

(declare-fun tp!846766 () Bool)

(declare-fun b_and!198133 () Bool)

(assert (=> b!2677967 (= tp!846766 b_and!198133)))

(declare-fun b_free!75535 () Bool)

(declare-fun b_next!76239 () Bool)

(assert (=> b!2677967 (= b_free!75535 (not b_next!76239))))

(declare-fun tp!846776 () Bool)

(declare-fun b_and!198135 () Bool)

(assert (=> b!2677967 (= tp!846776 b_and!198135)))

(declare-fun b!2677966 () Bool)

(declare-fun b_free!75537 () Bool)

(declare-fun b_next!76241 () Bool)

(assert (=> b!2677966 (= b_free!75537 (not b_next!76241))))

(declare-fun tp!846773 () Bool)

(declare-fun b_and!198137 () Bool)

(assert (=> b!2677966 (= tp!846773 b_and!198137)))

(declare-fun b_free!75539 () Bool)

(declare-fun b_next!76243 () Bool)

(assert (=> b!2677966 (= b_free!75539 (not b_next!76243))))

(declare-fun tp!846768 () Bool)

(declare-fun b_and!198139 () Bool)

(assert (=> b!2677966 (= tp!846768 b_and!198139)))

(declare-fun bs!479958 () Bool)

(declare-fun b!2677958 () Bool)

(declare-fun b!2677968 () Bool)

(assert (= bs!479958 (and b!2677958 b!2677968)))

(declare-fun lambda!100040 () Int)

(declare-fun lambda!100039 () Int)

(assert (=> bs!479958 (not (= lambda!100040 lambda!100039))))

(declare-fun b!2677983 () Bool)

(declare-fun e!1688070 () Bool)

(assert (=> b!2677983 (= e!1688070 true)))

(declare-fun b!2677982 () Bool)

(declare-fun e!1688069 () Bool)

(assert (=> b!2677982 (= e!1688069 e!1688070)))

(declare-fun b!2677981 () Bool)

(declare-fun e!1688068 () Bool)

(assert (=> b!2677981 (= e!1688068 e!1688069)))

(assert (=> b!2677958 e!1688068))

(assert (= b!2677982 b!2677983))

(assert (= b!2677981 b!2677982))

(declare-datatypes ((List!30917 0))(
  ( (Nil!30817) (Cons!30817 (h!36237 (_ BitVec 16)) (t!224142 List!30917)) )
))
(declare-datatypes ((TokenValue!4931 0))(
  ( (FloatLiteralValue!9862 (text!34962 List!30917)) (TokenValueExt!4930 (__x!19695 Int)) (Broken!24655 (value!151785 List!30917)) (Object!5030) (End!4931) (Def!4931) (Underscore!4931) (Match!4931) (Else!4931) (Error!4931) (Case!4931) (If!4931) (Extends!4931) (Abstract!4931) (Class!4931) (Val!4931) (DelimiterValue!9862 (del!4991 List!30917)) (KeywordValue!4937 (value!151786 List!30917)) (CommentValue!9862 (value!151787 List!30917)) (WhitespaceValue!9862 (value!151788 List!30917)) (IndentationValue!4931 (value!151789 List!30917)) (String!34538) (Int32!4931) (Broken!24656 (value!151790 List!30917)) (Boolean!4932) (Unit!45038) (OperatorValue!4934 (op!4991 List!30917)) (IdentifierValue!9862 (value!151791 List!30917)) (IdentifierValue!9863 (value!151792 List!30917)) (WhitespaceValue!9863 (value!151793 List!30917)) (True!9862) (False!9862) (Broken!24657 (value!151794 List!30917)) (Broken!24658 (value!151795 List!30917)) (True!9863) (RightBrace!4931) (RightBracket!4931) (Colon!4931) (Null!4931) (Comma!4931) (LeftBracket!4931) (False!9863) (LeftBrace!4931) (ImaginaryLiteralValue!4931 (text!34963 List!30917)) (StringLiteralValue!14793 (value!151796 List!30917)) (EOFValue!4931 (value!151797 List!30917)) (IdentValue!4931 (value!151798 List!30917)) (DelimiterValue!9863 (value!151799 List!30917)) (DedentValue!4931 (value!151800 List!30917)) (NewLineValue!4931 (value!151801 List!30917)) (IntegerValue!14793 (value!151802 (_ BitVec 32)) (text!34964 List!30917)) (IntegerValue!14794 (value!151803 Int) (text!34965 List!30917)) (Times!4931) (Or!4931) (Equal!4931) (Minus!4931) (Broken!24659 (value!151804 List!30917)) (And!4931) (Div!4931) (LessEqual!4931) (Mod!4931) (Concat!12784) (Not!4931) (Plus!4931) (SpaceValue!4931 (value!151805 List!30917)) (IntegerValue!14795 (value!151806 Int) (text!34966 List!30917)) (StringLiteralValue!14794 (text!34967 List!30917)) (FloatLiteralValue!9863 (text!34968 List!30917)) (BytesLiteralValue!4931 (value!151807 List!30917)) (CommentValue!9863 (value!151808 List!30917)) (StringLiteralValue!14795 (value!151809 List!30917)) (ErrorTokenValue!4931 (msg!4992 List!30917)) )
))
(declare-datatypes ((C!15864 0))(
  ( (C!15865 (val!9866 Int)) )
))
(declare-datatypes ((List!30918 0))(
  ( (Nil!30818) (Cons!30818 (h!36238 C!15864) (t!224143 List!30918)) )
))
(declare-datatypes ((IArray!19301 0))(
  ( (IArray!19302 (innerList!9708 List!30918)) )
))
(declare-datatypes ((Conc!9648 0))(
  ( (Node!9648 (left!23858 Conc!9648) (right!24188 Conc!9648) (csize!19526 Int) (cheight!9859 Int)) (Leaf!14743 (xs!12678 IArray!19301) (csize!19527 Int)) (Empty!9648) )
))
(declare-datatypes ((BalanceConc!18910 0))(
  ( (BalanceConc!18911 (c!431444 Conc!9648)) )
))
(declare-datatypes ((String!34539 0))(
  ( (String!34540 (value!151810 String)) )
))
(declare-datatypes ((Regex!7853 0))(
  ( (ElementMatch!7853 (c!431445 C!15864)) (Concat!12785 (regOne!16218 Regex!7853) (regTwo!16218 Regex!7853)) (EmptyExpr!7853) (Star!7853 (reg!8182 Regex!7853)) (EmptyLang!7853) (Union!7853 (regOne!16219 Regex!7853) (regTwo!16219 Regex!7853)) )
))
(declare-datatypes ((TokenValueInjection!9302 0))(
  ( (TokenValueInjection!9303 (toValue!6659 Int) (toChars!6518 Int)) )
))
(declare-datatypes ((Rule!9218 0))(
  ( (Rule!9219 (regex!4709 Regex!7853) (tag!5211 String!34539) (isSeparator!4709 Bool) (transformation!4709 TokenValueInjection!9302)) )
))
(declare-datatypes ((List!30919 0))(
  ( (Nil!30819) (Cons!30819 (h!36239 Rule!9218) (t!224144 List!30919)) )
))
(declare-fun rules!1712 () List!30919)

(get-info :version)

(assert (= (and b!2677958 ((_ is Cons!30819) rules!1712)) b!2677981))

(declare-fun order!17019 () Int)

(declare-fun order!17021 () Int)

(declare-fun dynLambda!13408 (Int Int) Int)

(declare-fun dynLambda!13409 (Int Int) Int)

(assert (=> b!2677983 (< (dynLambda!13408 order!17019 (toValue!6659 (transformation!4709 (h!36239 rules!1712)))) (dynLambda!13409 order!17021 lambda!100040))))

(declare-fun order!17023 () Int)

(declare-fun dynLambda!13410 (Int Int) Int)

(assert (=> b!2677983 (< (dynLambda!13410 order!17023 (toChars!6518 (transformation!4709 (h!36239 rules!1712)))) (dynLambda!13409 order!17021 lambda!100040))))

(assert (=> b!2677958 true))

(declare-fun b!2677949 () Bool)

(declare-fun e!1688053 () Bool)

(declare-datatypes ((Token!8888 0))(
  ( (Token!8889 (value!151811 TokenValue!4931) (rule!7119 Rule!9218) (size!23819 Int) (originalCharacters!5475 List!30918)) )
))
(declare-datatypes ((List!30920 0))(
  ( (Nil!30820) (Cons!30820 (h!36240 Token!8888) (t!224145 List!30920)) )
))
(declare-fun l!4335 () List!30920)

(declare-fun tp!846769 () Bool)

(declare-fun e!1688057 () Bool)

(declare-fun inv!21 (TokenValue!4931) Bool)

(assert (=> b!2677949 (= e!1688057 (and (inv!21 (value!151811 (h!36240 l!4335))) e!1688053 tp!846769))))

(declare-fun b!2677950 () Bool)

(declare-fun e!1688048 () Bool)

(declare-fun separatorToken!152 () Token!8888)

(declare-fun e!1688054 () Bool)

(declare-fun tp!846774 () Bool)

(assert (=> b!2677950 (= e!1688048 (and (inv!21 (value!151811 separatorToken!152)) e!1688054 tp!846774))))

(declare-fun b!2677951 () Bool)

(declare-fun res!1125858 () Bool)

(declare-fun e!1688056 () Bool)

(assert (=> b!2677951 (=> (not res!1125858) (not e!1688056))))

(declare-datatypes ((LexerInterface!4306 0))(
  ( (LexerInterfaceExt!4303 (__x!19696 Int)) (Lexer!4304) )
))
(declare-fun thiss!14116 () LexerInterface!4306)

(declare-fun rulesProduceIndividualToken!2018 (LexerInterface!4306 List!30919 Token!8888) Bool)

(assert (=> b!2677951 (= res!1125858 (rulesProduceIndividualToken!2018 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun b!2677952 () Bool)

(declare-fun res!1125857 () Bool)

(assert (=> b!2677952 (=> (not res!1125857) (not e!1688056))))

(assert (=> b!2677952 (= res!1125857 (isSeparator!4709 (rule!7119 separatorToken!152)))))

(declare-fun b!2677953 () Bool)

(declare-fun e!1688046 () Bool)

(declare-fun e!1688061 () Bool)

(declare-fun tp!846767 () Bool)

(assert (=> b!2677953 (= e!1688046 (and e!1688061 tp!846767))))

(declare-fun b!2677954 () Bool)

(declare-fun e!1688059 () Bool)

(declare-fun e!1688060 () Bool)

(assert (=> b!2677954 (= e!1688059 (not e!1688060))))

(declare-fun res!1125847 () Bool)

(assert (=> b!2677954 (=> res!1125847 e!1688060)))

(declare-fun lt!943079 () List!30918)

(declare-fun lt!943080 () List!30918)

(declare-fun lt!943076 () List!30918)

(assert (=> b!2677954 (= res!1125847 (or (not (= lt!943079 lt!943076)) (not (= lt!943076 lt!943080))))))

(declare-fun printList!1196 (LexerInterface!4306 List!30920) List!30918)

(assert (=> b!2677954 (= lt!943076 (printList!1196 thiss!14116 (Cons!30820 (h!36240 l!4335) Nil!30820)))))

(declare-fun lt!943083 () BalanceConc!18910)

(declare-fun list!11649 (BalanceConc!18910) List!30918)

(assert (=> b!2677954 (= lt!943079 (list!11649 lt!943083))))

(declare-datatypes ((IArray!19303 0))(
  ( (IArray!19304 (innerList!9709 List!30920)) )
))
(declare-datatypes ((Conc!9649 0))(
  ( (Node!9649 (left!23859 Conc!9649) (right!24189 Conc!9649) (csize!19528 Int) (cheight!9860 Int)) (Leaf!14744 (xs!12679 IArray!19303) (csize!19529 Int)) (Empty!9649) )
))
(declare-datatypes ((BalanceConc!18912 0))(
  ( (BalanceConc!18913 (c!431446 Conc!9649)) )
))
(declare-fun lt!943077 () BalanceConc!18912)

(declare-fun printTailRec!1157 (LexerInterface!4306 BalanceConc!18912 Int BalanceConc!18910) BalanceConc!18910)

(assert (=> b!2677954 (= lt!943083 (printTailRec!1157 thiss!14116 lt!943077 0 (BalanceConc!18911 Empty!9648)))))

(declare-fun print!1685 (LexerInterface!4306 BalanceConc!18912) BalanceConc!18910)

(assert (=> b!2677954 (= lt!943083 (print!1685 thiss!14116 lt!943077))))

(declare-fun singletonSeq!2106 (Token!8888) BalanceConc!18912)

(assert (=> b!2677954 (= lt!943077 (singletonSeq!2106 (h!36240 l!4335)))))

(declare-fun b!2677955 () Bool)

(assert (=> b!2677955 (= e!1688060 false)))

(declare-fun lt!943082 () List!30918)

(declare-datatypes ((Unit!45039 0))(
  ( (Unit!45040) )
))
(declare-fun lt!943075 () Unit!45039)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!825 (LexerInterface!4306 List!30919 List!30918 List!30918) Unit!45039)

(assert (=> b!2677955 (= lt!943075 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!825 thiss!14116 rules!1712 lt!943080 lt!943082))))

(declare-fun e!1688047 () Bool)

(declare-fun b!2677956 () Bool)

(declare-fun tp!846771 () Bool)

(declare-fun inv!41838 (String!34539) Bool)

(declare-fun inv!41841 (TokenValueInjection!9302) Bool)

(assert (=> b!2677956 (= e!1688061 (and tp!846771 (inv!41838 (tag!5211 (h!36239 rules!1712))) (inv!41841 (transformation!4709 (h!36239 rules!1712))) e!1688047))))

(declare-fun tp!846770 () Bool)

(declare-fun e!1688044 () Bool)

(declare-fun b!2677957 () Bool)

(assert (=> b!2677957 (= e!1688053 (and tp!846770 (inv!41838 (tag!5211 (rule!7119 (h!36240 l!4335)))) (inv!41841 (transformation!4709 (rule!7119 (h!36240 l!4335)))) e!1688044))))

(assert (=> b!2677958 (= e!1688056 e!1688059)))

(declare-fun res!1125853 () Bool)

(assert (=> b!2677958 (=> (not res!1125853) (not e!1688059))))

(declare-datatypes ((tuple2!30276 0))(
  ( (tuple2!30277 (_1!17680 Token!8888) (_2!17680 List!30918)) )
))
(declare-datatypes ((Option!6102 0))(
  ( (None!6101) (Some!6101 (v!32668 tuple2!30276)) )
))
(declare-fun lt!943081 () Option!6102)

(declare-fun lt!943078 () Bool)

(assert (=> b!2677958 (= res!1125853 (and (or lt!943078 (not (= (_1!17680 (v!32668 lt!943081)) (h!36240 l!4335)))) (or lt!943078 (= (_1!17680 (v!32668 lt!943081)) (h!36240 l!4335))) ((_ is None!6101) lt!943081)))))

(assert (=> b!2677958 (= lt!943078 (not ((_ is Some!6101) lt!943081)))))

(declare-fun maxPrefix!2342 (LexerInterface!4306 List!30919 List!30918) Option!6102)

(declare-fun ++!7525 (List!30918 List!30918) List!30918)

(assert (=> b!2677958 (= lt!943081 (maxPrefix!2342 thiss!14116 rules!1712 (++!7525 lt!943080 lt!943082)))))

(declare-fun charsOf!2970 (Token!8888) BalanceConc!18910)

(assert (=> b!2677958 (= lt!943080 (list!11649 (charsOf!2970 (h!36240 l!4335))))))

(declare-fun printWithSeparatorTokenWhenNeededList!698 (LexerInterface!4306 List!30919 List!30920 Token!8888) List!30918)

(assert (=> b!2677958 (= lt!943082 (printWithSeparatorTokenWhenNeededList!698 thiss!14116 rules!1712 (t!224145 l!4335) separatorToken!152))))

(declare-fun lt!943084 () Unit!45039)

(declare-fun forallContained!1049 (List!30920 Int Token!8888) Unit!45039)

(assert (=> b!2677958 (= lt!943084 (forallContained!1049 l!4335 lambda!100040 (h!36240 l!4335)))))

(declare-fun b!2677959 () Bool)

(declare-fun res!1125855 () Bool)

(assert (=> b!2677959 (=> (not res!1125855) (not e!1688056))))

(declare-fun isEmpty!17644 (List!30919) Bool)

(assert (=> b!2677959 (= res!1125855 (not (isEmpty!17644 rules!1712)))))

(declare-fun b!2677960 () Bool)

(declare-fun res!1125850 () Bool)

(assert (=> b!2677960 (=> (not res!1125850) (not e!1688056))))

(declare-fun rulesInvariant!3806 (LexerInterface!4306 List!30919) Bool)

(assert (=> b!2677960 (= res!1125850 (rulesInvariant!3806 thiss!14116 rules!1712))))

(declare-fun b!2677961 () Bool)

(declare-fun res!1125854 () Bool)

(assert (=> b!2677961 (=> (not res!1125854) (not e!1688056))))

(declare-fun sepAndNonSepRulesDisjointChars!1282 (List!30919 List!30919) Bool)

(assert (=> b!2677961 (= res!1125854 (sepAndNonSepRulesDisjointChars!1282 rules!1712 rules!1712))))

(declare-fun b!2677962 () Bool)

(declare-fun res!1125849 () Bool)

(assert (=> b!2677962 (=> res!1125849 e!1688060)))

(declare-fun isEmpty!17645 (BalanceConc!18912) Bool)

(declare-datatypes ((tuple2!30278 0))(
  ( (tuple2!30279 (_1!17681 BalanceConc!18912) (_2!17681 BalanceConc!18910)) )
))
(declare-fun lex!1941 (LexerInterface!4306 List!30919 BalanceConc!18910) tuple2!30278)

(declare-fun seqFromList!3209 (List!30918) BalanceConc!18910)

(assert (=> b!2677962 (= res!1125849 (isEmpty!17645 (_1!17681 (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 lt!943080)))))))

(declare-fun e!1688055 () Bool)

(declare-fun tp!846772 () Bool)

(declare-fun b!2677963 () Bool)

(declare-fun inv!41842 (Token!8888) Bool)

(assert (=> b!2677963 (= e!1688055 (and (inv!41842 (h!36240 l!4335)) e!1688057 tp!846772))))

(declare-fun b!2677964 () Bool)

(declare-fun res!1125848 () Bool)

(assert (=> b!2677964 (=> (not res!1125848) (not e!1688056))))

(declare-fun contains!5933 (List!30920 Token!8888) Bool)

(assert (=> b!2677964 (= res!1125848 (contains!5933 l!4335 (h!36240 l!4335)))))

(declare-fun b!2677965 () Bool)

(declare-fun res!1125859 () Bool)

(assert (=> b!2677965 (=> (not res!1125859) (not e!1688056))))

(declare-fun rulesProduceEachTokenIndividuallyList!1528 (LexerInterface!4306 List!30919 List!30920) Bool)

(assert (=> b!2677965 (= res!1125859 (rulesProduceEachTokenIndividuallyList!1528 thiss!14116 rules!1712 l!4335))))

(declare-fun e!1688058 () Bool)

(assert (=> b!2677966 (= e!1688058 (and tp!846773 tp!846768))))

(assert (=> b!2677967 (= e!1688047 (and tp!846766 tp!846776))))

(declare-fun res!1125852 () Bool)

(assert (=> b!2677968 (=> (not res!1125852) (not e!1688056))))

(declare-fun forall!6528 (List!30920 Int) Bool)

(assert (=> b!2677968 (= res!1125852 (forall!6528 l!4335 lambda!100039))))

(declare-fun res!1125856 () Bool)

(assert (=> start!260754 (=> (not res!1125856) (not e!1688056))))

(assert (=> start!260754 (= res!1125856 ((_ is Lexer!4304) thiss!14116))))

(assert (=> start!260754 e!1688056))

(assert (=> start!260754 true))

(assert (=> start!260754 e!1688046))

(assert (=> start!260754 e!1688055))

(assert (=> start!260754 (and (inv!41842 separatorToken!152) e!1688048)))

(declare-fun b!2677969 () Bool)

(declare-fun tp!846777 () Bool)

(assert (=> b!2677969 (= e!1688054 (and tp!846777 (inv!41838 (tag!5211 (rule!7119 separatorToken!152))) (inv!41841 (transformation!4709 (rule!7119 separatorToken!152))) e!1688058))))

(assert (=> b!2677970 (= e!1688044 (and tp!846775 tp!846778))))

(declare-fun b!2677971 () Bool)

(declare-fun res!1125851 () Bool)

(assert (=> b!2677971 (=> res!1125851 e!1688060)))

(assert (=> b!2677971 (= res!1125851 (not (rulesProduceIndividualToken!2018 thiss!14116 rules!1712 (h!36240 l!4335))))))

(declare-fun b!2677972 () Bool)

(declare-fun res!1125860 () Bool)

(assert (=> b!2677972 (=> (not res!1125860) (not e!1688056))))

(assert (=> b!2677972 (= res!1125860 ((_ is Cons!30820) l!4335))))

(assert (= (and start!260754 res!1125856) b!2677959))

(assert (= (and b!2677959 res!1125855) b!2677960))

(assert (= (and b!2677960 res!1125850) b!2677965))

(assert (= (and b!2677965 res!1125859) b!2677951))

(assert (= (and b!2677951 res!1125858) b!2677952))

(assert (= (and b!2677952 res!1125857) b!2677968))

(assert (= (and b!2677968 res!1125852) b!2677961))

(assert (= (and b!2677961 res!1125854) b!2677972))

(assert (= (and b!2677972 res!1125860) b!2677964))

(assert (= (and b!2677964 res!1125848) b!2677958))

(assert (= (and b!2677958 res!1125853) b!2677954))

(assert (= (and b!2677954 (not res!1125847)) b!2677971))

(assert (= (and b!2677971 (not res!1125851)) b!2677962))

(assert (= (and b!2677962 (not res!1125849)) b!2677955))

(assert (= b!2677956 b!2677967))

(assert (= b!2677953 b!2677956))

(assert (= (and start!260754 ((_ is Cons!30819) rules!1712)) b!2677953))

(assert (= b!2677957 b!2677970))

(assert (= b!2677949 b!2677957))

(assert (= b!2677963 b!2677949))

(assert (= (and start!260754 ((_ is Cons!30820) l!4335)) b!2677963))

(assert (= b!2677969 b!2677966))

(assert (= b!2677950 b!2677969))

(assert (= start!260754 b!2677950))

(declare-fun m!3045213 () Bool)

(assert (=> b!2677964 m!3045213))

(declare-fun m!3045215 () Bool)

(assert (=> b!2677969 m!3045215))

(declare-fun m!3045217 () Bool)

(assert (=> b!2677969 m!3045217))

(declare-fun m!3045219 () Bool)

(assert (=> b!2677961 m!3045219))

(declare-fun m!3045221 () Bool)

(assert (=> b!2677957 m!3045221))

(declare-fun m!3045223 () Bool)

(assert (=> b!2677957 m!3045223))

(declare-fun m!3045225 () Bool)

(assert (=> b!2677968 m!3045225))

(declare-fun m!3045227 () Bool)

(assert (=> start!260754 m!3045227))

(declare-fun m!3045229 () Bool)

(assert (=> b!2677955 m!3045229))

(declare-fun m!3045231 () Bool)

(assert (=> b!2677963 m!3045231))

(declare-fun m!3045233 () Bool)

(assert (=> b!2677956 m!3045233))

(declare-fun m!3045235 () Bool)

(assert (=> b!2677956 m!3045235))

(declare-fun m!3045237 () Bool)

(assert (=> b!2677960 m!3045237))

(declare-fun m!3045239 () Bool)

(assert (=> b!2677965 m!3045239))

(declare-fun m!3045241 () Bool)

(assert (=> b!2677950 m!3045241))

(declare-fun m!3045243 () Bool)

(assert (=> b!2677951 m!3045243))

(declare-fun m!3045245 () Bool)

(assert (=> b!2677954 m!3045245))

(declare-fun m!3045247 () Bool)

(assert (=> b!2677954 m!3045247))

(declare-fun m!3045249 () Bool)

(assert (=> b!2677954 m!3045249))

(declare-fun m!3045251 () Bool)

(assert (=> b!2677954 m!3045251))

(declare-fun m!3045253 () Bool)

(assert (=> b!2677954 m!3045253))

(declare-fun m!3045255 () Bool)

(assert (=> b!2677958 m!3045255))

(declare-fun m!3045257 () Bool)

(assert (=> b!2677958 m!3045257))

(declare-fun m!3045259 () Bool)

(assert (=> b!2677958 m!3045259))

(declare-fun m!3045261 () Bool)

(assert (=> b!2677958 m!3045261))

(assert (=> b!2677958 m!3045255))

(assert (=> b!2677958 m!3045259))

(declare-fun m!3045263 () Bool)

(assert (=> b!2677958 m!3045263))

(declare-fun m!3045265 () Bool)

(assert (=> b!2677958 m!3045265))

(declare-fun m!3045267 () Bool)

(assert (=> b!2677949 m!3045267))

(declare-fun m!3045269 () Bool)

(assert (=> b!2677971 m!3045269))

(declare-fun m!3045271 () Bool)

(assert (=> b!2677959 m!3045271))

(declare-fun m!3045273 () Bool)

(assert (=> b!2677962 m!3045273))

(assert (=> b!2677962 m!3045273))

(declare-fun m!3045275 () Bool)

(assert (=> b!2677962 m!3045275))

(declare-fun m!3045277 () Bool)

(assert (=> b!2677962 m!3045277))

(check-sat (not b!2677960) b_and!198129 (not b!2677955) (not b!2677953) (not b_next!76235) (not start!260754) (not b_next!76233) (not b!2677961) (not b!2677968) (not b_next!76237) (not b!2677965) (not b!2677950) (not b!2677971) (not b!2677958) (not b!2677949) (not b!2677951) b_and!198135 (not b_next!76239) (not b!2677981) (not b!2677962) (not b!2677956) b_and!198139 (not b!2677954) b_and!198131 (not b!2677969) (not b!2677964) b_and!198133 (not b!2677957) (not b_next!76243) (not b_next!76241) (not b!2677963) b_and!198137 (not b!2677959))
(check-sat b_and!198129 (not b_next!76235) (not b_next!76233) (not b_next!76237) b_and!198139 b_and!198131 (not b_next!76241) b_and!198137 b_and!198135 (not b_next!76239) b_and!198133 (not b_next!76243))
(get-model)

(declare-fun b!2677996 () Bool)

(declare-fun e!1688077 () Bool)

(declare-fun e!1688078 () Bool)

(assert (=> b!2677996 (= e!1688077 e!1688078)))

(declare-fun c!431452 () Bool)

(assert (=> b!2677996 (= c!431452 ((_ is IntegerValue!14794) (value!151811 separatorToken!152)))))

(declare-fun b!2677997 () Bool)

(declare-fun res!1125871 () Bool)

(declare-fun e!1688079 () Bool)

(assert (=> b!2677997 (=> res!1125871 e!1688079)))

(assert (=> b!2677997 (= res!1125871 (not ((_ is IntegerValue!14795) (value!151811 separatorToken!152))))))

(assert (=> b!2677997 (= e!1688078 e!1688079)))

(declare-fun b!2677998 () Bool)

(declare-fun inv!17 (TokenValue!4931) Bool)

(assert (=> b!2677998 (= e!1688078 (inv!17 (value!151811 separatorToken!152)))))

(declare-fun b!2677999 () Bool)

(declare-fun inv!16 (TokenValue!4931) Bool)

(assert (=> b!2677999 (= e!1688077 (inv!16 (value!151811 separatorToken!152)))))

(declare-fun b!2678000 () Bool)

(declare-fun inv!15 (TokenValue!4931) Bool)

(assert (=> b!2678000 (= e!1688079 (inv!15 (value!151811 separatorToken!152)))))

(declare-fun d!765775 () Bool)

(declare-fun c!431451 () Bool)

(assert (=> d!765775 (= c!431451 ((_ is IntegerValue!14793) (value!151811 separatorToken!152)))))

(assert (=> d!765775 (= (inv!21 (value!151811 separatorToken!152)) e!1688077)))

(assert (= (and d!765775 c!431451) b!2677999))

(assert (= (and d!765775 (not c!431451)) b!2677996))

(assert (= (and b!2677996 c!431452) b!2677998))

(assert (= (and b!2677996 (not c!431452)) b!2677997))

(assert (= (and b!2677997 (not res!1125871)) b!2678000))

(declare-fun m!3045279 () Bool)

(assert (=> b!2677998 m!3045279))

(declare-fun m!3045281 () Bool)

(assert (=> b!2677999 m!3045281))

(declare-fun m!3045283 () Bool)

(assert (=> b!2678000 m!3045283))

(assert (=> b!2677950 d!765775))

(declare-fun d!765777 () Bool)

(declare-fun res!1125882 () Bool)

(declare-fun e!1688092 () Bool)

(assert (=> d!765777 (=> res!1125882 e!1688092)))

(assert (=> d!765777 (= res!1125882 (not ((_ is Cons!30819) rules!1712)))))

(assert (=> d!765777 (= (sepAndNonSepRulesDisjointChars!1282 rules!1712 rules!1712) e!1688092)))

(declare-fun b!2678015 () Bool)

(declare-fun e!1688093 () Bool)

(assert (=> b!2678015 (= e!1688092 e!1688093)))

(declare-fun res!1125883 () Bool)

(assert (=> b!2678015 (=> (not res!1125883) (not e!1688093))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!561 (Rule!9218 List!30919) Bool)

(assert (=> b!2678015 (= res!1125883 (ruleDisjointCharsFromAllFromOtherType!561 (h!36239 rules!1712) rules!1712))))

(declare-fun b!2678016 () Bool)

(assert (=> b!2678016 (= e!1688093 (sepAndNonSepRulesDisjointChars!1282 rules!1712 (t!224144 rules!1712)))))

(assert (= (and d!765777 (not res!1125882)) b!2678015))

(assert (= (and b!2678015 res!1125883) b!2678016))

(declare-fun m!3045289 () Bool)

(assert (=> b!2678015 m!3045289))

(declare-fun m!3045291 () Bool)

(assert (=> b!2678016 m!3045291))

(assert (=> b!2677961 d!765777))

(declare-fun d!765783 () Bool)

(declare-fun lt!943132 () Bool)

(declare-fun e!1688141 () Bool)

(assert (=> d!765783 (= lt!943132 e!1688141)))

(declare-fun res!1125924 () Bool)

(assert (=> d!765783 (=> (not res!1125924) (not e!1688141))))

(declare-fun list!11652 (BalanceConc!18912) List!30920)

(assert (=> d!765783 (= res!1125924 (= (list!11652 (_1!17681 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152))))) (list!11652 (singletonSeq!2106 separatorToken!152))))))

(declare-fun e!1688142 () Bool)

(assert (=> d!765783 (= lt!943132 e!1688142)))

(declare-fun res!1125923 () Bool)

(assert (=> d!765783 (=> (not res!1125923) (not e!1688142))))

(declare-fun lt!943131 () tuple2!30278)

(declare-fun size!23822 (BalanceConc!18912) Int)

(assert (=> d!765783 (= res!1125923 (= (size!23822 (_1!17681 lt!943131)) 1))))

(assert (=> d!765783 (= lt!943131 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152))))))

(assert (=> d!765783 (not (isEmpty!17644 rules!1712))))

(assert (=> d!765783 (= (rulesProduceIndividualToken!2018 thiss!14116 rules!1712 separatorToken!152) lt!943132)))

(declare-fun b!2678108 () Bool)

(declare-fun res!1125925 () Bool)

(assert (=> b!2678108 (=> (not res!1125925) (not e!1688142))))

(declare-fun apply!7399 (BalanceConc!18912 Int) Token!8888)

(assert (=> b!2678108 (= res!1125925 (= (apply!7399 (_1!17681 lt!943131) 0) separatorToken!152))))

(declare-fun b!2678109 () Bool)

(declare-fun isEmpty!17649 (BalanceConc!18910) Bool)

(assert (=> b!2678109 (= e!1688142 (isEmpty!17649 (_2!17681 lt!943131)))))

(declare-fun b!2678110 () Bool)

(assert (=> b!2678110 (= e!1688141 (isEmpty!17649 (_2!17681 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152))))))))

(assert (= (and d!765783 res!1125923) b!2678108))

(assert (= (and b!2678108 res!1125925) b!2678109))

(assert (= (and d!765783 res!1125924) b!2678110))

(declare-fun m!3045393 () Bool)

(assert (=> d!765783 m!3045393))

(declare-fun m!3045395 () Bool)

(assert (=> d!765783 m!3045395))

(declare-fun m!3045397 () Bool)

(assert (=> d!765783 m!3045397))

(declare-fun m!3045399 () Bool)

(assert (=> d!765783 m!3045399))

(declare-fun m!3045401 () Bool)

(assert (=> d!765783 m!3045401))

(declare-fun m!3045403 () Bool)

(assert (=> d!765783 m!3045403))

(assert (=> d!765783 m!3045271))

(assert (=> d!765783 m!3045399))

(assert (=> d!765783 m!3045395))

(assert (=> d!765783 m!3045399))

(declare-fun m!3045405 () Bool)

(assert (=> b!2678108 m!3045405))

(declare-fun m!3045407 () Bool)

(assert (=> b!2678109 m!3045407))

(assert (=> b!2678110 m!3045399))

(assert (=> b!2678110 m!3045399))

(assert (=> b!2678110 m!3045395))

(assert (=> b!2678110 m!3045395))

(assert (=> b!2678110 m!3045397))

(declare-fun m!3045409 () Bool)

(assert (=> b!2678110 m!3045409))

(assert (=> b!2677951 d!765783))

(declare-fun b!2678115 () Bool)

(declare-fun e!1688145 () Bool)

(declare-fun e!1688146 () Bool)

(assert (=> b!2678115 (= e!1688145 e!1688146)))

(declare-fun c!431478 () Bool)

(assert (=> b!2678115 (= c!431478 ((_ is IntegerValue!14794) (value!151811 (h!36240 l!4335))))))

(declare-fun b!2678116 () Bool)

(declare-fun res!1125930 () Bool)

(declare-fun e!1688147 () Bool)

(assert (=> b!2678116 (=> res!1125930 e!1688147)))

(assert (=> b!2678116 (= res!1125930 (not ((_ is IntegerValue!14795) (value!151811 (h!36240 l!4335)))))))

(assert (=> b!2678116 (= e!1688146 e!1688147)))

(declare-fun b!2678117 () Bool)

(assert (=> b!2678117 (= e!1688146 (inv!17 (value!151811 (h!36240 l!4335))))))

(declare-fun b!2678118 () Bool)

(assert (=> b!2678118 (= e!1688145 (inv!16 (value!151811 (h!36240 l!4335))))))

(declare-fun b!2678119 () Bool)

(assert (=> b!2678119 (= e!1688147 (inv!15 (value!151811 (h!36240 l!4335))))))

(declare-fun d!765799 () Bool)

(declare-fun c!431477 () Bool)

(assert (=> d!765799 (= c!431477 ((_ is IntegerValue!14793) (value!151811 (h!36240 l!4335))))))

(assert (=> d!765799 (= (inv!21 (value!151811 (h!36240 l!4335))) e!1688145)))

(assert (= (and d!765799 c!431477) b!2678118))

(assert (= (and d!765799 (not c!431477)) b!2678115))

(assert (= (and b!2678115 c!431478) b!2678117))

(assert (= (and b!2678115 (not c!431478)) b!2678116))

(assert (= (and b!2678116 (not res!1125930)) b!2678119))

(declare-fun m!3045411 () Bool)

(assert (=> b!2678117 m!3045411))

(declare-fun m!3045413 () Bool)

(assert (=> b!2678118 m!3045413))

(declare-fun m!3045415 () Bool)

(assert (=> b!2678119 m!3045415))

(assert (=> b!2677949 d!765799))

(declare-fun d!765801 () Bool)

(declare-fun res!1125935 () Bool)

(declare-fun e!1688151 () Bool)

(assert (=> d!765801 (=> (not res!1125935) (not e!1688151))))

(declare-fun rulesValid!1759 (LexerInterface!4306 List!30919) Bool)

(assert (=> d!765801 (= res!1125935 (rulesValid!1759 thiss!14116 rules!1712))))

(assert (=> d!765801 (= (rulesInvariant!3806 thiss!14116 rules!1712) e!1688151)))

(declare-fun b!2678124 () Bool)

(declare-datatypes ((List!30921 0))(
  ( (Nil!30821) (Cons!30821 (h!36241 String!34539) (t!224198 List!30921)) )
))
(declare-fun noDuplicateTag!1755 (LexerInterface!4306 List!30919 List!30921) Bool)

(assert (=> b!2678124 (= e!1688151 (noDuplicateTag!1755 thiss!14116 rules!1712 Nil!30821))))

(assert (= (and d!765801 res!1125935) b!2678124))

(declare-fun m!3045423 () Bool)

(assert (=> d!765801 m!3045423))

(declare-fun m!3045425 () Bool)

(assert (=> b!2678124 m!3045425))

(assert (=> b!2677960 d!765801))

(declare-fun d!765805 () Bool)

(declare-fun lt!943134 () Bool)

(declare-fun e!1688156 () Bool)

(assert (=> d!765805 (= lt!943134 e!1688156)))

(declare-fun res!1125941 () Bool)

(assert (=> d!765805 (=> (not res!1125941) (not e!1688156))))

(assert (=> d!765805 (= res!1125941 (= (list!11652 (_1!17681 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335)))))) (list!11652 (singletonSeq!2106 (h!36240 l!4335)))))))

(declare-fun e!1688157 () Bool)

(assert (=> d!765805 (= lt!943134 e!1688157)))

(declare-fun res!1125940 () Bool)

(assert (=> d!765805 (=> (not res!1125940) (not e!1688157))))

(declare-fun lt!943133 () tuple2!30278)

(assert (=> d!765805 (= res!1125940 (= (size!23822 (_1!17681 lt!943133)) 1))))

(assert (=> d!765805 (= lt!943133 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335)))))))

(assert (=> d!765805 (not (isEmpty!17644 rules!1712))))

(assert (=> d!765805 (= (rulesProduceIndividualToken!2018 thiss!14116 rules!1712 (h!36240 l!4335)) lt!943134)))

(declare-fun b!2678129 () Bool)

(declare-fun res!1125942 () Bool)

(assert (=> b!2678129 (=> (not res!1125942) (not e!1688157))))

(assert (=> b!2678129 (= res!1125942 (= (apply!7399 (_1!17681 lt!943133) 0) (h!36240 l!4335)))))

(declare-fun b!2678130 () Bool)

(assert (=> b!2678130 (= e!1688157 (isEmpty!17649 (_2!17681 lt!943133)))))

(declare-fun b!2678131 () Bool)

(assert (=> b!2678131 (= e!1688156 (isEmpty!17649 (_2!17681 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335)))))))))

(assert (= (and d!765805 res!1125940) b!2678129))

(assert (= (and b!2678129 res!1125942) b!2678130))

(assert (= (and d!765805 res!1125941) b!2678131))

(declare-fun m!3045427 () Bool)

(assert (=> d!765805 m!3045427))

(declare-fun m!3045429 () Bool)

(assert (=> d!765805 m!3045429))

(declare-fun m!3045431 () Bool)

(assert (=> d!765805 m!3045431))

(assert (=> d!765805 m!3045251))

(declare-fun m!3045433 () Bool)

(assert (=> d!765805 m!3045433))

(declare-fun m!3045435 () Bool)

(assert (=> d!765805 m!3045435))

(assert (=> d!765805 m!3045271))

(assert (=> d!765805 m!3045251))

(assert (=> d!765805 m!3045429))

(assert (=> d!765805 m!3045251))

(declare-fun m!3045437 () Bool)

(assert (=> b!2678129 m!3045437))

(declare-fun m!3045439 () Bool)

(assert (=> b!2678130 m!3045439))

(assert (=> b!2678131 m!3045251))

(assert (=> b!2678131 m!3045251))

(assert (=> b!2678131 m!3045429))

(assert (=> b!2678131 m!3045429))

(assert (=> b!2678131 m!3045431))

(declare-fun m!3045441 () Bool)

(assert (=> b!2678131 m!3045441))

(assert (=> b!2677971 d!765805))

(declare-fun d!765807 () Bool)

(declare-fun res!1125951 () Bool)

(declare-fun e!1688164 () Bool)

(assert (=> d!765807 (=> (not res!1125951) (not e!1688164))))

(declare-fun isEmpty!17652 (List!30918) Bool)

(assert (=> d!765807 (= res!1125951 (not (isEmpty!17652 (originalCharacters!5475 separatorToken!152))))))

(assert (=> d!765807 (= (inv!41842 separatorToken!152) e!1688164)))

(declare-fun b!2678140 () Bool)

(declare-fun res!1125952 () Bool)

(assert (=> b!2678140 (=> (not res!1125952) (not e!1688164))))

(declare-fun dynLambda!13413 (Int TokenValue!4931) BalanceConc!18910)

(assert (=> b!2678140 (= res!1125952 (= (originalCharacters!5475 separatorToken!152) (list!11649 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152)))))))

(declare-fun b!2678141 () Bool)

(declare-fun size!23824 (List!30918) Int)

(assert (=> b!2678141 (= e!1688164 (= (size!23819 separatorToken!152) (size!23824 (originalCharacters!5475 separatorToken!152))))))

(assert (= (and d!765807 res!1125951) b!2678140))

(assert (= (and b!2678140 res!1125952) b!2678141))

(declare-fun b_lambda!81779 () Bool)

(assert (=> (not b_lambda!81779) (not b!2678140)))

(declare-fun t!224156 () Bool)

(declare-fun tb!150343 () Bool)

(assert (=> (and b!2677970 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152)))) t!224156) tb!150343))

(declare-fun b!2678152 () Bool)

(declare-fun e!1688171 () Bool)

(declare-fun tp!846784 () Bool)

(declare-fun inv!41845 (Conc!9648) Bool)

(assert (=> b!2678152 (= e!1688171 (and (inv!41845 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152)))) tp!846784))))

(declare-fun result!185684 () Bool)

(declare-fun inv!41846 (BalanceConc!18910) Bool)

(assert (=> tb!150343 (= result!185684 (and (inv!41846 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152))) e!1688171))))

(assert (= tb!150343 b!2678152))

(declare-fun m!3045457 () Bool)

(assert (=> b!2678152 m!3045457))

(declare-fun m!3045459 () Bool)

(assert (=> tb!150343 m!3045459))

(assert (=> b!2678140 t!224156))

(declare-fun b_and!198153 () Bool)

(assert (= b_and!198131 (and (=> t!224156 result!185684) b_and!198153)))

(declare-fun t!224158 () Bool)

(declare-fun tb!150345 () Bool)

(assert (=> (and b!2677967 (= (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152)))) t!224158) tb!150345))

(declare-fun result!185688 () Bool)

(assert (= result!185688 result!185684))

(assert (=> b!2678140 t!224158))

(declare-fun b_and!198155 () Bool)

(assert (= b_and!198135 (and (=> t!224158 result!185688) b_and!198155)))

(declare-fun t!224160 () Bool)

(declare-fun tb!150347 () Bool)

(assert (=> (and b!2677966 (= (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152)))) t!224160) tb!150347))

(declare-fun result!185690 () Bool)

(assert (= result!185690 result!185684))

(assert (=> b!2678140 t!224160))

(declare-fun b_and!198157 () Bool)

(assert (= b_and!198139 (and (=> t!224160 result!185690) b_and!198157)))

(declare-fun m!3045461 () Bool)

(assert (=> d!765807 m!3045461))

(declare-fun m!3045463 () Bool)

(assert (=> b!2678140 m!3045463))

(assert (=> b!2678140 m!3045463))

(declare-fun m!3045465 () Bool)

(assert (=> b!2678140 m!3045465))

(declare-fun m!3045467 () Bool)

(assert (=> b!2678141 m!3045467))

(assert (=> start!260754 d!765807))

(declare-fun d!765819 () Bool)

(declare-fun lt!943137 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4385 (List!30920) (InoxSet Token!8888))

(assert (=> d!765819 (= lt!943137 (select (content!4385 l!4335) (h!36240 l!4335)))))

(declare-fun e!1688176 () Bool)

(assert (=> d!765819 (= lt!943137 e!1688176)))

(declare-fun res!1125960 () Bool)

(assert (=> d!765819 (=> (not res!1125960) (not e!1688176))))

(assert (=> d!765819 (= res!1125960 ((_ is Cons!30820) l!4335))))

(assert (=> d!765819 (= (contains!5933 l!4335 (h!36240 l!4335)) lt!943137)))

(declare-fun b!2678157 () Bool)

(declare-fun e!1688177 () Bool)

(assert (=> b!2678157 (= e!1688176 e!1688177)))

(declare-fun res!1125959 () Bool)

(assert (=> b!2678157 (=> res!1125959 e!1688177)))

(assert (=> b!2678157 (= res!1125959 (= (h!36240 l!4335) (h!36240 l!4335)))))

(declare-fun b!2678158 () Bool)

(assert (=> b!2678158 (= e!1688177 (contains!5933 (t!224145 l!4335) (h!36240 l!4335)))))

(assert (= (and d!765819 res!1125960) b!2678157))

(assert (= (and b!2678157 (not res!1125959)) b!2678158))

(declare-fun m!3045469 () Bool)

(assert (=> d!765819 m!3045469))

(declare-fun m!3045471 () Bool)

(assert (=> d!765819 m!3045471))

(declare-fun m!3045473 () Bool)

(assert (=> b!2678158 m!3045473))

(assert (=> b!2677964 d!765819))

(declare-fun lt!943140 () Bool)

(declare-fun d!765821 () Bool)

(declare-fun isEmpty!17653 (List!30920) Bool)

(assert (=> d!765821 (= lt!943140 (isEmpty!17653 (list!11652 (_1!17681 (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 lt!943080))))))))

(declare-fun isEmpty!17654 (Conc!9649) Bool)

(assert (=> d!765821 (= lt!943140 (isEmpty!17654 (c!431446 (_1!17681 (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 lt!943080))))))))

(assert (=> d!765821 (= (isEmpty!17645 (_1!17681 (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 lt!943080)))) lt!943140)))

(declare-fun bs!479962 () Bool)

(assert (= bs!479962 d!765821))

(declare-fun m!3045475 () Bool)

(assert (=> bs!479962 m!3045475))

(assert (=> bs!479962 m!3045475))

(declare-fun m!3045477 () Bool)

(assert (=> bs!479962 m!3045477))

(declare-fun m!3045479 () Bool)

(assert (=> bs!479962 m!3045479))

(assert (=> b!2677962 d!765821))

(declare-fun b!2678175 () Bool)

(declare-fun res!1125973 () Bool)

(declare-fun e!1688189 () Bool)

(assert (=> b!2678175 (=> (not res!1125973) (not e!1688189))))

(declare-fun lt!943147 () tuple2!30278)

(declare-datatypes ((tuple2!30282 0))(
  ( (tuple2!30283 (_1!17683 List!30920) (_2!17683 List!30918)) )
))
(declare-fun lexList!1178 (LexerInterface!4306 List!30919 List!30918) tuple2!30282)

(assert (=> b!2678175 (= res!1125973 (= (list!11652 (_1!17681 lt!943147)) (_1!17683 (lexList!1178 thiss!14116 rules!1712 (list!11649 (seqFromList!3209 lt!943080))))))))

(declare-fun b!2678176 () Bool)

(declare-fun e!1688188 () Bool)

(assert (=> b!2678176 (= e!1688188 (= (_2!17681 lt!943147) (seqFromList!3209 lt!943080)))))

(declare-fun b!2678177 () Bool)

(declare-fun e!1688190 () Bool)

(assert (=> b!2678177 (= e!1688190 (not (isEmpty!17645 (_1!17681 lt!943147))))))

(declare-fun b!2678178 () Bool)

(assert (=> b!2678178 (= e!1688188 e!1688190)))

(declare-fun res!1125974 () Bool)

(declare-fun size!23825 (BalanceConc!18910) Int)

(assert (=> b!2678178 (= res!1125974 (< (size!23825 (_2!17681 lt!943147)) (size!23825 (seqFromList!3209 lt!943080))))))

(assert (=> b!2678178 (=> (not res!1125974) (not e!1688190))))

(declare-fun d!765823 () Bool)

(assert (=> d!765823 e!1688189))

(declare-fun res!1125975 () Bool)

(assert (=> d!765823 (=> (not res!1125975) (not e!1688189))))

(assert (=> d!765823 (= res!1125975 e!1688188)))

(declare-fun c!431483 () Bool)

(assert (=> d!765823 (= c!431483 (> (size!23822 (_1!17681 lt!943147)) 0))))

(declare-fun lexTailRecV2!853 (LexerInterface!4306 List!30919 BalanceConc!18910 BalanceConc!18910 BalanceConc!18910 BalanceConc!18912) tuple2!30278)

(assert (=> d!765823 (= lt!943147 (lexTailRecV2!853 thiss!14116 rules!1712 (seqFromList!3209 lt!943080) (BalanceConc!18911 Empty!9648) (seqFromList!3209 lt!943080) (BalanceConc!18913 Empty!9649)))))

(assert (=> d!765823 (= (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 lt!943080)) lt!943147)))

(declare-fun b!2678179 () Bool)

(assert (=> b!2678179 (= e!1688189 (= (list!11649 (_2!17681 lt!943147)) (_2!17683 (lexList!1178 thiss!14116 rules!1712 (list!11649 (seqFromList!3209 lt!943080))))))))

(assert (= (and d!765823 c!431483) b!2678178))

(assert (= (and d!765823 (not c!431483)) b!2678176))

(assert (= (and b!2678178 res!1125974) b!2678177))

(assert (= (and d!765823 res!1125975) b!2678175))

(assert (= (and b!2678175 res!1125973) b!2678179))

(declare-fun m!3045481 () Bool)

(assert (=> b!2678175 m!3045481))

(assert (=> b!2678175 m!3045273))

(declare-fun m!3045483 () Bool)

(assert (=> b!2678175 m!3045483))

(assert (=> b!2678175 m!3045483))

(declare-fun m!3045485 () Bool)

(assert (=> b!2678175 m!3045485))

(declare-fun m!3045487 () Bool)

(assert (=> b!2678178 m!3045487))

(assert (=> b!2678178 m!3045273))

(declare-fun m!3045489 () Bool)

(assert (=> b!2678178 m!3045489))

(declare-fun m!3045491 () Bool)

(assert (=> d!765823 m!3045491))

(assert (=> d!765823 m!3045273))

(assert (=> d!765823 m!3045273))

(declare-fun m!3045493 () Bool)

(assert (=> d!765823 m!3045493))

(declare-fun m!3045495 () Bool)

(assert (=> b!2678177 m!3045495))

(declare-fun m!3045497 () Bool)

(assert (=> b!2678179 m!3045497))

(assert (=> b!2678179 m!3045273))

(assert (=> b!2678179 m!3045483))

(assert (=> b!2678179 m!3045483))

(assert (=> b!2678179 m!3045485))

(assert (=> b!2677962 d!765823))

(declare-fun d!765825 () Bool)

(declare-fun fromListB!1451 (List!30918) BalanceConc!18910)

(assert (=> d!765825 (= (seqFromList!3209 lt!943080) (fromListB!1451 lt!943080))))

(declare-fun bs!479963 () Bool)

(assert (= bs!479963 d!765825))

(declare-fun m!3045513 () Bool)

(assert (=> bs!479963 m!3045513))

(assert (=> b!2677962 d!765825))

(declare-fun d!765827 () Bool)

(declare-fun res!1125979 () Bool)

(declare-fun e!1688193 () Bool)

(assert (=> d!765827 (=> (not res!1125979) (not e!1688193))))

(assert (=> d!765827 (= res!1125979 (not (isEmpty!17652 (originalCharacters!5475 (h!36240 l!4335)))))))

(assert (=> d!765827 (= (inv!41842 (h!36240 l!4335)) e!1688193)))

(declare-fun b!2678183 () Bool)

(declare-fun res!1125980 () Bool)

(assert (=> b!2678183 (=> (not res!1125980) (not e!1688193))))

(assert (=> b!2678183 (= res!1125980 (= (originalCharacters!5475 (h!36240 l!4335)) (list!11649 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335))))))))

(declare-fun b!2678184 () Bool)

(assert (=> b!2678184 (= e!1688193 (= (size!23819 (h!36240 l!4335)) (size!23824 (originalCharacters!5475 (h!36240 l!4335)))))))

(assert (= (and d!765827 res!1125979) b!2678183))

(assert (= (and b!2678183 res!1125980) b!2678184))

(declare-fun b_lambda!81781 () Bool)

(assert (=> (not b_lambda!81781) (not b!2678183)))

(declare-fun t!224163 () Bool)

(declare-fun tb!150349 () Bool)

(assert (=> (and b!2677970 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335))))) t!224163) tb!150349))

(declare-fun b!2678185 () Bool)

(declare-fun e!1688194 () Bool)

(declare-fun tp!846785 () Bool)

(assert (=> b!2678185 (= e!1688194 (and (inv!41845 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335))))) tp!846785))))

(declare-fun result!185692 () Bool)

(assert (=> tb!150349 (= result!185692 (and (inv!41846 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335)))) e!1688194))))

(assert (= tb!150349 b!2678185))

(declare-fun m!3045517 () Bool)

(assert (=> b!2678185 m!3045517))

(declare-fun m!3045519 () Bool)

(assert (=> tb!150349 m!3045519))

(assert (=> b!2678183 t!224163))

(declare-fun b_and!198159 () Bool)

(assert (= b_and!198153 (and (=> t!224163 result!185692) b_and!198159)))

(declare-fun tb!150351 () Bool)

(declare-fun t!224165 () Bool)

(assert (=> (and b!2677967 (= (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335))))) t!224165) tb!150351))

(declare-fun result!185694 () Bool)

(assert (= result!185694 result!185692))

(assert (=> b!2678183 t!224165))

(declare-fun b_and!198161 () Bool)

(assert (= b_and!198155 (and (=> t!224165 result!185694) b_and!198161)))

(declare-fun t!224167 () Bool)

(declare-fun tb!150353 () Bool)

(assert (=> (and b!2677966 (= (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335))))) t!224167) tb!150353))

(declare-fun result!185696 () Bool)

(assert (= result!185696 result!185692))

(assert (=> b!2678183 t!224167))

(declare-fun b_and!198163 () Bool)

(assert (= b_and!198157 (and (=> t!224167 result!185696) b_and!198163)))

(declare-fun m!3045521 () Bool)

(assert (=> d!765827 m!3045521))

(declare-fun m!3045523 () Bool)

(assert (=> b!2678183 m!3045523))

(assert (=> b!2678183 m!3045523))

(declare-fun m!3045525 () Bool)

(assert (=> b!2678183 m!3045525))

(declare-fun m!3045527 () Bool)

(assert (=> b!2678184 m!3045527))

(assert (=> b!2677963 d!765827))

(declare-fun d!765831 () Bool)

(assert (=> d!765831 (= (inv!41838 (tag!5211 (h!36239 rules!1712))) (= (mod (str.len (value!151810 (tag!5211 (h!36239 rules!1712)))) 2) 0))))

(assert (=> b!2677956 d!765831))

(declare-fun d!765833 () Bool)

(declare-fun res!1125983 () Bool)

(declare-fun e!1688197 () Bool)

(assert (=> d!765833 (=> (not res!1125983) (not e!1688197))))

(declare-fun semiInverseModEq!1954 (Int Int) Bool)

(assert (=> d!765833 (= res!1125983 (semiInverseModEq!1954 (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toValue!6659 (transformation!4709 (h!36239 rules!1712)))))))

(assert (=> d!765833 (= (inv!41841 (transformation!4709 (h!36239 rules!1712))) e!1688197)))

(declare-fun b!2678188 () Bool)

(declare-fun equivClasses!1855 (Int Int) Bool)

(assert (=> b!2678188 (= e!1688197 (equivClasses!1855 (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toValue!6659 (transformation!4709 (h!36239 rules!1712)))))))

(assert (= (and d!765833 res!1125983) b!2678188))

(declare-fun m!3045535 () Bool)

(assert (=> d!765833 m!3045535))

(declare-fun m!3045537 () Bool)

(assert (=> b!2678188 m!3045537))

(assert (=> b!2677956 d!765833))

(declare-fun d!765837 () Bool)

(declare-fun lt!943155 () BalanceConc!18910)

(assert (=> d!765837 (= (list!11649 lt!943155) (printList!1196 thiss!14116 (list!11652 lt!943077)))))

(assert (=> d!765837 (= lt!943155 (printTailRec!1157 thiss!14116 lt!943077 0 (BalanceConc!18911 Empty!9648)))))

(assert (=> d!765837 (= (print!1685 thiss!14116 lt!943077) lt!943155)))

(declare-fun bs!479965 () Bool)

(assert (= bs!479965 d!765837))

(declare-fun m!3045539 () Bool)

(assert (=> bs!479965 m!3045539))

(declare-fun m!3045541 () Bool)

(assert (=> bs!479965 m!3045541))

(assert (=> bs!479965 m!3045541))

(declare-fun m!3045543 () Bool)

(assert (=> bs!479965 m!3045543))

(assert (=> bs!479965 m!3045247))

(assert (=> b!2677954 d!765837))

(declare-fun d!765839 () Bool)

(declare-fun lt!943172 () BalanceConc!18910)

(declare-fun printListTailRec!529 (LexerInterface!4306 List!30920 List!30918) List!30918)

(declare-fun dropList!978 (BalanceConc!18912 Int) List!30920)

(assert (=> d!765839 (= (list!11649 lt!943172) (printListTailRec!529 thiss!14116 (dropList!978 lt!943077 0) (list!11649 (BalanceConc!18911 Empty!9648))))))

(declare-fun e!1688203 () BalanceConc!18910)

(assert (=> d!765839 (= lt!943172 e!1688203)))

(declare-fun c!431486 () Bool)

(assert (=> d!765839 (= c!431486 (>= 0 (size!23822 lt!943077)))))

(declare-fun e!1688202 () Bool)

(assert (=> d!765839 e!1688202))

(declare-fun res!1125986 () Bool)

(assert (=> d!765839 (=> (not res!1125986) (not e!1688202))))

(assert (=> d!765839 (= res!1125986 (>= 0 0))))

(assert (=> d!765839 (= (printTailRec!1157 thiss!14116 lt!943077 0 (BalanceConc!18911 Empty!9648)) lt!943172)))

(declare-fun b!2678195 () Bool)

(assert (=> b!2678195 (= e!1688202 (<= 0 (size!23822 lt!943077)))))

(declare-fun b!2678196 () Bool)

(assert (=> b!2678196 (= e!1688203 (BalanceConc!18911 Empty!9648))))

(declare-fun b!2678197 () Bool)

(declare-fun ++!7527 (BalanceConc!18910 BalanceConc!18910) BalanceConc!18910)

(assert (=> b!2678197 (= e!1688203 (printTailRec!1157 thiss!14116 lt!943077 (+ 0 1) (++!7527 (BalanceConc!18911 Empty!9648) (charsOf!2970 (apply!7399 lt!943077 0)))))))

(declare-fun lt!943176 () List!30920)

(assert (=> b!2678197 (= lt!943176 (list!11652 lt!943077))))

(declare-fun lt!943175 () Unit!45039)

(declare-fun lemmaDropApply!884 (List!30920 Int) Unit!45039)

(assert (=> b!2678197 (= lt!943175 (lemmaDropApply!884 lt!943176 0))))

(declare-fun head!6087 (List!30920) Token!8888)

(declare-fun drop!1675 (List!30920 Int) List!30920)

(declare-fun apply!7401 (List!30920 Int) Token!8888)

(assert (=> b!2678197 (= (head!6087 (drop!1675 lt!943176 0)) (apply!7401 lt!943176 0))))

(declare-fun lt!943170 () Unit!45039)

(assert (=> b!2678197 (= lt!943170 lt!943175)))

(declare-fun lt!943174 () List!30920)

(assert (=> b!2678197 (= lt!943174 (list!11652 lt!943077))))

(declare-fun lt!943171 () Unit!45039)

(declare-fun lemmaDropTail!856 (List!30920 Int) Unit!45039)

(assert (=> b!2678197 (= lt!943171 (lemmaDropTail!856 lt!943174 0))))

(declare-fun tail!4325 (List!30920) List!30920)

(assert (=> b!2678197 (= (tail!4325 (drop!1675 lt!943174 0)) (drop!1675 lt!943174 (+ 0 1)))))

(declare-fun lt!943173 () Unit!45039)

(assert (=> b!2678197 (= lt!943173 lt!943171)))

(assert (= (and d!765839 res!1125986) b!2678195))

(assert (= (and d!765839 c!431486) b!2678196))

(assert (= (and d!765839 (not c!431486)) b!2678197))

(declare-fun m!3045545 () Bool)

(assert (=> d!765839 m!3045545))

(declare-fun m!3045547 () Bool)

(assert (=> d!765839 m!3045547))

(assert (=> d!765839 m!3045545))

(declare-fun m!3045549 () Bool)

(assert (=> d!765839 m!3045549))

(declare-fun m!3045551 () Bool)

(assert (=> d!765839 m!3045551))

(assert (=> d!765839 m!3045549))

(declare-fun m!3045553 () Bool)

(assert (=> d!765839 m!3045553))

(assert (=> b!2678195 m!3045547))

(declare-fun m!3045555 () Bool)

(assert (=> b!2678197 m!3045555))

(declare-fun m!3045557 () Bool)

(assert (=> b!2678197 m!3045557))

(declare-fun m!3045559 () Bool)

(assert (=> b!2678197 m!3045559))

(declare-fun m!3045561 () Bool)

(assert (=> b!2678197 m!3045561))

(declare-fun m!3045563 () Bool)

(assert (=> b!2678197 m!3045563))

(assert (=> b!2678197 m!3045563))

(declare-fun m!3045565 () Bool)

(assert (=> b!2678197 m!3045565))

(assert (=> b!2678197 m!3045561))

(declare-fun m!3045567 () Bool)

(assert (=> b!2678197 m!3045567))

(declare-fun m!3045569 () Bool)

(assert (=> b!2678197 m!3045569))

(assert (=> b!2678197 m!3045559))

(declare-fun m!3045571 () Bool)

(assert (=> b!2678197 m!3045571))

(declare-fun m!3045573 () Bool)

(assert (=> b!2678197 m!3045573))

(assert (=> b!2678197 m!3045541))

(assert (=> b!2678197 m!3045557))

(declare-fun m!3045575 () Bool)

(assert (=> b!2678197 m!3045575))

(assert (=> b!2678197 m!3045565))

(declare-fun m!3045577 () Bool)

(assert (=> b!2678197 m!3045577))

(assert (=> b!2677954 d!765839))

(declare-fun d!765841 () Bool)

(declare-fun e!1688206 () Bool)

(assert (=> d!765841 e!1688206))

(declare-fun res!1125989 () Bool)

(assert (=> d!765841 (=> (not res!1125989) (not e!1688206))))

(declare-fun lt!943179 () BalanceConc!18912)

(assert (=> d!765841 (= res!1125989 (= (list!11652 lt!943179) (Cons!30820 (h!36240 l!4335) Nil!30820)))))

(declare-fun singleton!934 (Token!8888) BalanceConc!18912)

(assert (=> d!765841 (= lt!943179 (singleton!934 (h!36240 l!4335)))))

(assert (=> d!765841 (= (singletonSeq!2106 (h!36240 l!4335)) lt!943179)))

(declare-fun b!2678200 () Bool)

(declare-fun isBalanced!2925 (Conc!9649) Bool)

(assert (=> b!2678200 (= e!1688206 (isBalanced!2925 (c!431446 lt!943179)))))

(assert (= (and d!765841 res!1125989) b!2678200))

(declare-fun m!3045579 () Bool)

(assert (=> d!765841 m!3045579))

(declare-fun m!3045581 () Bool)

(assert (=> d!765841 m!3045581))

(declare-fun m!3045583 () Bool)

(assert (=> b!2678200 m!3045583))

(assert (=> b!2677954 d!765841))

(declare-fun d!765843 () Bool)

(declare-fun list!11653 (Conc!9648) List!30918)

(assert (=> d!765843 (= (list!11649 lt!943083) (list!11653 (c!431444 lt!943083)))))

(declare-fun bs!479966 () Bool)

(assert (= bs!479966 d!765843))

(declare-fun m!3045585 () Bool)

(assert (=> bs!479966 m!3045585))

(assert (=> b!2677954 d!765843))

(declare-fun d!765845 () Bool)

(declare-fun c!431489 () Bool)

(assert (=> d!765845 (= c!431489 ((_ is Cons!30820) (Cons!30820 (h!36240 l!4335) Nil!30820)))))

(declare-fun e!1688209 () List!30918)

(assert (=> d!765845 (= (printList!1196 thiss!14116 (Cons!30820 (h!36240 l!4335) Nil!30820)) e!1688209)))

(declare-fun b!2678205 () Bool)

(assert (=> b!2678205 (= e!1688209 (++!7525 (list!11649 (charsOf!2970 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820)))) (printList!1196 thiss!14116 (t!224145 (Cons!30820 (h!36240 l!4335) Nil!30820)))))))

(declare-fun b!2678206 () Bool)

(assert (=> b!2678206 (= e!1688209 Nil!30818)))

(assert (= (and d!765845 c!431489) b!2678205))

(assert (= (and d!765845 (not c!431489)) b!2678206))

(declare-fun m!3045587 () Bool)

(assert (=> b!2678205 m!3045587))

(assert (=> b!2678205 m!3045587))

(declare-fun m!3045589 () Bool)

(assert (=> b!2678205 m!3045589))

(declare-fun m!3045591 () Bool)

(assert (=> b!2678205 m!3045591))

(assert (=> b!2678205 m!3045589))

(assert (=> b!2678205 m!3045591))

(declare-fun m!3045593 () Bool)

(assert (=> b!2678205 m!3045593))

(assert (=> b!2677954 d!765845))

(declare-fun bs!479970 () Bool)

(declare-fun d!765847 () Bool)

(assert (= bs!479970 (and d!765847 b!2677968)))

(declare-fun lambda!100046 () Int)

(assert (=> bs!479970 (not (= lambda!100046 lambda!100039))))

(declare-fun bs!479971 () Bool)

(assert (= bs!479971 (and d!765847 b!2677958)))

(assert (=> bs!479971 (= lambda!100046 lambda!100040)))

(declare-fun b!2678259 () Bool)

(declare-fun e!1688248 () Bool)

(assert (=> b!2678259 (= e!1688248 true)))

(declare-fun b!2678258 () Bool)

(declare-fun e!1688247 () Bool)

(assert (=> b!2678258 (= e!1688247 e!1688248)))

(declare-fun b!2678257 () Bool)

(declare-fun e!1688246 () Bool)

(assert (=> b!2678257 (= e!1688246 e!1688247)))

(assert (=> d!765847 e!1688246))

(assert (= b!2678258 b!2678259))

(assert (= b!2678257 b!2678258))

(assert (= (and d!765847 ((_ is Cons!30819) rules!1712)) b!2678257))

(assert (=> b!2678259 (< (dynLambda!13408 order!17019 (toValue!6659 (transformation!4709 (h!36239 rules!1712)))) (dynLambda!13409 order!17021 lambda!100046))))

(assert (=> b!2678259 (< (dynLambda!13410 order!17023 (toChars!6518 (transformation!4709 (h!36239 rules!1712)))) (dynLambda!13409 order!17021 lambda!100046))))

(assert (=> d!765847 true))

(declare-fun lt!943214 () Bool)

(assert (=> d!765847 (= lt!943214 (forall!6528 l!4335 lambda!100046))))

(declare-fun e!1688244 () Bool)

(assert (=> d!765847 (= lt!943214 e!1688244)))

(declare-fun res!1126020 () Bool)

(assert (=> d!765847 (=> res!1126020 e!1688244)))

(assert (=> d!765847 (= res!1126020 (not ((_ is Cons!30820) l!4335)))))

(assert (=> d!765847 (not (isEmpty!17644 rules!1712))))

(assert (=> d!765847 (= (rulesProduceEachTokenIndividuallyList!1528 thiss!14116 rules!1712 l!4335) lt!943214)))

(declare-fun b!2678255 () Bool)

(declare-fun e!1688245 () Bool)

(assert (=> b!2678255 (= e!1688244 e!1688245)))

(declare-fun res!1126019 () Bool)

(assert (=> b!2678255 (=> (not res!1126019) (not e!1688245))))

(assert (=> b!2678255 (= res!1126019 (rulesProduceIndividualToken!2018 thiss!14116 rules!1712 (h!36240 l!4335)))))

(declare-fun b!2678256 () Bool)

(assert (=> b!2678256 (= e!1688245 (rulesProduceEachTokenIndividuallyList!1528 thiss!14116 rules!1712 (t!224145 l!4335)))))

(assert (= (and d!765847 (not res!1126020)) b!2678255))

(assert (= (and b!2678255 res!1126019) b!2678256))

(declare-fun m!3045713 () Bool)

(assert (=> d!765847 m!3045713))

(assert (=> d!765847 m!3045271))

(assert (=> b!2678255 m!3045269))

(declare-fun m!3045715 () Bool)

(assert (=> b!2678256 m!3045715))

(assert (=> b!2677965 d!765847))

(declare-fun d!765877 () Bool)

(declare-fun isDefined!4849 (Option!6102) Bool)

(assert (=> d!765877 (isDefined!4849 (maxPrefix!2342 thiss!14116 rules!1712 (++!7525 lt!943080 lt!943082)))))

(declare-fun lt!943307 () Unit!45039)

(declare-fun e!1688260 () Unit!45039)

(assert (=> d!765877 (= lt!943307 e!1688260)))

(declare-fun c!431504 () Bool)

(declare-fun isEmpty!17655 (Option!6102) Bool)

(assert (=> d!765877 (= c!431504 (isEmpty!17655 (maxPrefix!2342 thiss!14116 rules!1712 (++!7525 lt!943080 lt!943082))))))

(declare-fun lt!943316 () Unit!45039)

(declare-fun lt!943305 () Unit!45039)

(assert (=> d!765877 (= lt!943316 lt!943305)))

(declare-fun e!1688259 () Bool)

(assert (=> d!765877 e!1688259))

(declare-fun res!1126031 () Bool)

(assert (=> d!765877 (=> (not res!1126031) (not e!1688259))))

(declare-fun lt!943309 () Token!8888)

(declare-datatypes ((Option!6104 0))(
  ( (None!6103) (Some!6103 (v!32676 Rule!9218)) )
))
(declare-fun isDefined!4850 (Option!6104) Bool)

(declare-fun getRuleFromTag!839 (LexerInterface!4306 List!30919 String!34539) Option!6104)

(assert (=> d!765877 (= res!1126031 (isDefined!4850 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!839 (LexerInterface!4306 List!30919 List!30918 Token!8888) Unit!45039)

(assert (=> d!765877 (= lt!943305 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!839 thiss!14116 rules!1712 lt!943080 lt!943309))))

(declare-fun lt!943301 () Unit!45039)

(declare-fun lt!943313 () Unit!45039)

(assert (=> d!765877 (= lt!943301 lt!943313)))

(declare-fun lt!943308 () List!30918)

(declare-fun isPrefix!2461 (List!30918 List!30918) Bool)

(assert (=> d!765877 (isPrefix!2461 lt!943308 (++!7525 lt!943080 lt!943082))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!407 (List!30918 List!30918 List!30918) Unit!45039)

(assert (=> d!765877 (= lt!943313 (lemmaPrefixStaysPrefixWhenAddingToSuffix!407 lt!943308 lt!943080 lt!943082))))

(assert (=> d!765877 (= lt!943308 (list!11649 (charsOf!2970 lt!943309)))))

(declare-fun lt!943306 () Unit!45039)

(declare-fun lt!943300 () Unit!45039)

(assert (=> d!765877 (= lt!943306 lt!943300)))

(declare-fun lt!943310 () List!30918)

(declare-fun lt!943303 () List!30918)

(assert (=> d!765877 (isPrefix!2461 lt!943310 (++!7525 lt!943310 lt!943303))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1626 (List!30918 List!30918) Unit!45039)

(assert (=> d!765877 (= lt!943300 (lemmaConcatTwoListThenFirstIsPrefix!1626 lt!943310 lt!943303))))

(declare-fun get!9687 (Option!6102) tuple2!30276)

(assert (=> d!765877 (= lt!943303 (_2!17680 (get!9687 (maxPrefix!2342 thiss!14116 rules!1712 lt!943080))))))

(assert (=> d!765877 (= lt!943310 (list!11649 (charsOf!2970 lt!943309)))))

(assert (=> d!765877 (= lt!943309 (head!6087 (list!11652 (_1!17681 (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 lt!943080))))))))

(assert (=> d!765877 (not (isEmpty!17644 rules!1712))))

(assert (=> d!765877 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!825 thiss!14116 rules!1712 lt!943080 lt!943082) lt!943307)))

(declare-fun b!2678280 () Bool)

(declare-fun res!1126032 () Bool)

(assert (=> b!2678280 (=> (not res!1126032) (not e!1688259))))

(declare-fun matchR!3632 (Regex!7853 List!30918) Bool)

(declare-fun get!9688 (Option!6104) Rule!9218)

(assert (=> b!2678280 (= res!1126032 (matchR!3632 (regex!4709 (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309))))) (list!11649 (charsOf!2970 lt!943309))))))

(declare-fun b!2678282 () Bool)

(declare-fun Unit!45045 () Unit!45039)

(assert (=> b!2678282 (= e!1688260 Unit!45045)))

(declare-fun lt!943315 () List!30918)

(assert (=> b!2678282 (= lt!943315 (++!7525 lt!943080 lt!943082))))

(declare-fun lt!943314 () Unit!45039)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!443 (LexerInterface!4306 Rule!9218 List!30919 List!30918) Unit!45039)

(assert (=> b!2678282 (= lt!943314 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!443 thiss!14116 (rule!7119 lt!943309) rules!1712 lt!943315))))

(declare-fun maxPrefixOneRule!1490 (LexerInterface!4306 Rule!9218 List!30918) Option!6102)

(assert (=> b!2678282 (isEmpty!17655 (maxPrefixOneRule!1490 thiss!14116 (rule!7119 lt!943309) lt!943315))))

(declare-fun lt!943302 () Unit!45039)

(assert (=> b!2678282 (= lt!943302 lt!943314)))

(declare-fun lt!943304 () List!30918)

(assert (=> b!2678282 (= lt!943304 (list!11649 (charsOf!2970 lt!943309)))))

(declare-fun lt!943312 () Unit!45039)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!431 (LexerInterface!4306 Rule!9218 List!30918 List!30918) Unit!45039)

(assert (=> b!2678282 (= lt!943312 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!431 thiss!14116 (rule!7119 lt!943309) lt!943304 (++!7525 lt!943080 lt!943082)))))

(assert (=> b!2678282 (not (matchR!3632 (regex!4709 (rule!7119 lt!943309)) lt!943304))))

(declare-fun lt!943311 () Unit!45039)

(assert (=> b!2678282 (= lt!943311 lt!943312)))

(assert (=> b!2678282 false))

(declare-fun b!2678283 () Bool)

(declare-fun Unit!45046 () Unit!45039)

(assert (=> b!2678283 (= e!1688260 Unit!45046)))

(declare-fun b!2678281 () Bool)

(assert (=> b!2678281 (= e!1688259 (= (rule!7119 lt!943309) (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309))))))))

(assert (= (and d!765877 res!1126031) b!2678280))

(assert (= (and b!2678280 res!1126032) b!2678281))

(assert (= (and d!765877 c!431504) b!2678282))

(assert (= (and d!765877 (not c!431504)) b!2678283))

(declare-fun m!3045761 () Bool)

(assert (=> d!765877 m!3045761))

(declare-fun m!3045763 () Bool)

(assert (=> d!765877 m!3045763))

(declare-fun m!3045765 () Bool)

(assert (=> d!765877 m!3045765))

(declare-fun m!3045767 () Bool)

(assert (=> d!765877 m!3045767))

(declare-fun m!3045769 () Bool)

(assert (=> d!765877 m!3045769))

(assert (=> d!765877 m!3045767))

(declare-fun m!3045771 () Bool)

(assert (=> d!765877 m!3045771))

(assert (=> d!765877 m!3045259))

(assert (=> d!765877 m!3045263))

(assert (=> d!765877 m!3045263))

(declare-fun m!3045773 () Bool)

(assert (=> d!765877 m!3045773))

(assert (=> d!765877 m!3045475))

(declare-fun m!3045775 () Bool)

(assert (=> d!765877 m!3045775))

(declare-fun m!3045777 () Bool)

(assert (=> d!765877 m!3045777))

(declare-fun m!3045779 () Bool)

(assert (=> d!765877 m!3045779))

(declare-fun m!3045781 () Bool)

(assert (=> d!765877 m!3045781))

(assert (=> d!765877 m!3045273))

(assert (=> d!765877 m!3045259))

(assert (=> d!765877 m!3045263))

(declare-fun m!3045783 () Bool)

(assert (=> d!765877 m!3045783))

(assert (=> d!765877 m!3045777))

(assert (=> d!765877 m!3045765))

(declare-fun m!3045785 () Bool)

(assert (=> d!765877 m!3045785))

(assert (=> d!765877 m!3045271))

(assert (=> d!765877 m!3045475))

(assert (=> d!765877 m!3045761))

(declare-fun m!3045787 () Bool)

(assert (=> d!765877 m!3045787))

(assert (=> d!765877 m!3045273))

(assert (=> d!765877 m!3045275))

(assert (=> d!765877 m!3045259))

(declare-fun m!3045789 () Bool)

(assert (=> d!765877 m!3045789))

(assert (=> b!2678280 m!3045767))

(assert (=> b!2678280 m!3045777))

(assert (=> b!2678280 m!3045767))

(assert (=> b!2678280 m!3045771))

(assert (=> b!2678280 m!3045777))

(declare-fun m!3045791 () Bool)

(assert (=> b!2678280 m!3045791))

(assert (=> b!2678280 m!3045771))

(declare-fun m!3045793 () Bool)

(assert (=> b!2678280 m!3045793))

(declare-fun m!3045795 () Bool)

(assert (=> b!2678282 m!3045795))

(declare-fun m!3045797 () Bool)

(assert (=> b!2678282 m!3045797))

(declare-fun m!3045799 () Bool)

(assert (=> b!2678282 m!3045799))

(assert (=> b!2678282 m!3045767))

(assert (=> b!2678282 m!3045259))

(declare-fun m!3045801 () Bool)

(assert (=> b!2678282 m!3045801))

(assert (=> b!2678282 m!3045767))

(assert (=> b!2678282 m!3045771))

(assert (=> b!2678282 m!3045797))

(assert (=> b!2678282 m!3045259))

(declare-fun m!3045803 () Bool)

(assert (=> b!2678282 m!3045803))

(assert (=> b!2678281 m!3045777))

(assert (=> b!2678281 m!3045777))

(assert (=> b!2678281 m!3045791))

(assert (=> b!2677955 d!765877))

(declare-fun d!765881 () Bool)

(declare-fun lt!943319 () BalanceConc!18910)

(assert (=> d!765881 (= (list!11649 lt!943319) (originalCharacters!5475 (h!36240 l!4335)))))

(assert (=> d!765881 (= lt!943319 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335))))))

(assert (=> d!765881 (= (charsOf!2970 (h!36240 l!4335)) lt!943319)))

(declare-fun b_lambda!81785 () Bool)

(assert (=> (not b_lambda!81785) (not d!765881)))

(assert (=> d!765881 t!224163))

(declare-fun b_and!198171 () Bool)

(assert (= b_and!198159 (and (=> t!224163 result!185692) b_and!198171)))

(assert (=> d!765881 t!224165))

(declare-fun b_and!198173 () Bool)

(assert (= b_and!198161 (and (=> t!224165 result!185694) b_and!198173)))

(assert (=> d!765881 t!224167))

(declare-fun b_and!198175 () Bool)

(assert (= b_and!198163 (and (=> t!224167 result!185696) b_and!198175)))

(declare-fun m!3045805 () Bool)

(assert (=> d!765881 m!3045805))

(assert (=> d!765881 m!3045523))

(assert (=> b!2677958 d!765881))

(declare-fun d!765883 () Bool)

(declare-fun dynLambda!13414 (Int Token!8888) Bool)

(assert (=> d!765883 (dynLambda!13414 lambda!100040 (h!36240 l!4335))))

(declare-fun lt!943322 () Unit!45039)

(declare-fun choose!15863 (List!30920 Int Token!8888) Unit!45039)

(assert (=> d!765883 (= lt!943322 (choose!15863 l!4335 lambda!100040 (h!36240 l!4335)))))

(declare-fun e!1688263 () Bool)

(assert (=> d!765883 e!1688263))

(declare-fun res!1126035 () Bool)

(assert (=> d!765883 (=> (not res!1126035) (not e!1688263))))

(assert (=> d!765883 (= res!1126035 (forall!6528 l!4335 lambda!100040))))

(assert (=> d!765883 (= (forallContained!1049 l!4335 lambda!100040 (h!36240 l!4335)) lt!943322)))

(declare-fun b!2678286 () Bool)

(assert (=> b!2678286 (= e!1688263 (contains!5933 l!4335 (h!36240 l!4335)))))

(assert (= (and d!765883 res!1126035) b!2678286))

(declare-fun b_lambda!81787 () Bool)

(assert (=> (not b_lambda!81787) (not d!765883)))

(declare-fun m!3045807 () Bool)

(assert (=> d!765883 m!3045807))

(declare-fun m!3045809 () Bool)

(assert (=> d!765883 m!3045809))

(declare-fun m!3045811 () Bool)

(assert (=> d!765883 m!3045811))

(assert (=> b!2678286 m!3045213))

(assert (=> b!2677958 d!765883))

(declare-fun d!765885 () Bool)

(assert (=> d!765885 (= (list!11649 (charsOf!2970 (h!36240 l!4335))) (list!11653 (c!431444 (charsOf!2970 (h!36240 l!4335)))))))

(declare-fun bs!479972 () Bool)

(assert (= bs!479972 d!765885))

(declare-fun m!3045813 () Bool)

(assert (=> bs!479972 m!3045813))

(assert (=> b!2677958 d!765885))

(declare-fun b!2678295 () Bool)

(declare-fun e!1688268 () List!30918)

(assert (=> b!2678295 (= e!1688268 lt!943082)))

(declare-fun d!765887 () Bool)

(declare-fun e!1688269 () Bool)

(assert (=> d!765887 e!1688269))

(declare-fun res!1126040 () Bool)

(assert (=> d!765887 (=> (not res!1126040) (not e!1688269))))

(declare-fun lt!943325 () List!30918)

(declare-fun content!4387 (List!30918) (InoxSet C!15864))

(assert (=> d!765887 (= res!1126040 (= (content!4387 lt!943325) ((_ map or) (content!4387 lt!943080) (content!4387 lt!943082))))))

(assert (=> d!765887 (= lt!943325 e!1688268)))

(declare-fun c!431507 () Bool)

(assert (=> d!765887 (= c!431507 ((_ is Nil!30818) lt!943080))))

(assert (=> d!765887 (= (++!7525 lt!943080 lt!943082) lt!943325)))

(declare-fun b!2678298 () Bool)

(assert (=> b!2678298 (= e!1688269 (or (not (= lt!943082 Nil!30818)) (= lt!943325 lt!943080)))))

(declare-fun b!2678296 () Bool)

(assert (=> b!2678296 (= e!1688268 (Cons!30818 (h!36238 lt!943080) (++!7525 (t!224143 lt!943080) lt!943082)))))

(declare-fun b!2678297 () Bool)

(declare-fun res!1126041 () Bool)

(assert (=> b!2678297 (=> (not res!1126041) (not e!1688269))))

(assert (=> b!2678297 (= res!1126041 (= (size!23824 lt!943325) (+ (size!23824 lt!943080) (size!23824 lt!943082))))))

(assert (= (and d!765887 c!431507) b!2678295))

(assert (= (and d!765887 (not c!431507)) b!2678296))

(assert (= (and d!765887 res!1126040) b!2678297))

(assert (= (and b!2678297 res!1126041) b!2678298))

(declare-fun m!3045815 () Bool)

(assert (=> d!765887 m!3045815))

(declare-fun m!3045817 () Bool)

(assert (=> d!765887 m!3045817))

(declare-fun m!3045819 () Bool)

(assert (=> d!765887 m!3045819))

(declare-fun m!3045821 () Bool)

(assert (=> b!2678296 m!3045821))

(declare-fun m!3045823 () Bool)

(assert (=> b!2678297 m!3045823))

(declare-fun m!3045825 () Bool)

(assert (=> b!2678297 m!3045825))

(declare-fun m!3045827 () Bool)

(assert (=> b!2678297 m!3045827))

(assert (=> b!2677958 d!765887))

(declare-fun bs!479978 () Bool)

(declare-fun b!2678391 () Bool)

(assert (= bs!479978 (and b!2678391 b!2677968)))

(declare-fun lambda!100052 () Int)

(assert (=> bs!479978 (not (= lambda!100052 lambda!100039))))

(declare-fun bs!479979 () Bool)

(assert (= bs!479979 (and b!2678391 b!2677958)))

(assert (=> bs!479979 (= lambda!100052 lambda!100040)))

(declare-fun bs!479980 () Bool)

(assert (= bs!479980 (and b!2678391 d!765847)))

(assert (=> bs!479980 (= lambda!100052 lambda!100046)))

(declare-fun b!2678402 () Bool)

(declare-fun e!1688344 () Bool)

(assert (=> b!2678402 (= e!1688344 true)))

(declare-fun b!2678401 () Bool)

(declare-fun e!1688343 () Bool)

(assert (=> b!2678401 (= e!1688343 e!1688344)))

(declare-fun b!2678400 () Bool)

(declare-fun e!1688342 () Bool)

(assert (=> b!2678400 (= e!1688342 e!1688343)))

(assert (=> b!2678391 e!1688342))

(assert (= b!2678401 b!2678402))

(assert (= b!2678400 b!2678401))

(assert (= (and b!2678391 ((_ is Cons!30819) rules!1712)) b!2678400))

(assert (=> b!2678402 (< (dynLambda!13408 order!17019 (toValue!6659 (transformation!4709 (h!36239 rules!1712)))) (dynLambda!13409 order!17021 lambda!100052))))

(assert (=> b!2678402 (< (dynLambda!13410 order!17023 (toChars!6518 (transformation!4709 (h!36239 rules!1712)))) (dynLambda!13409 order!17021 lambda!100052))))

(assert (=> b!2678391 true))

(declare-fun b!2678390 () Bool)

(declare-fun e!1688341 () List!30918)

(declare-fun lt!943344 () List!30918)

(assert (=> b!2678390 (= e!1688341 lt!943344)))

(declare-fun e!1688339 () List!30918)

(declare-fun e!1688338 () List!30918)

(assert (=> b!2678391 (= e!1688339 e!1688338)))

(declare-fun lt!943346 () Unit!45039)

(assert (=> b!2678391 (= lt!943346 (forallContained!1049 (t!224145 l!4335) lambda!100052 (h!36240 (t!224145 l!4335))))))

(assert (=> b!2678391 (= lt!943344 (printWithSeparatorTokenWhenNeededList!698 thiss!14116 rules!1712 (t!224145 (t!224145 l!4335)) separatorToken!152))))

(declare-fun lt!943347 () Option!6102)

(assert (=> b!2678391 (= lt!943347 (maxPrefix!2342 thiss!14116 rules!1712 (++!7525 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335)))) lt!943344)))))

(declare-fun c!431520 () Bool)

(assert (=> b!2678391 (= c!431520 (and ((_ is Some!6101) lt!943347) (= (_1!17680 (v!32668 lt!943347)) (h!36240 (t!224145 l!4335)))))))

(declare-fun d!765889 () Bool)

(declare-fun c!431518 () Bool)

(assert (=> d!765889 (= c!431518 ((_ is Cons!30820) (t!224145 l!4335)))))

(assert (=> d!765889 (= (printWithSeparatorTokenWhenNeededList!698 thiss!14116 rules!1712 (t!224145 l!4335) separatorToken!152) e!1688339)))

(declare-fun b!2678392 () Bool)

(declare-fun c!431522 () Bool)

(assert (=> b!2678392 (= c!431522 (and ((_ is Some!6101) lt!943347) (not (= (_1!17680 (v!32668 lt!943347)) (h!36240 (t!224145 l!4335))))))))

(declare-fun e!1688340 () List!30918)

(assert (=> b!2678392 (= e!1688338 e!1688340)))

(declare-fun bm!172714 () Bool)

(declare-fun call!172720 () BalanceConc!18910)

(assert (=> bm!172714 (= call!172720 (charsOf!2970 (h!36240 (t!224145 l!4335))))))

(declare-fun b!2678393 () Bool)

(assert (=> b!2678393 (= e!1688339 Nil!30818)))

(declare-fun bm!172715 () Bool)

(declare-fun call!172722 () List!30918)

(declare-fun call!172721 () List!30918)

(assert (=> bm!172715 (= call!172722 call!172721)))

(declare-fun c!431521 () Bool)

(assert (=> bm!172715 (= c!431521 c!431522)))

(declare-fun b!2678394 () Bool)

(assert (=> b!2678394 (= e!1688340 Nil!30818)))

(assert (=> b!2678394 (= (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 (t!224145 l!4335)))) (printTailRec!1157 thiss!14116 (singletonSeq!2106 (h!36240 (t!224145 l!4335))) 0 (BalanceConc!18911 Empty!9648)))))

(declare-fun lt!943348 () Unit!45039)

(declare-fun Unit!45047 () Unit!45039)

(assert (=> b!2678394 (= lt!943348 Unit!45047)))

(declare-fun lt!943349 () Unit!45039)

(assert (=> b!2678394 (= lt!943349 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!825 thiss!14116 rules!1712 call!172722 lt!943344))))

(assert (=> b!2678394 false))

(declare-fun lt!943345 () Unit!45039)

(declare-fun Unit!45048 () Unit!45039)

(assert (=> b!2678394 (= lt!943345 Unit!45048)))

(declare-fun call!172723 () BalanceConc!18910)

(declare-fun bm!172716 () Bool)

(assert (=> bm!172716 (= call!172723 (charsOf!2970 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335)))))))

(declare-fun b!2678395 () Bool)

(declare-fun call!172719 () List!30918)

(assert (=> b!2678395 (= e!1688340 (++!7525 call!172719 lt!943344))))

(declare-fun b!2678396 () Bool)

(declare-fun e!1688337 () BalanceConc!18910)

(assert (=> b!2678396 (= e!1688337 call!172720)))

(declare-fun b!2678397 () Bool)

(assert (=> b!2678397 (= e!1688341 (list!11649 call!172723))))

(declare-fun bm!172717 () Bool)

(declare-fun c!431519 () Bool)

(assert (=> bm!172717 (= c!431519 c!431520)))

(assert (=> bm!172717 (= call!172719 (++!7525 (ite c!431520 call!172721 call!172722) e!1688341))))

(declare-fun bm!172718 () Bool)

(assert (=> bm!172718 (= call!172721 (list!11649 (ite c!431520 call!172720 e!1688337)))))

(declare-fun b!2678398 () Bool)

(assert (=> b!2678398 (= e!1688338 call!172719)))

(declare-fun b!2678399 () Bool)

(assert (=> b!2678399 (= e!1688337 call!172723)))

(assert (= (and d!765889 c!431518) b!2678391))

(assert (= (and d!765889 (not c!431518)) b!2678393))

(assert (= (and b!2678391 c!431520) b!2678398))

(assert (= (and b!2678391 (not c!431520)) b!2678392))

(assert (= (and b!2678392 c!431522) b!2678395))

(assert (= (and b!2678392 (not c!431522)) b!2678394))

(assert (= (or b!2678395 b!2678394) bm!172716))

(assert (= (or b!2678395 b!2678394) bm!172715))

(assert (= (and bm!172715 c!431521) b!2678396))

(assert (= (and bm!172715 (not c!431521)) b!2678399))

(assert (= (or b!2678398 b!2678396) bm!172714))

(assert (= (or b!2678398 bm!172715) bm!172718))

(assert (= (or b!2678398 b!2678395) bm!172717))

(assert (= (and bm!172717 c!431519) b!2678390))

(assert (= (and bm!172717 (not c!431519)) b!2678397))

(declare-fun m!3045851 () Bool)

(assert (=> bm!172714 m!3045851))

(declare-fun m!3045853 () Bool)

(assert (=> b!2678391 m!3045853))

(declare-fun m!3045855 () Bool)

(assert (=> b!2678391 m!3045855))

(assert (=> b!2678391 m!3045851))

(declare-fun m!3045857 () Bool)

(assert (=> b!2678391 m!3045857))

(declare-fun m!3045859 () Bool)

(assert (=> b!2678391 m!3045859))

(declare-fun m!3045861 () Bool)

(assert (=> b!2678391 m!3045861))

(assert (=> b!2678391 m!3045857))

(assert (=> b!2678391 m!3045851))

(assert (=> b!2678391 m!3045861))

(declare-fun m!3045863 () Bool)

(assert (=> bm!172716 m!3045863))

(declare-fun m!3045865 () Bool)

(assert (=> b!2678394 m!3045865))

(assert (=> b!2678394 m!3045865))

(declare-fun m!3045867 () Bool)

(assert (=> b!2678394 m!3045867))

(assert (=> b!2678394 m!3045865))

(declare-fun m!3045869 () Bool)

(assert (=> b!2678394 m!3045869))

(declare-fun m!3045871 () Bool)

(assert (=> b!2678394 m!3045871))

(declare-fun m!3045873 () Bool)

(assert (=> bm!172718 m!3045873))

(declare-fun m!3045875 () Bool)

(assert (=> b!2678395 m!3045875))

(declare-fun m!3045877 () Bool)

(assert (=> bm!172717 m!3045877))

(declare-fun m!3045879 () Bool)

(assert (=> b!2678397 m!3045879))

(assert (=> b!2677958 d!765889))

(declare-fun b!2678421 () Bool)

(declare-fun res!1126069 () Bool)

(declare-fun e!1688352 () Bool)

(assert (=> b!2678421 (=> (not res!1126069) (not e!1688352))))

(declare-fun lt!943362 () Option!6102)

(assert (=> b!2678421 (= res!1126069 (= (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362)))) (originalCharacters!5475 (_1!17680 (get!9687 lt!943362)))))))

(declare-fun b!2678422 () Bool)

(declare-fun res!1126070 () Bool)

(assert (=> b!2678422 (=> (not res!1126070) (not e!1688352))))

(assert (=> b!2678422 (= res!1126070 (< (size!23824 (_2!17680 (get!9687 lt!943362))) (size!23824 (++!7525 lt!943080 lt!943082))))))

(declare-fun b!2678423 () Bool)

(declare-fun e!1688351 () Option!6102)

(declare-fun call!172726 () Option!6102)

(assert (=> b!2678423 (= e!1688351 call!172726)))

(declare-fun d!765897 () Bool)

(declare-fun e!1688353 () Bool)

(assert (=> d!765897 e!1688353))

(declare-fun res!1126074 () Bool)

(assert (=> d!765897 (=> res!1126074 e!1688353)))

(assert (=> d!765897 (= res!1126074 (isEmpty!17655 lt!943362))))

(assert (=> d!765897 (= lt!943362 e!1688351)))

(declare-fun c!431525 () Bool)

(assert (=> d!765897 (= c!431525 (and ((_ is Cons!30819) rules!1712) ((_ is Nil!30819) (t!224144 rules!1712))))))

(declare-fun lt!943361 () Unit!45039)

(declare-fun lt!943364 () Unit!45039)

(assert (=> d!765897 (= lt!943361 lt!943364)))

(assert (=> d!765897 (isPrefix!2461 (++!7525 lt!943080 lt!943082) (++!7525 lt!943080 lt!943082))))

(declare-fun lemmaIsPrefixRefl!1587 (List!30918 List!30918) Unit!45039)

(assert (=> d!765897 (= lt!943364 (lemmaIsPrefixRefl!1587 (++!7525 lt!943080 lt!943082) (++!7525 lt!943080 lt!943082)))))

(declare-fun rulesValidInductive!1641 (LexerInterface!4306 List!30919) Bool)

(assert (=> d!765897 (rulesValidInductive!1641 thiss!14116 rules!1712)))

(assert (=> d!765897 (= (maxPrefix!2342 thiss!14116 rules!1712 (++!7525 lt!943080 lt!943082)) lt!943362)))

(declare-fun b!2678424 () Bool)

(declare-fun res!1126073 () Bool)

(assert (=> b!2678424 (=> (not res!1126073) (not e!1688352))))

(assert (=> b!2678424 (= res!1126073 (= (++!7525 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362)))) (_2!17680 (get!9687 lt!943362))) (++!7525 lt!943080 lt!943082)))))

(declare-fun b!2678425 () Bool)

(assert (=> b!2678425 (= e!1688353 e!1688352)))

(declare-fun res!1126072 () Bool)

(assert (=> b!2678425 (=> (not res!1126072) (not e!1688352))))

(assert (=> b!2678425 (= res!1126072 (isDefined!4849 lt!943362))))

(declare-fun b!2678426 () Bool)

(declare-fun lt!943363 () Option!6102)

(declare-fun lt!943360 () Option!6102)

(assert (=> b!2678426 (= e!1688351 (ite (and ((_ is None!6101) lt!943363) ((_ is None!6101) lt!943360)) None!6101 (ite ((_ is None!6101) lt!943360) lt!943363 (ite ((_ is None!6101) lt!943363) lt!943360 (ite (>= (size!23819 (_1!17680 (v!32668 lt!943363))) (size!23819 (_1!17680 (v!32668 lt!943360)))) lt!943363 lt!943360)))))))

(assert (=> b!2678426 (= lt!943363 call!172726)))

(assert (=> b!2678426 (= lt!943360 (maxPrefix!2342 thiss!14116 (t!224144 rules!1712) (++!7525 lt!943080 lt!943082)))))

(declare-fun b!2678427 () Bool)

(declare-fun res!1126071 () Bool)

(assert (=> b!2678427 (=> (not res!1126071) (not e!1688352))))

(declare-fun apply!7402 (TokenValueInjection!9302 BalanceConc!18910) TokenValue!4931)

(assert (=> b!2678427 (= res!1126071 (= (value!151811 (_1!17680 (get!9687 lt!943362))) (apply!7402 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))) (seqFromList!3209 (originalCharacters!5475 (_1!17680 (get!9687 lt!943362)))))))))

(declare-fun b!2678428 () Bool)

(declare-fun contains!5935 (List!30919 Rule!9218) Bool)

(assert (=> b!2678428 (= e!1688352 (contains!5935 rules!1712 (rule!7119 (_1!17680 (get!9687 lt!943362)))))))

(declare-fun b!2678429 () Bool)

(declare-fun res!1126068 () Bool)

(assert (=> b!2678429 (=> (not res!1126068) (not e!1688352))))

(assert (=> b!2678429 (= res!1126068 (matchR!3632 (regex!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))) (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362))))))))

(declare-fun bm!172721 () Bool)

(assert (=> bm!172721 (= call!172726 (maxPrefixOneRule!1490 thiss!14116 (h!36239 rules!1712) (++!7525 lt!943080 lt!943082)))))

(assert (= (and d!765897 c!431525) b!2678423))

(assert (= (and d!765897 (not c!431525)) b!2678426))

(assert (= (or b!2678423 b!2678426) bm!172721))

(assert (= (and d!765897 (not res!1126074)) b!2678425))

(assert (= (and b!2678425 res!1126072) b!2678421))

(assert (= (and b!2678421 res!1126069) b!2678422))

(assert (= (and b!2678422 res!1126070) b!2678424))

(assert (= (and b!2678424 res!1126073) b!2678427))

(assert (= (and b!2678427 res!1126071) b!2678429))

(assert (= (and b!2678429 res!1126068) b!2678428))

(declare-fun m!3045881 () Bool)

(assert (=> b!2678425 m!3045881))

(declare-fun m!3045883 () Bool)

(assert (=> b!2678428 m!3045883))

(declare-fun m!3045885 () Bool)

(assert (=> b!2678428 m!3045885))

(assert (=> b!2678422 m!3045883))

(declare-fun m!3045887 () Bool)

(assert (=> b!2678422 m!3045887))

(assert (=> b!2678422 m!3045259))

(declare-fun m!3045889 () Bool)

(assert (=> b!2678422 m!3045889))

(assert (=> b!2678427 m!3045883))

(declare-fun m!3045891 () Bool)

(assert (=> b!2678427 m!3045891))

(assert (=> b!2678427 m!3045891))

(declare-fun m!3045893 () Bool)

(assert (=> b!2678427 m!3045893))

(declare-fun m!3045895 () Bool)

(assert (=> d!765897 m!3045895))

(assert (=> d!765897 m!3045259))

(assert (=> d!765897 m!3045259))

(declare-fun m!3045897 () Bool)

(assert (=> d!765897 m!3045897))

(assert (=> d!765897 m!3045259))

(assert (=> d!765897 m!3045259))

(declare-fun m!3045899 () Bool)

(assert (=> d!765897 m!3045899))

(declare-fun m!3045901 () Bool)

(assert (=> d!765897 m!3045901))

(assert (=> b!2678426 m!3045259))

(declare-fun m!3045903 () Bool)

(assert (=> b!2678426 m!3045903))

(assert (=> b!2678429 m!3045883))

(declare-fun m!3045905 () Bool)

(assert (=> b!2678429 m!3045905))

(assert (=> b!2678429 m!3045905))

(declare-fun m!3045907 () Bool)

(assert (=> b!2678429 m!3045907))

(assert (=> b!2678429 m!3045907))

(declare-fun m!3045909 () Bool)

(assert (=> b!2678429 m!3045909))

(assert (=> b!2678421 m!3045883))

(assert (=> b!2678421 m!3045905))

(assert (=> b!2678421 m!3045905))

(assert (=> b!2678421 m!3045907))

(assert (=> b!2678424 m!3045883))

(assert (=> b!2678424 m!3045905))

(assert (=> b!2678424 m!3045905))

(assert (=> b!2678424 m!3045907))

(assert (=> b!2678424 m!3045907))

(declare-fun m!3045911 () Bool)

(assert (=> b!2678424 m!3045911))

(assert (=> bm!172721 m!3045259))

(declare-fun m!3045913 () Bool)

(assert (=> bm!172721 m!3045913))

(assert (=> b!2677958 d!765897))

(declare-fun d!765899 () Bool)

(assert (=> d!765899 (= (inv!41838 (tag!5211 (rule!7119 separatorToken!152))) (= (mod (str.len (value!151810 (tag!5211 (rule!7119 separatorToken!152)))) 2) 0))))

(assert (=> b!2677969 d!765899))

(declare-fun d!765901 () Bool)

(declare-fun res!1126075 () Bool)

(declare-fun e!1688354 () Bool)

(assert (=> d!765901 (=> (not res!1126075) (not e!1688354))))

(assert (=> d!765901 (= res!1126075 (semiInverseModEq!1954 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toValue!6659 (transformation!4709 (rule!7119 separatorToken!152)))))))

(assert (=> d!765901 (= (inv!41841 (transformation!4709 (rule!7119 separatorToken!152))) e!1688354)))

(declare-fun b!2678430 () Bool)

(assert (=> b!2678430 (= e!1688354 (equivClasses!1855 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toValue!6659 (transformation!4709 (rule!7119 separatorToken!152)))))))

(assert (= (and d!765901 res!1126075) b!2678430))

(declare-fun m!3045915 () Bool)

(assert (=> d!765901 m!3045915))

(declare-fun m!3045917 () Bool)

(assert (=> b!2678430 m!3045917))

(assert (=> b!2677969 d!765901))

(declare-fun d!765903 () Bool)

(assert (=> d!765903 (= (isEmpty!17644 rules!1712) ((_ is Nil!30819) rules!1712))))

(assert (=> b!2677959 d!765903))

(declare-fun d!765905 () Bool)

(assert (=> d!765905 (= (inv!41838 (tag!5211 (rule!7119 (h!36240 l!4335)))) (= (mod (str.len (value!151810 (tag!5211 (rule!7119 (h!36240 l!4335))))) 2) 0))))

(assert (=> b!2677957 d!765905))

(declare-fun d!765907 () Bool)

(declare-fun res!1126076 () Bool)

(declare-fun e!1688355 () Bool)

(assert (=> d!765907 (=> (not res!1126076) (not e!1688355))))

(assert (=> d!765907 (= res!1126076 (semiInverseModEq!1954 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toValue!6659 (transformation!4709 (rule!7119 (h!36240 l!4335))))))))

(assert (=> d!765907 (= (inv!41841 (transformation!4709 (rule!7119 (h!36240 l!4335)))) e!1688355)))

(declare-fun b!2678431 () Bool)

(assert (=> b!2678431 (= e!1688355 (equivClasses!1855 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toValue!6659 (transformation!4709 (rule!7119 (h!36240 l!4335))))))))

(assert (= (and d!765907 res!1126076) b!2678431))

(declare-fun m!3045919 () Bool)

(assert (=> d!765907 m!3045919))

(declare-fun m!3045921 () Bool)

(assert (=> b!2678431 m!3045921))

(assert (=> b!2677957 d!765907))

(declare-fun d!765909 () Bool)

(declare-fun res!1126081 () Bool)

(declare-fun e!1688360 () Bool)

(assert (=> d!765909 (=> res!1126081 e!1688360)))

(assert (=> d!765909 (= res!1126081 ((_ is Nil!30820) l!4335))))

(assert (=> d!765909 (= (forall!6528 l!4335 lambda!100039) e!1688360)))

(declare-fun b!2678436 () Bool)

(declare-fun e!1688361 () Bool)

(assert (=> b!2678436 (= e!1688360 e!1688361)))

(declare-fun res!1126082 () Bool)

(assert (=> b!2678436 (=> (not res!1126082) (not e!1688361))))

(assert (=> b!2678436 (= res!1126082 (dynLambda!13414 lambda!100039 (h!36240 l!4335)))))

(declare-fun b!2678437 () Bool)

(assert (=> b!2678437 (= e!1688361 (forall!6528 (t!224145 l!4335) lambda!100039))))

(assert (= (and d!765909 (not res!1126081)) b!2678436))

(assert (= (and b!2678436 res!1126082) b!2678437))

(declare-fun b_lambda!81799 () Bool)

(assert (=> (not b_lambda!81799) (not b!2678436)))

(declare-fun m!3045923 () Bool)

(assert (=> b!2678436 m!3045923))

(declare-fun m!3045925 () Bool)

(assert (=> b!2678437 m!3045925))

(assert (=> b!2677968 d!765909))

(declare-fun b!2678442 () Bool)

(declare-fun e!1688364 () Bool)

(declare-fun tp_is_empty!13837 () Bool)

(declare-fun tp!846845 () Bool)

(assert (=> b!2678442 (= e!1688364 (and tp_is_empty!13837 tp!846845))))

(assert (=> b!2677950 (= tp!846774 e!1688364)))

(assert (= (and b!2677950 ((_ is Cons!30818) (originalCharacters!5475 separatorToken!152))) b!2678442))

(declare-fun b!2678443 () Bool)

(declare-fun e!1688365 () Bool)

(declare-fun tp!846846 () Bool)

(assert (=> b!2678443 (= e!1688365 (and tp_is_empty!13837 tp!846846))))

(assert (=> b!2677949 (= tp!846769 e!1688365)))

(assert (= (and b!2677949 ((_ is Cons!30818) (originalCharacters!5475 (h!36240 l!4335)))) b!2678443))

(declare-fun b!2678454 () Bool)

(declare-fun b_free!75549 () Bool)

(declare-fun b_next!76253 () Bool)

(assert (=> b!2678454 (= b_free!75549 (not b_next!76253))))

(declare-fun tp!846857 () Bool)

(declare-fun b_and!198185 () Bool)

(assert (=> b!2678454 (= tp!846857 b_and!198185)))

(declare-fun b_free!75551 () Bool)

(declare-fun b_next!76255 () Bool)

(assert (=> b!2678454 (= b_free!75551 (not b_next!76255))))

(declare-fun t!224191 () Bool)

(declare-fun tb!150369 () Bool)

(assert (=> (and b!2678454 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152)))) t!224191) tb!150369))

(declare-fun result!185724 () Bool)

(assert (= result!185724 result!185684))

(assert (=> b!2678140 t!224191))

(declare-fun tb!150371 () Bool)

(declare-fun t!224193 () Bool)

(assert (=> (and b!2678454 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335))))) t!224193) tb!150371))

(declare-fun result!185726 () Bool)

(assert (= result!185726 result!185692))

(assert (=> b!2678183 t!224193))

(assert (=> d!765881 t!224193))

(declare-fun tp!846858 () Bool)

(declare-fun b_and!198187 () Bool)

(assert (=> b!2678454 (= tp!846858 (and (=> t!224191 result!185724) (=> t!224193 result!185726) b_and!198187))))

(declare-fun e!1688374 () Bool)

(assert (=> b!2678454 (= e!1688374 (and tp!846857 tp!846858))))

(declare-fun e!1688377 () Bool)

(declare-fun b!2678453 () Bool)

(declare-fun tp!846855 () Bool)

(assert (=> b!2678453 (= e!1688377 (and tp!846855 (inv!41838 (tag!5211 (h!36239 (t!224144 rules!1712)))) (inv!41841 (transformation!4709 (h!36239 (t!224144 rules!1712)))) e!1688374))))

(declare-fun b!2678452 () Bool)

(declare-fun e!1688376 () Bool)

(declare-fun tp!846856 () Bool)

(assert (=> b!2678452 (= e!1688376 (and e!1688377 tp!846856))))

(assert (=> b!2677953 (= tp!846767 e!1688376)))

(assert (= b!2678453 b!2678454))

(assert (= b!2678452 b!2678453))

(assert (= (and b!2677953 ((_ is Cons!30819) (t!224144 rules!1712))) b!2678452))

(declare-fun m!3045927 () Bool)

(assert (=> b!2678453 m!3045927))

(declare-fun m!3045929 () Bool)

(assert (=> b!2678453 m!3045929))

(declare-fun b!2678457 () Bool)

(declare-fun e!1688380 () Bool)

(assert (=> b!2678457 (= e!1688380 true)))

(declare-fun b!2678456 () Bool)

(declare-fun e!1688379 () Bool)

(assert (=> b!2678456 (= e!1688379 e!1688380)))

(declare-fun b!2678455 () Bool)

(declare-fun e!1688378 () Bool)

(assert (=> b!2678455 (= e!1688378 e!1688379)))

(assert (=> b!2677981 e!1688378))

(assert (= b!2678456 b!2678457))

(assert (= b!2678455 b!2678456))

(assert (= (and b!2677981 ((_ is Cons!30819) (t!224144 rules!1712))) b!2678455))

(assert (=> b!2678457 (< (dynLambda!13408 order!17019 (toValue!6659 (transformation!4709 (h!36239 (t!224144 rules!1712))))) (dynLambda!13409 order!17021 lambda!100040))))

(assert (=> b!2678457 (< (dynLambda!13410 order!17023 (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712))))) (dynLambda!13409 order!17021 lambda!100040))))

(declare-fun b!2678471 () Bool)

(declare-fun b_free!75553 () Bool)

(declare-fun b_next!76257 () Bool)

(assert (=> b!2678471 (= b_free!75553 (not b_next!76257))))

(declare-fun tp!846869 () Bool)

(declare-fun b_and!198189 () Bool)

(assert (=> b!2678471 (= tp!846869 b_and!198189)))

(declare-fun b_free!75555 () Bool)

(declare-fun b_next!76259 () Bool)

(assert (=> b!2678471 (= b_free!75555 (not b_next!76259))))

(declare-fun tb!150373 () Bool)

(declare-fun t!224195 () Bool)

(assert (=> (and b!2678471 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152)))) t!224195) tb!150373))

(declare-fun result!185730 () Bool)

(assert (= result!185730 result!185684))

(assert (=> b!2678140 t!224195))

(declare-fun t!224197 () Bool)

(declare-fun tb!150375 () Bool)

(assert (=> (and b!2678471 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335))))) t!224197) tb!150375))

(declare-fun result!185732 () Bool)

(assert (= result!185732 result!185692))

(assert (=> b!2678183 t!224197))

(assert (=> d!765881 t!224197))

(declare-fun b_and!198191 () Bool)

(declare-fun tp!846872 () Bool)

(assert (=> b!2678471 (= tp!846872 (and (=> t!224195 result!185730) (=> t!224197 result!185732) b_and!198191))))

(declare-fun e!1688395 () Bool)

(declare-fun b!2678469 () Bool)

(declare-fun e!1688396 () Bool)

(declare-fun tp!846873 () Bool)

(assert (=> b!2678469 (= e!1688395 (and (inv!21 (value!151811 (h!36240 (t!224145 l!4335)))) e!1688396 tp!846873))))

(declare-fun e!1688393 () Bool)

(assert (=> b!2678471 (= e!1688393 (and tp!846869 tp!846872))))

(declare-fun b!2678468 () Bool)

(declare-fun e!1688398 () Bool)

(declare-fun tp!846871 () Bool)

(assert (=> b!2678468 (= e!1688398 (and (inv!41842 (h!36240 (t!224145 l!4335))) e!1688395 tp!846871))))

(declare-fun b!2678470 () Bool)

(declare-fun tp!846870 () Bool)

(assert (=> b!2678470 (= e!1688396 (and tp!846870 (inv!41838 (tag!5211 (rule!7119 (h!36240 (t!224145 l!4335))))) (inv!41841 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) e!1688393))))

(assert (=> b!2677963 (= tp!846772 e!1688398)))

(assert (= b!2678470 b!2678471))

(assert (= b!2678469 b!2678470))

(assert (= b!2678468 b!2678469))

(assert (= (and b!2677963 ((_ is Cons!30820) (t!224145 l!4335))) b!2678468))

(declare-fun m!3045931 () Bool)

(assert (=> b!2678469 m!3045931))

(declare-fun m!3045933 () Bool)

(assert (=> b!2678468 m!3045933))

(declare-fun m!3045935 () Bool)

(assert (=> b!2678470 m!3045935))

(declare-fun m!3045937 () Bool)

(assert (=> b!2678470 m!3045937))

(declare-fun b!2678484 () Bool)

(declare-fun e!1688401 () Bool)

(declare-fun tp!846888 () Bool)

(assert (=> b!2678484 (= e!1688401 tp!846888)))

(declare-fun b!2678485 () Bool)

(declare-fun tp!846884 () Bool)

(declare-fun tp!846885 () Bool)

(assert (=> b!2678485 (= e!1688401 (and tp!846884 tp!846885))))

(declare-fun b!2678482 () Bool)

(assert (=> b!2678482 (= e!1688401 tp_is_empty!13837)))

(declare-fun b!2678483 () Bool)

(declare-fun tp!846886 () Bool)

(declare-fun tp!846887 () Bool)

(assert (=> b!2678483 (= e!1688401 (and tp!846886 tp!846887))))

(assert (=> b!2677956 (= tp!846771 e!1688401)))

(assert (= (and b!2677956 ((_ is ElementMatch!7853) (regex!4709 (h!36239 rules!1712)))) b!2678482))

(assert (= (and b!2677956 ((_ is Concat!12785) (regex!4709 (h!36239 rules!1712)))) b!2678483))

(assert (= (and b!2677956 ((_ is Star!7853) (regex!4709 (h!36239 rules!1712)))) b!2678484))

(assert (= (and b!2677956 ((_ is Union!7853) (regex!4709 (h!36239 rules!1712)))) b!2678485))

(declare-fun b!2678488 () Bool)

(declare-fun e!1688402 () Bool)

(declare-fun tp!846893 () Bool)

(assert (=> b!2678488 (= e!1688402 tp!846893)))

(declare-fun b!2678489 () Bool)

(declare-fun tp!846889 () Bool)

(declare-fun tp!846890 () Bool)

(assert (=> b!2678489 (= e!1688402 (and tp!846889 tp!846890))))

(declare-fun b!2678486 () Bool)

(assert (=> b!2678486 (= e!1688402 tp_is_empty!13837)))

(declare-fun b!2678487 () Bool)

(declare-fun tp!846891 () Bool)

(declare-fun tp!846892 () Bool)

(assert (=> b!2678487 (= e!1688402 (and tp!846891 tp!846892))))

(assert (=> b!2677969 (= tp!846777 e!1688402)))

(assert (= (and b!2677969 ((_ is ElementMatch!7853) (regex!4709 (rule!7119 separatorToken!152)))) b!2678486))

(assert (= (and b!2677969 ((_ is Concat!12785) (regex!4709 (rule!7119 separatorToken!152)))) b!2678487))

(assert (= (and b!2677969 ((_ is Star!7853) (regex!4709 (rule!7119 separatorToken!152)))) b!2678488))

(assert (= (and b!2677969 ((_ is Union!7853) (regex!4709 (rule!7119 separatorToken!152)))) b!2678489))

(declare-fun b!2678492 () Bool)

(declare-fun e!1688403 () Bool)

(declare-fun tp!846898 () Bool)

(assert (=> b!2678492 (= e!1688403 tp!846898)))

(declare-fun b!2678493 () Bool)

(declare-fun tp!846894 () Bool)

(declare-fun tp!846895 () Bool)

(assert (=> b!2678493 (= e!1688403 (and tp!846894 tp!846895))))

(declare-fun b!2678490 () Bool)

(assert (=> b!2678490 (= e!1688403 tp_is_empty!13837)))

(declare-fun b!2678491 () Bool)

(declare-fun tp!846896 () Bool)

(declare-fun tp!846897 () Bool)

(assert (=> b!2678491 (= e!1688403 (and tp!846896 tp!846897))))

(assert (=> b!2677957 (= tp!846770 e!1688403)))

(assert (= (and b!2677957 ((_ is ElementMatch!7853) (regex!4709 (rule!7119 (h!36240 l!4335))))) b!2678490))

(assert (= (and b!2677957 ((_ is Concat!12785) (regex!4709 (rule!7119 (h!36240 l!4335))))) b!2678491))

(assert (= (and b!2677957 ((_ is Star!7853) (regex!4709 (rule!7119 (h!36240 l!4335))))) b!2678492))

(assert (= (and b!2677957 ((_ is Union!7853) (regex!4709 (rule!7119 (h!36240 l!4335))))) b!2678493))

(declare-fun b_lambda!81801 () Bool)

(assert (= b_lambda!81785 (or (and b!2677970 b_free!75531) (and b!2677967 b_free!75535 (= (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))))) (and b!2678471 b_free!75555 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))))) (and b!2677966 b_free!75539 (= (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))))) (and b!2678454 b_free!75551 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))))) b_lambda!81801)))

(declare-fun b_lambda!81803 () Bool)

(assert (= b_lambda!81779 (or (and b!2678471 b_free!75555 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))))) (and b!2677967 b_free!75535 (= (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))))) (and b!2678454 b_free!75551 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))))) (and b!2677966 b_free!75539) (and b!2677970 b_free!75531 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))))) b_lambda!81803)))

(declare-fun b_lambda!81805 () Bool)

(assert (= b_lambda!81787 (or b!2677958 b_lambda!81805)))

(declare-fun bs!479981 () Bool)

(declare-fun d!765911 () Bool)

(assert (= bs!479981 (and d!765911 b!2677958)))

(assert (=> bs!479981 (= (dynLambda!13414 lambda!100040 (h!36240 l!4335)) (rulesProduceIndividualToken!2018 thiss!14116 rules!1712 (h!36240 l!4335)))))

(assert (=> bs!479981 m!3045269))

(assert (=> d!765883 d!765911))

(declare-fun b_lambda!81807 () Bool)

(assert (= b_lambda!81799 (or b!2677968 b_lambda!81807)))

(declare-fun bs!479982 () Bool)

(declare-fun d!765913 () Bool)

(assert (= bs!479982 (and d!765913 b!2677968)))

(assert (=> bs!479982 (= (dynLambda!13414 lambda!100039 (h!36240 l!4335)) (not (isSeparator!4709 (rule!7119 (h!36240 l!4335)))))))

(assert (=> b!2678436 d!765913))

(declare-fun b_lambda!81809 () Bool)

(assert (= b_lambda!81781 (or (and b!2677970 b_free!75531) (and b!2677967 b_free!75535 (= (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))))) (and b!2678471 b_free!75555 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))))) (and b!2677966 b_free!75539 (= (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))))) (and b!2678454 b_free!75551 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))))) b_lambda!81809)))

(check-sat (not b!2678492) (not b_next!76257) (not b!2678425) (not bm!172714) (not b!2678016) (not b!2678015) (not d!765837) (not b!2678205) (not b!2678297) (not b!2678397) b_and!198129 (not b!2678110) (not b!2678493) (not b!2678158) (not b!2678195) (not d!765839) (not b!2678130) (not b!2678140) (not b!2678455) (not b!2678200) (not b!2678427) (not b!2678422) (not d!765883) (not b!2678281) (not d!765843) (not d!765833) (not d!765825) (not b!2678391) (not tb!150349) b_and!198173 b_and!198185 (not b_next!76235) (not b!2678141) (not d!765821) (not b!2678489) b_and!198191 (not d!765827) (not d!765901) (not b_next!76239) (not b_next!76255) (not b!2678000) (not d!765847) tp_is_empty!13837 (not d!765887) (not b!2678487) (not b!2678183) (not b!2678124) (not b!2678485) (not d!765841) (not b!2678129) (not b!2678452) (not b_next!76233) (not b!2678117) b_and!198189 (not b!2678177) (not b!2678424) (not b!2678108) (not d!765807) (not b!2678175) (not b!2678152) (not b!2678395) (not b!2678426) (not b!2678491) (not bs!479981) (not b!2678470) (not b!2678197) (not b_next!76253) (not bm!172718) (not b_lambda!81803) (not b_next!76237) (not bm!172717) (not b!2678468) (not d!765819) (not b!2678185) (not b!2678282) (not b!2678429) (not b_lambda!81807) (not b!2678469) (not b!2678428) (not b!2678430) (not b!2678431) (not b_lambda!81805) (not d!765877) (not b!2678483) (not b!2678119) b_and!198175 (not d!765897) (not d!765885) (not b!2678421) (not b!2678442) (not b!2678131) (not b!2678437) (not d!765801) (not b!2678286) (not b_next!76243) b_and!198133 (not b!2677998) (not b_next!76259) (not tb!150343) (not b!2678179) (not bm!172721) (not b_next!76241) (not d!765907) (not b!2677999) (not b!2678394) (not b!2678453) (not b!2678178) (not b!2678296) (not bm!172716) (not b!2678118) b_and!198187 (not d!765783) (not b!2678184) (not d!765823) (not d!765805) (not b!2678255) (not b_lambda!81801) (not d!765881) b_and!198171 (not b!2678188) (not b!2678484) (not b!2678109) b_and!198137 (not b!2678256) (not b!2678400) (not b_lambda!81809) (not b!2678443) (not b!2678488) (not b!2678257) (not b!2678280))
(check-sat b_and!198129 (not b_next!76257) (not b_next!76253) (not b_next!76237) b_and!198175 (not b_next!76241) b_and!198187 b_and!198171 b_and!198137 b_and!198173 b_and!198185 (not b_next!76235) b_and!198191 (not b_next!76239) (not b_next!76255) (not b_next!76233) b_and!198189 b_and!198133 (not b_next!76259) (not b_next!76243))
(get-model)

(declare-fun d!765929 () Bool)

(assert (=> d!765929 true))

(declare-fun lambda!100061 () Int)

(declare-fun order!17029 () Int)

(declare-fun dynLambda!13417 (Int Int) Int)

(assert (=> d!765929 (< (dynLambda!13410 order!17023 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152)))) (dynLambda!13417 order!17029 lambda!100061))))

(assert (=> d!765929 true))

(assert (=> d!765929 (< (dynLambda!13408 order!17019 (toValue!6659 (transformation!4709 (rule!7119 separatorToken!152)))) (dynLambda!13417 order!17029 lambda!100061))))

(declare-fun Forall!1198 (Int) Bool)

(assert (=> d!765929 (= (semiInverseModEq!1954 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toValue!6659 (transformation!4709 (rule!7119 separatorToken!152)))) (Forall!1198 lambda!100061))))

(declare-fun bs!479988 () Bool)

(assert (= bs!479988 d!765929))

(declare-fun m!3045959 () Bool)

(assert (=> bs!479988 m!3045959))

(assert (=> d!765901 d!765929))

(declare-fun d!765935 () Bool)

(assert (=> d!765935 (= (list!11649 lt!943155) (list!11653 (c!431444 lt!943155)))))

(declare-fun bs!479989 () Bool)

(assert (= bs!479989 d!765935))

(declare-fun m!3045961 () Bool)

(assert (=> bs!479989 m!3045961))

(assert (=> d!765837 d!765935))

(declare-fun d!765937 () Bool)

(declare-fun c!431528 () Bool)

(assert (=> d!765937 (= c!431528 ((_ is Cons!30820) (list!11652 lt!943077)))))

(declare-fun e!1688409 () List!30918)

(assert (=> d!765937 (= (printList!1196 thiss!14116 (list!11652 lt!943077)) e!1688409)))

(declare-fun b!2678511 () Bool)

(assert (=> b!2678511 (= e!1688409 (++!7525 (list!11649 (charsOf!2970 (h!36240 (list!11652 lt!943077)))) (printList!1196 thiss!14116 (t!224145 (list!11652 lt!943077)))))))

(declare-fun b!2678512 () Bool)

(assert (=> b!2678512 (= e!1688409 Nil!30818)))

(assert (= (and d!765937 c!431528) b!2678511))

(assert (= (and d!765937 (not c!431528)) b!2678512))

(declare-fun m!3045963 () Bool)

(assert (=> b!2678511 m!3045963))

(assert (=> b!2678511 m!3045963))

(declare-fun m!3045965 () Bool)

(assert (=> b!2678511 m!3045965))

(declare-fun m!3045967 () Bool)

(assert (=> b!2678511 m!3045967))

(assert (=> b!2678511 m!3045965))

(assert (=> b!2678511 m!3045967))

(declare-fun m!3045969 () Bool)

(assert (=> b!2678511 m!3045969))

(assert (=> d!765837 d!765937))

(declare-fun d!765939 () Bool)

(declare-fun list!11655 (Conc!9649) List!30920)

(assert (=> d!765939 (= (list!11652 lt!943077) (list!11655 (c!431446 lt!943077)))))

(declare-fun bs!479990 () Bool)

(assert (= bs!479990 d!765939))

(declare-fun m!3045971 () Bool)

(assert (=> bs!479990 m!3045971))

(assert (=> d!765837 d!765939))

(assert (=> d!765837 d!765839))

(declare-fun d!765941 () Bool)

(declare-fun charsToBigInt!1 (List!30917) Int)

(assert (=> d!765941 (= (inv!17 (value!151811 (h!36240 l!4335))) (= (charsToBigInt!1 (text!34965 (value!151811 (h!36240 l!4335)))) (value!151803 (value!151811 (h!36240 l!4335)))))))

(declare-fun bs!479991 () Bool)

(assert (= bs!479991 d!765941))

(declare-fun m!3045973 () Bool)

(assert (=> bs!479991 m!3045973))

(assert (=> b!2678117 d!765941))

(declare-fun b!2678513 () Bool)

(declare-fun res!1126096 () Bool)

(declare-fun e!1688411 () Bool)

(assert (=> b!2678513 (=> (not res!1126096) (not e!1688411))))

(declare-fun lt!943373 () Option!6102)

(assert (=> b!2678513 (= res!1126096 (= (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943373)))) (originalCharacters!5475 (_1!17680 (get!9687 lt!943373)))))))

(declare-fun b!2678514 () Bool)

(declare-fun res!1126097 () Bool)

(assert (=> b!2678514 (=> (not res!1126097) (not e!1688411))))

(assert (=> b!2678514 (= res!1126097 (< (size!23824 (_2!17680 (get!9687 lt!943373))) (size!23824 (++!7525 lt!943080 lt!943082))))))

(declare-fun b!2678515 () Bool)

(declare-fun e!1688410 () Option!6102)

(declare-fun call!172727 () Option!6102)

(assert (=> b!2678515 (= e!1688410 call!172727)))

(declare-fun d!765943 () Bool)

(declare-fun e!1688412 () Bool)

(assert (=> d!765943 e!1688412))

(declare-fun res!1126101 () Bool)

(assert (=> d!765943 (=> res!1126101 e!1688412)))

(assert (=> d!765943 (= res!1126101 (isEmpty!17655 lt!943373))))

(assert (=> d!765943 (= lt!943373 e!1688410)))

(declare-fun c!431529 () Bool)

(assert (=> d!765943 (= c!431529 (and ((_ is Cons!30819) (t!224144 rules!1712)) ((_ is Nil!30819) (t!224144 (t!224144 rules!1712)))))))

(declare-fun lt!943372 () Unit!45039)

(declare-fun lt!943375 () Unit!45039)

(assert (=> d!765943 (= lt!943372 lt!943375)))

(assert (=> d!765943 (isPrefix!2461 (++!7525 lt!943080 lt!943082) (++!7525 lt!943080 lt!943082))))

(assert (=> d!765943 (= lt!943375 (lemmaIsPrefixRefl!1587 (++!7525 lt!943080 lt!943082) (++!7525 lt!943080 lt!943082)))))

(assert (=> d!765943 (rulesValidInductive!1641 thiss!14116 (t!224144 rules!1712))))

(assert (=> d!765943 (= (maxPrefix!2342 thiss!14116 (t!224144 rules!1712) (++!7525 lt!943080 lt!943082)) lt!943373)))

(declare-fun b!2678516 () Bool)

(declare-fun res!1126100 () Bool)

(assert (=> b!2678516 (=> (not res!1126100) (not e!1688411))))

(assert (=> b!2678516 (= res!1126100 (= (++!7525 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943373)))) (_2!17680 (get!9687 lt!943373))) (++!7525 lt!943080 lt!943082)))))

(declare-fun b!2678517 () Bool)

(assert (=> b!2678517 (= e!1688412 e!1688411)))

(declare-fun res!1126099 () Bool)

(assert (=> b!2678517 (=> (not res!1126099) (not e!1688411))))

(assert (=> b!2678517 (= res!1126099 (isDefined!4849 lt!943373))))

(declare-fun b!2678518 () Bool)

(declare-fun lt!943374 () Option!6102)

(declare-fun lt!943371 () Option!6102)

(assert (=> b!2678518 (= e!1688410 (ite (and ((_ is None!6101) lt!943374) ((_ is None!6101) lt!943371)) None!6101 (ite ((_ is None!6101) lt!943371) lt!943374 (ite ((_ is None!6101) lt!943374) lt!943371 (ite (>= (size!23819 (_1!17680 (v!32668 lt!943374))) (size!23819 (_1!17680 (v!32668 lt!943371)))) lt!943374 lt!943371)))))))

(assert (=> b!2678518 (= lt!943374 call!172727)))

(assert (=> b!2678518 (= lt!943371 (maxPrefix!2342 thiss!14116 (t!224144 (t!224144 rules!1712)) (++!7525 lt!943080 lt!943082)))))

(declare-fun b!2678519 () Bool)

(declare-fun res!1126098 () Bool)

(assert (=> b!2678519 (=> (not res!1126098) (not e!1688411))))

(assert (=> b!2678519 (= res!1126098 (= (value!151811 (_1!17680 (get!9687 lt!943373))) (apply!7402 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943373)))) (seqFromList!3209 (originalCharacters!5475 (_1!17680 (get!9687 lt!943373)))))))))

(declare-fun b!2678520 () Bool)

(assert (=> b!2678520 (= e!1688411 (contains!5935 (t!224144 rules!1712) (rule!7119 (_1!17680 (get!9687 lt!943373)))))))

(declare-fun b!2678521 () Bool)

(declare-fun res!1126095 () Bool)

(assert (=> b!2678521 (=> (not res!1126095) (not e!1688411))))

(assert (=> b!2678521 (= res!1126095 (matchR!3632 (regex!4709 (rule!7119 (_1!17680 (get!9687 lt!943373)))) (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943373))))))))

(declare-fun bm!172722 () Bool)

(assert (=> bm!172722 (= call!172727 (maxPrefixOneRule!1490 thiss!14116 (h!36239 (t!224144 rules!1712)) (++!7525 lt!943080 lt!943082)))))

(assert (= (and d!765943 c!431529) b!2678515))

(assert (= (and d!765943 (not c!431529)) b!2678518))

(assert (= (or b!2678515 b!2678518) bm!172722))

(assert (= (and d!765943 (not res!1126101)) b!2678517))

(assert (= (and b!2678517 res!1126099) b!2678513))

(assert (= (and b!2678513 res!1126096) b!2678514))

(assert (= (and b!2678514 res!1126097) b!2678516))

(assert (= (and b!2678516 res!1126100) b!2678519))

(assert (= (and b!2678519 res!1126098) b!2678521))

(assert (= (and b!2678521 res!1126095) b!2678520))

(declare-fun m!3045975 () Bool)

(assert (=> b!2678517 m!3045975))

(declare-fun m!3045977 () Bool)

(assert (=> b!2678520 m!3045977))

(declare-fun m!3045979 () Bool)

(assert (=> b!2678520 m!3045979))

(assert (=> b!2678514 m!3045977))

(declare-fun m!3045981 () Bool)

(assert (=> b!2678514 m!3045981))

(assert (=> b!2678514 m!3045259))

(assert (=> b!2678514 m!3045889))

(assert (=> b!2678519 m!3045977))

(declare-fun m!3045983 () Bool)

(assert (=> b!2678519 m!3045983))

(assert (=> b!2678519 m!3045983))

(declare-fun m!3045985 () Bool)

(assert (=> b!2678519 m!3045985))

(declare-fun m!3045987 () Bool)

(assert (=> d!765943 m!3045987))

(assert (=> d!765943 m!3045259))

(assert (=> d!765943 m!3045259))

(assert (=> d!765943 m!3045897))

(assert (=> d!765943 m!3045259))

(assert (=> d!765943 m!3045259))

(assert (=> d!765943 m!3045899))

(declare-fun m!3045989 () Bool)

(assert (=> d!765943 m!3045989))

(assert (=> b!2678518 m!3045259))

(declare-fun m!3045991 () Bool)

(assert (=> b!2678518 m!3045991))

(assert (=> b!2678521 m!3045977))

(declare-fun m!3045993 () Bool)

(assert (=> b!2678521 m!3045993))

(assert (=> b!2678521 m!3045993))

(declare-fun m!3045995 () Bool)

(assert (=> b!2678521 m!3045995))

(assert (=> b!2678521 m!3045995))

(declare-fun m!3045997 () Bool)

(assert (=> b!2678521 m!3045997))

(assert (=> b!2678513 m!3045977))

(assert (=> b!2678513 m!3045993))

(assert (=> b!2678513 m!3045993))

(assert (=> b!2678513 m!3045995))

(assert (=> b!2678516 m!3045977))

(assert (=> b!2678516 m!3045993))

(assert (=> b!2678516 m!3045993))

(assert (=> b!2678516 m!3045995))

(assert (=> b!2678516 m!3045995))

(declare-fun m!3045999 () Bool)

(assert (=> b!2678516 m!3045999))

(assert (=> bm!172722 m!3045259))

(declare-fun m!3046001 () Bool)

(assert (=> bm!172722 m!3046001))

(assert (=> b!2678426 d!765943))

(declare-fun d!765945 () Bool)

(declare-fun charsToBigInt!0 (List!30917 Int) Int)

(assert (=> d!765945 (= (inv!15 (value!151811 (h!36240 l!4335))) (= (charsToBigInt!0 (text!34966 (value!151811 (h!36240 l!4335))) 0) (value!151806 (value!151811 (h!36240 l!4335)))))))

(declare-fun bs!479992 () Bool)

(assert (= bs!479992 d!765945))

(declare-fun m!3046003 () Bool)

(assert (=> bs!479992 m!3046003))

(assert (=> b!2678119 d!765945))

(declare-fun d!765947 () Bool)

(declare-fun res!1126114 () Bool)

(declare-fun e!1688431 () Bool)

(assert (=> d!765947 (=> res!1126114 e!1688431)))

(assert (=> d!765947 (= res!1126114 ((_ is Nil!30819) rules!1712))))

(assert (=> d!765947 (= (noDuplicateTag!1755 thiss!14116 rules!1712 Nil!30821) e!1688431)))

(declare-fun b!2678548 () Bool)

(declare-fun e!1688432 () Bool)

(assert (=> b!2678548 (= e!1688431 e!1688432)))

(declare-fun res!1126115 () Bool)

(assert (=> b!2678548 (=> (not res!1126115) (not e!1688432))))

(declare-fun contains!5936 (List!30921 String!34539) Bool)

(assert (=> b!2678548 (= res!1126115 (not (contains!5936 Nil!30821 (tag!5211 (h!36239 rules!1712)))))))

(declare-fun b!2678549 () Bool)

(assert (=> b!2678549 (= e!1688432 (noDuplicateTag!1755 thiss!14116 (t!224144 rules!1712) (Cons!30821 (tag!5211 (h!36239 rules!1712)) Nil!30821)))))

(assert (= (and d!765947 (not res!1126114)) b!2678548))

(assert (= (and b!2678548 res!1126115) b!2678549))

(declare-fun m!3046031 () Bool)

(assert (=> b!2678548 m!3046031))

(declare-fun m!3046033 () Bool)

(assert (=> b!2678549 m!3046033))

(assert (=> b!2678124 d!765947))

(assert (=> b!2678286 d!765819))

(declare-fun d!765955 () Bool)

(declare-fun lt!943388 () Bool)

(declare-fun content!4388 (List!30919) (InoxSet Rule!9218))

(assert (=> d!765955 (= lt!943388 (select (content!4388 rules!1712) (rule!7119 (_1!17680 (get!9687 lt!943362)))))))

(declare-fun e!1688437 () Bool)

(assert (=> d!765955 (= lt!943388 e!1688437)))

(declare-fun res!1126121 () Bool)

(assert (=> d!765955 (=> (not res!1126121) (not e!1688437))))

(assert (=> d!765955 (= res!1126121 ((_ is Cons!30819) rules!1712))))

(assert (=> d!765955 (= (contains!5935 rules!1712 (rule!7119 (_1!17680 (get!9687 lt!943362)))) lt!943388)))

(declare-fun b!2678554 () Bool)

(declare-fun e!1688438 () Bool)

(assert (=> b!2678554 (= e!1688437 e!1688438)))

(declare-fun res!1126120 () Bool)

(assert (=> b!2678554 (=> res!1126120 e!1688438)))

(assert (=> b!2678554 (= res!1126120 (= (h!36239 rules!1712) (rule!7119 (_1!17680 (get!9687 lt!943362)))))))

(declare-fun b!2678555 () Bool)

(assert (=> b!2678555 (= e!1688438 (contains!5935 (t!224144 rules!1712) (rule!7119 (_1!17680 (get!9687 lt!943362)))))))

(assert (= (and d!765955 res!1126121) b!2678554))

(assert (= (and b!2678554 (not res!1126120)) b!2678555))

(declare-fun m!3046035 () Bool)

(assert (=> d!765955 m!3046035))

(declare-fun m!3046037 () Bool)

(assert (=> d!765955 m!3046037))

(declare-fun m!3046039 () Bool)

(assert (=> b!2678555 m!3046039))

(assert (=> b!2678428 d!765955))

(declare-fun d!765957 () Bool)

(assert (=> d!765957 (= (get!9687 lt!943362) (v!32668 lt!943362))))

(assert (=> b!2678428 d!765957))

(declare-fun d!765959 () Bool)

(declare-fun res!1126122 () Bool)

(declare-fun e!1688439 () Bool)

(assert (=> d!765959 (=> (not res!1126122) (not e!1688439))))

(assert (=> d!765959 (= res!1126122 (not (isEmpty!17652 (originalCharacters!5475 (h!36240 (t!224145 l!4335))))))))

(assert (=> d!765959 (= (inv!41842 (h!36240 (t!224145 l!4335))) e!1688439)))

(declare-fun b!2678556 () Bool)

(declare-fun res!1126123 () Bool)

(assert (=> b!2678556 (=> (not res!1126123) (not e!1688439))))

(assert (=> b!2678556 (= res!1126123 (= (originalCharacters!5475 (h!36240 (t!224145 l!4335))) (list!11649 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (value!151811 (h!36240 (t!224145 l!4335)))))))))

(declare-fun b!2678557 () Bool)

(assert (=> b!2678557 (= e!1688439 (= (size!23819 (h!36240 (t!224145 l!4335))) (size!23824 (originalCharacters!5475 (h!36240 (t!224145 l!4335))))))))

(assert (= (and d!765959 res!1126122) b!2678556))

(assert (= (and b!2678556 res!1126123) b!2678557))

(declare-fun b_lambda!81811 () Bool)

(assert (=> (not b_lambda!81811) (not b!2678556)))

(declare-fun t!224202 () Bool)

(declare-fun tb!150377 () Bool)

(assert (=> (and b!2678454 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335)))))) t!224202) tb!150377))

(declare-fun b!2678558 () Bool)

(declare-fun e!1688440 () Bool)

(declare-fun tp!846899 () Bool)

(assert (=> b!2678558 (= e!1688440 (and (inv!41845 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (value!151811 (h!36240 (t!224145 l!4335)))))) tp!846899))))

(declare-fun result!185736 () Bool)

(assert (=> tb!150377 (= result!185736 (and (inv!41846 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (value!151811 (h!36240 (t!224145 l!4335))))) e!1688440))))

(assert (= tb!150377 b!2678558))

(declare-fun m!3046041 () Bool)

(assert (=> b!2678558 m!3046041))

(declare-fun m!3046043 () Bool)

(assert (=> tb!150377 m!3046043))

(assert (=> b!2678556 t!224202))

(declare-fun b_and!198193 () Bool)

(assert (= b_and!198187 (and (=> t!224202 result!185736) b_and!198193)))

(declare-fun t!224204 () Bool)

(declare-fun tb!150379 () Bool)

(assert (=> (and b!2678471 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335)))))) t!224204) tb!150379))

(declare-fun result!185738 () Bool)

(assert (= result!185738 result!185736))

(assert (=> b!2678556 t!224204))

(declare-fun b_and!198195 () Bool)

(assert (= b_and!198191 (and (=> t!224204 result!185738) b_and!198195)))

(declare-fun t!224206 () Bool)

(declare-fun tb!150381 () Bool)

(assert (=> (and b!2677967 (= (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335)))))) t!224206) tb!150381))

(declare-fun result!185740 () Bool)

(assert (= result!185740 result!185736))

(assert (=> b!2678556 t!224206))

(declare-fun b_and!198197 () Bool)

(assert (= b_and!198173 (and (=> t!224206 result!185740) b_and!198197)))

(declare-fun t!224208 () Bool)

(declare-fun tb!150383 () Bool)

(assert (=> (and b!2677966 (= (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335)))))) t!224208) tb!150383))

(declare-fun result!185742 () Bool)

(assert (= result!185742 result!185736))

(assert (=> b!2678556 t!224208))

(declare-fun b_and!198199 () Bool)

(assert (= b_and!198175 (and (=> t!224208 result!185742) b_and!198199)))

(declare-fun t!224210 () Bool)

(declare-fun tb!150385 () Bool)

(assert (=> (and b!2677970 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335)))))) t!224210) tb!150385))

(declare-fun result!185744 () Bool)

(assert (= result!185744 result!185736))

(assert (=> b!2678556 t!224210))

(declare-fun b_and!198201 () Bool)

(assert (= b_and!198171 (and (=> t!224210 result!185744) b_and!198201)))

(declare-fun m!3046045 () Bool)

(assert (=> d!765959 m!3046045))

(declare-fun m!3046047 () Bool)

(assert (=> b!2678556 m!3046047))

(assert (=> b!2678556 m!3046047))

(declare-fun m!3046049 () Bool)

(assert (=> b!2678556 m!3046049))

(declare-fun m!3046051 () Bool)

(assert (=> b!2678557 m!3046051))

(assert (=> b!2678468 d!765959))

(declare-fun d!765961 () Bool)

(declare-fun lt!943391 () BalanceConc!18910)

(assert (=> d!765961 (= (list!11649 lt!943391) (originalCharacters!5475 lt!943309))))

(assert (=> d!765961 (= lt!943391 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 lt!943309))) (value!151811 lt!943309)))))

(assert (=> d!765961 (= (charsOf!2970 lt!943309) lt!943391)))

(declare-fun b_lambda!81813 () Bool)

(assert (=> (not b_lambda!81813) (not d!765961)))

(declare-fun tb!150387 () Bool)

(declare-fun t!224212 () Bool)

(assert (=> (and b!2677967 (= (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toChars!6518 (transformation!4709 (rule!7119 lt!943309)))) t!224212) tb!150387))

(declare-fun b!2678563 () Bool)

(declare-fun e!1688443 () Bool)

(declare-fun tp!846900 () Bool)

(assert (=> b!2678563 (= e!1688443 (and (inv!41845 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 lt!943309))) (value!151811 lt!943309)))) tp!846900))))

(declare-fun result!185746 () Bool)

(assert (=> tb!150387 (= result!185746 (and (inv!41846 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 lt!943309))) (value!151811 lt!943309))) e!1688443))))

(assert (= tb!150387 b!2678563))

(declare-fun m!3046053 () Bool)

(assert (=> b!2678563 m!3046053))

(declare-fun m!3046055 () Bool)

(assert (=> tb!150387 m!3046055))

(assert (=> d!765961 t!224212))

(declare-fun b_and!198203 () Bool)

(assert (= b_and!198197 (and (=> t!224212 result!185746) b_and!198203)))

(declare-fun tb!150389 () Bool)

(declare-fun t!224214 () Bool)

(assert (=> (and b!2678471 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (toChars!6518 (transformation!4709 (rule!7119 lt!943309)))) t!224214) tb!150389))

(declare-fun result!185748 () Bool)

(assert (= result!185748 result!185746))

(assert (=> d!765961 t!224214))

(declare-fun b_and!198205 () Bool)

(assert (= b_and!198195 (and (=> t!224214 result!185748) b_and!198205)))

(declare-fun t!224216 () Bool)

(declare-fun tb!150391 () Bool)

(assert (=> (and b!2677966 (= (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toChars!6518 (transformation!4709 (rule!7119 lt!943309)))) t!224216) tb!150391))

(declare-fun result!185750 () Bool)

(assert (= result!185750 result!185746))

(assert (=> d!765961 t!224216))

(declare-fun b_and!198207 () Bool)

(assert (= b_and!198199 (and (=> t!224216 result!185750) b_and!198207)))

(declare-fun tb!150393 () Bool)

(declare-fun t!224218 () Bool)

(assert (=> (and b!2677970 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toChars!6518 (transformation!4709 (rule!7119 lt!943309)))) t!224218) tb!150393))

(declare-fun result!185752 () Bool)

(assert (= result!185752 result!185746))

(assert (=> d!765961 t!224218))

(declare-fun b_and!198209 () Bool)

(assert (= b_and!198201 (and (=> t!224218 result!185752) b_and!198209)))

(declare-fun tb!150395 () Bool)

(declare-fun t!224220 () Bool)

(assert (=> (and b!2678454 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toChars!6518 (transformation!4709 (rule!7119 lt!943309)))) t!224220) tb!150395))

(declare-fun result!185754 () Bool)

(assert (= result!185754 result!185746))

(assert (=> d!765961 t!224220))

(declare-fun b_and!198211 () Bool)

(assert (= b_and!198193 (and (=> t!224220 result!185754) b_and!198211)))

(declare-fun m!3046057 () Bool)

(assert (=> d!765961 m!3046057))

(declare-fun m!3046059 () Bool)

(assert (=> d!765961 m!3046059))

(assert (=> b!2678280 d!765961))

(declare-fun bm!172726 () Bool)

(declare-fun call!172731 () Bool)

(assert (=> bm!172726 (= call!172731 (isEmpty!17652 (list!11649 (charsOf!2970 lt!943309))))))

(declare-fun e!1688466 () Bool)

(declare-fun b!2678604 () Bool)

(declare-fun nullable!2593 (Regex!7853) Bool)

(assert (=> b!2678604 (= e!1688466 (nullable!2593 (regex!4709 (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309)))))))))

(declare-fun b!2678605 () Bool)

(declare-fun res!1126159 () Bool)

(declare-fun e!1688469 () Bool)

(assert (=> b!2678605 (=> res!1126159 e!1688469)))

(assert (=> b!2678605 (= res!1126159 (not ((_ is ElementMatch!7853) (regex!4709 (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309))))))))))

(declare-fun e!1688467 () Bool)

(assert (=> b!2678605 (= e!1688467 e!1688469)))

(declare-fun d!765963 () Bool)

(declare-fun e!1688464 () Bool)

(assert (=> d!765963 e!1688464))

(declare-fun c!431544 () Bool)

(assert (=> d!765963 (= c!431544 ((_ is EmptyExpr!7853) (regex!4709 (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309)))))))))

(declare-fun lt!943407 () Bool)

(assert (=> d!765963 (= lt!943407 e!1688466)))

(declare-fun c!431546 () Bool)

(assert (=> d!765963 (= c!431546 (isEmpty!17652 (list!11649 (charsOf!2970 lt!943309))))))

(declare-fun validRegex!3302 (Regex!7853) Bool)

(assert (=> d!765963 (validRegex!3302 (regex!4709 (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309))))))))

(assert (=> d!765963 (= (matchR!3632 (regex!4709 (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309))))) (list!11649 (charsOf!2970 lt!943309))) lt!943407)))

(declare-fun b!2678606 () Bool)

(declare-fun e!1688468 () Bool)

(declare-fun head!6089 (List!30918) C!15864)

(assert (=> b!2678606 (= e!1688468 (not (= (head!6089 (list!11649 (charsOf!2970 lt!943309))) (c!431445 (regex!4709 (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309)))))))))))

(declare-fun b!2678607 () Bool)

(declare-fun res!1126157 () Bool)

(assert (=> b!2678607 (=> res!1126157 e!1688468)))

(declare-fun tail!4327 (List!30918) List!30918)

(assert (=> b!2678607 (= res!1126157 (not (isEmpty!17652 (tail!4327 (list!11649 (charsOf!2970 lt!943309))))))))

(declare-fun b!2678608 () Bool)

(declare-fun e!1688463 () Bool)

(assert (=> b!2678608 (= e!1688463 e!1688468)))

(declare-fun res!1126155 () Bool)

(assert (=> b!2678608 (=> res!1126155 e!1688468)))

(assert (=> b!2678608 (= res!1126155 call!172731)))

(declare-fun b!2678609 () Bool)

(assert (=> b!2678609 (= e!1688469 e!1688463)))

(declare-fun res!1126153 () Bool)

(assert (=> b!2678609 (=> (not res!1126153) (not e!1688463))))

(assert (=> b!2678609 (= res!1126153 (not lt!943407))))

(declare-fun b!2678610 () Bool)

(declare-fun res!1126158 () Bool)

(assert (=> b!2678610 (=> res!1126158 e!1688469)))

(declare-fun e!1688465 () Bool)

(assert (=> b!2678610 (= res!1126158 e!1688465)))

(declare-fun res!1126154 () Bool)

(assert (=> b!2678610 (=> (not res!1126154) (not e!1688465))))

(assert (=> b!2678610 (= res!1126154 lt!943407)))

(declare-fun b!2678611 () Bool)

(declare-fun res!1126160 () Bool)

(assert (=> b!2678611 (=> (not res!1126160) (not e!1688465))))

(assert (=> b!2678611 (= res!1126160 (not call!172731))))

(declare-fun b!2678612 () Bool)

(assert (=> b!2678612 (= e!1688467 (not lt!943407))))

(declare-fun b!2678613 () Bool)

(declare-fun derivativeStep!2239 (Regex!7853 C!15864) Regex!7853)

(assert (=> b!2678613 (= e!1688466 (matchR!3632 (derivativeStep!2239 (regex!4709 (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309))))) (head!6089 (list!11649 (charsOf!2970 lt!943309)))) (tail!4327 (list!11649 (charsOf!2970 lt!943309)))))))

(declare-fun b!2678614 () Bool)

(assert (=> b!2678614 (= e!1688465 (= (head!6089 (list!11649 (charsOf!2970 lt!943309))) (c!431445 (regex!4709 (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309))))))))))

(declare-fun b!2678615 () Bool)

(declare-fun res!1126156 () Bool)

(assert (=> b!2678615 (=> (not res!1126156) (not e!1688465))))

(assert (=> b!2678615 (= res!1126156 (isEmpty!17652 (tail!4327 (list!11649 (charsOf!2970 lt!943309)))))))

(declare-fun b!2678616 () Bool)

(assert (=> b!2678616 (= e!1688464 e!1688467)))

(declare-fun c!431545 () Bool)

(assert (=> b!2678616 (= c!431545 ((_ is EmptyLang!7853) (regex!4709 (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309)))))))))

(declare-fun b!2678617 () Bool)

(assert (=> b!2678617 (= e!1688464 (= lt!943407 call!172731))))

(assert (= (and d!765963 c!431546) b!2678604))

(assert (= (and d!765963 (not c!431546)) b!2678613))

(assert (= (and d!765963 c!431544) b!2678617))

(assert (= (and d!765963 (not c!431544)) b!2678616))

(assert (= (and b!2678616 c!431545) b!2678612))

(assert (= (and b!2678616 (not c!431545)) b!2678605))

(assert (= (and b!2678605 (not res!1126159)) b!2678610))

(assert (= (and b!2678610 res!1126154) b!2678611))

(assert (= (and b!2678611 res!1126160) b!2678615))

(assert (= (and b!2678615 res!1126156) b!2678614))

(assert (= (and b!2678610 (not res!1126158)) b!2678609))

(assert (= (and b!2678609 res!1126153) b!2678608))

(assert (= (and b!2678608 (not res!1126155)) b!2678607))

(assert (= (and b!2678607 (not res!1126157)) b!2678606))

(assert (= (or b!2678617 b!2678608 b!2678611) bm!172726))

(declare-fun m!3046109 () Bool)

(assert (=> b!2678604 m!3046109))

(assert (=> b!2678613 m!3045771))

(declare-fun m!3046111 () Bool)

(assert (=> b!2678613 m!3046111))

(assert (=> b!2678613 m!3046111))

(declare-fun m!3046113 () Bool)

(assert (=> b!2678613 m!3046113))

(assert (=> b!2678613 m!3045771))

(declare-fun m!3046115 () Bool)

(assert (=> b!2678613 m!3046115))

(assert (=> b!2678613 m!3046113))

(assert (=> b!2678613 m!3046115))

(declare-fun m!3046117 () Bool)

(assert (=> b!2678613 m!3046117))

(assert (=> b!2678606 m!3045771))

(assert (=> b!2678606 m!3046111))

(assert (=> b!2678614 m!3045771))

(assert (=> b!2678614 m!3046111))

(assert (=> b!2678607 m!3045771))

(assert (=> b!2678607 m!3046115))

(assert (=> b!2678607 m!3046115))

(declare-fun m!3046119 () Bool)

(assert (=> b!2678607 m!3046119))

(assert (=> bm!172726 m!3045771))

(declare-fun m!3046121 () Bool)

(assert (=> bm!172726 m!3046121))

(assert (=> b!2678615 m!3045771))

(assert (=> b!2678615 m!3046115))

(assert (=> b!2678615 m!3046115))

(assert (=> b!2678615 m!3046119))

(assert (=> d!765963 m!3045771))

(assert (=> d!765963 m!3046121))

(declare-fun m!3046123 () Bool)

(assert (=> d!765963 m!3046123))

(assert (=> b!2678280 d!765963))

(declare-fun b!2678664 () Bool)

(declare-fun e!1688500 () Bool)

(declare-fun lt!943420 () Option!6104)

(assert (=> b!2678664 (= e!1688500 (= (tag!5211 (get!9688 lt!943420)) (tag!5211 (rule!7119 lt!943309))))))

(declare-fun b!2678665 () Bool)

(declare-fun e!1688502 () Option!6104)

(declare-fun e!1688503 () Option!6104)

(assert (=> b!2678665 (= e!1688502 e!1688503)))

(declare-fun c!431559 () Bool)

(assert (=> b!2678665 (= c!431559 (and ((_ is Cons!30819) rules!1712) (not (= (tag!5211 (h!36239 rules!1712)) (tag!5211 (rule!7119 lt!943309))))))))

(declare-fun b!2678666 () Bool)

(declare-fun e!1688501 () Bool)

(assert (=> b!2678666 (= e!1688501 e!1688500)))

(declare-fun res!1126184 () Bool)

(assert (=> b!2678666 (=> (not res!1126184) (not e!1688500))))

(assert (=> b!2678666 (= res!1126184 (contains!5935 rules!1712 (get!9688 lt!943420)))))

(declare-fun d!765983 () Bool)

(assert (=> d!765983 e!1688501))

(declare-fun res!1126183 () Bool)

(assert (=> d!765983 (=> res!1126183 e!1688501)))

(declare-fun isEmpty!17657 (Option!6104) Bool)

(assert (=> d!765983 (= res!1126183 (isEmpty!17657 lt!943420))))

(assert (=> d!765983 (= lt!943420 e!1688502)))

(declare-fun c!431560 () Bool)

(assert (=> d!765983 (= c!431560 (and ((_ is Cons!30819) rules!1712) (= (tag!5211 (h!36239 rules!1712)) (tag!5211 (rule!7119 lt!943309)))))))

(assert (=> d!765983 (rulesInvariant!3806 thiss!14116 rules!1712)))

(assert (=> d!765983 (= (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309))) lt!943420)))

(declare-fun b!2678667 () Bool)

(assert (=> b!2678667 (= e!1688503 None!6103)))

(declare-fun b!2678668 () Bool)

(declare-fun lt!943422 () Unit!45039)

(declare-fun lt!943421 () Unit!45039)

(assert (=> b!2678668 (= lt!943422 lt!943421)))

(assert (=> b!2678668 (rulesInvariant!3806 thiss!14116 (t!224144 rules!1712))))

(declare-fun lemmaInvariantOnRulesThenOnTail!326 (LexerInterface!4306 Rule!9218 List!30919) Unit!45039)

(assert (=> b!2678668 (= lt!943421 (lemmaInvariantOnRulesThenOnTail!326 thiss!14116 (h!36239 rules!1712) (t!224144 rules!1712)))))

(assert (=> b!2678668 (= e!1688503 (getRuleFromTag!839 thiss!14116 (t!224144 rules!1712) (tag!5211 (rule!7119 lt!943309))))))

(declare-fun b!2678669 () Bool)

(assert (=> b!2678669 (= e!1688502 (Some!6103 (h!36239 rules!1712)))))

(assert (= (and d!765983 c!431560) b!2678669))

(assert (= (and d!765983 (not c!431560)) b!2678665))

(assert (= (and b!2678665 c!431559) b!2678668))

(assert (= (and b!2678665 (not c!431559)) b!2678667))

(assert (= (and d!765983 (not res!1126183)) b!2678666))

(assert (= (and b!2678666 res!1126184) b!2678664))

(declare-fun m!3046151 () Bool)

(assert (=> b!2678664 m!3046151))

(assert (=> b!2678666 m!3046151))

(assert (=> b!2678666 m!3046151))

(declare-fun m!3046153 () Bool)

(assert (=> b!2678666 m!3046153))

(declare-fun m!3046155 () Bool)

(assert (=> d!765983 m!3046155))

(assert (=> d!765983 m!3045237))

(declare-fun m!3046157 () Bool)

(assert (=> b!2678668 m!3046157))

(declare-fun m!3046159 () Bool)

(assert (=> b!2678668 m!3046159))

(declare-fun m!3046161 () Bool)

(assert (=> b!2678668 m!3046161))

(assert (=> b!2678280 d!765983))

(declare-fun d!765991 () Bool)

(assert (=> d!765991 (= (list!11649 (charsOf!2970 lt!943309)) (list!11653 (c!431444 (charsOf!2970 lt!943309))))))

(declare-fun bs!479998 () Bool)

(assert (= bs!479998 d!765991))

(declare-fun m!3046163 () Bool)

(assert (=> bs!479998 m!3046163))

(assert (=> b!2678280 d!765991))

(declare-fun d!765993 () Bool)

(assert (=> d!765993 (= (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309)))) (v!32676 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309)))))))

(assert (=> b!2678280 d!765993))

(declare-fun b!2678774 () Bool)

(declare-fun res!1126246 () Bool)

(declare-fun e!1688570 () Bool)

(assert (=> b!2678774 (=> (not res!1126246) (not e!1688570))))

(declare-fun lt!943475 () Option!6102)

(assert (=> b!2678774 (= res!1126246 (= (value!151811 (_1!17680 (get!9687 lt!943475))) (apply!7402 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943475)))) (seqFromList!3209 (originalCharacters!5475 (_1!17680 (get!9687 lt!943475)))))))))

(declare-fun b!2678775 () Bool)

(declare-fun e!1688567 () Bool)

(declare-datatypes ((tuple2!30284 0))(
  ( (tuple2!30285 (_1!17684 List!30918) (_2!17684 List!30918)) )
))
(declare-fun findLongestMatchInner!778 (Regex!7853 List!30918 Int List!30918 List!30918 Int) tuple2!30284)

(assert (=> b!2678775 (= e!1688567 (matchR!3632 (regex!4709 (h!36239 rules!1712)) (_1!17684 (findLongestMatchInner!778 (regex!4709 (h!36239 rules!1712)) Nil!30818 (size!23824 Nil!30818) (++!7525 lt!943080 lt!943082) (++!7525 lt!943080 lt!943082) (size!23824 (++!7525 lt!943080 lt!943082))))))))

(declare-fun b!2678776 () Bool)

(declare-fun e!1688568 () Option!6102)

(assert (=> b!2678776 (= e!1688568 None!6101)))

(declare-fun b!2678777 () Bool)

(declare-fun res!1126250 () Bool)

(assert (=> b!2678777 (=> (not res!1126250) (not e!1688570))))

(assert (=> b!2678777 (= res!1126250 (= (rule!7119 (_1!17680 (get!9687 lt!943475))) (h!36239 rules!1712)))))

(declare-fun b!2678778 () Bool)

(declare-fun e!1688569 () Bool)

(assert (=> b!2678778 (= e!1688569 e!1688570)))

(declare-fun res!1126247 () Bool)

(assert (=> b!2678778 (=> (not res!1126247) (not e!1688570))))

(assert (=> b!2678778 (= res!1126247 (matchR!3632 (regex!4709 (h!36239 rules!1712)) (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943475))))))))

(declare-fun b!2678780 () Bool)

(assert (=> b!2678780 (= e!1688570 (= (size!23819 (_1!17680 (get!9687 lt!943475))) (size!23824 (originalCharacters!5475 (_1!17680 (get!9687 lt!943475))))))))

(declare-fun b!2678781 () Bool)

(declare-fun res!1126249 () Bool)

(assert (=> b!2678781 (=> (not res!1126249) (not e!1688570))))

(assert (=> b!2678781 (= res!1126249 (= (++!7525 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943475)))) (_2!17680 (get!9687 lt!943475))) (++!7525 lt!943080 lt!943082)))))

(declare-fun b!2678782 () Bool)

(declare-fun res!1126252 () Bool)

(assert (=> b!2678782 (=> (not res!1126252) (not e!1688570))))

(assert (=> b!2678782 (= res!1126252 (< (size!23824 (_2!17680 (get!9687 lt!943475))) (size!23824 (++!7525 lt!943080 lt!943082))))))

(declare-fun d!765995 () Bool)

(assert (=> d!765995 e!1688569))

(declare-fun res!1126251 () Bool)

(assert (=> d!765995 (=> res!1126251 e!1688569)))

(assert (=> d!765995 (= res!1126251 (isEmpty!17655 lt!943475))))

(assert (=> d!765995 (= lt!943475 e!1688568)))

(declare-fun c!431586 () Bool)

(declare-fun lt!943477 () tuple2!30284)

(assert (=> d!765995 (= c!431586 (isEmpty!17652 (_1!17684 lt!943477)))))

(declare-fun findLongestMatch!703 (Regex!7853 List!30918) tuple2!30284)

(assert (=> d!765995 (= lt!943477 (findLongestMatch!703 (regex!4709 (h!36239 rules!1712)) (++!7525 lt!943080 lt!943082)))))

(declare-fun ruleValid!1556 (LexerInterface!4306 Rule!9218) Bool)

(assert (=> d!765995 (ruleValid!1556 thiss!14116 (h!36239 rules!1712))))

(assert (=> d!765995 (= (maxPrefixOneRule!1490 thiss!14116 (h!36239 rules!1712) (++!7525 lt!943080 lt!943082)) lt!943475)))

(declare-fun b!2678779 () Bool)

(assert (=> b!2678779 (= e!1688568 (Some!6101 (tuple2!30277 (Token!8889 (apply!7402 (transformation!4709 (h!36239 rules!1712)) (seqFromList!3209 (_1!17684 lt!943477))) (h!36239 rules!1712) (size!23825 (seqFromList!3209 (_1!17684 lt!943477))) (_1!17684 lt!943477)) (_2!17684 lt!943477))))))

(declare-fun lt!943473 () Unit!45039)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!751 (Regex!7853 List!30918) Unit!45039)

(assert (=> b!2678779 (= lt!943473 (longestMatchIsAcceptedByMatchOrIsEmpty!751 (regex!4709 (h!36239 rules!1712)) (++!7525 lt!943080 lt!943082)))))

(declare-fun res!1126248 () Bool)

(assert (=> b!2678779 (= res!1126248 (isEmpty!17652 (_1!17684 (findLongestMatchInner!778 (regex!4709 (h!36239 rules!1712)) Nil!30818 (size!23824 Nil!30818) (++!7525 lt!943080 lt!943082) (++!7525 lt!943080 lt!943082) (size!23824 (++!7525 lt!943080 lt!943082))))))))

(assert (=> b!2678779 (=> res!1126248 e!1688567)))

(assert (=> b!2678779 e!1688567))

(declare-fun lt!943476 () Unit!45039)

(assert (=> b!2678779 (= lt!943476 lt!943473)))

(declare-fun lt!943474 () Unit!45039)

(declare-fun lemmaSemiInverse!1125 (TokenValueInjection!9302 BalanceConc!18910) Unit!45039)

(assert (=> b!2678779 (= lt!943474 (lemmaSemiInverse!1125 (transformation!4709 (h!36239 rules!1712)) (seqFromList!3209 (_1!17684 lt!943477))))))

(assert (= (and d!765995 c!431586) b!2678776))

(assert (= (and d!765995 (not c!431586)) b!2678779))

(assert (= (and b!2678779 (not res!1126248)) b!2678775))

(assert (= (and d!765995 (not res!1126251)) b!2678778))

(assert (= (and b!2678778 res!1126247) b!2678781))

(assert (= (and b!2678781 res!1126249) b!2678782))

(assert (= (and b!2678782 res!1126252) b!2678777))

(assert (= (and b!2678777 res!1126250) b!2678774))

(assert (= (and b!2678774 res!1126246) b!2678780))

(declare-fun m!3046357 () Bool)

(assert (=> b!2678775 m!3046357))

(assert (=> b!2678775 m!3045259))

(assert (=> b!2678775 m!3045889))

(assert (=> b!2678775 m!3046357))

(assert (=> b!2678775 m!3045259))

(assert (=> b!2678775 m!3045259))

(assert (=> b!2678775 m!3045889))

(declare-fun m!3046359 () Bool)

(assert (=> b!2678775 m!3046359))

(declare-fun m!3046361 () Bool)

(assert (=> b!2678775 m!3046361))

(declare-fun m!3046363 () Bool)

(assert (=> b!2678774 m!3046363))

(declare-fun m!3046365 () Bool)

(assert (=> b!2678774 m!3046365))

(assert (=> b!2678774 m!3046365))

(declare-fun m!3046367 () Bool)

(assert (=> b!2678774 m!3046367))

(assert (=> b!2678782 m!3046363))

(declare-fun m!3046369 () Bool)

(assert (=> b!2678782 m!3046369))

(assert (=> b!2678782 m!3045259))

(assert (=> b!2678782 m!3045889))

(assert (=> b!2678780 m!3046363))

(declare-fun m!3046371 () Bool)

(assert (=> b!2678780 m!3046371))

(declare-fun m!3046373 () Bool)

(assert (=> d!765995 m!3046373))

(declare-fun m!3046375 () Bool)

(assert (=> d!765995 m!3046375))

(assert (=> d!765995 m!3045259))

(declare-fun m!3046377 () Bool)

(assert (=> d!765995 m!3046377))

(declare-fun m!3046379 () Bool)

(assert (=> d!765995 m!3046379))

(declare-fun m!3046381 () Bool)

(assert (=> b!2678779 m!3046381))

(declare-fun m!3046383 () Bool)

(assert (=> b!2678779 m!3046383))

(assert (=> b!2678779 m!3045259))

(assert (=> b!2678779 m!3045889))

(assert (=> b!2678779 m!3046381))

(declare-fun m!3046385 () Bool)

(assert (=> b!2678779 m!3046385))

(assert (=> b!2678779 m!3046381))

(assert (=> b!2678779 m!3046381))

(declare-fun m!3046387 () Bool)

(assert (=> b!2678779 m!3046387))

(assert (=> b!2678779 m!3046357))

(assert (=> b!2678779 m!3046357))

(assert (=> b!2678779 m!3045259))

(assert (=> b!2678779 m!3045259))

(assert (=> b!2678779 m!3045889))

(assert (=> b!2678779 m!3046359))

(assert (=> b!2678779 m!3045259))

(declare-fun m!3046389 () Bool)

(assert (=> b!2678779 m!3046389))

(declare-fun m!3046391 () Bool)

(assert (=> b!2678779 m!3046391))

(assert (=> b!2678777 m!3046363))

(assert (=> b!2678781 m!3046363))

(declare-fun m!3046393 () Bool)

(assert (=> b!2678781 m!3046393))

(assert (=> b!2678781 m!3046393))

(declare-fun m!3046395 () Bool)

(assert (=> b!2678781 m!3046395))

(assert (=> b!2678781 m!3046395))

(declare-fun m!3046397 () Bool)

(assert (=> b!2678781 m!3046397))

(assert (=> b!2678778 m!3046363))

(assert (=> b!2678778 m!3046393))

(assert (=> b!2678778 m!3046393))

(assert (=> b!2678778 m!3046395))

(assert (=> b!2678778 m!3046395))

(declare-fun m!3046399 () Bool)

(assert (=> b!2678778 m!3046399))

(assert (=> bm!172721 d!765995))

(declare-fun d!766055 () Bool)

(assert (=> d!766055 (= (list!11649 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335)))) (list!11653 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335))))))))

(declare-fun bs!480008 () Bool)

(assert (= bs!480008 d!766055))

(declare-fun m!3046401 () Bool)

(assert (=> bs!480008 m!3046401))

(assert (=> b!2678183 d!766055))

(declare-fun d!766057 () Bool)

(assert (=> d!766057 (= (list!11649 call!172723) (list!11653 (c!431444 call!172723)))))

(declare-fun bs!480009 () Bool)

(assert (= bs!480009 d!766057))

(declare-fun m!3046403 () Bool)

(assert (=> bs!480009 m!3046403))

(assert (=> b!2678397 d!766057))

(declare-fun d!766059 () Bool)

(declare-fun res!1126253 () Bool)

(declare-fun e!1688573 () Bool)

(assert (=> d!766059 (=> res!1126253 e!1688573)))

(assert (=> d!766059 (= res!1126253 (not ((_ is Cons!30819) (t!224144 rules!1712))))))

(assert (=> d!766059 (= (sepAndNonSepRulesDisjointChars!1282 rules!1712 (t!224144 rules!1712)) e!1688573)))

(declare-fun b!2678787 () Bool)

(declare-fun e!1688574 () Bool)

(assert (=> b!2678787 (= e!1688573 e!1688574)))

(declare-fun res!1126254 () Bool)

(assert (=> b!2678787 (=> (not res!1126254) (not e!1688574))))

(assert (=> b!2678787 (= res!1126254 (ruleDisjointCharsFromAllFromOtherType!561 (h!36239 (t!224144 rules!1712)) rules!1712))))

(declare-fun b!2678788 () Bool)

(assert (=> b!2678788 (= e!1688574 (sepAndNonSepRulesDisjointChars!1282 rules!1712 (t!224144 (t!224144 rules!1712))))))

(assert (= (and d!766059 (not res!1126253)) b!2678787))

(assert (= (and b!2678787 res!1126254) b!2678788))

(declare-fun m!3046405 () Bool)

(assert (=> b!2678787 m!3046405))

(declare-fun m!3046407 () Bool)

(assert (=> b!2678788 m!3046407))

(assert (=> b!2678016 d!766059))

(declare-fun d!766061 () Bool)

(assert (=> d!766061 true))

(declare-fun order!17031 () Int)

(declare-fun lambda!100065 () Int)

(declare-fun dynLambda!13418 (Int Int) Int)

(assert (=> d!766061 (< (dynLambda!13408 order!17019 (toValue!6659 (transformation!4709 (h!36239 rules!1712)))) (dynLambda!13418 order!17031 lambda!100065))))

(declare-fun Forall2!797 (Int) Bool)

(assert (=> d!766061 (= (equivClasses!1855 (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toValue!6659 (transformation!4709 (h!36239 rules!1712)))) (Forall2!797 lambda!100065))))

(declare-fun bs!480015 () Bool)

(assert (= bs!480015 d!766061))

(declare-fun m!3046451 () Bool)

(assert (=> bs!480015 m!3046451))

(assert (=> b!2678188 d!766061))

(declare-fun d!766079 () Bool)

(declare-fun c!431597 () Bool)

(assert (=> d!766079 (= c!431597 ((_ is Nil!30818) lt!943325))))

(declare-fun e!1688588 () (InoxSet C!15864))

(assert (=> d!766079 (= (content!4387 lt!943325) e!1688588)))

(declare-fun b!2678812 () Bool)

(assert (=> b!2678812 (= e!1688588 ((as const (Array C!15864 Bool)) false))))

(declare-fun b!2678813 () Bool)

(assert (=> b!2678813 (= e!1688588 ((_ map or) (store ((as const (Array C!15864 Bool)) false) (h!36238 lt!943325) true) (content!4387 (t!224143 lt!943325))))))

(assert (= (and d!766079 c!431597) b!2678812))

(assert (= (and d!766079 (not c!431597)) b!2678813))

(declare-fun m!3046455 () Bool)

(assert (=> b!2678813 m!3046455))

(declare-fun m!3046457 () Bool)

(assert (=> b!2678813 m!3046457))

(assert (=> d!765887 d!766079))

(declare-fun d!766081 () Bool)

(declare-fun c!431598 () Bool)

(assert (=> d!766081 (= c!431598 ((_ is Nil!30818) lt!943080))))

(declare-fun e!1688589 () (InoxSet C!15864))

(assert (=> d!766081 (= (content!4387 lt!943080) e!1688589)))

(declare-fun b!2678814 () Bool)

(assert (=> b!2678814 (= e!1688589 ((as const (Array C!15864 Bool)) false))))

(declare-fun b!2678815 () Bool)

(assert (=> b!2678815 (= e!1688589 ((_ map or) (store ((as const (Array C!15864 Bool)) false) (h!36238 lt!943080) true) (content!4387 (t!224143 lt!943080))))))

(assert (= (and d!766081 c!431598) b!2678814))

(assert (= (and d!766081 (not c!431598)) b!2678815))

(declare-fun m!3046469 () Bool)

(assert (=> b!2678815 m!3046469))

(declare-fun m!3046473 () Bool)

(assert (=> b!2678815 m!3046473))

(assert (=> d!765887 d!766081))

(declare-fun d!766083 () Bool)

(declare-fun c!431599 () Bool)

(assert (=> d!766083 (= c!431599 ((_ is Nil!30818) lt!943082))))

(declare-fun e!1688590 () (InoxSet C!15864))

(assert (=> d!766083 (= (content!4387 lt!943082) e!1688590)))

(declare-fun b!2678816 () Bool)

(assert (=> b!2678816 (= e!1688590 ((as const (Array C!15864 Bool)) false))))

(declare-fun b!2678817 () Bool)

(assert (=> b!2678817 (= e!1688590 ((_ map or) (store ((as const (Array C!15864 Bool)) false) (h!36238 lt!943082) true) (content!4387 (t!224143 lt!943082))))))

(assert (= (and d!766083 c!431599) b!2678816))

(assert (= (and d!766083 (not c!431599)) b!2678817))

(declare-fun m!3046479 () Bool)

(assert (=> b!2678817 m!3046479))

(declare-fun m!3046483 () Bool)

(assert (=> b!2678817 m!3046483))

(assert (=> d!765887 d!766083))

(declare-fun d!766085 () Bool)

(assert (=> d!766085 (= (list!11649 (ite c!431520 call!172720 e!1688337)) (list!11653 (c!431444 (ite c!431520 call!172720 e!1688337))))))

(declare-fun bs!480020 () Bool)

(assert (= bs!480020 d!766085))

(declare-fun m!3046491 () Bool)

(assert (=> bs!480020 m!3046491))

(assert (=> bm!172718 d!766085))

(declare-fun d!766087 () Bool)

(declare-fun lt!943508 () Int)

(assert (=> d!766087 (>= lt!943508 0)))

(declare-fun e!1688599 () Int)

(assert (=> d!766087 (= lt!943508 e!1688599)))

(declare-fun c!431604 () Bool)

(assert (=> d!766087 (= c!431604 ((_ is Nil!30818) (_2!17680 (get!9687 lt!943362))))))

(assert (=> d!766087 (= (size!23824 (_2!17680 (get!9687 lt!943362))) lt!943508)))

(declare-fun b!2678836 () Bool)

(assert (=> b!2678836 (= e!1688599 0)))

(declare-fun b!2678837 () Bool)

(assert (=> b!2678837 (= e!1688599 (+ 1 (size!23824 (t!224143 (_2!17680 (get!9687 lt!943362))))))))

(assert (= (and d!766087 c!431604) b!2678836))

(assert (= (and d!766087 (not c!431604)) b!2678837))

(declare-fun m!3046517 () Bool)

(assert (=> b!2678837 m!3046517))

(assert (=> b!2678422 d!766087))

(assert (=> b!2678422 d!765957))

(declare-fun d!766097 () Bool)

(declare-fun lt!943509 () Int)

(assert (=> d!766097 (>= lt!943509 0)))

(declare-fun e!1688600 () Int)

(assert (=> d!766097 (= lt!943509 e!1688600)))

(declare-fun c!431605 () Bool)

(assert (=> d!766097 (= c!431605 ((_ is Nil!30818) (++!7525 lt!943080 lt!943082)))))

(assert (=> d!766097 (= (size!23824 (++!7525 lt!943080 lt!943082)) lt!943509)))

(declare-fun b!2678838 () Bool)

(assert (=> b!2678838 (= e!1688600 0)))

(declare-fun b!2678839 () Bool)

(assert (=> b!2678839 (= e!1688600 (+ 1 (size!23824 (t!224143 (++!7525 lt!943080 lt!943082)))))))

(assert (= (and d!766097 c!431605) b!2678838))

(assert (= (and d!766097 (not c!431605)) b!2678839))

(declare-fun m!3046519 () Bool)

(assert (=> b!2678839 m!3046519))

(assert (=> b!2678422 d!766097))

(declare-fun d!766099 () Bool)

(assert (=> d!766099 (= (inv!15 (value!151811 separatorToken!152)) (= (charsToBigInt!0 (text!34966 (value!151811 separatorToken!152)) 0) (value!151806 (value!151811 separatorToken!152))))))

(declare-fun bs!480022 () Bool)

(assert (= bs!480022 d!766099))

(declare-fun m!3046521 () Bool)

(assert (=> bs!480022 m!3046521))

(assert (=> b!2678000 d!766099))

(declare-fun d!766101 () Bool)

(assert (=> d!766101 (= (isEmpty!17652 (originalCharacters!5475 (h!36240 l!4335))) ((_ is Nil!30818) (originalCharacters!5475 (h!36240 l!4335))))))

(assert (=> d!765827 d!766101))

(declare-fun bs!480023 () Bool)

(declare-fun d!766103 () Bool)

(assert (= bs!480023 (and d!766103 d!766061)))

(declare-fun lambda!100067 () Int)

(assert (=> bs!480023 (= (= (toValue!6659 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toValue!6659 (transformation!4709 (h!36239 rules!1712)))) (= lambda!100067 lambda!100065))))

(assert (=> d!766103 true))

(assert (=> d!766103 (< (dynLambda!13408 order!17019 (toValue!6659 (transformation!4709 (rule!7119 (h!36240 l!4335))))) (dynLambda!13418 order!17031 lambda!100067))))

(assert (=> d!766103 (= (equivClasses!1855 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toValue!6659 (transformation!4709 (rule!7119 (h!36240 l!4335))))) (Forall2!797 lambda!100067))))

(declare-fun bs!480024 () Bool)

(assert (= bs!480024 d!766103))

(declare-fun m!3046541 () Bool)

(assert (=> bs!480024 m!3046541))

(assert (=> b!2678431 d!766103))

(declare-fun b!2678840 () Bool)

(declare-fun e!1688601 () List!30918)

(assert (=> b!2678840 (= e!1688601 (_2!17680 (get!9687 lt!943362)))))

(declare-fun d!766105 () Bool)

(declare-fun e!1688602 () Bool)

(assert (=> d!766105 e!1688602))

(declare-fun res!1126267 () Bool)

(assert (=> d!766105 (=> (not res!1126267) (not e!1688602))))

(declare-fun lt!943510 () List!30918)

(assert (=> d!766105 (= res!1126267 (= (content!4387 lt!943510) ((_ map or) (content!4387 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362))))) (content!4387 (_2!17680 (get!9687 lt!943362))))))))

(assert (=> d!766105 (= lt!943510 e!1688601)))

(declare-fun c!431606 () Bool)

(assert (=> d!766105 (= c!431606 ((_ is Nil!30818) (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362))))))))

(assert (=> d!766105 (= (++!7525 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362)))) (_2!17680 (get!9687 lt!943362))) lt!943510)))

(declare-fun b!2678843 () Bool)

(assert (=> b!2678843 (= e!1688602 (or (not (= (_2!17680 (get!9687 lt!943362)) Nil!30818)) (= lt!943510 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362)))))))))

(declare-fun b!2678841 () Bool)

(assert (=> b!2678841 (= e!1688601 (Cons!30818 (h!36238 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362))))) (++!7525 (t!224143 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362))))) (_2!17680 (get!9687 lt!943362)))))))

(declare-fun b!2678842 () Bool)

(declare-fun res!1126268 () Bool)

(assert (=> b!2678842 (=> (not res!1126268) (not e!1688602))))

(assert (=> b!2678842 (= res!1126268 (= (size!23824 lt!943510) (+ (size!23824 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362))))) (size!23824 (_2!17680 (get!9687 lt!943362))))))))

(assert (= (and d!766105 c!431606) b!2678840))

(assert (= (and d!766105 (not c!431606)) b!2678841))

(assert (= (and d!766105 res!1126267) b!2678842))

(assert (= (and b!2678842 res!1126268) b!2678843))

(declare-fun m!3046557 () Bool)

(assert (=> d!766105 m!3046557))

(assert (=> d!766105 m!3045907))

(declare-fun m!3046559 () Bool)

(assert (=> d!766105 m!3046559))

(declare-fun m!3046561 () Bool)

(assert (=> d!766105 m!3046561))

(declare-fun m!3046563 () Bool)

(assert (=> b!2678841 m!3046563))

(declare-fun m!3046565 () Bool)

(assert (=> b!2678842 m!3046565))

(assert (=> b!2678842 m!3045907))

(declare-fun m!3046567 () Bool)

(assert (=> b!2678842 m!3046567))

(assert (=> b!2678842 m!3045887))

(assert (=> b!2678424 d!766105))

(declare-fun d!766109 () Bool)

(assert (=> d!766109 (= (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362)))) (list!11653 (c!431444 (charsOf!2970 (_1!17680 (get!9687 lt!943362))))))))

(declare-fun bs!480025 () Bool)

(assert (= bs!480025 d!766109))

(declare-fun m!3046569 () Bool)

(assert (=> bs!480025 m!3046569))

(assert (=> b!2678424 d!766109))

(declare-fun d!766111 () Bool)

(declare-fun lt!943512 () BalanceConc!18910)

(assert (=> d!766111 (= (list!11649 lt!943512) (originalCharacters!5475 (_1!17680 (get!9687 lt!943362))))))

(assert (=> d!766111 (= lt!943512 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362))))) (value!151811 (_1!17680 (get!9687 lt!943362)))))))

(assert (=> d!766111 (= (charsOf!2970 (_1!17680 (get!9687 lt!943362))) lt!943512)))

(declare-fun b_lambda!81825 () Bool)

(assert (=> (not b_lambda!81825) (not d!766111)))

(declare-fun tb!150425 () Bool)

(declare-fun t!224250 () Bool)

(assert (=> (and b!2677966 (= (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toChars!6518 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))) t!224250) tb!150425))

(declare-fun b!2678845 () Bool)

(declare-fun e!1688604 () Bool)

(declare-fun tp!846904 () Bool)

(assert (=> b!2678845 (= e!1688604 (and (inv!41845 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362))))) (value!151811 (_1!17680 (get!9687 lt!943362)))))) tp!846904))))

(declare-fun result!185784 () Bool)

(assert (=> tb!150425 (= result!185784 (and (inv!41846 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362))))) (value!151811 (_1!17680 (get!9687 lt!943362))))) e!1688604))))

(assert (= tb!150425 b!2678845))

(declare-fun m!3046579 () Bool)

(assert (=> b!2678845 m!3046579))

(declare-fun m!3046581 () Bool)

(assert (=> tb!150425 m!3046581))

(assert (=> d!766111 t!224250))

(declare-fun b_and!198243 () Bool)

(assert (= b_and!198207 (and (=> t!224250 result!185784) b_and!198243)))

(declare-fun tb!150429 () Bool)

(declare-fun t!224254 () Bool)

(assert (=> (and b!2678454 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toChars!6518 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))) t!224254) tb!150429))

(declare-fun result!185788 () Bool)

(assert (= result!185788 result!185784))

(assert (=> d!766111 t!224254))

(declare-fun b_and!198245 () Bool)

(assert (= b_and!198211 (and (=> t!224254 result!185788) b_and!198245)))

(declare-fun t!224256 () Bool)

(declare-fun tb!150431 () Bool)

(assert (=> (and b!2677967 (= (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toChars!6518 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))) t!224256) tb!150431))

(declare-fun result!185790 () Bool)

(assert (= result!185790 result!185784))

(assert (=> d!766111 t!224256))

(declare-fun b_and!198247 () Bool)

(assert (= b_and!198203 (and (=> t!224256 result!185790) b_and!198247)))

(declare-fun tb!150433 () Bool)

(declare-fun t!224258 () Bool)

(assert (=> (and b!2677970 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toChars!6518 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))) t!224258) tb!150433))

(declare-fun result!185792 () Bool)

(assert (= result!185792 result!185784))

(assert (=> d!766111 t!224258))

(declare-fun b_and!198249 () Bool)

(assert (= b_and!198209 (and (=> t!224258 result!185792) b_and!198249)))

(declare-fun t!224260 () Bool)

(declare-fun tb!150435 () Bool)

(assert (=> (and b!2678471 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (toChars!6518 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))) t!224260) tb!150435))

(declare-fun result!185794 () Bool)

(assert (= result!185794 result!185784))

(assert (=> d!766111 t!224260))

(declare-fun b_and!198251 () Bool)

(assert (= b_and!198205 (and (=> t!224260 result!185794) b_and!198251)))

(declare-fun m!3046589 () Bool)

(assert (=> d!766111 m!3046589))

(declare-fun m!3046591 () Bool)

(assert (=> d!766111 m!3046591))

(assert (=> b!2678424 d!766111))

(assert (=> b!2678424 d!765957))

(declare-fun d!766119 () Bool)

(declare-fun c!431613 () Bool)

(assert (=> d!766119 (= c!431613 ((_ is Node!9648) (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152)))))))

(declare-fun e!1688619 () Bool)

(assert (=> d!766119 (= (inv!41845 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152)))) e!1688619)))

(declare-fun b!2678867 () Bool)

(declare-fun inv!41847 (Conc!9648) Bool)

(assert (=> b!2678867 (= e!1688619 (inv!41847 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152)))))))

(declare-fun b!2678868 () Bool)

(declare-fun e!1688620 () Bool)

(assert (=> b!2678868 (= e!1688619 e!1688620)))

(declare-fun res!1126275 () Bool)

(assert (=> b!2678868 (= res!1126275 (not ((_ is Leaf!14743) (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152))))))))

(assert (=> b!2678868 (=> res!1126275 e!1688620)))

(declare-fun b!2678869 () Bool)

(declare-fun inv!41848 (Conc!9648) Bool)

(assert (=> b!2678869 (= e!1688620 (inv!41848 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152)))))))

(assert (= (and d!766119 c!431613) b!2678867))

(assert (= (and d!766119 (not c!431613)) b!2678868))

(assert (= (and b!2678868 (not res!1126275)) b!2678869))

(declare-fun m!3046613 () Bool)

(assert (=> b!2678867 m!3046613))

(declare-fun m!3046615 () Bool)

(assert (=> b!2678869 m!3046615))

(assert (=> b!2678152 d!766119))

(declare-fun d!766127 () Bool)

(assert (=> d!766127 (= (list!11649 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152))) (list!11653 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152)))))))

(declare-fun bs!480033 () Bool)

(assert (= bs!480033 d!766127))

(declare-fun m!3046617 () Bool)

(assert (=> bs!480033 m!3046617))

(assert (=> b!2678140 d!766127))

(declare-fun d!766129 () Bool)

(declare-fun isBalanced!2927 (Conc!9648) Bool)

(assert (=> d!766129 (= (inv!41846 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335)))) (isBalanced!2927 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335))))))))

(declare-fun bs!480035 () Bool)

(assert (= bs!480035 d!766129))

(declare-fun m!3046631 () Bool)

(assert (=> bs!480035 m!3046631))

(assert (=> tb!150349 d!766129))

(declare-fun d!766135 () Bool)

(assert (=> d!766135 (= (list!11649 lt!943319) (list!11653 (c!431444 lt!943319)))))

(declare-fun bs!480036 () Bool)

(assert (= bs!480036 d!766135))

(declare-fun m!3046633 () Bool)

(assert (=> bs!480036 m!3046633))

(assert (=> d!765881 d!766135))

(declare-fun d!766137 () Bool)

(declare-fun lt!943521 () BalanceConc!18910)

(assert (=> d!766137 (= (list!11649 lt!943521) (printList!1196 thiss!14116 (list!11652 (singletonSeq!2106 (h!36240 (t!224145 l!4335))))))))

(assert (=> d!766137 (= lt!943521 (printTailRec!1157 thiss!14116 (singletonSeq!2106 (h!36240 (t!224145 l!4335))) 0 (BalanceConc!18911 Empty!9648)))))

(assert (=> d!766137 (= (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 (t!224145 l!4335)))) lt!943521)))

(declare-fun bs!480037 () Bool)

(assert (= bs!480037 d!766137))

(declare-fun m!3046639 () Bool)

(assert (=> bs!480037 m!3046639))

(assert (=> bs!480037 m!3045865))

(declare-fun m!3046641 () Bool)

(assert (=> bs!480037 m!3046641))

(assert (=> bs!480037 m!3046641))

(declare-fun m!3046643 () Bool)

(assert (=> bs!480037 m!3046643))

(assert (=> bs!480037 m!3045865))

(assert (=> bs!480037 m!3045869))

(assert (=> b!2678394 d!766137))

(declare-fun d!766141 () Bool)

(declare-fun e!1688622 () Bool)

(assert (=> d!766141 e!1688622))

(declare-fun res!1126276 () Bool)

(assert (=> d!766141 (=> (not res!1126276) (not e!1688622))))

(declare-fun lt!943522 () BalanceConc!18912)

(assert (=> d!766141 (= res!1126276 (= (list!11652 lt!943522) (Cons!30820 (h!36240 (t!224145 l!4335)) Nil!30820)))))

(assert (=> d!766141 (= lt!943522 (singleton!934 (h!36240 (t!224145 l!4335))))))

(assert (=> d!766141 (= (singletonSeq!2106 (h!36240 (t!224145 l!4335))) lt!943522)))

(declare-fun b!2678871 () Bool)

(assert (=> b!2678871 (= e!1688622 (isBalanced!2925 (c!431446 lt!943522)))))

(assert (= (and d!766141 res!1126276) b!2678871))

(declare-fun m!3046645 () Bool)

(assert (=> d!766141 m!3046645))

(declare-fun m!3046647 () Bool)

(assert (=> d!766141 m!3046647))

(declare-fun m!3046649 () Bool)

(assert (=> b!2678871 m!3046649))

(assert (=> b!2678394 d!766141))

(declare-fun d!766143 () Bool)

(declare-fun lt!943525 () BalanceConc!18910)

(assert (=> d!766143 (= (list!11649 lt!943525) (printListTailRec!529 thiss!14116 (dropList!978 (singletonSeq!2106 (h!36240 (t!224145 l!4335))) 0) (list!11649 (BalanceConc!18911 Empty!9648))))))

(declare-fun e!1688624 () BalanceConc!18910)

(assert (=> d!766143 (= lt!943525 e!1688624)))

(declare-fun c!431614 () Bool)

(assert (=> d!766143 (= c!431614 (>= 0 (size!23822 (singletonSeq!2106 (h!36240 (t!224145 l!4335))))))))

(declare-fun e!1688623 () Bool)

(assert (=> d!766143 e!1688623))

(declare-fun res!1126277 () Bool)

(assert (=> d!766143 (=> (not res!1126277) (not e!1688623))))

(assert (=> d!766143 (= res!1126277 (>= 0 0))))

(assert (=> d!766143 (= (printTailRec!1157 thiss!14116 (singletonSeq!2106 (h!36240 (t!224145 l!4335))) 0 (BalanceConc!18911 Empty!9648)) lt!943525)))

(declare-fun b!2678872 () Bool)

(assert (=> b!2678872 (= e!1688623 (<= 0 (size!23822 (singletonSeq!2106 (h!36240 (t!224145 l!4335))))))))

(declare-fun b!2678873 () Bool)

(assert (=> b!2678873 (= e!1688624 (BalanceConc!18911 Empty!9648))))

(declare-fun b!2678874 () Bool)

(assert (=> b!2678874 (= e!1688624 (printTailRec!1157 thiss!14116 (singletonSeq!2106 (h!36240 (t!224145 l!4335))) (+ 0 1) (++!7527 (BalanceConc!18911 Empty!9648) (charsOf!2970 (apply!7399 (singletonSeq!2106 (h!36240 (t!224145 l!4335))) 0)))))))

(declare-fun lt!943529 () List!30920)

(assert (=> b!2678874 (= lt!943529 (list!11652 (singletonSeq!2106 (h!36240 (t!224145 l!4335)))))))

(declare-fun lt!943528 () Unit!45039)

(assert (=> b!2678874 (= lt!943528 (lemmaDropApply!884 lt!943529 0))))

(assert (=> b!2678874 (= (head!6087 (drop!1675 lt!943529 0)) (apply!7401 lt!943529 0))))

(declare-fun lt!943523 () Unit!45039)

(assert (=> b!2678874 (= lt!943523 lt!943528)))

(declare-fun lt!943527 () List!30920)

(assert (=> b!2678874 (= lt!943527 (list!11652 (singletonSeq!2106 (h!36240 (t!224145 l!4335)))))))

(declare-fun lt!943524 () Unit!45039)

(assert (=> b!2678874 (= lt!943524 (lemmaDropTail!856 lt!943527 0))))

(assert (=> b!2678874 (= (tail!4325 (drop!1675 lt!943527 0)) (drop!1675 lt!943527 (+ 0 1)))))

(declare-fun lt!943526 () Unit!45039)

(assert (=> b!2678874 (= lt!943526 lt!943524)))

(assert (= (and d!766143 res!1126277) b!2678872))

(assert (= (and d!766143 c!431614) b!2678873))

(assert (= (and d!766143 (not c!431614)) b!2678874))

(assert (=> d!766143 m!3045865))

(declare-fun m!3046651 () Bool)

(assert (=> d!766143 m!3046651))

(assert (=> d!766143 m!3045865))

(declare-fun m!3046653 () Bool)

(assert (=> d!766143 m!3046653))

(assert (=> d!766143 m!3046651))

(assert (=> d!766143 m!3045549))

(declare-fun m!3046655 () Bool)

(assert (=> d!766143 m!3046655))

(assert (=> d!766143 m!3045549))

(declare-fun m!3046657 () Bool)

(assert (=> d!766143 m!3046657))

(assert (=> b!2678872 m!3045865))

(assert (=> b!2678872 m!3046653))

(declare-fun m!3046659 () Bool)

(assert (=> b!2678874 m!3046659))

(declare-fun m!3046661 () Bool)

(assert (=> b!2678874 m!3046661))

(declare-fun m!3046663 () Bool)

(assert (=> b!2678874 m!3046663))

(declare-fun m!3046665 () Bool)

(assert (=> b!2678874 m!3046665))

(declare-fun m!3046667 () Bool)

(assert (=> b!2678874 m!3046667))

(assert (=> b!2678874 m!3046667))

(declare-fun m!3046669 () Bool)

(assert (=> b!2678874 m!3046669))

(assert (=> b!2678874 m!3045865))

(assert (=> b!2678874 m!3046665))

(declare-fun m!3046671 () Bool)

(assert (=> b!2678874 m!3046671))

(declare-fun m!3046673 () Bool)

(assert (=> b!2678874 m!3046673))

(assert (=> b!2678874 m!3046663))

(declare-fun m!3046675 () Bool)

(assert (=> b!2678874 m!3046675))

(declare-fun m!3046677 () Bool)

(assert (=> b!2678874 m!3046677))

(assert (=> b!2678874 m!3045865))

(assert (=> b!2678874 m!3046641))

(assert (=> b!2678874 m!3046661))

(declare-fun m!3046679 () Bool)

(assert (=> b!2678874 m!3046679))

(assert (=> b!2678874 m!3045865))

(assert (=> b!2678874 m!3046669))

(declare-fun m!3046681 () Bool)

(assert (=> b!2678874 m!3046681))

(assert (=> b!2678394 d!766143))

(declare-fun d!766145 () Bool)

(assert (=> d!766145 (isDefined!4849 (maxPrefix!2342 thiss!14116 rules!1712 (++!7525 call!172722 lt!943344)))))

(declare-fun lt!943537 () Unit!45039)

(declare-fun e!1688626 () Unit!45039)

(assert (=> d!766145 (= lt!943537 e!1688626)))

(declare-fun c!431615 () Bool)

(assert (=> d!766145 (= c!431615 (isEmpty!17655 (maxPrefix!2342 thiss!14116 rules!1712 (++!7525 call!172722 lt!943344))))))

(declare-fun lt!943546 () Unit!45039)

(declare-fun lt!943535 () Unit!45039)

(assert (=> d!766145 (= lt!943546 lt!943535)))

(declare-fun e!1688625 () Bool)

(assert (=> d!766145 e!1688625))

(declare-fun res!1126278 () Bool)

(assert (=> d!766145 (=> (not res!1126278) (not e!1688625))))

(declare-fun lt!943539 () Token!8888)

(assert (=> d!766145 (= res!1126278 (isDefined!4850 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943539)))))))

(assert (=> d!766145 (= lt!943535 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!839 thiss!14116 rules!1712 call!172722 lt!943539))))

(declare-fun lt!943531 () Unit!45039)

(declare-fun lt!943543 () Unit!45039)

(assert (=> d!766145 (= lt!943531 lt!943543)))

(declare-fun lt!943538 () List!30918)

(assert (=> d!766145 (isPrefix!2461 lt!943538 (++!7525 call!172722 lt!943344))))

(assert (=> d!766145 (= lt!943543 (lemmaPrefixStaysPrefixWhenAddingToSuffix!407 lt!943538 call!172722 lt!943344))))

(assert (=> d!766145 (= lt!943538 (list!11649 (charsOf!2970 lt!943539)))))

(declare-fun lt!943536 () Unit!45039)

(declare-fun lt!943530 () Unit!45039)

(assert (=> d!766145 (= lt!943536 lt!943530)))

(declare-fun lt!943540 () List!30918)

(declare-fun lt!943533 () List!30918)

(assert (=> d!766145 (isPrefix!2461 lt!943540 (++!7525 lt!943540 lt!943533))))

(assert (=> d!766145 (= lt!943530 (lemmaConcatTwoListThenFirstIsPrefix!1626 lt!943540 lt!943533))))

(assert (=> d!766145 (= lt!943533 (_2!17680 (get!9687 (maxPrefix!2342 thiss!14116 rules!1712 call!172722))))))

(assert (=> d!766145 (= lt!943540 (list!11649 (charsOf!2970 lt!943539)))))

(assert (=> d!766145 (= lt!943539 (head!6087 (list!11652 (_1!17681 (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 call!172722))))))))

(assert (=> d!766145 (not (isEmpty!17644 rules!1712))))

(assert (=> d!766145 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!825 thiss!14116 rules!1712 call!172722 lt!943344) lt!943537)))

(declare-fun b!2678875 () Bool)

(declare-fun res!1126279 () Bool)

(assert (=> b!2678875 (=> (not res!1126279) (not e!1688625))))

(assert (=> b!2678875 (= res!1126279 (matchR!3632 (regex!4709 (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943539))))) (list!11649 (charsOf!2970 lt!943539))))))

(declare-fun b!2678877 () Bool)

(declare-fun Unit!45049 () Unit!45039)

(assert (=> b!2678877 (= e!1688626 Unit!45049)))

(declare-fun lt!943545 () List!30918)

(assert (=> b!2678877 (= lt!943545 (++!7525 call!172722 lt!943344))))

(declare-fun lt!943544 () Unit!45039)

(assert (=> b!2678877 (= lt!943544 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!443 thiss!14116 (rule!7119 lt!943539) rules!1712 lt!943545))))

(assert (=> b!2678877 (isEmpty!17655 (maxPrefixOneRule!1490 thiss!14116 (rule!7119 lt!943539) lt!943545))))

(declare-fun lt!943532 () Unit!45039)

(assert (=> b!2678877 (= lt!943532 lt!943544)))

(declare-fun lt!943534 () List!30918)

(assert (=> b!2678877 (= lt!943534 (list!11649 (charsOf!2970 lt!943539)))))

(declare-fun lt!943542 () Unit!45039)

(assert (=> b!2678877 (= lt!943542 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!431 thiss!14116 (rule!7119 lt!943539) lt!943534 (++!7525 call!172722 lt!943344)))))

(assert (=> b!2678877 (not (matchR!3632 (regex!4709 (rule!7119 lt!943539)) lt!943534))))

(declare-fun lt!943541 () Unit!45039)

(assert (=> b!2678877 (= lt!943541 lt!943542)))

(assert (=> b!2678877 false))

(declare-fun b!2678878 () Bool)

(declare-fun Unit!45050 () Unit!45039)

(assert (=> b!2678878 (= e!1688626 Unit!45050)))

(declare-fun b!2678876 () Bool)

(assert (=> b!2678876 (= e!1688625 (= (rule!7119 lt!943539) (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943539))))))))

(assert (= (and d!766145 res!1126278) b!2678875))

(assert (= (and b!2678875 res!1126279) b!2678876))

(assert (= (and d!766145 c!431615) b!2678877))

(assert (= (and d!766145 (not c!431615)) b!2678878))

(declare-fun m!3046683 () Bool)

(assert (=> d!766145 m!3046683))

(declare-fun m!3046685 () Bool)

(assert (=> d!766145 m!3046685))

(declare-fun m!3046687 () Bool)

(assert (=> d!766145 m!3046687))

(declare-fun m!3046689 () Bool)

(assert (=> d!766145 m!3046689))

(declare-fun m!3046691 () Bool)

(assert (=> d!766145 m!3046691))

(assert (=> d!766145 m!3046689))

(declare-fun m!3046693 () Bool)

(assert (=> d!766145 m!3046693))

(declare-fun m!3046695 () Bool)

(assert (=> d!766145 m!3046695))

(declare-fun m!3046697 () Bool)

(assert (=> d!766145 m!3046697))

(assert (=> d!766145 m!3046697))

(declare-fun m!3046699 () Bool)

(assert (=> d!766145 m!3046699))

(declare-fun m!3046701 () Bool)

(assert (=> d!766145 m!3046701))

(declare-fun m!3046703 () Bool)

(assert (=> d!766145 m!3046703))

(declare-fun m!3046705 () Bool)

(assert (=> d!766145 m!3046705))

(declare-fun m!3046707 () Bool)

(assert (=> d!766145 m!3046707))

(declare-fun m!3046709 () Bool)

(assert (=> d!766145 m!3046709))

(declare-fun m!3046711 () Bool)

(assert (=> d!766145 m!3046711))

(assert (=> d!766145 m!3046695))

(assert (=> d!766145 m!3046697))

(declare-fun m!3046713 () Bool)

(assert (=> d!766145 m!3046713))

(assert (=> d!766145 m!3046705))

(assert (=> d!766145 m!3046687))

(declare-fun m!3046715 () Bool)

(assert (=> d!766145 m!3046715))

(assert (=> d!766145 m!3045271))

(assert (=> d!766145 m!3046701))

(assert (=> d!766145 m!3046683))

(declare-fun m!3046717 () Bool)

(assert (=> d!766145 m!3046717))

(assert (=> d!766145 m!3046711))

(declare-fun m!3046719 () Bool)

(assert (=> d!766145 m!3046719))

(assert (=> d!766145 m!3046695))

(declare-fun m!3046721 () Bool)

(assert (=> d!766145 m!3046721))

(assert (=> b!2678875 m!3046689))

(assert (=> b!2678875 m!3046705))

(assert (=> b!2678875 m!3046689))

(assert (=> b!2678875 m!3046693))

(assert (=> b!2678875 m!3046705))

(declare-fun m!3046723 () Bool)

(assert (=> b!2678875 m!3046723))

(assert (=> b!2678875 m!3046693))

(declare-fun m!3046725 () Bool)

(assert (=> b!2678875 m!3046725))

(declare-fun m!3046727 () Bool)

(assert (=> b!2678877 m!3046727))

(declare-fun m!3046729 () Bool)

(assert (=> b!2678877 m!3046729))

(declare-fun m!3046731 () Bool)

(assert (=> b!2678877 m!3046731))

(assert (=> b!2678877 m!3046689))

(assert (=> b!2678877 m!3046695))

(declare-fun m!3046733 () Bool)

(assert (=> b!2678877 m!3046733))

(assert (=> b!2678877 m!3046689))

(assert (=> b!2678877 m!3046693))

(assert (=> b!2678877 m!3046729))

(assert (=> b!2678877 m!3046695))

(declare-fun m!3046735 () Bool)

(assert (=> b!2678877 m!3046735))

(assert (=> b!2678876 m!3046705))

(assert (=> b!2678876 m!3046705))

(assert (=> b!2678876 m!3046723))

(assert (=> b!2678394 d!766145))

(declare-fun d!766147 () Bool)

(declare-fun lt!943551 () Token!8888)

(assert (=> d!766147 (= lt!943551 (apply!7401 (list!11652 (_1!17681 lt!943131)) 0))))

(declare-fun apply!7404 (Conc!9649 Int) Token!8888)

(assert (=> d!766147 (= lt!943551 (apply!7404 (c!431446 (_1!17681 lt!943131)) 0))))

(declare-fun e!1688643 () Bool)

(assert (=> d!766147 e!1688643))

(declare-fun res!1126298 () Bool)

(assert (=> d!766147 (=> (not res!1126298) (not e!1688643))))

(assert (=> d!766147 (= res!1126298 (<= 0 0))))

(assert (=> d!766147 (= (apply!7399 (_1!17681 lt!943131) 0) lt!943551)))

(declare-fun b!2678909 () Bool)

(assert (=> b!2678909 (= e!1688643 (< 0 (size!23822 (_1!17681 lt!943131))))))

(assert (= (and d!766147 res!1126298) b!2678909))

(declare-fun m!3046737 () Bool)

(assert (=> d!766147 m!3046737))

(assert (=> d!766147 m!3046737))

(declare-fun m!3046739 () Bool)

(assert (=> d!766147 m!3046739))

(declare-fun m!3046741 () Bool)

(assert (=> d!766147 m!3046741))

(assert (=> b!2678909 m!3045393))

(assert (=> b!2678108 d!766147))

(declare-fun d!766149 () Bool)

(declare-fun lt!943555 () Bool)

(assert (=> d!766149 (= lt!943555 (isEmpty!17652 (list!11649 (_2!17681 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335))))))))))

(declare-fun isEmpty!17659 (Conc!9648) Bool)

(assert (=> d!766149 (= lt!943555 (isEmpty!17659 (c!431444 (_2!17681 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335))))))))))

(assert (=> d!766149 (= (isEmpty!17649 (_2!17681 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335)))))) lt!943555)))

(declare-fun bs!480038 () Bool)

(assert (= bs!480038 d!766149))

(declare-fun m!3046757 () Bool)

(assert (=> bs!480038 m!3046757))

(assert (=> bs!480038 m!3046757))

(declare-fun m!3046761 () Bool)

(assert (=> bs!480038 m!3046761))

(declare-fun m!3046763 () Bool)

(assert (=> bs!480038 m!3046763))

(assert (=> b!2678131 d!766149))

(declare-fun b!2678924 () Bool)

(declare-fun res!1126307 () Bool)

(declare-fun e!1688652 () Bool)

(assert (=> b!2678924 (=> (not res!1126307) (not e!1688652))))

(declare-fun lt!943556 () tuple2!30278)

(assert (=> b!2678924 (= res!1126307 (= (list!11652 (_1!17681 lt!943556)) (_1!17683 (lexList!1178 thiss!14116 rules!1712 (list!11649 (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335))))))))))

(declare-fun b!2678925 () Bool)

(declare-fun e!1688651 () Bool)

(assert (=> b!2678925 (= e!1688651 (= (_2!17681 lt!943556) (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335)))))))

(declare-fun b!2678926 () Bool)

(declare-fun e!1688653 () Bool)

(assert (=> b!2678926 (= e!1688653 (not (isEmpty!17645 (_1!17681 lt!943556))))))

(declare-fun b!2678927 () Bool)

(assert (=> b!2678927 (= e!1688651 e!1688653)))

(declare-fun res!1126308 () Bool)

(assert (=> b!2678927 (= res!1126308 (< (size!23825 (_2!17681 lt!943556)) (size!23825 (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335))))))))

(assert (=> b!2678927 (=> (not res!1126308) (not e!1688653))))

(declare-fun d!766151 () Bool)

(assert (=> d!766151 e!1688652))

(declare-fun res!1126309 () Bool)

(assert (=> d!766151 (=> (not res!1126309) (not e!1688652))))

(assert (=> d!766151 (= res!1126309 e!1688651)))

(declare-fun c!431625 () Bool)

(assert (=> d!766151 (= c!431625 (> (size!23822 (_1!17681 lt!943556)) 0))))

(assert (=> d!766151 (= lt!943556 (lexTailRecV2!853 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335))) (BalanceConc!18911 Empty!9648) (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335))) (BalanceConc!18913 Empty!9649)))))

(assert (=> d!766151 (= (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335)))) lt!943556)))

(declare-fun b!2678928 () Bool)

(assert (=> b!2678928 (= e!1688652 (= (list!11649 (_2!17681 lt!943556)) (_2!17683 (lexList!1178 thiss!14116 rules!1712 (list!11649 (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335))))))))))

(assert (= (and d!766151 c!431625) b!2678927))

(assert (= (and d!766151 (not c!431625)) b!2678925))

(assert (= (and b!2678927 res!1126308) b!2678926))

(assert (= (and d!766151 res!1126309) b!2678924))

(assert (= (and b!2678924 res!1126307) b!2678928))

(declare-fun m!3046769 () Bool)

(assert (=> b!2678924 m!3046769))

(assert (=> b!2678924 m!3045429))

(declare-fun m!3046771 () Bool)

(assert (=> b!2678924 m!3046771))

(assert (=> b!2678924 m!3046771))

(declare-fun m!3046773 () Bool)

(assert (=> b!2678924 m!3046773))

(declare-fun m!3046775 () Bool)

(assert (=> b!2678927 m!3046775))

(assert (=> b!2678927 m!3045429))

(declare-fun m!3046777 () Bool)

(assert (=> b!2678927 m!3046777))

(declare-fun m!3046779 () Bool)

(assert (=> d!766151 m!3046779))

(assert (=> d!766151 m!3045429))

(assert (=> d!766151 m!3045429))

(declare-fun m!3046781 () Bool)

(assert (=> d!766151 m!3046781))

(declare-fun m!3046783 () Bool)

(assert (=> b!2678926 m!3046783))

(declare-fun m!3046785 () Bool)

(assert (=> b!2678928 m!3046785))

(assert (=> b!2678928 m!3045429))

(assert (=> b!2678928 m!3046771))

(assert (=> b!2678928 m!3046771))

(assert (=> b!2678928 m!3046773))

(assert (=> b!2678131 d!766151))

(declare-fun d!766157 () Bool)

(declare-fun lt!943557 () BalanceConc!18910)

(assert (=> d!766157 (= (list!11649 lt!943557) (printList!1196 thiss!14116 (list!11652 (singletonSeq!2106 (h!36240 l!4335)))))))

(assert (=> d!766157 (= lt!943557 (printTailRec!1157 thiss!14116 (singletonSeq!2106 (h!36240 l!4335)) 0 (BalanceConc!18911 Empty!9648)))))

(assert (=> d!766157 (= (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335))) lt!943557)))

(declare-fun bs!480039 () Bool)

(assert (= bs!480039 d!766157))

(declare-fun m!3046787 () Bool)

(assert (=> bs!480039 m!3046787))

(assert (=> bs!480039 m!3045251))

(assert (=> bs!480039 m!3045433))

(assert (=> bs!480039 m!3045433))

(declare-fun m!3046789 () Bool)

(assert (=> bs!480039 m!3046789))

(assert (=> bs!480039 m!3045251))

(declare-fun m!3046791 () Bool)

(assert (=> bs!480039 m!3046791))

(assert (=> b!2678131 d!766157))

(assert (=> b!2678131 d!765841))

(declare-fun d!766159 () Bool)

(declare-fun lt!943558 () Bool)

(assert (=> d!766159 (= lt!943558 (isEmpty!17652 (list!11649 (_2!17681 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152)))))))))

(assert (=> d!766159 (= lt!943558 (isEmpty!17659 (c!431444 (_2!17681 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152)))))))))

(assert (=> d!766159 (= (isEmpty!17649 (_2!17681 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152))))) lt!943558)))

(declare-fun bs!480040 () Bool)

(assert (= bs!480040 d!766159))

(declare-fun m!3046793 () Bool)

(assert (=> bs!480040 m!3046793))

(assert (=> bs!480040 m!3046793))

(declare-fun m!3046795 () Bool)

(assert (=> bs!480040 m!3046795))

(declare-fun m!3046797 () Bool)

(assert (=> bs!480040 m!3046797))

(assert (=> b!2678110 d!766159))

(declare-fun b!2678931 () Bool)

(declare-fun res!1126312 () Bool)

(declare-fun e!1688657 () Bool)

(assert (=> b!2678931 (=> (not res!1126312) (not e!1688657))))

(declare-fun lt!943561 () tuple2!30278)

(assert (=> b!2678931 (= res!1126312 (= (list!11652 (_1!17681 lt!943561)) (_1!17683 (lexList!1178 thiss!14116 rules!1712 (list!11649 (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152)))))))))

(declare-fun b!2678932 () Bool)

(declare-fun e!1688656 () Bool)

(assert (=> b!2678932 (= e!1688656 (= (_2!17681 lt!943561) (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152))))))

(declare-fun b!2678933 () Bool)

(declare-fun e!1688658 () Bool)

(assert (=> b!2678933 (= e!1688658 (not (isEmpty!17645 (_1!17681 lt!943561))))))

(declare-fun b!2678934 () Bool)

(assert (=> b!2678934 (= e!1688656 e!1688658)))

(declare-fun res!1126313 () Bool)

(assert (=> b!2678934 (= res!1126313 (< (size!23825 (_2!17681 lt!943561)) (size!23825 (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152)))))))

(assert (=> b!2678934 (=> (not res!1126313) (not e!1688658))))

(declare-fun d!766161 () Bool)

(assert (=> d!766161 e!1688657))

(declare-fun res!1126314 () Bool)

(assert (=> d!766161 (=> (not res!1126314) (not e!1688657))))

(assert (=> d!766161 (= res!1126314 e!1688656)))

(declare-fun c!431626 () Bool)

(assert (=> d!766161 (= c!431626 (> (size!23822 (_1!17681 lt!943561)) 0))))

(assert (=> d!766161 (= lt!943561 (lexTailRecV2!853 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152)) (BalanceConc!18911 Empty!9648) (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152)) (BalanceConc!18913 Empty!9649)))))

(assert (=> d!766161 (= (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152))) lt!943561)))

(declare-fun b!2678935 () Bool)

(assert (=> b!2678935 (= e!1688657 (= (list!11649 (_2!17681 lt!943561)) (_2!17683 (lexList!1178 thiss!14116 rules!1712 (list!11649 (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152)))))))))

(assert (= (and d!766161 c!431626) b!2678934))

(assert (= (and d!766161 (not c!431626)) b!2678932))

(assert (= (and b!2678934 res!1126313) b!2678933))

(assert (= (and d!766161 res!1126314) b!2678931))

(assert (= (and b!2678931 res!1126312) b!2678935))

(declare-fun m!3046799 () Bool)

(assert (=> b!2678931 m!3046799))

(assert (=> b!2678931 m!3045395))

(declare-fun m!3046801 () Bool)

(assert (=> b!2678931 m!3046801))

(assert (=> b!2678931 m!3046801))

(declare-fun m!3046803 () Bool)

(assert (=> b!2678931 m!3046803))

(declare-fun m!3046805 () Bool)

(assert (=> b!2678934 m!3046805))

(assert (=> b!2678934 m!3045395))

(declare-fun m!3046807 () Bool)

(assert (=> b!2678934 m!3046807))

(declare-fun m!3046809 () Bool)

(assert (=> d!766161 m!3046809))

(assert (=> d!766161 m!3045395))

(assert (=> d!766161 m!3045395))

(declare-fun m!3046811 () Bool)

(assert (=> d!766161 m!3046811))

(declare-fun m!3046813 () Bool)

(assert (=> b!2678933 m!3046813))

(declare-fun m!3046815 () Bool)

(assert (=> b!2678935 m!3046815))

(assert (=> b!2678935 m!3045395))

(assert (=> b!2678935 m!3046801))

(assert (=> b!2678935 m!3046801))

(assert (=> b!2678935 m!3046803))

(assert (=> b!2678110 d!766161))

(declare-fun d!766163 () Bool)

(declare-fun lt!943563 () BalanceConc!18910)

(assert (=> d!766163 (= (list!11649 lt!943563) (printList!1196 thiss!14116 (list!11652 (singletonSeq!2106 separatorToken!152))))))

(assert (=> d!766163 (= lt!943563 (printTailRec!1157 thiss!14116 (singletonSeq!2106 separatorToken!152) 0 (BalanceConc!18911 Empty!9648)))))

(assert (=> d!766163 (= (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152)) lt!943563)))

(declare-fun bs!480041 () Bool)

(assert (= bs!480041 d!766163))

(declare-fun m!3046817 () Bool)

(assert (=> bs!480041 m!3046817))

(assert (=> bs!480041 m!3045399))

(assert (=> bs!480041 m!3045401))

(assert (=> bs!480041 m!3045401))

(declare-fun m!3046819 () Bool)

(assert (=> bs!480041 m!3046819))

(assert (=> bs!480041 m!3045399))

(declare-fun m!3046821 () Bool)

(assert (=> bs!480041 m!3046821))

(assert (=> b!2678110 d!766163))

(declare-fun d!766165 () Bool)

(declare-fun e!1688659 () Bool)

(assert (=> d!766165 e!1688659))

(declare-fun res!1126315 () Bool)

(assert (=> d!766165 (=> (not res!1126315) (not e!1688659))))

(declare-fun lt!943564 () BalanceConc!18912)

(assert (=> d!766165 (= res!1126315 (= (list!11652 lt!943564) (Cons!30820 separatorToken!152 Nil!30820)))))

(assert (=> d!766165 (= lt!943564 (singleton!934 separatorToken!152))))

(assert (=> d!766165 (= (singletonSeq!2106 separatorToken!152) lt!943564)))

(declare-fun b!2678938 () Bool)

(assert (=> b!2678938 (= e!1688659 (isBalanced!2925 (c!431446 lt!943564)))))

(assert (= (and d!766165 res!1126315) b!2678938))

(declare-fun m!3046825 () Bool)

(assert (=> d!766165 m!3046825))

(declare-fun m!3046827 () Bool)

(assert (=> d!766165 m!3046827))

(declare-fun m!3046829 () Bool)

(assert (=> b!2678938 m!3046829))

(assert (=> b!2678110 d!766165))

(declare-fun d!766169 () Bool)

(assert (=> d!766169 (= (inv!17 (value!151811 separatorToken!152)) (= (charsToBigInt!1 (text!34965 (value!151811 separatorToken!152))) (value!151803 (value!151811 separatorToken!152))))))

(declare-fun bs!480043 () Bool)

(assert (= bs!480043 d!766169))

(declare-fun m!3046831 () Bool)

(assert (=> bs!480043 m!3046831))

(assert (=> b!2677998 d!766169))

(declare-fun bs!480046 () Bool)

(declare-fun d!766171 () Bool)

(assert (= bs!480046 (and d!766171 b!2677968)))

(declare-fun lambda!100073 () Int)

(assert (=> bs!480046 (not (= lambda!100073 lambda!100039))))

(declare-fun bs!480048 () Bool)

(assert (= bs!480048 (and d!766171 b!2677958)))

(assert (=> bs!480048 (= lambda!100073 lambda!100040)))

(declare-fun bs!480049 () Bool)

(assert (= bs!480049 (and d!766171 d!765847)))

(assert (=> bs!480049 (= lambda!100073 lambda!100046)))

(declare-fun bs!480050 () Bool)

(assert (= bs!480050 (and d!766171 b!2678391)))

(assert (=> bs!480050 (= lambda!100073 lambda!100052)))

(declare-fun b!2678943 () Bool)

(declare-fun e!1688664 () Bool)

(assert (=> b!2678943 (= e!1688664 true)))

(declare-fun b!2678942 () Bool)

(declare-fun e!1688663 () Bool)

(assert (=> b!2678942 (= e!1688663 e!1688664)))

(declare-fun b!2678941 () Bool)

(declare-fun e!1688662 () Bool)

(assert (=> b!2678941 (= e!1688662 e!1688663)))

(assert (=> d!766171 e!1688662))

(assert (= b!2678942 b!2678943))

(assert (= b!2678941 b!2678942))

(assert (= (and d!766171 ((_ is Cons!30819) rules!1712)) b!2678941))

(assert (=> b!2678943 (< (dynLambda!13408 order!17019 (toValue!6659 (transformation!4709 (h!36239 rules!1712)))) (dynLambda!13409 order!17021 lambda!100073))))

(assert (=> b!2678943 (< (dynLambda!13410 order!17023 (toChars!6518 (transformation!4709 (h!36239 rules!1712)))) (dynLambda!13409 order!17021 lambda!100073))))

(assert (=> d!766171 true))

(declare-fun lt!943565 () Bool)

(assert (=> d!766171 (= lt!943565 (forall!6528 (t!224145 l!4335) lambda!100073))))

(declare-fun e!1688660 () Bool)

(assert (=> d!766171 (= lt!943565 e!1688660)))

(declare-fun res!1126317 () Bool)

(assert (=> d!766171 (=> res!1126317 e!1688660)))

(assert (=> d!766171 (= res!1126317 (not ((_ is Cons!30820) (t!224145 l!4335))))))

(assert (=> d!766171 (not (isEmpty!17644 rules!1712))))

(assert (=> d!766171 (= (rulesProduceEachTokenIndividuallyList!1528 thiss!14116 rules!1712 (t!224145 l!4335)) lt!943565)))

(declare-fun b!2678939 () Bool)

(declare-fun e!1688661 () Bool)

(assert (=> b!2678939 (= e!1688660 e!1688661)))

(declare-fun res!1126316 () Bool)

(assert (=> b!2678939 (=> (not res!1126316) (not e!1688661))))

(assert (=> b!2678939 (= res!1126316 (rulesProduceIndividualToken!2018 thiss!14116 rules!1712 (h!36240 (t!224145 l!4335))))))

(declare-fun b!2678940 () Bool)

(assert (=> b!2678940 (= e!1688661 (rulesProduceEachTokenIndividuallyList!1528 thiss!14116 rules!1712 (t!224145 (t!224145 l!4335))))))

(assert (= (and d!766171 (not res!1126317)) b!2678939))

(assert (= (and b!2678939 res!1126316) b!2678940))

(declare-fun m!3046835 () Bool)

(assert (=> d!766171 m!3046835))

(assert (=> d!766171 m!3045271))

(declare-fun m!3046837 () Bool)

(assert (=> b!2678939 m!3046837))

(declare-fun m!3046839 () Bool)

(assert (=> b!2678940 m!3046839))

(assert (=> b!2678256 d!766171))

(declare-fun b!2678944 () Bool)

(declare-fun e!1688665 () List!30918)

(assert (=> b!2678944 (= e!1688665 lt!943344)))

(declare-fun d!766177 () Bool)

(declare-fun e!1688666 () Bool)

(assert (=> d!766177 e!1688666))

(declare-fun res!1126318 () Bool)

(assert (=> d!766177 (=> (not res!1126318) (not e!1688666))))

(declare-fun lt!943566 () List!30918)

(assert (=> d!766177 (= res!1126318 (= (content!4387 lt!943566) ((_ map or) (content!4387 call!172719) (content!4387 lt!943344))))))

(assert (=> d!766177 (= lt!943566 e!1688665)))

(declare-fun c!431627 () Bool)

(assert (=> d!766177 (= c!431627 ((_ is Nil!30818) call!172719))))

(assert (=> d!766177 (= (++!7525 call!172719 lt!943344) lt!943566)))

(declare-fun b!2678947 () Bool)

(assert (=> b!2678947 (= e!1688666 (or (not (= lt!943344 Nil!30818)) (= lt!943566 call!172719)))))

(declare-fun b!2678945 () Bool)

(assert (=> b!2678945 (= e!1688665 (Cons!30818 (h!36238 call!172719) (++!7525 (t!224143 call!172719) lt!943344)))))

(declare-fun b!2678946 () Bool)

(declare-fun res!1126319 () Bool)

(assert (=> b!2678946 (=> (not res!1126319) (not e!1688666))))

(assert (=> b!2678946 (= res!1126319 (= (size!23824 lt!943566) (+ (size!23824 call!172719) (size!23824 lt!943344))))))

(assert (= (and d!766177 c!431627) b!2678944))

(assert (= (and d!766177 (not c!431627)) b!2678945))

(assert (= (and d!766177 res!1126318) b!2678946))

(assert (= (and b!2678946 res!1126319) b!2678947))

(declare-fun m!3046841 () Bool)

(assert (=> d!766177 m!3046841))

(declare-fun m!3046843 () Bool)

(assert (=> d!766177 m!3046843))

(declare-fun m!3046845 () Bool)

(assert (=> d!766177 m!3046845))

(declare-fun m!3046847 () Bool)

(assert (=> b!2678945 m!3046847))

(declare-fun m!3046849 () Bool)

(assert (=> b!2678946 m!3046849))

(declare-fun m!3046851 () Bool)

(assert (=> b!2678946 m!3046851))

(declare-fun m!3046853 () Bool)

(assert (=> b!2678946 m!3046853))

(assert (=> b!2678395 d!766177))

(declare-fun d!766179 () Bool)

(assert (=> d!766179 (= (inv!41838 (tag!5211 (h!36239 (t!224144 rules!1712)))) (= (mod (str.len (value!151810 (tag!5211 (h!36239 (t!224144 rules!1712))))) 2) 0))))

(assert (=> b!2678453 d!766179))

(declare-fun d!766181 () Bool)

(declare-fun res!1126320 () Bool)

(declare-fun e!1688667 () Bool)

(assert (=> d!766181 (=> (not res!1126320) (not e!1688667))))

(assert (=> d!766181 (= res!1126320 (semiInverseModEq!1954 (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toValue!6659 (transformation!4709 (h!36239 (t!224144 rules!1712))))))))

(assert (=> d!766181 (= (inv!41841 (transformation!4709 (h!36239 (t!224144 rules!1712)))) e!1688667)))

(declare-fun b!2678948 () Bool)

(assert (=> b!2678948 (= e!1688667 (equivClasses!1855 (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toValue!6659 (transformation!4709 (h!36239 (t!224144 rules!1712))))))))

(assert (= (and d!766181 res!1126320) b!2678948))

(declare-fun m!3046855 () Bool)

(assert (=> d!766181 m!3046855))

(declare-fun m!3046857 () Bool)

(assert (=> b!2678948 m!3046857))

(assert (=> b!2678453 d!766181))

(declare-fun d!766183 () Bool)

(declare-fun lt!943567 () Bool)

(assert (=> d!766183 (= lt!943567 (isEmpty!17653 (list!11652 (_1!17681 lt!943147))))))

(assert (=> d!766183 (= lt!943567 (isEmpty!17654 (c!431446 (_1!17681 lt!943147))))))

(assert (=> d!766183 (= (isEmpty!17645 (_1!17681 lt!943147)) lt!943567)))

(declare-fun bs!480051 () Bool)

(assert (= bs!480051 d!766183))

(assert (=> bs!480051 m!3045481))

(assert (=> bs!480051 m!3045481))

(declare-fun m!3046859 () Bool)

(assert (=> bs!480051 m!3046859))

(declare-fun m!3046861 () Bool)

(assert (=> bs!480051 m!3046861))

(assert (=> b!2678177 d!766183))

(declare-fun d!766185 () Bool)

(assert (=> d!766185 (= (isEmpty!17653 (list!11652 (_1!17681 (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 lt!943080))))) ((_ is Nil!30820) (list!11652 (_1!17681 (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 lt!943080))))))))

(assert (=> d!765821 d!766185))

(declare-fun d!766187 () Bool)

(assert (=> d!766187 (= (list!11652 (_1!17681 (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 lt!943080)))) (list!11655 (c!431446 (_1!17681 (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 lt!943080))))))))

(declare-fun bs!480052 () Bool)

(assert (= bs!480052 d!766187))

(declare-fun m!3046863 () Bool)

(assert (=> bs!480052 m!3046863))

(assert (=> d!765821 d!766187))

(declare-fun d!766189 () Bool)

(declare-fun lt!943570 () Bool)

(assert (=> d!766189 (= lt!943570 (isEmpty!17653 (list!11655 (c!431446 (_1!17681 (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 lt!943080)))))))))

(declare-fun size!23828 (Conc!9649) Int)

(assert (=> d!766189 (= lt!943570 (= (size!23828 (c!431446 (_1!17681 (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 lt!943080))))) 0))))

(assert (=> d!766189 (= (isEmpty!17654 (c!431446 (_1!17681 (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 lt!943080))))) lt!943570)))

(declare-fun bs!480053 () Bool)

(assert (= bs!480053 d!766189))

(assert (=> bs!480053 m!3046863))

(assert (=> bs!480053 m!3046863))

(declare-fun m!3046869 () Bool)

(assert (=> bs!480053 m!3046869))

(declare-fun m!3046871 () Bool)

(assert (=> bs!480053 m!3046871))

(assert (=> d!765821 d!766189))

(assert (=> b!2678281 d!765993))

(assert (=> b!2678281 d!765983))

(declare-fun d!766193 () Bool)

(declare-fun lt!943573 () Int)

(declare-fun size!23829 (List!30920) Int)

(assert (=> d!766193 (= lt!943573 (size!23829 (list!11652 (_1!17681 lt!943131))))))

(assert (=> d!766193 (= lt!943573 (size!23828 (c!431446 (_1!17681 lt!943131))))))

(assert (=> d!766193 (= (size!23822 (_1!17681 lt!943131)) lt!943573)))

(declare-fun bs!480054 () Bool)

(assert (= bs!480054 d!766193))

(assert (=> bs!480054 m!3046737))

(assert (=> bs!480054 m!3046737))

(declare-fun m!3046875 () Bool)

(assert (=> bs!480054 m!3046875))

(declare-fun m!3046877 () Bool)

(assert (=> bs!480054 m!3046877))

(assert (=> d!765783 d!766193))

(assert (=> d!765783 d!766163))

(assert (=> d!765783 d!766161))

(assert (=> d!765783 d!766165))

(declare-fun d!766197 () Bool)

(assert (=> d!766197 (= (list!11652 (_1!17681 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152))))) (list!11655 (c!431446 (_1!17681 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 separatorToken!152)))))))))

(declare-fun bs!480055 () Bool)

(assert (= bs!480055 d!766197))

(declare-fun m!3046881 () Bool)

(assert (=> bs!480055 m!3046881))

(assert (=> d!765783 d!766197))

(assert (=> d!765783 d!765903))

(declare-fun d!766201 () Bool)

(assert (=> d!766201 (= (list!11652 (singletonSeq!2106 separatorToken!152)) (list!11655 (c!431446 (singletonSeq!2106 separatorToken!152))))))

(declare-fun bs!480056 () Bool)

(assert (= bs!480056 d!766201))

(declare-fun m!3046883 () Bool)

(assert (=> bs!480056 m!3046883))

(assert (=> d!765783 d!766201))

(declare-fun b!2678965 () Bool)

(declare-fun e!1688681 () List!30918)

(assert (=> b!2678965 (= e!1688681 lt!943082)))

(declare-fun d!766203 () Bool)

(declare-fun e!1688682 () Bool)

(assert (=> d!766203 e!1688682))

(declare-fun res!1126331 () Bool)

(assert (=> d!766203 (=> (not res!1126331) (not e!1688682))))

(declare-fun lt!943574 () List!30918)

(assert (=> d!766203 (= res!1126331 (= (content!4387 lt!943574) ((_ map or) (content!4387 (t!224143 lt!943080)) (content!4387 lt!943082))))))

(assert (=> d!766203 (= lt!943574 e!1688681)))

(declare-fun c!431631 () Bool)

(assert (=> d!766203 (= c!431631 ((_ is Nil!30818) (t!224143 lt!943080)))))

(assert (=> d!766203 (= (++!7525 (t!224143 lt!943080) lt!943082) lt!943574)))

(declare-fun b!2678968 () Bool)

(assert (=> b!2678968 (= e!1688682 (or (not (= lt!943082 Nil!30818)) (= lt!943574 (t!224143 lt!943080))))))

(declare-fun b!2678966 () Bool)

(assert (=> b!2678966 (= e!1688681 (Cons!30818 (h!36238 (t!224143 lt!943080)) (++!7525 (t!224143 (t!224143 lt!943080)) lt!943082)))))

(declare-fun b!2678967 () Bool)

(declare-fun res!1126332 () Bool)

(assert (=> b!2678967 (=> (not res!1126332) (not e!1688682))))

(assert (=> b!2678967 (= res!1126332 (= (size!23824 lt!943574) (+ (size!23824 (t!224143 lt!943080)) (size!23824 lt!943082))))))

(assert (= (and d!766203 c!431631) b!2678965))

(assert (= (and d!766203 (not c!431631)) b!2678966))

(assert (= (and d!766203 res!1126331) b!2678967))

(assert (= (and b!2678967 res!1126332) b!2678968))

(declare-fun m!3046889 () Bool)

(assert (=> d!766203 m!3046889))

(assert (=> d!766203 m!3046473))

(assert (=> d!766203 m!3045819))

(declare-fun m!3046891 () Bool)

(assert (=> b!2678966 m!3046891))

(declare-fun m!3046893 () Bool)

(assert (=> b!2678967 m!3046893))

(declare-fun m!3046895 () Bool)

(assert (=> b!2678967 m!3046895))

(assert (=> b!2678967 m!3045827))

(assert (=> b!2678296 d!766203))

(assert (=> d!765877 d!765961))

(assert (=> d!765877 d!765991))

(declare-fun b!2678984 () Bool)

(declare-fun e!1688695 () Bool)

(declare-fun e!1688694 () Bool)

(assert (=> b!2678984 (= e!1688695 e!1688694)))

(declare-fun res!1126344 () Bool)

(assert (=> b!2678984 (=> (not res!1126344) (not e!1688694))))

(assert (=> b!2678984 (= res!1126344 (not ((_ is Nil!30818) (++!7525 lt!943310 lt!943303))))))

(declare-fun b!2678987 () Bool)

(declare-fun e!1688693 () Bool)

(assert (=> b!2678987 (= e!1688693 (>= (size!23824 (++!7525 lt!943310 lt!943303)) (size!23824 lt!943310)))))

(declare-fun b!2678986 () Bool)

(assert (=> b!2678986 (= e!1688694 (isPrefix!2461 (tail!4327 lt!943310) (tail!4327 (++!7525 lt!943310 lt!943303))))))

(declare-fun b!2678985 () Bool)

(declare-fun res!1126345 () Bool)

(assert (=> b!2678985 (=> (not res!1126345) (not e!1688694))))

(assert (=> b!2678985 (= res!1126345 (= (head!6089 lt!943310) (head!6089 (++!7525 lt!943310 lt!943303))))))

(declare-fun d!766207 () Bool)

(assert (=> d!766207 e!1688693))

(declare-fun res!1126343 () Bool)

(assert (=> d!766207 (=> res!1126343 e!1688693)))

(declare-fun lt!943579 () Bool)

(assert (=> d!766207 (= res!1126343 (not lt!943579))))

(assert (=> d!766207 (= lt!943579 e!1688695)))

(declare-fun res!1126346 () Bool)

(assert (=> d!766207 (=> res!1126346 e!1688695)))

(assert (=> d!766207 (= res!1126346 ((_ is Nil!30818) lt!943310))))

(assert (=> d!766207 (= (isPrefix!2461 lt!943310 (++!7525 lt!943310 lt!943303)) lt!943579)))

(assert (= (and d!766207 (not res!1126346)) b!2678984))

(assert (= (and b!2678984 res!1126344) b!2678985))

(assert (= (and b!2678985 res!1126345) b!2678986))

(assert (= (and d!766207 (not res!1126343)) b!2678987))

(assert (=> b!2678987 m!3045765))

(declare-fun m!3046933 () Bool)

(assert (=> b!2678987 m!3046933))

(declare-fun m!3046935 () Bool)

(assert (=> b!2678987 m!3046935))

(declare-fun m!3046937 () Bool)

(assert (=> b!2678986 m!3046937))

(assert (=> b!2678986 m!3045765))

(declare-fun m!3046939 () Bool)

(assert (=> b!2678986 m!3046939))

(assert (=> b!2678986 m!3046937))

(assert (=> b!2678986 m!3046939))

(declare-fun m!3046941 () Bool)

(assert (=> b!2678986 m!3046941))

(declare-fun m!3046943 () Bool)

(assert (=> b!2678985 m!3046943))

(assert (=> b!2678985 m!3045765))

(declare-fun m!3046947 () Bool)

(assert (=> b!2678985 m!3046947))

(assert (=> d!765877 d!766207))

(assert (=> d!765877 d!765825))

(assert (=> d!765877 d!765903))

(assert (=> d!765877 d!765823))

(declare-fun b!2678988 () Bool)

(declare-fun e!1688698 () Bool)

(declare-fun e!1688697 () Bool)

(assert (=> b!2678988 (= e!1688698 e!1688697)))

(declare-fun res!1126348 () Bool)

(assert (=> b!2678988 (=> (not res!1126348) (not e!1688697))))

(assert (=> b!2678988 (= res!1126348 (not ((_ is Nil!30818) (++!7525 lt!943080 lt!943082))))))

(declare-fun e!1688696 () Bool)

(declare-fun b!2678991 () Bool)

(assert (=> b!2678991 (= e!1688696 (>= (size!23824 (++!7525 lt!943080 lt!943082)) (size!23824 lt!943308)))))

(declare-fun b!2678990 () Bool)

(assert (=> b!2678990 (= e!1688697 (isPrefix!2461 (tail!4327 lt!943308) (tail!4327 (++!7525 lt!943080 lt!943082))))))

(declare-fun b!2678989 () Bool)

(declare-fun res!1126349 () Bool)

(assert (=> b!2678989 (=> (not res!1126349) (not e!1688697))))

(assert (=> b!2678989 (= res!1126349 (= (head!6089 lt!943308) (head!6089 (++!7525 lt!943080 lt!943082))))))

(declare-fun d!766221 () Bool)

(assert (=> d!766221 e!1688696))

(declare-fun res!1126347 () Bool)

(assert (=> d!766221 (=> res!1126347 e!1688696)))

(declare-fun lt!943581 () Bool)

(assert (=> d!766221 (= res!1126347 (not lt!943581))))

(assert (=> d!766221 (= lt!943581 e!1688698)))

(declare-fun res!1126350 () Bool)

(assert (=> d!766221 (=> res!1126350 e!1688698)))

(assert (=> d!766221 (= res!1126350 ((_ is Nil!30818) lt!943308))))

(assert (=> d!766221 (= (isPrefix!2461 lt!943308 (++!7525 lt!943080 lt!943082)) lt!943581)))

(assert (= (and d!766221 (not res!1126350)) b!2678988))

(assert (= (and b!2678988 res!1126348) b!2678989))

(assert (= (and b!2678989 res!1126349) b!2678990))

(assert (= (and d!766221 (not res!1126347)) b!2678991))

(assert (=> b!2678991 m!3045259))

(assert (=> b!2678991 m!3045889))

(declare-fun m!3046959 () Bool)

(assert (=> b!2678991 m!3046959))

(declare-fun m!3046961 () Bool)

(assert (=> b!2678990 m!3046961))

(assert (=> b!2678990 m!3045259))

(declare-fun m!3046963 () Bool)

(assert (=> b!2678990 m!3046963))

(assert (=> b!2678990 m!3046961))

(assert (=> b!2678990 m!3046963))

(declare-fun m!3046965 () Bool)

(assert (=> b!2678990 m!3046965))

(declare-fun m!3046967 () Bool)

(assert (=> b!2678989 m!3046967))

(assert (=> b!2678989 m!3045259))

(declare-fun m!3046969 () Bool)

(assert (=> b!2678989 m!3046969))

(assert (=> d!765877 d!766221))

(declare-fun d!766227 () Bool)

(assert (=> d!766227 (isPrefix!2461 lt!943310 (++!7525 lt!943310 lt!943303))))

(declare-fun lt!943592 () Unit!45039)

(declare-fun choose!15869 (List!30918 List!30918) Unit!45039)

(assert (=> d!766227 (= lt!943592 (choose!15869 lt!943310 lt!943303))))

(assert (=> d!766227 (= (lemmaConcatTwoListThenFirstIsPrefix!1626 lt!943310 lt!943303) lt!943592)))

(declare-fun bs!480061 () Bool)

(assert (= bs!480061 d!766227))

(assert (=> bs!480061 m!3045765))

(assert (=> bs!480061 m!3045765))

(assert (=> bs!480061 m!3045785))

(declare-fun m!3047003 () Bool)

(assert (=> bs!480061 m!3047003))

(assert (=> d!765877 d!766227))

(declare-fun d!766231 () Bool)

(declare-fun e!1688711 () Bool)

(assert (=> d!766231 e!1688711))

(declare-fun res!1126362 () Bool)

(assert (=> d!766231 (=> (not res!1126362) (not e!1688711))))

(assert (=> d!766231 (= res!1126362 (isDefined!4850 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309)))))))

(declare-fun lt!943615 () Unit!45039)

(declare-fun choose!15870 (LexerInterface!4306 List!30919 List!30918 Token!8888) Unit!45039)

(assert (=> d!766231 (= lt!943615 (choose!15870 thiss!14116 rules!1712 lt!943080 lt!943309))))

(assert (=> d!766231 (rulesInvariant!3806 thiss!14116 rules!1712)))

(assert (=> d!766231 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!839 thiss!14116 rules!1712 lt!943080 lt!943309) lt!943615)))

(declare-fun b!2679011 () Bool)

(declare-fun res!1126363 () Bool)

(assert (=> b!2679011 (=> (not res!1126363) (not e!1688711))))

(assert (=> b!2679011 (= res!1126363 (matchR!3632 (regex!4709 (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309))))) (list!11649 (charsOf!2970 lt!943309))))))

(declare-fun b!2679012 () Bool)

(assert (=> b!2679012 (= e!1688711 (= (rule!7119 lt!943309) (get!9688 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309))))))))

(assert (= (and d!766231 res!1126362) b!2679011))

(assert (= (and b!2679011 res!1126363) b!2679012))

(assert (=> d!766231 m!3045777))

(assert (=> d!766231 m!3045777))

(assert (=> d!766231 m!3045779))

(declare-fun m!3047075 () Bool)

(assert (=> d!766231 m!3047075))

(assert (=> d!766231 m!3045237))

(assert (=> b!2679011 m!3045767))

(assert (=> b!2679011 m!3045771))

(assert (=> b!2679011 m!3045767))

(assert (=> b!2679011 m!3045777))

(assert (=> b!2679011 m!3045791))

(assert (=> b!2679011 m!3045771))

(assert (=> b!2679011 m!3045793))

(assert (=> b!2679011 m!3045777))

(assert (=> b!2679012 m!3045777))

(assert (=> b!2679012 m!3045777))

(assert (=> b!2679012 m!3045791))

(assert (=> d!765877 d!766231))

(assert (=> d!765877 d!766187))

(declare-fun d!766249 () Bool)

(assert (=> d!766249 (isPrefix!2461 lt!943308 (++!7525 lt!943080 lt!943082))))

(declare-fun lt!943620 () Unit!45039)

(declare-fun choose!15871 (List!30918 List!30918 List!30918) Unit!45039)

(assert (=> d!766249 (= lt!943620 (choose!15871 lt!943308 lt!943080 lt!943082))))

(assert (=> d!766249 (isPrefix!2461 lt!943308 lt!943080)))

(assert (=> d!766249 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!407 lt!943308 lt!943080 lt!943082) lt!943620)))

(declare-fun bs!480069 () Bool)

(assert (= bs!480069 d!766249))

(assert (=> bs!480069 m!3045259))

(assert (=> bs!480069 m!3045259))

(assert (=> bs!480069 m!3045789))

(declare-fun m!3047103 () Bool)

(assert (=> bs!480069 m!3047103))

(declare-fun m!3047105 () Bool)

(assert (=> bs!480069 m!3047105))

(assert (=> d!765877 d!766249))

(declare-fun b!2679018 () Bool)

(declare-fun res!1126368 () Bool)

(declare-fun e!1688716 () Bool)

(assert (=> b!2679018 (=> (not res!1126368) (not e!1688716))))

(declare-fun lt!943624 () Option!6102)

(assert (=> b!2679018 (= res!1126368 (= (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943624)))) (originalCharacters!5475 (_1!17680 (get!9687 lt!943624)))))))

(declare-fun b!2679019 () Bool)

(declare-fun res!1126369 () Bool)

(assert (=> b!2679019 (=> (not res!1126369) (not e!1688716))))

(assert (=> b!2679019 (= res!1126369 (< (size!23824 (_2!17680 (get!9687 lt!943624))) (size!23824 lt!943080)))))

(declare-fun b!2679020 () Bool)

(declare-fun e!1688715 () Option!6102)

(declare-fun call!172746 () Option!6102)

(assert (=> b!2679020 (= e!1688715 call!172746)))

(declare-fun d!766257 () Bool)

(declare-fun e!1688717 () Bool)

(assert (=> d!766257 e!1688717))

(declare-fun res!1126373 () Bool)

(assert (=> d!766257 (=> res!1126373 e!1688717)))

(assert (=> d!766257 (= res!1126373 (isEmpty!17655 lt!943624))))

(assert (=> d!766257 (= lt!943624 e!1688715)))

(declare-fun c!431639 () Bool)

(assert (=> d!766257 (= c!431639 (and ((_ is Cons!30819) rules!1712) ((_ is Nil!30819) (t!224144 rules!1712))))))

(declare-fun lt!943623 () Unit!45039)

(declare-fun lt!943626 () Unit!45039)

(assert (=> d!766257 (= lt!943623 lt!943626)))

(assert (=> d!766257 (isPrefix!2461 lt!943080 lt!943080)))

(assert (=> d!766257 (= lt!943626 (lemmaIsPrefixRefl!1587 lt!943080 lt!943080))))

(assert (=> d!766257 (rulesValidInductive!1641 thiss!14116 rules!1712)))

(assert (=> d!766257 (= (maxPrefix!2342 thiss!14116 rules!1712 lt!943080) lt!943624)))

(declare-fun b!2679021 () Bool)

(declare-fun res!1126372 () Bool)

(assert (=> b!2679021 (=> (not res!1126372) (not e!1688716))))

(assert (=> b!2679021 (= res!1126372 (= (++!7525 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943624)))) (_2!17680 (get!9687 lt!943624))) lt!943080))))

(declare-fun b!2679022 () Bool)

(assert (=> b!2679022 (= e!1688717 e!1688716)))

(declare-fun res!1126371 () Bool)

(assert (=> b!2679022 (=> (not res!1126371) (not e!1688716))))

(assert (=> b!2679022 (= res!1126371 (isDefined!4849 lt!943624))))

(declare-fun b!2679023 () Bool)

(declare-fun lt!943625 () Option!6102)

(declare-fun lt!943622 () Option!6102)

(assert (=> b!2679023 (= e!1688715 (ite (and ((_ is None!6101) lt!943625) ((_ is None!6101) lt!943622)) None!6101 (ite ((_ is None!6101) lt!943622) lt!943625 (ite ((_ is None!6101) lt!943625) lt!943622 (ite (>= (size!23819 (_1!17680 (v!32668 lt!943625))) (size!23819 (_1!17680 (v!32668 lt!943622)))) lt!943625 lt!943622)))))))

(assert (=> b!2679023 (= lt!943625 call!172746)))

(assert (=> b!2679023 (= lt!943622 (maxPrefix!2342 thiss!14116 (t!224144 rules!1712) lt!943080))))

(declare-fun b!2679024 () Bool)

(declare-fun res!1126370 () Bool)

(assert (=> b!2679024 (=> (not res!1126370) (not e!1688716))))

(assert (=> b!2679024 (= res!1126370 (= (value!151811 (_1!17680 (get!9687 lt!943624))) (apply!7402 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943624)))) (seqFromList!3209 (originalCharacters!5475 (_1!17680 (get!9687 lt!943624)))))))))

(declare-fun b!2679025 () Bool)

(assert (=> b!2679025 (= e!1688716 (contains!5935 rules!1712 (rule!7119 (_1!17680 (get!9687 lt!943624)))))))

(declare-fun b!2679026 () Bool)

(declare-fun res!1126367 () Bool)

(assert (=> b!2679026 (=> (not res!1126367) (not e!1688716))))

(assert (=> b!2679026 (= res!1126367 (matchR!3632 (regex!4709 (rule!7119 (_1!17680 (get!9687 lt!943624)))) (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943624))))))))

(declare-fun bm!172741 () Bool)

(assert (=> bm!172741 (= call!172746 (maxPrefixOneRule!1490 thiss!14116 (h!36239 rules!1712) lt!943080))))

(assert (= (and d!766257 c!431639) b!2679020))

(assert (= (and d!766257 (not c!431639)) b!2679023))

(assert (= (or b!2679020 b!2679023) bm!172741))

(assert (= (and d!766257 (not res!1126373)) b!2679022))

(assert (= (and b!2679022 res!1126371) b!2679018))

(assert (= (and b!2679018 res!1126368) b!2679019))

(assert (= (and b!2679019 res!1126369) b!2679021))

(assert (= (and b!2679021 res!1126372) b!2679024))

(assert (= (and b!2679024 res!1126370) b!2679026))

(assert (= (and b!2679026 res!1126367) b!2679025))

(declare-fun m!3047123 () Bool)

(assert (=> b!2679022 m!3047123))

(declare-fun m!3047125 () Bool)

(assert (=> b!2679025 m!3047125))

(declare-fun m!3047127 () Bool)

(assert (=> b!2679025 m!3047127))

(assert (=> b!2679019 m!3047125))

(declare-fun m!3047129 () Bool)

(assert (=> b!2679019 m!3047129))

(assert (=> b!2679019 m!3045825))

(assert (=> b!2679024 m!3047125))

(declare-fun m!3047131 () Bool)

(assert (=> b!2679024 m!3047131))

(assert (=> b!2679024 m!3047131))

(declare-fun m!3047133 () Bool)

(assert (=> b!2679024 m!3047133))

(declare-fun m!3047135 () Bool)

(assert (=> d!766257 m!3047135))

(declare-fun m!3047137 () Bool)

(assert (=> d!766257 m!3047137))

(declare-fun m!3047139 () Bool)

(assert (=> d!766257 m!3047139))

(assert (=> d!766257 m!3045901))

(declare-fun m!3047141 () Bool)

(assert (=> b!2679023 m!3047141))

(assert (=> b!2679026 m!3047125))

(declare-fun m!3047143 () Bool)

(assert (=> b!2679026 m!3047143))

(assert (=> b!2679026 m!3047143))

(declare-fun m!3047145 () Bool)

(assert (=> b!2679026 m!3047145))

(assert (=> b!2679026 m!3047145))

(declare-fun m!3047147 () Bool)

(assert (=> b!2679026 m!3047147))

(assert (=> b!2679018 m!3047125))

(assert (=> b!2679018 m!3047143))

(assert (=> b!2679018 m!3047143))

(assert (=> b!2679018 m!3047145))

(assert (=> b!2679021 m!3047125))

(assert (=> b!2679021 m!3047143))

(assert (=> b!2679021 m!3047143))

(assert (=> b!2679021 m!3047145))

(assert (=> b!2679021 m!3047145))

(declare-fun m!3047149 () Bool)

(assert (=> b!2679021 m!3047149))

(declare-fun m!3047151 () Bool)

(assert (=> bm!172741 m!3047151))

(assert (=> d!765877 d!766257))

(declare-fun d!766265 () Bool)

(assert (=> d!766265 (= (isEmpty!17655 (maxPrefix!2342 thiss!14116 rules!1712 (++!7525 lt!943080 lt!943082))) (not ((_ is Some!6101) (maxPrefix!2342 thiss!14116 rules!1712 (++!7525 lt!943080 lt!943082)))))))

(assert (=> d!765877 d!766265))

(assert (=> d!765877 d!765983))

(declare-fun d!766267 () Bool)

(assert (=> d!766267 (= (get!9687 (maxPrefix!2342 thiss!14116 rules!1712 lt!943080)) (v!32668 (maxPrefix!2342 thiss!14116 rules!1712 lt!943080)))))

(assert (=> d!765877 d!766267))

(declare-fun d!766269 () Bool)

(assert (=> d!766269 (= (head!6087 (list!11652 (_1!17681 (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 lt!943080))))) (h!36240 (list!11652 (_1!17681 (lex!1941 thiss!14116 rules!1712 (seqFromList!3209 lt!943080))))))))

(assert (=> d!765877 d!766269))

(assert (=> d!765877 d!765887))

(declare-fun d!766271 () Bool)

(assert (=> d!766271 (= (isDefined!4849 (maxPrefix!2342 thiss!14116 rules!1712 (++!7525 lt!943080 lt!943082))) (not (isEmpty!17655 (maxPrefix!2342 thiss!14116 rules!1712 (++!7525 lt!943080 lt!943082)))))))

(declare-fun bs!480072 () Bool)

(assert (= bs!480072 d!766271))

(assert (=> bs!480072 m!3045263))

(assert (=> bs!480072 m!3045773))

(assert (=> d!765877 d!766271))

(declare-fun b!2679028 () Bool)

(declare-fun e!1688719 () List!30918)

(assert (=> b!2679028 (= e!1688719 lt!943303)))

(declare-fun d!766273 () Bool)

(declare-fun e!1688720 () Bool)

(assert (=> d!766273 e!1688720))

(declare-fun res!1126375 () Bool)

(assert (=> d!766273 (=> (not res!1126375) (not e!1688720))))

(declare-fun lt!943629 () List!30918)

(assert (=> d!766273 (= res!1126375 (= (content!4387 lt!943629) ((_ map or) (content!4387 lt!943310) (content!4387 lt!943303))))))

(assert (=> d!766273 (= lt!943629 e!1688719)))

(declare-fun c!431640 () Bool)

(assert (=> d!766273 (= c!431640 ((_ is Nil!30818) lt!943310))))

(assert (=> d!766273 (= (++!7525 lt!943310 lt!943303) lt!943629)))

(declare-fun b!2679031 () Bool)

(assert (=> b!2679031 (= e!1688720 (or (not (= lt!943303 Nil!30818)) (= lt!943629 lt!943310)))))

(declare-fun b!2679029 () Bool)

(assert (=> b!2679029 (= e!1688719 (Cons!30818 (h!36238 lt!943310) (++!7525 (t!224143 lt!943310) lt!943303)))))

(declare-fun b!2679030 () Bool)

(declare-fun res!1126376 () Bool)

(assert (=> b!2679030 (=> (not res!1126376) (not e!1688720))))

(assert (=> b!2679030 (= res!1126376 (= (size!23824 lt!943629) (+ (size!23824 lt!943310) (size!23824 lt!943303))))))

(assert (= (and d!766273 c!431640) b!2679028))

(assert (= (and d!766273 (not c!431640)) b!2679029))

(assert (= (and d!766273 res!1126375) b!2679030))

(assert (= (and b!2679030 res!1126376) b!2679031))

(declare-fun m!3047153 () Bool)

(assert (=> d!766273 m!3047153))

(declare-fun m!3047155 () Bool)

(assert (=> d!766273 m!3047155))

(declare-fun m!3047157 () Bool)

(assert (=> d!766273 m!3047157))

(declare-fun m!3047159 () Bool)

(assert (=> b!2679029 m!3047159))

(declare-fun m!3047161 () Bool)

(assert (=> b!2679030 m!3047161))

(assert (=> b!2679030 m!3046935))

(declare-fun m!3047163 () Bool)

(assert (=> b!2679030 m!3047163))

(assert (=> d!765877 d!766273))

(assert (=> d!765877 d!765897))

(declare-fun d!766275 () Bool)

(assert (=> d!766275 (= (isDefined!4850 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309)))) (not (isEmpty!17657 (getRuleFromTag!839 thiss!14116 rules!1712 (tag!5211 (rule!7119 lt!943309))))))))

(declare-fun bs!480073 () Bool)

(assert (= bs!480073 d!766275))

(assert (=> bs!480073 m!3045777))

(declare-fun m!3047165 () Bool)

(assert (=> bs!480073 m!3047165))

(assert (=> d!765877 d!766275))

(declare-fun d!766277 () Bool)

(assert (=> d!766277 (= (list!11649 (_2!17681 lt!943147)) (list!11653 (c!431444 (_2!17681 lt!943147))))))

(declare-fun bs!480074 () Bool)

(assert (= bs!480074 d!766277))

(declare-fun m!3047167 () Bool)

(assert (=> bs!480074 m!3047167))

(assert (=> b!2678179 d!766277))

(declare-fun b!2679042 () Bool)

(declare-fun e!1688727 () tuple2!30282)

(declare-fun lt!943637 () Option!6102)

(declare-fun lt!943636 () tuple2!30282)

(assert (=> b!2679042 (= e!1688727 (tuple2!30283 (Cons!30820 (_1!17680 (v!32668 lt!943637)) (_1!17683 lt!943636)) (_2!17683 lt!943636)))))

(assert (=> b!2679042 (= lt!943636 (lexList!1178 thiss!14116 rules!1712 (_2!17680 (v!32668 lt!943637))))))

(declare-fun b!2679043 () Bool)

(declare-fun e!1688729 () Bool)

(declare-fun lt!943638 () tuple2!30282)

(assert (=> b!2679043 (= e!1688729 (= (_2!17683 lt!943638) (list!11649 (seqFromList!3209 lt!943080))))))

(declare-fun d!766279 () Bool)

(assert (=> d!766279 e!1688729))

(declare-fun c!431646 () Bool)

(assert (=> d!766279 (= c!431646 (> (size!23829 (_1!17683 lt!943638)) 0))))

(assert (=> d!766279 (= lt!943638 e!1688727)))

(declare-fun c!431645 () Bool)

(assert (=> d!766279 (= c!431645 ((_ is Some!6101) lt!943637))))

(assert (=> d!766279 (= lt!943637 (maxPrefix!2342 thiss!14116 rules!1712 (list!11649 (seqFromList!3209 lt!943080))))))

(assert (=> d!766279 (= (lexList!1178 thiss!14116 rules!1712 (list!11649 (seqFromList!3209 lt!943080))) lt!943638)))

(declare-fun b!2679044 () Bool)

(declare-fun e!1688728 () Bool)

(assert (=> b!2679044 (= e!1688728 (not (isEmpty!17653 (_1!17683 lt!943638))))))

(declare-fun b!2679045 () Bool)

(assert (=> b!2679045 (= e!1688729 e!1688728)))

(declare-fun res!1126379 () Bool)

(assert (=> b!2679045 (= res!1126379 (< (size!23824 (_2!17683 lt!943638)) (size!23824 (list!11649 (seqFromList!3209 lt!943080)))))))

(assert (=> b!2679045 (=> (not res!1126379) (not e!1688728))))

(declare-fun b!2679046 () Bool)

(assert (=> b!2679046 (= e!1688727 (tuple2!30283 Nil!30820 (list!11649 (seqFromList!3209 lt!943080))))))

(assert (= (and d!766279 c!431645) b!2679042))

(assert (= (and d!766279 (not c!431645)) b!2679046))

(assert (= (and d!766279 c!431646) b!2679045))

(assert (= (and d!766279 (not c!431646)) b!2679043))

(assert (= (and b!2679045 res!1126379) b!2679044))

(declare-fun m!3047169 () Bool)

(assert (=> b!2679042 m!3047169))

(declare-fun m!3047171 () Bool)

(assert (=> d!766279 m!3047171))

(assert (=> d!766279 m!3045483))

(declare-fun m!3047173 () Bool)

(assert (=> d!766279 m!3047173))

(declare-fun m!3047175 () Bool)

(assert (=> b!2679044 m!3047175))

(declare-fun m!3047177 () Bool)

(assert (=> b!2679045 m!3047177))

(assert (=> b!2679045 m!3045483))

(declare-fun m!3047179 () Bool)

(assert (=> b!2679045 m!3047179))

(assert (=> b!2678179 d!766279))

(declare-fun d!766281 () Bool)

(assert (=> d!766281 (= (list!11649 (seqFromList!3209 lt!943080)) (list!11653 (c!431444 (seqFromList!3209 lt!943080))))))

(declare-fun bs!480075 () Bool)

(assert (= bs!480075 d!766281))

(declare-fun m!3047181 () Bool)

(assert (=> bs!480075 m!3047181))

(assert (=> b!2678179 d!766281))

(declare-fun d!766283 () Bool)

(declare-fun lt!943639 () Token!8888)

(assert (=> d!766283 (= lt!943639 (apply!7401 (list!11652 (_1!17681 lt!943133)) 0))))

(assert (=> d!766283 (= lt!943639 (apply!7404 (c!431446 (_1!17681 lt!943133)) 0))))

(declare-fun e!1688730 () Bool)

(assert (=> d!766283 e!1688730))

(declare-fun res!1126380 () Bool)

(assert (=> d!766283 (=> (not res!1126380) (not e!1688730))))

(assert (=> d!766283 (= res!1126380 (<= 0 0))))

(assert (=> d!766283 (= (apply!7399 (_1!17681 lt!943133) 0) lt!943639)))

(declare-fun b!2679047 () Bool)

(assert (=> b!2679047 (= e!1688730 (< 0 (size!23822 (_1!17681 lt!943133))))))

(assert (= (and d!766283 res!1126380) b!2679047))

(declare-fun m!3047183 () Bool)

(assert (=> d!766283 m!3047183))

(assert (=> d!766283 m!3047183))

(declare-fun m!3047185 () Bool)

(assert (=> d!766283 m!3047185))

(declare-fun m!3047187 () Bool)

(assert (=> d!766283 m!3047187))

(assert (=> b!2679047 m!3045427))

(assert (=> b!2678129 d!766283))

(declare-fun d!766285 () Bool)

(assert (=> d!766285 (= (isDefined!4849 lt!943362) (not (isEmpty!17655 lt!943362)))))

(declare-fun bs!480076 () Bool)

(assert (= bs!480076 d!766285))

(assert (=> bs!480076 m!3045895))

(assert (=> b!2678425 d!766285))

(assert (=> d!765805 d!766157))

(assert (=> d!765805 d!765841))

(declare-fun d!766287 () Bool)

(assert (=> d!766287 (= (list!11652 (_1!17681 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335)))))) (list!11655 (c!431446 (_1!17681 (lex!1941 thiss!14116 rules!1712 (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 l!4335))))))))))

(declare-fun bs!480077 () Bool)

(assert (= bs!480077 d!766287))

(declare-fun m!3047189 () Bool)

(assert (=> bs!480077 m!3047189))

(assert (=> d!765805 d!766287))

(declare-fun d!766289 () Bool)

(declare-fun lt!943640 () Int)

(assert (=> d!766289 (= lt!943640 (size!23829 (list!11652 (_1!17681 lt!943133))))))

(assert (=> d!766289 (= lt!943640 (size!23828 (c!431446 (_1!17681 lt!943133))))))

(assert (=> d!766289 (= (size!23822 (_1!17681 lt!943133)) lt!943640)))

(declare-fun bs!480078 () Bool)

(assert (= bs!480078 d!766289))

(assert (=> bs!480078 m!3047183))

(assert (=> bs!480078 m!3047183))

(declare-fun m!3047191 () Bool)

(assert (=> bs!480078 m!3047191))

(declare-fun m!3047193 () Bool)

(assert (=> bs!480078 m!3047193))

(assert (=> d!765805 d!766289))

(declare-fun d!766291 () Bool)

(assert (=> d!766291 (= (list!11652 (singletonSeq!2106 (h!36240 l!4335))) (list!11655 (c!431446 (singletonSeq!2106 (h!36240 l!4335)))))))

(declare-fun bs!480079 () Bool)

(assert (= bs!480079 d!766291))

(declare-fun m!3047195 () Bool)

(assert (=> bs!480079 m!3047195))

(assert (=> d!765805 d!766291))

(assert (=> d!765805 d!765903))

(assert (=> d!765805 d!766151))

(declare-fun b!2679048 () Bool)

(declare-fun e!1688731 () List!30918)

(assert (=> b!2679048 (= e!1688731 (printList!1196 thiss!14116 (t!224145 (Cons!30820 (h!36240 l!4335) Nil!30820))))))

(declare-fun d!766293 () Bool)

(declare-fun e!1688732 () Bool)

(assert (=> d!766293 e!1688732))

(declare-fun res!1126381 () Bool)

(assert (=> d!766293 (=> (not res!1126381) (not e!1688732))))

(declare-fun lt!943641 () List!30918)

(assert (=> d!766293 (= res!1126381 (= (content!4387 lt!943641) ((_ map or) (content!4387 (list!11649 (charsOf!2970 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820))))) (content!4387 (printList!1196 thiss!14116 (t!224145 (Cons!30820 (h!36240 l!4335) Nil!30820)))))))))

(assert (=> d!766293 (= lt!943641 e!1688731)))

(declare-fun c!431647 () Bool)

(assert (=> d!766293 (= c!431647 ((_ is Nil!30818) (list!11649 (charsOf!2970 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820))))))))

(assert (=> d!766293 (= (++!7525 (list!11649 (charsOf!2970 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820)))) (printList!1196 thiss!14116 (t!224145 (Cons!30820 (h!36240 l!4335) Nil!30820)))) lt!943641)))

(declare-fun b!2679051 () Bool)

(assert (=> b!2679051 (= e!1688732 (or (not (= (printList!1196 thiss!14116 (t!224145 (Cons!30820 (h!36240 l!4335) Nil!30820))) Nil!30818)) (= lt!943641 (list!11649 (charsOf!2970 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820)))))))))

(declare-fun b!2679049 () Bool)

(assert (=> b!2679049 (= e!1688731 (Cons!30818 (h!36238 (list!11649 (charsOf!2970 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820))))) (++!7525 (t!224143 (list!11649 (charsOf!2970 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820))))) (printList!1196 thiss!14116 (t!224145 (Cons!30820 (h!36240 l!4335) Nil!30820))))))))

(declare-fun b!2679050 () Bool)

(declare-fun res!1126382 () Bool)

(assert (=> b!2679050 (=> (not res!1126382) (not e!1688732))))

(assert (=> b!2679050 (= res!1126382 (= (size!23824 lt!943641) (+ (size!23824 (list!11649 (charsOf!2970 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820))))) (size!23824 (printList!1196 thiss!14116 (t!224145 (Cons!30820 (h!36240 l!4335) Nil!30820)))))))))

(assert (= (and d!766293 c!431647) b!2679048))

(assert (= (and d!766293 (not c!431647)) b!2679049))

(assert (= (and d!766293 res!1126381) b!2679050))

(assert (= (and b!2679050 res!1126382) b!2679051))

(declare-fun m!3047197 () Bool)

(assert (=> d!766293 m!3047197))

(assert (=> d!766293 m!3045589))

(declare-fun m!3047199 () Bool)

(assert (=> d!766293 m!3047199))

(assert (=> d!766293 m!3045591))

(declare-fun m!3047201 () Bool)

(assert (=> d!766293 m!3047201))

(assert (=> b!2679049 m!3045591))

(declare-fun m!3047203 () Bool)

(assert (=> b!2679049 m!3047203))

(declare-fun m!3047205 () Bool)

(assert (=> b!2679050 m!3047205))

(assert (=> b!2679050 m!3045589))

(declare-fun m!3047207 () Bool)

(assert (=> b!2679050 m!3047207))

(assert (=> b!2679050 m!3045591))

(declare-fun m!3047209 () Bool)

(assert (=> b!2679050 m!3047209))

(assert (=> b!2678205 d!766293))

(declare-fun d!766295 () Bool)

(assert (=> d!766295 (= (list!11649 (charsOf!2970 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820)))) (list!11653 (c!431444 (charsOf!2970 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820))))))))

(declare-fun bs!480080 () Bool)

(assert (= bs!480080 d!766295))

(declare-fun m!3047211 () Bool)

(assert (=> bs!480080 m!3047211))

(assert (=> b!2678205 d!766295))

(declare-fun d!766297 () Bool)

(declare-fun lt!943642 () BalanceConc!18910)

(assert (=> d!766297 (= (list!11649 lt!943642) (originalCharacters!5475 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820))))))

(assert (=> d!766297 (= lt!943642 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820))))) (value!151811 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820)))))))

(assert (=> d!766297 (= (charsOf!2970 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820))) lt!943642)))

(declare-fun b_lambda!81835 () Bool)

(assert (=> (not b_lambda!81835) (not d!766297)))

(declare-fun t!224283 () Bool)

(declare-fun tb!150457 () Bool)

(assert (=> (and b!2678471 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820)))))) t!224283) tb!150457))

(declare-fun b!2679052 () Bool)

(declare-fun e!1688733 () Bool)

(declare-fun tp!846907 () Bool)

(assert (=> b!2679052 (= e!1688733 (and (inv!41845 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820))))) (value!151811 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820)))))) tp!846907))))

(declare-fun result!185816 () Bool)

(assert (=> tb!150457 (= result!185816 (and (inv!41846 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820))))) (value!151811 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820))))) e!1688733))))

(assert (= tb!150457 b!2679052))

(declare-fun m!3047213 () Bool)

(assert (=> b!2679052 m!3047213))

(declare-fun m!3047215 () Bool)

(assert (=> tb!150457 m!3047215))

(assert (=> d!766297 t!224283))

(declare-fun b_and!198273 () Bool)

(assert (= b_and!198251 (and (=> t!224283 result!185816) b_and!198273)))

(declare-fun tb!150459 () Bool)

(declare-fun t!224285 () Bool)

(assert (=> (and b!2677966 (= (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820)))))) t!224285) tb!150459))

(declare-fun result!185818 () Bool)

(assert (= result!185818 result!185816))

(assert (=> d!766297 t!224285))

(declare-fun b_and!198275 () Bool)

(assert (= b_and!198243 (and (=> t!224285 result!185818) b_and!198275)))

(declare-fun tb!150461 () Bool)

(declare-fun t!224287 () Bool)

(assert (=> (and b!2678454 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820)))))) t!224287) tb!150461))

(declare-fun result!185820 () Bool)

(assert (= result!185820 result!185816))

(assert (=> d!766297 t!224287))

(declare-fun b_and!198277 () Bool)

(assert (= b_and!198245 (and (=> t!224287 result!185820) b_and!198277)))

(declare-fun t!224289 () Bool)

(declare-fun tb!150463 () Bool)

(assert (=> (and b!2677970 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820)))))) t!224289) tb!150463))

(declare-fun result!185822 () Bool)

(assert (= result!185822 result!185816))

(assert (=> d!766297 t!224289))

(declare-fun b_and!198279 () Bool)

(assert (= b_and!198249 (and (=> t!224289 result!185822) b_and!198279)))

(declare-fun t!224291 () Bool)

(declare-fun tb!150465 () Bool)

(assert (=> (and b!2677967 (= (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820)))))) t!224291) tb!150465))

(declare-fun result!185824 () Bool)

(assert (= result!185824 result!185816))

(assert (=> d!766297 t!224291))

(declare-fun b_and!198281 () Bool)

(assert (= b_and!198247 (and (=> t!224291 result!185824) b_and!198281)))

(declare-fun m!3047217 () Bool)

(assert (=> d!766297 m!3047217))

(declare-fun m!3047219 () Bool)

(assert (=> d!766297 m!3047219))

(assert (=> b!2678205 d!766297))

(declare-fun d!766299 () Bool)

(declare-fun c!431648 () Bool)

(assert (=> d!766299 (= c!431648 ((_ is Cons!30820) (t!224145 (Cons!30820 (h!36240 l!4335) Nil!30820))))))

(declare-fun e!1688734 () List!30918)

(assert (=> d!766299 (= (printList!1196 thiss!14116 (t!224145 (Cons!30820 (h!36240 l!4335) Nil!30820))) e!1688734)))

(declare-fun b!2679053 () Bool)

(assert (=> b!2679053 (= e!1688734 (++!7525 (list!11649 (charsOf!2970 (h!36240 (t!224145 (Cons!30820 (h!36240 l!4335) Nil!30820))))) (printList!1196 thiss!14116 (t!224145 (t!224145 (Cons!30820 (h!36240 l!4335) Nil!30820))))))))

(declare-fun b!2679054 () Bool)

(assert (=> b!2679054 (= e!1688734 Nil!30818)))

(assert (= (and d!766299 c!431648) b!2679053))

(assert (= (and d!766299 (not c!431648)) b!2679054))

(declare-fun m!3047221 () Bool)

(assert (=> b!2679053 m!3047221))

(assert (=> b!2679053 m!3047221))

(declare-fun m!3047223 () Bool)

(assert (=> b!2679053 m!3047223))

(declare-fun m!3047225 () Bool)

(assert (=> b!2679053 m!3047225))

(assert (=> b!2679053 m!3047223))

(assert (=> b!2679053 m!3047225))

(declare-fun m!3047227 () Bool)

(assert (=> b!2679053 m!3047227))

(assert (=> b!2678205 d!766299))

(declare-fun d!766301 () Bool)

(declare-fun charsToInt!0 (List!30917) (_ BitVec 32))

(assert (=> d!766301 (= (inv!16 (value!151811 (h!36240 l!4335))) (= (charsToInt!0 (text!34964 (value!151811 (h!36240 l!4335)))) (value!151802 (value!151811 (h!36240 l!4335)))))))

(declare-fun bs!480081 () Bool)

(assert (= bs!480081 d!766301))

(declare-fun m!3047229 () Bool)

(assert (=> bs!480081 m!3047229))

(assert (=> b!2678118 d!766301))

(assert (=> b!2678427 d!765957))

(declare-fun d!766303 () Bool)

(declare-fun dynLambda!13419 (Int BalanceConc!18910) TokenValue!4931)

(assert (=> d!766303 (= (apply!7402 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))) (seqFromList!3209 (originalCharacters!5475 (_1!17680 (get!9687 lt!943362))))) (dynLambda!13419 (toValue!6659 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362))))) (seqFromList!3209 (originalCharacters!5475 (_1!17680 (get!9687 lt!943362))))))))

(declare-fun b_lambda!81837 () Bool)

(assert (=> (not b_lambda!81837) (not d!766303)))

(declare-fun tb!150467 () Bool)

(declare-fun t!224293 () Bool)

(assert (=> (and b!2677970 (= (toValue!6659 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toValue!6659 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))) t!224293) tb!150467))

(declare-fun result!185826 () Bool)

(assert (=> tb!150467 (= result!185826 (inv!21 (dynLambda!13419 (toValue!6659 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362))))) (seqFromList!3209 (originalCharacters!5475 (_1!17680 (get!9687 lt!943362)))))))))

(declare-fun m!3047231 () Bool)

(assert (=> tb!150467 m!3047231))

(assert (=> d!766303 t!224293))

(declare-fun b_and!198283 () Bool)

(assert (= b_and!198129 (and (=> t!224293 result!185826) b_and!198283)))

(declare-fun t!224295 () Bool)

(declare-fun tb!150469 () Bool)

(assert (=> (and b!2677967 (= (toValue!6659 (transformation!4709 (h!36239 rules!1712))) (toValue!6659 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))) t!224295) tb!150469))

(declare-fun result!185830 () Bool)

(assert (= result!185830 result!185826))

(assert (=> d!766303 t!224295))

(declare-fun b_and!198285 () Bool)

(assert (= b_and!198133 (and (=> t!224295 result!185830) b_and!198285)))

(declare-fun tb!150471 () Bool)

(declare-fun t!224297 () Bool)

(assert (=> (and b!2678471 (= (toValue!6659 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (toValue!6659 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))) t!224297) tb!150471))

(declare-fun result!185832 () Bool)

(assert (= result!185832 result!185826))

(assert (=> d!766303 t!224297))

(declare-fun b_and!198287 () Bool)

(assert (= b_and!198189 (and (=> t!224297 result!185832) b_and!198287)))

(declare-fun t!224299 () Bool)

(declare-fun tb!150473 () Bool)

(assert (=> (and b!2677966 (= (toValue!6659 (transformation!4709 (rule!7119 separatorToken!152))) (toValue!6659 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))) t!224299) tb!150473))

(declare-fun result!185834 () Bool)

(assert (= result!185834 result!185826))

(assert (=> d!766303 t!224299))

(declare-fun b_and!198289 () Bool)

(assert (= b_and!198137 (and (=> t!224299 result!185834) b_and!198289)))

(declare-fun t!224301 () Bool)

(declare-fun tb!150475 () Bool)

(assert (=> (and b!2678454 (= (toValue!6659 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toValue!6659 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))) t!224301) tb!150475))

(declare-fun result!185836 () Bool)

(assert (= result!185836 result!185826))

(assert (=> d!766303 t!224301))

(declare-fun b_and!198291 () Bool)

(assert (= b_and!198185 (and (=> t!224301 result!185836) b_and!198291)))

(assert (=> d!766303 m!3045891))

(declare-fun m!3047233 () Bool)

(assert (=> d!766303 m!3047233))

(assert (=> b!2678427 d!766303))

(declare-fun d!766305 () Bool)

(assert (=> d!766305 (= (seqFromList!3209 (originalCharacters!5475 (_1!17680 (get!9687 lt!943362)))) (fromListB!1451 (originalCharacters!5475 (_1!17680 (get!9687 lt!943362)))))))

(declare-fun bs!480082 () Bool)

(assert (= bs!480082 d!766305))

(declare-fun m!3047235 () Bool)

(assert (=> bs!480082 m!3047235))

(assert (=> b!2678427 d!766305))

(assert (=> bs!479981 d!765805))

(declare-fun d!766307 () Bool)

(declare-fun lt!943643 () Int)

(assert (=> d!766307 (= lt!943643 (size!23829 (list!11652 lt!943077)))))

(assert (=> d!766307 (= lt!943643 (size!23828 (c!431446 lt!943077)))))

(assert (=> d!766307 (= (size!23822 lt!943077) lt!943643)))

(declare-fun bs!480083 () Bool)

(assert (= bs!480083 d!766307))

(assert (=> bs!480083 m!3045541))

(assert (=> bs!480083 m!3045541))

(declare-fun m!3047237 () Bool)

(assert (=> bs!480083 m!3047237))

(declare-fun m!3047239 () Bool)

(assert (=> bs!480083 m!3047239))

(assert (=> b!2678195 d!766307))

(declare-fun bs!480084 () Bool)

(declare-fun d!766309 () Bool)

(assert (= bs!480084 (and d!766309 d!766061)))

(declare-fun lambda!100075 () Int)

(assert (=> bs!480084 (= (= (toValue!6659 (transformation!4709 (rule!7119 separatorToken!152))) (toValue!6659 (transformation!4709 (h!36239 rules!1712)))) (= lambda!100075 lambda!100065))))

(declare-fun bs!480085 () Bool)

(assert (= bs!480085 (and d!766309 d!766103)))

(assert (=> bs!480085 (= (= (toValue!6659 (transformation!4709 (rule!7119 separatorToken!152))) (toValue!6659 (transformation!4709 (rule!7119 (h!36240 l!4335))))) (= lambda!100075 lambda!100067))))

(assert (=> d!766309 true))

(assert (=> d!766309 (< (dynLambda!13408 order!17019 (toValue!6659 (transformation!4709 (rule!7119 separatorToken!152)))) (dynLambda!13418 order!17031 lambda!100075))))

(assert (=> d!766309 (= (equivClasses!1855 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toValue!6659 (transformation!4709 (rule!7119 separatorToken!152)))) (Forall2!797 lambda!100075))))

(declare-fun bs!480086 () Bool)

(assert (= bs!480086 d!766309))

(declare-fun m!3047241 () Bool)

(assert (=> bs!480086 m!3047241))

(assert (=> b!2678430 d!766309))

(declare-fun d!766311 () Bool)

(declare-fun lt!943644 () Int)

(assert (=> d!766311 (>= lt!943644 0)))

(declare-fun e!1688738 () Int)

(assert (=> d!766311 (= lt!943644 e!1688738)))

(declare-fun c!431649 () Bool)

(assert (=> d!766311 (= c!431649 ((_ is Nil!30818) (originalCharacters!5475 (h!36240 l!4335))))))

(assert (=> d!766311 (= (size!23824 (originalCharacters!5475 (h!36240 l!4335))) lt!943644)))

(declare-fun b!2679057 () Bool)

(assert (=> b!2679057 (= e!1688738 0)))

(declare-fun b!2679058 () Bool)

(assert (=> b!2679058 (= e!1688738 (+ 1 (size!23824 (t!224143 (originalCharacters!5475 (h!36240 l!4335))))))))

(assert (= (and d!766311 c!431649) b!2679057))

(assert (= (and d!766311 (not c!431649)) b!2679058))

(declare-fun m!3047243 () Bool)

(assert (=> b!2679058 m!3047243))

(assert (=> b!2678184 d!766311))

(declare-fun b!2679059 () Bool)

(declare-fun e!1688739 () Bool)

(declare-fun e!1688740 () Bool)

(assert (=> b!2679059 (= e!1688739 e!1688740)))

(declare-fun c!431651 () Bool)

(assert (=> b!2679059 (= c!431651 ((_ is IntegerValue!14794) (value!151811 (h!36240 (t!224145 l!4335)))))))

(declare-fun b!2679060 () Bool)

(declare-fun res!1126383 () Bool)

(declare-fun e!1688741 () Bool)

(assert (=> b!2679060 (=> res!1126383 e!1688741)))

(assert (=> b!2679060 (= res!1126383 (not ((_ is IntegerValue!14795) (value!151811 (h!36240 (t!224145 l!4335))))))))

(assert (=> b!2679060 (= e!1688740 e!1688741)))

(declare-fun b!2679061 () Bool)

(assert (=> b!2679061 (= e!1688740 (inv!17 (value!151811 (h!36240 (t!224145 l!4335)))))))

(declare-fun b!2679062 () Bool)

(assert (=> b!2679062 (= e!1688739 (inv!16 (value!151811 (h!36240 (t!224145 l!4335)))))))

(declare-fun b!2679063 () Bool)

(assert (=> b!2679063 (= e!1688741 (inv!15 (value!151811 (h!36240 (t!224145 l!4335)))))))

(declare-fun d!766313 () Bool)

(declare-fun c!431650 () Bool)

(assert (=> d!766313 (= c!431650 ((_ is IntegerValue!14793) (value!151811 (h!36240 (t!224145 l!4335)))))))

(assert (=> d!766313 (= (inv!21 (value!151811 (h!36240 (t!224145 l!4335)))) e!1688739)))

(assert (= (and d!766313 c!431650) b!2679062))

(assert (= (and d!766313 (not c!431650)) b!2679059))

(assert (= (and b!2679059 c!431651) b!2679061))

(assert (= (and b!2679059 (not c!431651)) b!2679060))

(assert (= (and b!2679060 (not res!1126383)) b!2679063))

(declare-fun m!3047245 () Bool)

(assert (=> b!2679061 m!3047245))

(declare-fun m!3047247 () Bool)

(assert (=> b!2679062 m!3047247))

(declare-fun m!3047249 () Bool)

(assert (=> b!2679063 m!3047249))

(assert (=> b!2678469 d!766313))

(assert (=> b!2678197 d!765939))

(declare-fun d!766315 () Bool)

(assert (=> d!766315 (= (head!6087 (drop!1675 lt!943176 0)) (h!36240 (drop!1675 lt!943176 0)))))

(assert (=> b!2678197 d!766315))

(declare-fun d!766317 () Bool)

(declare-fun lt!943647 () Token!8888)

(assert (=> d!766317 (contains!5933 lt!943176 lt!943647)))

(declare-fun e!1688747 () Token!8888)

(assert (=> d!766317 (= lt!943647 e!1688747)))

(declare-fun c!431654 () Bool)

(assert (=> d!766317 (= c!431654 (= 0 0))))

(declare-fun e!1688746 () Bool)

(assert (=> d!766317 e!1688746))

(declare-fun res!1126386 () Bool)

(assert (=> d!766317 (=> (not res!1126386) (not e!1688746))))

(assert (=> d!766317 (= res!1126386 (<= 0 0))))

(assert (=> d!766317 (= (apply!7401 lt!943176 0) lt!943647)))

(declare-fun b!2679070 () Bool)

(assert (=> b!2679070 (= e!1688746 (< 0 (size!23829 lt!943176)))))

(declare-fun b!2679071 () Bool)

(assert (=> b!2679071 (= e!1688747 (head!6087 lt!943176))))

(declare-fun b!2679072 () Bool)

(assert (=> b!2679072 (= e!1688747 (apply!7401 (tail!4325 lt!943176) (- 0 1)))))

(assert (= (and d!766317 res!1126386) b!2679070))

(assert (= (and d!766317 c!431654) b!2679071))

(assert (= (and d!766317 (not c!431654)) b!2679072))

(declare-fun m!3047251 () Bool)

(assert (=> d!766317 m!3047251))

(declare-fun m!3047253 () Bool)

(assert (=> b!2679070 m!3047253))

(declare-fun m!3047255 () Bool)

(assert (=> b!2679071 m!3047255))

(declare-fun m!3047257 () Bool)

(assert (=> b!2679072 m!3047257))

(assert (=> b!2679072 m!3047257))

(declare-fun m!3047259 () Bool)

(assert (=> b!2679072 m!3047259))

(assert (=> b!2678197 d!766317))

(declare-fun d!766319 () Bool)

(declare-fun lt!943648 () BalanceConc!18910)

(assert (=> d!766319 (= (list!11649 lt!943648) (originalCharacters!5475 (apply!7399 lt!943077 0)))))

(assert (=> d!766319 (= lt!943648 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (apply!7399 lt!943077 0)))) (value!151811 (apply!7399 lt!943077 0))))))

(assert (=> d!766319 (= (charsOf!2970 (apply!7399 lt!943077 0)) lt!943648)))

(declare-fun b_lambda!81839 () Bool)

(assert (=> (not b_lambda!81839) (not d!766319)))

(declare-fun t!224303 () Bool)

(declare-fun tb!150477 () Bool)

(assert (=> (and b!2677966 (= (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toChars!6518 (transformation!4709 (rule!7119 (apply!7399 lt!943077 0))))) t!224303) tb!150477))

(declare-fun b!2679073 () Bool)

(declare-fun e!1688748 () Bool)

(declare-fun tp!846908 () Bool)

(assert (=> b!2679073 (= e!1688748 (and (inv!41845 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (apply!7399 lt!943077 0)))) (value!151811 (apply!7399 lt!943077 0))))) tp!846908))))

(declare-fun result!185838 () Bool)

(assert (=> tb!150477 (= result!185838 (and (inv!41846 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (apply!7399 lt!943077 0)))) (value!151811 (apply!7399 lt!943077 0)))) e!1688748))))

(assert (= tb!150477 b!2679073))

(declare-fun m!3047261 () Bool)

(assert (=> b!2679073 m!3047261))

(declare-fun m!3047263 () Bool)

(assert (=> tb!150477 m!3047263))

(assert (=> d!766319 t!224303))

(declare-fun b_and!198293 () Bool)

(assert (= b_and!198275 (and (=> t!224303 result!185838) b_and!198293)))

(declare-fun tb!150479 () Bool)

(declare-fun t!224305 () Bool)

(assert (=> (and b!2678454 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toChars!6518 (transformation!4709 (rule!7119 (apply!7399 lt!943077 0))))) t!224305) tb!150479))

(declare-fun result!185840 () Bool)

(assert (= result!185840 result!185838))

(assert (=> d!766319 t!224305))

(declare-fun b_and!198295 () Bool)

(assert (= b_and!198277 (and (=> t!224305 result!185840) b_and!198295)))

(declare-fun t!224307 () Bool)

(declare-fun tb!150481 () Bool)

(assert (=> (and b!2678471 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (toChars!6518 (transformation!4709 (rule!7119 (apply!7399 lt!943077 0))))) t!224307) tb!150481))

(declare-fun result!185842 () Bool)

(assert (= result!185842 result!185838))

(assert (=> d!766319 t!224307))

(declare-fun b_and!198297 () Bool)

(assert (= b_and!198273 (and (=> t!224307 result!185842) b_and!198297)))

(declare-fun tb!150483 () Bool)

(declare-fun t!224309 () Bool)

(assert (=> (and b!2677970 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toChars!6518 (transformation!4709 (rule!7119 (apply!7399 lt!943077 0))))) t!224309) tb!150483))

(declare-fun result!185844 () Bool)

(assert (= result!185844 result!185838))

(assert (=> d!766319 t!224309))

(declare-fun b_and!198299 () Bool)

(assert (= b_and!198279 (and (=> t!224309 result!185844) b_and!198299)))

(declare-fun tb!150485 () Bool)

(declare-fun t!224311 () Bool)

(assert (=> (and b!2677967 (= (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toChars!6518 (transformation!4709 (rule!7119 (apply!7399 lt!943077 0))))) t!224311) tb!150485))

(declare-fun result!185846 () Bool)

(assert (= result!185846 result!185838))

(assert (=> d!766319 t!224311))

(declare-fun b_and!198301 () Bool)

(assert (= b_and!198281 (and (=> t!224311 result!185846) b_and!198301)))

(declare-fun m!3047265 () Bool)

(assert (=> d!766319 m!3047265))

(declare-fun m!3047267 () Bool)

(assert (=> d!766319 m!3047267))

(assert (=> b!2678197 d!766319))

(declare-fun d!766321 () Bool)

(assert (=> d!766321 (= (tail!4325 (drop!1675 lt!943174 0)) (drop!1675 lt!943174 (+ 0 1)))))

(declare-fun lt!943651 () Unit!45039)

(declare-fun choose!15872 (List!30920 Int) Unit!45039)

(assert (=> d!766321 (= lt!943651 (choose!15872 lt!943174 0))))

(declare-fun e!1688751 () Bool)

(assert (=> d!766321 e!1688751))

(declare-fun res!1126389 () Bool)

(assert (=> d!766321 (=> (not res!1126389) (not e!1688751))))

(assert (=> d!766321 (= res!1126389 (>= 0 0))))

(assert (=> d!766321 (= (lemmaDropTail!856 lt!943174 0) lt!943651)))

(declare-fun b!2679076 () Bool)

(assert (=> b!2679076 (= e!1688751 (< 0 (size!23829 lt!943174)))))

(assert (= (and d!766321 res!1126389) b!2679076))

(assert (=> d!766321 m!3045559))

(assert (=> d!766321 m!3045559))

(assert (=> d!766321 m!3045571))

(assert (=> d!766321 m!3045573))

(declare-fun m!3047269 () Bool)

(assert (=> d!766321 m!3047269))

(declare-fun m!3047271 () Bool)

(assert (=> b!2679076 m!3047271))

(assert (=> b!2678197 d!766321))

(declare-fun bm!172744 () Bool)

(declare-fun call!172749 () Int)

(assert (=> bm!172744 (= call!172749 (size!23829 lt!943176))))

(declare-fun b!2679096 () Bool)

(declare-fun e!1688765 () List!30920)

(declare-fun e!1688762 () List!30920)

(assert (=> b!2679096 (= e!1688765 e!1688762)))

(declare-fun c!431665 () Bool)

(assert (=> b!2679096 (= c!431665 (<= 0 0))))

(declare-fun b!2679097 () Bool)

(assert (=> b!2679097 (= e!1688762 (drop!1675 (t!224145 lt!943176) (- 0 1)))))

(declare-fun b!2679098 () Bool)

(declare-fun e!1688764 () Int)

(assert (=> b!2679098 (= e!1688764 0)))

(declare-fun b!2679099 () Bool)

(assert (=> b!2679099 (= e!1688765 Nil!30820)))

(declare-fun b!2679100 () Bool)

(assert (=> b!2679100 (= e!1688762 lt!943176)))

(declare-fun b!2679101 () Bool)

(assert (=> b!2679101 (= e!1688764 (- call!172749 0))))

(declare-fun b!2679102 () Bool)

(declare-fun e!1688763 () Int)

(assert (=> b!2679102 (= e!1688763 call!172749)))

(declare-fun b!2679103 () Bool)

(declare-fun e!1688766 () Bool)

(declare-fun lt!943654 () List!30920)

(assert (=> b!2679103 (= e!1688766 (= (size!23829 lt!943654) e!1688763))))

(declare-fun c!431664 () Bool)

(assert (=> b!2679103 (= c!431664 (<= 0 0))))

(declare-fun b!2679095 () Bool)

(assert (=> b!2679095 (= e!1688763 e!1688764)))

(declare-fun c!431666 () Bool)

(assert (=> b!2679095 (= c!431666 (>= 0 call!172749))))

(declare-fun d!766323 () Bool)

(assert (=> d!766323 e!1688766))

(declare-fun res!1126392 () Bool)

(assert (=> d!766323 (=> (not res!1126392) (not e!1688766))))

(assert (=> d!766323 (= res!1126392 (= ((_ map implies) (content!4385 lt!943654) (content!4385 lt!943176)) ((as const (InoxSet Token!8888)) true)))))

(assert (=> d!766323 (= lt!943654 e!1688765)))

(declare-fun c!431663 () Bool)

(assert (=> d!766323 (= c!431663 ((_ is Nil!30820) lt!943176))))

(assert (=> d!766323 (= (drop!1675 lt!943176 0) lt!943654)))

(assert (= (and d!766323 c!431663) b!2679099))

(assert (= (and d!766323 (not c!431663)) b!2679096))

(assert (= (and b!2679096 c!431665) b!2679100))

(assert (= (and b!2679096 (not c!431665)) b!2679097))

(assert (= (and d!766323 res!1126392) b!2679103))

(assert (= (and b!2679103 c!431664) b!2679102))

(assert (= (and b!2679103 (not c!431664)) b!2679095))

(assert (= (and b!2679095 c!431666) b!2679098))

(assert (= (and b!2679095 (not c!431666)) b!2679101))

(assert (= (or b!2679102 b!2679095 b!2679101) bm!172744))

(assert (=> bm!172744 m!3047253))

(declare-fun m!3047273 () Bool)

(assert (=> b!2679097 m!3047273))

(declare-fun m!3047275 () Bool)

(assert (=> b!2679103 m!3047275))

(declare-fun m!3047277 () Bool)

(assert (=> d!766323 m!3047277))

(declare-fun m!3047279 () Bool)

(assert (=> d!766323 m!3047279))

(assert (=> b!2678197 d!766323))

(declare-fun bm!172745 () Bool)

(declare-fun call!172750 () Int)

(assert (=> bm!172745 (= call!172750 (size!23829 lt!943174))))

(declare-fun b!2679105 () Bool)

(declare-fun e!1688770 () List!30920)

(declare-fun e!1688767 () List!30920)

(assert (=> b!2679105 (= e!1688770 e!1688767)))

(declare-fun c!431669 () Bool)

(assert (=> b!2679105 (= c!431669 (<= (+ 0 1) 0))))

(declare-fun b!2679106 () Bool)

(assert (=> b!2679106 (= e!1688767 (drop!1675 (t!224145 lt!943174) (- (+ 0 1) 1)))))

(declare-fun b!2679107 () Bool)

(declare-fun e!1688769 () Int)

(assert (=> b!2679107 (= e!1688769 0)))

(declare-fun b!2679108 () Bool)

(assert (=> b!2679108 (= e!1688770 Nil!30820)))

(declare-fun b!2679109 () Bool)

(assert (=> b!2679109 (= e!1688767 lt!943174)))

(declare-fun b!2679110 () Bool)

(assert (=> b!2679110 (= e!1688769 (- call!172750 (+ 0 1)))))

(declare-fun b!2679111 () Bool)

(declare-fun e!1688768 () Int)

(assert (=> b!2679111 (= e!1688768 call!172750)))

(declare-fun b!2679112 () Bool)

(declare-fun e!1688771 () Bool)

(declare-fun lt!943655 () List!30920)

(assert (=> b!2679112 (= e!1688771 (= (size!23829 lt!943655) e!1688768))))

(declare-fun c!431668 () Bool)

(assert (=> b!2679112 (= c!431668 (<= (+ 0 1) 0))))

(declare-fun b!2679104 () Bool)

(assert (=> b!2679104 (= e!1688768 e!1688769)))

(declare-fun c!431670 () Bool)

(assert (=> b!2679104 (= c!431670 (>= (+ 0 1) call!172750))))

(declare-fun d!766325 () Bool)

(assert (=> d!766325 e!1688771))

(declare-fun res!1126393 () Bool)

(assert (=> d!766325 (=> (not res!1126393) (not e!1688771))))

(assert (=> d!766325 (= res!1126393 (= ((_ map implies) (content!4385 lt!943655) (content!4385 lt!943174)) ((as const (InoxSet Token!8888)) true)))))

(assert (=> d!766325 (= lt!943655 e!1688770)))

(declare-fun c!431667 () Bool)

(assert (=> d!766325 (= c!431667 ((_ is Nil!30820) lt!943174))))

(assert (=> d!766325 (= (drop!1675 lt!943174 (+ 0 1)) lt!943655)))

(assert (= (and d!766325 c!431667) b!2679108))

(assert (= (and d!766325 (not c!431667)) b!2679105))

(assert (= (and b!2679105 c!431669) b!2679109))

(assert (= (and b!2679105 (not c!431669)) b!2679106))

(assert (= (and d!766325 res!1126393) b!2679112))

(assert (= (and b!2679112 c!431668) b!2679111))

(assert (= (and b!2679112 (not c!431668)) b!2679104))

(assert (= (and b!2679104 c!431670) b!2679107))

(assert (= (and b!2679104 (not c!431670)) b!2679110))

(assert (= (or b!2679111 b!2679104 b!2679110) bm!172745))

(assert (=> bm!172745 m!3047271))

(declare-fun m!3047281 () Bool)

(assert (=> b!2679106 m!3047281))

(declare-fun m!3047283 () Bool)

(assert (=> b!2679112 m!3047283))

(declare-fun m!3047285 () Bool)

(assert (=> d!766325 m!3047285))

(declare-fun m!3047287 () Bool)

(assert (=> d!766325 m!3047287))

(assert (=> b!2678197 d!766325))

(declare-fun b!2679124 () Bool)

(declare-fun e!1688774 () Bool)

(declare-fun lt!943658 () BalanceConc!18910)

(assert (=> b!2679124 (= e!1688774 (= (list!11649 lt!943658) (++!7525 (list!11649 (BalanceConc!18911 Empty!9648)) (list!11649 (charsOf!2970 (apply!7399 lt!943077 0))))))))

(declare-fun b!2679123 () Bool)

(declare-fun res!1126402 () Bool)

(assert (=> b!2679123 (=> (not res!1126402) (not e!1688774))))

(declare-fun height!1408 (Conc!9648) Int)

(declare-fun ++!7529 (Conc!9648 Conc!9648) Conc!9648)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2679123 (= res!1126402 (>= (height!1408 (++!7529 (c!431444 (BalanceConc!18911 Empty!9648)) (c!431444 (charsOf!2970 (apply!7399 lt!943077 0))))) (max!0 (height!1408 (c!431444 (BalanceConc!18911 Empty!9648))) (height!1408 (c!431444 (charsOf!2970 (apply!7399 lt!943077 0)))))))))

(declare-fun b!2679121 () Bool)

(declare-fun res!1126405 () Bool)

(assert (=> b!2679121 (=> (not res!1126405) (not e!1688774))))

(assert (=> b!2679121 (= res!1126405 (isBalanced!2927 (++!7529 (c!431444 (BalanceConc!18911 Empty!9648)) (c!431444 (charsOf!2970 (apply!7399 lt!943077 0))))))))

(declare-fun b!2679122 () Bool)

(declare-fun res!1126404 () Bool)

(assert (=> b!2679122 (=> (not res!1126404) (not e!1688774))))

(assert (=> b!2679122 (= res!1126404 (<= (height!1408 (++!7529 (c!431444 (BalanceConc!18911 Empty!9648)) (c!431444 (charsOf!2970 (apply!7399 lt!943077 0))))) (+ (max!0 (height!1408 (c!431444 (BalanceConc!18911 Empty!9648))) (height!1408 (c!431444 (charsOf!2970 (apply!7399 lt!943077 0))))) 1)))))

(declare-fun d!766327 () Bool)

(assert (=> d!766327 e!1688774))

(declare-fun res!1126403 () Bool)

(assert (=> d!766327 (=> (not res!1126403) (not e!1688774))))

(declare-fun appendAssocInst!650 (Conc!9648 Conc!9648) Bool)

(assert (=> d!766327 (= res!1126403 (appendAssocInst!650 (c!431444 (BalanceConc!18911 Empty!9648)) (c!431444 (charsOf!2970 (apply!7399 lt!943077 0)))))))

(assert (=> d!766327 (= lt!943658 (BalanceConc!18911 (++!7529 (c!431444 (BalanceConc!18911 Empty!9648)) (c!431444 (charsOf!2970 (apply!7399 lt!943077 0))))))))

(assert (=> d!766327 (= (++!7527 (BalanceConc!18911 Empty!9648) (charsOf!2970 (apply!7399 lt!943077 0))) lt!943658)))

(assert (= (and d!766327 res!1126403) b!2679121))

(assert (= (and b!2679121 res!1126405) b!2679122))

(assert (= (and b!2679122 res!1126404) b!2679123))

(assert (= (and b!2679123 res!1126402) b!2679124))

(declare-fun m!3047289 () Bool)

(assert (=> b!2679121 m!3047289))

(assert (=> b!2679121 m!3047289))

(declare-fun m!3047291 () Bool)

(assert (=> b!2679121 m!3047291))

(declare-fun m!3047293 () Bool)

(assert (=> b!2679122 m!3047293))

(assert (=> b!2679122 m!3047289))

(declare-fun m!3047295 () Bool)

(assert (=> b!2679122 m!3047295))

(assert (=> b!2679122 m!3047293))

(declare-fun m!3047297 () Bool)

(assert (=> b!2679122 m!3047297))

(assert (=> b!2679122 m!3047289))

(declare-fun m!3047299 () Bool)

(assert (=> b!2679122 m!3047299))

(assert (=> b!2679122 m!3047295))

(assert (=> b!2679123 m!3047293))

(assert (=> b!2679123 m!3047289))

(assert (=> b!2679123 m!3047295))

(assert (=> b!2679123 m!3047293))

(assert (=> b!2679123 m!3047297))

(assert (=> b!2679123 m!3047289))

(assert (=> b!2679123 m!3047299))

(assert (=> b!2679123 m!3047295))

(declare-fun m!3047301 () Bool)

(assert (=> d!766327 m!3047301))

(assert (=> d!766327 m!3047289))

(declare-fun m!3047303 () Bool)

(assert (=> b!2679124 m!3047303))

(assert (=> b!2679124 m!3045549))

(assert (=> b!2679124 m!3045563))

(declare-fun m!3047305 () Bool)

(assert (=> b!2679124 m!3047305))

(assert (=> b!2679124 m!3045549))

(assert (=> b!2679124 m!3047305))

(declare-fun m!3047307 () Bool)

(assert (=> b!2679124 m!3047307))

(assert (=> b!2678197 d!766327))

(declare-fun d!766329 () Bool)

(declare-fun lt!943661 () BalanceConc!18910)

(assert (=> d!766329 (= (list!11649 lt!943661) (printListTailRec!529 thiss!14116 (dropList!978 lt!943077 (+ 0 1)) (list!11649 (++!7527 (BalanceConc!18911 Empty!9648) (charsOf!2970 (apply!7399 lt!943077 0))))))))

(declare-fun e!1688776 () BalanceConc!18910)

(assert (=> d!766329 (= lt!943661 e!1688776)))

(declare-fun c!431674 () Bool)

(assert (=> d!766329 (= c!431674 (>= (+ 0 1) (size!23822 lt!943077)))))

(declare-fun e!1688775 () Bool)

(assert (=> d!766329 e!1688775))

(declare-fun res!1126406 () Bool)

(assert (=> d!766329 (=> (not res!1126406) (not e!1688775))))

(assert (=> d!766329 (= res!1126406 (>= (+ 0 1) 0))))

(assert (=> d!766329 (= (printTailRec!1157 thiss!14116 lt!943077 (+ 0 1) (++!7527 (BalanceConc!18911 Empty!9648) (charsOf!2970 (apply!7399 lt!943077 0)))) lt!943661)))

(declare-fun b!2679125 () Bool)

(assert (=> b!2679125 (= e!1688775 (<= (+ 0 1) (size!23822 lt!943077)))))

(declare-fun b!2679126 () Bool)

(assert (=> b!2679126 (= e!1688776 (++!7527 (BalanceConc!18911 Empty!9648) (charsOf!2970 (apply!7399 lt!943077 0))))))

(declare-fun b!2679127 () Bool)

(assert (=> b!2679127 (= e!1688776 (printTailRec!1157 thiss!14116 lt!943077 (+ 0 1 1) (++!7527 (++!7527 (BalanceConc!18911 Empty!9648) (charsOf!2970 (apply!7399 lt!943077 0))) (charsOf!2970 (apply!7399 lt!943077 (+ 0 1))))))))

(declare-fun lt!943665 () List!30920)

(assert (=> b!2679127 (= lt!943665 (list!11652 lt!943077))))

(declare-fun lt!943664 () Unit!45039)

(assert (=> b!2679127 (= lt!943664 (lemmaDropApply!884 lt!943665 (+ 0 1)))))

(assert (=> b!2679127 (= (head!6087 (drop!1675 lt!943665 (+ 0 1))) (apply!7401 lt!943665 (+ 0 1)))))

(declare-fun lt!943659 () Unit!45039)

(assert (=> b!2679127 (= lt!943659 lt!943664)))

(declare-fun lt!943663 () List!30920)

(assert (=> b!2679127 (= lt!943663 (list!11652 lt!943077))))

(declare-fun lt!943660 () Unit!45039)

(assert (=> b!2679127 (= lt!943660 (lemmaDropTail!856 lt!943663 (+ 0 1)))))

(assert (=> b!2679127 (= (tail!4325 (drop!1675 lt!943663 (+ 0 1))) (drop!1675 lt!943663 (+ 0 1 1)))))

(declare-fun lt!943662 () Unit!45039)

(assert (=> b!2679127 (= lt!943662 lt!943660)))

(assert (= (and d!766329 res!1126406) b!2679125))

(assert (= (and d!766329 c!431674) b!2679126))

(assert (= (and d!766329 (not c!431674)) b!2679127))

(declare-fun m!3047309 () Bool)

(assert (=> d!766329 m!3047309))

(assert (=> d!766329 m!3045547))

(assert (=> d!766329 m!3047309))

(declare-fun m!3047311 () Bool)

(assert (=> d!766329 m!3047311))

(declare-fun m!3047313 () Bool)

(assert (=> d!766329 m!3047313))

(assert (=> d!766329 m!3045565))

(assert (=> d!766329 m!3047311))

(declare-fun m!3047315 () Bool)

(assert (=> d!766329 m!3047315))

(assert (=> b!2679125 m!3045547))

(declare-fun m!3047317 () Bool)

(assert (=> b!2679127 m!3047317))

(declare-fun m!3047319 () Bool)

(assert (=> b!2679127 m!3047319))

(declare-fun m!3047321 () Bool)

(assert (=> b!2679127 m!3047321))

(declare-fun m!3047323 () Bool)

(assert (=> b!2679127 m!3047323))

(declare-fun m!3047325 () Bool)

(assert (=> b!2679127 m!3047325))

(assert (=> b!2679127 m!3045565))

(assert (=> b!2679127 m!3047325))

(declare-fun m!3047327 () Bool)

(assert (=> b!2679127 m!3047327))

(assert (=> b!2679127 m!3047323))

(declare-fun m!3047329 () Bool)

(assert (=> b!2679127 m!3047329))

(declare-fun m!3047331 () Bool)

(assert (=> b!2679127 m!3047331))

(assert (=> b!2679127 m!3047321))

(declare-fun m!3047333 () Bool)

(assert (=> b!2679127 m!3047333))

(declare-fun m!3047335 () Bool)

(assert (=> b!2679127 m!3047335))

(assert (=> b!2679127 m!3045541))

(assert (=> b!2679127 m!3047319))

(declare-fun m!3047337 () Bool)

(assert (=> b!2679127 m!3047337))

(assert (=> b!2679127 m!3047327))

(declare-fun m!3047339 () Bool)

(assert (=> b!2679127 m!3047339))

(assert (=> b!2678197 d!766329))

(declare-fun d!766331 () Bool)

(assert (=> d!766331 (= (head!6087 (drop!1675 lt!943176 0)) (apply!7401 lt!943176 0))))

(declare-fun lt!943668 () Unit!45039)

(declare-fun choose!15873 (List!30920 Int) Unit!45039)

(assert (=> d!766331 (= lt!943668 (choose!15873 lt!943176 0))))

(declare-fun e!1688779 () Bool)

(assert (=> d!766331 e!1688779))

(declare-fun res!1126409 () Bool)

(assert (=> d!766331 (=> (not res!1126409) (not e!1688779))))

(assert (=> d!766331 (= res!1126409 (>= 0 0))))

(assert (=> d!766331 (= (lemmaDropApply!884 lt!943176 0) lt!943668)))

(declare-fun b!2679130 () Bool)

(assert (=> b!2679130 (= e!1688779 (< 0 (size!23829 lt!943176)))))

(assert (= (and d!766331 res!1126409) b!2679130))

(assert (=> d!766331 m!3045557))

(assert (=> d!766331 m!3045557))

(assert (=> d!766331 m!3045575))

(assert (=> d!766331 m!3045555))

(declare-fun m!3047341 () Bool)

(assert (=> d!766331 m!3047341))

(assert (=> b!2679130 m!3047253))

(assert (=> b!2678197 d!766331))

(declare-fun d!766333 () Bool)

(declare-fun lt!943669 () Token!8888)

(assert (=> d!766333 (= lt!943669 (apply!7401 (list!11652 lt!943077) 0))))

(assert (=> d!766333 (= lt!943669 (apply!7404 (c!431446 lt!943077) 0))))

(declare-fun e!1688780 () Bool)

(assert (=> d!766333 e!1688780))

(declare-fun res!1126410 () Bool)

(assert (=> d!766333 (=> (not res!1126410) (not e!1688780))))

(assert (=> d!766333 (= res!1126410 (<= 0 0))))

(assert (=> d!766333 (= (apply!7399 lt!943077 0) lt!943669)))

(declare-fun b!2679131 () Bool)

(assert (=> b!2679131 (= e!1688780 (< 0 (size!23822 lt!943077)))))

(assert (= (and d!766333 res!1126410) b!2679131))

(assert (=> d!766333 m!3045541))

(assert (=> d!766333 m!3045541))

(declare-fun m!3047343 () Bool)

(assert (=> d!766333 m!3047343))

(declare-fun m!3047345 () Bool)

(assert (=> d!766333 m!3047345))

(assert (=> b!2679131 m!3045547))

(assert (=> b!2678197 d!766333))

(declare-fun d!766335 () Bool)

(assert (=> d!766335 (= (tail!4325 (drop!1675 lt!943174 0)) (t!224145 (drop!1675 lt!943174 0)))))

(assert (=> b!2678197 d!766335))

(declare-fun bm!172746 () Bool)

(declare-fun call!172751 () Int)

(assert (=> bm!172746 (= call!172751 (size!23829 lt!943174))))

(declare-fun b!2679133 () Bool)

(declare-fun e!1688784 () List!30920)

(declare-fun e!1688781 () List!30920)

(assert (=> b!2679133 (= e!1688784 e!1688781)))

(declare-fun c!431677 () Bool)

(assert (=> b!2679133 (= c!431677 (<= 0 0))))

(declare-fun b!2679134 () Bool)

(assert (=> b!2679134 (= e!1688781 (drop!1675 (t!224145 lt!943174) (- 0 1)))))

(declare-fun b!2679135 () Bool)

(declare-fun e!1688783 () Int)

(assert (=> b!2679135 (= e!1688783 0)))

(declare-fun b!2679136 () Bool)

(assert (=> b!2679136 (= e!1688784 Nil!30820)))

(declare-fun b!2679137 () Bool)

(assert (=> b!2679137 (= e!1688781 lt!943174)))

(declare-fun b!2679138 () Bool)

(assert (=> b!2679138 (= e!1688783 (- call!172751 0))))

(declare-fun b!2679139 () Bool)

(declare-fun e!1688782 () Int)

(assert (=> b!2679139 (= e!1688782 call!172751)))

(declare-fun b!2679140 () Bool)

(declare-fun e!1688785 () Bool)

(declare-fun lt!943670 () List!30920)

(assert (=> b!2679140 (= e!1688785 (= (size!23829 lt!943670) e!1688782))))

(declare-fun c!431676 () Bool)

(assert (=> b!2679140 (= c!431676 (<= 0 0))))

(declare-fun b!2679132 () Bool)

(assert (=> b!2679132 (= e!1688782 e!1688783)))

(declare-fun c!431678 () Bool)

(assert (=> b!2679132 (= c!431678 (>= 0 call!172751))))

(declare-fun d!766337 () Bool)

(assert (=> d!766337 e!1688785))

(declare-fun res!1126411 () Bool)

(assert (=> d!766337 (=> (not res!1126411) (not e!1688785))))

(assert (=> d!766337 (= res!1126411 (= ((_ map implies) (content!4385 lt!943670) (content!4385 lt!943174)) ((as const (InoxSet Token!8888)) true)))))

(assert (=> d!766337 (= lt!943670 e!1688784)))

(declare-fun c!431675 () Bool)

(assert (=> d!766337 (= c!431675 ((_ is Nil!30820) lt!943174))))

(assert (=> d!766337 (= (drop!1675 lt!943174 0) lt!943670)))

(assert (= (and d!766337 c!431675) b!2679136))

(assert (= (and d!766337 (not c!431675)) b!2679133))

(assert (= (and b!2679133 c!431677) b!2679137))

(assert (= (and b!2679133 (not c!431677)) b!2679134))

(assert (= (and d!766337 res!1126411) b!2679140))

(assert (= (and b!2679140 c!431676) b!2679139))

(assert (= (and b!2679140 (not c!431676)) b!2679132))

(assert (= (and b!2679132 c!431678) b!2679135))

(assert (= (and b!2679132 (not c!431678)) b!2679138))

(assert (= (or b!2679139 b!2679132 b!2679138) bm!172746))

(assert (=> bm!172746 m!3047271))

(declare-fun m!3047347 () Bool)

(assert (=> b!2679134 m!3047347))

(declare-fun m!3047349 () Bool)

(assert (=> b!2679140 m!3047349))

(declare-fun m!3047351 () Bool)

(assert (=> d!766337 m!3047351))

(assert (=> d!766337 m!3047287))

(assert (=> b!2678197 d!766337))

(declare-fun bm!172747 () Bool)

(declare-fun call!172752 () Bool)

(assert (=> bm!172747 (= call!172752 (isEmpty!17652 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362))))))))

(declare-fun b!2679141 () Bool)

(declare-fun e!1688789 () Bool)

(assert (=> b!2679141 (= e!1688789 (nullable!2593 (regex!4709 (rule!7119 (_1!17680 (get!9687 lt!943362))))))))

(declare-fun b!2679142 () Bool)

(declare-fun res!1126418 () Bool)

(declare-fun e!1688792 () Bool)

(assert (=> b!2679142 (=> res!1126418 e!1688792)))

(assert (=> b!2679142 (= res!1126418 (not ((_ is ElementMatch!7853) (regex!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))))))

(declare-fun e!1688790 () Bool)

(assert (=> b!2679142 (= e!1688790 e!1688792)))

(declare-fun d!766339 () Bool)

(declare-fun e!1688787 () Bool)

(assert (=> d!766339 e!1688787))

(declare-fun c!431679 () Bool)

(assert (=> d!766339 (= c!431679 ((_ is EmptyExpr!7853) (regex!4709 (rule!7119 (_1!17680 (get!9687 lt!943362))))))))

(declare-fun lt!943671 () Bool)

(assert (=> d!766339 (= lt!943671 e!1688789)))

(declare-fun c!431681 () Bool)

(assert (=> d!766339 (= c!431681 (isEmpty!17652 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362))))))))

(assert (=> d!766339 (validRegex!3302 (regex!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))))

(assert (=> d!766339 (= (matchR!3632 (regex!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))) (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362))))) lt!943671)))

(declare-fun b!2679143 () Bool)

(declare-fun e!1688791 () Bool)

(assert (=> b!2679143 (= e!1688791 (not (= (head!6089 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362))))) (c!431445 (regex!4709 (rule!7119 (_1!17680 (get!9687 lt!943362))))))))))

(declare-fun b!2679144 () Bool)

(declare-fun res!1126416 () Bool)

(assert (=> b!2679144 (=> res!1126416 e!1688791)))

(assert (=> b!2679144 (= res!1126416 (not (isEmpty!17652 (tail!4327 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362))))))))))

(declare-fun b!2679145 () Bool)

(declare-fun e!1688786 () Bool)

(assert (=> b!2679145 (= e!1688786 e!1688791)))

(declare-fun res!1126414 () Bool)

(assert (=> b!2679145 (=> res!1126414 e!1688791)))

(assert (=> b!2679145 (= res!1126414 call!172752)))

(declare-fun b!2679146 () Bool)

(assert (=> b!2679146 (= e!1688792 e!1688786)))

(declare-fun res!1126412 () Bool)

(assert (=> b!2679146 (=> (not res!1126412) (not e!1688786))))

(assert (=> b!2679146 (= res!1126412 (not lt!943671))))

(declare-fun b!2679147 () Bool)

(declare-fun res!1126417 () Bool)

(assert (=> b!2679147 (=> res!1126417 e!1688792)))

(declare-fun e!1688788 () Bool)

(assert (=> b!2679147 (= res!1126417 e!1688788)))

(declare-fun res!1126413 () Bool)

(assert (=> b!2679147 (=> (not res!1126413) (not e!1688788))))

(assert (=> b!2679147 (= res!1126413 lt!943671)))

(declare-fun b!2679148 () Bool)

(declare-fun res!1126419 () Bool)

(assert (=> b!2679148 (=> (not res!1126419) (not e!1688788))))

(assert (=> b!2679148 (= res!1126419 (not call!172752))))

(declare-fun b!2679149 () Bool)

(assert (=> b!2679149 (= e!1688790 (not lt!943671))))

(declare-fun b!2679150 () Bool)

(assert (=> b!2679150 (= e!1688789 (matchR!3632 (derivativeStep!2239 (regex!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))) (head!6089 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362)))))) (tail!4327 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362)))))))))

(declare-fun b!2679151 () Bool)

(assert (=> b!2679151 (= e!1688788 (= (head!6089 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362))))) (c!431445 (regex!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))))))

(declare-fun b!2679152 () Bool)

(declare-fun res!1126415 () Bool)

(assert (=> b!2679152 (=> (not res!1126415) (not e!1688788))))

(assert (=> b!2679152 (= res!1126415 (isEmpty!17652 (tail!4327 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943362)))))))))

(declare-fun b!2679153 () Bool)

(assert (=> b!2679153 (= e!1688787 e!1688790)))

(declare-fun c!431680 () Bool)

(assert (=> b!2679153 (= c!431680 ((_ is EmptyLang!7853) (regex!4709 (rule!7119 (_1!17680 (get!9687 lt!943362))))))))

(declare-fun b!2679154 () Bool)

(assert (=> b!2679154 (= e!1688787 (= lt!943671 call!172752))))

(assert (= (and d!766339 c!431681) b!2679141))

(assert (= (and d!766339 (not c!431681)) b!2679150))

(assert (= (and d!766339 c!431679) b!2679154))

(assert (= (and d!766339 (not c!431679)) b!2679153))

(assert (= (and b!2679153 c!431680) b!2679149))

(assert (= (and b!2679153 (not c!431680)) b!2679142))

(assert (= (and b!2679142 (not res!1126418)) b!2679147))

(assert (= (and b!2679147 res!1126413) b!2679148))

(assert (= (and b!2679148 res!1126419) b!2679152))

(assert (= (and b!2679152 res!1126415) b!2679151))

(assert (= (and b!2679147 (not res!1126417)) b!2679146))

(assert (= (and b!2679146 res!1126412) b!2679145))

(assert (= (and b!2679145 (not res!1126414)) b!2679144))

(assert (= (and b!2679144 (not res!1126416)) b!2679143))

(assert (= (or b!2679154 b!2679145 b!2679148) bm!172747))

(declare-fun m!3047353 () Bool)

(assert (=> b!2679141 m!3047353))

(assert (=> b!2679150 m!3045907))

(declare-fun m!3047355 () Bool)

(assert (=> b!2679150 m!3047355))

(assert (=> b!2679150 m!3047355))

(declare-fun m!3047357 () Bool)

(assert (=> b!2679150 m!3047357))

(assert (=> b!2679150 m!3045907))

(declare-fun m!3047359 () Bool)

(assert (=> b!2679150 m!3047359))

(assert (=> b!2679150 m!3047357))

(assert (=> b!2679150 m!3047359))

(declare-fun m!3047361 () Bool)

(assert (=> b!2679150 m!3047361))

(assert (=> b!2679143 m!3045907))

(assert (=> b!2679143 m!3047355))

(assert (=> b!2679151 m!3045907))

(assert (=> b!2679151 m!3047355))

(assert (=> b!2679144 m!3045907))

(assert (=> b!2679144 m!3047359))

(assert (=> b!2679144 m!3047359))

(declare-fun m!3047363 () Bool)

(assert (=> b!2679144 m!3047363))

(assert (=> bm!172747 m!3045907))

(declare-fun m!3047365 () Bool)

(assert (=> bm!172747 m!3047365))

(assert (=> b!2679152 m!3045907))

(assert (=> b!2679152 m!3047359))

(assert (=> b!2679152 m!3047359))

(assert (=> b!2679152 m!3047363))

(assert (=> d!766339 m!3045907))

(assert (=> d!766339 m!3047365))

(declare-fun m!3047367 () Bool)

(assert (=> d!766339 m!3047367))

(assert (=> b!2678429 d!766339))

(assert (=> b!2678429 d!765957))

(assert (=> b!2678429 d!766109))

(assert (=> b!2678429 d!766111))

(declare-fun d!766341 () Bool)

(assert (=> d!766341 (= (list!11652 (_1!17681 lt!943147)) (list!11655 (c!431446 (_1!17681 lt!943147))))))

(declare-fun bs!480087 () Bool)

(assert (= bs!480087 d!766341))

(declare-fun m!3047369 () Bool)

(assert (=> bs!480087 m!3047369))

(assert (=> b!2678175 d!766341))

(assert (=> b!2678175 d!766279))

(assert (=> b!2678175 d!766281))

(declare-fun d!766343 () Bool)

(assert (=> d!766343 (= (isEmpty!17652 (originalCharacters!5475 separatorToken!152)) ((_ is Nil!30818) (originalCharacters!5475 separatorToken!152)))))

(assert (=> d!765807 d!766343))

(declare-fun bs!480088 () Bool)

(declare-fun d!766345 () Bool)

(assert (= bs!480088 (and d!766345 d!765929)))

(declare-fun lambda!100076 () Int)

(assert (=> bs!480088 (= (and (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152)))) (= (toValue!6659 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toValue!6659 (transformation!4709 (rule!7119 separatorToken!152))))) (= lambda!100076 lambda!100061))))

(assert (=> d!766345 true))

(assert (=> d!766345 (< (dynLambda!13410 order!17023 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335))))) (dynLambda!13417 order!17029 lambda!100076))))

(assert (=> d!766345 true))

(assert (=> d!766345 (< (dynLambda!13408 order!17019 (toValue!6659 (transformation!4709 (rule!7119 (h!36240 l!4335))))) (dynLambda!13417 order!17029 lambda!100076))))

(assert (=> d!766345 (= (semiInverseModEq!1954 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toValue!6659 (transformation!4709 (rule!7119 (h!36240 l!4335))))) (Forall!1198 lambda!100076))))

(declare-fun bs!480089 () Bool)

(assert (= bs!480089 d!766345))

(declare-fun m!3047371 () Bool)

(assert (=> bs!480089 m!3047371))

(assert (=> d!765907 d!766345))

(declare-fun d!766347 () Bool)

(declare-fun c!431682 () Bool)

(assert (=> d!766347 (= c!431682 ((_ is Node!9648) (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335))))))))

(declare-fun e!1688793 () Bool)

(assert (=> d!766347 (= (inv!41845 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335))))) e!1688793)))

(declare-fun b!2679155 () Bool)

(assert (=> b!2679155 (= e!1688793 (inv!41847 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335))))))))

(declare-fun b!2679156 () Bool)

(declare-fun e!1688794 () Bool)

(assert (=> b!2679156 (= e!1688793 e!1688794)))

(declare-fun res!1126420 () Bool)

(assert (=> b!2679156 (= res!1126420 (not ((_ is Leaf!14743) (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335)))))))))

(assert (=> b!2679156 (=> res!1126420 e!1688794)))

(declare-fun b!2679157 () Bool)

(assert (=> b!2679157 (= e!1688794 (inv!41848 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335))))))))

(assert (= (and d!766347 c!431682) b!2679155))

(assert (= (and d!766347 (not c!431682)) b!2679156))

(assert (= (and b!2679156 (not res!1126420)) b!2679157))

(declare-fun m!3047373 () Bool)

(assert (=> b!2679155 m!3047373))

(declare-fun m!3047375 () Bool)

(assert (=> b!2679157 m!3047375))

(assert (=> b!2678185 d!766347))

(declare-fun d!766349 () Bool)

(assert (=> d!766349 (= (inv!16 (value!151811 separatorToken!152)) (= (charsToInt!0 (text!34964 (value!151811 separatorToken!152))) (value!151802 (value!151811 separatorToken!152))))))

(declare-fun bs!480090 () Bool)

(assert (= bs!480090 d!766349))

(declare-fun m!3047377 () Bool)

(assert (=> bs!480090 m!3047377))

(assert (=> b!2677999 d!766349))

(declare-fun d!766351 () Bool)

(assert (=> d!766351 (= (inv!41846 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152))) (isBalanced!2927 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152)))))))

(declare-fun bs!480091 () Bool)

(assert (= bs!480091 d!766351))

(declare-fun m!3047379 () Bool)

(assert (=> bs!480091 m!3047379))

(assert (=> tb!150343 d!766351))

(declare-fun b!2679158 () Bool)

(declare-fun e!1688795 () List!30918)

(assert (=> b!2679158 (= e!1688795 e!1688341)))

(declare-fun d!766353 () Bool)

(declare-fun e!1688796 () Bool)

(assert (=> d!766353 e!1688796))

(declare-fun res!1126421 () Bool)

(assert (=> d!766353 (=> (not res!1126421) (not e!1688796))))

(declare-fun lt!943672 () List!30918)

(assert (=> d!766353 (= res!1126421 (= (content!4387 lt!943672) ((_ map or) (content!4387 (ite c!431520 call!172721 call!172722)) (content!4387 e!1688341))))))

(assert (=> d!766353 (= lt!943672 e!1688795)))

(declare-fun c!431683 () Bool)

(assert (=> d!766353 (= c!431683 ((_ is Nil!30818) (ite c!431520 call!172721 call!172722)))))

(assert (=> d!766353 (= (++!7525 (ite c!431520 call!172721 call!172722) e!1688341) lt!943672)))

(declare-fun b!2679161 () Bool)

(assert (=> b!2679161 (= e!1688796 (or (not (= e!1688341 Nil!30818)) (= lt!943672 (ite c!431520 call!172721 call!172722))))))

(declare-fun b!2679159 () Bool)

(assert (=> b!2679159 (= e!1688795 (Cons!30818 (h!36238 (ite c!431520 call!172721 call!172722)) (++!7525 (t!224143 (ite c!431520 call!172721 call!172722)) e!1688341)))))

(declare-fun b!2679160 () Bool)

(declare-fun res!1126422 () Bool)

(assert (=> b!2679160 (=> (not res!1126422) (not e!1688796))))

(assert (=> b!2679160 (= res!1126422 (= (size!23824 lt!943672) (+ (size!23824 (ite c!431520 call!172721 call!172722)) (size!23824 e!1688341))))))

(assert (= (and d!766353 c!431683) b!2679158))

(assert (= (and d!766353 (not c!431683)) b!2679159))

(assert (= (and d!766353 res!1126421) b!2679160))

(assert (= (and b!2679160 res!1126422) b!2679161))

(declare-fun m!3047381 () Bool)

(assert (=> d!766353 m!3047381))

(declare-fun m!3047383 () Bool)

(assert (=> d!766353 m!3047383))

(declare-fun m!3047385 () Bool)

(assert (=> d!766353 m!3047385))

(declare-fun m!3047387 () Bool)

(assert (=> b!2679159 m!3047387))

(declare-fun m!3047389 () Bool)

(assert (=> b!2679160 m!3047389))

(declare-fun m!3047391 () Bool)

(assert (=> b!2679160 m!3047391))

(declare-fun m!3047393 () Bool)

(assert (=> b!2679160 m!3047393))

(assert (=> bm!172717 d!766353))

(assert (=> b!2678421 d!766109))

(assert (=> b!2678421 d!766111))

(assert (=> b!2678421 d!765957))

(declare-fun d!766355 () Bool)

(declare-fun c!431686 () Bool)

(assert (=> d!766355 (= c!431686 (and ((_ is Cons!30819) rules!1712) (not (= (isSeparator!4709 (h!36239 rules!1712)) (isSeparator!4709 (h!36239 rules!1712))))))))

(declare-fun e!1688803 () Bool)

(assert (=> d!766355 (= (ruleDisjointCharsFromAllFromOtherType!561 (h!36239 rules!1712) rules!1712) e!1688803)))

(declare-fun b!2679170 () Bool)

(declare-fun e!1688805 () Bool)

(declare-fun call!172755 () Bool)

(assert (=> b!2679170 (= e!1688805 call!172755)))

(declare-fun b!2679171 () Bool)

(assert (=> b!2679171 (= e!1688803 e!1688805)))

(declare-fun res!1126427 () Bool)

(declare-fun rulesUseDisjointChars!256 (Rule!9218 Rule!9218) Bool)

(assert (=> b!2679171 (= res!1126427 (rulesUseDisjointChars!256 (h!36239 rules!1712) (h!36239 rules!1712)))))

(assert (=> b!2679171 (=> (not res!1126427) (not e!1688805))))

(declare-fun b!2679172 () Bool)

(declare-fun e!1688804 () Bool)

(assert (=> b!2679172 (= e!1688804 call!172755)))

(declare-fun bm!172750 () Bool)

(assert (=> bm!172750 (= call!172755 (ruleDisjointCharsFromAllFromOtherType!561 (h!36239 rules!1712) (t!224144 rules!1712)))))

(declare-fun b!2679173 () Bool)

(assert (=> b!2679173 (= e!1688803 e!1688804)))

(declare-fun res!1126428 () Bool)

(assert (=> b!2679173 (= res!1126428 (not ((_ is Cons!30819) rules!1712)))))

(assert (=> b!2679173 (=> res!1126428 e!1688804)))

(assert (= (and d!766355 c!431686) b!2679171))

(assert (= (and d!766355 (not c!431686)) b!2679173))

(assert (= (and b!2679171 res!1126427) b!2679170))

(assert (= (and b!2679173 (not res!1126428)) b!2679172))

(assert (= (or b!2679170 b!2679172) bm!172750))

(declare-fun m!3047395 () Bool)

(assert (=> b!2679171 m!3047395))

(declare-fun m!3047397 () Bool)

(assert (=> bm!172750 m!3047397))

(assert (=> b!2678015 d!766355))

(declare-fun d!766357 () Bool)

(assert (=> d!766357 (= (list!11652 lt!943179) (list!11655 (c!431446 lt!943179)))))

(declare-fun bs!480092 () Bool)

(assert (= bs!480092 d!766357))

(declare-fun m!3047399 () Bool)

(assert (=> bs!480092 m!3047399))

(assert (=> d!765841 d!766357))

(declare-fun d!766359 () Bool)

(declare-fun e!1688808 () Bool)

(assert (=> d!766359 e!1688808))

(declare-fun res!1126431 () Bool)

(assert (=> d!766359 (=> (not res!1126431) (not e!1688808))))

(declare-fun lt!943675 () BalanceConc!18912)

(assert (=> d!766359 (= res!1126431 (= (list!11652 lt!943675) (Cons!30820 (h!36240 l!4335) Nil!30820)))))

(declare-fun choose!15874 (Token!8888) BalanceConc!18912)

(assert (=> d!766359 (= lt!943675 (choose!15874 (h!36240 l!4335)))))

(assert (=> d!766359 (= (singleton!934 (h!36240 l!4335)) lt!943675)))

(declare-fun b!2679176 () Bool)

(assert (=> b!2679176 (= e!1688808 (isBalanced!2925 (c!431446 lt!943675)))))

(assert (= (and d!766359 res!1126431) b!2679176))

(declare-fun m!3047401 () Bool)

(assert (=> d!766359 m!3047401))

(declare-fun m!3047403 () Bool)

(assert (=> d!766359 m!3047403))

(declare-fun m!3047405 () Bool)

(assert (=> b!2679176 m!3047405))

(assert (=> d!765841 d!766359))

(declare-fun d!766361 () Bool)

(declare-fun lt!943676 () Bool)

(assert (=> d!766361 (= lt!943676 (select (content!4385 (t!224145 l!4335)) (h!36240 l!4335)))))

(declare-fun e!1688809 () Bool)

(assert (=> d!766361 (= lt!943676 e!1688809)))

(declare-fun res!1126433 () Bool)

(assert (=> d!766361 (=> (not res!1126433) (not e!1688809))))

(assert (=> d!766361 (= res!1126433 ((_ is Cons!30820) (t!224145 l!4335)))))

(assert (=> d!766361 (= (contains!5933 (t!224145 l!4335) (h!36240 l!4335)) lt!943676)))

(declare-fun b!2679177 () Bool)

(declare-fun e!1688810 () Bool)

(assert (=> b!2679177 (= e!1688809 e!1688810)))

(declare-fun res!1126432 () Bool)

(assert (=> b!2679177 (=> res!1126432 e!1688810)))

(assert (=> b!2679177 (= res!1126432 (= (h!36240 (t!224145 l!4335)) (h!36240 l!4335)))))

(declare-fun b!2679178 () Bool)

(assert (=> b!2679178 (= e!1688810 (contains!5933 (t!224145 (t!224145 l!4335)) (h!36240 l!4335)))))

(assert (= (and d!766361 res!1126433) b!2679177))

(assert (= (and b!2679177 (not res!1126432)) b!2679178))

(declare-fun m!3047407 () Bool)

(assert (=> d!766361 m!3047407))

(declare-fun m!3047409 () Bool)

(assert (=> d!766361 m!3047409))

(declare-fun m!3047411 () Bool)

(assert (=> b!2679178 m!3047411))

(assert (=> b!2678158 d!766361))

(declare-fun d!766363 () Bool)

(assert (=> d!766363 (= (list!11649 (BalanceConc!18911 Empty!9648)) (list!11653 (c!431444 (BalanceConc!18911 Empty!9648))))))

(declare-fun bs!480093 () Bool)

(assert (= bs!480093 d!766363))

(declare-fun m!3047413 () Bool)

(assert (=> bs!480093 m!3047413))

(assert (=> d!765839 d!766363))

(assert (=> d!765839 d!766307))

(declare-fun d!766365 () Bool)

(declare-fun lt!943691 () List!30918)

(assert (=> d!766365 (= lt!943691 (++!7525 (list!11649 (BalanceConc!18911 Empty!9648)) (printList!1196 thiss!14116 (dropList!978 lt!943077 0))))))

(declare-fun e!1688813 () List!30918)

(assert (=> d!766365 (= lt!943691 e!1688813)))

(declare-fun c!431689 () Bool)

(assert (=> d!766365 (= c!431689 ((_ is Cons!30820) (dropList!978 lt!943077 0)))))

(assert (=> d!766365 (= (printListTailRec!529 thiss!14116 (dropList!978 lt!943077 0) (list!11649 (BalanceConc!18911 Empty!9648))) lt!943691)))

(declare-fun b!2679183 () Bool)

(assert (=> b!2679183 (= e!1688813 (printListTailRec!529 thiss!14116 (t!224145 (dropList!978 lt!943077 0)) (++!7525 (list!11649 (BalanceConc!18911 Empty!9648)) (list!11649 (charsOf!2970 (h!36240 (dropList!978 lt!943077 0)))))))))

(declare-fun lt!943690 () List!30918)

(assert (=> b!2679183 (= lt!943690 (list!11649 (charsOf!2970 (h!36240 (dropList!978 lt!943077 0)))))))

(declare-fun lt!943687 () List!30918)

(assert (=> b!2679183 (= lt!943687 (printList!1196 thiss!14116 (t!224145 (dropList!978 lt!943077 0))))))

(declare-fun lt!943688 () Unit!45039)

(declare-fun lemmaConcatAssociativity!1520 (List!30918 List!30918 List!30918) Unit!45039)

(assert (=> b!2679183 (= lt!943688 (lemmaConcatAssociativity!1520 (list!11649 (BalanceConc!18911 Empty!9648)) lt!943690 lt!943687))))

(assert (=> b!2679183 (= (++!7525 (++!7525 (list!11649 (BalanceConc!18911 Empty!9648)) lt!943690) lt!943687) (++!7525 (list!11649 (BalanceConc!18911 Empty!9648)) (++!7525 lt!943690 lt!943687)))))

(declare-fun lt!943689 () Unit!45039)

(assert (=> b!2679183 (= lt!943689 lt!943688)))

(declare-fun b!2679184 () Bool)

(assert (=> b!2679184 (= e!1688813 (list!11649 (BalanceConc!18911 Empty!9648)))))

(assert (= (and d!766365 c!431689) b!2679183))

(assert (= (and d!766365 (not c!431689)) b!2679184))

(assert (=> d!766365 m!3045545))

(declare-fun m!3047415 () Bool)

(assert (=> d!766365 m!3047415))

(assert (=> d!766365 m!3045549))

(assert (=> d!766365 m!3047415))

(declare-fun m!3047417 () Bool)

(assert (=> d!766365 m!3047417))

(assert (=> b!2679183 m!3045549))

(declare-fun m!3047419 () Bool)

(assert (=> b!2679183 m!3047419))

(declare-fun m!3047421 () Bool)

(assert (=> b!2679183 m!3047421))

(assert (=> b!2679183 m!3045549))

(declare-fun m!3047423 () Bool)

(assert (=> b!2679183 m!3047423))

(declare-fun m!3047425 () Bool)

(assert (=> b!2679183 m!3047425))

(assert (=> b!2679183 m!3045549))

(assert (=> b!2679183 m!3047425))

(declare-fun m!3047427 () Bool)

(assert (=> b!2679183 m!3047427))

(assert (=> b!2679183 m!3047419))

(declare-fun m!3047429 () Bool)

(assert (=> b!2679183 m!3047429))

(assert (=> b!2679183 m!3045549))

(declare-fun m!3047431 () Bool)

(assert (=> b!2679183 m!3047431))

(declare-fun m!3047433 () Bool)

(assert (=> b!2679183 m!3047433))

(assert (=> b!2679183 m!3047421))

(assert (=> b!2679183 m!3047431))

(assert (=> b!2679183 m!3047433))

(declare-fun m!3047435 () Bool)

(assert (=> b!2679183 m!3047435))

(declare-fun m!3047437 () Bool)

(assert (=> b!2679183 m!3047437))

(assert (=> d!765839 d!766365))

(declare-fun d!766367 () Bool)

(assert (=> d!766367 (= (list!11649 lt!943172) (list!11653 (c!431444 lt!943172)))))

(declare-fun bs!480094 () Bool)

(assert (= bs!480094 d!766367))

(declare-fun m!3047439 () Bool)

(assert (=> bs!480094 m!3047439))

(assert (=> d!765839 d!766367))

(declare-fun d!766369 () Bool)

(assert (=> d!766369 (= (dropList!978 lt!943077 0) (drop!1675 (list!11655 (c!431446 lt!943077)) 0))))

(declare-fun bs!480095 () Bool)

(assert (= bs!480095 d!766369))

(assert (=> bs!480095 m!3045971))

(assert (=> bs!480095 m!3045971))

(declare-fun m!3047441 () Bool)

(assert (=> bs!480095 m!3047441))

(assert (=> d!765839 d!766369))

(declare-fun d!766371 () Bool)

(declare-fun c!431694 () Bool)

(assert (=> d!766371 (= c!431694 ((_ is Empty!9648) (c!431444 lt!943083)))))

(declare-fun e!1688818 () List!30918)

(assert (=> d!766371 (= (list!11653 (c!431444 lt!943083)) e!1688818)))

(declare-fun b!2679193 () Bool)

(assert (=> b!2679193 (= e!1688818 Nil!30818)))

(declare-fun b!2679194 () Bool)

(declare-fun e!1688819 () List!30918)

(assert (=> b!2679194 (= e!1688818 e!1688819)))

(declare-fun c!431695 () Bool)

(assert (=> b!2679194 (= c!431695 ((_ is Leaf!14743) (c!431444 lt!943083)))))

(declare-fun b!2679196 () Bool)

(assert (=> b!2679196 (= e!1688819 (++!7525 (list!11653 (left!23858 (c!431444 lt!943083))) (list!11653 (right!24188 (c!431444 lt!943083)))))))

(declare-fun b!2679195 () Bool)

(declare-fun list!11656 (IArray!19301) List!30918)

(assert (=> b!2679195 (= e!1688819 (list!11656 (xs!12678 (c!431444 lt!943083))))))

(assert (= (and d!766371 c!431694) b!2679193))

(assert (= (and d!766371 (not c!431694)) b!2679194))

(assert (= (and b!2679194 c!431695) b!2679195))

(assert (= (and b!2679194 (not c!431695)) b!2679196))

(declare-fun m!3047443 () Bool)

(assert (=> b!2679196 m!3047443))

(declare-fun m!3047445 () Bool)

(assert (=> b!2679196 m!3047445))

(assert (=> b!2679196 m!3047443))

(assert (=> b!2679196 m!3047445))

(declare-fun m!3047447 () Bool)

(assert (=> b!2679196 m!3047447))

(declare-fun m!3047449 () Bool)

(assert (=> b!2679195 m!3047449))

(assert (=> d!765843 d!766371))

(declare-fun d!766373 () Bool)

(declare-fun lt!943692 () Int)

(assert (=> d!766373 (= lt!943692 (size!23829 (list!11652 (_1!17681 lt!943147))))))

(assert (=> d!766373 (= lt!943692 (size!23828 (c!431446 (_1!17681 lt!943147))))))

(assert (=> d!766373 (= (size!23822 (_1!17681 lt!943147)) lt!943692)))

(declare-fun bs!480096 () Bool)

(assert (= bs!480096 d!766373))

(assert (=> bs!480096 m!3045481))

(assert (=> bs!480096 m!3045481))

(declare-fun m!3047451 () Bool)

(assert (=> bs!480096 m!3047451))

(declare-fun m!3047453 () Bool)

(assert (=> bs!480096 m!3047453))

(assert (=> d!765823 d!766373))

(declare-fun e!1688898 () tuple2!30278)

(declare-fun lt!943910 () BalanceConc!18910)

(declare-fun b!2679337 () Bool)

(declare-datatypes ((tuple2!30290 0))(
  ( (tuple2!30291 (_1!17687 Token!8888) (_2!17687 BalanceConc!18910)) )
))
(declare-datatypes ((Option!6106 0))(
  ( (None!6105) (Some!6105 (v!32680 tuple2!30290)) )
))
(declare-fun lt!943933 () Option!6106)

(declare-fun append!746 (BalanceConc!18912 Token!8888) BalanceConc!18912)

(assert (=> b!2679337 (= e!1688898 (lexTailRecV2!853 thiss!14116 rules!1712 (seqFromList!3209 lt!943080) lt!943910 (_2!17687 (v!32680 lt!943933)) (append!746 (BalanceConc!18913 Empty!9649) (_1!17687 (v!32680 lt!943933)))))))

(declare-fun lt!943928 () tuple2!30278)

(declare-fun lexRec!577 (LexerInterface!4306 List!30919 BalanceConc!18910) tuple2!30278)

(assert (=> b!2679337 (= lt!943928 (lexRec!577 thiss!14116 rules!1712 (_2!17687 (v!32680 lt!943933))))))

(declare-fun lt!943917 () List!30918)

(assert (=> b!2679337 (= lt!943917 (list!11649 (BalanceConc!18911 Empty!9648)))))

(declare-fun lt!943920 () List!30918)

(assert (=> b!2679337 (= lt!943920 (list!11649 (charsOf!2970 (_1!17687 (v!32680 lt!943933)))))))

(declare-fun lt!943925 () List!30918)

(assert (=> b!2679337 (= lt!943925 (list!11649 (_2!17687 (v!32680 lt!943933))))))

(declare-fun lt!943941 () Unit!45039)

(assert (=> b!2679337 (= lt!943941 (lemmaConcatAssociativity!1520 lt!943917 lt!943920 lt!943925))))

(assert (=> b!2679337 (= (++!7525 (++!7525 lt!943917 lt!943920) lt!943925) (++!7525 lt!943917 (++!7525 lt!943920 lt!943925)))))

(declare-fun lt!943931 () Unit!45039)

(assert (=> b!2679337 (= lt!943931 lt!943941)))

(declare-fun lt!943938 () Option!6106)

(declare-fun maxPrefixZipperSequence!984 (LexerInterface!4306 List!30919 BalanceConc!18910) Option!6106)

(assert (=> b!2679337 (= lt!943938 (maxPrefixZipperSequence!984 thiss!14116 rules!1712 (seqFromList!3209 lt!943080)))))

(declare-fun c!431735 () Bool)

(assert (=> b!2679337 (= c!431735 ((_ is Some!6105) lt!943938))))

(declare-fun e!1688899 () tuple2!30278)

(assert (=> b!2679337 (= (lexRec!577 thiss!14116 rules!1712 (seqFromList!3209 lt!943080)) e!1688899)))

(declare-fun lt!943927 () Unit!45039)

(declare-fun Unit!45057 () Unit!45039)

(assert (=> b!2679337 (= lt!943927 Unit!45057)))

(declare-fun lt!943932 () List!30920)

(assert (=> b!2679337 (= lt!943932 (list!11652 (BalanceConc!18913 Empty!9649)))))

(declare-fun lt!943937 () List!30920)

(assert (=> b!2679337 (= lt!943937 (Cons!30820 (_1!17687 (v!32680 lt!943933)) Nil!30820))))

(declare-fun lt!943936 () List!30920)

(assert (=> b!2679337 (= lt!943936 (list!11652 (_1!17681 lt!943928)))))

(declare-fun lt!943930 () Unit!45039)

(declare-fun lemmaConcatAssociativity!1521 (List!30920 List!30920 List!30920) Unit!45039)

(assert (=> b!2679337 (= lt!943930 (lemmaConcatAssociativity!1521 lt!943932 lt!943937 lt!943936))))

(declare-fun ++!7531 (List!30920 List!30920) List!30920)

(assert (=> b!2679337 (= (++!7531 (++!7531 lt!943932 lt!943937) lt!943936) (++!7531 lt!943932 (++!7531 lt!943937 lt!943936)))))

(declare-fun lt!943912 () Unit!45039)

(assert (=> b!2679337 (= lt!943912 lt!943930)))

(declare-fun lt!943922 () List!30918)

(assert (=> b!2679337 (= lt!943922 (++!7525 (list!11649 (BalanceConc!18911 Empty!9648)) (list!11649 (charsOf!2970 (_1!17687 (v!32680 lt!943933))))))))

(declare-fun lt!943916 () List!30918)

(assert (=> b!2679337 (= lt!943916 (list!11649 (_2!17687 (v!32680 lt!943933))))))

(declare-fun lt!943913 () List!30920)

(assert (=> b!2679337 (= lt!943913 (list!11652 (append!746 (BalanceConc!18913 Empty!9649) (_1!17687 (v!32680 lt!943933)))))))

(declare-fun lt!943940 () Unit!45039)

(declare-fun lemmaLexThenLexPrefix!391 (LexerInterface!4306 List!30919 List!30918 List!30918 List!30920 List!30920 List!30918) Unit!45039)

(assert (=> b!2679337 (= lt!943940 (lemmaLexThenLexPrefix!391 thiss!14116 rules!1712 lt!943922 lt!943916 lt!943913 (list!11652 (_1!17681 lt!943928)) (list!11649 (_2!17681 lt!943928))))))

(assert (=> b!2679337 (= (lexList!1178 thiss!14116 rules!1712 lt!943922) (tuple2!30283 lt!943913 Nil!30818))))

(declare-fun lt!943923 () Unit!45039)

(assert (=> b!2679337 (= lt!943923 lt!943940)))

(declare-fun lt!943915 () BalanceConc!18910)

(assert (=> b!2679337 (= lt!943915 (++!7527 (BalanceConc!18911 Empty!9648) (charsOf!2970 (_1!17687 (v!32680 lt!943933)))))))

(declare-fun lt!943929 () Option!6106)

(assert (=> b!2679337 (= lt!943929 (maxPrefixZipperSequence!984 thiss!14116 rules!1712 lt!943915))))

(declare-fun c!431734 () Bool)

(assert (=> b!2679337 (= c!431734 ((_ is Some!6105) lt!943929))))

(declare-fun e!1688900 () tuple2!30278)

(assert (=> b!2679337 (= (lexRec!577 thiss!14116 rules!1712 (++!7527 (BalanceConc!18911 Empty!9648) (charsOf!2970 (_1!17687 (v!32680 lt!943933))))) e!1688900)))

(declare-fun lt!943924 () Unit!45039)

(declare-fun Unit!45058 () Unit!45039)

(assert (=> b!2679337 (= lt!943924 Unit!45058)))

(assert (=> b!2679337 (= lt!943910 (++!7527 (BalanceConc!18911 Empty!9648) (charsOf!2970 (_1!17687 (v!32680 lt!943933)))))))

(declare-fun lt!943914 () List!30918)

(assert (=> b!2679337 (= lt!943914 (list!11649 lt!943910))))

(declare-fun lt!943935 () List!30918)

(assert (=> b!2679337 (= lt!943935 (list!11649 (_2!17687 (v!32680 lt!943933))))))

(declare-fun lt!943921 () Unit!45039)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!507 (List!30918 List!30918) Unit!45039)

(assert (=> b!2679337 (= lt!943921 (lemmaConcatTwoListThenFSndIsSuffix!507 lt!943914 lt!943935))))

(declare-fun isSuffix!822 (List!30918 List!30918) Bool)

(assert (=> b!2679337 (isSuffix!822 lt!943935 (++!7525 lt!943914 lt!943935))))

(declare-fun lt!943911 () Unit!45039)

(assert (=> b!2679337 (= lt!943911 lt!943921)))

(declare-fun b!2679338 () Bool)

(assert (=> b!2679338 (= e!1688898 (tuple2!30279 (BalanceConc!18913 Empty!9649) (seqFromList!3209 lt!943080)))))

(declare-fun b!2679339 () Bool)

(declare-fun lt!943934 () tuple2!30278)

(assert (=> b!2679339 (= lt!943934 (lexRec!577 thiss!14116 rules!1712 (_2!17687 (v!32680 lt!943938))))))

(declare-fun prepend!1053 (BalanceConc!18912 Token!8888) BalanceConc!18912)

(assert (=> b!2679339 (= e!1688899 (tuple2!30279 (prepend!1053 (_1!17681 lt!943934) (_1!17687 (v!32680 lt!943938))) (_2!17681 lt!943934)))))

(declare-fun lt!943939 () tuple2!30278)

(declare-fun b!2679340 () Bool)

(declare-fun e!1688901 () Bool)

(assert (=> b!2679340 (= e!1688901 (= (list!11649 (_2!17681 lt!943939)) (list!11649 (_2!17681 (lexRec!577 thiss!14116 rules!1712 (seqFromList!3209 lt!943080))))))))

(declare-fun lt!943919 () tuple2!30278)

(declare-fun b!2679341 () Bool)

(assert (=> b!2679341 (= lt!943919 (lexRec!577 thiss!14116 rules!1712 (_2!17687 (v!32680 lt!943929))))))

(assert (=> b!2679341 (= e!1688900 (tuple2!30279 (prepend!1053 (_1!17681 lt!943919) (_1!17687 (v!32680 lt!943929))) (_2!17681 lt!943919)))))

(declare-fun d!766375 () Bool)

(assert (=> d!766375 e!1688901))

(declare-fun res!1126497 () Bool)

(assert (=> d!766375 (=> (not res!1126497) (not e!1688901))))

(assert (=> d!766375 (= res!1126497 (= (list!11652 (_1!17681 lt!943939)) (list!11652 (_1!17681 (lexRec!577 thiss!14116 rules!1712 (seqFromList!3209 lt!943080))))))))

(assert (=> d!766375 (= lt!943939 e!1688898)))

(declare-fun c!431733 () Bool)

(assert (=> d!766375 (= c!431733 ((_ is Some!6105) lt!943933))))

(declare-fun maxPrefixZipperSequenceV2!447 (LexerInterface!4306 List!30919 BalanceConc!18910 BalanceConc!18910) Option!6106)

(assert (=> d!766375 (= lt!943933 (maxPrefixZipperSequenceV2!447 thiss!14116 rules!1712 (seqFromList!3209 lt!943080) (seqFromList!3209 lt!943080)))))

(declare-fun lt!943918 () Unit!45039)

(declare-fun lt!943909 () Unit!45039)

(assert (=> d!766375 (= lt!943918 lt!943909)))

(declare-fun lt!943942 () List!30918)

(declare-fun lt!943926 () List!30918)

(assert (=> d!766375 (isSuffix!822 lt!943942 (++!7525 lt!943926 lt!943942))))

(assert (=> d!766375 (= lt!943909 (lemmaConcatTwoListThenFSndIsSuffix!507 lt!943926 lt!943942))))

(assert (=> d!766375 (= lt!943942 (list!11649 (seqFromList!3209 lt!943080)))))

(assert (=> d!766375 (= lt!943926 (list!11649 (BalanceConc!18911 Empty!9648)))))

(assert (=> d!766375 (= (lexTailRecV2!853 thiss!14116 rules!1712 (seqFromList!3209 lt!943080) (BalanceConc!18911 Empty!9648) (seqFromList!3209 lt!943080) (BalanceConc!18913 Empty!9649)) lt!943939)))

(declare-fun b!2679342 () Bool)

(assert (=> b!2679342 (= e!1688900 (tuple2!30279 (BalanceConc!18913 Empty!9649) lt!943915))))

(declare-fun b!2679343 () Bool)

(assert (=> b!2679343 (= e!1688899 (tuple2!30279 (BalanceConc!18913 Empty!9649) (seqFromList!3209 lt!943080)))))

(assert (= (and d!766375 c!431733) b!2679337))

(assert (= (and d!766375 (not c!431733)) b!2679338))

(assert (= (and b!2679337 c!431735) b!2679339))

(assert (= (and b!2679337 (not c!431735)) b!2679343))

(assert (= (and b!2679337 c!431734) b!2679341))

(assert (= (and b!2679337 (not c!431734)) b!2679342))

(assert (= (and d!766375 res!1126497) b!2679340))

(declare-fun m!3047747 () Bool)

(assert (=> b!2679341 m!3047747))

(declare-fun m!3047749 () Bool)

(assert (=> b!2679341 m!3047749))

(declare-fun m!3047751 () Bool)

(assert (=> b!2679340 m!3047751))

(assert (=> b!2679340 m!3045273))

(declare-fun m!3047753 () Bool)

(assert (=> b!2679340 m!3047753))

(declare-fun m!3047755 () Bool)

(assert (=> b!2679340 m!3047755))

(declare-fun m!3047757 () Bool)

(assert (=> b!2679339 m!3047757))

(declare-fun m!3047759 () Bool)

(assert (=> b!2679339 m!3047759))

(declare-fun m!3047761 () Bool)

(assert (=> d!766375 m!3047761))

(assert (=> d!766375 m!3045273))

(assert (=> d!766375 m!3047753))

(declare-fun m!3047763 () Bool)

(assert (=> d!766375 m!3047763))

(declare-fun m!3047765 () Bool)

(assert (=> d!766375 m!3047765))

(declare-fun m!3047767 () Bool)

(assert (=> d!766375 m!3047767))

(assert (=> d!766375 m!3045273))

(assert (=> d!766375 m!3045483))

(assert (=> d!766375 m!3045549))

(assert (=> d!766375 m!3047763))

(declare-fun m!3047769 () Bool)

(assert (=> d!766375 m!3047769))

(assert (=> d!766375 m!3045273))

(assert (=> d!766375 m!3045273))

(declare-fun m!3047771 () Bool)

(assert (=> d!766375 m!3047771))

(declare-fun m!3047773 () Bool)

(assert (=> b!2679337 m!3047773))

(declare-fun m!3047775 () Bool)

(assert (=> b!2679337 m!3047775))

(declare-fun m!3047777 () Bool)

(assert (=> b!2679337 m!3047777))

(declare-fun m!3047779 () Bool)

(assert (=> b!2679337 m!3047779))

(declare-fun m!3047781 () Bool)

(assert (=> b!2679337 m!3047781))

(assert (=> b!2679337 m!3047773))

(declare-fun m!3047783 () Bool)

(assert (=> b!2679337 m!3047783))

(assert (=> b!2679337 m!3045549))

(declare-fun m!3047785 () Bool)

(assert (=> b!2679337 m!3047785))

(declare-fun m!3047787 () Bool)

(assert (=> b!2679337 m!3047787))

(assert (=> b!2679337 m!3045273))

(declare-fun m!3047789 () Bool)

(assert (=> b!2679337 m!3047789))

(declare-fun m!3047791 () Bool)

(assert (=> b!2679337 m!3047791))

(declare-fun m!3047793 () Bool)

(assert (=> b!2679337 m!3047793))

(declare-fun m!3047795 () Bool)

(assert (=> b!2679337 m!3047795))

(declare-fun m!3047797 () Bool)

(assert (=> b!2679337 m!3047797))

(declare-fun m!3047799 () Bool)

(assert (=> b!2679337 m!3047799))

(declare-fun m!3047801 () Bool)

(assert (=> b!2679337 m!3047801))

(declare-fun m!3047803 () Bool)

(assert (=> b!2679337 m!3047803))

(declare-fun m!3047805 () Bool)

(assert (=> b!2679337 m!3047805))

(declare-fun m!3047807 () Bool)

(assert (=> b!2679337 m!3047807))

(declare-fun m!3047809 () Bool)

(assert (=> b!2679337 m!3047809))

(declare-fun m!3047811 () Bool)

(assert (=> b!2679337 m!3047811))

(assert (=> b!2679337 m!3045273))

(assert (=> b!2679337 m!3047809))

(declare-fun m!3047813 () Bool)

(assert (=> b!2679337 m!3047813))

(declare-fun m!3047815 () Bool)

(assert (=> b!2679337 m!3047815))

(declare-fun m!3047817 () Bool)

(assert (=> b!2679337 m!3047817))

(assert (=> b!2679337 m!3047807))

(declare-fun m!3047819 () Bool)

(assert (=> b!2679337 m!3047819))

(declare-fun m!3047821 () Bool)

(assert (=> b!2679337 m!3047821))

(assert (=> b!2679337 m!3047809))

(declare-fun m!3047823 () Bool)

(assert (=> b!2679337 m!3047823))

(assert (=> b!2679337 m!3047775))

(declare-fun m!3047825 () Bool)

(assert (=> b!2679337 m!3047825))

(declare-fun m!3047827 () Bool)

(assert (=> b!2679337 m!3047827))

(assert (=> b!2679337 m!3047797))

(declare-fun m!3047829 () Bool)

(assert (=> b!2679337 m!3047829))

(assert (=> b!2679337 m!3047779))

(assert (=> b!2679337 m!3047825))

(declare-fun m!3047831 () Bool)

(assert (=> b!2679337 m!3047831))

(assert (=> b!2679337 m!3047829))

(assert (=> b!2679337 m!3047785))

(assert (=> b!2679337 m!3047815))

(declare-fun m!3047833 () Bool)

(assert (=> b!2679337 m!3047833))

(assert (=> b!2679337 m!3047829))

(assert (=> b!2679337 m!3045549))

(assert (=> b!2679337 m!3047795))

(assert (=> b!2679337 m!3045273))

(assert (=> b!2679337 m!3047753))

(assert (=> d!765823 d!766375))

(declare-fun d!766437 () Bool)

(assert (=> d!766437 (= (isEmpty!17655 lt!943362) (not ((_ is Some!6101) lt!943362)))))

(assert (=> d!765897 d!766437))

(declare-fun b!2679354 () Bool)

(declare-fun e!1688910 () Bool)

(declare-fun e!1688909 () Bool)

(assert (=> b!2679354 (= e!1688910 e!1688909)))

(declare-fun res!1126501 () Bool)

(assert (=> b!2679354 (=> (not res!1126501) (not e!1688909))))

(assert (=> b!2679354 (= res!1126501 (not ((_ is Nil!30818) (++!7525 lt!943080 lt!943082))))))

(declare-fun b!2679357 () Bool)

(declare-fun e!1688908 () Bool)

(assert (=> b!2679357 (= e!1688908 (>= (size!23824 (++!7525 lt!943080 lt!943082)) (size!23824 (++!7525 lt!943080 lt!943082))))))

(declare-fun b!2679356 () Bool)

(assert (=> b!2679356 (= e!1688909 (isPrefix!2461 (tail!4327 (++!7525 lt!943080 lt!943082)) (tail!4327 (++!7525 lt!943080 lt!943082))))))

(declare-fun b!2679355 () Bool)

(declare-fun res!1126502 () Bool)

(assert (=> b!2679355 (=> (not res!1126502) (not e!1688909))))

(assert (=> b!2679355 (= res!1126502 (= (head!6089 (++!7525 lt!943080 lt!943082)) (head!6089 (++!7525 lt!943080 lt!943082))))))

(declare-fun d!766439 () Bool)

(assert (=> d!766439 e!1688908))

(declare-fun res!1126500 () Bool)

(assert (=> d!766439 (=> res!1126500 e!1688908)))

(declare-fun lt!943949 () Bool)

(assert (=> d!766439 (= res!1126500 (not lt!943949))))

(assert (=> d!766439 (= lt!943949 e!1688910)))

(declare-fun res!1126503 () Bool)

(assert (=> d!766439 (=> res!1126503 e!1688910)))

(assert (=> d!766439 (= res!1126503 ((_ is Nil!30818) (++!7525 lt!943080 lt!943082)))))

(assert (=> d!766439 (= (isPrefix!2461 (++!7525 lt!943080 lt!943082) (++!7525 lt!943080 lt!943082)) lt!943949)))

(assert (= (and d!766439 (not res!1126503)) b!2679354))

(assert (= (and b!2679354 res!1126501) b!2679355))

(assert (= (and b!2679355 res!1126502) b!2679356))

(assert (= (and d!766439 (not res!1126500)) b!2679357))

(assert (=> b!2679357 m!3045259))

(assert (=> b!2679357 m!3045889))

(assert (=> b!2679357 m!3045259))

(assert (=> b!2679357 m!3045889))

(assert (=> b!2679356 m!3045259))

(assert (=> b!2679356 m!3046963))

(assert (=> b!2679356 m!3045259))

(assert (=> b!2679356 m!3046963))

(assert (=> b!2679356 m!3046963))

(assert (=> b!2679356 m!3046963))

(declare-fun m!3047835 () Bool)

(assert (=> b!2679356 m!3047835))

(assert (=> b!2679355 m!3045259))

(assert (=> b!2679355 m!3046969))

(assert (=> b!2679355 m!3045259))

(assert (=> b!2679355 m!3046969))

(assert (=> d!765897 d!766439))

(declare-fun d!766441 () Bool)

(assert (=> d!766441 (isPrefix!2461 (++!7525 lt!943080 lt!943082) (++!7525 lt!943080 lt!943082))))

(declare-fun lt!943955 () Unit!45039)

(declare-fun choose!15877 (List!30918 List!30918) Unit!45039)

(assert (=> d!766441 (= lt!943955 (choose!15877 (++!7525 lt!943080 lt!943082) (++!7525 lt!943080 lt!943082)))))

(assert (=> d!766441 (= (lemmaIsPrefixRefl!1587 (++!7525 lt!943080 lt!943082) (++!7525 lt!943080 lt!943082)) lt!943955)))

(declare-fun bs!480111 () Bool)

(assert (= bs!480111 d!766441))

(assert (=> bs!480111 m!3045259))

(assert (=> bs!480111 m!3045259))

(assert (=> bs!480111 m!3045897))

(assert (=> bs!480111 m!3045259))

(assert (=> bs!480111 m!3045259))

(declare-fun m!3047851 () Bool)

(assert (=> bs!480111 m!3047851))

(assert (=> d!765897 d!766441))

(declare-fun d!766449 () Bool)

(assert (=> d!766449 true))

(declare-fun lt!943963 () Bool)

(declare-fun lambda!100082 () Int)

(declare-fun forall!6530 (List!30919 Int) Bool)

(assert (=> d!766449 (= lt!943963 (forall!6530 rules!1712 lambda!100082))))

(declare-fun e!1688923 () Bool)

(assert (=> d!766449 (= lt!943963 e!1688923)))

(declare-fun res!1126514 () Bool)

(assert (=> d!766449 (=> res!1126514 e!1688923)))

(assert (=> d!766449 (= res!1126514 (not ((_ is Cons!30819) rules!1712)))))

(assert (=> d!766449 (= (rulesValidInductive!1641 thiss!14116 rules!1712) lt!943963)))

(declare-fun b!2679371 () Bool)

(declare-fun e!1688922 () Bool)

(assert (=> b!2679371 (= e!1688923 e!1688922)))

(declare-fun res!1126513 () Bool)

(assert (=> b!2679371 (=> (not res!1126513) (not e!1688922))))

(assert (=> b!2679371 (= res!1126513 (ruleValid!1556 thiss!14116 (h!36239 rules!1712)))))

(declare-fun b!2679372 () Bool)

(assert (=> b!2679372 (= e!1688922 (rulesValidInductive!1641 thiss!14116 (t!224144 rules!1712)))))

(assert (= (and d!766449 (not res!1126514)) b!2679371))

(assert (= (and b!2679371 res!1126513) b!2679372))

(declare-fun m!3047875 () Bool)

(assert (=> d!766449 m!3047875))

(assert (=> b!2679371 m!3046379))

(assert (=> b!2679372 m!3045989))

(assert (=> d!765897 d!766449))

(declare-fun d!766465 () Bool)

(declare-fun lt!943964 () Bool)

(assert (=> d!766465 (= lt!943964 (isEmpty!17652 (list!11649 (_2!17681 lt!943133))))))

(assert (=> d!766465 (= lt!943964 (isEmpty!17659 (c!431444 (_2!17681 lt!943133))))))

(assert (=> d!766465 (= (isEmpty!17649 (_2!17681 lt!943133)) lt!943964)))

(declare-fun bs!480117 () Bool)

(assert (= bs!480117 d!766465))

(declare-fun m!3047877 () Bool)

(assert (=> bs!480117 m!3047877))

(assert (=> bs!480117 m!3047877))

(declare-fun m!3047879 () Bool)

(assert (=> bs!480117 m!3047879))

(declare-fun m!3047881 () Bool)

(assert (=> bs!480117 m!3047881))

(assert (=> b!2678130 d!766465))

(declare-fun b!2679405 () Bool)

(declare-fun res!1126535 () Bool)

(declare-fun e!1688939 () Bool)

(assert (=> b!2679405 (=> (not res!1126535) (not e!1688939))))

(declare-fun height!1409 (Conc!9649) Int)

(assert (=> b!2679405 (= res!1126535 (<= (- (height!1409 (left!23859 (c!431446 lt!943179))) (height!1409 (right!24189 (c!431446 lt!943179)))) 1))))

(declare-fun b!2679406 () Bool)

(declare-fun res!1126536 () Bool)

(assert (=> b!2679406 (=> (not res!1126536) (not e!1688939))))

(assert (=> b!2679406 (= res!1126536 (isBalanced!2925 (right!24189 (c!431446 lt!943179))))))

(declare-fun b!2679407 () Bool)

(declare-fun res!1126533 () Bool)

(assert (=> b!2679407 (=> (not res!1126533) (not e!1688939))))

(assert (=> b!2679407 (= res!1126533 (isBalanced!2925 (left!23859 (c!431446 lt!943179))))))

(declare-fun b!2679408 () Bool)

(assert (=> b!2679408 (= e!1688939 (not (isEmpty!17654 (right!24189 (c!431446 lt!943179)))))))

(declare-fun b!2679410 () Bool)

(declare-fun res!1126532 () Bool)

(assert (=> b!2679410 (=> (not res!1126532) (not e!1688939))))

(assert (=> b!2679410 (= res!1126532 (not (isEmpty!17654 (left!23859 (c!431446 lt!943179)))))))

(declare-fun d!766467 () Bool)

(declare-fun res!1126531 () Bool)

(declare-fun e!1688940 () Bool)

(assert (=> d!766467 (=> res!1126531 e!1688940)))

(assert (=> d!766467 (= res!1126531 (not ((_ is Node!9649) (c!431446 lt!943179))))))

(assert (=> d!766467 (= (isBalanced!2925 (c!431446 lt!943179)) e!1688940)))

(declare-fun b!2679409 () Bool)

(assert (=> b!2679409 (= e!1688940 e!1688939)))

(declare-fun res!1126534 () Bool)

(assert (=> b!2679409 (=> (not res!1126534) (not e!1688939))))

(assert (=> b!2679409 (= res!1126534 (<= (- 1) (- (height!1409 (left!23859 (c!431446 lt!943179))) (height!1409 (right!24189 (c!431446 lt!943179))))))))

(assert (= (and d!766467 (not res!1126531)) b!2679409))

(assert (= (and b!2679409 res!1126534) b!2679405))

(assert (= (and b!2679405 res!1126535) b!2679407))

(assert (= (and b!2679407 res!1126533) b!2679406))

(assert (= (and b!2679406 res!1126536) b!2679410))

(assert (= (and b!2679410 res!1126532) b!2679408))

(declare-fun m!3047897 () Bool)

(assert (=> b!2679410 m!3047897))

(declare-fun m!3047901 () Bool)

(assert (=> b!2679406 m!3047901))

(declare-fun m!3047903 () Bool)

(assert (=> b!2679407 m!3047903))

(declare-fun m!3047905 () Bool)

(assert (=> b!2679409 m!3047905))

(declare-fun m!3047907 () Bool)

(assert (=> b!2679409 m!3047907))

(declare-fun m!3047909 () Bool)

(assert (=> b!2679408 m!3047909))

(assert (=> b!2679405 m!3047905))

(assert (=> b!2679405 m!3047907))

(assert (=> b!2678200 d!766467))

(declare-fun d!766479 () Bool)

(declare-fun lt!943965 () Int)

(assert (=> d!766479 (>= lt!943965 0)))

(declare-fun e!1688944 () Int)

(assert (=> d!766479 (= lt!943965 e!1688944)))

(declare-fun c!431750 () Bool)

(assert (=> d!766479 (= c!431750 ((_ is Nil!30818) (originalCharacters!5475 separatorToken!152)))))

(assert (=> d!766479 (= (size!23824 (originalCharacters!5475 separatorToken!152)) lt!943965)))

(declare-fun b!2679415 () Bool)

(assert (=> b!2679415 (= e!1688944 0)))

(declare-fun b!2679416 () Bool)

(assert (=> b!2679416 (= e!1688944 (+ 1 (size!23824 (t!224143 (originalCharacters!5475 separatorToken!152)))))))

(assert (= (and d!766479 c!431750) b!2679415))

(assert (= (and d!766479 (not c!431750)) b!2679416))

(declare-fun m!3047913 () Bool)

(assert (=> b!2679416 m!3047913))

(assert (=> b!2678141 d!766479))

(declare-fun d!766483 () Bool)

(declare-fun res!1126539 () Bool)

(declare-fun e!1688945 () Bool)

(assert (=> d!766483 (=> res!1126539 e!1688945)))

(assert (=> d!766483 (= res!1126539 ((_ is Nil!30820) l!4335))))

(assert (=> d!766483 (= (forall!6528 l!4335 lambda!100046) e!1688945)))

(declare-fun b!2679417 () Bool)

(declare-fun e!1688946 () Bool)

(assert (=> b!2679417 (= e!1688945 e!1688946)))

(declare-fun res!1126540 () Bool)

(assert (=> b!2679417 (=> (not res!1126540) (not e!1688946))))

(assert (=> b!2679417 (= res!1126540 (dynLambda!13414 lambda!100046 (h!36240 l!4335)))))

(declare-fun b!2679418 () Bool)

(assert (=> b!2679418 (= e!1688946 (forall!6528 (t!224145 l!4335) lambda!100046))))

(assert (= (and d!766483 (not res!1126539)) b!2679417))

(assert (= (and b!2679417 res!1126540) b!2679418))

(declare-fun b_lambda!81847 () Bool)

(assert (=> (not b_lambda!81847) (not b!2679417)))

(declare-fun m!3047915 () Bool)

(assert (=> b!2679417 m!3047915))

(declare-fun m!3047917 () Bool)

(assert (=> b!2679418 m!3047917))

(assert (=> d!765847 d!766483))

(assert (=> d!765847 d!765903))

(assert (=> b!2678255 d!765805))

(declare-fun d!766485 () Bool)

(declare-fun lt!943966 () BalanceConc!18910)

(assert (=> d!766485 (= (list!11649 lt!943966) (originalCharacters!5475 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335)))))))

(assert (=> d!766485 (= lt!943966 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335)))))) (value!151811 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335))))))))

(assert (=> d!766485 (= (charsOf!2970 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335)))) lt!943966)))

(declare-fun b_lambda!81849 () Bool)

(assert (=> (not b_lambda!81849) (not d!766485)))

(declare-fun tb!150507 () Bool)

(declare-fun t!224338 () Bool)

(assert (=> (and b!2677967 (= (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toChars!6518 (transformation!4709 (rule!7119 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335))))))) t!224338) tb!150507))

(declare-fun e!1688947 () Bool)

(declare-fun tp!846910 () Bool)

(declare-fun b!2679419 () Bool)

(assert (=> b!2679419 (= e!1688947 (and (inv!41845 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335)))))) (value!151811 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335))))))) tp!846910))))

(declare-fun result!185870 () Bool)

(assert (=> tb!150507 (= result!185870 (and (inv!41846 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335)))))) (value!151811 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335)))))) e!1688947))))

(assert (= tb!150507 b!2679419))

(declare-fun m!3047919 () Bool)

(assert (=> b!2679419 m!3047919))

(declare-fun m!3047921 () Bool)

(assert (=> tb!150507 m!3047921))

(assert (=> d!766485 t!224338))

(declare-fun b_and!198333 () Bool)

(assert (= b_and!198301 (and (=> t!224338 result!185870) b_and!198333)))

(declare-fun tb!150509 () Bool)

(declare-fun t!224340 () Bool)

(assert (=> (and b!2677966 (= (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toChars!6518 (transformation!4709 (rule!7119 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335))))))) t!224340) tb!150509))

(declare-fun result!185872 () Bool)

(assert (= result!185872 result!185870))

(assert (=> d!766485 t!224340))

(declare-fun b_and!198335 () Bool)

(assert (= b_and!198293 (and (=> t!224340 result!185872) b_and!198335)))

(declare-fun t!224342 () Bool)

(declare-fun tb!150511 () Bool)

(assert (=> (and b!2677970 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toChars!6518 (transformation!4709 (rule!7119 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335))))))) t!224342) tb!150511))

(declare-fun result!185874 () Bool)

(assert (= result!185874 result!185870))

(assert (=> d!766485 t!224342))

(declare-fun b_and!198337 () Bool)

(assert (= b_and!198299 (and (=> t!224342 result!185874) b_and!198337)))

(declare-fun tb!150513 () Bool)

(declare-fun t!224344 () Bool)

(assert (=> (and b!2678471 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (toChars!6518 (transformation!4709 (rule!7119 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335))))))) t!224344) tb!150513))

(declare-fun result!185876 () Bool)

(assert (= result!185876 result!185870))

(assert (=> d!766485 t!224344))

(declare-fun b_and!198339 () Bool)

(assert (= b_and!198297 (and (=> t!224344 result!185876) b_and!198339)))

(declare-fun t!224346 () Bool)

(declare-fun tb!150515 () Bool)

(assert (=> (and b!2678454 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toChars!6518 (transformation!4709 (rule!7119 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335))))))) t!224346) tb!150515))

(declare-fun result!185878 () Bool)

(assert (= result!185878 result!185870))

(assert (=> d!766485 t!224346))

(declare-fun b_and!198341 () Bool)

(assert (= b_and!198295 (and (=> t!224346 result!185878) b_and!198341)))

(declare-fun m!3047923 () Bool)

(assert (=> d!766485 m!3047923))

(declare-fun m!3047925 () Bool)

(assert (=> d!766485 m!3047925))

(assert (=> bm!172716 d!766485))

(declare-fun d!766487 () Bool)

(declare-fun c!431751 () Bool)

(assert (=> d!766487 (= c!431751 ((_ is Empty!9648) (c!431444 (charsOf!2970 (h!36240 l!4335)))))))

(declare-fun e!1688948 () List!30918)

(assert (=> d!766487 (= (list!11653 (c!431444 (charsOf!2970 (h!36240 l!4335)))) e!1688948)))

(declare-fun b!2679420 () Bool)

(assert (=> b!2679420 (= e!1688948 Nil!30818)))

(declare-fun b!2679421 () Bool)

(declare-fun e!1688949 () List!30918)

(assert (=> b!2679421 (= e!1688948 e!1688949)))

(declare-fun c!431752 () Bool)

(assert (=> b!2679421 (= c!431752 ((_ is Leaf!14743) (c!431444 (charsOf!2970 (h!36240 l!4335)))))))

(declare-fun b!2679423 () Bool)

(assert (=> b!2679423 (= e!1688949 (++!7525 (list!11653 (left!23858 (c!431444 (charsOf!2970 (h!36240 l!4335))))) (list!11653 (right!24188 (c!431444 (charsOf!2970 (h!36240 l!4335)))))))))

(declare-fun b!2679422 () Bool)

(assert (=> b!2679422 (= e!1688949 (list!11656 (xs!12678 (c!431444 (charsOf!2970 (h!36240 l!4335))))))))

(assert (= (and d!766487 c!431751) b!2679420))

(assert (= (and d!766487 (not c!431751)) b!2679421))

(assert (= (and b!2679421 c!431752) b!2679422))

(assert (= (and b!2679421 (not c!431752)) b!2679423))

(declare-fun m!3047927 () Bool)

(assert (=> b!2679423 m!3047927))

(declare-fun m!3047929 () Bool)

(assert (=> b!2679423 m!3047929))

(assert (=> b!2679423 m!3047927))

(assert (=> b!2679423 m!3047929))

(declare-fun m!3047931 () Bool)

(assert (=> b!2679423 m!3047931))

(declare-fun m!3047933 () Bool)

(assert (=> b!2679422 m!3047933))

(assert (=> d!765885 d!766487))

(declare-fun d!766489 () Bool)

(declare-fun lt!943967 () Bool)

(assert (=> d!766489 (= lt!943967 (isEmpty!17652 (list!11649 (_2!17681 lt!943131))))))

(assert (=> d!766489 (= lt!943967 (isEmpty!17659 (c!431444 (_2!17681 lt!943131))))))

(assert (=> d!766489 (= (isEmpty!17649 (_2!17681 lt!943131)) lt!943967)))

(declare-fun bs!480120 () Bool)

(assert (= bs!480120 d!766489))

(declare-fun m!3047935 () Bool)

(assert (=> bs!480120 m!3047935))

(assert (=> bs!480120 m!3047935))

(declare-fun m!3047937 () Bool)

(assert (=> bs!480120 m!3047937))

(declare-fun m!3047939 () Bool)

(assert (=> bs!480120 m!3047939))

(assert (=> b!2678109 d!766489))

(declare-fun bs!480121 () Bool)

(declare-fun d!766491 () Bool)

(assert (= bs!480121 (and d!766491 d!765929)))

(declare-fun lambda!100083 () Int)

(assert (=> bs!480121 (= (and (= (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152)))) (= (toValue!6659 (transformation!4709 (h!36239 rules!1712))) (toValue!6659 (transformation!4709 (rule!7119 separatorToken!152))))) (= lambda!100083 lambda!100061))))

(declare-fun bs!480122 () Bool)

(assert (= bs!480122 (and d!766491 d!766345)))

(assert (=> bs!480122 (= (and (= (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335))))) (= (toValue!6659 (transformation!4709 (h!36239 rules!1712))) (toValue!6659 (transformation!4709 (rule!7119 (h!36240 l!4335)))))) (= lambda!100083 lambda!100076))))

(assert (=> d!766491 true))

(assert (=> d!766491 (< (dynLambda!13410 order!17023 (toChars!6518 (transformation!4709 (h!36239 rules!1712)))) (dynLambda!13417 order!17029 lambda!100083))))

(assert (=> d!766491 true))

(assert (=> d!766491 (< (dynLambda!13408 order!17019 (toValue!6659 (transformation!4709 (h!36239 rules!1712)))) (dynLambda!13417 order!17029 lambda!100083))))

(assert (=> d!766491 (= (semiInverseModEq!1954 (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toValue!6659 (transformation!4709 (h!36239 rules!1712)))) (Forall!1198 lambda!100083))))

(declare-fun bs!480123 () Bool)

(assert (= bs!480123 d!766491))

(declare-fun m!3047941 () Bool)

(assert (=> bs!480123 m!3047941))

(assert (=> d!765833 d!766491))

(declare-fun d!766493 () Bool)

(declare-fun c!431755 () Bool)

(assert (=> d!766493 (= c!431755 ((_ is Nil!30820) l!4335))))

(declare-fun e!1688958 () (InoxSet Token!8888))

(assert (=> d!766493 (= (content!4385 l!4335) e!1688958)))

(declare-fun b!2679446 () Bool)

(assert (=> b!2679446 (= e!1688958 ((as const (Array Token!8888 Bool)) false))))

(declare-fun b!2679447 () Bool)

(assert (=> b!2679447 (= e!1688958 ((_ map or) (store ((as const (Array Token!8888 Bool)) false) (h!36240 l!4335) true) (content!4385 (t!224145 l!4335))))))

(assert (= (and d!766493 c!431755) b!2679446))

(assert (= (and d!766493 (not c!431755)) b!2679447))

(declare-fun m!3047943 () Bool)

(assert (=> b!2679447 m!3047943))

(assert (=> b!2679447 m!3047407))

(assert (=> d!765819 d!766493))

(declare-fun d!766495 () Bool)

(declare-fun res!1126559 () Bool)

(declare-fun e!1688959 () Bool)

(assert (=> d!766495 (=> res!1126559 e!1688959)))

(assert (=> d!766495 (= res!1126559 ((_ is Nil!30820) (t!224145 l!4335)))))

(assert (=> d!766495 (= (forall!6528 (t!224145 l!4335) lambda!100039) e!1688959)))

(declare-fun b!2679448 () Bool)

(declare-fun e!1688960 () Bool)

(assert (=> b!2679448 (= e!1688959 e!1688960)))

(declare-fun res!1126560 () Bool)

(assert (=> b!2679448 (=> (not res!1126560) (not e!1688960))))

(assert (=> b!2679448 (= res!1126560 (dynLambda!13414 lambda!100039 (h!36240 (t!224145 l!4335))))))

(declare-fun b!2679449 () Bool)

(assert (=> b!2679449 (= e!1688960 (forall!6528 (t!224145 (t!224145 l!4335)) lambda!100039))))

(assert (= (and d!766495 (not res!1126559)) b!2679448))

(assert (= (and b!2679448 res!1126560) b!2679449))

(declare-fun b_lambda!81851 () Bool)

(assert (=> (not b_lambda!81851) (not b!2679448)))

(declare-fun m!3047957 () Bool)

(assert (=> b!2679448 m!3047957))

(declare-fun m!3047959 () Bool)

(assert (=> b!2679449 m!3047959))

(assert (=> b!2678437 d!766495))

(declare-fun d!766499 () Bool)

(assert (=> d!766499 (= (inv!41838 (tag!5211 (rule!7119 (h!36240 (t!224145 l!4335))))) (= (mod (str.len (value!151810 (tag!5211 (rule!7119 (h!36240 (t!224145 l!4335)))))) 2) 0))))

(assert (=> b!2678470 d!766499))

(declare-fun d!766501 () Bool)

(declare-fun res!1126563 () Bool)

(declare-fun e!1688963 () Bool)

(assert (=> d!766501 (=> (not res!1126563) (not e!1688963))))

(assert (=> d!766501 (= res!1126563 (semiInverseModEq!1954 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (toValue!6659 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335)))))))))

(assert (=> d!766501 (= (inv!41841 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) e!1688963)))

(declare-fun b!2679452 () Bool)

(assert (=> b!2679452 (= e!1688963 (equivClasses!1855 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (toValue!6659 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335)))))))))

(assert (= (and d!766501 res!1126563) b!2679452))

(declare-fun m!3047965 () Bool)

(assert (=> d!766501 m!3047965))

(declare-fun m!3047967 () Bool)

(assert (=> b!2679452 m!3047967))

(assert (=> b!2678470 d!766501))

(declare-fun d!766505 () Bool)

(assert (=> d!766505 (dynLambda!13414 lambda!100040 (h!36240 l!4335))))

(assert (=> d!766505 true))

(declare-fun _$7!997 () Unit!45039)

(assert (=> d!766505 (= (choose!15863 l!4335 lambda!100040 (h!36240 l!4335)) _$7!997)))

(declare-fun b_lambda!81855 () Bool)

(assert (=> (not b_lambda!81855) (not d!766505)))

(declare-fun bs!480124 () Bool)

(assert (= bs!480124 d!766505))

(assert (=> bs!480124 m!3045807))

(assert (=> d!765883 d!766505))

(declare-fun d!766507 () Bool)

(declare-fun res!1126571 () Bool)

(declare-fun e!1688967 () Bool)

(assert (=> d!766507 (=> res!1126571 e!1688967)))

(assert (=> d!766507 (= res!1126571 ((_ is Nil!30820) l!4335))))

(assert (=> d!766507 (= (forall!6528 l!4335 lambda!100040) e!1688967)))

(declare-fun b!2679462 () Bool)

(declare-fun e!1688968 () Bool)

(assert (=> b!2679462 (= e!1688967 e!1688968)))

(declare-fun res!1126572 () Bool)

(assert (=> b!2679462 (=> (not res!1126572) (not e!1688968))))

(assert (=> b!2679462 (= res!1126572 (dynLambda!13414 lambda!100040 (h!36240 l!4335)))))

(declare-fun b!2679463 () Bool)

(assert (=> b!2679463 (= e!1688968 (forall!6528 (t!224145 l!4335) lambda!100040))))

(assert (= (and d!766507 (not res!1126571)) b!2679462))

(assert (= (and b!2679462 res!1126572) b!2679463))

(declare-fun b_lambda!81857 () Bool)

(assert (=> (not b_lambda!81857) (not b!2679462)))

(assert (=> b!2679462 m!3045807))

(declare-fun m!3047969 () Bool)

(assert (=> b!2679463 m!3047969))

(assert (=> d!765883 d!766507))

(declare-fun d!766509 () Bool)

(declare-fun lt!943975 () Int)

(assert (=> d!766509 (= lt!943975 (size!23824 (list!11649 (_2!17681 lt!943147))))))

(declare-fun size!23831 (Conc!9648) Int)

(assert (=> d!766509 (= lt!943975 (size!23831 (c!431444 (_2!17681 lt!943147))))))

(assert (=> d!766509 (= (size!23825 (_2!17681 lt!943147)) lt!943975)))

(declare-fun bs!480125 () Bool)

(assert (= bs!480125 d!766509))

(assert (=> bs!480125 m!3045497))

(assert (=> bs!480125 m!3045497))

(declare-fun m!3047997 () Bool)

(assert (=> bs!480125 m!3047997))

(declare-fun m!3047999 () Bool)

(assert (=> bs!480125 m!3047999))

(assert (=> b!2678178 d!766509))

(declare-fun d!766513 () Bool)

(declare-fun lt!943976 () Int)

(assert (=> d!766513 (= lt!943976 (size!23824 (list!11649 (seqFromList!3209 lt!943080))))))

(assert (=> d!766513 (= lt!943976 (size!23831 (c!431444 (seqFromList!3209 lt!943080))))))

(assert (=> d!766513 (= (size!23825 (seqFromList!3209 lt!943080)) lt!943976)))

(declare-fun bs!480126 () Bool)

(assert (= bs!480126 d!766513))

(assert (=> bs!480126 m!3045273))

(assert (=> bs!480126 m!3045483))

(assert (=> bs!480126 m!3045483))

(assert (=> bs!480126 m!3047179))

(declare-fun m!3048001 () Bool)

(assert (=> bs!480126 m!3048001))

(assert (=> b!2678178 d!766513))

(assert (=> b!2678282 d!765961))

(declare-fun bm!172757 () Bool)

(declare-fun call!172762 () Bool)

(assert (=> bm!172757 (= call!172762 (isEmpty!17652 lt!943304))))

(declare-fun b!2679464 () Bool)

(declare-fun e!1688972 () Bool)

(assert (=> b!2679464 (= e!1688972 (nullable!2593 (regex!4709 (rule!7119 lt!943309))))))

(declare-fun b!2679465 () Bool)

(declare-fun res!1126579 () Bool)

(declare-fun e!1688975 () Bool)

(assert (=> b!2679465 (=> res!1126579 e!1688975)))

(assert (=> b!2679465 (= res!1126579 (not ((_ is ElementMatch!7853) (regex!4709 (rule!7119 lt!943309)))))))

(declare-fun e!1688973 () Bool)

(assert (=> b!2679465 (= e!1688973 e!1688975)))

(declare-fun d!766515 () Bool)

(declare-fun e!1688970 () Bool)

(assert (=> d!766515 e!1688970))

(declare-fun c!431757 () Bool)

(assert (=> d!766515 (= c!431757 ((_ is EmptyExpr!7853) (regex!4709 (rule!7119 lt!943309))))))

(declare-fun lt!943977 () Bool)

(assert (=> d!766515 (= lt!943977 e!1688972)))

(declare-fun c!431759 () Bool)

(assert (=> d!766515 (= c!431759 (isEmpty!17652 lt!943304))))

(assert (=> d!766515 (validRegex!3302 (regex!4709 (rule!7119 lt!943309)))))

(assert (=> d!766515 (= (matchR!3632 (regex!4709 (rule!7119 lt!943309)) lt!943304) lt!943977)))

(declare-fun b!2679466 () Bool)

(declare-fun e!1688974 () Bool)

(assert (=> b!2679466 (= e!1688974 (not (= (head!6089 lt!943304) (c!431445 (regex!4709 (rule!7119 lt!943309))))))))

(declare-fun b!2679467 () Bool)

(declare-fun res!1126577 () Bool)

(assert (=> b!2679467 (=> res!1126577 e!1688974)))

(assert (=> b!2679467 (= res!1126577 (not (isEmpty!17652 (tail!4327 lt!943304))))))

(declare-fun b!2679468 () Bool)

(declare-fun e!1688969 () Bool)

(assert (=> b!2679468 (= e!1688969 e!1688974)))

(declare-fun res!1126575 () Bool)

(assert (=> b!2679468 (=> res!1126575 e!1688974)))

(assert (=> b!2679468 (= res!1126575 call!172762)))

(declare-fun b!2679469 () Bool)

(assert (=> b!2679469 (= e!1688975 e!1688969)))

(declare-fun res!1126573 () Bool)

(assert (=> b!2679469 (=> (not res!1126573) (not e!1688969))))

(assert (=> b!2679469 (= res!1126573 (not lt!943977))))

(declare-fun b!2679470 () Bool)

(declare-fun res!1126578 () Bool)

(assert (=> b!2679470 (=> res!1126578 e!1688975)))

(declare-fun e!1688971 () Bool)

(assert (=> b!2679470 (= res!1126578 e!1688971)))

(declare-fun res!1126574 () Bool)

(assert (=> b!2679470 (=> (not res!1126574) (not e!1688971))))

(assert (=> b!2679470 (= res!1126574 lt!943977)))

(declare-fun b!2679471 () Bool)

(declare-fun res!1126580 () Bool)

(assert (=> b!2679471 (=> (not res!1126580) (not e!1688971))))

(assert (=> b!2679471 (= res!1126580 (not call!172762))))

(declare-fun b!2679472 () Bool)

(assert (=> b!2679472 (= e!1688973 (not lt!943977))))

(declare-fun b!2679473 () Bool)

(assert (=> b!2679473 (= e!1688972 (matchR!3632 (derivativeStep!2239 (regex!4709 (rule!7119 lt!943309)) (head!6089 lt!943304)) (tail!4327 lt!943304)))))

(declare-fun b!2679474 () Bool)

(assert (=> b!2679474 (= e!1688971 (= (head!6089 lt!943304) (c!431445 (regex!4709 (rule!7119 lt!943309)))))))

(declare-fun b!2679475 () Bool)

(declare-fun res!1126576 () Bool)

(assert (=> b!2679475 (=> (not res!1126576) (not e!1688971))))

(assert (=> b!2679475 (= res!1126576 (isEmpty!17652 (tail!4327 lt!943304)))))

(declare-fun b!2679476 () Bool)

(assert (=> b!2679476 (= e!1688970 e!1688973)))

(declare-fun c!431758 () Bool)

(assert (=> b!2679476 (= c!431758 ((_ is EmptyLang!7853) (regex!4709 (rule!7119 lt!943309))))))

(declare-fun b!2679477 () Bool)

(assert (=> b!2679477 (= e!1688970 (= lt!943977 call!172762))))

(assert (= (and d!766515 c!431759) b!2679464))

(assert (= (and d!766515 (not c!431759)) b!2679473))

(assert (= (and d!766515 c!431757) b!2679477))

(assert (= (and d!766515 (not c!431757)) b!2679476))

(assert (= (and b!2679476 c!431758) b!2679472))

(assert (= (and b!2679476 (not c!431758)) b!2679465))

(assert (= (and b!2679465 (not res!1126579)) b!2679470))

(assert (= (and b!2679470 res!1126574) b!2679471))

(assert (= (and b!2679471 res!1126580) b!2679475))

(assert (= (and b!2679475 res!1126576) b!2679474))

(assert (= (and b!2679470 (not res!1126578)) b!2679469))

(assert (= (and b!2679469 res!1126573) b!2679468))

(assert (= (and b!2679468 (not res!1126575)) b!2679467))

(assert (= (and b!2679467 (not res!1126577)) b!2679466))

(assert (= (or b!2679477 b!2679468 b!2679471) bm!172757))

(declare-fun m!3048009 () Bool)

(assert (=> b!2679464 m!3048009))

(declare-fun m!3048011 () Bool)

(assert (=> b!2679473 m!3048011))

(assert (=> b!2679473 m!3048011))

(declare-fun m!3048013 () Bool)

(assert (=> b!2679473 m!3048013))

(declare-fun m!3048015 () Bool)

(assert (=> b!2679473 m!3048015))

(assert (=> b!2679473 m!3048013))

(assert (=> b!2679473 m!3048015))

(declare-fun m!3048017 () Bool)

(assert (=> b!2679473 m!3048017))

(assert (=> b!2679466 m!3048011))

(assert (=> b!2679474 m!3048011))

(assert (=> b!2679467 m!3048015))

(assert (=> b!2679467 m!3048015))

(declare-fun m!3048019 () Bool)

(assert (=> b!2679467 m!3048019))

(declare-fun m!3048021 () Bool)

(assert (=> bm!172757 m!3048021))

(assert (=> b!2679475 m!3048015))

(assert (=> b!2679475 m!3048015))

(assert (=> b!2679475 m!3048019))

(assert (=> d!766515 m!3048021))

(declare-fun m!3048023 () Bool)

(assert (=> d!766515 m!3048023))

(assert (=> b!2678282 d!766515))

(declare-fun b!2679485 () Bool)

(declare-fun res!1126584 () Bool)

(declare-fun e!1688983 () Bool)

(assert (=> b!2679485 (=> (not res!1126584) (not e!1688983))))

(declare-fun lt!943981 () Option!6102)

(assert (=> b!2679485 (= res!1126584 (= (value!151811 (_1!17680 (get!9687 lt!943981))) (apply!7402 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943981)))) (seqFromList!3209 (originalCharacters!5475 (_1!17680 (get!9687 lt!943981)))))))))

(declare-fun b!2679486 () Bool)

(declare-fun e!1688980 () Bool)

(assert (=> b!2679486 (= e!1688980 (matchR!3632 (regex!4709 (rule!7119 lt!943309)) (_1!17684 (findLongestMatchInner!778 (regex!4709 (rule!7119 lt!943309)) Nil!30818 (size!23824 Nil!30818) lt!943315 lt!943315 (size!23824 lt!943315)))))))

(declare-fun b!2679487 () Bool)

(declare-fun e!1688981 () Option!6102)

(assert (=> b!2679487 (= e!1688981 None!6101)))

(declare-fun b!2679488 () Bool)

(declare-fun res!1126588 () Bool)

(assert (=> b!2679488 (=> (not res!1126588) (not e!1688983))))

(assert (=> b!2679488 (= res!1126588 (= (rule!7119 (_1!17680 (get!9687 lt!943981))) (rule!7119 lt!943309)))))

(declare-fun b!2679489 () Bool)

(declare-fun e!1688982 () Bool)

(assert (=> b!2679489 (= e!1688982 e!1688983)))

(declare-fun res!1126585 () Bool)

(assert (=> b!2679489 (=> (not res!1126585) (not e!1688983))))

(assert (=> b!2679489 (= res!1126585 (matchR!3632 (regex!4709 (rule!7119 lt!943309)) (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943981))))))))

(declare-fun b!2679491 () Bool)

(assert (=> b!2679491 (= e!1688983 (= (size!23819 (_1!17680 (get!9687 lt!943981))) (size!23824 (originalCharacters!5475 (_1!17680 (get!9687 lt!943981))))))))

(declare-fun b!2679492 () Bool)

(declare-fun res!1126587 () Bool)

(assert (=> b!2679492 (=> (not res!1126587) (not e!1688983))))

(assert (=> b!2679492 (= res!1126587 (= (++!7525 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!943981)))) (_2!17680 (get!9687 lt!943981))) lt!943315))))

(declare-fun b!2679493 () Bool)

(declare-fun res!1126590 () Bool)

(assert (=> b!2679493 (=> (not res!1126590) (not e!1688983))))

(assert (=> b!2679493 (= res!1126590 (< (size!23824 (_2!17680 (get!9687 lt!943981))) (size!23824 lt!943315)))))

(declare-fun d!766521 () Bool)

(assert (=> d!766521 e!1688982))

(declare-fun res!1126589 () Bool)

(assert (=> d!766521 (=> res!1126589 e!1688982)))

(assert (=> d!766521 (= res!1126589 (isEmpty!17655 lt!943981))))

(assert (=> d!766521 (= lt!943981 e!1688981)))

(declare-fun c!431762 () Bool)

(declare-fun lt!943983 () tuple2!30284)

(assert (=> d!766521 (= c!431762 (isEmpty!17652 (_1!17684 lt!943983)))))

(assert (=> d!766521 (= lt!943983 (findLongestMatch!703 (regex!4709 (rule!7119 lt!943309)) lt!943315))))

(assert (=> d!766521 (ruleValid!1556 thiss!14116 (rule!7119 lt!943309))))

(assert (=> d!766521 (= (maxPrefixOneRule!1490 thiss!14116 (rule!7119 lt!943309) lt!943315) lt!943981)))

(declare-fun b!2679490 () Bool)

(assert (=> b!2679490 (= e!1688981 (Some!6101 (tuple2!30277 (Token!8889 (apply!7402 (transformation!4709 (rule!7119 lt!943309)) (seqFromList!3209 (_1!17684 lt!943983))) (rule!7119 lt!943309) (size!23825 (seqFromList!3209 (_1!17684 lt!943983))) (_1!17684 lt!943983)) (_2!17684 lt!943983))))))

(declare-fun lt!943979 () Unit!45039)

(assert (=> b!2679490 (= lt!943979 (longestMatchIsAcceptedByMatchOrIsEmpty!751 (regex!4709 (rule!7119 lt!943309)) lt!943315))))

(declare-fun res!1126586 () Bool)

(assert (=> b!2679490 (= res!1126586 (isEmpty!17652 (_1!17684 (findLongestMatchInner!778 (regex!4709 (rule!7119 lt!943309)) Nil!30818 (size!23824 Nil!30818) lt!943315 lt!943315 (size!23824 lt!943315)))))))

(assert (=> b!2679490 (=> res!1126586 e!1688980)))

(assert (=> b!2679490 e!1688980))

(declare-fun lt!943982 () Unit!45039)

(assert (=> b!2679490 (= lt!943982 lt!943979)))

(declare-fun lt!943980 () Unit!45039)

(assert (=> b!2679490 (= lt!943980 (lemmaSemiInverse!1125 (transformation!4709 (rule!7119 lt!943309)) (seqFromList!3209 (_1!17684 lt!943983))))))

(assert (= (and d!766521 c!431762) b!2679487))

(assert (= (and d!766521 (not c!431762)) b!2679490))

(assert (= (and b!2679490 (not res!1126586)) b!2679486))

(assert (= (and d!766521 (not res!1126589)) b!2679489))

(assert (= (and b!2679489 res!1126585) b!2679492))

(assert (= (and b!2679492 res!1126587) b!2679493))

(assert (= (and b!2679493 res!1126590) b!2679488))

(assert (= (and b!2679488 res!1126588) b!2679485))

(assert (= (and b!2679485 res!1126584) b!2679491))

(assert (=> b!2679486 m!3046357))

(declare-fun m!3048039 () Bool)

(assert (=> b!2679486 m!3048039))

(assert (=> b!2679486 m!3046357))

(assert (=> b!2679486 m!3048039))

(declare-fun m!3048041 () Bool)

(assert (=> b!2679486 m!3048041))

(declare-fun m!3048043 () Bool)

(assert (=> b!2679486 m!3048043))

(declare-fun m!3048045 () Bool)

(assert (=> b!2679485 m!3048045))

(declare-fun m!3048047 () Bool)

(assert (=> b!2679485 m!3048047))

(assert (=> b!2679485 m!3048047))

(declare-fun m!3048049 () Bool)

(assert (=> b!2679485 m!3048049))

(assert (=> b!2679493 m!3048045))

(declare-fun m!3048051 () Bool)

(assert (=> b!2679493 m!3048051))

(assert (=> b!2679493 m!3048039))

(assert (=> b!2679491 m!3048045))

(declare-fun m!3048053 () Bool)

(assert (=> b!2679491 m!3048053))

(declare-fun m!3048055 () Bool)

(assert (=> d!766521 m!3048055))

(declare-fun m!3048057 () Bool)

(assert (=> d!766521 m!3048057))

(declare-fun m!3048061 () Bool)

(assert (=> d!766521 m!3048061))

(declare-fun m!3048063 () Bool)

(assert (=> d!766521 m!3048063))

(declare-fun m!3048065 () Bool)

(assert (=> b!2679490 m!3048065))

(declare-fun m!3048067 () Bool)

(assert (=> b!2679490 m!3048067))

(assert (=> b!2679490 m!3048039))

(assert (=> b!2679490 m!3048065))

(declare-fun m!3048069 () Bool)

(assert (=> b!2679490 m!3048069))

(assert (=> b!2679490 m!3048065))

(assert (=> b!2679490 m!3048065))

(declare-fun m!3048071 () Bool)

(assert (=> b!2679490 m!3048071))

(assert (=> b!2679490 m!3046357))

(assert (=> b!2679490 m!3046357))

(assert (=> b!2679490 m!3048039))

(assert (=> b!2679490 m!3048041))

(declare-fun m!3048073 () Bool)

(assert (=> b!2679490 m!3048073))

(declare-fun m!3048075 () Bool)

(assert (=> b!2679490 m!3048075))

(assert (=> b!2679488 m!3048045))

(assert (=> b!2679492 m!3048045))

(declare-fun m!3048077 () Bool)

(assert (=> b!2679492 m!3048077))

(assert (=> b!2679492 m!3048077))

(declare-fun m!3048079 () Bool)

(assert (=> b!2679492 m!3048079))

(assert (=> b!2679492 m!3048079))

(declare-fun m!3048081 () Bool)

(assert (=> b!2679492 m!3048081))

(assert (=> b!2679489 m!3048045))

(assert (=> b!2679489 m!3048077))

(assert (=> b!2679489 m!3048077))

(assert (=> b!2679489 m!3048079))

(assert (=> b!2679489 m!3048079))

(declare-fun m!3048083 () Bool)

(assert (=> b!2679489 m!3048083))

(assert (=> b!2678282 d!766521))

(assert (=> b!2678282 d!765991))

(declare-fun d!766527 () Bool)

(assert (=> d!766527 (isEmpty!17655 (maxPrefixOneRule!1490 thiss!14116 (rule!7119 lt!943309) lt!943315))))

(declare-fun lt!943986 () Unit!45039)

(declare-fun choose!15880 (LexerInterface!4306 Rule!9218 List!30919 List!30918) Unit!45039)

(assert (=> d!766527 (= lt!943986 (choose!15880 thiss!14116 (rule!7119 lt!943309) rules!1712 lt!943315))))

(assert (=> d!766527 (not (isEmpty!17644 rules!1712))))

(assert (=> d!766527 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!443 thiss!14116 (rule!7119 lt!943309) rules!1712 lt!943315) lt!943986)))

(declare-fun bs!480134 () Bool)

(assert (= bs!480134 d!766527))

(assert (=> bs!480134 m!3045797))

(assert (=> bs!480134 m!3045797))

(assert (=> bs!480134 m!3045799))

(declare-fun m!3048109 () Bool)

(assert (=> bs!480134 m!3048109))

(assert (=> bs!480134 m!3045271))

(assert (=> b!2678282 d!766527))

(assert (=> b!2678282 d!765887))

(declare-fun d!766535 () Bool)

(assert (=> d!766535 (not (matchR!3632 (regex!4709 (rule!7119 lt!943309)) lt!943304))))

(declare-fun lt!943989 () Unit!45039)

(declare-fun choose!15881 (LexerInterface!4306 Rule!9218 List!30918 List!30918) Unit!45039)

(assert (=> d!766535 (= lt!943989 (choose!15881 thiss!14116 (rule!7119 lt!943309) lt!943304 (++!7525 lt!943080 lt!943082)))))

(assert (=> d!766535 (isPrefix!2461 lt!943304 (++!7525 lt!943080 lt!943082))))

(assert (=> d!766535 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!431 thiss!14116 (rule!7119 lt!943309) lt!943304 (++!7525 lt!943080 lt!943082)) lt!943989)))

(declare-fun bs!480135 () Bool)

(assert (= bs!480135 d!766535))

(assert (=> bs!480135 m!3045795))

(assert (=> bs!480135 m!3045259))

(declare-fun m!3048111 () Bool)

(assert (=> bs!480135 m!3048111))

(assert (=> bs!480135 m!3045259))

(declare-fun m!3048113 () Bool)

(assert (=> bs!480135 m!3048113))

(assert (=> b!2678282 d!766535))

(declare-fun d!766537 () Bool)

(assert (=> d!766537 (= (isEmpty!17655 (maxPrefixOneRule!1490 thiss!14116 (rule!7119 lt!943309) lt!943315)) (not ((_ is Some!6101) (maxPrefixOneRule!1490 thiss!14116 (rule!7119 lt!943309) lt!943315))))))

(assert (=> b!2678282 d!766537))

(declare-fun d!766539 () Bool)

(declare-fun e!1689036 () Bool)

(assert (=> d!766539 e!1689036))

(declare-fun res!1126593 () Bool)

(assert (=> d!766539 (=> (not res!1126593) (not e!1689036))))

(declare-fun lt!943992 () BalanceConc!18910)

(assert (=> d!766539 (= res!1126593 (= (list!11649 lt!943992) lt!943080))))

(declare-fun fromList!572 (List!30918) Conc!9648)

(assert (=> d!766539 (= lt!943992 (BalanceConc!18911 (fromList!572 lt!943080)))))

(assert (=> d!766539 (= (fromListB!1451 lt!943080) lt!943992)))

(declare-fun b!2679603 () Bool)

(assert (=> b!2679603 (= e!1689036 (isBalanced!2927 (fromList!572 lt!943080)))))

(assert (= (and d!766539 res!1126593) b!2679603))

(declare-fun m!3048115 () Bool)

(assert (=> d!766539 m!3048115))

(declare-fun m!3048117 () Bool)

(assert (=> d!766539 m!3048117))

(assert (=> b!2679603 m!3048117))

(assert (=> b!2679603 m!3048117))

(declare-fun m!3048119 () Bool)

(assert (=> b!2679603 m!3048119))

(assert (=> d!765825 d!766539))

(declare-fun d!766541 () Bool)

(assert (=> d!766541 (dynLambda!13414 lambda!100052 (h!36240 (t!224145 l!4335)))))

(declare-fun lt!943993 () Unit!45039)

(assert (=> d!766541 (= lt!943993 (choose!15863 (t!224145 l!4335) lambda!100052 (h!36240 (t!224145 l!4335))))))

(declare-fun e!1689037 () Bool)

(assert (=> d!766541 e!1689037))

(declare-fun res!1126594 () Bool)

(assert (=> d!766541 (=> (not res!1126594) (not e!1689037))))

(assert (=> d!766541 (= res!1126594 (forall!6528 (t!224145 l!4335) lambda!100052))))

(assert (=> d!766541 (= (forallContained!1049 (t!224145 l!4335) lambda!100052 (h!36240 (t!224145 l!4335))) lt!943993)))

(declare-fun b!2679604 () Bool)

(assert (=> b!2679604 (= e!1689037 (contains!5933 (t!224145 l!4335) (h!36240 (t!224145 l!4335))))))

(assert (= (and d!766541 res!1126594) b!2679604))

(declare-fun b_lambda!81873 () Bool)

(assert (=> (not b_lambda!81873) (not d!766541)))

(declare-fun m!3048121 () Bool)

(assert (=> d!766541 m!3048121))

(declare-fun m!3048123 () Bool)

(assert (=> d!766541 m!3048123))

(declare-fun m!3048125 () Bool)

(assert (=> d!766541 m!3048125))

(declare-fun m!3048127 () Bool)

(assert (=> b!2679604 m!3048127))

(assert (=> b!2678391 d!766541))

(declare-fun bs!480136 () Bool)

(declare-fun b!2679606 () Bool)

(assert (= bs!480136 (and b!2679606 d!765847)))

(declare-fun lambda!100085 () Int)

(assert (=> bs!480136 (= lambda!100085 lambda!100046)))

(declare-fun bs!480137 () Bool)

(assert (= bs!480137 (and b!2679606 b!2678391)))

(assert (=> bs!480137 (= lambda!100085 lambda!100052)))

(declare-fun bs!480138 () Bool)

(assert (= bs!480138 (and b!2679606 d!766171)))

(assert (=> bs!480138 (= lambda!100085 lambda!100073)))

(declare-fun bs!480139 () Bool)

(assert (= bs!480139 (and b!2679606 b!2677958)))

(assert (=> bs!480139 (= lambda!100085 lambda!100040)))

(declare-fun bs!480140 () Bool)

(assert (= bs!480140 (and b!2679606 b!2677968)))

(assert (=> bs!480140 (not (= lambda!100085 lambda!100039))))

(declare-fun b!2679617 () Bool)

(declare-fun e!1689045 () Bool)

(assert (=> b!2679617 (= e!1689045 true)))

(declare-fun b!2679616 () Bool)

(declare-fun e!1689044 () Bool)

(assert (=> b!2679616 (= e!1689044 e!1689045)))

(declare-fun b!2679615 () Bool)

(declare-fun e!1689043 () Bool)

(assert (=> b!2679615 (= e!1689043 e!1689044)))

(assert (=> b!2679606 e!1689043))

(assert (= b!2679616 b!2679617))

(assert (= b!2679615 b!2679616))

(assert (= (and b!2679606 ((_ is Cons!30819) rules!1712)) b!2679615))

(assert (=> b!2679617 (< (dynLambda!13408 order!17019 (toValue!6659 (transformation!4709 (h!36239 rules!1712)))) (dynLambda!13409 order!17021 lambda!100085))))

(assert (=> b!2679617 (< (dynLambda!13410 order!17023 (toChars!6518 (transformation!4709 (h!36239 rules!1712)))) (dynLambda!13409 order!17021 lambda!100085))))

(assert (=> b!2679606 true))

(declare-fun b!2679605 () Bool)

(declare-fun e!1689042 () List!30918)

(declare-fun lt!943994 () List!30918)

(assert (=> b!2679605 (= e!1689042 lt!943994)))

(declare-fun e!1689040 () List!30918)

(declare-fun e!1689039 () List!30918)

(assert (=> b!2679606 (= e!1689040 e!1689039)))

(declare-fun lt!943996 () Unit!45039)

(assert (=> b!2679606 (= lt!943996 (forallContained!1049 (t!224145 (t!224145 l!4335)) lambda!100085 (h!36240 (t!224145 (t!224145 l!4335)))))))

(assert (=> b!2679606 (= lt!943994 (printWithSeparatorTokenWhenNeededList!698 thiss!14116 rules!1712 (t!224145 (t!224145 (t!224145 l!4335))) separatorToken!152))))

(declare-fun lt!943997 () Option!6102)

(assert (=> b!2679606 (= lt!943997 (maxPrefix!2342 thiss!14116 rules!1712 (++!7525 (list!11649 (charsOf!2970 (h!36240 (t!224145 (t!224145 l!4335))))) lt!943994)))))

(declare-fun c!431769 () Bool)

(assert (=> b!2679606 (= c!431769 (and ((_ is Some!6101) lt!943997) (= (_1!17680 (v!32668 lt!943997)) (h!36240 (t!224145 (t!224145 l!4335))))))))

(declare-fun d!766543 () Bool)

(declare-fun c!431767 () Bool)

(assert (=> d!766543 (= c!431767 ((_ is Cons!30820) (t!224145 (t!224145 l!4335))))))

(assert (=> d!766543 (= (printWithSeparatorTokenWhenNeededList!698 thiss!14116 rules!1712 (t!224145 (t!224145 l!4335)) separatorToken!152) e!1689040)))

(declare-fun b!2679607 () Bool)

(declare-fun c!431771 () Bool)

(assert (=> b!2679607 (= c!431771 (and ((_ is Some!6101) lt!943997) (not (= (_1!17680 (v!32668 lt!943997)) (h!36240 (t!224145 (t!224145 l!4335)))))))))

(declare-fun e!1689041 () List!30918)

(assert (=> b!2679607 (= e!1689039 e!1689041)))

(declare-fun bm!172758 () Bool)

(declare-fun call!172764 () BalanceConc!18910)

(assert (=> bm!172758 (= call!172764 (charsOf!2970 (h!36240 (t!224145 (t!224145 l!4335)))))))

(declare-fun b!2679608 () Bool)

(assert (=> b!2679608 (= e!1689040 Nil!30818)))

(declare-fun bm!172759 () Bool)

(declare-fun call!172766 () List!30918)

(declare-fun call!172765 () List!30918)

(assert (=> bm!172759 (= call!172766 call!172765)))

(declare-fun c!431770 () Bool)

(assert (=> bm!172759 (= c!431770 c!431771)))

(declare-fun b!2679609 () Bool)

(assert (=> b!2679609 (= e!1689041 Nil!30818)))

(assert (=> b!2679609 (= (print!1685 thiss!14116 (singletonSeq!2106 (h!36240 (t!224145 (t!224145 l!4335))))) (printTailRec!1157 thiss!14116 (singletonSeq!2106 (h!36240 (t!224145 (t!224145 l!4335)))) 0 (BalanceConc!18911 Empty!9648)))))

(declare-fun lt!943998 () Unit!45039)

(declare-fun Unit!45059 () Unit!45039)

(assert (=> b!2679609 (= lt!943998 Unit!45059)))

(declare-fun lt!943999 () Unit!45039)

(assert (=> b!2679609 (= lt!943999 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!825 thiss!14116 rules!1712 call!172766 lt!943994))))

(assert (=> b!2679609 false))

(declare-fun lt!943995 () Unit!45039)

(declare-fun Unit!45060 () Unit!45039)

(assert (=> b!2679609 (= lt!943995 Unit!45060)))

(declare-fun call!172767 () BalanceConc!18910)

(declare-fun bm!172760 () Bool)

(assert (=> bm!172760 (= call!172767 (charsOf!2970 (ite c!431771 separatorToken!152 (h!36240 (t!224145 (t!224145 l!4335))))))))

(declare-fun b!2679610 () Bool)

(declare-fun call!172763 () List!30918)

(assert (=> b!2679610 (= e!1689041 (++!7525 call!172763 lt!943994))))

(declare-fun b!2679611 () Bool)

(declare-fun e!1689038 () BalanceConc!18910)

(assert (=> b!2679611 (= e!1689038 call!172764)))

(declare-fun b!2679612 () Bool)

(assert (=> b!2679612 (= e!1689042 (list!11649 call!172767))))

(declare-fun bm!172761 () Bool)

(declare-fun c!431768 () Bool)

(assert (=> bm!172761 (= c!431768 c!431769)))

(assert (=> bm!172761 (= call!172763 (++!7525 (ite c!431769 call!172765 call!172766) e!1689042))))

(declare-fun bm!172762 () Bool)

(assert (=> bm!172762 (= call!172765 (list!11649 (ite c!431769 call!172764 e!1689038)))))

(declare-fun b!2679613 () Bool)

(assert (=> b!2679613 (= e!1689039 call!172763)))

(declare-fun b!2679614 () Bool)

(assert (=> b!2679614 (= e!1689038 call!172767)))

(assert (= (and d!766543 c!431767) b!2679606))

(assert (= (and d!766543 (not c!431767)) b!2679608))

(assert (= (and b!2679606 c!431769) b!2679613))

(assert (= (and b!2679606 (not c!431769)) b!2679607))

(assert (= (and b!2679607 c!431771) b!2679610))

(assert (= (and b!2679607 (not c!431771)) b!2679609))

(assert (= (or b!2679610 b!2679609) bm!172760))

(assert (= (or b!2679610 b!2679609) bm!172759))

(assert (= (and bm!172759 c!431770) b!2679611))

(assert (= (and bm!172759 (not c!431770)) b!2679614))

(assert (= (or b!2679613 b!2679611) bm!172758))

(assert (= (or b!2679613 bm!172759) bm!172762))

(assert (= (or b!2679613 b!2679610) bm!172761))

(assert (= (and bm!172761 c!431768) b!2679605))

(assert (= (and bm!172761 (not c!431768)) b!2679612))

(declare-fun m!3048129 () Bool)

(assert (=> bm!172758 m!3048129))

(declare-fun m!3048131 () Bool)

(assert (=> b!2679606 m!3048131))

(declare-fun m!3048133 () Bool)

(assert (=> b!2679606 m!3048133))

(assert (=> b!2679606 m!3048129))

(declare-fun m!3048135 () Bool)

(assert (=> b!2679606 m!3048135))

(declare-fun m!3048137 () Bool)

(assert (=> b!2679606 m!3048137))

(declare-fun m!3048139 () Bool)

(assert (=> b!2679606 m!3048139))

(assert (=> b!2679606 m!3048135))

(assert (=> b!2679606 m!3048129))

(assert (=> b!2679606 m!3048139))

(declare-fun m!3048141 () Bool)

(assert (=> bm!172760 m!3048141))

(declare-fun m!3048143 () Bool)

(assert (=> b!2679609 m!3048143))

(assert (=> b!2679609 m!3048143))

(declare-fun m!3048145 () Bool)

(assert (=> b!2679609 m!3048145))

(assert (=> b!2679609 m!3048143))

(declare-fun m!3048147 () Bool)

(assert (=> b!2679609 m!3048147))

(declare-fun m!3048149 () Bool)

(assert (=> b!2679609 m!3048149))

(declare-fun m!3048151 () Bool)

(assert (=> bm!172762 m!3048151))

(declare-fun m!3048153 () Bool)

(assert (=> b!2679610 m!3048153))

(declare-fun m!3048155 () Bool)

(assert (=> bm!172761 m!3048155))

(declare-fun m!3048157 () Bool)

(assert (=> b!2679612 m!3048157))

(assert (=> b!2678391 d!766543))

(declare-fun d!766545 () Bool)

(declare-fun lt!944000 () BalanceConc!18910)

(assert (=> d!766545 (= (list!11649 lt!944000) (originalCharacters!5475 (h!36240 (t!224145 l!4335))))))

(assert (=> d!766545 (= lt!944000 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))) (value!151811 (h!36240 (t!224145 l!4335)))))))

(assert (=> d!766545 (= (charsOf!2970 (h!36240 (t!224145 l!4335))) lt!944000)))

(declare-fun b_lambda!81875 () Bool)

(assert (=> (not b_lambda!81875) (not d!766545)))

(assert (=> d!766545 t!224202))

(declare-fun b_and!198351 () Bool)

(assert (= b_and!198341 (and (=> t!224202 result!185736) b_and!198351)))

(assert (=> d!766545 t!224204))

(declare-fun b_and!198353 () Bool)

(assert (= b_and!198339 (and (=> t!224204 result!185738) b_and!198353)))

(assert (=> d!766545 t!224206))

(declare-fun b_and!198355 () Bool)

(assert (= b_and!198333 (and (=> t!224206 result!185740) b_and!198355)))

(assert (=> d!766545 t!224208))

(declare-fun b_and!198357 () Bool)

(assert (= b_and!198335 (and (=> t!224208 result!185742) b_and!198357)))

(assert (=> d!766545 t!224210))

(declare-fun b_and!198359 () Bool)

(assert (= b_and!198337 (and (=> t!224210 result!185744) b_and!198359)))

(declare-fun m!3048159 () Bool)

(assert (=> d!766545 m!3048159))

(assert (=> d!766545 m!3046047))

(assert (=> b!2678391 d!766545))

(declare-fun b!2679618 () Bool)

(declare-fun e!1689046 () List!30918)

(assert (=> b!2679618 (= e!1689046 lt!943344)))

(declare-fun d!766547 () Bool)

(declare-fun e!1689047 () Bool)

(assert (=> d!766547 e!1689047))

(declare-fun res!1126595 () Bool)

(assert (=> d!766547 (=> (not res!1126595) (not e!1689047))))

(declare-fun lt!944001 () List!30918)

(assert (=> d!766547 (= res!1126595 (= (content!4387 lt!944001) ((_ map or) (content!4387 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335))))) (content!4387 lt!943344))))))

(assert (=> d!766547 (= lt!944001 e!1689046)))

(declare-fun c!431772 () Bool)

(assert (=> d!766547 (= c!431772 ((_ is Nil!30818) (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335))))))))

(assert (=> d!766547 (= (++!7525 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335)))) lt!943344) lt!944001)))

(declare-fun b!2679621 () Bool)

(assert (=> b!2679621 (= e!1689047 (or (not (= lt!943344 Nil!30818)) (= lt!944001 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335)))))))))

(declare-fun b!2679619 () Bool)

(assert (=> b!2679619 (= e!1689046 (Cons!30818 (h!36238 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335))))) (++!7525 (t!224143 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335))))) lt!943344)))))

(declare-fun b!2679620 () Bool)

(declare-fun res!1126596 () Bool)

(assert (=> b!2679620 (=> (not res!1126596) (not e!1689047))))

(assert (=> b!2679620 (= res!1126596 (= (size!23824 lt!944001) (+ (size!23824 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335))))) (size!23824 lt!943344))))))

(assert (= (and d!766547 c!431772) b!2679618))

(assert (= (and d!766547 (not c!431772)) b!2679619))

(assert (= (and d!766547 res!1126595) b!2679620))

(assert (= (and b!2679620 res!1126596) b!2679621))

(declare-fun m!3048161 () Bool)

(assert (=> d!766547 m!3048161))

(assert (=> d!766547 m!3045861))

(declare-fun m!3048163 () Bool)

(assert (=> d!766547 m!3048163))

(assert (=> d!766547 m!3046845))

(declare-fun m!3048165 () Bool)

(assert (=> b!2679619 m!3048165))

(declare-fun m!3048167 () Bool)

(assert (=> b!2679620 m!3048167))

(assert (=> b!2679620 m!3045861))

(declare-fun m!3048169 () Bool)

(assert (=> b!2679620 m!3048169))

(assert (=> b!2679620 m!3046853))

(assert (=> b!2678391 d!766547))

(declare-fun b!2679622 () Bool)

(declare-fun res!1126598 () Bool)

(declare-fun e!1689049 () Bool)

(assert (=> b!2679622 (=> (not res!1126598) (not e!1689049))))

(declare-fun lt!944004 () Option!6102)

(assert (=> b!2679622 (= res!1126598 (= (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!944004)))) (originalCharacters!5475 (_1!17680 (get!9687 lt!944004)))))))

(declare-fun b!2679623 () Bool)

(declare-fun res!1126599 () Bool)

(assert (=> b!2679623 (=> (not res!1126599) (not e!1689049))))

(assert (=> b!2679623 (= res!1126599 (< (size!23824 (_2!17680 (get!9687 lt!944004))) (size!23824 (++!7525 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335)))) lt!943344))))))

(declare-fun b!2679624 () Bool)

(declare-fun e!1689048 () Option!6102)

(declare-fun call!172768 () Option!6102)

(assert (=> b!2679624 (= e!1689048 call!172768)))

(declare-fun d!766549 () Bool)

(declare-fun e!1689050 () Bool)

(assert (=> d!766549 e!1689050))

(declare-fun res!1126603 () Bool)

(assert (=> d!766549 (=> res!1126603 e!1689050)))

(assert (=> d!766549 (= res!1126603 (isEmpty!17655 lt!944004))))

(assert (=> d!766549 (= lt!944004 e!1689048)))

(declare-fun c!431773 () Bool)

(assert (=> d!766549 (= c!431773 (and ((_ is Cons!30819) rules!1712) ((_ is Nil!30819) (t!224144 rules!1712))))))

(declare-fun lt!944003 () Unit!45039)

(declare-fun lt!944006 () Unit!45039)

(assert (=> d!766549 (= lt!944003 lt!944006)))

(assert (=> d!766549 (isPrefix!2461 (++!7525 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335)))) lt!943344) (++!7525 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335)))) lt!943344))))

(assert (=> d!766549 (= lt!944006 (lemmaIsPrefixRefl!1587 (++!7525 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335)))) lt!943344) (++!7525 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335)))) lt!943344)))))

(assert (=> d!766549 (rulesValidInductive!1641 thiss!14116 rules!1712)))

(assert (=> d!766549 (= (maxPrefix!2342 thiss!14116 rules!1712 (++!7525 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335)))) lt!943344)) lt!944004)))

(declare-fun b!2679625 () Bool)

(declare-fun res!1126602 () Bool)

(assert (=> b!2679625 (=> (not res!1126602) (not e!1689049))))

(assert (=> b!2679625 (= res!1126602 (= (++!7525 (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!944004)))) (_2!17680 (get!9687 lt!944004))) (++!7525 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335)))) lt!943344)))))

(declare-fun b!2679626 () Bool)

(assert (=> b!2679626 (= e!1689050 e!1689049)))

(declare-fun res!1126601 () Bool)

(assert (=> b!2679626 (=> (not res!1126601) (not e!1689049))))

(assert (=> b!2679626 (= res!1126601 (isDefined!4849 lt!944004))))

(declare-fun b!2679627 () Bool)

(declare-fun lt!944005 () Option!6102)

(declare-fun lt!944002 () Option!6102)

(assert (=> b!2679627 (= e!1689048 (ite (and ((_ is None!6101) lt!944005) ((_ is None!6101) lt!944002)) None!6101 (ite ((_ is None!6101) lt!944002) lt!944005 (ite ((_ is None!6101) lt!944005) lt!944002 (ite (>= (size!23819 (_1!17680 (v!32668 lt!944005))) (size!23819 (_1!17680 (v!32668 lt!944002)))) lt!944005 lt!944002)))))))

(assert (=> b!2679627 (= lt!944005 call!172768)))

(assert (=> b!2679627 (= lt!944002 (maxPrefix!2342 thiss!14116 (t!224144 rules!1712) (++!7525 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335)))) lt!943344)))))

(declare-fun b!2679628 () Bool)

(declare-fun res!1126600 () Bool)

(assert (=> b!2679628 (=> (not res!1126600) (not e!1689049))))

(assert (=> b!2679628 (= res!1126600 (= (value!151811 (_1!17680 (get!9687 lt!944004))) (apply!7402 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!944004)))) (seqFromList!3209 (originalCharacters!5475 (_1!17680 (get!9687 lt!944004)))))))))

(declare-fun b!2679629 () Bool)

(assert (=> b!2679629 (= e!1689049 (contains!5935 rules!1712 (rule!7119 (_1!17680 (get!9687 lt!944004)))))))

(declare-fun b!2679630 () Bool)

(declare-fun res!1126597 () Bool)

(assert (=> b!2679630 (=> (not res!1126597) (not e!1689049))))

(assert (=> b!2679630 (= res!1126597 (matchR!3632 (regex!4709 (rule!7119 (_1!17680 (get!9687 lt!944004)))) (list!11649 (charsOf!2970 (_1!17680 (get!9687 lt!944004))))))))

(declare-fun bm!172763 () Bool)

(assert (=> bm!172763 (= call!172768 (maxPrefixOneRule!1490 thiss!14116 (h!36239 rules!1712) (++!7525 (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335)))) lt!943344)))))

(assert (= (and d!766549 c!431773) b!2679624))

(assert (= (and d!766549 (not c!431773)) b!2679627))

(assert (= (or b!2679624 b!2679627) bm!172763))

(assert (= (and d!766549 (not res!1126603)) b!2679626))

(assert (= (and b!2679626 res!1126601) b!2679622))

(assert (= (and b!2679622 res!1126598) b!2679623))

(assert (= (and b!2679623 res!1126599) b!2679625))

(assert (= (and b!2679625 res!1126602) b!2679628))

(assert (= (and b!2679628 res!1126600) b!2679630))

(assert (= (and b!2679630 res!1126597) b!2679629))

(declare-fun m!3048171 () Bool)

(assert (=> b!2679626 m!3048171))

(declare-fun m!3048173 () Bool)

(assert (=> b!2679629 m!3048173))

(declare-fun m!3048175 () Bool)

(assert (=> b!2679629 m!3048175))

(assert (=> b!2679623 m!3048173))

(declare-fun m!3048177 () Bool)

(assert (=> b!2679623 m!3048177))

(assert (=> b!2679623 m!3045857))

(declare-fun m!3048179 () Bool)

(assert (=> b!2679623 m!3048179))

(assert (=> b!2679628 m!3048173))

(declare-fun m!3048181 () Bool)

(assert (=> b!2679628 m!3048181))

(assert (=> b!2679628 m!3048181))

(declare-fun m!3048183 () Bool)

(assert (=> b!2679628 m!3048183))

(declare-fun m!3048185 () Bool)

(assert (=> d!766549 m!3048185))

(assert (=> d!766549 m!3045857))

(assert (=> d!766549 m!3045857))

(declare-fun m!3048187 () Bool)

(assert (=> d!766549 m!3048187))

(assert (=> d!766549 m!3045857))

(assert (=> d!766549 m!3045857))

(declare-fun m!3048189 () Bool)

(assert (=> d!766549 m!3048189))

(assert (=> d!766549 m!3045901))

(assert (=> b!2679627 m!3045857))

(declare-fun m!3048191 () Bool)

(assert (=> b!2679627 m!3048191))

(assert (=> b!2679630 m!3048173))

(declare-fun m!3048193 () Bool)

(assert (=> b!2679630 m!3048193))

(assert (=> b!2679630 m!3048193))

(declare-fun m!3048195 () Bool)

(assert (=> b!2679630 m!3048195))

(assert (=> b!2679630 m!3048195))

(declare-fun m!3048197 () Bool)

(assert (=> b!2679630 m!3048197))

(assert (=> b!2679622 m!3048173))

(assert (=> b!2679622 m!3048193))

(assert (=> b!2679622 m!3048193))

(assert (=> b!2679622 m!3048195))

(assert (=> b!2679625 m!3048173))

(assert (=> b!2679625 m!3048193))

(assert (=> b!2679625 m!3048193))

(assert (=> b!2679625 m!3048195))

(assert (=> b!2679625 m!3048195))

(declare-fun m!3048199 () Bool)

(assert (=> b!2679625 m!3048199))

(assert (=> bm!172763 m!3045857))

(declare-fun m!3048201 () Bool)

(assert (=> bm!172763 m!3048201))

(assert (=> b!2678391 d!766549))

(declare-fun d!766551 () Bool)

(assert (=> d!766551 (= (list!11649 (charsOf!2970 (h!36240 (t!224145 l!4335)))) (list!11653 (c!431444 (charsOf!2970 (h!36240 (t!224145 l!4335))))))))

(declare-fun bs!480141 () Bool)

(assert (= bs!480141 d!766551))

(declare-fun m!3048203 () Bool)

(assert (=> bs!480141 m!3048203))

(assert (=> b!2678391 d!766551))

(declare-fun d!766553 () Bool)

(declare-fun lt!944007 () Int)

(assert (=> d!766553 (>= lt!944007 0)))

(declare-fun e!1689051 () Int)

(assert (=> d!766553 (= lt!944007 e!1689051)))

(declare-fun c!431774 () Bool)

(assert (=> d!766553 (= c!431774 ((_ is Nil!30818) lt!943325))))

(assert (=> d!766553 (= (size!23824 lt!943325) lt!944007)))

(declare-fun b!2679631 () Bool)

(assert (=> b!2679631 (= e!1689051 0)))

(declare-fun b!2679632 () Bool)

(assert (=> b!2679632 (= e!1689051 (+ 1 (size!23824 (t!224143 lt!943325))))))

(assert (= (and d!766553 c!431774) b!2679631))

(assert (= (and d!766553 (not c!431774)) b!2679632))

(declare-fun m!3048205 () Bool)

(assert (=> b!2679632 m!3048205))

(assert (=> b!2678297 d!766553))

(declare-fun d!766555 () Bool)

(declare-fun lt!944008 () Int)

(assert (=> d!766555 (>= lt!944008 0)))

(declare-fun e!1689052 () Int)

(assert (=> d!766555 (= lt!944008 e!1689052)))

(declare-fun c!431775 () Bool)

(assert (=> d!766555 (= c!431775 ((_ is Nil!30818) lt!943080))))

(assert (=> d!766555 (= (size!23824 lt!943080) lt!944008)))

(declare-fun b!2679633 () Bool)

(assert (=> b!2679633 (= e!1689052 0)))

(declare-fun b!2679634 () Bool)

(assert (=> b!2679634 (= e!1689052 (+ 1 (size!23824 (t!224143 lt!943080))))))

(assert (= (and d!766555 c!431775) b!2679633))

(assert (= (and d!766555 (not c!431775)) b!2679634))

(assert (=> b!2679634 m!3046895))

(assert (=> b!2678297 d!766555))

(declare-fun d!766557 () Bool)

(declare-fun lt!944009 () Int)

(assert (=> d!766557 (>= lt!944009 0)))

(declare-fun e!1689053 () Int)

(assert (=> d!766557 (= lt!944009 e!1689053)))

(declare-fun c!431776 () Bool)

(assert (=> d!766557 (= c!431776 ((_ is Nil!30818) lt!943082))))

(assert (=> d!766557 (= (size!23824 lt!943082) lt!944009)))

(declare-fun b!2679635 () Bool)

(assert (=> b!2679635 (= e!1689053 0)))

(declare-fun b!2679636 () Bool)

(assert (=> b!2679636 (= e!1689053 (+ 1 (size!23824 (t!224143 lt!943082))))))

(assert (= (and d!766557 c!431776) b!2679635))

(assert (= (and d!766557 (not c!431776)) b!2679636))

(declare-fun m!3048207 () Bool)

(assert (=> b!2679636 m!3048207))

(assert (=> b!2678297 d!766557))

(declare-fun bs!480142 () Bool)

(declare-fun d!766559 () Bool)

(assert (= bs!480142 (and d!766559 d!766449)))

(declare-fun lambda!100088 () Int)

(assert (=> bs!480142 (= lambda!100088 lambda!100082)))

(assert (=> d!766559 true))

(declare-fun lt!944012 () Bool)

(assert (=> d!766559 (= lt!944012 (rulesValidInductive!1641 thiss!14116 rules!1712))))

(assert (=> d!766559 (= lt!944012 (forall!6530 rules!1712 lambda!100088))))

(assert (=> d!766559 (= (rulesValid!1759 thiss!14116 rules!1712) lt!944012)))

(declare-fun bs!480143 () Bool)

(assert (= bs!480143 d!766559))

(assert (=> bs!480143 m!3045901))

(declare-fun m!3048209 () Bool)

(assert (=> bs!480143 m!3048209))

(assert (=> d!765801 d!766559))

(assert (=> bm!172714 d!766545))

(declare-fun b!2679639 () Bool)

(declare-fun e!1689054 () Bool)

(declare-fun tp!847024 () Bool)

(assert (=> b!2679639 (= e!1689054 tp!847024)))

(declare-fun b!2679640 () Bool)

(declare-fun tp!847020 () Bool)

(declare-fun tp!847021 () Bool)

(assert (=> b!2679640 (= e!1689054 (and tp!847020 tp!847021))))

(declare-fun b!2679637 () Bool)

(assert (=> b!2679637 (= e!1689054 tp_is_empty!13837)))

(declare-fun b!2679638 () Bool)

(declare-fun tp!847022 () Bool)

(declare-fun tp!847023 () Bool)

(assert (=> b!2679638 (= e!1689054 (and tp!847022 tp!847023))))

(assert (=> b!2678489 (= tp!846889 e!1689054)))

(assert (= (and b!2678489 ((_ is ElementMatch!7853) (regOne!16219 (regex!4709 (rule!7119 separatorToken!152))))) b!2679637))

(assert (= (and b!2678489 ((_ is Concat!12785) (regOne!16219 (regex!4709 (rule!7119 separatorToken!152))))) b!2679638))

(assert (= (and b!2678489 ((_ is Star!7853) (regOne!16219 (regex!4709 (rule!7119 separatorToken!152))))) b!2679639))

(assert (= (and b!2678489 ((_ is Union!7853) (regOne!16219 (regex!4709 (rule!7119 separatorToken!152))))) b!2679640))

(declare-fun b!2679643 () Bool)

(declare-fun e!1689055 () Bool)

(declare-fun tp!847029 () Bool)

(assert (=> b!2679643 (= e!1689055 tp!847029)))

(declare-fun b!2679644 () Bool)

(declare-fun tp!847025 () Bool)

(declare-fun tp!847026 () Bool)

(assert (=> b!2679644 (= e!1689055 (and tp!847025 tp!847026))))

(declare-fun b!2679641 () Bool)

(assert (=> b!2679641 (= e!1689055 tp_is_empty!13837)))

(declare-fun b!2679642 () Bool)

(declare-fun tp!847027 () Bool)

(declare-fun tp!847028 () Bool)

(assert (=> b!2679642 (= e!1689055 (and tp!847027 tp!847028))))

(assert (=> b!2678489 (= tp!846890 e!1689055)))

(assert (= (and b!2678489 ((_ is ElementMatch!7853) (regTwo!16219 (regex!4709 (rule!7119 separatorToken!152))))) b!2679641))

(assert (= (and b!2678489 ((_ is Concat!12785) (regTwo!16219 (regex!4709 (rule!7119 separatorToken!152))))) b!2679642))

(assert (= (and b!2678489 ((_ is Star!7853) (regTwo!16219 (regex!4709 (rule!7119 separatorToken!152))))) b!2679643))

(assert (= (and b!2678489 ((_ is Union!7853) (regTwo!16219 (regex!4709 (rule!7119 separatorToken!152))))) b!2679644))

(declare-fun b!2679648 () Bool)

(declare-fun b_free!75565 () Bool)

(declare-fun b_next!76269 () Bool)

(assert (=> b!2679648 (= b_free!75565 (not b_next!76269))))

(declare-fun t!224385 () Bool)

(declare-fun tb!150553 () Bool)

(assert (=> (and b!2679648 (= (toValue!6659 (transformation!4709 (rule!7119 (h!36240 (t!224145 (t!224145 l!4335)))))) (toValue!6659 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))) t!224385) tb!150553))

(declare-fun result!185918 () Bool)

(assert (= result!185918 result!185826))

(assert (=> d!766303 t!224385))

(declare-fun tp!847030 () Bool)

(declare-fun b_and!198361 () Bool)

(assert (=> b!2679648 (= tp!847030 (and (=> t!224385 result!185918) b_and!198361))))

(declare-fun b_free!75567 () Bool)

(declare-fun b_next!76271 () Bool)

(assert (=> b!2679648 (= b_free!75567 (not b_next!76271))))

(declare-fun t!224387 () Bool)

(declare-fun tb!150555 () Bool)

(assert (=> (and b!2679648 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 (t!224145 l!4335)))))) (toChars!6518 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))) t!224387) tb!150555))

(declare-fun result!185920 () Bool)

(assert (= result!185920 result!185784))

(assert (=> d!766111 t!224387))

(declare-fun t!224389 () Bool)

(declare-fun tb!150557 () Bool)

(assert (=> (and b!2679648 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 (t!224145 l!4335)))))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335))))) t!224389) tb!150557))

(declare-fun result!185922 () Bool)

(assert (= result!185922 result!185692))

(assert (=> b!2678183 t!224389))

(declare-fun t!224391 () Bool)

(declare-fun tb!150559 () Bool)

(assert (=> (and b!2679648 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 (t!224145 l!4335)))))) (toChars!6518 (transformation!4709 (rule!7119 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335))))))) t!224391) tb!150559))

(declare-fun result!185924 () Bool)

(assert (= result!185924 result!185870))

(assert (=> d!766485 t!224391))

(declare-fun t!224393 () Bool)

(declare-fun tb!150561 () Bool)

(assert (=> (and b!2679648 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 (t!224145 l!4335)))))) (toChars!6518 (transformation!4709 (rule!7119 lt!943309)))) t!224393) tb!150561))

(declare-fun result!185926 () Bool)

(assert (= result!185926 result!185746))

(assert (=> d!765961 t!224393))

(declare-fun t!224395 () Bool)

(declare-fun tb!150563 () Bool)

(assert (=> (and b!2679648 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 (t!224145 l!4335)))))) (toChars!6518 (transformation!4709 (rule!7119 (apply!7399 lt!943077 0))))) t!224395) tb!150563))

(declare-fun result!185928 () Bool)

(assert (= result!185928 result!185838))

(assert (=> d!766319 t!224395))

(declare-fun t!224397 () Bool)

(declare-fun tb!150565 () Bool)

(assert (=> (and b!2679648 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 (t!224145 l!4335)))))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335)))))) t!224397) tb!150565))

(declare-fun result!185930 () Bool)

(assert (= result!185930 result!185736))

(assert (=> b!2678556 t!224397))

(assert (=> d!765881 t!224389))

(declare-fun t!224399 () Bool)

(declare-fun tb!150567 () Bool)

(assert (=> (and b!2679648 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 (t!224145 l!4335)))))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820)))))) t!224399) tb!150567))

(declare-fun result!185932 () Bool)

(assert (= result!185932 result!185816))

(assert (=> d!766297 t!224399))

(declare-fun t!224401 () Bool)

(declare-fun tb!150569 () Bool)

(assert (=> (and b!2679648 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 (t!224145 l!4335)))))) (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152)))) t!224401) tb!150569))

(declare-fun result!185934 () Bool)

(assert (= result!185934 result!185684))

(assert (=> b!2678140 t!224401))

(assert (=> d!766545 t!224397))

(declare-fun tp!847033 () Bool)

(declare-fun b_and!198363 () Bool)

(assert (=> b!2679648 (= tp!847033 (and (=> t!224401 result!185934) (=> t!224397 result!185930) (=> t!224389 result!185922) (=> t!224399 result!185932) (=> t!224395 result!185928) (=> t!224393 result!185926) (=> t!224391 result!185924) (=> t!224387 result!185920) b_and!198363))))

(declare-fun e!1689059 () Bool)

(declare-fun e!1689058 () Bool)

(declare-fun tp!847034 () Bool)

(declare-fun b!2679646 () Bool)

(assert (=> b!2679646 (= e!1689058 (and (inv!21 (value!151811 (h!36240 (t!224145 (t!224145 l!4335))))) e!1689059 tp!847034))))

(declare-fun e!1689056 () Bool)

(assert (=> b!2679648 (= e!1689056 (and tp!847030 tp!847033))))

(declare-fun b!2679645 () Bool)

(declare-fun e!1689061 () Bool)

(declare-fun tp!847032 () Bool)

(assert (=> b!2679645 (= e!1689061 (and (inv!41842 (h!36240 (t!224145 (t!224145 l!4335)))) e!1689058 tp!847032))))

(declare-fun b!2679647 () Bool)

(declare-fun tp!847031 () Bool)

(assert (=> b!2679647 (= e!1689059 (and tp!847031 (inv!41838 (tag!5211 (rule!7119 (h!36240 (t!224145 (t!224145 l!4335)))))) (inv!41841 (transformation!4709 (rule!7119 (h!36240 (t!224145 (t!224145 l!4335)))))) e!1689056))))

(assert (=> b!2678468 (= tp!846871 e!1689061)))

(assert (= b!2679647 b!2679648))

(assert (= b!2679646 b!2679647))

(assert (= b!2679645 b!2679646))

(assert (= (and b!2678468 ((_ is Cons!30820) (t!224145 (t!224145 l!4335)))) b!2679645))

(declare-fun m!3048211 () Bool)

(assert (=> b!2679646 m!3048211))

(declare-fun m!3048213 () Bool)

(assert (=> b!2679645 m!3048213))

(declare-fun m!3048215 () Bool)

(assert (=> b!2679647 m!3048215))

(declare-fun m!3048217 () Bool)

(assert (=> b!2679647 m!3048217))

(declare-fun b!2679649 () Bool)

(declare-fun e!1689062 () Bool)

(declare-fun tp!847035 () Bool)

(assert (=> b!2679649 (= e!1689062 (and tp_is_empty!13837 tp!847035))))

(assert (=> b!2678469 (= tp!846873 e!1689062)))

(assert (= (and b!2678469 ((_ is Cons!30818) (originalCharacters!5475 (h!36240 (t!224145 l!4335))))) b!2679649))

(declare-fun b!2679652 () Bool)

(declare-fun e!1689065 () Bool)

(assert (=> b!2679652 (= e!1689065 true)))

(declare-fun b!2679651 () Bool)

(declare-fun e!1689064 () Bool)

(assert (=> b!2679651 (= e!1689064 e!1689065)))

(declare-fun b!2679650 () Bool)

(declare-fun e!1689063 () Bool)

(assert (=> b!2679650 (= e!1689063 e!1689064)))

(assert (=> b!2678400 e!1689063))

(assert (= b!2679651 b!2679652))

(assert (= b!2679650 b!2679651))

(assert (= (and b!2678400 ((_ is Cons!30819) (t!224144 rules!1712))) b!2679650))

(assert (=> b!2679652 (< (dynLambda!13408 order!17019 (toValue!6659 (transformation!4709 (h!36239 (t!224144 rules!1712))))) (dynLambda!13409 order!17021 lambda!100052))))

(assert (=> b!2679652 (< (dynLambda!13410 order!17023 (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712))))) (dynLambda!13409 order!17021 lambda!100052))))

(declare-fun b!2679655 () Bool)

(declare-fun b_free!75569 () Bool)

(declare-fun b_next!76273 () Bool)

(assert (=> b!2679655 (= b_free!75569 (not b_next!76273))))

(declare-fun tb!150571 () Bool)

(declare-fun t!224403 () Bool)

(assert (=> (and b!2679655 (= (toValue!6659 (transformation!4709 (h!36239 (t!224144 (t!224144 rules!1712))))) (toValue!6659 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))) t!224403) tb!150571))

(declare-fun result!185936 () Bool)

(assert (= result!185936 result!185826))

(assert (=> d!766303 t!224403))

(declare-fun b_and!198365 () Bool)

(declare-fun tp!847038 () Bool)

(assert (=> b!2679655 (= tp!847038 (and (=> t!224403 result!185936) b_and!198365))))

(declare-fun b_free!75571 () Bool)

(declare-fun b_next!76275 () Bool)

(assert (=> b!2679655 (= b_free!75571 (not b_next!76275))))

(declare-fun tb!150573 () Bool)

(declare-fun t!224405 () Bool)

(assert (=> (and b!2679655 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 (t!224144 rules!1712))))) (toChars!6518 (transformation!4709 (rule!7119 (_1!17680 (get!9687 lt!943362)))))) t!224405) tb!150573))

(declare-fun result!185938 () Bool)

(assert (= result!185938 result!185784))

(assert (=> d!766111 t!224405))

(declare-fun tb!150575 () Bool)

(declare-fun t!224407 () Bool)

(assert (=> (and b!2679655 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 (t!224144 rules!1712))))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335))))) t!224407) tb!150575))

(declare-fun result!185940 () Bool)

(assert (= result!185940 result!185692))

(assert (=> b!2678183 t!224407))

(declare-fun t!224409 () Bool)

(declare-fun tb!150577 () Bool)

(assert (=> (and b!2679655 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 (t!224144 rules!1712))))) (toChars!6518 (transformation!4709 (rule!7119 (ite c!431522 separatorToken!152 (h!36240 (t!224145 l!4335))))))) t!224409) tb!150577))

(declare-fun result!185942 () Bool)

(assert (= result!185942 result!185870))

(assert (=> d!766485 t!224409))

(declare-fun t!224411 () Bool)

(declare-fun tb!150579 () Bool)

(assert (=> (and b!2679655 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 (t!224144 rules!1712))))) (toChars!6518 (transformation!4709 (rule!7119 lt!943309)))) t!224411) tb!150579))

(declare-fun result!185944 () Bool)

(assert (= result!185944 result!185746))

(assert (=> d!765961 t!224411))

(declare-fun t!224413 () Bool)

(declare-fun tb!150581 () Bool)

(assert (=> (and b!2679655 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 (t!224144 rules!1712))))) (toChars!6518 (transformation!4709 (rule!7119 (apply!7399 lt!943077 0))))) t!224413) tb!150581))

(declare-fun result!185946 () Bool)

(assert (= result!185946 result!185838))

(assert (=> d!766319 t!224413))

(declare-fun tb!150583 () Bool)

(declare-fun t!224415 () Bool)

(assert (=> (and b!2679655 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 (t!224144 rules!1712))))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335)))))) t!224415) tb!150583))

(declare-fun result!185948 () Bool)

(assert (= result!185948 result!185736))

(assert (=> b!2678556 t!224415))

(assert (=> d!765881 t!224407))

(declare-fun tb!150585 () Bool)

(declare-fun t!224417 () Bool)

(assert (=> (and b!2679655 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 (t!224144 rules!1712))))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (Cons!30820 (h!36240 l!4335) Nil!30820)))))) t!224417) tb!150585))

(declare-fun result!185950 () Bool)

(assert (= result!185950 result!185816))

(assert (=> d!766297 t!224417))

(declare-fun t!224419 () Bool)

(declare-fun tb!150587 () Bool)

(assert (=> (and b!2679655 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 (t!224144 rules!1712))))) (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152)))) t!224419) tb!150587))

(declare-fun result!185952 () Bool)

(assert (= result!185952 result!185684))

(assert (=> b!2678140 t!224419))

(assert (=> d!766545 t!224415))

(declare-fun tp!847039 () Bool)

(declare-fun b_and!198367 () Bool)

(assert (=> b!2679655 (= tp!847039 (and (=> t!224411 result!185944) (=> t!224415 result!185948) (=> t!224419 result!185952) (=> t!224409 result!185942) (=> t!224407 result!185940) (=> t!224417 result!185950) (=> t!224405 result!185938) (=> t!224413 result!185946) b_and!198367))))

(declare-fun e!1689066 () Bool)

(assert (=> b!2679655 (= e!1689066 (and tp!847038 tp!847039))))

(declare-fun tp!847036 () Bool)

(declare-fun b!2679654 () Bool)

(declare-fun e!1689069 () Bool)

(assert (=> b!2679654 (= e!1689069 (and tp!847036 (inv!41838 (tag!5211 (h!36239 (t!224144 (t!224144 rules!1712))))) (inv!41841 (transformation!4709 (h!36239 (t!224144 (t!224144 rules!1712))))) e!1689066))))

(declare-fun b!2679653 () Bool)

(declare-fun e!1689068 () Bool)

(declare-fun tp!847037 () Bool)

(assert (=> b!2679653 (= e!1689068 (and e!1689069 tp!847037))))

(assert (=> b!2678452 (= tp!846856 e!1689068)))

(assert (= b!2679654 b!2679655))

(assert (= b!2679653 b!2679654))

(assert (= (and b!2678452 ((_ is Cons!30819) (t!224144 (t!224144 rules!1712)))) b!2679653))

(declare-fun m!3048219 () Bool)

(assert (=> b!2679654 m!3048219))

(declare-fun m!3048221 () Bool)

(assert (=> b!2679654 m!3048221))

(declare-fun tp!847048 () Bool)

(declare-fun b!2679664 () Bool)

(declare-fun e!1689075 () Bool)

(declare-fun tp!847047 () Bool)

(assert (=> b!2679664 (= e!1689075 (and (inv!41845 (left!23858 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335)))))) tp!847048 (inv!41845 (right!24188 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335)))))) tp!847047))))

(declare-fun b!2679666 () Bool)

(declare-fun e!1689074 () Bool)

(declare-fun tp!847046 () Bool)

(assert (=> b!2679666 (= e!1689074 tp!847046)))

(declare-fun b!2679665 () Bool)

(declare-fun inv!41852 (IArray!19301) Bool)

(assert (=> b!2679665 (= e!1689075 (and (inv!41852 (xs!12678 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335)))))) e!1689074))))

(assert (=> b!2678185 (= tp!846785 (and (inv!41845 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335))))) e!1689075))))

(assert (= (and b!2678185 ((_ is Node!9648) (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335)))))) b!2679664))

(assert (= b!2679665 b!2679666))

(assert (= (and b!2678185 ((_ is Leaf!14743) (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (value!151811 (h!36240 l!4335)))))) b!2679665))

(declare-fun m!3048223 () Bool)

(assert (=> b!2679664 m!3048223))

(declare-fun m!3048225 () Bool)

(assert (=> b!2679664 m!3048225))

(declare-fun m!3048227 () Bool)

(assert (=> b!2679665 m!3048227))

(assert (=> b!2678185 m!3045517))

(declare-fun b!2679669 () Bool)

(declare-fun e!1689078 () Bool)

(assert (=> b!2679669 (= e!1689078 true)))

(declare-fun b!2679668 () Bool)

(declare-fun e!1689077 () Bool)

(assert (=> b!2679668 (= e!1689077 e!1689078)))

(declare-fun b!2679667 () Bool)

(declare-fun e!1689076 () Bool)

(assert (=> b!2679667 (= e!1689076 e!1689077)))

(assert (=> b!2678257 e!1689076))

(assert (= b!2679668 b!2679669))

(assert (= b!2679667 b!2679668))

(assert (= (and b!2678257 ((_ is Cons!30819) (t!224144 rules!1712))) b!2679667))

(assert (=> b!2679669 (< (dynLambda!13408 order!17019 (toValue!6659 (transformation!4709 (h!36239 (t!224144 rules!1712))))) (dynLambda!13409 order!17021 lambda!100046))))

(assert (=> b!2679669 (< (dynLambda!13410 order!17023 (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712))))) (dynLambda!13409 order!17021 lambda!100046))))

(declare-fun b!2679672 () Bool)

(declare-fun e!1689081 () Bool)

(assert (=> b!2679672 (= e!1689081 true)))

(declare-fun b!2679671 () Bool)

(declare-fun e!1689080 () Bool)

(assert (=> b!2679671 (= e!1689080 e!1689081)))

(declare-fun b!2679670 () Bool)

(declare-fun e!1689079 () Bool)

(assert (=> b!2679670 (= e!1689079 e!1689080)))

(assert (=> b!2678455 e!1689079))

(assert (= b!2679671 b!2679672))

(assert (= b!2679670 b!2679671))

(assert (= (and b!2678455 ((_ is Cons!30819) (t!224144 (t!224144 rules!1712)))) b!2679670))

(assert (=> b!2679672 (< (dynLambda!13408 order!17019 (toValue!6659 (transformation!4709 (h!36239 (t!224144 (t!224144 rules!1712)))))) (dynLambda!13409 order!17021 lambda!100040))))

(assert (=> b!2679672 (< (dynLambda!13410 order!17023 (toChars!6518 (transformation!4709 (h!36239 (t!224144 (t!224144 rules!1712)))))) (dynLambda!13409 order!17021 lambda!100040))))

(declare-fun b!2679675 () Bool)

(declare-fun e!1689082 () Bool)

(declare-fun tp!847053 () Bool)

(assert (=> b!2679675 (= e!1689082 tp!847053)))

(declare-fun b!2679676 () Bool)

(declare-fun tp!847049 () Bool)

(declare-fun tp!847050 () Bool)

(assert (=> b!2679676 (= e!1689082 (and tp!847049 tp!847050))))

(declare-fun b!2679673 () Bool)

(assert (=> b!2679673 (= e!1689082 tp_is_empty!13837)))

(declare-fun b!2679674 () Bool)

(declare-fun tp!847051 () Bool)

(declare-fun tp!847052 () Bool)

(assert (=> b!2679674 (= e!1689082 (and tp!847051 tp!847052))))

(assert (=> b!2678487 (= tp!846891 e!1689082)))

(assert (= (and b!2678487 ((_ is ElementMatch!7853) (regOne!16218 (regex!4709 (rule!7119 separatorToken!152))))) b!2679673))

(assert (= (and b!2678487 ((_ is Concat!12785) (regOne!16218 (regex!4709 (rule!7119 separatorToken!152))))) b!2679674))

(assert (= (and b!2678487 ((_ is Star!7853) (regOne!16218 (regex!4709 (rule!7119 separatorToken!152))))) b!2679675))

(assert (= (and b!2678487 ((_ is Union!7853) (regOne!16218 (regex!4709 (rule!7119 separatorToken!152))))) b!2679676))

(declare-fun b!2679679 () Bool)

(declare-fun e!1689083 () Bool)

(declare-fun tp!847058 () Bool)

(assert (=> b!2679679 (= e!1689083 tp!847058)))

(declare-fun b!2679680 () Bool)

(declare-fun tp!847054 () Bool)

(declare-fun tp!847055 () Bool)

(assert (=> b!2679680 (= e!1689083 (and tp!847054 tp!847055))))

(declare-fun b!2679677 () Bool)

(assert (=> b!2679677 (= e!1689083 tp_is_empty!13837)))

(declare-fun b!2679678 () Bool)

(declare-fun tp!847056 () Bool)

(declare-fun tp!847057 () Bool)

(assert (=> b!2679678 (= e!1689083 (and tp!847056 tp!847057))))

(assert (=> b!2678487 (= tp!846892 e!1689083)))

(assert (= (and b!2678487 ((_ is ElementMatch!7853) (regTwo!16218 (regex!4709 (rule!7119 separatorToken!152))))) b!2679677))

(assert (= (and b!2678487 ((_ is Concat!12785) (regTwo!16218 (regex!4709 (rule!7119 separatorToken!152))))) b!2679678))

(assert (= (and b!2678487 ((_ is Star!7853) (regTwo!16218 (regex!4709 (rule!7119 separatorToken!152))))) b!2679679))

(assert (= (and b!2678487 ((_ is Union!7853) (regTwo!16218 (regex!4709 (rule!7119 separatorToken!152))))) b!2679680))

(declare-fun b!2679683 () Bool)

(declare-fun e!1689084 () Bool)

(declare-fun tp!847063 () Bool)

(assert (=> b!2679683 (= e!1689084 tp!847063)))

(declare-fun b!2679684 () Bool)

(declare-fun tp!847059 () Bool)

(declare-fun tp!847060 () Bool)

(assert (=> b!2679684 (= e!1689084 (and tp!847059 tp!847060))))

(declare-fun b!2679681 () Bool)

(assert (=> b!2679681 (= e!1689084 tp_is_empty!13837)))

(declare-fun b!2679682 () Bool)

(declare-fun tp!847061 () Bool)

(declare-fun tp!847062 () Bool)

(assert (=> b!2679682 (= e!1689084 (and tp!847061 tp!847062))))

(assert (=> b!2678488 (= tp!846893 e!1689084)))

(assert (= (and b!2678488 ((_ is ElementMatch!7853) (reg!8182 (regex!4709 (rule!7119 separatorToken!152))))) b!2679681))

(assert (= (and b!2678488 ((_ is Concat!12785) (reg!8182 (regex!4709 (rule!7119 separatorToken!152))))) b!2679682))

(assert (= (and b!2678488 ((_ is Star!7853) (reg!8182 (regex!4709 (rule!7119 separatorToken!152))))) b!2679683))

(assert (= (and b!2678488 ((_ is Union!7853) (reg!8182 (regex!4709 (rule!7119 separatorToken!152))))) b!2679684))

(declare-fun tp!847066 () Bool)

(declare-fun tp!847065 () Bool)

(declare-fun e!1689086 () Bool)

(declare-fun b!2679685 () Bool)

(assert (=> b!2679685 (= e!1689086 (and (inv!41845 (left!23858 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152))))) tp!847066 (inv!41845 (right!24188 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152))))) tp!847065))))

(declare-fun b!2679687 () Bool)

(declare-fun e!1689085 () Bool)

(declare-fun tp!847064 () Bool)

(assert (=> b!2679687 (= e!1689085 tp!847064)))

(declare-fun b!2679686 () Bool)

(assert (=> b!2679686 (= e!1689086 (and (inv!41852 (xs!12678 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152))))) e!1689085))))

(assert (=> b!2678152 (= tp!846784 (and (inv!41845 (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152)))) e!1689086))))

(assert (= (and b!2678152 ((_ is Node!9648) (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152))))) b!2679685))

(assert (= b!2679686 b!2679687))

(assert (= (and b!2678152 ((_ is Leaf!14743) (c!431444 (dynLambda!13413 (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (value!151811 separatorToken!152))))) b!2679686))

(declare-fun m!3048229 () Bool)

(assert (=> b!2679685 m!3048229))

(declare-fun m!3048231 () Bool)

(assert (=> b!2679685 m!3048231))

(declare-fun m!3048233 () Bool)

(assert (=> b!2679686 m!3048233))

(assert (=> b!2678152 m!3045457))

(declare-fun b!2679690 () Bool)

(declare-fun e!1689087 () Bool)

(declare-fun tp!847071 () Bool)

(assert (=> b!2679690 (= e!1689087 tp!847071)))

(declare-fun b!2679691 () Bool)

(declare-fun tp!847067 () Bool)

(declare-fun tp!847068 () Bool)

(assert (=> b!2679691 (= e!1689087 (and tp!847067 tp!847068))))

(declare-fun b!2679688 () Bool)

(assert (=> b!2679688 (= e!1689087 tp_is_empty!13837)))

(declare-fun b!2679689 () Bool)

(declare-fun tp!847069 () Bool)

(declare-fun tp!847070 () Bool)

(assert (=> b!2679689 (= e!1689087 (and tp!847069 tp!847070))))

(assert (=> b!2678493 (= tp!846894 e!1689087)))

(assert (= (and b!2678493 ((_ is ElementMatch!7853) (regOne!16219 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679688))

(assert (= (and b!2678493 ((_ is Concat!12785) (regOne!16219 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679689))

(assert (= (and b!2678493 ((_ is Star!7853) (regOne!16219 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679690))

(assert (= (and b!2678493 ((_ is Union!7853) (regOne!16219 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679691))

(declare-fun b!2679694 () Bool)

(declare-fun e!1689088 () Bool)

(declare-fun tp!847076 () Bool)

(assert (=> b!2679694 (= e!1689088 tp!847076)))

(declare-fun b!2679695 () Bool)

(declare-fun tp!847072 () Bool)

(declare-fun tp!847073 () Bool)

(assert (=> b!2679695 (= e!1689088 (and tp!847072 tp!847073))))

(declare-fun b!2679692 () Bool)

(assert (=> b!2679692 (= e!1689088 tp_is_empty!13837)))

(declare-fun b!2679693 () Bool)

(declare-fun tp!847074 () Bool)

(declare-fun tp!847075 () Bool)

(assert (=> b!2679693 (= e!1689088 (and tp!847074 tp!847075))))

(assert (=> b!2678493 (= tp!846895 e!1689088)))

(assert (= (and b!2678493 ((_ is ElementMatch!7853) (regTwo!16219 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679692))

(assert (= (and b!2678493 ((_ is Concat!12785) (regTwo!16219 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679693))

(assert (= (and b!2678493 ((_ is Star!7853) (regTwo!16219 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679694))

(assert (= (and b!2678493 ((_ is Union!7853) (regTwo!16219 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679695))

(declare-fun b!2679698 () Bool)

(declare-fun e!1689089 () Bool)

(declare-fun tp!847081 () Bool)

(assert (=> b!2679698 (= e!1689089 tp!847081)))

(declare-fun b!2679699 () Bool)

(declare-fun tp!847077 () Bool)

(declare-fun tp!847078 () Bool)

(assert (=> b!2679699 (= e!1689089 (and tp!847077 tp!847078))))

(declare-fun b!2679696 () Bool)

(assert (=> b!2679696 (= e!1689089 tp_is_empty!13837)))

(declare-fun b!2679697 () Bool)

(declare-fun tp!847079 () Bool)

(declare-fun tp!847080 () Bool)

(assert (=> b!2679697 (= e!1689089 (and tp!847079 tp!847080))))

(assert (=> b!2678485 (= tp!846884 e!1689089)))

(assert (= (and b!2678485 ((_ is ElementMatch!7853) (regOne!16219 (regex!4709 (h!36239 rules!1712))))) b!2679696))

(assert (= (and b!2678485 ((_ is Concat!12785) (regOne!16219 (regex!4709 (h!36239 rules!1712))))) b!2679697))

(assert (= (and b!2678485 ((_ is Star!7853) (regOne!16219 (regex!4709 (h!36239 rules!1712))))) b!2679698))

(assert (= (and b!2678485 ((_ is Union!7853) (regOne!16219 (regex!4709 (h!36239 rules!1712))))) b!2679699))

(declare-fun b!2679702 () Bool)

(declare-fun e!1689090 () Bool)

(declare-fun tp!847086 () Bool)

(assert (=> b!2679702 (= e!1689090 tp!847086)))

(declare-fun b!2679703 () Bool)

(declare-fun tp!847082 () Bool)

(declare-fun tp!847083 () Bool)

(assert (=> b!2679703 (= e!1689090 (and tp!847082 tp!847083))))

(declare-fun b!2679700 () Bool)

(assert (=> b!2679700 (= e!1689090 tp_is_empty!13837)))

(declare-fun b!2679701 () Bool)

(declare-fun tp!847084 () Bool)

(declare-fun tp!847085 () Bool)

(assert (=> b!2679701 (= e!1689090 (and tp!847084 tp!847085))))

(assert (=> b!2678485 (= tp!846885 e!1689090)))

(assert (= (and b!2678485 ((_ is ElementMatch!7853) (regTwo!16219 (regex!4709 (h!36239 rules!1712))))) b!2679700))

(assert (= (and b!2678485 ((_ is Concat!12785) (regTwo!16219 (regex!4709 (h!36239 rules!1712))))) b!2679701))

(assert (= (and b!2678485 ((_ is Star!7853) (regTwo!16219 (regex!4709 (h!36239 rules!1712))))) b!2679702))

(assert (= (and b!2678485 ((_ is Union!7853) (regTwo!16219 (regex!4709 (h!36239 rules!1712))))) b!2679703))

(declare-fun b!2679706 () Bool)

(declare-fun e!1689091 () Bool)

(declare-fun tp!847091 () Bool)

(assert (=> b!2679706 (= e!1689091 tp!847091)))

(declare-fun b!2679707 () Bool)

(declare-fun tp!847087 () Bool)

(declare-fun tp!847088 () Bool)

(assert (=> b!2679707 (= e!1689091 (and tp!847087 tp!847088))))

(declare-fun b!2679704 () Bool)

(assert (=> b!2679704 (= e!1689091 tp_is_empty!13837)))

(declare-fun b!2679705 () Bool)

(declare-fun tp!847089 () Bool)

(declare-fun tp!847090 () Bool)

(assert (=> b!2679705 (= e!1689091 (and tp!847089 tp!847090))))

(assert (=> b!2678453 (= tp!846855 e!1689091)))

(assert (= (and b!2678453 ((_ is ElementMatch!7853) (regex!4709 (h!36239 (t!224144 rules!1712))))) b!2679704))

(assert (= (and b!2678453 ((_ is Concat!12785) (regex!4709 (h!36239 (t!224144 rules!1712))))) b!2679705))

(assert (= (and b!2678453 ((_ is Star!7853) (regex!4709 (h!36239 (t!224144 rules!1712))))) b!2679706))

(assert (= (and b!2678453 ((_ is Union!7853) (regex!4709 (h!36239 (t!224144 rules!1712))))) b!2679707))

(declare-fun b!2679710 () Bool)

(declare-fun e!1689092 () Bool)

(declare-fun tp!847096 () Bool)

(assert (=> b!2679710 (= e!1689092 tp!847096)))

(declare-fun b!2679711 () Bool)

(declare-fun tp!847092 () Bool)

(declare-fun tp!847093 () Bool)

(assert (=> b!2679711 (= e!1689092 (and tp!847092 tp!847093))))

(declare-fun b!2679708 () Bool)

(assert (=> b!2679708 (= e!1689092 tp_is_empty!13837)))

(declare-fun b!2679709 () Bool)

(declare-fun tp!847094 () Bool)

(declare-fun tp!847095 () Bool)

(assert (=> b!2679709 (= e!1689092 (and tp!847094 tp!847095))))

(assert (=> b!2678470 (= tp!846870 e!1689092)))

(assert (= (and b!2678470 ((_ is ElementMatch!7853) (regex!4709 (rule!7119 (h!36240 (t!224145 l!4335)))))) b!2679708))

(assert (= (and b!2678470 ((_ is Concat!12785) (regex!4709 (rule!7119 (h!36240 (t!224145 l!4335)))))) b!2679709))

(assert (= (and b!2678470 ((_ is Star!7853) (regex!4709 (rule!7119 (h!36240 (t!224145 l!4335)))))) b!2679710))

(assert (= (and b!2678470 ((_ is Union!7853) (regex!4709 (rule!7119 (h!36240 (t!224145 l!4335)))))) b!2679711))

(declare-fun b!2679712 () Bool)

(declare-fun e!1689093 () Bool)

(declare-fun tp!847097 () Bool)

(assert (=> b!2679712 (= e!1689093 (and tp_is_empty!13837 tp!847097))))

(assert (=> b!2678442 (= tp!846845 e!1689093)))

(assert (= (and b!2678442 ((_ is Cons!30818) (t!224143 (originalCharacters!5475 separatorToken!152)))) b!2679712))

(declare-fun b!2679715 () Bool)

(declare-fun e!1689094 () Bool)

(declare-fun tp!847102 () Bool)

(assert (=> b!2679715 (= e!1689094 tp!847102)))

(declare-fun b!2679716 () Bool)

(declare-fun tp!847098 () Bool)

(declare-fun tp!847099 () Bool)

(assert (=> b!2679716 (= e!1689094 (and tp!847098 tp!847099))))

(declare-fun b!2679713 () Bool)

(assert (=> b!2679713 (= e!1689094 tp_is_empty!13837)))

(declare-fun b!2679714 () Bool)

(declare-fun tp!847100 () Bool)

(declare-fun tp!847101 () Bool)

(assert (=> b!2679714 (= e!1689094 (and tp!847100 tp!847101))))

(assert (=> b!2678491 (= tp!846896 e!1689094)))

(assert (= (and b!2678491 ((_ is ElementMatch!7853) (regOne!16218 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679713))

(assert (= (and b!2678491 ((_ is Concat!12785) (regOne!16218 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679714))

(assert (= (and b!2678491 ((_ is Star!7853) (regOne!16218 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679715))

(assert (= (and b!2678491 ((_ is Union!7853) (regOne!16218 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679716))

(declare-fun b!2679719 () Bool)

(declare-fun e!1689095 () Bool)

(declare-fun tp!847107 () Bool)

(assert (=> b!2679719 (= e!1689095 tp!847107)))

(declare-fun b!2679720 () Bool)

(declare-fun tp!847103 () Bool)

(declare-fun tp!847104 () Bool)

(assert (=> b!2679720 (= e!1689095 (and tp!847103 tp!847104))))

(declare-fun b!2679717 () Bool)

(assert (=> b!2679717 (= e!1689095 tp_is_empty!13837)))

(declare-fun b!2679718 () Bool)

(declare-fun tp!847105 () Bool)

(declare-fun tp!847106 () Bool)

(assert (=> b!2679718 (= e!1689095 (and tp!847105 tp!847106))))

(assert (=> b!2678491 (= tp!846897 e!1689095)))

(assert (= (and b!2678491 ((_ is ElementMatch!7853) (regTwo!16218 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679717))

(assert (= (and b!2678491 ((_ is Concat!12785) (regTwo!16218 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679718))

(assert (= (and b!2678491 ((_ is Star!7853) (regTwo!16218 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679719))

(assert (= (and b!2678491 ((_ is Union!7853) (regTwo!16218 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679720))

(declare-fun b!2679723 () Bool)

(declare-fun e!1689096 () Bool)

(declare-fun tp!847112 () Bool)

(assert (=> b!2679723 (= e!1689096 tp!847112)))

(declare-fun b!2679724 () Bool)

(declare-fun tp!847108 () Bool)

(declare-fun tp!847109 () Bool)

(assert (=> b!2679724 (= e!1689096 (and tp!847108 tp!847109))))

(declare-fun b!2679721 () Bool)

(assert (=> b!2679721 (= e!1689096 tp_is_empty!13837)))

(declare-fun b!2679722 () Bool)

(declare-fun tp!847110 () Bool)

(declare-fun tp!847111 () Bool)

(assert (=> b!2679722 (= e!1689096 (and tp!847110 tp!847111))))

(assert (=> b!2678483 (= tp!846886 e!1689096)))

(assert (= (and b!2678483 ((_ is ElementMatch!7853) (regOne!16218 (regex!4709 (h!36239 rules!1712))))) b!2679721))

(assert (= (and b!2678483 ((_ is Concat!12785) (regOne!16218 (regex!4709 (h!36239 rules!1712))))) b!2679722))

(assert (= (and b!2678483 ((_ is Star!7853) (regOne!16218 (regex!4709 (h!36239 rules!1712))))) b!2679723))

(assert (= (and b!2678483 ((_ is Union!7853) (regOne!16218 (regex!4709 (h!36239 rules!1712))))) b!2679724))

(declare-fun b!2679727 () Bool)

(declare-fun e!1689097 () Bool)

(declare-fun tp!847117 () Bool)

(assert (=> b!2679727 (= e!1689097 tp!847117)))

(declare-fun b!2679728 () Bool)

(declare-fun tp!847113 () Bool)

(declare-fun tp!847114 () Bool)

(assert (=> b!2679728 (= e!1689097 (and tp!847113 tp!847114))))

(declare-fun b!2679725 () Bool)

(assert (=> b!2679725 (= e!1689097 tp_is_empty!13837)))

(declare-fun b!2679726 () Bool)

(declare-fun tp!847115 () Bool)

(declare-fun tp!847116 () Bool)

(assert (=> b!2679726 (= e!1689097 (and tp!847115 tp!847116))))

(assert (=> b!2678483 (= tp!846887 e!1689097)))

(assert (= (and b!2678483 ((_ is ElementMatch!7853) (regTwo!16218 (regex!4709 (h!36239 rules!1712))))) b!2679725))

(assert (= (and b!2678483 ((_ is Concat!12785) (regTwo!16218 (regex!4709 (h!36239 rules!1712))))) b!2679726))

(assert (= (and b!2678483 ((_ is Star!7853) (regTwo!16218 (regex!4709 (h!36239 rules!1712))))) b!2679727))

(assert (= (and b!2678483 ((_ is Union!7853) (regTwo!16218 (regex!4709 (h!36239 rules!1712))))) b!2679728))

(declare-fun b!2679729 () Bool)

(declare-fun e!1689098 () Bool)

(declare-fun tp!847118 () Bool)

(assert (=> b!2679729 (= e!1689098 (and tp_is_empty!13837 tp!847118))))

(assert (=> b!2678443 (= tp!846846 e!1689098)))

(assert (= (and b!2678443 ((_ is Cons!30818) (t!224143 (originalCharacters!5475 (h!36240 l!4335))))) b!2679729))

(declare-fun b!2679732 () Bool)

(declare-fun e!1689099 () Bool)

(declare-fun tp!847123 () Bool)

(assert (=> b!2679732 (= e!1689099 tp!847123)))

(declare-fun b!2679733 () Bool)

(declare-fun tp!847119 () Bool)

(declare-fun tp!847120 () Bool)

(assert (=> b!2679733 (= e!1689099 (and tp!847119 tp!847120))))

(declare-fun b!2679730 () Bool)

(assert (=> b!2679730 (= e!1689099 tp_is_empty!13837)))

(declare-fun b!2679731 () Bool)

(declare-fun tp!847121 () Bool)

(declare-fun tp!847122 () Bool)

(assert (=> b!2679731 (= e!1689099 (and tp!847121 tp!847122))))

(assert (=> b!2678484 (= tp!846888 e!1689099)))

(assert (= (and b!2678484 ((_ is ElementMatch!7853) (reg!8182 (regex!4709 (h!36239 rules!1712))))) b!2679730))

(assert (= (and b!2678484 ((_ is Concat!12785) (reg!8182 (regex!4709 (h!36239 rules!1712))))) b!2679731))

(assert (= (and b!2678484 ((_ is Star!7853) (reg!8182 (regex!4709 (h!36239 rules!1712))))) b!2679732))

(assert (= (and b!2678484 ((_ is Union!7853) (reg!8182 (regex!4709 (h!36239 rules!1712))))) b!2679733))

(declare-fun b!2679736 () Bool)

(declare-fun e!1689100 () Bool)

(declare-fun tp!847128 () Bool)

(assert (=> b!2679736 (= e!1689100 tp!847128)))

(declare-fun b!2679737 () Bool)

(declare-fun tp!847124 () Bool)

(declare-fun tp!847125 () Bool)

(assert (=> b!2679737 (= e!1689100 (and tp!847124 tp!847125))))

(declare-fun b!2679734 () Bool)

(assert (=> b!2679734 (= e!1689100 tp_is_empty!13837)))

(declare-fun b!2679735 () Bool)

(declare-fun tp!847126 () Bool)

(declare-fun tp!847127 () Bool)

(assert (=> b!2679735 (= e!1689100 (and tp!847126 tp!847127))))

(assert (=> b!2678492 (= tp!846898 e!1689100)))

(assert (= (and b!2678492 ((_ is ElementMatch!7853) (reg!8182 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679734))

(assert (= (and b!2678492 ((_ is Concat!12785) (reg!8182 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679735))

(assert (= (and b!2678492 ((_ is Star!7853) (reg!8182 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679736))

(assert (= (and b!2678492 ((_ is Union!7853) (reg!8182 (regex!4709 (rule!7119 (h!36240 l!4335)))))) b!2679737))

(declare-fun b_lambda!81877 () Bool)

(assert (= b_lambda!81873 (or b!2678391 b_lambda!81877)))

(declare-fun bs!480144 () Bool)

(declare-fun d!766561 () Bool)

(assert (= bs!480144 (and d!766561 b!2678391)))

(assert (=> bs!480144 (= (dynLambda!13414 lambda!100052 (h!36240 (t!224145 l!4335))) (rulesProduceIndividualToken!2018 thiss!14116 rules!1712 (h!36240 (t!224145 l!4335))))))

(assert (=> bs!480144 m!3046837))

(assert (=> d!766541 d!766561))

(declare-fun b_lambda!81879 () Bool)

(assert (= b_lambda!81855 (or b!2677958 b_lambda!81879)))

(assert (=> d!766505 d!765911))

(declare-fun b_lambda!81881 () Bool)

(assert (= b_lambda!81851 (or b!2677968 b_lambda!81881)))

(declare-fun bs!480145 () Bool)

(declare-fun d!766563 () Bool)

(assert (= bs!480145 (and d!766563 b!2677968)))

(assert (=> bs!480145 (= (dynLambda!13414 lambda!100039 (h!36240 (t!224145 l!4335))) (not (isSeparator!4709 (rule!7119 (h!36240 (t!224145 l!4335))))))))

(assert (=> b!2679448 d!766563))

(declare-fun b_lambda!81883 () Bool)

(assert (= b_lambda!81875 (or (and b!2678454 b_free!75551 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))))) (and b!2679655 b_free!75571 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 (t!224144 rules!1712))))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))))) (and b!2677967 b_free!75535 (= (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))))) (and b!2679648 b_free!75567 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 (t!224145 l!4335)))))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))))) (and b!2677966 b_free!75539 (= (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))))) (and b!2677970 b_free!75531 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))))) (and b!2678471 b_free!75555) b_lambda!81883)))

(declare-fun b_lambda!81885 () Bool)

(assert (= b_lambda!81847 (or d!765847 b_lambda!81885)))

(declare-fun bs!480146 () Bool)

(declare-fun d!766565 () Bool)

(assert (= bs!480146 (and d!766565 d!765847)))

(assert (=> bs!480146 (= (dynLambda!13414 lambda!100046 (h!36240 l!4335)) (rulesProduceIndividualToken!2018 thiss!14116 rules!1712 (h!36240 l!4335)))))

(assert (=> bs!480146 m!3045269))

(assert (=> b!2679417 d!766565))

(declare-fun b_lambda!81887 () Bool)

(assert (= b_lambda!81857 (or b!2677958 b_lambda!81887)))

(assert (=> b!2679462 d!765911))

(declare-fun b_lambda!81889 () Bool)

(assert (= b_lambda!81811 (or (and b!2678454 b_free!75551 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 rules!1712)))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))))) (and b!2679655 b_free!75571 (= (toChars!6518 (transformation!4709 (h!36239 (t!224144 (t!224144 rules!1712))))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))))) (and b!2677967 b_free!75535 (= (toChars!6518 (transformation!4709 (h!36239 rules!1712))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))))) (and b!2679648 b_free!75567 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 (t!224145 l!4335)))))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))))) (and b!2677966 b_free!75539 (= (toChars!6518 (transformation!4709 (rule!7119 separatorToken!152))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))))) (and b!2677970 b_free!75531 (= (toChars!6518 (transformation!4709 (rule!7119 (h!36240 l!4335)))) (toChars!6518 (transformation!4709 (rule!7119 (h!36240 (t!224145 l!4335))))))) (and b!2678471 b_free!75555) b_lambda!81889)))

(check-sat (not d!766309) (not tb!150457) (not b!2678948) (not d!765983) (not bm!172763) (not b!2678940) (not d!766301) (not b!2679640) (not d!766539) (not d!765935) (not b!2679736) (not b!2679160) (not d!766169) (not b!2678875) (not b!2679423) (not d!765939) (not b!2679195) b_and!198367 (not d!766353) (not b_lambda!81837) (not b!2679715) (not d!766061) (not b!2678941) (not b!2679159) b_and!198355 (not d!766055) (not b_lambda!81879) (not b!2679356) (not b!2679022) (not d!766521) (not bm!172762) (not d!766535) (not b!2679050) (not b!2679131) (not b!2679024) (not d!766187) (not b!2678935) (not b!2679178) (not d!766289) (not bm!172726) (not b!2679407) (not d!766513) (not b!2679665) (not b!2679406) (not b!2678548) b_and!198365 (not b!2679664) (not b!2679623) (not d!765945) (not d!766549) (not b!2679654) (not b!2678516) (not b!2679026) (not b_lambda!81887) (not b!2679729) (not b!2679130) (not b!2679049) (not d!765961) (not b!2679176) (not b!2678946) (not b!2679670) (not d!766323) (not b_next!76269) (not d!766515) (not b!2678877) (not b!2679488) (not d!766189) (not b!2679638) (not b!2679709) (not d!766057) (not d!766279) (not b!2679678) (not b!2679707) (not b!2679629) (not d!766509) (not b!2678817) (not b!2679649) (not b!2679405) (not bs!480146) (not b!2678934) (not b!2678555) (not b!2679714) (not b!2679357) (not d!766161) (not b!2679732) (not b!2679697) (not b!2678668) (not b!2678614) b_and!198357 (not b!2678931) (not b!2679418) (not b!2679151) (not b!2678938) (not b!2679485) (not b!2679045) (not d!766317) (not d!766283) (not d!766547) (not b!2679687) (not b!2679679) (not d!766151) (not b!2678519) (not d!766231) (not b!2679724) (not b!2678990) (not b!2679694) (not b!2679106) (not d!766325) (not b!2678557) (not b!2679493) (not b_lambda!81825) (not b!2679606) (not b!2679728) (not b_next!76235) (not b!2678839) (not b!2679486) (not d!766327) (not d!766359) (not d!766159) (not b!2679012) (not b!2678518) (not d!766171) (not b!2679341) (not d!766449) (not d!766441) (not b!2679650) (not d!766291) (not d!766489) (not b!2679464) (not b!2679685) (not b!2679073) (not d!766501) (not b!2679463) (not bm!172747) (not b!2679409) (not d!766349) (not d!766307) (not b!2678876) (not b_next!76239) (not b_next!76255) (not b!2678841) (not d!766165) (not b!2679620) (not d!766149) (not b!2679125) (not bs!480144) (not b!2679044) (not b!2678781) (not b!2679062) (not b!2679609) (not b_lambda!81835) tp_is_empty!13837 (not d!766277) (not b!2678563) (not b!2678664) (not d!766281) (not b!2678815) (not b!2679019) (not b!2679447) (not b!2679121) (not b!2678777) (not b!2679144) (not b!2678928) (not b!2678869) (not b!2678909) b_and!198351 (not d!766295) (not b!2679675) (not b!2679719) (not tb!150387) (not tb!150467) (not d!766465) (not d!766305) (not b!2678520) (not b!2679171) (not b!2679702) (not d!765995) (not b!2678985) (not b!2679134) (not d!766249) (not b!2679710) (not b!2679632) (not b_next!76233) (not b!2679372) (not b!2679467) (not d!765955) (not b!2678549) (not b!2678845) (not b!2679735) (not b!2679123) (not b!2679355) b_and!198361 (not d!766363) (not b_next!76257) (not b!2678842) (not b!2679097) (not d!766339) (not b!2678613) (not d!766369) (not b!2679063) (not d!766341) (not bm!172744) (not b!2678558) (not d!766145) (not bm!172746) (not b!2679103) (not b!2678986) (not b!2679690) (not b!2679452) (not b!2679706) (not b!2678152) (not d!765991) (not d!766545) (not b!2679718) (not b!2679473) (not b!2679699) (not d!766319) (not d!766331) (not b!2679604) b_and!198283 (not b!2679492) (not b!2679703) (not b!2679127) (not b!2679643) (not d!766105) b_and!198359 (not b!2679152) (not b!2679683) (not b!2679339) (not b!2679737) b_and!198289 (not b!2678604) (not b!2679196) (not b!2679701) (not b!2679682) (not b!2679733) (not b!2679157) (not b!2679646) (not b!2678945) (not d!766367) (not b!2678867) (not b_next!76253) (not b!2679071) (not b!2679639) (not b!2678874) (not b_lambda!81883) (not b!2678782) (not b!2679731) (not b_lambda!81889) (not b!2678513) (not b!2678927) (not d!766143) (not b!2679011) (not b!2679653) (not b!2678775) (not b!2679610) (not d!766157) (not b_lambda!81803) (not b_lambda!81877) (not b!2678521) (not b!2679489) (not d!766085) (not b!2679047) (not d!766527) (not b!2678779) (not d!766141) (not b!2679722) (not d!766275) (not d!766373) (not d!766103) (not b!2679030) (not b!2679072) (not d!766285) (not d!766273) (not d!766147) (not b!2679052) (not d!765959) (not b_next!76237) (not b!2679371) (not b!2679155) (not b!2678185) (not b!2678871) (not b!2679140) (not b!2679689) (not d!766297) (not d!766129) (not b!2679711) (not d!765963) (not b_lambda!81849) (not b_lambda!81807) (not b!2679029) (not tb!150477) (not d!765941) (not d!766361) (not d!766541) (not b_lambda!81805) b_and!198353 (not b!2679676) (not b!2679612) (not b!2678989) (not b!2679712) (not b_next!76271) (not d!766201) (not bm!172722) (not b!2679076) (not b!2678933) (not b!2679627) (not d!765943) (not b!2679416) (not d!766491) (not bm!172757) (not b!2679061) (not bm!172761) (not b!2679337) (not d!766257) (not b!2678872) (not b!2678517) (not b!2679686) (not b_next!76275) b_and!198291 (not b!2679408) b_and!198285 (not bm!172758) (not b!2679667) (not b_lambda!81813) (not b!2679025) (not d!766321) (not b!2679053) (not d!765929) (not d!766551) (not tb!150507) (not b!2679726) (not d!766357) (not d!766163) (not b!2679647) (not b!2679634) (not b_lambda!81839) (not b!2679042) (not b!2679449) (not b!2679474) (not d!766183) (not b!2678780) (not b!2679630) (not b!2678926) (not b!2678939) (not d!766109) (not b!2679410) (not b!2679122) (not tb!150377) (not b_next!76243) (not b!2679636) (not b!2679645) (not b!2678615) (not d!766177) (not b_next!76259) (not b_next!76273) (not d!766127) (not d!766365) (not d!766337) (not d!766181) (not b!2679622) (not b_next!76241) (not b!2679143) (not b!2679698) (not b!2679680) (not b!2678987) (not b!2679150) (not bm!172741) (not d!766485) (not b!2679684) (not d!766197) (not b!2678778) (not b!2678966) (not b!2679691) (not b!2679070) (not b!2679693) (not b!2679124) (not b!2679419) (not d!766135) (not b_lambda!81881) (not d!766559) (not b!2679695) (not b!2679642) (not d!766193) b_and!198287 (not b!2678556) (not b!2679490) (not d!766345) (not d!766329) (not b!2678787) (not d!766227) (not b!2678967) (not bm!172760) (not b!2679491) (not b!2678837) (not d!766351) (not b!2679625) (not b!2678774) (not b!2679466) (not b!2679723) (not b!2679626) (not b!2679628) (not b!2679619) (not b!2679021) (not b!2679183) (not b!2678666) (not d!766375) (not b!2679720) (not b!2679340) (not b!2678514) (not b!2678813) (not b_lambda!81801) (not b!2678788) (not b!2679674) (not b!2679603) (not b!2679727) b_and!198363 (not b!2679112) (not bm!172745) (not d!766203) (not b!2679644) (not d!766137) (not d!766287) (not d!766333) (not b!2679058) (not b!2678606) (not b_lambda!81809) (not b!2679141) (not tb!150425) (not d!766271) (not b!2679666) (not d!766293) (not b!2678607) (not b!2678511) (not b!2679475) (not d!766111) (not b!2679615) (not b!2679716) (not b_lambda!81885) (not bm!172750) (not b!2679705) (not b!2679023) (not d!766099) (not b!2679422) (not b!2679018) (not b!2678924) (not b!2678991))
(check-sat b_and!198367 b_and!198355 b_and!198365 (not b_next!76269) b_and!198357 (not b_next!76235) b_and!198351 (not b_next!76233) b_and!198283 (not b_next!76253) (not b_next!76237) (not b_next!76241) b_and!198287 b_and!198363 (not b_next!76239) (not b_next!76255) (not b_next!76257) b_and!198361 b_and!198359 b_and!198289 b_and!198353 (not b_next!76271) b_and!198285 (not b_next!76275) b_and!198291 (not b_next!76243) (not b_next!76259) (not b_next!76273))
