; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!181846 () Bool)

(assert start!181846)

(declare-fun b!1831938 () Bool)

(declare-fun b_free!51227 () Bool)

(declare-fun b_next!51931 () Bool)

(assert (=> b!1831938 (= b_free!51227 (not b_next!51931))))

(declare-fun tp!518315 () Bool)

(declare-fun b_and!142697 () Bool)

(assert (=> b!1831938 (= tp!518315 b_and!142697)))

(declare-fun b_free!51229 () Bool)

(declare-fun b_next!51933 () Bool)

(assert (=> b!1831938 (= b_free!51229 (not b_next!51933))))

(declare-fun tp!518314 () Bool)

(declare-fun b_and!142699 () Bool)

(assert (=> b!1831938 (= tp!518314 b_and!142699)))

(declare-fun b!1831967 () Bool)

(declare-fun b_free!51231 () Bool)

(declare-fun b_next!51935 () Bool)

(assert (=> b!1831967 (= b_free!51231 (not b_next!51935))))

(declare-fun tp!518320 () Bool)

(declare-fun b_and!142701 () Bool)

(assert (=> b!1831967 (= tp!518320 b_and!142701)))

(declare-fun b_free!51233 () Bool)

(declare-fun b_next!51937 () Bool)

(assert (=> b!1831967 (= b_free!51233 (not b_next!51937))))

(declare-fun tp!518310 () Bool)

(declare-fun b_and!142703 () Bool)

(assert (=> b!1831967 (= tp!518310 b_and!142703)))

(declare-fun b!1831939 () Bool)

(declare-fun b_free!51235 () Bool)

(declare-fun b_next!51939 () Bool)

(assert (=> b!1831939 (= b_free!51235 (not b_next!51939))))

(declare-fun tp!518321 () Bool)

(declare-fun b_and!142705 () Bool)

(assert (=> b!1831939 (= tp!518321 b_and!142705)))

(declare-fun b_free!51237 () Bool)

(declare-fun b_next!51941 () Bool)

(assert (=> b!1831939 (= b_free!51237 (not b_next!51941))))

(declare-fun tp!518325 () Bool)

(declare-fun b_and!142707 () Bool)

(assert (=> b!1831939 (= tp!518325 b_and!142707)))

(declare-fun b!1831945 () Bool)

(declare-fun b_free!51239 () Bool)

(declare-fun b_next!51943 () Bool)

(assert (=> b!1831945 (= b_free!51239 (not b_next!51943))))

(declare-fun tp!518318 () Bool)

(declare-fun b_and!142709 () Bool)

(assert (=> b!1831945 (= tp!518318 b_and!142709)))

(declare-fun b_free!51241 () Bool)

(declare-fun b_next!51945 () Bool)

(assert (=> b!1831945 (= b_free!51241 (not b_next!51945))))

(declare-fun tp!518326 () Bool)

(declare-fun b_and!142711 () Bool)

(assert (=> b!1831945 (= tp!518326 b_and!142711)))

(declare-fun b!1831937 () Bool)

(declare-fun e!1170914 () Bool)

(declare-fun e!1170923 () Bool)

(assert (=> b!1831937 (= e!1170914 e!1170923)))

(declare-fun res!823763 () Bool)

(assert (=> b!1831937 (=> res!823763 e!1170923)))

(declare-datatypes ((C!10112 0))(
  ( (C!10113 (val!5652 Int)) )
))
(declare-datatypes ((Regex!4969 0))(
  ( (ElementMatch!4969 (c!298774 C!10112)) (Concat!8700 (regOne!10450 Regex!4969) (regTwo!10450 Regex!4969)) (EmptyExpr!4969) (Star!4969 (reg!5298 Regex!4969)) (EmptyLang!4969) (Union!4969 (regOne!10451 Regex!4969) (regTwo!10451 Regex!4969)) )
))
(declare-datatypes ((List!20213 0))(
  ( (Nil!20143) (Cons!20143 (h!25544 (_ BitVec 16)) (t!170870 List!20213)) )
))
(declare-datatypes ((TokenValue!3731 0))(
  ( (FloatLiteralValue!7462 (text!26562 List!20213)) (TokenValueExt!3730 (__x!12764 Int)) (Broken!18655 (value!113409 List!20213)) (Object!3800) (End!3731) (Def!3731) (Underscore!3731) (Match!3731) (Else!3731) (Error!3731) (Case!3731) (If!3731) (Extends!3731) (Abstract!3731) (Class!3731) (Val!3731) (DelimiterValue!7462 (del!3791 List!20213)) (KeywordValue!3737 (value!113410 List!20213)) (CommentValue!7462 (value!113411 List!20213)) (WhitespaceValue!7462 (value!113412 List!20213)) (IndentationValue!3731 (value!113413 List!20213)) (String!22986) (Int32!3731) (Broken!18656 (value!113414 List!20213)) (Boolean!3732) (Unit!34820) (OperatorValue!3734 (op!3791 List!20213)) (IdentifierValue!7462 (value!113415 List!20213)) (IdentifierValue!7463 (value!113416 List!20213)) (WhitespaceValue!7463 (value!113417 List!20213)) (True!7462) (False!7462) (Broken!18657 (value!113418 List!20213)) (Broken!18658 (value!113419 List!20213)) (True!7463) (RightBrace!3731) (RightBracket!3731) (Colon!3731) (Null!3731) (Comma!3731) (LeftBracket!3731) (False!7463) (LeftBrace!3731) (ImaginaryLiteralValue!3731 (text!26563 List!20213)) (StringLiteralValue!11193 (value!113420 List!20213)) (EOFValue!3731 (value!113421 List!20213)) (IdentValue!3731 (value!113422 List!20213)) (DelimiterValue!7463 (value!113423 List!20213)) (DedentValue!3731 (value!113424 List!20213)) (NewLineValue!3731 (value!113425 List!20213)) (IntegerValue!11193 (value!113426 (_ BitVec 32)) (text!26564 List!20213)) (IntegerValue!11194 (value!113427 Int) (text!26565 List!20213)) (Times!3731) (Or!3731) (Equal!3731) (Minus!3731) (Broken!18659 (value!113428 List!20213)) (And!3731) (Div!3731) (LessEqual!3731) (Mod!3731) (Concat!8701) (Not!3731) (Plus!3731) (SpaceValue!3731 (value!113429 List!20213)) (IntegerValue!11195 (value!113430 Int) (text!26566 List!20213)) (StringLiteralValue!11194 (text!26567 List!20213)) (FloatLiteralValue!7463 (text!26568 List!20213)) (BytesLiteralValue!3731 (value!113431 List!20213)) (CommentValue!7463 (value!113432 List!20213)) (StringLiteralValue!11195 (value!113433 List!20213)) (ErrorTokenValue!3731 (msg!3792 List!20213)) )
))
(declare-datatypes ((List!20214 0))(
  ( (Nil!20144) (Cons!20144 (h!25545 C!10112) (t!170871 List!20214)) )
))
(declare-datatypes ((IArray!13351 0))(
  ( (IArray!13352 (innerList!6733 List!20214)) )
))
(declare-datatypes ((Conc!6673 0))(
  ( (Node!6673 (left!16099 Conc!6673) (right!16429 Conc!6673) (csize!13576 Int) (cheight!6884 Int)) (Leaf!9714 (xs!9549 IArray!13351) (csize!13577 Int)) (Empty!6673) )
))
(declare-datatypes ((BalanceConc!13290 0))(
  ( (BalanceConc!13291 (c!298775 Conc!6673)) )
))
(declare-datatypes ((TokenValueInjection!7122 0))(
  ( (TokenValueInjection!7123 (toValue!5188 Int) (toChars!5047 Int)) )
))
(declare-datatypes ((String!22987 0))(
  ( (String!22988 (value!113434 String)) )
))
(declare-datatypes ((Rule!7082 0))(
  ( (Rule!7083 (regex!3641 Regex!4969) (tag!4055 String!22987) (isSeparator!3641 Bool) (transformation!3641 TokenValueInjection!7122)) )
))
(declare-fun rule!580 () Rule!7082)

(declare-fun lt!711312 () List!20214)

(declare-fun matchR!2432 (Regex!4969 List!20214) Bool)

(assert (=> b!1831937 (= res!823763 (not (matchR!2432 (regex!3641 rule!580) lt!711312)))))

(declare-datatypes ((LexerInterface!3270 0))(
  ( (LexerInterfaceExt!3267 (__x!12765 Int)) (Lexer!3268) )
))
(declare-fun thiss!28318 () LexerInterface!3270)

(declare-fun ruleValid!1131 (LexerInterface!3270 Rule!7082) Bool)

(assert (=> b!1831937 (ruleValid!1131 thiss!28318 rule!580)))

(declare-datatypes ((List!20215 0))(
  ( (Nil!20145) (Cons!20145 (h!25546 Rule!7082) (t!170872 List!20215)) )
))
(declare-fun rules!4610 () List!20215)

(declare-datatypes ((Unit!34821 0))(
  ( (Unit!34822) )
))
(declare-fun lt!711318 () Unit!34821)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!650 (LexerInterface!3270 Rule!7082 List!20215) Unit!34821)

(assert (=> b!1831937 (= lt!711318 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!650 thiss!28318 rule!580 rules!4610))))

(declare-fun e!1170911 () Bool)

(assert (=> b!1831938 (= e!1170911 (and tp!518315 tp!518314))))

(declare-fun e!1170915 () Bool)

(assert (=> b!1831939 (= e!1170915 (and tp!518321 tp!518325))))

(declare-fun b!1831940 () Bool)

(declare-fun e!1170922 () Bool)

(declare-fun e!1170903 () Bool)

(declare-fun tp!518311 () Bool)

(assert (=> b!1831940 (= e!1170922 (and e!1170903 tp!518311))))

(declare-fun b!1831941 () Bool)

(declare-fun res!823770 () Bool)

(assert (=> b!1831941 (=> res!823770 e!1170914)))

(declare-fun rs!808 () List!20215)

(get-info :version)

(assert (=> b!1831941 (= res!823770 (or (not ((_ is Cons!20145) rs!808)) (= (h!25546 rs!808) rule!580)))))

(declare-fun tp!518317 () Bool)

(declare-fun e!1170924 () Bool)

(declare-fun b!1831942 () Bool)

(declare-datatypes ((Token!6836 0))(
  ( (Token!6837 (value!113435 TokenValue!3731) (rule!5813 Rule!7082) (size!15971 Int) (originalCharacters!4449 List!20214)) )
))
(declare-fun token!567 () Token!6836)

(declare-fun e!1170919 () Bool)

(declare-fun inv!26206 (String!22987) Bool)

(declare-fun inv!26209 (TokenValueInjection!7122) Bool)

(assert (=> b!1831942 (= e!1170924 (and tp!518317 (inv!26206 (tag!4055 (rule!5813 token!567))) (inv!26209 (transformation!3641 (rule!5813 token!567))) e!1170919))))

(declare-fun b!1831943 () Bool)

(declare-fun e!1170906 () Bool)

(assert (=> b!1831943 (= e!1170906 e!1170914)))

(declare-fun res!823756 () Bool)

(assert (=> b!1831943 (=> res!823756 e!1170914)))

(declare-fun lt!711311 () Regex!4969)

(declare-datatypes ((List!20216 0))(
  ( (Nil!20146) (Cons!20146 (h!25547 Regex!4969) (t!170873 List!20216)) )
))
(declare-fun lt!711317 () List!20216)

(declare-fun generalisedUnion!484 (List!20216) Regex!4969)

(assert (=> b!1831943 (= res!823756 (not (= lt!711311 (generalisedUnion!484 lt!711317))))))

(declare-fun rulesRegex!961 (LexerInterface!3270 List!20215) Regex!4969)

(assert (=> b!1831943 (= lt!711311 (rulesRegex!961 thiss!28318 rules!4610))))

(declare-fun lambda!71982 () Int)

(declare-fun map!4180 (List!20215 Int) List!20216)

(assert (=> b!1831943 (= lt!711317 (map!4180 rules!4610 lambda!71982))))

(declare-fun suffix!1698 () List!20214)

(declare-fun lt!711315 () Unit!34821)

(declare-fun input!3681 () List!20214)

(declare-fun lemma!534 (List!20214 Rule!7082 List!20215 List!20214 LexerInterface!3270 Token!6836 List!20215) Unit!34821)

(assert (=> b!1831943 (= lt!711315 (lemma!534 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 rules!4610))))

(declare-fun b!1831944 () Bool)

(declare-fun e!1170909 () Bool)

(assert (=> b!1831944 (= e!1170909 (not e!1170906))))

(declare-fun res!823769 () Bool)

(assert (=> b!1831944 (=> res!823769 e!1170906)))

(declare-datatypes ((tuple2!19602 0))(
  ( (tuple2!19603 (_1!11203 Token!6836) (_2!11203 List!20214)) )
))
(declare-datatypes ((Option!4221 0))(
  ( (None!4220) (Some!4220 (v!25793 tuple2!19602)) )
))
(declare-fun lt!711316 () Option!4221)

(declare-fun lt!711309 () Option!4221)

(assert (=> b!1831944 (= res!823769 (not (= lt!711316 lt!711309)))))

(assert (=> b!1831944 (= lt!711309 (Some!4220 (tuple2!19603 token!567 suffix!1698)))))

(declare-fun lt!711307 () TokenValue!3731)

(declare-fun lt!711314 () Int)

(assert (=> b!1831944 (= lt!711316 (Some!4220 (tuple2!19603 (Token!6837 lt!711307 rule!580 lt!711314 lt!711312) suffix!1698)))))

(declare-fun maxPrefixOneRule!1179 (LexerInterface!3270 Rule!7082 List!20214) Option!4221)

(assert (=> b!1831944 (= lt!711316 (maxPrefixOneRule!1179 thiss!28318 rule!580 input!3681))))

(declare-fun size!15972 (List!20214) Int)

(assert (=> b!1831944 (= lt!711314 (size!15972 lt!711312))))

(declare-fun apply!5429 (TokenValueInjection!7122 BalanceConc!13290) TokenValue!3731)

(declare-fun seqFromList!2598 (List!20214) BalanceConc!13290)

(assert (=> b!1831944 (= lt!711307 (apply!5429 (transformation!3641 rule!580) (seqFromList!2598 lt!711312)))))

(declare-fun lt!711313 () Unit!34821)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!549 (LexerInterface!3270 List!20215 List!20214 List!20214 List!20214 Rule!7082) Unit!34821)

(assert (=> b!1831944 (= lt!711313 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!549 thiss!28318 rules!4610 lt!711312 input!3681 suffix!1698 rule!580))))

(declare-fun list!8185 (BalanceConc!13290) List!20214)

(declare-fun charsOf!2284 (Token!6836) BalanceConc!13290)

(assert (=> b!1831944 (= lt!711312 (list!8185 (charsOf!2284 token!567)))))

(declare-fun e!1170908 () Bool)

(assert (=> b!1831945 (= e!1170908 (and tp!518318 tp!518326))))

(declare-fun b!1831946 () Bool)

(declare-fun e!1170918 () Bool)

(declare-fun tp_is_empty!8173 () Bool)

(declare-fun tp!518312 () Bool)

(assert (=> b!1831946 (= e!1170918 (and tp_is_empty!8173 tp!518312))))

(declare-fun b!1831947 () Bool)

(declare-fun res!823767 () Bool)

(assert (=> b!1831947 (=> res!823767 e!1170914)))

(declare-fun contains!3717 (List!20215 Rule!7082) Bool)

(assert (=> b!1831947 (= res!823767 (not (contains!3717 rs!808 rule!580)))))

(declare-fun b!1831948 () Bool)

(declare-fun res!823762 () Bool)

(assert (=> b!1831948 (=> (not res!823762) (not e!1170909))))

(declare-fun isEmpty!12713 (List!20215) Bool)

(assert (=> b!1831948 (= res!823762 (not (isEmpty!12713 rules!4610)))))

(declare-fun b!1831949 () Bool)

(declare-fun res!823766 () Bool)

(assert (=> b!1831949 (=> res!823766 e!1170923)))

(declare-fun rulesValid!1388 (LexerInterface!3270 List!20215) Bool)

(assert (=> b!1831949 (= res!823766 (not (rulesValid!1388 thiss!28318 (t!170872 rs!808))))))

(declare-fun b!1831950 () Bool)

(declare-fun res!823764 () Bool)

(assert (=> b!1831950 (=> res!823764 e!1170914)))

(declare-fun ++!5465 (List!20214 List!20214) List!20214)

(assert (=> b!1831950 (= res!823764 (not (= input!3681 (++!5465 lt!711312 suffix!1698))))))

(declare-fun res!823765 () Bool)

(assert (=> start!181846 (=> (not res!823765) (not e!1170909))))

(assert (=> start!181846 (= res!823765 ((_ is Lexer!3268) thiss!28318))))

(assert (=> start!181846 e!1170909))

(declare-fun e!1170921 () Bool)

(assert (=> start!181846 e!1170921))

(declare-fun e!1170913 () Bool)

(declare-fun inv!26210 (Token!6836) Bool)

(assert (=> start!181846 (and (inv!26210 token!567) e!1170913)))

(assert (=> start!181846 true))

(declare-fun e!1170905 () Bool)

(assert (=> start!181846 e!1170905))

(assert (=> start!181846 e!1170918))

(declare-fun e!1170907 () Bool)

(assert (=> start!181846 e!1170907))

(assert (=> start!181846 e!1170922))

(declare-fun b!1831951 () Bool)

(declare-fun res!823761 () Bool)

(assert (=> b!1831951 (=> (not res!823761) (not e!1170909))))

(assert (=> b!1831951 (= res!823761 (= (rule!5813 token!567) rule!580))))

(declare-fun b!1831952 () Bool)

(declare-fun tp!518319 () Bool)

(assert (=> b!1831952 (= e!1170905 (and tp_is_empty!8173 tp!518319))))

(declare-fun b!1831953 () Bool)

(declare-fun e!1170902 () Bool)

(declare-fun tp!518316 () Bool)

(assert (=> b!1831953 (= e!1170907 (and e!1170902 tp!518316))))

(declare-fun tp!518322 () Bool)

(declare-fun b!1831954 () Bool)

(assert (=> b!1831954 (= e!1170902 (and tp!518322 (inv!26206 (tag!4055 (h!25546 rules!4610))) (inv!26209 (transformation!3641 (h!25546 rules!4610))) e!1170911))))

(declare-fun b!1831955 () Bool)

(declare-fun res!823760 () Bool)

(assert (=> b!1831955 (=> (not res!823760) (not e!1170909))))

(declare-fun e!1170910 () Bool)

(assert (=> b!1831955 (= res!823760 e!1170910)))

(declare-fun res!823771 () Bool)

(assert (=> b!1831955 (=> (not res!823771) (not e!1170910))))

(declare-fun lt!711310 () List!20214)

(assert (=> b!1831955 (= res!823771 (= input!3681 (++!5465 lt!711310 suffix!1698)))))

(assert (=> b!1831955 (= lt!711310 (list!8185 (charsOf!2284 token!567)))))

(declare-fun b!1831956 () Bool)

(declare-fun res!823768 () Bool)

(assert (=> b!1831956 (=> res!823768 e!1170906)))

(assert (=> b!1831956 (= res!823768 (not (matchR!2432 (regex!3641 rule!580) lt!711312)))))

(declare-fun b!1831957 () Bool)

(assert (=> b!1831957 (= e!1170910 (not (not (matchR!2432 (regex!3641 rule!580) lt!711310))))))

(assert (=> b!1831957 (ruleValid!1131 thiss!28318 rule!580)))

(declare-fun lt!711308 () Unit!34821)

(assert (=> b!1831957 (= lt!711308 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!650 thiss!28318 rule!580 rules!4610))))

(declare-fun b!1831958 () Bool)

(declare-fun res!823773 () Bool)

(assert (=> b!1831958 (=> res!823773 e!1170914)))

(assert (=> b!1831958 (= res!823773 (not (rulesValid!1388 thiss!28318 rs!808)))))

(declare-fun b!1831959 () Bool)

(assert (=> b!1831959 (= e!1170923 (contains!3717 (t!170872 rs!808) rule!580))))

(declare-fun b!1831960 () Bool)

(declare-fun res!823759 () Bool)

(assert (=> b!1831960 (=> (not res!823759) (not e!1170909))))

(assert (=> b!1831960 (= res!823759 (contains!3717 rules!4610 rule!580))))

(declare-fun b!1831961 () Bool)

(declare-fun res!823774 () Bool)

(assert (=> b!1831961 (=> res!823774 e!1170923)))

(assert (=> b!1831961 (= res!823774 (not (= lt!711311 (generalisedUnion!484 (map!4180 rules!4610 lambda!71982)))))))

(declare-fun b!1831962 () Bool)

(declare-fun res!823757 () Bool)

(assert (=> b!1831962 (=> res!823757 e!1170914)))

(declare-fun maxPrefix!1818 (LexerInterface!3270 List!20215 List!20214) Option!4221)

(assert (=> b!1831962 (= res!823757 (not (= (maxPrefix!1818 thiss!28318 rules!4610 input!3681) lt!711309)))))

(declare-fun b!1831963 () Bool)

(declare-fun res!823758 () Bool)

(assert (=> b!1831963 (=> (not res!823758) (not e!1170909))))

(assert (=> b!1831963 (= res!823758 (= (maxPrefix!1818 thiss!28318 rules!4610 input!3681) (Some!4220 (tuple2!19603 token!567 suffix!1698))))))

(declare-fun b!1831964 () Bool)

(declare-fun tp!518313 () Bool)

(assert (=> b!1831964 (= e!1170921 (and tp!518313 (inv!26206 (tag!4055 rule!580)) (inv!26209 (transformation!3641 rule!580)) e!1170908))))

(declare-fun b!1831965 () Bool)

(declare-fun res!823772 () Bool)

(assert (=> b!1831965 (=> (not res!823772) (not e!1170909))))

(declare-fun rulesInvariant!2939 (LexerInterface!3270 List!20215) Bool)

(assert (=> b!1831965 (= res!823772 (rulesInvariant!2939 thiss!28318 rules!4610))))

(declare-fun tp!518324 () Bool)

(declare-fun b!1831966 () Bool)

(assert (=> b!1831966 (= e!1170903 (and tp!518324 (inv!26206 (tag!4055 (h!25546 rs!808))) (inv!26209 (transformation!3641 (h!25546 rs!808))) e!1170915))))

(assert (=> b!1831967 (= e!1170919 (and tp!518320 tp!518310))))

(declare-fun b!1831968 () Bool)

(declare-fun tp!518323 () Bool)

(declare-fun inv!21 (TokenValue!3731) Bool)

(assert (=> b!1831968 (= e!1170913 (and (inv!21 (value!113435 token!567)) e!1170924 tp!518323))))

(assert (= (and start!181846 res!823765) b!1831948))

(assert (= (and b!1831948 res!823762) b!1831965))

(assert (= (and b!1831965 res!823772) b!1831960))

(assert (= (and b!1831960 res!823759) b!1831963))

(assert (= (and b!1831963 res!823758) b!1831951))

(assert (= (and b!1831951 res!823761) b!1831955))

(assert (= (and b!1831955 res!823771) b!1831957))

(assert (= (and b!1831955 res!823760) b!1831944))

(assert (= (and b!1831944 (not res!823769)) b!1831956))

(assert (= (and b!1831956 (not res!823768)) b!1831943))

(assert (= (and b!1831943 (not res!823756)) b!1831958))

(assert (= (and b!1831958 (not res!823773)) b!1831947))

(assert (= (and b!1831947 (not res!823767)) b!1831941))

(assert (= (and b!1831941 (not res!823770)) b!1831962))

(assert (= (and b!1831962 (not res!823757)) b!1831950))

(assert (= (and b!1831950 (not res!823764)) b!1831937))

(assert (= (and b!1831937 (not res!823763)) b!1831961))

(assert (= (and b!1831961 (not res!823774)) b!1831949))

(assert (= (and b!1831949 (not res!823766)) b!1831959))

(assert (= b!1831964 b!1831945))

(assert (= start!181846 b!1831964))

(assert (= b!1831942 b!1831967))

(assert (= b!1831968 b!1831942))

(assert (= start!181846 b!1831968))

(assert (= (and start!181846 ((_ is Cons!20144) suffix!1698)) b!1831952))

(assert (= (and start!181846 ((_ is Cons!20144) input!3681)) b!1831946))

(assert (= b!1831954 b!1831938))

(assert (= b!1831953 b!1831954))

(assert (= (and start!181846 ((_ is Cons!20145) rules!4610)) b!1831953))

(assert (= b!1831966 b!1831939))

(assert (= b!1831940 b!1831966))

(assert (= (and start!181846 ((_ is Cons!20145) rs!808)) b!1831940))

(declare-fun m!2259737 () Bool)

(assert (=> b!1831968 m!2259737))

(declare-fun m!2259739 () Bool)

(assert (=> b!1831954 m!2259739))

(declare-fun m!2259741 () Bool)

(assert (=> b!1831954 m!2259741))

(declare-fun m!2259743 () Bool)

(assert (=> b!1831956 m!2259743))

(declare-fun m!2259745 () Bool)

(assert (=> start!181846 m!2259745))

(declare-fun m!2259747 () Bool)

(assert (=> b!1831963 m!2259747))

(declare-fun m!2259749 () Bool)

(assert (=> b!1831955 m!2259749))

(declare-fun m!2259751 () Bool)

(assert (=> b!1831955 m!2259751))

(assert (=> b!1831955 m!2259751))

(declare-fun m!2259753 () Bool)

(assert (=> b!1831955 m!2259753))

(declare-fun m!2259755 () Bool)

(assert (=> b!1831942 m!2259755))

(declare-fun m!2259757 () Bool)

(assert (=> b!1831942 m!2259757))

(declare-fun m!2259759 () Bool)

(assert (=> b!1831958 m!2259759))

(declare-fun m!2259761 () Bool)

(assert (=> b!1831965 m!2259761))

(declare-fun m!2259763 () Bool)

(assert (=> b!1831947 m!2259763))

(declare-fun m!2259765 () Bool)

(assert (=> b!1831957 m!2259765))

(declare-fun m!2259767 () Bool)

(assert (=> b!1831957 m!2259767))

(declare-fun m!2259769 () Bool)

(assert (=> b!1831957 m!2259769))

(declare-fun m!2259771 () Bool)

(assert (=> b!1831959 m!2259771))

(assert (=> b!1831962 m!2259747))

(declare-fun m!2259773 () Bool)

(assert (=> b!1831950 m!2259773))

(declare-fun m!2259775 () Bool)

(assert (=> b!1831966 m!2259775))

(declare-fun m!2259777 () Bool)

(assert (=> b!1831966 m!2259777))

(declare-fun m!2259779 () Bool)

(assert (=> b!1831943 m!2259779))

(declare-fun m!2259781 () Bool)

(assert (=> b!1831943 m!2259781))

(declare-fun m!2259783 () Bool)

(assert (=> b!1831943 m!2259783))

(declare-fun m!2259785 () Bool)

(assert (=> b!1831943 m!2259785))

(assert (=> b!1831937 m!2259743))

(assert (=> b!1831937 m!2259767))

(assert (=> b!1831937 m!2259769))

(assert (=> b!1831961 m!2259783))

(assert (=> b!1831961 m!2259783))

(declare-fun m!2259787 () Bool)

(assert (=> b!1831961 m!2259787))

(declare-fun m!2259789 () Bool)

(assert (=> b!1831964 m!2259789))

(declare-fun m!2259791 () Bool)

(assert (=> b!1831964 m!2259791))

(declare-fun m!2259793 () Bool)

(assert (=> b!1831944 m!2259793))

(declare-fun m!2259795 () Bool)

(assert (=> b!1831944 m!2259795))

(declare-fun m!2259797 () Bool)

(assert (=> b!1831944 m!2259797))

(declare-fun m!2259799 () Bool)

(assert (=> b!1831944 m!2259799))

(declare-fun m!2259801 () Bool)

(assert (=> b!1831944 m!2259801))

(assert (=> b!1831944 m!2259751))

(assert (=> b!1831944 m!2259753))

(assert (=> b!1831944 m!2259797))

(assert (=> b!1831944 m!2259751))

(declare-fun m!2259803 () Bool)

(assert (=> b!1831948 m!2259803))

(declare-fun m!2259805 () Bool)

(assert (=> b!1831960 m!2259805))

(declare-fun m!2259807 () Bool)

(assert (=> b!1831949 m!2259807))

(check-sat (not b!1831956) (not b!1831947) tp_is_empty!8173 (not b_next!51937) b_and!142701 (not b!1831937) (not b!1831955) (not b!1831962) b_and!142697 (not b_next!51945) (not b!1831953) (not b_next!51939) b_and!142699 (not b!1831946) (not b!1831966) b_and!142707 (not b!1831948) (not b_next!51941) (not b!1831964) (not b_next!51931) b_and!142705 (not b!1831957) b_and!142703 (not b!1831940) (not b!1831950) (not b!1831965) (not b!1831963) (not b!1831961) (not b!1831958) (not b!1831960) (not b!1831943) (not start!181846) (not b!1831954) (not b!1831952) (not b!1831942) (not b!1831968) (not b_next!51943) b_and!142709 (not b_next!51933) (not b!1831949) (not b!1831944) (not b!1831959) b_and!142711 (not b_next!51935))
(check-sat b_and!142707 (not b_next!51937) b_and!142701 b_and!142697 (not b_next!51945) (not b_next!51939) b_and!142699 (not b_next!51931) (not b_next!51941) b_and!142705 b_and!142703 (not b_next!51943) b_and!142709 (not b_next!51933) b_and!142711 (not b_next!51935))
(get-model)

(declare-fun d!560191 () Bool)

(assert (=> d!560191 true))

(declare-fun lt!711361 () Bool)

(declare-fun rulesValidInductive!1256 (LexerInterface!3270 List!20215) Bool)

(assert (=> d!560191 (= lt!711361 (rulesValidInductive!1256 thiss!28318 (t!170872 rs!808)))))

(declare-fun lambda!71988 () Int)

(declare-fun forall!4335 (List!20215 Int) Bool)

(assert (=> d!560191 (= lt!711361 (forall!4335 (t!170872 rs!808) lambda!71988))))

(assert (=> d!560191 (= (rulesValid!1388 thiss!28318 (t!170872 rs!808)) lt!711361)))

(declare-fun bs!407994 () Bool)

(assert (= bs!407994 d!560191))

(declare-fun m!2259969 () Bool)

(assert (=> bs!407994 m!2259969))

(declare-fun m!2259971 () Bool)

(assert (=> bs!407994 m!2259971))

(assert (=> b!1831949 d!560191))

(declare-fun b!1832166 () Bool)

(declare-fun e!1171030 () List!20214)

(assert (=> b!1832166 (= e!1171030 suffix!1698)))

(declare-fun b!1832168 () Bool)

(declare-fun res!823899 () Bool)

(declare-fun e!1171029 () Bool)

(assert (=> b!1832168 (=> (not res!823899) (not e!1171029))))

(declare-fun lt!711374 () List!20214)

(assert (=> b!1832168 (= res!823899 (= (size!15972 lt!711374) (+ (size!15972 lt!711312) (size!15972 suffix!1698))))))

(declare-fun b!1832169 () Bool)

(assert (=> b!1832169 (= e!1171029 (or (not (= suffix!1698 Nil!20144)) (= lt!711374 lt!711312)))))

(declare-fun b!1832167 () Bool)

(assert (=> b!1832167 (= e!1171030 (Cons!20144 (h!25545 lt!711312) (++!5465 (t!170871 lt!711312) suffix!1698)))))

(declare-fun d!560229 () Bool)

(assert (=> d!560229 e!1171029))

(declare-fun res!823900 () Bool)

(assert (=> d!560229 (=> (not res!823900) (not e!1171029))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2984 (List!20214) (InoxSet C!10112))

(assert (=> d!560229 (= res!823900 (= (content!2984 lt!711374) ((_ map or) (content!2984 lt!711312) (content!2984 suffix!1698))))))

(assert (=> d!560229 (= lt!711374 e!1171030)))

(declare-fun c!298814 () Bool)

(assert (=> d!560229 (= c!298814 ((_ is Nil!20144) lt!711312))))

(assert (=> d!560229 (= (++!5465 lt!711312 suffix!1698) lt!711374)))

(assert (= (and d!560229 c!298814) b!1832166))

(assert (= (and d!560229 (not c!298814)) b!1832167))

(assert (= (and d!560229 res!823900) b!1832168))

(assert (= (and b!1832168 res!823899) b!1832169))

(declare-fun m!2259973 () Bool)

(assert (=> b!1832168 m!2259973))

(assert (=> b!1832168 m!2259793))

(declare-fun m!2259975 () Bool)

(assert (=> b!1832168 m!2259975))

(declare-fun m!2259977 () Bool)

(assert (=> b!1832167 m!2259977))

(declare-fun m!2259979 () Bool)

(assert (=> d!560229 m!2259979))

(declare-fun m!2259981 () Bool)

(assert (=> d!560229 m!2259981))

(declare-fun m!2259983 () Bool)

(assert (=> d!560229 m!2259983))

(assert (=> b!1831950 d!560229))

(declare-fun d!560231 () Bool)

(assert (=> d!560231 (= (inv!26206 (tag!4055 (h!25546 rules!4610))) (= (mod (str.len (value!113434 (tag!4055 (h!25546 rules!4610)))) 2) 0))))

(assert (=> b!1831954 d!560231))

(declare-fun d!560233 () Bool)

(declare-fun res!823903 () Bool)

(declare-fun e!1171033 () Bool)

(assert (=> d!560233 (=> (not res!823903) (not e!1171033))))

(declare-fun semiInverseModEq!1462 (Int Int) Bool)

(assert (=> d!560233 (= res!823903 (semiInverseModEq!1462 (toChars!5047 (transformation!3641 (h!25546 rules!4610))) (toValue!5188 (transformation!3641 (h!25546 rules!4610)))))))

(assert (=> d!560233 (= (inv!26209 (transformation!3641 (h!25546 rules!4610))) e!1171033)))

(declare-fun b!1832172 () Bool)

(declare-fun equivClasses!1403 (Int Int) Bool)

(assert (=> b!1832172 (= e!1171033 (equivClasses!1403 (toChars!5047 (transformation!3641 (h!25546 rules!4610))) (toValue!5188 (transformation!3641 (h!25546 rules!4610)))))))

(assert (= (and d!560233 res!823903) b!1832172))

(declare-fun m!2259985 () Bool)

(assert (=> d!560233 m!2259985))

(declare-fun m!2259987 () Bool)

(assert (=> b!1832172 m!2259987))

(assert (=> b!1831954 d!560233))

(declare-fun d!560235 () Bool)

(declare-fun list!8187 (Conc!6673) List!20214)

(assert (=> d!560235 (= (list!8185 (charsOf!2284 token!567)) (list!8187 (c!298775 (charsOf!2284 token!567))))))

(declare-fun bs!407995 () Bool)

(assert (= bs!407995 d!560235))

(declare-fun m!2259989 () Bool)

(assert (=> bs!407995 m!2259989))

(assert (=> b!1831944 d!560235))

(declare-fun b!1832241 () Bool)

(declare-fun e!1171072 () Option!4221)

(assert (=> b!1832241 (= e!1171072 None!4220)))

(declare-fun b!1832242 () Bool)

(declare-fun res!823938 () Bool)

(declare-fun e!1171071 () Bool)

(assert (=> b!1832242 (=> (not res!823938) (not e!1171071))))

(declare-fun lt!711416 () Option!4221)

(declare-fun get!6219 (Option!4221) tuple2!19602)

(assert (=> b!1832242 (= res!823938 (= (rule!5813 (_1!11203 (get!6219 lt!711416))) rule!580))))

(declare-fun b!1832243 () Bool)

(assert (=> b!1832243 (= e!1171071 (= (size!15971 (_1!11203 (get!6219 lt!711416))) (size!15972 (originalCharacters!4449 (_1!11203 (get!6219 lt!711416))))))))

(declare-fun b!1832244 () Bool)

(declare-fun e!1171074 () Bool)

(assert (=> b!1832244 (= e!1171074 e!1171071)))

(declare-fun res!823935 () Bool)

(assert (=> b!1832244 (=> (not res!823935) (not e!1171071))))

(assert (=> b!1832244 (= res!823935 (matchR!2432 (regex!3641 rule!580) (list!8185 (charsOf!2284 (_1!11203 (get!6219 lt!711416))))))))

(declare-fun b!1832245 () Bool)

(declare-datatypes ((tuple2!19606 0))(
  ( (tuple2!19607 (_1!11205 List!20214) (_2!11205 List!20214)) )
))
(declare-fun lt!711415 () tuple2!19606)

(declare-fun size!15976 (BalanceConc!13290) Int)

(assert (=> b!1832245 (= e!1171072 (Some!4220 (tuple2!19603 (Token!6837 (apply!5429 (transformation!3641 rule!580) (seqFromList!2598 (_1!11205 lt!711415))) rule!580 (size!15976 (seqFromList!2598 (_1!11205 lt!711415))) (_1!11205 lt!711415)) (_2!11205 lt!711415))))))

(declare-fun lt!711418 () Unit!34821)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!501 (Regex!4969 List!20214) Unit!34821)

(assert (=> b!1832245 (= lt!711418 (longestMatchIsAcceptedByMatchOrIsEmpty!501 (regex!3641 rule!580) input!3681))))

(declare-fun res!823932 () Bool)

(declare-fun isEmpty!12717 (List!20214) Bool)

(declare-fun findLongestMatchInner!517 (Regex!4969 List!20214 Int List!20214 List!20214 Int) tuple2!19606)

(assert (=> b!1832245 (= res!823932 (isEmpty!12717 (_1!11205 (findLongestMatchInner!517 (regex!3641 rule!580) Nil!20144 (size!15972 Nil!20144) input!3681 input!3681 (size!15972 input!3681)))))))

(declare-fun e!1171073 () Bool)

(assert (=> b!1832245 (=> res!823932 e!1171073)))

(assert (=> b!1832245 e!1171073))

(declare-fun lt!711417 () Unit!34821)

(assert (=> b!1832245 (= lt!711417 lt!711418)))

(declare-fun lt!711414 () Unit!34821)

(declare-fun lemmaSemiInverse!731 (TokenValueInjection!7122 BalanceConc!13290) Unit!34821)

(assert (=> b!1832245 (= lt!711414 (lemmaSemiInverse!731 (transformation!3641 rule!580) (seqFromList!2598 (_1!11205 lt!711415))))))

(declare-fun b!1832246 () Bool)

(declare-fun res!823937 () Bool)

(assert (=> b!1832246 (=> (not res!823937) (not e!1171071))))

(assert (=> b!1832246 (= res!823937 (< (size!15972 (_2!11203 (get!6219 lt!711416))) (size!15972 input!3681)))))

(declare-fun b!1832247 () Bool)

(declare-fun res!823933 () Bool)

(assert (=> b!1832247 (=> (not res!823933) (not e!1171071))))

(assert (=> b!1832247 (= res!823933 (= (++!5465 (list!8185 (charsOf!2284 (_1!11203 (get!6219 lt!711416)))) (_2!11203 (get!6219 lt!711416))) input!3681))))

(declare-fun b!1832248 () Bool)

(declare-fun res!823936 () Bool)

(assert (=> b!1832248 (=> (not res!823936) (not e!1171071))))

(assert (=> b!1832248 (= res!823936 (= (value!113435 (_1!11203 (get!6219 lt!711416))) (apply!5429 (transformation!3641 (rule!5813 (_1!11203 (get!6219 lt!711416)))) (seqFromList!2598 (originalCharacters!4449 (_1!11203 (get!6219 lt!711416)))))))))

(declare-fun b!1832249 () Bool)

(assert (=> b!1832249 (= e!1171073 (matchR!2432 (regex!3641 rule!580) (_1!11205 (findLongestMatchInner!517 (regex!3641 rule!580) Nil!20144 (size!15972 Nil!20144) input!3681 input!3681 (size!15972 input!3681)))))))

(declare-fun d!560237 () Bool)

(assert (=> d!560237 e!1171074))

(declare-fun res!823934 () Bool)

(assert (=> d!560237 (=> res!823934 e!1171074)))

(declare-fun isEmpty!12718 (Option!4221) Bool)

(assert (=> d!560237 (= res!823934 (isEmpty!12718 lt!711416))))

(assert (=> d!560237 (= lt!711416 e!1171072)))

(declare-fun c!298833 () Bool)

(assert (=> d!560237 (= c!298833 (isEmpty!12717 (_1!11205 lt!711415)))))

(declare-fun findLongestMatch!444 (Regex!4969 List!20214) tuple2!19606)

(assert (=> d!560237 (= lt!711415 (findLongestMatch!444 (regex!3641 rule!580) input!3681))))

(assert (=> d!560237 (ruleValid!1131 thiss!28318 rule!580)))

(assert (=> d!560237 (= (maxPrefixOneRule!1179 thiss!28318 rule!580 input!3681) lt!711416)))

(assert (= (and d!560237 c!298833) b!1832241))

(assert (= (and d!560237 (not c!298833)) b!1832245))

(assert (= (and b!1832245 (not res!823932)) b!1832249))

(assert (= (and d!560237 (not res!823934)) b!1832244))

(assert (= (and b!1832244 res!823935) b!1832247))

(assert (= (and b!1832247 res!823933) b!1832246))

(assert (= (and b!1832246 res!823937) b!1832242))

(assert (= (and b!1832242 res!823938) b!1832248))

(assert (= (and b!1832248 res!823936) b!1832243))

(declare-fun m!2260091 () Bool)

(assert (=> b!1832249 m!2260091))

(declare-fun m!2260093 () Bool)

(assert (=> b!1832249 m!2260093))

(assert (=> b!1832249 m!2260091))

(assert (=> b!1832249 m!2260093))

(declare-fun m!2260095 () Bool)

(assert (=> b!1832249 m!2260095))

(declare-fun m!2260097 () Bool)

(assert (=> b!1832249 m!2260097))

(declare-fun m!2260099 () Bool)

(assert (=> b!1832248 m!2260099))

(declare-fun m!2260101 () Bool)

(assert (=> b!1832248 m!2260101))

(assert (=> b!1832248 m!2260101))

(declare-fun m!2260103 () Bool)

(assert (=> b!1832248 m!2260103))

(assert (=> b!1832247 m!2260099))

(declare-fun m!2260105 () Bool)

(assert (=> b!1832247 m!2260105))

(assert (=> b!1832247 m!2260105))

(declare-fun m!2260107 () Bool)

(assert (=> b!1832247 m!2260107))

(assert (=> b!1832247 m!2260107))

(declare-fun m!2260109 () Bool)

(assert (=> b!1832247 m!2260109))

(assert (=> b!1832246 m!2260099))

(declare-fun m!2260111 () Bool)

(assert (=> b!1832246 m!2260111))

(assert (=> b!1832246 m!2260093))

(assert (=> b!1832244 m!2260099))

(assert (=> b!1832244 m!2260105))

(assert (=> b!1832244 m!2260105))

(assert (=> b!1832244 m!2260107))

(assert (=> b!1832244 m!2260107))

(declare-fun m!2260113 () Bool)

(assert (=> b!1832244 m!2260113))

(declare-fun m!2260115 () Bool)

(assert (=> d!560237 m!2260115))

(declare-fun m!2260117 () Bool)

(assert (=> d!560237 m!2260117))

(declare-fun m!2260119 () Bool)

(assert (=> d!560237 m!2260119))

(assert (=> d!560237 m!2259767))

(assert (=> b!1832242 m!2260099))

(assert (=> b!1832245 m!2260091))

(assert (=> b!1832245 m!2260093))

(assert (=> b!1832245 m!2260095))

(assert (=> b!1832245 m!2260091))

(declare-fun m!2260121 () Bool)

(assert (=> b!1832245 m!2260121))

(declare-fun m!2260123 () Bool)

(assert (=> b!1832245 m!2260123))

(declare-fun m!2260125 () Bool)

(assert (=> b!1832245 m!2260125))

(assert (=> b!1832245 m!2260123))

(declare-fun m!2260129 () Bool)

(assert (=> b!1832245 m!2260129))

(assert (=> b!1832245 m!2260123))

(declare-fun m!2260133 () Bool)

(assert (=> b!1832245 m!2260133))

(declare-fun m!2260139 () Bool)

(assert (=> b!1832245 m!2260139))

(assert (=> b!1832245 m!2260123))

(assert (=> b!1832245 m!2260093))

(assert (=> b!1832243 m!2260099))

(declare-fun m!2260143 () Bool)

(assert (=> b!1832243 m!2260143))

(assert (=> b!1831944 d!560237))

(declare-fun d!560267 () Bool)

(declare-fun fromListB!1188 (List!20214) BalanceConc!13290)

(assert (=> d!560267 (= (seqFromList!2598 lt!711312) (fromListB!1188 lt!711312))))

(declare-fun bs!408008 () Bool)

(assert (= bs!408008 d!560267))

(declare-fun m!2260149 () Bool)

(assert (=> bs!408008 m!2260149))

(assert (=> b!1831944 d!560267))

(declare-fun d!560269 () Bool)

(assert (=> d!560269 (= (maxPrefixOneRule!1179 thiss!28318 rule!580 input!3681) (Some!4220 (tuple2!19603 (Token!6837 (apply!5429 (transformation!3641 rule!580) (seqFromList!2598 lt!711312)) rule!580 (size!15972 lt!711312) lt!711312) suffix!1698)))))

(declare-fun lt!711426 () Unit!34821)

(declare-fun choose!11535 (LexerInterface!3270 List!20215 List!20214 List!20214 List!20214 Rule!7082) Unit!34821)

(assert (=> d!560269 (= lt!711426 (choose!11535 thiss!28318 rules!4610 lt!711312 input!3681 suffix!1698 rule!580))))

(assert (=> d!560269 (not (isEmpty!12713 rules!4610))))

(assert (=> d!560269 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!549 thiss!28318 rules!4610 lt!711312 input!3681 suffix!1698 rule!580) lt!711426)))

(declare-fun bs!408010 () Bool)

(assert (= bs!408010 d!560269))

(assert (=> bs!408010 m!2259797))

(assert (=> bs!408010 m!2259799))

(assert (=> bs!408010 m!2259795))

(assert (=> bs!408010 m!2259797))

(assert (=> bs!408010 m!2259793))

(declare-fun m!2260159 () Bool)

(assert (=> bs!408010 m!2260159))

(assert (=> bs!408010 m!2259803))

(assert (=> b!1831944 d!560269))

(declare-fun d!560273 () Bool)

(declare-fun dynLambda!10021 (Int BalanceConc!13290) TokenValue!3731)

(assert (=> d!560273 (= (apply!5429 (transformation!3641 rule!580) (seqFromList!2598 lt!711312)) (dynLambda!10021 (toValue!5188 (transformation!3641 rule!580)) (seqFromList!2598 lt!711312)))))

(declare-fun b_lambda!60649 () Bool)

(assert (=> (not b_lambda!60649) (not d!560273)))

(declare-fun tb!112065 () Bool)

(declare-fun t!170899 () Bool)

(assert (=> (and b!1831938 (= (toValue!5188 (transformation!3641 (h!25546 rules!4610))) (toValue!5188 (transformation!3641 rule!580))) t!170899) tb!112065))

(declare-fun result!134754 () Bool)

(assert (=> tb!112065 (= result!134754 (inv!21 (dynLambda!10021 (toValue!5188 (transformation!3641 rule!580)) (seqFromList!2598 lt!711312))))))

(declare-fun m!2260161 () Bool)

(assert (=> tb!112065 m!2260161))

(assert (=> d!560273 t!170899))

(declare-fun b_and!142745 () Bool)

(assert (= b_and!142697 (and (=> t!170899 result!134754) b_and!142745)))

(declare-fun tb!112067 () Bool)

(declare-fun t!170901 () Bool)

(assert (=> (and b!1831967 (= (toValue!5188 (transformation!3641 (rule!5813 token!567))) (toValue!5188 (transformation!3641 rule!580))) t!170901) tb!112067))

(declare-fun result!134758 () Bool)

(assert (= result!134758 result!134754))

(assert (=> d!560273 t!170901))

(declare-fun b_and!142747 () Bool)

(assert (= b_and!142701 (and (=> t!170901 result!134758) b_and!142747)))

(declare-fun t!170903 () Bool)

(declare-fun tb!112069 () Bool)

(assert (=> (and b!1831939 (= (toValue!5188 (transformation!3641 (h!25546 rs!808))) (toValue!5188 (transformation!3641 rule!580))) t!170903) tb!112069))

(declare-fun result!134760 () Bool)

(assert (= result!134760 result!134754))

(assert (=> d!560273 t!170903))

(declare-fun b_and!142749 () Bool)

(assert (= b_and!142705 (and (=> t!170903 result!134760) b_and!142749)))

(declare-fun t!170905 () Bool)

(declare-fun tb!112071 () Bool)

(assert (=> (and b!1831945 (= (toValue!5188 (transformation!3641 rule!580)) (toValue!5188 (transformation!3641 rule!580))) t!170905) tb!112071))

(declare-fun result!134762 () Bool)

(assert (= result!134762 result!134754))

(assert (=> d!560273 t!170905))

(declare-fun b_and!142751 () Bool)

(assert (= b_and!142709 (and (=> t!170905 result!134762) b_and!142751)))

(assert (=> d!560273 m!2259797))

(declare-fun m!2260163 () Bool)

(assert (=> d!560273 m!2260163))

(assert (=> b!1831944 d!560273))

(declare-fun d!560275 () Bool)

(declare-fun lt!711429 () Int)

(assert (=> d!560275 (>= lt!711429 0)))

(declare-fun e!1171108 () Int)

(assert (=> d!560275 (= lt!711429 e!1171108)))

(declare-fun c!298837 () Bool)

(assert (=> d!560275 (= c!298837 ((_ is Nil!20144) lt!711312))))

(assert (=> d!560275 (= (size!15972 lt!711312) lt!711429)))

(declare-fun b!1832305 () Bool)

(assert (=> b!1832305 (= e!1171108 0)))

(declare-fun b!1832306 () Bool)

(assert (=> b!1832306 (= e!1171108 (+ 1 (size!15972 (t!170871 lt!711312))))))

(assert (= (and d!560275 c!298837) b!1832305))

(assert (= (and d!560275 (not c!298837)) b!1832306))

(declare-fun m!2260165 () Bool)

(assert (=> b!1832306 m!2260165))

(assert (=> b!1831944 d!560275))

(declare-fun d!560277 () Bool)

(declare-fun lt!711432 () BalanceConc!13290)

(assert (=> d!560277 (= (list!8185 lt!711432) (originalCharacters!4449 token!567))))

(declare-fun dynLambda!10022 (Int TokenValue!3731) BalanceConc!13290)

(assert (=> d!560277 (= lt!711432 (dynLambda!10022 (toChars!5047 (transformation!3641 (rule!5813 token!567))) (value!113435 token!567)))))

(assert (=> d!560277 (= (charsOf!2284 token!567) lt!711432)))

(declare-fun b_lambda!60651 () Bool)

(assert (=> (not b_lambda!60651) (not d!560277)))

(declare-fun t!170907 () Bool)

(declare-fun tb!112073 () Bool)

(assert (=> (and b!1831938 (= (toChars!5047 (transformation!3641 (h!25546 rules!4610))) (toChars!5047 (transformation!3641 (rule!5813 token!567)))) t!170907) tb!112073))

(declare-fun b!1832311 () Bool)

(declare-fun e!1171111 () Bool)

(declare-fun tp!518383 () Bool)

(declare-fun inv!26213 (Conc!6673) Bool)

(assert (=> b!1832311 (= e!1171111 (and (inv!26213 (c!298775 (dynLambda!10022 (toChars!5047 (transformation!3641 (rule!5813 token!567))) (value!113435 token!567)))) tp!518383))))

(declare-fun result!134764 () Bool)

(declare-fun inv!26214 (BalanceConc!13290) Bool)

(assert (=> tb!112073 (= result!134764 (and (inv!26214 (dynLambda!10022 (toChars!5047 (transformation!3641 (rule!5813 token!567))) (value!113435 token!567))) e!1171111))))

(assert (= tb!112073 b!1832311))

(declare-fun m!2260167 () Bool)

(assert (=> b!1832311 m!2260167))

(declare-fun m!2260169 () Bool)

(assert (=> tb!112073 m!2260169))

(assert (=> d!560277 t!170907))

(declare-fun b_and!142753 () Bool)

(assert (= b_and!142699 (and (=> t!170907 result!134764) b_and!142753)))

(declare-fun t!170909 () Bool)

(declare-fun tb!112075 () Bool)

(assert (=> (and b!1831967 (= (toChars!5047 (transformation!3641 (rule!5813 token!567))) (toChars!5047 (transformation!3641 (rule!5813 token!567)))) t!170909) tb!112075))

(declare-fun result!134768 () Bool)

(assert (= result!134768 result!134764))

(assert (=> d!560277 t!170909))

(declare-fun b_and!142755 () Bool)

(assert (= b_and!142703 (and (=> t!170909 result!134768) b_and!142755)))

(declare-fun tb!112077 () Bool)

(declare-fun t!170911 () Bool)

(assert (=> (and b!1831939 (= (toChars!5047 (transformation!3641 (h!25546 rs!808))) (toChars!5047 (transformation!3641 (rule!5813 token!567)))) t!170911) tb!112077))

(declare-fun result!134770 () Bool)

(assert (= result!134770 result!134764))

(assert (=> d!560277 t!170911))

(declare-fun b_and!142757 () Bool)

(assert (= b_and!142707 (and (=> t!170911 result!134770) b_and!142757)))

(declare-fun tb!112079 () Bool)

(declare-fun t!170913 () Bool)

(assert (=> (and b!1831945 (= (toChars!5047 (transformation!3641 rule!580)) (toChars!5047 (transformation!3641 (rule!5813 token!567)))) t!170913) tb!112079))

(declare-fun result!134772 () Bool)

(assert (= result!134772 result!134764))

(assert (=> d!560277 t!170913))

(declare-fun b_and!142759 () Bool)

(assert (= b_and!142711 (and (=> t!170913 result!134772) b_and!142759)))

(declare-fun m!2260171 () Bool)

(assert (=> d!560277 m!2260171))

(declare-fun m!2260173 () Bool)

(assert (=> d!560277 m!2260173))

(assert (=> b!1831944 d!560277))

(declare-fun d!560279 () Bool)

(declare-fun res!823941 () Bool)

(declare-fun e!1171114 () Bool)

(assert (=> d!560279 (=> (not res!823941) (not e!1171114))))

(assert (=> d!560279 (= res!823941 (rulesValid!1388 thiss!28318 rules!4610))))

(assert (=> d!560279 (= (rulesInvariant!2939 thiss!28318 rules!4610) e!1171114)))

(declare-fun b!1832314 () Bool)

(declare-datatypes ((List!20218 0))(
  ( (Nil!20148) (Cons!20148 (h!25549 String!22987) (t!170923 List!20218)) )
))
(declare-fun noDuplicateTag!1386 (LexerInterface!3270 List!20215 List!20218) Bool)

(assert (=> b!1832314 (= e!1171114 (noDuplicateTag!1386 thiss!28318 rules!4610 Nil!20148))))

(assert (= (and d!560279 res!823941) b!1832314))

(declare-fun m!2260175 () Bool)

(assert (=> d!560279 m!2260175))

(declare-fun m!2260177 () Bool)

(assert (=> b!1832314 m!2260177))

(assert (=> b!1831965 d!560279))

(declare-fun d!560281 () Bool)

(assert (=> d!560281 (= (inv!26206 (tag!4055 (h!25546 rs!808))) (= (mod (str.len (value!113434 (tag!4055 (h!25546 rs!808)))) 2) 0))))

(assert (=> b!1831966 d!560281))

(declare-fun d!560283 () Bool)

(declare-fun res!823942 () Bool)

(declare-fun e!1171115 () Bool)

(assert (=> d!560283 (=> (not res!823942) (not e!1171115))))

(assert (=> d!560283 (= res!823942 (semiInverseModEq!1462 (toChars!5047 (transformation!3641 (h!25546 rs!808))) (toValue!5188 (transformation!3641 (h!25546 rs!808)))))))

(assert (=> d!560283 (= (inv!26209 (transformation!3641 (h!25546 rs!808))) e!1171115)))

(declare-fun b!1832315 () Bool)

(assert (=> b!1832315 (= e!1171115 (equivClasses!1403 (toChars!5047 (transformation!3641 (h!25546 rs!808))) (toValue!5188 (transformation!3641 (h!25546 rs!808)))))))

(assert (= (and d!560283 res!823942) b!1832315))

(declare-fun m!2260179 () Bool)

(assert (=> d!560283 m!2260179))

(declare-fun m!2260181 () Bool)

(assert (=> b!1832315 m!2260181))

(assert (=> b!1831966 d!560283))

(declare-fun d!560285 () Bool)

(declare-fun c!298843 () Bool)

(assert (=> d!560285 (= c!298843 ((_ is IntegerValue!11193) (value!113435 token!567)))))

(declare-fun e!1171123 () Bool)

(assert (=> d!560285 (= (inv!21 (value!113435 token!567)) e!1171123)))

(declare-fun b!1832326 () Bool)

(declare-fun e!1171122 () Bool)

(declare-fun inv!17 (TokenValue!3731) Bool)

(assert (=> b!1832326 (= e!1171122 (inv!17 (value!113435 token!567)))))

(declare-fun b!1832327 () Bool)

(assert (=> b!1832327 (= e!1171123 e!1171122)))

(declare-fun c!298842 () Bool)

(assert (=> b!1832327 (= c!298842 ((_ is IntegerValue!11194) (value!113435 token!567)))))

(declare-fun b!1832328 () Bool)

(declare-fun inv!16 (TokenValue!3731) Bool)

(assert (=> b!1832328 (= e!1171123 (inv!16 (value!113435 token!567)))))

(declare-fun b!1832329 () Bool)

(declare-fun res!823945 () Bool)

(declare-fun e!1171124 () Bool)

(assert (=> b!1832329 (=> res!823945 e!1171124)))

(assert (=> b!1832329 (= res!823945 (not ((_ is IntegerValue!11195) (value!113435 token!567))))))

(assert (=> b!1832329 (= e!1171122 e!1171124)))

(declare-fun b!1832330 () Bool)

(declare-fun inv!15 (TokenValue!3731) Bool)

(assert (=> b!1832330 (= e!1171124 (inv!15 (value!113435 token!567)))))

(assert (= (and d!560285 c!298843) b!1832328))

(assert (= (and d!560285 (not c!298843)) b!1832327))

(assert (= (and b!1832327 c!298842) b!1832326))

(assert (= (and b!1832327 (not c!298842)) b!1832329))

(assert (= (and b!1832329 (not res!823945)) b!1832330))

(declare-fun m!2260183 () Bool)

(assert (=> b!1832326 m!2260183))

(declare-fun m!2260185 () Bool)

(assert (=> b!1832328 m!2260185))

(declare-fun m!2260187 () Bool)

(assert (=> b!1832330 m!2260187))

(assert (=> b!1831968 d!560285))

(declare-fun d!560287 () Bool)

(declare-fun lt!711435 () Bool)

(declare-fun content!2985 (List!20215) (InoxSet Rule!7082))

(assert (=> d!560287 (= lt!711435 (select (content!2985 rs!808) rule!580))))

(declare-fun e!1171129 () Bool)

(assert (=> d!560287 (= lt!711435 e!1171129)))

(declare-fun res!823950 () Bool)

(assert (=> d!560287 (=> (not res!823950) (not e!1171129))))

(assert (=> d!560287 (= res!823950 ((_ is Cons!20145) rs!808))))

(assert (=> d!560287 (= (contains!3717 rs!808 rule!580) lt!711435)))

(declare-fun b!1832335 () Bool)

(declare-fun e!1171130 () Bool)

(assert (=> b!1832335 (= e!1171129 e!1171130)))

(declare-fun res!823951 () Bool)

(assert (=> b!1832335 (=> res!823951 e!1171130)))

(assert (=> b!1832335 (= res!823951 (= (h!25546 rs!808) rule!580))))

(declare-fun b!1832336 () Bool)

(assert (=> b!1832336 (= e!1171130 (contains!3717 (t!170872 rs!808) rule!580))))

(assert (= (and d!560287 res!823950) b!1832335))

(assert (= (and b!1832335 (not res!823951)) b!1832336))

(declare-fun m!2260189 () Bool)

(assert (=> d!560287 m!2260189))

(declare-fun m!2260191 () Bool)

(assert (=> d!560287 m!2260191))

(assert (=> b!1832336 m!2259771))

(assert (=> b!1831947 d!560287))

(declare-fun d!560289 () Bool)

(assert (=> d!560289 (= (isEmpty!12713 rules!4610) ((_ is Nil!20145) rules!4610))))

(assert (=> b!1831948 d!560289))

(declare-fun d!560291 () Bool)

(declare-fun lt!711436 () Bool)

(assert (=> d!560291 (= lt!711436 (select (content!2985 rules!4610) rule!580))))

(declare-fun e!1171131 () Bool)

(assert (=> d!560291 (= lt!711436 e!1171131)))

(declare-fun res!823952 () Bool)

(assert (=> d!560291 (=> (not res!823952) (not e!1171131))))

(assert (=> d!560291 (= res!823952 ((_ is Cons!20145) rules!4610))))

(assert (=> d!560291 (= (contains!3717 rules!4610 rule!580) lt!711436)))

(declare-fun b!1832337 () Bool)

(declare-fun e!1171132 () Bool)

(assert (=> b!1832337 (= e!1171131 e!1171132)))

(declare-fun res!823953 () Bool)

(assert (=> b!1832337 (=> res!823953 e!1171132)))

(assert (=> b!1832337 (= res!823953 (= (h!25546 rules!4610) rule!580))))

(declare-fun b!1832338 () Bool)

(assert (=> b!1832338 (= e!1171132 (contains!3717 (t!170872 rules!4610) rule!580))))

(assert (= (and d!560291 res!823952) b!1832337))

(assert (= (and b!1832337 (not res!823953)) b!1832338))

(declare-fun m!2260193 () Bool)

(assert (=> d!560291 m!2260193))

(declare-fun m!2260195 () Bool)

(assert (=> d!560291 m!2260195))

(declare-fun m!2260197 () Bool)

(assert (=> b!1832338 m!2260197))

(assert (=> b!1831960 d!560291))

(declare-fun b!1832359 () Bool)

(declare-fun e!1171146 () Regex!4969)

(declare-fun e!1171150 () Regex!4969)

(assert (=> b!1832359 (= e!1171146 e!1171150)))

(declare-fun c!298855 () Bool)

(assert (=> b!1832359 (= c!298855 ((_ is Cons!20146) (map!4180 rules!4610 lambda!71982)))))

(declare-fun b!1832360 () Bool)

(declare-fun e!1171148 () Bool)

(declare-fun e!1171149 () Bool)

(assert (=> b!1832360 (= e!1171148 e!1171149)))

(declare-fun c!298853 () Bool)

(declare-fun isEmpty!12719 (List!20216) Bool)

(assert (=> b!1832360 (= c!298853 (isEmpty!12719 (map!4180 rules!4610 lambda!71982)))))

(declare-fun b!1832361 () Bool)

(declare-fun e!1171145 () Bool)

(assert (=> b!1832361 (= e!1171149 e!1171145)))

(declare-fun c!298854 () Bool)

(declare-fun tail!2738 (List!20216) List!20216)

(assert (=> b!1832361 (= c!298854 (isEmpty!12719 (tail!2738 (map!4180 rules!4610 lambda!71982))))))

(declare-fun b!1832362 () Bool)

(declare-fun e!1171147 () Bool)

(assert (=> b!1832362 (= e!1171147 (isEmpty!12719 (t!170873 (map!4180 rules!4610 lambda!71982))))))

(declare-fun b!1832363 () Bool)

(assert (=> b!1832363 (= e!1171150 (Union!4969 (h!25547 (map!4180 rules!4610 lambda!71982)) (generalisedUnion!484 (t!170873 (map!4180 rules!4610 lambda!71982)))))))

(declare-fun b!1832364 () Bool)

(assert (=> b!1832364 (= e!1171146 (h!25547 (map!4180 rules!4610 lambda!71982)))))

(declare-fun b!1832365 () Bool)

(declare-fun lt!711439 () Regex!4969)

(declare-fun isUnion!127 (Regex!4969) Bool)

(assert (=> b!1832365 (= e!1171145 (isUnion!127 lt!711439))))

(declare-fun d!560293 () Bool)

(assert (=> d!560293 e!1171148))

(declare-fun res!823959 () Bool)

(assert (=> d!560293 (=> (not res!823959) (not e!1171148))))

(declare-fun validRegex!2027 (Regex!4969) Bool)

(assert (=> d!560293 (= res!823959 (validRegex!2027 lt!711439))))

(assert (=> d!560293 (= lt!711439 e!1171146)))

(declare-fun c!298852 () Bool)

(assert (=> d!560293 (= c!298852 e!1171147)))

(declare-fun res!823958 () Bool)

(assert (=> d!560293 (=> (not res!823958) (not e!1171147))))

(assert (=> d!560293 (= res!823958 ((_ is Cons!20146) (map!4180 rules!4610 lambda!71982)))))

(declare-fun lambda!72005 () Int)

(declare-fun forall!4337 (List!20216 Int) Bool)

(assert (=> d!560293 (forall!4337 (map!4180 rules!4610 lambda!71982) lambda!72005)))

(assert (=> d!560293 (= (generalisedUnion!484 (map!4180 rules!4610 lambda!71982)) lt!711439)))

(declare-fun b!1832366 () Bool)

(declare-fun head!4279 (List!20216) Regex!4969)

(assert (=> b!1832366 (= e!1171145 (= lt!711439 (head!4279 (map!4180 rules!4610 lambda!71982))))))

(declare-fun b!1832367 () Bool)

(declare-fun isEmptyLang!127 (Regex!4969) Bool)

(assert (=> b!1832367 (= e!1171149 (isEmptyLang!127 lt!711439))))

(declare-fun b!1832368 () Bool)

(assert (=> b!1832368 (= e!1171150 EmptyLang!4969)))

(assert (= (and d!560293 res!823958) b!1832362))

(assert (= (and d!560293 c!298852) b!1832364))

(assert (= (and d!560293 (not c!298852)) b!1832359))

(assert (= (and b!1832359 c!298855) b!1832363))

(assert (= (and b!1832359 (not c!298855)) b!1832368))

(assert (= (and d!560293 res!823959) b!1832360))

(assert (= (and b!1832360 c!298853) b!1832367))

(assert (= (and b!1832360 (not c!298853)) b!1832361))

(assert (= (and b!1832361 c!298854) b!1832366))

(assert (= (and b!1832361 (not c!298854)) b!1832365))

(assert (=> b!1832366 m!2259783))

(declare-fun m!2260199 () Bool)

(assert (=> b!1832366 m!2260199))

(declare-fun m!2260201 () Bool)

(assert (=> b!1832367 m!2260201))

(assert (=> b!1832361 m!2259783))

(declare-fun m!2260203 () Bool)

(assert (=> b!1832361 m!2260203))

(assert (=> b!1832361 m!2260203))

(declare-fun m!2260205 () Bool)

(assert (=> b!1832361 m!2260205))

(declare-fun m!2260207 () Bool)

(assert (=> b!1832363 m!2260207))

(declare-fun m!2260209 () Bool)

(assert (=> d!560293 m!2260209))

(assert (=> d!560293 m!2259783))

(declare-fun m!2260211 () Bool)

(assert (=> d!560293 m!2260211))

(declare-fun m!2260213 () Bool)

(assert (=> b!1832365 m!2260213))

(assert (=> b!1832360 m!2259783))

(declare-fun m!2260215 () Bool)

(assert (=> b!1832360 m!2260215))

(declare-fun m!2260217 () Bool)

(assert (=> b!1832362 m!2260217))

(assert (=> b!1831961 d!560293))

(declare-fun d!560295 () Bool)

(declare-fun lt!711442 () List!20216)

(declare-fun size!15977 (List!20216) Int)

(declare-fun size!15978 (List!20215) Int)

(assert (=> d!560295 (= (size!15977 lt!711442) (size!15978 rules!4610))))

(declare-fun e!1171153 () List!20216)

(assert (=> d!560295 (= lt!711442 e!1171153)))

(declare-fun c!298858 () Bool)

(assert (=> d!560295 (= c!298858 ((_ is Nil!20145) rules!4610))))

(assert (=> d!560295 (= (map!4180 rules!4610 lambda!71982) lt!711442)))

(declare-fun b!1832373 () Bool)

(assert (=> b!1832373 (= e!1171153 Nil!20146)))

(declare-fun b!1832374 () Bool)

(declare-fun $colon$colon!460 (List!20216 Regex!4969) List!20216)

(declare-fun dynLambda!10023 (Int Rule!7082) Regex!4969)

(assert (=> b!1832374 (= e!1171153 ($colon$colon!460 (map!4180 (t!170872 rules!4610) lambda!71982) (dynLambda!10023 lambda!71982 (h!25546 rules!4610))))))

(assert (= (and d!560295 c!298858) b!1832373))

(assert (= (and d!560295 (not c!298858)) b!1832374))

(declare-fun b_lambda!60653 () Bool)

(assert (=> (not b_lambda!60653) (not b!1832374)))

(declare-fun m!2260219 () Bool)

(assert (=> d!560295 m!2260219))

(declare-fun m!2260221 () Bool)

(assert (=> d!560295 m!2260221))

(declare-fun m!2260223 () Bool)

(assert (=> b!1832374 m!2260223))

(declare-fun m!2260225 () Bool)

(assert (=> b!1832374 m!2260225))

(assert (=> b!1832374 m!2260223))

(assert (=> b!1832374 m!2260225))

(declare-fun m!2260227 () Bool)

(assert (=> b!1832374 m!2260227))

(assert (=> b!1831961 d!560295))

(declare-fun b!1832393 () Bool)

(declare-fun res!823978 () Bool)

(declare-fun e!1171160 () Bool)

(assert (=> b!1832393 (=> (not res!823978) (not e!1171160))))

(declare-fun lt!711453 () Option!4221)

(assert (=> b!1832393 (= res!823978 (= (list!8185 (charsOf!2284 (_1!11203 (get!6219 lt!711453)))) (originalCharacters!4449 (_1!11203 (get!6219 lt!711453)))))))

(declare-fun b!1832394 () Bool)

(declare-fun res!823977 () Bool)

(assert (=> b!1832394 (=> (not res!823977) (not e!1171160))))

(assert (=> b!1832394 (= res!823977 (< (size!15972 (_2!11203 (get!6219 lt!711453))) (size!15972 input!3681)))))

(declare-fun b!1832395 () Bool)

(declare-fun res!823974 () Bool)

(assert (=> b!1832395 (=> (not res!823974) (not e!1171160))))

(assert (=> b!1832395 (= res!823974 (matchR!2432 (regex!3641 (rule!5813 (_1!11203 (get!6219 lt!711453)))) (list!8185 (charsOf!2284 (_1!11203 (get!6219 lt!711453))))))))

(declare-fun b!1832396 () Bool)

(declare-fun res!823980 () Bool)

(assert (=> b!1832396 (=> (not res!823980) (not e!1171160))))

(assert (=> b!1832396 (= res!823980 (= (value!113435 (_1!11203 (get!6219 lt!711453))) (apply!5429 (transformation!3641 (rule!5813 (_1!11203 (get!6219 lt!711453)))) (seqFromList!2598 (originalCharacters!4449 (_1!11203 (get!6219 lt!711453)))))))))

(declare-fun call!114780 () Option!4221)

(declare-fun bm!114775 () Bool)

(assert (=> bm!114775 (= call!114780 (maxPrefixOneRule!1179 thiss!28318 (h!25546 rules!4610) input!3681))))

(declare-fun b!1832397 () Bool)

(assert (=> b!1832397 (= e!1171160 (contains!3717 rules!4610 (rule!5813 (_1!11203 (get!6219 lt!711453)))))))

(declare-fun b!1832398 () Bool)

(declare-fun e!1171161 () Option!4221)

(assert (=> b!1832398 (= e!1171161 call!114780)))

(declare-fun d!560297 () Bool)

(declare-fun e!1171162 () Bool)

(assert (=> d!560297 e!1171162))

(declare-fun res!823979 () Bool)

(assert (=> d!560297 (=> res!823979 e!1171162)))

(assert (=> d!560297 (= res!823979 (isEmpty!12718 lt!711453))))

(assert (=> d!560297 (= lt!711453 e!1171161)))

(declare-fun c!298861 () Bool)

(assert (=> d!560297 (= c!298861 (and ((_ is Cons!20145) rules!4610) ((_ is Nil!20145) (t!170872 rules!4610))))))

(declare-fun lt!711456 () Unit!34821)

(declare-fun lt!711455 () Unit!34821)

(assert (=> d!560297 (= lt!711456 lt!711455)))

(declare-fun isPrefix!1837 (List!20214 List!20214) Bool)

(assert (=> d!560297 (isPrefix!1837 input!3681 input!3681)))

(declare-fun lemmaIsPrefixRefl!1214 (List!20214 List!20214) Unit!34821)

(assert (=> d!560297 (= lt!711455 (lemmaIsPrefixRefl!1214 input!3681 input!3681))))

(assert (=> d!560297 (rulesValidInductive!1256 thiss!28318 rules!4610)))

(assert (=> d!560297 (= (maxPrefix!1818 thiss!28318 rules!4610 input!3681) lt!711453)))

(declare-fun b!1832399 () Bool)

(declare-fun lt!711457 () Option!4221)

(declare-fun lt!711454 () Option!4221)

(assert (=> b!1832399 (= e!1171161 (ite (and ((_ is None!4220) lt!711457) ((_ is None!4220) lt!711454)) None!4220 (ite ((_ is None!4220) lt!711454) lt!711457 (ite ((_ is None!4220) lt!711457) lt!711454 (ite (>= (size!15971 (_1!11203 (v!25793 lt!711457))) (size!15971 (_1!11203 (v!25793 lt!711454)))) lt!711457 lt!711454)))))))

(assert (=> b!1832399 (= lt!711457 call!114780)))

(assert (=> b!1832399 (= lt!711454 (maxPrefix!1818 thiss!28318 (t!170872 rules!4610) input!3681))))

(declare-fun b!1832400 () Bool)

(declare-fun res!823975 () Bool)

(assert (=> b!1832400 (=> (not res!823975) (not e!1171160))))

(assert (=> b!1832400 (= res!823975 (= (++!5465 (list!8185 (charsOf!2284 (_1!11203 (get!6219 lt!711453)))) (_2!11203 (get!6219 lt!711453))) input!3681))))

(declare-fun b!1832401 () Bool)

(assert (=> b!1832401 (= e!1171162 e!1171160)))

(declare-fun res!823976 () Bool)

(assert (=> b!1832401 (=> (not res!823976) (not e!1171160))))

(declare-fun isDefined!3524 (Option!4221) Bool)

(assert (=> b!1832401 (= res!823976 (isDefined!3524 lt!711453))))

(assert (= (and d!560297 c!298861) b!1832398))

(assert (= (and d!560297 (not c!298861)) b!1832399))

(assert (= (or b!1832398 b!1832399) bm!114775))

(assert (= (and d!560297 (not res!823979)) b!1832401))

(assert (= (and b!1832401 res!823976) b!1832393))

(assert (= (and b!1832393 res!823978) b!1832394))

(assert (= (and b!1832394 res!823977) b!1832400))

(assert (= (and b!1832400 res!823975) b!1832396))

(assert (= (and b!1832396 res!823980) b!1832395))

(assert (= (and b!1832395 res!823974) b!1832397))

(declare-fun m!2260229 () Bool)

(assert (=> b!1832401 m!2260229))

(declare-fun m!2260231 () Bool)

(assert (=> b!1832395 m!2260231))

(declare-fun m!2260233 () Bool)

(assert (=> b!1832395 m!2260233))

(assert (=> b!1832395 m!2260233))

(declare-fun m!2260235 () Bool)

(assert (=> b!1832395 m!2260235))

(assert (=> b!1832395 m!2260235))

(declare-fun m!2260237 () Bool)

(assert (=> b!1832395 m!2260237))

(assert (=> b!1832393 m!2260231))

(assert (=> b!1832393 m!2260233))

(assert (=> b!1832393 m!2260233))

(assert (=> b!1832393 m!2260235))

(assert (=> b!1832396 m!2260231))

(declare-fun m!2260239 () Bool)

(assert (=> b!1832396 m!2260239))

(assert (=> b!1832396 m!2260239))

(declare-fun m!2260241 () Bool)

(assert (=> b!1832396 m!2260241))

(declare-fun m!2260243 () Bool)

(assert (=> b!1832399 m!2260243))

(declare-fun m!2260245 () Bool)

(assert (=> d!560297 m!2260245))

(declare-fun m!2260247 () Bool)

(assert (=> d!560297 m!2260247))

(declare-fun m!2260249 () Bool)

(assert (=> d!560297 m!2260249))

(declare-fun m!2260251 () Bool)

(assert (=> d!560297 m!2260251))

(assert (=> b!1832394 m!2260231))

(declare-fun m!2260253 () Bool)

(assert (=> b!1832394 m!2260253))

(assert (=> b!1832394 m!2260093))

(assert (=> b!1832397 m!2260231))

(declare-fun m!2260255 () Bool)

(assert (=> b!1832397 m!2260255))

(assert (=> b!1832400 m!2260231))

(assert (=> b!1832400 m!2260233))

(assert (=> b!1832400 m!2260233))

(assert (=> b!1832400 m!2260235))

(assert (=> b!1832400 m!2260235))

(declare-fun m!2260257 () Bool)

(assert (=> b!1832400 m!2260257))

(declare-fun m!2260259 () Bool)

(assert (=> bm!114775 m!2260259))

(assert (=> b!1831962 d!560297))

(declare-fun d!560299 () Bool)

(assert (=> d!560299 (= (inv!26206 (tag!4055 (rule!5813 token!567))) (= (mod (str.len (value!113434 (tag!4055 (rule!5813 token!567)))) 2) 0))))

(assert (=> b!1831942 d!560299))

(declare-fun d!560301 () Bool)

(declare-fun res!823981 () Bool)

(declare-fun e!1171163 () Bool)

(assert (=> d!560301 (=> (not res!823981) (not e!1171163))))

(assert (=> d!560301 (= res!823981 (semiInverseModEq!1462 (toChars!5047 (transformation!3641 (rule!5813 token!567))) (toValue!5188 (transformation!3641 (rule!5813 token!567)))))))

(assert (=> d!560301 (= (inv!26209 (transformation!3641 (rule!5813 token!567))) e!1171163)))

(declare-fun b!1832402 () Bool)

(assert (=> b!1832402 (= e!1171163 (equivClasses!1403 (toChars!5047 (transformation!3641 (rule!5813 token!567))) (toValue!5188 (transformation!3641 (rule!5813 token!567)))))))

(assert (= (and d!560301 res!823981) b!1832402))

(declare-fun m!2260261 () Bool)

(assert (=> d!560301 m!2260261))

(declare-fun m!2260263 () Bool)

(assert (=> b!1832402 m!2260263))

(assert (=> b!1831942 d!560301))

(assert (=> b!1831963 d!560297))

(declare-fun d!560303 () Bool)

(assert (=> d!560303 (= (inv!26206 (tag!4055 rule!580)) (= (mod (str.len (value!113434 (tag!4055 rule!580))) 2) 0))))

(assert (=> b!1831964 d!560303))

(declare-fun d!560305 () Bool)

(declare-fun res!823982 () Bool)

(declare-fun e!1171164 () Bool)

(assert (=> d!560305 (=> (not res!823982) (not e!1171164))))

(assert (=> d!560305 (= res!823982 (semiInverseModEq!1462 (toChars!5047 (transformation!3641 rule!580)) (toValue!5188 (transformation!3641 rule!580))))))

(assert (=> d!560305 (= (inv!26209 (transformation!3641 rule!580)) e!1171164)))

(declare-fun b!1832403 () Bool)

(assert (=> b!1832403 (= e!1171164 (equivClasses!1403 (toChars!5047 (transformation!3641 rule!580)) (toValue!5188 (transformation!3641 rule!580))))))

(assert (= (and d!560305 res!823982) b!1832403))

(declare-fun m!2260265 () Bool)

(assert (=> d!560305 m!2260265))

(declare-fun m!2260267 () Bool)

(assert (=> b!1832403 m!2260267))

(assert (=> b!1831964 d!560305))

(declare-fun d!560307 () Bool)

(declare-fun res!823987 () Bool)

(declare-fun e!1171167 () Bool)

(assert (=> d!560307 (=> (not res!823987) (not e!1171167))))

(assert (=> d!560307 (= res!823987 (not (isEmpty!12717 (originalCharacters!4449 token!567))))))

(assert (=> d!560307 (= (inv!26210 token!567) e!1171167)))

(declare-fun b!1832408 () Bool)

(declare-fun res!823988 () Bool)

(assert (=> b!1832408 (=> (not res!823988) (not e!1171167))))

(assert (=> b!1832408 (= res!823988 (= (originalCharacters!4449 token!567) (list!8185 (dynLambda!10022 (toChars!5047 (transformation!3641 (rule!5813 token!567))) (value!113435 token!567)))))))

(declare-fun b!1832409 () Bool)

(assert (=> b!1832409 (= e!1171167 (= (size!15971 token!567) (size!15972 (originalCharacters!4449 token!567))))))

(assert (= (and d!560307 res!823987) b!1832408))

(assert (= (and b!1832408 res!823988) b!1832409))

(declare-fun b_lambda!60655 () Bool)

(assert (=> (not b_lambda!60655) (not b!1832408)))

(assert (=> b!1832408 t!170907))

(declare-fun b_and!142761 () Bool)

(assert (= b_and!142753 (and (=> t!170907 result!134764) b_and!142761)))

(assert (=> b!1832408 t!170909))

(declare-fun b_and!142763 () Bool)

(assert (= b_and!142755 (and (=> t!170909 result!134768) b_and!142763)))

(assert (=> b!1832408 t!170911))

(declare-fun b_and!142765 () Bool)

(assert (= b_and!142757 (and (=> t!170911 result!134770) b_and!142765)))

(assert (=> b!1832408 t!170913))

(declare-fun b_and!142767 () Bool)

(assert (= b_and!142759 (and (=> t!170913 result!134772) b_and!142767)))

(declare-fun m!2260269 () Bool)

(assert (=> d!560307 m!2260269))

(assert (=> b!1832408 m!2260173))

(assert (=> b!1832408 m!2260173))

(declare-fun m!2260271 () Bool)

(assert (=> b!1832408 m!2260271))

(declare-fun m!2260273 () Bool)

(assert (=> b!1832409 m!2260273))

(assert (=> start!181846 d!560307))

(declare-fun bs!408011 () Bool)

(declare-fun d!560309 () Bool)

(assert (= bs!408011 (and d!560309 d!560293)))

(declare-fun lambda!72006 () Int)

(assert (=> bs!408011 (= lambda!72006 lambda!72005)))

(declare-fun b!1832410 () Bool)

(declare-fun e!1171169 () Regex!4969)

(declare-fun e!1171173 () Regex!4969)

(assert (=> b!1832410 (= e!1171169 e!1171173)))

(declare-fun c!298865 () Bool)

(assert (=> b!1832410 (= c!298865 ((_ is Cons!20146) lt!711317))))

(declare-fun b!1832411 () Bool)

(declare-fun e!1171171 () Bool)

(declare-fun e!1171172 () Bool)

(assert (=> b!1832411 (= e!1171171 e!1171172)))

(declare-fun c!298863 () Bool)

(assert (=> b!1832411 (= c!298863 (isEmpty!12719 lt!711317))))

(declare-fun b!1832412 () Bool)

(declare-fun e!1171168 () Bool)

(assert (=> b!1832412 (= e!1171172 e!1171168)))

(declare-fun c!298864 () Bool)

(assert (=> b!1832412 (= c!298864 (isEmpty!12719 (tail!2738 lt!711317)))))

(declare-fun b!1832413 () Bool)

(declare-fun e!1171170 () Bool)

(assert (=> b!1832413 (= e!1171170 (isEmpty!12719 (t!170873 lt!711317)))))

(declare-fun b!1832414 () Bool)

(assert (=> b!1832414 (= e!1171173 (Union!4969 (h!25547 lt!711317) (generalisedUnion!484 (t!170873 lt!711317))))))

(declare-fun b!1832415 () Bool)

(assert (=> b!1832415 (= e!1171169 (h!25547 lt!711317))))

(declare-fun b!1832416 () Bool)

(declare-fun lt!711458 () Regex!4969)

(assert (=> b!1832416 (= e!1171168 (isUnion!127 lt!711458))))

(assert (=> d!560309 e!1171171))

(declare-fun res!823990 () Bool)

(assert (=> d!560309 (=> (not res!823990) (not e!1171171))))

(assert (=> d!560309 (= res!823990 (validRegex!2027 lt!711458))))

(assert (=> d!560309 (= lt!711458 e!1171169)))

(declare-fun c!298862 () Bool)

(assert (=> d!560309 (= c!298862 e!1171170)))

(declare-fun res!823989 () Bool)

(assert (=> d!560309 (=> (not res!823989) (not e!1171170))))

(assert (=> d!560309 (= res!823989 ((_ is Cons!20146) lt!711317))))

(assert (=> d!560309 (forall!4337 lt!711317 lambda!72006)))

(assert (=> d!560309 (= (generalisedUnion!484 lt!711317) lt!711458)))

(declare-fun b!1832417 () Bool)

(assert (=> b!1832417 (= e!1171168 (= lt!711458 (head!4279 lt!711317)))))

(declare-fun b!1832418 () Bool)

(assert (=> b!1832418 (= e!1171172 (isEmptyLang!127 lt!711458))))

(declare-fun b!1832419 () Bool)

(assert (=> b!1832419 (= e!1171173 EmptyLang!4969)))

(assert (= (and d!560309 res!823989) b!1832413))

(assert (= (and d!560309 c!298862) b!1832415))

(assert (= (and d!560309 (not c!298862)) b!1832410))

(assert (= (and b!1832410 c!298865) b!1832414))

(assert (= (and b!1832410 (not c!298865)) b!1832419))

(assert (= (and d!560309 res!823990) b!1832411))

(assert (= (and b!1832411 c!298863) b!1832418))

(assert (= (and b!1832411 (not c!298863)) b!1832412))

(assert (= (and b!1832412 c!298864) b!1832417))

(assert (= (and b!1832412 (not c!298864)) b!1832416))

(declare-fun m!2260275 () Bool)

(assert (=> b!1832417 m!2260275))

(declare-fun m!2260277 () Bool)

(assert (=> b!1832418 m!2260277))

(declare-fun m!2260279 () Bool)

(assert (=> b!1832412 m!2260279))

(assert (=> b!1832412 m!2260279))

(declare-fun m!2260281 () Bool)

(assert (=> b!1832412 m!2260281))

(declare-fun m!2260283 () Bool)

(assert (=> b!1832414 m!2260283))

(declare-fun m!2260285 () Bool)

(assert (=> d!560309 m!2260285))

(declare-fun m!2260287 () Bool)

(assert (=> d!560309 m!2260287))

(declare-fun m!2260289 () Bool)

(assert (=> b!1832416 m!2260289))

(declare-fun m!2260291 () Bool)

(assert (=> b!1832411 m!2260291))

(declare-fun m!2260293 () Bool)

(assert (=> b!1832413 m!2260293))

(assert (=> b!1831943 d!560309))

(declare-fun bs!408012 () Bool)

(declare-fun d!560311 () Bool)

(assert (= bs!408012 (and d!560311 b!1831943)))

(declare-fun lambda!72009 () Int)

(assert (=> bs!408012 (= lambda!72009 lambda!71982)))

(declare-fun lt!711461 () Unit!34821)

(declare-fun lemma!536 (List!20215 LexerInterface!3270 List!20215) Unit!34821)

(assert (=> d!560311 (= lt!711461 (lemma!536 rules!4610 thiss!28318 rules!4610))))

(assert (=> d!560311 (= (rulesRegex!961 thiss!28318 rules!4610) (generalisedUnion!484 (map!4180 rules!4610 lambda!72009)))))

(declare-fun bs!408013 () Bool)

(assert (= bs!408013 d!560311))

(declare-fun m!2260295 () Bool)

(assert (=> bs!408013 m!2260295))

(declare-fun m!2260297 () Bool)

(assert (=> bs!408013 m!2260297))

(assert (=> bs!408013 m!2260297))

(declare-fun m!2260299 () Bool)

(assert (=> bs!408013 m!2260299))

(assert (=> b!1831943 d!560311))

(assert (=> b!1831943 d!560295))

(declare-fun bs!408014 () Bool)

(declare-fun d!560313 () Bool)

(assert (= bs!408014 (and d!560313 b!1831943)))

(declare-fun lambda!72014 () Int)

(assert (=> bs!408014 (= lambda!72014 lambda!71982)))

(declare-fun bs!408015 () Bool)

(assert (= bs!408015 (and d!560313 d!560311)))

(assert (=> bs!408015 (= lambda!72014 lambda!72009)))

(declare-fun bs!408016 () Bool)

(assert (= bs!408016 (and d!560313 d!560293)))

(declare-fun lambda!72015 () Int)

(assert (=> bs!408016 (= lambda!72015 lambda!72005)))

(declare-fun bs!408017 () Bool)

(assert (= bs!408017 (and d!560313 d!560309)))

(assert (=> bs!408017 (= lambda!72015 lambda!72006)))

(assert (=> d!560313 (forall!4337 (map!4180 rules!4610 lambda!72014) lambda!72015)))

(declare-fun lt!711472 () Unit!34821)

(declare-fun e!1171176 () Unit!34821)

(assert (=> d!560313 (= lt!711472 e!1171176)))

(declare-fun c!298868 () Bool)

(assert (=> d!560313 (= c!298868 ((_ is Nil!20145) rules!4610))))

(assert (=> d!560313 (rulesValid!1388 thiss!28318 rules!4610)))

(declare-fun lt!711475 () Unit!34821)

(declare-fun lt!711476 () Unit!34821)

(assert (=> d!560313 (= lt!711475 lt!711476)))

(declare-fun lt!711474 () List!20214)

(assert (=> d!560313 (= (maxPrefixOneRule!1179 thiss!28318 rule!580 input!3681) (Some!4220 (tuple2!19603 (Token!6837 (apply!5429 (transformation!3641 rule!580) (seqFromList!2598 lt!711474)) rule!580 (size!15972 lt!711474) lt!711474) suffix!1698)))))

(assert (=> d!560313 (= lt!711476 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!549 thiss!28318 rules!4610 lt!711474 input!3681 suffix!1698 rule!580))))

(assert (=> d!560313 (= lt!711474 (list!8185 (charsOf!2284 token!567)))))

(assert (=> d!560313 (= (lemma!534 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 rules!4610) lt!711472)))

(declare-fun b!1832424 () Bool)

(declare-fun Unit!34825 () Unit!34821)

(assert (=> b!1832424 (= e!1171176 Unit!34825)))

(declare-fun b!1832425 () Bool)

(declare-fun Unit!34826 () Unit!34821)

(assert (=> b!1832425 (= e!1171176 Unit!34826)))

(declare-fun lt!711473 () Unit!34821)

(assert (=> b!1832425 (= lt!711473 (lemma!534 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!170872 rules!4610)))))

(assert (= (and d!560313 c!298868) b!1832424))

(assert (= (and d!560313 (not c!298868)) b!1832425))

(declare-fun m!2260301 () Bool)

(assert (=> d!560313 m!2260301))

(assert (=> d!560313 m!2259795))

(assert (=> d!560313 m!2259751))

(assert (=> d!560313 m!2259753))

(declare-fun m!2260303 () Bool)

(assert (=> d!560313 m!2260303))

(assert (=> d!560313 m!2259751))

(assert (=> d!560313 m!2260301))

(declare-fun m!2260305 () Bool)

(assert (=> d!560313 m!2260305))

(declare-fun m!2260307 () Bool)

(assert (=> d!560313 m!2260307))

(assert (=> d!560313 m!2260175))

(declare-fun m!2260309 () Bool)

(assert (=> d!560313 m!2260309))

(declare-fun m!2260311 () Bool)

(assert (=> d!560313 m!2260311))

(assert (=> d!560313 m!2260309))

(declare-fun m!2260313 () Bool)

(assert (=> b!1832425 m!2260313))

(assert (=> b!1831943 d!560313))

(declare-fun b!1832426 () Bool)

(declare-fun e!1171178 () List!20214)

(assert (=> b!1832426 (= e!1171178 suffix!1698)))

(declare-fun b!1832428 () Bool)

(declare-fun res!823991 () Bool)

(declare-fun e!1171177 () Bool)

(assert (=> b!1832428 (=> (not res!823991) (not e!1171177))))

(declare-fun lt!711477 () List!20214)

(assert (=> b!1832428 (= res!823991 (= (size!15972 lt!711477) (+ (size!15972 lt!711310) (size!15972 suffix!1698))))))

(declare-fun b!1832429 () Bool)

(assert (=> b!1832429 (= e!1171177 (or (not (= suffix!1698 Nil!20144)) (= lt!711477 lt!711310)))))

(declare-fun b!1832427 () Bool)

(assert (=> b!1832427 (= e!1171178 (Cons!20144 (h!25545 lt!711310) (++!5465 (t!170871 lt!711310) suffix!1698)))))

(declare-fun d!560315 () Bool)

(assert (=> d!560315 e!1171177))

(declare-fun res!823992 () Bool)

(assert (=> d!560315 (=> (not res!823992) (not e!1171177))))

(assert (=> d!560315 (= res!823992 (= (content!2984 lt!711477) ((_ map or) (content!2984 lt!711310) (content!2984 suffix!1698))))))

(assert (=> d!560315 (= lt!711477 e!1171178)))

(declare-fun c!298869 () Bool)

(assert (=> d!560315 (= c!298869 ((_ is Nil!20144) lt!711310))))

(assert (=> d!560315 (= (++!5465 lt!711310 suffix!1698) lt!711477)))

(assert (= (and d!560315 c!298869) b!1832426))

(assert (= (and d!560315 (not c!298869)) b!1832427))

(assert (= (and d!560315 res!823992) b!1832428))

(assert (= (and b!1832428 res!823991) b!1832429))

(declare-fun m!2260315 () Bool)

(assert (=> b!1832428 m!2260315))

(declare-fun m!2260317 () Bool)

(assert (=> b!1832428 m!2260317))

(assert (=> b!1832428 m!2259975))

(declare-fun m!2260319 () Bool)

(assert (=> b!1832427 m!2260319))

(declare-fun m!2260321 () Bool)

(assert (=> d!560315 m!2260321))

(declare-fun m!2260323 () Bool)

(assert (=> d!560315 m!2260323))

(assert (=> d!560315 m!2259983))

(assert (=> b!1831955 d!560315))

(assert (=> b!1831955 d!560235))

(assert (=> b!1831955 d!560277))

(declare-fun b!1832458 () Bool)

(declare-fun e!1171193 () Bool)

(declare-fun e!1171197 () Bool)

(assert (=> b!1832458 (= e!1171193 e!1171197)))

(declare-fun res!824012 () Bool)

(assert (=> b!1832458 (=> res!824012 e!1171197)))

(declare-fun call!114783 () Bool)

(assert (=> b!1832458 (= res!824012 call!114783)))

(declare-fun b!1832459 () Bool)

(declare-fun e!1171199 () Bool)

(declare-fun nullable!1545 (Regex!4969) Bool)

(assert (=> b!1832459 (= e!1171199 (nullable!1545 (regex!3641 rule!580)))))

(declare-fun d!560317 () Bool)

(declare-fun e!1171194 () Bool)

(assert (=> d!560317 e!1171194))

(declare-fun c!298877 () Bool)

(assert (=> d!560317 (= c!298877 ((_ is EmptyExpr!4969) (regex!3641 rule!580)))))

(declare-fun lt!711480 () Bool)

(assert (=> d!560317 (= lt!711480 e!1171199)))

(declare-fun c!298876 () Bool)

(assert (=> d!560317 (= c!298876 (isEmpty!12717 lt!711312))))

(assert (=> d!560317 (validRegex!2027 (regex!3641 rule!580))))

(assert (=> d!560317 (= (matchR!2432 (regex!3641 rule!580) lt!711312) lt!711480)))

(declare-fun b!1832460 () Bool)

(declare-fun res!824013 () Bool)

(declare-fun e!1171198 () Bool)

(assert (=> b!1832460 (=> res!824013 e!1171198)))

(declare-fun e!1171196 () Bool)

(assert (=> b!1832460 (= res!824013 e!1171196)))

(declare-fun res!824009 () Bool)

(assert (=> b!1832460 (=> (not res!824009) (not e!1171196))))

(assert (=> b!1832460 (= res!824009 lt!711480)))

(declare-fun b!1832461 () Bool)

(declare-fun res!824016 () Bool)

(assert (=> b!1832461 (=> res!824016 e!1171198)))

(assert (=> b!1832461 (= res!824016 (not ((_ is ElementMatch!4969) (regex!3641 rule!580))))))

(declare-fun e!1171195 () Bool)

(assert (=> b!1832461 (= e!1171195 e!1171198)))

(declare-fun b!1832462 () Bool)

(declare-fun res!824014 () Bool)

(assert (=> b!1832462 (=> res!824014 e!1171197)))

(declare-fun tail!2739 (List!20214) List!20214)

(assert (=> b!1832462 (= res!824014 (not (isEmpty!12717 (tail!2739 lt!711312))))))

(declare-fun b!1832463 () Bool)

(declare-fun res!824010 () Bool)

(assert (=> b!1832463 (=> (not res!824010) (not e!1171196))))

(assert (=> b!1832463 (= res!824010 (isEmpty!12717 (tail!2739 lt!711312)))))

(declare-fun b!1832464 () Bool)

(assert (=> b!1832464 (= e!1171194 (= lt!711480 call!114783))))

(declare-fun b!1832465 () Bool)

(declare-fun head!4280 (List!20214) C!10112)

(assert (=> b!1832465 (= e!1171197 (not (= (head!4280 lt!711312) (c!298774 (regex!3641 rule!580)))))))

(declare-fun b!1832466 () Bool)

(declare-fun derivativeStep!1309 (Regex!4969 C!10112) Regex!4969)

(assert (=> b!1832466 (= e!1171199 (matchR!2432 (derivativeStep!1309 (regex!3641 rule!580) (head!4280 lt!711312)) (tail!2739 lt!711312)))))

(declare-fun b!1832467 () Bool)

(assert (=> b!1832467 (= e!1171196 (= (head!4280 lt!711312) (c!298774 (regex!3641 rule!580))))))

(declare-fun b!1832468 () Bool)

(assert (=> b!1832468 (= e!1171198 e!1171193)))

(declare-fun res!824015 () Bool)

(assert (=> b!1832468 (=> (not res!824015) (not e!1171193))))

(assert (=> b!1832468 (= res!824015 (not lt!711480))))

(declare-fun bm!114778 () Bool)

(assert (=> bm!114778 (= call!114783 (isEmpty!12717 lt!711312))))

(declare-fun b!1832469 () Bool)

(declare-fun res!824011 () Bool)

(assert (=> b!1832469 (=> (not res!824011) (not e!1171196))))

(assert (=> b!1832469 (= res!824011 (not call!114783))))

(declare-fun b!1832470 () Bool)

(assert (=> b!1832470 (= e!1171194 e!1171195)))

(declare-fun c!298878 () Bool)

(assert (=> b!1832470 (= c!298878 ((_ is EmptyLang!4969) (regex!3641 rule!580)))))

(declare-fun b!1832471 () Bool)

(assert (=> b!1832471 (= e!1171195 (not lt!711480))))

(assert (= (and d!560317 c!298876) b!1832459))

(assert (= (and d!560317 (not c!298876)) b!1832466))

(assert (= (and d!560317 c!298877) b!1832464))

(assert (= (and d!560317 (not c!298877)) b!1832470))

(assert (= (and b!1832470 c!298878) b!1832471))

(assert (= (and b!1832470 (not c!298878)) b!1832461))

(assert (= (and b!1832461 (not res!824016)) b!1832460))

(assert (= (and b!1832460 res!824009) b!1832469))

(assert (= (and b!1832469 res!824011) b!1832463))

(assert (= (and b!1832463 res!824010) b!1832467))

(assert (= (and b!1832460 (not res!824013)) b!1832468))

(assert (= (and b!1832468 res!824015) b!1832458))

(assert (= (and b!1832458 (not res!824012)) b!1832462))

(assert (= (and b!1832462 (not res!824014)) b!1832465))

(assert (= (or b!1832464 b!1832458 b!1832469) bm!114778))

(declare-fun m!2260325 () Bool)

(assert (=> b!1832466 m!2260325))

(assert (=> b!1832466 m!2260325))

(declare-fun m!2260327 () Bool)

(assert (=> b!1832466 m!2260327))

(declare-fun m!2260329 () Bool)

(assert (=> b!1832466 m!2260329))

(assert (=> b!1832466 m!2260327))

(assert (=> b!1832466 m!2260329))

(declare-fun m!2260331 () Bool)

(assert (=> b!1832466 m!2260331))

(assert (=> b!1832467 m!2260325))

(assert (=> b!1832465 m!2260325))

(declare-fun m!2260333 () Bool)

(assert (=> bm!114778 m!2260333))

(declare-fun m!2260335 () Bool)

(assert (=> b!1832459 m!2260335))

(assert (=> d!560317 m!2260333))

(declare-fun m!2260337 () Bool)

(assert (=> d!560317 m!2260337))

(assert (=> b!1832463 m!2260329))

(assert (=> b!1832463 m!2260329))

(declare-fun m!2260339 () Bool)

(assert (=> b!1832463 m!2260339))

(assert (=> b!1832462 m!2260329))

(assert (=> b!1832462 m!2260329))

(assert (=> b!1832462 m!2260339))

(assert (=> b!1831956 d!560317))

(declare-fun b!1832472 () Bool)

(declare-fun e!1171200 () Bool)

(declare-fun e!1171204 () Bool)

(assert (=> b!1832472 (= e!1171200 e!1171204)))

(declare-fun res!824020 () Bool)

(assert (=> b!1832472 (=> res!824020 e!1171204)))

(declare-fun call!114784 () Bool)

(assert (=> b!1832472 (= res!824020 call!114784)))

(declare-fun b!1832473 () Bool)

(declare-fun e!1171206 () Bool)

(assert (=> b!1832473 (= e!1171206 (nullable!1545 (regex!3641 rule!580)))))

(declare-fun d!560319 () Bool)

(declare-fun e!1171201 () Bool)

(assert (=> d!560319 e!1171201))

(declare-fun c!298880 () Bool)

(assert (=> d!560319 (= c!298880 ((_ is EmptyExpr!4969) (regex!3641 rule!580)))))

(declare-fun lt!711481 () Bool)

(assert (=> d!560319 (= lt!711481 e!1171206)))

(declare-fun c!298879 () Bool)

(assert (=> d!560319 (= c!298879 (isEmpty!12717 lt!711310))))

(assert (=> d!560319 (validRegex!2027 (regex!3641 rule!580))))

(assert (=> d!560319 (= (matchR!2432 (regex!3641 rule!580) lt!711310) lt!711481)))

(declare-fun b!1832474 () Bool)

(declare-fun res!824021 () Bool)

(declare-fun e!1171205 () Bool)

(assert (=> b!1832474 (=> res!824021 e!1171205)))

(declare-fun e!1171203 () Bool)

(assert (=> b!1832474 (= res!824021 e!1171203)))

(declare-fun res!824017 () Bool)

(assert (=> b!1832474 (=> (not res!824017) (not e!1171203))))

(assert (=> b!1832474 (= res!824017 lt!711481)))

(declare-fun b!1832475 () Bool)

(declare-fun res!824024 () Bool)

(assert (=> b!1832475 (=> res!824024 e!1171205)))

(assert (=> b!1832475 (= res!824024 (not ((_ is ElementMatch!4969) (regex!3641 rule!580))))))

(declare-fun e!1171202 () Bool)

(assert (=> b!1832475 (= e!1171202 e!1171205)))

(declare-fun b!1832476 () Bool)

(declare-fun res!824022 () Bool)

(assert (=> b!1832476 (=> res!824022 e!1171204)))

(assert (=> b!1832476 (= res!824022 (not (isEmpty!12717 (tail!2739 lt!711310))))))

(declare-fun b!1832477 () Bool)

(declare-fun res!824018 () Bool)

(assert (=> b!1832477 (=> (not res!824018) (not e!1171203))))

(assert (=> b!1832477 (= res!824018 (isEmpty!12717 (tail!2739 lt!711310)))))

(declare-fun b!1832478 () Bool)

(assert (=> b!1832478 (= e!1171201 (= lt!711481 call!114784))))

(declare-fun b!1832479 () Bool)

(assert (=> b!1832479 (= e!1171204 (not (= (head!4280 lt!711310) (c!298774 (regex!3641 rule!580)))))))

(declare-fun b!1832480 () Bool)

(assert (=> b!1832480 (= e!1171206 (matchR!2432 (derivativeStep!1309 (regex!3641 rule!580) (head!4280 lt!711310)) (tail!2739 lt!711310)))))

(declare-fun b!1832481 () Bool)

(assert (=> b!1832481 (= e!1171203 (= (head!4280 lt!711310) (c!298774 (regex!3641 rule!580))))))

(declare-fun b!1832482 () Bool)

(assert (=> b!1832482 (= e!1171205 e!1171200)))

(declare-fun res!824023 () Bool)

(assert (=> b!1832482 (=> (not res!824023) (not e!1171200))))

(assert (=> b!1832482 (= res!824023 (not lt!711481))))

(declare-fun bm!114779 () Bool)

(assert (=> bm!114779 (= call!114784 (isEmpty!12717 lt!711310))))

(declare-fun b!1832483 () Bool)

(declare-fun res!824019 () Bool)

(assert (=> b!1832483 (=> (not res!824019) (not e!1171203))))

(assert (=> b!1832483 (= res!824019 (not call!114784))))

(declare-fun b!1832484 () Bool)

(assert (=> b!1832484 (= e!1171201 e!1171202)))

(declare-fun c!298881 () Bool)

(assert (=> b!1832484 (= c!298881 ((_ is EmptyLang!4969) (regex!3641 rule!580)))))

(declare-fun b!1832485 () Bool)

(assert (=> b!1832485 (= e!1171202 (not lt!711481))))

(assert (= (and d!560319 c!298879) b!1832473))

(assert (= (and d!560319 (not c!298879)) b!1832480))

(assert (= (and d!560319 c!298880) b!1832478))

(assert (= (and d!560319 (not c!298880)) b!1832484))

(assert (= (and b!1832484 c!298881) b!1832485))

(assert (= (and b!1832484 (not c!298881)) b!1832475))

(assert (= (and b!1832475 (not res!824024)) b!1832474))

(assert (= (and b!1832474 res!824017) b!1832483))

(assert (= (and b!1832483 res!824019) b!1832477))

(assert (= (and b!1832477 res!824018) b!1832481))

(assert (= (and b!1832474 (not res!824021)) b!1832482))

(assert (= (and b!1832482 res!824023) b!1832472))

(assert (= (and b!1832472 (not res!824020)) b!1832476))

(assert (= (and b!1832476 (not res!824022)) b!1832479))

(assert (= (or b!1832478 b!1832472 b!1832483) bm!114779))

(declare-fun m!2260341 () Bool)

(assert (=> b!1832480 m!2260341))

(assert (=> b!1832480 m!2260341))

(declare-fun m!2260343 () Bool)

(assert (=> b!1832480 m!2260343))

(declare-fun m!2260345 () Bool)

(assert (=> b!1832480 m!2260345))

(assert (=> b!1832480 m!2260343))

(assert (=> b!1832480 m!2260345))

(declare-fun m!2260347 () Bool)

(assert (=> b!1832480 m!2260347))

(assert (=> b!1832481 m!2260341))

(assert (=> b!1832479 m!2260341))

(declare-fun m!2260349 () Bool)

(assert (=> bm!114779 m!2260349))

(assert (=> b!1832473 m!2260335))

(assert (=> d!560319 m!2260349))

(assert (=> d!560319 m!2260337))

(assert (=> b!1832477 m!2260345))

(assert (=> b!1832477 m!2260345))

(declare-fun m!2260351 () Bool)

(assert (=> b!1832477 m!2260351))

(assert (=> b!1832476 m!2260345))

(assert (=> b!1832476 m!2260345))

(assert (=> b!1832476 m!2260351))

(assert (=> b!1831957 d!560319))

(declare-fun d!560321 () Bool)

(declare-fun res!824029 () Bool)

(declare-fun e!1171209 () Bool)

(assert (=> d!560321 (=> (not res!824029) (not e!1171209))))

(assert (=> d!560321 (= res!824029 (validRegex!2027 (regex!3641 rule!580)))))

(assert (=> d!560321 (= (ruleValid!1131 thiss!28318 rule!580) e!1171209)))

(declare-fun b!1832490 () Bool)

(declare-fun res!824030 () Bool)

(assert (=> b!1832490 (=> (not res!824030) (not e!1171209))))

(assert (=> b!1832490 (= res!824030 (not (nullable!1545 (regex!3641 rule!580))))))

(declare-fun b!1832491 () Bool)

(assert (=> b!1832491 (= e!1171209 (not (= (tag!4055 rule!580) (String!22988 ""))))))

(assert (= (and d!560321 res!824029) b!1832490))

(assert (= (and b!1832490 res!824030) b!1832491))

(assert (=> d!560321 m!2260337))

(assert (=> b!1832490 m!2260335))

(assert (=> b!1831957 d!560321))

(declare-fun d!560323 () Bool)

(assert (=> d!560323 (ruleValid!1131 thiss!28318 rule!580)))

(declare-fun lt!711484 () Unit!34821)

(declare-fun choose!11536 (LexerInterface!3270 Rule!7082 List!20215) Unit!34821)

(assert (=> d!560323 (= lt!711484 (choose!11536 thiss!28318 rule!580 rules!4610))))

(assert (=> d!560323 (contains!3717 rules!4610 rule!580)))

(assert (=> d!560323 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!650 thiss!28318 rule!580 rules!4610) lt!711484)))

(declare-fun bs!408018 () Bool)

(assert (= bs!408018 d!560323))

(assert (=> bs!408018 m!2259767))

(declare-fun m!2260353 () Bool)

(assert (=> bs!408018 m!2260353))

(assert (=> bs!408018 m!2259805))

(assert (=> b!1831957 d!560323))

(declare-fun bs!408019 () Bool)

(declare-fun d!560325 () Bool)

(assert (= bs!408019 (and d!560325 d!560191)))

(declare-fun lambda!72016 () Int)

(assert (=> bs!408019 (= lambda!72016 lambda!71988)))

(assert (=> d!560325 true))

(declare-fun lt!711485 () Bool)

(assert (=> d!560325 (= lt!711485 (rulesValidInductive!1256 thiss!28318 rs!808))))

(assert (=> d!560325 (= lt!711485 (forall!4335 rs!808 lambda!72016))))

(assert (=> d!560325 (= (rulesValid!1388 thiss!28318 rs!808) lt!711485)))

(declare-fun bs!408020 () Bool)

(assert (= bs!408020 d!560325))

(declare-fun m!2260355 () Bool)

(assert (=> bs!408020 m!2260355))

(declare-fun m!2260357 () Bool)

(assert (=> bs!408020 m!2260357))

(assert (=> b!1831958 d!560325))

(assert (=> b!1831937 d!560317))

(assert (=> b!1831937 d!560321))

(assert (=> b!1831937 d!560323))

(declare-fun d!560327 () Bool)

(declare-fun lt!711486 () Bool)

(assert (=> d!560327 (= lt!711486 (select (content!2985 (t!170872 rs!808)) rule!580))))

(declare-fun e!1171210 () Bool)

(assert (=> d!560327 (= lt!711486 e!1171210)))

(declare-fun res!824031 () Bool)

(assert (=> d!560327 (=> (not res!824031) (not e!1171210))))

(assert (=> d!560327 (= res!824031 ((_ is Cons!20145) (t!170872 rs!808)))))

(assert (=> d!560327 (= (contains!3717 (t!170872 rs!808) rule!580) lt!711486)))

(declare-fun b!1832492 () Bool)

(declare-fun e!1171211 () Bool)

(assert (=> b!1832492 (= e!1171210 e!1171211)))

(declare-fun res!824032 () Bool)

(assert (=> b!1832492 (=> res!824032 e!1171211)))

(assert (=> b!1832492 (= res!824032 (= (h!25546 (t!170872 rs!808)) rule!580))))

(declare-fun b!1832493 () Bool)

(assert (=> b!1832493 (= e!1171211 (contains!3717 (t!170872 (t!170872 rs!808)) rule!580))))

(assert (= (and d!560327 res!824031) b!1832492))

(assert (= (and b!1832492 (not res!824032)) b!1832493))

(declare-fun m!2260359 () Bool)

(assert (=> d!560327 m!2260359))

(declare-fun m!2260361 () Bool)

(assert (=> d!560327 m!2260361))

(declare-fun m!2260363 () Bool)

(assert (=> b!1832493 m!2260363))

(assert (=> b!1831959 d!560327))

(declare-fun b!1832506 () Bool)

(declare-fun e!1171214 () Bool)

(declare-fun tp!518395 () Bool)

(assert (=> b!1832506 (= e!1171214 tp!518395)))

(assert (=> b!1831966 (= tp!518324 e!1171214)))

(declare-fun b!1832507 () Bool)

(declare-fun tp!518396 () Bool)

(declare-fun tp!518397 () Bool)

(assert (=> b!1832507 (= e!1171214 (and tp!518396 tp!518397))))

(declare-fun b!1832504 () Bool)

(assert (=> b!1832504 (= e!1171214 tp_is_empty!8173)))

(declare-fun b!1832505 () Bool)

(declare-fun tp!518398 () Bool)

(declare-fun tp!518394 () Bool)

(assert (=> b!1832505 (= e!1171214 (and tp!518398 tp!518394))))

(assert (= (and b!1831966 ((_ is ElementMatch!4969) (regex!3641 (h!25546 rs!808)))) b!1832504))

(assert (= (and b!1831966 ((_ is Concat!8700) (regex!3641 (h!25546 rs!808)))) b!1832505))

(assert (= (and b!1831966 ((_ is Star!4969) (regex!3641 (h!25546 rs!808)))) b!1832506))

(assert (= (and b!1831966 ((_ is Union!4969) (regex!3641 (h!25546 rs!808)))) b!1832507))

(declare-fun b!1832518 () Bool)

(declare-fun b_free!51251 () Bool)

(declare-fun b_next!51955 () Bool)

(assert (=> b!1832518 (= b_free!51251 (not b_next!51955))))

(declare-fun tb!112081 () Bool)

(declare-fun t!170916 () Bool)

(assert (=> (and b!1832518 (= (toValue!5188 (transformation!3641 (h!25546 (t!170872 rs!808)))) (toValue!5188 (transformation!3641 rule!580))) t!170916) tb!112081))

(declare-fun result!134778 () Bool)

(assert (= result!134778 result!134754))

(assert (=> d!560273 t!170916))

(declare-fun b_and!142769 () Bool)

(declare-fun tp!518409 () Bool)

(assert (=> b!1832518 (= tp!518409 (and (=> t!170916 result!134778) b_and!142769))))

(declare-fun b_free!51253 () Bool)

(declare-fun b_next!51957 () Bool)

(assert (=> b!1832518 (= b_free!51253 (not b_next!51957))))

(declare-fun tb!112083 () Bool)

(declare-fun t!170918 () Bool)

(assert (=> (and b!1832518 (= (toChars!5047 (transformation!3641 (h!25546 (t!170872 rs!808)))) (toChars!5047 (transformation!3641 (rule!5813 token!567)))) t!170918) tb!112083))

(declare-fun result!134780 () Bool)

(assert (= result!134780 result!134764))

(assert (=> d!560277 t!170918))

(assert (=> b!1832408 t!170918))

(declare-fun tp!518407 () Bool)

(declare-fun b_and!142771 () Bool)

(assert (=> b!1832518 (= tp!518407 (and (=> t!170918 result!134780) b_and!142771))))

(declare-fun e!1171224 () Bool)

(assert (=> b!1832518 (= e!1171224 (and tp!518409 tp!518407))))

(declare-fun b!1832517 () Bool)

(declare-fun e!1171226 () Bool)

(declare-fun tp!518410 () Bool)

(assert (=> b!1832517 (= e!1171226 (and tp!518410 (inv!26206 (tag!4055 (h!25546 (t!170872 rs!808)))) (inv!26209 (transformation!3641 (h!25546 (t!170872 rs!808)))) e!1171224))))

(declare-fun b!1832516 () Bool)

(declare-fun e!1171223 () Bool)

(declare-fun tp!518408 () Bool)

(assert (=> b!1832516 (= e!1171223 (and e!1171226 tp!518408))))

(assert (=> b!1831940 (= tp!518311 e!1171223)))

(assert (= b!1832517 b!1832518))

(assert (= b!1832516 b!1832517))

(assert (= (and b!1831940 ((_ is Cons!20145) (t!170872 rs!808))) b!1832516))

(declare-fun m!2260365 () Bool)

(assert (=> b!1832517 m!2260365))

(declare-fun m!2260367 () Bool)

(assert (=> b!1832517 m!2260367))

(declare-fun b!1832523 () Bool)

(declare-fun e!1171229 () Bool)

(declare-fun tp!518413 () Bool)

(assert (=> b!1832523 (= e!1171229 (and tp_is_empty!8173 tp!518413))))

(assert (=> b!1831946 (= tp!518312 e!1171229)))

(assert (= (and b!1831946 ((_ is Cons!20144) (t!170871 input!3681))) b!1832523))

(declare-fun b!1832524 () Bool)

(declare-fun e!1171230 () Bool)

(declare-fun tp!518414 () Bool)

(assert (=> b!1832524 (= e!1171230 (and tp_is_empty!8173 tp!518414))))

(assert (=> b!1831968 (= tp!518323 e!1171230)))

(assert (= (and b!1831968 ((_ is Cons!20144) (originalCharacters!4449 token!567))) b!1832524))

(declare-fun b!1832525 () Bool)

(declare-fun e!1171231 () Bool)

(declare-fun tp!518415 () Bool)

(assert (=> b!1832525 (= e!1171231 (and tp_is_empty!8173 tp!518415))))

(assert (=> b!1831952 (= tp!518319 e!1171231)))

(assert (= (and b!1831952 ((_ is Cons!20144) (t!170871 suffix!1698))) b!1832525))

(declare-fun b!1832528 () Bool)

(declare-fun e!1171232 () Bool)

(declare-fun tp!518417 () Bool)

(assert (=> b!1832528 (= e!1171232 tp!518417)))

(assert (=> b!1831942 (= tp!518317 e!1171232)))

(declare-fun b!1832529 () Bool)

(declare-fun tp!518418 () Bool)

(declare-fun tp!518419 () Bool)

(assert (=> b!1832529 (= e!1171232 (and tp!518418 tp!518419))))

(declare-fun b!1832526 () Bool)

(assert (=> b!1832526 (= e!1171232 tp_is_empty!8173)))

(declare-fun b!1832527 () Bool)

(declare-fun tp!518420 () Bool)

(declare-fun tp!518416 () Bool)

(assert (=> b!1832527 (= e!1171232 (and tp!518420 tp!518416))))

(assert (= (and b!1831942 ((_ is ElementMatch!4969) (regex!3641 (rule!5813 token!567)))) b!1832526))

(assert (= (and b!1831942 ((_ is Concat!8700) (regex!3641 (rule!5813 token!567)))) b!1832527))

(assert (= (and b!1831942 ((_ is Star!4969) (regex!3641 (rule!5813 token!567)))) b!1832528))

(assert (= (and b!1831942 ((_ is Union!4969) (regex!3641 (rule!5813 token!567)))) b!1832529))

(declare-fun b!1832532 () Bool)

(declare-fun e!1171233 () Bool)

(declare-fun tp!518422 () Bool)

(assert (=> b!1832532 (= e!1171233 tp!518422)))

(assert (=> b!1831964 (= tp!518313 e!1171233)))

(declare-fun b!1832533 () Bool)

(declare-fun tp!518423 () Bool)

(declare-fun tp!518424 () Bool)

(assert (=> b!1832533 (= e!1171233 (and tp!518423 tp!518424))))

(declare-fun b!1832530 () Bool)

(assert (=> b!1832530 (= e!1171233 tp_is_empty!8173)))

(declare-fun b!1832531 () Bool)

(declare-fun tp!518425 () Bool)

(declare-fun tp!518421 () Bool)

(assert (=> b!1832531 (= e!1171233 (and tp!518425 tp!518421))))

(assert (= (and b!1831964 ((_ is ElementMatch!4969) (regex!3641 rule!580))) b!1832530))

(assert (= (and b!1831964 ((_ is Concat!8700) (regex!3641 rule!580))) b!1832531))

(assert (= (and b!1831964 ((_ is Star!4969) (regex!3641 rule!580))) b!1832532))

(assert (= (and b!1831964 ((_ is Union!4969) (regex!3641 rule!580))) b!1832533))

(declare-fun b!1832536 () Bool)

(declare-fun b_free!51255 () Bool)

(declare-fun b_next!51959 () Bool)

(assert (=> b!1832536 (= b_free!51255 (not b_next!51959))))

(declare-fun t!170920 () Bool)

(declare-fun tb!112085 () Bool)

(assert (=> (and b!1832536 (= (toValue!5188 (transformation!3641 (h!25546 (t!170872 rules!4610)))) (toValue!5188 (transformation!3641 rule!580))) t!170920) tb!112085))

(declare-fun result!134784 () Bool)

(assert (= result!134784 result!134754))

(assert (=> d!560273 t!170920))

(declare-fun tp!518428 () Bool)

(declare-fun b_and!142773 () Bool)

(assert (=> b!1832536 (= tp!518428 (and (=> t!170920 result!134784) b_and!142773))))

(declare-fun b_free!51257 () Bool)

(declare-fun b_next!51961 () Bool)

(assert (=> b!1832536 (= b_free!51257 (not b_next!51961))))

(declare-fun tb!112087 () Bool)

(declare-fun t!170922 () Bool)

(assert (=> (and b!1832536 (= (toChars!5047 (transformation!3641 (h!25546 (t!170872 rules!4610)))) (toChars!5047 (transformation!3641 (rule!5813 token!567)))) t!170922) tb!112087))

(declare-fun result!134786 () Bool)

(assert (= result!134786 result!134764))

(assert (=> d!560277 t!170922))

(assert (=> b!1832408 t!170922))

(declare-fun b_and!142775 () Bool)

(declare-fun tp!518426 () Bool)

(assert (=> b!1832536 (= tp!518426 (and (=> t!170922 result!134786) b_and!142775))))

(declare-fun e!1171235 () Bool)

(assert (=> b!1832536 (= e!1171235 (and tp!518428 tp!518426))))

(declare-fun tp!518429 () Bool)

(declare-fun b!1832535 () Bool)

(declare-fun e!1171237 () Bool)

(assert (=> b!1832535 (= e!1171237 (and tp!518429 (inv!26206 (tag!4055 (h!25546 (t!170872 rules!4610)))) (inv!26209 (transformation!3641 (h!25546 (t!170872 rules!4610)))) e!1171235))))

(declare-fun b!1832534 () Bool)

(declare-fun e!1171234 () Bool)

(declare-fun tp!518427 () Bool)

(assert (=> b!1832534 (= e!1171234 (and e!1171237 tp!518427))))

(assert (=> b!1831953 (= tp!518316 e!1171234)))

(assert (= b!1832535 b!1832536))

(assert (= b!1832534 b!1832535))

(assert (= (and b!1831953 ((_ is Cons!20145) (t!170872 rules!4610))) b!1832534))

(declare-fun m!2260369 () Bool)

(assert (=> b!1832535 m!2260369))

(declare-fun m!2260371 () Bool)

(assert (=> b!1832535 m!2260371))

(declare-fun b!1832539 () Bool)

(declare-fun e!1171238 () Bool)

(declare-fun tp!518431 () Bool)

(assert (=> b!1832539 (= e!1171238 tp!518431)))

(assert (=> b!1831954 (= tp!518322 e!1171238)))

(declare-fun b!1832540 () Bool)

(declare-fun tp!518432 () Bool)

(declare-fun tp!518433 () Bool)

(assert (=> b!1832540 (= e!1171238 (and tp!518432 tp!518433))))

(declare-fun b!1832537 () Bool)

(assert (=> b!1832537 (= e!1171238 tp_is_empty!8173)))

(declare-fun b!1832538 () Bool)

(declare-fun tp!518434 () Bool)

(declare-fun tp!518430 () Bool)

(assert (=> b!1832538 (= e!1171238 (and tp!518434 tp!518430))))

(assert (= (and b!1831954 ((_ is ElementMatch!4969) (regex!3641 (h!25546 rules!4610)))) b!1832537))

(assert (= (and b!1831954 ((_ is Concat!8700) (regex!3641 (h!25546 rules!4610)))) b!1832538))

(assert (= (and b!1831954 ((_ is Star!4969) (regex!3641 (h!25546 rules!4610)))) b!1832539))

(assert (= (and b!1831954 ((_ is Union!4969) (regex!3641 (h!25546 rules!4610)))) b!1832540))

(declare-fun b_lambda!60657 () Bool)

(assert (= b_lambda!60649 (or (and b!1831939 b_free!51235 (= (toValue!5188 (transformation!3641 (h!25546 rs!808))) (toValue!5188 (transformation!3641 rule!580)))) (and b!1831967 b_free!51231 (= (toValue!5188 (transformation!3641 (rule!5813 token!567))) (toValue!5188 (transformation!3641 rule!580)))) (and b!1832536 b_free!51255 (= (toValue!5188 (transformation!3641 (h!25546 (t!170872 rules!4610)))) (toValue!5188 (transformation!3641 rule!580)))) (and b!1831938 b_free!51227 (= (toValue!5188 (transformation!3641 (h!25546 rules!4610))) (toValue!5188 (transformation!3641 rule!580)))) (and b!1832518 b_free!51251 (= (toValue!5188 (transformation!3641 (h!25546 (t!170872 rs!808)))) (toValue!5188 (transformation!3641 rule!580)))) (and b!1831945 b_free!51239) b_lambda!60657)))

(declare-fun b_lambda!60659 () Bool)

(assert (= b_lambda!60653 (or b!1831943 b_lambda!60659)))

(declare-fun bs!408021 () Bool)

(declare-fun d!560329 () Bool)

(assert (= bs!408021 (and d!560329 b!1831943)))

(assert (=> bs!408021 (= (dynLambda!10023 lambda!71982 (h!25546 rules!4610)) (regex!3641 (h!25546 rules!4610)))))

(assert (=> b!1832374 d!560329))

(declare-fun b_lambda!60661 () Bool)

(assert (= b_lambda!60655 (or (and b!1832536 b_free!51257 (= (toChars!5047 (transformation!3641 (h!25546 (t!170872 rules!4610)))) (toChars!5047 (transformation!3641 (rule!5813 token!567))))) (and b!1831939 b_free!51237 (= (toChars!5047 (transformation!3641 (h!25546 rs!808))) (toChars!5047 (transformation!3641 (rule!5813 token!567))))) (and b!1831945 b_free!51241 (= (toChars!5047 (transformation!3641 rule!580)) (toChars!5047 (transformation!3641 (rule!5813 token!567))))) (and b!1831938 b_free!51229 (= (toChars!5047 (transformation!3641 (h!25546 rules!4610))) (toChars!5047 (transformation!3641 (rule!5813 token!567))))) (and b!1832518 b_free!51253 (= (toChars!5047 (transformation!3641 (h!25546 (t!170872 rs!808)))) (toChars!5047 (transformation!3641 (rule!5813 token!567))))) (and b!1831967 b_free!51233) b_lambda!60661)))

(declare-fun b_lambda!60663 () Bool)

(assert (= b_lambda!60651 (or (and b!1832536 b_free!51257 (= (toChars!5047 (transformation!3641 (h!25546 (t!170872 rules!4610)))) (toChars!5047 (transformation!3641 (rule!5813 token!567))))) (and b!1831939 b_free!51237 (= (toChars!5047 (transformation!3641 (h!25546 rs!808))) (toChars!5047 (transformation!3641 (rule!5813 token!567))))) (and b!1831945 b_free!51241 (= (toChars!5047 (transformation!3641 rule!580)) (toChars!5047 (transformation!3641 (rule!5813 token!567))))) (and b!1831938 b_free!51229 (= (toChars!5047 (transformation!3641 (h!25546 rules!4610))) (toChars!5047 (transformation!3641 (rule!5813 token!567))))) (and b!1832518 b_free!51253 (= (toChars!5047 (transformation!3641 (h!25546 (t!170872 rs!808)))) (toChars!5047 (transformation!3641 (rule!5813 token!567))))) (and b!1831967 b_free!51233) b_lambda!60663)))

(check-sat (not d!560305) (not b!1832481) (not b!1832362) (not b_next!51939) (not d!560269) (not b!1832416) (not b!1832408) (not b!1832538) (not b!1832425) (not bm!114778) (not d!560283) (not b!1832418) (not b!1832463) (not b!1832473) (not d!560235) (not d!560279) (not b!1832315) (not b!1832479) (not b!1832245) (not b!1832414) (not b!1832531) (not b!1832427) (not b!1832523) (not b!1832363) (not b!1832524) (not d!560311) (not b!1832535) (not b_next!51959) (not b!1832540) (not b!1832396) (not b!1832528) tp_is_empty!8173 (not b_lambda!60663) (not d!560321) (not b!1832428) (not tb!112073) (not b_lambda!60661) (not b!1832328) (not d!560297) (not d!560307) (not d!560325) b_and!142765 (not b!1832525) b_and!142773 (not b_lambda!60657) (not b!1832306) b_and!142761 (not b!1832246) (not b!1832459) b_and!142747 b_and!142745 (not b_next!51937) (not b!1832409) (not b!1832338) (not b!1832532) (not b_next!51931) (not b_next!51941) (not b!1832394) (not b!1832516) b_and!142769 (not bm!114775) (not d!560319) (not tb!112065) (not d!560295) (not b!1832399) (not b_next!51957) (not d!560301) (not b!1832167) (not d!560237) (not b!1832247) (not b!1832360) (not d!560327) (not b!1832242) (not b!1832493) (not b!1832517) (not b!1832467) (not b!1832243) (not b!1832374) (not b!1832314) (not d!560267) (not b!1832411) (not b!1832393) (not b!1832490) b_and!142771 (not b!1832466) (not b!1832529) (not d!560191) (not b!1832326) (not b!1832172) (not b!1832413) b_and!142751 (not b!1832395) (not d!560315) (not b_next!51943) (not b_next!51933) b_and!142775 (not b!1832365) (not b!1832403) (not b!1832462) (not b_lambda!60659) (not b!1832507) (not b!1832361) (not b!1832527) (not b!1832402) (not d!560233) (not b!1832400) (not d!560229) b_and!142767 (not b_next!51955) (not b!1832330) (not d!560293) (not b!1832506) (not b!1832367) b_and!142763 (not b!1832244) (not b!1832248) (not d!560323) (not b!1832477) (not b_next!51945) (not b!1832249) (not b!1832534) (not b!1832168) (not d!560277) (not b!1832311) (not b!1832476) (not d!560287) (not b!1832397) (not b!1832417) (not b_next!51935) b_and!142749 (not b!1832401) (not bm!114779) (not b!1832366) (not d!560291) (not b!1832465) (not b!1832336) (not b!1832505) (not b!1832480) (not b_next!51961) (not b!1832539) (not b!1832412) (not d!560317) (not d!560313) (not b!1832533) (not d!560309))
(check-sat (not b_next!51939) (not b_next!51959) b_and!142765 b_and!142773 (not b_next!51937) b_and!142769 (not b_next!51957) b_and!142771 b_and!142767 (not b_next!51955) b_and!142763 (not b_next!51945) (not b_next!51961) b_and!142761 b_and!142747 b_and!142745 (not b_next!51931) (not b_next!51941) b_and!142751 (not b_next!51943) (not b_next!51933) b_and!142775 (not b_next!51935) b_and!142749)
