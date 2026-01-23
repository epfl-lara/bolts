; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191632 () Bool)

(assert start!191632)

(declare-fun b!1909863 () Bool)

(declare-fun b_free!53809 () Bool)

(declare-fun b_next!54513 () Bool)

(assert (=> b!1909863 (= b_free!53809 (not b_next!54513))))

(declare-fun tp!545058 () Bool)

(declare-fun b_and!148727 () Bool)

(assert (=> b!1909863 (= tp!545058 b_and!148727)))

(declare-fun b_free!53811 () Bool)

(declare-fun b_next!54515 () Bool)

(assert (=> b!1909863 (= b_free!53811 (not b_next!54515))))

(declare-fun tp!545066 () Bool)

(declare-fun b_and!148729 () Bool)

(assert (=> b!1909863 (= tp!545066 b_and!148729)))

(declare-fun b!1909877 () Bool)

(declare-fun b_free!53813 () Bool)

(declare-fun b_next!54517 () Bool)

(assert (=> b!1909877 (= b_free!53813 (not b_next!54517))))

(declare-fun tp!545065 () Bool)

(declare-fun b_and!148731 () Bool)

(assert (=> b!1909877 (= tp!545065 b_and!148731)))

(declare-fun b_free!53815 () Bool)

(declare-fun b_next!54519 () Bool)

(assert (=> b!1909877 (= b_free!53815 (not b_next!54519))))

(declare-fun tp!545064 () Bool)

(declare-fun b_and!148733 () Bool)

(assert (=> b!1909877 (= tp!545064 b_and!148733)))

(declare-fun b!1909874 () Bool)

(declare-fun b_free!53817 () Bool)

(declare-fun b_next!54521 () Bool)

(assert (=> b!1909874 (= b_free!53817 (not b_next!54521))))

(declare-fun tp!545070 () Bool)

(declare-fun b_and!148735 () Bool)

(assert (=> b!1909874 (= tp!545070 b_and!148735)))

(declare-fun b_free!53819 () Bool)

(declare-fun b_next!54523 () Bool)

(assert (=> b!1909874 (= b_free!53819 (not b_next!54523))))

(declare-fun tp!545060 () Bool)

(declare-fun b_and!148737 () Bool)

(assert (=> b!1909874 (= tp!545060 b_and!148737)))

(declare-fun b!1909855 () Bool)

(declare-fun e!1219836 () Bool)

(declare-fun e!1219854 () Bool)

(declare-fun tp!545067 () Bool)

(assert (=> b!1909855 (= e!1219836 (and e!1219854 tp!545067))))

(declare-datatypes ((List!21582 0))(
  ( (Nil!21500) (Cons!21500 (h!26901 (_ BitVec 16)) (t!178039 List!21582)) )
))
(declare-datatypes ((TokenValue!3966 0))(
  ( (FloatLiteralValue!7932 (text!28207 List!21582)) (TokenValueExt!3965 (__x!13430 Int)) (Broken!19830 (value!120720 List!21582)) (Object!4047) (End!3966) (Def!3966) (Underscore!3966) (Match!3966) (Else!3966) (Error!3966) (Case!3966) (If!3966) (Extends!3966) (Abstract!3966) (Class!3966) (Val!3966) (DelimiterValue!7932 (del!4026 List!21582)) (KeywordValue!3972 (value!120721 List!21582)) (CommentValue!7932 (value!120722 List!21582)) (WhitespaceValue!7932 (value!120723 List!21582)) (IndentationValue!3966 (value!120724 List!21582)) (String!24947) (Int32!3966) (Broken!19831 (value!120725 List!21582)) (Boolean!3967) (Unit!35851) (OperatorValue!3969 (op!4026 List!21582)) (IdentifierValue!7932 (value!120726 List!21582)) (IdentifierValue!7933 (value!120727 List!21582)) (WhitespaceValue!7933 (value!120728 List!21582)) (True!7932) (False!7932) (Broken!19832 (value!120729 List!21582)) (Broken!19833 (value!120730 List!21582)) (True!7933) (RightBrace!3966) (RightBracket!3966) (Colon!3966) (Null!3966) (Comma!3966) (LeftBracket!3966) (False!7933) (LeftBrace!3966) (ImaginaryLiteralValue!3966 (text!28208 List!21582)) (StringLiteralValue!11898 (value!120731 List!21582)) (EOFValue!3966 (value!120732 List!21582)) (IdentValue!3966 (value!120733 List!21582)) (DelimiterValue!7933 (value!120734 List!21582)) (DedentValue!3966 (value!120735 List!21582)) (NewLineValue!3966 (value!120736 List!21582)) (IntegerValue!11898 (value!120737 (_ BitVec 32)) (text!28209 List!21582)) (IntegerValue!11899 (value!120738 Int) (text!28210 List!21582)) (Times!3966) (Or!3966) (Equal!3966) (Minus!3966) (Broken!19834 (value!120739 List!21582)) (And!3966) (Div!3966) (LessEqual!3966) (Mod!3966) (Concat!9221) (Not!3966) (Plus!3966) (SpaceValue!3966 (value!120740 List!21582)) (IntegerValue!11900 (value!120741 Int) (text!28211 List!21582)) (StringLiteralValue!11899 (text!28212 List!21582)) (FloatLiteralValue!7933 (text!28213 List!21582)) (BytesLiteralValue!3966 (value!120742 List!21582)) (CommentValue!7933 (value!120743 List!21582)) (StringLiteralValue!11900 (value!120744 List!21582)) (ErrorTokenValue!3966 (msg!4027 List!21582)) )
))
(declare-datatypes ((C!10656 0))(
  ( (C!10657 (val!6280 Int)) )
))
(declare-datatypes ((List!21583 0))(
  ( (Nil!21501) (Cons!21501 (h!26902 C!10656) (t!178040 List!21583)) )
))
(declare-datatypes ((String!24948 0))(
  ( (String!24949 (value!120745 String)) )
))
(declare-datatypes ((Regex!5255 0))(
  ( (ElementMatch!5255 (c!311224 C!10656)) (Concat!9222 (regOne!11022 Regex!5255) (regTwo!11022 Regex!5255)) (EmptyExpr!5255) (Star!5255 (reg!5584 Regex!5255)) (EmptyLang!5255) (Union!5255 (regOne!11023 Regex!5255) (regTwo!11023 Regex!5255)) )
))
(declare-datatypes ((IArray!14309 0))(
  ( (IArray!14310 (innerList!7212 List!21583)) )
))
(declare-datatypes ((Conc!7152 0))(
  ( (Node!7152 (left!17189 Conc!7152) (right!17519 Conc!7152) (csize!14534 Int) (cheight!7363 Int)) (Leaf!10530 (xs!10046 IArray!14309) (csize!14535 Int)) (Empty!7152) )
))
(declare-datatypes ((BalanceConc!14120 0))(
  ( (BalanceConc!14121 (c!311225 Conc!7152)) )
))
(declare-datatypes ((TokenValueInjection!7516 0))(
  ( (TokenValueInjection!7517 (toValue!5459 Int) (toChars!5318 Int)) )
))
(declare-datatypes ((Rule!7460 0))(
  ( (Rule!7461 (regex!3830 Regex!5255) (tag!4264 String!24948) (isSeparator!3830 Bool) (transformation!3830 TokenValueInjection!7516)) )
))
(declare-datatypes ((Token!7212 0))(
  ( (Token!7213 (value!120746 TokenValue!3966) (rule!6029 Rule!7460) (size!16958 Int) (originalCharacters!4637 List!21583)) )
))
(declare-fun separatorToken!354 () Token!7212)

(declare-fun tp!545062 () Bool)

(declare-fun b!1909856 () Bool)

(declare-fun e!1219842 () Bool)

(declare-fun e!1219852 () Bool)

(declare-fun inv!21 (TokenValue!3966) Bool)

(assert (=> b!1909856 (= e!1219852 (and (inv!21 (value!120746 separatorToken!354)) e!1219842 tp!545062))))

(declare-fun b!1909857 () Bool)

(declare-fun e!1219849 () Bool)

(declare-fun lt!730195 () Rule!7460)

(assert (=> b!1909857 (= e!1219849 (= (rule!6029 separatorToken!354) lt!730195))))

(declare-fun b!1909858 () Bool)

(declare-fun res!852730 () Bool)

(declare-fun e!1219835 () Bool)

(assert (=> b!1909858 (=> (not res!852730) (not e!1219835))))

(assert (=> b!1909858 (= res!852730 (isSeparator!3830 (rule!6029 separatorToken!354)))))

(declare-fun b!1909859 () Bool)

(declare-fun res!852734 () Bool)

(assert (=> b!1909859 (=> (not res!852734) (not e!1219835))))

(declare-datatypes ((LexerInterface!3443 0))(
  ( (LexerInterfaceExt!3440 (__x!13431 Int)) (Lexer!3441) )
))
(declare-fun thiss!23328 () LexerInterface!3443)

(declare-datatypes ((List!21584 0))(
  ( (Nil!21502) (Cons!21502 (h!26903 Rule!7460) (t!178041 List!21584)) )
))
(declare-fun rules!3198 () List!21584)

(declare-fun rulesProduceIndividualToken!1615 (LexerInterface!3443 List!21584 Token!7212) Bool)

(assert (=> b!1909859 (= res!852734 (rulesProduceIndividualToken!1615 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1909860 () Bool)

(declare-datatypes ((Unit!35852 0))(
  ( (Unit!35853) )
))
(declare-fun e!1219840 () Unit!35852)

(declare-fun Unit!35854 () Unit!35852)

(assert (=> b!1909860 (= e!1219840 Unit!35854)))

(declare-fun lt!730198 () C!10656)

(declare-fun lt!730209 () List!21583)

(declare-fun lt!730210 () Unit!35852)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!238 (Regex!5255 List!21583 C!10656) Unit!35852)

(assert (=> b!1909860 (= lt!730210 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!238 (regex!3830 (rule!6029 separatorToken!354)) lt!730209 lt!730198))))

(declare-fun res!852738 () Bool)

(declare-fun matchR!2541 (Regex!5255 List!21583) Bool)

(assert (=> b!1909860 (= res!852738 (not (matchR!2541 (regex!3830 (rule!6029 separatorToken!354)) lt!730209)))))

(declare-fun e!1219850 () Bool)

(assert (=> b!1909860 (=> (not res!852738) (not e!1219850))))

(assert (=> b!1909860 e!1219850))

(declare-fun res!852729 () Bool)

(assert (=> start!191632 (=> (not res!852729) (not e!1219835))))

(get-info :version)

(assert (=> start!191632 (= res!852729 ((_ is Lexer!3441) thiss!23328))))

(assert (=> start!191632 e!1219835))

(assert (=> start!191632 true))

(assert (=> start!191632 e!1219836))

(declare-fun e!1219848 () Bool)

(assert (=> start!191632 e!1219848))

(declare-fun inv!28611 (Token!7212) Bool)

(assert (=> start!191632 (and (inv!28611 separatorToken!354) e!1219852)))

(declare-fun b!1909861 () Bool)

(declare-fun e!1219837 () Bool)

(assert (=> b!1909861 (= e!1219835 (not e!1219837))))

(declare-fun res!852737 () Bool)

(assert (=> b!1909861 (=> res!852737 e!1219837)))

(declare-datatypes ((tuple2!20240 0))(
  ( (tuple2!20241 (_1!11589 Token!7212) (_2!11589 List!21583)) )
))
(declare-datatypes ((Option!4365 0))(
  ( (None!4364) (Some!4364 (v!26415 tuple2!20240)) )
))
(declare-fun lt!730213 () Option!4365)

(declare-datatypes ((List!21585 0))(
  ( (Nil!21503) (Cons!21503 (h!26904 Token!7212) (t!178042 List!21585)) )
))
(declare-fun tokens!598 () List!21585)

(declare-fun lt!730211 () Bool)

(assert (=> b!1909861 (= res!852737 (or (and (not lt!730211) (= (_1!11589 (v!26415 lt!730213)) (h!26904 tokens!598))) lt!730211 (= (_1!11589 (v!26415 lt!730213)) (h!26904 tokens!598))))))

(assert (=> b!1909861 (= lt!730211 (not ((_ is Some!4364) lt!730213)))))

(declare-fun lt!730203 () List!21583)

(declare-fun lt!730205 () List!21583)

(declare-fun maxPrefix!1889 (LexerInterface!3443 List!21584 List!21583) Option!4365)

(declare-fun ++!5779 (List!21583 List!21583) List!21583)

(assert (=> b!1909861 (= lt!730213 (maxPrefix!1889 thiss!23328 rules!3198 (++!5779 lt!730203 lt!730205)))))

(declare-fun printWithSeparatorTokenWhenNeededList!486 (LexerInterface!3443 List!21584 List!21585 Token!7212) List!21583)

(assert (=> b!1909861 (= lt!730205 (printWithSeparatorTokenWhenNeededList!486 thiss!23328 rules!3198 (t!178042 tokens!598) separatorToken!354))))

(declare-fun e!1219838 () Bool)

(assert (=> b!1909861 e!1219838))

(declare-fun res!852732 () Bool)

(assert (=> b!1909861 (=> (not res!852732) (not e!1219838))))

(declare-datatypes ((Option!4366 0))(
  ( (None!4365) (Some!4365 (v!26416 Rule!7460)) )
))
(declare-fun lt!730214 () Option!4366)

(declare-fun isDefined!3663 (Option!4366) Bool)

(assert (=> b!1909861 (= res!852732 (isDefined!3663 lt!730214))))

(declare-fun getRuleFromTag!673 (LexerInterface!3443 List!21584 String!24948) Option!4366)

(assert (=> b!1909861 (= lt!730214 (getRuleFromTag!673 thiss!23328 rules!3198 (tag!4264 (rule!6029 (h!26904 tokens!598)))))))

(declare-fun lt!730212 () Unit!35852)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!673 (LexerInterface!3443 List!21584 List!21583 Token!7212) Unit!35852)

(assert (=> b!1909861 (= lt!730212 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!673 thiss!23328 rules!3198 lt!730203 (h!26904 tokens!598)))))

(declare-fun e!1219841 () Bool)

(assert (=> b!1909861 e!1219841))

(declare-fun res!852727 () Bool)

(assert (=> b!1909861 (=> (not res!852727) (not e!1219841))))

(declare-fun lt!730196 () Option!4365)

(declare-fun isDefined!3664 (Option!4365) Bool)

(assert (=> b!1909861 (= res!852727 (isDefined!3664 lt!730196))))

(assert (=> b!1909861 (= lt!730196 (maxPrefix!1889 thiss!23328 rules!3198 lt!730203))))

(declare-fun lt!730200 () BalanceConc!14120)

(declare-fun list!8750 (BalanceConc!14120) List!21583)

(assert (=> b!1909861 (= lt!730203 (list!8750 lt!730200))))

(declare-fun e!1219844 () Bool)

(assert (=> b!1909861 e!1219844))

(declare-fun res!852731 () Bool)

(assert (=> b!1909861 (=> (not res!852731) (not e!1219844))))

(declare-fun lt!730206 () Option!4366)

(assert (=> b!1909861 (= res!852731 (isDefined!3663 lt!730206))))

(assert (=> b!1909861 (= lt!730206 (getRuleFromTag!673 thiss!23328 rules!3198 (tag!4264 (rule!6029 separatorToken!354))))))

(declare-fun lt!730194 () Unit!35852)

(assert (=> b!1909861 (= lt!730194 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!673 thiss!23328 rules!3198 lt!730209 separatorToken!354))))

(declare-fun charsOf!2386 (Token!7212) BalanceConc!14120)

(assert (=> b!1909861 (= lt!730209 (list!8750 (charsOf!2386 separatorToken!354)))))

(declare-fun lt!730208 () Unit!35852)

(declare-fun lemmaEqSameImage!538 (TokenValueInjection!7516 BalanceConc!14120 BalanceConc!14120) Unit!35852)

(declare-fun seqFromList!2702 (List!21583) BalanceConc!14120)

(assert (=> b!1909861 (= lt!730208 (lemmaEqSameImage!538 (transformation!3830 (rule!6029 (h!26904 tokens!598))) lt!730200 (seqFromList!2702 (originalCharacters!4637 (h!26904 tokens!598)))))))

(declare-fun lt!730207 () Unit!35852)

(declare-fun lemmaSemiInverse!809 (TokenValueInjection!7516 BalanceConc!14120) Unit!35852)

(assert (=> b!1909861 (= lt!730207 (lemmaSemiInverse!809 (transformation!3830 (rule!6029 (h!26904 tokens!598))) lt!730200))))

(assert (=> b!1909861 (= lt!730200 (charsOf!2386 (h!26904 tokens!598)))))

(declare-fun b!1909862 () Bool)

(assert (=> b!1909862 (= e!1219844 e!1219849)))

(declare-fun res!852740 () Bool)

(assert (=> b!1909862 (=> (not res!852740) (not e!1219849))))

(assert (=> b!1909862 (= res!852740 (matchR!2541 (regex!3830 lt!730195) lt!730209))))

(declare-fun get!6687 (Option!4366) Rule!7460)

(assert (=> b!1909862 (= lt!730195 (get!6687 lt!730206))))

(declare-fun e!1219846 () Bool)

(assert (=> b!1909863 (= e!1219846 (and tp!545058 tp!545066))))

(declare-fun b!1909864 () Bool)

(declare-fun e!1219847 () Bool)

(declare-fun tp!545063 () Bool)

(declare-fun inv!28608 (String!24948) Bool)

(declare-fun inv!28612 (TokenValueInjection!7516) Bool)

(assert (=> b!1909864 (= e!1219847 (and tp!545063 (inv!28608 (tag!4264 (rule!6029 (h!26904 tokens!598)))) (inv!28612 (transformation!3830 (rule!6029 (h!26904 tokens!598)))) e!1219846))))

(declare-fun b!1909865 () Bool)

(declare-fun Unit!35855 () Unit!35852)

(assert (=> b!1909865 (= e!1219840 Unit!35855)))

(declare-fun e!1219845 () Bool)

(declare-fun tp!545069 () Bool)

(declare-fun b!1909866 () Bool)

(assert (=> b!1909866 (= e!1219845 (and (inv!21 (value!120746 (h!26904 tokens!598))) e!1219847 tp!545069))))

(declare-fun b!1909867 () Bool)

(assert (=> b!1909867 (= e!1219837 true)))

(declare-datatypes ((IArray!14311 0))(
  ( (IArray!14312 (innerList!7213 List!21585)) )
))
(declare-datatypes ((Conc!7153 0))(
  ( (Node!7153 (left!17190 Conc!7153) (right!17520 Conc!7153) (csize!14536 Int) (cheight!7364 Int)) (Leaf!10531 (xs!10047 IArray!14311) (csize!14537 Int)) (Empty!7153) )
))
(declare-datatypes ((BalanceConc!14122 0))(
  ( (BalanceConc!14123 (c!311226 Conc!7153)) )
))
(declare-fun lt!730202 () BalanceConc!14122)

(declare-fun singletonSeq!1853 (Token!7212) BalanceConc!14122)

(assert (=> b!1909867 (= lt!730202 (singletonSeq!1853 (h!26904 tokens!598)))))

(declare-fun contains!3875 (List!21583 C!10656) Bool)

(declare-fun usedCharacters!338 (Regex!5255) List!21583)

(assert (=> b!1909867 (not (contains!3875 (usedCharacters!338 (regex!3830 (rule!6029 (h!26904 tokens!598)))) lt!730198))))

(declare-fun lt!730201 () Unit!35852)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!34 (LexerInterface!3443 List!21584 List!21584 Rule!7460 Rule!7460 C!10656) Unit!35852)

(assert (=> b!1909867 (= lt!730201 (lemmaNonSepRuleNotContainsCharContainedInASepRule!34 thiss!23328 rules!3198 rules!3198 (rule!6029 (h!26904 tokens!598)) (rule!6029 separatorToken!354) lt!730198))))

(declare-fun lt!730204 () Unit!35852)

(assert (=> b!1909867 (= lt!730204 e!1219840)))

(declare-fun c!311223 () Bool)

(assert (=> b!1909867 (= c!311223 (not (contains!3875 (usedCharacters!338 (regex!3830 (rule!6029 separatorToken!354))) lt!730198)))))

(declare-fun head!4434 (List!21583) C!10656)

(assert (=> b!1909867 (= lt!730198 (head!4434 lt!730209))))

(assert (=> b!1909867 (= (++!5779 (++!5779 lt!730203 lt!730209) lt!730205) (++!5779 lt!730203 (++!5779 lt!730209 lt!730205)))))

(declare-fun lt!730199 () Unit!35852)

(declare-fun lemmaConcatAssociativity!1145 (List!21583 List!21583 List!21583) Unit!35852)

(assert (=> b!1909867 (= lt!730199 (lemmaConcatAssociativity!1145 lt!730203 lt!730209 lt!730205))))

(declare-fun b!1909868 () Bool)

(declare-fun e!1219851 () Bool)

(assert (=> b!1909868 (= e!1219838 e!1219851)))

(declare-fun res!852735 () Bool)

(assert (=> b!1909868 (=> (not res!852735) (not e!1219851))))

(declare-fun lt!730197 () Rule!7460)

(assert (=> b!1909868 (= res!852735 (matchR!2541 (regex!3830 lt!730197) lt!730203))))

(assert (=> b!1909868 (= lt!730197 (get!6687 lt!730214))))

(declare-fun tp!545061 () Bool)

(declare-fun b!1909869 () Bool)

(assert (=> b!1909869 (= e!1219848 (and (inv!28611 (h!26904 tokens!598)) e!1219845 tp!545061))))

(declare-fun b!1909870 () Bool)

(declare-fun res!852728 () Bool)

(assert (=> b!1909870 (=> (not res!852728) (not e!1219835))))

(declare-fun rulesInvariant!3050 (LexerInterface!3443 List!21584) Bool)

(assert (=> b!1909870 (= res!852728 (rulesInvariant!3050 thiss!23328 rules!3198))))

(declare-fun b!1909871 () Bool)

(declare-fun res!852733 () Bool)

(assert (=> b!1909871 (=> (not res!852733) (not e!1219835))))

(declare-fun isEmpty!13208 (List!21584) Bool)

(assert (=> b!1909871 (= res!852733 (not (isEmpty!13208 rules!3198)))))

(declare-fun b!1909872 () Bool)

(declare-fun get!6688 (Option!4365) tuple2!20240)

(assert (=> b!1909872 (= e!1219841 (= (_1!11589 (get!6688 lt!730196)) (h!26904 tokens!598)))))

(declare-fun b!1909873 () Bool)

(assert (=> b!1909873 (= e!1219850 false)))

(declare-fun e!1219839 () Bool)

(assert (=> b!1909874 (= e!1219839 (and tp!545070 tp!545060))))

(declare-fun b!1909875 () Bool)

(declare-fun res!852736 () Bool)

(assert (=> b!1909875 (=> (not res!852736) (not e!1219835))))

(assert (=> b!1909875 (= res!852736 ((_ is Cons!21503) tokens!598))))

(declare-fun b!1909876 () Bool)

(declare-fun res!852741 () Bool)

(assert (=> b!1909876 (=> (not res!852741) (not e!1219835))))

(declare-fun rulesProduceEachTokenIndividuallyList!1174 (LexerInterface!3443 List!21584 List!21585) Bool)

(assert (=> b!1909876 (= res!852741 (rulesProduceEachTokenIndividuallyList!1174 thiss!23328 rules!3198 tokens!598))))

(declare-fun e!1219855 () Bool)

(assert (=> b!1909877 (= e!1219855 (and tp!545065 tp!545064))))

(declare-fun tp!545068 () Bool)

(declare-fun b!1909878 () Bool)

(assert (=> b!1909878 (= e!1219854 (and tp!545068 (inv!28608 (tag!4264 (h!26903 rules!3198))) (inv!28612 (transformation!3830 (h!26903 rules!3198))) e!1219839))))

(declare-fun b!1909879 () Bool)

(declare-fun res!852739 () Bool)

(assert (=> b!1909879 (=> (not res!852739) (not e!1219835))))

(declare-fun sepAndNonSepRulesDisjointChars!928 (List!21584 List!21584) Bool)

(assert (=> b!1909879 (= res!852739 (sepAndNonSepRulesDisjointChars!928 rules!3198 rules!3198))))

(declare-fun b!1909880 () Bool)

(assert (=> b!1909880 (= e!1219851 (= (rule!6029 (h!26904 tokens!598)) lt!730197))))

(declare-fun b!1909881 () Bool)

(declare-fun res!852742 () Bool)

(assert (=> b!1909881 (=> (not res!852742) (not e!1219835))))

(declare-fun lambda!74587 () Int)

(declare-fun forall!4520 (List!21585 Int) Bool)

(assert (=> b!1909881 (= res!852742 (forall!4520 tokens!598 lambda!74587))))

(declare-fun b!1909882 () Bool)

(declare-fun tp!545059 () Bool)

(assert (=> b!1909882 (= e!1219842 (and tp!545059 (inv!28608 (tag!4264 (rule!6029 separatorToken!354))) (inv!28612 (transformation!3830 (rule!6029 separatorToken!354))) e!1219855))))

(assert (= (and start!191632 res!852729) b!1909871))

(assert (= (and b!1909871 res!852733) b!1909870))

(assert (= (and b!1909870 res!852728) b!1909876))

(assert (= (and b!1909876 res!852741) b!1909859))

(assert (= (and b!1909859 res!852734) b!1909858))

(assert (= (and b!1909858 res!852730) b!1909881))

(assert (= (and b!1909881 res!852742) b!1909879))

(assert (= (and b!1909879 res!852739) b!1909875))

(assert (= (and b!1909875 res!852736) b!1909861))

(assert (= (and b!1909861 res!852731) b!1909862))

(assert (= (and b!1909862 res!852740) b!1909857))

(assert (= (and b!1909861 res!852727) b!1909872))

(assert (= (and b!1909861 res!852732) b!1909868))

(assert (= (and b!1909868 res!852735) b!1909880))

(assert (= (and b!1909861 (not res!852737)) b!1909867))

(assert (= (and b!1909867 c!311223) b!1909860))

(assert (= (and b!1909867 (not c!311223)) b!1909865))

(assert (= (and b!1909860 res!852738) b!1909873))

(assert (= b!1909878 b!1909874))

(assert (= b!1909855 b!1909878))

(assert (= (and start!191632 ((_ is Cons!21502) rules!3198)) b!1909855))

(assert (= b!1909864 b!1909863))

(assert (= b!1909866 b!1909864))

(assert (= b!1909869 b!1909866))

(assert (= (and start!191632 ((_ is Cons!21503) tokens!598)) b!1909869))

(assert (= b!1909882 b!1909877))

(assert (= b!1909856 b!1909882))

(assert (= start!191632 b!1909856))

(declare-fun m!2343281 () Bool)

(assert (=> b!1909864 m!2343281))

(declare-fun m!2343283 () Bool)

(assert (=> b!1909864 m!2343283))

(declare-fun m!2343285 () Bool)

(assert (=> b!1909867 m!2343285))

(declare-fun m!2343287 () Bool)

(assert (=> b!1909867 m!2343287))

(declare-fun m!2343289 () Bool)

(assert (=> b!1909867 m!2343289))

(declare-fun m!2343291 () Bool)

(assert (=> b!1909867 m!2343291))

(declare-fun m!2343293 () Bool)

(assert (=> b!1909867 m!2343293))

(assert (=> b!1909867 m!2343291))

(declare-fun m!2343295 () Bool)

(assert (=> b!1909867 m!2343295))

(assert (=> b!1909867 m!2343295))

(declare-fun m!2343297 () Bool)

(assert (=> b!1909867 m!2343297))

(declare-fun m!2343299 () Bool)

(assert (=> b!1909867 m!2343299))

(declare-fun m!2343301 () Bool)

(assert (=> b!1909867 m!2343301))

(assert (=> b!1909867 m!2343299))

(declare-fun m!2343303 () Bool)

(assert (=> b!1909867 m!2343303))

(assert (=> b!1909867 m!2343289))

(declare-fun m!2343305 () Bool)

(assert (=> b!1909867 m!2343305))

(declare-fun m!2343307 () Bool)

(assert (=> b!1909867 m!2343307))

(declare-fun m!2343309 () Bool)

(assert (=> b!1909881 m!2343309))

(declare-fun m!2343311 () Bool)

(assert (=> b!1909859 m!2343311))

(declare-fun m!2343313 () Bool)

(assert (=> b!1909872 m!2343313))

(declare-fun m!2343315 () Bool)

(assert (=> b!1909876 m!2343315))

(declare-fun m!2343317 () Bool)

(assert (=> b!1909879 m!2343317))

(declare-fun m!2343319 () Bool)

(assert (=> b!1909878 m!2343319))

(declare-fun m!2343321 () Bool)

(assert (=> b!1909878 m!2343321))

(declare-fun m!2343323 () Bool)

(assert (=> b!1909860 m!2343323))

(declare-fun m!2343325 () Bool)

(assert (=> b!1909860 m!2343325))

(declare-fun m!2343327 () Bool)

(assert (=> b!1909862 m!2343327))

(declare-fun m!2343329 () Bool)

(assert (=> b!1909862 m!2343329))

(declare-fun m!2343331 () Bool)

(assert (=> b!1909871 m!2343331))

(declare-fun m!2343333 () Bool)

(assert (=> b!1909861 m!2343333))

(declare-fun m!2343335 () Bool)

(assert (=> b!1909861 m!2343335))

(declare-fun m!2343337 () Bool)

(assert (=> b!1909861 m!2343337))

(declare-fun m!2343339 () Bool)

(assert (=> b!1909861 m!2343339))

(declare-fun m!2343341 () Bool)

(assert (=> b!1909861 m!2343341))

(declare-fun m!2343343 () Bool)

(assert (=> b!1909861 m!2343343))

(declare-fun m!2343345 () Bool)

(assert (=> b!1909861 m!2343345))

(declare-fun m!2343347 () Bool)

(assert (=> b!1909861 m!2343347))

(declare-fun m!2343349 () Bool)

(assert (=> b!1909861 m!2343349))

(declare-fun m!2343351 () Bool)

(assert (=> b!1909861 m!2343351))

(assert (=> b!1909861 m!2343337))

(declare-fun m!2343353 () Bool)

(assert (=> b!1909861 m!2343353))

(declare-fun m!2343355 () Bool)

(assert (=> b!1909861 m!2343355))

(assert (=> b!1909861 m!2343349))

(declare-fun m!2343357 () Bool)

(assert (=> b!1909861 m!2343357))

(assert (=> b!1909861 m!2343341))

(declare-fun m!2343359 () Bool)

(assert (=> b!1909861 m!2343359))

(declare-fun m!2343361 () Bool)

(assert (=> b!1909861 m!2343361))

(declare-fun m!2343363 () Bool)

(assert (=> b!1909861 m!2343363))

(declare-fun m!2343365 () Bool)

(assert (=> b!1909861 m!2343365))

(declare-fun m!2343367 () Bool)

(assert (=> b!1909861 m!2343367))

(declare-fun m!2343369 () Bool)

(assert (=> b!1909856 m!2343369))

(declare-fun m!2343371 () Bool)

(assert (=> b!1909870 m!2343371))

(declare-fun m!2343373 () Bool)

(assert (=> b!1909882 m!2343373))

(declare-fun m!2343375 () Bool)

(assert (=> b!1909882 m!2343375))

(declare-fun m!2343377 () Bool)

(assert (=> b!1909866 m!2343377))

(declare-fun m!2343379 () Bool)

(assert (=> b!1909868 m!2343379))

(declare-fun m!2343381 () Bool)

(assert (=> b!1909868 m!2343381))

(declare-fun m!2343383 () Bool)

(assert (=> b!1909869 m!2343383))

(declare-fun m!2343385 () Bool)

(assert (=> start!191632 m!2343385))

(check-sat (not b_next!54513) (not b!1909881) (not b!1909882) b_and!148733 b_and!148731 (not b!1909862) (not b!1909866) (not b_next!54521) (not b!1909876) b_and!148727 (not b!1909868) (not b!1909861) (not b!1909879) (not start!191632) (not b!1909870) (not b!1909867) b_and!148737 (not b!1909869) (not b!1909856) (not b!1909860) (not b!1909872) (not b!1909864) b_and!148729 (not b_next!54523) (not b!1909859) (not b_next!54517) (not b!1909871) (not b!1909855) (not b!1909878) (not b_next!54515) (not b_next!54519) b_and!148735)
(check-sat (not b_next!54513) b_and!148737 b_and!148733 b_and!148731 (not b_next!54521) (not b_next!54515) b_and!148727 b_and!148729 (not b_next!54523) (not b_next!54517) (not b_next!54519) b_and!148735)
