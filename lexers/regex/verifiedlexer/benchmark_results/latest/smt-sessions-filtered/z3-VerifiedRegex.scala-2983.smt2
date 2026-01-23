; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!177894 () Bool)

(assert start!177894)

(declare-fun b!1785492 () Bool)

(declare-fun b_free!49599 () Bool)

(declare-fun b_next!50303 () Bool)

(assert (=> b!1785492 (= b_free!49599 (not b_next!50303))))

(declare-fun tp!505093 () Bool)

(declare-fun b_and!137323 () Bool)

(assert (=> b!1785492 (= tp!505093 b_and!137323)))

(declare-fun b_free!49601 () Bool)

(declare-fun b_next!50305 () Bool)

(assert (=> b!1785492 (= b_free!49601 (not b_next!50305))))

(declare-fun tp!505095 () Bool)

(declare-fun b_and!137325 () Bool)

(assert (=> b!1785492 (= tp!505095 b_and!137325)))

(declare-fun b!1785506 () Bool)

(declare-fun b_free!49603 () Bool)

(declare-fun b_next!50307 () Bool)

(assert (=> b!1785506 (= b_free!49603 (not b_next!50307))))

(declare-fun tp!505092 () Bool)

(declare-fun b_and!137327 () Bool)

(assert (=> b!1785506 (= tp!505092 b_and!137327)))

(declare-fun b_free!49605 () Bool)

(declare-fun b_next!50309 () Bool)

(assert (=> b!1785506 (= b_free!49605 (not b_next!50309))))

(declare-fun tp!505090 () Bool)

(declare-fun b_and!137329 () Bool)

(assert (=> b!1785506 (= tp!505090 b_and!137329)))

(declare-fun b!1785499 () Bool)

(declare-fun b_free!49607 () Bool)

(declare-fun b_next!50311 () Bool)

(assert (=> b!1785499 (= b_free!49607 (not b_next!50311))))

(declare-fun tp!505088 () Bool)

(declare-fun b_and!137331 () Bool)

(assert (=> b!1785499 (= tp!505088 b_and!137331)))

(declare-fun b_free!49609 () Bool)

(declare-fun b_next!50313 () Bool)

(assert (=> b!1785499 (= b_free!49609 (not b_next!50313))))

(declare-fun tp!505098 () Bool)

(declare-fun b_and!137333 () Bool)

(assert (=> b!1785499 (= tp!505098 b_and!137333)))

(declare-fun b!1785522 () Bool)

(declare-fun e!1142695 () Bool)

(assert (=> b!1785522 (= e!1142695 true)))

(declare-fun b!1785521 () Bool)

(declare-fun e!1142694 () Bool)

(assert (=> b!1785521 (= e!1142694 e!1142695)))

(declare-fun b!1785520 () Bool)

(declare-fun e!1142693 () Bool)

(assert (=> b!1785520 (= e!1142693 e!1142694)))

(declare-fun b!1785504 () Bool)

(assert (=> b!1785504 e!1142693))

(assert (= b!1785521 b!1785522))

(assert (= b!1785520 b!1785521))

(assert (= b!1785504 b!1785520))

(declare-datatypes ((List!19749 0))(
  ( (Nil!19679) (Cons!19679 (h!25080 (_ BitVec 16)) (t!167048 List!19749)) )
))
(declare-datatypes ((TokenValue!3617 0))(
  ( (FloatLiteralValue!7234 (text!25764 List!19749)) (TokenValueExt!3616 (__x!12536 Int)) (Broken!18085 (value!110166 List!19749)) (Object!3686) (End!3617) (Def!3617) (Underscore!3617) (Match!3617) (Else!3617) (Error!3617) (Case!3617) (If!3617) (Extends!3617) (Abstract!3617) (Class!3617) (Val!3617) (DelimiterValue!7234 (del!3677 List!19749)) (KeywordValue!3623 (value!110167 List!19749)) (CommentValue!7234 (value!110168 List!19749)) (WhitespaceValue!7234 (value!110169 List!19749)) (IndentationValue!3617 (value!110170 List!19749)) (String!22416) (Int32!3617) (Broken!18086 (value!110171 List!19749)) (Boolean!3618) (Unit!34024) (OperatorValue!3620 (op!3677 List!19749)) (IdentifierValue!7234 (value!110172 List!19749)) (IdentifierValue!7235 (value!110173 List!19749)) (WhitespaceValue!7235 (value!110174 List!19749)) (True!7234) (False!7234) (Broken!18087 (value!110175 List!19749)) (Broken!18088 (value!110176 List!19749)) (True!7235) (RightBrace!3617) (RightBracket!3617) (Colon!3617) (Null!3617) (Comma!3617) (LeftBracket!3617) (False!7235) (LeftBrace!3617) (ImaginaryLiteralValue!3617 (text!25765 List!19749)) (StringLiteralValue!10851 (value!110177 List!19749)) (EOFValue!3617 (value!110178 List!19749)) (IdentValue!3617 (value!110179 List!19749)) (DelimiterValue!7235 (value!110180 List!19749)) (DedentValue!3617 (value!110181 List!19749)) (NewLineValue!3617 (value!110182 List!19749)) (IntegerValue!10851 (value!110183 (_ BitVec 32)) (text!25766 List!19749)) (IntegerValue!10852 (value!110184 Int) (text!25767 List!19749)) (Times!3617) (Or!3617) (Equal!3617) (Minus!3617) (Broken!18089 (value!110185 List!19749)) (And!3617) (Div!3617) (LessEqual!3617) (Mod!3617) (Concat!8472) (Not!3617) (Plus!3617) (SpaceValue!3617 (value!110186 List!19749)) (IntegerValue!10853 (value!110187 Int) (text!25768 List!19749)) (StringLiteralValue!10852 (text!25769 List!19749)) (FloatLiteralValue!7235 (text!25770 List!19749)) (BytesLiteralValue!3617 (value!110188 List!19749)) (CommentValue!7235 (value!110189 List!19749)) (StringLiteralValue!10853 (value!110190 List!19749)) (ErrorTokenValue!3617 (msg!3678 List!19749)) )
))
(declare-datatypes ((C!9884 0))(
  ( (C!9885 (val!5538 Int)) )
))
(declare-datatypes ((List!19750 0))(
  ( (Nil!19680) (Cons!19680 (h!25081 C!9884) (t!167049 List!19750)) )
))
(declare-datatypes ((Regex!4855 0))(
  ( (ElementMatch!4855 (c!290384 C!9884)) (Concat!8473 (regOne!10222 Regex!4855) (regTwo!10222 Regex!4855)) (EmptyExpr!4855) (Star!4855 (reg!5184 Regex!4855)) (EmptyLang!4855) (Union!4855 (regOne!10223 Regex!4855) (regTwo!10223 Regex!4855)) )
))
(declare-datatypes ((String!22417 0))(
  ( (String!22418 (value!110191 String)) )
))
(declare-datatypes ((IArray!13099 0))(
  ( (IArray!13100 (innerList!6607 List!19750)) )
))
(declare-datatypes ((Conc!6547 0))(
  ( (Node!6547 (left!15776 Conc!6547) (right!16106 Conc!6547) (csize!13324 Int) (cheight!6758 Int)) (Leaf!9531 (xs!9423 IArray!13099) (csize!13325 Int)) (Empty!6547) )
))
(declare-datatypes ((BalanceConc!13038 0))(
  ( (BalanceConc!13039 (c!290385 Conc!6547)) )
))
(declare-datatypes ((TokenValueInjection!6894 0))(
  ( (TokenValueInjection!6895 (toValue!5054 Int) (toChars!4913 Int)) )
))
(declare-datatypes ((Rule!6854 0))(
  ( (Rule!6855 (regex!3527 Regex!4855) (tag!3929 String!22417) (isSeparator!3527 Bool) (transformation!3527 TokenValueInjection!6894)) )
))
(declare-datatypes ((Token!6620 0))(
  ( (Token!6621 (value!110192 TokenValue!3617) (rule!5615 Rule!6854) (size!15632 Int) (originalCharacters!4341 List!19750)) )
))
(declare-datatypes ((tuple2!19270 0))(
  ( (tuple2!19271 (_1!11037 Token!6620) (_2!11037 List!19750)) )
))
(declare-fun lt!694950 () tuple2!19270)

(declare-fun order!12741 () Int)

(declare-fun order!12739 () Int)

(declare-fun lambda!70768 () Int)

(declare-fun dynLambda!9695 (Int Int) Int)

(declare-fun dynLambda!9696 (Int Int) Int)

(assert (=> b!1785522 (< (dynLambda!9695 order!12739 (toValue!5054 (transformation!3527 (rule!5615 (_1!11037 lt!694950))))) (dynLambda!9696 order!12741 lambda!70768))))

(declare-fun order!12743 () Int)

(declare-fun dynLambda!9697 (Int Int) Int)

(assert (=> b!1785522 (< (dynLambda!9697 order!12743 (toChars!4913 (transformation!3527 (rule!5615 (_1!11037 lt!694950))))) (dynLambda!9696 order!12741 lambda!70768))))

(declare-fun b!1785475 () Bool)

(declare-fun res!805093 () Bool)

(declare-fun e!1142670 () Bool)

(assert (=> b!1785475 (=> res!805093 e!1142670)))

(declare-fun lt!694931 () BalanceConc!13038)

(declare-fun dynLambda!9698 (Int TokenValue!3617) BalanceConc!13038)

(assert (=> b!1785475 (= res!805093 (not (= lt!694931 (dynLambda!9698 (toChars!4913 (transformation!3527 (rule!5615 (_1!11037 lt!694950)))) (value!110192 (_1!11037 lt!694950))))))))

(declare-fun b!1785476 () Bool)

(declare-fun e!1142683 () Bool)

(declare-fun tp_is_empty!7953 () Bool)

(declare-fun tp!505087 () Bool)

(assert (=> b!1785476 (= e!1142683 (and tp_is_empty!7953 tp!505087))))

(declare-fun b!1785477 () Bool)

(declare-datatypes ((Unit!34025 0))(
  ( (Unit!34026) )
))
(declare-fun e!1142664 () Unit!34025)

(declare-fun Unit!34027 () Unit!34025)

(assert (=> b!1785477 (= e!1142664 Unit!34027)))

(declare-fun b!1785478 () Bool)

(declare-fun e!1142676 () Bool)

(declare-fun e!1142678 () Bool)

(assert (=> b!1785478 (= e!1142676 e!1142678)))

(declare-fun res!805089 () Bool)

(assert (=> b!1785478 (=> res!805089 e!1142678)))

(declare-fun lt!694933 () List!19750)

(declare-fun lt!694936 () List!19750)

(declare-fun isPrefix!1767 (List!19750 List!19750) Bool)

(assert (=> b!1785478 (= res!805089 (not (isPrefix!1767 lt!694933 lt!694936)))))

(declare-fun ++!5351 (List!19750 List!19750) List!19750)

(assert (=> b!1785478 (isPrefix!1767 lt!694933 (++!5351 lt!694933 (_2!11037 lt!694950)))))

(declare-fun lt!694929 () Unit!34025)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1276 (List!19750 List!19750) Unit!34025)

(assert (=> b!1785478 (= lt!694929 (lemmaConcatTwoListThenFirstIsPrefix!1276 lt!694933 (_2!11037 lt!694950)))))

(declare-fun list!8005 (BalanceConc!13038) List!19750)

(assert (=> b!1785478 (= lt!694933 (list!8005 lt!694931))))

(declare-fun charsOf!2176 (Token!6620) BalanceConc!13038)

(assert (=> b!1785478 (= lt!694931 (charsOf!2176 (_1!11037 lt!694950)))))

(declare-fun e!1142667 () Bool)

(assert (=> b!1785478 e!1142667))

(declare-fun res!805097 () Bool)

(assert (=> b!1785478 (=> (not res!805097) (not e!1142667))))

(declare-datatypes ((Option!4076 0))(
  ( (None!4075) (Some!4075 (v!25572 Rule!6854)) )
))
(declare-fun lt!694935 () Option!4076)

(declare-fun isDefined!3419 (Option!4076) Bool)

(assert (=> b!1785478 (= res!805097 (isDefined!3419 lt!694935))))

(declare-datatypes ((LexerInterface!3156 0))(
  ( (LexerInterfaceExt!3153 (__x!12537 Int)) (Lexer!3154) )
))
(declare-fun thiss!24550 () LexerInterface!3156)

(declare-datatypes ((List!19751 0))(
  ( (Nil!19681) (Cons!19681 (h!25082 Rule!6854) (t!167050 List!19751)) )
))
(declare-fun rules!3447 () List!19751)

(declare-fun getRuleFromTag!575 (LexerInterface!3156 List!19751 String!22417) Option!4076)

(assert (=> b!1785478 (= lt!694935 (getRuleFromTag!575 thiss!24550 rules!3447 (tag!3929 (rule!5615 (_1!11037 lt!694950)))))))

(declare-fun lt!694930 () Unit!34025)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!575 (LexerInterface!3156 List!19751 List!19750 Token!6620) Unit!34025)

(assert (=> b!1785478 (= lt!694930 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!575 thiss!24550 rules!3447 lt!694936 (_1!11037 lt!694950)))))

(declare-datatypes ((Option!4077 0))(
  ( (None!4076) (Some!4076 (v!25573 tuple2!19270)) )
))
(declare-fun lt!694947 () Option!4077)

(declare-fun get!6057 (Option!4077) tuple2!19270)

(assert (=> b!1785478 (= lt!694950 (get!6057 lt!694947))))

(declare-fun suffix!1421 () List!19750)

(declare-fun lt!694954 () Unit!34025)

(declare-fun lt!694958 () List!19750)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!678 (LexerInterface!3156 List!19751 List!19750 List!19750) Unit!34025)

(assert (=> b!1785478 (= lt!694954 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!678 thiss!24550 rules!3447 lt!694958 suffix!1421))))

(declare-fun maxPrefix!1710 (LexerInterface!3156 List!19751 List!19750) Option!4077)

(assert (=> b!1785478 (= lt!694947 (maxPrefix!1710 thiss!24550 rules!3447 lt!694936))))

(assert (=> b!1785478 (isPrefix!1767 lt!694958 lt!694936)))

(declare-fun lt!694955 () Unit!34025)

(assert (=> b!1785478 (= lt!694955 (lemmaConcatTwoListThenFirstIsPrefix!1276 lt!694958 suffix!1421))))

(assert (=> b!1785478 (= lt!694936 (++!5351 lt!694958 suffix!1421))))

(declare-fun b!1785479 () Bool)

(declare-fun e!1142674 () Bool)

(declare-fun e!1142672 () Bool)

(assert (=> b!1785479 (= e!1142674 e!1142672)))

(declare-fun res!805096 () Bool)

(assert (=> b!1785479 (=> res!805096 e!1142672)))

(declare-fun token!523 () Token!6620)

(assert (=> b!1785479 (= res!805096 (= (rule!5615 (_1!11037 lt!694950)) (rule!5615 token!523)))))

(assert (=> b!1785479 (= suffix!1421 (_2!11037 lt!694950))))

(declare-fun lt!694968 () Unit!34025)

(declare-fun lemmaSamePrefixThenSameSuffix!878 (List!19750 List!19750 List!19750 List!19750 List!19750) Unit!34025)

(assert (=> b!1785479 (= lt!694968 (lemmaSamePrefixThenSameSuffix!878 lt!694958 suffix!1421 lt!694958 (_2!11037 lt!694950) lt!694936))))

(assert (=> b!1785479 (= lt!694933 lt!694958)))

(declare-fun lt!694964 () Unit!34025)

(declare-fun lemmaIsPrefixSameLengthThenSameList!263 (List!19750 List!19750 List!19750) Unit!34025)

(assert (=> b!1785479 (= lt!694964 (lemmaIsPrefixSameLengthThenSameList!263 lt!694933 lt!694958 lt!694936))))

(declare-fun b!1785480 () Bool)

(declare-fun e!1142679 () Bool)

(declare-fun e!1142662 () Bool)

(assert (=> b!1785480 (= e!1142679 e!1142662)))

(declare-fun res!805090 () Bool)

(assert (=> b!1785480 (=> (not res!805090) (not e!1142662))))

(declare-fun lt!694948 () Option!4077)

(declare-fun isDefined!3420 (Option!4077) Bool)

(assert (=> b!1785480 (= res!805090 (isDefined!3420 lt!694948))))

(assert (=> b!1785480 (= lt!694948 (maxPrefix!1710 thiss!24550 rules!3447 lt!694958))))

(declare-fun lt!694963 () BalanceConc!13038)

(assert (=> b!1785480 (= lt!694958 (list!8005 lt!694963))))

(assert (=> b!1785480 (= lt!694963 (charsOf!2176 token!523))))

(declare-fun b!1785481 () Bool)

(declare-fun e!1142675 () Bool)

(assert (=> b!1785481 (= e!1142667 e!1142675)))

(declare-fun res!805094 () Bool)

(assert (=> b!1785481 (=> (not res!805094) (not e!1142675))))

(declare-fun lt!694942 () Rule!6854)

(declare-fun matchR!2328 (Regex!4855 List!19750) Bool)

(assert (=> b!1785481 (= res!805094 (matchR!2328 (regex!3527 lt!694942) (list!8005 (charsOf!2176 (_1!11037 lt!694950)))))))

(declare-fun get!6058 (Option!4076) Rule!6854)

(assert (=> b!1785481 (= lt!694942 (get!6058 lt!694935))))

(declare-fun b!1785482 () Bool)

(declare-fun res!805107 () Bool)

(assert (=> b!1785482 (=> (not res!805107) (not e!1142679))))

(declare-fun isEmpty!12438 (List!19751) Bool)

(assert (=> b!1785482 (= res!805107 (not (isEmpty!12438 rules!3447)))))

(declare-fun b!1785483 () Bool)

(declare-fun e!1142669 () Unit!34025)

(declare-fun Unit!34028 () Unit!34025)

(assert (=> b!1785483 (= e!1142669 Unit!34028)))

(declare-fun lt!694941 () Unit!34025)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!234 (LexerInterface!3156 List!19751 List!19750 Token!6620 Rule!6854 List!19750) Unit!34025)

(assert (=> b!1785483 (= lt!694941 (lemmaMaxPrefixThenMatchesRulesRegex!234 thiss!24550 rules!3447 lt!694936 (_1!11037 lt!694950) (rule!5615 (_1!11037 lt!694950)) (_2!11037 lt!694950)))))

(declare-fun lt!694961 () Regex!4855)

(assert (=> b!1785483 (matchR!2328 lt!694961 lt!694933)))

(declare-fun lt!694967 () List!19750)

(declare-fun getSuffix!934 (List!19750 List!19750) List!19750)

(assert (=> b!1785483 (= lt!694967 (getSuffix!934 lt!694936 lt!694958))))

(declare-fun lt!694946 () Unit!34025)

(assert (=> b!1785483 (= lt!694946 (lemmaSamePrefixThenSameSuffix!878 lt!694958 suffix!1421 lt!694958 lt!694967 lt!694936))))

(assert (=> b!1785483 (= suffix!1421 lt!694967)))

(declare-fun lt!694965 () Unit!34025)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!303 (List!19750 List!19750) Unit!34025)

(assert (=> b!1785483 (= lt!694965 (lemmaAddHeadSuffixToPrefixStillPrefix!303 lt!694958 lt!694936))))

(declare-fun head!4180 (List!19750) C!9884)

(assert (=> b!1785483 (isPrefix!1767 (++!5351 lt!694958 (Cons!19680 (head!4180 lt!694967) Nil!19680)) lt!694936)))

(declare-fun lt!694966 () List!19750)

(declare-fun lt!694956 () Unit!34025)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!175 (List!19750 List!19750 List!19750) Unit!34025)

(assert (=> b!1785483 (= lt!694956 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!175 lt!694933 lt!694966 lt!694936))))

(assert (=> b!1785483 (isPrefix!1767 lt!694966 lt!694933)))

(declare-fun lt!694934 () Unit!34025)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!166 (Regex!4855 List!19750 List!19750) Unit!34025)

(assert (=> b!1785483 (= lt!694934 (lemmaNotPrefixMatchThenCannotMatchLonger!166 lt!694961 lt!694966 lt!694933))))

(assert (=> b!1785483 false))

(declare-fun b!1785484 () Bool)

(declare-fun res!805102 () Bool)

(assert (=> b!1785484 (=> res!805102 e!1142678)))

(assert (=> b!1785484 (= res!805102 (not (matchR!2328 (regex!3527 (rule!5615 (_1!11037 lt!694950))) lt!694933)))))

(declare-fun b!1785486 () Bool)

(declare-fun res!805091 () Bool)

(assert (=> b!1785486 (=> (not res!805091) (not e!1142679))))

(declare-fun rule!422 () Rule!6854)

(declare-fun contains!3559 (List!19751 Rule!6854) Bool)

(assert (=> b!1785486 (= res!805091 (contains!3559 rules!3447 rule!422))))

(declare-fun tp!505096 () Bool)

(declare-fun e!1142686 () Bool)

(declare-fun b!1785487 () Bool)

(declare-fun e!1142659 () Bool)

(declare-fun inv!21 (TokenValue!3617) Bool)

(assert (=> b!1785487 (= e!1142659 (and (inv!21 (value!110192 token!523)) e!1142686 tp!505096))))

(declare-fun b!1785488 () Bool)

(declare-fun res!805103 () Bool)

(assert (=> b!1785488 (=> res!805103 e!1142672)))

(declare-fun getIndex!192 (List!19751 Rule!6854) Int)

(assert (=> b!1785488 (= res!805103 (>= (getIndex!192 rules!3447 (rule!5615 token!523)) (getIndex!192 rules!3447 (rule!5615 (_1!11037 lt!694950)))))))

(declare-fun e!1142657 () Bool)

(declare-fun e!1142668 () Bool)

(declare-fun b!1785489 () Bool)

(declare-fun tp!505089 () Bool)

(declare-fun inv!25619 (String!22417) Bool)

(declare-fun inv!25624 (TokenValueInjection!6894) Bool)

(assert (=> b!1785489 (= e!1142657 (and tp!505089 (inv!25619 (tag!3929 (h!25082 rules!3447))) (inv!25624 (transformation!3527 (h!25082 rules!3447))) e!1142668))))

(declare-fun e!1142661 () Bool)

(declare-fun tp!505094 () Bool)

(declare-fun b!1785490 () Bool)

(declare-fun e!1142673 () Bool)

(assert (=> b!1785490 (= e!1142661 (and tp!505094 (inv!25619 (tag!3929 rule!422)) (inv!25624 (transformation!3527 rule!422)) e!1142673))))

(declare-fun b!1785491 () Bool)

(declare-fun e!1142677 () Bool)

(assert (=> b!1785491 (= e!1142677 e!1142676)))

(declare-fun res!805099 () Bool)

(assert (=> b!1785491 (=> res!805099 e!1142676)))

(declare-fun prefixMatch!738 (Regex!4855 List!19750) Bool)

(assert (=> b!1785491 (= res!805099 (prefixMatch!738 lt!694961 lt!694966))))

(assert (=> b!1785491 (= lt!694966 (++!5351 lt!694958 (Cons!19680 (head!4180 suffix!1421) Nil!19680)))))

(declare-fun rulesRegex!883 (LexerInterface!3156 List!19751) Regex!4855)

(assert (=> b!1785491 (= lt!694961 (rulesRegex!883 thiss!24550 rules!3447))))

(declare-fun e!1142681 () Bool)

(assert (=> b!1785492 (= e!1142681 (and tp!505093 tp!505095))))

(declare-fun b!1785493 () Bool)

(declare-fun Unit!34029 () Unit!34025)

(assert (=> b!1785493 (= e!1142669 Unit!34029)))

(declare-fun b!1785494 () Bool)

(declare-fun e!1142660 () Bool)

(declare-fun tp!505097 () Bool)

(assert (=> b!1785494 (= e!1142660 (and e!1142657 tp!505097))))

(declare-fun b!1785495 () Bool)

(declare-fun e!1142682 () Bool)

(assert (=> b!1785495 (= e!1142682 e!1142670)))

(declare-fun res!805106 () Bool)

(assert (=> b!1785495 (=> res!805106 e!1142670)))

(declare-fun dynLambda!9699 (Int BalanceConc!13038) TokenValue!3617)

(assert (=> b!1785495 (= res!805106 (not (= (list!8005 (dynLambda!9698 (toChars!4913 (transformation!3527 (rule!5615 (_1!11037 lt!694950)))) (dynLambda!9699 (toValue!5054 (transformation!3527 (rule!5615 (_1!11037 lt!694950)))) lt!694931))) lt!694933)))))

(declare-fun lt!694957 () Unit!34025)

(declare-fun lemmaSemiInverse!665 (TokenValueInjection!6894 BalanceConc!13038) Unit!34025)

(assert (=> b!1785495 (= lt!694957 (lemmaSemiInverse!665 (transformation!3527 (rule!5615 (_1!11037 lt!694950))) lt!694931))))

(declare-fun b!1785496 () Bool)

(declare-fun res!805092 () Bool)

(assert (=> b!1785496 (=> res!805092 e!1142677)))

(declare-fun isEmpty!12439 (List!19750) Bool)

(assert (=> b!1785496 (= res!805092 (isEmpty!12439 suffix!1421))))

(declare-fun b!1785497 () Bool)

(declare-fun e!1142666 () Bool)

(declare-fun e!1142671 () Bool)

(assert (=> b!1785497 (= e!1142666 e!1142671)))

(declare-fun res!805101 () Bool)

(assert (=> b!1785497 (=> res!805101 e!1142671)))

(declare-fun lt!694962 () List!19750)

(declare-fun lt!694952 () Option!4077)

(assert (=> b!1785497 (= res!805101 (or (not (= lt!694962 (_2!11037 lt!694950))) (not (= lt!694952 (Some!4076 (tuple2!19271 (_1!11037 lt!694950) lt!694962))))))))

(assert (=> b!1785497 (= (_2!11037 lt!694950) lt!694962)))

(declare-fun lt!694949 () Unit!34025)

(assert (=> b!1785497 (= lt!694949 (lemmaSamePrefixThenSameSuffix!878 lt!694933 (_2!11037 lt!694950) lt!694933 lt!694962 lt!694936))))

(assert (=> b!1785497 (= lt!694962 (getSuffix!934 lt!694936 lt!694933))))

(declare-fun lt!694940 () TokenValue!3617)

(declare-fun lt!694969 () Int)

(assert (=> b!1785497 (= lt!694952 (Some!4076 (tuple2!19271 (Token!6621 lt!694940 (rule!5615 (_1!11037 lt!694950)) lt!694969 lt!694933) (_2!11037 lt!694950))))))

(declare-fun maxPrefixOneRule!1079 (LexerInterface!3156 Rule!6854 List!19750) Option!4077)

(assert (=> b!1785497 (= lt!694952 (maxPrefixOneRule!1079 thiss!24550 (rule!5615 (_1!11037 lt!694950)) lt!694936))))

(declare-fun size!15633 (List!19750) Int)

(assert (=> b!1785497 (= lt!694969 (size!15633 lt!694933))))

(declare-fun apply!5327 (TokenValueInjection!6894 BalanceConc!13038) TokenValue!3617)

(declare-fun seqFromList!2496 (List!19750) BalanceConc!13038)

(assert (=> b!1785497 (= lt!694940 (apply!5327 (transformation!3527 (rule!5615 (_1!11037 lt!694950))) (seqFromList!2496 lt!694933)))))

(declare-fun lt!694939 () Unit!34025)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!457 (LexerInterface!3156 List!19751 List!19750 List!19750 List!19750 Rule!6854) Unit!34025)

(assert (=> b!1785497 (= lt!694939 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!457 thiss!24550 rules!3447 lt!694933 lt!694936 (_2!11037 lt!694950) (rule!5615 (_1!11037 lt!694950))))))

(declare-fun b!1785498 () Bool)

(declare-fun Unit!34030 () Unit!34025)

(assert (=> b!1785498 (= e!1142664 Unit!34030)))

(declare-fun lt!694928 () Unit!34025)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!236 (LexerInterface!3156 List!19751 Rule!6854 List!19750 List!19750 List!19750 Rule!6854) Unit!34025)

(assert (=> b!1785498 (= lt!694928 (lemmaMaxPrefixOutputsMaxPrefix!236 thiss!24550 rules!3447 (rule!5615 (_1!11037 lt!694950)) lt!694933 lt!694936 lt!694958 rule!422))))

(assert (=> b!1785498 false))

(assert (=> b!1785499 (= e!1142673 (and tp!505088 tp!505098))))

(declare-fun tp!505091 () Bool)

(declare-fun b!1785500 () Bool)

(assert (=> b!1785500 (= e!1142686 (and tp!505091 (inv!25619 (tag!3929 (rule!5615 token!523))) (inv!25624 (transformation!3527 (rule!5615 token!523))) e!1142681))))

(declare-fun b!1785501 () Bool)

(declare-fun e!1142684 () Bool)

(assert (=> b!1785501 (= e!1142662 e!1142684)))

(declare-fun res!805095 () Bool)

(assert (=> b!1785501 (=> (not res!805095) (not e!1142684))))

(declare-fun lt!694932 () tuple2!19270)

(assert (=> b!1785501 (= res!805095 (= (_1!11037 lt!694932) token!523))))

(assert (=> b!1785501 (= lt!694932 (get!6057 lt!694948))))

(declare-fun b!1785502 () Bool)

(assert (=> b!1785502 (= e!1142672 false)))

(assert (=> b!1785502 (not (matchR!2328 (regex!3527 (rule!5615 token!523)) lt!694933))))

(declare-fun lt!694953 () Unit!34025)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!148 (LexerInterface!3156 List!19751 Rule!6854 List!19750 List!19750 Rule!6854) Unit!34025)

(assert (=> b!1785502 (= lt!694953 (lemmaMaxPrefNoSmallerRuleMatches!148 thiss!24550 rules!3447 (rule!5615 (_1!11037 lt!694950)) lt!694933 lt!694936 (rule!5615 token!523)))))

(declare-fun res!805086 () Bool)

(assert (=> start!177894 (=> (not res!805086) (not e!1142679))))

(get-info :version)

(assert (=> start!177894 (= res!805086 ((_ is Lexer!3154) thiss!24550))))

(assert (=> start!177894 e!1142679))

(assert (=> start!177894 e!1142683))

(assert (=> start!177894 e!1142661))

(assert (=> start!177894 true))

(declare-fun inv!25625 (Token!6620) Bool)

(assert (=> start!177894 (and (inv!25625 token!523) e!1142659)))

(assert (=> start!177894 e!1142660))

(declare-fun b!1785485 () Bool)

(assert (=> b!1785485 (= e!1142675 (= (rule!5615 (_1!11037 lt!694950)) lt!694942))))

(declare-fun b!1785503 () Bool)

(declare-fun res!805100 () Bool)

(assert (=> b!1785503 (=> (not res!805100) (not e!1142684))))

(assert (=> b!1785503 (= res!805100 (isEmpty!12439 (_2!11037 lt!694932)))))

(assert (=> b!1785504 (= e!1142678 e!1142682)))

(declare-fun res!805085 () Bool)

(assert (=> b!1785504 (=> res!805085 e!1142682)))

(declare-fun Forall!894 (Int) Bool)

(assert (=> b!1785504 (= res!805085 (not (Forall!894 lambda!70768)))))

(declare-fun lt!694945 () Unit!34025)

(declare-fun lemmaInv!726 (TokenValueInjection!6894) Unit!34025)

(assert (=> b!1785504 (= lt!694945 (lemmaInv!726 (transformation!3527 (rule!5615 (_1!11037 lt!694950)))))))

(declare-fun b!1785505 () Bool)

(declare-fun e!1142685 () Bool)

(assert (=> b!1785505 (= e!1142685 e!1142674)))

(declare-fun res!805108 () Bool)

(assert (=> b!1785505 (=> res!805108 e!1142674)))

(declare-fun lt!694926 () Int)

(declare-fun lt!694951 () Int)

(assert (=> b!1785505 (= res!805108 (not (= lt!694926 lt!694951)))))

(declare-fun lt!694938 () Unit!34025)

(assert (=> b!1785505 (= lt!694938 e!1142664)))

(declare-fun c!290383 () Bool)

(assert (=> b!1785505 (= c!290383 (< lt!694926 lt!694951))))

(assert (=> b!1785506 (= e!1142668 (and tp!505092 tp!505090))))

(declare-fun b!1785507 () Bool)

(assert (=> b!1785507 (= e!1142684 (not e!1142677))))

(declare-fun res!805087 () Bool)

(assert (=> b!1785507 (=> res!805087 e!1142677)))

(assert (=> b!1785507 (= res!805087 (not (matchR!2328 (regex!3527 rule!422) lt!694958)))))

(declare-fun ruleValid!1025 (LexerInterface!3156 Rule!6854) Bool)

(assert (=> b!1785507 (ruleValid!1025 thiss!24550 rule!422)))

(declare-fun lt!694970 () Unit!34025)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!548 (LexerInterface!3156 Rule!6854 List!19751) Unit!34025)

(assert (=> b!1785507 (= lt!694970 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!548 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1785508 () Bool)

(declare-fun res!805105 () Bool)

(assert (=> b!1785508 (=> (not res!805105) (not e!1142679))))

(declare-fun rulesInvariant!2825 (LexerInterface!3156 List!19751) Bool)

(assert (=> b!1785508 (= res!805105 (rulesInvariant!2825 thiss!24550 rules!3447))))

(declare-fun b!1785509 () Bool)

(declare-fun res!805098 () Bool)

(assert (=> b!1785509 (=> (not res!805098) (not e!1142684))))

(assert (=> b!1785509 (= res!805098 (= (rule!5615 token!523) rule!422))))

(declare-fun b!1785510 () Bool)

(assert (=> b!1785510 (= e!1142671 e!1142685)))

(declare-fun res!805104 () Bool)

(assert (=> b!1785510 (=> res!805104 e!1142685)))

(declare-fun lt!694927 () Bool)

(assert (=> b!1785510 (= res!805104 lt!694927)))

(declare-fun lt!694943 () Unit!34025)

(assert (=> b!1785510 (= lt!694943 e!1142669)))

(declare-fun c!290382 () Bool)

(assert (=> b!1785510 (= c!290382 lt!694927)))

(assert (=> b!1785510 (= lt!694927 (> lt!694926 lt!694951))))

(declare-fun size!15634 (BalanceConc!13038) Int)

(assert (=> b!1785510 (= lt!694951 (size!15634 lt!694963))))

(assert (=> b!1785510 (matchR!2328 lt!694961 lt!694958)))

(declare-fun lt!694937 () Unit!34025)

(assert (=> b!1785510 (= lt!694937 (lemmaMaxPrefixThenMatchesRulesRegex!234 thiss!24550 rules!3447 lt!694958 token!523 rule!422 Nil!19680))))

(declare-fun b!1785511 () Bool)

(assert (=> b!1785511 (= e!1142670 e!1142666)))

(declare-fun res!805088 () Bool)

(assert (=> b!1785511 (=> res!805088 e!1142666)))

(declare-fun lt!694959 () TokenValue!3617)

(assert (=> b!1785511 (= res!805088 (not (= lt!694947 (Some!4076 (tuple2!19271 (Token!6621 lt!694959 (rule!5615 (_1!11037 lt!694950)) lt!694926 lt!694933) (_2!11037 lt!694950))))))))

(assert (=> b!1785511 (= lt!694926 (size!15634 lt!694931))))

(assert (=> b!1785511 (= lt!694959 (apply!5327 (transformation!3527 (rule!5615 (_1!11037 lt!694950))) lt!694931))))

(declare-fun lt!694960 () Unit!34025)

(declare-fun lemmaCharactersSize!585 (Token!6620) Unit!34025)

(assert (=> b!1785511 (= lt!694960 (lemmaCharactersSize!585 (_1!11037 lt!694950)))))

(declare-fun lt!694944 () Unit!34025)

(declare-fun lemmaEqSameImage!438 (TokenValueInjection!6894 BalanceConc!13038 BalanceConc!13038) Unit!34025)

(assert (=> b!1785511 (= lt!694944 (lemmaEqSameImage!438 (transformation!3527 (rule!5615 (_1!11037 lt!694950))) lt!694931 (seqFromList!2496 (originalCharacters!4341 (_1!11037 lt!694950)))))))

(assert (= (and start!177894 res!805086) b!1785482))

(assert (= (and b!1785482 res!805107) b!1785508))

(assert (= (and b!1785508 res!805105) b!1785486))

(assert (= (and b!1785486 res!805091) b!1785480))

(assert (= (and b!1785480 res!805090) b!1785501))

(assert (= (and b!1785501 res!805095) b!1785503))

(assert (= (and b!1785503 res!805100) b!1785509))

(assert (= (and b!1785509 res!805098) b!1785507))

(assert (= (and b!1785507 (not res!805087)) b!1785496))

(assert (= (and b!1785496 (not res!805092)) b!1785491))

(assert (= (and b!1785491 (not res!805099)) b!1785478))

(assert (= (and b!1785478 res!805097) b!1785481))

(assert (= (and b!1785481 res!805094) b!1785485))

(assert (= (and b!1785478 (not res!805089)) b!1785484))

(assert (= (and b!1785484 (not res!805102)) b!1785504))

(assert (= (and b!1785504 (not res!805085)) b!1785495))

(assert (= (and b!1785495 (not res!805106)) b!1785475))

(assert (= (and b!1785475 (not res!805093)) b!1785511))

(assert (= (and b!1785511 (not res!805088)) b!1785497))

(assert (= (and b!1785497 (not res!805101)) b!1785510))

(assert (= (and b!1785510 c!290382) b!1785483))

(assert (= (and b!1785510 (not c!290382)) b!1785493))

(assert (= (and b!1785510 (not res!805104)) b!1785505))

(assert (= (and b!1785505 c!290383) b!1785498))

(assert (= (and b!1785505 (not c!290383)) b!1785477))

(assert (= (and b!1785505 (not res!805108)) b!1785479))

(assert (= (and b!1785479 (not res!805096)) b!1785488))

(assert (= (and b!1785488 (not res!805103)) b!1785502))

(assert (= (and start!177894 ((_ is Cons!19680) suffix!1421)) b!1785476))

(assert (= b!1785490 b!1785499))

(assert (= start!177894 b!1785490))

(assert (= b!1785500 b!1785492))

(assert (= b!1785487 b!1785500))

(assert (= start!177894 b!1785487))

(assert (= b!1785489 b!1785506))

(assert (= b!1785494 b!1785489))

(assert (= (and start!177894 ((_ is Cons!19681) rules!3447)) b!1785494))

(declare-fun b_lambda!58583 () Bool)

(assert (=> (not b_lambda!58583) (not b!1785475)))

(declare-fun tb!108691 () Bool)

(declare-fun t!167031 () Bool)

(assert (=> (and b!1785492 (= (toChars!4913 (transformation!3527 (rule!5615 token!523))) (toChars!4913 (transformation!3527 (rule!5615 (_1!11037 lt!694950))))) t!167031) tb!108691))

(declare-fun b!1785527 () Bool)

(declare-fun e!1142698 () Bool)

(declare-fun tp!505101 () Bool)

(declare-fun inv!25626 (Conc!6547) Bool)

(assert (=> b!1785527 (= e!1142698 (and (inv!25626 (c!290385 (dynLambda!9698 (toChars!4913 (transformation!3527 (rule!5615 (_1!11037 lt!694950)))) (value!110192 (_1!11037 lt!694950))))) tp!505101))))

(declare-fun result!130774 () Bool)

(declare-fun inv!25627 (BalanceConc!13038) Bool)

(assert (=> tb!108691 (= result!130774 (and (inv!25627 (dynLambda!9698 (toChars!4913 (transformation!3527 (rule!5615 (_1!11037 lt!694950)))) (value!110192 (_1!11037 lt!694950)))) e!1142698))))

(assert (= tb!108691 b!1785527))

(declare-fun m!2208803 () Bool)

(assert (=> b!1785527 m!2208803))

(declare-fun m!2208805 () Bool)

(assert (=> tb!108691 m!2208805))

(assert (=> b!1785475 t!167031))

(declare-fun b_and!137335 () Bool)

(assert (= b_and!137325 (and (=> t!167031 result!130774) b_and!137335)))

(declare-fun t!167033 () Bool)

(declare-fun tb!108693 () Bool)

(assert (=> (and b!1785506 (= (toChars!4913 (transformation!3527 (h!25082 rules!3447))) (toChars!4913 (transformation!3527 (rule!5615 (_1!11037 lt!694950))))) t!167033) tb!108693))

(declare-fun result!130778 () Bool)

(assert (= result!130778 result!130774))

(assert (=> b!1785475 t!167033))

(declare-fun b_and!137337 () Bool)

(assert (= b_and!137329 (and (=> t!167033 result!130778) b_and!137337)))

(declare-fun t!167035 () Bool)

(declare-fun tb!108695 () Bool)

(assert (=> (and b!1785499 (= (toChars!4913 (transformation!3527 rule!422)) (toChars!4913 (transformation!3527 (rule!5615 (_1!11037 lt!694950))))) t!167035) tb!108695))

(declare-fun result!130780 () Bool)

(assert (= result!130780 result!130774))

(assert (=> b!1785475 t!167035))

(declare-fun b_and!137339 () Bool)

(assert (= b_and!137333 (and (=> t!167035 result!130780) b_and!137339)))

(declare-fun b_lambda!58585 () Bool)

(assert (=> (not b_lambda!58585) (not b!1785495)))

(declare-fun tb!108697 () Bool)

(declare-fun t!167037 () Bool)

(assert (=> (and b!1785492 (= (toChars!4913 (transformation!3527 (rule!5615 token!523))) (toChars!4913 (transformation!3527 (rule!5615 (_1!11037 lt!694950))))) t!167037) tb!108697))

(declare-fun b!1785528 () Bool)

(declare-fun e!1142699 () Bool)

(declare-fun tp!505102 () Bool)

(assert (=> b!1785528 (= e!1142699 (and (inv!25626 (c!290385 (dynLambda!9698 (toChars!4913 (transformation!3527 (rule!5615 (_1!11037 lt!694950)))) (dynLambda!9699 (toValue!5054 (transformation!3527 (rule!5615 (_1!11037 lt!694950)))) lt!694931)))) tp!505102))))

(declare-fun result!130782 () Bool)

(assert (=> tb!108697 (= result!130782 (and (inv!25627 (dynLambda!9698 (toChars!4913 (transformation!3527 (rule!5615 (_1!11037 lt!694950)))) (dynLambda!9699 (toValue!5054 (transformation!3527 (rule!5615 (_1!11037 lt!694950)))) lt!694931))) e!1142699))))

(assert (= tb!108697 b!1785528))

(declare-fun m!2208807 () Bool)

(assert (=> b!1785528 m!2208807))

(declare-fun m!2208809 () Bool)

(assert (=> tb!108697 m!2208809))

(assert (=> b!1785495 t!167037))

(declare-fun b_and!137341 () Bool)

(assert (= b_and!137335 (and (=> t!167037 result!130782) b_and!137341)))

(declare-fun tb!108699 () Bool)

(declare-fun t!167039 () Bool)

(assert (=> (and b!1785506 (= (toChars!4913 (transformation!3527 (h!25082 rules!3447))) (toChars!4913 (transformation!3527 (rule!5615 (_1!11037 lt!694950))))) t!167039) tb!108699))

(declare-fun result!130784 () Bool)

(assert (= result!130784 result!130782))

(assert (=> b!1785495 t!167039))

(declare-fun b_and!137343 () Bool)

(assert (= b_and!137337 (and (=> t!167039 result!130784) b_and!137343)))

(declare-fun t!167041 () Bool)

(declare-fun tb!108701 () Bool)

(assert (=> (and b!1785499 (= (toChars!4913 (transformation!3527 rule!422)) (toChars!4913 (transformation!3527 (rule!5615 (_1!11037 lt!694950))))) t!167041) tb!108701))

(declare-fun result!130786 () Bool)

(assert (= result!130786 result!130782))

(assert (=> b!1785495 t!167041))

(declare-fun b_and!137345 () Bool)

(assert (= b_and!137339 (and (=> t!167041 result!130786) b_and!137345)))

(declare-fun b_lambda!58587 () Bool)

(assert (=> (not b_lambda!58587) (not b!1785495)))

(declare-fun tb!108703 () Bool)

(declare-fun t!167043 () Bool)

(assert (=> (and b!1785492 (= (toValue!5054 (transformation!3527 (rule!5615 token!523))) (toValue!5054 (transformation!3527 (rule!5615 (_1!11037 lt!694950))))) t!167043) tb!108703))

(declare-fun result!130788 () Bool)

(assert (=> tb!108703 (= result!130788 (inv!21 (dynLambda!9699 (toValue!5054 (transformation!3527 (rule!5615 (_1!11037 lt!694950)))) lt!694931)))))

(declare-fun m!2208811 () Bool)

(assert (=> tb!108703 m!2208811))

(assert (=> b!1785495 t!167043))

(declare-fun b_and!137347 () Bool)

(assert (= b_and!137323 (and (=> t!167043 result!130788) b_and!137347)))

(declare-fun t!167045 () Bool)

(declare-fun tb!108705 () Bool)

(assert (=> (and b!1785506 (= (toValue!5054 (transformation!3527 (h!25082 rules!3447))) (toValue!5054 (transformation!3527 (rule!5615 (_1!11037 lt!694950))))) t!167045) tb!108705))

(declare-fun result!130792 () Bool)

(assert (= result!130792 result!130788))

(assert (=> b!1785495 t!167045))

(declare-fun b_and!137349 () Bool)

(assert (= b_and!137327 (and (=> t!167045 result!130792) b_and!137349)))

(declare-fun t!167047 () Bool)

(declare-fun tb!108707 () Bool)

(assert (=> (and b!1785499 (= (toValue!5054 (transformation!3527 rule!422)) (toValue!5054 (transformation!3527 (rule!5615 (_1!11037 lt!694950))))) t!167047) tb!108707))

(declare-fun result!130794 () Bool)

(assert (= result!130794 result!130788))

(assert (=> b!1785495 t!167047))

(declare-fun b_and!137351 () Bool)

(assert (= b_and!137331 (and (=> t!167047 result!130794) b_and!137351)))

(declare-fun m!2208813 () Bool)

(assert (=> b!1785479 m!2208813))

(declare-fun m!2208815 () Bool)

(assert (=> b!1785479 m!2208815))

(declare-fun m!2208817 () Bool)

(assert (=> b!1785491 m!2208817))

(declare-fun m!2208819 () Bool)

(assert (=> b!1785491 m!2208819))

(declare-fun m!2208821 () Bool)

(assert (=> b!1785491 m!2208821))

(declare-fun m!2208823 () Bool)

(assert (=> b!1785491 m!2208823))

(declare-fun m!2208825 () Bool)

(assert (=> b!1785483 m!2208825))

(declare-fun m!2208827 () Bool)

(assert (=> b!1785483 m!2208827))

(declare-fun m!2208829 () Bool)

(assert (=> b!1785483 m!2208829))

(declare-fun m!2208831 () Bool)

(assert (=> b!1785483 m!2208831))

(declare-fun m!2208833 () Bool)

(assert (=> b!1785483 m!2208833))

(declare-fun m!2208835 () Bool)

(assert (=> b!1785483 m!2208835))

(declare-fun m!2208837 () Bool)

(assert (=> b!1785483 m!2208837))

(declare-fun m!2208839 () Bool)

(assert (=> b!1785483 m!2208839))

(declare-fun m!2208841 () Bool)

(assert (=> b!1785483 m!2208841))

(declare-fun m!2208843 () Bool)

(assert (=> b!1785483 m!2208843))

(declare-fun m!2208845 () Bool)

(assert (=> b!1785483 m!2208845))

(assert (=> b!1785483 m!2208839))

(declare-fun m!2208847 () Bool)

(assert (=> b!1785498 m!2208847))

(declare-fun m!2208849 () Bool)

(assert (=> b!1785490 m!2208849))

(declare-fun m!2208851 () Bool)

(assert (=> b!1785490 m!2208851))

(declare-fun m!2208853 () Bool)

(assert (=> b!1785484 m!2208853))

(declare-fun m!2208855 () Bool)

(assert (=> b!1785500 m!2208855))

(declare-fun m!2208857 () Bool)

(assert (=> b!1785500 m!2208857))

(declare-fun m!2208859 () Bool)

(assert (=> b!1785478 m!2208859))

(declare-fun m!2208861 () Bool)

(assert (=> b!1785478 m!2208861))

(declare-fun m!2208863 () Bool)

(assert (=> b!1785478 m!2208863))

(declare-fun m!2208865 () Bool)

(assert (=> b!1785478 m!2208865))

(declare-fun m!2208867 () Bool)

(assert (=> b!1785478 m!2208867))

(declare-fun m!2208869 () Bool)

(assert (=> b!1785478 m!2208869))

(assert (=> b!1785478 m!2208865))

(declare-fun m!2208871 () Bool)

(assert (=> b!1785478 m!2208871))

(declare-fun m!2208873 () Bool)

(assert (=> b!1785478 m!2208873))

(declare-fun m!2208875 () Bool)

(assert (=> b!1785478 m!2208875))

(declare-fun m!2208877 () Bool)

(assert (=> b!1785478 m!2208877))

(declare-fun m!2208879 () Bool)

(assert (=> b!1785478 m!2208879))

(declare-fun m!2208881 () Bool)

(assert (=> b!1785478 m!2208881))

(declare-fun m!2208883 () Bool)

(assert (=> b!1785478 m!2208883))

(declare-fun m!2208885 () Bool)

(assert (=> b!1785478 m!2208885))

(declare-fun m!2208887 () Bool)

(assert (=> b!1785478 m!2208887))

(assert (=> b!1785481 m!2208875))

(assert (=> b!1785481 m!2208875))

(declare-fun m!2208889 () Bool)

(assert (=> b!1785481 m!2208889))

(assert (=> b!1785481 m!2208889))

(declare-fun m!2208891 () Bool)

(assert (=> b!1785481 m!2208891))

(declare-fun m!2208893 () Bool)

(assert (=> b!1785481 m!2208893))

(declare-fun m!2208895 () Bool)

(assert (=> b!1785510 m!2208895))

(declare-fun m!2208897 () Bool)

(assert (=> b!1785510 m!2208897))

(declare-fun m!2208899 () Bool)

(assert (=> b!1785510 m!2208899))

(declare-fun m!2208901 () Bool)

(assert (=> start!177894 m!2208901))

(declare-fun m!2208903 () Bool)

(assert (=> b!1785508 m!2208903))

(declare-fun m!2208905 () Bool)

(assert (=> b!1785487 m!2208905))

(declare-fun m!2208907 () Bool)

(assert (=> b!1785502 m!2208907))

(declare-fun m!2208909 () Bool)

(assert (=> b!1785502 m!2208909))

(declare-fun m!2208911 () Bool)

(assert (=> b!1785475 m!2208911))

(declare-fun m!2208913 () Bool)

(assert (=> b!1785497 m!2208913))

(declare-fun m!2208915 () Bool)

(assert (=> b!1785497 m!2208915))

(declare-fun m!2208917 () Bool)

(assert (=> b!1785497 m!2208917))

(declare-fun m!2208919 () Bool)

(assert (=> b!1785497 m!2208919))

(declare-fun m!2208921 () Bool)

(assert (=> b!1785497 m!2208921))

(assert (=> b!1785497 m!2208919))

(declare-fun m!2208923 () Bool)

(assert (=> b!1785497 m!2208923))

(declare-fun m!2208925 () Bool)

(assert (=> b!1785497 m!2208925))

(declare-fun m!2208927 () Bool)

(assert (=> b!1785489 m!2208927))

(declare-fun m!2208929 () Bool)

(assert (=> b!1785489 m!2208929))

(declare-fun m!2208931 () Bool)

(assert (=> b!1785488 m!2208931))

(declare-fun m!2208933 () Bool)

(assert (=> b!1785488 m!2208933))

(declare-fun m!2208935 () Bool)

(assert (=> b!1785486 m!2208935))

(declare-fun m!2208937 () Bool)

(assert (=> b!1785507 m!2208937))

(declare-fun m!2208939 () Bool)

(assert (=> b!1785507 m!2208939))

(declare-fun m!2208941 () Bool)

(assert (=> b!1785507 m!2208941))

(declare-fun m!2208943 () Bool)

(assert (=> b!1785511 m!2208943))

(declare-fun m!2208945 () Bool)

(assert (=> b!1785511 m!2208945))

(declare-fun m!2208947 () Bool)

(assert (=> b!1785511 m!2208947))

(declare-fun m!2208949 () Bool)

(assert (=> b!1785511 m!2208949))

(declare-fun m!2208951 () Bool)

(assert (=> b!1785511 m!2208951))

(assert (=> b!1785511 m!2208949))

(declare-fun m!2208953 () Bool)

(assert (=> b!1785504 m!2208953))

(declare-fun m!2208955 () Bool)

(assert (=> b!1785504 m!2208955))

(declare-fun m!2208957 () Bool)

(assert (=> b!1785480 m!2208957))

(declare-fun m!2208959 () Bool)

(assert (=> b!1785480 m!2208959))

(declare-fun m!2208961 () Bool)

(assert (=> b!1785480 m!2208961))

(declare-fun m!2208963 () Bool)

(assert (=> b!1785480 m!2208963))

(declare-fun m!2208965 () Bool)

(assert (=> b!1785495 m!2208965))

(assert (=> b!1785495 m!2208965))

(declare-fun m!2208967 () Bool)

(assert (=> b!1785495 m!2208967))

(assert (=> b!1785495 m!2208967))

(declare-fun m!2208969 () Bool)

(assert (=> b!1785495 m!2208969))

(declare-fun m!2208971 () Bool)

(assert (=> b!1785495 m!2208971))

(declare-fun m!2208973 () Bool)

(assert (=> b!1785501 m!2208973))

(declare-fun m!2208975 () Bool)

(assert (=> b!1785482 m!2208975))

(declare-fun m!2208977 () Bool)

(assert (=> b!1785496 m!2208977))

(declare-fun m!2208979 () Bool)

(assert (=> b!1785503 m!2208979))

(check-sat (not b_lambda!58587) (not b!1785528) (not b_next!50307) (not b!1785494) (not b!1785484) (not b!1785486) (not b!1785496) (not b!1785487) (not b_lambda!58585) (not b_next!50303) (not b!1785482) (not b!1785495) tp_is_empty!7953 b_and!137347 (not b!1785497) (not b_next!50311) (not b!1785500) b_and!137351 (not b!1785508) (not b!1785490) (not tb!108691) (not b_next!50309) (not start!177894) (not b!1785501) (not b_lambda!58583) (not b!1785527) (not b!1785503) (not b!1785491) (not b!1785478) (not b!1785498) (not b!1785507) (not b!1785502) (not b_next!50313) b_and!137343 (not b!1785510) (not b!1785488) (not b!1785481) (not b!1785511) (not tb!108697) (not b!1785504) (not b!1785489) (not b!1785483) b_and!137349 (not b!1785479) b_and!137341 (not b!1785476) b_and!137345 (not b_next!50305) (not b!1785480) (not tb!108703))
(check-sat b_and!137347 (not b_next!50311) b_and!137351 (not b_next!50309) (not b_next!50307) (not b_next!50303) (not b_next!50313) b_and!137343 b_and!137349 b_and!137341 b_and!137345 (not b_next!50305))
