; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191636 () Bool)

(assert start!191636)

(declare-fun b!1910042 () Bool)

(declare-fun b_free!53833 () Bool)

(declare-fun b_next!54537 () Bool)

(assert (=> b!1910042 (= b_free!53833 (not b_next!54537))))

(declare-fun tp!545144 () Bool)

(declare-fun b_and!148751 () Bool)

(assert (=> b!1910042 (= tp!545144 b_and!148751)))

(declare-fun b_free!53835 () Bool)

(declare-fun b_next!54539 () Bool)

(assert (=> b!1910042 (= b_free!53835 (not b_next!54539))))

(declare-fun tp!545146 () Bool)

(declare-fun b_and!148753 () Bool)

(assert (=> b!1910042 (= tp!545146 b_and!148753)))

(declare-fun b!1910025 () Bool)

(declare-fun b_free!53837 () Bool)

(declare-fun b_next!54541 () Bool)

(assert (=> b!1910025 (= b_free!53837 (not b_next!54541))))

(declare-fun tp!545137 () Bool)

(declare-fun b_and!148755 () Bool)

(assert (=> b!1910025 (= tp!545137 b_and!148755)))

(declare-fun b_free!53839 () Bool)

(declare-fun b_next!54543 () Bool)

(assert (=> b!1910025 (= b_free!53839 (not b_next!54543))))

(declare-fun tp!545141 () Bool)

(declare-fun b_and!148757 () Bool)

(assert (=> b!1910025 (= tp!545141 b_and!148757)))

(declare-fun b!1910046 () Bool)

(declare-fun b_free!53841 () Bool)

(declare-fun b_next!54545 () Bool)

(assert (=> b!1910046 (= b_free!53841 (not b_next!54545))))

(declare-fun tp!545138 () Bool)

(declare-fun b_and!148759 () Bool)

(assert (=> b!1910046 (= tp!545138 b_and!148759)))

(declare-fun b_free!53843 () Bool)

(declare-fun b_next!54547 () Bool)

(assert (=> b!1910046 (= b_free!53843 (not b_next!54547))))

(declare-fun tp!545143 () Bool)

(declare-fun b_and!148761 () Bool)

(assert (=> b!1910046 (= tp!545143 b_and!148761)))

(declare-fun b!1910023 () Bool)

(declare-fun res!852830 () Bool)

(declare-fun e!1219983 () Bool)

(assert (=> b!1910023 (=> (not res!852830) (not e!1219983))))

(declare-datatypes ((LexerInterface!3445 0))(
  ( (LexerInterfaceExt!3442 (__x!13434 Int)) (Lexer!3443) )
))
(declare-fun thiss!23328 () LexerInterface!3445)

(declare-datatypes ((List!21590 0))(
  ( (Nil!21508) (Cons!21508 (h!26909 (_ BitVec 16)) (t!178047 List!21590)) )
))
(declare-datatypes ((TokenValue!3968 0))(
  ( (FloatLiteralValue!7936 (text!28221 List!21590)) (TokenValueExt!3967 (__x!13435 Int)) (Broken!19840 (value!120777 List!21590)) (Object!4049) (End!3968) (Def!3968) (Underscore!3968) (Match!3968) (Else!3968) (Error!3968) (Case!3968) (If!3968) (Extends!3968) (Abstract!3968) (Class!3968) (Val!3968) (DelimiterValue!7936 (del!4028 List!21590)) (KeywordValue!3974 (value!120778 List!21590)) (CommentValue!7936 (value!120779 List!21590)) (WhitespaceValue!7936 (value!120780 List!21590)) (IndentationValue!3968 (value!120781 List!21590)) (String!24957) (Int32!3968) (Broken!19841 (value!120782 List!21590)) (Boolean!3969) (Unit!35861) (OperatorValue!3971 (op!4028 List!21590)) (IdentifierValue!7936 (value!120783 List!21590)) (IdentifierValue!7937 (value!120784 List!21590)) (WhitespaceValue!7937 (value!120785 List!21590)) (True!7936) (False!7936) (Broken!19842 (value!120786 List!21590)) (Broken!19843 (value!120787 List!21590)) (True!7937) (RightBrace!3968) (RightBracket!3968) (Colon!3968) (Null!3968) (Comma!3968) (LeftBracket!3968) (False!7937) (LeftBrace!3968) (ImaginaryLiteralValue!3968 (text!28222 List!21590)) (StringLiteralValue!11904 (value!120788 List!21590)) (EOFValue!3968 (value!120789 List!21590)) (IdentValue!3968 (value!120790 List!21590)) (DelimiterValue!7937 (value!120791 List!21590)) (DedentValue!3968 (value!120792 List!21590)) (NewLineValue!3968 (value!120793 List!21590)) (IntegerValue!11904 (value!120794 (_ BitVec 32)) (text!28223 List!21590)) (IntegerValue!11905 (value!120795 Int) (text!28224 List!21590)) (Times!3968) (Or!3968) (Equal!3968) (Minus!3968) (Broken!19844 (value!120796 List!21590)) (And!3968) (Div!3968) (LessEqual!3968) (Mod!3968) (Concat!9225) (Not!3968) (Plus!3968) (SpaceValue!3968 (value!120797 List!21590)) (IntegerValue!11906 (value!120798 Int) (text!28225 List!21590)) (StringLiteralValue!11905 (text!28226 List!21590)) (FloatLiteralValue!7937 (text!28227 List!21590)) (BytesLiteralValue!3968 (value!120799 List!21590)) (CommentValue!7937 (value!120800 List!21590)) (StringLiteralValue!11906 (value!120801 List!21590)) (ErrorTokenValue!3968 (msg!4029 List!21590)) )
))
(declare-datatypes ((C!10660 0))(
  ( (C!10661 (val!6282 Int)) )
))
(declare-datatypes ((List!21591 0))(
  ( (Nil!21509) (Cons!21509 (h!26910 C!10660) (t!178048 List!21591)) )
))
(declare-datatypes ((IArray!14317 0))(
  ( (IArray!14318 (innerList!7216 List!21591)) )
))
(declare-datatypes ((Conc!7156 0))(
  ( (Node!7156 (left!17194 Conc!7156) (right!17524 Conc!7156) (csize!14542 Int) (cheight!7367 Int)) (Leaf!10535 (xs!10050 IArray!14317) (csize!14543 Int)) (Empty!7156) )
))
(declare-datatypes ((BalanceConc!14128 0))(
  ( (BalanceConc!14129 (c!311238 Conc!7156)) )
))
(declare-datatypes ((TokenValueInjection!7520 0))(
  ( (TokenValueInjection!7521 (toValue!5461 Int) (toChars!5320 Int)) )
))
(declare-datatypes ((String!24958 0))(
  ( (String!24959 (value!120802 String)) )
))
(declare-datatypes ((Regex!5257 0))(
  ( (ElementMatch!5257 (c!311239 C!10660)) (Concat!9226 (regOne!11026 Regex!5257) (regTwo!11026 Regex!5257)) (EmptyExpr!5257) (Star!5257 (reg!5586 Regex!5257)) (EmptyLang!5257) (Union!5257 (regOne!11027 Regex!5257) (regTwo!11027 Regex!5257)) )
))
(declare-datatypes ((Rule!7464 0))(
  ( (Rule!7465 (regex!3832 Regex!5257) (tag!4266 String!24958) (isSeparator!3832 Bool) (transformation!3832 TokenValueInjection!7520)) )
))
(declare-datatypes ((List!21592 0))(
  ( (Nil!21510) (Cons!21510 (h!26911 Rule!7464) (t!178049 List!21592)) )
))
(declare-fun rules!3198 () List!21592)

(declare-fun rulesInvariant!3052 (LexerInterface!3445 List!21592) Bool)

(assert (=> b!1910023 (= res!852830 (rulesInvariant!3052 thiss!23328 rules!3198))))

(declare-fun b!1910024 () Bool)

(declare-fun res!852827 () Bool)

(assert (=> b!1910024 (=> (not res!852827) (not e!1219983))))

(declare-datatypes ((Token!7216 0))(
  ( (Token!7217 (value!120803 TokenValue!3968) (rule!6031 Rule!7464) (size!16960 Int) (originalCharacters!4639 List!21591)) )
))
(declare-fun separatorToken!354 () Token!7216)

(assert (=> b!1910024 (= res!852827 (isSeparator!3832 (rule!6031 separatorToken!354)))))

(declare-fun e!1219987 () Bool)

(assert (=> b!1910025 (= e!1219987 (and tp!545137 tp!545141))))

(declare-fun b!1910026 () Bool)

(declare-fun e!1219998 () Bool)

(assert (=> b!1910026 (= e!1219998 true)))

(declare-datatypes ((List!21593 0))(
  ( (Nil!21511) (Cons!21511 (h!26912 Token!7216) (t!178050 List!21593)) )
))
(declare-datatypes ((IArray!14319 0))(
  ( (IArray!14320 (innerList!7217 List!21593)) )
))
(declare-datatypes ((Conc!7157 0))(
  ( (Node!7157 (left!17195 Conc!7157) (right!17525 Conc!7157) (csize!14544 Int) (cheight!7368 Int)) (Leaf!10536 (xs!10051 IArray!14319) (csize!14545 Int)) (Empty!7157) )
))
(declare-datatypes ((BalanceConc!14130 0))(
  ( (BalanceConc!14131 (c!311240 Conc!7157)) )
))
(declare-fun lt!730336 () BalanceConc!14130)

(declare-fun print!1455 (LexerInterface!3445 BalanceConc!14130) BalanceConc!14128)

(declare-fun printTailRec!962 (LexerInterface!3445 BalanceConc!14130 Int BalanceConc!14128) BalanceConc!14128)

(assert (=> b!1910026 (= (print!1455 thiss!23328 lt!730336) (printTailRec!962 thiss!23328 lt!730336 0 (BalanceConc!14129 Empty!7156)))))

(declare-fun tokens!598 () List!21593)

(declare-fun singletonSeq!1855 (Token!7216) BalanceConc!14130)

(assert (=> b!1910026 (= lt!730336 (singletonSeq!1855 (h!26912 tokens!598)))))

(declare-fun lt!730337 () C!10660)

(declare-fun contains!3877 (List!21591 C!10660) Bool)

(declare-fun usedCharacters!340 (Regex!5257) List!21591)

(assert (=> b!1910026 (not (contains!3877 (usedCharacters!340 (regex!3832 (rule!6031 (h!26912 tokens!598)))) lt!730337))))

(declare-datatypes ((Unit!35862 0))(
  ( (Unit!35863) )
))
(declare-fun lt!730329 () Unit!35862)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!36 (LexerInterface!3445 List!21592 List!21592 Rule!7464 Rule!7464 C!10660) Unit!35862)

(assert (=> b!1910026 (= lt!730329 (lemmaNonSepRuleNotContainsCharContainedInASepRule!36 thiss!23328 rules!3198 rules!3198 (rule!6031 (h!26912 tokens!598)) (rule!6031 separatorToken!354) lt!730337))))

(declare-fun lt!730324 () Unit!35862)

(declare-fun e!1220000 () Unit!35862)

(assert (=> b!1910026 (= lt!730324 e!1220000)))

(declare-fun c!311237 () Bool)

(assert (=> b!1910026 (= c!311237 (not (contains!3877 (usedCharacters!340 (regex!3832 (rule!6031 separatorToken!354))) lt!730337)))))

(declare-fun lt!730328 () List!21591)

(declare-fun head!4436 (List!21591) C!10660)

(assert (=> b!1910026 (= lt!730337 (head!4436 lt!730328))))

(declare-fun lt!730331 () List!21591)

(declare-fun lt!730320 () List!21591)

(declare-fun ++!5781 (List!21591 List!21591) List!21591)

(assert (=> b!1910026 (= (++!5781 (++!5781 lt!730331 lt!730328) lt!730320) (++!5781 lt!730331 (++!5781 lt!730328 lt!730320)))))

(declare-fun lt!730322 () Unit!35862)

(declare-fun lemmaConcatAssociativity!1147 (List!21591 List!21591 List!21591) Unit!35862)

(assert (=> b!1910026 (= lt!730322 (lemmaConcatAssociativity!1147 lt!730331 lt!730328 lt!730320))))

(declare-fun e!1219989 () Bool)

(declare-fun tp!545136 () Bool)

(declare-fun e!1219980 () Bool)

(declare-fun b!1910027 () Bool)

(declare-fun inv!21 (TokenValue!3968) Bool)

(assert (=> b!1910027 (= e!1219989 (and (inv!21 (value!120803 separatorToken!354)) e!1219980 tp!545136))))

(declare-fun b!1910028 () Bool)

(declare-fun res!852833 () Bool)

(assert (=> b!1910028 (=> (not res!852833) (not e!1219983))))

(declare-fun sepAndNonSepRulesDisjointChars!930 (List!21592 List!21592) Bool)

(assert (=> b!1910028 (= res!852833 (sepAndNonSepRulesDisjointChars!930 rules!3198 rules!3198))))

(declare-fun res!852825 () Bool)

(assert (=> start!191636 (=> (not res!852825) (not e!1219983))))

(get-info :version)

(assert (=> start!191636 (= res!852825 ((_ is Lexer!3443) thiss!23328))))

(assert (=> start!191636 e!1219983))

(assert (=> start!191636 true))

(declare-fun e!1219985 () Bool)

(assert (=> start!191636 e!1219985))

(declare-fun e!1219994 () Bool)

(assert (=> start!191636 e!1219994))

(declare-fun inv!28618 (Token!7216) Bool)

(assert (=> start!191636 (and (inv!28618 separatorToken!354) e!1219989)))

(declare-fun b!1910029 () Bool)

(declare-fun tp!545140 () Bool)

(declare-fun e!1219981 () Bool)

(assert (=> b!1910029 (= e!1219994 (and (inv!28618 (h!26912 tokens!598)) e!1219981 tp!545140))))

(declare-fun e!1219990 () Bool)

(declare-fun b!1910030 () Bool)

(declare-fun tp!545145 () Bool)

(declare-fun inv!28615 (String!24958) Bool)

(declare-fun inv!28619 (TokenValueInjection!7520) Bool)

(assert (=> b!1910030 (= e!1219990 (and tp!545145 (inv!28615 (tag!4266 (rule!6031 (h!26912 tokens!598)))) (inv!28619 (transformation!3832 (rule!6031 (h!26912 tokens!598)))) e!1219987))))

(declare-fun e!1219991 () Bool)

(declare-fun tp!545142 () Bool)

(declare-fun b!1910031 () Bool)

(declare-fun e!1219986 () Bool)

(assert (=> b!1910031 (= e!1219986 (and tp!545142 (inv!28615 (tag!4266 (h!26911 rules!3198))) (inv!28619 (transformation!3832 (h!26911 rules!3198))) e!1219991))))

(declare-fun b!1910032 () Bool)

(declare-fun res!852836 () Bool)

(assert (=> b!1910032 (=> (not res!852836) (not e!1219983))))

(assert (=> b!1910032 (= res!852836 ((_ is Cons!21511) tokens!598))))

(declare-fun b!1910033 () Bool)

(declare-fun e!1219999 () Bool)

(declare-fun e!1219982 () Bool)

(assert (=> b!1910033 (= e!1219999 e!1219982)))

(declare-fun res!852823 () Bool)

(assert (=> b!1910033 (=> (not res!852823) (not e!1219982))))

(declare-fun lt!730334 () Rule!7464)

(declare-fun matchR!2543 (Regex!5257 List!21591) Bool)

(assert (=> b!1910033 (= res!852823 (matchR!2543 (regex!3832 lt!730334) lt!730328))))

(declare-datatypes ((Option!4369 0))(
  ( (None!4368) (Some!4368 (v!26419 Rule!7464)) )
))
(declare-fun lt!730332 () Option!4369)

(declare-fun get!6692 (Option!4369) Rule!7464)

(assert (=> b!1910033 (= lt!730334 (get!6692 lt!730332))))

(declare-fun tp!545148 () Bool)

(declare-fun b!1910034 () Bool)

(assert (=> b!1910034 (= e!1219981 (and (inv!21 (value!120803 (h!26912 tokens!598))) e!1219990 tp!545148))))

(declare-fun e!1219979 () Bool)

(declare-fun b!1910035 () Bool)

(declare-fun tp!545147 () Bool)

(assert (=> b!1910035 (= e!1219980 (and tp!545147 (inv!28615 (tag!4266 (rule!6031 separatorToken!354))) (inv!28619 (transformation!3832 (rule!6031 separatorToken!354))) e!1219979))))

(declare-fun b!1910036 () Bool)

(assert (=> b!1910036 (= e!1219983 (not e!1219998))))

(declare-fun res!852831 () Bool)

(assert (=> b!1910036 (=> res!852831 e!1219998)))

(declare-fun lt!730340 () Bool)

(declare-datatypes ((tuple2!20244 0))(
  ( (tuple2!20245 (_1!11591 Token!7216) (_2!11591 List!21591)) )
))
(declare-datatypes ((Option!4370 0))(
  ( (None!4369) (Some!4369 (v!26420 tuple2!20244)) )
))
(declare-fun lt!730326 () Option!4370)

(assert (=> b!1910036 (= res!852831 (or (and (not lt!730340) (= (_1!11591 (v!26420 lt!730326)) (h!26912 tokens!598))) lt!730340 (= (_1!11591 (v!26420 lt!730326)) (h!26912 tokens!598))))))

(assert (=> b!1910036 (= lt!730340 (not ((_ is Some!4369) lt!730326)))))

(declare-fun maxPrefix!1891 (LexerInterface!3445 List!21592 List!21591) Option!4370)

(assert (=> b!1910036 (= lt!730326 (maxPrefix!1891 thiss!23328 rules!3198 (++!5781 lt!730331 lt!730320)))))

(declare-fun printWithSeparatorTokenWhenNeededList!488 (LexerInterface!3445 List!21592 List!21593 Token!7216) List!21591)

(assert (=> b!1910036 (= lt!730320 (printWithSeparatorTokenWhenNeededList!488 thiss!23328 rules!3198 (t!178050 tokens!598) separatorToken!354))))

(declare-fun e!1219977 () Bool)

(assert (=> b!1910036 e!1219977))

(declare-fun res!852826 () Bool)

(assert (=> b!1910036 (=> (not res!852826) (not e!1219977))))

(declare-fun lt!730323 () Option!4369)

(declare-fun isDefined!3667 (Option!4369) Bool)

(assert (=> b!1910036 (= res!852826 (isDefined!3667 lt!730323))))

(declare-fun getRuleFromTag!675 (LexerInterface!3445 List!21592 String!24958) Option!4369)

(assert (=> b!1910036 (= lt!730323 (getRuleFromTag!675 thiss!23328 rules!3198 (tag!4266 (rule!6031 (h!26912 tokens!598)))))))

(declare-fun lt!730330 () Unit!35862)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!675 (LexerInterface!3445 List!21592 List!21591 Token!7216) Unit!35862)

(assert (=> b!1910036 (= lt!730330 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!675 thiss!23328 rules!3198 lt!730331 (h!26912 tokens!598)))))

(declare-fun e!1219997 () Bool)

(assert (=> b!1910036 e!1219997))

(declare-fun res!852832 () Bool)

(assert (=> b!1910036 (=> (not res!852832) (not e!1219997))))

(declare-fun lt!730338 () Option!4370)

(declare-fun isDefined!3668 (Option!4370) Bool)

(assert (=> b!1910036 (= res!852832 (isDefined!3668 lt!730338))))

(assert (=> b!1910036 (= lt!730338 (maxPrefix!1891 thiss!23328 rules!3198 lt!730331))))

(declare-fun lt!730333 () BalanceConc!14128)

(declare-fun list!8752 (BalanceConc!14128) List!21591)

(assert (=> b!1910036 (= lt!730331 (list!8752 lt!730333))))

(assert (=> b!1910036 e!1219999))

(declare-fun res!852834 () Bool)

(assert (=> b!1910036 (=> (not res!852834) (not e!1219999))))

(assert (=> b!1910036 (= res!852834 (isDefined!3667 lt!730332))))

(assert (=> b!1910036 (= lt!730332 (getRuleFromTag!675 thiss!23328 rules!3198 (tag!4266 (rule!6031 separatorToken!354))))))

(declare-fun lt!730321 () Unit!35862)

(assert (=> b!1910036 (= lt!730321 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!675 thiss!23328 rules!3198 lt!730328 separatorToken!354))))

(declare-fun charsOf!2388 (Token!7216) BalanceConc!14128)

(assert (=> b!1910036 (= lt!730328 (list!8752 (charsOf!2388 separatorToken!354)))))

(declare-fun lt!730335 () Unit!35862)

(declare-fun lemmaEqSameImage!540 (TokenValueInjection!7520 BalanceConc!14128 BalanceConc!14128) Unit!35862)

(declare-fun seqFromList!2704 (List!21591) BalanceConc!14128)

(assert (=> b!1910036 (= lt!730335 (lemmaEqSameImage!540 (transformation!3832 (rule!6031 (h!26912 tokens!598))) lt!730333 (seqFromList!2704 (originalCharacters!4639 (h!26912 tokens!598)))))))

(declare-fun lt!730327 () Unit!35862)

(declare-fun lemmaSemiInverse!811 (TokenValueInjection!7520 BalanceConc!14128) Unit!35862)

(assert (=> b!1910036 (= lt!730327 (lemmaSemiInverse!811 (transformation!3832 (rule!6031 (h!26912 tokens!598))) lt!730333))))

(assert (=> b!1910036 (= lt!730333 (charsOf!2388 (h!26912 tokens!598)))))

(declare-fun b!1910037 () Bool)

(declare-fun tp!545139 () Bool)

(assert (=> b!1910037 (= e!1219985 (and e!1219986 tp!545139))))

(declare-fun b!1910038 () Bool)

(declare-fun e!1219978 () Bool)

(declare-fun lt!730339 () Rule!7464)

(assert (=> b!1910038 (= e!1219978 (= (rule!6031 (h!26912 tokens!598)) lt!730339))))

(declare-fun b!1910039 () Bool)

(declare-fun Unit!35864 () Unit!35862)

(assert (=> b!1910039 (= e!1220000 Unit!35864)))

(declare-fun lt!730325 () Unit!35862)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!240 (Regex!5257 List!21591 C!10660) Unit!35862)

(assert (=> b!1910039 (= lt!730325 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!240 (regex!3832 (rule!6031 separatorToken!354)) lt!730328 lt!730337))))

(declare-fun res!852835 () Bool)

(assert (=> b!1910039 (= res!852835 (not (matchR!2543 (regex!3832 (rule!6031 separatorToken!354)) lt!730328)))))

(declare-fun e!1219992 () Bool)

(assert (=> b!1910039 (=> (not res!852835) (not e!1219992))))

(assert (=> b!1910039 e!1219992))

(declare-fun b!1910040 () Bool)

(assert (=> b!1910040 (= e!1219977 e!1219978)))

(declare-fun res!852838 () Bool)

(assert (=> b!1910040 (=> (not res!852838) (not e!1219978))))

(assert (=> b!1910040 (= res!852838 (matchR!2543 (regex!3832 lt!730339) lt!730331))))

(assert (=> b!1910040 (= lt!730339 (get!6692 lt!730323))))

(declare-fun b!1910041 () Bool)

(assert (=> b!1910041 (= e!1219982 (= (rule!6031 separatorToken!354) lt!730334))))

(assert (=> b!1910042 (= e!1219991 (and tp!545144 tp!545146))))

(declare-fun b!1910043 () Bool)

(declare-fun res!852829 () Bool)

(assert (=> b!1910043 (=> (not res!852829) (not e!1219983))))

(declare-fun rulesProduceIndividualToken!1617 (LexerInterface!3445 List!21592 Token!7216) Bool)

(assert (=> b!1910043 (= res!852829 (rulesProduceIndividualToken!1617 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1910044 () Bool)

(declare-fun Unit!35865 () Unit!35862)

(assert (=> b!1910044 (= e!1220000 Unit!35865)))

(declare-fun b!1910045 () Bool)

(declare-fun res!852824 () Bool)

(assert (=> b!1910045 (=> (not res!852824) (not e!1219983))))

(declare-fun rulesProduceEachTokenIndividuallyList!1176 (LexerInterface!3445 List!21592 List!21593) Bool)

(assert (=> b!1910045 (= res!852824 (rulesProduceEachTokenIndividuallyList!1176 thiss!23328 rules!3198 tokens!598))))

(assert (=> b!1910046 (= e!1219979 (and tp!545138 tp!545143))))

(declare-fun b!1910047 () Bool)

(declare-fun get!6693 (Option!4370) tuple2!20244)

(assert (=> b!1910047 (= e!1219997 (= (_1!11591 (get!6693 lt!730338)) (h!26912 tokens!598)))))

(declare-fun b!1910048 () Bool)

(declare-fun res!852828 () Bool)

(assert (=> b!1910048 (=> (not res!852828) (not e!1219983))))

(declare-fun lambda!74593 () Int)

(declare-fun forall!4522 (List!21593 Int) Bool)

(assert (=> b!1910048 (= res!852828 (forall!4522 tokens!598 lambda!74593))))

(declare-fun b!1910049 () Bool)

(declare-fun res!852837 () Bool)

(assert (=> b!1910049 (=> (not res!852837) (not e!1219983))))

(declare-fun isEmpty!13210 (List!21592) Bool)

(assert (=> b!1910049 (= res!852837 (not (isEmpty!13210 rules!3198)))))

(declare-fun b!1910050 () Bool)

(assert (=> b!1910050 (= e!1219992 false)))

(assert (= (and start!191636 res!852825) b!1910049))

(assert (= (and b!1910049 res!852837) b!1910023))

(assert (= (and b!1910023 res!852830) b!1910045))

(assert (= (and b!1910045 res!852824) b!1910043))

(assert (= (and b!1910043 res!852829) b!1910024))

(assert (= (and b!1910024 res!852827) b!1910048))

(assert (= (and b!1910048 res!852828) b!1910028))

(assert (= (and b!1910028 res!852833) b!1910032))

(assert (= (and b!1910032 res!852836) b!1910036))

(assert (= (and b!1910036 res!852834) b!1910033))

(assert (= (and b!1910033 res!852823) b!1910041))

(assert (= (and b!1910036 res!852832) b!1910047))

(assert (= (and b!1910036 res!852826) b!1910040))

(assert (= (and b!1910040 res!852838) b!1910038))

(assert (= (and b!1910036 (not res!852831)) b!1910026))

(assert (= (and b!1910026 c!311237) b!1910039))

(assert (= (and b!1910026 (not c!311237)) b!1910044))

(assert (= (and b!1910039 res!852835) b!1910050))

(assert (= b!1910031 b!1910042))

(assert (= b!1910037 b!1910031))

(assert (= (and start!191636 ((_ is Cons!21510) rules!3198)) b!1910037))

(assert (= b!1910030 b!1910025))

(assert (= b!1910034 b!1910030))

(assert (= b!1910029 b!1910034))

(assert (= (and start!191636 ((_ is Cons!21511) tokens!598)) b!1910029))

(assert (= b!1910035 b!1910046))

(assert (= b!1910027 b!1910035))

(assert (= start!191636 b!1910027))

(declare-fun m!2343497 () Bool)

(assert (=> b!1910047 m!2343497))

(declare-fun m!2343499 () Bool)

(assert (=> b!1910026 m!2343499))

(declare-fun m!2343501 () Bool)

(assert (=> b!1910026 m!2343501))

(declare-fun m!2343503 () Bool)

(assert (=> b!1910026 m!2343503))

(declare-fun m!2343505 () Bool)

(assert (=> b!1910026 m!2343505))

(declare-fun m!2343507 () Bool)

(assert (=> b!1910026 m!2343507))

(declare-fun m!2343509 () Bool)

(assert (=> b!1910026 m!2343509))

(declare-fun m!2343511 () Bool)

(assert (=> b!1910026 m!2343511))

(assert (=> b!1910026 m!2343505))

(declare-fun m!2343513 () Bool)

(assert (=> b!1910026 m!2343513))

(assert (=> b!1910026 m!2343511))

(declare-fun m!2343515 () Bool)

(assert (=> b!1910026 m!2343515))

(declare-fun m!2343517 () Bool)

(assert (=> b!1910026 m!2343517))

(declare-fun m!2343519 () Bool)

(assert (=> b!1910026 m!2343519))

(assert (=> b!1910026 m!2343509))

(declare-fun m!2343521 () Bool)

(assert (=> b!1910026 m!2343521))

(declare-fun m!2343523 () Bool)

(assert (=> b!1910026 m!2343523))

(declare-fun m!2343525 () Bool)

(assert (=> b!1910026 m!2343525))

(assert (=> b!1910026 m!2343523))

(declare-fun m!2343527 () Bool)

(assert (=> start!191636 m!2343527))

(declare-fun m!2343529 () Bool)

(assert (=> b!1910045 m!2343529))

(declare-fun m!2343531 () Bool)

(assert (=> b!1910029 m!2343531))

(declare-fun m!2343533 () Bool)

(assert (=> b!1910036 m!2343533))

(declare-fun m!2343535 () Bool)

(assert (=> b!1910036 m!2343535))

(assert (=> b!1910036 m!2343533))

(declare-fun m!2343537 () Bool)

(assert (=> b!1910036 m!2343537))

(declare-fun m!2343539 () Bool)

(assert (=> b!1910036 m!2343539))

(declare-fun m!2343541 () Bool)

(assert (=> b!1910036 m!2343541))

(declare-fun m!2343543 () Bool)

(assert (=> b!1910036 m!2343543))

(declare-fun m!2343545 () Bool)

(assert (=> b!1910036 m!2343545))

(declare-fun m!2343547 () Bool)

(assert (=> b!1910036 m!2343547))

(declare-fun m!2343549 () Bool)

(assert (=> b!1910036 m!2343549))

(declare-fun m!2343551 () Bool)

(assert (=> b!1910036 m!2343551))

(declare-fun m!2343553 () Bool)

(assert (=> b!1910036 m!2343553))

(declare-fun m!2343555 () Bool)

(assert (=> b!1910036 m!2343555))

(assert (=> b!1910036 m!2343543))

(declare-fun m!2343557 () Bool)

(assert (=> b!1910036 m!2343557))

(declare-fun m!2343559 () Bool)

(assert (=> b!1910036 m!2343559))

(assert (=> b!1910036 m!2343555))

(declare-fun m!2343561 () Bool)

(assert (=> b!1910036 m!2343561))

(declare-fun m!2343563 () Bool)

(assert (=> b!1910036 m!2343563))

(declare-fun m!2343565 () Bool)

(assert (=> b!1910036 m!2343565))

(declare-fun m!2343567 () Bool)

(assert (=> b!1910036 m!2343567))

(declare-fun m!2343569 () Bool)

(assert (=> b!1910034 m!2343569))

(declare-fun m!2343571 () Bool)

(assert (=> b!1910028 m!2343571))

(declare-fun m!2343573 () Bool)

(assert (=> b!1910043 m!2343573))

(declare-fun m!2343575 () Bool)

(assert (=> b!1910039 m!2343575))

(declare-fun m!2343577 () Bool)

(assert (=> b!1910039 m!2343577))

(declare-fun m!2343579 () Bool)

(assert (=> b!1910027 m!2343579))

(declare-fun m!2343581 () Bool)

(assert (=> b!1910049 m!2343581))

(declare-fun m!2343583 () Bool)

(assert (=> b!1910031 m!2343583))

(declare-fun m!2343585 () Bool)

(assert (=> b!1910031 m!2343585))

(declare-fun m!2343587 () Bool)

(assert (=> b!1910048 m!2343587))

(declare-fun m!2343589 () Bool)

(assert (=> b!1910023 m!2343589))

(declare-fun m!2343591 () Bool)

(assert (=> b!1910040 m!2343591))

(declare-fun m!2343593 () Bool)

(assert (=> b!1910040 m!2343593))

(declare-fun m!2343595 () Bool)

(assert (=> b!1910030 m!2343595))

(declare-fun m!2343597 () Bool)

(assert (=> b!1910030 m!2343597))

(declare-fun m!2343599 () Bool)

(assert (=> b!1910033 m!2343599))

(declare-fun m!2343601 () Bool)

(assert (=> b!1910033 m!2343601))

(declare-fun m!2343603 () Bool)

(assert (=> b!1910035 m!2343603))

(declare-fun m!2343605 () Bool)

(assert (=> b!1910035 m!2343605))

(check-sat (not b!1910027) (not b!1910030) (not b!1910047) (not b!1910040) (not b!1910045) (not b!1910026) (not b!1910023) (not b!1910031) (not b!1910036) (not b_next!54537) (not b!1910043) (not b_next!54547) (not b_next!54539) b_and!148761 b_and!148753 (not b_next!54545) (not b!1910048) (not b!1910033) (not b!1910049) b_and!148757 (not b!1910034) (not b!1910039) (not b!1910028) (not start!191636) b_and!148759 (not b_next!54543) (not b!1910029) (not b!1910035) (not b!1910037) b_and!148755 (not b_next!54541) b_and!148751)
(check-sat b_and!148757 (not b_next!54537) (not b_next!54547) (not b_next!54539) b_and!148761 b_and!148755 b_and!148753 (not b_next!54545) b_and!148759 (not b_next!54543) (not b_next!54541) b_and!148751)
