; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!176102 () Bool)

(assert start!176102)

(declare-fun b!1773810 () Bool)

(declare-fun b_free!49119 () Bool)

(declare-fun b_next!49823 () Bool)

(assert (=> b!1773810 (= b_free!49119 (not b_next!49823))))

(declare-fun tp!502758 () Bool)

(declare-fun b_and!135163 () Bool)

(assert (=> b!1773810 (= tp!502758 b_and!135163)))

(declare-fun b_free!49121 () Bool)

(declare-fun b_next!49825 () Bool)

(assert (=> b!1773810 (= b_free!49121 (not b_next!49825))))

(declare-fun tp!502747 () Bool)

(declare-fun b_and!135165 () Bool)

(assert (=> b!1773810 (= tp!502747 b_and!135165)))

(declare-fun b!1773815 () Bool)

(declare-fun b_free!49123 () Bool)

(declare-fun b_next!49827 () Bool)

(assert (=> b!1773815 (= b_free!49123 (not b_next!49827))))

(declare-fun tp!502757 () Bool)

(declare-fun b_and!135167 () Bool)

(assert (=> b!1773815 (= tp!502757 b_and!135167)))

(declare-fun b_free!49125 () Bool)

(declare-fun b_next!49829 () Bool)

(assert (=> b!1773815 (= b_free!49125 (not b_next!49829))))

(declare-fun tp!502753 () Bool)

(declare-fun b_and!135169 () Bool)

(assert (=> b!1773815 (= tp!502753 b_and!135169)))

(declare-fun b!1773829 () Bool)

(declare-fun b_free!49127 () Bool)

(declare-fun b_next!49831 () Bool)

(assert (=> b!1773829 (= b_free!49127 (not b_next!49831))))

(declare-fun tp!502755 () Bool)

(declare-fun b_and!135171 () Bool)

(assert (=> b!1773829 (= tp!502755 b_and!135171)))

(declare-fun b_free!49129 () Bool)

(declare-fun b_next!49833 () Bool)

(assert (=> b!1773829 (= b_free!49129 (not b_next!49833))))

(declare-fun tp!502750 () Bool)

(declare-fun b_and!135173 () Bool)

(assert (=> b!1773829 (= tp!502750 b_and!135173)))

(declare-fun b!1773850 () Bool)

(declare-fun e!1135089 () Bool)

(assert (=> b!1773850 (= e!1135089 true)))

(declare-fun b!1773849 () Bool)

(declare-fun e!1135088 () Bool)

(assert (=> b!1773849 (= e!1135088 e!1135089)))

(declare-fun b!1773848 () Bool)

(declare-fun e!1135087 () Bool)

(assert (=> b!1773848 (= e!1135087 e!1135088)))

(declare-fun b!1773817 () Bool)

(assert (=> b!1773817 e!1135087))

(assert (= b!1773849 b!1773850))

(assert (= b!1773848 b!1773849))

(assert (= b!1773817 b!1773848))

(declare-fun lambda!70496 () Int)

(declare-fun order!12499 () Int)

(declare-datatypes ((List!19595 0))(
  ( (Nil!19525) (Cons!19525 (h!24926 (_ BitVec 16)) (t!165678 List!19595)) )
))
(declare-datatypes ((TokenValue!3583 0))(
  ( (FloatLiteralValue!7166 (text!25526 List!19595)) (TokenValueExt!3582 (__x!12468 Int)) (Broken!17915 (value!109197 List!19595)) (Object!3652) (End!3583) (Def!3583) (Underscore!3583) (Match!3583) (Else!3583) (Error!3583) (Case!3583) (If!3583) (Extends!3583) (Abstract!3583) (Class!3583) (Val!3583) (DelimiterValue!7166 (del!3643 List!19595)) (KeywordValue!3589 (value!109198 List!19595)) (CommentValue!7166 (value!109199 List!19595)) (WhitespaceValue!7166 (value!109200 List!19595)) (IndentationValue!3583 (value!109201 List!19595)) (String!22246) (Int32!3583) (Broken!17916 (value!109202 List!19595)) (Boolean!3584) (Unit!33741) (OperatorValue!3586 (op!3643 List!19595)) (IdentifierValue!7166 (value!109203 List!19595)) (IdentifierValue!7167 (value!109204 List!19595)) (WhitespaceValue!7167 (value!109205 List!19595)) (True!7166) (False!7166) (Broken!17917 (value!109206 List!19595)) (Broken!17918 (value!109207 List!19595)) (True!7167) (RightBrace!3583) (RightBracket!3583) (Colon!3583) (Null!3583) (Comma!3583) (LeftBracket!3583) (False!7167) (LeftBrace!3583) (ImaginaryLiteralValue!3583 (text!25527 List!19595)) (StringLiteralValue!10749 (value!109208 List!19595)) (EOFValue!3583 (value!109209 List!19595)) (IdentValue!3583 (value!109210 List!19595)) (DelimiterValue!7167 (value!109211 List!19595)) (DedentValue!3583 (value!109212 List!19595)) (NewLineValue!3583 (value!109213 List!19595)) (IntegerValue!10749 (value!109214 (_ BitVec 32)) (text!25528 List!19595)) (IntegerValue!10750 (value!109215 Int) (text!25529 List!19595)) (Times!3583) (Or!3583) (Equal!3583) (Minus!3583) (Broken!17919 (value!109216 List!19595)) (And!3583) (Div!3583) (LessEqual!3583) (Mod!3583) (Concat!8404) (Not!3583) (Plus!3583) (SpaceValue!3583 (value!109217 List!19595)) (IntegerValue!10751 (value!109218 Int) (text!25530 List!19595)) (StringLiteralValue!10750 (text!25531 List!19595)) (FloatLiteralValue!7167 (text!25532 List!19595)) (BytesLiteralValue!3583 (value!109219 List!19595)) (CommentValue!7167 (value!109220 List!19595)) (StringLiteralValue!10751 (value!109221 List!19595)) (ErrorTokenValue!3583 (msg!3644 List!19595)) )
))
(declare-datatypes ((C!9816 0))(
  ( (C!9817 (val!5504 Int)) )
))
(declare-datatypes ((List!19596 0))(
  ( (Nil!19526) (Cons!19526 (h!24927 C!9816) (t!165679 List!19596)) )
))
(declare-datatypes ((String!22247 0))(
  ( (String!22248 (value!109222 String)) )
))
(declare-datatypes ((Regex!4821 0))(
  ( (ElementMatch!4821 (c!288836 C!9816)) (Concat!8405 (regOne!10154 Regex!4821) (regTwo!10154 Regex!4821)) (EmptyExpr!4821) (Star!4821 (reg!5150 Regex!4821)) (EmptyLang!4821) (Union!4821 (regOne!10155 Regex!4821) (regTwo!10155 Regex!4821)) )
))
(declare-datatypes ((IArray!12995 0))(
  ( (IArray!12996 (innerList!6555 List!19596)) )
))
(declare-datatypes ((Conc!6495 0))(
  ( (Node!6495 (left!15639 Conc!6495) (right!15969 Conc!6495) (csize!13220 Int) (cheight!6706 Int)) (Leaf!9462 (xs!9371 IArray!12995) (csize!13221 Int)) (Empty!6495) )
))
(declare-datatypes ((BalanceConc!12934 0))(
  ( (BalanceConc!12935 (c!288837 Conc!6495)) )
))
(declare-datatypes ((TokenValueInjection!6826 0))(
  ( (TokenValueInjection!6827 (toValue!5020 Int) (toChars!4879 Int)) )
))
(declare-datatypes ((Rule!6786 0))(
  ( (Rule!6787 (regex!3493 Regex!4821) (tag!3877 String!22247) (isSeparator!3493 Bool) (transformation!3493 TokenValueInjection!6826)) )
))
(declare-datatypes ((Token!6552 0))(
  ( (Token!6553 (value!109223 TokenValue!3583) (rule!5545 Rule!6786) (size!15512 Int) (originalCharacters!4307 List!19596)) )
))
(declare-datatypes ((tuple2!19130 0))(
  ( (tuple2!19131 (_1!10967 Token!6552) (_2!10967 List!19596)) )
))
(declare-fun lt!687234 () tuple2!19130)

(declare-fun order!12501 () Int)

(declare-fun dynLambda!9508 (Int Int) Int)

(declare-fun dynLambda!9509 (Int Int) Int)

(assert (=> b!1773850 (< (dynLambda!9508 order!12499 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) (dynLambda!9509 order!12501 lambda!70496))))

(declare-fun order!12503 () Int)

(declare-fun dynLambda!9510 (Int Int) Int)

(assert (=> b!1773850 (< (dynLambda!9510 order!12503 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) (dynLambda!9509 order!12501 lambda!70496))))

(declare-fun b!1773808 () Bool)

(declare-fun e!1135071 () Bool)

(declare-fun tp_is_empty!7885 () Bool)

(declare-fun tp!502748 () Bool)

(assert (=> b!1773808 (= e!1135071 (and tp_is_empty!7885 tp!502748))))

(declare-fun b!1773809 () Bool)

(declare-fun e!1135064 () Bool)

(declare-fun e!1135063 () Bool)

(assert (=> b!1773809 (= e!1135064 e!1135063)))

(declare-fun res!798972 () Bool)

(assert (=> b!1773809 (=> res!798972 e!1135063)))

(declare-fun lt!687236 () Int)

(declare-fun lt!687223 () TokenValue!3583)

(declare-fun lt!687250 () List!19596)

(declare-datatypes ((Option!4008 0))(
  ( (None!4007) (Some!4007 (v!25486 tuple2!19130)) )
))
(declare-fun lt!687216 () Option!4008)

(assert (=> b!1773809 (= res!798972 (not (= lt!687216 (Some!4007 (tuple2!19131 (Token!6553 lt!687223 (rule!5545 (_1!10967 lt!687234)) lt!687236 lt!687250) (_2!10967 lt!687234))))))))

(declare-fun lt!687249 () BalanceConc!12934)

(declare-fun size!15513 (BalanceConc!12934) Int)

(assert (=> b!1773809 (= lt!687236 (size!15513 lt!687249))))

(declare-fun apply!5293 (TokenValueInjection!6826 BalanceConc!12934) TokenValue!3583)

(assert (=> b!1773809 (= lt!687223 (apply!5293 (transformation!3493 (rule!5545 (_1!10967 lt!687234))) lt!687249))))

(declare-datatypes ((Unit!33742 0))(
  ( (Unit!33743) )
))
(declare-fun lt!687237 () Unit!33742)

(declare-fun lemmaCharactersSize!551 (Token!6552) Unit!33742)

(assert (=> b!1773809 (= lt!687237 (lemmaCharactersSize!551 (_1!10967 lt!687234)))))

(declare-fun lt!687251 () Unit!33742)

(declare-fun lemmaEqSameImage!404 (TokenValueInjection!6826 BalanceConc!12934 BalanceConc!12934) Unit!33742)

(declare-fun seqFromList!2462 (List!19596) BalanceConc!12934)

(assert (=> b!1773809 (= lt!687251 (lemmaEqSameImage!404 (transformation!3493 (rule!5545 (_1!10967 lt!687234))) lt!687249 (seqFromList!2462 (originalCharacters!4307 (_1!10967 lt!687234)))))))

(declare-fun e!1135068 () Bool)

(assert (=> b!1773810 (= e!1135068 (and tp!502758 tp!502747))))

(declare-fun b!1773811 () Bool)

(declare-fun e!1135073 () Bool)

(declare-fun e!1135067 () Bool)

(assert (=> b!1773811 (= e!1135073 e!1135067)))

(declare-fun res!798969 () Bool)

(assert (=> b!1773811 (=> (not res!798969) (not e!1135067))))

(declare-fun lt!687240 () Rule!6786)

(declare-fun matchR!2294 (Regex!4821 List!19596) Bool)

(declare-fun list!7935 (BalanceConc!12934) List!19596)

(declare-fun charsOf!2142 (Token!6552) BalanceConc!12934)

(assert (=> b!1773811 (= res!798969 (matchR!2294 (regex!3493 lt!687240) (list!7935 (charsOf!2142 (_1!10967 lt!687234)))))))

(declare-datatypes ((Option!4009 0))(
  ( (None!4008) (Some!4008 (v!25487 Rule!6786)) )
))
(declare-fun lt!687254 () Option!4009)

(declare-fun get!5972 (Option!4009) Rule!6786)

(assert (=> b!1773811 (= lt!687240 (get!5972 lt!687254))))

(declare-fun tp!502754 () Bool)

(declare-datatypes ((List!19597 0))(
  ( (Nil!19527) (Cons!19527 (h!24928 Rule!6786) (t!165680 List!19597)) )
))
(declare-fun rules!3447 () List!19597)

(declare-fun e!1135070 () Bool)

(declare-fun b!1773812 () Bool)

(declare-fun e!1135062 () Bool)

(declare-fun inv!25380 (String!22247) Bool)

(declare-fun inv!25385 (TokenValueInjection!6826) Bool)

(assert (=> b!1773812 (= e!1135070 (and tp!502754 (inv!25380 (tag!3877 (h!24928 rules!3447))) (inv!25385 (transformation!3493 (h!24928 rules!3447))) e!1135062))))

(declare-fun b!1773813 () Bool)

(declare-fun e!1135061 () Bool)

(declare-fun e!1135077 () Bool)

(assert (=> b!1773813 (= e!1135061 e!1135077)))

(declare-fun res!798988 () Bool)

(assert (=> b!1773813 (=> (not res!798988) (not e!1135077))))

(declare-fun lt!687215 () tuple2!19130)

(declare-fun token!523 () Token!6552)

(assert (=> b!1773813 (= res!798988 (= (_1!10967 lt!687215) token!523))))

(declare-fun lt!687239 () Option!4008)

(declare-fun get!5973 (Option!4008) tuple2!19130)

(assert (=> b!1773813 (= lt!687215 (get!5973 lt!687239))))

(declare-fun res!798980 () Bool)

(declare-fun e!1135080 () Bool)

(assert (=> start!176102 (=> (not res!798980) (not e!1135080))))

(declare-datatypes ((LexerInterface!3122 0))(
  ( (LexerInterfaceExt!3119 (__x!12469 Int)) (Lexer!3120) )
))
(declare-fun thiss!24550 () LexerInterface!3122)

(get-info :version)

(assert (=> start!176102 (= res!798980 ((_ is Lexer!3120) thiss!24550))))

(assert (=> start!176102 e!1135080))

(assert (=> start!176102 e!1135071))

(declare-fun e!1135076 () Bool)

(assert (=> start!176102 e!1135076))

(assert (=> start!176102 true))

(declare-fun e!1135079 () Bool)

(declare-fun inv!25386 (Token!6552) Bool)

(assert (=> start!176102 (and (inv!25386 token!523) e!1135079)))

(declare-fun e!1135057 () Bool)

(assert (=> start!176102 e!1135057))

(declare-fun b!1773814 () Bool)

(assert (=> b!1773814 (= e!1135080 e!1135061)))

(declare-fun res!798987 () Bool)

(assert (=> b!1773814 (=> (not res!798987) (not e!1135061))))

(declare-fun isDefined!3351 (Option!4008) Bool)

(assert (=> b!1773814 (= res!798987 (isDefined!3351 lt!687239))))

(declare-fun lt!687220 () List!19596)

(declare-fun maxPrefix!1676 (LexerInterface!3122 List!19597 List!19596) Option!4008)

(assert (=> b!1773814 (= lt!687239 (maxPrefix!1676 thiss!24550 rules!3447 lt!687220))))

(declare-fun lt!687224 () BalanceConc!12934)

(assert (=> b!1773814 (= lt!687220 (list!7935 lt!687224))))

(assert (=> b!1773814 (= lt!687224 (charsOf!2142 token!523))))

(declare-fun e!1135066 () Bool)

(assert (=> b!1773815 (= e!1135066 (and tp!502757 tp!502753))))

(declare-fun b!1773816 () Bool)

(declare-fun e!1135069 () Bool)

(assert (=> b!1773816 (= e!1135069 e!1135064)))

(declare-fun res!798976 () Bool)

(assert (=> b!1773816 (=> res!798976 e!1135064)))

(declare-fun dynLambda!9511 (Int TokenValue!3583) BalanceConc!12934)

(declare-fun dynLambda!9512 (Int BalanceConc!12934) TokenValue!3583)

(assert (=> b!1773816 (= res!798976 (not (= (list!7935 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249))) lt!687250)))))

(declare-fun lt!687218 () Unit!33742)

(declare-fun lemmaSemiInverse!631 (TokenValueInjection!6826 BalanceConc!12934) Unit!33742)

(assert (=> b!1773816 (= lt!687218 (lemmaSemiInverse!631 (transformation!3493 (rule!5545 (_1!10967 lt!687234))) lt!687249))))

(declare-fun e!1135074 () Bool)

(assert (=> b!1773817 (= e!1135074 e!1135069)))

(declare-fun res!798986 () Bool)

(assert (=> b!1773817 (=> res!798986 e!1135069)))

(declare-fun Forall!860 (Int) Bool)

(assert (=> b!1773817 (= res!798986 (not (Forall!860 lambda!70496)))))

(declare-fun lt!687232 () Unit!33742)

(declare-fun lemmaInv!692 (TokenValueInjection!6826) Unit!33742)

(assert (=> b!1773817 (= lt!687232 (lemmaInv!692 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))))))

(declare-fun b!1773818 () Bool)

(declare-fun e!1135055 () Bool)

(declare-fun tp!502752 () Bool)

(declare-fun inv!21 (TokenValue!3583) Bool)

(assert (=> b!1773818 (= e!1135079 (and (inv!21 (value!109223 token!523)) e!1135055 tp!502752))))

(declare-fun b!1773819 () Bool)

(assert (=> b!1773819 (= e!1135067 (= (rule!5545 (_1!10967 lt!687234)) lt!687240))))

(declare-fun b!1773820 () Bool)

(declare-fun e!1135060 () Bool)

(assert (=> b!1773820 (= e!1135060 e!1135074)))

(declare-fun res!798973 () Bool)

(assert (=> b!1773820 (=> res!798973 e!1135074)))

(declare-fun lt!687238 () List!19596)

(declare-fun isPrefix!1733 (List!19596 List!19596) Bool)

(assert (=> b!1773820 (= res!798973 (not (isPrefix!1733 lt!687250 lt!687238)))))

(declare-fun ++!5317 (List!19596 List!19596) List!19596)

(assert (=> b!1773820 (isPrefix!1733 lt!687250 (++!5317 lt!687250 (_2!10967 lt!687234)))))

(declare-fun lt!687227 () Unit!33742)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1242 (List!19596 List!19596) Unit!33742)

(assert (=> b!1773820 (= lt!687227 (lemmaConcatTwoListThenFirstIsPrefix!1242 lt!687250 (_2!10967 lt!687234)))))

(assert (=> b!1773820 (= lt!687250 (list!7935 lt!687249))))

(assert (=> b!1773820 (= lt!687249 (charsOf!2142 (_1!10967 lt!687234)))))

(assert (=> b!1773820 e!1135073))

(declare-fun res!798979 () Bool)

(assert (=> b!1773820 (=> (not res!798979) (not e!1135073))))

(declare-fun isDefined!3352 (Option!4009) Bool)

(assert (=> b!1773820 (= res!798979 (isDefined!3352 lt!687254))))

(declare-fun getRuleFromTag!541 (LexerInterface!3122 List!19597 String!22247) Option!4009)

(assert (=> b!1773820 (= lt!687254 (getRuleFromTag!541 thiss!24550 rules!3447 (tag!3877 (rule!5545 (_1!10967 lt!687234)))))))

(declare-fun lt!687233 () Unit!33742)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!541 (LexerInterface!3122 List!19597 List!19596 Token!6552) Unit!33742)

(assert (=> b!1773820 (= lt!687233 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!541 thiss!24550 rules!3447 lt!687238 (_1!10967 lt!687234)))))

(assert (=> b!1773820 (= lt!687234 (get!5973 lt!687216))))

(declare-fun suffix!1421 () List!19596)

(declare-fun lt!687230 () Unit!33742)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!644 (LexerInterface!3122 List!19597 List!19596 List!19596) Unit!33742)

(assert (=> b!1773820 (= lt!687230 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!644 thiss!24550 rules!3447 lt!687220 suffix!1421))))

(assert (=> b!1773820 (= lt!687216 (maxPrefix!1676 thiss!24550 rules!3447 lt!687238))))

(assert (=> b!1773820 (isPrefix!1733 lt!687220 lt!687238)))

(declare-fun lt!687247 () Unit!33742)

(assert (=> b!1773820 (= lt!687247 (lemmaConcatTwoListThenFirstIsPrefix!1242 lt!687220 suffix!1421))))

(assert (=> b!1773820 (= lt!687238 (++!5317 lt!687220 suffix!1421))))

(declare-fun b!1773821 () Bool)

(declare-fun res!798974 () Bool)

(assert (=> b!1773821 (=> res!798974 e!1135074)))

(assert (=> b!1773821 (= res!798974 (not (matchR!2294 (regex!3493 (rule!5545 (_1!10967 lt!687234))) lt!687250)))))

(declare-fun b!1773822 () Bool)

(declare-fun e!1135065 () Unit!33742)

(declare-fun Unit!33744 () Unit!33742)

(assert (=> b!1773822 (= e!1135065 Unit!33744)))

(declare-fun lt!687225 () Unit!33742)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!200 (LexerInterface!3122 List!19597 List!19596 Token!6552 Rule!6786 List!19596) Unit!33742)

(assert (=> b!1773822 (= lt!687225 (lemmaMaxPrefixThenMatchesRulesRegex!200 thiss!24550 rules!3447 lt!687238 (_1!10967 lt!687234) (rule!5545 (_1!10967 lt!687234)) (_2!10967 lt!687234)))))

(declare-fun lt!687241 () Regex!4821)

(assert (=> b!1773822 (matchR!2294 lt!687241 lt!687250)))

(declare-fun lt!687253 () List!19596)

(declare-fun getSuffix!900 (List!19596 List!19596) List!19596)

(assert (=> b!1773822 (= lt!687253 (getSuffix!900 lt!687238 lt!687220))))

(declare-fun lt!687252 () Unit!33742)

(declare-fun lemmaSamePrefixThenSameSuffix!844 (List!19596 List!19596 List!19596 List!19596 List!19596) Unit!33742)

(assert (=> b!1773822 (= lt!687252 (lemmaSamePrefixThenSameSuffix!844 lt!687220 suffix!1421 lt!687220 lt!687253 lt!687238))))

(assert (=> b!1773822 (= suffix!1421 lt!687253)))

(declare-fun lt!687243 () Unit!33742)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!269 (List!19596 List!19596) Unit!33742)

(assert (=> b!1773822 (= lt!687243 (lemmaAddHeadSuffixToPrefixStillPrefix!269 lt!687220 lt!687238))))

(declare-fun head!4128 (List!19596) C!9816)

(assert (=> b!1773822 (isPrefix!1733 (++!5317 lt!687220 (Cons!19526 (head!4128 lt!687253) Nil!19526)) lt!687238)))

(declare-fun lt!687228 () List!19596)

(declare-fun lt!687231 () Unit!33742)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!141 (List!19596 List!19596 List!19596) Unit!33742)

(assert (=> b!1773822 (= lt!687231 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!141 lt!687250 lt!687228 lt!687238))))

(assert (=> b!1773822 (isPrefix!1733 lt!687228 lt!687250)))

(declare-fun lt!687217 () Unit!33742)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!132 (Regex!4821 List!19596 List!19596) Unit!33742)

(assert (=> b!1773822 (= lt!687217 (lemmaNotPrefixMatchThenCannotMatchLonger!132 lt!687241 lt!687228 lt!687250))))

(assert (=> b!1773822 false))

(declare-fun rule!422 () Rule!6786)

(declare-fun tp!502751 () Bool)

(declare-fun b!1773823 () Bool)

(assert (=> b!1773823 (= e!1135076 (and tp!502751 (inv!25380 (tag!3877 rule!422)) (inv!25385 (transformation!3493 rule!422)) e!1135068))))

(declare-fun b!1773824 () Bool)

(declare-fun tp!502749 () Bool)

(assert (=> b!1773824 (= e!1135055 (and tp!502749 (inv!25380 (tag!3877 (rule!5545 token!523))) (inv!25385 (transformation!3493 (rule!5545 token!523))) e!1135066))))

(declare-fun b!1773825 () Bool)

(declare-fun e!1135056 () Bool)

(declare-fun e!1135059 () Bool)

(assert (=> b!1773825 (= e!1135056 e!1135059)))

(declare-fun res!798983 () Bool)

(assert (=> b!1773825 (=> res!798983 e!1135059)))

(declare-fun lt!687245 () Bool)

(declare-fun lt!687235 () Int)

(assert (=> b!1773825 (= res!798983 (or lt!687245 (>= lt!687236 lt!687235)))))

(declare-fun lt!687242 () Unit!33742)

(assert (=> b!1773825 (= lt!687242 e!1135065)))

(declare-fun c!288835 () Bool)

(assert (=> b!1773825 (= c!288835 lt!687245)))

(assert (=> b!1773825 (= lt!687245 (> lt!687236 lt!687235))))

(assert (=> b!1773825 (= lt!687235 (size!15513 lt!687224))))

(assert (=> b!1773825 (matchR!2294 lt!687241 lt!687220)))

(declare-fun lt!687229 () Unit!33742)

(assert (=> b!1773825 (= lt!687229 (lemmaMaxPrefixThenMatchesRulesRegex!200 thiss!24550 rules!3447 lt!687220 token!523 rule!422 Nil!19526))))

(declare-fun b!1773826 () Bool)

(declare-fun res!798968 () Bool)

(assert (=> b!1773826 (=> res!798968 e!1135064)))

(assert (=> b!1773826 (= res!798968 (not (= lt!687249 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234))))))))

(declare-fun b!1773827 () Bool)

(declare-fun res!798975 () Bool)

(assert (=> b!1773827 (=> (not res!798975) (not e!1135077))))

(declare-fun isEmpty!12334 (List!19596) Bool)

(assert (=> b!1773827 (= res!798975 (isEmpty!12334 (_2!10967 lt!687215)))))

(declare-fun b!1773828 () Bool)

(declare-fun contains!3525 (List!19597 Rule!6786) Bool)

(assert (=> b!1773828 (= e!1135059 (contains!3525 rules!3447 (rule!5545 (_1!10967 lt!687234))))))

(assert (=> b!1773829 (= e!1135062 (and tp!502755 tp!502750))))

(declare-fun b!1773830 () Bool)

(declare-fun res!798978 () Bool)

(assert (=> b!1773830 (=> (not res!798978) (not e!1135080))))

(declare-fun isEmpty!12335 (List!19597) Bool)

(assert (=> b!1773830 (= res!798978 (not (isEmpty!12335 rules!3447)))))

(declare-fun b!1773831 () Bool)

(declare-fun e!1135078 () Bool)

(assert (=> b!1773831 (= e!1135078 e!1135060)))

(declare-fun res!798985 () Bool)

(assert (=> b!1773831 (=> res!798985 e!1135060)))

(declare-fun prefixMatch!704 (Regex!4821 List!19596) Bool)

(assert (=> b!1773831 (= res!798985 (prefixMatch!704 lt!687241 lt!687228))))

(assert (=> b!1773831 (= lt!687228 (++!5317 lt!687220 (Cons!19526 (head!4128 suffix!1421) Nil!19526)))))

(declare-fun rulesRegex!849 (LexerInterface!3122 List!19597) Regex!4821)

(assert (=> b!1773831 (= lt!687241 (rulesRegex!849 thiss!24550 rules!3447))))

(declare-fun b!1773832 () Bool)

(declare-fun Unit!33745 () Unit!33742)

(assert (=> b!1773832 (= e!1135065 Unit!33745)))

(declare-fun b!1773833 () Bool)

(declare-fun res!798982 () Bool)

(assert (=> b!1773833 (=> (not res!798982) (not e!1135080))))

(declare-fun rulesInvariant!2791 (LexerInterface!3122 List!19597) Bool)

(assert (=> b!1773833 (= res!798982 (rulesInvariant!2791 thiss!24550 rules!3447))))

(declare-fun b!1773834 () Bool)

(assert (=> b!1773834 (= e!1135077 (not e!1135078))))

(declare-fun res!798984 () Bool)

(assert (=> b!1773834 (=> res!798984 e!1135078)))

(assert (=> b!1773834 (= res!798984 (not (matchR!2294 (regex!3493 rule!422) lt!687220)))))

(declare-fun ruleValid!991 (LexerInterface!3122 Rule!6786) Bool)

(assert (=> b!1773834 (ruleValid!991 thiss!24550 rule!422)))

(declare-fun lt!687219 () Unit!33742)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!514 (LexerInterface!3122 Rule!6786 List!19597) Unit!33742)

(assert (=> b!1773834 (= lt!687219 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!514 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1773835 () Bool)

(declare-fun tp!502756 () Bool)

(assert (=> b!1773835 (= e!1135057 (and e!1135070 tp!502756))))

(declare-fun b!1773836 () Bool)

(declare-fun res!798977 () Bool)

(assert (=> b!1773836 (=> (not res!798977) (not e!1135077))))

(assert (=> b!1773836 (= res!798977 (= (rule!5545 token!523) rule!422))))

(declare-fun b!1773837 () Bool)

(declare-fun res!798981 () Bool)

(assert (=> b!1773837 (=> res!798981 e!1135078)))

(assert (=> b!1773837 (= res!798981 (isEmpty!12334 suffix!1421))))

(declare-fun b!1773838 () Bool)

(assert (=> b!1773838 (= e!1135063 e!1135056)))

(declare-fun res!798971 () Bool)

(assert (=> b!1773838 (=> res!798971 e!1135056)))

(declare-fun lt!687221 () Option!4008)

(declare-fun lt!687226 () List!19596)

(assert (=> b!1773838 (= res!798971 (or (not (= lt!687226 (_2!10967 lt!687234))) (not (= lt!687221 (Some!4007 (tuple2!19131 (_1!10967 lt!687234) lt!687226))))))))

(assert (=> b!1773838 (= (_2!10967 lt!687234) lt!687226)))

(declare-fun lt!687222 () Unit!33742)

(assert (=> b!1773838 (= lt!687222 (lemmaSamePrefixThenSameSuffix!844 lt!687250 (_2!10967 lt!687234) lt!687250 lt!687226 lt!687238))))

(assert (=> b!1773838 (= lt!687226 (getSuffix!900 lt!687238 lt!687250))))

(declare-fun lt!687248 () TokenValue!3583)

(declare-fun lt!687244 () Int)

(assert (=> b!1773838 (= lt!687221 (Some!4007 (tuple2!19131 (Token!6553 lt!687248 (rule!5545 (_1!10967 lt!687234)) lt!687244 lt!687250) (_2!10967 lt!687234))))))

(declare-fun maxPrefixOneRule!1045 (LexerInterface!3122 Rule!6786 List!19596) Option!4008)

(assert (=> b!1773838 (= lt!687221 (maxPrefixOneRule!1045 thiss!24550 (rule!5545 (_1!10967 lt!687234)) lt!687238))))

(declare-fun size!15514 (List!19596) Int)

(assert (=> b!1773838 (= lt!687244 (size!15514 lt!687250))))

(assert (=> b!1773838 (= lt!687248 (apply!5293 (transformation!3493 (rule!5545 (_1!10967 lt!687234))) (seqFromList!2462 lt!687250)))))

(declare-fun lt!687246 () Unit!33742)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!423 (LexerInterface!3122 List!19597 List!19596 List!19596 List!19596 Rule!6786) Unit!33742)

(assert (=> b!1773838 (= lt!687246 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!423 thiss!24550 rules!3447 lt!687250 lt!687238 (_2!10967 lt!687234) (rule!5545 (_1!10967 lt!687234))))))

(declare-fun b!1773839 () Bool)

(declare-fun res!798970 () Bool)

(assert (=> b!1773839 (=> (not res!798970) (not e!1135080))))

(assert (=> b!1773839 (= res!798970 (contains!3525 rules!3447 rule!422))))

(assert (= (and start!176102 res!798980) b!1773830))

(assert (= (and b!1773830 res!798978) b!1773833))

(assert (= (and b!1773833 res!798982) b!1773839))

(assert (= (and b!1773839 res!798970) b!1773814))

(assert (= (and b!1773814 res!798987) b!1773813))

(assert (= (and b!1773813 res!798988) b!1773827))

(assert (= (and b!1773827 res!798975) b!1773836))

(assert (= (and b!1773836 res!798977) b!1773834))

(assert (= (and b!1773834 (not res!798984)) b!1773837))

(assert (= (and b!1773837 (not res!798981)) b!1773831))

(assert (= (and b!1773831 (not res!798985)) b!1773820))

(assert (= (and b!1773820 res!798979) b!1773811))

(assert (= (and b!1773811 res!798969) b!1773819))

(assert (= (and b!1773820 (not res!798973)) b!1773821))

(assert (= (and b!1773821 (not res!798974)) b!1773817))

(assert (= (and b!1773817 (not res!798986)) b!1773816))

(assert (= (and b!1773816 (not res!798976)) b!1773826))

(assert (= (and b!1773826 (not res!798968)) b!1773809))

(assert (= (and b!1773809 (not res!798972)) b!1773838))

(assert (= (and b!1773838 (not res!798971)) b!1773825))

(assert (= (and b!1773825 c!288835) b!1773822))

(assert (= (and b!1773825 (not c!288835)) b!1773832))

(assert (= (and b!1773825 (not res!798983)) b!1773828))

(assert (= (and start!176102 ((_ is Cons!19526) suffix!1421)) b!1773808))

(assert (= b!1773823 b!1773810))

(assert (= start!176102 b!1773823))

(assert (= b!1773824 b!1773815))

(assert (= b!1773818 b!1773824))

(assert (= start!176102 b!1773818))

(assert (= b!1773812 b!1773829))

(assert (= b!1773835 b!1773812))

(assert (= (and start!176102 ((_ is Cons!19527) rules!3447)) b!1773835))

(declare-fun b_lambda!57843 () Bool)

(assert (=> (not b_lambda!57843) (not b!1773816)))

(declare-fun tb!107475 () Bool)

(declare-fun t!165661 () Bool)

(assert (=> (and b!1773810 (= (toChars!4879 (transformation!3493 rule!422)) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165661) tb!107475))

(declare-fun tp!502761 () Bool)

(declare-fun e!1135092 () Bool)

(declare-fun b!1773855 () Bool)

(declare-fun inv!25387 (Conc!6495) Bool)

(assert (=> b!1773855 (= e!1135092 (and (inv!25387 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249)))) tp!502761))))

(declare-fun result!129278 () Bool)

(declare-fun inv!25388 (BalanceConc!12934) Bool)

(assert (=> tb!107475 (= result!129278 (and (inv!25388 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249))) e!1135092))))

(assert (= tb!107475 b!1773855))

(declare-fun m!2193587 () Bool)

(assert (=> b!1773855 m!2193587))

(declare-fun m!2193589 () Bool)

(assert (=> tb!107475 m!2193589))

(assert (=> b!1773816 t!165661))

(declare-fun b_and!135175 () Bool)

(assert (= b_and!135165 (and (=> t!165661 result!129278) b_and!135175)))

(declare-fun t!165663 () Bool)

(declare-fun tb!107477 () Bool)

(assert (=> (and b!1773815 (= (toChars!4879 (transformation!3493 (rule!5545 token!523))) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165663) tb!107477))

(declare-fun result!129282 () Bool)

(assert (= result!129282 result!129278))

(assert (=> b!1773816 t!165663))

(declare-fun b_and!135177 () Bool)

(assert (= b_and!135169 (and (=> t!165663 result!129282) b_and!135177)))

(declare-fun t!165665 () Bool)

(declare-fun tb!107479 () Bool)

(assert (=> (and b!1773829 (= (toChars!4879 (transformation!3493 (h!24928 rules!3447))) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165665) tb!107479))

(declare-fun result!129284 () Bool)

(assert (= result!129284 result!129278))

(assert (=> b!1773816 t!165665))

(declare-fun b_and!135179 () Bool)

(assert (= b_and!135173 (and (=> t!165665 result!129284) b_and!135179)))

(declare-fun b_lambda!57845 () Bool)

(assert (=> (not b_lambda!57845) (not b!1773816)))

(declare-fun tb!107481 () Bool)

(declare-fun t!165667 () Bool)

(assert (=> (and b!1773810 (= (toValue!5020 (transformation!3493 rule!422)) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165667) tb!107481))

(declare-fun result!129286 () Bool)

(assert (=> tb!107481 (= result!129286 (inv!21 (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249)))))

(declare-fun m!2193591 () Bool)

(assert (=> tb!107481 m!2193591))

(assert (=> b!1773816 t!165667))

(declare-fun b_and!135181 () Bool)

(assert (= b_and!135163 (and (=> t!165667 result!129286) b_and!135181)))

(declare-fun tb!107483 () Bool)

(declare-fun t!165669 () Bool)

(assert (=> (and b!1773815 (= (toValue!5020 (transformation!3493 (rule!5545 token!523))) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165669) tb!107483))

(declare-fun result!129290 () Bool)

(assert (= result!129290 result!129286))

(assert (=> b!1773816 t!165669))

(declare-fun b_and!135183 () Bool)

(assert (= b_and!135167 (and (=> t!165669 result!129290) b_and!135183)))

(declare-fun t!165671 () Bool)

(declare-fun tb!107485 () Bool)

(assert (=> (and b!1773829 (= (toValue!5020 (transformation!3493 (h!24928 rules!3447))) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165671) tb!107485))

(declare-fun result!129292 () Bool)

(assert (= result!129292 result!129286))

(assert (=> b!1773816 t!165671))

(declare-fun b_and!135185 () Bool)

(assert (= b_and!135171 (and (=> t!165671 result!129292) b_and!135185)))

(declare-fun b_lambda!57847 () Bool)

(assert (=> (not b_lambda!57847) (not b!1773826)))

(declare-fun t!165673 () Bool)

(declare-fun tb!107487 () Bool)

(assert (=> (and b!1773810 (= (toChars!4879 (transformation!3493 rule!422)) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165673) tb!107487))

(declare-fun b!1773858 () Bool)

(declare-fun e!1135096 () Bool)

(declare-fun tp!502762 () Bool)

(assert (=> b!1773858 (= e!1135096 (and (inv!25387 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234))))) tp!502762))))

(declare-fun result!129294 () Bool)

(assert (=> tb!107487 (= result!129294 (and (inv!25388 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234)))) e!1135096))))

(assert (= tb!107487 b!1773858))

(declare-fun m!2193593 () Bool)

(assert (=> b!1773858 m!2193593))

(declare-fun m!2193595 () Bool)

(assert (=> tb!107487 m!2193595))

(assert (=> b!1773826 t!165673))

(declare-fun b_and!135187 () Bool)

(assert (= b_and!135175 (and (=> t!165673 result!129294) b_and!135187)))

(declare-fun t!165675 () Bool)

(declare-fun tb!107489 () Bool)

(assert (=> (and b!1773815 (= (toChars!4879 (transformation!3493 (rule!5545 token!523))) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165675) tb!107489))

(declare-fun result!129296 () Bool)

(assert (= result!129296 result!129294))

(assert (=> b!1773826 t!165675))

(declare-fun b_and!135189 () Bool)

(assert (= b_and!135177 (and (=> t!165675 result!129296) b_and!135189)))

(declare-fun t!165677 () Bool)

(declare-fun tb!107491 () Bool)

(assert (=> (and b!1773829 (= (toChars!4879 (transformation!3493 (h!24928 rules!3447))) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165677) tb!107491))

(declare-fun result!129298 () Bool)

(assert (= result!129298 result!129294))

(assert (=> b!1773826 t!165677))

(declare-fun b_and!135191 () Bool)

(assert (= b_and!135179 (and (=> t!165677 result!129298) b_and!135191)))

(declare-fun m!2193597 () Bool)

(assert (=> b!1773828 m!2193597))

(declare-fun m!2193599 () Bool)

(assert (=> b!1773834 m!2193599))

(declare-fun m!2193601 () Bool)

(assert (=> b!1773834 m!2193601))

(declare-fun m!2193603 () Bool)

(assert (=> b!1773834 m!2193603))

(declare-fun m!2193605 () Bool)

(assert (=> b!1773823 m!2193605))

(declare-fun m!2193607 () Bool)

(assert (=> b!1773823 m!2193607))

(declare-fun m!2193609 () Bool)

(assert (=> b!1773809 m!2193609))

(declare-fun m!2193611 () Bool)

(assert (=> b!1773809 m!2193611))

(declare-fun m!2193613 () Bool)

(assert (=> b!1773809 m!2193613))

(assert (=> b!1773809 m!2193611))

(declare-fun m!2193615 () Bool)

(assert (=> b!1773809 m!2193615))

(declare-fun m!2193617 () Bool)

(assert (=> b!1773809 m!2193617))

(declare-fun m!2193619 () Bool)

(assert (=> b!1773822 m!2193619))

(declare-fun m!2193621 () Bool)

(assert (=> b!1773822 m!2193621))

(declare-fun m!2193623 () Bool)

(assert (=> b!1773822 m!2193623))

(declare-fun m!2193625 () Bool)

(assert (=> b!1773822 m!2193625))

(declare-fun m!2193627 () Bool)

(assert (=> b!1773822 m!2193627))

(declare-fun m!2193629 () Bool)

(assert (=> b!1773822 m!2193629))

(declare-fun m!2193631 () Bool)

(assert (=> b!1773822 m!2193631))

(declare-fun m!2193633 () Bool)

(assert (=> b!1773822 m!2193633))

(declare-fun m!2193635 () Bool)

(assert (=> b!1773822 m!2193635))

(declare-fun m!2193637 () Bool)

(assert (=> b!1773822 m!2193637))

(assert (=> b!1773822 m!2193629))

(declare-fun m!2193639 () Bool)

(assert (=> b!1773822 m!2193639))

(declare-fun m!2193641 () Bool)

(assert (=> b!1773838 m!2193641))

(declare-fun m!2193643 () Bool)

(assert (=> b!1773838 m!2193643))

(declare-fun m!2193645 () Bool)

(assert (=> b!1773838 m!2193645))

(declare-fun m!2193647 () Bool)

(assert (=> b!1773838 m!2193647))

(declare-fun m!2193649 () Bool)

(assert (=> b!1773838 m!2193649))

(assert (=> b!1773838 m!2193645))

(declare-fun m!2193651 () Bool)

(assert (=> b!1773838 m!2193651))

(declare-fun m!2193653 () Bool)

(assert (=> b!1773838 m!2193653))

(declare-fun m!2193655 () Bool)

(assert (=> b!1773814 m!2193655))

(declare-fun m!2193657 () Bool)

(assert (=> b!1773814 m!2193657))

(declare-fun m!2193659 () Bool)

(assert (=> b!1773814 m!2193659))

(declare-fun m!2193661 () Bool)

(assert (=> b!1773814 m!2193661))

(declare-fun m!2193663 () Bool)

(assert (=> b!1773820 m!2193663))

(declare-fun m!2193665 () Bool)

(assert (=> b!1773820 m!2193665))

(declare-fun m!2193667 () Bool)

(assert (=> b!1773820 m!2193667))

(declare-fun m!2193669 () Bool)

(assert (=> b!1773820 m!2193669))

(declare-fun m!2193671 () Bool)

(assert (=> b!1773820 m!2193671))

(declare-fun m!2193673 () Bool)

(assert (=> b!1773820 m!2193673))

(declare-fun m!2193675 () Bool)

(assert (=> b!1773820 m!2193675))

(declare-fun m!2193677 () Bool)

(assert (=> b!1773820 m!2193677))

(declare-fun m!2193679 () Bool)

(assert (=> b!1773820 m!2193679))

(declare-fun m!2193681 () Bool)

(assert (=> b!1773820 m!2193681))

(declare-fun m!2193683 () Bool)

(assert (=> b!1773820 m!2193683))

(declare-fun m!2193685 () Bool)

(assert (=> b!1773820 m!2193685))

(declare-fun m!2193687 () Bool)

(assert (=> b!1773820 m!2193687))

(assert (=> b!1773820 m!2193675))

(declare-fun m!2193689 () Bool)

(assert (=> b!1773820 m!2193689))

(declare-fun m!2193691 () Bool)

(assert (=> b!1773820 m!2193691))

(declare-fun m!2193693 () Bool)

(assert (=> b!1773813 m!2193693))

(assert (=> b!1773811 m!2193671))

(assert (=> b!1773811 m!2193671))

(declare-fun m!2193695 () Bool)

(assert (=> b!1773811 m!2193695))

(assert (=> b!1773811 m!2193695))

(declare-fun m!2193697 () Bool)

(assert (=> b!1773811 m!2193697))

(declare-fun m!2193699 () Bool)

(assert (=> b!1773811 m!2193699))

(declare-fun m!2193701 () Bool)

(assert (=> b!1773821 m!2193701))

(declare-fun m!2193703 () Bool)

(assert (=> b!1773830 m!2193703))

(declare-fun m!2193705 () Bool)

(assert (=> b!1773812 m!2193705))

(declare-fun m!2193707 () Bool)

(assert (=> b!1773812 m!2193707))

(declare-fun m!2193709 () Bool)

(assert (=> b!1773839 m!2193709))

(declare-fun m!2193711 () Bool)

(assert (=> b!1773826 m!2193711))

(declare-fun m!2193713 () Bool)

(assert (=> b!1773831 m!2193713))

(declare-fun m!2193715 () Bool)

(assert (=> b!1773831 m!2193715))

(declare-fun m!2193717 () Bool)

(assert (=> b!1773831 m!2193717))

(declare-fun m!2193719 () Bool)

(assert (=> b!1773831 m!2193719))

(declare-fun m!2193721 () Bool)

(assert (=> b!1773825 m!2193721))

(declare-fun m!2193723 () Bool)

(assert (=> b!1773825 m!2193723))

(declare-fun m!2193725 () Bool)

(assert (=> b!1773825 m!2193725))

(declare-fun m!2193727 () Bool)

(assert (=> b!1773816 m!2193727))

(assert (=> b!1773816 m!2193727))

(declare-fun m!2193729 () Bool)

(assert (=> b!1773816 m!2193729))

(assert (=> b!1773816 m!2193729))

(declare-fun m!2193731 () Bool)

(assert (=> b!1773816 m!2193731))

(declare-fun m!2193733 () Bool)

(assert (=> b!1773816 m!2193733))

(declare-fun m!2193735 () Bool)

(assert (=> start!176102 m!2193735))

(declare-fun m!2193737 () Bool)

(assert (=> b!1773818 m!2193737))

(declare-fun m!2193739 () Bool)

(assert (=> b!1773817 m!2193739))

(declare-fun m!2193741 () Bool)

(assert (=> b!1773817 m!2193741))

(declare-fun m!2193743 () Bool)

(assert (=> b!1773837 m!2193743))

(declare-fun m!2193745 () Bool)

(assert (=> b!1773824 m!2193745))

(declare-fun m!2193747 () Bool)

(assert (=> b!1773824 m!2193747))

(declare-fun m!2193749 () Bool)

(assert (=> b!1773827 m!2193749))

(declare-fun m!2193751 () Bool)

(assert (=> b!1773833 m!2193751))

(check-sat (not b!1773828) (not b_next!49831) (not b!1773858) (not b_next!49825) b_and!135181 (not b!1773814) tp_is_empty!7885 (not tb!107481) (not b!1773811) (not b_lambda!57847) (not b!1773837) (not b!1773820) (not b!1773816) (not b!1773838) (not b_lambda!57843) (not b_next!49829) (not b!1773812) (not b!1773808) (not b!1773821) (not b!1773823) (not b!1773822) (not b_next!49823) (not tb!107487) (not b_next!49827) (not b!1773855) (not b!1773809) b_and!135183 (not b_lambda!57845) (not b!1773824) b_and!135191 (not b!1773825) (not b!1773818) (not b!1773831) (not tb!107475) b_and!135189 (not b!1773833) (not b!1773827) b_and!135187 (not b!1773830) (not b!1773839) (not start!176102) b_and!135185 (not b!1773813) (not b_next!49833) (not b!1773817) (not b!1773834) (not b!1773835))
(check-sat (not b_next!49831) (not b_next!49825) b_and!135181 (not b_next!49823) (not b_next!49827) b_and!135183 b_and!135191 b_and!135185 (not b_next!49833) (not b_next!49829) b_and!135187 b_and!135189)
(get-model)

(declare-fun d!542005 () Bool)

(assert (=> d!542005 (= (isEmpty!12334 (_2!10967 lt!687215)) ((_ is Nil!19526) (_2!10967 lt!687215)))))

(assert (=> b!1773827 d!542005))

(declare-fun d!542007 () Bool)

(declare-fun lt!687263 () Int)

(assert (=> d!542007 (= lt!687263 (size!15514 (list!7935 lt!687224)))))

(declare-fun size!15516 (Conc!6495) Int)

(assert (=> d!542007 (= lt!687263 (size!15516 (c!288837 lt!687224)))))

(assert (=> d!542007 (= (size!15513 lt!687224) lt!687263)))

(declare-fun bs!404827 () Bool)

(assert (= bs!404827 d!542007))

(assert (=> bs!404827 m!2193659))

(assert (=> bs!404827 m!2193659))

(declare-fun m!2193755 () Bool)

(assert (=> bs!404827 m!2193755))

(declare-fun m!2193757 () Bool)

(assert (=> bs!404827 m!2193757))

(assert (=> b!1773825 d!542007))

(declare-fun b!1773958 () Bool)

(declare-fun e!1135144 () Bool)

(declare-fun lt!687283 () Bool)

(declare-fun call!111170 () Bool)

(assert (=> b!1773958 (= e!1135144 (= lt!687283 call!111170))))

(declare-fun b!1773959 () Bool)

(declare-fun e!1135148 () Bool)

(assert (=> b!1773959 (= e!1135148 (not lt!687283))))

(declare-fun b!1773960 () Bool)

(declare-fun e!1135147 () Bool)

(declare-fun derivativeStep!1248 (Regex!4821 C!9816) Regex!4821)

(declare-fun tail!2655 (List!19596) List!19596)

(assert (=> b!1773960 (= e!1135147 (matchR!2294 (derivativeStep!1248 lt!687241 (head!4128 lt!687220)) (tail!2655 lt!687220)))))

(declare-fun b!1773961 () Bool)

(declare-fun e!1135149 () Bool)

(assert (=> b!1773961 (= e!1135149 (not (= (head!4128 lt!687220) (c!288836 lt!687241))))))

(declare-fun b!1773962 () Bool)

(declare-fun res!799049 () Bool)

(declare-fun e!1135146 () Bool)

(assert (=> b!1773962 (=> (not res!799049) (not e!1135146))))

(assert (=> b!1773962 (= res!799049 (isEmpty!12334 (tail!2655 lt!687220)))))

(declare-fun b!1773963 () Bool)

(declare-fun nullable!1479 (Regex!4821) Bool)

(assert (=> b!1773963 (= e!1135147 (nullable!1479 lt!687241))))

(declare-fun b!1773964 () Bool)

(declare-fun e!1135145 () Bool)

(assert (=> b!1773964 (= e!1135145 e!1135149)))

(declare-fun res!799047 () Bool)

(assert (=> b!1773964 (=> res!799047 e!1135149)))

(assert (=> b!1773964 (= res!799047 call!111170)))

(declare-fun b!1773965 () Bool)

(assert (=> b!1773965 (= e!1135144 e!1135148)))

(declare-fun c!288861 () Bool)

(assert (=> b!1773965 (= c!288861 ((_ is EmptyLang!4821) lt!687241))))

(declare-fun b!1773966 () Bool)

(declare-fun res!799052 () Bool)

(assert (=> b!1773966 (=> res!799052 e!1135149)))

(assert (=> b!1773966 (= res!799052 (not (isEmpty!12334 (tail!2655 lt!687220))))))

(declare-fun d!542009 () Bool)

(assert (=> d!542009 e!1135144))

(declare-fun c!288859 () Bool)

(assert (=> d!542009 (= c!288859 ((_ is EmptyExpr!4821) lt!687241))))

(assert (=> d!542009 (= lt!687283 e!1135147)))

(declare-fun c!288860 () Bool)

(assert (=> d!542009 (= c!288860 (isEmpty!12334 lt!687220))))

(declare-fun validRegex!1953 (Regex!4821) Bool)

(assert (=> d!542009 (validRegex!1953 lt!687241)))

(assert (=> d!542009 (= (matchR!2294 lt!687241 lt!687220) lt!687283)))

(declare-fun b!1773967 () Bool)

(declare-fun res!799045 () Bool)

(assert (=> b!1773967 (=> (not res!799045) (not e!1135146))))

(assert (=> b!1773967 (= res!799045 (not call!111170))))

(declare-fun bm!111165 () Bool)

(assert (=> bm!111165 (= call!111170 (isEmpty!12334 lt!687220))))

(declare-fun b!1773968 () Bool)

(declare-fun res!799048 () Bool)

(declare-fun e!1135150 () Bool)

(assert (=> b!1773968 (=> res!799048 e!1135150)))

(assert (=> b!1773968 (= res!799048 (not ((_ is ElementMatch!4821) lt!687241)))))

(assert (=> b!1773968 (= e!1135148 e!1135150)))

(declare-fun b!1773969 () Bool)

(assert (=> b!1773969 (= e!1135146 (= (head!4128 lt!687220) (c!288836 lt!687241)))))

(declare-fun b!1773970 () Bool)

(declare-fun res!799051 () Bool)

(assert (=> b!1773970 (=> res!799051 e!1135150)))

(assert (=> b!1773970 (= res!799051 e!1135146)))

(declare-fun res!799050 () Bool)

(assert (=> b!1773970 (=> (not res!799050) (not e!1135146))))

(assert (=> b!1773970 (= res!799050 lt!687283)))

(declare-fun b!1773971 () Bool)

(assert (=> b!1773971 (= e!1135150 e!1135145)))

(declare-fun res!799046 () Bool)

(assert (=> b!1773971 (=> (not res!799046) (not e!1135145))))

(assert (=> b!1773971 (= res!799046 (not lt!687283))))

(assert (= (and d!542009 c!288860) b!1773963))

(assert (= (and d!542009 (not c!288860)) b!1773960))

(assert (= (and d!542009 c!288859) b!1773958))

(assert (= (and d!542009 (not c!288859)) b!1773965))

(assert (= (and b!1773965 c!288861) b!1773959))

(assert (= (and b!1773965 (not c!288861)) b!1773968))

(assert (= (and b!1773968 (not res!799048)) b!1773970))

(assert (= (and b!1773970 res!799050) b!1773967))

(assert (= (and b!1773967 res!799045) b!1773962))

(assert (= (and b!1773962 res!799049) b!1773969))

(assert (= (and b!1773970 (not res!799051)) b!1773971))

(assert (= (and b!1773971 res!799046) b!1773964))

(assert (= (and b!1773964 (not res!799047)) b!1773966))

(assert (= (and b!1773966 (not res!799052)) b!1773961))

(assert (= (or b!1773958 b!1773964 b!1773967) bm!111165))

(declare-fun m!2193813 () Bool)

(assert (=> b!1773966 m!2193813))

(assert (=> b!1773966 m!2193813))

(declare-fun m!2193815 () Bool)

(assert (=> b!1773966 m!2193815))

(declare-fun m!2193817 () Bool)

(assert (=> bm!111165 m!2193817))

(declare-fun m!2193819 () Bool)

(assert (=> b!1773961 m!2193819))

(declare-fun m!2193821 () Bool)

(assert (=> b!1773963 m!2193821))

(assert (=> b!1773962 m!2193813))

(assert (=> b!1773962 m!2193813))

(assert (=> b!1773962 m!2193815))

(assert (=> b!1773969 m!2193819))

(assert (=> b!1773960 m!2193819))

(assert (=> b!1773960 m!2193819))

(declare-fun m!2193823 () Bool)

(assert (=> b!1773960 m!2193823))

(assert (=> b!1773960 m!2193813))

(assert (=> b!1773960 m!2193823))

(assert (=> b!1773960 m!2193813))

(declare-fun m!2193825 () Bool)

(assert (=> b!1773960 m!2193825))

(assert (=> d!542009 m!2193817))

(declare-fun m!2193827 () Bool)

(assert (=> d!542009 m!2193827))

(assert (=> b!1773825 d!542009))

(declare-fun d!542023 () Bool)

(assert (=> d!542023 (matchR!2294 (rulesRegex!849 thiss!24550 rules!3447) (list!7935 (charsOf!2142 token!523)))))

(declare-fun lt!687290 () Unit!33742)

(declare-fun choose!11054 (LexerInterface!3122 List!19597 List!19596 Token!6552 Rule!6786 List!19596) Unit!33742)

(assert (=> d!542023 (= lt!687290 (choose!11054 thiss!24550 rules!3447 lt!687220 token!523 rule!422 Nil!19526))))

(assert (=> d!542023 (not (isEmpty!12335 rules!3447))))

(assert (=> d!542023 (= (lemmaMaxPrefixThenMatchesRulesRegex!200 thiss!24550 rules!3447 lt!687220 token!523 rule!422 Nil!19526) lt!687290)))

(declare-fun bs!404831 () Bool)

(assert (= bs!404831 d!542023))

(assert (=> bs!404831 m!2193719))

(declare-fun m!2193851 () Bool)

(assert (=> bs!404831 m!2193851))

(declare-fun m!2193853 () Bool)

(assert (=> bs!404831 m!2193853))

(assert (=> bs!404831 m!2193661))

(assert (=> bs!404831 m!2193851))

(assert (=> bs!404831 m!2193719))

(assert (=> bs!404831 m!2193703))

(declare-fun m!2193855 () Bool)

(assert (=> bs!404831 m!2193855))

(assert (=> bs!404831 m!2193661))

(assert (=> b!1773825 d!542023))

(declare-fun d!542029 () Bool)

(declare-fun lt!687300 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2832 (List!19597) (InoxSet Rule!6786))

(assert (=> d!542029 (= lt!687300 (select (content!2832 rules!3447) (rule!5545 (_1!10967 lt!687234))))))

(declare-fun e!1135174 () Bool)

(assert (=> d!542029 (= lt!687300 e!1135174)))

(declare-fun res!799081 () Bool)

(assert (=> d!542029 (=> (not res!799081) (not e!1135174))))

(assert (=> d!542029 (= res!799081 ((_ is Cons!19527) rules!3447))))

(assert (=> d!542029 (= (contains!3525 rules!3447 (rule!5545 (_1!10967 lt!687234))) lt!687300)))

(declare-fun b!1774006 () Bool)

(declare-fun e!1135175 () Bool)

(assert (=> b!1774006 (= e!1135174 e!1135175)))

(declare-fun res!799082 () Bool)

(assert (=> b!1774006 (=> res!799082 e!1135175)))

(assert (=> b!1774006 (= res!799082 (= (h!24928 rules!3447) (rule!5545 (_1!10967 lt!687234))))))

(declare-fun b!1774007 () Bool)

(assert (=> b!1774007 (= e!1135175 (contains!3525 (t!165680 rules!3447) (rule!5545 (_1!10967 lt!687234))))))

(assert (= (and d!542029 res!799081) b!1774006))

(assert (= (and b!1774006 (not res!799082)) b!1774007))

(declare-fun m!2193885 () Bool)

(assert (=> d!542029 m!2193885))

(declare-fun m!2193887 () Bool)

(assert (=> d!542029 m!2193887))

(declare-fun m!2193889 () Bool)

(assert (=> b!1774007 m!2193889))

(assert (=> b!1773828 d!542029))

(declare-fun d!542037 () Bool)

(declare-fun res!799095 () Bool)

(declare-fun e!1135188 () Bool)

(assert (=> d!542037 (=> (not res!799095) (not e!1135188))))

(assert (=> d!542037 (= res!799095 (not (isEmpty!12334 (originalCharacters!4307 token!523))))))

(assert (=> d!542037 (= (inv!25386 token!523) e!1135188)))

(declare-fun b!1774032 () Bool)

(declare-fun res!799096 () Bool)

(assert (=> b!1774032 (=> (not res!799096) (not e!1135188))))

(assert (=> b!1774032 (= res!799096 (= (originalCharacters!4307 token!523) (list!7935 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 token!523))) (value!109223 token!523)))))))

(declare-fun b!1774033 () Bool)

(assert (=> b!1774033 (= e!1135188 (= (size!15512 token!523) (size!15514 (originalCharacters!4307 token!523))))))

(assert (= (and d!542037 res!799095) b!1774032))

(assert (= (and b!1774032 res!799096) b!1774033))

(declare-fun b_lambda!57851 () Bool)

(assert (=> (not b_lambda!57851) (not b!1774032)))

(declare-fun t!165688 () Bool)

(declare-fun tb!107499 () Bool)

(assert (=> (and b!1773810 (= (toChars!4879 (transformation!3493 rule!422)) (toChars!4879 (transformation!3493 (rule!5545 token!523)))) t!165688) tb!107499))

(declare-fun b!1774034 () Bool)

(declare-fun e!1135189 () Bool)

(declare-fun tp!502764 () Bool)

(assert (=> b!1774034 (= e!1135189 (and (inv!25387 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 token!523))) (value!109223 token!523)))) tp!502764))))

(declare-fun result!129306 () Bool)

(assert (=> tb!107499 (= result!129306 (and (inv!25388 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 token!523))) (value!109223 token!523))) e!1135189))))

(assert (= tb!107499 b!1774034))

(declare-fun m!2193903 () Bool)

(assert (=> b!1774034 m!2193903))

(declare-fun m!2193905 () Bool)

(assert (=> tb!107499 m!2193905))

(assert (=> b!1774032 t!165688))

(declare-fun b_and!135199 () Bool)

(assert (= b_and!135187 (and (=> t!165688 result!129306) b_and!135199)))

(declare-fun t!165690 () Bool)

(declare-fun tb!107501 () Bool)

(assert (=> (and b!1773815 (= (toChars!4879 (transformation!3493 (rule!5545 token!523))) (toChars!4879 (transformation!3493 (rule!5545 token!523)))) t!165690) tb!107501))

(declare-fun result!129308 () Bool)

(assert (= result!129308 result!129306))

(assert (=> b!1774032 t!165690))

(declare-fun b_and!135201 () Bool)

(assert (= b_and!135189 (and (=> t!165690 result!129308) b_and!135201)))

(declare-fun tb!107503 () Bool)

(declare-fun t!165692 () Bool)

(assert (=> (and b!1773829 (= (toChars!4879 (transformation!3493 (h!24928 rules!3447))) (toChars!4879 (transformation!3493 (rule!5545 token!523)))) t!165692) tb!107503))

(declare-fun result!129310 () Bool)

(assert (= result!129310 result!129306))

(assert (=> b!1774032 t!165692))

(declare-fun b_and!135203 () Bool)

(assert (= b_and!135191 (and (=> t!165692 result!129310) b_and!135203)))

(declare-fun m!2193909 () Bool)

(assert (=> d!542037 m!2193909))

(declare-fun m!2193911 () Bool)

(assert (=> b!1774032 m!2193911))

(assert (=> b!1774032 m!2193911))

(declare-fun m!2193913 () Bool)

(assert (=> b!1774032 m!2193913))

(declare-fun m!2193915 () Bool)

(assert (=> b!1774033 m!2193915))

(assert (=> start!176102 d!542037))

(declare-fun b!1774035 () Bool)

(declare-fun e!1135190 () Bool)

(declare-fun lt!687308 () Bool)

(declare-fun call!111175 () Bool)

(assert (=> b!1774035 (= e!1135190 (= lt!687308 call!111175))))

(declare-fun b!1774036 () Bool)

(declare-fun e!1135194 () Bool)

(assert (=> b!1774036 (= e!1135194 (not lt!687308))))

(declare-fun b!1774037 () Bool)

(declare-fun e!1135193 () Bool)

(assert (=> b!1774037 (= e!1135193 (matchR!2294 (derivativeStep!1248 (regex!3493 lt!687240) (head!4128 (list!7935 (charsOf!2142 (_1!10967 lt!687234))))) (tail!2655 (list!7935 (charsOf!2142 (_1!10967 lt!687234))))))))

(declare-fun b!1774038 () Bool)

(declare-fun e!1135195 () Bool)

(assert (=> b!1774038 (= e!1135195 (not (= (head!4128 (list!7935 (charsOf!2142 (_1!10967 lt!687234)))) (c!288836 (regex!3493 lt!687240)))))))

(declare-fun b!1774039 () Bool)

(declare-fun res!799101 () Bool)

(declare-fun e!1135192 () Bool)

(assert (=> b!1774039 (=> (not res!799101) (not e!1135192))))

(assert (=> b!1774039 (= res!799101 (isEmpty!12334 (tail!2655 (list!7935 (charsOf!2142 (_1!10967 lt!687234))))))))

(declare-fun b!1774040 () Bool)

(assert (=> b!1774040 (= e!1135193 (nullable!1479 (regex!3493 lt!687240)))))

(declare-fun b!1774041 () Bool)

(declare-fun e!1135191 () Bool)

(assert (=> b!1774041 (= e!1135191 e!1135195)))

(declare-fun res!799099 () Bool)

(assert (=> b!1774041 (=> res!799099 e!1135195)))

(assert (=> b!1774041 (= res!799099 call!111175)))

(declare-fun b!1774042 () Bool)

(assert (=> b!1774042 (= e!1135190 e!1135194)))

(declare-fun c!288873 () Bool)

(assert (=> b!1774042 (= c!288873 ((_ is EmptyLang!4821) (regex!3493 lt!687240)))))

(declare-fun b!1774043 () Bool)

(declare-fun res!799104 () Bool)

(assert (=> b!1774043 (=> res!799104 e!1135195)))

(assert (=> b!1774043 (= res!799104 (not (isEmpty!12334 (tail!2655 (list!7935 (charsOf!2142 (_1!10967 lt!687234)))))))))

(declare-fun d!542047 () Bool)

(assert (=> d!542047 e!1135190))

(declare-fun c!288871 () Bool)

(assert (=> d!542047 (= c!288871 ((_ is EmptyExpr!4821) (regex!3493 lt!687240)))))

(assert (=> d!542047 (= lt!687308 e!1135193)))

(declare-fun c!288872 () Bool)

(assert (=> d!542047 (= c!288872 (isEmpty!12334 (list!7935 (charsOf!2142 (_1!10967 lt!687234)))))))

(assert (=> d!542047 (validRegex!1953 (regex!3493 lt!687240))))

(assert (=> d!542047 (= (matchR!2294 (regex!3493 lt!687240) (list!7935 (charsOf!2142 (_1!10967 lt!687234)))) lt!687308)))

(declare-fun b!1774044 () Bool)

(declare-fun res!799097 () Bool)

(assert (=> b!1774044 (=> (not res!799097) (not e!1135192))))

(assert (=> b!1774044 (= res!799097 (not call!111175))))

(declare-fun bm!111170 () Bool)

(assert (=> bm!111170 (= call!111175 (isEmpty!12334 (list!7935 (charsOf!2142 (_1!10967 lt!687234)))))))

(declare-fun b!1774045 () Bool)

(declare-fun res!799100 () Bool)

(declare-fun e!1135196 () Bool)

(assert (=> b!1774045 (=> res!799100 e!1135196)))

(assert (=> b!1774045 (= res!799100 (not ((_ is ElementMatch!4821) (regex!3493 lt!687240))))))

(assert (=> b!1774045 (= e!1135194 e!1135196)))

(declare-fun b!1774046 () Bool)

(assert (=> b!1774046 (= e!1135192 (= (head!4128 (list!7935 (charsOf!2142 (_1!10967 lt!687234)))) (c!288836 (regex!3493 lt!687240))))))

(declare-fun b!1774047 () Bool)

(declare-fun res!799103 () Bool)

(assert (=> b!1774047 (=> res!799103 e!1135196)))

(assert (=> b!1774047 (= res!799103 e!1135192)))

(declare-fun res!799102 () Bool)

(assert (=> b!1774047 (=> (not res!799102) (not e!1135192))))

(assert (=> b!1774047 (= res!799102 lt!687308)))

(declare-fun b!1774048 () Bool)

(assert (=> b!1774048 (= e!1135196 e!1135191)))

(declare-fun res!799098 () Bool)

(assert (=> b!1774048 (=> (not res!799098) (not e!1135191))))

(assert (=> b!1774048 (= res!799098 (not lt!687308))))

(assert (= (and d!542047 c!288872) b!1774040))

(assert (= (and d!542047 (not c!288872)) b!1774037))

(assert (= (and d!542047 c!288871) b!1774035))

(assert (= (and d!542047 (not c!288871)) b!1774042))

(assert (= (and b!1774042 c!288873) b!1774036))

(assert (= (and b!1774042 (not c!288873)) b!1774045))

(assert (= (and b!1774045 (not res!799100)) b!1774047))

(assert (= (and b!1774047 res!799102) b!1774044))

(assert (= (and b!1774044 res!799097) b!1774039))

(assert (= (and b!1774039 res!799101) b!1774046))

(assert (= (and b!1774047 (not res!799103)) b!1774048))

(assert (= (and b!1774048 res!799098) b!1774041))

(assert (= (and b!1774041 (not res!799099)) b!1774043))

(assert (= (and b!1774043 (not res!799104)) b!1774038))

(assert (= (or b!1774035 b!1774041 b!1774044) bm!111170))

(assert (=> b!1774043 m!2193695))

(declare-fun m!2193917 () Bool)

(assert (=> b!1774043 m!2193917))

(assert (=> b!1774043 m!2193917))

(declare-fun m!2193919 () Bool)

(assert (=> b!1774043 m!2193919))

(assert (=> bm!111170 m!2193695))

(declare-fun m!2193921 () Bool)

(assert (=> bm!111170 m!2193921))

(assert (=> b!1774038 m!2193695))

(declare-fun m!2193923 () Bool)

(assert (=> b!1774038 m!2193923))

(declare-fun m!2193925 () Bool)

(assert (=> b!1774040 m!2193925))

(assert (=> b!1774039 m!2193695))

(assert (=> b!1774039 m!2193917))

(assert (=> b!1774039 m!2193917))

(assert (=> b!1774039 m!2193919))

(assert (=> b!1774046 m!2193695))

(assert (=> b!1774046 m!2193923))

(assert (=> b!1774037 m!2193695))

(assert (=> b!1774037 m!2193923))

(assert (=> b!1774037 m!2193923))

(declare-fun m!2193927 () Bool)

(assert (=> b!1774037 m!2193927))

(assert (=> b!1774037 m!2193695))

(assert (=> b!1774037 m!2193917))

(assert (=> b!1774037 m!2193927))

(assert (=> b!1774037 m!2193917))

(declare-fun m!2193937 () Bool)

(assert (=> b!1774037 m!2193937))

(assert (=> d!542047 m!2193695))

(assert (=> d!542047 m!2193921))

(declare-fun m!2193939 () Bool)

(assert (=> d!542047 m!2193939))

(assert (=> b!1773811 d!542047))

(declare-fun d!542051 () Bool)

(declare-fun list!7937 (Conc!6495) List!19596)

(assert (=> d!542051 (= (list!7935 (charsOf!2142 (_1!10967 lt!687234))) (list!7937 (c!288837 (charsOf!2142 (_1!10967 lt!687234)))))))

(declare-fun bs!404836 () Bool)

(assert (= bs!404836 d!542051))

(declare-fun m!2193943 () Bool)

(assert (=> bs!404836 m!2193943))

(assert (=> b!1773811 d!542051))

(declare-fun d!542055 () Bool)

(declare-fun lt!687319 () BalanceConc!12934)

(assert (=> d!542055 (= (list!7935 lt!687319) (originalCharacters!4307 (_1!10967 lt!687234)))))

(assert (=> d!542055 (= lt!687319 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234))))))

(assert (=> d!542055 (= (charsOf!2142 (_1!10967 lt!687234)) lt!687319)))

(declare-fun b_lambda!57853 () Bool)

(assert (=> (not b_lambda!57853) (not d!542055)))

(assert (=> d!542055 t!165673))

(declare-fun b_and!135205 () Bool)

(assert (= b_and!135199 (and (=> t!165673 result!129294) b_and!135205)))

(assert (=> d!542055 t!165675))

(declare-fun b_and!135207 () Bool)

(assert (= b_and!135201 (and (=> t!165675 result!129296) b_and!135207)))

(assert (=> d!542055 t!165677))

(declare-fun b_and!135209 () Bool)

(assert (= b_and!135203 (and (=> t!165677 result!129298) b_and!135209)))

(declare-fun m!2193945 () Bool)

(assert (=> d!542055 m!2193945))

(assert (=> d!542055 m!2193711))

(assert (=> b!1773811 d!542055))

(declare-fun d!542057 () Bool)

(assert (=> d!542057 (= (get!5972 lt!687254) (v!25487 lt!687254))))

(assert (=> b!1773811 d!542057))

(declare-fun d!542061 () Bool)

(declare-fun c!288882 () Bool)

(assert (=> d!542061 (= c!288882 ((_ is Node!6495) (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249)))))))

(declare-fun e!1135217 () Bool)

(assert (=> d!542061 (= (inv!25387 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249)))) e!1135217)))

(declare-fun b!1774087 () Bool)

(declare-fun inv!25389 (Conc!6495) Bool)

(assert (=> b!1774087 (= e!1135217 (inv!25389 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249)))))))

(declare-fun b!1774088 () Bool)

(declare-fun e!1135218 () Bool)

(assert (=> b!1774088 (= e!1135217 e!1135218)))

(declare-fun res!799127 () Bool)

(assert (=> b!1774088 (= res!799127 (not ((_ is Leaf!9462) (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249))))))))

(assert (=> b!1774088 (=> res!799127 e!1135218)))

(declare-fun b!1774089 () Bool)

(declare-fun inv!25390 (Conc!6495) Bool)

(assert (=> b!1774089 (= e!1135218 (inv!25390 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249)))))))

(assert (= (and d!542061 c!288882) b!1774087))

(assert (= (and d!542061 (not c!288882)) b!1774088))

(assert (= (and b!1774088 (not res!799127)) b!1774089))

(declare-fun m!2193977 () Bool)

(assert (=> b!1774087 m!2193977))

(declare-fun m!2193979 () Bool)

(assert (=> b!1774089 m!2193979))

(assert (=> b!1773855 d!542061))

(declare-fun b!1774111 () Bool)

(declare-fun e!1135235 () Bool)

(assert (=> b!1774111 (= e!1135235 true)))

(declare-fun d!542071 () Bool)

(assert (=> d!542071 e!1135235))

(assert (= d!542071 b!1774111))

(declare-fun order!12505 () Int)

(declare-fun lambda!70499 () Int)

(declare-fun dynLambda!9513 (Int Int) Int)

(assert (=> b!1774111 (< (dynLambda!9508 order!12499 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) (dynLambda!9513 order!12505 lambda!70499))))

(assert (=> b!1774111 (< (dynLambda!9510 order!12503 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) (dynLambda!9513 order!12505 lambda!70499))))

(assert (=> d!542071 (= (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (seqFromList!2462 (originalCharacters!4307 (_1!10967 lt!687234)))))))

(declare-fun lt!687325 () Unit!33742)

(declare-fun Forall2of!139 (Int BalanceConc!12934 BalanceConc!12934) Unit!33742)

(assert (=> d!542071 (= lt!687325 (Forall2of!139 lambda!70499 lt!687249 (seqFromList!2462 (originalCharacters!4307 (_1!10967 lt!687234)))))))

(assert (=> d!542071 (= (list!7935 lt!687249) (list!7935 (seqFromList!2462 (originalCharacters!4307 (_1!10967 lt!687234)))))))

(assert (=> d!542071 (= (lemmaEqSameImage!404 (transformation!3493 (rule!5545 (_1!10967 lt!687234))) lt!687249 (seqFromList!2462 (originalCharacters!4307 (_1!10967 lt!687234)))) lt!687325)))

(declare-fun b_lambda!57857 () Bool)

(assert (=> (not b_lambda!57857) (not d!542071)))

(assert (=> d!542071 t!165667))

(declare-fun b_and!135217 () Bool)

(assert (= b_and!135181 (and (=> t!165667 result!129286) b_and!135217)))

(assert (=> d!542071 t!165669))

(declare-fun b_and!135219 () Bool)

(assert (= b_and!135183 (and (=> t!165669 result!129290) b_and!135219)))

(assert (=> d!542071 t!165671))

(declare-fun b_and!135221 () Bool)

(assert (= b_and!135185 (and (=> t!165671 result!129292) b_and!135221)))

(declare-fun b_lambda!57859 () Bool)

(assert (=> (not b_lambda!57859) (not d!542071)))

(declare-fun tb!107505 () Bool)

(declare-fun t!165694 () Bool)

(assert (=> (and b!1773810 (= (toValue!5020 (transformation!3493 rule!422)) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165694) tb!107505))

(declare-fun result!129312 () Bool)

(assert (=> tb!107505 (= result!129312 (inv!21 (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (seqFromList!2462 (originalCharacters!4307 (_1!10967 lt!687234))))))))

(declare-fun m!2193997 () Bool)

(assert (=> tb!107505 m!2193997))

(assert (=> d!542071 t!165694))

(declare-fun b_and!135223 () Bool)

(assert (= b_and!135217 (and (=> t!165694 result!129312) b_and!135223)))

(declare-fun tb!107507 () Bool)

(declare-fun t!165696 () Bool)

(assert (=> (and b!1773815 (= (toValue!5020 (transformation!3493 (rule!5545 token!523))) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165696) tb!107507))

(declare-fun result!129314 () Bool)

(assert (= result!129314 result!129312))

(assert (=> d!542071 t!165696))

(declare-fun b_and!135225 () Bool)

(assert (= b_and!135219 (and (=> t!165696 result!129314) b_and!135225)))

(declare-fun tb!107509 () Bool)

(declare-fun t!165698 () Bool)

(assert (=> (and b!1773829 (= (toValue!5020 (transformation!3493 (h!24928 rules!3447))) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165698) tb!107509))

(declare-fun result!129316 () Bool)

(assert (= result!129316 result!129312))

(assert (=> d!542071 t!165698))

(declare-fun b_and!135227 () Bool)

(assert (= b_and!135221 (and (=> t!165698 result!129316) b_and!135227)))

(assert (=> d!542071 m!2193611))

(declare-fun m!2193999 () Bool)

(assert (=> d!542071 m!2193999))

(assert (=> d!542071 m!2193611))

(declare-fun m!2194001 () Bool)

(assert (=> d!542071 m!2194001))

(assert (=> d!542071 m!2193611))

(declare-fun m!2194003 () Bool)

(assert (=> d!542071 m!2194003))

(assert (=> d!542071 m!2193685))

(assert (=> d!542071 m!2193727))

(assert (=> b!1773809 d!542071))

(declare-fun d!542087 () Bool)

(assert (=> d!542087 (= (size!15512 (_1!10967 lt!687234)) (size!15514 (originalCharacters!4307 (_1!10967 lt!687234))))))

(declare-fun Unit!33746 () Unit!33742)

(assert (=> d!542087 (= (lemmaCharactersSize!551 (_1!10967 lt!687234)) Unit!33746)))

(declare-fun bs!404841 () Bool)

(assert (= bs!404841 d!542087))

(declare-fun m!2194007 () Bool)

(assert (=> bs!404841 m!2194007))

(assert (=> b!1773809 d!542087))

(declare-fun d!542091 () Bool)

(assert (=> d!542091 (= (apply!5293 (transformation!3493 (rule!5545 (_1!10967 lt!687234))) lt!687249) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249))))

(declare-fun b_lambda!57865 () Bool)

(assert (=> (not b_lambda!57865) (not d!542091)))

(assert (=> d!542091 t!165667))

(declare-fun b_and!135241 () Bool)

(assert (= b_and!135223 (and (=> t!165667 result!129286) b_and!135241)))

(assert (=> d!542091 t!165669))

(declare-fun b_and!135243 () Bool)

(assert (= b_and!135225 (and (=> t!165669 result!129290) b_and!135243)))

(assert (=> d!542091 t!165671))

(declare-fun b_and!135245 () Bool)

(assert (= b_and!135227 (and (=> t!165671 result!129292) b_and!135245)))

(assert (=> d!542091 m!2193727))

(assert (=> b!1773809 d!542091))

(declare-fun d!542093 () Bool)

(declare-fun fromListB!1127 (List!19596) BalanceConc!12934)

(assert (=> d!542093 (= (seqFromList!2462 (originalCharacters!4307 (_1!10967 lt!687234))) (fromListB!1127 (originalCharacters!4307 (_1!10967 lt!687234))))))

(declare-fun bs!404842 () Bool)

(assert (= bs!404842 d!542093))

(declare-fun m!2194009 () Bool)

(assert (=> bs!404842 m!2194009))

(assert (=> b!1773809 d!542093))

(declare-fun d!542095 () Bool)

(declare-fun lt!687329 () Int)

(assert (=> d!542095 (= lt!687329 (size!15514 (list!7935 lt!687249)))))

(assert (=> d!542095 (= lt!687329 (size!15516 (c!288837 lt!687249)))))

(assert (=> d!542095 (= (size!15513 lt!687249) lt!687329)))

(declare-fun bs!404843 () Bool)

(assert (= bs!404843 d!542095))

(assert (=> bs!404843 m!2193685))

(assert (=> bs!404843 m!2193685))

(declare-fun m!2194011 () Bool)

(assert (=> bs!404843 m!2194011))

(declare-fun m!2194013 () Bool)

(assert (=> bs!404843 m!2194013))

(assert (=> b!1773809 d!542095))

(declare-fun d!542097 () Bool)

(assert (=> d!542097 (= (isEmpty!12335 rules!3447) ((_ is Nil!19527) rules!3447))))

(assert (=> b!1773830 d!542097))

(declare-fun d!542099 () Bool)

(declare-fun c!288889 () Bool)

(assert (=> d!542099 (= c!288889 (isEmpty!12334 lt!687228))))

(declare-fun e!1135242 () Bool)

(assert (=> d!542099 (= (prefixMatch!704 lt!687241 lt!687228) e!1135242)))

(declare-fun b!1774121 () Bool)

(declare-fun lostCause!589 (Regex!4821) Bool)

(assert (=> b!1774121 (= e!1135242 (not (lostCause!589 lt!687241)))))

(declare-fun b!1774122 () Bool)

(assert (=> b!1774122 (= e!1135242 (prefixMatch!704 (derivativeStep!1248 lt!687241 (head!4128 lt!687228)) (tail!2655 lt!687228)))))

(assert (= (and d!542099 c!288889) b!1774121))

(assert (= (and d!542099 (not c!288889)) b!1774122))

(declare-fun m!2194015 () Bool)

(assert (=> d!542099 m!2194015))

(declare-fun m!2194017 () Bool)

(assert (=> b!1774121 m!2194017))

(declare-fun m!2194019 () Bool)

(assert (=> b!1774122 m!2194019))

(assert (=> b!1774122 m!2194019))

(declare-fun m!2194021 () Bool)

(assert (=> b!1774122 m!2194021))

(declare-fun m!2194023 () Bool)

(assert (=> b!1774122 m!2194023))

(assert (=> b!1774122 m!2194021))

(assert (=> b!1774122 m!2194023))

(declare-fun m!2194025 () Bool)

(assert (=> b!1774122 m!2194025))

(assert (=> b!1773831 d!542099))

(declare-fun b!1774133 () Bool)

(declare-fun res!799144 () Bool)

(declare-fun e!1135247 () Bool)

(assert (=> b!1774133 (=> (not res!799144) (not e!1135247))))

(declare-fun lt!687332 () List!19596)

(assert (=> b!1774133 (= res!799144 (= (size!15514 lt!687332) (+ (size!15514 lt!687220) (size!15514 (Cons!19526 (head!4128 suffix!1421) Nil!19526)))))))

(declare-fun d!542101 () Bool)

(assert (=> d!542101 e!1135247))

(declare-fun res!799143 () Bool)

(assert (=> d!542101 (=> (not res!799143) (not e!1135247))))

(declare-fun content!2834 (List!19596) (InoxSet C!9816))

(assert (=> d!542101 (= res!799143 (= (content!2834 lt!687332) ((_ map or) (content!2834 lt!687220) (content!2834 (Cons!19526 (head!4128 suffix!1421) Nil!19526)))))))

(declare-fun e!1135248 () List!19596)

(assert (=> d!542101 (= lt!687332 e!1135248)))

(declare-fun c!288892 () Bool)

(assert (=> d!542101 (= c!288892 ((_ is Nil!19526) lt!687220))))

(assert (=> d!542101 (= (++!5317 lt!687220 (Cons!19526 (head!4128 suffix!1421) Nil!19526)) lt!687332)))

(declare-fun b!1774134 () Bool)

(assert (=> b!1774134 (= e!1135247 (or (not (= (Cons!19526 (head!4128 suffix!1421) Nil!19526) Nil!19526)) (= lt!687332 lt!687220)))))

(declare-fun b!1774131 () Bool)

(assert (=> b!1774131 (= e!1135248 (Cons!19526 (head!4128 suffix!1421) Nil!19526))))

(declare-fun b!1774132 () Bool)

(assert (=> b!1774132 (= e!1135248 (Cons!19526 (h!24927 lt!687220) (++!5317 (t!165679 lt!687220) (Cons!19526 (head!4128 suffix!1421) Nil!19526))))))

(assert (= (and d!542101 c!288892) b!1774131))

(assert (= (and d!542101 (not c!288892)) b!1774132))

(assert (= (and d!542101 res!799143) b!1774133))

(assert (= (and b!1774133 res!799144) b!1774134))

(declare-fun m!2194027 () Bool)

(assert (=> b!1774133 m!2194027))

(declare-fun m!2194029 () Bool)

(assert (=> b!1774133 m!2194029))

(declare-fun m!2194031 () Bool)

(assert (=> b!1774133 m!2194031))

(declare-fun m!2194033 () Bool)

(assert (=> d!542101 m!2194033))

(declare-fun m!2194035 () Bool)

(assert (=> d!542101 m!2194035))

(declare-fun m!2194037 () Bool)

(assert (=> d!542101 m!2194037))

(declare-fun m!2194039 () Bool)

(assert (=> b!1774132 m!2194039))

(assert (=> b!1773831 d!542101))

(declare-fun d!542103 () Bool)

(assert (=> d!542103 (= (head!4128 suffix!1421) (h!24927 suffix!1421))))

(assert (=> b!1773831 d!542103))

(declare-fun d!542105 () Bool)

(declare-fun lt!687335 () Unit!33742)

(declare-fun lemma!402 (List!19597 LexerInterface!3122 List!19597) Unit!33742)

(assert (=> d!542105 (= lt!687335 (lemma!402 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70505 () Int)

(declare-datatypes ((List!19599 0))(
  ( (Nil!19529) (Cons!19529 (h!24930 Regex!4821) (t!165742 List!19599)) )
))
(declare-fun generalisedUnion!410 (List!19599) Regex!4821)

(declare-fun map!4028 (List!19597 Int) List!19599)

(assert (=> d!542105 (= (rulesRegex!849 thiss!24550 rules!3447) (generalisedUnion!410 (map!4028 rules!3447 lambda!70505)))))

(declare-fun bs!404844 () Bool)

(assert (= bs!404844 d!542105))

(declare-fun m!2194041 () Bool)

(assert (=> bs!404844 m!2194041))

(declare-fun m!2194043 () Bool)

(assert (=> bs!404844 m!2194043))

(assert (=> bs!404844 m!2194043))

(declare-fun m!2194045 () Bool)

(assert (=> bs!404844 m!2194045))

(assert (=> b!1773831 d!542105))

(declare-fun d!542107 () Bool)

(assert (=> d!542107 (= (get!5973 lt!687239) (v!25486 lt!687239))))

(assert (=> b!1773813 d!542107))

(declare-fun b!1774135 () Bool)

(declare-fun e!1135249 () Bool)

(declare-fun lt!687336 () Bool)

(declare-fun call!111177 () Bool)

(assert (=> b!1774135 (= e!1135249 (= lt!687336 call!111177))))

(declare-fun b!1774136 () Bool)

(declare-fun e!1135253 () Bool)

(assert (=> b!1774136 (= e!1135253 (not lt!687336))))

(declare-fun b!1774137 () Bool)

(declare-fun e!1135252 () Bool)

(assert (=> b!1774137 (= e!1135252 (matchR!2294 (derivativeStep!1248 (regex!3493 rule!422) (head!4128 lt!687220)) (tail!2655 lt!687220)))))

(declare-fun b!1774138 () Bool)

(declare-fun e!1135254 () Bool)

(assert (=> b!1774138 (= e!1135254 (not (= (head!4128 lt!687220) (c!288836 (regex!3493 rule!422)))))))

(declare-fun b!1774139 () Bool)

(declare-fun res!799149 () Bool)

(declare-fun e!1135251 () Bool)

(assert (=> b!1774139 (=> (not res!799149) (not e!1135251))))

(assert (=> b!1774139 (= res!799149 (isEmpty!12334 (tail!2655 lt!687220)))))

(declare-fun b!1774140 () Bool)

(assert (=> b!1774140 (= e!1135252 (nullable!1479 (regex!3493 rule!422)))))

(declare-fun b!1774141 () Bool)

(declare-fun e!1135250 () Bool)

(assert (=> b!1774141 (= e!1135250 e!1135254)))

(declare-fun res!799147 () Bool)

(assert (=> b!1774141 (=> res!799147 e!1135254)))

(assert (=> b!1774141 (= res!799147 call!111177)))

(declare-fun b!1774142 () Bool)

(assert (=> b!1774142 (= e!1135249 e!1135253)))

(declare-fun c!288895 () Bool)

(assert (=> b!1774142 (= c!288895 ((_ is EmptyLang!4821) (regex!3493 rule!422)))))

(declare-fun b!1774143 () Bool)

(declare-fun res!799152 () Bool)

(assert (=> b!1774143 (=> res!799152 e!1135254)))

(assert (=> b!1774143 (= res!799152 (not (isEmpty!12334 (tail!2655 lt!687220))))))

(declare-fun d!542109 () Bool)

(assert (=> d!542109 e!1135249))

(declare-fun c!288893 () Bool)

(assert (=> d!542109 (= c!288893 ((_ is EmptyExpr!4821) (regex!3493 rule!422)))))

(assert (=> d!542109 (= lt!687336 e!1135252)))

(declare-fun c!288894 () Bool)

(assert (=> d!542109 (= c!288894 (isEmpty!12334 lt!687220))))

(assert (=> d!542109 (validRegex!1953 (regex!3493 rule!422))))

(assert (=> d!542109 (= (matchR!2294 (regex!3493 rule!422) lt!687220) lt!687336)))

(declare-fun b!1774144 () Bool)

(declare-fun res!799145 () Bool)

(assert (=> b!1774144 (=> (not res!799145) (not e!1135251))))

(assert (=> b!1774144 (= res!799145 (not call!111177))))

(declare-fun bm!111172 () Bool)

(assert (=> bm!111172 (= call!111177 (isEmpty!12334 lt!687220))))

(declare-fun b!1774145 () Bool)

(declare-fun res!799148 () Bool)

(declare-fun e!1135255 () Bool)

(assert (=> b!1774145 (=> res!799148 e!1135255)))

(assert (=> b!1774145 (= res!799148 (not ((_ is ElementMatch!4821) (regex!3493 rule!422))))))

(assert (=> b!1774145 (= e!1135253 e!1135255)))

(declare-fun b!1774146 () Bool)

(assert (=> b!1774146 (= e!1135251 (= (head!4128 lt!687220) (c!288836 (regex!3493 rule!422))))))

(declare-fun b!1774147 () Bool)

(declare-fun res!799151 () Bool)

(assert (=> b!1774147 (=> res!799151 e!1135255)))

(assert (=> b!1774147 (= res!799151 e!1135251)))

(declare-fun res!799150 () Bool)

(assert (=> b!1774147 (=> (not res!799150) (not e!1135251))))

(assert (=> b!1774147 (= res!799150 lt!687336)))

(declare-fun b!1774148 () Bool)

(assert (=> b!1774148 (= e!1135255 e!1135250)))

(declare-fun res!799146 () Bool)

(assert (=> b!1774148 (=> (not res!799146) (not e!1135250))))

(assert (=> b!1774148 (= res!799146 (not lt!687336))))

(assert (= (and d!542109 c!288894) b!1774140))

(assert (= (and d!542109 (not c!288894)) b!1774137))

(assert (= (and d!542109 c!288893) b!1774135))

(assert (= (and d!542109 (not c!288893)) b!1774142))

(assert (= (and b!1774142 c!288895) b!1774136))

(assert (= (and b!1774142 (not c!288895)) b!1774145))

(assert (= (and b!1774145 (not res!799148)) b!1774147))

(assert (= (and b!1774147 res!799150) b!1774144))

(assert (= (and b!1774144 res!799145) b!1774139))

(assert (= (and b!1774139 res!799149) b!1774146))

(assert (= (and b!1774147 (not res!799151)) b!1774148))

(assert (= (and b!1774148 res!799146) b!1774141))

(assert (= (and b!1774141 (not res!799147)) b!1774143))

(assert (= (and b!1774143 (not res!799152)) b!1774138))

(assert (= (or b!1774135 b!1774141 b!1774144) bm!111172))

(assert (=> b!1774143 m!2193813))

(assert (=> b!1774143 m!2193813))

(assert (=> b!1774143 m!2193815))

(assert (=> bm!111172 m!2193817))

(assert (=> b!1774138 m!2193819))

(declare-fun m!2194047 () Bool)

(assert (=> b!1774140 m!2194047))

(assert (=> b!1774139 m!2193813))

(assert (=> b!1774139 m!2193813))

(assert (=> b!1774139 m!2193815))

(assert (=> b!1774146 m!2193819))

(assert (=> b!1774137 m!2193819))

(assert (=> b!1774137 m!2193819))

(declare-fun m!2194049 () Bool)

(assert (=> b!1774137 m!2194049))

(assert (=> b!1774137 m!2193813))

(assert (=> b!1774137 m!2194049))

(assert (=> b!1774137 m!2193813))

(declare-fun m!2194051 () Bool)

(assert (=> b!1774137 m!2194051))

(assert (=> d!542109 m!2193817))

(declare-fun m!2194053 () Bool)

(assert (=> d!542109 m!2194053))

(assert (=> b!1773834 d!542109))

(declare-fun d!542111 () Bool)

(declare-fun res!799157 () Bool)

(declare-fun e!1135258 () Bool)

(assert (=> d!542111 (=> (not res!799157) (not e!1135258))))

(assert (=> d!542111 (= res!799157 (validRegex!1953 (regex!3493 rule!422)))))

(assert (=> d!542111 (= (ruleValid!991 thiss!24550 rule!422) e!1135258)))

(declare-fun b!1774153 () Bool)

(declare-fun res!799158 () Bool)

(assert (=> b!1774153 (=> (not res!799158) (not e!1135258))))

(assert (=> b!1774153 (= res!799158 (not (nullable!1479 (regex!3493 rule!422))))))

(declare-fun b!1774154 () Bool)

(assert (=> b!1774154 (= e!1135258 (not (= (tag!3877 rule!422) (String!22248 ""))))))

(assert (= (and d!542111 res!799157) b!1774153))

(assert (= (and b!1774153 res!799158) b!1774154))

(assert (=> d!542111 m!2194053))

(assert (=> b!1774153 m!2194047))

(assert (=> b!1773834 d!542111))

(declare-fun d!542113 () Bool)

(assert (=> d!542113 (ruleValid!991 thiss!24550 rule!422)))

(declare-fun lt!687339 () Unit!33742)

(declare-fun choose!11058 (LexerInterface!3122 Rule!6786 List!19597) Unit!33742)

(assert (=> d!542113 (= lt!687339 (choose!11058 thiss!24550 rule!422 rules!3447))))

(assert (=> d!542113 (contains!3525 rules!3447 rule!422)))

(assert (=> d!542113 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!514 thiss!24550 rule!422 rules!3447) lt!687339)))

(declare-fun bs!404845 () Bool)

(assert (= bs!404845 d!542113))

(assert (=> bs!404845 m!2193601))

(declare-fun m!2194055 () Bool)

(assert (=> bs!404845 m!2194055))

(assert (=> bs!404845 m!2193709))

(assert (=> b!1773834 d!542113))

(declare-fun d!542115 () Bool)

(declare-fun res!799161 () Bool)

(declare-fun e!1135261 () Bool)

(assert (=> d!542115 (=> (not res!799161) (not e!1135261))))

(declare-fun rulesValid!1320 (LexerInterface!3122 List!19597) Bool)

(assert (=> d!542115 (= res!799161 (rulesValid!1320 thiss!24550 rules!3447))))

(assert (=> d!542115 (= (rulesInvariant!2791 thiss!24550 rules!3447) e!1135261)))

(declare-fun b!1774157 () Bool)

(declare-datatypes ((List!19601 0))(
  ( (Nil!19531) (Cons!19531 (h!24932 String!22247) (t!165744 List!19601)) )
))
(declare-fun noDuplicateTag!1320 (LexerInterface!3122 List!19597 List!19601) Bool)

(assert (=> b!1774157 (= e!1135261 (noDuplicateTag!1320 thiss!24550 rules!3447 Nil!19531))))

(assert (= (and d!542115 res!799161) b!1774157))

(declare-fun m!2194057 () Bool)

(assert (=> d!542115 m!2194057))

(declare-fun m!2194059 () Bool)

(assert (=> b!1774157 m!2194059))

(assert (=> b!1773833 d!542115))

(declare-fun d!542117 () Bool)

(assert (=> d!542117 (= (inv!25380 (tag!3877 (h!24928 rules!3447))) (= (mod (str.len (value!109222 (tag!3877 (h!24928 rules!3447)))) 2) 0))))

(assert (=> b!1773812 d!542117))

(declare-fun d!542119 () Bool)

(declare-fun res!799164 () Bool)

(declare-fun e!1135264 () Bool)

(assert (=> d!542119 (=> (not res!799164) (not e!1135264))))

(declare-fun semiInverseModEq!1394 (Int Int) Bool)

(assert (=> d!542119 (= res!799164 (semiInverseModEq!1394 (toChars!4879 (transformation!3493 (h!24928 rules!3447))) (toValue!5020 (transformation!3493 (h!24928 rules!3447)))))))

(assert (=> d!542119 (= (inv!25385 (transformation!3493 (h!24928 rules!3447))) e!1135264)))

(declare-fun b!1774160 () Bool)

(declare-fun equivClasses!1335 (Int Int) Bool)

(assert (=> b!1774160 (= e!1135264 (equivClasses!1335 (toChars!4879 (transformation!3493 (h!24928 rules!3447))) (toValue!5020 (transformation!3493 (h!24928 rules!3447)))))))

(assert (= (and d!542119 res!799164) b!1774160))

(declare-fun m!2194061 () Bool)

(assert (=> d!542119 m!2194061))

(declare-fun m!2194063 () Bool)

(assert (=> b!1774160 m!2194063))

(assert (=> b!1773812 d!542119))

(declare-fun d!542121 () Bool)

(declare-fun isBalanced!2032 (Conc!6495) Bool)

(assert (=> d!542121 (= (inv!25388 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234)))) (isBalanced!2032 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234))))))))

(declare-fun bs!404846 () Bool)

(assert (= bs!404846 d!542121))

(declare-fun m!2194065 () Bool)

(assert (=> bs!404846 m!2194065))

(assert (=> tb!107487 d!542121))

(declare-fun d!542123 () Bool)

(assert (=> d!542123 (= (isEmpty!12334 suffix!1421) ((_ is Nil!19526) suffix!1421))))

(assert (=> b!1773837 d!542123))

(declare-fun d!542125 () Bool)

(assert (=> d!542125 (= (inv!25388 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249))) (isBalanced!2032 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249)))))))

(declare-fun bs!404847 () Bool)

(assert (= bs!404847 d!542125))

(declare-fun m!2194067 () Bool)

(assert (=> bs!404847 m!2194067))

(assert (=> tb!107475 d!542125))

(declare-fun d!542127 () Bool)

(assert (=> d!542127 (= (list!7935 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249))) (list!7937 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249)))))))

(declare-fun bs!404848 () Bool)

(assert (= bs!404848 d!542127))

(declare-fun m!2194069 () Bool)

(assert (=> bs!404848 m!2194069))

(assert (=> b!1773816 d!542127))

(declare-fun bs!404849 () Bool)

(declare-fun d!542129 () Bool)

(assert (= bs!404849 (and d!542129 b!1773817)))

(declare-fun lambda!70508 () Int)

(assert (=> bs!404849 (= lambda!70508 lambda!70496)))

(declare-fun b!1774165 () Bool)

(declare-fun e!1135267 () Bool)

(assert (=> b!1774165 (= e!1135267 true)))

(assert (=> d!542129 e!1135267))

(assert (= d!542129 b!1774165))

(assert (=> b!1774165 (< (dynLambda!9508 order!12499 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) (dynLambda!9509 order!12501 lambda!70508))))

(assert (=> b!1774165 (< (dynLambda!9510 order!12503 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) (dynLambda!9509 order!12501 lambda!70508))))

(assert (=> d!542129 (= (list!7935 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249))) (list!7935 lt!687249))))

(declare-fun lt!687342 () Unit!33742)

(declare-fun ForallOf!331 (Int BalanceConc!12934) Unit!33742)

(assert (=> d!542129 (= lt!687342 (ForallOf!331 lambda!70508 lt!687249))))

(assert (=> d!542129 (= (lemmaSemiInverse!631 (transformation!3493 (rule!5545 (_1!10967 lt!687234))) lt!687249) lt!687342)))

(declare-fun b_lambda!57867 () Bool)

(assert (=> (not b_lambda!57867) (not d!542129)))

(assert (=> d!542129 t!165661))

(declare-fun b_and!135247 () Bool)

(assert (= b_and!135205 (and (=> t!165661 result!129278) b_and!135247)))

(assert (=> d!542129 t!165663))

(declare-fun b_and!135249 () Bool)

(assert (= b_and!135207 (and (=> t!165663 result!129282) b_and!135249)))

(assert (=> d!542129 t!165665))

(declare-fun b_and!135251 () Bool)

(assert (= b_and!135209 (and (=> t!165665 result!129284) b_and!135251)))

(declare-fun b_lambda!57869 () Bool)

(assert (=> (not b_lambda!57869) (not d!542129)))

(assert (=> d!542129 t!165667))

(declare-fun b_and!135253 () Bool)

(assert (= b_and!135241 (and (=> t!165667 result!129286) b_and!135253)))

(assert (=> d!542129 t!165669))

(declare-fun b_and!135255 () Bool)

(assert (= b_and!135243 (and (=> t!165669 result!129290) b_and!135255)))

(assert (=> d!542129 t!165671))

(declare-fun b_and!135257 () Bool)

(assert (= b_and!135245 (and (=> t!165671 result!129292) b_and!135257)))

(declare-fun m!2194071 () Bool)

(assert (=> d!542129 m!2194071))

(assert (=> d!542129 m!2193685))

(assert (=> d!542129 m!2193727))

(assert (=> d!542129 m!2193729))

(assert (=> d!542129 m!2193731))

(assert (=> d!542129 m!2193727))

(assert (=> d!542129 m!2193729))

(assert (=> b!1773816 d!542129))

(declare-fun d!542131 () Bool)

(declare-fun isEmpty!12337 (Option!4008) Bool)

(assert (=> d!542131 (= (isDefined!3351 lt!687239) (not (isEmpty!12337 lt!687239)))))

(declare-fun bs!404850 () Bool)

(assert (= bs!404850 d!542131))

(declare-fun m!2194073 () Bool)

(assert (=> bs!404850 m!2194073))

(assert (=> b!1773814 d!542131))

(declare-fun b!1774184 () Bool)

(declare-fun e!1135275 () Option!4008)

(declare-fun lt!687355 () Option!4008)

(declare-fun lt!687356 () Option!4008)

(assert (=> b!1774184 (= e!1135275 (ite (and ((_ is None!4007) lt!687355) ((_ is None!4007) lt!687356)) None!4007 (ite ((_ is None!4007) lt!687356) lt!687355 (ite ((_ is None!4007) lt!687355) lt!687356 (ite (>= (size!15512 (_1!10967 (v!25486 lt!687355))) (size!15512 (_1!10967 (v!25486 lt!687356)))) lt!687355 lt!687356)))))))

(declare-fun call!111180 () Option!4008)

(assert (=> b!1774184 (= lt!687355 call!111180)))

(assert (=> b!1774184 (= lt!687356 (maxPrefix!1676 thiss!24550 (t!165680 rules!3447) lt!687220))))

(declare-fun b!1774185 () Bool)

(declare-fun res!799181 () Bool)

(declare-fun e!1135276 () Bool)

(assert (=> b!1774185 (=> (not res!799181) (not e!1135276))))

(declare-fun lt!687353 () Option!4008)

(assert (=> b!1774185 (= res!799181 (= (list!7935 (charsOf!2142 (_1!10967 (get!5973 lt!687353)))) (originalCharacters!4307 (_1!10967 (get!5973 lt!687353)))))))

(declare-fun b!1774186 () Bool)

(declare-fun res!799180 () Bool)

(assert (=> b!1774186 (=> (not res!799180) (not e!1135276))))

(assert (=> b!1774186 (= res!799180 (matchR!2294 (regex!3493 (rule!5545 (_1!10967 (get!5973 lt!687353)))) (list!7935 (charsOf!2142 (_1!10967 (get!5973 lt!687353))))))))

(declare-fun b!1774187 () Bool)

(declare-fun res!799184 () Bool)

(assert (=> b!1774187 (=> (not res!799184) (not e!1135276))))

(assert (=> b!1774187 (= res!799184 (= (++!5317 (list!7935 (charsOf!2142 (_1!10967 (get!5973 lt!687353)))) (_2!10967 (get!5973 lt!687353))) lt!687220))))

(declare-fun b!1774188 () Bool)

(declare-fun res!799183 () Bool)

(assert (=> b!1774188 (=> (not res!799183) (not e!1135276))))

(assert (=> b!1774188 (= res!799183 (= (value!109223 (_1!10967 (get!5973 lt!687353))) (apply!5293 (transformation!3493 (rule!5545 (_1!10967 (get!5973 lt!687353)))) (seqFromList!2462 (originalCharacters!4307 (_1!10967 (get!5973 lt!687353)))))))))

(declare-fun b!1774189 () Bool)

(assert (=> b!1774189 (= e!1135275 call!111180)))

(declare-fun b!1774190 () Bool)

(declare-fun e!1135274 () Bool)

(assert (=> b!1774190 (= e!1135274 e!1135276)))

(declare-fun res!799182 () Bool)

(assert (=> b!1774190 (=> (not res!799182) (not e!1135276))))

(assert (=> b!1774190 (= res!799182 (isDefined!3351 lt!687353))))

(declare-fun d!542133 () Bool)

(assert (=> d!542133 e!1135274))

(declare-fun res!799179 () Bool)

(assert (=> d!542133 (=> res!799179 e!1135274)))

(assert (=> d!542133 (= res!799179 (isEmpty!12337 lt!687353))))

(assert (=> d!542133 (= lt!687353 e!1135275)))

(declare-fun c!288899 () Bool)

(assert (=> d!542133 (= c!288899 (and ((_ is Cons!19527) rules!3447) ((_ is Nil!19527) (t!165680 rules!3447))))))

(declare-fun lt!687357 () Unit!33742)

(declare-fun lt!687354 () Unit!33742)

(assert (=> d!542133 (= lt!687357 lt!687354)))

(assert (=> d!542133 (isPrefix!1733 lt!687220 lt!687220)))

(declare-fun lemmaIsPrefixRefl!1146 (List!19596 List!19596) Unit!33742)

(assert (=> d!542133 (= lt!687354 (lemmaIsPrefixRefl!1146 lt!687220 lt!687220))))

(declare-fun rulesValidInductive!1184 (LexerInterface!3122 List!19597) Bool)

(assert (=> d!542133 (rulesValidInductive!1184 thiss!24550 rules!3447)))

(assert (=> d!542133 (= (maxPrefix!1676 thiss!24550 rules!3447 lt!687220) lt!687353)))

(declare-fun bm!111175 () Bool)

(assert (=> bm!111175 (= call!111180 (maxPrefixOneRule!1045 thiss!24550 (h!24928 rules!3447) lt!687220))))

(declare-fun b!1774191 () Bool)

(declare-fun res!799185 () Bool)

(assert (=> b!1774191 (=> (not res!799185) (not e!1135276))))

(assert (=> b!1774191 (= res!799185 (< (size!15514 (_2!10967 (get!5973 lt!687353))) (size!15514 lt!687220)))))

(declare-fun b!1774192 () Bool)

(assert (=> b!1774192 (= e!1135276 (contains!3525 rules!3447 (rule!5545 (_1!10967 (get!5973 lt!687353)))))))

(assert (= (and d!542133 c!288899) b!1774189))

(assert (= (and d!542133 (not c!288899)) b!1774184))

(assert (= (or b!1774189 b!1774184) bm!111175))

(assert (= (and d!542133 (not res!799179)) b!1774190))

(assert (= (and b!1774190 res!799182) b!1774185))

(assert (= (and b!1774185 res!799181) b!1774191))

(assert (= (and b!1774191 res!799185) b!1774187))

(assert (= (and b!1774187 res!799184) b!1774188))

(assert (= (and b!1774188 res!799183) b!1774186))

(assert (= (and b!1774186 res!799180) b!1774192))

(declare-fun m!2194075 () Bool)

(assert (=> b!1774185 m!2194075))

(declare-fun m!2194077 () Bool)

(assert (=> b!1774185 m!2194077))

(assert (=> b!1774185 m!2194077))

(declare-fun m!2194079 () Bool)

(assert (=> b!1774185 m!2194079))

(declare-fun m!2194081 () Bool)

(assert (=> bm!111175 m!2194081))

(declare-fun m!2194083 () Bool)

(assert (=> b!1774184 m!2194083))

(declare-fun m!2194085 () Bool)

(assert (=> d!542133 m!2194085))

(declare-fun m!2194087 () Bool)

(assert (=> d!542133 m!2194087))

(declare-fun m!2194089 () Bool)

(assert (=> d!542133 m!2194089))

(declare-fun m!2194091 () Bool)

(assert (=> d!542133 m!2194091))

(assert (=> b!1774187 m!2194075))

(assert (=> b!1774187 m!2194077))

(assert (=> b!1774187 m!2194077))

(assert (=> b!1774187 m!2194079))

(assert (=> b!1774187 m!2194079))

(declare-fun m!2194093 () Bool)

(assert (=> b!1774187 m!2194093))

(assert (=> b!1774186 m!2194075))

(assert (=> b!1774186 m!2194077))

(assert (=> b!1774186 m!2194077))

(assert (=> b!1774186 m!2194079))

(assert (=> b!1774186 m!2194079))

(declare-fun m!2194095 () Bool)

(assert (=> b!1774186 m!2194095))

(assert (=> b!1774188 m!2194075))

(declare-fun m!2194097 () Bool)

(assert (=> b!1774188 m!2194097))

(assert (=> b!1774188 m!2194097))

(declare-fun m!2194099 () Bool)

(assert (=> b!1774188 m!2194099))

(assert (=> b!1774191 m!2194075))

(declare-fun m!2194101 () Bool)

(assert (=> b!1774191 m!2194101))

(assert (=> b!1774191 m!2194029))

(assert (=> b!1774192 m!2194075))

(declare-fun m!2194103 () Bool)

(assert (=> b!1774192 m!2194103))

(declare-fun m!2194105 () Bool)

(assert (=> b!1774190 m!2194105))

(assert (=> b!1773814 d!542133))

(declare-fun d!542135 () Bool)

(assert (=> d!542135 (= (list!7935 lt!687224) (list!7937 (c!288837 lt!687224)))))

(declare-fun bs!404851 () Bool)

(assert (= bs!404851 d!542135))

(declare-fun m!2194107 () Bool)

(assert (=> bs!404851 m!2194107))

(assert (=> b!1773814 d!542135))

(declare-fun d!542137 () Bool)

(declare-fun lt!687358 () BalanceConc!12934)

(assert (=> d!542137 (= (list!7935 lt!687358) (originalCharacters!4307 token!523))))

(assert (=> d!542137 (= lt!687358 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 token!523))) (value!109223 token!523)))))

(assert (=> d!542137 (= (charsOf!2142 token!523) lt!687358)))

(declare-fun b_lambda!57871 () Bool)

(assert (=> (not b_lambda!57871) (not d!542137)))

(assert (=> d!542137 t!165688))

(declare-fun b_and!135259 () Bool)

(assert (= b_and!135247 (and (=> t!165688 result!129306) b_and!135259)))

(assert (=> d!542137 t!165690))

(declare-fun b_and!135261 () Bool)

(assert (= b_and!135249 (and (=> t!165690 result!129308) b_and!135261)))

(assert (=> d!542137 t!165692))

(declare-fun b_and!135263 () Bool)

(assert (= b_and!135251 (and (=> t!165692 result!129310) b_and!135263)))

(declare-fun m!2194109 () Bool)

(assert (=> d!542137 m!2194109))

(assert (=> d!542137 m!2193911))

(assert (=> b!1773814 d!542137))

(declare-fun b!1774203 () Bool)

(declare-fun e!1135285 () Bool)

(declare-fun e!1135283 () Bool)

(assert (=> b!1774203 (= e!1135285 e!1135283)))

(declare-fun c!288905 () Bool)

(assert (=> b!1774203 (= c!288905 ((_ is IntegerValue!10750) (value!109223 token!523)))))

(declare-fun d!542139 () Bool)

(declare-fun c!288904 () Bool)

(assert (=> d!542139 (= c!288904 ((_ is IntegerValue!10749) (value!109223 token!523)))))

(assert (=> d!542139 (= (inv!21 (value!109223 token!523)) e!1135285)))

(declare-fun b!1774204 () Bool)

(declare-fun inv!17 (TokenValue!3583) Bool)

(assert (=> b!1774204 (= e!1135283 (inv!17 (value!109223 token!523)))))

(declare-fun b!1774205 () Bool)

(declare-fun inv!16 (TokenValue!3583) Bool)

(assert (=> b!1774205 (= e!1135285 (inv!16 (value!109223 token!523)))))

(declare-fun b!1774206 () Bool)

(declare-fun res!799188 () Bool)

(declare-fun e!1135284 () Bool)

(assert (=> b!1774206 (=> res!799188 e!1135284)))

(assert (=> b!1774206 (= res!799188 (not ((_ is IntegerValue!10751) (value!109223 token!523))))))

(assert (=> b!1774206 (= e!1135283 e!1135284)))

(declare-fun b!1774207 () Bool)

(declare-fun inv!15 (TokenValue!3583) Bool)

(assert (=> b!1774207 (= e!1135284 (inv!15 (value!109223 token!523)))))

(assert (= (and d!542139 c!288904) b!1774205))

(assert (= (and d!542139 (not c!288904)) b!1774203))

(assert (= (and b!1774203 c!288905) b!1774204))

(assert (= (and b!1774203 (not c!288905)) b!1774206))

(assert (= (and b!1774206 (not res!799188)) b!1774207))

(declare-fun m!2194111 () Bool)

(assert (=> b!1774204 m!2194111))

(declare-fun m!2194113 () Bool)

(assert (=> b!1774205 m!2194113))

(declare-fun m!2194115 () Bool)

(assert (=> b!1774207 m!2194115))

(assert (=> b!1773818 d!542139))

(declare-fun d!542141 () Bool)

(declare-fun choose!11061 (Int) Bool)

(assert (=> d!542141 (= (Forall!860 lambda!70496) (choose!11061 lambda!70496))))

(declare-fun bs!404852 () Bool)

(assert (= bs!404852 d!542141))

(declare-fun m!2194117 () Bool)

(assert (=> bs!404852 m!2194117))

(assert (=> b!1773817 d!542141))

(declare-fun d!542143 () Bool)

(declare-fun e!1135288 () Bool)

(assert (=> d!542143 e!1135288))

(declare-fun res!799191 () Bool)

(assert (=> d!542143 (=> (not res!799191) (not e!1135288))))

(assert (=> d!542143 (= res!799191 (semiInverseModEq!1394 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))))))

(declare-fun Unit!33749 () Unit!33742)

(assert (=> d!542143 (= (lemmaInv!692 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) Unit!33749)))

(declare-fun b!1774210 () Bool)

(assert (=> b!1774210 (= e!1135288 (equivClasses!1335 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))))))

(assert (= (and d!542143 res!799191) b!1774210))

(declare-fun m!2194119 () Bool)

(assert (=> d!542143 m!2194119))

(declare-fun m!2194121 () Bool)

(assert (=> b!1774210 m!2194121))

(assert (=> b!1773817 d!542143))

(declare-fun d!542145 () Bool)

(declare-fun c!288906 () Bool)

(assert (=> d!542145 (= c!288906 ((_ is Node!6495) (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234))))))))

(declare-fun e!1135289 () Bool)

(assert (=> d!542145 (= (inv!25387 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234))))) e!1135289)))

(declare-fun b!1774211 () Bool)

(assert (=> b!1774211 (= e!1135289 (inv!25389 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234))))))))

(declare-fun b!1774212 () Bool)

(declare-fun e!1135290 () Bool)

(assert (=> b!1774212 (= e!1135289 e!1135290)))

(declare-fun res!799192 () Bool)

(assert (=> b!1774212 (= res!799192 (not ((_ is Leaf!9462) (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234)))))))))

(assert (=> b!1774212 (=> res!799192 e!1135290)))

(declare-fun b!1774213 () Bool)

(assert (=> b!1774213 (= e!1135290 (inv!25390 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234))))))))

(assert (= (and d!542145 c!288906) b!1774211))

(assert (= (and d!542145 (not c!288906)) b!1774212))

(assert (= (and b!1774212 (not res!799192)) b!1774213))

(declare-fun m!2194123 () Bool)

(assert (=> b!1774211 m!2194123))

(declare-fun m!2194125 () Bool)

(assert (=> b!1774213 m!2194125))

(assert (=> b!1773858 d!542145))

(declare-fun d!542147 () Bool)

(assert (=> d!542147 (= (maxPrefixOneRule!1045 thiss!24550 (rule!5545 (_1!10967 lt!687234)) lt!687238) (Some!4007 (tuple2!19131 (Token!6553 (apply!5293 (transformation!3493 (rule!5545 (_1!10967 lt!687234))) (seqFromList!2462 lt!687250)) (rule!5545 (_1!10967 lt!687234)) (size!15514 lt!687250) lt!687250) (_2!10967 lt!687234))))))

(declare-fun lt!687361 () Unit!33742)

(declare-fun choose!11062 (LexerInterface!3122 List!19597 List!19596 List!19596 List!19596 Rule!6786) Unit!33742)

(assert (=> d!542147 (= lt!687361 (choose!11062 thiss!24550 rules!3447 lt!687250 lt!687238 (_2!10967 lt!687234) (rule!5545 (_1!10967 lt!687234))))))

(assert (=> d!542147 (not (isEmpty!12335 rules!3447))))

(assert (=> d!542147 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!423 thiss!24550 rules!3447 lt!687250 lt!687238 (_2!10967 lt!687234) (rule!5545 (_1!10967 lt!687234))) lt!687361)))

(declare-fun bs!404853 () Bool)

(assert (= bs!404853 d!542147))

(assert (=> bs!404853 m!2193645))

(assert (=> bs!404853 m!2193645))

(assert (=> bs!404853 m!2193647))

(assert (=> bs!404853 m!2193703))

(assert (=> bs!404853 m!2193651))

(declare-fun m!2194127 () Bool)

(assert (=> bs!404853 m!2194127))

(assert (=> bs!404853 m!2193649))

(assert (=> b!1773838 d!542147))

(declare-fun b!1774306 () Bool)

(declare-fun e!1135346 () Bool)

(declare-fun lt!687454 () Option!4008)

(assert (=> b!1774306 (= e!1135346 (= (size!15512 (_1!10967 (get!5973 lt!687454))) (size!15514 (originalCharacters!4307 (_1!10967 (get!5973 lt!687454))))))))

(declare-fun b!1774307 () Bool)

(declare-fun e!1135345 () Option!4008)

(declare-datatypes ((tuple2!19134 0))(
  ( (tuple2!19135 (_1!10969 List!19596) (_2!10969 List!19596)) )
))
(declare-fun lt!687457 () tuple2!19134)

(assert (=> b!1774307 (= e!1135345 (Some!4007 (tuple2!19131 (Token!6553 (apply!5293 (transformation!3493 (rule!5545 (_1!10967 lt!687234))) (seqFromList!2462 (_1!10969 lt!687457))) (rule!5545 (_1!10967 lt!687234)) (size!15513 (seqFromList!2462 (_1!10969 lt!687457))) (_1!10969 lt!687457)) (_2!10969 lt!687457))))))

(declare-fun lt!687453 () Unit!33742)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!440 (Regex!4821 List!19596) Unit!33742)

(assert (=> b!1774307 (= lt!687453 (longestMatchIsAcceptedByMatchOrIsEmpty!440 (regex!3493 (rule!5545 (_1!10967 lt!687234))) lt!687238))))

(declare-fun res!799255 () Bool)

(declare-fun findLongestMatchInner!456 (Regex!4821 List!19596 Int List!19596 List!19596 Int) tuple2!19134)

(assert (=> b!1774307 (= res!799255 (isEmpty!12334 (_1!10969 (findLongestMatchInner!456 (regex!3493 (rule!5545 (_1!10967 lt!687234))) Nil!19526 (size!15514 Nil!19526) lt!687238 lt!687238 (size!15514 lt!687238)))))))

(declare-fun e!1135347 () Bool)

(assert (=> b!1774307 (=> res!799255 e!1135347)))

(assert (=> b!1774307 e!1135347))

(declare-fun lt!687455 () Unit!33742)

(assert (=> b!1774307 (= lt!687455 lt!687453)))

(declare-fun lt!687456 () Unit!33742)

(assert (=> b!1774307 (= lt!687456 (lemmaSemiInverse!631 (transformation!3493 (rule!5545 (_1!10967 lt!687234))) (seqFromList!2462 (_1!10969 lt!687457))))))

(declare-fun b!1774308 () Bool)

(declare-fun res!799258 () Bool)

(assert (=> b!1774308 (=> (not res!799258) (not e!1135346))))

(assert (=> b!1774308 (= res!799258 (= (++!5317 (list!7935 (charsOf!2142 (_1!10967 (get!5973 lt!687454)))) (_2!10967 (get!5973 lt!687454))) lt!687238))))

(declare-fun b!1774309 () Bool)

(assert (=> b!1774309 (= e!1135345 None!4007)))

(declare-fun b!1774310 () Bool)

(declare-fun e!1135344 () Bool)

(assert (=> b!1774310 (= e!1135344 e!1135346)))

(declare-fun res!799261 () Bool)

(assert (=> b!1774310 (=> (not res!799261) (not e!1135346))))

(assert (=> b!1774310 (= res!799261 (matchR!2294 (regex!3493 (rule!5545 (_1!10967 lt!687234))) (list!7935 (charsOf!2142 (_1!10967 (get!5973 lt!687454))))))))

(declare-fun b!1774311 () Bool)

(declare-fun res!799259 () Bool)

(assert (=> b!1774311 (=> (not res!799259) (not e!1135346))))

(assert (=> b!1774311 (= res!799259 (= (rule!5545 (_1!10967 (get!5973 lt!687454))) (rule!5545 (_1!10967 lt!687234))))))

(declare-fun b!1774312 () Bool)

(assert (=> b!1774312 (= e!1135347 (matchR!2294 (regex!3493 (rule!5545 (_1!10967 lt!687234))) (_1!10969 (findLongestMatchInner!456 (regex!3493 (rule!5545 (_1!10967 lt!687234))) Nil!19526 (size!15514 Nil!19526) lt!687238 lt!687238 (size!15514 lt!687238)))))))

(declare-fun b!1774313 () Bool)

(declare-fun res!799260 () Bool)

(assert (=> b!1774313 (=> (not res!799260) (not e!1135346))))

(assert (=> b!1774313 (= res!799260 (= (value!109223 (_1!10967 (get!5973 lt!687454))) (apply!5293 (transformation!3493 (rule!5545 (_1!10967 (get!5973 lt!687454)))) (seqFromList!2462 (originalCharacters!4307 (_1!10967 (get!5973 lt!687454)))))))))

(declare-fun b!1774314 () Bool)

(declare-fun res!799256 () Bool)

(assert (=> b!1774314 (=> (not res!799256) (not e!1135346))))

(assert (=> b!1774314 (= res!799256 (< (size!15514 (_2!10967 (get!5973 lt!687454))) (size!15514 lt!687238)))))

(declare-fun d!542149 () Bool)

(assert (=> d!542149 e!1135344))

(declare-fun res!799257 () Bool)

(assert (=> d!542149 (=> res!799257 e!1135344)))

(assert (=> d!542149 (= res!799257 (isEmpty!12337 lt!687454))))

(assert (=> d!542149 (= lt!687454 e!1135345)))

(declare-fun c!288922 () Bool)

(assert (=> d!542149 (= c!288922 (isEmpty!12334 (_1!10969 lt!687457)))))

(declare-fun findLongestMatch!383 (Regex!4821 List!19596) tuple2!19134)

(assert (=> d!542149 (= lt!687457 (findLongestMatch!383 (regex!3493 (rule!5545 (_1!10967 lt!687234))) lt!687238))))

(assert (=> d!542149 (ruleValid!991 thiss!24550 (rule!5545 (_1!10967 lt!687234)))))

(assert (=> d!542149 (= (maxPrefixOneRule!1045 thiss!24550 (rule!5545 (_1!10967 lt!687234)) lt!687238) lt!687454)))

(assert (= (and d!542149 c!288922) b!1774309))

(assert (= (and d!542149 (not c!288922)) b!1774307))

(assert (= (and b!1774307 (not res!799255)) b!1774312))

(assert (= (and d!542149 (not res!799257)) b!1774310))

(assert (= (and b!1774310 res!799261) b!1774308))

(assert (= (and b!1774308 res!799258) b!1774314))

(assert (= (and b!1774314 res!799256) b!1774311))

(assert (= (and b!1774311 res!799259) b!1774313))

(assert (= (and b!1774313 res!799260) b!1774306))

(declare-fun m!2194293 () Bool)

(assert (=> b!1774310 m!2194293))

(declare-fun m!2194297 () Bool)

(assert (=> b!1774310 m!2194297))

(assert (=> b!1774310 m!2194297))

(declare-fun m!2194299 () Bool)

(assert (=> b!1774310 m!2194299))

(assert (=> b!1774310 m!2194299))

(declare-fun m!2194301 () Bool)

(assert (=> b!1774310 m!2194301))

(declare-fun m!2194303 () Bool)

(assert (=> b!1774307 m!2194303))

(declare-fun m!2194305 () Bool)

(assert (=> b!1774307 m!2194305))

(declare-fun m!2194307 () Bool)

(assert (=> b!1774307 m!2194307))

(declare-fun m!2194309 () Bool)

(assert (=> b!1774307 m!2194309))

(assert (=> b!1774307 m!2194307))

(declare-fun m!2194311 () Bool)

(assert (=> b!1774307 m!2194311))

(assert (=> b!1774307 m!2194305))

(declare-fun m!2194313 () Bool)

(assert (=> b!1774307 m!2194313))

(declare-fun m!2194317 () Bool)

(assert (=> b!1774307 m!2194317))

(declare-fun m!2194323 () Bool)

(assert (=> b!1774307 m!2194323))

(assert (=> b!1774307 m!2194307))

(assert (=> b!1774307 m!2194307))

(declare-fun m!2194329 () Bool)

(assert (=> b!1774307 m!2194329))

(assert (=> b!1774307 m!2194313))

(declare-fun m!2194331 () Bool)

(assert (=> d!542149 m!2194331))

(declare-fun m!2194333 () Bool)

(assert (=> d!542149 m!2194333))

(declare-fun m!2194335 () Bool)

(assert (=> d!542149 m!2194335))

(declare-fun m!2194337 () Bool)

(assert (=> d!542149 m!2194337))

(assert (=> b!1774313 m!2194293))

(declare-fun m!2194339 () Bool)

(assert (=> b!1774313 m!2194339))

(assert (=> b!1774313 m!2194339))

(declare-fun m!2194341 () Bool)

(assert (=> b!1774313 m!2194341))

(assert (=> b!1774312 m!2194305))

(assert (=> b!1774312 m!2194313))

(assert (=> b!1774312 m!2194305))

(assert (=> b!1774312 m!2194313))

(assert (=> b!1774312 m!2194317))

(declare-fun m!2194343 () Bool)

(assert (=> b!1774312 m!2194343))

(assert (=> b!1774308 m!2194293))

(assert (=> b!1774308 m!2194297))

(assert (=> b!1774308 m!2194297))

(assert (=> b!1774308 m!2194299))

(assert (=> b!1774308 m!2194299))

(declare-fun m!2194345 () Bool)

(assert (=> b!1774308 m!2194345))

(assert (=> b!1774311 m!2194293))

(assert (=> b!1774306 m!2194293))

(declare-fun m!2194347 () Bool)

(assert (=> b!1774306 m!2194347))

(assert (=> b!1774314 m!2194293))

(declare-fun m!2194349 () Bool)

(assert (=> b!1774314 m!2194349))

(assert (=> b!1774314 m!2194313))

(assert (=> b!1773838 d!542149))

(declare-fun d!542195 () Bool)

(assert (=> d!542195 (= (seqFromList!2462 lt!687250) (fromListB!1127 lt!687250))))

(declare-fun bs!404859 () Bool)

(assert (= bs!404859 d!542195))

(declare-fun m!2194351 () Bool)

(assert (=> bs!404859 m!2194351))

(assert (=> b!1773838 d!542195))

(declare-fun d!542197 () Bool)

(assert (=> d!542197 (= (_2!10967 lt!687234) lt!687226)))

(declare-fun lt!687463 () Unit!33742)

(declare-fun choose!11063 (List!19596 List!19596 List!19596 List!19596 List!19596) Unit!33742)

(assert (=> d!542197 (= lt!687463 (choose!11063 lt!687250 (_2!10967 lt!687234) lt!687250 lt!687226 lt!687238))))

(assert (=> d!542197 (isPrefix!1733 lt!687250 lt!687238)))

(assert (=> d!542197 (= (lemmaSamePrefixThenSameSuffix!844 lt!687250 (_2!10967 lt!687234) lt!687250 lt!687226 lt!687238) lt!687463)))

(declare-fun bs!404860 () Bool)

(assert (= bs!404860 d!542197))

(declare-fun m!2194353 () Bool)

(assert (=> bs!404860 m!2194353))

(assert (=> bs!404860 m!2193667))

(assert (=> b!1773838 d!542197))

(declare-fun d!542199 () Bool)

(assert (=> d!542199 (= (apply!5293 (transformation!3493 (rule!5545 (_1!10967 lt!687234))) (seqFromList!2462 lt!687250)) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (seqFromList!2462 lt!687250)))))

(declare-fun b_lambda!57875 () Bool)

(assert (=> (not b_lambda!57875) (not d!542199)))

(declare-fun tb!107511 () Bool)

(declare-fun t!165700 () Bool)

(assert (=> (and b!1773810 (= (toValue!5020 (transformation!3493 rule!422)) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165700) tb!107511))

(declare-fun result!129318 () Bool)

(assert (=> tb!107511 (= result!129318 (inv!21 (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (seqFromList!2462 lt!687250))))))

(declare-fun m!2194361 () Bool)

(assert (=> tb!107511 m!2194361))

(assert (=> d!542199 t!165700))

(declare-fun b_and!135271 () Bool)

(assert (= b_and!135253 (and (=> t!165700 result!129318) b_and!135271)))

(declare-fun t!165702 () Bool)

(declare-fun tb!107513 () Bool)

(assert (=> (and b!1773815 (= (toValue!5020 (transformation!3493 (rule!5545 token!523))) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165702) tb!107513))

(declare-fun result!129320 () Bool)

(assert (= result!129320 result!129318))

(assert (=> d!542199 t!165702))

(declare-fun b_and!135273 () Bool)

(assert (= b_and!135255 (and (=> t!165702 result!129320) b_and!135273)))

(declare-fun t!165704 () Bool)

(declare-fun tb!107515 () Bool)

(assert (=> (and b!1773829 (= (toValue!5020 (transformation!3493 (h!24928 rules!3447))) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165704) tb!107515))

(declare-fun result!129322 () Bool)

(assert (= result!129322 result!129318))

(assert (=> d!542199 t!165704))

(declare-fun b_and!135275 () Bool)

(assert (= b_and!135257 (and (=> t!165704 result!129322) b_and!135275)))

(assert (=> d!542199 m!2193645))

(declare-fun m!2194363 () Bool)

(assert (=> d!542199 m!2194363))

(assert (=> b!1773838 d!542199))

(declare-fun d!542203 () Bool)

(declare-fun lt!687467 () List!19596)

(assert (=> d!542203 (= (++!5317 lt!687250 lt!687467) lt!687238)))

(declare-fun e!1135357 () List!19596)

(assert (=> d!542203 (= lt!687467 e!1135357)))

(declare-fun c!288929 () Bool)

(assert (=> d!542203 (= c!288929 ((_ is Cons!19526) lt!687250))))

(assert (=> d!542203 (>= (size!15514 lt!687238) (size!15514 lt!687250))))

(assert (=> d!542203 (= (getSuffix!900 lt!687238 lt!687250) lt!687467)))

(declare-fun b!1774329 () Bool)

(assert (=> b!1774329 (= e!1135357 (getSuffix!900 (tail!2655 lt!687238) (t!165679 lt!687250)))))

(declare-fun b!1774330 () Bool)

(assert (=> b!1774330 (= e!1135357 lt!687238)))

(assert (= (and d!542203 c!288929) b!1774329))

(assert (= (and d!542203 (not c!288929)) b!1774330))

(declare-fun m!2194369 () Bool)

(assert (=> d!542203 m!2194369))

(assert (=> d!542203 m!2194313))

(assert (=> d!542203 m!2193651))

(declare-fun m!2194371 () Bool)

(assert (=> b!1774329 m!2194371))

(assert (=> b!1774329 m!2194371))

(declare-fun m!2194373 () Bool)

(assert (=> b!1774329 m!2194373))

(assert (=> b!1773838 d!542203))

(declare-fun d!542207 () Bool)

(declare-fun lt!687470 () Int)

(assert (=> d!542207 (>= lt!687470 0)))

(declare-fun e!1135360 () Int)

(assert (=> d!542207 (= lt!687470 e!1135360)))

(declare-fun c!288932 () Bool)

(assert (=> d!542207 (= c!288932 ((_ is Nil!19526) lt!687250))))

(assert (=> d!542207 (= (size!15514 lt!687250) lt!687470)))

(declare-fun b!1774335 () Bool)

(assert (=> b!1774335 (= e!1135360 0)))

(declare-fun b!1774336 () Bool)

(assert (=> b!1774336 (= e!1135360 (+ 1 (size!15514 (t!165679 lt!687250))))))

(assert (= (and d!542207 c!288932) b!1774335))

(assert (= (and d!542207 (not c!288932)) b!1774336))

(declare-fun m!2194375 () Bool)

(assert (=> b!1774336 m!2194375))

(assert (=> b!1773838 d!542207))

(declare-fun d!542209 () Bool)

(declare-fun lt!687471 () Bool)

(assert (=> d!542209 (= lt!687471 (select (content!2832 rules!3447) rule!422))))

(declare-fun e!1135361 () Bool)

(assert (=> d!542209 (= lt!687471 e!1135361)))

(declare-fun res!799264 () Bool)

(assert (=> d!542209 (=> (not res!799264) (not e!1135361))))

(assert (=> d!542209 (= res!799264 ((_ is Cons!19527) rules!3447))))

(assert (=> d!542209 (= (contains!3525 rules!3447 rule!422) lt!687471)))

(declare-fun b!1774337 () Bool)

(declare-fun e!1135362 () Bool)

(assert (=> b!1774337 (= e!1135361 e!1135362)))

(declare-fun res!799265 () Bool)

(assert (=> b!1774337 (=> res!799265 e!1135362)))

(assert (=> b!1774337 (= res!799265 (= (h!24928 rules!3447) rule!422))))

(declare-fun b!1774338 () Bool)

(assert (=> b!1774338 (= e!1135362 (contains!3525 (t!165680 rules!3447) rule!422))))

(assert (= (and d!542209 res!799264) b!1774337))

(assert (= (and b!1774337 (not res!799265)) b!1774338))

(assert (=> d!542209 m!2193885))

(declare-fun m!2194377 () Bool)

(assert (=> d!542209 m!2194377))

(declare-fun m!2194379 () Bool)

(assert (=> b!1774338 m!2194379))

(assert (=> b!1773839 d!542209))

(declare-fun b!1774339 () Bool)

(declare-fun e!1135365 () Bool)

(declare-fun e!1135363 () Bool)

(assert (=> b!1774339 (= e!1135365 e!1135363)))

(declare-fun c!288934 () Bool)

(assert (=> b!1774339 (= c!288934 ((_ is IntegerValue!10750) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249)))))

(declare-fun d!542211 () Bool)

(declare-fun c!288933 () Bool)

(assert (=> d!542211 (= c!288933 ((_ is IntegerValue!10749) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249)))))

(assert (=> d!542211 (= (inv!21 (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249)) e!1135365)))

(declare-fun b!1774340 () Bool)

(assert (=> b!1774340 (= e!1135363 (inv!17 (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249)))))

(declare-fun b!1774341 () Bool)

(assert (=> b!1774341 (= e!1135365 (inv!16 (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249)))))

(declare-fun b!1774342 () Bool)

(declare-fun res!799266 () Bool)

(declare-fun e!1135364 () Bool)

(assert (=> b!1774342 (=> res!799266 e!1135364)))

(assert (=> b!1774342 (= res!799266 (not ((_ is IntegerValue!10751) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249))))))

(assert (=> b!1774342 (= e!1135363 e!1135364)))

(declare-fun b!1774343 () Bool)

(assert (=> b!1774343 (= e!1135364 (inv!15 (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249)))))

(assert (= (and d!542211 c!288933) b!1774341))

(assert (= (and d!542211 (not c!288933)) b!1774339))

(assert (= (and b!1774339 c!288934) b!1774340))

(assert (= (and b!1774339 (not c!288934)) b!1774342))

(assert (= (and b!1774342 (not res!799266)) b!1774343))

(declare-fun m!2194381 () Bool)

(assert (=> b!1774340 m!2194381))

(declare-fun m!2194383 () Bool)

(assert (=> b!1774341 m!2194383))

(declare-fun m!2194385 () Bool)

(assert (=> b!1774343 m!2194385))

(assert (=> tb!107481 d!542211))

(declare-fun b!1774344 () Bool)

(declare-fun e!1135366 () Bool)

(declare-fun lt!687472 () Bool)

(declare-fun call!111182 () Bool)

(assert (=> b!1774344 (= e!1135366 (= lt!687472 call!111182))))

(declare-fun b!1774345 () Bool)

(declare-fun e!1135370 () Bool)

(assert (=> b!1774345 (= e!1135370 (not lt!687472))))

(declare-fun b!1774346 () Bool)

(declare-fun e!1135369 () Bool)

(assert (=> b!1774346 (= e!1135369 (matchR!2294 (derivativeStep!1248 (regex!3493 (rule!5545 (_1!10967 lt!687234))) (head!4128 lt!687250)) (tail!2655 lt!687250)))))

(declare-fun b!1774347 () Bool)

(declare-fun e!1135371 () Bool)

(assert (=> b!1774347 (= e!1135371 (not (= (head!4128 lt!687250) (c!288836 (regex!3493 (rule!5545 (_1!10967 lt!687234)))))))))

(declare-fun b!1774348 () Bool)

(declare-fun res!799271 () Bool)

(declare-fun e!1135368 () Bool)

(assert (=> b!1774348 (=> (not res!799271) (not e!1135368))))

(assert (=> b!1774348 (= res!799271 (isEmpty!12334 (tail!2655 lt!687250)))))

(declare-fun b!1774349 () Bool)

(assert (=> b!1774349 (= e!1135369 (nullable!1479 (regex!3493 (rule!5545 (_1!10967 lt!687234)))))))

(declare-fun b!1774350 () Bool)

(declare-fun e!1135367 () Bool)

(assert (=> b!1774350 (= e!1135367 e!1135371)))

(declare-fun res!799269 () Bool)

(assert (=> b!1774350 (=> res!799269 e!1135371)))

(assert (=> b!1774350 (= res!799269 call!111182)))

(declare-fun b!1774351 () Bool)

(assert (=> b!1774351 (= e!1135366 e!1135370)))

(declare-fun c!288937 () Bool)

(assert (=> b!1774351 (= c!288937 ((_ is EmptyLang!4821) (regex!3493 (rule!5545 (_1!10967 lt!687234)))))))

(declare-fun b!1774352 () Bool)

(declare-fun res!799274 () Bool)

(assert (=> b!1774352 (=> res!799274 e!1135371)))

(assert (=> b!1774352 (= res!799274 (not (isEmpty!12334 (tail!2655 lt!687250))))))

(declare-fun d!542213 () Bool)

(assert (=> d!542213 e!1135366))

(declare-fun c!288935 () Bool)

(assert (=> d!542213 (= c!288935 ((_ is EmptyExpr!4821) (regex!3493 (rule!5545 (_1!10967 lt!687234)))))))

(assert (=> d!542213 (= lt!687472 e!1135369)))

(declare-fun c!288936 () Bool)

(assert (=> d!542213 (= c!288936 (isEmpty!12334 lt!687250))))

(assert (=> d!542213 (validRegex!1953 (regex!3493 (rule!5545 (_1!10967 lt!687234))))))

(assert (=> d!542213 (= (matchR!2294 (regex!3493 (rule!5545 (_1!10967 lt!687234))) lt!687250) lt!687472)))

(declare-fun b!1774353 () Bool)

(declare-fun res!799267 () Bool)

(assert (=> b!1774353 (=> (not res!799267) (not e!1135368))))

(assert (=> b!1774353 (= res!799267 (not call!111182))))

(declare-fun bm!111177 () Bool)

(assert (=> bm!111177 (= call!111182 (isEmpty!12334 lt!687250))))

(declare-fun b!1774354 () Bool)

(declare-fun res!799270 () Bool)

(declare-fun e!1135372 () Bool)

(assert (=> b!1774354 (=> res!799270 e!1135372)))

(assert (=> b!1774354 (= res!799270 (not ((_ is ElementMatch!4821) (regex!3493 (rule!5545 (_1!10967 lt!687234))))))))

(assert (=> b!1774354 (= e!1135370 e!1135372)))

(declare-fun b!1774355 () Bool)

(assert (=> b!1774355 (= e!1135368 (= (head!4128 lt!687250) (c!288836 (regex!3493 (rule!5545 (_1!10967 lt!687234))))))))

(declare-fun b!1774356 () Bool)

(declare-fun res!799273 () Bool)

(assert (=> b!1774356 (=> res!799273 e!1135372)))

(assert (=> b!1774356 (= res!799273 e!1135368)))

(declare-fun res!799272 () Bool)

(assert (=> b!1774356 (=> (not res!799272) (not e!1135368))))

(assert (=> b!1774356 (= res!799272 lt!687472)))

(declare-fun b!1774357 () Bool)

(assert (=> b!1774357 (= e!1135372 e!1135367)))

(declare-fun res!799268 () Bool)

(assert (=> b!1774357 (=> (not res!799268) (not e!1135367))))

(assert (=> b!1774357 (= res!799268 (not lt!687472))))

(assert (= (and d!542213 c!288936) b!1774349))

(assert (= (and d!542213 (not c!288936)) b!1774346))

(assert (= (and d!542213 c!288935) b!1774344))

(assert (= (and d!542213 (not c!288935)) b!1774351))

(assert (= (and b!1774351 c!288937) b!1774345))

(assert (= (and b!1774351 (not c!288937)) b!1774354))

(assert (= (and b!1774354 (not res!799270)) b!1774356))

(assert (= (and b!1774356 res!799272) b!1774353))

(assert (= (and b!1774353 res!799267) b!1774348))

(assert (= (and b!1774348 res!799271) b!1774355))

(assert (= (and b!1774356 (not res!799273)) b!1774357))

(assert (= (and b!1774357 res!799268) b!1774350))

(assert (= (and b!1774350 (not res!799269)) b!1774352))

(assert (= (and b!1774352 (not res!799274)) b!1774347))

(assert (= (or b!1774344 b!1774350 b!1774353) bm!111177))

(declare-fun m!2194387 () Bool)

(assert (=> b!1774352 m!2194387))

(assert (=> b!1774352 m!2194387))

(declare-fun m!2194389 () Bool)

(assert (=> b!1774352 m!2194389))

(declare-fun m!2194391 () Bool)

(assert (=> bm!111177 m!2194391))

(declare-fun m!2194393 () Bool)

(assert (=> b!1774347 m!2194393))

(declare-fun m!2194395 () Bool)

(assert (=> b!1774349 m!2194395))

(assert (=> b!1774348 m!2194387))

(assert (=> b!1774348 m!2194387))

(assert (=> b!1774348 m!2194389))

(assert (=> b!1774355 m!2194393))

(assert (=> b!1774346 m!2194393))

(assert (=> b!1774346 m!2194393))

(declare-fun m!2194397 () Bool)

(assert (=> b!1774346 m!2194397))

(assert (=> b!1774346 m!2194387))

(assert (=> b!1774346 m!2194397))

(assert (=> b!1774346 m!2194387))

(declare-fun m!2194399 () Bool)

(assert (=> b!1774346 m!2194399))

(assert (=> d!542213 m!2194391))

(declare-fun m!2194401 () Bool)

(assert (=> d!542213 m!2194401))

(assert (=> b!1773821 d!542213))

(declare-fun b!1774358 () Bool)

(declare-fun e!1135374 () Option!4008)

(declare-fun lt!687475 () Option!4008)

(declare-fun lt!687476 () Option!4008)

(assert (=> b!1774358 (= e!1135374 (ite (and ((_ is None!4007) lt!687475) ((_ is None!4007) lt!687476)) None!4007 (ite ((_ is None!4007) lt!687476) lt!687475 (ite ((_ is None!4007) lt!687475) lt!687476 (ite (>= (size!15512 (_1!10967 (v!25486 lt!687475))) (size!15512 (_1!10967 (v!25486 lt!687476)))) lt!687475 lt!687476)))))))

(declare-fun call!111183 () Option!4008)

(assert (=> b!1774358 (= lt!687475 call!111183)))

(assert (=> b!1774358 (= lt!687476 (maxPrefix!1676 thiss!24550 (t!165680 rules!3447) lt!687238))))

(declare-fun b!1774359 () Bool)

(declare-fun res!799277 () Bool)

(declare-fun e!1135375 () Bool)

(assert (=> b!1774359 (=> (not res!799277) (not e!1135375))))

(declare-fun lt!687473 () Option!4008)

(assert (=> b!1774359 (= res!799277 (= (list!7935 (charsOf!2142 (_1!10967 (get!5973 lt!687473)))) (originalCharacters!4307 (_1!10967 (get!5973 lt!687473)))))))

(declare-fun b!1774360 () Bool)

(declare-fun res!799276 () Bool)

(assert (=> b!1774360 (=> (not res!799276) (not e!1135375))))

(assert (=> b!1774360 (= res!799276 (matchR!2294 (regex!3493 (rule!5545 (_1!10967 (get!5973 lt!687473)))) (list!7935 (charsOf!2142 (_1!10967 (get!5973 lt!687473))))))))

(declare-fun b!1774361 () Bool)

(declare-fun res!799280 () Bool)

(assert (=> b!1774361 (=> (not res!799280) (not e!1135375))))

(assert (=> b!1774361 (= res!799280 (= (++!5317 (list!7935 (charsOf!2142 (_1!10967 (get!5973 lt!687473)))) (_2!10967 (get!5973 lt!687473))) lt!687238))))

(declare-fun b!1774362 () Bool)

(declare-fun res!799279 () Bool)

(assert (=> b!1774362 (=> (not res!799279) (not e!1135375))))

(assert (=> b!1774362 (= res!799279 (= (value!109223 (_1!10967 (get!5973 lt!687473))) (apply!5293 (transformation!3493 (rule!5545 (_1!10967 (get!5973 lt!687473)))) (seqFromList!2462 (originalCharacters!4307 (_1!10967 (get!5973 lt!687473)))))))))

(declare-fun b!1774363 () Bool)

(assert (=> b!1774363 (= e!1135374 call!111183)))

(declare-fun b!1774364 () Bool)

(declare-fun e!1135373 () Bool)

(assert (=> b!1774364 (= e!1135373 e!1135375)))

(declare-fun res!799278 () Bool)

(assert (=> b!1774364 (=> (not res!799278) (not e!1135375))))

(assert (=> b!1774364 (= res!799278 (isDefined!3351 lt!687473))))

(declare-fun d!542215 () Bool)

(assert (=> d!542215 e!1135373))

(declare-fun res!799275 () Bool)

(assert (=> d!542215 (=> res!799275 e!1135373)))

(assert (=> d!542215 (= res!799275 (isEmpty!12337 lt!687473))))

(assert (=> d!542215 (= lt!687473 e!1135374)))

(declare-fun c!288938 () Bool)

(assert (=> d!542215 (= c!288938 (and ((_ is Cons!19527) rules!3447) ((_ is Nil!19527) (t!165680 rules!3447))))))

(declare-fun lt!687477 () Unit!33742)

(declare-fun lt!687474 () Unit!33742)

(assert (=> d!542215 (= lt!687477 lt!687474)))

(assert (=> d!542215 (isPrefix!1733 lt!687238 lt!687238)))

(assert (=> d!542215 (= lt!687474 (lemmaIsPrefixRefl!1146 lt!687238 lt!687238))))

(assert (=> d!542215 (rulesValidInductive!1184 thiss!24550 rules!3447)))

(assert (=> d!542215 (= (maxPrefix!1676 thiss!24550 rules!3447 lt!687238) lt!687473)))

(declare-fun bm!111178 () Bool)

(assert (=> bm!111178 (= call!111183 (maxPrefixOneRule!1045 thiss!24550 (h!24928 rules!3447) lt!687238))))

(declare-fun b!1774365 () Bool)

(declare-fun res!799281 () Bool)

(assert (=> b!1774365 (=> (not res!799281) (not e!1135375))))

(assert (=> b!1774365 (= res!799281 (< (size!15514 (_2!10967 (get!5973 lt!687473))) (size!15514 lt!687238)))))

(declare-fun b!1774366 () Bool)

(assert (=> b!1774366 (= e!1135375 (contains!3525 rules!3447 (rule!5545 (_1!10967 (get!5973 lt!687473)))))))

(assert (= (and d!542215 c!288938) b!1774363))

(assert (= (and d!542215 (not c!288938)) b!1774358))

(assert (= (or b!1774363 b!1774358) bm!111178))

(assert (= (and d!542215 (not res!799275)) b!1774364))

(assert (= (and b!1774364 res!799278) b!1774359))

(assert (= (and b!1774359 res!799277) b!1774365))

(assert (= (and b!1774365 res!799281) b!1774361))

(assert (= (and b!1774361 res!799280) b!1774362))

(assert (= (and b!1774362 res!799279) b!1774360))

(assert (= (and b!1774360 res!799276) b!1774366))

(declare-fun m!2194403 () Bool)

(assert (=> b!1774359 m!2194403))

(declare-fun m!2194405 () Bool)

(assert (=> b!1774359 m!2194405))

(assert (=> b!1774359 m!2194405))

(declare-fun m!2194407 () Bool)

(assert (=> b!1774359 m!2194407))

(declare-fun m!2194409 () Bool)

(assert (=> bm!111178 m!2194409))

(declare-fun m!2194411 () Bool)

(assert (=> b!1774358 m!2194411))

(declare-fun m!2194413 () Bool)

(assert (=> d!542215 m!2194413))

(declare-fun m!2194415 () Bool)

(assert (=> d!542215 m!2194415))

(declare-fun m!2194417 () Bool)

(assert (=> d!542215 m!2194417))

(assert (=> d!542215 m!2194091))

(assert (=> b!1774361 m!2194403))

(assert (=> b!1774361 m!2194405))

(assert (=> b!1774361 m!2194405))

(assert (=> b!1774361 m!2194407))

(assert (=> b!1774361 m!2194407))

(declare-fun m!2194419 () Bool)

(assert (=> b!1774361 m!2194419))

(assert (=> b!1774360 m!2194403))

(assert (=> b!1774360 m!2194405))

(assert (=> b!1774360 m!2194405))

(assert (=> b!1774360 m!2194407))

(assert (=> b!1774360 m!2194407))

(declare-fun m!2194421 () Bool)

(assert (=> b!1774360 m!2194421))

(assert (=> b!1774362 m!2194403))

(declare-fun m!2194423 () Bool)

(assert (=> b!1774362 m!2194423))

(assert (=> b!1774362 m!2194423))

(declare-fun m!2194425 () Bool)

(assert (=> b!1774362 m!2194425))

(assert (=> b!1774365 m!2194403))

(declare-fun m!2194427 () Bool)

(assert (=> b!1774365 m!2194427))

(assert (=> b!1774365 m!2194313))

(assert (=> b!1774366 m!2194403))

(declare-fun m!2194429 () Bool)

(assert (=> b!1774366 m!2194429))

(declare-fun m!2194431 () Bool)

(assert (=> b!1774364 m!2194431))

(assert (=> b!1773820 d!542215))

(declare-fun b!1774516 () Bool)

(declare-fun res!799340 () Bool)

(declare-fun e!1135458 () Bool)

(assert (=> b!1774516 (=> (not res!799340) (not e!1135458))))

(declare-fun lt!687560 () Token!6552)

(assert (=> b!1774516 (= res!799340 (matchR!2294 (regex!3493 (get!5972 (getRuleFromTag!541 thiss!24550 rules!3447 (tag!3877 (rule!5545 lt!687560))))) (list!7935 (charsOf!2142 lt!687560))))))

(declare-fun d!542217 () Bool)

(assert (=> d!542217 (isDefined!3351 (maxPrefix!1676 thiss!24550 rules!3447 (++!5317 lt!687220 suffix!1421)))))

(declare-fun lt!687545 () Unit!33742)

(declare-fun e!1135459 () Unit!33742)

(assert (=> d!542217 (= lt!687545 e!1135459)))

(declare-fun c!288956 () Bool)

(assert (=> d!542217 (= c!288956 (isEmpty!12337 (maxPrefix!1676 thiss!24550 rules!3447 (++!5317 lt!687220 suffix!1421))))))

(declare-fun lt!687551 () Unit!33742)

(declare-fun lt!687553 () Unit!33742)

(assert (=> d!542217 (= lt!687551 lt!687553)))

(assert (=> d!542217 e!1135458))

(declare-fun res!799339 () Bool)

(assert (=> d!542217 (=> (not res!799339) (not e!1135458))))

(assert (=> d!542217 (= res!799339 (isDefined!3352 (getRuleFromTag!541 thiss!24550 rules!3447 (tag!3877 (rule!5545 lt!687560)))))))

(assert (=> d!542217 (= lt!687553 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!541 thiss!24550 rules!3447 lt!687220 lt!687560))))

(declare-fun lt!687547 () Unit!33742)

(declare-fun lt!687557 () Unit!33742)

(assert (=> d!542217 (= lt!687547 lt!687557)))

(declare-fun lt!687559 () List!19596)

(assert (=> d!542217 (isPrefix!1733 lt!687559 (++!5317 lt!687220 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!329 (List!19596 List!19596 List!19596) Unit!33742)

(assert (=> d!542217 (= lt!687557 (lemmaPrefixStaysPrefixWhenAddingToSuffix!329 lt!687559 lt!687220 suffix!1421))))

(assert (=> d!542217 (= lt!687559 (list!7935 (charsOf!2142 lt!687560)))))

(declare-fun lt!687549 () Unit!33742)

(declare-fun lt!687556 () Unit!33742)

(assert (=> d!542217 (= lt!687549 lt!687556)))

(declare-fun lt!687554 () List!19596)

(declare-fun lt!687552 () List!19596)

(assert (=> d!542217 (isPrefix!1733 lt!687554 (++!5317 lt!687554 lt!687552))))

(assert (=> d!542217 (= lt!687556 (lemmaConcatTwoListThenFirstIsPrefix!1242 lt!687554 lt!687552))))

(assert (=> d!542217 (= lt!687552 (_2!10967 (get!5973 (maxPrefix!1676 thiss!24550 rules!3447 lt!687220))))))

(assert (=> d!542217 (= lt!687554 (list!7935 (charsOf!2142 lt!687560)))))

(declare-datatypes ((List!19603 0))(
  ( (Nil!19533) (Cons!19533 (h!24934 Token!6552) (t!165746 List!19603)) )
))
(declare-fun head!4130 (List!19603) Token!6552)

(declare-datatypes ((IArray!12999 0))(
  ( (IArray!13000 (innerList!6557 List!19603)) )
))
(declare-datatypes ((Conc!6497 0))(
  ( (Node!6497 (left!15641 Conc!6497) (right!15971 Conc!6497) (csize!13224 Int) (cheight!6708 Int)) (Leaf!9464 (xs!9373 IArray!12999) (csize!13225 Int)) (Empty!6497) )
))
(declare-datatypes ((BalanceConc!12938 0))(
  ( (BalanceConc!12939 (c!288971 Conc!6497)) )
))
(declare-fun list!7939 (BalanceConc!12938) List!19603)

(declare-datatypes ((tuple2!19138 0))(
  ( (tuple2!19139 (_1!10971 BalanceConc!12938) (_2!10971 BalanceConc!12934)) )
))
(declare-fun lex!1468 (LexerInterface!3122 List!19597 BalanceConc!12934) tuple2!19138)

(assert (=> d!542217 (= lt!687560 (head!4130 (list!7939 (_1!10971 (lex!1468 thiss!24550 rules!3447 (seqFromList!2462 lt!687220))))))))

(assert (=> d!542217 (not (isEmpty!12335 rules!3447))))

(assert (=> d!542217 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!644 thiss!24550 rules!3447 lt!687220 suffix!1421) lt!687545)))

(declare-fun b!1774518 () Bool)

(declare-fun Unit!33750 () Unit!33742)

(assert (=> b!1774518 (= e!1135459 Unit!33750)))

(declare-fun lt!687558 () List!19596)

(assert (=> b!1774518 (= lt!687558 (++!5317 lt!687220 suffix!1421))))

(declare-fun lt!687555 () Unit!33742)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!337 (LexerInterface!3122 Rule!6786 List!19597 List!19596) Unit!33742)

(assert (=> b!1774518 (= lt!687555 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!337 thiss!24550 (rule!5545 lt!687560) rules!3447 lt!687558))))

(assert (=> b!1774518 (isEmpty!12337 (maxPrefixOneRule!1045 thiss!24550 (rule!5545 lt!687560) lt!687558))))

(declare-fun lt!687561 () Unit!33742)

(assert (=> b!1774518 (= lt!687561 lt!687555)))

(declare-fun lt!687546 () List!19596)

(assert (=> b!1774518 (= lt!687546 (list!7935 (charsOf!2142 lt!687560)))))

(declare-fun lt!687548 () Unit!33742)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!333 (LexerInterface!3122 Rule!6786 List!19596 List!19596) Unit!33742)

(assert (=> b!1774518 (= lt!687548 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!333 thiss!24550 (rule!5545 lt!687560) lt!687546 (++!5317 lt!687220 suffix!1421)))))

(assert (=> b!1774518 (not (matchR!2294 (regex!3493 (rule!5545 lt!687560)) lt!687546))))

(declare-fun lt!687550 () Unit!33742)

(assert (=> b!1774518 (= lt!687550 lt!687548)))

(assert (=> b!1774518 false))

(declare-fun b!1774519 () Bool)

(declare-fun Unit!33751 () Unit!33742)

(assert (=> b!1774519 (= e!1135459 Unit!33751)))

(declare-fun b!1774517 () Bool)

(assert (=> b!1774517 (= e!1135458 (= (rule!5545 lt!687560) (get!5972 (getRuleFromTag!541 thiss!24550 rules!3447 (tag!3877 (rule!5545 lt!687560))))))))

(assert (= (and d!542217 res!799339) b!1774516))

(assert (= (and b!1774516 res!799340) b!1774517))

(assert (= (and d!542217 c!288956) b!1774518))

(assert (= (and d!542217 (not c!288956)) b!1774519))

(declare-fun m!2194573 () Bool)

(assert (=> b!1774516 m!2194573))

(declare-fun m!2194575 () Bool)

(assert (=> b!1774516 m!2194575))

(declare-fun m!2194577 () Bool)

(assert (=> b!1774516 m!2194577))

(declare-fun m!2194579 () Bool)

(assert (=> b!1774516 m!2194579))

(assert (=> b!1774516 m!2194573))

(assert (=> b!1774516 m!2194577))

(assert (=> b!1774516 m!2194579))

(declare-fun m!2194581 () Bool)

(assert (=> b!1774516 m!2194581))

(declare-fun m!2194583 () Bool)

(assert (=> d!542217 m!2194583))

(assert (=> d!542217 m!2193681))

(declare-fun m!2194585 () Bool)

(assert (=> d!542217 m!2194585))

(declare-fun m!2194587 () Bool)

(assert (=> d!542217 m!2194587))

(declare-fun m!2194589 () Bool)

(assert (=> d!542217 m!2194589))

(declare-fun m!2194591 () Bool)

(assert (=> d!542217 m!2194591))

(assert (=> d!542217 m!2193657))

(assert (=> d!542217 m!2194587))

(declare-fun m!2194593 () Bool)

(assert (=> d!542217 m!2194593))

(declare-fun m!2194595 () Bool)

(assert (=> d!542217 m!2194595))

(declare-fun m!2194597 () Bool)

(assert (=> d!542217 m!2194597))

(declare-fun m!2194599 () Bool)

(assert (=> d!542217 m!2194599))

(assert (=> d!542217 m!2193657))

(declare-fun m!2194601 () Bool)

(assert (=> d!542217 m!2194601))

(assert (=> d!542217 m!2194573))

(assert (=> d!542217 m!2194577))

(assert (=> d!542217 m!2194591))

(declare-fun m!2194603 () Bool)

(assert (=> d!542217 m!2194603))

(declare-fun m!2194605 () Bool)

(assert (=> d!542217 m!2194605))

(declare-fun m!2194607 () Bool)

(assert (=> d!542217 m!2194607))

(assert (=> d!542217 m!2193681))

(assert (=> d!542217 m!2194587))

(assert (=> d!542217 m!2194599))

(declare-fun m!2194609 () Bool)

(assert (=> d!542217 m!2194609))

(assert (=> d!542217 m!2194595))

(assert (=> d!542217 m!2194573))

(declare-fun m!2194611 () Bool)

(assert (=> d!542217 m!2194611))

(assert (=> d!542217 m!2193703))

(assert (=> d!542217 m!2193681))

(assert (=> d!542217 m!2194577))

(assert (=> d!542217 m!2194579))

(assert (=> b!1774518 m!2193681))

(declare-fun m!2194613 () Bool)

(assert (=> b!1774518 m!2194613))

(assert (=> b!1774518 m!2194577))

(declare-fun m!2194615 () Bool)

(assert (=> b!1774518 m!2194615))

(declare-fun m!2194617 () Bool)

(assert (=> b!1774518 m!2194617))

(declare-fun m!2194619 () Bool)

(assert (=> b!1774518 m!2194619))

(assert (=> b!1774518 m!2194617))

(declare-fun m!2194621 () Bool)

(assert (=> b!1774518 m!2194621))

(assert (=> b!1774518 m!2193681))

(assert (=> b!1774518 m!2194577))

(assert (=> b!1774518 m!2194579))

(assert (=> b!1774517 m!2194573))

(assert (=> b!1774517 m!2194573))

(assert (=> b!1774517 m!2194575))

(assert (=> b!1773820 d!542217))

(declare-fun d!542267 () Bool)

(assert (=> d!542267 (= (get!5973 lt!687216) (v!25486 lt!687216))))

(assert (=> b!1773820 d!542267))

(declare-fun b!1774529 () Bool)

(declare-fun res!799351 () Bool)

(declare-fun e!1135466 () Bool)

(assert (=> b!1774529 (=> (not res!799351) (not e!1135466))))

(assert (=> b!1774529 (= res!799351 (= (head!4128 lt!687220) (head!4128 lt!687238)))))

(declare-fun d!542269 () Bool)

(declare-fun e!1135467 () Bool)

(assert (=> d!542269 e!1135467))

(declare-fun res!799349 () Bool)

(assert (=> d!542269 (=> res!799349 e!1135467)))

(declare-fun lt!687564 () Bool)

(assert (=> d!542269 (= res!799349 (not lt!687564))))

(declare-fun e!1135468 () Bool)

(assert (=> d!542269 (= lt!687564 e!1135468)))

(declare-fun res!799352 () Bool)

(assert (=> d!542269 (=> res!799352 e!1135468)))

(assert (=> d!542269 (= res!799352 ((_ is Nil!19526) lt!687220))))

(assert (=> d!542269 (= (isPrefix!1733 lt!687220 lt!687238) lt!687564)))

(declare-fun b!1774528 () Bool)

(assert (=> b!1774528 (= e!1135468 e!1135466)))

(declare-fun res!799350 () Bool)

(assert (=> b!1774528 (=> (not res!799350) (not e!1135466))))

(assert (=> b!1774528 (= res!799350 (not ((_ is Nil!19526) lt!687238)))))

(declare-fun b!1774531 () Bool)

(assert (=> b!1774531 (= e!1135467 (>= (size!15514 lt!687238) (size!15514 lt!687220)))))

(declare-fun b!1774530 () Bool)

(assert (=> b!1774530 (= e!1135466 (isPrefix!1733 (tail!2655 lt!687220) (tail!2655 lt!687238)))))

(assert (= (and d!542269 (not res!799352)) b!1774528))

(assert (= (and b!1774528 res!799350) b!1774529))

(assert (= (and b!1774529 res!799351) b!1774530))

(assert (= (and d!542269 (not res!799349)) b!1774531))

(assert (=> b!1774529 m!2193819))

(declare-fun m!2194623 () Bool)

(assert (=> b!1774529 m!2194623))

(assert (=> b!1774531 m!2194313))

(assert (=> b!1774531 m!2194029))

(assert (=> b!1774530 m!2193813))

(assert (=> b!1774530 m!2194371))

(assert (=> b!1774530 m!2193813))

(assert (=> b!1774530 m!2194371))

(declare-fun m!2194625 () Bool)

(assert (=> b!1774530 m!2194625))

(assert (=> b!1773820 d!542269))

(declare-fun d!542271 () Bool)

(declare-fun isEmpty!12339 (Option!4009) Bool)

(assert (=> d!542271 (= (isDefined!3352 lt!687254) (not (isEmpty!12339 lt!687254)))))

(declare-fun bs!404871 () Bool)

(assert (= bs!404871 d!542271))

(declare-fun m!2194627 () Bool)

(assert (=> bs!404871 m!2194627))

(assert (=> b!1773820 d!542271))

(declare-fun b!1774533 () Bool)

(declare-fun res!799355 () Bool)

(declare-fun e!1135469 () Bool)

(assert (=> b!1774533 (=> (not res!799355) (not e!1135469))))

(assert (=> b!1774533 (= res!799355 (= (head!4128 lt!687250) (head!4128 lt!687238)))))

(declare-fun d!542273 () Bool)

(declare-fun e!1135470 () Bool)

(assert (=> d!542273 e!1135470))

(declare-fun res!799353 () Bool)

(assert (=> d!542273 (=> res!799353 e!1135470)))

(declare-fun lt!687565 () Bool)

(assert (=> d!542273 (= res!799353 (not lt!687565))))

(declare-fun e!1135471 () Bool)

(assert (=> d!542273 (= lt!687565 e!1135471)))

(declare-fun res!799356 () Bool)

(assert (=> d!542273 (=> res!799356 e!1135471)))

(assert (=> d!542273 (= res!799356 ((_ is Nil!19526) lt!687250))))

(assert (=> d!542273 (= (isPrefix!1733 lt!687250 lt!687238) lt!687565)))

(declare-fun b!1774532 () Bool)

(assert (=> b!1774532 (= e!1135471 e!1135469)))

(declare-fun res!799354 () Bool)

(assert (=> b!1774532 (=> (not res!799354) (not e!1135469))))

(assert (=> b!1774532 (= res!799354 (not ((_ is Nil!19526) lt!687238)))))

(declare-fun b!1774535 () Bool)

(assert (=> b!1774535 (= e!1135470 (>= (size!15514 lt!687238) (size!15514 lt!687250)))))

(declare-fun b!1774534 () Bool)

(assert (=> b!1774534 (= e!1135469 (isPrefix!1733 (tail!2655 lt!687250) (tail!2655 lt!687238)))))

(assert (= (and d!542273 (not res!799356)) b!1774532))

(assert (= (and b!1774532 res!799354) b!1774533))

(assert (= (and b!1774533 res!799355) b!1774534))

(assert (= (and d!542273 (not res!799353)) b!1774535))

(assert (=> b!1774533 m!2194393))

(assert (=> b!1774533 m!2194623))

(assert (=> b!1774535 m!2194313))

(assert (=> b!1774535 m!2193651))

(assert (=> b!1774534 m!2194387))

(assert (=> b!1774534 m!2194371))

(assert (=> b!1774534 m!2194387))

(assert (=> b!1774534 m!2194371))

(declare-fun m!2194629 () Bool)

(assert (=> b!1774534 m!2194629))

(assert (=> b!1773820 d!542273))

(declare-fun d!542275 () Bool)

(assert (=> d!542275 (isPrefix!1733 lt!687220 (++!5317 lt!687220 suffix!1421))))

(declare-fun lt!687568 () Unit!33742)

(declare-fun choose!11065 (List!19596 List!19596) Unit!33742)

(assert (=> d!542275 (= lt!687568 (choose!11065 lt!687220 suffix!1421))))

(assert (=> d!542275 (= (lemmaConcatTwoListThenFirstIsPrefix!1242 lt!687220 suffix!1421) lt!687568)))

(declare-fun bs!404872 () Bool)

(assert (= bs!404872 d!542275))

(assert (=> bs!404872 m!2193681))

(assert (=> bs!404872 m!2193681))

(declare-fun m!2194631 () Bool)

(assert (=> bs!404872 m!2194631))

(declare-fun m!2194633 () Bool)

(assert (=> bs!404872 m!2194633))

(assert (=> b!1773820 d!542275))

(declare-fun b!1774537 () Bool)

(declare-fun res!799359 () Bool)

(declare-fun e!1135472 () Bool)

(assert (=> b!1774537 (=> (not res!799359) (not e!1135472))))

(assert (=> b!1774537 (= res!799359 (= (head!4128 lt!687250) (head!4128 (++!5317 lt!687250 (_2!10967 lt!687234)))))))

(declare-fun d!542277 () Bool)

(declare-fun e!1135473 () Bool)

(assert (=> d!542277 e!1135473))

(declare-fun res!799357 () Bool)

(assert (=> d!542277 (=> res!799357 e!1135473)))

(declare-fun lt!687569 () Bool)

(assert (=> d!542277 (= res!799357 (not lt!687569))))

(declare-fun e!1135474 () Bool)

(assert (=> d!542277 (= lt!687569 e!1135474)))

(declare-fun res!799360 () Bool)

(assert (=> d!542277 (=> res!799360 e!1135474)))

(assert (=> d!542277 (= res!799360 ((_ is Nil!19526) lt!687250))))

(assert (=> d!542277 (= (isPrefix!1733 lt!687250 (++!5317 lt!687250 (_2!10967 lt!687234))) lt!687569)))

(declare-fun b!1774536 () Bool)

(assert (=> b!1774536 (= e!1135474 e!1135472)))

(declare-fun res!799358 () Bool)

(assert (=> b!1774536 (=> (not res!799358) (not e!1135472))))

(assert (=> b!1774536 (= res!799358 (not ((_ is Nil!19526) (++!5317 lt!687250 (_2!10967 lt!687234)))))))

(declare-fun b!1774539 () Bool)

(assert (=> b!1774539 (= e!1135473 (>= (size!15514 (++!5317 lt!687250 (_2!10967 lt!687234))) (size!15514 lt!687250)))))

(declare-fun b!1774538 () Bool)

(assert (=> b!1774538 (= e!1135472 (isPrefix!1733 (tail!2655 lt!687250) (tail!2655 (++!5317 lt!687250 (_2!10967 lt!687234)))))))

(assert (= (and d!542277 (not res!799360)) b!1774536))

(assert (= (and b!1774536 res!799358) b!1774537))

(assert (= (and b!1774537 res!799359) b!1774538))

(assert (= (and d!542277 (not res!799357)) b!1774539))

(assert (=> b!1774537 m!2194393))

(assert (=> b!1774537 m!2193675))

(declare-fun m!2194635 () Bool)

(assert (=> b!1774537 m!2194635))

(assert (=> b!1774539 m!2193675))

(declare-fun m!2194637 () Bool)

(assert (=> b!1774539 m!2194637))

(assert (=> b!1774539 m!2193651))

(assert (=> b!1774538 m!2194387))

(assert (=> b!1774538 m!2193675))

(declare-fun m!2194639 () Bool)

(assert (=> b!1774538 m!2194639))

(assert (=> b!1774538 m!2194387))

(assert (=> b!1774538 m!2194639))

(declare-fun m!2194641 () Bool)

(assert (=> b!1774538 m!2194641))

(assert (=> b!1773820 d!542277))

(declare-fun d!542279 () Bool)

(assert (=> d!542279 (isPrefix!1733 lt!687250 (++!5317 lt!687250 (_2!10967 lt!687234)))))

(declare-fun lt!687570 () Unit!33742)

(assert (=> d!542279 (= lt!687570 (choose!11065 lt!687250 (_2!10967 lt!687234)))))

(assert (=> d!542279 (= (lemmaConcatTwoListThenFirstIsPrefix!1242 lt!687250 (_2!10967 lt!687234)) lt!687570)))

(declare-fun bs!404873 () Bool)

(assert (= bs!404873 d!542279))

(assert (=> bs!404873 m!2193675))

(assert (=> bs!404873 m!2193675))

(assert (=> bs!404873 m!2193677))

(declare-fun m!2194643 () Bool)

(assert (=> bs!404873 m!2194643))

(assert (=> b!1773820 d!542279))

(declare-fun b!1774542 () Bool)

(declare-fun res!799362 () Bool)

(declare-fun e!1135475 () Bool)

(assert (=> b!1774542 (=> (not res!799362) (not e!1135475))))

(declare-fun lt!687571 () List!19596)

(assert (=> b!1774542 (= res!799362 (= (size!15514 lt!687571) (+ (size!15514 lt!687220) (size!15514 suffix!1421))))))

(declare-fun d!542281 () Bool)

(assert (=> d!542281 e!1135475))

(declare-fun res!799361 () Bool)

(assert (=> d!542281 (=> (not res!799361) (not e!1135475))))

(assert (=> d!542281 (= res!799361 (= (content!2834 lt!687571) ((_ map or) (content!2834 lt!687220) (content!2834 suffix!1421))))))

(declare-fun e!1135476 () List!19596)

(assert (=> d!542281 (= lt!687571 e!1135476)))

(declare-fun c!288957 () Bool)

(assert (=> d!542281 (= c!288957 ((_ is Nil!19526) lt!687220))))

(assert (=> d!542281 (= (++!5317 lt!687220 suffix!1421) lt!687571)))

(declare-fun b!1774543 () Bool)

(assert (=> b!1774543 (= e!1135475 (or (not (= suffix!1421 Nil!19526)) (= lt!687571 lt!687220)))))

(declare-fun b!1774540 () Bool)

(assert (=> b!1774540 (= e!1135476 suffix!1421)))

(declare-fun b!1774541 () Bool)

(assert (=> b!1774541 (= e!1135476 (Cons!19526 (h!24927 lt!687220) (++!5317 (t!165679 lt!687220) suffix!1421)))))

(assert (= (and d!542281 c!288957) b!1774540))

(assert (= (and d!542281 (not c!288957)) b!1774541))

(assert (= (and d!542281 res!799361) b!1774542))

(assert (= (and b!1774542 res!799362) b!1774543))

(declare-fun m!2194645 () Bool)

(assert (=> b!1774542 m!2194645))

(assert (=> b!1774542 m!2194029))

(declare-fun m!2194647 () Bool)

(assert (=> b!1774542 m!2194647))

(declare-fun m!2194649 () Bool)

(assert (=> d!542281 m!2194649))

(assert (=> d!542281 m!2194035))

(declare-fun m!2194651 () Bool)

(assert (=> d!542281 m!2194651))

(declare-fun m!2194653 () Bool)

(assert (=> b!1774541 m!2194653))

(assert (=> b!1773820 d!542281))

(declare-fun b!1774546 () Bool)

(declare-fun res!799364 () Bool)

(declare-fun e!1135477 () Bool)

(assert (=> b!1774546 (=> (not res!799364) (not e!1135477))))

(declare-fun lt!687572 () List!19596)

(assert (=> b!1774546 (= res!799364 (= (size!15514 lt!687572) (+ (size!15514 lt!687250) (size!15514 (_2!10967 lt!687234)))))))

(declare-fun d!542283 () Bool)

(assert (=> d!542283 e!1135477))

(declare-fun res!799363 () Bool)

(assert (=> d!542283 (=> (not res!799363) (not e!1135477))))

(assert (=> d!542283 (= res!799363 (= (content!2834 lt!687572) ((_ map or) (content!2834 lt!687250) (content!2834 (_2!10967 lt!687234)))))))

(declare-fun e!1135478 () List!19596)

(assert (=> d!542283 (= lt!687572 e!1135478)))

(declare-fun c!288958 () Bool)

(assert (=> d!542283 (= c!288958 ((_ is Nil!19526) lt!687250))))

(assert (=> d!542283 (= (++!5317 lt!687250 (_2!10967 lt!687234)) lt!687572)))

(declare-fun b!1774547 () Bool)

(assert (=> b!1774547 (= e!1135477 (or (not (= (_2!10967 lt!687234) Nil!19526)) (= lt!687572 lt!687250)))))

(declare-fun b!1774544 () Bool)

(assert (=> b!1774544 (= e!1135478 (_2!10967 lt!687234))))

(declare-fun b!1774545 () Bool)

(assert (=> b!1774545 (= e!1135478 (Cons!19526 (h!24927 lt!687250) (++!5317 (t!165679 lt!687250) (_2!10967 lt!687234))))))

(assert (= (and d!542283 c!288958) b!1774544))

(assert (= (and d!542283 (not c!288958)) b!1774545))

(assert (= (and d!542283 res!799363) b!1774546))

(assert (= (and b!1774546 res!799364) b!1774547))

(declare-fun m!2194655 () Bool)

(assert (=> b!1774546 m!2194655))

(assert (=> b!1774546 m!2193651))

(declare-fun m!2194657 () Bool)

(assert (=> b!1774546 m!2194657))

(declare-fun m!2194659 () Bool)

(assert (=> d!542283 m!2194659))

(declare-fun m!2194661 () Bool)

(assert (=> d!542283 m!2194661))

(declare-fun m!2194663 () Bool)

(assert (=> d!542283 m!2194663))

(declare-fun m!2194665 () Bool)

(assert (=> b!1774545 m!2194665))

(assert (=> b!1773820 d!542283))

(declare-fun d!542285 () Bool)

(declare-fun e!1135490 () Bool)

(assert (=> d!542285 e!1135490))

(declare-fun res!799369 () Bool)

(assert (=> d!542285 (=> res!799369 e!1135490)))

(declare-fun lt!687580 () Option!4009)

(assert (=> d!542285 (= res!799369 (isEmpty!12339 lt!687580))))

(declare-fun e!1135488 () Option!4009)

(assert (=> d!542285 (= lt!687580 e!1135488)))

(declare-fun c!288964 () Bool)

(assert (=> d!542285 (= c!288964 (and ((_ is Cons!19527) rules!3447) (= (tag!3877 (h!24928 rules!3447)) (tag!3877 (rule!5545 (_1!10967 lt!687234))))))))

(assert (=> d!542285 (rulesInvariant!2791 thiss!24550 rules!3447)))

(assert (=> d!542285 (= (getRuleFromTag!541 thiss!24550 rules!3447 (tag!3877 (rule!5545 (_1!10967 lt!687234)))) lt!687580)))

(declare-fun b!1774560 () Bool)

(declare-fun e!1135489 () Option!4009)

(assert (=> b!1774560 (= e!1135488 e!1135489)))

(declare-fun c!288963 () Bool)

(assert (=> b!1774560 (= c!288963 (and ((_ is Cons!19527) rules!3447) (not (= (tag!3877 (h!24928 rules!3447)) (tag!3877 (rule!5545 (_1!10967 lt!687234)))))))))

(declare-fun b!1774561 () Bool)

(declare-fun e!1135487 () Bool)

(assert (=> b!1774561 (= e!1135487 (= (tag!3877 (get!5972 lt!687580)) (tag!3877 (rule!5545 (_1!10967 lt!687234)))))))

(declare-fun b!1774562 () Bool)

(assert (=> b!1774562 (= e!1135489 None!4008)))

(declare-fun b!1774563 () Bool)

(assert (=> b!1774563 (= e!1135490 e!1135487)))

(declare-fun res!799370 () Bool)

(assert (=> b!1774563 (=> (not res!799370) (not e!1135487))))

(assert (=> b!1774563 (= res!799370 (contains!3525 rules!3447 (get!5972 lt!687580)))))

(declare-fun b!1774564 () Bool)

(declare-fun lt!687579 () Unit!33742)

(declare-fun lt!687581 () Unit!33742)

(assert (=> b!1774564 (= lt!687579 lt!687581)))

(assert (=> b!1774564 (rulesInvariant!2791 thiss!24550 (t!165680 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!208 (LexerInterface!3122 Rule!6786 List!19597) Unit!33742)

(assert (=> b!1774564 (= lt!687581 (lemmaInvariantOnRulesThenOnTail!208 thiss!24550 (h!24928 rules!3447) (t!165680 rules!3447)))))

(assert (=> b!1774564 (= e!1135489 (getRuleFromTag!541 thiss!24550 (t!165680 rules!3447) (tag!3877 (rule!5545 (_1!10967 lt!687234)))))))

(declare-fun b!1774565 () Bool)

(assert (=> b!1774565 (= e!1135488 (Some!4008 (h!24928 rules!3447)))))

(assert (= (and d!542285 c!288964) b!1774565))

(assert (= (and d!542285 (not c!288964)) b!1774560))

(assert (= (and b!1774560 c!288963) b!1774564))

(assert (= (and b!1774560 (not c!288963)) b!1774562))

(assert (= (and d!542285 (not res!799369)) b!1774563))

(assert (= (and b!1774563 res!799370) b!1774561))

(declare-fun m!2194667 () Bool)

(assert (=> d!542285 m!2194667))

(assert (=> d!542285 m!2193751))

(declare-fun m!2194669 () Bool)

(assert (=> b!1774561 m!2194669))

(assert (=> b!1774563 m!2194669))

(assert (=> b!1774563 m!2194669))

(declare-fun m!2194671 () Bool)

(assert (=> b!1774563 m!2194671))

(declare-fun m!2194673 () Bool)

(assert (=> b!1774564 m!2194673))

(declare-fun m!2194675 () Bool)

(assert (=> b!1774564 m!2194675))

(declare-fun m!2194677 () Bool)

(assert (=> b!1774564 m!2194677))

(assert (=> b!1773820 d!542285))

(assert (=> b!1773820 d!542055))

(declare-fun d!542287 () Bool)

(assert (=> d!542287 (= (list!7935 lt!687249) (list!7937 (c!288837 lt!687249)))))

(declare-fun bs!404874 () Bool)

(assert (= bs!404874 d!542287))

(declare-fun m!2194679 () Bool)

(assert (=> bs!404874 m!2194679))

(assert (=> b!1773820 d!542287))

(declare-fun d!542289 () Bool)

(declare-fun e!1135493 () Bool)

(assert (=> d!542289 e!1135493))

(declare-fun res!799375 () Bool)

(assert (=> d!542289 (=> (not res!799375) (not e!1135493))))

(assert (=> d!542289 (= res!799375 (isDefined!3352 (getRuleFromTag!541 thiss!24550 rules!3447 (tag!3877 (rule!5545 (_1!10967 lt!687234))))))))

(declare-fun lt!687584 () Unit!33742)

(declare-fun choose!11068 (LexerInterface!3122 List!19597 List!19596 Token!6552) Unit!33742)

(assert (=> d!542289 (= lt!687584 (choose!11068 thiss!24550 rules!3447 lt!687238 (_1!10967 lt!687234)))))

(assert (=> d!542289 (rulesInvariant!2791 thiss!24550 rules!3447)))

(assert (=> d!542289 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!541 thiss!24550 rules!3447 lt!687238 (_1!10967 lt!687234)) lt!687584)))

(declare-fun b!1774570 () Bool)

(declare-fun res!799376 () Bool)

(assert (=> b!1774570 (=> (not res!799376) (not e!1135493))))

(assert (=> b!1774570 (= res!799376 (matchR!2294 (regex!3493 (get!5972 (getRuleFromTag!541 thiss!24550 rules!3447 (tag!3877 (rule!5545 (_1!10967 lt!687234)))))) (list!7935 (charsOf!2142 (_1!10967 lt!687234)))))))

(declare-fun b!1774571 () Bool)

(assert (=> b!1774571 (= e!1135493 (= (rule!5545 (_1!10967 lt!687234)) (get!5972 (getRuleFromTag!541 thiss!24550 rules!3447 (tag!3877 (rule!5545 (_1!10967 lt!687234)))))))))

(assert (= (and d!542289 res!799375) b!1774570))

(assert (= (and b!1774570 res!799376) b!1774571))

(assert (=> d!542289 m!2193689))

(assert (=> d!542289 m!2193689))

(declare-fun m!2194681 () Bool)

(assert (=> d!542289 m!2194681))

(declare-fun m!2194683 () Bool)

(assert (=> d!542289 m!2194683))

(assert (=> d!542289 m!2193751))

(assert (=> b!1774570 m!2193671))

(assert (=> b!1774570 m!2193695))

(assert (=> b!1774570 m!2193695))

(declare-fun m!2194685 () Bool)

(assert (=> b!1774570 m!2194685))

(assert (=> b!1774570 m!2193671))

(assert (=> b!1774570 m!2193689))

(assert (=> b!1774570 m!2193689))

(declare-fun m!2194687 () Bool)

(assert (=> b!1774570 m!2194687))

(assert (=> b!1774571 m!2193689))

(assert (=> b!1774571 m!2193689))

(assert (=> b!1774571 m!2194687))

(assert (=> b!1773820 d!542289))

(declare-fun d!542291 () Bool)

(assert (=> d!542291 (= (inv!25380 (tag!3877 (rule!5545 token!523))) (= (mod (str.len (value!109222 (tag!3877 (rule!5545 token!523)))) 2) 0))))

(assert (=> b!1773824 d!542291))

(declare-fun d!542293 () Bool)

(declare-fun res!799377 () Bool)

(declare-fun e!1135494 () Bool)

(assert (=> d!542293 (=> (not res!799377) (not e!1135494))))

(assert (=> d!542293 (= res!799377 (semiInverseModEq!1394 (toChars!4879 (transformation!3493 (rule!5545 token!523))) (toValue!5020 (transformation!3493 (rule!5545 token!523)))))))

(assert (=> d!542293 (= (inv!25385 (transformation!3493 (rule!5545 token!523))) e!1135494)))

(declare-fun b!1774572 () Bool)

(assert (=> b!1774572 (= e!1135494 (equivClasses!1335 (toChars!4879 (transformation!3493 (rule!5545 token!523))) (toValue!5020 (transformation!3493 (rule!5545 token!523)))))))

(assert (= (and d!542293 res!799377) b!1774572))

(declare-fun m!2194689 () Bool)

(assert (=> d!542293 m!2194689))

(declare-fun m!2194691 () Bool)

(assert (=> b!1774572 m!2194691))

(assert (=> b!1773824 d!542293))

(declare-fun b!1774574 () Bool)

(declare-fun res!799380 () Bool)

(declare-fun e!1135495 () Bool)

(assert (=> b!1774574 (=> (not res!799380) (not e!1135495))))

(assert (=> b!1774574 (= res!799380 (= (head!4128 (++!5317 lt!687220 (Cons!19526 (head!4128 lt!687253) Nil!19526))) (head!4128 lt!687238)))))

(declare-fun d!542295 () Bool)

(declare-fun e!1135496 () Bool)

(assert (=> d!542295 e!1135496))

(declare-fun res!799378 () Bool)

(assert (=> d!542295 (=> res!799378 e!1135496)))

(declare-fun lt!687585 () Bool)

(assert (=> d!542295 (= res!799378 (not lt!687585))))

(declare-fun e!1135497 () Bool)

(assert (=> d!542295 (= lt!687585 e!1135497)))

(declare-fun res!799381 () Bool)

(assert (=> d!542295 (=> res!799381 e!1135497)))

(assert (=> d!542295 (= res!799381 ((_ is Nil!19526) (++!5317 lt!687220 (Cons!19526 (head!4128 lt!687253) Nil!19526))))))

(assert (=> d!542295 (= (isPrefix!1733 (++!5317 lt!687220 (Cons!19526 (head!4128 lt!687253) Nil!19526)) lt!687238) lt!687585)))

(declare-fun b!1774573 () Bool)

(assert (=> b!1774573 (= e!1135497 e!1135495)))

(declare-fun res!799379 () Bool)

(assert (=> b!1774573 (=> (not res!799379) (not e!1135495))))

(assert (=> b!1774573 (= res!799379 (not ((_ is Nil!19526) lt!687238)))))

(declare-fun b!1774576 () Bool)

(assert (=> b!1774576 (= e!1135496 (>= (size!15514 lt!687238) (size!15514 (++!5317 lt!687220 (Cons!19526 (head!4128 lt!687253) Nil!19526)))))))

(declare-fun b!1774575 () Bool)

(assert (=> b!1774575 (= e!1135495 (isPrefix!1733 (tail!2655 (++!5317 lt!687220 (Cons!19526 (head!4128 lt!687253) Nil!19526))) (tail!2655 lt!687238)))))

(assert (= (and d!542295 (not res!799381)) b!1774573))

(assert (= (and b!1774573 res!799379) b!1774574))

(assert (= (and b!1774574 res!799380) b!1774575))

(assert (= (and d!542295 (not res!799378)) b!1774576))

(assert (=> b!1774574 m!2193629))

(declare-fun m!2194693 () Bool)

(assert (=> b!1774574 m!2194693))

(assert (=> b!1774574 m!2194623))

(assert (=> b!1774576 m!2194313))

(assert (=> b!1774576 m!2193629))

(declare-fun m!2194695 () Bool)

(assert (=> b!1774576 m!2194695))

(assert (=> b!1774575 m!2193629))

(declare-fun m!2194697 () Bool)

(assert (=> b!1774575 m!2194697))

(assert (=> b!1774575 m!2194371))

(assert (=> b!1774575 m!2194697))

(assert (=> b!1774575 m!2194371))

(declare-fun m!2194699 () Bool)

(assert (=> b!1774575 m!2194699))

(assert (=> b!1773822 d!542295))

(declare-fun d!542297 () Bool)

(assert (=> d!542297 (isPrefix!1733 (++!5317 lt!687220 (Cons!19526 (head!4128 (getSuffix!900 lt!687238 lt!687220)) Nil!19526)) lt!687238)))

(declare-fun lt!687588 () Unit!33742)

(declare-fun choose!11069 (List!19596 List!19596) Unit!33742)

(assert (=> d!542297 (= lt!687588 (choose!11069 lt!687220 lt!687238))))

(assert (=> d!542297 (isPrefix!1733 lt!687220 lt!687238)))

(assert (=> d!542297 (= (lemmaAddHeadSuffixToPrefixStillPrefix!269 lt!687220 lt!687238) lt!687588)))

(declare-fun bs!404875 () Bool)

(assert (= bs!404875 d!542297))

(declare-fun m!2194701 () Bool)

(assert (=> bs!404875 m!2194701))

(assert (=> bs!404875 m!2193683))

(assert (=> bs!404875 m!2194701))

(declare-fun m!2194703 () Bool)

(assert (=> bs!404875 m!2194703))

(declare-fun m!2194705 () Bool)

(assert (=> bs!404875 m!2194705))

(assert (=> bs!404875 m!2193635))

(assert (=> bs!404875 m!2193635))

(declare-fun m!2194707 () Bool)

(assert (=> bs!404875 m!2194707))

(assert (=> b!1773822 d!542297))

(declare-fun d!542299 () Bool)

(assert (=> d!542299 (= suffix!1421 lt!687253)))

(declare-fun lt!687589 () Unit!33742)

(assert (=> d!542299 (= lt!687589 (choose!11063 lt!687220 suffix!1421 lt!687220 lt!687253 lt!687238))))

(assert (=> d!542299 (isPrefix!1733 lt!687220 lt!687238)))

(assert (=> d!542299 (= (lemmaSamePrefixThenSameSuffix!844 lt!687220 suffix!1421 lt!687220 lt!687253 lt!687238) lt!687589)))

(declare-fun bs!404876 () Bool)

(assert (= bs!404876 d!542299))

(declare-fun m!2194709 () Bool)

(assert (=> bs!404876 m!2194709))

(assert (=> bs!404876 m!2193683))

(assert (=> b!1773822 d!542299))

(declare-fun b!1774577 () Bool)

(declare-fun e!1135498 () Bool)

(declare-fun lt!687590 () Bool)

(declare-fun call!111186 () Bool)

(assert (=> b!1774577 (= e!1135498 (= lt!687590 call!111186))))

(declare-fun b!1774578 () Bool)

(declare-fun e!1135502 () Bool)

(assert (=> b!1774578 (= e!1135502 (not lt!687590))))

(declare-fun b!1774579 () Bool)

(declare-fun e!1135501 () Bool)

(assert (=> b!1774579 (= e!1135501 (matchR!2294 (derivativeStep!1248 lt!687241 (head!4128 lt!687250)) (tail!2655 lt!687250)))))

(declare-fun b!1774580 () Bool)

(declare-fun e!1135503 () Bool)

(assert (=> b!1774580 (= e!1135503 (not (= (head!4128 lt!687250) (c!288836 lt!687241))))))

(declare-fun b!1774581 () Bool)

(declare-fun res!799386 () Bool)

(declare-fun e!1135500 () Bool)

(assert (=> b!1774581 (=> (not res!799386) (not e!1135500))))

(assert (=> b!1774581 (= res!799386 (isEmpty!12334 (tail!2655 lt!687250)))))

(declare-fun b!1774582 () Bool)

(assert (=> b!1774582 (= e!1135501 (nullable!1479 lt!687241))))

(declare-fun b!1774583 () Bool)

(declare-fun e!1135499 () Bool)

(assert (=> b!1774583 (= e!1135499 e!1135503)))

(declare-fun res!799384 () Bool)

(assert (=> b!1774583 (=> res!799384 e!1135503)))

(assert (=> b!1774583 (= res!799384 call!111186)))

(declare-fun b!1774584 () Bool)

(assert (=> b!1774584 (= e!1135498 e!1135502)))

(declare-fun c!288967 () Bool)

(assert (=> b!1774584 (= c!288967 ((_ is EmptyLang!4821) lt!687241))))

(declare-fun b!1774585 () Bool)

(declare-fun res!799389 () Bool)

(assert (=> b!1774585 (=> res!799389 e!1135503)))

(assert (=> b!1774585 (= res!799389 (not (isEmpty!12334 (tail!2655 lt!687250))))))

(declare-fun d!542301 () Bool)

(assert (=> d!542301 e!1135498))

(declare-fun c!288965 () Bool)

(assert (=> d!542301 (= c!288965 ((_ is EmptyExpr!4821) lt!687241))))

(assert (=> d!542301 (= lt!687590 e!1135501)))

(declare-fun c!288966 () Bool)

(assert (=> d!542301 (= c!288966 (isEmpty!12334 lt!687250))))

(assert (=> d!542301 (validRegex!1953 lt!687241)))

(assert (=> d!542301 (= (matchR!2294 lt!687241 lt!687250) lt!687590)))

(declare-fun b!1774586 () Bool)

(declare-fun res!799382 () Bool)

(assert (=> b!1774586 (=> (not res!799382) (not e!1135500))))

(assert (=> b!1774586 (= res!799382 (not call!111186))))

(declare-fun bm!111181 () Bool)

(assert (=> bm!111181 (= call!111186 (isEmpty!12334 lt!687250))))

(declare-fun b!1774587 () Bool)

(declare-fun res!799385 () Bool)

(declare-fun e!1135504 () Bool)

(assert (=> b!1774587 (=> res!799385 e!1135504)))

(assert (=> b!1774587 (= res!799385 (not ((_ is ElementMatch!4821) lt!687241)))))

(assert (=> b!1774587 (= e!1135502 e!1135504)))

(declare-fun b!1774588 () Bool)

(assert (=> b!1774588 (= e!1135500 (= (head!4128 lt!687250) (c!288836 lt!687241)))))

(declare-fun b!1774589 () Bool)

(declare-fun res!799388 () Bool)

(assert (=> b!1774589 (=> res!799388 e!1135504)))

(assert (=> b!1774589 (= res!799388 e!1135500)))

(declare-fun res!799387 () Bool)

(assert (=> b!1774589 (=> (not res!799387) (not e!1135500))))

(assert (=> b!1774589 (= res!799387 lt!687590)))

(declare-fun b!1774590 () Bool)

(assert (=> b!1774590 (= e!1135504 e!1135499)))

(declare-fun res!799383 () Bool)

(assert (=> b!1774590 (=> (not res!799383) (not e!1135499))))

(assert (=> b!1774590 (= res!799383 (not lt!687590))))

(assert (= (and d!542301 c!288966) b!1774582))

(assert (= (and d!542301 (not c!288966)) b!1774579))

(assert (= (and d!542301 c!288965) b!1774577))

(assert (= (and d!542301 (not c!288965)) b!1774584))

(assert (= (and b!1774584 c!288967) b!1774578))

(assert (= (and b!1774584 (not c!288967)) b!1774587))

(assert (= (and b!1774587 (not res!799385)) b!1774589))

(assert (= (and b!1774589 res!799387) b!1774586))

(assert (= (and b!1774586 res!799382) b!1774581))

(assert (= (and b!1774581 res!799386) b!1774588))

(assert (= (and b!1774589 (not res!799388)) b!1774590))

(assert (= (and b!1774590 res!799383) b!1774583))

(assert (= (and b!1774583 (not res!799384)) b!1774585))

(assert (= (and b!1774585 (not res!799389)) b!1774580))

(assert (= (or b!1774577 b!1774583 b!1774586) bm!111181))

(assert (=> b!1774585 m!2194387))

(assert (=> b!1774585 m!2194387))

(assert (=> b!1774585 m!2194389))

(assert (=> bm!111181 m!2194391))

(assert (=> b!1774580 m!2194393))

(assert (=> b!1774582 m!2193821))

(assert (=> b!1774581 m!2194387))

(assert (=> b!1774581 m!2194387))

(assert (=> b!1774581 m!2194389))

(assert (=> b!1774588 m!2194393))

(assert (=> b!1774579 m!2194393))

(assert (=> b!1774579 m!2194393))

(declare-fun m!2194711 () Bool)

(assert (=> b!1774579 m!2194711))

(assert (=> b!1774579 m!2194387))

(assert (=> b!1774579 m!2194711))

(assert (=> b!1774579 m!2194387))

(declare-fun m!2194713 () Bool)

(assert (=> b!1774579 m!2194713))

(assert (=> d!542301 m!2194391))

(assert (=> d!542301 m!2193827))

(assert (=> b!1773822 d!542301))

(declare-fun d!542303 () Bool)

(assert (=> d!542303 (= (head!4128 lt!687253) (h!24927 lt!687253))))

(assert (=> b!1773822 d!542303))

(declare-fun b!1774593 () Bool)

(declare-fun res!799391 () Bool)

(declare-fun e!1135505 () Bool)

(assert (=> b!1774593 (=> (not res!799391) (not e!1135505))))

(declare-fun lt!687591 () List!19596)

(assert (=> b!1774593 (= res!799391 (= (size!15514 lt!687591) (+ (size!15514 lt!687220) (size!15514 (Cons!19526 (head!4128 lt!687253) Nil!19526)))))))

(declare-fun d!542305 () Bool)

(assert (=> d!542305 e!1135505))

(declare-fun res!799390 () Bool)

(assert (=> d!542305 (=> (not res!799390) (not e!1135505))))

(assert (=> d!542305 (= res!799390 (= (content!2834 lt!687591) ((_ map or) (content!2834 lt!687220) (content!2834 (Cons!19526 (head!4128 lt!687253) Nil!19526)))))))

(declare-fun e!1135506 () List!19596)

(assert (=> d!542305 (= lt!687591 e!1135506)))

(declare-fun c!288968 () Bool)

(assert (=> d!542305 (= c!288968 ((_ is Nil!19526) lt!687220))))

(assert (=> d!542305 (= (++!5317 lt!687220 (Cons!19526 (head!4128 lt!687253) Nil!19526)) lt!687591)))

(declare-fun b!1774594 () Bool)

(assert (=> b!1774594 (= e!1135505 (or (not (= (Cons!19526 (head!4128 lt!687253) Nil!19526) Nil!19526)) (= lt!687591 lt!687220)))))

(declare-fun b!1774591 () Bool)

(assert (=> b!1774591 (= e!1135506 (Cons!19526 (head!4128 lt!687253) Nil!19526))))

(declare-fun b!1774592 () Bool)

(assert (=> b!1774592 (= e!1135506 (Cons!19526 (h!24927 lt!687220) (++!5317 (t!165679 lt!687220) (Cons!19526 (head!4128 lt!687253) Nil!19526))))))

(assert (= (and d!542305 c!288968) b!1774591))

(assert (= (and d!542305 (not c!288968)) b!1774592))

(assert (= (and d!542305 res!799390) b!1774593))

(assert (= (and b!1774593 res!799391) b!1774594))

(declare-fun m!2194715 () Bool)

(assert (=> b!1774593 m!2194715))

(assert (=> b!1774593 m!2194029))

(declare-fun m!2194717 () Bool)

(assert (=> b!1774593 m!2194717))

(declare-fun m!2194719 () Bool)

(assert (=> d!542305 m!2194719))

(assert (=> d!542305 m!2194035))

(declare-fun m!2194721 () Bool)

(assert (=> d!542305 m!2194721))

(declare-fun m!2194723 () Bool)

(assert (=> b!1774592 m!2194723))

(assert (=> b!1773822 d!542305))

(declare-fun d!542307 () Bool)

(assert (=> d!542307 (matchR!2294 (rulesRegex!849 thiss!24550 rules!3447) (list!7935 (charsOf!2142 (_1!10967 lt!687234))))))

(declare-fun lt!687592 () Unit!33742)

(assert (=> d!542307 (= lt!687592 (choose!11054 thiss!24550 rules!3447 lt!687238 (_1!10967 lt!687234) (rule!5545 (_1!10967 lt!687234)) (_2!10967 lt!687234)))))

(assert (=> d!542307 (not (isEmpty!12335 rules!3447))))

(assert (=> d!542307 (= (lemmaMaxPrefixThenMatchesRulesRegex!200 thiss!24550 rules!3447 lt!687238 (_1!10967 lt!687234) (rule!5545 (_1!10967 lt!687234)) (_2!10967 lt!687234)) lt!687592)))

(declare-fun bs!404877 () Bool)

(assert (= bs!404877 d!542307))

(assert (=> bs!404877 m!2193719))

(assert (=> bs!404877 m!2193695))

(declare-fun m!2194725 () Bool)

(assert (=> bs!404877 m!2194725))

(assert (=> bs!404877 m!2193671))

(assert (=> bs!404877 m!2193695))

(assert (=> bs!404877 m!2193719))

(assert (=> bs!404877 m!2193703))

(declare-fun m!2194727 () Bool)

(assert (=> bs!404877 m!2194727))

(assert (=> bs!404877 m!2193671))

(assert (=> b!1773822 d!542307))

(declare-fun d!542309 () Bool)

(assert (=> d!542309 (isPrefix!1733 lt!687228 lt!687250)))

(declare-fun lt!687595 () Unit!33742)

(declare-fun choose!11070 (List!19596 List!19596 List!19596) Unit!33742)

(assert (=> d!542309 (= lt!687595 (choose!11070 lt!687250 lt!687228 lt!687238))))

(assert (=> d!542309 (isPrefix!1733 lt!687250 lt!687238)))

(assert (=> d!542309 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!141 lt!687250 lt!687228 lt!687238) lt!687595)))

(declare-fun bs!404878 () Bool)

(assert (= bs!404878 d!542309))

(assert (=> bs!404878 m!2193625))

(declare-fun m!2194729 () Bool)

(assert (=> bs!404878 m!2194729))

(assert (=> bs!404878 m!2193667))

(assert (=> b!1773822 d!542309))

(declare-fun b!1774596 () Bool)

(declare-fun res!799394 () Bool)

(declare-fun e!1135507 () Bool)

(assert (=> b!1774596 (=> (not res!799394) (not e!1135507))))

(assert (=> b!1774596 (= res!799394 (= (head!4128 lt!687228) (head!4128 lt!687250)))))

(declare-fun d!542311 () Bool)

(declare-fun e!1135508 () Bool)

(assert (=> d!542311 e!1135508))

(declare-fun res!799392 () Bool)

(assert (=> d!542311 (=> res!799392 e!1135508)))

(declare-fun lt!687596 () Bool)

(assert (=> d!542311 (= res!799392 (not lt!687596))))

(declare-fun e!1135509 () Bool)

(assert (=> d!542311 (= lt!687596 e!1135509)))

(declare-fun res!799395 () Bool)

(assert (=> d!542311 (=> res!799395 e!1135509)))

(assert (=> d!542311 (= res!799395 ((_ is Nil!19526) lt!687228))))

(assert (=> d!542311 (= (isPrefix!1733 lt!687228 lt!687250) lt!687596)))

(declare-fun b!1774595 () Bool)

(assert (=> b!1774595 (= e!1135509 e!1135507)))

(declare-fun res!799393 () Bool)

(assert (=> b!1774595 (=> (not res!799393) (not e!1135507))))

(assert (=> b!1774595 (= res!799393 (not ((_ is Nil!19526) lt!687250)))))

(declare-fun b!1774598 () Bool)

(assert (=> b!1774598 (= e!1135508 (>= (size!15514 lt!687250) (size!15514 lt!687228)))))

(declare-fun b!1774597 () Bool)

(assert (=> b!1774597 (= e!1135507 (isPrefix!1733 (tail!2655 lt!687228) (tail!2655 lt!687250)))))

(assert (= (and d!542311 (not res!799395)) b!1774595))

(assert (= (and b!1774595 res!799393) b!1774596))

(assert (= (and b!1774596 res!799394) b!1774597))

(assert (= (and d!542311 (not res!799392)) b!1774598))

(assert (=> b!1774596 m!2194019))

(assert (=> b!1774596 m!2194393))

(assert (=> b!1774598 m!2193651))

(declare-fun m!2194731 () Bool)

(assert (=> b!1774598 m!2194731))

(assert (=> b!1774597 m!2194023))

(assert (=> b!1774597 m!2194387))

(assert (=> b!1774597 m!2194023))

(assert (=> b!1774597 m!2194387))

(declare-fun m!2194733 () Bool)

(assert (=> b!1774597 m!2194733))

(assert (=> b!1773822 d!542311))

(declare-fun d!542313 () Bool)

(assert (=> d!542313 (not (matchR!2294 lt!687241 lt!687250))))

(declare-fun lt!687599 () Unit!33742)

(declare-fun choose!11071 (Regex!4821 List!19596 List!19596) Unit!33742)

(assert (=> d!542313 (= lt!687599 (choose!11071 lt!687241 lt!687228 lt!687250))))

(assert (=> d!542313 (validRegex!1953 lt!687241)))

(assert (=> d!542313 (= (lemmaNotPrefixMatchThenCannotMatchLonger!132 lt!687241 lt!687228 lt!687250) lt!687599)))

(declare-fun bs!404879 () Bool)

(assert (= bs!404879 d!542313))

(assert (=> bs!404879 m!2193623))

(declare-fun m!2194735 () Bool)

(assert (=> bs!404879 m!2194735))

(assert (=> bs!404879 m!2193827))

(assert (=> b!1773822 d!542313))

(declare-fun d!542315 () Bool)

(declare-fun lt!687600 () List!19596)

(assert (=> d!542315 (= (++!5317 lt!687220 lt!687600) lt!687238)))

(declare-fun e!1135510 () List!19596)

(assert (=> d!542315 (= lt!687600 e!1135510)))

(declare-fun c!288969 () Bool)

(assert (=> d!542315 (= c!288969 ((_ is Cons!19526) lt!687220))))

(assert (=> d!542315 (>= (size!15514 lt!687238) (size!15514 lt!687220))))

(assert (=> d!542315 (= (getSuffix!900 lt!687238 lt!687220) lt!687600)))

(declare-fun b!1774599 () Bool)

(assert (=> b!1774599 (= e!1135510 (getSuffix!900 (tail!2655 lt!687238) (t!165679 lt!687220)))))

(declare-fun b!1774600 () Bool)

(assert (=> b!1774600 (= e!1135510 lt!687238)))

(assert (= (and d!542315 c!288969) b!1774599))

(assert (= (and d!542315 (not c!288969)) b!1774600))

(declare-fun m!2194737 () Bool)

(assert (=> d!542315 m!2194737))

(assert (=> d!542315 m!2194313))

(assert (=> d!542315 m!2194029))

(assert (=> b!1774599 m!2194371))

(assert (=> b!1774599 m!2194371))

(declare-fun m!2194739 () Bool)

(assert (=> b!1774599 m!2194739))

(assert (=> b!1773822 d!542315))

(declare-fun d!542317 () Bool)

(assert (=> d!542317 (= (inv!25380 (tag!3877 rule!422)) (= (mod (str.len (value!109222 (tag!3877 rule!422))) 2) 0))))

(assert (=> b!1773823 d!542317))

(declare-fun d!542319 () Bool)

(declare-fun res!799396 () Bool)

(declare-fun e!1135511 () Bool)

(assert (=> d!542319 (=> (not res!799396) (not e!1135511))))

(assert (=> d!542319 (= res!799396 (semiInverseModEq!1394 (toChars!4879 (transformation!3493 rule!422)) (toValue!5020 (transformation!3493 rule!422))))))

(assert (=> d!542319 (= (inv!25385 (transformation!3493 rule!422)) e!1135511)))

(declare-fun b!1774601 () Bool)

(assert (=> b!1774601 (= e!1135511 (equivClasses!1335 (toChars!4879 (transformation!3493 rule!422)) (toValue!5020 (transformation!3493 rule!422))))))

(assert (= (and d!542319 res!799396) b!1774601))

(declare-fun m!2194741 () Bool)

(assert (=> d!542319 m!2194741))

(declare-fun m!2194743 () Bool)

(assert (=> b!1774601 m!2194743))

(assert (=> b!1773823 d!542319))

(declare-fun tp!502824 () Bool)

(declare-fun e!1135516 () Bool)

(declare-fun b!1774610 () Bool)

(declare-fun tp!502825 () Bool)

(assert (=> b!1774610 (= e!1135516 (and (inv!25387 (left!15639 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249))))) tp!502825 (inv!25387 (right!15969 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249))))) tp!502824))))

(declare-fun b!1774612 () Bool)

(declare-fun e!1135517 () Bool)

(declare-fun tp!502826 () Bool)

(assert (=> b!1774612 (= e!1135517 tp!502826)))

(declare-fun b!1774611 () Bool)

(declare-fun inv!25394 (IArray!12995) Bool)

(assert (=> b!1774611 (= e!1135516 (and (inv!25394 (xs!9371 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249))))) e!1135517))))

(assert (=> b!1773855 (= tp!502761 (and (inv!25387 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249)))) e!1135516))))

(assert (= (and b!1773855 ((_ is Node!6495) (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249))))) b!1774610))

(assert (= b!1774611 b!1774612))

(assert (= (and b!1773855 ((_ is Leaf!9462) (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (dynLambda!9512 (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) lt!687249))))) b!1774611))

(declare-fun m!2194745 () Bool)

(assert (=> b!1774610 m!2194745))

(declare-fun m!2194747 () Bool)

(assert (=> b!1774610 m!2194747))

(declare-fun m!2194749 () Bool)

(assert (=> b!1774611 m!2194749))

(assert (=> b!1773855 m!2193587))

(declare-fun b!1774617 () Bool)

(declare-fun e!1135520 () Bool)

(declare-fun tp!502829 () Bool)

(assert (=> b!1774617 (= e!1135520 (and tp_is_empty!7885 tp!502829))))

(assert (=> b!1773818 (= tp!502752 e!1135520)))

(assert (= (and b!1773818 ((_ is Cons!19526) (originalCharacters!4307 token!523))) b!1774617))

(declare-fun b!1774628 () Bool)

(declare-fun b_free!49135 () Bool)

(declare-fun b_next!49839 () Bool)

(assert (=> b!1774628 (= b_free!49135 (not b_next!49839))))

(declare-fun t!165730 () Bool)

(declare-fun tb!107541 () Bool)

(assert (=> (and b!1774628 (= (toValue!5020 (transformation!3493 (h!24928 (t!165680 rules!3447)))) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165730) tb!107541))

(declare-fun result!129362 () Bool)

(assert (= result!129362 result!129286))

(assert (=> d!542091 t!165730))

(assert (=> d!542071 t!165730))

(assert (=> d!542129 t!165730))

(assert (=> b!1773816 t!165730))

(declare-fun t!165732 () Bool)

(declare-fun tb!107543 () Bool)

(assert (=> (and b!1774628 (= (toValue!5020 (transformation!3493 (h!24928 (t!165680 rules!3447)))) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165732) tb!107543))

(declare-fun result!129364 () Bool)

(assert (= result!129364 result!129312))

(assert (=> d!542071 t!165732))

(declare-fun t!165734 () Bool)

(declare-fun tb!107545 () Bool)

(assert (=> (and b!1774628 (= (toValue!5020 (transformation!3493 (h!24928 (t!165680 rules!3447)))) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165734) tb!107545))

(declare-fun result!129366 () Bool)

(assert (= result!129366 result!129318))

(assert (=> d!542199 t!165734))

(declare-fun b_and!135305 () Bool)

(declare-fun tp!502840 () Bool)

(assert (=> b!1774628 (= tp!502840 (and (=> t!165732 result!129364) (=> t!165734 result!129366) (=> t!165730 result!129362) b_and!135305))))

(declare-fun b_free!49137 () Bool)

(declare-fun b_next!49841 () Bool)

(assert (=> b!1774628 (= b_free!49137 (not b_next!49841))))

(declare-fun t!165736 () Bool)

(declare-fun tb!107547 () Bool)

(assert (=> (and b!1774628 (= (toChars!4879 (transformation!3493 (h!24928 (t!165680 rules!3447)))) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165736) tb!107547))

(declare-fun result!129368 () Bool)

(assert (= result!129368 result!129294))

(assert (=> b!1773826 t!165736))

(declare-fun t!165738 () Bool)

(declare-fun tb!107549 () Bool)

(assert (=> (and b!1774628 (= (toChars!4879 (transformation!3493 (h!24928 (t!165680 rules!3447)))) (toChars!4879 (transformation!3493 (rule!5545 token!523)))) t!165738) tb!107549))

(declare-fun result!129370 () Bool)

(assert (= result!129370 result!129306))

(assert (=> b!1774032 t!165738))

(declare-fun t!165740 () Bool)

(declare-fun tb!107551 () Bool)

(assert (=> (and b!1774628 (= (toChars!4879 (transformation!3493 (h!24928 (t!165680 rules!3447)))) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234))))) t!165740) tb!107551))

(declare-fun result!129372 () Bool)

(assert (= result!129372 result!129278))

(assert (=> d!542129 t!165740))

(assert (=> d!542137 t!165738))

(assert (=> b!1773816 t!165740))

(assert (=> d!542055 t!165736))

(declare-fun b_and!135307 () Bool)

(declare-fun tp!502838 () Bool)

(assert (=> b!1774628 (= tp!502838 (and (=> t!165738 result!129370) (=> t!165736 result!129368) (=> t!165740 result!129372) b_and!135307))))

(declare-fun e!1135531 () Bool)

(assert (=> b!1774628 (= e!1135531 (and tp!502840 tp!502838))))

(declare-fun tp!502841 () Bool)

(declare-fun e!1135529 () Bool)

(declare-fun b!1774627 () Bool)

(assert (=> b!1774627 (= e!1135529 (and tp!502841 (inv!25380 (tag!3877 (h!24928 (t!165680 rules!3447)))) (inv!25385 (transformation!3493 (h!24928 (t!165680 rules!3447)))) e!1135531))))

(declare-fun b!1774626 () Bool)

(declare-fun e!1135530 () Bool)

(declare-fun tp!502839 () Bool)

(assert (=> b!1774626 (= e!1135530 (and e!1135529 tp!502839))))

(assert (=> b!1773835 (= tp!502756 e!1135530)))

(assert (= b!1774627 b!1774628))

(assert (= b!1774626 b!1774627))

(assert (= (and b!1773835 ((_ is Cons!19527) (t!165680 rules!3447))) b!1774626))

(declare-fun m!2194751 () Bool)

(assert (=> b!1774627 m!2194751))

(declare-fun m!2194753 () Bool)

(assert (=> b!1774627 m!2194753))

(declare-fun b!1774640 () Bool)

(declare-fun e!1135535 () Bool)

(declare-fun tp!502853 () Bool)

(declare-fun tp!502852 () Bool)

(assert (=> b!1774640 (= e!1135535 (and tp!502853 tp!502852))))

(declare-fun b!1774642 () Bool)

(declare-fun tp!502855 () Bool)

(declare-fun tp!502854 () Bool)

(assert (=> b!1774642 (= e!1135535 (and tp!502855 tp!502854))))

(assert (=> b!1773824 (= tp!502749 e!1135535)))

(declare-fun b!1774639 () Bool)

(assert (=> b!1774639 (= e!1135535 tp_is_empty!7885)))

(declare-fun b!1774641 () Bool)

(declare-fun tp!502856 () Bool)

(assert (=> b!1774641 (= e!1135535 tp!502856)))

(assert (= (and b!1773824 ((_ is ElementMatch!4821) (regex!3493 (rule!5545 token!523)))) b!1774639))

(assert (= (and b!1773824 ((_ is Concat!8405) (regex!3493 (rule!5545 token!523)))) b!1774640))

(assert (= (and b!1773824 ((_ is Star!4821) (regex!3493 (rule!5545 token!523)))) b!1774641))

(assert (= (and b!1773824 ((_ is Union!4821) (regex!3493 (rule!5545 token!523)))) b!1774642))

(declare-fun b!1774643 () Bool)

(declare-fun e!1135536 () Bool)

(declare-fun tp!502857 () Bool)

(assert (=> b!1774643 (= e!1135536 (and tp_is_empty!7885 tp!502857))))

(assert (=> b!1773808 (= tp!502748 e!1135536)))

(assert (= (and b!1773808 ((_ is Cons!19526) (t!165679 suffix!1421))) b!1774643))

(declare-fun tp!502858 () Bool)

(declare-fun b!1774644 () Bool)

(declare-fun e!1135537 () Bool)

(declare-fun tp!502859 () Bool)

(assert (=> b!1774644 (= e!1135537 (and (inv!25387 (left!15639 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234)))))) tp!502859 (inv!25387 (right!15969 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234)))))) tp!502858))))

(declare-fun b!1774646 () Bool)

(declare-fun e!1135538 () Bool)

(declare-fun tp!502860 () Bool)

(assert (=> b!1774646 (= e!1135538 tp!502860)))

(declare-fun b!1774645 () Bool)

(assert (=> b!1774645 (= e!1135537 (and (inv!25394 (xs!9371 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234)))))) e!1135538))))

(assert (=> b!1773858 (= tp!502762 (and (inv!25387 (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234))))) e!1135537))))

(assert (= (and b!1773858 ((_ is Node!6495) (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234)))))) b!1774644))

(assert (= b!1774645 b!1774646))

(assert (= (and b!1773858 ((_ is Leaf!9462) (c!288837 (dynLambda!9511 (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))) (value!109223 (_1!10967 lt!687234)))))) b!1774645))

(declare-fun m!2194755 () Bool)

(assert (=> b!1774644 m!2194755))

(declare-fun m!2194757 () Bool)

(assert (=> b!1774644 m!2194757))

(declare-fun m!2194759 () Bool)

(assert (=> b!1774645 m!2194759))

(assert (=> b!1773858 m!2193593))

(declare-fun b!1774648 () Bool)

(declare-fun e!1135539 () Bool)

(declare-fun tp!502862 () Bool)

(declare-fun tp!502861 () Bool)

(assert (=> b!1774648 (= e!1135539 (and tp!502862 tp!502861))))

(declare-fun b!1774650 () Bool)

(declare-fun tp!502864 () Bool)

(declare-fun tp!502863 () Bool)

(assert (=> b!1774650 (= e!1135539 (and tp!502864 tp!502863))))

(assert (=> b!1773823 (= tp!502751 e!1135539)))

(declare-fun b!1774647 () Bool)

(assert (=> b!1774647 (= e!1135539 tp_is_empty!7885)))

(declare-fun b!1774649 () Bool)

(declare-fun tp!502865 () Bool)

(assert (=> b!1774649 (= e!1135539 tp!502865)))

(assert (= (and b!1773823 ((_ is ElementMatch!4821) (regex!3493 rule!422))) b!1774647))

(assert (= (and b!1773823 ((_ is Concat!8405) (regex!3493 rule!422))) b!1774648))

(assert (= (and b!1773823 ((_ is Star!4821) (regex!3493 rule!422))) b!1774649))

(assert (= (and b!1773823 ((_ is Union!4821) (regex!3493 rule!422))) b!1774650))

(declare-fun b!1774652 () Bool)

(declare-fun e!1135540 () Bool)

(declare-fun tp!502867 () Bool)

(declare-fun tp!502866 () Bool)

(assert (=> b!1774652 (= e!1135540 (and tp!502867 tp!502866))))

(declare-fun b!1774654 () Bool)

(declare-fun tp!502869 () Bool)

(declare-fun tp!502868 () Bool)

(assert (=> b!1774654 (= e!1135540 (and tp!502869 tp!502868))))

(assert (=> b!1773812 (= tp!502754 e!1135540)))

(declare-fun b!1774651 () Bool)

(assert (=> b!1774651 (= e!1135540 tp_is_empty!7885)))

(declare-fun b!1774653 () Bool)

(declare-fun tp!502870 () Bool)

(assert (=> b!1774653 (= e!1135540 tp!502870)))

(assert (= (and b!1773812 ((_ is ElementMatch!4821) (regex!3493 (h!24928 rules!3447)))) b!1774651))

(assert (= (and b!1773812 ((_ is Concat!8405) (regex!3493 (h!24928 rules!3447)))) b!1774652))

(assert (= (and b!1773812 ((_ is Star!4821) (regex!3493 (h!24928 rules!3447)))) b!1774653))

(assert (= (and b!1773812 ((_ is Union!4821) (regex!3493 (h!24928 rules!3447)))) b!1774654))

(declare-fun b_lambda!57895 () Bool)

(assert (= b_lambda!57843 (or (and b!1773810 b_free!49121 (= (toChars!4879 (transformation!3493 rule!422)) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))))) (and b!1773815 b_free!49125 (= (toChars!4879 (transformation!3493 (rule!5545 token!523))) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))))) (and b!1773829 b_free!49129 (= (toChars!4879 (transformation!3493 (h!24928 rules!3447))) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))))) (and b!1774628 b_free!49137 (= (toChars!4879 (transformation!3493 (h!24928 (t!165680 rules!3447)))) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))))) b_lambda!57895)))

(declare-fun b_lambda!57897 () Bool)

(assert (= b_lambda!57845 (or (and b!1773810 b_free!49119 (= (toValue!5020 (transformation!3493 rule!422)) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))))) (and b!1773815 b_free!49123 (= (toValue!5020 (transformation!3493 (rule!5545 token!523))) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))))) (and b!1773829 b_free!49127 (= (toValue!5020 (transformation!3493 (h!24928 rules!3447))) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))))) (and b!1774628 b_free!49135 (= (toValue!5020 (transformation!3493 (h!24928 (t!165680 rules!3447)))) (toValue!5020 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))))) b_lambda!57897)))

(declare-fun b_lambda!57899 () Bool)

(assert (= b_lambda!57847 (or (and b!1773810 b_free!49121 (= (toChars!4879 (transformation!3493 rule!422)) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))))) (and b!1773815 b_free!49125 (= (toChars!4879 (transformation!3493 (rule!5545 token!523))) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))))) (and b!1773829 b_free!49129 (= (toChars!4879 (transformation!3493 (h!24928 rules!3447))) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))))) (and b!1774628 b_free!49137 (= (toChars!4879 (transformation!3493 (h!24928 (t!165680 rules!3447)))) (toChars!4879 (transformation!3493 (rule!5545 (_1!10967 lt!687234)))))) b_lambda!57899)))

(declare-fun b_lambda!57901 () Bool)

(assert (= b_lambda!57871 (or (and b!1773810 b_free!49121 (= (toChars!4879 (transformation!3493 rule!422)) (toChars!4879 (transformation!3493 (rule!5545 token!523))))) (and b!1773815 b_free!49125) (and b!1773829 b_free!49129 (= (toChars!4879 (transformation!3493 (h!24928 rules!3447))) (toChars!4879 (transformation!3493 (rule!5545 token!523))))) (and b!1774628 b_free!49137 (= (toChars!4879 (transformation!3493 (h!24928 (t!165680 rules!3447)))) (toChars!4879 (transformation!3493 (rule!5545 token!523))))) b_lambda!57901)))

(declare-fun b_lambda!57903 () Bool)

(assert (= b_lambda!57851 (or (and b!1773810 b_free!49121 (= (toChars!4879 (transformation!3493 rule!422)) (toChars!4879 (transformation!3493 (rule!5545 token!523))))) (and b!1773815 b_free!49125) (and b!1773829 b_free!49129 (= (toChars!4879 (transformation!3493 (h!24928 rules!3447))) (toChars!4879 (transformation!3493 (rule!5545 token!523))))) (and b!1774628 b_free!49137 (= (toChars!4879 (transformation!3493 (h!24928 (t!165680 rules!3447)))) (toChars!4879 (transformation!3493 (rule!5545 token!523))))) b_lambda!57903)))

(check-sat (not b!1774596) (not d!542289) (not d!542203) (not b!1774360) (not b!1774652) (not b!1774529) (not b!1774187) (not b!1773960) (not d!542287) (not b!1774046) (not b!1774535) (not b!1774570) (not b!1774650) (not b!1774572) (not b!1774533) (not b!1774641) (not b!1774188) (not b!1774643) (not b!1774039) (not b!1774338) (not b!1774336) (not b!1774654) (not tb!107505) (not d!542209) (not b!1774184) (not d!542111) (not b!1774343) (not bm!111178) (not d!542135) (not b_next!49831) (not d!542313) (not d!542047) (not b!1773858) (not b!1774598) (not d!542315) (not tb!107499) (not b_lambda!57867) (not d!542279) (not b_next!49825) (not b!1774359) (not bm!111181) (not b!1774539) (not b!1774534) (not b!1774341) (not b!1774034) (not b!1774537) (not d!542319) (not b!1774043) (not d!542023) (not d!542285) (not b!1774617) (not b!1774185) (not d!542125) (not b!1774153) (not b!1774313) (not b_next!49841) (not d!542029) (not d!542141) (not b!1774564) (not b!1774592) (not d!542217) (not b!1774563) (not b!1774530) (not b!1774211) (not b!1774601) (not b!1774646) (not b!1774355) (not b!1774191) (not d!542055) (not d!542095) (not d!542195) (not b!1774574) (not b!1774516) (not b!1774160) (not d!542213) (not b!1774329) (not b_next!49823) (not d!542105) (not d!542099) (not b!1774205) (not b!1774314) (not d!542293) (not d!542115) (not b!1774653) (not b!1774138) (not b!1774192) (not b!1774364) (not b_lambda!57901) (not b!1774361) (not b_next!49827) (not b!1773855) (not b!1773966) (not b!1774213) (not bm!111175) (not b!1774146) (not b!1774312) (not d!542093) (not b!1774648) (not d!542197) (not b!1774204) tp_is_empty!7885 (not b!1773969) (not b!1774310) (not b!1774349) (not b!1774190) (not b!1773961) (not d!542113) (not d!542301) (not d!542087) (not b!1774139) (not b!1774645) (not b!1774122) (not b!1774121) (not b!1774366) (not b!1774545) (not b!1774610) (not b!1774186) (not b!1774538) (not b!1774143) (not b!1774033) (not d!542133) (not b!1774352) (not b!1774365) b_and!135273 (not d!542147) (not d!542307) (not d!542309) (not d!542109) (not d!542131) (not b!1774546) (not b!1774575) (not b!1774346) (not d!542037) (not b!1774585) (not b_lambda!57857) (not b!1774157) (not b!1774581) (not b!1774582) (not d!542299) (not b!1774542) (not b_lambda!57899) (not b!1774347) (not d!542283) (not b!1773963) (not d!542119) (not b!1774612) (not d!542009) (not d!542051) (not b_lambda!57897) (not b!1774307) (not d!542143) (not b!1774308) (not b!1774133) (not bm!111177) (not b!1774311) (not b!1773962) (not b_lambda!57869) (not b!1774626) b_and!135259 (not b_lambda!57853) (not b!1774210) (not b!1774140) b_and!135305 (not d!542275) (not bm!111172) (not d!542271) (not d!542281) (not b!1774040) (not b!1774089) (not d!542071) (not d!542297) (not b!1774561) (not d!542127) (not b!1774571) (not d!542149) (not b!1774358) (not b!1774541) (not b_lambda!57865) b_and!135275 (not d!542121) (not d!542007) (not b!1774362) (not b!1774597) (not b!1774576) (not b!1774348) b_and!135261 (not tb!107511) (not b!1774306) (not b!1774137) (not bm!111170) b_and!135307 (not b!1774580) (not b!1774579) (not d!542129) (not b!1774644) (not b!1774007) (not b!1774611) (not b_next!49839) (not b!1774207) (not b_next!49833) (not b!1774649) (not d!542215) (not b_lambda!57895) (not d!542101) (not b!1774599) (not b_lambda!57875) (not b!1774518) b_and!135263 (not d!542305) (not b_next!49829) (not b!1774087) (not b!1774531) (not b!1774593) (not b!1774642) (not d!542137) (not bm!111165) (not b!1774032) (not b!1774517) (not b!1774037) (not b_lambda!57903) (not b!1774132) (not b!1774588) (not b!1774038) (not b!1774340) (not b!1774627) b_and!135271 (not b!1774640) (not b_lambda!57859))
(check-sat (not b_next!49831) (not b_next!49825) (not b_next!49841) (not b_next!49823) (not b_next!49827) b_and!135273 b_and!135259 b_and!135305 (not b_next!49839) (not b_next!49833) b_and!135271 b_and!135275 b_and!135307 b_and!135261 b_and!135263 (not b_next!49829))
