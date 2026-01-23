; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!174998 () Bool)

(assert start!174998)

(declare-fun b!1766057 () Bool)

(declare-fun b_free!48855 () Bool)

(declare-fun b_next!49559 () Bool)

(assert (=> b!1766057 (= b_free!48855 (not b_next!49559))))

(declare-fun tp!501275 () Bool)

(declare-fun b_and!133795 () Bool)

(assert (=> b!1766057 (= tp!501275 b_and!133795)))

(declare-fun b_free!48857 () Bool)

(declare-fun b_next!49561 () Bool)

(assert (=> b!1766057 (= b_free!48857 (not b_next!49561))))

(declare-fun tp!501280 () Bool)

(declare-fun b_and!133797 () Bool)

(assert (=> b!1766057 (= tp!501280 b_and!133797)))

(declare-fun b!1766044 () Bool)

(declare-fun b_free!48859 () Bool)

(declare-fun b_next!49563 () Bool)

(assert (=> b!1766044 (= b_free!48859 (not b_next!49563))))

(declare-fun tp!501272 () Bool)

(declare-fun b_and!133799 () Bool)

(assert (=> b!1766044 (= tp!501272 b_and!133799)))

(declare-fun b_free!48861 () Bool)

(declare-fun b_next!49565 () Bool)

(assert (=> b!1766044 (= b_free!48861 (not b_next!49565))))

(declare-fun tp!501273 () Bool)

(declare-fun b_and!133801 () Bool)

(assert (=> b!1766044 (= tp!501273 b_and!133801)))

(declare-fun b!1766058 () Bool)

(declare-fun b_free!48863 () Bool)

(declare-fun b_next!49567 () Bool)

(assert (=> b!1766058 (= b_free!48863 (not b_next!49567))))

(declare-fun tp!501279 () Bool)

(declare-fun b_and!133803 () Bool)

(assert (=> b!1766058 (= tp!501279 b_and!133803)))

(declare-fun b_free!48865 () Bool)

(declare-fun b_next!49569 () Bool)

(assert (=> b!1766058 (= b_free!48865 (not b_next!49569))))

(declare-fun tp!501278 () Bool)

(declare-fun b_and!133805 () Bool)

(assert (=> b!1766058 (= tp!501278 b_and!133805)))

(declare-fun b!1766084 () Bool)

(declare-fun e!1130177 () Bool)

(assert (=> b!1766084 (= e!1130177 true)))

(declare-fun b!1766083 () Bool)

(declare-fun e!1130176 () Bool)

(assert (=> b!1766083 (= e!1130176 e!1130177)))

(declare-fun b!1766082 () Bool)

(declare-fun e!1130175 () Bool)

(assert (=> b!1766082 (= e!1130175 e!1130176)))

(declare-fun b!1766062 () Bool)

(assert (=> b!1766062 e!1130175))

(assert (= b!1766083 b!1766084))

(assert (= b!1766082 b!1766083))

(assert (= b!1766062 b!1766082))

(declare-fun order!12373 () Int)

(declare-fun lambda!70296 () Int)

(declare-datatypes ((C!9780 0))(
  ( (C!9781 (val!5486 Int)) )
))
(declare-datatypes ((List!19511 0))(
  ( (Nil!19441) (Cons!19441 (h!24842 C!9780) (t!164760 List!19511)) )
))
(declare-datatypes ((Regex!4803 0))(
  ( (ElementMatch!4803 (c!287660 C!9780)) (Concat!8368 (regOne!10118 Regex!4803) (regTwo!10118 Regex!4803)) (EmptyExpr!4803) (Star!4803 (reg!5132 Regex!4803)) (EmptyLang!4803) (Union!4803 (regOne!10119 Regex!4803) (regTwo!10119 Regex!4803)) )
))
(declare-datatypes ((String!22156 0))(
  ( (String!22157 (value!108684 String)) )
))
(declare-datatypes ((List!19512 0))(
  ( (Nil!19442) (Cons!19442 (h!24843 (_ BitVec 16)) (t!164761 List!19512)) )
))
(declare-datatypes ((TokenValue!3565 0))(
  ( (FloatLiteralValue!7130 (text!25400 List!19512)) (TokenValueExt!3564 (__x!12432 Int)) (Broken!17825 (value!108685 List!19512)) (Object!3634) (End!3565) (Def!3565) (Underscore!3565) (Match!3565) (Else!3565) (Error!3565) (Case!3565) (If!3565) (Extends!3565) (Abstract!3565) (Class!3565) (Val!3565) (DelimiterValue!7130 (del!3625 List!19512)) (KeywordValue!3571 (value!108686 List!19512)) (CommentValue!7130 (value!108687 List!19512)) (WhitespaceValue!7130 (value!108688 List!19512)) (IndentationValue!3565 (value!108689 List!19512)) (String!22158) (Int32!3565) (Broken!17826 (value!108690 List!19512)) (Boolean!3566) (Unit!33631) (OperatorValue!3568 (op!3625 List!19512)) (IdentifierValue!7130 (value!108691 List!19512)) (IdentifierValue!7131 (value!108692 List!19512)) (WhitespaceValue!7131 (value!108693 List!19512)) (True!7130) (False!7130) (Broken!17827 (value!108694 List!19512)) (Broken!17828 (value!108695 List!19512)) (True!7131) (RightBrace!3565) (RightBracket!3565) (Colon!3565) (Null!3565) (Comma!3565) (LeftBracket!3565) (False!7131) (LeftBrace!3565) (ImaginaryLiteralValue!3565 (text!25401 List!19512)) (StringLiteralValue!10695 (value!108696 List!19512)) (EOFValue!3565 (value!108697 List!19512)) (IdentValue!3565 (value!108698 List!19512)) (DelimiterValue!7131 (value!108699 List!19512)) (DedentValue!3565 (value!108700 List!19512)) (NewLineValue!3565 (value!108701 List!19512)) (IntegerValue!10695 (value!108702 (_ BitVec 32)) (text!25402 List!19512)) (IntegerValue!10696 (value!108703 Int) (text!25403 List!19512)) (Times!3565) (Or!3565) (Equal!3565) (Minus!3565) (Broken!17829 (value!108704 List!19512)) (And!3565) (Div!3565) (LessEqual!3565) (Mod!3565) (Concat!8369) (Not!3565) (Plus!3565) (SpaceValue!3565 (value!108705 List!19512)) (IntegerValue!10697 (value!108706 Int) (text!25404 List!19512)) (StringLiteralValue!10696 (text!25405 List!19512)) (FloatLiteralValue!7131 (text!25406 List!19512)) (BytesLiteralValue!3565 (value!108707 List!19512)) (CommentValue!7131 (value!108708 List!19512)) (StringLiteralValue!10697 (value!108709 List!19512)) (ErrorTokenValue!3565 (msg!3626 List!19512)) )
))
(declare-datatypes ((IArray!12939 0))(
  ( (IArray!12940 (innerList!6527 List!19511)) )
))
(declare-datatypes ((Conc!6467 0))(
  ( (Node!6467 (left!15566 Conc!6467) (right!15896 Conc!6467) (csize!13164 Int) (cheight!6678 Int)) (Leaf!9425 (xs!9343 IArray!12939) (csize!13165 Int)) (Empty!6467) )
))
(declare-datatypes ((BalanceConc!12878 0))(
  ( (BalanceConc!12879 (c!287661 Conc!6467)) )
))
(declare-datatypes ((TokenValueInjection!6790 0))(
  ( (TokenValueInjection!6791 (toValue!4998 Int) (toChars!4857 Int)) )
))
(declare-datatypes ((Rule!6750 0))(
  ( (Rule!6751 (regex!3475 Regex!4803) (tag!3849 String!22156) (isSeparator!3475 Bool) (transformation!3475 TokenValueInjection!6790)) )
))
(declare-datatypes ((Token!6516 0))(
  ( (Token!6517 (value!108710 TokenValue!3565) (rule!5505 Rule!6750) (size!15442 Int) (originalCharacters!4289 List!19511)) )
))
(declare-datatypes ((tuple2!19050 0))(
  ( (tuple2!19051 (_1!10927 Token!6516) (_2!10927 List!19511)) )
))
(declare-fun lt!683156 () tuple2!19050)

(declare-fun order!12371 () Int)

(declare-fun dynLambda!9402 (Int Int) Int)

(declare-fun dynLambda!9403 (Int Int) Int)

(assert (=> b!1766084 (< (dynLambda!9402 order!12371 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) (dynLambda!9403 order!12373 lambda!70296))))

(declare-fun order!12375 () Int)

(declare-fun dynLambda!9404 (Int Int) Int)

(assert (=> b!1766084 (< (dynLambda!9404 order!12375 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) (dynLambda!9403 order!12373 lambda!70296))))

(declare-fun b!1766043 () Bool)

(declare-fun e!1130144 () Bool)

(declare-fun e!1130163 () Bool)

(assert (=> b!1766043 (= e!1130144 e!1130163)))

(declare-fun res!795068 () Bool)

(assert (=> b!1766043 (=> res!795068 e!1130163)))

(declare-fun lt!683164 () Int)

(declare-fun lt!683165 () TokenValue!3565)

(declare-fun lt!683153 () List!19511)

(declare-datatypes ((Option!3972 0))(
  ( (None!3971) (Some!3971 (v!25440 tuple2!19050)) )
))
(declare-fun lt!683154 () Option!3972)

(assert (=> b!1766043 (= res!795068 (not (= lt!683154 (Some!3971 (tuple2!19051 (Token!6517 lt!683165 (rule!5505 (_1!10927 lt!683156)) lt!683164 lt!683153) (_2!10927 lt!683156))))))))

(declare-fun lt!683167 () BalanceConc!12878)

(declare-fun size!15443 (BalanceConc!12878) Int)

(assert (=> b!1766043 (= lt!683164 (size!15443 lt!683167))))

(declare-fun apply!5275 (TokenValueInjection!6790 BalanceConc!12878) TokenValue!3565)

(assert (=> b!1766043 (= lt!683165 (apply!5275 (transformation!3475 (rule!5505 (_1!10927 lt!683156))) lt!683167))))

(declare-datatypes ((Unit!33632 0))(
  ( (Unit!33633) )
))
(declare-fun lt!683150 () Unit!33632)

(declare-fun lemmaCharactersSize!533 (Token!6516) Unit!33632)

(assert (=> b!1766043 (= lt!683150 (lemmaCharactersSize!533 (_1!10927 lt!683156)))))

(declare-fun lt!683174 () Unit!33632)

(declare-fun lemmaEqSameImage!386 (TokenValueInjection!6790 BalanceConc!12878 BalanceConc!12878) Unit!33632)

(declare-fun seqFromList!2444 (List!19511) BalanceConc!12878)

(assert (=> b!1766043 (= lt!683174 (lemmaEqSameImage!386 (transformation!3475 (rule!5505 (_1!10927 lt!683156))) lt!683167 (seqFromList!2444 (originalCharacters!4289 (_1!10927 lt!683156)))))))

(declare-fun e!1130155 () Bool)

(assert (=> b!1766044 (= e!1130155 (and tp!501272 tp!501273))))

(declare-fun b!1766045 () Bool)

(declare-fun res!795085 () Bool)

(declare-fun e!1130150 () Bool)

(assert (=> b!1766045 (=> res!795085 e!1130150)))

(declare-fun matchR!2276 (Regex!4803 List!19511) Bool)

(assert (=> b!1766045 (= res!795085 (not (matchR!2276 (regex!3475 (rule!5505 (_1!10927 lt!683156))) lt!683153)))))

(declare-fun b!1766046 () Bool)

(declare-fun e!1130149 () Bool)

(declare-fun e!1130147 () Bool)

(assert (=> b!1766046 (= e!1130149 e!1130147)))

(declare-fun res!795067 () Bool)

(assert (=> b!1766046 (=> res!795067 e!1130147)))

(declare-fun lt!683151 () BalanceConc!12878)

(assert (=> b!1766046 (= res!795067 (<= lt!683164 (size!15443 lt!683151)))))

(declare-fun lt!683171 () Regex!4803)

(declare-fun lt!683158 () List!19511)

(assert (=> b!1766046 (matchR!2276 lt!683171 lt!683158)))

(declare-fun rule!422 () Rule!6750)

(declare-fun token!523 () Token!6516)

(declare-datatypes ((List!19513 0))(
  ( (Nil!19443) (Cons!19443 (h!24844 Rule!6750) (t!164762 List!19513)) )
))
(declare-fun rules!3447 () List!19513)

(declare-datatypes ((LexerInterface!3104 0))(
  ( (LexerInterfaceExt!3101 (__x!12433 Int)) (Lexer!3102) )
))
(declare-fun thiss!24550 () LexerInterface!3104)

(declare-fun lt!683162 () Unit!33632)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!182 (LexerInterface!3104 List!19513 List!19511 Token!6516 Rule!6750 List!19511) Unit!33632)

(assert (=> b!1766046 (= lt!683162 (lemmaMaxPrefixThenMatchesRulesRegex!182 thiss!24550 rules!3447 lt!683158 token!523 rule!422 Nil!19441))))

(declare-fun b!1766047 () Bool)

(declare-fun res!795077 () Bool)

(declare-fun e!1130162 () Bool)

(assert (=> b!1766047 (=> (not res!795077) (not e!1130162))))

(declare-fun contains!3505 (List!19513 Rule!6750) Bool)

(assert (=> b!1766047 (= res!795077 (contains!3505 rules!3447 rule!422))))

(declare-fun b!1766048 () Bool)

(declare-fun e!1130164 () Bool)

(declare-fun e!1130159 () Bool)

(assert (=> b!1766048 (= e!1130164 e!1130159)))

(declare-fun res!795072 () Bool)

(assert (=> b!1766048 (=> (not res!795072) (not e!1130159))))

(declare-fun lt!683152 () tuple2!19050)

(assert (=> b!1766048 (= res!795072 (= (_1!10927 lt!683152) token!523))))

(declare-fun lt!683146 () Option!3972)

(declare-fun get!5927 (Option!3972) tuple2!19050)

(assert (=> b!1766048 (= lt!683152 (get!5927 lt!683146))))

(declare-fun b!1766049 () Bool)

(declare-fun res!795069 () Bool)

(assert (=> b!1766049 (=> (not res!795069) (not e!1130162))))

(declare-fun isEmpty!12272 (List!19513) Bool)

(assert (=> b!1766049 (= res!795069 (not (isEmpty!12272 rules!3447)))))

(declare-fun res!795082 () Bool)

(assert (=> start!174998 (=> (not res!795082) (not e!1130162))))

(get-info :version)

(assert (=> start!174998 (= res!795082 ((_ is Lexer!3102) thiss!24550))))

(assert (=> start!174998 e!1130162))

(declare-fun e!1130154 () Bool)

(assert (=> start!174998 e!1130154))

(declare-fun e!1130151 () Bool)

(assert (=> start!174998 e!1130151))

(assert (=> start!174998 true))

(declare-fun e!1130167 () Bool)

(declare-fun inv!25258 (Token!6516) Bool)

(assert (=> start!174998 (and (inv!25258 token!523) e!1130167)))

(declare-fun e!1130146 () Bool)

(assert (=> start!174998 e!1130146))

(declare-fun tp!501276 () Bool)

(declare-fun b!1766050 () Bool)

(declare-fun e!1130153 () Bool)

(declare-fun inv!21 (TokenValue!3565) Bool)

(assert (=> b!1766050 (= e!1130167 (and (inv!21 (value!108710 token!523)) e!1130153 tp!501276))))

(declare-fun b!1766051 () Bool)

(declare-fun res!795084 () Bool)

(assert (=> b!1766051 (=> (not res!795084) (not e!1130159))))

(declare-fun isEmpty!12273 (List!19511) Bool)

(assert (=> b!1766051 (= res!795084 (isEmpty!12273 (_2!10927 lt!683152)))))

(declare-fun b!1766052 () Bool)

(assert (=> b!1766052 (= e!1130162 e!1130164)))

(declare-fun res!795080 () Bool)

(assert (=> b!1766052 (=> (not res!795080) (not e!1130164))))

(declare-fun isDefined!3315 (Option!3972) Bool)

(assert (=> b!1766052 (= res!795080 (isDefined!3315 lt!683146))))

(declare-fun maxPrefix!1658 (LexerInterface!3104 List!19513 List!19511) Option!3972)

(assert (=> b!1766052 (= lt!683146 (maxPrefix!1658 thiss!24550 rules!3447 lt!683158))))

(declare-fun list!7893 (BalanceConc!12878) List!19511)

(assert (=> b!1766052 (= lt!683158 (list!7893 lt!683151))))

(declare-fun charsOf!2124 (Token!6516) BalanceConc!12878)

(assert (=> b!1766052 (= lt!683151 (charsOf!2124 token!523))))

(declare-fun b!1766053 () Bool)

(declare-fun res!795076 () Bool)

(assert (=> b!1766053 (=> (not res!795076) (not e!1130159))))

(assert (=> b!1766053 (= res!795076 (= (rule!5505 token!523) rule!422))))

(declare-fun b!1766054 () Bool)

(declare-fun e!1130148 () Bool)

(assert (=> b!1766054 (= e!1130148 e!1130144)))

(declare-fun res!795083 () Bool)

(assert (=> b!1766054 (=> res!795083 e!1130144)))

(declare-fun dynLambda!9405 (Int TokenValue!3565) BalanceConc!12878)

(declare-fun dynLambda!9406 (Int BalanceConc!12878) TokenValue!3565)

(assert (=> b!1766054 (= res!795083 (not (= (list!7893 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167))) lt!683153)))))

(declare-fun lt!683169 () Unit!33632)

(declare-fun lemmaSemiInverse!613 (TokenValueInjection!6790 BalanceConc!12878) Unit!33632)

(assert (=> b!1766054 (= lt!683169 (lemmaSemiInverse!613 (transformation!3475 (rule!5505 (_1!10927 lt!683156))) lt!683167))))

(declare-fun b!1766055 () Bool)

(declare-fun res!795079 () Bool)

(assert (=> b!1766055 (=> res!795079 e!1130144)))

(assert (=> b!1766055 (= res!795079 (not (= lt!683167 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156))))))))

(declare-fun b!1766056 () Bool)

(declare-fun res!795086 () Bool)

(assert (=> b!1766056 (=> res!795086 e!1130147)))

(assert (=> b!1766056 (= res!795086 (not (contains!3505 rules!3447 (rule!5505 (_1!10927 lt!683156)))))))

(declare-fun e!1130160 () Bool)

(assert (=> b!1766057 (= e!1130160 (and tp!501275 tp!501280))))

(declare-fun e!1130168 () Bool)

(assert (=> b!1766058 (= e!1130168 (and tp!501279 tp!501278))))

(declare-fun b!1766059 () Bool)

(declare-fun e!1130166 () Bool)

(declare-fun e!1130158 () Bool)

(assert (=> b!1766059 (= e!1130166 e!1130158)))

(declare-fun res!795074 () Bool)

(assert (=> b!1766059 (=> (not res!795074) (not e!1130158))))

(declare-fun lt!683173 () Rule!6750)

(assert (=> b!1766059 (= res!795074 (matchR!2276 (regex!3475 lt!683173) (list!7893 (charsOf!2124 (_1!10927 lt!683156)))))))

(declare-datatypes ((Option!3973 0))(
  ( (None!3972) (Some!3972 (v!25441 Rule!6750)) )
))
(declare-fun lt!683155 () Option!3973)

(declare-fun get!5928 (Option!3973) Rule!6750)

(assert (=> b!1766059 (= lt!683173 (get!5928 lt!683155))))

(declare-fun b!1766060 () Bool)

(declare-fun res!795081 () Bool)

(assert (=> b!1766060 (=> (not res!795081) (not e!1130162))))

(declare-fun rulesInvariant!2773 (LexerInterface!3104 List!19513) Bool)

(assert (=> b!1766060 (= res!795081 (rulesInvariant!2773 thiss!24550 rules!3447))))

(declare-fun b!1766061 () Bool)

(declare-fun e!1130157 () Bool)

(assert (=> b!1766061 (= e!1130159 (not e!1130157))))

(declare-fun res!795071 () Bool)

(assert (=> b!1766061 (=> res!795071 e!1130157)))

(assert (=> b!1766061 (= res!795071 (not (matchR!2276 (regex!3475 rule!422) lt!683158)))))

(declare-fun ruleValid!973 (LexerInterface!3104 Rule!6750) Bool)

(assert (=> b!1766061 (ruleValid!973 thiss!24550 rule!422)))

(declare-fun lt!683145 () Unit!33632)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!496 (LexerInterface!3104 Rule!6750 List!19513) Unit!33632)

(assert (=> b!1766061 (= lt!683145 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!496 thiss!24550 rule!422 rules!3447))))

(assert (=> b!1766062 (= e!1130150 e!1130148)))

(declare-fun res!795073 () Bool)

(assert (=> b!1766062 (=> res!795073 e!1130148)))

(declare-fun Forall!842 (Int) Bool)

(assert (=> b!1766062 (= res!795073 (not (Forall!842 lambda!70296)))))

(declare-fun lt!683149 () Unit!33632)

(declare-fun lemmaInv!674 (TokenValueInjection!6790) Unit!33632)

(assert (=> b!1766062 (= lt!683149 (lemmaInv!674 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))))))

(declare-fun lt!683172 () List!19511)

(declare-fun b!1766063 () Bool)

(declare-fun lt!683157 () List!19511)

(assert (=> b!1766063 (= e!1130147 (or (not (= lt!683154 (Some!3971 (tuple2!19051 (_1!10927 lt!683156) (_2!10927 lt!683156))))) (= lt!683172 lt!683157)))))

(declare-fun b!1766064 () Bool)

(declare-fun e!1130145 () Bool)

(assert (=> b!1766064 (= e!1130145 e!1130150)))

(declare-fun res!795066 () Bool)

(assert (=> b!1766064 (=> res!795066 e!1130150)))

(declare-fun isPrefix!1715 (List!19511 List!19511) Bool)

(assert (=> b!1766064 (= res!795066 (not (isPrefix!1715 lt!683153 lt!683172)))))

(assert (=> b!1766064 (isPrefix!1715 lt!683153 lt!683157)))

(declare-fun ++!5299 (List!19511 List!19511) List!19511)

(assert (=> b!1766064 (= lt!683157 (++!5299 lt!683153 (_2!10927 lt!683156)))))

(declare-fun lt!683147 () Unit!33632)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1224 (List!19511 List!19511) Unit!33632)

(assert (=> b!1766064 (= lt!683147 (lemmaConcatTwoListThenFirstIsPrefix!1224 lt!683153 (_2!10927 lt!683156)))))

(assert (=> b!1766064 (= lt!683153 (list!7893 lt!683167))))

(assert (=> b!1766064 (= lt!683167 (charsOf!2124 (_1!10927 lt!683156)))))

(assert (=> b!1766064 e!1130166))

(declare-fun res!795075 () Bool)

(assert (=> b!1766064 (=> (not res!795075) (not e!1130166))))

(declare-fun isDefined!3316 (Option!3973) Bool)

(assert (=> b!1766064 (= res!795075 (isDefined!3316 lt!683155))))

(declare-fun getRuleFromTag!523 (LexerInterface!3104 List!19513 String!22156) Option!3973)

(assert (=> b!1766064 (= lt!683155 (getRuleFromTag!523 thiss!24550 rules!3447 (tag!3849 (rule!5505 (_1!10927 lt!683156)))))))

(declare-fun lt!683168 () Unit!33632)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!523 (LexerInterface!3104 List!19513 List!19511 Token!6516) Unit!33632)

(assert (=> b!1766064 (= lt!683168 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!523 thiss!24550 rules!3447 lt!683172 (_1!10927 lt!683156)))))

(assert (=> b!1766064 (= lt!683156 (get!5927 lt!683154))))

(declare-fun lt!683166 () Unit!33632)

(declare-fun suffix!1421 () List!19511)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!626 (LexerInterface!3104 List!19513 List!19511 List!19511) Unit!33632)

(assert (=> b!1766064 (= lt!683166 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!626 thiss!24550 rules!3447 lt!683158 suffix!1421))))

(assert (=> b!1766064 (= lt!683154 (maxPrefix!1658 thiss!24550 rules!3447 lt!683172))))

(assert (=> b!1766064 (isPrefix!1715 lt!683158 lt!683172)))

(declare-fun lt!683160 () Unit!33632)

(assert (=> b!1766064 (= lt!683160 (lemmaConcatTwoListThenFirstIsPrefix!1224 lt!683158 suffix!1421))))

(assert (=> b!1766064 (= lt!683172 (++!5299 lt!683158 suffix!1421))))

(declare-fun b!1766065 () Bool)

(declare-fun tp!501282 () Bool)

(declare-fun inv!25253 (String!22156) Bool)

(declare-fun inv!25259 (TokenValueInjection!6790) Bool)

(assert (=> b!1766065 (= e!1130151 (and tp!501282 (inv!25253 (tag!3849 rule!422)) (inv!25259 (transformation!3475 rule!422)) e!1130155))))

(declare-fun tp!501274 () Bool)

(declare-fun b!1766066 () Bool)

(declare-fun e!1130165 () Bool)

(assert (=> b!1766066 (= e!1130165 (and tp!501274 (inv!25253 (tag!3849 (h!24844 rules!3447))) (inv!25259 (transformation!3475 (h!24844 rules!3447))) e!1130160))))

(declare-fun b!1766067 () Bool)

(assert (=> b!1766067 (= e!1130158 (= (rule!5505 (_1!10927 lt!683156)) lt!683173))))

(declare-fun tp!501277 () Bool)

(declare-fun b!1766068 () Bool)

(assert (=> b!1766068 (= e!1130153 (and tp!501277 (inv!25253 (tag!3849 (rule!5505 token!523))) (inv!25259 (transformation!3475 (rule!5505 token!523))) e!1130168))))

(declare-fun b!1766069 () Bool)

(declare-fun tp_is_empty!7849 () Bool)

(declare-fun tp!501281 () Bool)

(assert (=> b!1766069 (= e!1130154 (and tp_is_empty!7849 tp!501281))))

(declare-fun b!1766070 () Bool)

(assert (=> b!1766070 (= e!1130163 e!1130149)))

(declare-fun res!795078 () Bool)

(assert (=> b!1766070 (=> res!795078 e!1130149)))

(declare-fun lt!683159 () List!19511)

(declare-fun lt!683163 () Option!3972)

(assert (=> b!1766070 (= res!795078 (or (not (= lt!683159 (_2!10927 lt!683156))) (not (= lt!683163 (Some!3971 (tuple2!19051 (_1!10927 lt!683156) lt!683159))))))))

(assert (=> b!1766070 (= (_2!10927 lt!683156) lt!683159)))

(declare-fun lt!683148 () Unit!33632)

(declare-fun lemmaSamePrefixThenSameSuffix!826 (List!19511 List!19511 List!19511 List!19511 List!19511) Unit!33632)

(assert (=> b!1766070 (= lt!683148 (lemmaSamePrefixThenSameSuffix!826 lt!683153 (_2!10927 lt!683156) lt!683153 lt!683159 lt!683172))))

(declare-fun getSuffix!882 (List!19511 List!19511) List!19511)

(assert (=> b!1766070 (= lt!683159 (getSuffix!882 lt!683172 lt!683153))))

(declare-fun lt!683170 () TokenValue!3565)

(declare-fun lt!683161 () Int)

(assert (=> b!1766070 (= lt!683163 (Some!3971 (tuple2!19051 (Token!6517 lt!683170 (rule!5505 (_1!10927 lt!683156)) lt!683161 lt!683153) (_2!10927 lt!683156))))))

(declare-fun maxPrefixOneRule!1027 (LexerInterface!3104 Rule!6750 List!19511) Option!3972)

(assert (=> b!1766070 (= lt!683163 (maxPrefixOneRule!1027 thiss!24550 (rule!5505 (_1!10927 lt!683156)) lt!683172))))

(declare-fun size!15444 (List!19511) Int)

(assert (=> b!1766070 (= lt!683161 (size!15444 lt!683153))))

(assert (=> b!1766070 (= lt!683170 (apply!5275 (transformation!3475 (rule!5505 (_1!10927 lt!683156))) (seqFromList!2444 lt!683153)))))

(declare-fun lt!683144 () Unit!33632)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!405 (LexerInterface!3104 List!19513 List!19511 List!19511 List!19511 Rule!6750) Unit!33632)

(assert (=> b!1766070 (= lt!683144 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!405 thiss!24550 rules!3447 lt!683153 lt!683172 (_2!10927 lt!683156) (rule!5505 (_1!10927 lt!683156))))))

(declare-fun b!1766071 () Bool)

(declare-fun res!795070 () Bool)

(assert (=> b!1766071 (=> res!795070 e!1130157)))

(assert (=> b!1766071 (= res!795070 (isEmpty!12273 suffix!1421))))

(declare-fun b!1766072 () Bool)

(declare-fun tp!501271 () Bool)

(assert (=> b!1766072 (= e!1130146 (and e!1130165 tp!501271))))

(declare-fun b!1766073 () Bool)

(assert (=> b!1766073 (= e!1130157 e!1130145)))

(declare-fun res!795065 () Bool)

(assert (=> b!1766073 (=> res!795065 e!1130145)))

(declare-fun prefixMatch!686 (Regex!4803 List!19511) Bool)

(declare-fun head!4098 (List!19511) C!9780)

(assert (=> b!1766073 (= res!795065 (prefixMatch!686 lt!683171 (++!5299 lt!683158 (Cons!19441 (head!4098 suffix!1421) Nil!19441))))))

(declare-fun rulesRegex!831 (LexerInterface!3104 List!19513) Regex!4803)

(assert (=> b!1766073 (= lt!683171 (rulesRegex!831 thiss!24550 rules!3447))))

(assert (= (and start!174998 res!795082) b!1766049))

(assert (= (and b!1766049 res!795069) b!1766060))

(assert (= (and b!1766060 res!795081) b!1766047))

(assert (= (and b!1766047 res!795077) b!1766052))

(assert (= (and b!1766052 res!795080) b!1766048))

(assert (= (and b!1766048 res!795072) b!1766051))

(assert (= (and b!1766051 res!795084) b!1766053))

(assert (= (and b!1766053 res!795076) b!1766061))

(assert (= (and b!1766061 (not res!795071)) b!1766071))

(assert (= (and b!1766071 (not res!795070)) b!1766073))

(assert (= (and b!1766073 (not res!795065)) b!1766064))

(assert (= (and b!1766064 res!795075) b!1766059))

(assert (= (and b!1766059 res!795074) b!1766067))

(assert (= (and b!1766064 (not res!795066)) b!1766045))

(assert (= (and b!1766045 (not res!795085)) b!1766062))

(assert (= (and b!1766062 (not res!795073)) b!1766054))

(assert (= (and b!1766054 (not res!795083)) b!1766055))

(assert (= (and b!1766055 (not res!795079)) b!1766043))

(assert (= (and b!1766043 (not res!795068)) b!1766070))

(assert (= (and b!1766070 (not res!795078)) b!1766046))

(assert (= (and b!1766046 (not res!795067)) b!1766056))

(assert (= (and b!1766056 (not res!795086)) b!1766063))

(assert (= (and start!174998 ((_ is Cons!19441) suffix!1421)) b!1766069))

(assert (= b!1766065 b!1766044))

(assert (= start!174998 b!1766065))

(assert (= b!1766068 b!1766058))

(assert (= b!1766050 b!1766068))

(assert (= start!174998 b!1766050))

(assert (= b!1766066 b!1766057))

(assert (= b!1766072 b!1766066))

(assert (= (and start!174998 ((_ is Cons!19443) rules!3447)) b!1766072))

(declare-fun b_lambda!57347 () Bool)

(assert (=> (not b_lambda!57347) (not b!1766054)))

(declare-fun tb!106647 () Bool)

(declare-fun t!164743 () Bool)

(assert (=> (and b!1766057 (= (toChars!4857 (transformation!3475 (h!24844 rules!3447))) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164743) tb!106647))

(declare-fun tp!501285 () Bool)

(declare-fun b!1766089 () Bool)

(declare-fun e!1130180 () Bool)

(declare-fun inv!25260 (Conc!6467) Bool)

(assert (=> b!1766089 (= e!1130180 (and (inv!25260 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167)))) tp!501285))))

(declare-fun result!128298 () Bool)

(declare-fun inv!25261 (BalanceConc!12878) Bool)

(assert (=> tb!106647 (= result!128298 (and (inv!25261 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167))) e!1130180))))

(assert (= tb!106647 b!1766089))

(declare-fun m!2183485 () Bool)

(assert (=> b!1766089 m!2183485))

(declare-fun m!2183487 () Bool)

(assert (=> tb!106647 m!2183487))

(assert (=> b!1766054 t!164743))

(declare-fun b_and!133807 () Bool)

(assert (= b_and!133797 (and (=> t!164743 result!128298) b_and!133807)))

(declare-fun tb!106649 () Bool)

(declare-fun t!164745 () Bool)

(assert (=> (and b!1766044 (= (toChars!4857 (transformation!3475 rule!422)) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164745) tb!106649))

(declare-fun result!128302 () Bool)

(assert (= result!128302 result!128298))

(assert (=> b!1766054 t!164745))

(declare-fun b_and!133809 () Bool)

(assert (= b_and!133801 (and (=> t!164745 result!128302) b_and!133809)))

(declare-fun tb!106651 () Bool)

(declare-fun t!164747 () Bool)

(assert (=> (and b!1766058 (= (toChars!4857 (transformation!3475 (rule!5505 token!523))) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164747) tb!106651))

(declare-fun result!128304 () Bool)

(assert (= result!128304 result!128298))

(assert (=> b!1766054 t!164747))

(declare-fun b_and!133811 () Bool)

(assert (= b_and!133805 (and (=> t!164747 result!128304) b_and!133811)))

(declare-fun b_lambda!57349 () Bool)

(assert (=> (not b_lambda!57349) (not b!1766054)))

(declare-fun t!164749 () Bool)

(declare-fun tb!106653 () Bool)

(assert (=> (and b!1766057 (= (toValue!4998 (transformation!3475 (h!24844 rules!3447))) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164749) tb!106653))

(declare-fun result!128306 () Bool)

(assert (=> tb!106653 (= result!128306 (inv!21 (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167)))))

(declare-fun m!2183489 () Bool)

(assert (=> tb!106653 m!2183489))

(assert (=> b!1766054 t!164749))

(declare-fun b_and!133813 () Bool)

(assert (= b_and!133795 (and (=> t!164749 result!128306) b_and!133813)))

(declare-fun tb!106655 () Bool)

(declare-fun t!164751 () Bool)

(assert (=> (and b!1766044 (= (toValue!4998 (transformation!3475 rule!422)) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164751) tb!106655))

(declare-fun result!128310 () Bool)

(assert (= result!128310 result!128306))

(assert (=> b!1766054 t!164751))

(declare-fun b_and!133815 () Bool)

(assert (= b_and!133799 (and (=> t!164751 result!128310) b_and!133815)))

(declare-fun tb!106657 () Bool)

(declare-fun t!164753 () Bool)

(assert (=> (and b!1766058 (= (toValue!4998 (transformation!3475 (rule!5505 token!523))) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164753) tb!106657))

(declare-fun result!128312 () Bool)

(assert (= result!128312 result!128306))

(assert (=> b!1766054 t!164753))

(declare-fun b_and!133817 () Bool)

(assert (= b_and!133803 (and (=> t!164753 result!128312) b_and!133817)))

(declare-fun b_lambda!57351 () Bool)

(assert (=> (not b_lambda!57351) (not b!1766055)))

(declare-fun t!164755 () Bool)

(declare-fun tb!106659 () Bool)

(assert (=> (and b!1766057 (= (toChars!4857 (transformation!3475 (h!24844 rules!3447))) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164755) tb!106659))

(declare-fun b!1766092 () Bool)

(declare-fun e!1130184 () Bool)

(declare-fun tp!501286 () Bool)

(assert (=> b!1766092 (= e!1130184 (and (inv!25260 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156))))) tp!501286))))

(declare-fun result!128314 () Bool)

(assert (=> tb!106659 (= result!128314 (and (inv!25261 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156)))) e!1130184))))

(assert (= tb!106659 b!1766092))

(declare-fun m!2183491 () Bool)

(assert (=> b!1766092 m!2183491))

(declare-fun m!2183493 () Bool)

(assert (=> tb!106659 m!2183493))

(assert (=> b!1766055 t!164755))

(declare-fun b_and!133819 () Bool)

(assert (= b_and!133807 (and (=> t!164755 result!128314) b_and!133819)))

(declare-fun tb!106661 () Bool)

(declare-fun t!164757 () Bool)

(assert (=> (and b!1766044 (= (toChars!4857 (transformation!3475 rule!422)) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164757) tb!106661))

(declare-fun result!128316 () Bool)

(assert (= result!128316 result!128314))

(assert (=> b!1766055 t!164757))

(declare-fun b_and!133821 () Bool)

(assert (= b_and!133809 (and (=> t!164757 result!128316) b_and!133821)))

(declare-fun t!164759 () Bool)

(declare-fun tb!106663 () Bool)

(assert (=> (and b!1766058 (= (toChars!4857 (transformation!3475 (rule!5505 token!523))) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164759) tb!106663))

(declare-fun result!128318 () Bool)

(assert (= result!128318 result!128314))

(assert (=> b!1766055 t!164759))

(declare-fun b_and!133823 () Bool)

(assert (= b_and!133811 (and (=> t!164759 result!128318) b_and!133823)))

(declare-fun m!2183495 () Bool)

(assert (=> b!1766056 m!2183495))

(declare-fun m!2183497 () Bool)

(assert (=> b!1766062 m!2183497))

(declare-fun m!2183499 () Bool)

(assert (=> b!1766062 m!2183499))

(declare-fun m!2183501 () Bool)

(assert (=> b!1766047 m!2183501))

(declare-fun m!2183503 () Bool)

(assert (=> b!1766064 m!2183503))

(declare-fun m!2183505 () Bool)

(assert (=> b!1766064 m!2183505))

(declare-fun m!2183507 () Bool)

(assert (=> b!1766064 m!2183507))

(declare-fun m!2183509 () Bool)

(assert (=> b!1766064 m!2183509))

(declare-fun m!2183511 () Bool)

(assert (=> b!1766064 m!2183511))

(declare-fun m!2183513 () Bool)

(assert (=> b!1766064 m!2183513))

(declare-fun m!2183515 () Bool)

(assert (=> b!1766064 m!2183515))

(declare-fun m!2183517 () Bool)

(assert (=> b!1766064 m!2183517))

(declare-fun m!2183519 () Bool)

(assert (=> b!1766064 m!2183519))

(declare-fun m!2183521 () Bool)

(assert (=> b!1766064 m!2183521))

(declare-fun m!2183523 () Bool)

(assert (=> b!1766064 m!2183523))

(declare-fun m!2183525 () Bool)

(assert (=> b!1766064 m!2183525))

(declare-fun m!2183527 () Bool)

(assert (=> b!1766064 m!2183527))

(declare-fun m!2183529 () Bool)

(assert (=> b!1766064 m!2183529))

(declare-fun m!2183531 () Bool)

(assert (=> b!1766064 m!2183531))

(declare-fun m!2183533 () Bool)

(assert (=> b!1766054 m!2183533))

(assert (=> b!1766054 m!2183533))

(declare-fun m!2183535 () Bool)

(assert (=> b!1766054 m!2183535))

(assert (=> b!1766054 m!2183535))

(declare-fun m!2183537 () Bool)

(assert (=> b!1766054 m!2183537))

(declare-fun m!2183539 () Bool)

(assert (=> b!1766054 m!2183539))

(declare-fun m!2183541 () Bool)

(assert (=> b!1766070 m!2183541))

(declare-fun m!2183543 () Bool)

(assert (=> b!1766070 m!2183543))

(declare-fun m!2183545 () Bool)

(assert (=> b!1766070 m!2183545))

(declare-fun m!2183547 () Bool)

(assert (=> b!1766070 m!2183547))

(assert (=> b!1766070 m!2183541))

(declare-fun m!2183549 () Bool)

(assert (=> b!1766070 m!2183549))

(declare-fun m!2183551 () Bool)

(assert (=> b!1766070 m!2183551))

(declare-fun m!2183553 () Bool)

(assert (=> b!1766070 m!2183553))

(declare-fun m!2183555 () Bool)

(assert (=> b!1766050 m!2183555))

(declare-fun m!2183557 () Bool)

(assert (=> b!1766073 m!2183557))

(declare-fun m!2183559 () Bool)

(assert (=> b!1766073 m!2183559))

(assert (=> b!1766073 m!2183559))

(declare-fun m!2183561 () Bool)

(assert (=> b!1766073 m!2183561))

(declare-fun m!2183563 () Bool)

(assert (=> b!1766073 m!2183563))

(declare-fun m!2183565 () Bool)

(assert (=> b!1766049 m!2183565))

(declare-fun m!2183567 () Bool)

(assert (=> start!174998 m!2183567))

(declare-fun m!2183569 () Bool)

(assert (=> b!1766060 m!2183569))

(declare-fun m!2183571 () Bool)

(assert (=> b!1766065 m!2183571))

(declare-fun m!2183573 () Bool)

(assert (=> b!1766065 m!2183573))

(declare-fun m!2183575 () Bool)

(assert (=> b!1766061 m!2183575))

(declare-fun m!2183577 () Bool)

(assert (=> b!1766061 m!2183577))

(declare-fun m!2183579 () Bool)

(assert (=> b!1766061 m!2183579))

(declare-fun m!2183581 () Bool)

(assert (=> b!1766068 m!2183581))

(declare-fun m!2183583 () Bool)

(assert (=> b!1766068 m!2183583))

(declare-fun m!2183585 () Bool)

(assert (=> b!1766045 m!2183585))

(declare-fun m!2183587 () Bool)

(assert (=> b!1766071 m!2183587))

(declare-fun m!2183589 () Bool)

(assert (=> b!1766052 m!2183589))

(declare-fun m!2183591 () Bool)

(assert (=> b!1766052 m!2183591))

(declare-fun m!2183593 () Bool)

(assert (=> b!1766052 m!2183593))

(declare-fun m!2183595 () Bool)

(assert (=> b!1766052 m!2183595))

(assert (=> b!1766059 m!2183519))

(assert (=> b!1766059 m!2183519))

(declare-fun m!2183597 () Bool)

(assert (=> b!1766059 m!2183597))

(assert (=> b!1766059 m!2183597))

(declare-fun m!2183599 () Bool)

(assert (=> b!1766059 m!2183599))

(declare-fun m!2183601 () Bool)

(assert (=> b!1766059 m!2183601))

(declare-fun m!2183603 () Bool)

(assert (=> b!1766043 m!2183603))

(declare-fun m!2183605 () Bool)

(assert (=> b!1766043 m!2183605))

(declare-fun m!2183607 () Bool)

(assert (=> b!1766043 m!2183607))

(declare-fun m!2183609 () Bool)

(assert (=> b!1766043 m!2183609))

(assert (=> b!1766043 m!2183609))

(declare-fun m!2183611 () Bool)

(assert (=> b!1766043 m!2183611))

(declare-fun m!2183613 () Bool)

(assert (=> b!1766048 m!2183613))

(declare-fun m!2183615 () Bool)

(assert (=> b!1766046 m!2183615))

(declare-fun m!2183617 () Bool)

(assert (=> b!1766046 m!2183617))

(declare-fun m!2183619 () Bool)

(assert (=> b!1766046 m!2183619))

(declare-fun m!2183621 () Bool)

(assert (=> b!1766051 m!2183621))

(declare-fun m!2183623 () Bool)

(assert (=> b!1766055 m!2183623))

(declare-fun m!2183625 () Bool)

(assert (=> b!1766066 m!2183625))

(declare-fun m!2183627 () Bool)

(assert (=> b!1766066 m!2183627))

(check-sat (not b!1766046) (not b!1766050) (not b_lambda!57351) (not b!1766060) (not b!1766069) (not b!1766054) (not tb!106659) (not b!1766059) (not b_lambda!57349) (not b!1766065) (not b_next!49559) (not b!1766089) (not b!1766070) (not b!1766048) (not b!1766072) (not tb!106647) (not b_next!49567) (not b!1766056) (not b!1766043) (not b_next!49561) b_and!133821 (not b!1766064) b_and!133813 (not b!1766047) (not b!1766051) (not b!1766092) (not b!1766061) b_and!133819 b_and!133823 tp_is_empty!7849 (not b!1766068) (not b!1766045) (not start!174998) (not b_next!49565) (not b!1766062) (not b!1766052) (not b_next!49569) b_and!133815 (not tb!106653) (not b_lambda!57347) (not b!1766049) b_and!133817 (not b!1766071) (not b!1766073) (not b_next!49563) (not b!1766066))
(check-sat (not b_next!49559) (not b_next!49567) b_and!133813 b_and!133819 b_and!133823 (not b_next!49565) b_and!133817 (not b_next!49563) (not b_next!49561) b_and!133821 (not b_next!49569) b_and!133815)
(get-model)

(declare-fun d!539512 () Bool)

(declare-fun lt!683177 () Int)

(assert (=> d!539512 (>= lt!683177 0)))

(declare-fun e!1130187 () Int)

(assert (=> d!539512 (= lt!683177 e!1130187)))

(declare-fun c!287664 () Bool)

(assert (=> d!539512 (= c!287664 ((_ is Nil!19441) lt!683153))))

(assert (=> d!539512 (= (size!15444 lt!683153) lt!683177)))

(declare-fun b!1766097 () Bool)

(assert (=> b!1766097 (= e!1130187 0)))

(declare-fun b!1766098 () Bool)

(assert (=> b!1766098 (= e!1130187 (+ 1 (size!15444 (t!164760 lt!683153))))))

(assert (= (and d!539512 c!287664) b!1766097))

(assert (= (and d!539512 (not c!287664)) b!1766098))

(declare-fun m!2183629 () Bool)

(assert (=> b!1766098 m!2183629))

(assert (=> b!1766070 d!539512))

(declare-fun d!539514 () Bool)

(assert (=> d!539514 (= (maxPrefixOneRule!1027 thiss!24550 (rule!5505 (_1!10927 lt!683156)) lt!683172) (Some!3971 (tuple2!19051 (Token!6517 (apply!5275 (transformation!3475 (rule!5505 (_1!10927 lt!683156))) (seqFromList!2444 lt!683153)) (rule!5505 (_1!10927 lt!683156)) (size!15444 lt!683153) lt!683153) (_2!10927 lt!683156))))))

(declare-fun lt!683185 () Unit!33632)

(declare-fun choose!10961 (LexerInterface!3104 List!19513 List!19511 List!19511 List!19511 Rule!6750) Unit!33632)

(assert (=> d!539514 (= lt!683185 (choose!10961 thiss!24550 rules!3447 lt!683153 lt!683172 (_2!10927 lt!683156) (rule!5505 (_1!10927 lt!683156))))))

(assert (=> d!539514 (not (isEmpty!12272 rules!3447))))

(assert (=> d!539514 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!405 thiss!24550 rules!3447 lt!683153 lt!683172 (_2!10927 lt!683156) (rule!5505 (_1!10927 lt!683156))) lt!683185)))

(declare-fun bs!404371 () Bool)

(assert (= bs!404371 d!539514))

(assert (=> bs!404371 m!2183541))

(assert (=> bs!404371 m!2183549))

(assert (=> bs!404371 m!2183565))

(assert (=> bs!404371 m!2183541))

(declare-fun m!2183651 () Bool)

(assert (=> bs!404371 m!2183651))

(assert (=> bs!404371 m!2183543))

(assert (=> bs!404371 m!2183553))

(assert (=> b!1766070 d!539514))

(declare-fun d!539526 () Bool)

(declare-fun lt!683189 () List!19511)

(assert (=> d!539526 (= (++!5299 lt!683153 lt!683189) lt!683172)))

(declare-fun e!1130218 () List!19511)

(assert (=> d!539526 (= lt!683189 e!1130218)))

(declare-fun c!287676 () Bool)

(assert (=> d!539526 (= c!287676 ((_ is Cons!19441) lt!683153))))

(assert (=> d!539526 (>= (size!15444 lt!683172) (size!15444 lt!683153))))

(assert (=> d!539526 (= (getSuffix!882 lt!683172 lt!683153) lt!683189)))

(declare-fun b!1766155 () Bool)

(declare-fun tail!2643 (List!19511) List!19511)

(assert (=> b!1766155 (= e!1130218 (getSuffix!882 (tail!2643 lt!683172) (t!164760 lt!683153)))))

(declare-fun b!1766156 () Bool)

(assert (=> b!1766156 (= e!1130218 lt!683172)))

(assert (= (and d!539526 c!287676) b!1766155))

(assert (= (and d!539526 (not c!287676)) b!1766156))

(declare-fun m!2183671 () Bool)

(assert (=> d!539526 m!2183671))

(declare-fun m!2183673 () Bool)

(assert (=> d!539526 m!2183673))

(assert (=> d!539526 m!2183553))

(declare-fun m!2183675 () Bool)

(assert (=> b!1766155 m!2183675))

(assert (=> b!1766155 m!2183675))

(declare-fun m!2183677 () Bool)

(assert (=> b!1766155 m!2183677))

(assert (=> b!1766070 d!539526))

(declare-fun b!1766241 () Bool)

(declare-fun res!795166 () Bool)

(declare-fun e!1130262 () Bool)

(assert (=> b!1766241 (=> (not res!795166) (not e!1130262))))

(declare-fun lt!683235 () Option!3972)

(assert (=> b!1766241 (= res!795166 (= (rule!5505 (_1!10927 (get!5927 lt!683235))) (rule!5505 (_1!10927 lt!683156))))))

(declare-fun b!1766242 () Bool)

(declare-fun res!795169 () Bool)

(assert (=> b!1766242 (=> (not res!795169) (not e!1130262))))

(assert (=> b!1766242 (= res!795169 (< (size!15444 (_2!10927 (get!5927 lt!683235))) (size!15444 lt!683172)))))

(declare-fun b!1766243 () Bool)

(declare-fun e!1130260 () Option!3972)

(declare-datatypes ((tuple2!19052 0))(
  ( (tuple2!19053 (_1!10928 List!19511) (_2!10928 List!19511)) )
))
(declare-fun lt!683234 () tuple2!19052)

(assert (=> b!1766243 (= e!1130260 (Some!3971 (tuple2!19051 (Token!6517 (apply!5275 (transformation!3475 (rule!5505 (_1!10927 lt!683156))) (seqFromList!2444 (_1!10928 lt!683234))) (rule!5505 (_1!10927 lt!683156)) (size!15443 (seqFromList!2444 (_1!10928 lt!683234))) (_1!10928 lt!683234)) (_2!10928 lt!683234))))))

(declare-fun lt!683231 () Unit!33632)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!430 (Regex!4803 List!19511) Unit!33632)

(assert (=> b!1766243 (= lt!683231 (longestMatchIsAcceptedByMatchOrIsEmpty!430 (regex!3475 (rule!5505 (_1!10927 lt!683156))) lt!683172))))

(declare-fun res!795172 () Bool)

(declare-fun findLongestMatchInner!446 (Regex!4803 List!19511 Int List!19511 List!19511 Int) tuple2!19052)

(assert (=> b!1766243 (= res!795172 (isEmpty!12273 (_1!10928 (findLongestMatchInner!446 (regex!3475 (rule!5505 (_1!10927 lt!683156))) Nil!19441 (size!15444 Nil!19441) lt!683172 lt!683172 (size!15444 lt!683172)))))))

(declare-fun e!1130261 () Bool)

(assert (=> b!1766243 (=> res!795172 e!1130261)))

(assert (=> b!1766243 e!1130261))

(declare-fun lt!683233 () Unit!33632)

(assert (=> b!1766243 (= lt!683233 lt!683231)))

(declare-fun lt!683232 () Unit!33632)

(assert (=> b!1766243 (= lt!683232 (lemmaSemiInverse!613 (transformation!3475 (rule!5505 (_1!10927 lt!683156))) (seqFromList!2444 (_1!10928 lt!683234))))))

(declare-fun b!1766244 () Bool)

(declare-fun res!795170 () Bool)

(assert (=> b!1766244 (=> (not res!795170) (not e!1130262))))

(assert (=> b!1766244 (= res!795170 (= (value!108710 (_1!10927 (get!5927 lt!683235))) (apply!5275 (transformation!3475 (rule!5505 (_1!10927 (get!5927 lt!683235)))) (seqFromList!2444 (originalCharacters!4289 (_1!10927 (get!5927 lt!683235)))))))))

(declare-fun b!1766245 () Bool)

(assert (=> b!1766245 (= e!1130261 (matchR!2276 (regex!3475 (rule!5505 (_1!10927 lt!683156))) (_1!10928 (findLongestMatchInner!446 (regex!3475 (rule!5505 (_1!10927 lt!683156))) Nil!19441 (size!15444 Nil!19441) lt!683172 lt!683172 (size!15444 lt!683172)))))))

(declare-fun b!1766246 () Bool)

(assert (=> b!1766246 (= e!1130262 (= (size!15442 (_1!10927 (get!5927 lt!683235))) (size!15444 (originalCharacters!4289 (_1!10927 (get!5927 lt!683235))))))))

(declare-fun b!1766247 () Bool)

(assert (=> b!1766247 (= e!1130260 None!3971)))

(declare-fun b!1766248 () Bool)

(declare-fun e!1130263 () Bool)

(assert (=> b!1766248 (= e!1130263 e!1130262)))

(declare-fun res!795168 () Bool)

(assert (=> b!1766248 (=> (not res!795168) (not e!1130262))))

(assert (=> b!1766248 (= res!795168 (matchR!2276 (regex!3475 (rule!5505 (_1!10927 lt!683156))) (list!7893 (charsOf!2124 (_1!10927 (get!5927 lt!683235))))))))

(declare-fun b!1766249 () Bool)

(declare-fun res!795171 () Bool)

(assert (=> b!1766249 (=> (not res!795171) (not e!1130262))))

(assert (=> b!1766249 (= res!795171 (= (++!5299 (list!7893 (charsOf!2124 (_1!10927 (get!5927 lt!683235)))) (_2!10927 (get!5927 lt!683235))) lt!683172))))

(declare-fun d!539534 () Bool)

(assert (=> d!539534 e!1130263))

(declare-fun res!795167 () Bool)

(assert (=> d!539534 (=> res!795167 e!1130263)))

(declare-fun isEmpty!12275 (Option!3972) Bool)

(assert (=> d!539534 (= res!795167 (isEmpty!12275 lt!683235))))

(assert (=> d!539534 (= lt!683235 e!1130260)))

(declare-fun c!287692 () Bool)

(assert (=> d!539534 (= c!287692 (isEmpty!12273 (_1!10928 lt!683234)))))

(declare-fun findLongestMatch!373 (Regex!4803 List!19511) tuple2!19052)

(assert (=> d!539534 (= lt!683234 (findLongestMatch!373 (regex!3475 (rule!5505 (_1!10927 lt!683156))) lt!683172))))

(assert (=> d!539534 (ruleValid!973 thiss!24550 (rule!5505 (_1!10927 lt!683156)))))

(assert (=> d!539534 (= (maxPrefixOneRule!1027 thiss!24550 (rule!5505 (_1!10927 lt!683156)) lt!683172) lt!683235)))

(assert (= (and d!539534 c!287692) b!1766247))

(assert (= (and d!539534 (not c!287692)) b!1766243))

(assert (= (and b!1766243 (not res!795172)) b!1766245))

(assert (= (and d!539534 (not res!795167)) b!1766248))

(assert (= (and b!1766248 res!795168) b!1766249))

(assert (= (and b!1766249 res!795171) b!1766242))

(assert (= (and b!1766242 res!795169) b!1766241))

(assert (= (and b!1766241 res!795166) b!1766244))

(assert (= (and b!1766244 res!795170) b!1766246))

(declare-fun m!2183775 () Bool)

(assert (=> b!1766245 m!2183775))

(assert (=> b!1766245 m!2183673))

(assert (=> b!1766245 m!2183775))

(assert (=> b!1766245 m!2183673))

(declare-fun m!2183777 () Bool)

(assert (=> b!1766245 m!2183777))

(declare-fun m!2183779 () Bool)

(assert (=> b!1766245 m!2183779))

(assert (=> b!1766243 m!2183775))

(declare-fun m!2183781 () Bool)

(assert (=> b!1766243 m!2183781))

(declare-fun m!2183783 () Bool)

(assert (=> b!1766243 m!2183783))

(declare-fun m!2183785 () Bool)

(assert (=> b!1766243 m!2183785))

(assert (=> b!1766243 m!2183673))

(assert (=> b!1766243 m!2183783))

(declare-fun m!2183787 () Bool)

(assert (=> b!1766243 m!2183787))

(assert (=> b!1766243 m!2183783))

(declare-fun m!2183789 () Bool)

(assert (=> b!1766243 m!2183789))

(assert (=> b!1766243 m!2183775))

(assert (=> b!1766243 m!2183673))

(assert (=> b!1766243 m!2183777))

(assert (=> b!1766243 m!2183783))

(declare-fun m!2183791 () Bool)

(assert (=> b!1766243 m!2183791))

(declare-fun m!2183793 () Bool)

(assert (=> b!1766244 m!2183793))

(declare-fun m!2183795 () Bool)

(assert (=> b!1766244 m!2183795))

(assert (=> b!1766244 m!2183795))

(declare-fun m!2183797 () Bool)

(assert (=> b!1766244 m!2183797))

(declare-fun m!2183799 () Bool)

(assert (=> d!539534 m!2183799))

(declare-fun m!2183801 () Bool)

(assert (=> d!539534 m!2183801))

(declare-fun m!2183803 () Bool)

(assert (=> d!539534 m!2183803))

(declare-fun m!2183805 () Bool)

(assert (=> d!539534 m!2183805))

(assert (=> b!1766241 m!2183793))

(assert (=> b!1766248 m!2183793))

(declare-fun m!2183807 () Bool)

(assert (=> b!1766248 m!2183807))

(assert (=> b!1766248 m!2183807))

(declare-fun m!2183809 () Bool)

(assert (=> b!1766248 m!2183809))

(assert (=> b!1766248 m!2183809))

(declare-fun m!2183811 () Bool)

(assert (=> b!1766248 m!2183811))

(assert (=> b!1766249 m!2183793))

(assert (=> b!1766249 m!2183807))

(assert (=> b!1766249 m!2183807))

(assert (=> b!1766249 m!2183809))

(assert (=> b!1766249 m!2183809))

(declare-fun m!2183813 () Bool)

(assert (=> b!1766249 m!2183813))

(assert (=> b!1766242 m!2183793))

(declare-fun m!2183815 () Bool)

(assert (=> b!1766242 m!2183815))

(assert (=> b!1766242 m!2183673))

(assert (=> b!1766246 m!2183793))

(declare-fun m!2183817 () Bool)

(assert (=> b!1766246 m!2183817))

(assert (=> b!1766070 d!539534))

(declare-fun d!539572 () Bool)

(assert (=> d!539572 (= (apply!5275 (transformation!3475 (rule!5505 (_1!10927 lt!683156))) (seqFromList!2444 lt!683153)) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (seqFromList!2444 lt!683153)))))

(declare-fun b_lambda!57369 () Bool)

(assert (=> (not b_lambda!57369) (not d!539572)))

(declare-fun t!164776 () Bool)

(declare-fun tb!106677 () Bool)

(assert (=> (and b!1766057 (= (toValue!4998 (transformation!3475 (h!24844 rules!3447))) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164776) tb!106677))

(declare-fun result!128332 () Bool)

(assert (=> tb!106677 (= result!128332 (inv!21 (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (seqFromList!2444 lt!683153))))))

(declare-fun m!2183819 () Bool)

(assert (=> tb!106677 m!2183819))

(assert (=> d!539572 t!164776))

(declare-fun b_and!133873 () Bool)

(assert (= b_and!133813 (and (=> t!164776 result!128332) b_and!133873)))

(declare-fun t!164778 () Bool)

(declare-fun tb!106679 () Bool)

(assert (=> (and b!1766044 (= (toValue!4998 (transformation!3475 rule!422)) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164778) tb!106679))

(declare-fun result!128334 () Bool)

(assert (= result!128334 result!128332))

(assert (=> d!539572 t!164778))

(declare-fun b_and!133875 () Bool)

(assert (= b_and!133815 (and (=> t!164778 result!128334) b_and!133875)))

(declare-fun t!164780 () Bool)

(declare-fun tb!106681 () Bool)

(assert (=> (and b!1766058 (= (toValue!4998 (transformation!3475 (rule!5505 token!523))) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164780) tb!106681))

(declare-fun result!128336 () Bool)

(assert (= result!128336 result!128332))

(assert (=> d!539572 t!164780))

(declare-fun b_and!133877 () Bool)

(assert (= b_and!133817 (and (=> t!164780 result!128336) b_and!133877)))

(assert (=> d!539572 m!2183541))

(declare-fun m!2183821 () Bool)

(assert (=> d!539572 m!2183821))

(assert (=> b!1766070 d!539572))

(declare-fun d!539574 () Bool)

(declare-fun fromListB!1118 (List!19511) BalanceConc!12878)

(assert (=> d!539574 (= (seqFromList!2444 lt!683153) (fromListB!1118 lt!683153))))

(declare-fun bs!404382 () Bool)

(assert (= bs!404382 d!539574))

(declare-fun m!2183823 () Bool)

(assert (=> bs!404382 m!2183823))

(assert (=> b!1766070 d!539574))

(declare-fun d!539576 () Bool)

(assert (=> d!539576 (= (_2!10927 lt!683156) lt!683159)))

(declare-fun lt!683238 () Unit!33632)

(declare-fun choose!10962 (List!19511 List!19511 List!19511 List!19511 List!19511) Unit!33632)

(assert (=> d!539576 (= lt!683238 (choose!10962 lt!683153 (_2!10927 lt!683156) lt!683153 lt!683159 lt!683172))))

(assert (=> d!539576 (isPrefix!1715 lt!683153 lt!683172)))

(assert (=> d!539576 (= (lemmaSamePrefixThenSameSuffix!826 lt!683153 (_2!10927 lt!683156) lt!683153 lt!683159 lt!683172) lt!683238)))

(declare-fun bs!404383 () Bool)

(assert (= bs!404383 d!539576))

(declare-fun m!2183825 () Bool)

(assert (=> bs!404383 m!2183825))

(assert (=> bs!404383 m!2183523))

(assert (=> b!1766070 d!539576))

(declare-fun d!539578 () Bool)

(assert (=> d!539578 (= (get!5927 lt!683146) (v!25440 lt!683146))))

(assert (=> b!1766048 d!539578))

(declare-fun d!539580 () Bool)

(declare-fun lt!683241 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2813 (List!19513) (InoxSet Rule!6750))

(assert (=> d!539580 (= lt!683241 (select (content!2813 rules!3447) rule!422))))

(declare-fun e!1130270 () Bool)

(assert (=> d!539580 (= lt!683241 e!1130270)))

(declare-fun res!795178 () Bool)

(assert (=> d!539580 (=> (not res!795178) (not e!1130270))))

(assert (=> d!539580 (= res!795178 ((_ is Cons!19443) rules!3447))))

(assert (=> d!539580 (= (contains!3505 rules!3447 rule!422) lt!683241)))

(declare-fun b!1766254 () Bool)

(declare-fun e!1130269 () Bool)

(assert (=> b!1766254 (= e!1130270 e!1130269)))

(declare-fun res!795177 () Bool)

(assert (=> b!1766254 (=> res!795177 e!1130269)))

(assert (=> b!1766254 (= res!795177 (= (h!24844 rules!3447) rule!422))))

(declare-fun b!1766255 () Bool)

(assert (=> b!1766255 (= e!1130269 (contains!3505 (t!164762 rules!3447) rule!422))))

(assert (= (and d!539580 res!795178) b!1766254))

(assert (= (and b!1766254 (not res!795177)) b!1766255))

(declare-fun m!2183827 () Bool)

(assert (=> d!539580 m!2183827))

(declare-fun m!2183829 () Bool)

(assert (=> d!539580 m!2183829))

(declare-fun m!2183831 () Bool)

(assert (=> b!1766255 m!2183831))

(assert (=> b!1766047 d!539580))

(declare-fun d!539582 () Bool)

(assert (=> d!539582 (= (inv!25253 (tag!3849 (rule!5505 token!523))) (= (mod (str.len (value!108684 (tag!3849 (rule!5505 token!523)))) 2) 0))))

(assert (=> b!1766068 d!539582))

(declare-fun d!539584 () Bool)

(declare-fun res!795181 () Bool)

(declare-fun e!1130273 () Bool)

(assert (=> d!539584 (=> (not res!795181) (not e!1130273))))

(declare-fun semiInverseModEq!1384 (Int Int) Bool)

(assert (=> d!539584 (= res!795181 (semiInverseModEq!1384 (toChars!4857 (transformation!3475 (rule!5505 token!523))) (toValue!4998 (transformation!3475 (rule!5505 token!523)))))))

(assert (=> d!539584 (= (inv!25259 (transformation!3475 (rule!5505 token!523))) e!1130273)))

(declare-fun b!1766258 () Bool)

(declare-fun equivClasses!1325 (Int Int) Bool)

(assert (=> b!1766258 (= e!1130273 (equivClasses!1325 (toChars!4857 (transformation!3475 (rule!5505 token!523))) (toValue!4998 (transformation!3475 (rule!5505 token!523)))))))

(assert (= (and d!539584 res!795181) b!1766258))

(declare-fun m!2183833 () Bool)

(assert (=> d!539584 m!2183833))

(declare-fun m!2183835 () Bool)

(assert (=> b!1766258 m!2183835))

(assert (=> b!1766068 d!539584))

(declare-fun d!539586 () Bool)

(assert (=> d!539586 (= (isEmpty!12273 (_2!10927 lt!683152)) ((_ is Nil!19441) (_2!10927 lt!683152)))))

(assert (=> b!1766051 d!539586))

(declare-fun d!539588 () Bool)

(declare-fun c!287695 () Bool)

(assert (=> d!539588 (= c!287695 ((_ is Node!6467) (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156))))))))

(declare-fun e!1130278 () Bool)

(assert (=> d!539588 (= (inv!25260 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156))))) e!1130278)))

(declare-fun b!1766265 () Bool)

(declare-fun inv!25264 (Conc!6467) Bool)

(assert (=> b!1766265 (= e!1130278 (inv!25264 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156))))))))

(declare-fun b!1766266 () Bool)

(declare-fun e!1130279 () Bool)

(assert (=> b!1766266 (= e!1130278 e!1130279)))

(declare-fun res!795184 () Bool)

(assert (=> b!1766266 (= res!795184 (not ((_ is Leaf!9425) (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156)))))))))

(assert (=> b!1766266 (=> res!795184 e!1130279)))

(declare-fun b!1766267 () Bool)

(declare-fun inv!25265 (Conc!6467) Bool)

(assert (=> b!1766267 (= e!1130279 (inv!25265 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156))))))))

(assert (= (and d!539588 c!287695) b!1766265))

(assert (= (and d!539588 (not c!287695)) b!1766266))

(assert (= (and b!1766266 (not res!795184)) b!1766267))

(declare-fun m!2183837 () Bool)

(assert (=> b!1766265 m!2183837))

(declare-fun m!2183839 () Bool)

(assert (=> b!1766267 m!2183839))

(assert (=> b!1766092 d!539588))

(declare-fun d!539590 () Bool)

(assert (=> d!539590 (= (isEmpty!12273 suffix!1421) ((_ is Nil!19441) suffix!1421))))

(assert (=> b!1766071 d!539590))

(declare-fun b!1766278 () Bool)

(declare-fun e!1130288 () Bool)

(declare-fun inv!16 (TokenValue!3565) Bool)

(assert (=> b!1766278 (= e!1130288 (inv!16 (value!108710 token!523)))))

(declare-fun b!1766279 () Bool)

(declare-fun e!1130286 () Bool)

(declare-fun inv!17 (TokenValue!3565) Bool)

(assert (=> b!1766279 (= e!1130286 (inv!17 (value!108710 token!523)))))

(declare-fun b!1766280 () Bool)

(declare-fun e!1130287 () Bool)

(declare-fun inv!15 (TokenValue!3565) Bool)

(assert (=> b!1766280 (= e!1130287 (inv!15 (value!108710 token!523)))))

(declare-fun b!1766281 () Bool)

(declare-fun res!795187 () Bool)

(assert (=> b!1766281 (=> res!795187 e!1130287)))

(assert (=> b!1766281 (= res!795187 (not ((_ is IntegerValue!10697) (value!108710 token!523))))))

(assert (=> b!1766281 (= e!1130286 e!1130287)))

(declare-fun d!539592 () Bool)

(declare-fun c!287700 () Bool)

(assert (=> d!539592 (= c!287700 ((_ is IntegerValue!10695) (value!108710 token!523)))))

(assert (=> d!539592 (= (inv!21 (value!108710 token!523)) e!1130288)))

(declare-fun b!1766282 () Bool)

(assert (=> b!1766282 (= e!1130288 e!1130286)))

(declare-fun c!287701 () Bool)

(assert (=> b!1766282 (= c!287701 ((_ is IntegerValue!10696) (value!108710 token!523)))))

(assert (= (and d!539592 c!287700) b!1766278))

(assert (= (and d!539592 (not c!287700)) b!1766282))

(assert (= (and b!1766282 c!287701) b!1766279))

(assert (= (and b!1766282 (not c!287701)) b!1766281))

(assert (= (and b!1766281 (not res!795187)) b!1766280))

(declare-fun m!2183841 () Bool)

(assert (=> b!1766278 m!2183841))

(declare-fun m!2183843 () Bool)

(assert (=> b!1766279 m!2183843))

(declare-fun m!2183845 () Bool)

(assert (=> b!1766280 m!2183845))

(assert (=> b!1766050 d!539592))

(declare-fun d!539594 () Bool)

(assert (=> d!539594 (= (isEmpty!12272 rules!3447) ((_ is Nil!19443) rules!3447))))

(assert (=> b!1766049 d!539594))

(declare-fun d!539596 () Bool)

(declare-fun isBalanced!2022 (Conc!6467) Bool)

(assert (=> d!539596 (= (inv!25261 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167))) (isBalanced!2022 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167)))))))

(declare-fun bs!404384 () Bool)

(assert (= bs!404384 d!539596))

(declare-fun m!2183847 () Bool)

(assert (=> bs!404384 m!2183847))

(assert (=> tb!106647 d!539596))

(declare-fun d!539598 () Bool)

(assert (=> d!539598 (= (seqFromList!2444 (originalCharacters!4289 (_1!10927 lt!683156))) (fromListB!1118 (originalCharacters!4289 (_1!10927 lt!683156))))))

(declare-fun bs!404385 () Bool)

(assert (= bs!404385 d!539598))

(declare-fun m!2183849 () Bool)

(assert (=> bs!404385 m!2183849))

(assert (=> b!1766043 d!539598))

(declare-fun b!1766289 () Bool)

(declare-fun e!1130293 () Bool)

(assert (=> b!1766289 (= e!1130293 true)))

(declare-fun d!539600 () Bool)

(assert (=> d!539600 e!1130293))

(assert (= d!539600 b!1766289))

(declare-fun lambda!70308 () Int)

(declare-fun order!12379 () Int)

(declare-fun dynLambda!9408 (Int Int) Int)

(assert (=> b!1766289 (< (dynLambda!9402 order!12371 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) (dynLambda!9408 order!12379 lambda!70308))))

(assert (=> b!1766289 (< (dynLambda!9404 order!12375 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) (dynLambda!9408 order!12379 lambda!70308))))

(assert (=> d!539600 (= (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (seqFromList!2444 (originalCharacters!4289 (_1!10927 lt!683156)))))))

(declare-fun lt!683244 () Unit!33632)

(declare-fun Forall2of!130 (Int BalanceConc!12878 BalanceConc!12878) Unit!33632)

(assert (=> d!539600 (= lt!683244 (Forall2of!130 lambda!70308 lt!683167 (seqFromList!2444 (originalCharacters!4289 (_1!10927 lt!683156)))))))

(assert (=> d!539600 (= (list!7893 lt!683167) (list!7893 (seqFromList!2444 (originalCharacters!4289 (_1!10927 lt!683156)))))))

(assert (=> d!539600 (= (lemmaEqSameImage!386 (transformation!3475 (rule!5505 (_1!10927 lt!683156))) lt!683167 (seqFromList!2444 (originalCharacters!4289 (_1!10927 lt!683156)))) lt!683244)))

(declare-fun b_lambda!57371 () Bool)

(assert (=> (not b_lambda!57371) (not d!539600)))

(assert (=> d!539600 t!164749))

(declare-fun b_and!133879 () Bool)

(assert (= b_and!133873 (and (=> t!164749 result!128306) b_and!133879)))

(assert (=> d!539600 t!164751))

(declare-fun b_and!133881 () Bool)

(assert (= b_and!133875 (and (=> t!164751 result!128310) b_and!133881)))

(assert (=> d!539600 t!164753))

(declare-fun b_and!133883 () Bool)

(assert (= b_and!133877 (and (=> t!164753 result!128312) b_and!133883)))

(declare-fun b_lambda!57373 () Bool)

(assert (=> (not b_lambda!57373) (not d!539600)))

(declare-fun t!164782 () Bool)

(declare-fun tb!106683 () Bool)

(assert (=> (and b!1766057 (= (toValue!4998 (transformation!3475 (h!24844 rules!3447))) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164782) tb!106683))

(declare-fun result!128338 () Bool)

(assert (=> tb!106683 (= result!128338 (inv!21 (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (seqFromList!2444 (originalCharacters!4289 (_1!10927 lt!683156))))))))

(declare-fun m!2183851 () Bool)

(assert (=> tb!106683 m!2183851))

(assert (=> d!539600 t!164782))

(declare-fun b_and!133885 () Bool)

(assert (= b_and!133879 (and (=> t!164782 result!128338) b_and!133885)))

(declare-fun tb!106685 () Bool)

(declare-fun t!164784 () Bool)

(assert (=> (and b!1766044 (= (toValue!4998 (transformation!3475 rule!422)) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164784) tb!106685))

(declare-fun result!128340 () Bool)

(assert (= result!128340 result!128338))

(assert (=> d!539600 t!164784))

(declare-fun b_and!133887 () Bool)

(assert (= b_and!133881 (and (=> t!164784 result!128340) b_and!133887)))

(declare-fun tb!106687 () Bool)

(declare-fun t!164786 () Bool)

(assert (=> (and b!1766058 (= (toValue!4998 (transformation!3475 (rule!5505 token!523))) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164786) tb!106687))

(declare-fun result!128342 () Bool)

(assert (= result!128342 result!128338))

(assert (=> d!539600 t!164786))

(declare-fun b_and!133889 () Bool)

(assert (= b_and!133883 (and (=> t!164786 result!128342) b_and!133889)))

(assert (=> d!539600 m!2183609))

(declare-fun m!2183853 () Bool)

(assert (=> d!539600 m!2183853))

(assert (=> d!539600 m!2183533))

(assert (=> d!539600 m!2183609))

(declare-fun m!2183855 () Bool)

(assert (=> d!539600 m!2183855))

(assert (=> d!539600 m!2183609))

(declare-fun m!2183857 () Bool)

(assert (=> d!539600 m!2183857))

(assert (=> d!539600 m!2183529))

(assert (=> b!1766043 d!539600))

(declare-fun d!539602 () Bool)

(assert (=> d!539602 (= (size!15442 (_1!10927 lt!683156)) (size!15444 (originalCharacters!4289 (_1!10927 lt!683156))))))

(declare-fun Unit!33638 () Unit!33632)

(assert (=> d!539602 (= (lemmaCharactersSize!533 (_1!10927 lt!683156)) Unit!33638)))

(declare-fun bs!404386 () Bool)

(assert (= bs!404386 d!539602))

(declare-fun m!2183859 () Bool)

(assert (=> bs!404386 m!2183859))

(assert (=> b!1766043 d!539602))

(declare-fun d!539604 () Bool)

(declare-fun lt!683247 () Int)

(assert (=> d!539604 (= lt!683247 (size!15444 (list!7893 lt!683167)))))

(declare-fun size!15446 (Conc!6467) Int)

(assert (=> d!539604 (= lt!683247 (size!15446 (c!287661 lt!683167)))))

(assert (=> d!539604 (= (size!15443 lt!683167) lt!683247)))

(declare-fun bs!404387 () Bool)

(assert (= bs!404387 d!539604))

(assert (=> bs!404387 m!2183529))

(assert (=> bs!404387 m!2183529))

(declare-fun m!2183861 () Bool)

(assert (=> bs!404387 m!2183861))

(declare-fun m!2183863 () Bool)

(assert (=> bs!404387 m!2183863))

(assert (=> b!1766043 d!539604))

(declare-fun d!539606 () Bool)

(assert (=> d!539606 (= (apply!5275 (transformation!3475 (rule!5505 (_1!10927 lt!683156))) lt!683167) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167))))

(declare-fun b_lambda!57375 () Bool)

(assert (=> (not b_lambda!57375) (not d!539606)))

(assert (=> d!539606 t!164749))

(declare-fun b_and!133891 () Bool)

(assert (= b_and!133885 (and (=> t!164749 result!128306) b_and!133891)))

(assert (=> d!539606 t!164751))

(declare-fun b_and!133893 () Bool)

(assert (= b_and!133887 (and (=> t!164751 result!128310) b_and!133893)))

(assert (=> d!539606 t!164753))

(declare-fun b_and!133895 () Bool)

(assert (= b_and!133889 (and (=> t!164753 result!128312) b_and!133895)))

(assert (=> d!539606 m!2183533))

(assert (=> b!1766043 d!539606))

(declare-fun d!539608 () Bool)

(declare-fun e!1130297 () Bool)

(assert (=> d!539608 e!1130297))

(declare-fun res!795194 () Bool)

(assert (=> d!539608 (=> (not res!795194) (not e!1130297))))

(assert (=> d!539608 (= res!795194 (isDefined!3316 (getRuleFromTag!523 thiss!24550 rules!3447 (tag!3849 (rule!5505 (_1!10927 lt!683156))))))))

(declare-fun lt!683250 () Unit!33632)

(declare-fun choose!10963 (LexerInterface!3104 List!19513 List!19511 Token!6516) Unit!33632)

(assert (=> d!539608 (= lt!683250 (choose!10963 thiss!24550 rules!3447 lt!683172 (_1!10927 lt!683156)))))

(assert (=> d!539608 (rulesInvariant!2773 thiss!24550 rules!3447)))

(assert (=> d!539608 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!523 thiss!24550 rules!3447 lt!683172 (_1!10927 lt!683156)) lt!683250)))

(declare-fun b!1766294 () Bool)

(declare-fun res!795195 () Bool)

(assert (=> b!1766294 (=> (not res!795195) (not e!1130297))))

(assert (=> b!1766294 (= res!795195 (matchR!2276 (regex!3475 (get!5928 (getRuleFromTag!523 thiss!24550 rules!3447 (tag!3849 (rule!5505 (_1!10927 lt!683156)))))) (list!7893 (charsOf!2124 (_1!10927 lt!683156)))))))

(declare-fun b!1766295 () Bool)

(assert (=> b!1766295 (= e!1130297 (= (rule!5505 (_1!10927 lt!683156)) (get!5928 (getRuleFromTag!523 thiss!24550 rules!3447 (tag!3849 (rule!5505 (_1!10927 lt!683156)))))))))

(assert (= (and d!539608 res!795194) b!1766294))

(assert (= (and b!1766294 res!795195) b!1766295))

(assert (=> d!539608 m!2183505))

(assert (=> d!539608 m!2183505))

(declare-fun m!2183865 () Bool)

(assert (=> d!539608 m!2183865))

(declare-fun m!2183867 () Bool)

(assert (=> d!539608 m!2183867))

(assert (=> d!539608 m!2183569))

(assert (=> b!1766294 m!2183505))

(assert (=> b!1766294 m!2183519))

(assert (=> b!1766294 m!2183597))

(assert (=> b!1766294 m!2183597))

(declare-fun m!2183869 () Bool)

(assert (=> b!1766294 m!2183869))

(assert (=> b!1766294 m!2183505))

(declare-fun m!2183871 () Bool)

(assert (=> b!1766294 m!2183871))

(assert (=> b!1766294 m!2183519))

(assert (=> b!1766295 m!2183505))

(assert (=> b!1766295 m!2183505))

(assert (=> b!1766295 m!2183871))

(assert (=> b!1766064 d!539608))

(declare-fun d!539610 () Bool)

(assert (=> d!539610 (isDefined!3315 (maxPrefix!1658 thiss!24550 rules!3447 (++!5299 lt!683158 suffix!1421)))))

(declare-fun lt!683387 () Unit!33632)

(declare-fun e!1130352 () Unit!33632)

(assert (=> d!539610 (= lt!683387 e!1130352)))

(declare-fun c!287719 () Bool)

(assert (=> d!539610 (= c!287719 (isEmpty!12275 (maxPrefix!1658 thiss!24550 rules!3447 (++!5299 lt!683158 suffix!1421))))))

(declare-fun lt!683381 () Unit!33632)

(declare-fun lt!683389 () Unit!33632)

(assert (=> d!539610 (= lt!683381 lt!683389)))

(declare-fun e!1130353 () Bool)

(assert (=> d!539610 e!1130353))

(declare-fun res!795253 () Bool)

(assert (=> d!539610 (=> (not res!795253) (not e!1130353))))

(declare-fun lt!683373 () Token!6516)

(assert (=> d!539610 (= res!795253 (isDefined!3316 (getRuleFromTag!523 thiss!24550 rules!3447 (tag!3849 (rule!5505 lt!683373)))))))

(assert (=> d!539610 (= lt!683389 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!523 thiss!24550 rules!3447 lt!683158 lt!683373))))

(declare-fun lt!683383 () Unit!33632)

(declare-fun lt!683379 () Unit!33632)

(assert (=> d!539610 (= lt!683383 lt!683379)))

(declare-fun lt!683386 () List!19511)

(assert (=> d!539610 (isPrefix!1715 lt!683386 (++!5299 lt!683158 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!319 (List!19511 List!19511 List!19511) Unit!33632)

(assert (=> d!539610 (= lt!683379 (lemmaPrefixStaysPrefixWhenAddingToSuffix!319 lt!683386 lt!683158 suffix!1421))))

(assert (=> d!539610 (= lt!683386 (list!7893 (charsOf!2124 lt!683373)))))

(declare-fun lt!683388 () Unit!33632)

(declare-fun lt!683377 () Unit!33632)

(assert (=> d!539610 (= lt!683388 lt!683377)))

(declare-fun lt!683384 () List!19511)

(declare-fun lt!683374 () List!19511)

(assert (=> d!539610 (isPrefix!1715 lt!683384 (++!5299 lt!683384 lt!683374))))

(assert (=> d!539610 (= lt!683377 (lemmaConcatTwoListThenFirstIsPrefix!1224 lt!683384 lt!683374))))

(assert (=> d!539610 (= lt!683374 (_2!10927 (get!5927 (maxPrefix!1658 thiss!24550 rules!3447 lt!683158))))))

(assert (=> d!539610 (= lt!683384 (list!7893 (charsOf!2124 lt!683373)))))

(declare-datatypes ((List!19516 0))(
  ( (Nil!19446) (Cons!19446 (h!24847 Token!6516) (t!164825 List!19516)) )
))
(declare-fun head!4100 (List!19516) Token!6516)

(declare-datatypes ((IArray!12943 0))(
  ( (IArray!12944 (innerList!6529 List!19516)) )
))
(declare-datatypes ((Conc!6469 0))(
  ( (Node!6469 (left!15568 Conc!6469) (right!15898 Conc!6469) (csize!13168 Int) (cheight!6680 Int)) (Leaf!9427 (xs!9345 IArray!12943) (csize!13169 Int)) (Empty!6469) )
))
(declare-datatypes ((BalanceConc!12882 0))(
  ( (BalanceConc!12883 (c!287785 Conc!6469)) )
))
(declare-fun list!7896 (BalanceConc!12882) List!19516)

(declare-datatypes ((tuple2!19056 0))(
  ( (tuple2!19057 (_1!10930 BalanceConc!12882) (_2!10930 BalanceConc!12878)) )
))
(declare-fun lex!1458 (LexerInterface!3104 List!19513 BalanceConc!12878) tuple2!19056)

(assert (=> d!539610 (= lt!683373 (head!4100 (list!7896 (_1!10930 (lex!1458 thiss!24550 rules!3447 (seqFromList!2444 lt!683158))))))))

(assert (=> d!539610 (not (isEmpty!12272 rules!3447))))

(assert (=> d!539610 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!626 thiss!24550 rules!3447 lt!683158 suffix!1421) lt!683387)))

(declare-fun b!1766389 () Bool)

(declare-fun Unit!33639 () Unit!33632)

(assert (=> b!1766389 (= e!1130352 Unit!33639)))

(declare-fun b!1766387 () Bool)

(assert (=> b!1766387 (= e!1130353 (= (rule!5505 lt!683373) (get!5928 (getRuleFromTag!523 thiss!24550 rules!3447 (tag!3849 (rule!5505 lt!683373))))))))

(declare-fun b!1766388 () Bool)

(declare-fun Unit!33640 () Unit!33632)

(assert (=> b!1766388 (= e!1130352 Unit!33640)))

(declare-fun lt!683375 () List!19511)

(assert (=> b!1766388 (= lt!683375 (++!5299 lt!683158 suffix!1421))))

(declare-fun lt!683376 () Unit!33632)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!327 (LexerInterface!3104 Rule!6750 List!19513 List!19511) Unit!33632)

(assert (=> b!1766388 (= lt!683376 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!327 thiss!24550 (rule!5505 lt!683373) rules!3447 lt!683375))))

(assert (=> b!1766388 (isEmpty!12275 (maxPrefixOneRule!1027 thiss!24550 (rule!5505 lt!683373) lt!683375))))

(declare-fun lt!683382 () Unit!33632)

(assert (=> b!1766388 (= lt!683382 lt!683376)))

(declare-fun lt!683380 () List!19511)

(assert (=> b!1766388 (= lt!683380 (list!7893 (charsOf!2124 lt!683373)))))

(declare-fun lt!683378 () Unit!33632)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!323 (LexerInterface!3104 Rule!6750 List!19511 List!19511) Unit!33632)

(assert (=> b!1766388 (= lt!683378 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!323 thiss!24550 (rule!5505 lt!683373) lt!683380 (++!5299 lt!683158 suffix!1421)))))

(assert (=> b!1766388 (not (matchR!2276 (regex!3475 (rule!5505 lt!683373)) lt!683380))))

(declare-fun lt!683385 () Unit!33632)

(assert (=> b!1766388 (= lt!683385 lt!683378)))

(assert (=> b!1766388 false))

(declare-fun b!1766386 () Bool)

(declare-fun res!795252 () Bool)

(assert (=> b!1766386 (=> (not res!795252) (not e!1130353))))

(assert (=> b!1766386 (= res!795252 (matchR!2276 (regex!3475 (get!5928 (getRuleFromTag!523 thiss!24550 rules!3447 (tag!3849 (rule!5505 lt!683373))))) (list!7893 (charsOf!2124 lt!683373))))))

(assert (= (and d!539610 res!795253) b!1766386))

(assert (= (and b!1766386 res!795252) b!1766387))

(assert (= (and d!539610 c!287719) b!1766388))

(assert (= (and d!539610 (not c!287719)) b!1766389))

(assert (=> d!539610 m!2183591))

(declare-fun m!2184049 () Bool)

(assert (=> d!539610 m!2184049))

(declare-fun m!2184051 () Bool)

(assert (=> d!539610 m!2184051))

(declare-fun m!2184053 () Bool)

(assert (=> d!539610 m!2184053))

(assert (=> d!539610 m!2184051))

(declare-fun m!2184055 () Bool)

(assert (=> d!539610 m!2184055))

(declare-fun m!2184057 () Bool)

(assert (=> d!539610 m!2184057))

(assert (=> d!539610 m!2183565))

(assert (=> d!539610 m!2183527))

(declare-fun m!2184059 () Bool)

(assert (=> d!539610 m!2184059))

(declare-fun m!2184061 () Bool)

(assert (=> d!539610 m!2184061))

(assert (=> d!539610 m!2183527))

(assert (=> d!539610 m!2184055))

(declare-fun m!2184063 () Bool)

(assert (=> d!539610 m!2184063))

(assert (=> d!539610 m!2184049))

(declare-fun m!2184065 () Bool)

(assert (=> d!539610 m!2184065))

(declare-fun m!2184067 () Bool)

(assert (=> d!539610 m!2184067))

(declare-fun m!2184069 () Bool)

(assert (=> d!539610 m!2184069))

(assert (=> d!539610 m!2184055))

(declare-fun m!2184071 () Bool)

(assert (=> d!539610 m!2184071))

(assert (=> d!539610 m!2183527))

(declare-fun m!2184073 () Bool)

(assert (=> d!539610 m!2184073))

(assert (=> d!539610 m!2184069))

(declare-fun m!2184075 () Bool)

(assert (=> d!539610 m!2184075))

(assert (=> d!539610 m!2184061))

(declare-fun m!2184077 () Bool)

(assert (=> d!539610 m!2184077))

(assert (=> d!539610 m!2183591))

(declare-fun m!2184079 () Bool)

(assert (=> d!539610 m!2184079))

(assert (=> d!539610 m!2184063))

(declare-fun m!2184081 () Bool)

(assert (=> d!539610 m!2184081))

(declare-fun m!2184083 () Bool)

(assert (=> d!539610 m!2184083))

(assert (=> b!1766387 m!2184051))

(assert (=> b!1766387 m!2184051))

(declare-fun m!2184085 () Bool)

(assert (=> b!1766387 m!2184085))

(declare-fun m!2184087 () Bool)

(assert (=> b!1766388 m!2184087))

(declare-fun m!2184089 () Bool)

(assert (=> b!1766388 m!2184089))

(assert (=> b!1766388 m!2184063))

(declare-fun m!2184091 () Bool)

(assert (=> b!1766388 m!2184091))

(declare-fun m!2184093 () Bool)

(assert (=> b!1766388 m!2184093))

(assert (=> b!1766388 m!2184091))

(assert (=> b!1766388 m!2183527))

(assert (=> b!1766388 m!2183527))

(declare-fun m!2184095 () Bool)

(assert (=> b!1766388 m!2184095))

(assert (=> b!1766388 m!2184063))

(assert (=> b!1766388 m!2184081))

(assert (=> b!1766386 m!2184063))

(assert (=> b!1766386 m!2184051))

(assert (=> b!1766386 m!2184085))

(assert (=> b!1766386 m!2184051))

(assert (=> b!1766386 m!2184081))

(declare-fun m!2184097 () Bool)

(assert (=> b!1766386 m!2184097))

(assert (=> b!1766386 m!2184063))

(assert (=> b!1766386 m!2184081))

(assert (=> b!1766064 d!539610))

(declare-fun b!1766400 () Bool)

(declare-fun e!1130360 () Bool)

(assert (=> b!1766400 (= e!1130360 (isPrefix!1715 (tail!2643 lt!683158) (tail!2643 lt!683172)))))

(declare-fun b!1766398 () Bool)

(declare-fun e!1130361 () Bool)

(assert (=> b!1766398 (= e!1130361 e!1130360)))

(declare-fun res!795263 () Bool)

(assert (=> b!1766398 (=> (not res!795263) (not e!1130360))))

(assert (=> b!1766398 (= res!795263 (not ((_ is Nil!19441) lt!683172)))))

(declare-fun b!1766401 () Bool)

(declare-fun e!1130362 () Bool)

(assert (=> b!1766401 (= e!1130362 (>= (size!15444 lt!683172) (size!15444 lt!683158)))))

(declare-fun d!539654 () Bool)

(assert (=> d!539654 e!1130362))

(declare-fun res!795264 () Bool)

(assert (=> d!539654 (=> res!795264 e!1130362)))

(declare-fun lt!683392 () Bool)

(assert (=> d!539654 (= res!795264 (not lt!683392))))

(assert (=> d!539654 (= lt!683392 e!1130361)))

(declare-fun res!795262 () Bool)

(assert (=> d!539654 (=> res!795262 e!1130361)))

(assert (=> d!539654 (= res!795262 ((_ is Nil!19441) lt!683158))))

(assert (=> d!539654 (= (isPrefix!1715 lt!683158 lt!683172) lt!683392)))

(declare-fun b!1766399 () Bool)

(declare-fun res!795265 () Bool)

(assert (=> b!1766399 (=> (not res!795265) (not e!1130360))))

(assert (=> b!1766399 (= res!795265 (= (head!4098 lt!683158) (head!4098 lt!683172)))))

(assert (= (and d!539654 (not res!795262)) b!1766398))

(assert (= (and b!1766398 res!795263) b!1766399))

(assert (= (and b!1766399 res!795265) b!1766400))

(assert (= (and d!539654 (not res!795264)) b!1766401))

(declare-fun m!2184099 () Bool)

(assert (=> b!1766400 m!2184099))

(assert (=> b!1766400 m!2183675))

(assert (=> b!1766400 m!2184099))

(assert (=> b!1766400 m!2183675))

(declare-fun m!2184101 () Bool)

(assert (=> b!1766400 m!2184101))

(assert (=> b!1766401 m!2183673))

(declare-fun m!2184103 () Bool)

(assert (=> b!1766401 m!2184103))

(declare-fun m!2184105 () Bool)

(assert (=> b!1766399 m!2184105))

(declare-fun m!2184107 () Bool)

(assert (=> b!1766399 m!2184107))

(assert (=> b!1766064 d!539654))

(declare-fun d!539656 () Bool)

(declare-fun e!1130367 () Bool)

(assert (=> d!539656 e!1130367))

(declare-fun res!795271 () Bool)

(assert (=> d!539656 (=> (not res!795271) (not e!1130367))))

(declare-fun lt!683395 () List!19511)

(declare-fun content!2815 (List!19511) (InoxSet C!9780))

(assert (=> d!539656 (= res!795271 (= (content!2815 lt!683395) ((_ map or) (content!2815 lt!683158) (content!2815 suffix!1421))))))

(declare-fun e!1130368 () List!19511)

(assert (=> d!539656 (= lt!683395 e!1130368)))

(declare-fun c!287722 () Bool)

(assert (=> d!539656 (= c!287722 ((_ is Nil!19441) lt!683158))))

(assert (=> d!539656 (= (++!5299 lt!683158 suffix!1421) lt!683395)))

(declare-fun b!1766411 () Bool)

(assert (=> b!1766411 (= e!1130368 (Cons!19441 (h!24842 lt!683158) (++!5299 (t!164760 lt!683158) suffix!1421)))))

(declare-fun b!1766410 () Bool)

(assert (=> b!1766410 (= e!1130368 suffix!1421)))

(declare-fun b!1766413 () Bool)

(assert (=> b!1766413 (= e!1130367 (or (not (= suffix!1421 Nil!19441)) (= lt!683395 lt!683158)))))

(declare-fun b!1766412 () Bool)

(declare-fun res!795270 () Bool)

(assert (=> b!1766412 (=> (not res!795270) (not e!1130367))))

(assert (=> b!1766412 (= res!795270 (= (size!15444 lt!683395) (+ (size!15444 lt!683158) (size!15444 suffix!1421))))))

(assert (= (and d!539656 c!287722) b!1766410))

(assert (= (and d!539656 (not c!287722)) b!1766411))

(assert (= (and d!539656 res!795271) b!1766412))

(assert (= (and b!1766412 res!795270) b!1766413))

(declare-fun m!2184109 () Bool)

(assert (=> d!539656 m!2184109))

(declare-fun m!2184111 () Bool)

(assert (=> d!539656 m!2184111))

(declare-fun m!2184113 () Bool)

(assert (=> d!539656 m!2184113))

(declare-fun m!2184115 () Bool)

(assert (=> b!1766411 m!2184115))

(declare-fun m!2184117 () Bool)

(assert (=> b!1766412 m!2184117))

(assert (=> b!1766412 m!2184103))

(declare-fun m!2184119 () Bool)

(assert (=> b!1766412 m!2184119))

(assert (=> b!1766064 d!539656))

(declare-fun d!539658 () Bool)

(declare-fun isEmpty!12277 (Option!3973) Bool)

(assert (=> d!539658 (= (isDefined!3316 lt!683155) (not (isEmpty!12277 lt!683155)))))

(declare-fun bs!404395 () Bool)

(assert (= bs!404395 d!539658))

(declare-fun m!2184121 () Bool)

(assert (=> bs!404395 m!2184121))

(assert (=> b!1766064 d!539658))

(declare-fun d!539660 () Bool)

(declare-fun lt!683398 () BalanceConc!12878)

(assert (=> d!539660 (= (list!7893 lt!683398) (originalCharacters!4289 (_1!10927 lt!683156)))))

(assert (=> d!539660 (= lt!683398 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156))))))

(assert (=> d!539660 (= (charsOf!2124 (_1!10927 lt!683156)) lt!683398)))

(declare-fun b_lambda!57379 () Bool)

(assert (=> (not b_lambda!57379) (not d!539660)))

(assert (=> d!539660 t!164755))

(declare-fun b_and!133903 () Bool)

(assert (= b_and!133819 (and (=> t!164755 result!128314) b_and!133903)))

(assert (=> d!539660 t!164757))

(declare-fun b_and!133905 () Bool)

(assert (= b_and!133821 (and (=> t!164757 result!128316) b_and!133905)))

(assert (=> d!539660 t!164759))

(declare-fun b_and!133907 () Bool)

(assert (= b_and!133823 (and (=> t!164759 result!128318) b_and!133907)))

(declare-fun m!2184123 () Bool)

(assert (=> d!539660 m!2184123))

(assert (=> d!539660 m!2183623))

(assert (=> b!1766064 d!539660))

(declare-fun d!539662 () Bool)

(assert (=> d!539662 (isPrefix!1715 lt!683158 (++!5299 lt!683158 suffix!1421))))

(declare-fun lt!683401 () Unit!33632)

(declare-fun choose!10964 (List!19511 List!19511) Unit!33632)

(assert (=> d!539662 (= lt!683401 (choose!10964 lt!683158 suffix!1421))))

(assert (=> d!539662 (= (lemmaConcatTwoListThenFirstIsPrefix!1224 lt!683158 suffix!1421) lt!683401)))

(declare-fun bs!404396 () Bool)

(assert (= bs!404396 d!539662))

(assert (=> bs!404396 m!2183527))

(assert (=> bs!404396 m!2183527))

(declare-fun m!2184125 () Bool)

(assert (=> bs!404396 m!2184125))

(declare-fun m!2184127 () Bool)

(assert (=> bs!404396 m!2184127))

(assert (=> b!1766064 d!539662))

(declare-fun d!539664 () Bool)

(declare-fun list!7897 (Conc!6467) List!19511)

(assert (=> d!539664 (= (list!7893 lt!683167) (list!7897 (c!287661 lt!683167)))))

(declare-fun bs!404397 () Bool)

(assert (= bs!404397 d!539664))

(declare-fun m!2184129 () Bool)

(assert (=> bs!404397 m!2184129))

(assert (=> b!1766064 d!539664))

(declare-fun b!1766426 () Bool)

(declare-fun lt!683409 () Unit!33632)

(declare-fun lt!683408 () Unit!33632)

(assert (=> b!1766426 (= lt!683409 lt!683408)))

(assert (=> b!1766426 (rulesInvariant!2773 thiss!24550 (t!164762 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!198 (LexerInterface!3104 Rule!6750 List!19513) Unit!33632)

(assert (=> b!1766426 (= lt!683408 (lemmaInvariantOnRulesThenOnTail!198 thiss!24550 (h!24844 rules!3447) (t!164762 rules!3447)))))

(declare-fun e!1130379 () Option!3973)

(assert (=> b!1766426 (= e!1130379 (getRuleFromTag!523 thiss!24550 (t!164762 rules!3447) (tag!3849 (rule!5505 (_1!10927 lt!683156)))))))

(declare-fun d!539666 () Bool)

(declare-fun e!1130380 () Bool)

(assert (=> d!539666 e!1130380))

(declare-fun res!795276 () Bool)

(assert (=> d!539666 (=> res!795276 e!1130380)))

(declare-fun lt!683410 () Option!3973)

(assert (=> d!539666 (= res!795276 (isEmpty!12277 lt!683410))))

(declare-fun e!1130377 () Option!3973)

(assert (=> d!539666 (= lt!683410 e!1130377)))

(declare-fun c!287727 () Bool)

(assert (=> d!539666 (= c!287727 (and ((_ is Cons!19443) rules!3447) (= (tag!3849 (h!24844 rules!3447)) (tag!3849 (rule!5505 (_1!10927 lt!683156))))))))

(assert (=> d!539666 (rulesInvariant!2773 thiss!24550 rules!3447)))

(assert (=> d!539666 (= (getRuleFromTag!523 thiss!24550 rules!3447 (tag!3849 (rule!5505 (_1!10927 lt!683156)))) lt!683410)))

(declare-fun b!1766427 () Bool)

(declare-fun e!1130378 () Bool)

(assert (=> b!1766427 (= e!1130380 e!1130378)))

(declare-fun res!795277 () Bool)

(assert (=> b!1766427 (=> (not res!795277) (not e!1130378))))

(assert (=> b!1766427 (= res!795277 (contains!3505 rules!3447 (get!5928 lt!683410)))))

(declare-fun b!1766428 () Bool)

(assert (=> b!1766428 (= e!1130377 (Some!3972 (h!24844 rules!3447)))))

(declare-fun b!1766429 () Bool)

(assert (=> b!1766429 (= e!1130377 e!1130379)))

(declare-fun c!287728 () Bool)

(assert (=> b!1766429 (= c!287728 (and ((_ is Cons!19443) rules!3447) (not (= (tag!3849 (h!24844 rules!3447)) (tag!3849 (rule!5505 (_1!10927 lt!683156)))))))))

(declare-fun b!1766430 () Bool)

(assert (=> b!1766430 (= e!1130379 None!3972)))

(declare-fun b!1766431 () Bool)

(assert (=> b!1766431 (= e!1130378 (= (tag!3849 (get!5928 lt!683410)) (tag!3849 (rule!5505 (_1!10927 lt!683156)))))))

(assert (= (and d!539666 c!287727) b!1766428))

(assert (= (and d!539666 (not c!287727)) b!1766429))

(assert (= (and b!1766429 c!287728) b!1766426))

(assert (= (and b!1766429 (not c!287728)) b!1766430))

(assert (= (and d!539666 (not res!795276)) b!1766427))

(assert (= (and b!1766427 res!795277) b!1766431))

(declare-fun m!2184131 () Bool)

(assert (=> b!1766426 m!2184131))

(declare-fun m!2184133 () Bool)

(assert (=> b!1766426 m!2184133))

(declare-fun m!2184135 () Bool)

(assert (=> b!1766426 m!2184135))

(declare-fun m!2184137 () Bool)

(assert (=> d!539666 m!2184137))

(assert (=> d!539666 m!2183569))

(declare-fun m!2184139 () Bool)

(assert (=> b!1766427 m!2184139))

(assert (=> b!1766427 m!2184139))

(declare-fun m!2184141 () Bool)

(assert (=> b!1766427 m!2184141))

(assert (=> b!1766431 m!2184139))

(assert (=> b!1766064 d!539666))

(declare-fun d!539668 () Bool)

(declare-fun e!1130381 () Bool)

(assert (=> d!539668 e!1130381))

(declare-fun res!795279 () Bool)

(assert (=> d!539668 (=> (not res!795279) (not e!1130381))))

(declare-fun lt!683415 () List!19511)

(assert (=> d!539668 (= res!795279 (= (content!2815 lt!683415) ((_ map or) (content!2815 lt!683153) (content!2815 (_2!10927 lt!683156)))))))

(declare-fun e!1130382 () List!19511)

(assert (=> d!539668 (= lt!683415 e!1130382)))

(declare-fun c!287729 () Bool)

(assert (=> d!539668 (= c!287729 ((_ is Nil!19441) lt!683153))))

(assert (=> d!539668 (= (++!5299 lt!683153 (_2!10927 lt!683156)) lt!683415)))

(declare-fun b!1766433 () Bool)

(assert (=> b!1766433 (= e!1130382 (Cons!19441 (h!24842 lt!683153) (++!5299 (t!164760 lt!683153) (_2!10927 lt!683156))))))

(declare-fun b!1766432 () Bool)

(assert (=> b!1766432 (= e!1130382 (_2!10927 lt!683156))))

(declare-fun b!1766435 () Bool)

(assert (=> b!1766435 (= e!1130381 (or (not (= (_2!10927 lt!683156) Nil!19441)) (= lt!683415 lt!683153)))))

(declare-fun b!1766434 () Bool)

(declare-fun res!795278 () Bool)

(assert (=> b!1766434 (=> (not res!795278) (not e!1130381))))

(assert (=> b!1766434 (= res!795278 (= (size!15444 lt!683415) (+ (size!15444 lt!683153) (size!15444 (_2!10927 lt!683156)))))))

(assert (= (and d!539668 c!287729) b!1766432))

(assert (= (and d!539668 (not c!287729)) b!1766433))

(assert (= (and d!539668 res!795279) b!1766434))

(assert (= (and b!1766434 res!795278) b!1766435))

(declare-fun m!2184143 () Bool)

(assert (=> d!539668 m!2184143))

(declare-fun m!2184145 () Bool)

(assert (=> d!539668 m!2184145))

(declare-fun m!2184147 () Bool)

(assert (=> d!539668 m!2184147))

(declare-fun m!2184149 () Bool)

(assert (=> b!1766433 m!2184149))

(declare-fun m!2184151 () Bool)

(assert (=> b!1766434 m!2184151))

(assert (=> b!1766434 m!2183553))

(declare-fun m!2184153 () Bool)

(assert (=> b!1766434 m!2184153))

(assert (=> b!1766064 d!539668))

(declare-fun d!539670 () Bool)

(assert (=> d!539670 (isPrefix!1715 lt!683153 (++!5299 lt!683153 (_2!10927 lt!683156)))))

(declare-fun lt!683420 () Unit!33632)

(assert (=> d!539670 (= lt!683420 (choose!10964 lt!683153 (_2!10927 lt!683156)))))

(assert (=> d!539670 (= (lemmaConcatTwoListThenFirstIsPrefix!1224 lt!683153 (_2!10927 lt!683156)) lt!683420)))

(declare-fun bs!404398 () Bool)

(assert (= bs!404398 d!539670))

(assert (=> bs!404398 m!2183511))

(assert (=> bs!404398 m!2183511))

(declare-fun m!2184155 () Bool)

(assert (=> bs!404398 m!2184155))

(declare-fun m!2184157 () Bool)

(assert (=> bs!404398 m!2184157))

(assert (=> b!1766064 d!539670))

(declare-fun b!1766444 () Bool)

(declare-fun e!1130387 () Bool)

(assert (=> b!1766444 (= e!1130387 (isPrefix!1715 (tail!2643 lt!683153) (tail!2643 lt!683157)))))

(declare-fun b!1766442 () Bool)

(declare-fun e!1130388 () Bool)

(assert (=> b!1766442 (= e!1130388 e!1130387)))

(declare-fun res!795283 () Bool)

(assert (=> b!1766442 (=> (not res!795283) (not e!1130387))))

(assert (=> b!1766442 (= res!795283 (not ((_ is Nil!19441) lt!683157)))))

(declare-fun b!1766445 () Bool)

(declare-fun e!1130389 () Bool)

(assert (=> b!1766445 (= e!1130389 (>= (size!15444 lt!683157) (size!15444 lt!683153)))))

(declare-fun d!539672 () Bool)

(assert (=> d!539672 e!1130389))

(declare-fun res!795284 () Bool)

(assert (=> d!539672 (=> res!795284 e!1130389)))

(declare-fun lt!683423 () Bool)

(assert (=> d!539672 (= res!795284 (not lt!683423))))

(assert (=> d!539672 (= lt!683423 e!1130388)))

(declare-fun res!795282 () Bool)

(assert (=> d!539672 (=> res!795282 e!1130388)))

(assert (=> d!539672 (= res!795282 ((_ is Nil!19441) lt!683153))))

(assert (=> d!539672 (= (isPrefix!1715 lt!683153 lt!683157) lt!683423)))

(declare-fun b!1766443 () Bool)

(declare-fun res!795285 () Bool)

(assert (=> b!1766443 (=> (not res!795285) (not e!1130387))))

(assert (=> b!1766443 (= res!795285 (= (head!4098 lt!683153) (head!4098 lt!683157)))))

(assert (= (and d!539672 (not res!795282)) b!1766442))

(assert (= (and b!1766442 res!795283) b!1766443))

(assert (= (and b!1766443 res!795285) b!1766444))

(assert (= (and d!539672 (not res!795284)) b!1766445))

(declare-fun m!2184159 () Bool)

(assert (=> b!1766444 m!2184159))

(declare-fun m!2184161 () Bool)

(assert (=> b!1766444 m!2184161))

(assert (=> b!1766444 m!2184159))

(assert (=> b!1766444 m!2184161))

(declare-fun m!2184163 () Bool)

(assert (=> b!1766444 m!2184163))

(declare-fun m!2184165 () Bool)

(assert (=> b!1766445 m!2184165))

(assert (=> b!1766445 m!2183553))

(declare-fun m!2184167 () Bool)

(assert (=> b!1766443 m!2184167))

(declare-fun m!2184169 () Bool)

(assert (=> b!1766443 m!2184169))

(assert (=> b!1766064 d!539672))

(declare-fun b!1766534 () Bool)

(declare-fun res!795352 () Bool)

(declare-fun e!1130435 () Bool)

(assert (=> b!1766534 (=> (not res!795352) (not e!1130435))))

(declare-fun lt!683451 () Option!3972)

(assert (=> b!1766534 (= res!795352 (= (++!5299 (list!7893 (charsOf!2124 (_1!10927 (get!5927 lt!683451)))) (_2!10927 (get!5927 lt!683451))) lt!683172))))

(declare-fun b!1766535 () Bool)

(declare-fun e!1130436 () Option!3972)

(declare-fun call!110867 () Option!3972)

(assert (=> b!1766535 (= e!1130436 call!110867)))

(declare-fun b!1766536 () Bool)

(assert (=> b!1766536 (= e!1130435 (contains!3505 rules!3447 (rule!5505 (_1!10927 (get!5927 lt!683451)))))))

(declare-fun b!1766537 () Bool)

(declare-fun res!795349 () Bool)

(assert (=> b!1766537 (=> (not res!795349) (not e!1130435))))

(assert (=> b!1766537 (= res!795349 (matchR!2276 (regex!3475 (rule!5505 (_1!10927 (get!5927 lt!683451)))) (list!7893 (charsOf!2124 (_1!10927 (get!5927 lt!683451))))))))

(declare-fun b!1766538 () Bool)

(declare-fun e!1130437 () Bool)

(assert (=> b!1766538 (= e!1130437 e!1130435)))

(declare-fun res!795351 () Bool)

(assert (=> b!1766538 (=> (not res!795351) (not e!1130435))))

(assert (=> b!1766538 (= res!795351 (isDefined!3315 lt!683451))))

(declare-fun b!1766539 () Bool)

(declare-fun lt!683453 () Option!3972)

(declare-fun lt!683452 () Option!3972)

(assert (=> b!1766539 (= e!1130436 (ite (and ((_ is None!3971) lt!683453) ((_ is None!3971) lt!683452)) None!3971 (ite ((_ is None!3971) lt!683452) lt!683453 (ite ((_ is None!3971) lt!683453) lt!683452 (ite (>= (size!15442 (_1!10927 (v!25440 lt!683453))) (size!15442 (_1!10927 (v!25440 lt!683452)))) lt!683453 lt!683452)))))))

(assert (=> b!1766539 (= lt!683453 call!110867)))

(assert (=> b!1766539 (= lt!683452 (maxPrefix!1658 thiss!24550 (t!164762 rules!3447) lt!683172))))

(declare-fun b!1766540 () Bool)

(declare-fun res!795348 () Bool)

(assert (=> b!1766540 (=> (not res!795348) (not e!1130435))))

(assert (=> b!1766540 (= res!795348 (= (list!7893 (charsOf!2124 (_1!10927 (get!5927 lt!683451)))) (originalCharacters!4289 (_1!10927 (get!5927 lt!683451)))))))

(declare-fun b!1766541 () Bool)

(declare-fun res!795350 () Bool)

(assert (=> b!1766541 (=> (not res!795350) (not e!1130435))))

(assert (=> b!1766541 (= res!795350 (= (value!108710 (_1!10927 (get!5927 lt!683451))) (apply!5275 (transformation!3475 (rule!5505 (_1!10927 (get!5927 lt!683451)))) (seqFromList!2444 (originalCharacters!4289 (_1!10927 (get!5927 lt!683451)))))))))

(declare-fun d!539674 () Bool)

(assert (=> d!539674 e!1130437))

(declare-fun res!795346 () Bool)

(assert (=> d!539674 (=> res!795346 e!1130437)))

(assert (=> d!539674 (= res!795346 (isEmpty!12275 lt!683451))))

(assert (=> d!539674 (= lt!683451 e!1130436)))

(declare-fun c!287746 () Bool)

(assert (=> d!539674 (= c!287746 (and ((_ is Cons!19443) rules!3447) ((_ is Nil!19443) (t!164762 rules!3447))))))

(declare-fun lt!683450 () Unit!33632)

(declare-fun lt!683449 () Unit!33632)

(assert (=> d!539674 (= lt!683450 lt!683449)))

(assert (=> d!539674 (isPrefix!1715 lt!683172 lt!683172)))

(declare-fun lemmaIsPrefixRefl!1136 (List!19511 List!19511) Unit!33632)

(assert (=> d!539674 (= lt!683449 (lemmaIsPrefixRefl!1136 lt!683172 lt!683172))))

(declare-fun rulesValidInductive!1174 (LexerInterface!3104 List!19513) Bool)

(assert (=> d!539674 (rulesValidInductive!1174 thiss!24550 rules!3447)))

(assert (=> d!539674 (= (maxPrefix!1658 thiss!24550 rules!3447 lt!683172) lt!683451)))

(declare-fun bm!110862 () Bool)

(assert (=> bm!110862 (= call!110867 (maxPrefixOneRule!1027 thiss!24550 (h!24844 rules!3447) lt!683172))))

(declare-fun b!1766542 () Bool)

(declare-fun res!795347 () Bool)

(assert (=> b!1766542 (=> (not res!795347) (not e!1130435))))

(assert (=> b!1766542 (= res!795347 (< (size!15444 (_2!10927 (get!5927 lt!683451))) (size!15444 lt!683172)))))

(assert (= (and d!539674 c!287746) b!1766535))

(assert (= (and d!539674 (not c!287746)) b!1766539))

(assert (= (or b!1766535 b!1766539) bm!110862))

(assert (= (and d!539674 (not res!795346)) b!1766538))

(assert (= (and b!1766538 res!795351) b!1766540))

(assert (= (and b!1766540 res!795348) b!1766542))

(assert (= (and b!1766542 res!795347) b!1766534))

(assert (= (and b!1766534 res!795352) b!1766541))

(assert (= (and b!1766541 res!795350) b!1766537))

(assert (= (and b!1766537 res!795349) b!1766536))

(declare-fun m!2184263 () Bool)

(assert (=> b!1766539 m!2184263))

(declare-fun m!2184265 () Bool)

(assert (=> b!1766540 m!2184265))

(declare-fun m!2184267 () Bool)

(assert (=> b!1766540 m!2184267))

(assert (=> b!1766540 m!2184267))

(declare-fun m!2184269 () Bool)

(assert (=> b!1766540 m!2184269))

(declare-fun m!2184271 () Bool)

(assert (=> b!1766538 m!2184271))

(assert (=> b!1766534 m!2184265))

(assert (=> b!1766534 m!2184267))

(assert (=> b!1766534 m!2184267))

(assert (=> b!1766534 m!2184269))

(assert (=> b!1766534 m!2184269))

(declare-fun m!2184273 () Bool)

(assert (=> b!1766534 m!2184273))

(assert (=> b!1766542 m!2184265))

(declare-fun m!2184275 () Bool)

(assert (=> b!1766542 m!2184275))

(assert (=> b!1766542 m!2183673))

(declare-fun m!2184279 () Bool)

(assert (=> bm!110862 m!2184279))

(assert (=> b!1766537 m!2184265))

(assert (=> b!1766537 m!2184267))

(assert (=> b!1766537 m!2184267))

(assert (=> b!1766537 m!2184269))

(assert (=> b!1766537 m!2184269))

(declare-fun m!2184289 () Bool)

(assert (=> b!1766537 m!2184289))

(assert (=> b!1766541 m!2184265))

(declare-fun m!2184293 () Bool)

(assert (=> b!1766541 m!2184293))

(assert (=> b!1766541 m!2184293))

(declare-fun m!2184295 () Bool)

(assert (=> b!1766541 m!2184295))

(assert (=> b!1766536 m!2184265))

(declare-fun m!2184297 () Bool)

(assert (=> b!1766536 m!2184297))

(declare-fun m!2184299 () Bool)

(assert (=> d!539674 m!2184299))

(declare-fun m!2184301 () Bool)

(assert (=> d!539674 m!2184301))

(declare-fun m!2184303 () Bool)

(assert (=> d!539674 m!2184303))

(declare-fun m!2184305 () Bool)

(assert (=> d!539674 m!2184305))

(assert (=> b!1766064 d!539674))

(declare-fun d!539710 () Bool)

(assert (=> d!539710 (= (get!5927 lt!683154) (v!25440 lt!683154))))

(assert (=> b!1766064 d!539710))

(declare-fun b!1766571 () Bool)

(declare-fun e!1130453 () Bool)

(assert (=> b!1766571 (= e!1130453 (isPrefix!1715 (tail!2643 lt!683153) (tail!2643 lt!683172)))))

(declare-fun b!1766569 () Bool)

(declare-fun e!1130454 () Bool)

(assert (=> b!1766569 (= e!1130454 e!1130453)))

(declare-fun res!795366 () Bool)

(assert (=> b!1766569 (=> (not res!795366) (not e!1130453))))

(assert (=> b!1766569 (= res!795366 (not ((_ is Nil!19441) lt!683172)))))

(declare-fun b!1766572 () Bool)

(declare-fun e!1130455 () Bool)

(assert (=> b!1766572 (= e!1130455 (>= (size!15444 lt!683172) (size!15444 lt!683153)))))

(declare-fun d!539712 () Bool)

(assert (=> d!539712 e!1130455))

(declare-fun res!795367 () Bool)

(assert (=> d!539712 (=> res!795367 e!1130455)))

(declare-fun lt!683456 () Bool)

(assert (=> d!539712 (= res!795367 (not lt!683456))))

(assert (=> d!539712 (= lt!683456 e!1130454)))

(declare-fun res!795365 () Bool)

(assert (=> d!539712 (=> res!795365 e!1130454)))

(assert (=> d!539712 (= res!795365 ((_ is Nil!19441) lt!683153))))

(assert (=> d!539712 (= (isPrefix!1715 lt!683153 lt!683172) lt!683456)))

(declare-fun b!1766570 () Bool)

(declare-fun res!795368 () Bool)

(assert (=> b!1766570 (=> (not res!795368) (not e!1130453))))

(assert (=> b!1766570 (= res!795368 (= (head!4098 lt!683153) (head!4098 lt!683172)))))

(assert (= (and d!539712 (not res!795365)) b!1766569))

(assert (= (and b!1766569 res!795366) b!1766570))

(assert (= (and b!1766570 res!795368) b!1766571))

(assert (= (and d!539712 (not res!795367)) b!1766572))

(assert (=> b!1766571 m!2184159))

(assert (=> b!1766571 m!2183675))

(assert (=> b!1766571 m!2184159))

(assert (=> b!1766571 m!2183675))

(declare-fun m!2184315 () Bool)

(assert (=> b!1766571 m!2184315))

(assert (=> b!1766572 m!2183673))

(assert (=> b!1766572 m!2183553))

(assert (=> b!1766570 m!2184167))

(assert (=> b!1766570 m!2184107))

(assert (=> b!1766064 d!539712))

(declare-fun d!539718 () Bool)

(declare-fun lt!683457 () Int)

(assert (=> d!539718 (= lt!683457 (size!15444 (list!7893 lt!683151)))))

(assert (=> d!539718 (= lt!683457 (size!15446 (c!287661 lt!683151)))))

(assert (=> d!539718 (= (size!15443 lt!683151) lt!683457)))

(declare-fun bs!404401 () Bool)

(assert (= bs!404401 d!539718))

(assert (=> bs!404401 m!2183593))

(assert (=> bs!404401 m!2183593))

(declare-fun m!2184321 () Bool)

(assert (=> bs!404401 m!2184321))

(declare-fun m!2184325 () Bool)

(assert (=> bs!404401 m!2184325))

(assert (=> b!1766046 d!539718))

(declare-fun b!1766650 () Bool)

(declare-fun res!795400 () Bool)

(declare-fun e!1130492 () Bool)

(assert (=> b!1766650 (=> res!795400 e!1130492)))

(assert (=> b!1766650 (= res!795400 (not ((_ is ElementMatch!4803) lt!683171)))))

(declare-fun e!1130494 () Bool)

(assert (=> b!1766650 (= e!1130494 e!1130492)))

(declare-fun b!1766651 () Bool)

(declare-fun res!795398 () Bool)

(declare-fun e!1130495 () Bool)

(assert (=> b!1766651 (=> (not res!795398) (not e!1130495))))

(declare-fun call!110872 () Bool)

(assert (=> b!1766651 (= res!795398 (not call!110872))))

(declare-fun b!1766652 () Bool)

(declare-fun e!1130497 () Bool)

(assert (=> b!1766652 (= e!1130497 (not (= (head!4098 lt!683158) (c!287660 lt!683171))))))

(declare-fun bm!110867 () Bool)

(assert (=> bm!110867 (= call!110872 (isEmpty!12273 lt!683158))))

(declare-fun b!1766653 () Bool)

(declare-fun e!1130496 () Bool)

(assert (=> b!1766653 (= e!1130496 e!1130494)))

(declare-fun c!287763 () Bool)

(assert (=> b!1766653 (= c!287763 ((_ is EmptyLang!4803) lt!683171))))

(declare-fun d!539724 () Bool)

(assert (=> d!539724 e!1130496))

(declare-fun c!287765 () Bool)

(assert (=> d!539724 (= c!287765 ((_ is EmptyExpr!4803) lt!683171))))

(declare-fun lt!683465 () Bool)

(declare-fun e!1130493 () Bool)

(assert (=> d!539724 (= lt!683465 e!1130493)))

(declare-fun c!287764 () Bool)

(assert (=> d!539724 (= c!287764 (isEmpty!12273 lt!683158))))

(declare-fun validRegex!1943 (Regex!4803) Bool)

(assert (=> d!539724 (validRegex!1943 lt!683171)))

(assert (=> d!539724 (= (matchR!2276 lt!683171 lt!683158) lt!683465)))

(declare-fun b!1766654 () Bool)

(assert (=> b!1766654 (= e!1130495 (= (head!4098 lt!683158) (c!287660 lt!683171)))))

(declare-fun b!1766655 () Bool)

(declare-fun derivativeStep!1238 (Regex!4803 C!9780) Regex!4803)

(assert (=> b!1766655 (= e!1130493 (matchR!2276 (derivativeStep!1238 lt!683171 (head!4098 lt!683158)) (tail!2643 lt!683158)))))

(declare-fun b!1766656 () Bool)

(declare-fun nullable!1469 (Regex!4803) Bool)

(assert (=> b!1766656 (= e!1130493 (nullable!1469 lt!683171))))

(declare-fun b!1766657 () Bool)

(declare-fun e!1130498 () Bool)

(assert (=> b!1766657 (= e!1130492 e!1130498)))

(declare-fun res!795401 () Bool)

(assert (=> b!1766657 (=> (not res!795401) (not e!1130498))))

(assert (=> b!1766657 (= res!795401 (not lt!683465))))

(declare-fun b!1766658 () Bool)

(declare-fun res!795397 () Bool)

(assert (=> b!1766658 (=> res!795397 e!1130497)))

(assert (=> b!1766658 (= res!795397 (not (isEmpty!12273 (tail!2643 lt!683158))))))

(declare-fun b!1766659 () Bool)

(declare-fun res!795399 () Bool)

(assert (=> b!1766659 (=> (not res!795399) (not e!1130495))))

(assert (=> b!1766659 (= res!795399 (isEmpty!12273 (tail!2643 lt!683158)))))

(declare-fun b!1766660 () Bool)

(assert (=> b!1766660 (= e!1130496 (= lt!683465 call!110872))))

(declare-fun b!1766661 () Bool)

(declare-fun res!795396 () Bool)

(assert (=> b!1766661 (=> res!795396 e!1130492)))

(assert (=> b!1766661 (= res!795396 e!1130495)))

(declare-fun res!795395 () Bool)

(assert (=> b!1766661 (=> (not res!795395) (not e!1130495))))

(assert (=> b!1766661 (= res!795395 lt!683465)))

(declare-fun b!1766662 () Bool)

(assert (=> b!1766662 (= e!1130498 e!1130497)))

(declare-fun res!795394 () Bool)

(assert (=> b!1766662 (=> res!795394 e!1130497)))

(assert (=> b!1766662 (= res!795394 call!110872)))

(declare-fun b!1766663 () Bool)

(assert (=> b!1766663 (= e!1130494 (not lt!683465))))

(assert (= (and d!539724 c!287764) b!1766656))

(assert (= (and d!539724 (not c!287764)) b!1766655))

(assert (= (and d!539724 c!287765) b!1766660))

(assert (= (and d!539724 (not c!287765)) b!1766653))

(assert (= (and b!1766653 c!287763) b!1766663))

(assert (= (and b!1766653 (not c!287763)) b!1766650))

(assert (= (and b!1766650 (not res!795400)) b!1766661))

(assert (= (and b!1766661 res!795395) b!1766651))

(assert (= (and b!1766651 res!795398) b!1766659))

(assert (= (and b!1766659 res!795399) b!1766654))

(assert (= (and b!1766661 (not res!795396)) b!1766657))

(assert (= (and b!1766657 res!795401) b!1766662))

(assert (= (and b!1766662 (not res!795394)) b!1766658))

(assert (= (and b!1766658 (not res!795397)) b!1766652))

(assert (= (or b!1766660 b!1766651 b!1766662) bm!110867))

(assert (=> b!1766652 m!2184105))

(declare-fun m!2184347 () Bool)

(assert (=> b!1766656 m!2184347))

(assert (=> b!1766655 m!2184105))

(assert (=> b!1766655 m!2184105))

(declare-fun m!2184349 () Bool)

(assert (=> b!1766655 m!2184349))

(assert (=> b!1766655 m!2184099))

(assert (=> b!1766655 m!2184349))

(assert (=> b!1766655 m!2184099))

(declare-fun m!2184351 () Bool)

(assert (=> b!1766655 m!2184351))

(assert (=> b!1766658 m!2184099))

(assert (=> b!1766658 m!2184099))

(declare-fun m!2184353 () Bool)

(assert (=> b!1766658 m!2184353))

(declare-fun m!2184355 () Bool)

(assert (=> bm!110867 m!2184355))

(assert (=> d!539724 m!2184355))

(declare-fun m!2184357 () Bool)

(assert (=> d!539724 m!2184357))

(assert (=> b!1766659 m!2184099))

(assert (=> b!1766659 m!2184099))

(assert (=> b!1766659 m!2184353))

(assert (=> b!1766654 m!2184105))

(assert (=> b!1766046 d!539724))

(declare-fun d!539728 () Bool)

(assert (=> d!539728 (matchR!2276 (rulesRegex!831 thiss!24550 rules!3447) (list!7893 (charsOf!2124 token!523)))))

(declare-fun lt!683468 () Unit!33632)

(declare-fun choose!10969 (LexerInterface!3104 List!19513 List!19511 Token!6516 Rule!6750 List!19511) Unit!33632)

(assert (=> d!539728 (= lt!683468 (choose!10969 thiss!24550 rules!3447 lt!683158 token!523 rule!422 Nil!19441))))

(assert (=> d!539728 (not (isEmpty!12272 rules!3447))))

(assert (=> d!539728 (= (lemmaMaxPrefixThenMatchesRulesRegex!182 thiss!24550 rules!3447 lt!683158 token!523 rule!422 Nil!19441) lt!683468)))

(declare-fun bs!404404 () Bool)

(assert (= bs!404404 d!539728))

(assert (=> bs!404404 m!2183595))

(declare-fun m!2184369 () Bool)

(assert (=> bs!404404 m!2184369))

(assert (=> bs!404404 m!2183595))

(assert (=> bs!404404 m!2183563))

(assert (=> bs!404404 m!2184369))

(declare-fun m!2184371 () Bool)

(assert (=> bs!404404 m!2184371))

(assert (=> bs!404404 m!2183563))

(declare-fun m!2184373 () Bool)

(assert (=> bs!404404 m!2184373))

(assert (=> bs!404404 m!2183565))

(assert (=> b!1766046 d!539728))

(declare-fun d!539730 () Bool)

(assert (=> d!539730 (= (inv!25261 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156)))) (isBalanced!2022 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156))))))))

(declare-fun bs!404405 () Bool)

(assert (= bs!404405 d!539730))

(declare-fun m!2184375 () Bool)

(assert (=> bs!404405 m!2184375))

(assert (=> tb!106659 d!539730))

(declare-fun b!1766683 () Bool)

(declare-fun res!795408 () Bool)

(declare-fun e!1130514 () Bool)

(assert (=> b!1766683 (=> res!795408 e!1130514)))

(assert (=> b!1766683 (= res!795408 (not ((_ is ElementMatch!4803) (regex!3475 (rule!5505 (_1!10927 lt!683156))))))))

(declare-fun e!1130516 () Bool)

(assert (=> b!1766683 (= e!1130516 e!1130514)))

(declare-fun b!1766684 () Bool)

(declare-fun res!795406 () Bool)

(declare-fun e!1130517 () Bool)

(assert (=> b!1766684 (=> (not res!795406) (not e!1130517))))

(declare-fun call!110873 () Bool)

(assert (=> b!1766684 (= res!795406 (not call!110873))))

(declare-fun b!1766685 () Bool)

(declare-fun e!1130519 () Bool)

(assert (=> b!1766685 (= e!1130519 (not (= (head!4098 lt!683153) (c!287660 (regex!3475 (rule!5505 (_1!10927 lt!683156)))))))))

(declare-fun bm!110868 () Bool)

(assert (=> bm!110868 (= call!110873 (isEmpty!12273 lt!683153))))

(declare-fun b!1766686 () Bool)

(declare-fun e!1130518 () Bool)

(assert (=> b!1766686 (= e!1130518 e!1130516)))

(declare-fun c!287766 () Bool)

(assert (=> b!1766686 (= c!287766 ((_ is EmptyLang!4803) (regex!3475 (rule!5505 (_1!10927 lt!683156)))))))

(declare-fun d!539732 () Bool)

(assert (=> d!539732 e!1130518))

(declare-fun c!287768 () Bool)

(assert (=> d!539732 (= c!287768 ((_ is EmptyExpr!4803) (regex!3475 (rule!5505 (_1!10927 lt!683156)))))))

(declare-fun lt!683469 () Bool)

(declare-fun e!1130515 () Bool)

(assert (=> d!539732 (= lt!683469 e!1130515)))

(declare-fun c!287767 () Bool)

(assert (=> d!539732 (= c!287767 (isEmpty!12273 lt!683153))))

(assert (=> d!539732 (validRegex!1943 (regex!3475 (rule!5505 (_1!10927 lt!683156))))))

(assert (=> d!539732 (= (matchR!2276 (regex!3475 (rule!5505 (_1!10927 lt!683156))) lt!683153) lt!683469)))

(declare-fun b!1766687 () Bool)

(assert (=> b!1766687 (= e!1130517 (= (head!4098 lt!683153) (c!287660 (regex!3475 (rule!5505 (_1!10927 lt!683156))))))))

(declare-fun b!1766688 () Bool)

(assert (=> b!1766688 (= e!1130515 (matchR!2276 (derivativeStep!1238 (regex!3475 (rule!5505 (_1!10927 lt!683156))) (head!4098 lt!683153)) (tail!2643 lt!683153)))))

(declare-fun b!1766689 () Bool)

(assert (=> b!1766689 (= e!1130515 (nullable!1469 (regex!3475 (rule!5505 (_1!10927 lt!683156)))))))

(declare-fun b!1766690 () Bool)

(declare-fun e!1130520 () Bool)

(assert (=> b!1766690 (= e!1130514 e!1130520)))

(declare-fun res!795409 () Bool)

(assert (=> b!1766690 (=> (not res!795409) (not e!1130520))))

(assert (=> b!1766690 (= res!795409 (not lt!683469))))

(declare-fun b!1766691 () Bool)

(declare-fun res!795405 () Bool)

(assert (=> b!1766691 (=> res!795405 e!1130519)))

(assert (=> b!1766691 (= res!795405 (not (isEmpty!12273 (tail!2643 lt!683153))))))

(declare-fun b!1766692 () Bool)

(declare-fun res!795407 () Bool)

(assert (=> b!1766692 (=> (not res!795407) (not e!1130517))))

(assert (=> b!1766692 (= res!795407 (isEmpty!12273 (tail!2643 lt!683153)))))

(declare-fun b!1766693 () Bool)

(assert (=> b!1766693 (= e!1130518 (= lt!683469 call!110873))))

(declare-fun b!1766694 () Bool)

(declare-fun res!795404 () Bool)

(assert (=> b!1766694 (=> res!795404 e!1130514)))

(assert (=> b!1766694 (= res!795404 e!1130517)))

(declare-fun res!795403 () Bool)

(assert (=> b!1766694 (=> (not res!795403) (not e!1130517))))

(assert (=> b!1766694 (= res!795403 lt!683469)))

(declare-fun b!1766695 () Bool)

(assert (=> b!1766695 (= e!1130520 e!1130519)))

(declare-fun res!795402 () Bool)

(assert (=> b!1766695 (=> res!795402 e!1130519)))

(assert (=> b!1766695 (= res!795402 call!110873)))

(declare-fun b!1766696 () Bool)

(assert (=> b!1766696 (= e!1130516 (not lt!683469))))

(assert (= (and d!539732 c!287767) b!1766689))

(assert (= (and d!539732 (not c!287767)) b!1766688))

(assert (= (and d!539732 c!287768) b!1766693))

(assert (= (and d!539732 (not c!287768)) b!1766686))

(assert (= (and b!1766686 c!287766) b!1766696))

(assert (= (and b!1766686 (not c!287766)) b!1766683))

(assert (= (and b!1766683 (not res!795408)) b!1766694))

(assert (= (and b!1766694 res!795403) b!1766684))

(assert (= (and b!1766684 res!795406) b!1766692))

(assert (= (and b!1766692 res!795407) b!1766687))

(assert (= (and b!1766694 (not res!795404)) b!1766690))

(assert (= (and b!1766690 res!795409) b!1766695))

(assert (= (and b!1766695 (not res!795402)) b!1766691))

(assert (= (and b!1766691 (not res!795405)) b!1766685))

(assert (= (or b!1766693 b!1766684 b!1766695) bm!110868))

(assert (=> b!1766685 m!2184167))

(declare-fun m!2184377 () Bool)

(assert (=> b!1766689 m!2184377))

(assert (=> b!1766688 m!2184167))

(assert (=> b!1766688 m!2184167))

(declare-fun m!2184379 () Bool)

(assert (=> b!1766688 m!2184379))

(assert (=> b!1766688 m!2184159))

(assert (=> b!1766688 m!2184379))

(assert (=> b!1766688 m!2184159))

(declare-fun m!2184381 () Bool)

(assert (=> b!1766688 m!2184381))

(assert (=> b!1766691 m!2184159))

(assert (=> b!1766691 m!2184159))

(declare-fun m!2184383 () Bool)

(assert (=> b!1766691 m!2184383))

(declare-fun m!2184385 () Bool)

(assert (=> bm!110868 m!2184385))

(assert (=> d!539732 m!2184385))

(declare-fun m!2184387 () Bool)

(assert (=> d!539732 m!2184387))

(assert (=> b!1766692 m!2184159))

(assert (=> b!1766692 m!2184159))

(assert (=> b!1766692 m!2184383))

(assert (=> b!1766687 m!2184167))

(assert (=> b!1766045 d!539732))

(declare-fun d!539734 () Bool)

(declare-fun c!287769 () Bool)

(assert (=> d!539734 (= c!287769 ((_ is Node!6467) (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167)))))))

(declare-fun e!1130521 () Bool)

(assert (=> d!539734 (= (inv!25260 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167)))) e!1130521)))

(declare-fun b!1766697 () Bool)

(assert (=> b!1766697 (= e!1130521 (inv!25264 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167)))))))

(declare-fun b!1766698 () Bool)

(declare-fun e!1130522 () Bool)

(assert (=> b!1766698 (= e!1130521 e!1130522)))

(declare-fun res!795410 () Bool)

(assert (=> b!1766698 (= res!795410 (not ((_ is Leaf!9425) (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167))))))))

(assert (=> b!1766698 (=> res!795410 e!1130522)))

(declare-fun b!1766699 () Bool)

(assert (=> b!1766699 (= e!1130522 (inv!25265 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167)))))))

(assert (= (and d!539734 c!287769) b!1766697))

(assert (= (and d!539734 (not c!287769)) b!1766698))

(assert (= (and b!1766698 (not res!795410)) b!1766699))

(declare-fun m!2184389 () Bool)

(assert (=> b!1766697 m!2184389))

(declare-fun m!2184391 () Bool)

(assert (=> b!1766699 m!2184391))

(assert (=> b!1766089 d!539734))

(declare-fun d!539736 () Bool)

(assert (=> d!539736 (= (inv!25253 (tag!3849 (h!24844 rules!3447))) (= (mod (str.len (value!108684 (tag!3849 (h!24844 rules!3447)))) 2) 0))))

(assert (=> b!1766066 d!539736))

(declare-fun d!539738 () Bool)

(declare-fun res!795411 () Bool)

(declare-fun e!1130523 () Bool)

(assert (=> d!539738 (=> (not res!795411) (not e!1130523))))

(assert (=> d!539738 (= res!795411 (semiInverseModEq!1384 (toChars!4857 (transformation!3475 (h!24844 rules!3447))) (toValue!4998 (transformation!3475 (h!24844 rules!3447)))))))

(assert (=> d!539738 (= (inv!25259 (transformation!3475 (h!24844 rules!3447))) e!1130523)))

(declare-fun b!1766700 () Bool)

(assert (=> b!1766700 (= e!1130523 (equivClasses!1325 (toChars!4857 (transformation!3475 (h!24844 rules!3447))) (toValue!4998 (transformation!3475 (h!24844 rules!3447)))))))

(assert (= (and d!539738 res!795411) b!1766700))

(declare-fun m!2184393 () Bool)

(assert (=> d!539738 m!2184393))

(declare-fun m!2184395 () Bool)

(assert (=> b!1766700 m!2184395))

(assert (=> b!1766066 d!539738))

(declare-fun d!539740 () Bool)

(assert (=> d!539740 (= (inv!25253 (tag!3849 rule!422)) (= (mod (str.len (value!108684 (tag!3849 rule!422))) 2) 0))))

(assert (=> b!1766065 d!539740))

(declare-fun d!539742 () Bool)

(declare-fun res!795412 () Bool)

(declare-fun e!1130524 () Bool)

(assert (=> d!539742 (=> (not res!795412) (not e!1130524))))

(assert (=> d!539742 (= res!795412 (semiInverseModEq!1384 (toChars!4857 (transformation!3475 rule!422)) (toValue!4998 (transformation!3475 rule!422))))))

(assert (=> d!539742 (= (inv!25259 (transformation!3475 rule!422)) e!1130524)))

(declare-fun b!1766701 () Bool)

(assert (=> b!1766701 (= e!1130524 (equivClasses!1325 (toChars!4857 (transformation!3475 rule!422)) (toValue!4998 (transformation!3475 rule!422))))))

(assert (= (and d!539742 res!795412) b!1766701))

(declare-fun m!2184397 () Bool)

(assert (=> d!539742 m!2184397))

(declare-fun m!2184399 () Bool)

(assert (=> b!1766701 m!2184399))

(assert (=> b!1766065 d!539742))

(declare-fun b!1766702 () Bool)

(declare-fun res!795419 () Bool)

(declare-fun e!1130525 () Bool)

(assert (=> b!1766702 (=> res!795419 e!1130525)))

(assert (=> b!1766702 (= res!795419 (not ((_ is ElementMatch!4803) (regex!3475 lt!683173))))))

(declare-fun e!1130527 () Bool)

(assert (=> b!1766702 (= e!1130527 e!1130525)))

(declare-fun b!1766703 () Bool)

(declare-fun res!795417 () Bool)

(declare-fun e!1130528 () Bool)

(assert (=> b!1766703 (=> (not res!795417) (not e!1130528))))

(declare-fun call!110874 () Bool)

(assert (=> b!1766703 (= res!795417 (not call!110874))))

(declare-fun b!1766704 () Bool)

(declare-fun e!1130530 () Bool)

(assert (=> b!1766704 (= e!1130530 (not (= (head!4098 (list!7893 (charsOf!2124 (_1!10927 lt!683156)))) (c!287660 (regex!3475 lt!683173)))))))

(declare-fun bm!110869 () Bool)

(assert (=> bm!110869 (= call!110874 (isEmpty!12273 (list!7893 (charsOf!2124 (_1!10927 lt!683156)))))))

(declare-fun b!1766705 () Bool)

(declare-fun e!1130529 () Bool)

(assert (=> b!1766705 (= e!1130529 e!1130527)))

(declare-fun c!287770 () Bool)

(assert (=> b!1766705 (= c!287770 ((_ is EmptyLang!4803) (regex!3475 lt!683173)))))

(declare-fun d!539744 () Bool)

(assert (=> d!539744 e!1130529))

(declare-fun c!287772 () Bool)

(assert (=> d!539744 (= c!287772 ((_ is EmptyExpr!4803) (regex!3475 lt!683173)))))

(declare-fun lt!683470 () Bool)

(declare-fun e!1130526 () Bool)

(assert (=> d!539744 (= lt!683470 e!1130526)))

(declare-fun c!287771 () Bool)

(assert (=> d!539744 (= c!287771 (isEmpty!12273 (list!7893 (charsOf!2124 (_1!10927 lt!683156)))))))

(assert (=> d!539744 (validRegex!1943 (regex!3475 lt!683173))))

(assert (=> d!539744 (= (matchR!2276 (regex!3475 lt!683173) (list!7893 (charsOf!2124 (_1!10927 lt!683156)))) lt!683470)))

(declare-fun b!1766706 () Bool)

(assert (=> b!1766706 (= e!1130528 (= (head!4098 (list!7893 (charsOf!2124 (_1!10927 lt!683156)))) (c!287660 (regex!3475 lt!683173))))))

(declare-fun b!1766707 () Bool)

(assert (=> b!1766707 (= e!1130526 (matchR!2276 (derivativeStep!1238 (regex!3475 lt!683173) (head!4098 (list!7893 (charsOf!2124 (_1!10927 lt!683156))))) (tail!2643 (list!7893 (charsOf!2124 (_1!10927 lt!683156))))))))

(declare-fun b!1766708 () Bool)

(assert (=> b!1766708 (= e!1130526 (nullable!1469 (regex!3475 lt!683173)))))

(declare-fun b!1766709 () Bool)

(declare-fun e!1130531 () Bool)

(assert (=> b!1766709 (= e!1130525 e!1130531)))

(declare-fun res!795420 () Bool)

(assert (=> b!1766709 (=> (not res!795420) (not e!1130531))))

(assert (=> b!1766709 (= res!795420 (not lt!683470))))

(declare-fun b!1766710 () Bool)

(declare-fun res!795416 () Bool)

(assert (=> b!1766710 (=> res!795416 e!1130530)))

(assert (=> b!1766710 (= res!795416 (not (isEmpty!12273 (tail!2643 (list!7893 (charsOf!2124 (_1!10927 lt!683156)))))))))

(declare-fun b!1766711 () Bool)

(declare-fun res!795418 () Bool)

(assert (=> b!1766711 (=> (not res!795418) (not e!1130528))))

(assert (=> b!1766711 (= res!795418 (isEmpty!12273 (tail!2643 (list!7893 (charsOf!2124 (_1!10927 lt!683156))))))))

(declare-fun b!1766712 () Bool)

(assert (=> b!1766712 (= e!1130529 (= lt!683470 call!110874))))

(declare-fun b!1766713 () Bool)

(declare-fun res!795415 () Bool)

(assert (=> b!1766713 (=> res!795415 e!1130525)))

(assert (=> b!1766713 (= res!795415 e!1130528)))

(declare-fun res!795414 () Bool)

(assert (=> b!1766713 (=> (not res!795414) (not e!1130528))))

(assert (=> b!1766713 (= res!795414 lt!683470)))

(declare-fun b!1766714 () Bool)

(assert (=> b!1766714 (= e!1130531 e!1130530)))

(declare-fun res!795413 () Bool)

(assert (=> b!1766714 (=> res!795413 e!1130530)))

(assert (=> b!1766714 (= res!795413 call!110874)))

(declare-fun b!1766715 () Bool)

(assert (=> b!1766715 (= e!1130527 (not lt!683470))))

(assert (= (and d!539744 c!287771) b!1766708))

(assert (= (and d!539744 (not c!287771)) b!1766707))

(assert (= (and d!539744 c!287772) b!1766712))

(assert (= (and d!539744 (not c!287772)) b!1766705))

(assert (= (and b!1766705 c!287770) b!1766715))

(assert (= (and b!1766705 (not c!287770)) b!1766702))

(assert (= (and b!1766702 (not res!795419)) b!1766713))

(assert (= (and b!1766713 res!795414) b!1766703))

(assert (= (and b!1766703 res!795417) b!1766711))

(assert (= (and b!1766711 res!795418) b!1766706))

(assert (= (and b!1766713 (not res!795415)) b!1766709))

(assert (= (and b!1766709 res!795420) b!1766714))

(assert (= (and b!1766714 (not res!795413)) b!1766710))

(assert (= (and b!1766710 (not res!795416)) b!1766704))

(assert (= (or b!1766712 b!1766703 b!1766714) bm!110869))

(assert (=> b!1766704 m!2183597))

(declare-fun m!2184401 () Bool)

(assert (=> b!1766704 m!2184401))

(declare-fun m!2184403 () Bool)

(assert (=> b!1766708 m!2184403))

(assert (=> b!1766707 m!2183597))

(assert (=> b!1766707 m!2184401))

(assert (=> b!1766707 m!2184401))

(declare-fun m!2184405 () Bool)

(assert (=> b!1766707 m!2184405))

(assert (=> b!1766707 m!2183597))

(declare-fun m!2184407 () Bool)

(assert (=> b!1766707 m!2184407))

(assert (=> b!1766707 m!2184405))

(assert (=> b!1766707 m!2184407))

(declare-fun m!2184409 () Bool)

(assert (=> b!1766707 m!2184409))

(assert (=> b!1766710 m!2183597))

(assert (=> b!1766710 m!2184407))

(assert (=> b!1766710 m!2184407))

(declare-fun m!2184411 () Bool)

(assert (=> b!1766710 m!2184411))

(assert (=> bm!110869 m!2183597))

(declare-fun m!2184413 () Bool)

(assert (=> bm!110869 m!2184413))

(assert (=> d!539744 m!2183597))

(assert (=> d!539744 m!2184413))

(declare-fun m!2184415 () Bool)

(assert (=> d!539744 m!2184415))

(assert (=> b!1766711 m!2183597))

(assert (=> b!1766711 m!2184407))

(assert (=> b!1766711 m!2184407))

(assert (=> b!1766711 m!2184411))

(assert (=> b!1766706 m!2183597))

(assert (=> b!1766706 m!2184401))

(assert (=> b!1766059 d!539744))

(declare-fun d!539746 () Bool)

(assert (=> d!539746 (= (list!7893 (charsOf!2124 (_1!10927 lt!683156))) (list!7897 (c!287661 (charsOf!2124 (_1!10927 lt!683156)))))))

(declare-fun bs!404406 () Bool)

(assert (= bs!404406 d!539746))

(declare-fun m!2184417 () Bool)

(assert (=> bs!404406 m!2184417))

(assert (=> b!1766059 d!539746))

(assert (=> b!1766059 d!539660))

(declare-fun d!539748 () Bool)

(assert (=> d!539748 (= (get!5928 lt!683155) (v!25441 lt!683155))))

(assert (=> b!1766059 d!539748))

(declare-fun d!539750 () Bool)

(declare-fun choose!10970 (Int) Bool)

(assert (=> d!539750 (= (Forall!842 lambda!70296) (choose!10970 lambda!70296))))

(declare-fun bs!404407 () Bool)

(assert (= bs!404407 d!539750))

(declare-fun m!2184419 () Bool)

(assert (=> bs!404407 m!2184419))

(assert (=> b!1766062 d!539750))

(declare-fun d!539752 () Bool)

(declare-fun e!1130534 () Bool)

(assert (=> d!539752 e!1130534))

(declare-fun res!795423 () Bool)

(assert (=> d!539752 (=> (not res!795423) (not e!1130534))))

(assert (=> d!539752 (= res!795423 (semiInverseModEq!1384 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))))))

(declare-fun Unit!33641 () Unit!33632)

(assert (=> d!539752 (= (lemmaInv!674 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) Unit!33641)))

(declare-fun b!1766718 () Bool)

(assert (=> b!1766718 (= e!1130534 (equivClasses!1325 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))))))

(assert (= (and d!539752 res!795423) b!1766718))

(declare-fun m!2184421 () Bool)

(assert (=> d!539752 m!2184421))

(declare-fun m!2184423 () Bool)

(assert (=> b!1766718 m!2184423))

(assert (=> b!1766062 d!539752))

(declare-fun b!1766719 () Bool)

(declare-fun res!795430 () Bool)

(declare-fun e!1130535 () Bool)

(assert (=> b!1766719 (=> res!795430 e!1130535)))

(assert (=> b!1766719 (= res!795430 (not ((_ is ElementMatch!4803) (regex!3475 rule!422))))))

(declare-fun e!1130537 () Bool)

(assert (=> b!1766719 (= e!1130537 e!1130535)))

(declare-fun b!1766720 () Bool)

(declare-fun res!795428 () Bool)

(declare-fun e!1130538 () Bool)

(assert (=> b!1766720 (=> (not res!795428) (not e!1130538))))

(declare-fun call!110875 () Bool)

(assert (=> b!1766720 (= res!795428 (not call!110875))))

(declare-fun b!1766721 () Bool)

(declare-fun e!1130540 () Bool)

(assert (=> b!1766721 (= e!1130540 (not (= (head!4098 lt!683158) (c!287660 (regex!3475 rule!422)))))))

(declare-fun bm!110870 () Bool)

(assert (=> bm!110870 (= call!110875 (isEmpty!12273 lt!683158))))

(declare-fun b!1766722 () Bool)

(declare-fun e!1130539 () Bool)

(assert (=> b!1766722 (= e!1130539 e!1130537)))

(declare-fun c!287773 () Bool)

(assert (=> b!1766722 (= c!287773 ((_ is EmptyLang!4803) (regex!3475 rule!422)))))

(declare-fun d!539754 () Bool)

(assert (=> d!539754 e!1130539))

(declare-fun c!287775 () Bool)

(assert (=> d!539754 (= c!287775 ((_ is EmptyExpr!4803) (regex!3475 rule!422)))))

(declare-fun lt!683471 () Bool)

(declare-fun e!1130536 () Bool)

(assert (=> d!539754 (= lt!683471 e!1130536)))

(declare-fun c!287774 () Bool)

(assert (=> d!539754 (= c!287774 (isEmpty!12273 lt!683158))))

(assert (=> d!539754 (validRegex!1943 (regex!3475 rule!422))))

(assert (=> d!539754 (= (matchR!2276 (regex!3475 rule!422) lt!683158) lt!683471)))

(declare-fun b!1766723 () Bool)

(assert (=> b!1766723 (= e!1130538 (= (head!4098 lt!683158) (c!287660 (regex!3475 rule!422))))))

(declare-fun b!1766724 () Bool)

(assert (=> b!1766724 (= e!1130536 (matchR!2276 (derivativeStep!1238 (regex!3475 rule!422) (head!4098 lt!683158)) (tail!2643 lt!683158)))))

(declare-fun b!1766725 () Bool)

(assert (=> b!1766725 (= e!1130536 (nullable!1469 (regex!3475 rule!422)))))

(declare-fun b!1766726 () Bool)

(declare-fun e!1130541 () Bool)

(assert (=> b!1766726 (= e!1130535 e!1130541)))

(declare-fun res!795431 () Bool)

(assert (=> b!1766726 (=> (not res!795431) (not e!1130541))))

(assert (=> b!1766726 (= res!795431 (not lt!683471))))

(declare-fun b!1766727 () Bool)

(declare-fun res!795427 () Bool)

(assert (=> b!1766727 (=> res!795427 e!1130540)))

(assert (=> b!1766727 (= res!795427 (not (isEmpty!12273 (tail!2643 lt!683158))))))

(declare-fun b!1766728 () Bool)

(declare-fun res!795429 () Bool)

(assert (=> b!1766728 (=> (not res!795429) (not e!1130538))))

(assert (=> b!1766728 (= res!795429 (isEmpty!12273 (tail!2643 lt!683158)))))

(declare-fun b!1766729 () Bool)

(assert (=> b!1766729 (= e!1130539 (= lt!683471 call!110875))))

(declare-fun b!1766730 () Bool)

(declare-fun res!795426 () Bool)

(assert (=> b!1766730 (=> res!795426 e!1130535)))

(assert (=> b!1766730 (= res!795426 e!1130538)))

(declare-fun res!795425 () Bool)

(assert (=> b!1766730 (=> (not res!795425) (not e!1130538))))

(assert (=> b!1766730 (= res!795425 lt!683471)))

(declare-fun b!1766731 () Bool)

(assert (=> b!1766731 (= e!1130541 e!1130540)))

(declare-fun res!795424 () Bool)

(assert (=> b!1766731 (=> res!795424 e!1130540)))

(assert (=> b!1766731 (= res!795424 call!110875)))

(declare-fun b!1766732 () Bool)

(assert (=> b!1766732 (= e!1130537 (not lt!683471))))

(assert (= (and d!539754 c!287774) b!1766725))

(assert (= (and d!539754 (not c!287774)) b!1766724))

(assert (= (and d!539754 c!287775) b!1766729))

(assert (= (and d!539754 (not c!287775)) b!1766722))

(assert (= (and b!1766722 c!287773) b!1766732))

(assert (= (and b!1766722 (not c!287773)) b!1766719))

(assert (= (and b!1766719 (not res!795430)) b!1766730))

(assert (= (and b!1766730 res!795425) b!1766720))

(assert (= (and b!1766720 res!795428) b!1766728))

(assert (= (and b!1766728 res!795429) b!1766723))

(assert (= (and b!1766730 (not res!795426)) b!1766726))

(assert (= (and b!1766726 res!795431) b!1766731))

(assert (= (and b!1766731 (not res!795424)) b!1766727))

(assert (= (and b!1766727 (not res!795427)) b!1766721))

(assert (= (or b!1766729 b!1766720 b!1766731) bm!110870))

(assert (=> b!1766721 m!2184105))

(declare-fun m!2184425 () Bool)

(assert (=> b!1766725 m!2184425))

(assert (=> b!1766724 m!2184105))

(assert (=> b!1766724 m!2184105))

(declare-fun m!2184427 () Bool)

(assert (=> b!1766724 m!2184427))

(assert (=> b!1766724 m!2184099))

(assert (=> b!1766724 m!2184427))

(assert (=> b!1766724 m!2184099))

(declare-fun m!2184429 () Bool)

(assert (=> b!1766724 m!2184429))

(assert (=> b!1766727 m!2184099))

(assert (=> b!1766727 m!2184099))

(assert (=> b!1766727 m!2184353))

(assert (=> bm!110870 m!2184355))

(assert (=> d!539754 m!2184355))

(declare-fun m!2184431 () Bool)

(assert (=> d!539754 m!2184431))

(assert (=> b!1766728 m!2184099))

(assert (=> b!1766728 m!2184099))

(assert (=> b!1766728 m!2184353))

(assert (=> b!1766723 m!2184105))

(assert (=> b!1766061 d!539754))

(declare-fun d!539756 () Bool)

(declare-fun res!795436 () Bool)

(declare-fun e!1130544 () Bool)

(assert (=> d!539756 (=> (not res!795436) (not e!1130544))))

(assert (=> d!539756 (= res!795436 (validRegex!1943 (regex!3475 rule!422)))))

(assert (=> d!539756 (= (ruleValid!973 thiss!24550 rule!422) e!1130544)))

(declare-fun b!1766737 () Bool)

(declare-fun res!795437 () Bool)

(assert (=> b!1766737 (=> (not res!795437) (not e!1130544))))

(assert (=> b!1766737 (= res!795437 (not (nullable!1469 (regex!3475 rule!422))))))

(declare-fun b!1766738 () Bool)

(assert (=> b!1766738 (= e!1130544 (not (= (tag!3849 rule!422) (String!22157 ""))))))

(assert (= (and d!539756 res!795436) b!1766737))

(assert (= (and b!1766737 res!795437) b!1766738))

(assert (=> d!539756 m!2184431))

(assert (=> b!1766737 m!2184425))

(assert (=> b!1766061 d!539756))

(declare-fun d!539758 () Bool)

(assert (=> d!539758 (ruleValid!973 thiss!24550 rule!422)))

(declare-fun lt!683474 () Unit!33632)

(declare-fun choose!10972 (LexerInterface!3104 Rule!6750 List!19513) Unit!33632)

(assert (=> d!539758 (= lt!683474 (choose!10972 thiss!24550 rule!422 rules!3447))))

(assert (=> d!539758 (contains!3505 rules!3447 rule!422)))

(assert (=> d!539758 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!496 thiss!24550 rule!422 rules!3447) lt!683474)))

(declare-fun bs!404408 () Bool)

(assert (= bs!404408 d!539758))

(assert (=> bs!404408 m!2183577))

(declare-fun m!2184433 () Bool)

(assert (=> bs!404408 m!2184433))

(assert (=> bs!404408 m!2183501))

(assert (=> b!1766061 d!539758))

(declare-fun d!539760 () Bool)

(declare-fun res!795440 () Bool)

(declare-fun e!1130547 () Bool)

(assert (=> d!539760 (=> (not res!795440) (not e!1130547))))

(declare-fun rulesValid!1310 (LexerInterface!3104 List!19513) Bool)

(assert (=> d!539760 (= res!795440 (rulesValid!1310 thiss!24550 rules!3447))))

(assert (=> d!539760 (= (rulesInvariant!2773 thiss!24550 rules!3447) e!1130547)))

(declare-fun b!1766741 () Bool)

(declare-datatypes ((List!19518 0))(
  ( (Nil!19448) (Cons!19448 (h!24849 String!22156) (t!164827 List!19518)) )
))
(declare-fun noDuplicateTag!1310 (LexerInterface!3104 List!19513 List!19518) Bool)

(assert (=> b!1766741 (= e!1130547 (noDuplicateTag!1310 thiss!24550 rules!3447 Nil!19448))))

(assert (= (and d!539760 res!795440) b!1766741))

(declare-fun m!2184435 () Bool)

(assert (=> d!539760 m!2184435))

(declare-fun m!2184437 () Bool)

(assert (=> b!1766741 m!2184437))

(assert (=> b!1766060 d!539760))

(declare-fun d!539762 () Bool)

(assert (=> d!539762 (= (list!7893 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167))) (list!7897 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167)))))))

(declare-fun bs!404409 () Bool)

(assert (= bs!404409 d!539762))

(declare-fun m!2184439 () Bool)

(assert (=> bs!404409 m!2184439))

(assert (=> b!1766054 d!539762))

(declare-fun bs!404410 () Bool)

(declare-fun d!539764 () Bool)

(assert (= bs!404410 (and d!539764 b!1766062)))

(declare-fun lambda!70311 () Int)

(assert (=> bs!404410 (= lambda!70311 lambda!70296)))

(declare-fun b!1766746 () Bool)

(declare-fun e!1130550 () Bool)

(assert (=> b!1766746 (= e!1130550 true)))

(assert (=> d!539764 e!1130550))

(assert (= d!539764 b!1766746))

(assert (=> b!1766746 (< (dynLambda!9402 order!12371 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) (dynLambda!9403 order!12373 lambda!70311))))

(assert (=> b!1766746 (< (dynLambda!9404 order!12375 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) (dynLambda!9403 order!12373 lambda!70311))))

(assert (=> d!539764 (= (list!7893 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167))) (list!7893 lt!683167))))

(declare-fun lt!683477 () Unit!33632)

(declare-fun ForallOf!322 (Int BalanceConc!12878) Unit!33632)

(assert (=> d!539764 (= lt!683477 (ForallOf!322 lambda!70311 lt!683167))))

(assert (=> d!539764 (= (lemmaSemiInverse!613 (transformation!3475 (rule!5505 (_1!10927 lt!683156))) lt!683167) lt!683477)))

(declare-fun b_lambda!57391 () Bool)

(assert (=> (not b_lambda!57391) (not d!539764)))

(assert (=> d!539764 t!164743))

(declare-fun b_and!133913 () Bool)

(assert (= b_and!133903 (and (=> t!164743 result!128298) b_and!133913)))

(assert (=> d!539764 t!164745))

(declare-fun b_and!133915 () Bool)

(assert (= b_and!133905 (and (=> t!164745 result!128302) b_and!133915)))

(assert (=> d!539764 t!164747))

(declare-fun b_and!133917 () Bool)

(assert (= b_and!133907 (and (=> t!164747 result!128304) b_and!133917)))

(declare-fun b_lambda!57393 () Bool)

(assert (=> (not b_lambda!57393) (not d!539764)))

(assert (=> d!539764 t!164749))

(declare-fun b_and!133919 () Bool)

(assert (= b_and!133891 (and (=> t!164749 result!128306) b_and!133919)))

(assert (=> d!539764 t!164751))

(declare-fun b_and!133921 () Bool)

(assert (= b_and!133893 (and (=> t!164751 result!128310) b_and!133921)))

(assert (=> d!539764 t!164753))

(declare-fun b_and!133923 () Bool)

(assert (= b_and!133895 (and (=> t!164753 result!128312) b_and!133923)))

(assert (=> d!539764 m!2183533))

(assert (=> d!539764 m!2183535))

(assert (=> d!539764 m!2183533))

(assert (=> d!539764 m!2183529))

(declare-fun m!2184441 () Bool)

(assert (=> d!539764 m!2184441))

(assert (=> d!539764 m!2183535))

(assert (=> d!539764 m!2183537))

(assert (=> b!1766054 d!539764))

(declare-fun d!539766 () Bool)

(declare-fun c!287779 () Bool)

(assert (=> d!539766 (= c!287779 (isEmpty!12273 (++!5299 lt!683158 (Cons!19441 (head!4098 suffix!1421) Nil!19441))))))

(declare-fun e!1130553 () Bool)

(assert (=> d!539766 (= (prefixMatch!686 lt!683171 (++!5299 lt!683158 (Cons!19441 (head!4098 suffix!1421) Nil!19441))) e!1130553)))

(declare-fun b!1766751 () Bool)

(declare-fun lostCause!580 (Regex!4803) Bool)

(assert (=> b!1766751 (= e!1130553 (not (lostCause!580 lt!683171)))))

(declare-fun b!1766752 () Bool)

(assert (=> b!1766752 (= e!1130553 (prefixMatch!686 (derivativeStep!1238 lt!683171 (head!4098 (++!5299 lt!683158 (Cons!19441 (head!4098 suffix!1421) Nil!19441)))) (tail!2643 (++!5299 lt!683158 (Cons!19441 (head!4098 suffix!1421) Nil!19441)))))))

(assert (= (and d!539766 c!287779) b!1766751))

(assert (= (and d!539766 (not c!287779)) b!1766752))

(assert (=> d!539766 m!2183559))

(declare-fun m!2184443 () Bool)

(assert (=> d!539766 m!2184443))

(declare-fun m!2184445 () Bool)

(assert (=> b!1766751 m!2184445))

(assert (=> b!1766752 m!2183559))

(declare-fun m!2184447 () Bool)

(assert (=> b!1766752 m!2184447))

(assert (=> b!1766752 m!2184447))

(declare-fun m!2184449 () Bool)

(assert (=> b!1766752 m!2184449))

(assert (=> b!1766752 m!2183559))

(declare-fun m!2184451 () Bool)

(assert (=> b!1766752 m!2184451))

(assert (=> b!1766752 m!2184449))

(assert (=> b!1766752 m!2184451))

(declare-fun m!2184453 () Bool)

(assert (=> b!1766752 m!2184453))

(assert (=> b!1766073 d!539766))

(declare-fun d!539768 () Bool)

(declare-fun e!1130554 () Bool)

(assert (=> d!539768 e!1130554))

(declare-fun res!795442 () Bool)

(assert (=> d!539768 (=> (not res!795442) (not e!1130554))))

(declare-fun lt!683478 () List!19511)

(assert (=> d!539768 (= res!795442 (= (content!2815 lt!683478) ((_ map or) (content!2815 lt!683158) (content!2815 (Cons!19441 (head!4098 suffix!1421) Nil!19441)))))))

(declare-fun e!1130555 () List!19511)

(assert (=> d!539768 (= lt!683478 e!1130555)))

(declare-fun c!287780 () Bool)

(assert (=> d!539768 (= c!287780 ((_ is Nil!19441) lt!683158))))

(assert (=> d!539768 (= (++!5299 lt!683158 (Cons!19441 (head!4098 suffix!1421) Nil!19441)) lt!683478)))

(declare-fun b!1766754 () Bool)

(assert (=> b!1766754 (= e!1130555 (Cons!19441 (h!24842 lt!683158) (++!5299 (t!164760 lt!683158) (Cons!19441 (head!4098 suffix!1421) Nil!19441))))))

(declare-fun b!1766753 () Bool)

(assert (=> b!1766753 (= e!1130555 (Cons!19441 (head!4098 suffix!1421) Nil!19441))))

(declare-fun b!1766756 () Bool)

(assert (=> b!1766756 (= e!1130554 (or (not (= (Cons!19441 (head!4098 suffix!1421) Nil!19441) Nil!19441)) (= lt!683478 lt!683158)))))

(declare-fun b!1766755 () Bool)

(declare-fun res!795441 () Bool)

(assert (=> b!1766755 (=> (not res!795441) (not e!1130554))))

(assert (=> b!1766755 (= res!795441 (= (size!15444 lt!683478) (+ (size!15444 lt!683158) (size!15444 (Cons!19441 (head!4098 suffix!1421) Nil!19441)))))))

(assert (= (and d!539768 c!287780) b!1766753))

(assert (= (and d!539768 (not c!287780)) b!1766754))

(assert (= (and d!539768 res!795442) b!1766755))

(assert (= (and b!1766755 res!795441) b!1766756))

(declare-fun m!2184455 () Bool)

(assert (=> d!539768 m!2184455))

(assert (=> d!539768 m!2184111))

(declare-fun m!2184457 () Bool)

(assert (=> d!539768 m!2184457))

(declare-fun m!2184459 () Bool)

(assert (=> b!1766754 m!2184459))

(declare-fun m!2184461 () Bool)

(assert (=> b!1766755 m!2184461))

(assert (=> b!1766755 m!2184103))

(declare-fun m!2184463 () Bool)

(assert (=> b!1766755 m!2184463))

(assert (=> b!1766073 d!539768))

(declare-fun d!539770 () Bool)

(assert (=> d!539770 (= (head!4098 suffix!1421) (h!24842 suffix!1421))))

(assert (=> b!1766073 d!539770))

(declare-fun d!539772 () Bool)

(declare-fun lt!683481 () Unit!33632)

(declare-fun lemma!393 (List!19513 LexerInterface!3104 List!19513) Unit!33632)

(assert (=> d!539772 (= lt!683481 (lemma!393 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70314 () Int)

(declare-datatypes ((List!19519 0))(
  ( (Nil!19449) (Cons!19449 (h!24850 Regex!4803) (t!164828 List!19519)) )
))
(declare-fun generalisedUnion!401 (List!19519) Regex!4803)

(declare-fun map!4010 (List!19513 Int) List!19519)

(assert (=> d!539772 (= (rulesRegex!831 thiss!24550 rules!3447) (generalisedUnion!401 (map!4010 rules!3447 lambda!70314)))))

(declare-fun bs!404411 () Bool)

(assert (= bs!404411 d!539772))

(declare-fun m!2184465 () Bool)

(assert (=> bs!404411 m!2184465))

(declare-fun m!2184467 () Bool)

(assert (=> bs!404411 m!2184467))

(assert (=> bs!404411 m!2184467))

(declare-fun m!2184469 () Bool)

(assert (=> bs!404411 m!2184469))

(assert (=> b!1766073 d!539772))

(declare-fun b!1766757 () Bool)

(declare-fun e!1130558 () Bool)

(assert (=> b!1766757 (= e!1130558 (inv!16 (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167)))))

(declare-fun b!1766758 () Bool)

(declare-fun e!1130556 () Bool)

(assert (=> b!1766758 (= e!1130556 (inv!17 (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167)))))

(declare-fun b!1766759 () Bool)

(declare-fun e!1130557 () Bool)

(assert (=> b!1766759 (= e!1130557 (inv!15 (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167)))))

(declare-fun b!1766760 () Bool)

(declare-fun res!795443 () Bool)

(assert (=> b!1766760 (=> res!795443 e!1130557)))

(assert (=> b!1766760 (= res!795443 (not ((_ is IntegerValue!10697) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167))))))

(assert (=> b!1766760 (= e!1130556 e!1130557)))

(declare-fun d!539774 () Bool)

(declare-fun c!287781 () Bool)

(assert (=> d!539774 (= c!287781 ((_ is IntegerValue!10695) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167)))))

(assert (=> d!539774 (= (inv!21 (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167)) e!1130558)))

(declare-fun b!1766761 () Bool)

(assert (=> b!1766761 (= e!1130558 e!1130556)))

(declare-fun c!287782 () Bool)

(assert (=> b!1766761 (= c!287782 ((_ is IntegerValue!10696) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167)))))

(assert (= (and d!539774 c!287781) b!1766757))

(assert (= (and d!539774 (not c!287781)) b!1766761))

(assert (= (and b!1766761 c!287782) b!1766758))

(assert (= (and b!1766761 (not c!287782)) b!1766760))

(assert (= (and b!1766760 (not res!795443)) b!1766759))

(declare-fun m!2184471 () Bool)

(assert (=> b!1766757 m!2184471))

(declare-fun m!2184473 () Bool)

(assert (=> b!1766758 m!2184473))

(declare-fun m!2184475 () Bool)

(assert (=> b!1766759 m!2184475))

(assert (=> tb!106653 d!539774))

(declare-fun d!539776 () Bool)

(assert (=> d!539776 (= (isDefined!3315 lt!683146) (not (isEmpty!12275 lt!683146)))))

(declare-fun bs!404412 () Bool)

(assert (= bs!404412 d!539776))

(declare-fun m!2184477 () Bool)

(assert (=> bs!404412 m!2184477))

(assert (=> b!1766052 d!539776))

(declare-fun b!1766762 () Bool)

(declare-fun res!795450 () Bool)

(declare-fun e!1130559 () Bool)

(assert (=> b!1766762 (=> (not res!795450) (not e!1130559))))

(declare-fun lt!683484 () Option!3972)

(assert (=> b!1766762 (= res!795450 (= (++!5299 (list!7893 (charsOf!2124 (_1!10927 (get!5927 lt!683484)))) (_2!10927 (get!5927 lt!683484))) lt!683158))))

(declare-fun b!1766763 () Bool)

(declare-fun e!1130560 () Option!3972)

(declare-fun call!110876 () Option!3972)

(assert (=> b!1766763 (= e!1130560 call!110876)))

(declare-fun b!1766764 () Bool)

(assert (=> b!1766764 (= e!1130559 (contains!3505 rules!3447 (rule!5505 (_1!10927 (get!5927 lt!683484)))))))

(declare-fun b!1766765 () Bool)

(declare-fun res!795447 () Bool)

(assert (=> b!1766765 (=> (not res!795447) (not e!1130559))))

(assert (=> b!1766765 (= res!795447 (matchR!2276 (regex!3475 (rule!5505 (_1!10927 (get!5927 lt!683484)))) (list!7893 (charsOf!2124 (_1!10927 (get!5927 lt!683484))))))))

(declare-fun b!1766766 () Bool)

(declare-fun e!1130561 () Bool)

(assert (=> b!1766766 (= e!1130561 e!1130559)))

(declare-fun res!795449 () Bool)

(assert (=> b!1766766 (=> (not res!795449) (not e!1130559))))

(assert (=> b!1766766 (= res!795449 (isDefined!3315 lt!683484))))

(declare-fun b!1766767 () Bool)

(declare-fun lt!683486 () Option!3972)

(declare-fun lt!683485 () Option!3972)

(assert (=> b!1766767 (= e!1130560 (ite (and ((_ is None!3971) lt!683486) ((_ is None!3971) lt!683485)) None!3971 (ite ((_ is None!3971) lt!683485) lt!683486 (ite ((_ is None!3971) lt!683486) lt!683485 (ite (>= (size!15442 (_1!10927 (v!25440 lt!683486))) (size!15442 (_1!10927 (v!25440 lt!683485)))) lt!683486 lt!683485)))))))

(assert (=> b!1766767 (= lt!683486 call!110876)))

(assert (=> b!1766767 (= lt!683485 (maxPrefix!1658 thiss!24550 (t!164762 rules!3447) lt!683158))))

(declare-fun b!1766768 () Bool)

(declare-fun res!795446 () Bool)

(assert (=> b!1766768 (=> (not res!795446) (not e!1130559))))

(assert (=> b!1766768 (= res!795446 (= (list!7893 (charsOf!2124 (_1!10927 (get!5927 lt!683484)))) (originalCharacters!4289 (_1!10927 (get!5927 lt!683484)))))))

(declare-fun b!1766769 () Bool)

(declare-fun res!795448 () Bool)

(assert (=> b!1766769 (=> (not res!795448) (not e!1130559))))

(assert (=> b!1766769 (= res!795448 (= (value!108710 (_1!10927 (get!5927 lt!683484))) (apply!5275 (transformation!3475 (rule!5505 (_1!10927 (get!5927 lt!683484)))) (seqFromList!2444 (originalCharacters!4289 (_1!10927 (get!5927 lt!683484)))))))))

(declare-fun d!539778 () Bool)

(assert (=> d!539778 e!1130561))

(declare-fun res!795444 () Bool)

(assert (=> d!539778 (=> res!795444 e!1130561)))

(assert (=> d!539778 (= res!795444 (isEmpty!12275 lt!683484))))

(assert (=> d!539778 (= lt!683484 e!1130560)))

(declare-fun c!287783 () Bool)

(assert (=> d!539778 (= c!287783 (and ((_ is Cons!19443) rules!3447) ((_ is Nil!19443) (t!164762 rules!3447))))))

(declare-fun lt!683483 () Unit!33632)

(declare-fun lt!683482 () Unit!33632)

(assert (=> d!539778 (= lt!683483 lt!683482)))

(assert (=> d!539778 (isPrefix!1715 lt!683158 lt!683158)))

(assert (=> d!539778 (= lt!683482 (lemmaIsPrefixRefl!1136 lt!683158 lt!683158))))

(assert (=> d!539778 (rulesValidInductive!1174 thiss!24550 rules!3447)))

(assert (=> d!539778 (= (maxPrefix!1658 thiss!24550 rules!3447 lt!683158) lt!683484)))

(declare-fun bm!110871 () Bool)

(assert (=> bm!110871 (= call!110876 (maxPrefixOneRule!1027 thiss!24550 (h!24844 rules!3447) lt!683158))))

(declare-fun b!1766770 () Bool)

(declare-fun res!795445 () Bool)

(assert (=> b!1766770 (=> (not res!795445) (not e!1130559))))

(assert (=> b!1766770 (= res!795445 (< (size!15444 (_2!10927 (get!5927 lt!683484))) (size!15444 lt!683158)))))

(assert (= (and d!539778 c!287783) b!1766763))

(assert (= (and d!539778 (not c!287783)) b!1766767))

(assert (= (or b!1766763 b!1766767) bm!110871))

(assert (= (and d!539778 (not res!795444)) b!1766766))

(assert (= (and b!1766766 res!795449) b!1766768))

(assert (= (and b!1766768 res!795446) b!1766770))

(assert (= (and b!1766770 res!795445) b!1766762))

(assert (= (and b!1766762 res!795450) b!1766769))

(assert (= (and b!1766769 res!795448) b!1766765))

(assert (= (and b!1766765 res!795447) b!1766764))

(declare-fun m!2184479 () Bool)

(assert (=> b!1766767 m!2184479))

(declare-fun m!2184481 () Bool)

(assert (=> b!1766768 m!2184481))

(declare-fun m!2184483 () Bool)

(assert (=> b!1766768 m!2184483))

(assert (=> b!1766768 m!2184483))

(declare-fun m!2184485 () Bool)

(assert (=> b!1766768 m!2184485))

(declare-fun m!2184487 () Bool)

(assert (=> b!1766766 m!2184487))

(assert (=> b!1766762 m!2184481))

(assert (=> b!1766762 m!2184483))

(assert (=> b!1766762 m!2184483))

(assert (=> b!1766762 m!2184485))

(assert (=> b!1766762 m!2184485))

(declare-fun m!2184489 () Bool)

(assert (=> b!1766762 m!2184489))

(assert (=> b!1766770 m!2184481))

(declare-fun m!2184491 () Bool)

(assert (=> b!1766770 m!2184491))

(assert (=> b!1766770 m!2184103))

(declare-fun m!2184493 () Bool)

(assert (=> bm!110871 m!2184493))

(assert (=> b!1766765 m!2184481))

(assert (=> b!1766765 m!2184483))

(assert (=> b!1766765 m!2184483))

(assert (=> b!1766765 m!2184485))

(assert (=> b!1766765 m!2184485))

(declare-fun m!2184495 () Bool)

(assert (=> b!1766765 m!2184495))

(assert (=> b!1766769 m!2184481))

(declare-fun m!2184497 () Bool)

(assert (=> b!1766769 m!2184497))

(assert (=> b!1766769 m!2184497))

(declare-fun m!2184499 () Bool)

(assert (=> b!1766769 m!2184499))

(assert (=> b!1766764 m!2184481))

(declare-fun m!2184501 () Bool)

(assert (=> b!1766764 m!2184501))

(declare-fun m!2184503 () Bool)

(assert (=> d!539778 m!2184503))

(declare-fun m!2184505 () Bool)

(assert (=> d!539778 m!2184505))

(declare-fun m!2184507 () Bool)

(assert (=> d!539778 m!2184507))

(assert (=> d!539778 m!2184305))

(assert (=> b!1766052 d!539778))

(declare-fun d!539780 () Bool)

(assert (=> d!539780 (= (list!7893 lt!683151) (list!7897 (c!287661 lt!683151)))))

(declare-fun bs!404413 () Bool)

(assert (= bs!404413 d!539780))

(declare-fun m!2184509 () Bool)

(assert (=> bs!404413 m!2184509))

(assert (=> b!1766052 d!539780))

(declare-fun d!539782 () Bool)

(declare-fun lt!683487 () BalanceConc!12878)

(assert (=> d!539782 (= (list!7893 lt!683487) (originalCharacters!4289 token!523))))

(assert (=> d!539782 (= lt!683487 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 token!523))) (value!108710 token!523)))))

(assert (=> d!539782 (= (charsOf!2124 token!523) lt!683487)))

(declare-fun b_lambda!57395 () Bool)

(assert (=> (not b_lambda!57395) (not d!539782)))

(declare-fun t!164806 () Bool)

(declare-fun tb!106707 () Bool)

(assert (=> (and b!1766057 (= (toChars!4857 (transformation!3475 (h!24844 rules!3447))) (toChars!4857 (transformation!3475 (rule!5505 token!523)))) t!164806) tb!106707))

(declare-fun b!1766771 () Bool)

(declare-fun e!1130562 () Bool)

(declare-fun tp!501341 () Bool)

(assert (=> b!1766771 (= e!1130562 (and (inv!25260 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 token!523))) (value!108710 token!523)))) tp!501341))))

(declare-fun result!128370 () Bool)

(assert (=> tb!106707 (= result!128370 (and (inv!25261 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 token!523))) (value!108710 token!523))) e!1130562))))

(assert (= tb!106707 b!1766771))

(declare-fun m!2184511 () Bool)

(assert (=> b!1766771 m!2184511))

(declare-fun m!2184513 () Bool)

(assert (=> tb!106707 m!2184513))

(assert (=> d!539782 t!164806))

(declare-fun b_and!133925 () Bool)

(assert (= b_and!133913 (and (=> t!164806 result!128370) b_and!133925)))

(declare-fun tb!106709 () Bool)

(declare-fun t!164808 () Bool)

(assert (=> (and b!1766044 (= (toChars!4857 (transformation!3475 rule!422)) (toChars!4857 (transformation!3475 (rule!5505 token!523)))) t!164808) tb!106709))

(declare-fun result!128372 () Bool)

(assert (= result!128372 result!128370))

(assert (=> d!539782 t!164808))

(declare-fun b_and!133927 () Bool)

(assert (= b_and!133915 (and (=> t!164808 result!128372) b_and!133927)))

(declare-fun t!164810 () Bool)

(declare-fun tb!106711 () Bool)

(assert (=> (and b!1766058 (= (toChars!4857 (transformation!3475 (rule!5505 token!523))) (toChars!4857 (transformation!3475 (rule!5505 token!523)))) t!164810) tb!106711))

(declare-fun result!128374 () Bool)

(assert (= result!128374 result!128370))

(assert (=> d!539782 t!164810))

(declare-fun b_and!133929 () Bool)

(assert (= b_and!133917 (and (=> t!164810 result!128374) b_and!133929)))

(declare-fun m!2184515 () Bool)

(assert (=> d!539782 m!2184515))

(declare-fun m!2184517 () Bool)

(assert (=> d!539782 m!2184517))

(assert (=> b!1766052 d!539782))

(declare-fun d!539784 () Bool)

(declare-fun res!795455 () Bool)

(declare-fun e!1130565 () Bool)

(assert (=> d!539784 (=> (not res!795455) (not e!1130565))))

(assert (=> d!539784 (= res!795455 (not (isEmpty!12273 (originalCharacters!4289 token!523))))))

(assert (=> d!539784 (= (inv!25258 token!523) e!1130565)))

(declare-fun b!1766776 () Bool)

(declare-fun res!795456 () Bool)

(assert (=> b!1766776 (=> (not res!795456) (not e!1130565))))

(assert (=> b!1766776 (= res!795456 (= (originalCharacters!4289 token!523) (list!7893 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 token!523))) (value!108710 token!523)))))))

(declare-fun b!1766777 () Bool)

(assert (=> b!1766777 (= e!1130565 (= (size!15442 token!523) (size!15444 (originalCharacters!4289 token!523))))))

(assert (= (and d!539784 res!795455) b!1766776))

(assert (= (and b!1766776 res!795456) b!1766777))

(declare-fun b_lambda!57397 () Bool)

(assert (=> (not b_lambda!57397) (not b!1766776)))

(assert (=> b!1766776 t!164806))

(declare-fun b_and!133931 () Bool)

(assert (= b_and!133925 (and (=> t!164806 result!128370) b_and!133931)))

(assert (=> b!1766776 t!164808))

(declare-fun b_and!133933 () Bool)

(assert (= b_and!133927 (and (=> t!164808 result!128372) b_and!133933)))

(assert (=> b!1766776 t!164810))

(declare-fun b_and!133935 () Bool)

(assert (= b_and!133929 (and (=> t!164810 result!128374) b_and!133935)))

(declare-fun m!2184519 () Bool)

(assert (=> d!539784 m!2184519))

(assert (=> b!1766776 m!2184517))

(assert (=> b!1766776 m!2184517))

(declare-fun m!2184521 () Bool)

(assert (=> b!1766776 m!2184521))

(declare-fun m!2184523 () Bool)

(assert (=> b!1766777 m!2184523))

(assert (=> start!174998 d!539784))

(declare-fun d!539786 () Bool)

(declare-fun lt!683488 () Bool)

(assert (=> d!539786 (= lt!683488 (select (content!2813 rules!3447) (rule!5505 (_1!10927 lt!683156))))))

(declare-fun e!1130567 () Bool)

(assert (=> d!539786 (= lt!683488 e!1130567)))

(declare-fun res!795458 () Bool)

(assert (=> d!539786 (=> (not res!795458) (not e!1130567))))

(assert (=> d!539786 (= res!795458 ((_ is Cons!19443) rules!3447))))

(assert (=> d!539786 (= (contains!3505 rules!3447 (rule!5505 (_1!10927 lt!683156))) lt!683488)))

(declare-fun b!1766778 () Bool)

(declare-fun e!1130566 () Bool)

(assert (=> b!1766778 (= e!1130567 e!1130566)))

(declare-fun res!795457 () Bool)

(assert (=> b!1766778 (=> res!795457 e!1130566)))

(assert (=> b!1766778 (= res!795457 (= (h!24844 rules!3447) (rule!5505 (_1!10927 lt!683156))))))

(declare-fun b!1766779 () Bool)

(assert (=> b!1766779 (= e!1130566 (contains!3505 (t!164762 rules!3447) (rule!5505 (_1!10927 lt!683156))))))

(assert (= (and d!539786 res!795458) b!1766778))

(assert (= (and b!1766778 (not res!795457)) b!1766779))

(assert (=> d!539786 m!2183827))

(declare-fun m!2184525 () Bool)

(assert (=> d!539786 m!2184525))

(declare-fun m!2184527 () Bool)

(assert (=> b!1766779 m!2184527))

(assert (=> b!1766056 d!539786))

(declare-fun b!1766784 () Bool)

(declare-fun e!1130570 () Bool)

(declare-fun tp!501344 () Bool)

(assert (=> b!1766784 (= e!1130570 (and tp_is_empty!7849 tp!501344))))

(assert (=> b!1766069 (= tp!501281 e!1130570)))

(assert (= (and b!1766069 ((_ is Cons!19441) (t!164760 suffix!1421))) b!1766784))

(declare-fun b!1766796 () Bool)

(declare-fun e!1130573 () Bool)

(declare-fun tp!501359 () Bool)

(declare-fun tp!501357 () Bool)

(assert (=> b!1766796 (= e!1130573 (and tp!501359 tp!501357))))

(assert (=> b!1766068 (= tp!501277 e!1130573)))

(declare-fun b!1766795 () Bool)

(assert (=> b!1766795 (= e!1130573 tp_is_empty!7849)))

(declare-fun b!1766797 () Bool)

(declare-fun tp!501358 () Bool)

(assert (=> b!1766797 (= e!1130573 tp!501358)))

(declare-fun b!1766798 () Bool)

(declare-fun tp!501356 () Bool)

(declare-fun tp!501355 () Bool)

(assert (=> b!1766798 (= e!1130573 (and tp!501356 tp!501355))))

(assert (= (and b!1766068 ((_ is ElementMatch!4803) (regex!3475 (rule!5505 token!523)))) b!1766795))

(assert (= (and b!1766068 ((_ is Concat!8368) (regex!3475 (rule!5505 token!523)))) b!1766796))

(assert (= (and b!1766068 ((_ is Star!4803) (regex!3475 (rule!5505 token!523)))) b!1766797))

(assert (= (and b!1766068 ((_ is Union!4803) (regex!3475 (rule!5505 token!523)))) b!1766798))

(declare-fun tp!501367 () Bool)

(declare-fun tp!501366 () Bool)

(declare-fun b!1766807 () Bool)

(declare-fun e!1130579 () Bool)

(assert (=> b!1766807 (= e!1130579 (and (inv!25260 (left!15566 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156)))))) tp!501366 (inv!25260 (right!15896 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156)))))) tp!501367))))

(declare-fun b!1766809 () Bool)

(declare-fun e!1130578 () Bool)

(declare-fun tp!501368 () Bool)

(assert (=> b!1766809 (= e!1130578 tp!501368)))

(declare-fun b!1766808 () Bool)

(declare-fun inv!25267 (IArray!12939) Bool)

(assert (=> b!1766808 (= e!1130579 (and (inv!25267 (xs!9343 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156)))))) e!1130578))))

(assert (=> b!1766092 (= tp!501286 (and (inv!25260 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156))))) e!1130579))))

(assert (= (and b!1766092 ((_ is Node!6467) (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156)))))) b!1766807))

(assert (= b!1766808 b!1766809))

(assert (= (and b!1766092 ((_ is Leaf!9425) (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (value!108710 (_1!10927 lt!683156)))))) b!1766808))

(declare-fun m!2184529 () Bool)

(assert (=> b!1766807 m!2184529))

(declare-fun m!2184531 () Bool)

(assert (=> b!1766807 m!2184531))

(declare-fun m!2184533 () Bool)

(assert (=> b!1766808 m!2184533))

(assert (=> b!1766092 m!2183491))

(declare-fun b!1766810 () Bool)

(declare-fun e!1130581 () Bool)

(declare-fun tp!501369 () Bool)

(declare-fun tp!501370 () Bool)

(assert (=> b!1766810 (= e!1130581 (and (inv!25260 (left!15566 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167))))) tp!501369 (inv!25260 (right!15896 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167))))) tp!501370))))

(declare-fun b!1766812 () Bool)

(declare-fun e!1130580 () Bool)

(declare-fun tp!501371 () Bool)

(assert (=> b!1766812 (= e!1130580 tp!501371)))

(declare-fun b!1766811 () Bool)

(assert (=> b!1766811 (= e!1130581 (and (inv!25267 (xs!9343 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167))))) e!1130580))))

(assert (=> b!1766089 (= tp!501285 (and (inv!25260 (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167)))) e!1130581))))

(assert (= (and b!1766089 ((_ is Node!6467) (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167))))) b!1766810))

(assert (= b!1766811 b!1766812))

(assert (= (and b!1766089 ((_ is Leaf!9425) (c!287661 (dynLambda!9405 (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) (dynLambda!9406 (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))) lt!683167))))) b!1766811))

(declare-fun m!2184535 () Bool)

(assert (=> b!1766810 m!2184535))

(declare-fun m!2184537 () Bool)

(assert (=> b!1766810 m!2184537))

(declare-fun m!2184539 () Bool)

(assert (=> b!1766811 m!2184539))

(assert (=> b!1766089 m!2183485))

(declare-fun b!1766823 () Bool)

(declare-fun b_free!48871 () Bool)

(declare-fun b_next!49575 () Bool)

(assert (=> b!1766823 (= b_free!48871 (not b_next!49575))))

(declare-fun t!164812 () Bool)

(declare-fun tb!106713 () Bool)

(assert (=> (and b!1766823 (= (toValue!4998 (transformation!3475 (h!24844 (t!164762 rules!3447)))) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164812) tb!106713))

(declare-fun result!128384 () Bool)

(assert (= result!128384 result!128306))

(assert (=> d!539764 t!164812))

(assert (=> d!539600 t!164812))

(assert (=> d!539606 t!164812))

(declare-fun tb!106715 () Bool)

(declare-fun t!164814 () Bool)

(assert (=> (and b!1766823 (= (toValue!4998 (transformation!3475 (h!24844 (t!164762 rules!3447)))) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164814) tb!106715))

(declare-fun result!128386 () Bool)

(assert (= result!128386 result!128338))

(assert (=> d!539600 t!164814))

(assert (=> b!1766054 t!164812))

(declare-fun tb!106717 () Bool)

(declare-fun t!164816 () Bool)

(assert (=> (and b!1766823 (= (toValue!4998 (transformation!3475 (h!24844 (t!164762 rules!3447)))) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164816) tb!106717))

(declare-fun result!128388 () Bool)

(assert (= result!128388 result!128332))

(assert (=> d!539572 t!164816))

(declare-fun tp!501382 () Bool)

(declare-fun b_and!133937 () Bool)

(assert (=> b!1766823 (= tp!501382 (and (=> t!164814 result!128386) (=> t!164816 result!128388) (=> t!164812 result!128384) b_and!133937))))

(declare-fun b_free!48873 () Bool)

(declare-fun b_next!49577 () Bool)

(assert (=> b!1766823 (= b_free!48873 (not b_next!49577))))

(declare-fun tb!106719 () Bool)

(declare-fun t!164818 () Bool)

(assert (=> (and b!1766823 (= (toChars!4857 (transformation!3475 (h!24844 (t!164762 rules!3447)))) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164818) tb!106719))

(declare-fun result!128390 () Bool)

(assert (= result!128390 result!128314))

(assert (=> d!539660 t!164818))

(declare-fun t!164820 () Bool)

(declare-fun tb!106721 () Bool)

(assert (=> (and b!1766823 (= (toChars!4857 (transformation!3475 (h!24844 (t!164762 rules!3447)))) (toChars!4857 (transformation!3475 (rule!5505 token!523)))) t!164820) tb!106721))

(declare-fun result!128392 () Bool)

(assert (= result!128392 result!128370))

(assert (=> d!539782 t!164820))

(declare-fun tb!106723 () Bool)

(declare-fun t!164822 () Bool)

(assert (=> (and b!1766823 (= (toChars!4857 (transformation!3475 (h!24844 (t!164762 rules!3447)))) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156))))) t!164822) tb!106723))

(declare-fun result!128394 () Bool)

(assert (= result!128394 result!128298))

(assert (=> d!539764 t!164822))

(assert (=> b!1766054 t!164822))

(assert (=> b!1766776 t!164820))

(assert (=> b!1766055 t!164818))

(declare-fun b_and!133939 () Bool)

(declare-fun tp!501381 () Bool)

(assert (=> b!1766823 (= tp!501381 (and (=> t!164820 result!128392) (=> t!164822 result!128394) (=> t!164818 result!128390) b_and!133939))))

(declare-fun e!1130590 () Bool)

(assert (=> b!1766823 (= e!1130590 (and tp!501382 tp!501381))))

(declare-fun tp!501383 () Bool)

(declare-fun e!1130592 () Bool)

(declare-fun b!1766822 () Bool)

(assert (=> b!1766822 (= e!1130592 (and tp!501383 (inv!25253 (tag!3849 (h!24844 (t!164762 rules!3447)))) (inv!25259 (transformation!3475 (h!24844 (t!164762 rules!3447)))) e!1130590))))

(declare-fun b!1766821 () Bool)

(declare-fun e!1130591 () Bool)

(declare-fun tp!501380 () Bool)

(assert (=> b!1766821 (= e!1130591 (and e!1130592 tp!501380))))

(assert (=> b!1766072 (= tp!501271 e!1130591)))

(assert (= b!1766822 b!1766823))

(assert (= b!1766821 b!1766822))

(assert (= (and b!1766072 ((_ is Cons!19443) (t!164762 rules!3447))) b!1766821))

(declare-fun m!2184541 () Bool)

(assert (=> b!1766822 m!2184541))

(declare-fun m!2184543 () Bool)

(assert (=> b!1766822 m!2184543))

(declare-fun b!1766825 () Bool)

(declare-fun e!1130594 () Bool)

(declare-fun tp!501388 () Bool)

(declare-fun tp!501386 () Bool)

(assert (=> b!1766825 (= e!1130594 (and tp!501388 tp!501386))))

(assert (=> b!1766066 (= tp!501274 e!1130594)))

(declare-fun b!1766824 () Bool)

(assert (=> b!1766824 (= e!1130594 tp_is_empty!7849)))

(declare-fun b!1766826 () Bool)

(declare-fun tp!501387 () Bool)

(assert (=> b!1766826 (= e!1130594 tp!501387)))

(declare-fun b!1766827 () Bool)

(declare-fun tp!501385 () Bool)

(declare-fun tp!501384 () Bool)

(assert (=> b!1766827 (= e!1130594 (and tp!501385 tp!501384))))

(assert (= (and b!1766066 ((_ is ElementMatch!4803) (regex!3475 (h!24844 rules!3447)))) b!1766824))

(assert (= (and b!1766066 ((_ is Concat!8368) (regex!3475 (h!24844 rules!3447)))) b!1766825))

(assert (= (and b!1766066 ((_ is Star!4803) (regex!3475 (h!24844 rules!3447)))) b!1766826))

(assert (= (and b!1766066 ((_ is Union!4803) (regex!3475 (h!24844 rules!3447)))) b!1766827))

(declare-fun b!1766828 () Bool)

(declare-fun e!1130595 () Bool)

(declare-fun tp!501389 () Bool)

(assert (=> b!1766828 (= e!1130595 (and tp_is_empty!7849 tp!501389))))

(assert (=> b!1766050 (= tp!501276 e!1130595)))

(assert (= (and b!1766050 ((_ is Cons!19441) (originalCharacters!4289 token!523))) b!1766828))

(declare-fun b!1766830 () Bool)

(declare-fun e!1130596 () Bool)

(declare-fun tp!501394 () Bool)

(declare-fun tp!501392 () Bool)

(assert (=> b!1766830 (= e!1130596 (and tp!501394 tp!501392))))

(assert (=> b!1766065 (= tp!501282 e!1130596)))

(declare-fun b!1766829 () Bool)

(assert (=> b!1766829 (= e!1130596 tp_is_empty!7849)))

(declare-fun b!1766831 () Bool)

(declare-fun tp!501393 () Bool)

(assert (=> b!1766831 (= e!1130596 tp!501393)))

(declare-fun b!1766832 () Bool)

(declare-fun tp!501391 () Bool)

(declare-fun tp!501390 () Bool)

(assert (=> b!1766832 (= e!1130596 (and tp!501391 tp!501390))))

(assert (= (and b!1766065 ((_ is ElementMatch!4803) (regex!3475 rule!422))) b!1766829))

(assert (= (and b!1766065 ((_ is Concat!8368) (regex!3475 rule!422))) b!1766830))

(assert (= (and b!1766065 ((_ is Star!4803) (regex!3475 rule!422))) b!1766831))

(assert (= (and b!1766065 ((_ is Union!4803) (regex!3475 rule!422))) b!1766832))

(declare-fun b_lambda!57399 () Bool)

(assert (= b_lambda!57397 (or (and b!1766057 b_free!48857 (= (toChars!4857 (transformation!3475 (h!24844 rules!3447))) (toChars!4857 (transformation!3475 (rule!5505 token!523))))) (and b!1766044 b_free!48861 (= (toChars!4857 (transformation!3475 rule!422)) (toChars!4857 (transformation!3475 (rule!5505 token!523))))) (and b!1766058 b_free!48865) (and b!1766823 b_free!48873 (= (toChars!4857 (transformation!3475 (h!24844 (t!164762 rules!3447)))) (toChars!4857 (transformation!3475 (rule!5505 token!523))))) b_lambda!57399)))

(declare-fun b_lambda!57401 () Bool)

(assert (= b_lambda!57395 (or (and b!1766057 b_free!48857 (= (toChars!4857 (transformation!3475 (h!24844 rules!3447))) (toChars!4857 (transformation!3475 (rule!5505 token!523))))) (and b!1766044 b_free!48861 (= (toChars!4857 (transformation!3475 rule!422)) (toChars!4857 (transformation!3475 (rule!5505 token!523))))) (and b!1766058 b_free!48865) (and b!1766823 b_free!48873 (= (toChars!4857 (transformation!3475 (h!24844 (t!164762 rules!3447)))) (toChars!4857 (transformation!3475 (rule!5505 token!523))))) b_lambda!57401)))

(declare-fun b_lambda!57403 () Bool)

(assert (= b_lambda!57347 (or (and b!1766057 b_free!48857 (= (toChars!4857 (transformation!3475 (h!24844 rules!3447))) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))))) (and b!1766044 b_free!48861 (= (toChars!4857 (transformation!3475 rule!422)) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))))) (and b!1766058 b_free!48865 (= (toChars!4857 (transformation!3475 (rule!5505 token!523))) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))))) (and b!1766823 b_free!48873 (= (toChars!4857 (transformation!3475 (h!24844 (t!164762 rules!3447)))) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))))) b_lambda!57403)))

(declare-fun b_lambda!57405 () Bool)

(assert (= b_lambda!57351 (or (and b!1766057 b_free!48857 (= (toChars!4857 (transformation!3475 (h!24844 rules!3447))) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))))) (and b!1766044 b_free!48861 (= (toChars!4857 (transformation!3475 rule!422)) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))))) (and b!1766058 b_free!48865 (= (toChars!4857 (transformation!3475 (rule!5505 token!523))) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))))) (and b!1766823 b_free!48873 (= (toChars!4857 (transformation!3475 (h!24844 (t!164762 rules!3447)))) (toChars!4857 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))))) b_lambda!57405)))

(declare-fun b_lambda!57407 () Bool)

(assert (= b_lambda!57349 (or (and b!1766057 b_free!48855 (= (toValue!4998 (transformation!3475 (h!24844 rules!3447))) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))))) (and b!1766044 b_free!48859 (= (toValue!4998 (transformation!3475 rule!422)) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))))) (and b!1766058 b_free!48863 (= (toValue!4998 (transformation!3475 (rule!5505 token!523))) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))))) (and b!1766823 b_free!48871 (= (toValue!4998 (transformation!3475 (h!24844 (t!164762 rules!3447)))) (toValue!4998 (transformation!3475 (rule!5505 (_1!10927 lt!683156)))))) b_lambda!57407)))

(check-sat (not d!539576) (not b!1766387) (not d!539526) (not b_next!49559) (not b!1766427) (not b!1766089) (not d!539784) (not b!1766808) (not b!1766706) b_and!133939 b_and!133923 (not b_lambda!57369) (not b!1766098) (not b!1766444) (not d!539668) (not b!1766737) b_and!133919 (not b!1766431) (not b!1766691) (not b_lambda!57379) (not b!1766826) (not b!1766294) (not b!1766655) (not b!1766295) (not d!539742) (not b!1766692) (not b!1766830) (not b!1766400) (not tb!106683) (not b!1766687) (not b!1766689) (not b!1766412) (not b!1766708) (not b!1766258) (not d!539658) (not b!1766810) (not b!1766784) (not b!1766807) (not b!1766779) (not d!539758) (not d!539610) (not d!539750) (not b!1766536) (not b_next!49577) (not d!539674) (not d!539660) (not d!539766) (not d!539608) (not b_next!49567) (not d!539786) (not b!1766701) (not b!1766765) b_and!133921 (not b!1766426) (not b!1766752) (not d!539744) (not d!539754) (not b_lambda!57401) (not b!1766764) (not bm!110869) (not b_next!49561) (not b!1766711) (not b!1766710) (not b!1766658) (not d!539514) (not b!1766388) (not b!1766700) (not b!1766754) (not b_lambda!57393) (not b!1766278) (not b!1766386) (not b!1766246) (not b!1766831) (not b!1766445) (not bm!110862) (not b!1766827) (not b!1766434) (not b!1766822) (not d!539580) (not bm!110868) (not b_next!49575) (not b!1766825) (not b!1766757) (not tb!106707) (not d!539728) (not b!1766241) (not b!1766688) (not b_lambda!57373) (not b!1766541) (not b!1766832) (not b!1766699) (not b!1766572) (not b!1766092) (not d!539778) b_and!133933 (not b!1766537) (not d!539662) (not b!1766828) (not d!539732) (not b!1766777) (not b!1766728) (not b!1766697) (not b!1766766) (not b!1766721) (not b_lambda!57407) (not d!539772) (not b_lambda!57405) (not b!1766770) (not d!539756) (not d!539718) (not b!1766796) (not bm!110870) tp_is_empty!7849 (not d!539762) (not b!1766280) (not d!539780) (not b!1766534) (not b!1766443) (not b!1766707) (not d!539656) (not b!1766762) (not b!1766401) (not d!539534) (not b_next!49565) (not d!539764) (not b!1766771) (not d!539768) (not d!539670) (not d!539598) (not d!539604) (not d!539574) (not b!1766433) b_and!133935 (not b_lambda!57371) (not b!1766723) (not b!1766265) (not b!1766539) (not b!1766248) (not b!1766659) (not d!539752) (not b!1766279) (not b_next!49569) (not b!1766249) (not b!1766797) (not d!539738) (not b!1766776) (not d!539664) (not b_lambda!57403) (not b!1766751) (not b!1766542) (not b!1766267) (not b!1766767) (not b!1766245) (not b!1766399) (not b!1766769) (not b!1766540) (not d!539730) (not b!1766255) (not d!539776) b_and!133931 (not b!1766656) (not b!1766652) (not tb!106677) (not b!1766685) (not b!1766768) (not b!1766571) b_and!133937 (not d!539666) (not d!539782) (not d!539724) (not b!1766411) (not b_lambda!57399) (not bm!110867) (not d!539584) (not b!1766243) (not d!539760) (not b_lambda!57375) (not b!1766798) (not d!539596) (not b!1766727) (not b!1766654) (not bm!110871) (not b!1766538) (not b!1766155) (not b!1766821) (not b!1766725) (not b!1766242) (not d!539600) (not b_next!49563) (not b_lambda!57391) (not d!539746) (not b!1766755) (not b!1766724) (not b!1766704) (not b!1766759) (not b!1766809) (not b!1766570) (not b!1766718) (not b!1766741) (not b!1766758) (not b!1766244) (not b!1766811) (not b!1766812) (not d!539602))
(check-sat (not b_next!49577) (not b_next!49567) b_and!133921 (not b_next!49561) (not b_next!49575) b_and!133933 (not b_next!49565) b_and!133935 (not b_next!49569) b_and!133931 b_and!133937 (not b_next!49563) (not b_next!49559) b_and!133939 b_and!133923 b_and!133919)
