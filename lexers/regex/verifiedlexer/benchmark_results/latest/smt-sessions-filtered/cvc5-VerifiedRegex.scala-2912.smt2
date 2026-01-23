; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!170524 () Bool)

(assert start!170524)

(declare-fun b!1734350 () Bool)

(declare-fun b_free!47551 () Bool)

(declare-fun b_next!48255 () Bool)

(assert (=> b!1734350 (= b_free!47551 (not b_next!48255))))

(declare-fun tp!494407 () Bool)

(declare-fun b_and!128269 () Bool)

(assert (=> b!1734350 (= tp!494407 b_and!128269)))

(declare-fun b_free!47553 () Bool)

(declare-fun b_next!48257 () Bool)

(assert (=> b!1734350 (= b_free!47553 (not b_next!48257))))

(declare-fun tp!494409 () Bool)

(declare-fun b_and!128271 () Bool)

(assert (=> b!1734350 (= tp!494409 b_and!128271)))

(declare-fun b!1734364 () Bool)

(declare-fun b_free!47555 () Bool)

(declare-fun b_next!48259 () Bool)

(assert (=> b!1734364 (= b_free!47555 (not b_next!48259))))

(declare-fun tp!494412 () Bool)

(declare-fun b_and!128273 () Bool)

(assert (=> b!1734364 (= tp!494412 b_and!128273)))

(declare-fun b_free!47557 () Bool)

(declare-fun b_next!48261 () Bool)

(assert (=> b!1734364 (= b_free!47557 (not b_next!48261))))

(declare-fun tp!494415 () Bool)

(declare-fun b_and!128275 () Bool)

(assert (=> b!1734364 (= tp!494415 b_and!128275)))

(declare-fun b!1734358 () Bool)

(declare-fun b_free!47559 () Bool)

(declare-fun b_next!48263 () Bool)

(assert (=> b!1734358 (= b_free!47559 (not b_next!48263))))

(declare-fun tp!494413 () Bool)

(declare-fun b_and!128277 () Bool)

(assert (=> b!1734358 (= tp!494413 b_and!128277)))

(declare-fun b_free!47561 () Bool)

(declare-fun b_next!48265 () Bool)

(assert (=> b!1734358 (= b_free!47561 (not b_next!48265))))

(declare-fun tp!494410 () Bool)

(declare-fun b_and!128279 () Bool)

(assert (=> b!1734358 (= tp!494410 b_and!128279)))

(declare-fun b!1734389 () Bool)

(declare-fun e!1109879 () Bool)

(assert (=> b!1734389 (= e!1109879 true)))

(declare-fun b!1734388 () Bool)

(declare-fun e!1109878 () Bool)

(assert (=> b!1734388 (= e!1109878 e!1109879)))

(declare-fun b!1734387 () Bool)

(declare-fun e!1109877 () Bool)

(assert (=> b!1734387 (= e!1109877 e!1109878)))

(declare-fun b!1734349 () Bool)

(assert (=> b!1734349 e!1109877))

(assert (= b!1734388 b!1734389))

(assert (= b!1734387 b!1734388))

(assert (= b!1734349 b!1734387))

(declare-datatypes ((List!19106 0))(
  ( (Nil!19036) (Cons!19036 (h!24437 (_ BitVec 16)) (t!161155 List!19106)) )
))
(declare-datatypes ((TokenValue!3474 0))(
  ( (FloatLiteralValue!6948 (text!24763 List!19106)) (TokenValueExt!3473 (__x!12250 Int)) (Broken!17370 (value!106092 List!19106)) (Object!3543) (End!3474) (Def!3474) (Underscore!3474) (Match!3474) (Else!3474) (Error!3474) (Case!3474) (If!3474) (Extends!3474) (Abstract!3474) (Class!3474) (Val!3474) (DelimiterValue!6948 (del!3534 List!19106)) (KeywordValue!3480 (value!106093 List!19106)) (CommentValue!6948 (value!106094 List!19106)) (WhitespaceValue!6948 (value!106095 List!19106)) (IndentationValue!3474 (value!106096 List!19106)) (String!21703) (Int32!3474) (Broken!17371 (value!106097 List!19106)) (Boolean!3475) (Unit!32925) (OperatorValue!3477 (op!3534 List!19106)) (IdentifierValue!6948 (value!106098 List!19106)) (IdentifierValue!6949 (value!106099 List!19106)) (WhitespaceValue!6949 (value!106100 List!19106)) (True!6948) (False!6948) (Broken!17372 (value!106101 List!19106)) (Broken!17373 (value!106102 List!19106)) (True!6949) (RightBrace!3474) (RightBracket!3474) (Colon!3474) (Null!3474) (Comma!3474) (LeftBracket!3474) (False!6949) (LeftBrace!3474) (ImaginaryLiteralValue!3474 (text!24764 List!19106)) (StringLiteralValue!10422 (value!106103 List!19106)) (EOFValue!3474 (value!106104 List!19106)) (IdentValue!3474 (value!106105 List!19106)) (DelimiterValue!6949 (value!106106 List!19106)) (DedentValue!3474 (value!106107 List!19106)) (NewLineValue!3474 (value!106108 List!19106)) (IntegerValue!10422 (value!106109 (_ BitVec 32)) (text!24765 List!19106)) (IntegerValue!10423 (value!106110 Int) (text!24766 List!19106)) (Times!3474) (Or!3474) (Equal!3474) (Minus!3474) (Broken!17374 (value!106111 List!19106)) (And!3474) (Div!3474) (LessEqual!3474) (Mod!3474) (Concat!8186) (Not!3474) (Plus!3474) (SpaceValue!3474 (value!106112 List!19106)) (IntegerValue!10424 (value!106113 Int) (text!24767 List!19106)) (StringLiteralValue!10423 (text!24768 List!19106)) (FloatLiteralValue!6949 (text!24769 List!19106)) (BytesLiteralValue!3474 (value!106114 List!19106)) (CommentValue!6949 (value!106115 List!19106)) (StringLiteralValue!10424 (value!106116 List!19106)) (ErrorTokenValue!3474 (msg!3535 List!19106)) )
))
(declare-datatypes ((C!9598 0))(
  ( (C!9599 (val!5395 Int)) )
))
(declare-datatypes ((List!19107 0))(
  ( (Nil!19037) (Cons!19037 (h!24438 C!9598) (t!161156 List!19107)) )
))
(declare-datatypes ((String!21704 0))(
  ( (String!21705 (value!106117 String)) )
))
(declare-datatypes ((Regex!4712 0))(
  ( (ElementMatch!4712 (c!283143 C!9598)) (Concat!8187 (regOne!9936 Regex!4712) (regTwo!9936 Regex!4712)) (EmptyExpr!4712) (Star!4712 (reg!5041 Regex!4712)) (EmptyLang!4712) (Union!4712 (regOne!9937 Regex!4712) (regTwo!9937 Regex!4712)) )
))
(declare-datatypes ((IArray!12669 0))(
  ( (IArray!12670 (innerList!6392 List!19107)) )
))
(declare-datatypes ((Conc!6332 0))(
  ( (Node!6332 (left!15216 Conc!6332) (right!15546 Conc!6332) (csize!12894 Int) (cheight!6543 Int)) (Leaf!9245 (xs!9208 IArray!12669) (csize!12895 Int)) (Empty!6332) )
))
(declare-datatypes ((BalanceConc!12608 0))(
  ( (BalanceConc!12609 (c!283144 Conc!6332)) )
))
(declare-datatypes ((TokenValueInjection!6608 0))(
  ( (TokenValueInjection!6609 (toValue!4891 Int) (toChars!4750 Int)) )
))
(declare-datatypes ((Rule!6568 0))(
  ( (Rule!6569 (regex!3384 Regex!4712) (tag!3714 String!21704) (isSeparator!3384 Bool) (transformation!3384 TokenValueInjection!6608)) )
))
(declare-datatypes ((Token!6334 0))(
  ( (Token!6335 (value!106118 TokenValue!3474) (rule!5370 Rule!6568) (size!15129 Int) (originalCharacters!4198 List!19107)) )
))
(declare-datatypes ((tuple2!18704 0))(
  ( (tuple2!18705 (_1!10754 Token!6334) (_2!10754 List!19107)) )
))
(declare-fun lt!666541 () tuple2!18704)

(declare-fun order!11799 () Int)

(declare-fun order!11797 () Int)

(declare-fun lambda!69455 () Int)

(declare-fun dynLambda!8927 (Int Int) Int)

(declare-fun dynLambda!8928 (Int Int) Int)

(assert (=> b!1734389 (< (dynLambda!8927 order!11797 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) (dynLambda!8928 order!11799 lambda!69455))))

(declare-fun order!11801 () Int)

(declare-fun dynLambda!8929 (Int Int) Int)

(assert (=> b!1734389 (< (dynLambda!8929 order!11801 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) (dynLambda!8928 order!11799 lambda!69455))))

(declare-fun b!1734343 () Bool)

(declare-fun e!1109845 () Bool)

(declare-fun lt!666583 () Rule!6568)

(assert (=> b!1734343 (= e!1109845 (= (rule!5370 (_1!10754 lt!666541)) lt!666583))))

(declare-fun b!1734344 () Bool)

(declare-datatypes ((Unit!32926 0))(
  ( (Unit!32927) )
))
(declare-fun e!1109842 () Unit!32926)

(declare-fun Unit!32928 () Unit!32926)

(assert (=> b!1734344 (= e!1109842 Unit!32928)))

(declare-fun b!1734345 () Bool)

(declare-fun e!1109856 () Unit!32926)

(declare-fun Unit!32929 () Unit!32926)

(assert (=> b!1734345 (= e!1109856 Unit!32929)))

(declare-fun b!1734346 () Bool)

(declare-fun e!1109869 () Bool)

(declare-fun e!1109859 () Bool)

(assert (=> b!1734346 (= e!1109869 (not e!1109859))))

(declare-fun res!779249 () Bool)

(assert (=> b!1734346 (=> res!779249 e!1109859)))

(declare-fun rule!422 () Rule!6568)

(declare-fun lt!666572 () List!19107)

(declare-fun matchR!2186 (Regex!4712 List!19107) Bool)

(assert (=> b!1734346 (= res!779249 (not (matchR!2186 (regex!3384 rule!422) lt!666572)))))

(declare-datatypes ((LexerInterface!3013 0))(
  ( (LexerInterfaceExt!3010 (__x!12251 Int)) (Lexer!3011) )
))
(declare-fun thiss!24550 () LexerInterface!3013)

(declare-fun ruleValid!883 (LexerInterface!3013 Rule!6568) Bool)

(assert (=> b!1734346 (ruleValid!883 thiss!24550 rule!422)))

(declare-datatypes ((List!19108 0))(
  ( (Nil!19038) (Cons!19038 (h!24439 Rule!6568) (t!161157 List!19108)) )
))
(declare-fun rules!3447 () List!19108)

(declare-fun lt!666555 () Unit!32926)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!407 (LexerInterface!3013 Rule!6568 List!19108) Unit!32926)

(assert (=> b!1734346 (= lt!666555 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!407 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1734347 () Bool)

(declare-fun res!779251 () Bool)

(assert (=> b!1734347 (=> (not res!779251) (not e!1109869))))

(declare-fun token!523 () Token!6334)

(assert (=> b!1734347 (= res!779251 (= (rule!5370 token!523) rule!422))))

(declare-fun b!1734348 () Bool)

(declare-fun e!1109868 () Bool)

(declare-fun e!1109861 () Bool)

(assert (=> b!1734348 (= e!1109868 e!1109861)))

(declare-fun res!779255 () Bool)

(assert (=> b!1734348 (=> res!779255 e!1109861)))

(declare-fun lt!666542 () List!19107)

(declare-fun lt!666556 () TokenValue!3474)

(declare-datatypes ((Option!3792 0))(
  ( (None!3791) (Some!3791 (v!25214 tuple2!18704)) )
))
(declare-fun lt!666552 () Option!3792)

(declare-fun lt!666545 () Int)

(assert (=> b!1734348 (= res!779255 (not (= lt!666552 (Some!3791 (tuple2!18705 (Token!6335 lt!666556 (rule!5370 (_1!10754 lt!666541)) lt!666545 lt!666542) (_2!10754 lt!666541))))))))

(declare-fun lt!666568 () BalanceConc!12608)

(declare-fun size!15130 (BalanceConc!12608) Int)

(assert (=> b!1734348 (= lt!666545 (size!15130 lt!666568))))

(declare-fun apply!5189 (TokenValueInjection!6608 BalanceConc!12608) TokenValue!3474)

(assert (=> b!1734348 (= lt!666556 (apply!5189 (transformation!3384 (rule!5370 (_1!10754 lt!666541))) lt!666568))))

(declare-fun lt!666554 () Unit!32926)

(declare-fun lemmaCharactersSize!456 (Token!6334) Unit!32926)

(assert (=> b!1734348 (= lt!666554 (lemmaCharactersSize!456 (_1!10754 lt!666541)))))

(declare-fun lt!666557 () Unit!32926)

(declare-fun lemmaEqSameImage!309 (TokenValueInjection!6608 BalanceConc!12608 BalanceConc!12608) Unit!32926)

(declare-fun seqFromList!2358 (List!19107) BalanceConc!12608)

(assert (=> b!1734348 (= lt!666557 (lemmaEqSameImage!309 (transformation!3384 (rule!5370 (_1!10754 lt!666541))) lt!666568 (seqFromList!2358 (originalCharacters!4198 (_1!10754 lt!666541)))))))

(declare-fun e!1109852 () Bool)

(declare-fun e!1109865 () Bool)

(assert (=> b!1734349 (= e!1109852 e!1109865)))

(declare-fun res!779245 () Bool)

(assert (=> b!1734349 (=> res!779245 e!1109865)))

(declare-fun Forall!759 (Int) Bool)

(assert (=> b!1734349 (= res!779245 (not (Forall!759 lambda!69455)))))

(declare-fun lt!666551 () Unit!32926)

(declare-fun lemmaInv!591 (TokenValueInjection!6608) Unit!32926)

(assert (=> b!1734349 (= lt!666551 (lemmaInv!591 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))))))

(declare-fun e!1109862 () Bool)

(assert (=> b!1734350 (= e!1109862 (and tp!494407 tp!494409))))

(declare-fun b!1734351 () Bool)

(declare-fun res!779261 () Bool)

(assert (=> b!1734351 (=> (not res!779261) (not e!1109869))))

(declare-fun lt!666577 () tuple2!18704)

(declare-fun isEmpty!11979 (List!19107) Bool)

(assert (=> b!1734351 (= res!779261 (isEmpty!11979 (_2!10754 lt!666577)))))

(declare-fun b!1734352 () Bool)

(declare-fun res!779257 () Bool)

(assert (=> b!1734352 (=> res!779257 e!1109868)))

(declare-fun dynLambda!8930 (Int TokenValue!3474) BalanceConc!12608)

(assert (=> b!1734352 (= res!779257 (not (= lt!666568 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541))))))))

(declare-fun res!779248 () Bool)

(declare-fun e!1109851 () Bool)

(assert (=> start!170524 (=> (not res!779248) (not e!1109851))))

(assert (=> start!170524 (= res!779248 (is-Lexer!3011 thiss!24550))))

(assert (=> start!170524 e!1109851))

(declare-fun e!1109860 () Bool)

(assert (=> start!170524 e!1109860))

(declare-fun e!1109855 () Bool)

(assert (=> start!170524 e!1109855))

(assert (=> start!170524 true))

(declare-fun e!1109843 () Bool)

(declare-fun inv!24646 (Token!6334) Bool)

(assert (=> start!170524 (and (inv!24646 token!523) e!1109843)))

(declare-fun e!1109848 () Bool)

(assert (=> start!170524 e!1109848))

(declare-fun e!1109847 () Bool)

(declare-fun e!1109849 () Bool)

(declare-fun tp!494408 () Bool)

(declare-fun b!1734353 () Bool)

(declare-fun inv!24643 (String!21704) Bool)

(declare-fun inv!24647 (TokenValueInjection!6608) Bool)

(assert (=> b!1734353 (= e!1109849 (and tp!494408 (inv!24643 (tag!3714 (h!24439 rules!3447))) (inv!24647 (transformation!3384 (h!24439 rules!3447))) e!1109847))))

(declare-fun b!1734354 () Bool)

(declare-fun e!1109870 () Bool)

(declare-fun contains!3406 (List!19108 Rule!6568) Bool)

(assert (=> b!1734354 (= e!1109870 (contains!3406 rules!3447 (rule!5370 (_1!10754 lt!666541))))))

(declare-fun b!1734355 () Bool)

(declare-fun e!1109863 () Bool)

(assert (=> b!1734355 (= e!1109863 e!1109869)))

(declare-fun res!779254 () Bool)

(assert (=> b!1734355 (=> (not res!779254) (not e!1109869))))

(assert (=> b!1734355 (= res!779254 (= (_1!10754 lt!666577) token!523))))

(declare-fun lt!666580 () Option!3792)

(declare-fun get!5702 (Option!3792) tuple2!18704)

(assert (=> b!1734355 (= lt!666577 (get!5702 lt!666580))))

(declare-fun b!1734356 () Bool)

(declare-fun e!1109857 () Bool)

(assert (=> b!1734356 (= e!1109857 e!1109845)))

(declare-fun res!779250 () Bool)

(assert (=> b!1734356 (=> (not res!779250) (not e!1109845))))

(declare-fun list!7697 (BalanceConc!12608) List!19107)

(declare-fun charsOf!2033 (Token!6334) BalanceConc!12608)

(assert (=> b!1734356 (= res!779250 (matchR!2186 (regex!3384 lt!666583) (list!7697 (charsOf!2033 (_1!10754 lt!666541)))))))

(declare-datatypes ((Option!3793 0))(
  ( (None!3792) (Some!3792 (v!25215 Rule!6568)) )
))
(declare-fun lt!666548 () Option!3793)

(declare-fun get!5703 (Option!3793) Rule!6568)

(assert (=> b!1734356 (= lt!666583 (get!5703 lt!666548))))

(declare-fun b!1734357 () Bool)

(declare-fun res!779243 () Bool)

(assert (=> b!1734357 (=> (not res!779243) (not e!1109851))))

(declare-fun isEmpty!11980 (List!19108) Bool)

(assert (=> b!1734357 (= res!779243 (not (isEmpty!11980 rules!3447)))))

(declare-fun e!1109846 () Bool)

(assert (=> b!1734358 (= e!1109846 (and tp!494413 tp!494410))))

(declare-fun b!1734359 () Bool)

(declare-fun Unit!32930 () Unit!32926)

(assert (=> b!1734359 (= e!1109842 Unit!32930)))

(declare-fun lt!666575 () Unit!32926)

(declare-fun lt!666570 () List!19107)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!133 (LexerInterface!3013 List!19108 List!19107 Token!6334 Rule!6568 List!19107) Unit!32926)

(assert (=> b!1734359 (= lt!666575 (lemmaMaxPrefixThenMatchesRulesRegex!133 thiss!24550 rules!3447 lt!666570 (_1!10754 lt!666541) (rule!5370 (_1!10754 lt!666541)) (_2!10754 lt!666541)))))

(declare-fun lt!666574 () Regex!4712)

(assert (=> b!1734359 (matchR!2186 lt!666574 lt!666542)))

(declare-fun lt!666544 () List!19107)

(declare-fun getSuffix!819 (List!19107 List!19107) List!19107)

(assert (=> b!1734359 (= lt!666544 (getSuffix!819 lt!666570 lt!666572))))

(declare-fun suffix!1421 () List!19107)

(declare-fun lt!666569 () Unit!32926)

(declare-fun lemmaSamePrefixThenSameSuffix!769 (List!19107 List!19107 List!19107 List!19107 List!19107) Unit!32926)

(assert (=> b!1734359 (= lt!666569 (lemmaSamePrefixThenSameSuffix!769 lt!666572 suffix!1421 lt!666572 lt!666544 lt!666570))))

(assert (=> b!1734359 (= suffix!1421 lt!666544)))

(declare-fun lt!666582 () Unit!32926)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!220 (List!19107 List!19107) Unit!32926)

(assert (=> b!1734359 (= lt!666582 (lemmaAddHeadSuffixToPrefixStillPrefix!220 lt!666572 lt!666570))))

(declare-fun isPrefix!1625 (List!19107 List!19107) Bool)

(declare-fun ++!5209 (List!19107 List!19107) List!19107)

(declare-fun head!3957 (List!19107) C!9598)

(assert (=> b!1734359 (isPrefix!1625 (++!5209 lt!666572 (Cons!19037 (head!3957 lt!666544) Nil!19037)) lt!666570)))

(declare-fun lt!666543 () List!19107)

(declare-fun lt!666549 () Unit!32926)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!100 (List!19107 List!19107 List!19107) Unit!32926)

(assert (=> b!1734359 (= lt!666549 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!100 lt!666542 lt!666543 lt!666570))))

(assert (=> b!1734359 (isPrefix!1625 lt!666543 lt!666542)))

(declare-fun lt!666547 () Unit!32926)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!93 (Regex!4712 List!19107 List!19107) Unit!32926)

(assert (=> b!1734359 (= lt!666547 (lemmaNotPrefixMatchThenCannotMatchLonger!93 lt!666574 lt!666543 lt!666542))))

(assert (=> b!1734359 false))

(declare-fun b!1734360 () Bool)

(assert (=> b!1734360 (= e!1109851 e!1109863)))

(declare-fun res!779258 () Bool)

(assert (=> b!1734360 (=> (not res!779258) (not e!1109863))))

(declare-fun isDefined!3135 (Option!3792) Bool)

(assert (=> b!1734360 (= res!779258 (isDefined!3135 lt!666580))))

(declare-fun maxPrefix!1567 (LexerInterface!3013 List!19108 List!19107) Option!3792)

(assert (=> b!1734360 (= lt!666580 (maxPrefix!1567 thiss!24550 rules!3447 lt!666572))))

(declare-fun lt!666559 () BalanceConc!12608)

(assert (=> b!1734360 (= lt!666572 (list!7697 lt!666559))))

(assert (=> b!1734360 (= lt!666559 (charsOf!2033 token!523))))

(declare-fun b!1734361 () Bool)

(declare-fun e!1109858 () Bool)

(declare-fun tp!494411 () Bool)

(assert (=> b!1734361 (= e!1109858 (and tp!494411 (inv!24643 (tag!3714 (rule!5370 token!523))) (inv!24647 (transformation!3384 (rule!5370 token!523))) e!1109862))))

(declare-fun b!1734362 () Bool)

(declare-fun e!1109850 () Bool)

(assert (=> b!1734362 (= e!1109859 e!1109850)))

(declare-fun res!779259 () Bool)

(assert (=> b!1734362 (=> res!779259 e!1109850)))

(declare-fun prefixMatch!597 (Regex!4712 List!19107) Bool)

(assert (=> b!1734362 (= res!779259 (prefixMatch!597 lt!666574 lt!666543))))

(assert (=> b!1734362 (= lt!666543 (++!5209 lt!666572 (Cons!19037 (head!3957 suffix!1421) Nil!19037)))))

(declare-fun rulesRegex!742 (LexerInterface!3013 List!19108) Regex!4712)

(assert (=> b!1734362 (= lt!666574 (rulesRegex!742 thiss!24550 rules!3447))))

(declare-fun b!1734363 () Bool)

(declare-fun e!1109866 () Bool)

(assert (=> b!1734363 (= e!1109866 e!1109870)))

(declare-fun res!779252 () Bool)

(assert (=> b!1734363 (=> res!779252 e!1109870)))

(assert (=> b!1734363 (= res!779252 (= (rule!5370 (_1!10754 lt!666541)) (rule!5370 token!523)))))

(assert (=> b!1734363 (= suffix!1421 (_2!10754 lt!666541))))

(declare-fun lt!666571 () Unit!32926)

(assert (=> b!1734363 (= lt!666571 (lemmaSamePrefixThenSameSuffix!769 lt!666572 suffix!1421 lt!666572 (_2!10754 lt!666541) lt!666570))))

(assert (=> b!1734363 (= lt!666542 lt!666572)))

(declare-fun lt!666578 () Unit!32926)

(declare-fun lemmaIsPrefixSameLengthThenSameList!212 (List!19107 List!19107 List!19107) Unit!32926)

(assert (=> b!1734363 (= lt!666578 (lemmaIsPrefixSameLengthThenSameList!212 lt!666542 lt!666572 lt!666570))))

(assert (=> b!1734364 (= e!1109847 (and tp!494412 tp!494415))))

(declare-fun b!1734365 () Bool)

(declare-fun Unit!32931 () Unit!32926)

(assert (=> b!1734365 (= e!1109856 Unit!32931)))

(declare-fun lt!666579 () Unit!32926)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!181 (LexerInterface!3013 List!19108 Rule!6568 List!19107 List!19107 List!19107 Rule!6568) Unit!32926)

(assert (=> b!1734365 (= lt!666579 (lemmaMaxPrefixOutputsMaxPrefix!181 thiss!24550 rules!3447 (rule!5370 (_1!10754 lt!666541)) lt!666542 lt!666570 lt!666572 rule!422))))

(assert (=> b!1734365 false))

(declare-fun b!1734366 () Bool)

(declare-fun tp!494416 () Bool)

(assert (=> b!1734366 (= e!1109855 (and tp!494416 (inv!24643 (tag!3714 rule!422)) (inv!24647 (transformation!3384 rule!422)) e!1109846))))

(declare-fun b!1734367 () Bool)

(assert (=> b!1734367 (= e!1109865 e!1109868)))

(declare-fun res!779241 () Bool)

(assert (=> b!1734367 (=> res!779241 e!1109868)))

(declare-fun dynLambda!8931 (Int BalanceConc!12608) TokenValue!3474)

(assert (=> b!1734367 (= res!779241 (not (= (list!7697 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568))) lt!666542)))))

(declare-fun lt!666562 () Unit!32926)

(declare-fun lemmaSemiInverse!530 (TokenValueInjection!6608 BalanceConc!12608) Unit!32926)

(assert (=> b!1734367 (= lt!666562 (lemmaSemiInverse!530 (transformation!3384 (rule!5370 (_1!10754 lt!666541))) lt!666568))))

(declare-fun b!1734368 () Bool)

(declare-fun e!1109844 () Bool)

(assert (=> b!1734368 (= e!1109844 e!1109866)))

(declare-fun res!779246 () Bool)

(assert (=> b!1734368 (=> res!779246 e!1109866)))

(declare-fun lt!666567 () Int)

(assert (=> b!1734368 (= res!779246 (not (= lt!666545 lt!666567)))))

(declare-fun lt!666565 () Unit!32926)

(assert (=> b!1734368 (= lt!666565 e!1109856)))

(declare-fun c!283142 () Bool)

(assert (=> b!1734368 (= c!283142 (< lt!666545 lt!666567))))

(declare-fun b!1734369 () Bool)

(declare-fun e!1109864 () Bool)

(assert (=> b!1734369 (= e!1109864 e!1109844)))

(declare-fun res!779260 () Bool)

(assert (=> b!1734369 (=> res!779260 e!1109844)))

(declare-fun lt!666560 () Bool)

(assert (=> b!1734369 (= res!779260 lt!666560)))

(declare-fun lt!666566 () Unit!32926)

(assert (=> b!1734369 (= lt!666566 e!1109842)))

(declare-fun c!283141 () Bool)

(assert (=> b!1734369 (= c!283141 lt!666560)))

(assert (=> b!1734369 (= lt!666560 (> lt!666545 lt!666567))))

(assert (=> b!1734369 (= lt!666567 (size!15130 lt!666559))))

(assert (=> b!1734369 (matchR!2186 lt!666574 lt!666572)))

(declare-fun lt!666550 () Unit!32926)

(assert (=> b!1734369 (= lt!666550 (lemmaMaxPrefixThenMatchesRulesRegex!133 thiss!24550 rules!3447 lt!666572 token!523 rule!422 Nil!19037))))

(declare-fun tp!494406 () Bool)

(declare-fun b!1734370 () Bool)

(declare-fun inv!21 (TokenValue!3474) Bool)

(assert (=> b!1734370 (= e!1109843 (and (inv!21 (value!106118 token!523)) e!1109858 tp!494406))))

(declare-fun b!1734371 () Bool)

(declare-fun tp_is_empty!7667 () Bool)

(declare-fun tp!494405 () Bool)

(assert (=> b!1734371 (= e!1109860 (and tp_is_empty!7667 tp!494405))))

(declare-fun b!1734372 () Bool)

(assert (=> b!1734372 (= e!1109850 e!1109852)))

(declare-fun res!779256 () Bool)

(assert (=> b!1734372 (=> res!779256 e!1109852)))

(assert (=> b!1734372 (= res!779256 (not (isPrefix!1625 lt!666542 lt!666570)))))

(assert (=> b!1734372 (isPrefix!1625 lt!666542 (++!5209 lt!666542 (_2!10754 lt!666541)))))

(declare-fun lt!666561 () Unit!32926)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1135 (List!19107 List!19107) Unit!32926)

(assert (=> b!1734372 (= lt!666561 (lemmaConcatTwoListThenFirstIsPrefix!1135 lt!666542 (_2!10754 lt!666541)))))

(assert (=> b!1734372 (= lt!666542 (list!7697 lt!666568))))

(assert (=> b!1734372 (= lt!666568 (charsOf!2033 (_1!10754 lt!666541)))))

(assert (=> b!1734372 e!1109857))

(declare-fun res!779262 () Bool)

(assert (=> b!1734372 (=> (not res!779262) (not e!1109857))))

(declare-fun isDefined!3136 (Option!3793) Bool)

(assert (=> b!1734372 (= res!779262 (isDefined!3136 lt!666548))))

(declare-fun getRuleFromTag!434 (LexerInterface!3013 List!19108 String!21704) Option!3793)

(assert (=> b!1734372 (= lt!666548 (getRuleFromTag!434 thiss!24550 rules!3447 (tag!3714 (rule!5370 (_1!10754 lt!666541)))))))

(declare-fun lt!666563 () Unit!32926)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!434 (LexerInterface!3013 List!19108 List!19107 Token!6334) Unit!32926)

(assert (=> b!1734372 (= lt!666563 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!434 thiss!24550 rules!3447 lt!666570 (_1!10754 lt!666541)))))

(assert (=> b!1734372 (= lt!666541 (get!5702 lt!666552))))

(declare-fun lt!666584 () Unit!32926)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!537 (LexerInterface!3013 List!19108 List!19107 List!19107) Unit!32926)

(assert (=> b!1734372 (= lt!666584 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!537 thiss!24550 rules!3447 lt!666572 suffix!1421))))

(assert (=> b!1734372 (= lt!666552 (maxPrefix!1567 thiss!24550 rules!3447 lt!666570))))

(assert (=> b!1734372 (isPrefix!1625 lt!666572 lt!666570)))

(declare-fun lt!666581 () Unit!32926)

(assert (=> b!1734372 (= lt!666581 (lemmaConcatTwoListThenFirstIsPrefix!1135 lt!666572 suffix!1421))))

(assert (=> b!1734372 (= lt!666570 (++!5209 lt!666572 suffix!1421))))

(declare-fun b!1734373 () Bool)

(declare-fun res!779263 () Bool)

(assert (=> b!1734373 (=> (not res!779263) (not e!1109851))))

(assert (=> b!1734373 (= res!779263 (contains!3406 rules!3447 rule!422))))

(declare-fun b!1734374 () Bool)

(declare-fun res!779247 () Bool)

(assert (=> b!1734374 (=> res!779247 e!1109859)))

(assert (=> b!1734374 (= res!779247 (isEmpty!11979 suffix!1421))))

(declare-fun b!1734375 () Bool)

(declare-fun tp!494414 () Bool)

(assert (=> b!1734375 (= e!1109848 (and e!1109849 tp!494414))))

(declare-fun b!1734376 () Bool)

(declare-fun res!779253 () Bool)

(assert (=> b!1734376 (=> res!779253 e!1109852)))

(assert (=> b!1734376 (= res!779253 (not (matchR!2186 (regex!3384 (rule!5370 (_1!10754 lt!666541))) lt!666542)))))

(declare-fun b!1734377 () Bool)

(declare-fun res!779242 () Bool)

(assert (=> b!1734377 (=> (not res!779242) (not e!1109851))))

(declare-fun rulesInvariant!2682 (LexerInterface!3013 List!19108) Bool)

(assert (=> b!1734377 (= res!779242 (rulesInvariant!2682 thiss!24550 rules!3447))))

(declare-fun b!1734378 () Bool)

(assert (=> b!1734378 (= e!1109861 e!1109864)))

(declare-fun res!779244 () Bool)

(assert (=> b!1734378 (=> res!779244 e!1109864)))

(declare-fun lt!666573 () Option!3792)

(declare-fun lt!666564 () List!19107)

(assert (=> b!1734378 (= res!779244 (or (not (= lt!666564 (_2!10754 lt!666541))) (not (= lt!666573 (Some!3791 (tuple2!18705 (_1!10754 lt!666541) lt!666564))))))))

(assert (=> b!1734378 (= (_2!10754 lt!666541) lt!666564)))

(declare-fun lt!666576 () Unit!32926)

(assert (=> b!1734378 (= lt!666576 (lemmaSamePrefixThenSameSuffix!769 lt!666542 (_2!10754 lt!666541) lt!666542 lt!666564 lt!666570))))

(assert (=> b!1734378 (= lt!666564 (getSuffix!819 lt!666570 lt!666542))))

(declare-fun lt!666546 () Int)

(declare-fun lt!666558 () TokenValue!3474)

(assert (=> b!1734378 (= lt!666573 (Some!3791 (tuple2!18705 (Token!6335 lt!666558 (rule!5370 (_1!10754 lt!666541)) lt!666546 lt!666542) (_2!10754 lt!666541))))))

(declare-fun maxPrefixOneRule!943 (LexerInterface!3013 Rule!6568 List!19107) Option!3792)

(assert (=> b!1734378 (= lt!666573 (maxPrefixOneRule!943 thiss!24550 (rule!5370 (_1!10754 lt!666541)) lt!666570))))

(declare-fun size!15131 (List!19107) Int)

(assert (=> b!1734378 (= lt!666546 (size!15131 lt!666542))))

(assert (=> b!1734378 (= lt!666558 (apply!5189 (transformation!3384 (rule!5370 (_1!10754 lt!666541))) (seqFromList!2358 lt!666542)))))

(declare-fun lt!666553 () Unit!32926)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!342 (LexerInterface!3013 List!19108 List!19107 List!19107 List!19107 Rule!6568) Unit!32926)

(assert (=> b!1734378 (= lt!666553 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!342 thiss!24550 rules!3447 lt!666542 lt!666570 (_2!10754 lt!666541) (rule!5370 (_1!10754 lt!666541))))))

(assert (= (and start!170524 res!779248) b!1734357))

(assert (= (and b!1734357 res!779243) b!1734377))

(assert (= (and b!1734377 res!779242) b!1734373))

(assert (= (and b!1734373 res!779263) b!1734360))

(assert (= (and b!1734360 res!779258) b!1734355))

(assert (= (and b!1734355 res!779254) b!1734351))

(assert (= (and b!1734351 res!779261) b!1734347))

(assert (= (and b!1734347 res!779251) b!1734346))

(assert (= (and b!1734346 (not res!779249)) b!1734374))

(assert (= (and b!1734374 (not res!779247)) b!1734362))

(assert (= (and b!1734362 (not res!779259)) b!1734372))

(assert (= (and b!1734372 res!779262) b!1734356))

(assert (= (and b!1734356 res!779250) b!1734343))

(assert (= (and b!1734372 (not res!779256)) b!1734376))

(assert (= (and b!1734376 (not res!779253)) b!1734349))

(assert (= (and b!1734349 (not res!779245)) b!1734367))

(assert (= (and b!1734367 (not res!779241)) b!1734352))

(assert (= (and b!1734352 (not res!779257)) b!1734348))

(assert (= (and b!1734348 (not res!779255)) b!1734378))

(assert (= (and b!1734378 (not res!779244)) b!1734369))

(assert (= (and b!1734369 c!283141) b!1734359))

(assert (= (and b!1734369 (not c!283141)) b!1734344))

(assert (= (and b!1734369 (not res!779260)) b!1734368))

(assert (= (and b!1734368 c!283142) b!1734365))

(assert (= (and b!1734368 (not c!283142)) b!1734345))

(assert (= (and b!1734368 (not res!779246)) b!1734363))

(assert (= (and b!1734363 (not res!779252)) b!1734354))

(assert (= (and start!170524 (is-Cons!19037 suffix!1421)) b!1734371))

(assert (= b!1734366 b!1734358))

(assert (= start!170524 b!1734366))

(assert (= b!1734361 b!1734350))

(assert (= b!1734370 b!1734361))

(assert (= start!170524 b!1734370))

(assert (= b!1734353 b!1734364))

(assert (= b!1734375 b!1734353))

(assert (= (and start!170524 (is-Cons!19038 rules!3447)) b!1734375))

(declare-fun b_lambda!55421 () Bool)

(assert (=> (not b_lambda!55421) (not b!1734352)))

(declare-fun tb!103467 () Bool)

(declare-fun t!161138 () Bool)

(assert (=> (and b!1734350 (= (toChars!4750 (transformation!3384 (rule!5370 token!523))) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161138) tb!103467))

(declare-fun b!1734394 () Bool)

(declare-fun e!1109882 () Bool)

(declare-fun tp!494419 () Bool)

(declare-fun inv!24648 (Conc!6332) Bool)

(assert (=> b!1734394 (= e!1109882 (and (inv!24648 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541))))) tp!494419))))

(declare-fun result!124418 () Bool)

(declare-fun inv!24649 (BalanceConc!12608) Bool)

(assert (=> tb!103467 (= result!124418 (and (inv!24649 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541)))) e!1109882))))

(assert (= tb!103467 b!1734394))

(declare-fun m!2143625 () Bool)

(assert (=> b!1734394 m!2143625))

(declare-fun m!2143627 () Bool)

(assert (=> tb!103467 m!2143627))

(assert (=> b!1734352 t!161138))

(declare-fun b_and!128281 () Bool)

(assert (= b_and!128271 (and (=> t!161138 result!124418) b_and!128281)))

(declare-fun tb!103469 () Bool)

(declare-fun t!161140 () Bool)

(assert (=> (and b!1734364 (= (toChars!4750 (transformation!3384 (h!24439 rules!3447))) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161140) tb!103469))

(declare-fun result!124422 () Bool)

(assert (= result!124422 result!124418))

(assert (=> b!1734352 t!161140))

(declare-fun b_and!128283 () Bool)

(assert (= b_and!128275 (and (=> t!161140 result!124422) b_and!128283)))

(declare-fun tb!103471 () Bool)

(declare-fun t!161142 () Bool)

(assert (=> (and b!1734358 (= (toChars!4750 (transformation!3384 rule!422)) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161142) tb!103471))

(declare-fun result!124424 () Bool)

(assert (= result!124424 result!124418))

(assert (=> b!1734352 t!161142))

(declare-fun b_and!128285 () Bool)

(assert (= b_and!128279 (and (=> t!161142 result!124424) b_and!128285)))

(declare-fun b_lambda!55423 () Bool)

(assert (=> (not b_lambda!55423) (not b!1734367)))

(declare-fun tb!103473 () Bool)

(declare-fun t!161144 () Bool)

(assert (=> (and b!1734350 (= (toChars!4750 (transformation!3384 (rule!5370 token!523))) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161144) tb!103473))

(declare-fun tp!494420 () Bool)

(declare-fun b!1734395 () Bool)

(declare-fun e!1109883 () Bool)

(assert (=> b!1734395 (= e!1109883 (and (inv!24648 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568)))) tp!494420))))

(declare-fun result!124426 () Bool)

(assert (=> tb!103473 (= result!124426 (and (inv!24649 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568))) e!1109883))))

(assert (= tb!103473 b!1734395))

(declare-fun m!2143629 () Bool)

(assert (=> b!1734395 m!2143629))

(declare-fun m!2143631 () Bool)

(assert (=> tb!103473 m!2143631))

(assert (=> b!1734367 t!161144))

(declare-fun b_and!128287 () Bool)

(assert (= b_and!128281 (and (=> t!161144 result!124426) b_and!128287)))

(declare-fun t!161146 () Bool)

(declare-fun tb!103475 () Bool)

(assert (=> (and b!1734364 (= (toChars!4750 (transformation!3384 (h!24439 rules!3447))) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161146) tb!103475))

(declare-fun result!124428 () Bool)

(assert (= result!124428 result!124426))

(assert (=> b!1734367 t!161146))

(declare-fun b_and!128289 () Bool)

(assert (= b_and!128283 (and (=> t!161146 result!124428) b_and!128289)))

(declare-fun t!161148 () Bool)

(declare-fun tb!103477 () Bool)

(assert (=> (and b!1734358 (= (toChars!4750 (transformation!3384 rule!422)) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161148) tb!103477))

(declare-fun result!124430 () Bool)

(assert (= result!124430 result!124426))

(assert (=> b!1734367 t!161148))

(declare-fun b_and!128291 () Bool)

(assert (= b_and!128285 (and (=> t!161148 result!124430) b_and!128291)))

(declare-fun b_lambda!55425 () Bool)

(assert (=> (not b_lambda!55425) (not b!1734367)))

(declare-fun tb!103479 () Bool)

(declare-fun t!161150 () Bool)

(assert (=> (and b!1734350 (= (toValue!4891 (transformation!3384 (rule!5370 token!523))) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161150) tb!103479))

(declare-fun result!124432 () Bool)

(assert (=> tb!103479 (= result!124432 (inv!21 (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568)))))

(declare-fun m!2143633 () Bool)

(assert (=> tb!103479 m!2143633))

(assert (=> b!1734367 t!161150))

(declare-fun b_and!128293 () Bool)

(assert (= b_and!128269 (and (=> t!161150 result!124432) b_and!128293)))

(declare-fun tb!103481 () Bool)

(declare-fun t!161152 () Bool)

(assert (=> (and b!1734364 (= (toValue!4891 (transformation!3384 (h!24439 rules!3447))) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161152) tb!103481))

(declare-fun result!124436 () Bool)

(assert (= result!124436 result!124432))

(assert (=> b!1734367 t!161152))

(declare-fun b_and!128295 () Bool)

(assert (= b_and!128273 (and (=> t!161152 result!124436) b_and!128295)))

(declare-fun t!161154 () Bool)

(declare-fun tb!103483 () Bool)

(assert (=> (and b!1734358 (= (toValue!4891 (transformation!3384 rule!422)) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161154) tb!103483))

(declare-fun result!124438 () Bool)

(assert (= result!124438 result!124432))

(assert (=> b!1734367 t!161154))

(declare-fun b_and!128297 () Bool)

(assert (= b_and!128277 (and (=> t!161154 result!124438) b_and!128297)))

(declare-fun m!2143635 () Bool)

(assert (=> b!1734361 m!2143635))

(declare-fun m!2143637 () Bool)

(assert (=> b!1734361 m!2143637))

(declare-fun m!2143639 () Bool)

(assert (=> b!1734365 m!2143639))

(declare-fun m!2143641 () Bool)

(assert (=> b!1734360 m!2143641))

(declare-fun m!2143643 () Bool)

(assert (=> b!1734360 m!2143643))

(declare-fun m!2143645 () Bool)

(assert (=> b!1734360 m!2143645))

(declare-fun m!2143647 () Bool)

(assert (=> b!1734360 m!2143647))

(declare-fun m!2143649 () Bool)

(assert (=> b!1734369 m!2143649))

(declare-fun m!2143651 () Bool)

(assert (=> b!1734369 m!2143651))

(declare-fun m!2143653 () Bool)

(assert (=> b!1734369 m!2143653))

(declare-fun m!2143655 () Bool)

(assert (=> b!1734363 m!2143655))

(declare-fun m!2143657 () Bool)

(assert (=> b!1734363 m!2143657))

(declare-fun m!2143659 () Bool)

(assert (=> b!1734354 m!2143659))

(declare-fun m!2143661 () Bool)

(assert (=> b!1734355 m!2143661))

(declare-fun m!2143663 () Bool)

(assert (=> b!1734353 m!2143663))

(declare-fun m!2143665 () Bool)

(assert (=> b!1734353 m!2143665))

(declare-fun m!2143667 () Bool)

(assert (=> b!1734362 m!2143667))

(declare-fun m!2143669 () Bool)

(assert (=> b!1734362 m!2143669))

(declare-fun m!2143671 () Bool)

(assert (=> b!1734362 m!2143671))

(declare-fun m!2143673 () Bool)

(assert (=> b!1734362 m!2143673))

(declare-fun m!2143675 () Bool)

(assert (=> b!1734376 m!2143675))

(declare-fun m!2143677 () Bool)

(assert (=> b!1734367 m!2143677))

(assert (=> b!1734367 m!2143677))

(declare-fun m!2143679 () Bool)

(assert (=> b!1734367 m!2143679))

(assert (=> b!1734367 m!2143679))

(declare-fun m!2143681 () Bool)

(assert (=> b!1734367 m!2143681))

(declare-fun m!2143683 () Bool)

(assert (=> b!1734367 m!2143683))

(declare-fun m!2143685 () Bool)

(assert (=> b!1734373 m!2143685))

(declare-fun m!2143687 () Bool)

(assert (=> b!1734356 m!2143687))

(assert (=> b!1734356 m!2143687))

(declare-fun m!2143689 () Bool)

(assert (=> b!1734356 m!2143689))

(assert (=> b!1734356 m!2143689))

(declare-fun m!2143691 () Bool)

(assert (=> b!1734356 m!2143691))

(declare-fun m!2143693 () Bool)

(assert (=> b!1734356 m!2143693))

(declare-fun m!2143695 () Bool)

(assert (=> b!1734377 m!2143695))

(declare-fun m!2143697 () Bool)

(assert (=> b!1734378 m!2143697))

(declare-fun m!2143699 () Bool)

(assert (=> b!1734378 m!2143699))

(assert (=> b!1734378 m!2143699))

(declare-fun m!2143701 () Bool)

(assert (=> b!1734378 m!2143701))

(declare-fun m!2143703 () Bool)

(assert (=> b!1734378 m!2143703))

(declare-fun m!2143705 () Bool)

(assert (=> b!1734378 m!2143705))

(declare-fun m!2143707 () Bool)

(assert (=> b!1734378 m!2143707))

(declare-fun m!2143709 () Bool)

(assert (=> b!1734378 m!2143709))

(declare-fun m!2143711 () Bool)

(assert (=> b!1734352 m!2143711))

(declare-fun m!2143713 () Bool)

(assert (=> b!1734372 m!2143713))

(declare-fun m!2143715 () Bool)

(assert (=> b!1734372 m!2143715))

(declare-fun m!2143717 () Bool)

(assert (=> b!1734372 m!2143717))

(declare-fun m!2143719 () Bool)

(assert (=> b!1734372 m!2143719))

(declare-fun m!2143721 () Bool)

(assert (=> b!1734372 m!2143721))

(declare-fun m!2143723 () Bool)

(assert (=> b!1734372 m!2143723))

(declare-fun m!2143725 () Bool)

(assert (=> b!1734372 m!2143725))

(declare-fun m!2143727 () Bool)

(assert (=> b!1734372 m!2143727))

(declare-fun m!2143729 () Bool)

(assert (=> b!1734372 m!2143729))

(declare-fun m!2143731 () Bool)

(assert (=> b!1734372 m!2143731))

(assert (=> b!1734372 m!2143719))

(declare-fun m!2143733 () Bool)

(assert (=> b!1734372 m!2143733))

(declare-fun m!2143735 () Bool)

(assert (=> b!1734372 m!2143735))

(declare-fun m!2143737 () Bool)

(assert (=> b!1734372 m!2143737))

(declare-fun m!2143739 () Bool)

(assert (=> b!1734372 m!2143739))

(assert (=> b!1734372 m!2143687))

(declare-fun m!2143741 () Bool)

(assert (=> start!170524 m!2143741))

(declare-fun m!2143743 () Bool)

(assert (=> b!1734351 m!2143743))

(declare-fun m!2143745 () Bool)

(assert (=> b!1734370 m!2143745))

(declare-fun m!2143747 () Bool)

(assert (=> b!1734359 m!2143747))

(declare-fun m!2143749 () Bool)

(assert (=> b!1734359 m!2143749))

(declare-fun m!2143751 () Bool)

(assert (=> b!1734359 m!2143751))

(declare-fun m!2143753 () Bool)

(assert (=> b!1734359 m!2143753))

(declare-fun m!2143755 () Bool)

(assert (=> b!1734359 m!2143755))

(assert (=> b!1734359 m!2143753))

(declare-fun m!2143757 () Bool)

(assert (=> b!1734359 m!2143757))

(declare-fun m!2143759 () Bool)

(assert (=> b!1734359 m!2143759))

(declare-fun m!2143761 () Bool)

(assert (=> b!1734359 m!2143761))

(declare-fun m!2143763 () Bool)

(assert (=> b!1734359 m!2143763))

(declare-fun m!2143765 () Bool)

(assert (=> b!1734359 m!2143765))

(declare-fun m!2143767 () Bool)

(assert (=> b!1734359 m!2143767))

(declare-fun m!2143769 () Bool)

(assert (=> b!1734346 m!2143769))

(declare-fun m!2143771 () Bool)

(assert (=> b!1734346 m!2143771))

(declare-fun m!2143773 () Bool)

(assert (=> b!1734346 m!2143773))

(declare-fun m!2143775 () Bool)

(assert (=> b!1734349 m!2143775))

(declare-fun m!2143777 () Bool)

(assert (=> b!1734349 m!2143777))

(declare-fun m!2143779 () Bool)

(assert (=> b!1734374 m!2143779))

(declare-fun m!2143781 () Bool)

(assert (=> b!1734348 m!2143781))

(declare-fun m!2143783 () Bool)

(assert (=> b!1734348 m!2143783))

(declare-fun m!2143785 () Bool)

(assert (=> b!1734348 m!2143785))

(declare-fun m!2143787 () Bool)

(assert (=> b!1734348 m!2143787))

(assert (=> b!1734348 m!2143785))

(declare-fun m!2143789 () Bool)

(assert (=> b!1734348 m!2143789))

(declare-fun m!2143791 () Bool)

(assert (=> b!1734366 m!2143791))

(declare-fun m!2143793 () Bool)

(assert (=> b!1734366 m!2143793))

(declare-fun m!2143795 () Bool)

(assert (=> b!1734357 m!2143795))

(push 1)

(assert (not b_next!48261))

(assert (not tb!103479))

(assert (not b!1734372))

(assert (not b!1734348))

(assert (not b!1734349))

(assert (not b!1734351))

(assert (not b!1734366))

(assert tp_is_empty!7667)

(assert (not b!1734363))

(assert (not b!1734394))

(assert (not b_next!48257))

(assert b_and!128287)

(assert (not b!1734361))

(assert (not b!1734357))

(assert (not tb!103467))

(assert (not b!1734395))

(assert (not start!170524))

(assert (not b_lambda!55425))

(assert (not b!1734362))

(assert (not b!1734354))

(assert (not b!1734370))

(assert (not b_next!48265))

(assert (not b_lambda!55423))

(assert (not b!1734376))

(assert (not b!1734369))

(assert b_and!128291)

(assert (not b!1734377))

(assert (not b!1734353))

(assert (not b!1734378))

(assert (not b!1734374))

(assert (not b_next!48263))

(assert (not b_next!48255))

(assert (not b!1734356))

(assert b_and!128289)

(assert (not b!1734367))

(assert (not tb!103473))

(assert (not b!1734346))

(assert b_and!128297)

(assert (not b_lambda!55421))

(assert (not b!1734355))

(assert (not b!1734359))

(assert (not b!1734365))

(assert b_and!128295)

(assert (not b!1734360))

(assert (not b!1734371))

(assert (not b!1734373))

(assert (not b!1734375))

(assert b_and!128293)

(assert (not b_next!48259))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!48265))

(assert (not b_next!48261))

(assert b_and!128291)

(assert (not b_next!48257))

(assert b_and!128289)

(assert b_and!128297)

(assert b_and!128287)

(assert b_and!128295)

(assert (not b_next!48263))

(assert (not b_next!48255))

(assert b_and!128293)

(assert (not b_next!48259))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1734535 () Bool)

(declare-fun e!1110000 () Bool)

(declare-fun inv!17 (TokenValue!3474) Bool)

(assert (=> b!1734535 (= e!1110000 (inv!17 (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568)))))

(declare-fun b!1734536 () Bool)

(declare-fun e!1110001 () Bool)

(assert (=> b!1734536 (= e!1110001 e!1110000)))

(declare-fun c!283159 () Bool)

(assert (=> b!1734536 (= c!283159 (is-IntegerValue!10423 (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568)))))

(declare-fun d!530551 () Bool)

(declare-fun c!283158 () Bool)

(assert (=> d!530551 (= c!283158 (is-IntegerValue!10422 (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568)))))

(assert (=> d!530551 (= (inv!21 (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568)) e!1110001)))

(declare-fun b!1734537 () Bool)

(declare-fun e!1109999 () Bool)

(declare-fun inv!15 (TokenValue!3474) Bool)

(assert (=> b!1734537 (= e!1109999 (inv!15 (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568)))))

(declare-fun b!1734538 () Bool)

(declare-fun inv!16 (TokenValue!3474) Bool)

(assert (=> b!1734538 (= e!1110001 (inv!16 (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568)))))

(declare-fun b!1734539 () Bool)

(declare-fun res!779335 () Bool)

(assert (=> b!1734539 (=> res!779335 e!1109999)))

(assert (=> b!1734539 (= res!779335 (not (is-IntegerValue!10424 (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568))))))

(assert (=> b!1734539 (= e!1110000 e!1109999)))

(assert (= (and d!530551 c!283158) b!1734538))

(assert (= (and d!530551 (not c!283158)) b!1734536))

(assert (= (and b!1734536 c!283159) b!1734535))

(assert (= (and b!1734536 (not c!283159)) b!1734539))

(assert (= (and b!1734539 (not res!779335)) b!1734537))

(declare-fun m!2143969 () Bool)

(assert (=> b!1734535 m!2143969))

(declare-fun m!2143971 () Bool)

(assert (=> b!1734537 m!2143971))

(declare-fun m!2143973 () Bool)

(assert (=> b!1734538 m!2143973))

(assert (=> tb!103479 d!530551))

(declare-fun b!1734568 () Bool)

(declare-fun res!779353 () Bool)

(declare-fun e!1110021 () Bool)

(assert (=> b!1734568 (=> res!779353 e!1110021)))

(assert (=> b!1734568 (= res!779353 (not (is-ElementMatch!4712 (regex!3384 rule!422))))))

(declare-fun e!1110016 () Bool)

(assert (=> b!1734568 (= e!1110016 e!1110021)))

(declare-fun b!1734569 () Bool)

(declare-fun e!1110020 () Bool)

(declare-fun e!1110018 () Bool)

(assert (=> b!1734569 (= e!1110020 e!1110018)))

(declare-fun res!779358 () Bool)

(assert (=> b!1734569 (=> res!779358 e!1110018)))

(declare-fun call!109969 () Bool)

(assert (=> b!1734569 (= res!779358 call!109969)))

(declare-fun b!1734570 () Bool)

(declare-fun res!779359 () Bool)

(declare-fun e!1110017 () Bool)

(assert (=> b!1734570 (=> (not res!779359) (not e!1110017))))

(assert (=> b!1734570 (= res!779359 (not call!109969))))

(declare-fun d!530553 () Bool)

(declare-fun e!1110019 () Bool)

(assert (=> d!530553 e!1110019))

(declare-fun c!283166 () Bool)

(assert (=> d!530553 (= c!283166 (is-EmptyExpr!4712 (regex!3384 rule!422)))))

(declare-fun lt!666719 () Bool)

(declare-fun e!1110022 () Bool)

(assert (=> d!530553 (= lt!666719 e!1110022)))

(declare-fun c!283167 () Bool)

(assert (=> d!530553 (= c!283167 (isEmpty!11979 lt!666572))))

(declare-fun validRegex!1899 (Regex!4712) Bool)

(assert (=> d!530553 (validRegex!1899 (regex!3384 rule!422))))

(assert (=> d!530553 (= (matchR!2186 (regex!3384 rule!422) lt!666572) lt!666719)))

(declare-fun b!1734571 () Bool)

(declare-fun res!779354 () Bool)

(assert (=> b!1734571 (=> res!779354 e!1110018)))

(declare-fun tail!2590 (List!19107) List!19107)

(assert (=> b!1734571 (= res!779354 (not (isEmpty!11979 (tail!2590 lt!666572))))))

(declare-fun b!1734572 () Bool)

(assert (=> b!1734572 (= e!1110021 e!1110020)))

(declare-fun res!779355 () Bool)

(assert (=> b!1734572 (=> (not res!779355) (not e!1110020))))

(assert (=> b!1734572 (= res!779355 (not lt!666719))))

(declare-fun b!1734573 () Bool)

(declare-fun res!779356 () Bool)

(assert (=> b!1734573 (=> res!779356 e!1110021)))

(assert (=> b!1734573 (= res!779356 e!1110017)))

(declare-fun res!779352 () Bool)

(assert (=> b!1734573 (=> (not res!779352) (not e!1110017))))

(assert (=> b!1734573 (= res!779352 lt!666719)))

(declare-fun b!1734574 () Bool)

(declare-fun res!779357 () Bool)

(assert (=> b!1734574 (=> (not res!779357) (not e!1110017))))

(assert (=> b!1734574 (= res!779357 (isEmpty!11979 (tail!2590 lt!666572)))))

(declare-fun b!1734575 () Bool)

(declare-fun nullable!1425 (Regex!4712) Bool)

(assert (=> b!1734575 (= e!1110022 (nullable!1425 (regex!3384 rule!422)))))

(declare-fun b!1734576 () Bool)

(assert (=> b!1734576 (= e!1110018 (not (= (head!3957 lt!666572) (c!283143 (regex!3384 rule!422)))))))

(declare-fun b!1734577 () Bool)

(assert (=> b!1734577 (= e!1110019 e!1110016)))

(declare-fun c!283168 () Bool)

(assert (=> b!1734577 (= c!283168 (is-EmptyLang!4712 (regex!3384 rule!422)))))

(declare-fun bm!109964 () Bool)

(assert (=> bm!109964 (= call!109969 (isEmpty!11979 lt!666572))))

(declare-fun b!1734578 () Bool)

(assert (=> b!1734578 (= e!1110017 (= (head!3957 lt!666572) (c!283143 (regex!3384 rule!422))))))

(declare-fun b!1734579 () Bool)

(assert (=> b!1734579 (= e!1110019 (= lt!666719 call!109969))))

(declare-fun b!1734580 () Bool)

(declare-fun derivativeStep!1193 (Regex!4712 C!9598) Regex!4712)

(assert (=> b!1734580 (= e!1110022 (matchR!2186 (derivativeStep!1193 (regex!3384 rule!422) (head!3957 lt!666572)) (tail!2590 lt!666572)))))

(declare-fun b!1734581 () Bool)

(assert (=> b!1734581 (= e!1110016 (not lt!666719))))

(assert (= (and d!530553 c!283167) b!1734575))

(assert (= (and d!530553 (not c!283167)) b!1734580))

(assert (= (and d!530553 c!283166) b!1734579))

(assert (= (and d!530553 (not c!283166)) b!1734577))

(assert (= (and b!1734577 c!283168) b!1734581))

(assert (= (and b!1734577 (not c!283168)) b!1734568))

(assert (= (and b!1734568 (not res!779353)) b!1734573))

(assert (= (and b!1734573 res!779352) b!1734570))

(assert (= (and b!1734570 res!779359) b!1734574))

(assert (= (and b!1734574 res!779357) b!1734578))

(assert (= (and b!1734573 (not res!779356)) b!1734572))

(assert (= (and b!1734572 res!779355) b!1734569))

(assert (= (and b!1734569 (not res!779358)) b!1734571))

(assert (= (and b!1734571 (not res!779354)) b!1734576))

(assert (= (or b!1734579 b!1734569 b!1734570) bm!109964))

(declare-fun m!2143975 () Bool)

(assert (=> d!530553 m!2143975))

(declare-fun m!2143977 () Bool)

(assert (=> d!530553 m!2143977))

(assert (=> bm!109964 m!2143975))

(declare-fun m!2143979 () Bool)

(assert (=> b!1734580 m!2143979))

(assert (=> b!1734580 m!2143979))

(declare-fun m!2143981 () Bool)

(assert (=> b!1734580 m!2143981))

(declare-fun m!2143983 () Bool)

(assert (=> b!1734580 m!2143983))

(assert (=> b!1734580 m!2143981))

(assert (=> b!1734580 m!2143983))

(declare-fun m!2143985 () Bool)

(assert (=> b!1734580 m!2143985))

(declare-fun m!2143987 () Bool)

(assert (=> b!1734575 m!2143987))

(assert (=> b!1734578 m!2143979))

(assert (=> b!1734574 m!2143983))

(assert (=> b!1734574 m!2143983))

(declare-fun m!2143989 () Bool)

(assert (=> b!1734574 m!2143989))

(assert (=> b!1734571 m!2143983))

(assert (=> b!1734571 m!2143983))

(assert (=> b!1734571 m!2143989))

(assert (=> b!1734576 m!2143979))

(assert (=> b!1734346 d!530553))

(declare-fun d!530555 () Bool)

(declare-fun res!779364 () Bool)

(declare-fun e!1110025 () Bool)

(assert (=> d!530555 (=> (not res!779364) (not e!1110025))))

(assert (=> d!530555 (= res!779364 (validRegex!1899 (regex!3384 rule!422)))))

(assert (=> d!530555 (= (ruleValid!883 thiss!24550 rule!422) e!1110025)))

(declare-fun b!1734586 () Bool)

(declare-fun res!779365 () Bool)

(assert (=> b!1734586 (=> (not res!779365) (not e!1110025))))

(assert (=> b!1734586 (= res!779365 (not (nullable!1425 (regex!3384 rule!422))))))

(declare-fun b!1734587 () Bool)

(assert (=> b!1734587 (= e!1110025 (not (= (tag!3714 rule!422) (String!21705 ""))))))

(assert (= (and d!530555 res!779364) b!1734586))

(assert (= (and b!1734586 res!779365) b!1734587))

(assert (=> d!530555 m!2143977))

(assert (=> b!1734586 m!2143987))

(assert (=> b!1734346 d!530555))

(declare-fun d!530557 () Bool)

(assert (=> d!530557 (ruleValid!883 thiss!24550 rule!422)))

(declare-fun lt!666722 () Unit!32926)

(declare-fun choose!10614 (LexerInterface!3013 Rule!6568 List!19108) Unit!32926)

(assert (=> d!530557 (= lt!666722 (choose!10614 thiss!24550 rule!422 rules!3447))))

(assert (=> d!530557 (contains!3406 rules!3447 rule!422)))

(assert (=> d!530557 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!407 thiss!24550 rule!422 rules!3447) lt!666722)))

(declare-fun bs!402736 () Bool)

(assert (= bs!402736 d!530557))

(assert (=> bs!402736 m!2143771))

(declare-fun m!2143991 () Bool)

(assert (=> bs!402736 m!2143991))

(assert (=> bs!402736 m!2143685))

(assert (=> b!1734346 d!530557))

(declare-fun d!530559 () Bool)

(assert (=> d!530559 (= (apply!5189 (transformation!3384 (rule!5370 (_1!10754 lt!666541))) lt!666568) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568))))

(declare-fun b_lambda!55433 () Bool)

(assert (=> (not b_lambda!55433) (not d!530559)))

(assert (=> d!530559 t!161150))

(declare-fun b_and!128329 () Bool)

(assert (= b_and!128293 (and (=> t!161150 result!124432) b_and!128329)))

(assert (=> d!530559 t!161152))

(declare-fun b_and!128331 () Bool)

(assert (= b_and!128295 (and (=> t!161152 result!124436) b_and!128331)))

(assert (=> d!530559 t!161154))

(declare-fun b_and!128333 () Bool)

(assert (= b_and!128297 (and (=> t!161154 result!124438) b_and!128333)))

(assert (=> d!530559 m!2143677))

(assert (=> b!1734348 d!530559))

(declare-fun d!530561 () Bool)

(declare-fun lt!666725 () Int)

(assert (=> d!530561 (= lt!666725 (size!15131 (list!7697 lt!666568)))))

(declare-fun size!15135 (Conc!6332) Int)

(assert (=> d!530561 (= lt!666725 (size!15135 (c!283144 lt!666568)))))

(assert (=> d!530561 (= (size!15130 lt!666568) lt!666725)))

(declare-fun bs!402737 () Bool)

(assert (= bs!402737 d!530561))

(assert (=> bs!402737 m!2143715))

(assert (=> bs!402737 m!2143715))

(declare-fun m!2143993 () Bool)

(assert (=> bs!402737 m!2143993))

(declare-fun m!2143995 () Bool)

(assert (=> bs!402737 m!2143995))

(assert (=> b!1734348 d!530561))

(declare-fun d!530563 () Bool)

(declare-fun fromListB!1079 (List!19107) BalanceConc!12608)

(assert (=> d!530563 (= (seqFromList!2358 (originalCharacters!4198 (_1!10754 lt!666541))) (fromListB!1079 (originalCharacters!4198 (_1!10754 lt!666541))))))

(declare-fun bs!402738 () Bool)

(assert (= bs!402738 d!530563))

(declare-fun m!2143997 () Bool)

(assert (=> bs!402738 m!2143997))

(assert (=> b!1734348 d!530563))

(declare-fun b!1734594 () Bool)

(declare-fun e!1110030 () Bool)

(assert (=> b!1734594 (= e!1110030 true)))

(declare-fun d!530565 () Bool)

(assert (=> d!530565 e!1110030))

(assert (= d!530565 b!1734594))

(declare-fun lambda!69461 () Int)

(declare-fun order!11809 () Int)

(declare-fun dynLambda!8937 (Int Int) Int)

(assert (=> b!1734594 (< (dynLambda!8927 order!11797 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) (dynLambda!8937 order!11809 lambda!69461))))

(assert (=> b!1734594 (< (dynLambda!8929 order!11801 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) (dynLambda!8937 order!11809 lambda!69461))))

(assert (=> d!530565 (= (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (seqFromList!2358 (originalCharacters!4198 (_1!10754 lt!666541)))))))

(declare-fun lt!666728 () Unit!32926)

(declare-fun Forall2of!94 (Int BalanceConc!12608 BalanceConc!12608) Unit!32926)

(assert (=> d!530565 (= lt!666728 (Forall2of!94 lambda!69461 lt!666568 (seqFromList!2358 (originalCharacters!4198 (_1!10754 lt!666541)))))))

(assert (=> d!530565 (= (list!7697 lt!666568) (list!7697 (seqFromList!2358 (originalCharacters!4198 (_1!10754 lt!666541)))))))

(assert (=> d!530565 (= (lemmaEqSameImage!309 (transformation!3384 (rule!5370 (_1!10754 lt!666541))) lt!666568 (seqFromList!2358 (originalCharacters!4198 (_1!10754 lt!666541)))) lt!666728)))

(declare-fun b_lambda!55435 () Bool)

(assert (=> (not b_lambda!55435) (not d!530565)))

(assert (=> d!530565 t!161150))

(declare-fun b_and!128335 () Bool)

(assert (= b_and!128329 (and (=> t!161150 result!124432) b_and!128335)))

(assert (=> d!530565 t!161152))

(declare-fun b_and!128337 () Bool)

(assert (= b_and!128331 (and (=> t!161152 result!124436) b_and!128337)))

(assert (=> d!530565 t!161154))

(declare-fun b_and!128339 () Bool)

(assert (= b_and!128333 (and (=> t!161154 result!124438) b_and!128339)))

(declare-fun b_lambda!55437 () Bool)

(assert (=> (not b_lambda!55437) (not d!530565)))

(declare-fun t!161180 () Bool)

(declare-fun tb!103503 () Bool)

(assert (=> (and b!1734350 (= (toValue!4891 (transformation!3384 (rule!5370 token!523))) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161180) tb!103503))

(declare-fun result!124462 () Bool)

(assert (=> tb!103503 (= result!124462 (inv!21 (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (seqFromList!2358 (originalCharacters!4198 (_1!10754 lt!666541))))))))

(declare-fun m!2143999 () Bool)

(assert (=> tb!103503 m!2143999))

(assert (=> d!530565 t!161180))

(declare-fun b_and!128341 () Bool)

(assert (= b_and!128335 (and (=> t!161180 result!124462) b_and!128341)))

(declare-fun tb!103505 () Bool)

(declare-fun t!161182 () Bool)

(assert (=> (and b!1734364 (= (toValue!4891 (transformation!3384 (h!24439 rules!3447))) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161182) tb!103505))

(declare-fun result!124464 () Bool)

(assert (= result!124464 result!124462))

(assert (=> d!530565 t!161182))

(declare-fun b_and!128343 () Bool)

(assert (= b_and!128337 (and (=> t!161182 result!124464) b_and!128343)))

(declare-fun t!161184 () Bool)

(declare-fun tb!103507 () Bool)

(assert (=> (and b!1734358 (= (toValue!4891 (transformation!3384 rule!422)) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161184) tb!103507))

(declare-fun result!124466 () Bool)

(assert (= result!124466 result!124462))

(assert (=> d!530565 t!161184))

(declare-fun b_and!128345 () Bool)

(assert (= b_and!128339 (and (=> t!161184 result!124466) b_and!128345)))

(assert (=> d!530565 m!2143677))

(assert (=> d!530565 m!2143785))

(declare-fun m!2144001 () Bool)

(assert (=> d!530565 m!2144001))

(assert (=> d!530565 m!2143785))

(declare-fun m!2144003 () Bool)

(assert (=> d!530565 m!2144003))

(assert (=> d!530565 m!2143785))

(declare-fun m!2144005 () Bool)

(assert (=> d!530565 m!2144005))

(assert (=> d!530565 m!2143715))

(assert (=> b!1734348 d!530565))

(declare-fun d!530567 () Bool)

(assert (=> d!530567 (= (size!15129 (_1!10754 lt!666541)) (size!15131 (originalCharacters!4198 (_1!10754 lt!666541))))))

(declare-fun Unit!32939 () Unit!32926)

(assert (=> d!530567 (= (lemmaCharactersSize!456 (_1!10754 lt!666541)) Unit!32939)))

(declare-fun bs!402739 () Bool)

(assert (= bs!402739 d!530567))

(declare-fun m!2144007 () Bool)

(assert (=> bs!402739 m!2144007))

(assert (=> b!1734348 d!530567))

(declare-fun d!530569 () Bool)

(declare-fun lt!666729 () Int)

(assert (=> d!530569 (= lt!666729 (size!15131 (list!7697 lt!666559)))))

(assert (=> d!530569 (= lt!666729 (size!15135 (c!283144 lt!666559)))))

(assert (=> d!530569 (= (size!15130 lt!666559) lt!666729)))

(declare-fun bs!402740 () Bool)

(assert (= bs!402740 d!530569))

(assert (=> bs!402740 m!2143645))

(assert (=> bs!402740 m!2143645))

(declare-fun m!2144009 () Bool)

(assert (=> bs!402740 m!2144009))

(declare-fun m!2144011 () Bool)

(assert (=> bs!402740 m!2144011))

(assert (=> b!1734369 d!530569))

(declare-fun b!1734595 () Bool)

(declare-fun res!779369 () Bool)

(declare-fun e!1110037 () Bool)

(assert (=> b!1734595 (=> res!779369 e!1110037)))

(assert (=> b!1734595 (= res!779369 (not (is-ElementMatch!4712 lt!666574)))))

(declare-fun e!1110032 () Bool)

(assert (=> b!1734595 (= e!1110032 e!1110037)))

(declare-fun b!1734596 () Bool)

(declare-fun e!1110036 () Bool)

(declare-fun e!1110034 () Bool)

(assert (=> b!1734596 (= e!1110036 e!1110034)))

(declare-fun res!779374 () Bool)

(assert (=> b!1734596 (=> res!779374 e!1110034)))

(declare-fun call!109970 () Bool)

(assert (=> b!1734596 (= res!779374 call!109970)))

(declare-fun b!1734597 () Bool)

(declare-fun res!779375 () Bool)

(declare-fun e!1110033 () Bool)

(assert (=> b!1734597 (=> (not res!779375) (not e!1110033))))

(assert (=> b!1734597 (= res!779375 (not call!109970))))

(declare-fun d!530571 () Bool)

(declare-fun e!1110035 () Bool)

(assert (=> d!530571 e!1110035))

(declare-fun c!283169 () Bool)

(assert (=> d!530571 (= c!283169 (is-EmptyExpr!4712 lt!666574))))

(declare-fun lt!666730 () Bool)

(declare-fun e!1110038 () Bool)

(assert (=> d!530571 (= lt!666730 e!1110038)))

(declare-fun c!283170 () Bool)

(assert (=> d!530571 (= c!283170 (isEmpty!11979 lt!666572))))

(assert (=> d!530571 (validRegex!1899 lt!666574)))

(assert (=> d!530571 (= (matchR!2186 lt!666574 lt!666572) lt!666730)))

(declare-fun b!1734598 () Bool)

(declare-fun res!779370 () Bool)

(assert (=> b!1734598 (=> res!779370 e!1110034)))

(assert (=> b!1734598 (= res!779370 (not (isEmpty!11979 (tail!2590 lt!666572))))))

(declare-fun b!1734599 () Bool)

(assert (=> b!1734599 (= e!1110037 e!1110036)))

(declare-fun res!779371 () Bool)

(assert (=> b!1734599 (=> (not res!779371) (not e!1110036))))

(assert (=> b!1734599 (= res!779371 (not lt!666730))))

(declare-fun b!1734600 () Bool)

(declare-fun res!779372 () Bool)

(assert (=> b!1734600 (=> res!779372 e!1110037)))

(assert (=> b!1734600 (= res!779372 e!1110033)))

(declare-fun res!779368 () Bool)

(assert (=> b!1734600 (=> (not res!779368) (not e!1110033))))

(assert (=> b!1734600 (= res!779368 lt!666730)))

(declare-fun b!1734601 () Bool)

(declare-fun res!779373 () Bool)

(assert (=> b!1734601 (=> (not res!779373) (not e!1110033))))

(assert (=> b!1734601 (= res!779373 (isEmpty!11979 (tail!2590 lt!666572)))))

(declare-fun b!1734602 () Bool)

(assert (=> b!1734602 (= e!1110038 (nullable!1425 lt!666574))))

(declare-fun b!1734603 () Bool)

(assert (=> b!1734603 (= e!1110034 (not (= (head!3957 lt!666572) (c!283143 lt!666574))))))

(declare-fun b!1734604 () Bool)

(assert (=> b!1734604 (= e!1110035 e!1110032)))

(declare-fun c!283171 () Bool)

(assert (=> b!1734604 (= c!283171 (is-EmptyLang!4712 lt!666574))))

(declare-fun bm!109965 () Bool)

(assert (=> bm!109965 (= call!109970 (isEmpty!11979 lt!666572))))

(declare-fun b!1734605 () Bool)

(assert (=> b!1734605 (= e!1110033 (= (head!3957 lt!666572) (c!283143 lt!666574)))))

(declare-fun b!1734606 () Bool)

(assert (=> b!1734606 (= e!1110035 (= lt!666730 call!109970))))

(declare-fun b!1734607 () Bool)

(assert (=> b!1734607 (= e!1110038 (matchR!2186 (derivativeStep!1193 lt!666574 (head!3957 lt!666572)) (tail!2590 lt!666572)))))

(declare-fun b!1734608 () Bool)

(assert (=> b!1734608 (= e!1110032 (not lt!666730))))

(assert (= (and d!530571 c!283170) b!1734602))

(assert (= (and d!530571 (not c!283170)) b!1734607))

(assert (= (and d!530571 c!283169) b!1734606))

(assert (= (and d!530571 (not c!283169)) b!1734604))

(assert (= (and b!1734604 c!283171) b!1734608))

(assert (= (and b!1734604 (not c!283171)) b!1734595))

(assert (= (and b!1734595 (not res!779369)) b!1734600))

(assert (= (and b!1734600 res!779368) b!1734597))

(assert (= (and b!1734597 res!779375) b!1734601))

(assert (= (and b!1734601 res!779373) b!1734605))

(assert (= (and b!1734600 (not res!779372)) b!1734599))

(assert (= (and b!1734599 res!779371) b!1734596))

(assert (= (and b!1734596 (not res!779374)) b!1734598))

(assert (= (and b!1734598 (not res!779370)) b!1734603))

(assert (= (or b!1734606 b!1734596 b!1734597) bm!109965))

(assert (=> d!530571 m!2143975))

(declare-fun m!2144013 () Bool)

(assert (=> d!530571 m!2144013))

(assert (=> bm!109965 m!2143975))

(assert (=> b!1734607 m!2143979))

(assert (=> b!1734607 m!2143979))

(declare-fun m!2144015 () Bool)

(assert (=> b!1734607 m!2144015))

(assert (=> b!1734607 m!2143983))

(assert (=> b!1734607 m!2144015))

(assert (=> b!1734607 m!2143983))

(declare-fun m!2144017 () Bool)

(assert (=> b!1734607 m!2144017))

(declare-fun m!2144019 () Bool)

(assert (=> b!1734602 m!2144019))

(assert (=> b!1734605 m!2143979))

(assert (=> b!1734601 m!2143983))

(assert (=> b!1734601 m!2143983))

(assert (=> b!1734601 m!2143989))

(assert (=> b!1734598 m!2143983))

(assert (=> b!1734598 m!2143983))

(assert (=> b!1734598 m!2143989))

(assert (=> b!1734603 m!2143979))

(assert (=> b!1734369 d!530571))

(declare-fun d!530573 () Bool)

(assert (=> d!530573 (matchR!2186 (rulesRegex!742 thiss!24550 rules!3447) (list!7697 (charsOf!2033 token!523)))))

(declare-fun lt!666733 () Unit!32926)

(declare-fun choose!10615 (LexerInterface!3013 List!19108 List!19107 Token!6334 Rule!6568 List!19107) Unit!32926)

(assert (=> d!530573 (= lt!666733 (choose!10615 thiss!24550 rules!3447 lt!666572 token!523 rule!422 Nil!19037))))

(assert (=> d!530573 (not (isEmpty!11980 rules!3447))))

(assert (=> d!530573 (= (lemmaMaxPrefixThenMatchesRulesRegex!133 thiss!24550 rules!3447 lt!666572 token!523 rule!422 Nil!19037) lt!666733)))

(declare-fun bs!402741 () Bool)

(assert (= bs!402741 d!530573))

(assert (=> bs!402741 m!2143647))

(declare-fun m!2144021 () Bool)

(assert (=> bs!402741 m!2144021))

(assert (=> bs!402741 m!2143673))

(assert (=> bs!402741 m!2144021))

(declare-fun m!2144023 () Bool)

(assert (=> bs!402741 m!2144023))

(assert (=> bs!402741 m!2143795))

(declare-fun m!2144025 () Bool)

(assert (=> bs!402741 m!2144025))

(assert (=> bs!402741 m!2143647))

(assert (=> bs!402741 m!2143673))

(assert (=> b!1734369 d!530573))

(declare-fun b!1734609 () Bool)

(declare-fun e!1110040 () Bool)

(assert (=> b!1734609 (= e!1110040 (inv!17 (value!106118 token!523)))))

(declare-fun b!1734610 () Bool)

(declare-fun e!1110041 () Bool)

(assert (=> b!1734610 (= e!1110041 e!1110040)))

(declare-fun c!283173 () Bool)

(assert (=> b!1734610 (= c!283173 (is-IntegerValue!10423 (value!106118 token!523)))))

(declare-fun d!530575 () Bool)

(declare-fun c!283172 () Bool)

(assert (=> d!530575 (= c!283172 (is-IntegerValue!10422 (value!106118 token!523)))))

(assert (=> d!530575 (= (inv!21 (value!106118 token!523)) e!1110041)))

(declare-fun b!1734611 () Bool)

(declare-fun e!1110039 () Bool)

(assert (=> b!1734611 (= e!1110039 (inv!15 (value!106118 token!523)))))

(declare-fun b!1734612 () Bool)

(assert (=> b!1734612 (= e!1110041 (inv!16 (value!106118 token!523)))))

(declare-fun b!1734613 () Bool)

(declare-fun res!779376 () Bool)

(assert (=> b!1734613 (=> res!779376 e!1110039)))

(assert (=> b!1734613 (= res!779376 (not (is-IntegerValue!10424 (value!106118 token!523))))))

(assert (=> b!1734613 (= e!1110040 e!1110039)))

(assert (= (and d!530575 c!283172) b!1734612))

(assert (= (and d!530575 (not c!283172)) b!1734610))

(assert (= (and b!1734610 c!283173) b!1734609))

(assert (= (and b!1734610 (not c!283173)) b!1734613))

(assert (= (and b!1734613 (not res!779376)) b!1734611))

(declare-fun m!2144027 () Bool)

(assert (=> b!1734609 m!2144027))

(declare-fun m!2144029 () Bool)

(assert (=> b!1734611 m!2144029))

(declare-fun m!2144031 () Bool)

(assert (=> b!1734612 m!2144031))

(assert (=> b!1734370 d!530575))

(declare-fun d!530577 () Bool)

(declare-fun choose!10616 (Int) Bool)

(assert (=> d!530577 (= (Forall!759 lambda!69455) (choose!10616 lambda!69455))))

(declare-fun bs!402742 () Bool)

(assert (= bs!402742 d!530577))

(declare-fun m!2144033 () Bool)

(assert (=> bs!402742 m!2144033))

(assert (=> b!1734349 d!530577))

(declare-fun d!530579 () Bool)

(declare-fun e!1110044 () Bool)

(assert (=> d!530579 e!1110044))

(declare-fun res!779379 () Bool)

(assert (=> d!530579 (=> (not res!779379) (not e!1110044))))

(declare-fun semiInverseModEq!1338 (Int Int) Bool)

(assert (=> d!530579 (= res!779379 (semiInverseModEq!1338 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))))))

(declare-fun Unit!32940 () Unit!32926)

(assert (=> d!530579 (= (lemmaInv!591 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) Unit!32940)))

(declare-fun b!1734616 () Bool)

(declare-fun equivClasses!1279 (Int Int) Bool)

(assert (=> b!1734616 (= e!1110044 (equivClasses!1279 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))))))

(assert (= (and d!530579 res!779379) b!1734616))

(declare-fun m!2144035 () Bool)

(assert (=> d!530579 m!2144035))

(declare-fun m!2144037 () Bool)

(assert (=> b!1734616 m!2144037))

(assert (=> b!1734349 d!530579))

(declare-fun b!1734625 () Bool)

(declare-fun e!1110049 () List!19107)

(assert (=> b!1734625 (= e!1110049 suffix!1421)))

(declare-fun b!1734627 () Bool)

(declare-fun res!779384 () Bool)

(declare-fun e!1110050 () Bool)

(assert (=> b!1734627 (=> (not res!779384) (not e!1110050))))

(declare-fun lt!666736 () List!19107)

(assert (=> b!1734627 (= res!779384 (= (size!15131 lt!666736) (+ (size!15131 lt!666572) (size!15131 suffix!1421))))))

(declare-fun b!1734626 () Bool)

(assert (=> b!1734626 (= e!1110049 (Cons!19037 (h!24438 lt!666572) (++!5209 (t!161156 lt!666572) suffix!1421)))))

(declare-fun b!1734628 () Bool)

(assert (=> b!1734628 (= e!1110050 (or (not (= suffix!1421 Nil!19037)) (= lt!666736 lt!666572)))))

(declare-fun d!530581 () Bool)

(assert (=> d!530581 e!1110050))

(declare-fun res!779385 () Bool)

(assert (=> d!530581 (=> (not res!779385) (not e!1110050))))

(declare-fun content!2725 (List!19107) (Set C!9598))

(assert (=> d!530581 (= res!779385 (= (content!2725 lt!666736) (set.union (content!2725 lt!666572) (content!2725 suffix!1421))))))

(assert (=> d!530581 (= lt!666736 e!1110049)))

(declare-fun c!283176 () Bool)

(assert (=> d!530581 (= c!283176 (is-Nil!19037 lt!666572))))

(assert (=> d!530581 (= (++!5209 lt!666572 suffix!1421) lt!666736)))

(assert (= (and d!530581 c!283176) b!1734625))

(assert (= (and d!530581 (not c!283176)) b!1734626))

(assert (= (and d!530581 res!779385) b!1734627))

(assert (= (and b!1734627 res!779384) b!1734628))

(declare-fun m!2144039 () Bool)

(assert (=> b!1734627 m!2144039))

(declare-fun m!2144041 () Bool)

(assert (=> b!1734627 m!2144041))

(declare-fun m!2144043 () Bool)

(assert (=> b!1734627 m!2144043))

(declare-fun m!2144045 () Bool)

(assert (=> b!1734626 m!2144045))

(declare-fun m!2144047 () Bool)

(assert (=> d!530581 m!2144047))

(declare-fun m!2144049 () Bool)

(assert (=> d!530581 m!2144049))

(declare-fun m!2144051 () Bool)

(assert (=> d!530581 m!2144051))

(assert (=> b!1734372 d!530581))

(declare-fun d!530583 () Bool)

(declare-fun e!1110059 () Bool)

(assert (=> d!530583 e!1110059))

(declare-fun res!779396 () Bool)

(assert (=> d!530583 (=> res!779396 e!1110059)))

(declare-fun lt!666739 () Bool)

(assert (=> d!530583 (= res!779396 (not lt!666739))))

(declare-fun e!1110057 () Bool)

(assert (=> d!530583 (= lt!666739 e!1110057)))

(declare-fun res!779395 () Bool)

(assert (=> d!530583 (=> res!779395 e!1110057)))

(assert (=> d!530583 (= res!779395 (is-Nil!19037 lt!666542))))

(assert (=> d!530583 (= (isPrefix!1625 lt!666542 lt!666570) lt!666739)))

(declare-fun b!1734640 () Bool)

(assert (=> b!1734640 (= e!1110059 (>= (size!15131 lt!666570) (size!15131 lt!666542)))))

(declare-fun b!1734638 () Bool)

(declare-fun res!779397 () Bool)

(declare-fun e!1110058 () Bool)

(assert (=> b!1734638 (=> (not res!779397) (not e!1110058))))

(assert (=> b!1734638 (= res!779397 (= (head!3957 lt!666542) (head!3957 lt!666570)))))

(declare-fun b!1734639 () Bool)

(assert (=> b!1734639 (= e!1110058 (isPrefix!1625 (tail!2590 lt!666542) (tail!2590 lt!666570)))))

(declare-fun b!1734637 () Bool)

(assert (=> b!1734637 (= e!1110057 e!1110058)))

(declare-fun res!779394 () Bool)

(assert (=> b!1734637 (=> (not res!779394) (not e!1110058))))

(assert (=> b!1734637 (= res!779394 (not (is-Nil!19037 lt!666570)))))

(assert (= (and d!530583 (not res!779395)) b!1734637))

(assert (= (and b!1734637 res!779394) b!1734638))

(assert (= (and b!1734638 res!779397) b!1734639))

(assert (= (and d!530583 (not res!779396)) b!1734640))

(declare-fun m!2144053 () Bool)

(assert (=> b!1734640 m!2144053))

(assert (=> b!1734640 m!2143705))

(declare-fun m!2144055 () Bool)

(assert (=> b!1734638 m!2144055))

(declare-fun m!2144057 () Bool)

(assert (=> b!1734638 m!2144057))

(declare-fun m!2144059 () Bool)

(assert (=> b!1734639 m!2144059))

(declare-fun m!2144061 () Bool)

(assert (=> b!1734639 m!2144061))

(assert (=> b!1734639 m!2144059))

(assert (=> b!1734639 m!2144061))

(declare-fun m!2144063 () Bool)

(assert (=> b!1734639 m!2144063))

(assert (=> b!1734372 d!530583))

(declare-fun b!1734668 () Bool)

(declare-fun res!779413 () Bool)

(declare-fun e!1110073 () Bool)

(assert (=> b!1734668 (=> (not res!779413) (not e!1110073))))

(declare-fun lt!666759 () Option!3792)

(assert (=> b!1734668 (= res!779413 (= (++!5209 (list!7697 (charsOf!2033 (_1!10754 (get!5702 lt!666759)))) (_2!10754 (get!5702 lt!666759))) lt!666570))))

(declare-fun b!1734669 () Bool)

(declare-fun res!779415 () Bool)

(assert (=> b!1734669 (=> (not res!779415) (not e!1110073))))

(assert (=> b!1734669 (= res!779415 (matchR!2186 (regex!3384 (rule!5370 (_1!10754 (get!5702 lt!666759)))) (list!7697 (charsOf!2033 (_1!10754 (get!5702 lt!666759))))))))

(declare-fun b!1734670 () Bool)

(declare-fun e!1110074 () Bool)

(assert (=> b!1734670 (= e!1110074 e!1110073)))

(declare-fun res!779416 () Bool)

(assert (=> b!1734670 (=> (not res!779416) (not e!1110073))))

(assert (=> b!1734670 (= res!779416 (isDefined!3135 lt!666759))))

(declare-fun b!1734671 () Bool)

(declare-fun e!1110072 () Option!3792)

(declare-fun call!109973 () Option!3792)

(assert (=> b!1734671 (= e!1110072 call!109973)))

(declare-fun bm!109968 () Bool)

(assert (=> bm!109968 (= call!109973 (maxPrefixOneRule!943 thiss!24550 (h!24439 rules!3447) lt!666570))))

(declare-fun d!530587 () Bool)

(assert (=> d!530587 e!1110074))

(declare-fun res!779418 () Bool)

(assert (=> d!530587 (=> res!779418 e!1110074)))

(declare-fun isEmpty!11983 (Option!3792) Bool)

(assert (=> d!530587 (= res!779418 (isEmpty!11983 lt!666759))))

(assert (=> d!530587 (= lt!666759 e!1110072)))

(declare-fun c!283182 () Bool)

(assert (=> d!530587 (= c!283182 (and (is-Cons!19038 rules!3447) (is-Nil!19038 (t!161157 rules!3447))))))

(declare-fun lt!666755 () Unit!32926)

(declare-fun lt!666757 () Unit!32926)

(assert (=> d!530587 (= lt!666755 lt!666757)))

(assert (=> d!530587 (isPrefix!1625 lt!666570 lt!666570)))

(declare-fun lemmaIsPrefixRefl!1090 (List!19107 List!19107) Unit!32926)

(assert (=> d!530587 (= lt!666757 (lemmaIsPrefixRefl!1090 lt!666570 lt!666570))))

(declare-fun rulesValidInductive!1125 (LexerInterface!3013 List!19108) Bool)

(assert (=> d!530587 (rulesValidInductive!1125 thiss!24550 rules!3447)))

(assert (=> d!530587 (= (maxPrefix!1567 thiss!24550 rules!3447 lt!666570) lt!666759)))

(declare-fun b!1734672 () Bool)

(declare-fun res!779414 () Bool)

(assert (=> b!1734672 (=> (not res!779414) (not e!1110073))))

(assert (=> b!1734672 (= res!779414 (< (size!15131 (_2!10754 (get!5702 lt!666759))) (size!15131 lt!666570)))))

(declare-fun b!1734673 () Bool)

(declare-fun lt!666756 () Option!3792)

(declare-fun lt!666758 () Option!3792)

(assert (=> b!1734673 (= e!1110072 (ite (and (is-None!3791 lt!666756) (is-None!3791 lt!666758)) None!3791 (ite (is-None!3791 lt!666758) lt!666756 (ite (is-None!3791 lt!666756) lt!666758 (ite (>= (size!15129 (_1!10754 (v!25214 lt!666756))) (size!15129 (_1!10754 (v!25214 lt!666758)))) lt!666756 lt!666758)))))))

(assert (=> b!1734673 (= lt!666756 call!109973)))

(assert (=> b!1734673 (= lt!666758 (maxPrefix!1567 thiss!24550 (t!161157 rules!3447) lt!666570))))

(declare-fun b!1734674 () Bool)

(declare-fun res!779412 () Bool)

(assert (=> b!1734674 (=> (not res!779412) (not e!1110073))))

(assert (=> b!1734674 (= res!779412 (= (list!7697 (charsOf!2033 (_1!10754 (get!5702 lt!666759)))) (originalCharacters!4198 (_1!10754 (get!5702 lt!666759)))))))

(declare-fun b!1734675 () Bool)

(assert (=> b!1734675 (= e!1110073 (contains!3406 rules!3447 (rule!5370 (_1!10754 (get!5702 lt!666759)))))))

(declare-fun b!1734676 () Bool)

(declare-fun res!779417 () Bool)

(assert (=> b!1734676 (=> (not res!779417) (not e!1110073))))

(assert (=> b!1734676 (= res!779417 (= (value!106118 (_1!10754 (get!5702 lt!666759))) (apply!5189 (transformation!3384 (rule!5370 (_1!10754 (get!5702 lt!666759)))) (seqFromList!2358 (originalCharacters!4198 (_1!10754 (get!5702 lt!666759)))))))))

(assert (= (and d!530587 c!283182) b!1734671))

(assert (= (and d!530587 (not c!283182)) b!1734673))

(assert (= (or b!1734671 b!1734673) bm!109968))

(assert (= (and d!530587 (not res!779418)) b!1734670))

(assert (= (and b!1734670 res!779416) b!1734674))

(assert (= (and b!1734674 res!779412) b!1734672))

(assert (= (and b!1734672 res!779414) b!1734668))

(assert (= (and b!1734668 res!779413) b!1734676))

(assert (= (and b!1734676 res!779417) b!1734669))

(assert (= (and b!1734669 res!779415) b!1734675))

(declare-fun m!2144077 () Bool)

(assert (=> b!1734675 m!2144077))

(declare-fun m!2144079 () Bool)

(assert (=> b!1734675 m!2144079))

(declare-fun m!2144081 () Bool)

(assert (=> d!530587 m!2144081))

(declare-fun m!2144083 () Bool)

(assert (=> d!530587 m!2144083))

(declare-fun m!2144085 () Bool)

(assert (=> d!530587 m!2144085))

(declare-fun m!2144087 () Bool)

(assert (=> d!530587 m!2144087))

(assert (=> b!1734669 m!2144077))

(declare-fun m!2144089 () Bool)

(assert (=> b!1734669 m!2144089))

(assert (=> b!1734669 m!2144089))

(declare-fun m!2144091 () Bool)

(assert (=> b!1734669 m!2144091))

(assert (=> b!1734669 m!2144091))

(declare-fun m!2144093 () Bool)

(assert (=> b!1734669 m!2144093))

(declare-fun m!2144095 () Bool)

(assert (=> b!1734670 m!2144095))

(assert (=> b!1734668 m!2144077))

(assert (=> b!1734668 m!2144089))

(assert (=> b!1734668 m!2144089))

(assert (=> b!1734668 m!2144091))

(assert (=> b!1734668 m!2144091))

(declare-fun m!2144097 () Bool)

(assert (=> b!1734668 m!2144097))

(assert (=> b!1734672 m!2144077))

(declare-fun m!2144099 () Bool)

(assert (=> b!1734672 m!2144099))

(assert (=> b!1734672 m!2144053))

(assert (=> b!1734674 m!2144077))

(assert (=> b!1734674 m!2144089))

(assert (=> b!1734674 m!2144089))

(assert (=> b!1734674 m!2144091))

(declare-fun m!2144101 () Bool)

(assert (=> bm!109968 m!2144101))

(declare-fun m!2144103 () Bool)

(assert (=> b!1734673 m!2144103))

(assert (=> b!1734676 m!2144077))

(declare-fun m!2144105 () Bool)

(assert (=> b!1734676 m!2144105))

(assert (=> b!1734676 m!2144105))

(declare-fun m!2144107 () Bool)

(assert (=> b!1734676 m!2144107))

(assert (=> b!1734372 d!530587))

(declare-fun d!530601 () Bool)

(declare-fun e!1110078 () Bool)

(assert (=> d!530601 e!1110078))

(declare-fun res!779421 () Bool)

(assert (=> d!530601 (=> res!779421 e!1110078)))

(declare-fun lt!666761 () Bool)

(assert (=> d!530601 (= res!779421 (not lt!666761))))

(declare-fun e!1110076 () Bool)

(assert (=> d!530601 (= lt!666761 e!1110076)))

(declare-fun res!779420 () Bool)

(assert (=> d!530601 (=> res!779420 e!1110076)))

(assert (=> d!530601 (= res!779420 (is-Nil!19037 lt!666542))))

(assert (=> d!530601 (= (isPrefix!1625 lt!666542 (++!5209 lt!666542 (_2!10754 lt!666541))) lt!666761)))

(declare-fun b!1734682 () Bool)

(assert (=> b!1734682 (= e!1110078 (>= (size!15131 (++!5209 lt!666542 (_2!10754 lt!666541))) (size!15131 lt!666542)))))

(declare-fun b!1734680 () Bool)

(declare-fun res!779422 () Bool)

(declare-fun e!1110077 () Bool)

(assert (=> b!1734680 (=> (not res!779422) (not e!1110077))))

(assert (=> b!1734680 (= res!779422 (= (head!3957 lt!666542) (head!3957 (++!5209 lt!666542 (_2!10754 lt!666541)))))))

(declare-fun b!1734681 () Bool)

(assert (=> b!1734681 (= e!1110077 (isPrefix!1625 (tail!2590 lt!666542) (tail!2590 (++!5209 lt!666542 (_2!10754 lt!666541)))))))

(declare-fun b!1734679 () Bool)

(assert (=> b!1734679 (= e!1110076 e!1110077)))

(declare-fun res!779419 () Bool)

(assert (=> b!1734679 (=> (not res!779419) (not e!1110077))))

(assert (=> b!1734679 (= res!779419 (not (is-Nil!19037 (++!5209 lt!666542 (_2!10754 lt!666541)))))))

(assert (= (and d!530601 (not res!779420)) b!1734679))

(assert (= (and b!1734679 res!779419) b!1734680))

(assert (= (and b!1734680 res!779422) b!1734681))

(assert (= (and d!530601 (not res!779421)) b!1734682))

(assert (=> b!1734682 m!2143719))

(declare-fun m!2144109 () Bool)

(assert (=> b!1734682 m!2144109))

(assert (=> b!1734682 m!2143705))

(assert (=> b!1734680 m!2144055))

(assert (=> b!1734680 m!2143719))

(declare-fun m!2144111 () Bool)

(assert (=> b!1734680 m!2144111))

(assert (=> b!1734681 m!2144059))

(assert (=> b!1734681 m!2143719))

(declare-fun m!2144113 () Bool)

(assert (=> b!1734681 m!2144113))

(assert (=> b!1734681 m!2144059))

(assert (=> b!1734681 m!2144113))

(declare-fun m!2144115 () Bool)

(assert (=> b!1734681 m!2144115))

(assert (=> b!1734372 d!530601))

(declare-fun d!530603 () Bool)

(assert (=> d!530603 (isPrefix!1625 lt!666572 (++!5209 lt!666572 suffix!1421))))

(declare-fun lt!666764 () Unit!32926)

(declare-fun choose!10617 (List!19107 List!19107) Unit!32926)

(assert (=> d!530603 (= lt!666764 (choose!10617 lt!666572 suffix!1421))))

(assert (=> d!530603 (= (lemmaConcatTwoListThenFirstIsPrefix!1135 lt!666572 suffix!1421) lt!666764)))

(declare-fun bs!402746 () Bool)

(assert (= bs!402746 d!530603))

(assert (=> bs!402746 m!2143727))

(assert (=> bs!402746 m!2143727))

(declare-fun m!2144117 () Bool)

(assert (=> bs!402746 m!2144117))

(declare-fun m!2144119 () Bool)

(assert (=> bs!402746 m!2144119))

(assert (=> b!1734372 d!530603))

(declare-fun d!530605 () Bool)

(declare-fun isEmpty!11984 (Option!3793) Bool)

(assert (=> d!530605 (= (isDefined!3136 lt!666548) (not (isEmpty!11984 lt!666548)))))

(declare-fun bs!402747 () Bool)

(assert (= bs!402747 d!530605))

(declare-fun m!2144121 () Bool)

(assert (=> bs!402747 m!2144121))

(assert (=> b!1734372 d!530605))

(declare-fun d!530607 () Bool)

(assert (=> d!530607 (isPrefix!1625 lt!666542 (++!5209 lt!666542 (_2!10754 lt!666541)))))

(declare-fun lt!666765 () Unit!32926)

(assert (=> d!530607 (= lt!666765 (choose!10617 lt!666542 (_2!10754 lt!666541)))))

(assert (=> d!530607 (= (lemmaConcatTwoListThenFirstIsPrefix!1135 lt!666542 (_2!10754 lt!666541)) lt!666765)))

(declare-fun bs!402748 () Bool)

(assert (= bs!402748 d!530607))

(assert (=> bs!402748 m!2143719))

(assert (=> bs!402748 m!2143719))

(assert (=> bs!402748 m!2143733))

(declare-fun m!2144123 () Bool)

(assert (=> bs!402748 m!2144123))

(assert (=> b!1734372 d!530607))

(declare-fun d!530609 () Bool)

(declare-fun e!1110081 () Bool)

(assert (=> d!530609 e!1110081))

(declare-fun res!779425 () Bool)

(assert (=> d!530609 (=> res!779425 e!1110081)))

(declare-fun lt!666766 () Bool)

(assert (=> d!530609 (= res!779425 (not lt!666766))))

(declare-fun e!1110079 () Bool)

(assert (=> d!530609 (= lt!666766 e!1110079)))

(declare-fun res!779424 () Bool)

(assert (=> d!530609 (=> res!779424 e!1110079)))

(assert (=> d!530609 (= res!779424 (is-Nil!19037 lt!666572))))

(assert (=> d!530609 (= (isPrefix!1625 lt!666572 lt!666570) lt!666766)))

(declare-fun b!1734686 () Bool)

(assert (=> b!1734686 (= e!1110081 (>= (size!15131 lt!666570) (size!15131 lt!666572)))))

(declare-fun b!1734684 () Bool)

(declare-fun res!779426 () Bool)

(declare-fun e!1110080 () Bool)

(assert (=> b!1734684 (=> (not res!779426) (not e!1110080))))

(assert (=> b!1734684 (= res!779426 (= (head!3957 lt!666572) (head!3957 lt!666570)))))

(declare-fun b!1734685 () Bool)

(assert (=> b!1734685 (= e!1110080 (isPrefix!1625 (tail!2590 lt!666572) (tail!2590 lt!666570)))))

(declare-fun b!1734683 () Bool)

(assert (=> b!1734683 (= e!1110079 e!1110080)))

(declare-fun res!779423 () Bool)

(assert (=> b!1734683 (=> (not res!779423) (not e!1110080))))

(assert (=> b!1734683 (= res!779423 (not (is-Nil!19037 lt!666570)))))

(assert (= (and d!530609 (not res!779424)) b!1734683))

(assert (= (and b!1734683 res!779423) b!1734684))

(assert (= (and b!1734684 res!779426) b!1734685))

(assert (= (and d!530609 (not res!779425)) b!1734686))

(assert (=> b!1734686 m!2144053))

(assert (=> b!1734686 m!2144041))

(assert (=> b!1734684 m!2143979))

(assert (=> b!1734684 m!2144057))

(assert (=> b!1734685 m!2143983))

(assert (=> b!1734685 m!2144061))

(assert (=> b!1734685 m!2143983))

(assert (=> b!1734685 m!2144061))

(declare-fun m!2144125 () Bool)

(assert (=> b!1734685 m!2144125))

(assert (=> b!1734372 d!530609))

(declare-fun b!1734738 () Bool)

(declare-fun res!779458 () Bool)

(declare-fun e!1110110 () Bool)

(assert (=> b!1734738 (=> (not res!779458) (not e!1110110))))

(declare-fun lt!666841 () Token!6334)

(assert (=> b!1734738 (= res!779458 (matchR!2186 (regex!3384 (get!5703 (getRuleFromTag!434 thiss!24550 rules!3447 (tag!3714 (rule!5370 lt!666841))))) (list!7697 (charsOf!2033 lt!666841))))))

(declare-fun b!1734741 () Bool)

(declare-fun e!1110111 () Unit!32926)

(declare-fun Unit!32941 () Unit!32926)

(assert (=> b!1734741 (= e!1110111 Unit!32941)))

(declare-fun b!1734739 () Bool)

(assert (=> b!1734739 (= e!1110110 (= (rule!5370 lt!666841) (get!5703 (getRuleFromTag!434 thiss!24550 rules!3447 (tag!3714 (rule!5370 lt!666841))))))))

(declare-fun b!1734740 () Bool)

(declare-fun Unit!32942 () Unit!32926)

(assert (=> b!1734740 (= e!1110111 Unit!32942)))

(declare-fun lt!666842 () List!19107)

(assert (=> b!1734740 (= lt!666842 (++!5209 lt!666572 suffix!1421))))

(declare-fun lt!666848 () Unit!32926)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!282 (LexerInterface!3013 Rule!6568 List!19108 List!19107) Unit!32926)

(assert (=> b!1734740 (= lt!666848 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!282 thiss!24550 (rule!5370 lt!666841) rules!3447 lt!666842))))

(assert (=> b!1734740 (isEmpty!11983 (maxPrefixOneRule!943 thiss!24550 (rule!5370 lt!666841) lt!666842))))

(declare-fun lt!666843 () Unit!32926)

(assert (=> b!1734740 (= lt!666843 lt!666848)))

(declare-fun lt!666851 () List!19107)

(assert (=> b!1734740 (= lt!666851 (list!7697 (charsOf!2033 lt!666841)))))

(declare-fun lt!666835 () Unit!32926)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!278 (LexerInterface!3013 Rule!6568 List!19107 List!19107) Unit!32926)

(assert (=> b!1734740 (= lt!666835 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!278 thiss!24550 (rule!5370 lt!666841) lt!666851 (++!5209 lt!666572 suffix!1421)))))

(assert (=> b!1734740 (not (matchR!2186 (regex!3384 (rule!5370 lt!666841)) lt!666851))))

(declare-fun lt!666850 () Unit!32926)

(assert (=> b!1734740 (= lt!666850 lt!666835)))

(assert (=> b!1734740 false))

(declare-fun d!530611 () Bool)

(assert (=> d!530611 (isDefined!3135 (maxPrefix!1567 thiss!24550 rules!3447 (++!5209 lt!666572 suffix!1421)))))

(declare-fun lt!666837 () Unit!32926)

(assert (=> d!530611 (= lt!666837 e!1110111)))

(declare-fun c!283192 () Bool)

(assert (=> d!530611 (= c!283192 (isEmpty!11983 (maxPrefix!1567 thiss!24550 rules!3447 (++!5209 lt!666572 suffix!1421))))))

(declare-fun lt!666845 () Unit!32926)

(declare-fun lt!666840 () Unit!32926)

(assert (=> d!530611 (= lt!666845 lt!666840)))

(assert (=> d!530611 e!1110110))

(declare-fun res!779457 () Bool)

(assert (=> d!530611 (=> (not res!779457) (not e!1110110))))

(assert (=> d!530611 (= res!779457 (isDefined!3136 (getRuleFromTag!434 thiss!24550 rules!3447 (tag!3714 (rule!5370 lt!666841)))))))

(assert (=> d!530611 (= lt!666840 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!434 thiss!24550 rules!3447 lt!666572 lt!666841))))

(declare-fun lt!666839 () Unit!32926)

(declare-fun lt!666849 () Unit!32926)

(assert (=> d!530611 (= lt!666839 lt!666849)))

(declare-fun lt!666838 () List!19107)

(assert (=> d!530611 (isPrefix!1625 lt!666838 (++!5209 lt!666572 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!274 (List!19107 List!19107 List!19107) Unit!32926)

(assert (=> d!530611 (= lt!666849 (lemmaPrefixStaysPrefixWhenAddingToSuffix!274 lt!666838 lt!666572 suffix!1421))))

(assert (=> d!530611 (= lt!666838 (list!7697 (charsOf!2033 lt!666841)))))

(declare-fun lt!666847 () Unit!32926)

(declare-fun lt!666846 () Unit!32926)

(assert (=> d!530611 (= lt!666847 lt!666846)))

(declare-fun lt!666836 () List!19107)

(declare-fun lt!666844 () List!19107)

(assert (=> d!530611 (isPrefix!1625 lt!666836 (++!5209 lt!666836 lt!666844))))

(assert (=> d!530611 (= lt!666846 (lemmaConcatTwoListThenFirstIsPrefix!1135 lt!666836 lt!666844))))

(assert (=> d!530611 (= lt!666844 (_2!10754 (get!5702 (maxPrefix!1567 thiss!24550 rules!3447 lt!666572))))))

(assert (=> d!530611 (= lt!666836 (list!7697 (charsOf!2033 lt!666841)))))

(declare-datatypes ((List!19112 0))(
  ( (Nil!19042) (Cons!19042 (h!24443 Token!6334) (t!161239 List!19112)) )
))
(declare-fun head!3959 (List!19112) Token!6334)

(declare-datatypes ((IArray!12673 0))(
  ( (IArray!12674 (innerList!6394 List!19112)) )
))
(declare-datatypes ((Conc!6334 0))(
  ( (Node!6334 (left!15220 Conc!6334) (right!15550 Conc!6334) (csize!12898 Int) (cheight!6545 Int)) (Leaf!9247 (xs!9210 IArray!12673) (csize!12899 Int)) (Empty!6334) )
))
(declare-datatypes ((BalanceConc!12612 0))(
  ( (BalanceConc!12613 (c!283286 Conc!6334)) )
))
(declare-fun list!7700 (BalanceConc!12612) List!19112)

(declare-datatypes ((tuple2!18708 0))(
  ( (tuple2!18709 (_1!10756 BalanceConc!12612) (_2!10756 BalanceConc!12608)) )
))
(declare-fun lex!1413 (LexerInterface!3013 List!19108 BalanceConc!12608) tuple2!18708)

(assert (=> d!530611 (= lt!666841 (head!3959 (list!7700 (_1!10756 (lex!1413 thiss!24550 rules!3447 (seqFromList!2358 lt!666572))))))))

(assert (=> d!530611 (not (isEmpty!11980 rules!3447))))

(assert (=> d!530611 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!537 thiss!24550 rules!3447 lt!666572 suffix!1421) lt!666837)))

(assert (= (and d!530611 res!779457) b!1734738))

(assert (= (and b!1734738 res!779458) b!1734739))

(assert (= (and d!530611 c!283192) b!1734740))

(assert (= (and d!530611 (not c!283192)) b!1734741))

(declare-fun m!2144209 () Bool)

(assert (=> b!1734738 m!2144209))

(declare-fun m!2144211 () Bool)

(assert (=> b!1734738 m!2144211))

(declare-fun m!2144213 () Bool)

(assert (=> b!1734738 m!2144213))

(assert (=> b!1734738 m!2144211))

(assert (=> b!1734738 m!2144213))

(declare-fun m!2144215 () Bool)

(assert (=> b!1734738 m!2144215))

(assert (=> b!1734738 m!2144209))

(declare-fun m!2144217 () Bool)

(assert (=> b!1734738 m!2144217))

(assert (=> b!1734739 m!2144209))

(assert (=> b!1734739 m!2144209))

(assert (=> b!1734739 m!2144217))

(assert (=> b!1734740 m!2144211))

(assert (=> b!1734740 m!2144213))

(assert (=> b!1734740 m!2144211))

(declare-fun m!2144219 () Bool)

(assert (=> b!1734740 m!2144219))

(assert (=> b!1734740 m!2143727))

(declare-fun m!2144221 () Bool)

(assert (=> b!1734740 m!2144221))

(assert (=> b!1734740 m!2144219))

(declare-fun m!2144223 () Bool)

(assert (=> b!1734740 m!2144223))

(assert (=> b!1734740 m!2143727))

(declare-fun m!2144225 () Bool)

(assert (=> b!1734740 m!2144225))

(declare-fun m!2144227 () Bool)

(assert (=> b!1734740 m!2144227))

(assert (=> d!530611 m!2144209))

(assert (=> d!530611 m!2144211))

(assert (=> d!530611 m!2144213))

(declare-fun m!2144229 () Bool)

(assert (=> d!530611 m!2144229))

(declare-fun m!2144231 () Bool)

(assert (=> d!530611 m!2144231))

(assert (=> d!530611 m!2143727))

(declare-fun m!2144233 () Bool)

(assert (=> d!530611 m!2144233))

(declare-fun m!2144235 () Bool)

(assert (=> d!530611 m!2144235))

(declare-fun m!2144237 () Bool)

(assert (=> d!530611 m!2144237))

(declare-fun m!2144239 () Bool)

(assert (=> d!530611 m!2144239))

(assert (=> d!530611 m!2143643))

(declare-fun m!2144241 () Bool)

(assert (=> d!530611 m!2144241))

(declare-fun m!2144243 () Bool)

(assert (=> d!530611 m!2144243))

(declare-fun m!2144245 () Bool)

(assert (=> d!530611 m!2144245))

(assert (=> d!530611 m!2144211))

(assert (=> d!530611 m!2144209))

(declare-fun m!2144247 () Bool)

(assert (=> d!530611 m!2144247))

(assert (=> d!530611 m!2143795))

(assert (=> d!530611 m!2143727))

(declare-fun m!2144249 () Bool)

(assert (=> d!530611 m!2144249))

(assert (=> d!530611 m!2144243))

(declare-fun m!2144251 () Bool)

(assert (=> d!530611 m!2144251))

(assert (=> d!530611 m!2143643))

(assert (=> d!530611 m!2144239))

(declare-fun m!2144253 () Bool)

(assert (=> d!530611 m!2144253))

(assert (=> d!530611 m!2143727))

(assert (=> d!530611 m!2144243))

(assert (=> d!530611 m!2144237))

(declare-fun m!2144255 () Bool)

(assert (=> d!530611 m!2144255))

(assert (=> d!530611 m!2144229))

(declare-fun m!2144257 () Bool)

(assert (=> d!530611 m!2144257))

(assert (=> b!1734372 d!530611))

(declare-fun d!530639 () Bool)

(declare-fun lt!666854 () BalanceConc!12608)

(assert (=> d!530639 (= (list!7697 lt!666854) (originalCharacters!4198 (_1!10754 lt!666541)))))

(assert (=> d!530639 (= lt!666854 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541))))))

(assert (=> d!530639 (= (charsOf!2033 (_1!10754 lt!666541)) lt!666854)))

(declare-fun b_lambda!55451 () Bool)

(assert (=> (not b_lambda!55451) (not d!530639)))

(assert (=> d!530639 t!161138))

(declare-fun b_and!128383 () Bool)

(assert (= b_and!128287 (and (=> t!161138 result!124418) b_and!128383)))

(assert (=> d!530639 t!161140))

(declare-fun b_and!128385 () Bool)

(assert (= b_and!128289 (and (=> t!161140 result!124422) b_and!128385)))

(assert (=> d!530639 t!161142))

(declare-fun b_and!128387 () Bool)

(assert (= b_and!128291 (and (=> t!161142 result!124424) b_and!128387)))

(declare-fun m!2144259 () Bool)

(assert (=> d!530639 m!2144259))

(assert (=> d!530639 m!2143711))

(assert (=> b!1734372 d!530639))

(declare-fun b!1734796 () Bool)

(declare-fun e!1110141 () Option!3793)

(assert (=> b!1734796 (= e!1110141 (Some!3792 (h!24439 rules!3447)))))

(declare-fun b!1734797 () Bool)

(declare-fun e!1110144 () Bool)

(declare-fun e!1110143 () Bool)

(assert (=> b!1734797 (= e!1110144 e!1110143)))

(declare-fun res!779487 () Bool)

(assert (=> b!1734797 (=> (not res!779487) (not e!1110143))))

(declare-fun lt!666867 () Option!3793)

(assert (=> b!1734797 (= res!779487 (contains!3406 rules!3447 (get!5703 lt!666867)))))

(declare-fun b!1734798 () Bool)

(declare-fun e!1110142 () Option!3793)

(assert (=> b!1734798 (= e!1110141 e!1110142)))

(declare-fun c!283206 () Bool)

(assert (=> b!1734798 (= c!283206 (and (is-Cons!19038 rules!3447) (not (= (tag!3714 (h!24439 rules!3447)) (tag!3714 (rule!5370 (_1!10754 lt!666541)))))))))

(declare-fun d!530641 () Bool)

(assert (=> d!530641 e!1110144))

(declare-fun res!779488 () Bool)

(assert (=> d!530641 (=> res!779488 e!1110144)))

(assert (=> d!530641 (= res!779488 (isEmpty!11984 lt!666867))))

(assert (=> d!530641 (= lt!666867 e!1110141)))

(declare-fun c!283207 () Bool)

(assert (=> d!530641 (= c!283207 (and (is-Cons!19038 rules!3447) (= (tag!3714 (h!24439 rules!3447)) (tag!3714 (rule!5370 (_1!10754 lt!666541))))))))

(assert (=> d!530641 (rulesInvariant!2682 thiss!24550 rules!3447)))

(assert (=> d!530641 (= (getRuleFromTag!434 thiss!24550 rules!3447 (tag!3714 (rule!5370 (_1!10754 lt!666541)))) lt!666867)))

(declare-fun b!1734799 () Bool)

(declare-fun lt!666868 () Unit!32926)

(declare-fun lt!666866 () Unit!32926)

(assert (=> b!1734799 (= lt!666868 lt!666866)))

(assert (=> b!1734799 (rulesInvariant!2682 thiss!24550 (t!161157 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!153 (LexerInterface!3013 Rule!6568 List!19108) Unit!32926)

(assert (=> b!1734799 (= lt!666866 (lemmaInvariantOnRulesThenOnTail!153 thiss!24550 (h!24439 rules!3447) (t!161157 rules!3447)))))

(assert (=> b!1734799 (= e!1110142 (getRuleFromTag!434 thiss!24550 (t!161157 rules!3447) (tag!3714 (rule!5370 (_1!10754 lt!666541)))))))

(declare-fun b!1734800 () Bool)

(assert (=> b!1734800 (= e!1110142 None!3792)))

(declare-fun b!1734801 () Bool)

(assert (=> b!1734801 (= e!1110143 (= (tag!3714 (get!5703 lt!666867)) (tag!3714 (rule!5370 (_1!10754 lt!666541)))))))

(assert (= (and d!530641 c!283207) b!1734796))

(assert (= (and d!530641 (not c!283207)) b!1734798))

(assert (= (and b!1734798 c!283206) b!1734799))

(assert (= (and b!1734798 (not c!283206)) b!1734800))

(assert (= (and d!530641 (not res!779488)) b!1734797))

(assert (= (and b!1734797 res!779487) b!1734801))

(declare-fun m!2144279 () Bool)

(assert (=> b!1734797 m!2144279))

(assert (=> b!1734797 m!2144279))

(declare-fun m!2144281 () Bool)

(assert (=> b!1734797 m!2144281))

(declare-fun m!2144283 () Bool)

(assert (=> d!530641 m!2144283))

(assert (=> d!530641 m!2143695))

(declare-fun m!2144285 () Bool)

(assert (=> b!1734799 m!2144285))

(declare-fun m!2144287 () Bool)

(assert (=> b!1734799 m!2144287))

(declare-fun m!2144289 () Bool)

(assert (=> b!1734799 m!2144289))

(assert (=> b!1734801 m!2144279))

(assert (=> b!1734372 d!530641))

(declare-fun d!530647 () Bool)

(declare-fun list!7701 (Conc!6332) List!19107)

(assert (=> d!530647 (= (list!7697 lt!666568) (list!7701 (c!283144 lt!666568)))))

(declare-fun bs!402758 () Bool)

(assert (= bs!402758 d!530647))

(declare-fun m!2144293 () Bool)

(assert (=> bs!402758 m!2144293))

(assert (=> b!1734372 d!530647))

(declare-fun b!1734802 () Bool)

(declare-fun e!1110145 () List!19107)

(assert (=> b!1734802 (= e!1110145 (_2!10754 lt!666541))))

(declare-fun b!1734804 () Bool)

(declare-fun res!779489 () Bool)

(declare-fun e!1110146 () Bool)

(assert (=> b!1734804 (=> (not res!779489) (not e!1110146))))

(declare-fun lt!666870 () List!19107)

(assert (=> b!1734804 (= res!779489 (= (size!15131 lt!666870) (+ (size!15131 lt!666542) (size!15131 (_2!10754 lt!666541)))))))

(declare-fun b!1734803 () Bool)

(assert (=> b!1734803 (= e!1110145 (Cons!19037 (h!24438 lt!666542) (++!5209 (t!161156 lt!666542) (_2!10754 lt!666541))))))

(declare-fun b!1734805 () Bool)

(assert (=> b!1734805 (= e!1110146 (or (not (= (_2!10754 lt!666541) Nil!19037)) (= lt!666870 lt!666542)))))

(declare-fun d!530653 () Bool)

(assert (=> d!530653 e!1110146))

(declare-fun res!779490 () Bool)

(assert (=> d!530653 (=> (not res!779490) (not e!1110146))))

(assert (=> d!530653 (= res!779490 (= (content!2725 lt!666870) (set.union (content!2725 lt!666542) (content!2725 (_2!10754 lt!666541)))))))

(assert (=> d!530653 (= lt!666870 e!1110145)))

(declare-fun c!283208 () Bool)

(assert (=> d!530653 (= c!283208 (is-Nil!19037 lt!666542))))

(assert (=> d!530653 (= (++!5209 lt!666542 (_2!10754 lt!666541)) lt!666870)))

(assert (= (and d!530653 c!283208) b!1734802))

(assert (= (and d!530653 (not c!283208)) b!1734803))

(assert (= (and d!530653 res!779490) b!1734804))

(assert (= (and b!1734804 res!779489) b!1734805))

(declare-fun m!2144295 () Bool)

(assert (=> b!1734804 m!2144295))

(assert (=> b!1734804 m!2143705))

(declare-fun m!2144297 () Bool)

(assert (=> b!1734804 m!2144297))

(declare-fun m!2144299 () Bool)

(assert (=> b!1734803 m!2144299))

(declare-fun m!2144301 () Bool)

(assert (=> d!530653 m!2144301))

(declare-fun m!2144303 () Bool)

(assert (=> d!530653 m!2144303))

(declare-fun m!2144305 () Bool)

(assert (=> d!530653 m!2144305))

(assert (=> b!1734372 d!530653))

(declare-fun d!530655 () Bool)

(assert (=> d!530655 (= (get!5702 lt!666552) (v!25214 lt!666552))))

(assert (=> b!1734372 d!530655))

(declare-fun d!530657 () Bool)

(declare-fun e!1110161 () Bool)

(assert (=> d!530657 e!1110161))

(declare-fun res!779504 () Bool)

(assert (=> d!530657 (=> (not res!779504) (not e!1110161))))

(assert (=> d!530657 (= res!779504 (isDefined!3136 (getRuleFromTag!434 thiss!24550 rules!3447 (tag!3714 (rule!5370 (_1!10754 lt!666541))))))))

(declare-fun lt!666876 () Unit!32926)

(declare-fun choose!10618 (LexerInterface!3013 List!19108 List!19107 Token!6334) Unit!32926)

(assert (=> d!530657 (= lt!666876 (choose!10618 thiss!24550 rules!3447 lt!666570 (_1!10754 lt!666541)))))

(assert (=> d!530657 (rulesInvariant!2682 thiss!24550 rules!3447)))

(assert (=> d!530657 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!434 thiss!24550 rules!3447 lt!666570 (_1!10754 lt!666541)) lt!666876)))

(declare-fun b!1734825 () Bool)

(declare-fun res!779505 () Bool)

(assert (=> b!1734825 (=> (not res!779505) (not e!1110161))))

(assert (=> b!1734825 (= res!779505 (matchR!2186 (regex!3384 (get!5703 (getRuleFromTag!434 thiss!24550 rules!3447 (tag!3714 (rule!5370 (_1!10754 lt!666541)))))) (list!7697 (charsOf!2033 (_1!10754 lt!666541)))))))

(declare-fun b!1734826 () Bool)

(assert (=> b!1734826 (= e!1110161 (= (rule!5370 (_1!10754 lt!666541)) (get!5703 (getRuleFromTag!434 thiss!24550 rules!3447 (tag!3714 (rule!5370 (_1!10754 lt!666541)))))))))

(assert (= (and d!530657 res!779504) b!1734825))

(assert (= (and b!1734825 res!779505) b!1734826))

(assert (=> d!530657 m!2143721))

(assert (=> d!530657 m!2143721))

(declare-fun m!2144317 () Bool)

(assert (=> d!530657 m!2144317))

(declare-fun m!2144319 () Bool)

(assert (=> d!530657 m!2144319))

(assert (=> d!530657 m!2143695))

(assert (=> b!1734825 m!2143687))

(assert (=> b!1734825 m!2143689))

(assert (=> b!1734825 m!2143721))

(assert (=> b!1734825 m!2143721))

(declare-fun m!2144321 () Bool)

(assert (=> b!1734825 m!2144321))

(assert (=> b!1734825 m!2143689))

(declare-fun m!2144323 () Bool)

(assert (=> b!1734825 m!2144323))

(assert (=> b!1734825 m!2143687))

(assert (=> b!1734826 m!2143721))

(assert (=> b!1734826 m!2143721))

(assert (=> b!1734826 m!2144321))

(assert (=> b!1734372 d!530657))

(declare-fun d!530665 () Bool)

(declare-fun res!779512 () Bool)

(declare-fun e!1110166 () Bool)

(assert (=> d!530665 (=> (not res!779512) (not e!1110166))))

(assert (=> d!530665 (= res!779512 (not (isEmpty!11979 (originalCharacters!4198 token!523))))))

(assert (=> d!530665 (= (inv!24646 token!523) e!1110166)))

(declare-fun b!1734833 () Bool)

(declare-fun res!779513 () Bool)

(assert (=> b!1734833 (=> (not res!779513) (not e!1110166))))

(assert (=> b!1734833 (= res!779513 (= (originalCharacters!4198 token!523) (list!7697 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 token!523))) (value!106118 token!523)))))))

(declare-fun b!1734834 () Bool)

(assert (=> b!1734834 (= e!1110166 (= (size!15129 token!523) (size!15131 (originalCharacters!4198 token!523))))))

(assert (= (and d!530665 res!779512) b!1734833))

(assert (= (and b!1734833 res!779513) b!1734834))

(declare-fun b_lambda!55455 () Bool)

(assert (=> (not b_lambda!55455) (not b!1734833)))

(declare-fun t!161198 () Bool)

(declare-fun tb!103521 () Bool)

(assert (=> (and b!1734350 (= (toChars!4750 (transformation!3384 (rule!5370 token!523))) (toChars!4750 (transformation!3384 (rule!5370 token!523)))) t!161198) tb!103521))

(declare-fun b!1734835 () Bool)

(declare-fun e!1110167 () Bool)

(declare-fun tp!494461 () Bool)

(assert (=> b!1734835 (= e!1110167 (and (inv!24648 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 token!523))) (value!106118 token!523)))) tp!494461))))

(declare-fun result!124480 () Bool)

(assert (=> tb!103521 (= result!124480 (and (inv!24649 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 token!523))) (value!106118 token!523))) e!1110167))))

(assert (= tb!103521 b!1734835))

(declare-fun m!2144327 () Bool)

(assert (=> b!1734835 m!2144327))

(declare-fun m!2144329 () Bool)

(assert (=> tb!103521 m!2144329))

(assert (=> b!1734833 t!161198))

(declare-fun b_and!128395 () Bool)

(assert (= b_and!128383 (and (=> t!161198 result!124480) b_and!128395)))

(declare-fun t!161200 () Bool)

(declare-fun tb!103523 () Bool)

(assert (=> (and b!1734364 (= (toChars!4750 (transformation!3384 (h!24439 rules!3447))) (toChars!4750 (transformation!3384 (rule!5370 token!523)))) t!161200) tb!103523))

(declare-fun result!124482 () Bool)

(assert (= result!124482 result!124480))

(assert (=> b!1734833 t!161200))

(declare-fun b_and!128397 () Bool)

(assert (= b_and!128385 (and (=> t!161200 result!124482) b_and!128397)))

(declare-fun t!161202 () Bool)

(declare-fun tb!103525 () Bool)

(assert (=> (and b!1734358 (= (toChars!4750 (transformation!3384 rule!422)) (toChars!4750 (transformation!3384 (rule!5370 token!523)))) t!161202) tb!103525))

(declare-fun result!124484 () Bool)

(assert (= result!124484 result!124480))

(assert (=> b!1734833 t!161202))

(declare-fun b_and!128399 () Bool)

(assert (= b_and!128387 (and (=> t!161202 result!124484) b_and!128399)))

(declare-fun m!2144335 () Bool)

(assert (=> d!530665 m!2144335))

(declare-fun m!2144337 () Bool)

(assert (=> b!1734833 m!2144337))

(assert (=> b!1734833 m!2144337))

(declare-fun m!2144339 () Bool)

(assert (=> b!1734833 m!2144339))

(declare-fun m!2144341 () Bool)

(assert (=> b!1734834 m!2144341))

(assert (=> start!170524 d!530665))

(declare-fun d!530673 () Bool)

(assert (=> d!530673 (= (isEmpty!11979 (_2!10754 lt!666577)) (is-Nil!19037 (_2!10754 lt!666577)))))

(assert (=> b!1734351 d!530673))

(declare-fun d!530675 () Bool)

(declare-fun c!283217 () Bool)

(assert (=> d!530675 (= c!283217 (is-Node!6332 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541))))))))

(declare-fun e!1110186 () Bool)

(assert (=> d!530675 (= (inv!24648 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541))))) e!1110186)))

(declare-fun b!1734865 () Bool)

(declare-fun inv!24654 (Conc!6332) Bool)

(assert (=> b!1734865 (= e!1110186 (inv!24654 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541))))))))

(declare-fun b!1734866 () Bool)

(declare-fun e!1110187 () Bool)

(assert (=> b!1734866 (= e!1110186 e!1110187)))

(declare-fun res!779533 () Bool)

(assert (=> b!1734866 (= res!779533 (not (is-Leaf!9245 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541)))))))))

(assert (=> b!1734866 (=> res!779533 e!1110187)))

(declare-fun b!1734867 () Bool)

(declare-fun inv!24655 (Conc!6332) Bool)

(assert (=> b!1734867 (= e!1110187 (inv!24655 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541))))))))

(assert (= (and d!530675 c!283217) b!1734865))

(assert (= (and d!530675 (not c!283217)) b!1734866))

(assert (= (and b!1734866 (not res!779533)) b!1734867))

(declare-fun m!2144359 () Bool)

(assert (=> b!1734865 m!2144359))

(declare-fun m!2144361 () Bool)

(assert (=> b!1734867 m!2144361))

(assert (=> b!1734394 d!530675))

(declare-fun d!530679 () Bool)

(declare-fun lt!666886 () Bool)

(declare-fun content!2726 (List!19108) (Set Rule!6568))

(assert (=> d!530679 (= lt!666886 (set.member rule!422 (content!2726 rules!3447)))))

(declare-fun e!1110195 () Bool)

(assert (=> d!530679 (= lt!666886 e!1110195)))

(declare-fun res!779543 () Bool)

(assert (=> d!530679 (=> (not res!779543) (not e!1110195))))

(assert (=> d!530679 (= res!779543 (is-Cons!19038 rules!3447))))

(assert (=> d!530679 (= (contains!3406 rules!3447 rule!422) lt!666886)))

(declare-fun b!1734876 () Bool)

(declare-fun e!1110196 () Bool)

(assert (=> b!1734876 (= e!1110195 e!1110196)))

(declare-fun res!779542 () Bool)

(assert (=> b!1734876 (=> res!779542 e!1110196)))

(assert (=> b!1734876 (= res!779542 (= (h!24439 rules!3447) rule!422))))

(declare-fun b!1734877 () Bool)

(assert (=> b!1734877 (= e!1110196 (contains!3406 (t!161157 rules!3447) rule!422))))

(assert (= (and d!530679 res!779543) b!1734876))

(assert (= (and b!1734876 (not res!779542)) b!1734877))

(declare-fun m!2144373 () Bool)

(assert (=> d!530679 m!2144373))

(declare-fun m!2144375 () Bool)

(assert (=> d!530679 m!2144375))

(declare-fun m!2144377 () Bool)

(assert (=> b!1734877 m!2144377))

(assert (=> b!1734373 d!530679))

(declare-fun d!530683 () Bool)

(assert (=> d!530683 (= (isEmpty!11979 suffix!1421) (is-Nil!19037 suffix!1421))))

(assert (=> b!1734374 d!530683))

(declare-fun d!530685 () Bool)

(assert (=> d!530685 (= (inv!24643 (tag!3714 (h!24439 rules!3447))) (= (mod (str.len (value!106117 (tag!3714 (h!24439 rules!3447)))) 2) 0))))

(assert (=> b!1734353 d!530685))

(declare-fun d!530687 () Bool)

(declare-fun res!779546 () Bool)

(declare-fun e!1110199 () Bool)

(assert (=> d!530687 (=> (not res!779546) (not e!1110199))))

(assert (=> d!530687 (= res!779546 (semiInverseModEq!1338 (toChars!4750 (transformation!3384 (h!24439 rules!3447))) (toValue!4891 (transformation!3384 (h!24439 rules!3447)))))))

(assert (=> d!530687 (= (inv!24647 (transformation!3384 (h!24439 rules!3447))) e!1110199)))

(declare-fun b!1734880 () Bool)

(assert (=> b!1734880 (= e!1110199 (equivClasses!1279 (toChars!4750 (transformation!3384 (h!24439 rules!3447))) (toValue!4891 (transformation!3384 (h!24439 rules!3447)))))))

(assert (= (and d!530687 res!779546) b!1734880))

(declare-fun m!2144381 () Bool)

(assert (=> d!530687 m!2144381))

(declare-fun m!2144383 () Bool)

(assert (=> b!1734880 m!2144383))

(assert (=> b!1734353 d!530687))

(declare-fun b!1734881 () Bool)

(declare-fun res!779548 () Bool)

(declare-fun e!1110205 () Bool)

(assert (=> b!1734881 (=> res!779548 e!1110205)))

(assert (=> b!1734881 (= res!779548 (not (is-ElementMatch!4712 (regex!3384 (rule!5370 (_1!10754 lt!666541))))))))

(declare-fun e!1110200 () Bool)

(assert (=> b!1734881 (= e!1110200 e!1110205)))

(declare-fun b!1734882 () Bool)

(declare-fun e!1110204 () Bool)

(declare-fun e!1110202 () Bool)

(assert (=> b!1734882 (= e!1110204 e!1110202)))

(declare-fun res!779553 () Bool)

(assert (=> b!1734882 (=> res!779553 e!1110202)))

(declare-fun call!109978 () Bool)

(assert (=> b!1734882 (= res!779553 call!109978)))

(declare-fun b!1734883 () Bool)

(declare-fun res!779554 () Bool)

(declare-fun e!1110201 () Bool)

(assert (=> b!1734883 (=> (not res!779554) (not e!1110201))))

(assert (=> b!1734883 (= res!779554 (not call!109978))))

(declare-fun d!530691 () Bool)

(declare-fun e!1110203 () Bool)

(assert (=> d!530691 e!1110203))

(declare-fun c!283218 () Bool)

(assert (=> d!530691 (= c!283218 (is-EmptyExpr!4712 (regex!3384 (rule!5370 (_1!10754 lt!666541)))))))

(declare-fun lt!666892 () Bool)

(declare-fun e!1110206 () Bool)

(assert (=> d!530691 (= lt!666892 e!1110206)))

(declare-fun c!283219 () Bool)

(assert (=> d!530691 (= c!283219 (isEmpty!11979 lt!666542))))

(assert (=> d!530691 (validRegex!1899 (regex!3384 (rule!5370 (_1!10754 lt!666541))))))

(assert (=> d!530691 (= (matchR!2186 (regex!3384 (rule!5370 (_1!10754 lt!666541))) lt!666542) lt!666892)))

(declare-fun b!1734884 () Bool)

(declare-fun res!779549 () Bool)

(assert (=> b!1734884 (=> res!779549 e!1110202)))

(assert (=> b!1734884 (= res!779549 (not (isEmpty!11979 (tail!2590 lt!666542))))))

(declare-fun b!1734885 () Bool)

(assert (=> b!1734885 (= e!1110205 e!1110204)))

(declare-fun res!779550 () Bool)

(assert (=> b!1734885 (=> (not res!779550) (not e!1110204))))

(assert (=> b!1734885 (= res!779550 (not lt!666892))))

(declare-fun b!1734886 () Bool)

(declare-fun res!779551 () Bool)

(assert (=> b!1734886 (=> res!779551 e!1110205)))

(assert (=> b!1734886 (= res!779551 e!1110201)))

(declare-fun res!779547 () Bool)

(assert (=> b!1734886 (=> (not res!779547) (not e!1110201))))

(assert (=> b!1734886 (= res!779547 lt!666892)))

(declare-fun b!1734887 () Bool)

(declare-fun res!779552 () Bool)

(assert (=> b!1734887 (=> (not res!779552) (not e!1110201))))

(assert (=> b!1734887 (= res!779552 (isEmpty!11979 (tail!2590 lt!666542)))))

(declare-fun b!1734888 () Bool)

(assert (=> b!1734888 (= e!1110206 (nullable!1425 (regex!3384 (rule!5370 (_1!10754 lt!666541)))))))

(declare-fun b!1734889 () Bool)

(assert (=> b!1734889 (= e!1110202 (not (= (head!3957 lt!666542) (c!283143 (regex!3384 (rule!5370 (_1!10754 lt!666541)))))))))

(declare-fun b!1734890 () Bool)

(assert (=> b!1734890 (= e!1110203 e!1110200)))

(declare-fun c!283220 () Bool)

(assert (=> b!1734890 (= c!283220 (is-EmptyLang!4712 (regex!3384 (rule!5370 (_1!10754 lt!666541)))))))

(declare-fun bm!109973 () Bool)

(assert (=> bm!109973 (= call!109978 (isEmpty!11979 lt!666542))))

(declare-fun b!1734891 () Bool)

(assert (=> b!1734891 (= e!1110201 (= (head!3957 lt!666542) (c!283143 (regex!3384 (rule!5370 (_1!10754 lt!666541))))))))

(declare-fun b!1734892 () Bool)

(assert (=> b!1734892 (= e!1110203 (= lt!666892 call!109978))))

(declare-fun b!1734893 () Bool)

(assert (=> b!1734893 (= e!1110206 (matchR!2186 (derivativeStep!1193 (regex!3384 (rule!5370 (_1!10754 lt!666541))) (head!3957 lt!666542)) (tail!2590 lt!666542)))))

(declare-fun b!1734894 () Bool)

(assert (=> b!1734894 (= e!1110200 (not lt!666892))))

(assert (= (and d!530691 c!283219) b!1734888))

(assert (= (and d!530691 (not c!283219)) b!1734893))

(assert (= (and d!530691 c!283218) b!1734892))

(assert (= (and d!530691 (not c!283218)) b!1734890))

(assert (= (and b!1734890 c!283220) b!1734894))

(assert (= (and b!1734890 (not c!283220)) b!1734881))

(assert (= (and b!1734881 (not res!779548)) b!1734886))

(assert (= (and b!1734886 res!779547) b!1734883))

(assert (= (and b!1734883 res!779554) b!1734887))

(assert (= (and b!1734887 res!779552) b!1734891))

(assert (= (and b!1734886 (not res!779551)) b!1734885))

(assert (= (and b!1734885 res!779550) b!1734882))

(assert (= (and b!1734882 (not res!779553)) b!1734884))

(assert (= (and b!1734884 (not res!779549)) b!1734889))

(assert (= (or b!1734892 b!1734882 b!1734883) bm!109973))

(declare-fun m!2144395 () Bool)

(assert (=> d!530691 m!2144395))

(declare-fun m!2144397 () Bool)

(assert (=> d!530691 m!2144397))

(assert (=> bm!109973 m!2144395))

(assert (=> b!1734893 m!2144055))

(assert (=> b!1734893 m!2144055))

(declare-fun m!2144399 () Bool)

(assert (=> b!1734893 m!2144399))

(assert (=> b!1734893 m!2144059))

(assert (=> b!1734893 m!2144399))

(assert (=> b!1734893 m!2144059))

(declare-fun m!2144401 () Bool)

(assert (=> b!1734893 m!2144401))

(declare-fun m!2144403 () Bool)

(assert (=> b!1734888 m!2144403))

(assert (=> b!1734891 m!2144055))

(assert (=> b!1734887 m!2144059))

(assert (=> b!1734887 m!2144059))

(declare-fun m!2144407 () Bool)

(assert (=> b!1734887 m!2144407))

(assert (=> b!1734884 m!2144059))

(assert (=> b!1734884 m!2144059))

(assert (=> b!1734884 m!2144407))

(assert (=> b!1734889 m!2144055))

(assert (=> b!1734376 d!530691))

(declare-fun d!530699 () Bool)

(assert (=> d!530699 (= (get!5702 lt!666580) (v!25214 lt!666580))))

(assert (=> b!1734355 d!530699))

(declare-fun d!530701 () Bool)

(declare-fun lt!666896 () Bool)

(assert (=> d!530701 (= lt!666896 (set.member (rule!5370 (_1!10754 lt!666541)) (content!2726 rules!3447)))))

(declare-fun e!1110210 () Bool)

(assert (=> d!530701 (= lt!666896 e!1110210)))

(declare-fun res!779560 () Bool)

(assert (=> d!530701 (=> (not res!779560) (not e!1110210))))

(assert (=> d!530701 (= res!779560 (is-Cons!19038 rules!3447))))

(assert (=> d!530701 (= (contains!3406 rules!3447 (rule!5370 (_1!10754 lt!666541))) lt!666896)))

(declare-fun b!1734899 () Bool)

(declare-fun e!1110211 () Bool)

(assert (=> b!1734899 (= e!1110210 e!1110211)))

(declare-fun res!779559 () Bool)

(assert (=> b!1734899 (=> res!779559 e!1110211)))

(assert (=> b!1734899 (= res!779559 (= (h!24439 rules!3447) (rule!5370 (_1!10754 lt!666541))))))

(declare-fun b!1734900 () Bool)

(assert (=> b!1734900 (= e!1110211 (contains!3406 (t!161157 rules!3447) (rule!5370 (_1!10754 lt!666541))))))

(assert (= (and d!530701 res!779560) b!1734899))

(assert (= (and b!1734899 (not res!779559)) b!1734900))

(assert (=> d!530701 m!2144373))

(declare-fun m!2144409 () Bool)

(assert (=> d!530701 m!2144409))

(declare-fun m!2144411 () Bool)

(assert (=> b!1734900 m!2144411))

(assert (=> b!1734354 d!530701))

(declare-fun d!530703 () Bool)

(declare-fun isBalanced!1979 (Conc!6332) Bool)

(assert (=> d!530703 (= (inv!24649 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541)))) (isBalanced!1979 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541))))))))

(declare-fun bs!402763 () Bool)

(assert (= bs!402763 d!530703))

(declare-fun m!2144413 () Bool)

(assert (=> bs!402763 m!2144413))

(assert (=> tb!103467 d!530703))

(declare-fun b!1734901 () Bool)

(declare-fun res!779562 () Bool)

(declare-fun e!1110217 () Bool)

(assert (=> b!1734901 (=> res!779562 e!1110217)))

(assert (=> b!1734901 (= res!779562 (not (is-ElementMatch!4712 (regex!3384 lt!666583))))))

(declare-fun e!1110212 () Bool)

(assert (=> b!1734901 (= e!1110212 e!1110217)))

(declare-fun b!1734902 () Bool)

(declare-fun e!1110216 () Bool)

(declare-fun e!1110214 () Bool)

(assert (=> b!1734902 (= e!1110216 e!1110214)))

(declare-fun res!779567 () Bool)

(assert (=> b!1734902 (=> res!779567 e!1110214)))

(declare-fun call!109979 () Bool)

(assert (=> b!1734902 (= res!779567 call!109979)))

(declare-fun b!1734903 () Bool)

(declare-fun res!779568 () Bool)

(declare-fun e!1110213 () Bool)

(assert (=> b!1734903 (=> (not res!779568) (not e!1110213))))

(assert (=> b!1734903 (= res!779568 (not call!109979))))

(declare-fun d!530705 () Bool)

(declare-fun e!1110215 () Bool)

(assert (=> d!530705 e!1110215))

(declare-fun c!283221 () Bool)

(assert (=> d!530705 (= c!283221 (is-EmptyExpr!4712 (regex!3384 lt!666583)))))

(declare-fun lt!666897 () Bool)

(declare-fun e!1110218 () Bool)

(assert (=> d!530705 (= lt!666897 e!1110218)))

(declare-fun c!283222 () Bool)

(assert (=> d!530705 (= c!283222 (isEmpty!11979 (list!7697 (charsOf!2033 (_1!10754 lt!666541)))))))

(assert (=> d!530705 (validRegex!1899 (regex!3384 lt!666583))))

(assert (=> d!530705 (= (matchR!2186 (regex!3384 lt!666583) (list!7697 (charsOf!2033 (_1!10754 lt!666541)))) lt!666897)))

(declare-fun b!1734904 () Bool)

(declare-fun res!779563 () Bool)

(assert (=> b!1734904 (=> res!779563 e!1110214)))

(assert (=> b!1734904 (= res!779563 (not (isEmpty!11979 (tail!2590 (list!7697 (charsOf!2033 (_1!10754 lt!666541)))))))))

(declare-fun b!1734905 () Bool)

(assert (=> b!1734905 (= e!1110217 e!1110216)))

(declare-fun res!779564 () Bool)

(assert (=> b!1734905 (=> (not res!779564) (not e!1110216))))

(assert (=> b!1734905 (= res!779564 (not lt!666897))))

(declare-fun b!1734906 () Bool)

(declare-fun res!779565 () Bool)

(assert (=> b!1734906 (=> res!779565 e!1110217)))

(assert (=> b!1734906 (= res!779565 e!1110213)))

(declare-fun res!779561 () Bool)

(assert (=> b!1734906 (=> (not res!779561) (not e!1110213))))

(assert (=> b!1734906 (= res!779561 lt!666897)))

(declare-fun b!1734907 () Bool)

(declare-fun res!779566 () Bool)

(assert (=> b!1734907 (=> (not res!779566) (not e!1110213))))

(assert (=> b!1734907 (= res!779566 (isEmpty!11979 (tail!2590 (list!7697 (charsOf!2033 (_1!10754 lt!666541))))))))

(declare-fun b!1734908 () Bool)

(assert (=> b!1734908 (= e!1110218 (nullable!1425 (regex!3384 lt!666583)))))

(declare-fun b!1734909 () Bool)

(assert (=> b!1734909 (= e!1110214 (not (= (head!3957 (list!7697 (charsOf!2033 (_1!10754 lt!666541)))) (c!283143 (regex!3384 lt!666583)))))))

(declare-fun b!1734910 () Bool)

(assert (=> b!1734910 (= e!1110215 e!1110212)))

(declare-fun c!283223 () Bool)

(assert (=> b!1734910 (= c!283223 (is-EmptyLang!4712 (regex!3384 lt!666583)))))

(declare-fun bm!109974 () Bool)

(assert (=> bm!109974 (= call!109979 (isEmpty!11979 (list!7697 (charsOf!2033 (_1!10754 lt!666541)))))))

(declare-fun b!1734911 () Bool)

(assert (=> b!1734911 (= e!1110213 (= (head!3957 (list!7697 (charsOf!2033 (_1!10754 lt!666541)))) (c!283143 (regex!3384 lt!666583))))))

(declare-fun b!1734912 () Bool)

(assert (=> b!1734912 (= e!1110215 (= lt!666897 call!109979))))

(declare-fun b!1734913 () Bool)

(assert (=> b!1734913 (= e!1110218 (matchR!2186 (derivativeStep!1193 (regex!3384 lt!666583) (head!3957 (list!7697 (charsOf!2033 (_1!10754 lt!666541))))) (tail!2590 (list!7697 (charsOf!2033 (_1!10754 lt!666541))))))))

(declare-fun b!1734914 () Bool)

(assert (=> b!1734914 (= e!1110212 (not lt!666897))))

(assert (= (and d!530705 c!283222) b!1734908))

(assert (= (and d!530705 (not c!283222)) b!1734913))

(assert (= (and d!530705 c!283221) b!1734912))

(assert (= (and d!530705 (not c!283221)) b!1734910))

(assert (= (and b!1734910 c!283223) b!1734914))

(assert (= (and b!1734910 (not c!283223)) b!1734901))

(assert (= (and b!1734901 (not res!779562)) b!1734906))

(assert (= (and b!1734906 res!779561) b!1734903))

(assert (= (and b!1734903 res!779568) b!1734907))

(assert (= (and b!1734907 res!779566) b!1734911))

(assert (= (and b!1734906 (not res!779565)) b!1734905))

(assert (= (and b!1734905 res!779564) b!1734902))

(assert (= (and b!1734902 (not res!779567)) b!1734904))

(assert (= (and b!1734904 (not res!779563)) b!1734909))

(assert (= (or b!1734912 b!1734902 b!1734903) bm!109974))

(assert (=> d!530705 m!2143689))

(declare-fun m!2144415 () Bool)

(assert (=> d!530705 m!2144415))

(declare-fun m!2144417 () Bool)

(assert (=> d!530705 m!2144417))

(assert (=> bm!109974 m!2143689))

(assert (=> bm!109974 m!2144415))

(assert (=> b!1734913 m!2143689))

(declare-fun m!2144419 () Bool)

(assert (=> b!1734913 m!2144419))

(assert (=> b!1734913 m!2144419))

(declare-fun m!2144421 () Bool)

(assert (=> b!1734913 m!2144421))

(assert (=> b!1734913 m!2143689))

(declare-fun m!2144423 () Bool)

(assert (=> b!1734913 m!2144423))

(assert (=> b!1734913 m!2144421))

(assert (=> b!1734913 m!2144423))

(declare-fun m!2144425 () Bool)

(assert (=> b!1734913 m!2144425))

(declare-fun m!2144427 () Bool)

(assert (=> b!1734908 m!2144427))

(assert (=> b!1734911 m!2143689))

(assert (=> b!1734911 m!2144419))

(assert (=> b!1734907 m!2143689))

(assert (=> b!1734907 m!2144423))

(assert (=> b!1734907 m!2144423))

(declare-fun m!2144429 () Bool)

(assert (=> b!1734907 m!2144429))

(assert (=> b!1734904 m!2143689))

(assert (=> b!1734904 m!2144423))

(assert (=> b!1734904 m!2144423))

(assert (=> b!1734904 m!2144429))

(assert (=> b!1734909 m!2143689))

(assert (=> b!1734909 m!2144419))

(assert (=> b!1734356 d!530705))

(declare-fun d!530707 () Bool)

(assert (=> d!530707 (= (list!7697 (charsOf!2033 (_1!10754 lt!666541))) (list!7701 (c!283144 (charsOf!2033 (_1!10754 lt!666541)))))))

(declare-fun bs!402764 () Bool)

(assert (= bs!402764 d!530707))

(declare-fun m!2144431 () Bool)

(assert (=> bs!402764 m!2144431))

(assert (=> b!1734356 d!530707))

(assert (=> b!1734356 d!530639))

(declare-fun d!530709 () Bool)

(assert (=> d!530709 (= (get!5703 lt!666548) (v!25215 lt!666548))))

(assert (=> b!1734356 d!530709))

(declare-fun d!530711 () Bool)

(declare-fun res!779577 () Bool)

(declare-fun e!1110227 () Bool)

(assert (=> d!530711 (=> (not res!779577) (not e!1110227))))

(declare-fun rulesValid!1266 (LexerInterface!3013 List!19108) Bool)

(assert (=> d!530711 (= res!779577 (rulesValid!1266 thiss!24550 rules!3447))))

(assert (=> d!530711 (= (rulesInvariant!2682 thiss!24550 rules!3447) e!1110227)))

(declare-fun b!1734929 () Bool)

(declare-datatypes ((List!19114 0))(
  ( (Nil!19044) (Cons!19044 (h!24445 String!21704) (t!161241 List!19114)) )
))
(declare-fun noDuplicateTag!1266 (LexerInterface!3013 List!19108 List!19114) Bool)

(assert (=> b!1734929 (= e!1110227 (noDuplicateTag!1266 thiss!24550 rules!3447 Nil!19044))))

(assert (= (and d!530711 res!779577) b!1734929))

(declare-fun m!2144447 () Bool)

(assert (=> d!530711 m!2144447))

(declare-fun m!2144449 () Bool)

(assert (=> b!1734929 m!2144449))

(assert (=> b!1734377 d!530711))

(declare-fun d!530717 () Bool)

(assert (=> d!530717 (= (apply!5189 (transformation!3384 (rule!5370 (_1!10754 lt!666541))) (seqFromList!2358 lt!666542)) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (seqFromList!2358 lt!666542)))))

(declare-fun b_lambda!55457 () Bool)

(assert (=> (not b_lambda!55457) (not d!530717)))

(declare-fun t!161204 () Bool)

(declare-fun tb!103527 () Bool)

(assert (=> (and b!1734350 (= (toValue!4891 (transformation!3384 (rule!5370 token!523))) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161204) tb!103527))

(declare-fun result!124486 () Bool)

(assert (=> tb!103527 (= result!124486 (inv!21 (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (seqFromList!2358 lt!666542))))))

(declare-fun m!2144451 () Bool)

(assert (=> tb!103527 m!2144451))

(assert (=> d!530717 t!161204))

(declare-fun b_and!128401 () Bool)

(assert (= b_and!128341 (and (=> t!161204 result!124486) b_and!128401)))

(declare-fun t!161206 () Bool)

(declare-fun tb!103529 () Bool)

(assert (=> (and b!1734364 (= (toValue!4891 (transformation!3384 (h!24439 rules!3447))) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161206) tb!103529))

(declare-fun result!124488 () Bool)

(assert (= result!124488 result!124486))

(assert (=> d!530717 t!161206))

(declare-fun b_and!128403 () Bool)

(assert (= b_and!128343 (and (=> t!161206 result!124488) b_and!128403)))

(declare-fun tb!103531 () Bool)

(declare-fun t!161208 () Bool)

(assert (=> (and b!1734358 (= (toValue!4891 (transformation!3384 rule!422)) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161208) tb!103531))

(declare-fun result!124490 () Bool)

(assert (= result!124490 result!124486))

(assert (=> d!530717 t!161208))

(declare-fun b_and!128405 () Bool)

(assert (= b_and!128345 (and (=> t!161208 result!124490) b_and!128405)))

(assert (=> d!530717 m!2143699))

(declare-fun m!2144453 () Bool)

(assert (=> d!530717 m!2144453))

(assert (=> b!1734378 d!530717))

(declare-fun d!530719 () Bool)

(assert (=> d!530719 (= (seqFromList!2358 lt!666542) (fromListB!1079 lt!666542))))

(declare-fun bs!402765 () Bool)

(assert (= bs!402765 d!530719))

(declare-fun m!2144455 () Bool)

(assert (=> bs!402765 m!2144455))

(assert (=> b!1734378 d!530719))

(declare-fun d!530721 () Bool)

(declare-fun lt!666906 () List!19107)

(assert (=> d!530721 (= (++!5209 lt!666542 lt!666906) lt!666570)))

(declare-fun e!1110231 () List!19107)

(assert (=> d!530721 (= lt!666906 e!1110231)))

(declare-fun c!283229 () Bool)

(assert (=> d!530721 (= c!283229 (is-Cons!19037 lt!666542))))

(assert (=> d!530721 (>= (size!15131 lt!666570) (size!15131 lt!666542))))

(assert (=> d!530721 (= (getSuffix!819 lt!666570 lt!666542) lt!666906)))

(declare-fun b!1734934 () Bool)

(assert (=> b!1734934 (= e!1110231 (getSuffix!819 (tail!2590 lt!666570) (t!161156 lt!666542)))))

(declare-fun b!1734935 () Bool)

(assert (=> b!1734935 (= e!1110231 lt!666570)))

(assert (= (and d!530721 c!283229) b!1734934))

(assert (= (and d!530721 (not c!283229)) b!1734935))

(declare-fun m!2144461 () Bool)

(assert (=> d!530721 m!2144461))

(assert (=> d!530721 m!2144053))

(assert (=> d!530721 m!2143705))

(assert (=> b!1734934 m!2144061))

(assert (=> b!1734934 m!2144061))

(declare-fun m!2144463 () Bool)

(assert (=> b!1734934 m!2144463))

(assert (=> b!1734378 d!530721))

(declare-fun b!1735032 () Bool)

(declare-fun e!1110279 () Bool)

(declare-datatypes ((tuple2!18712 0))(
  ( (tuple2!18713 (_1!10758 List!19107) (_2!10758 List!19107)) )
))
(declare-fun findLongestMatchInner!417 (Regex!4712 List!19107 Int List!19107 List!19107 Int) tuple2!18712)

(assert (=> b!1735032 (= e!1110279 (matchR!2186 (regex!3384 (rule!5370 (_1!10754 lt!666541))) (_1!10758 (findLongestMatchInner!417 (regex!3384 (rule!5370 (_1!10754 lt!666541))) Nil!19037 (size!15131 Nil!19037) lt!666570 lt!666570 (size!15131 lt!666570)))))))

(declare-fun b!1735033 () Bool)

(declare-fun res!779641 () Bool)

(declare-fun e!1110277 () Bool)

(assert (=> b!1735033 (=> (not res!779641) (not e!1110277))))

(declare-fun lt!666943 () Option!3792)

(assert (=> b!1735033 (= res!779641 (< (size!15131 (_2!10754 (get!5702 lt!666943))) (size!15131 lt!666570)))))

(declare-fun b!1735034 () Bool)

(declare-fun e!1110276 () Option!3792)

(assert (=> b!1735034 (= e!1110276 None!3791)))

(declare-fun b!1735035 () Bool)

(declare-fun res!779642 () Bool)

(assert (=> b!1735035 (=> (not res!779642) (not e!1110277))))

(assert (=> b!1735035 (= res!779642 (= (rule!5370 (_1!10754 (get!5702 lt!666943))) (rule!5370 (_1!10754 lt!666541))))))

(declare-fun b!1735036 () Bool)

(assert (=> b!1735036 (= e!1110277 (= (size!15129 (_1!10754 (get!5702 lt!666943))) (size!15131 (originalCharacters!4198 (_1!10754 (get!5702 lt!666943))))))))

(declare-fun b!1735037 () Bool)

(declare-fun res!779639 () Bool)

(assert (=> b!1735037 (=> (not res!779639) (not e!1110277))))

(assert (=> b!1735037 (= res!779639 (= (value!106118 (_1!10754 (get!5702 lt!666943))) (apply!5189 (transformation!3384 (rule!5370 (_1!10754 (get!5702 lt!666943)))) (seqFromList!2358 (originalCharacters!4198 (_1!10754 (get!5702 lt!666943)))))))))

(declare-fun d!530725 () Bool)

(declare-fun e!1110278 () Bool)

(assert (=> d!530725 e!1110278))

(declare-fun res!779644 () Bool)

(assert (=> d!530725 (=> res!779644 e!1110278)))

(assert (=> d!530725 (= res!779644 (isEmpty!11983 lt!666943))))

(assert (=> d!530725 (= lt!666943 e!1110276)))

(declare-fun c!283248 () Bool)

(declare-fun lt!666941 () tuple2!18712)

(assert (=> d!530725 (= c!283248 (isEmpty!11979 (_1!10758 lt!666941)))))

(declare-fun findLongestMatch!344 (Regex!4712 List!19107) tuple2!18712)

(assert (=> d!530725 (= lt!666941 (findLongestMatch!344 (regex!3384 (rule!5370 (_1!10754 lt!666541))) lt!666570))))

(assert (=> d!530725 (ruleValid!883 thiss!24550 (rule!5370 (_1!10754 lt!666541)))))

(assert (=> d!530725 (= (maxPrefixOneRule!943 thiss!24550 (rule!5370 (_1!10754 lt!666541)) lt!666570) lt!666943)))

(declare-fun b!1735038 () Bool)

(declare-fun res!779638 () Bool)

(assert (=> b!1735038 (=> (not res!779638) (not e!1110277))))

(assert (=> b!1735038 (= res!779638 (= (++!5209 (list!7697 (charsOf!2033 (_1!10754 (get!5702 lt!666943)))) (_2!10754 (get!5702 lt!666943))) lt!666570))))

(declare-fun b!1735039 () Bool)

(assert (=> b!1735039 (= e!1110276 (Some!3791 (tuple2!18705 (Token!6335 (apply!5189 (transformation!3384 (rule!5370 (_1!10754 lt!666541))) (seqFromList!2358 (_1!10758 lt!666941))) (rule!5370 (_1!10754 lt!666541)) (size!15130 (seqFromList!2358 (_1!10758 lt!666941))) (_1!10758 lt!666941)) (_2!10758 lt!666941))))))

(declare-fun lt!666945 () Unit!32926)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!401 (Regex!4712 List!19107) Unit!32926)

(assert (=> b!1735039 (= lt!666945 (longestMatchIsAcceptedByMatchOrIsEmpty!401 (regex!3384 (rule!5370 (_1!10754 lt!666541))) lt!666570))))

(declare-fun res!779640 () Bool)

(assert (=> b!1735039 (= res!779640 (isEmpty!11979 (_1!10758 (findLongestMatchInner!417 (regex!3384 (rule!5370 (_1!10754 lt!666541))) Nil!19037 (size!15131 Nil!19037) lt!666570 lt!666570 (size!15131 lt!666570)))))))

(assert (=> b!1735039 (=> res!779640 e!1110279)))

(assert (=> b!1735039 e!1110279))

(declare-fun lt!666944 () Unit!32926)

(assert (=> b!1735039 (= lt!666944 lt!666945)))

(declare-fun lt!666942 () Unit!32926)

(assert (=> b!1735039 (= lt!666942 (lemmaSemiInverse!530 (transformation!3384 (rule!5370 (_1!10754 lt!666541))) (seqFromList!2358 (_1!10758 lt!666941))))))

(declare-fun b!1735040 () Bool)

(assert (=> b!1735040 (= e!1110278 e!1110277)))

(declare-fun res!779643 () Bool)

(assert (=> b!1735040 (=> (not res!779643) (not e!1110277))))

(assert (=> b!1735040 (= res!779643 (matchR!2186 (regex!3384 (rule!5370 (_1!10754 lt!666541))) (list!7697 (charsOf!2033 (_1!10754 (get!5702 lt!666943))))))))

(assert (= (and d!530725 c!283248) b!1735034))

(assert (= (and d!530725 (not c!283248)) b!1735039))

(assert (= (and b!1735039 (not res!779640)) b!1735032))

(assert (= (and d!530725 (not res!779644)) b!1735040))

(assert (= (and b!1735040 res!779643) b!1735038))

(assert (= (and b!1735038 res!779638) b!1735033))

(assert (= (and b!1735033 res!779641) b!1735035))

(assert (= (and b!1735035 res!779642) b!1735037))

(assert (= (and b!1735037 res!779639) b!1735036))

(declare-fun m!2144553 () Bool)

(assert (=> b!1735038 m!2144553))

(declare-fun m!2144555 () Bool)

(assert (=> b!1735038 m!2144555))

(assert (=> b!1735038 m!2144555))

(declare-fun m!2144557 () Bool)

(assert (=> b!1735038 m!2144557))

(assert (=> b!1735038 m!2144557))

(declare-fun m!2144559 () Bool)

(assert (=> b!1735038 m!2144559))

(declare-fun m!2144561 () Bool)

(assert (=> d!530725 m!2144561))

(declare-fun m!2144563 () Bool)

(assert (=> d!530725 m!2144563))

(declare-fun m!2144565 () Bool)

(assert (=> d!530725 m!2144565))

(declare-fun m!2144567 () Bool)

(assert (=> d!530725 m!2144567))

(declare-fun m!2144569 () Bool)

(assert (=> b!1735039 m!2144569))

(declare-fun m!2144573 () Bool)

(assert (=> b!1735039 m!2144573))

(declare-fun m!2144575 () Bool)

(assert (=> b!1735039 m!2144575))

(assert (=> b!1735039 m!2144573))

(declare-fun m!2144577 () Bool)

(assert (=> b!1735039 m!2144577))

(declare-fun m!2144579 () Bool)

(assert (=> b!1735039 m!2144579))

(declare-fun m!2144581 () Bool)

(assert (=> b!1735039 m!2144581))

(assert (=> b!1735039 m!2144053))

(assert (=> b!1735039 m!2144573))

(declare-fun m!2144583 () Bool)

(assert (=> b!1735039 m!2144583))

(assert (=> b!1735039 m!2144569))

(assert (=> b!1735039 m!2144053))

(declare-fun m!2144585 () Bool)

(assert (=> b!1735039 m!2144585))

(assert (=> b!1735039 m!2144573))

(assert (=> b!1735040 m!2144553))

(assert (=> b!1735040 m!2144555))

(assert (=> b!1735040 m!2144555))

(assert (=> b!1735040 m!2144557))

(assert (=> b!1735040 m!2144557))

(declare-fun m!2144587 () Bool)

(assert (=> b!1735040 m!2144587))

(assert (=> b!1735037 m!2144553))

(declare-fun m!2144589 () Bool)

(assert (=> b!1735037 m!2144589))

(assert (=> b!1735037 m!2144589))

(declare-fun m!2144591 () Bool)

(assert (=> b!1735037 m!2144591))

(assert (=> b!1735035 m!2144553))

(assert (=> b!1735033 m!2144553))

(declare-fun m!2144593 () Bool)

(assert (=> b!1735033 m!2144593))

(assert (=> b!1735033 m!2144053))

(assert (=> b!1735032 m!2144569))

(assert (=> b!1735032 m!2144053))

(assert (=> b!1735032 m!2144569))

(assert (=> b!1735032 m!2144053))

(assert (=> b!1735032 m!2144585))

(declare-fun m!2144595 () Bool)

(assert (=> b!1735032 m!2144595))

(assert (=> b!1735036 m!2144553))

(declare-fun m!2144597 () Bool)

(assert (=> b!1735036 m!2144597))

(assert (=> b!1734378 d!530725))

(declare-fun d!530751 () Bool)

(assert (=> d!530751 (= (_2!10754 lt!666541) lt!666564)))

(declare-fun lt!666950 () Unit!32926)

(declare-fun choose!10623 (List!19107 List!19107 List!19107 List!19107 List!19107) Unit!32926)

(assert (=> d!530751 (= lt!666950 (choose!10623 lt!666542 (_2!10754 lt!666541) lt!666542 lt!666564 lt!666570))))

(assert (=> d!530751 (isPrefix!1625 lt!666542 lt!666570)))

(assert (=> d!530751 (= (lemmaSamePrefixThenSameSuffix!769 lt!666542 (_2!10754 lt!666541) lt!666542 lt!666564 lt!666570) lt!666950)))

(declare-fun bs!402772 () Bool)

(assert (= bs!402772 d!530751))

(declare-fun m!2144605 () Bool)

(assert (=> bs!402772 m!2144605))

(assert (=> bs!402772 m!2143735))

(assert (=> b!1734378 d!530751))

(declare-fun d!530757 () Bool)

(declare-fun lt!666958 () Int)

(assert (=> d!530757 (>= lt!666958 0)))

(declare-fun e!1110292 () Int)

(assert (=> d!530757 (= lt!666958 e!1110292)))

(declare-fun c!283252 () Bool)

(assert (=> d!530757 (= c!283252 (is-Nil!19037 lt!666542))))

(assert (=> d!530757 (= (size!15131 lt!666542) lt!666958)))

(declare-fun b!1735062 () Bool)

(assert (=> b!1735062 (= e!1110292 0)))

(declare-fun b!1735063 () Bool)

(assert (=> b!1735063 (= e!1110292 (+ 1 (size!15131 (t!161156 lt!666542))))))

(assert (= (and d!530757 c!283252) b!1735062))

(assert (= (and d!530757 (not c!283252)) b!1735063))

(declare-fun m!2144625 () Bool)

(assert (=> b!1735063 m!2144625))

(assert (=> b!1734378 d!530757))

(declare-fun d!530759 () Bool)

(assert (=> d!530759 (= (maxPrefixOneRule!943 thiss!24550 (rule!5370 (_1!10754 lt!666541)) lt!666570) (Some!3791 (tuple2!18705 (Token!6335 (apply!5189 (transformation!3384 (rule!5370 (_1!10754 lt!666541))) (seqFromList!2358 lt!666542)) (rule!5370 (_1!10754 lt!666541)) (size!15131 lt!666542) lt!666542) (_2!10754 lt!666541))))))

(declare-fun lt!666973 () Unit!32926)

(declare-fun choose!10624 (LexerInterface!3013 List!19108 List!19107 List!19107 List!19107 Rule!6568) Unit!32926)

(assert (=> d!530759 (= lt!666973 (choose!10624 thiss!24550 rules!3447 lt!666542 lt!666570 (_2!10754 lt!666541) (rule!5370 (_1!10754 lt!666541))))))

(assert (=> d!530759 (not (isEmpty!11980 rules!3447))))

(assert (=> d!530759 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!342 thiss!24550 rules!3447 lt!666542 lt!666570 (_2!10754 lt!666541) (rule!5370 (_1!10754 lt!666541))) lt!666973)))

(declare-fun bs!402774 () Bool)

(assert (= bs!402774 d!530759))

(assert (=> bs!402774 m!2143699))

(assert (=> bs!402774 m!2143699))

(assert (=> bs!402774 m!2143701))

(assert (=> bs!402774 m!2143795))

(assert (=> bs!402774 m!2143705))

(declare-fun m!2144663 () Bool)

(assert (=> bs!402774 m!2144663))

(assert (=> bs!402774 m!2143697))

(assert (=> b!1734378 d!530759))

(declare-fun d!530771 () Bool)

(assert (=> d!530771 (= (inv!24649 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568))) (isBalanced!1979 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568)))))))

(declare-fun bs!402775 () Bool)

(assert (= bs!402775 d!530771))

(declare-fun m!2144665 () Bool)

(assert (=> bs!402775 m!2144665))

(assert (=> tb!103473 d!530771))

(declare-fun d!530773 () Bool)

(assert (=> d!530773 (= (isEmpty!11980 rules!3447) (is-Nil!19038 rules!3447))))

(assert (=> b!1734357 d!530773))

(declare-fun d!530775 () Bool)

(declare-fun lt!666974 () List!19107)

(assert (=> d!530775 (= (++!5209 lt!666572 lt!666974) lt!666570)))

(declare-fun e!1110309 () List!19107)

(assert (=> d!530775 (= lt!666974 e!1110309)))

(declare-fun c!283258 () Bool)

(assert (=> d!530775 (= c!283258 (is-Cons!19037 lt!666572))))

(assert (=> d!530775 (>= (size!15131 lt!666570) (size!15131 lt!666572))))

(assert (=> d!530775 (= (getSuffix!819 lt!666570 lt!666572) lt!666974)))

(declare-fun b!1735088 () Bool)

(assert (=> b!1735088 (= e!1110309 (getSuffix!819 (tail!2590 lt!666570) (t!161156 lt!666572)))))

(declare-fun b!1735089 () Bool)

(assert (=> b!1735089 (= e!1110309 lt!666570)))

(assert (= (and d!530775 c!283258) b!1735088))

(assert (= (and d!530775 (not c!283258)) b!1735089))

(declare-fun m!2144667 () Bool)

(assert (=> d!530775 m!2144667))

(assert (=> d!530775 m!2144053))

(assert (=> d!530775 m!2144041))

(assert (=> b!1735088 m!2144061))

(assert (=> b!1735088 m!2144061))

(declare-fun m!2144669 () Bool)

(assert (=> b!1735088 m!2144669))

(assert (=> b!1734359 d!530775))

(declare-fun d!530777 () Bool)

(assert (=> d!530777 (= suffix!1421 lt!666544)))

(declare-fun lt!666978 () Unit!32926)

(assert (=> d!530777 (= lt!666978 (choose!10623 lt!666572 suffix!1421 lt!666572 lt!666544 lt!666570))))

(assert (=> d!530777 (isPrefix!1625 lt!666572 lt!666570)))

(assert (=> d!530777 (= (lemmaSamePrefixThenSameSuffix!769 lt!666572 suffix!1421 lt!666572 lt!666544 lt!666570) lt!666978)))

(declare-fun bs!402776 () Bool)

(assert (= bs!402776 d!530777))

(declare-fun m!2144671 () Bool)

(assert (=> bs!402776 m!2144671))

(assert (=> bs!402776 m!2143737))

(assert (=> b!1734359 d!530777))

(declare-fun d!530779 () Bool)

(assert (=> d!530779 (isPrefix!1625 (++!5209 lt!666572 (Cons!19037 (head!3957 (getSuffix!819 lt!666570 lt!666572)) Nil!19037)) lt!666570)))

(declare-fun lt!666982 () Unit!32926)

(declare-fun choose!10625 (List!19107 List!19107) Unit!32926)

(assert (=> d!530779 (= lt!666982 (choose!10625 lt!666572 lt!666570))))

(assert (=> d!530779 (isPrefix!1625 lt!666572 lt!666570)))

(assert (=> d!530779 (= (lemmaAddHeadSuffixToPrefixStillPrefix!220 lt!666572 lt!666570) lt!666982)))

(declare-fun bs!402778 () Bool)

(assert (= bs!402778 d!530779))

(assert (=> bs!402778 m!2143755))

(declare-fun m!2144699 () Bool)

(assert (=> bs!402778 m!2144699))

(assert (=> bs!402778 m!2143755))

(declare-fun m!2144701 () Bool)

(assert (=> bs!402778 m!2144701))

(declare-fun m!2144703 () Bool)

(assert (=> bs!402778 m!2144703))

(assert (=> bs!402778 m!2144703))

(declare-fun m!2144705 () Bool)

(assert (=> bs!402778 m!2144705))

(assert (=> bs!402778 m!2143737))

(assert (=> b!1734359 d!530779))

(declare-fun b!1735100 () Bool)

(declare-fun res!779678 () Bool)

(declare-fun e!1110321 () Bool)

(assert (=> b!1735100 (=> res!779678 e!1110321)))

(assert (=> b!1735100 (= res!779678 (not (is-ElementMatch!4712 lt!666574)))))

(declare-fun e!1110316 () Bool)

(assert (=> b!1735100 (= e!1110316 e!1110321)))

(declare-fun b!1735101 () Bool)

(declare-fun e!1110320 () Bool)

(declare-fun e!1110318 () Bool)

(assert (=> b!1735101 (= e!1110320 e!1110318)))

(declare-fun res!779683 () Bool)

(assert (=> b!1735101 (=> res!779683 e!1110318)))

(declare-fun call!109986 () Bool)

(assert (=> b!1735101 (= res!779683 call!109986)))

(declare-fun b!1735102 () Bool)

(declare-fun res!779684 () Bool)

(declare-fun e!1110317 () Bool)

(assert (=> b!1735102 (=> (not res!779684) (not e!1110317))))

(assert (=> b!1735102 (= res!779684 (not call!109986))))

(declare-fun d!530789 () Bool)

(declare-fun e!1110319 () Bool)

(assert (=> d!530789 e!1110319))

(declare-fun c!283262 () Bool)

(assert (=> d!530789 (= c!283262 (is-EmptyExpr!4712 lt!666574))))

(declare-fun lt!666983 () Bool)

(declare-fun e!1110322 () Bool)

(assert (=> d!530789 (= lt!666983 e!1110322)))

(declare-fun c!283263 () Bool)

(assert (=> d!530789 (= c!283263 (isEmpty!11979 lt!666542))))

(assert (=> d!530789 (validRegex!1899 lt!666574)))

(assert (=> d!530789 (= (matchR!2186 lt!666574 lt!666542) lt!666983)))

(declare-fun b!1735103 () Bool)

(declare-fun res!779679 () Bool)

(assert (=> b!1735103 (=> res!779679 e!1110318)))

(assert (=> b!1735103 (= res!779679 (not (isEmpty!11979 (tail!2590 lt!666542))))))

(declare-fun b!1735104 () Bool)

(assert (=> b!1735104 (= e!1110321 e!1110320)))

(declare-fun res!779680 () Bool)

(assert (=> b!1735104 (=> (not res!779680) (not e!1110320))))

(assert (=> b!1735104 (= res!779680 (not lt!666983))))

(declare-fun b!1735105 () Bool)

(declare-fun res!779681 () Bool)

(assert (=> b!1735105 (=> res!779681 e!1110321)))

(assert (=> b!1735105 (= res!779681 e!1110317)))

(declare-fun res!779677 () Bool)

(assert (=> b!1735105 (=> (not res!779677) (not e!1110317))))

(assert (=> b!1735105 (= res!779677 lt!666983)))

(declare-fun b!1735106 () Bool)

(declare-fun res!779682 () Bool)

(assert (=> b!1735106 (=> (not res!779682) (not e!1110317))))

(assert (=> b!1735106 (= res!779682 (isEmpty!11979 (tail!2590 lt!666542)))))

(declare-fun b!1735107 () Bool)

(assert (=> b!1735107 (= e!1110322 (nullable!1425 lt!666574))))

(declare-fun b!1735108 () Bool)

(assert (=> b!1735108 (= e!1110318 (not (= (head!3957 lt!666542) (c!283143 lt!666574))))))

(declare-fun b!1735109 () Bool)

(assert (=> b!1735109 (= e!1110319 e!1110316)))

(declare-fun c!283264 () Bool)

(assert (=> b!1735109 (= c!283264 (is-EmptyLang!4712 lt!666574))))

(declare-fun bm!109981 () Bool)

(assert (=> bm!109981 (= call!109986 (isEmpty!11979 lt!666542))))

(declare-fun b!1735110 () Bool)

(assert (=> b!1735110 (= e!1110317 (= (head!3957 lt!666542) (c!283143 lt!666574)))))

(declare-fun b!1735111 () Bool)

(assert (=> b!1735111 (= e!1110319 (= lt!666983 call!109986))))

(declare-fun b!1735112 () Bool)

(assert (=> b!1735112 (= e!1110322 (matchR!2186 (derivativeStep!1193 lt!666574 (head!3957 lt!666542)) (tail!2590 lt!666542)))))

(declare-fun b!1735113 () Bool)

(assert (=> b!1735113 (= e!1110316 (not lt!666983))))

(assert (= (and d!530789 c!283263) b!1735107))

(assert (= (and d!530789 (not c!283263)) b!1735112))

(assert (= (and d!530789 c!283262) b!1735111))

(assert (= (and d!530789 (not c!283262)) b!1735109))

(assert (= (and b!1735109 c!283264) b!1735113))

(assert (= (and b!1735109 (not c!283264)) b!1735100))

(assert (= (and b!1735100 (not res!779678)) b!1735105))

(assert (= (and b!1735105 res!779677) b!1735102))

(assert (= (and b!1735102 res!779684) b!1735106))

(assert (= (and b!1735106 res!779682) b!1735110))

(assert (= (and b!1735105 (not res!779681)) b!1735104))

(assert (= (and b!1735104 res!779680) b!1735101))

(assert (= (and b!1735101 (not res!779683)) b!1735103))

(assert (= (and b!1735103 (not res!779679)) b!1735108))

(assert (= (or b!1735111 b!1735101 b!1735102) bm!109981))

(assert (=> d!530789 m!2144395))

(assert (=> d!530789 m!2144013))

(assert (=> bm!109981 m!2144395))

(assert (=> b!1735112 m!2144055))

(assert (=> b!1735112 m!2144055))

(declare-fun m!2144707 () Bool)

(assert (=> b!1735112 m!2144707))

(assert (=> b!1735112 m!2144059))

(assert (=> b!1735112 m!2144707))

(assert (=> b!1735112 m!2144059))

(declare-fun m!2144709 () Bool)

(assert (=> b!1735112 m!2144709))

(assert (=> b!1735107 m!2144019))

(assert (=> b!1735110 m!2144055))

(assert (=> b!1735106 m!2144059))

(assert (=> b!1735106 m!2144059))

(assert (=> b!1735106 m!2144407))

(assert (=> b!1735103 m!2144059))

(assert (=> b!1735103 m!2144059))

(assert (=> b!1735103 m!2144407))

(assert (=> b!1735108 m!2144055))

(assert (=> b!1734359 d!530789))

(declare-fun d!530791 () Bool)

(assert (=> d!530791 (not (matchR!2186 lt!666574 lt!666542))))

(declare-fun lt!666986 () Unit!32926)

(declare-fun choose!10627 (Regex!4712 List!19107 List!19107) Unit!32926)

(assert (=> d!530791 (= lt!666986 (choose!10627 lt!666574 lt!666543 lt!666542))))

(assert (=> d!530791 (validRegex!1899 lt!666574)))

(assert (=> d!530791 (= (lemmaNotPrefixMatchThenCannotMatchLonger!93 lt!666574 lt!666543 lt!666542) lt!666986)))

(declare-fun bs!402779 () Bool)

(assert (= bs!402779 d!530791))

(assert (=> bs!402779 m!2143749))

(declare-fun m!2144711 () Bool)

(assert (=> bs!402779 m!2144711))

(assert (=> bs!402779 m!2144013))

(assert (=> b!1734359 d!530791))

(declare-fun d!530793 () Bool)

(assert (=> d!530793 (= (head!3957 lt!666544) (h!24438 lt!666544))))

(assert (=> b!1734359 d!530793))

(declare-fun d!530795 () Bool)

(assert (=> d!530795 (isPrefix!1625 lt!666543 lt!666542)))

(declare-fun lt!666989 () Unit!32926)

(declare-fun choose!10629 (List!19107 List!19107 List!19107) Unit!32926)

(assert (=> d!530795 (= lt!666989 (choose!10629 lt!666542 lt!666543 lt!666570))))

(assert (=> d!530795 (isPrefix!1625 lt!666542 lt!666570)))

(assert (=> d!530795 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!100 lt!666542 lt!666543 lt!666570) lt!666989)))

(declare-fun bs!402780 () Bool)

(assert (= bs!402780 d!530795))

(assert (=> bs!402780 m!2143763))

(declare-fun m!2144713 () Bool)

(assert (=> bs!402780 m!2144713))

(assert (=> bs!402780 m!2143735))

(assert (=> b!1734359 d!530795))

(declare-fun d!530797 () Bool)

(assert (=> d!530797 (matchR!2186 (rulesRegex!742 thiss!24550 rules!3447) (list!7697 (charsOf!2033 (_1!10754 lt!666541))))))

(declare-fun lt!666990 () Unit!32926)

(assert (=> d!530797 (= lt!666990 (choose!10615 thiss!24550 rules!3447 lt!666570 (_1!10754 lt!666541) (rule!5370 (_1!10754 lt!666541)) (_2!10754 lt!666541)))))

(assert (=> d!530797 (not (isEmpty!11980 rules!3447))))

(assert (=> d!530797 (= (lemmaMaxPrefixThenMatchesRulesRegex!133 thiss!24550 rules!3447 lt!666570 (_1!10754 lt!666541) (rule!5370 (_1!10754 lt!666541)) (_2!10754 lt!666541)) lt!666990)))

(declare-fun bs!402781 () Bool)

(assert (= bs!402781 d!530797))

(assert (=> bs!402781 m!2143687))

(assert (=> bs!402781 m!2143689))

(assert (=> bs!402781 m!2143673))

(assert (=> bs!402781 m!2143689))

(declare-fun m!2144715 () Bool)

(assert (=> bs!402781 m!2144715))

(assert (=> bs!402781 m!2143795))

(declare-fun m!2144717 () Bool)

(assert (=> bs!402781 m!2144717))

(assert (=> bs!402781 m!2143687))

(assert (=> bs!402781 m!2143673))

(assert (=> b!1734359 d!530797))

(declare-fun d!530799 () Bool)

(declare-fun e!1110325 () Bool)

(assert (=> d!530799 e!1110325))

(declare-fun res!779687 () Bool)

(assert (=> d!530799 (=> res!779687 e!1110325)))

(declare-fun lt!666991 () Bool)

(assert (=> d!530799 (= res!779687 (not lt!666991))))

(declare-fun e!1110323 () Bool)

(assert (=> d!530799 (= lt!666991 e!1110323)))

(declare-fun res!779686 () Bool)

(assert (=> d!530799 (=> res!779686 e!1110323)))

(assert (=> d!530799 (= res!779686 (is-Nil!19037 (++!5209 lt!666572 (Cons!19037 (head!3957 lt!666544) Nil!19037))))))

(assert (=> d!530799 (= (isPrefix!1625 (++!5209 lt!666572 (Cons!19037 (head!3957 lt!666544) Nil!19037)) lt!666570) lt!666991)))

(declare-fun b!1735117 () Bool)

(assert (=> b!1735117 (= e!1110325 (>= (size!15131 lt!666570) (size!15131 (++!5209 lt!666572 (Cons!19037 (head!3957 lt!666544) Nil!19037)))))))

(declare-fun b!1735115 () Bool)

(declare-fun res!779688 () Bool)

(declare-fun e!1110324 () Bool)

(assert (=> b!1735115 (=> (not res!779688) (not e!1110324))))

(assert (=> b!1735115 (= res!779688 (= (head!3957 (++!5209 lt!666572 (Cons!19037 (head!3957 lt!666544) Nil!19037))) (head!3957 lt!666570)))))

(declare-fun b!1735116 () Bool)

(assert (=> b!1735116 (= e!1110324 (isPrefix!1625 (tail!2590 (++!5209 lt!666572 (Cons!19037 (head!3957 lt!666544) Nil!19037))) (tail!2590 lt!666570)))))

(declare-fun b!1735114 () Bool)

(assert (=> b!1735114 (= e!1110323 e!1110324)))

(declare-fun res!779685 () Bool)

(assert (=> b!1735114 (=> (not res!779685) (not e!1110324))))

(assert (=> b!1735114 (= res!779685 (not (is-Nil!19037 lt!666570)))))

(assert (= (and d!530799 (not res!779686)) b!1735114))

(assert (= (and b!1735114 res!779685) b!1735115))

(assert (= (and b!1735115 res!779688) b!1735116))

(assert (= (and d!530799 (not res!779687)) b!1735117))

(assert (=> b!1735117 m!2144053))

(assert (=> b!1735117 m!2143753))

(declare-fun m!2144719 () Bool)

(assert (=> b!1735117 m!2144719))

(assert (=> b!1735115 m!2143753))

(declare-fun m!2144721 () Bool)

(assert (=> b!1735115 m!2144721))

(assert (=> b!1735115 m!2144057))

(assert (=> b!1735116 m!2143753))

(declare-fun m!2144723 () Bool)

(assert (=> b!1735116 m!2144723))

(assert (=> b!1735116 m!2144061))

(assert (=> b!1735116 m!2144723))

(assert (=> b!1735116 m!2144061))

(declare-fun m!2144725 () Bool)

(assert (=> b!1735116 m!2144725))

(assert (=> b!1734359 d!530799))

(declare-fun d!530801 () Bool)

(declare-fun e!1110328 () Bool)

(assert (=> d!530801 e!1110328))

(declare-fun res!779691 () Bool)

(assert (=> d!530801 (=> res!779691 e!1110328)))

(declare-fun lt!666992 () Bool)

(assert (=> d!530801 (= res!779691 (not lt!666992))))

(declare-fun e!1110326 () Bool)

(assert (=> d!530801 (= lt!666992 e!1110326)))

(declare-fun res!779690 () Bool)

(assert (=> d!530801 (=> res!779690 e!1110326)))

(assert (=> d!530801 (= res!779690 (is-Nil!19037 lt!666543))))

(assert (=> d!530801 (= (isPrefix!1625 lt!666543 lt!666542) lt!666992)))

(declare-fun b!1735121 () Bool)

(assert (=> b!1735121 (= e!1110328 (>= (size!15131 lt!666542) (size!15131 lt!666543)))))

(declare-fun b!1735119 () Bool)

(declare-fun res!779692 () Bool)

(declare-fun e!1110327 () Bool)

(assert (=> b!1735119 (=> (not res!779692) (not e!1110327))))

(assert (=> b!1735119 (= res!779692 (= (head!3957 lt!666543) (head!3957 lt!666542)))))

(declare-fun b!1735120 () Bool)

(assert (=> b!1735120 (= e!1110327 (isPrefix!1625 (tail!2590 lt!666543) (tail!2590 lt!666542)))))

(declare-fun b!1735118 () Bool)

(assert (=> b!1735118 (= e!1110326 e!1110327)))

(declare-fun res!779689 () Bool)

(assert (=> b!1735118 (=> (not res!779689) (not e!1110327))))

(assert (=> b!1735118 (= res!779689 (not (is-Nil!19037 lt!666542)))))

(assert (= (and d!530801 (not res!779690)) b!1735118))

(assert (= (and b!1735118 res!779689) b!1735119))

(assert (= (and b!1735119 res!779692) b!1735120))

(assert (= (and d!530801 (not res!779691)) b!1735121))

(assert (=> b!1735121 m!2143705))

(declare-fun m!2144727 () Bool)

(assert (=> b!1735121 m!2144727))

(declare-fun m!2144729 () Bool)

(assert (=> b!1735119 m!2144729))

(assert (=> b!1735119 m!2144055))

(declare-fun m!2144731 () Bool)

(assert (=> b!1735120 m!2144731))

(assert (=> b!1735120 m!2144059))

(assert (=> b!1735120 m!2144731))

(assert (=> b!1735120 m!2144059))

(declare-fun m!2144733 () Bool)

(assert (=> b!1735120 m!2144733))

(assert (=> b!1734359 d!530801))

(declare-fun b!1735122 () Bool)

(declare-fun e!1110329 () List!19107)

(assert (=> b!1735122 (= e!1110329 (Cons!19037 (head!3957 lt!666544) Nil!19037))))

(declare-fun b!1735124 () Bool)

(declare-fun res!779693 () Bool)

(declare-fun e!1110330 () Bool)

(assert (=> b!1735124 (=> (not res!779693) (not e!1110330))))

(declare-fun lt!666993 () List!19107)

(assert (=> b!1735124 (= res!779693 (= (size!15131 lt!666993) (+ (size!15131 lt!666572) (size!15131 (Cons!19037 (head!3957 lt!666544) Nil!19037)))))))

(declare-fun b!1735123 () Bool)

(assert (=> b!1735123 (= e!1110329 (Cons!19037 (h!24438 lt!666572) (++!5209 (t!161156 lt!666572) (Cons!19037 (head!3957 lt!666544) Nil!19037))))))

(declare-fun b!1735125 () Bool)

(assert (=> b!1735125 (= e!1110330 (or (not (= (Cons!19037 (head!3957 lt!666544) Nil!19037) Nil!19037)) (= lt!666993 lt!666572)))))

(declare-fun d!530803 () Bool)

(assert (=> d!530803 e!1110330))

(declare-fun res!779694 () Bool)

(assert (=> d!530803 (=> (not res!779694) (not e!1110330))))

(assert (=> d!530803 (= res!779694 (= (content!2725 lt!666993) (set.union (content!2725 lt!666572) (content!2725 (Cons!19037 (head!3957 lt!666544) Nil!19037)))))))

(assert (=> d!530803 (= lt!666993 e!1110329)))

(declare-fun c!283265 () Bool)

(assert (=> d!530803 (= c!283265 (is-Nil!19037 lt!666572))))

(assert (=> d!530803 (= (++!5209 lt!666572 (Cons!19037 (head!3957 lt!666544) Nil!19037)) lt!666993)))

(assert (= (and d!530803 c!283265) b!1735122))

(assert (= (and d!530803 (not c!283265)) b!1735123))

(assert (= (and d!530803 res!779694) b!1735124))

(assert (= (and b!1735124 res!779693) b!1735125))

(declare-fun m!2144735 () Bool)

(assert (=> b!1735124 m!2144735))

(assert (=> b!1735124 m!2144041))

(declare-fun m!2144737 () Bool)

(assert (=> b!1735124 m!2144737))

(declare-fun m!2144739 () Bool)

(assert (=> b!1735123 m!2144739))

(declare-fun m!2144741 () Bool)

(assert (=> d!530803 m!2144741))

(assert (=> d!530803 m!2144049))

(declare-fun m!2144743 () Bool)

(assert (=> d!530803 m!2144743))

(assert (=> b!1734359 d!530803))

(declare-fun d!530805 () Bool)

(assert (=> d!530805 (= (isDefined!3135 lt!666580) (not (isEmpty!11983 lt!666580)))))

(declare-fun bs!402782 () Bool)

(assert (= bs!402782 d!530805))

(declare-fun m!2144745 () Bool)

(assert (=> bs!402782 m!2144745))

(assert (=> b!1734360 d!530805))

(declare-fun b!1735126 () Bool)

(declare-fun res!779696 () Bool)

(declare-fun e!1110332 () Bool)

(assert (=> b!1735126 (=> (not res!779696) (not e!1110332))))

(declare-fun lt!666998 () Option!3792)

(assert (=> b!1735126 (= res!779696 (= (++!5209 (list!7697 (charsOf!2033 (_1!10754 (get!5702 lt!666998)))) (_2!10754 (get!5702 lt!666998))) lt!666572))))

(declare-fun b!1735127 () Bool)

(declare-fun res!779698 () Bool)

(assert (=> b!1735127 (=> (not res!779698) (not e!1110332))))

(assert (=> b!1735127 (= res!779698 (matchR!2186 (regex!3384 (rule!5370 (_1!10754 (get!5702 lt!666998)))) (list!7697 (charsOf!2033 (_1!10754 (get!5702 lt!666998))))))))

(declare-fun b!1735128 () Bool)

(declare-fun e!1110333 () Bool)

(assert (=> b!1735128 (= e!1110333 e!1110332)))

(declare-fun res!779699 () Bool)

(assert (=> b!1735128 (=> (not res!779699) (not e!1110332))))

(assert (=> b!1735128 (= res!779699 (isDefined!3135 lt!666998))))

(declare-fun b!1735129 () Bool)

(declare-fun e!1110331 () Option!3792)

(declare-fun call!109987 () Option!3792)

(assert (=> b!1735129 (= e!1110331 call!109987)))

(declare-fun bm!109982 () Bool)

(assert (=> bm!109982 (= call!109987 (maxPrefixOneRule!943 thiss!24550 (h!24439 rules!3447) lt!666572))))

(declare-fun d!530807 () Bool)

(assert (=> d!530807 e!1110333))

(declare-fun res!779701 () Bool)

(assert (=> d!530807 (=> res!779701 e!1110333)))

(assert (=> d!530807 (= res!779701 (isEmpty!11983 lt!666998))))

(assert (=> d!530807 (= lt!666998 e!1110331)))

(declare-fun c!283266 () Bool)

(assert (=> d!530807 (= c!283266 (and (is-Cons!19038 rules!3447) (is-Nil!19038 (t!161157 rules!3447))))))

(declare-fun lt!666994 () Unit!32926)

(declare-fun lt!666996 () Unit!32926)

(assert (=> d!530807 (= lt!666994 lt!666996)))

(assert (=> d!530807 (isPrefix!1625 lt!666572 lt!666572)))

(assert (=> d!530807 (= lt!666996 (lemmaIsPrefixRefl!1090 lt!666572 lt!666572))))

(assert (=> d!530807 (rulesValidInductive!1125 thiss!24550 rules!3447)))

(assert (=> d!530807 (= (maxPrefix!1567 thiss!24550 rules!3447 lt!666572) lt!666998)))

(declare-fun b!1735130 () Bool)

(declare-fun res!779697 () Bool)

(assert (=> b!1735130 (=> (not res!779697) (not e!1110332))))

(assert (=> b!1735130 (= res!779697 (< (size!15131 (_2!10754 (get!5702 lt!666998))) (size!15131 lt!666572)))))

(declare-fun b!1735131 () Bool)

(declare-fun lt!666995 () Option!3792)

(declare-fun lt!666997 () Option!3792)

(assert (=> b!1735131 (= e!1110331 (ite (and (is-None!3791 lt!666995) (is-None!3791 lt!666997)) None!3791 (ite (is-None!3791 lt!666997) lt!666995 (ite (is-None!3791 lt!666995) lt!666997 (ite (>= (size!15129 (_1!10754 (v!25214 lt!666995))) (size!15129 (_1!10754 (v!25214 lt!666997)))) lt!666995 lt!666997)))))))

(assert (=> b!1735131 (= lt!666995 call!109987)))

(assert (=> b!1735131 (= lt!666997 (maxPrefix!1567 thiss!24550 (t!161157 rules!3447) lt!666572))))

(declare-fun b!1735132 () Bool)

(declare-fun res!779695 () Bool)

(assert (=> b!1735132 (=> (not res!779695) (not e!1110332))))

(assert (=> b!1735132 (= res!779695 (= (list!7697 (charsOf!2033 (_1!10754 (get!5702 lt!666998)))) (originalCharacters!4198 (_1!10754 (get!5702 lt!666998)))))))

(declare-fun b!1735133 () Bool)

(assert (=> b!1735133 (= e!1110332 (contains!3406 rules!3447 (rule!5370 (_1!10754 (get!5702 lt!666998)))))))

(declare-fun b!1735134 () Bool)

(declare-fun res!779700 () Bool)

(assert (=> b!1735134 (=> (not res!779700) (not e!1110332))))

(assert (=> b!1735134 (= res!779700 (= (value!106118 (_1!10754 (get!5702 lt!666998))) (apply!5189 (transformation!3384 (rule!5370 (_1!10754 (get!5702 lt!666998)))) (seqFromList!2358 (originalCharacters!4198 (_1!10754 (get!5702 lt!666998)))))))))

(assert (= (and d!530807 c!283266) b!1735129))

(assert (= (and d!530807 (not c!283266)) b!1735131))

(assert (= (or b!1735129 b!1735131) bm!109982))

(assert (= (and d!530807 (not res!779701)) b!1735128))

(assert (= (and b!1735128 res!779699) b!1735132))

(assert (= (and b!1735132 res!779695) b!1735130))

(assert (= (and b!1735130 res!779697) b!1735126))

(assert (= (and b!1735126 res!779696) b!1735134))

(assert (= (and b!1735134 res!779700) b!1735127))

(assert (= (and b!1735127 res!779698) b!1735133))

(declare-fun m!2144747 () Bool)

(assert (=> b!1735133 m!2144747))

(declare-fun m!2144749 () Bool)

(assert (=> b!1735133 m!2144749))

(declare-fun m!2144751 () Bool)

(assert (=> d!530807 m!2144751))

(declare-fun m!2144753 () Bool)

(assert (=> d!530807 m!2144753))

(declare-fun m!2144755 () Bool)

(assert (=> d!530807 m!2144755))

(assert (=> d!530807 m!2144087))

(assert (=> b!1735127 m!2144747))

(declare-fun m!2144757 () Bool)

(assert (=> b!1735127 m!2144757))

(assert (=> b!1735127 m!2144757))

(declare-fun m!2144759 () Bool)

(assert (=> b!1735127 m!2144759))

(assert (=> b!1735127 m!2144759))

(declare-fun m!2144761 () Bool)

(assert (=> b!1735127 m!2144761))

(declare-fun m!2144763 () Bool)

(assert (=> b!1735128 m!2144763))

(assert (=> b!1735126 m!2144747))

(assert (=> b!1735126 m!2144757))

(assert (=> b!1735126 m!2144757))

(assert (=> b!1735126 m!2144759))

(assert (=> b!1735126 m!2144759))

(declare-fun m!2144765 () Bool)

(assert (=> b!1735126 m!2144765))

(assert (=> b!1735130 m!2144747))

(declare-fun m!2144767 () Bool)

(assert (=> b!1735130 m!2144767))

(assert (=> b!1735130 m!2144041))

(assert (=> b!1735132 m!2144747))

(assert (=> b!1735132 m!2144757))

(assert (=> b!1735132 m!2144757))

(assert (=> b!1735132 m!2144759))

(declare-fun m!2144769 () Bool)

(assert (=> bm!109982 m!2144769))

(declare-fun m!2144771 () Bool)

(assert (=> b!1735131 m!2144771))

(assert (=> b!1735134 m!2144747))

(declare-fun m!2144773 () Bool)

(assert (=> b!1735134 m!2144773))

(assert (=> b!1735134 m!2144773))

(declare-fun m!2144775 () Bool)

(assert (=> b!1735134 m!2144775))

(assert (=> b!1734360 d!530807))

(declare-fun d!530809 () Bool)

(assert (=> d!530809 (= (list!7697 lt!666559) (list!7701 (c!283144 lt!666559)))))

(declare-fun bs!402783 () Bool)

(assert (= bs!402783 d!530809))

(declare-fun m!2144777 () Bool)

(assert (=> bs!402783 m!2144777))

(assert (=> b!1734360 d!530809))

(declare-fun d!530811 () Bool)

(declare-fun lt!666999 () BalanceConc!12608)

(assert (=> d!530811 (= (list!7697 lt!666999) (originalCharacters!4198 token!523))))

(assert (=> d!530811 (= lt!666999 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 token!523))) (value!106118 token!523)))))

(assert (=> d!530811 (= (charsOf!2033 token!523) lt!666999)))

(declare-fun b_lambda!55461 () Bool)

(assert (=> (not b_lambda!55461) (not d!530811)))

(assert (=> d!530811 t!161198))

(declare-fun b_and!128413 () Bool)

(assert (= b_and!128395 (and (=> t!161198 result!124480) b_and!128413)))

(assert (=> d!530811 t!161200))

(declare-fun b_and!128415 () Bool)

(assert (= b_and!128397 (and (=> t!161200 result!124482) b_and!128415)))

(assert (=> d!530811 t!161202))

(declare-fun b_and!128417 () Bool)

(assert (= b_and!128399 (and (=> t!161202 result!124484) b_and!128417)))

(declare-fun m!2144779 () Bool)

(assert (=> d!530811 m!2144779))

(assert (=> d!530811 m!2144337))

(assert (=> b!1734360 d!530811))

(declare-fun d!530813 () Bool)

(declare-fun c!283267 () Bool)

(assert (=> d!530813 (= c!283267 (is-Node!6332 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568)))))))

(declare-fun e!1110334 () Bool)

(assert (=> d!530813 (= (inv!24648 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568)))) e!1110334)))

(declare-fun b!1735135 () Bool)

(assert (=> b!1735135 (= e!1110334 (inv!24654 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568)))))))

(declare-fun b!1735136 () Bool)

(declare-fun e!1110335 () Bool)

(assert (=> b!1735136 (= e!1110334 e!1110335)))

(declare-fun res!779702 () Bool)

(assert (=> b!1735136 (= res!779702 (not (is-Leaf!9245 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568))))))))

(assert (=> b!1735136 (=> res!779702 e!1110335)))

(declare-fun b!1735137 () Bool)

(assert (=> b!1735137 (= e!1110335 (inv!24655 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568)))))))

(assert (= (and d!530813 c!283267) b!1735135))

(assert (= (and d!530813 (not c!283267)) b!1735136))

(assert (= (and b!1735136 (not res!779702)) b!1735137))

(declare-fun m!2144781 () Bool)

(assert (=> b!1735135 m!2144781))

(declare-fun m!2144783 () Bool)

(assert (=> b!1735137 m!2144783))

(assert (=> b!1734395 d!530813))

(declare-fun d!530815 () Bool)

(assert (=> d!530815 (= (inv!24643 (tag!3714 (rule!5370 token!523))) (= (mod (str.len (value!106117 (tag!3714 (rule!5370 token!523)))) 2) 0))))

(assert (=> b!1734361 d!530815))

(declare-fun d!530817 () Bool)

(declare-fun res!779703 () Bool)

(declare-fun e!1110336 () Bool)

(assert (=> d!530817 (=> (not res!779703) (not e!1110336))))

(assert (=> d!530817 (= res!779703 (semiInverseModEq!1338 (toChars!4750 (transformation!3384 (rule!5370 token!523))) (toValue!4891 (transformation!3384 (rule!5370 token!523)))))))

(assert (=> d!530817 (= (inv!24647 (transformation!3384 (rule!5370 token!523))) e!1110336)))

(declare-fun b!1735138 () Bool)

(assert (=> b!1735138 (= e!1110336 (equivClasses!1279 (toChars!4750 (transformation!3384 (rule!5370 token!523))) (toValue!4891 (transformation!3384 (rule!5370 token!523)))))))

(assert (= (and d!530817 res!779703) b!1735138))

(declare-fun m!2144785 () Bool)

(assert (=> d!530817 m!2144785))

(declare-fun m!2144787 () Bool)

(assert (=> b!1735138 m!2144787))

(assert (=> b!1734361 d!530817))

(declare-fun d!530819 () Bool)

(assert (=> d!530819 (= suffix!1421 (_2!10754 lt!666541))))

(declare-fun lt!667000 () Unit!32926)

(assert (=> d!530819 (= lt!667000 (choose!10623 lt!666572 suffix!1421 lt!666572 (_2!10754 lt!666541) lt!666570))))

(assert (=> d!530819 (isPrefix!1625 lt!666572 lt!666570)))

(assert (=> d!530819 (= (lemmaSamePrefixThenSameSuffix!769 lt!666572 suffix!1421 lt!666572 (_2!10754 lt!666541) lt!666570) lt!667000)))

(declare-fun bs!402784 () Bool)

(assert (= bs!402784 d!530819))

(declare-fun m!2144789 () Bool)

(assert (=> bs!402784 m!2144789))

(assert (=> bs!402784 m!2143737))

(assert (=> b!1734363 d!530819))

(declare-fun d!530821 () Bool)

(assert (=> d!530821 (= lt!666542 lt!666572)))

(declare-fun lt!667003 () Unit!32926)

(declare-fun choose!10632 (List!19107 List!19107 List!19107) Unit!32926)

(assert (=> d!530821 (= lt!667003 (choose!10632 lt!666542 lt!666572 lt!666570))))

(assert (=> d!530821 (isPrefix!1625 lt!666542 lt!666570)))

(assert (=> d!530821 (= (lemmaIsPrefixSameLengthThenSameList!212 lt!666542 lt!666572 lt!666570) lt!667003)))

(declare-fun bs!402785 () Bool)

(assert (= bs!402785 d!530821))

(declare-fun m!2144791 () Bool)

(assert (=> bs!402785 m!2144791))

(assert (=> bs!402785 m!2143735))

(assert (=> b!1734363 d!530821))

(declare-fun d!530823 () Bool)

(declare-fun c!283270 () Bool)

(assert (=> d!530823 (= c!283270 (isEmpty!11979 lt!666543))))

(declare-fun e!1110339 () Bool)

(assert (=> d!530823 (= (prefixMatch!597 lt!666574 lt!666543) e!1110339)))

(declare-fun b!1735143 () Bool)

(declare-fun lostCause!535 (Regex!4712) Bool)

(assert (=> b!1735143 (= e!1110339 (not (lostCause!535 lt!666574)))))

(declare-fun b!1735144 () Bool)

(assert (=> b!1735144 (= e!1110339 (prefixMatch!597 (derivativeStep!1193 lt!666574 (head!3957 lt!666543)) (tail!2590 lt!666543)))))

(assert (= (and d!530823 c!283270) b!1735143))

(assert (= (and d!530823 (not c!283270)) b!1735144))

(declare-fun m!2144793 () Bool)

(assert (=> d!530823 m!2144793))

(declare-fun m!2144795 () Bool)

(assert (=> b!1735143 m!2144795))

(assert (=> b!1735144 m!2144729))

(assert (=> b!1735144 m!2144729))

(declare-fun m!2144797 () Bool)

(assert (=> b!1735144 m!2144797))

(assert (=> b!1735144 m!2144731))

(assert (=> b!1735144 m!2144797))

(assert (=> b!1735144 m!2144731))

(declare-fun m!2144799 () Bool)

(assert (=> b!1735144 m!2144799))

(assert (=> b!1734362 d!530823))

(declare-fun b!1735145 () Bool)

(declare-fun e!1110340 () List!19107)

(assert (=> b!1735145 (= e!1110340 (Cons!19037 (head!3957 suffix!1421) Nil!19037))))

(declare-fun b!1735147 () Bool)

(declare-fun res!779704 () Bool)

(declare-fun e!1110341 () Bool)

(assert (=> b!1735147 (=> (not res!779704) (not e!1110341))))

(declare-fun lt!667004 () List!19107)

(assert (=> b!1735147 (= res!779704 (= (size!15131 lt!667004) (+ (size!15131 lt!666572) (size!15131 (Cons!19037 (head!3957 suffix!1421) Nil!19037)))))))

(declare-fun b!1735146 () Bool)

(assert (=> b!1735146 (= e!1110340 (Cons!19037 (h!24438 lt!666572) (++!5209 (t!161156 lt!666572) (Cons!19037 (head!3957 suffix!1421) Nil!19037))))))

(declare-fun b!1735148 () Bool)

(assert (=> b!1735148 (= e!1110341 (or (not (= (Cons!19037 (head!3957 suffix!1421) Nil!19037) Nil!19037)) (= lt!667004 lt!666572)))))

(declare-fun d!530825 () Bool)

(assert (=> d!530825 e!1110341))

(declare-fun res!779705 () Bool)

(assert (=> d!530825 (=> (not res!779705) (not e!1110341))))

(assert (=> d!530825 (= res!779705 (= (content!2725 lt!667004) (set.union (content!2725 lt!666572) (content!2725 (Cons!19037 (head!3957 suffix!1421) Nil!19037)))))))

(assert (=> d!530825 (= lt!667004 e!1110340)))

(declare-fun c!283271 () Bool)

(assert (=> d!530825 (= c!283271 (is-Nil!19037 lt!666572))))

(assert (=> d!530825 (= (++!5209 lt!666572 (Cons!19037 (head!3957 suffix!1421) Nil!19037)) lt!667004)))

(assert (= (and d!530825 c!283271) b!1735145))

(assert (= (and d!530825 (not c!283271)) b!1735146))

(assert (= (and d!530825 res!779705) b!1735147))

(assert (= (and b!1735147 res!779704) b!1735148))

(declare-fun m!2144801 () Bool)

(assert (=> b!1735147 m!2144801))

(assert (=> b!1735147 m!2144041))

(declare-fun m!2144803 () Bool)

(assert (=> b!1735147 m!2144803))

(declare-fun m!2144805 () Bool)

(assert (=> b!1735146 m!2144805))

(declare-fun m!2144807 () Bool)

(assert (=> d!530825 m!2144807))

(assert (=> d!530825 m!2144049))

(declare-fun m!2144809 () Bool)

(assert (=> d!530825 m!2144809))

(assert (=> b!1734362 d!530825))

(declare-fun d!530827 () Bool)

(assert (=> d!530827 (= (head!3957 suffix!1421) (h!24438 suffix!1421))))

(assert (=> b!1734362 d!530827))

(declare-fun d!530829 () Bool)

(declare-fun lt!667007 () Unit!32926)

(declare-fun lemma!348 (List!19108 LexerInterface!3013 List!19108) Unit!32926)

(assert (=> d!530829 (= lt!667007 (lemma!348 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69470 () Int)

(declare-datatypes ((List!19115 0))(
  ( (Nil!19045) (Cons!19045 (h!24446 Regex!4712) (t!161242 List!19115)) )
))
(declare-fun generalisedUnion!356 (List!19115) Regex!4712)

(declare-fun map!3920 (List!19108 Int) List!19115)

(assert (=> d!530829 (= (rulesRegex!742 thiss!24550 rules!3447) (generalisedUnion!356 (map!3920 rules!3447 lambda!69470)))))

(declare-fun bs!402786 () Bool)

(assert (= bs!402786 d!530829))

(declare-fun m!2144811 () Bool)

(assert (=> bs!402786 m!2144811))

(declare-fun m!2144813 () Bool)

(assert (=> bs!402786 m!2144813))

(assert (=> bs!402786 m!2144813))

(declare-fun m!2144815 () Bool)

(assert (=> bs!402786 m!2144815))

(assert (=> b!1734362 d!530829))

(declare-fun d!530831 () Bool)

(assert (=> d!530831 (not (matchR!2186 (regex!3384 rule!422) lt!666572))))

(declare-fun lt!667010 () Unit!32926)

(declare-fun choose!10633 (LexerInterface!3013 List!19108 Rule!6568 List!19107 List!19107 List!19107 Rule!6568) Unit!32926)

(assert (=> d!530831 (= lt!667010 (choose!10633 thiss!24550 rules!3447 (rule!5370 (_1!10754 lt!666541)) lt!666542 lt!666570 lt!666572 rule!422))))

(assert (=> d!530831 (isPrefix!1625 lt!666542 lt!666570)))

(assert (=> d!530831 (= (lemmaMaxPrefixOutputsMaxPrefix!181 thiss!24550 rules!3447 (rule!5370 (_1!10754 lt!666541)) lt!666542 lt!666570 lt!666572 rule!422) lt!667010)))

(declare-fun bs!402787 () Bool)

(assert (= bs!402787 d!530831))

(assert (=> bs!402787 m!2143769))

(declare-fun m!2144817 () Bool)

(assert (=> bs!402787 m!2144817))

(assert (=> bs!402787 m!2143735))

(assert (=> b!1734365 d!530831))

(declare-fun d!530833 () Bool)

(assert (=> d!530833 (= (list!7697 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568))) (list!7701 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568)))))))

(declare-fun bs!402788 () Bool)

(assert (= bs!402788 d!530833))

(declare-fun m!2144819 () Bool)

(assert (=> bs!402788 m!2144819))

(assert (=> b!1734367 d!530833))

(declare-fun bs!402789 () Bool)

(declare-fun d!530835 () Bool)

(assert (= bs!402789 (and d!530835 b!1734349)))

(declare-fun lambda!69473 () Int)

(assert (=> bs!402789 (= lambda!69473 lambda!69455)))

(declare-fun b!1735153 () Bool)

(declare-fun e!1110344 () Bool)

(assert (=> b!1735153 (= e!1110344 true)))

(assert (=> d!530835 e!1110344))

(assert (= d!530835 b!1735153))

(assert (=> b!1735153 (< (dynLambda!8927 order!11797 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) (dynLambda!8928 order!11799 lambda!69473))))

(assert (=> b!1735153 (< (dynLambda!8929 order!11801 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) (dynLambda!8928 order!11799 lambda!69473))))

(assert (=> d!530835 (= (list!7697 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568))) (list!7697 lt!666568))))

(declare-fun lt!667013 () Unit!32926)

(declare-fun ForallOf!282 (Int BalanceConc!12608) Unit!32926)

(assert (=> d!530835 (= lt!667013 (ForallOf!282 lambda!69473 lt!666568))))

(assert (=> d!530835 (= (lemmaSemiInverse!530 (transformation!3384 (rule!5370 (_1!10754 lt!666541))) lt!666568) lt!667013)))

(declare-fun b_lambda!55463 () Bool)

(assert (=> (not b_lambda!55463) (not d!530835)))

(assert (=> d!530835 t!161144))

(declare-fun b_and!128419 () Bool)

(assert (= b_and!128413 (and (=> t!161144 result!124426) b_and!128419)))

(assert (=> d!530835 t!161146))

(declare-fun b_and!128421 () Bool)

(assert (= b_and!128415 (and (=> t!161146 result!124428) b_and!128421)))

(assert (=> d!530835 t!161148))

(declare-fun b_and!128423 () Bool)

(assert (= b_and!128417 (and (=> t!161148 result!124430) b_and!128423)))

(declare-fun b_lambda!55465 () Bool)

(assert (=> (not b_lambda!55465) (not d!530835)))

(assert (=> d!530835 t!161150))

(declare-fun b_and!128425 () Bool)

(assert (= b_and!128401 (and (=> t!161150 result!124432) b_and!128425)))

(assert (=> d!530835 t!161152))

(declare-fun b_and!128427 () Bool)

(assert (= b_and!128403 (and (=> t!161152 result!124436) b_and!128427)))

(assert (=> d!530835 t!161154))

(declare-fun b_and!128429 () Bool)

(assert (= b_and!128405 (and (=> t!161154 result!124438) b_and!128429)))

(assert (=> d!530835 m!2143677))

(assert (=> d!530835 m!2143679))

(assert (=> d!530835 m!2143715))

(declare-fun m!2144821 () Bool)

(assert (=> d!530835 m!2144821))

(assert (=> d!530835 m!2143677))

(assert (=> d!530835 m!2143679))

(assert (=> d!530835 m!2143681))

(assert (=> b!1734367 d!530835))

(declare-fun d!530837 () Bool)

(assert (=> d!530837 (= (inv!24643 (tag!3714 rule!422)) (= (mod (str.len (value!106117 (tag!3714 rule!422))) 2) 0))))

(assert (=> b!1734366 d!530837))

(declare-fun d!530839 () Bool)

(declare-fun res!779706 () Bool)

(declare-fun e!1110345 () Bool)

(assert (=> d!530839 (=> (not res!779706) (not e!1110345))))

(assert (=> d!530839 (= res!779706 (semiInverseModEq!1338 (toChars!4750 (transformation!3384 rule!422)) (toValue!4891 (transformation!3384 rule!422))))))

(assert (=> d!530839 (= (inv!24647 (transformation!3384 rule!422)) e!1110345)))

(declare-fun b!1735154 () Bool)

(assert (=> b!1735154 (= e!1110345 (equivClasses!1279 (toChars!4750 (transformation!3384 rule!422)) (toValue!4891 (transformation!3384 rule!422))))))

(assert (= (and d!530839 res!779706) b!1735154))

(declare-fun m!2144823 () Bool)

(assert (=> d!530839 m!2144823))

(declare-fun m!2144825 () Bool)

(assert (=> b!1735154 m!2144825))

(assert (=> b!1734366 d!530839))

(declare-fun b!1735165 () Bool)

(declare-fun b_free!47575 () Bool)

(declare-fun b_next!48279 () Bool)

(assert (=> b!1735165 (= b_free!47575 (not b_next!48279))))

(declare-fun tb!103539 () Bool)

(declare-fun t!161216 () Bool)

(assert (=> (and b!1735165 (= (toValue!4891 (transformation!3384 (h!24439 (t!161157 rules!3447)))) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161216) tb!103539))

(declare-fun result!124500 () Bool)

(assert (= result!124500 result!124432))

(assert (=> d!530565 t!161216))

(assert (=> d!530835 t!161216))

(declare-fun t!161218 () Bool)

(declare-fun tb!103541 () Bool)

(assert (=> (and b!1735165 (= (toValue!4891 (transformation!3384 (h!24439 (t!161157 rules!3447)))) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161218) tb!103541))

(declare-fun result!124502 () Bool)

(assert (= result!124502 result!124462))

(assert (=> d!530565 t!161218))

(assert (=> d!530559 t!161216))

(declare-fun tb!103543 () Bool)

(declare-fun t!161220 () Bool)

(assert (=> (and b!1735165 (= (toValue!4891 (transformation!3384 (h!24439 (t!161157 rules!3447)))) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161220) tb!103543))

(declare-fun result!124504 () Bool)

(assert (= result!124504 result!124486))

(assert (=> d!530717 t!161220))

(assert (=> b!1734367 t!161216))

(declare-fun b_and!128431 () Bool)

(declare-fun tp!494473 () Bool)

(assert (=> b!1735165 (= tp!494473 (and (=> t!161216 result!124500) (=> t!161220 result!124504) (=> t!161218 result!124502) b_and!128431))))

(declare-fun b_free!47577 () Bool)

(declare-fun b_next!48281 () Bool)

(assert (=> b!1735165 (= b_free!47577 (not b_next!48281))))

(declare-fun tb!103545 () Bool)

(declare-fun t!161222 () Bool)

(assert (=> (and b!1735165 (= (toChars!4750 (transformation!3384 (h!24439 (t!161157 rules!3447)))) (toChars!4750 (transformation!3384 (rule!5370 token!523)))) t!161222) tb!103545))

(declare-fun result!124506 () Bool)

(assert (= result!124506 result!124480))

(assert (=> d!530811 t!161222))

(declare-fun t!161224 () Bool)

(declare-fun tb!103547 () Bool)

(assert (=> (and b!1735165 (= (toChars!4750 (transformation!3384 (h!24439 (t!161157 rules!3447)))) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161224) tb!103547))

(declare-fun result!124508 () Bool)

(assert (= result!124508 result!124418))

(assert (=> b!1734352 t!161224))

(declare-fun tb!103549 () Bool)

(declare-fun t!161226 () Bool)

(assert (=> (and b!1735165 (= (toChars!4750 (transformation!3384 (h!24439 (t!161157 rules!3447)))) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541))))) t!161226) tb!103549))

(declare-fun result!124510 () Bool)

(assert (= result!124510 result!124426))

(assert (=> d!530835 t!161226))

(assert (=> b!1734367 t!161226))

(assert (=> d!530639 t!161224))

(assert (=> b!1734833 t!161222))

(declare-fun b_and!128433 () Bool)

(declare-fun tp!494472 () Bool)

(assert (=> b!1735165 (= tp!494472 (and (=> t!161226 result!124510) (=> t!161222 result!124506) (=> t!161224 result!124508) b_and!128433))))

(declare-fun e!1110357 () Bool)

(assert (=> b!1735165 (= e!1110357 (and tp!494473 tp!494472))))

(declare-fun tp!494474 () Bool)

(declare-fun e!1110356 () Bool)

(declare-fun b!1735164 () Bool)

(assert (=> b!1735164 (= e!1110356 (and tp!494474 (inv!24643 (tag!3714 (h!24439 (t!161157 rules!3447)))) (inv!24647 (transformation!3384 (h!24439 (t!161157 rules!3447)))) e!1110357))))

(declare-fun b!1735163 () Bool)

(declare-fun e!1110355 () Bool)

(declare-fun tp!494471 () Bool)

(assert (=> b!1735163 (= e!1110355 (and e!1110356 tp!494471))))

(assert (=> b!1734375 (= tp!494414 e!1110355)))

(assert (= b!1735164 b!1735165))

(assert (= b!1735163 b!1735164))

(assert (= (and b!1734375 (is-Cons!19038 (t!161157 rules!3447))) b!1735163))

(declare-fun m!2144827 () Bool)

(assert (=> b!1735164 m!2144827))

(declare-fun m!2144829 () Bool)

(assert (=> b!1735164 m!2144829))

(declare-fun b!1735178 () Bool)

(declare-fun e!1110360 () Bool)

(declare-fun tp!494485 () Bool)

(assert (=> b!1735178 (= e!1110360 tp!494485)))

(declare-fun b!1735177 () Bool)

(declare-fun tp!494489 () Bool)

(declare-fun tp!494488 () Bool)

(assert (=> b!1735177 (= e!1110360 (and tp!494489 tp!494488))))

(assert (=> b!1734353 (= tp!494408 e!1110360)))

(declare-fun b!1735176 () Bool)

(assert (=> b!1735176 (= e!1110360 tp_is_empty!7667)))

(declare-fun b!1735179 () Bool)

(declare-fun tp!494486 () Bool)

(declare-fun tp!494487 () Bool)

(assert (=> b!1735179 (= e!1110360 (and tp!494486 tp!494487))))

(assert (= (and b!1734353 (is-ElementMatch!4712 (regex!3384 (h!24439 rules!3447)))) b!1735176))

(assert (= (and b!1734353 (is-Concat!8187 (regex!3384 (h!24439 rules!3447)))) b!1735177))

(assert (= (and b!1734353 (is-Star!4712 (regex!3384 (h!24439 rules!3447)))) b!1735178))

(assert (= (and b!1734353 (is-Union!4712 (regex!3384 (h!24439 rules!3447)))) b!1735179))

(declare-fun b!1735184 () Bool)

(declare-fun e!1110363 () Bool)

(declare-fun tp!494492 () Bool)

(assert (=> b!1735184 (= e!1110363 (and tp_is_empty!7667 tp!494492))))

(assert (=> b!1734371 (= tp!494405 e!1110363)))

(assert (= (and b!1734371 (is-Cons!19037 (t!161156 suffix!1421))) b!1735184))

(declare-fun b!1735185 () Bool)

(declare-fun e!1110364 () Bool)

(declare-fun tp!494493 () Bool)

(assert (=> b!1735185 (= e!1110364 (and tp_is_empty!7667 tp!494493))))

(assert (=> b!1734370 (= tp!494406 e!1110364)))

(assert (= (and b!1734370 (is-Cons!19037 (originalCharacters!4198 token!523))) b!1735185))

(declare-fun e!1110370 () Bool)

(declare-fun tp!494501 () Bool)

(declare-fun tp!494502 () Bool)

(declare-fun b!1735194 () Bool)

(assert (=> b!1735194 (= e!1110370 (and (inv!24648 (left!15216 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568))))) tp!494502 (inv!24648 (right!15546 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568))))) tp!494501))))

(declare-fun b!1735196 () Bool)

(declare-fun e!1110369 () Bool)

(declare-fun tp!494500 () Bool)

(assert (=> b!1735196 (= e!1110369 tp!494500)))

(declare-fun b!1735195 () Bool)

(declare-fun inv!24658 (IArray!12669) Bool)

(assert (=> b!1735195 (= e!1110370 (and (inv!24658 (xs!9208 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568))))) e!1110369))))

(assert (=> b!1734395 (= tp!494420 (and (inv!24648 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568)))) e!1110370))))

(assert (= (and b!1734395 (is-Node!6332 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568))))) b!1735194))

(assert (= b!1735195 b!1735196))

(assert (= (and b!1734395 (is-Leaf!9245 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (dynLambda!8931 (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) lt!666568))))) b!1735195))

(declare-fun m!2144831 () Bool)

(assert (=> b!1735194 m!2144831))

(declare-fun m!2144833 () Bool)

(assert (=> b!1735194 m!2144833))

(declare-fun m!2144835 () Bool)

(assert (=> b!1735195 m!2144835))

(assert (=> b!1734395 m!2143629))

(declare-fun tp!494505 () Bool)

(declare-fun b!1735197 () Bool)

(declare-fun tp!494504 () Bool)

(declare-fun e!1110372 () Bool)

(assert (=> b!1735197 (= e!1110372 (and (inv!24648 (left!15216 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541)))))) tp!494505 (inv!24648 (right!15546 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541)))))) tp!494504))))

(declare-fun b!1735199 () Bool)

(declare-fun e!1110371 () Bool)

(declare-fun tp!494503 () Bool)

(assert (=> b!1735199 (= e!1110371 tp!494503)))

(declare-fun b!1735198 () Bool)

(assert (=> b!1735198 (= e!1110372 (and (inv!24658 (xs!9208 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541)))))) e!1110371))))

(assert (=> b!1734394 (= tp!494419 (and (inv!24648 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541))))) e!1110372))))

(assert (= (and b!1734394 (is-Node!6332 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541)))))) b!1735197))

(assert (= b!1735198 b!1735199))

(assert (= (and b!1734394 (is-Leaf!9245 (c!283144 (dynLambda!8930 (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))) (value!106118 (_1!10754 lt!666541)))))) b!1735198))

(declare-fun m!2144837 () Bool)

(assert (=> b!1735197 m!2144837))

(declare-fun m!2144839 () Bool)

(assert (=> b!1735197 m!2144839))

(declare-fun m!2144841 () Bool)

(assert (=> b!1735198 m!2144841))

(assert (=> b!1734394 m!2143625))

(declare-fun b!1735202 () Bool)

(declare-fun e!1110373 () Bool)

(declare-fun tp!494506 () Bool)

(assert (=> b!1735202 (= e!1110373 tp!494506)))

(declare-fun b!1735201 () Bool)

(declare-fun tp!494510 () Bool)

(declare-fun tp!494509 () Bool)

(assert (=> b!1735201 (= e!1110373 (and tp!494510 tp!494509))))

(assert (=> b!1734366 (= tp!494416 e!1110373)))

(declare-fun b!1735200 () Bool)

(assert (=> b!1735200 (= e!1110373 tp_is_empty!7667)))

(declare-fun b!1735203 () Bool)

(declare-fun tp!494507 () Bool)

(declare-fun tp!494508 () Bool)

(assert (=> b!1735203 (= e!1110373 (and tp!494507 tp!494508))))

(assert (= (and b!1734366 (is-ElementMatch!4712 (regex!3384 rule!422))) b!1735200))

(assert (= (and b!1734366 (is-Concat!8187 (regex!3384 rule!422))) b!1735201))

(assert (= (and b!1734366 (is-Star!4712 (regex!3384 rule!422))) b!1735202))

(assert (= (and b!1734366 (is-Union!4712 (regex!3384 rule!422))) b!1735203))

(declare-fun b!1735206 () Bool)

(declare-fun e!1110374 () Bool)

(declare-fun tp!494511 () Bool)

(assert (=> b!1735206 (= e!1110374 tp!494511)))

(declare-fun b!1735205 () Bool)

(declare-fun tp!494515 () Bool)

(declare-fun tp!494514 () Bool)

(assert (=> b!1735205 (= e!1110374 (and tp!494515 tp!494514))))

(assert (=> b!1734361 (= tp!494411 e!1110374)))

(declare-fun b!1735204 () Bool)

(assert (=> b!1735204 (= e!1110374 tp_is_empty!7667)))

(declare-fun b!1735207 () Bool)

(declare-fun tp!494512 () Bool)

(declare-fun tp!494513 () Bool)

(assert (=> b!1735207 (= e!1110374 (and tp!494512 tp!494513))))

(assert (= (and b!1734361 (is-ElementMatch!4712 (regex!3384 (rule!5370 token!523)))) b!1735204))

(assert (= (and b!1734361 (is-Concat!8187 (regex!3384 (rule!5370 token!523)))) b!1735205))

(assert (= (and b!1734361 (is-Star!4712 (regex!3384 (rule!5370 token!523)))) b!1735206))

(assert (= (and b!1734361 (is-Union!4712 (regex!3384 (rule!5370 token!523)))) b!1735207))

(declare-fun b_lambda!55467 () Bool)

(assert (= b_lambda!55461 (or (and b!1734350 b_free!47553) (and b!1734364 b_free!47557 (= (toChars!4750 (transformation!3384 (h!24439 rules!3447))) (toChars!4750 (transformation!3384 (rule!5370 token!523))))) (and b!1734358 b_free!47561 (= (toChars!4750 (transformation!3384 rule!422)) (toChars!4750 (transformation!3384 (rule!5370 token!523))))) (and b!1735165 b_free!47577 (= (toChars!4750 (transformation!3384 (h!24439 (t!161157 rules!3447)))) (toChars!4750 (transformation!3384 (rule!5370 token!523))))) b_lambda!55467)))

(declare-fun b_lambda!55469 () Bool)

(assert (= b_lambda!55421 (or (and b!1734350 b_free!47553 (= (toChars!4750 (transformation!3384 (rule!5370 token!523))) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))))) (and b!1734364 b_free!47557 (= (toChars!4750 (transformation!3384 (h!24439 rules!3447))) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))))) (and b!1734358 b_free!47561 (= (toChars!4750 (transformation!3384 rule!422)) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))))) (and b!1735165 b_free!47577 (= (toChars!4750 (transformation!3384 (h!24439 (t!161157 rules!3447)))) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))))) b_lambda!55469)))

(declare-fun b_lambda!55471 () Bool)

(assert (= b_lambda!55425 (or (and b!1734350 b_free!47551 (= (toValue!4891 (transformation!3384 (rule!5370 token!523))) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))))) (and b!1734364 b_free!47555 (= (toValue!4891 (transformation!3384 (h!24439 rules!3447))) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))))) (and b!1734358 b_free!47559 (= (toValue!4891 (transformation!3384 rule!422)) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))))) (and b!1735165 b_free!47575 (= (toValue!4891 (transformation!3384 (h!24439 (t!161157 rules!3447)))) (toValue!4891 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))))) b_lambda!55471)))

(declare-fun b_lambda!55473 () Bool)

(assert (= b_lambda!55423 (or (and b!1734350 b_free!47553 (= (toChars!4750 (transformation!3384 (rule!5370 token!523))) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))))) (and b!1734364 b_free!47557 (= (toChars!4750 (transformation!3384 (h!24439 rules!3447))) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))))) (and b!1734358 b_free!47561 (= (toChars!4750 (transformation!3384 rule!422)) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))))) (and b!1735165 b_free!47577 (= (toChars!4750 (transformation!3384 (h!24439 (t!161157 rules!3447)))) (toChars!4750 (transformation!3384 (rule!5370 (_1!10754 lt!666541)))))) b_lambda!55473)))

(declare-fun b_lambda!55475 () Bool)

(assert (= b_lambda!55455 (or (and b!1734350 b_free!47553) (and b!1734364 b_free!47557 (= (toChars!4750 (transformation!3384 (h!24439 rules!3447))) (toChars!4750 (transformation!3384 (rule!5370 token!523))))) (and b!1734358 b_free!47561 (= (toChars!4750 (transformation!3384 rule!422)) (toChars!4750 (transformation!3384 (rule!5370 token!523))))) (and b!1735165 b_free!47577 (= (toChars!4750 (transformation!3384 (h!24439 (t!161157 rules!3447)))) (toChars!4750 (transformation!3384 (rule!5370 token!523))))) b_lambda!55475)))

(push 1)

(assert (not b!1734639))

(assert (not b!1734611))

(assert (not b!1734395))

(assert (not b!1734825))

(assert (not b!1734537))

(assert (not b!1734913))

(assert (not b!1734571))

(assert (not b!1735120))

(assert (not d!530751))

(assert (not b!1734612))

(assert (not b_next!48265))

(assert (not b!1734681))

(assert (not b!1735206))

(assert (not b!1734538))

(assert (not b_lambda!55465))

(assert (not d!530573))

(assert (not b_next!48261))

(assert (not d!530603))

(assert (not d!530665))

(assert (not b!1734575))

(assert (not b!1734609))

(assert (not b!1735138))

(assert (not b!1734669))

(assert (not d!530807))

(assert (not b!1735110))

(assert (not b!1735123))

(assert (not b!1734803))

(assert (not b!1735107))

(assert (not b!1735164))

(assert (not b!1735205))

(assert (not b!1735130))

(assert (not b!1734627))

(assert (not b_lambda!55463))

(assert (not b!1735128))

(assert (not b!1734891))

(assert (not b!1734686))

(assert (not d!530839))

(assert (not d!530829))

(assert b_and!128433)

(assert (not d!530569))

(assert b_and!128423)

(assert (not b!1735185))

(assert (not b!1734586))

(assert (not b!1734887))

(assert (not b!1734867))

(assert (not b_lambda!55457))

(assert (not b_lambda!55467))

(assert (not b_lambda!55471))

(assert (not d!530803))

(assert (not d!530563))

(assert (not b!1735115))

(assert (not b!1735124))

(assert (not b_next!48281))

(assert (not b!1734675))

(assert (not b!1734607))

(assert (not b!1734889))

(assert (not b_lambda!55437))

(assert (not b!1734877))

(assert (not b!1734908))

(assert (not b!1734911))

(assert b_and!128429)

(assert (not d!530817))

(assert (not b!1734740))

(assert (not d!530825))

(assert (not tb!103521))

(assert (not d!530725))

(assert (not b!1735116))

(assert (not d!530605))

(assert (not b!1734884))

(assert (not b!1734674))

(assert (not b!1735137))

(assert (not d!530821))

(assert (not bm!109981))

(assert (not b!1735119))

(assert (not b!1735039))

(assert (not b!1735178))

(assert (not d!530777))

(assert (not d!530687))

(assert (not d!530811))

(assert (not b!1735106))

(assert (not d!530771))

(assert (not b!1734616))

(assert b_and!128431)

(assert (not b!1734576))

(assert (not d!530579))

(assert (not d!530705))

(assert (not b!1735040))

(assert (not b!1734801))

(assert (not b_lambda!55435))

(assert (not d!530701))

(assert (not d!530833))

(assert (not b!1734739))

(assert (not b!1734626))

(assert (not d!530611))

(assert (not bm!109968))

(assert (not b!1735177))

(assert (not d!530823))

(assert b_and!128421)

(assert (not d!530691))

(assert (not b!1734605))

(assert (not d!530719))

(assert (not d!530607))

(assert (not d!530703))

(assert (not d!530567))

(assert (not b!1734834))

(assert (not b!1734603))

(assert (not b!1735036))

(assert (not bm!109973))

(assert (not b_lambda!55469))

(assert (not b!1734580))

(assert (not b!1734668))

(assert tp_is_empty!7667)

(assert (not b!1735194))

(assert b_and!128425)

(assert b_and!128419)

(assert (not b!1735126))

(assert (not b!1735121))

(assert (not d!530797))

(assert (not b!1734680))

(assert (not d!530679))

(assert (not b!1735038))

(assert (not tb!103527))

(assert (not d!530831))

(assert (not b!1735195))

(assert (not b!1734601))

(assert (not b!1734598))

(assert (not b_next!48263))

(assert (not b_next!48255))

(assert (not d!530657))

(assert (not b!1734578))

(assert b_and!128427)

(assert (not b!1735198))

(assert (not b!1735063))

(assert (not b!1734394))

(assert (not d!530555))

(assert (not b!1735088))

(assert (not b!1734934))

(assert (not b!1735117))

(assert (not b!1734833))

(assert (not b_next!48257))

(assert (not b!1734865))

(assert (not d!530581))

(assert (not d!530565))

(assert (not d!530707))

(assert (not d!530711))

(assert (not b!1735133))

(assert (not d!530805))

(assert (not d!530795))

(assert (not b!1735202))

(assert (not b!1735032))

(assert (not b!1735127))

(assert (not b!1734640))

(assert (not d!530639))

(assert (not b!1734835))

(assert (not bm!109965))

(assert (not tb!103503))

(assert (not d!530779))

(assert (not b!1734929))

(assert (not d!530819))

(assert (not b!1735135))

(assert (not d!530721))

(assert (not b!1735108))

(assert (not b!1735146))

(assert (not b!1735033))

(assert (not b!1734904))

(assert (not b!1734907))

(assert (not d!530571))

(assert (not b!1734799))

(assert (not b!1734900))

(assert (not b!1735184))

(assert (not b!1734574))

(assert (not b!1735103))

(assert (not d!530775))

(assert (not b!1735035))

(assert (not d!530557))

(assert (not d!530561))

(assert (not b_lambda!55433))

(assert (not b!1734738))

(assert (not b!1734804))

(assert (not b!1734673))

(assert (not b!1734535))

(assert (not b!1735131))

(assert (not b!1734909))

(assert (not b!1735163))

(assert (not b!1735201))

(assert (not b!1734893))

(assert (not d!530759))

(assert (not d!530835))

(assert (not b!1735154))

(assert (not b!1734638))

(assert (not d!530647))

(assert (not b!1734797))

(assert (not d!530653))

(assert (not b!1735199))

(assert (not b_lambda!55475))

(assert (not b!1735196))

(assert (not d!530553))

(assert (not b_next!48279))

(assert (not b!1734684))

(assert (not bm!109982))

(assert (not d!530641))

(assert (not b!1735112))

(assert (not b!1734826))

(assert (not b!1734602))

(assert (not b!1734670))

(assert (not b!1735203))

(assert (not b!1735144))

(assert (not d!530789))

(assert (not bm!109964))

(assert (not b_lambda!55451))

(assert (not d!530809))

(assert (not b!1735179))

(assert (not b!1735143))

(assert (not b!1735037))

(assert (not b!1735197))

(assert (not b!1734685))

(assert (not b!1734672))

(assert (not b!1734682))

(assert (not d!530791))

(assert (not b!1735134))

(assert (not b_next!48259))

(assert (not b!1734676))

(assert (not b!1734880))

(assert (not b_lambda!55473))

(assert (not d!530577))

(assert (not d!530587))

(assert (not b!1735207))

(assert (not b!1735147))

(assert (not b!1735132))

(assert (not b!1734888))

(assert (not bm!109974))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!48265))

(assert (not b_next!48261))

(assert (not b_next!48281))

(assert b_and!128429)

(assert b_and!128431)

(assert b_and!128421)

(assert b_and!128425)

(assert b_and!128419)

(assert b_and!128427)

(assert (not b_next!48257))

(assert (not b_next!48279))

(assert (not b_next!48259))

(assert b_and!128433)

(assert b_and!128423)

(assert (not b_next!48263))

(assert (not b_next!48255))

(check-sat)

(pop 1)

