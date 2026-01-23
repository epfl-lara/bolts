; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!169218 () Bool)

(assert start!169218)

(declare-fun b!1724756 () Bool)

(declare-fun b_free!47075 () Bool)

(declare-fun b_next!47779 () Bool)

(assert (=> b!1724756 (= b_free!47075 (not b_next!47779))))

(declare-fun tp!492257 () Bool)

(declare-fun b_and!126407 () Bool)

(assert (=> b!1724756 (= tp!492257 b_and!126407)))

(declare-fun b_free!47077 () Bool)

(declare-fun b_next!47781 () Bool)

(assert (=> b!1724756 (= b_free!47077 (not b_next!47781))))

(declare-fun tp!492254 () Bool)

(declare-fun b_and!126409 () Bool)

(assert (=> b!1724756 (= tp!492254 b_and!126409)))

(declare-fun b!1724783 () Bool)

(declare-fun b_free!47079 () Bool)

(declare-fun b_next!47783 () Bool)

(assert (=> b!1724783 (= b_free!47079 (not b_next!47783))))

(declare-fun tp!492260 () Bool)

(declare-fun b_and!126411 () Bool)

(assert (=> b!1724783 (= tp!492260 b_and!126411)))

(declare-fun b_free!47081 () Bool)

(declare-fun b_next!47785 () Bool)

(assert (=> b!1724783 (= b_free!47081 (not b_next!47785))))

(declare-fun tp!492252 () Bool)

(declare-fun b_and!126413 () Bool)

(assert (=> b!1724783 (= tp!492252 b_and!126413)))

(declare-fun b!1724770 () Bool)

(declare-fun b_free!47083 () Bool)

(declare-fun b_next!47787 () Bool)

(assert (=> b!1724770 (= b_free!47083 (not b_next!47787))))

(declare-fun tp!492258 () Bool)

(declare-fun b_and!126415 () Bool)

(assert (=> b!1724770 (= tp!492258 b_and!126415)))

(declare-fun b_free!47085 () Bool)

(declare-fun b_next!47789 () Bool)

(assert (=> b!1724770 (= b_free!47085 (not b_next!47789))))

(declare-fun tp!492249 () Bool)

(declare-fun b_and!126417 () Bool)

(assert (=> b!1724770 (= tp!492249 b_and!126417)))

(declare-fun b!1724794 () Bool)

(declare-fun e!1103325 () Bool)

(assert (=> b!1724794 (= e!1103325 true)))

(declare-fun b!1724793 () Bool)

(declare-fun e!1103324 () Bool)

(assert (=> b!1724793 (= e!1103324 e!1103325)))

(declare-fun b!1724792 () Bool)

(declare-fun e!1103323 () Bool)

(assert (=> b!1724792 (= e!1103323 e!1103324)))

(declare-fun b!1724760 () Bool)

(assert (=> b!1724760 e!1103323))

(assert (= b!1724793 b!1724794))

(assert (= b!1724792 b!1724793))

(assert (= b!1724760 b!1724792))

(declare-datatypes ((List!18960 0))(
  ( (Nil!18890) (Cons!18890 (h!24291 (_ BitVec 16)) (t!159959 List!18960)) )
))
(declare-datatypes ((TokenValue!3439 0))(
  ( (FloatLiteralValue!6878 (text!24518 List!18960)) (TokenValueExt!3438 (__x!12180 Int)) (Broken!17195 (value!105093 List!18960)) (Object!3508) (End!3439) (Def!3439) (Underscore!3439) (Match!3439) (Else!3439) (Error!3439) (Case!3439) (If!3439) (Extends!3439) (Abstract!3439) (Class!3439) (Val!3439) (DelimiterValue!6878 (del!3499 List!18960)) (KeywordValue!3445 (value!105094 List!18960)) (CommentValue!6878 (value!105095 List!18960)) (WhitespaceValue!6878 (value!105096 List!18960)) (IndentationValue!3439 (value!105097 List!18960)) (String!21526) (Int32!3439) (Broken!17196 (value!105098 List!18960)) (Boolean!3440) (Unit!32736) (OperatorValue!3442 (op!3499 List!18960)) (IdentifierValue!6878 (value!105099 List!18960)) (IdentifierValue!6879 (value!105100 List!18960)) (WhitespaceValue!6879 (value!105101 List!18960)) (True!6878) (False!6878) (Broken!17197 (value!105102 List!18960)) (Broken!17198 (value!105103 List!18960)) (True!6879) (RightBrace!3439) (RightBracket!3439) (Colon!3439) (Null!3439) (Comma!3439) (LeftBracket!3439) (False!6879) (LeftBrace!3439) (ImaginaryLiteralValue!3439 (text!24519 List!18960)) (StringLiteralValue!10317 (value!105104 List!18960)) (EOFValue!3439 (value!105105 List!18960)) (IdentValue!3439 (value!105106 List!18960)) (DelimiterValue!6879 (value!105107 List!18960)) (DedentValue!3439 (value!105108 List!18960)) (NewLineValue!3439 (value!105109 List!18960)) (IntegerValue!10317 (value!105110 (_ BitVec 32)) (text!24520 List!18960)) (IntegerValue!10318 (value!105111 Int) (text!24521 List!18960)) (Times!3439) (Or!3439) (Equal!3439) (Minus!3439) (Broken!17199 (value!105112 List!18960)) (And!3439) (Div!3439) (LessEqual!3439) (Mod!3439) (Concat!8116) (Not!3439) (Plus!3439) (SpaceValue!3439 (value!105113 List!18960)) (IntegerValue!10319 (value!105114 Int) (text!24522 List!18960)) (StringLiteralValue!10318 (text!24523 List!18960)) (FloatLiteralValue!6879 (text!24524 List!18960)) (BytesLiteralValue!3439 (value!105115 List!18960)) (CommentValue!6879 (value!105116 List!18960)) (StringLiteralValue!10319 (value!105117 List!18960)) (ErrorTokenValue!3439 (msg!3500 List!18960)) )
))
(declare-datatypes ((String!21527 0))(
  ( (String!21528 (value!105118 String)) )
))
(declare-datatypes ((C!9528 0))(
  ( (C!9529 (val!5360 Int)) )
))
(declare-datatypes ((List!18961 0))(
  ( (Nil!18891) (Cons!18891 (h!24292 C!9528) (t!159960 List!18961)) )
))
(declare-datatypes ((Regex!4677 0))(
  ( (ElementMatch!4677 (c!282042 C!9528)) (Concat!8117 (regOne!9866 Regex!4677) (regTwo!9866 Regex!4677)) (EmptyExpr!4677) (Star!4677 (reg!5006 Regex!4677)) (EmptyLang!4677) (Union!4677 (regOne!9867 Regex!4677) (regTwo!9867 Regex!4677)) )
))
(declare-datatypes ((IArray!12571 0))(
  ( (IArray!12572 (innerList!6343 List!18961)) )
))
(declare-datatypes ((Conc!6283 0))(
  ( (Node!6283 (left!15079 Conc!6283) (right!15409 Conc!6283) (csize!12796 Int) (cheight!6494 Int)) (Leaf!9178 (xs!9159 IArray!12571) (csize!12797 Int)) (Empty!6283) )
))
(declare-datatypes ((BalanceConc!12510 0))(
  ( (BalanceConc!12511 (c!282043 Conc!6283)) )
))
(declare-datatypes ((TokenValueInjection!6538 0))(
  ( (TokenValueInjection!6539 (toValue!4856 Int) (toChars!4715 Int)) )
))
(declare-datatypes ((Rule!6498 0))(
  ( (Rule!6499 (regex!3349 Regex!4677) (tag!3665 String!21527) (isSeparator!3349 Bool) (transformation!3349 TokenValueInjection!6538)) )
))
(declare-datatypes ((Token!6264 0))(
  ( (Token!6265 (value!105119 TokenValue!3439) (rule!5307 Rule!6498) (size!15010 Int) (originalCharacters!4163 List!18961)) )
))
(declare-datatypes ((tuple2!18578 0))(
  ( (tuple2!18579 (_1!10691 Token!6264) (_2!10691 List!18961)) )
))
(declare-fun lt!660389 () tuple2!18578)

(declare-fun order!11561 () Int)

(declare-fun lambda!69218 () Int)

(declare-fun order!11559 () Int)

(declare-fun dynLambda!8738 (Int Int) Int)

(declare-fun dynLambda!8739 (Int Int) Int)

(assert (=> b!1724794 (< (dynLambda!8738 order!11559 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) (dynLambda!8739 order!11561 lambda!69218))))

(declare-fun order!11563 () Int)

(declare-fun dynLambda!8740 (Int Int) Int)

(assert (=> b!1724794 (< (dynLambda!8740 order!11563 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) (dynLambda!8739 order!11561 lambda!69218))))

(declare-fun b!1724754 () Bool)

(declare-fun res!774095 () Bool)

(declare-fun e!1103307 () Bool)

(assert (=> b!1724754 (=> (not res!774095) (not e!1103307))))

(declare-fun token!523 () Token!6264)

(declare-fun rule!422 () Rule!6498)

(assert (=> b!1724754 (= res!774095 (= (rule!5307 token!523) rule!422))))

(declare-fun b!1724755 () Bool)

(declare-fun e!1103300 () Bool)

(declare-fun e!1103297 () Bool)

(assert (=> b!1724755 (= e!1103300 e!1103297)))

(declare-fun res!774113 () Bool)

(assert (=> b!1724755 (=> res!774113 e!1103297)))

(declare-fun lt!660404 () Int)

(declare-fun lt!660380 () BalanceConc!12510)

(declare-fun size!15011 (BalanceConc!12510) Int)

(assert (=> b!1724755 (= res!774113 (<= lt!660404 (size!15011 lt!660380)))))

(declare-fun lt!660395 () Regex!4677)

(declare-fun lt!660390 () List!18961)

(declare-fun matchR!2151 (Regex!4677 List!18961) Bool)

(assert (=> b!1724755 (matchR!2151 lt!660395 lt!660390)))

(declare-datatypes ((LexerInterface!2978 0))(
  ( (LexerInterfaceExt!2975 (__x!12181 Int)) (Lexer!2976) )
))
(declare-fun thiss!24550 () LexerInterface!2978)

(declare-datatypes ((Unit!32737 0))(
  ( (Unit!32738) )
))
(declare-fun lt!660400 () Unit!32737)

(declare-datatypes ((List!18962 0))(
  ( (Nil!18892) (Cons!18892 (h!24293 Rule!6498) (t!159961 List!18962)) )
))
(declare-fun rules!3447 () List!18962)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!98 (LexerInterface!2978 List!18962 List!18961 Token!6264 Rule!6498 List!18961) Unit!32737)

(assert (=> b!1724755 (= lt!660400 (lemmaMaxPrefixThenMatchesRulesRegex!98 thiss!24550 rules!3447 lt!660390 token!523 rule!422 Nil!18891))))

(declare-fun e!1103316 () Bool)

(assert (=> b!1724756 (= e!1103316 (and tp!492257 tp!492254))))

(declare-fun b!1724757 () Bool)

(declare-fun e!1103305 () Bool)

(declare-fun e!1103315 () Bool)

(assert (=> b!1724757 (= e!1103305 e!1103315)))

(declare-fun res!774099 () Bool)

(assert (=> b!1724757 (=> res!774099 e!1103315)))

(declare-fun suffix!1421 () List!18961)

(declare-fun prefixMatch!562 (Regex!4677 List!18961) Bool)

(declare-fun ++!5174 (List!18961 List!18961) List!18961)

(declare-fun head!3908 (List!18961) C!9528)

(assert (=> b!1724757 (= res!774099 (prefixMatch!562 lt!660395 (++!5174 lt!660390 (Cons!18891 (head!3908 suffix!1421) Nil!18891))))))

(declare-fun rulesRegex!707 (LexerInterface!2978 List!18962) Regex!4677)

(assert (=> b!1724757 (= lt!660395 (rulesRegex!707 thiss!24550 rules!3447))))

(declare-fun b!1724758 () Bool)

(declare-fun e!1103294 () Bool)

(declare-fun lt!660397 () Rule!6498)

(assert (=> b!1724758 (= e!1103294 (= (rule!5307 (_1!10691 lt!660389)) lt!660397))))

(declare-fun tp!492253 () Bool)

(declare-fun b!1724759 () Bool)

(declare-fun e!1103293 () Bool)

(declare-fun e!1103295 () Bool)

(declare-fun inv!24407 (String!21527) Bool)

(declare-fun inv!24412 (TokenValueInjection!6538) Bool)

(assert (=> b!1724759 (= e!1103295 (and tp!492253 (inv!24407 (tag!3665 rule!422)) (inv!24412 (transformation!3349 rule!422)) e!1103293))))

(declare-fun e!1103306 () Bool)

(declare-fun e!1103314 () Bool)

(assert (=> b!1724760 (= e!1103306 e!1103314)))

(declare-fun res!774101 () Bool)

(assert (=> b!1724760 (=> res!774101 e!1103314)))

(declare-fun Forall!724 (Int) Bool)

(assert (=> b!1724760 (= res!774101 (not (Forall!724 lambda!69218)))))

(declare-fun lt!660379 () Unit!32737)

(declare-fun lemmaInv!556 (TokenValueInjection!6538) Unit!32737)

(assert (=> b!1724760 (= lt!660379 (lemmaInv!556 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))))))

(declare-fun e!1103309 () Bool)

(declare-fun e!1103291 () Bool)

(declare-fun b!1724761 () Bool)

(declare-fun tp!492255 () Bool)

(declare-fun inv!21 (TokenValue!3439) Bool)

(assert (=> b!1724761 (= e!1103309 (and (inv!21 (value!105119 token!523)) e!1103291 tp!492255))))

(declare-fun b!1724762 () Bool)

(declare-fun res!774111 () Bool)

(assert (=> b!1724762 (=> res!774111 e!1103306)))

(declare-fun lt!660396 () List!18961)

(assert (=> b!1724762 (= res!774111 (not (matchR!2151 (regex!3349 (rule!5307 (_1!10691 lt!660389))) lt!660396)))))

(declare-fun e!1103310 () Bool)

(declare-fun e!1103302 () Bool)

(declare-fun tp!492256 () Bool)

(declare-fun b!1724763 () Bool)

(assert (=> b!1724763 (= e!1103302 (and tp!492256 (inv!24407 (tag!3665 (h!24293 rules!3447))) (inv!24412 (transformation!3349 (h!24293 rules!3447))) e!1103310))))

(declare-fun b!1724764 () Bool)

(declare-fun tp!492251 () Bool)

(assert (=> b!1724764 (= e!1103291 (and tp!492251 (inv!24407 (tag!3665 (rule!5307 token!523))) (inv!24412 (transformation!3349 (rule!5307 token!523))) e!1103316))))

(declare-fun b!1724765 () Bool)

(declare-fun res!774103 () Bool)

(assert (=> b!1724765 (=> (not res!774103) (not e!1103307))))

(declare-fun lt!660376 () tuple2!18578)

(declare-fun isEmpty!11881 (List!18961) Bool)

(assert (=> b!1724765 (= res!774103 (isEmpty!11881 (_2!10691 lt!660376)))))

(declare-fun b!1724766 () Bool)

(declare-fun e!1103296 () Bool)

(assert (=> b!1724766 (= e!1103296 e!1103294)))

(declare-fun res!774094 () Bool)

(assert (=> b!1724766 (=> (not res!774094) (not e!1103294))))

(declare-fun list!7634 (BalanceConc!12510) List!18961)

(declare-fun charsOf!1998 (Token!6264) BalanceConc!12510)

(assert (=> b!1724766 (= res!774094 (matchR!2151 (regex!3349 lt!660397) (list!7634 (charsOf!1998 (_1!10691 lt!660389)))))))

(declare-datatypes ((Option!3722 0))(
  ( (None!3721) (Some!3721 (v!25130 Rule!6498)) )
))
(declare-fun lt!660384 () Option!3722)

(declare-fun get!5614 (Option!3722) Rule!6498)

(assert (=> b!1724766 (= lt!660397 (get!5614 lt!660384))))

(declare-fun b!1724767 () Bool)

(declare-fun e!1103304 () Bool)

(declare-fun e!1103301 () Bool)

(assert (=> b!1724767 (= e!1103304 e!1103301)))

(declare-fun res!774106 () Bool)

(assert (=> b!1724767 (=> (not res!774106) (not e!1103301))))

(declare-datatypes ((Option!3723 0))(
  ( (None!3722) (Some!3722 (v!25131 tuple2!18578)) )
))
(declare-fun lt!660401 () Option!3723)

(declare-fun isDefined!3065 (Option!3723) Bool)

(assert (=> b!1724767 (= res!774106 (isDefined!3065 lt!660401))))

(declare-fun maxPrefix!1532 (LexerInterface!2978 List!18962 List!18961) Option!3723)

(assert (=> b!1724767 (= lt!660401 (maxPrefix!1532 thiss!24550 rules!3447 lt!660390))))

(assert (=> b!1724767 (= lt!660390 (list!7634 lt!660380))))

(assert (=> b!1724767 (= lt!660380 (charsOf!1998 token!523))))

(declare-fun b!1724768 () Bool)

(declare-fun validRegex!1886 (Regex!4677) Bool)

(assert (=> b!1724768 (= e!1103297 (validRegex!1886 lt!660395))))

(assert (=> b!1724768 (matchR!2151 lt!660395 lt!660396)))

(declare-fun lt!660383 () Unit!32737)

(declare-fun lt!660385 () List!18961)

(assert (=> b!1724768 (= lt!660383 (lemmaMaxPrefixThenMatchesRulesRegex!98 thiss!24550 rules!3447 lt!660385 (_1!10691 lt!660389) (rule!5307 (_1!10691 lt!660389)) (_2!10691 lt!660389)))))

(declare-fun b!1724769 () Bool)

(assert (=> b!1724769 (= e!1103307 (not e!1103305))))

(declare-fun res!774098 () Bool)

(assert (=> b!1724769 (=> res!774098 e!1103305)))

(assert (=> b!1724769 (= res!774098 (not (matchR!2151 (regex!3349 rule!422) lt!660390)))))

(declare-fun ruleValid!848 (LexerInterface!2978 Rule!6498) Bool)

(assert (=> b!1724769 (ruleValid!848 thiss!24550 rule!422)))

(declare-fun lt!660392 () Unit!32737)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!372 (LexerInterface!2978 Rule!6498 List!18962) Unit!32737)

(assert (=> b!1724769 (= lt!660392 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!372 thiss!24550 rule!422 rules!3447))))

(assert (=> b!1724770 (= e!1103293 (and tp!492258 tp!492249))))

(declare-fun b!1724771 () Bool)

(declare-fun res!774110 () Bool)

(assert (=> b!1724771 (=> (not res!774110) (not e!1103304))))

(declare-fun contains!3371 (List!18962 Rule!6498) Bool)

(assert (=> b!1724771 (= res!774110 (contains!3371 rules!3447 rule!422))))

(declare-fun b!1724772 () Bool)

(declare-fun e!1103298 () Bool)

(assert (=> b!1724772 (= e!1103314 e!1103298)))

(declare-fun res!774097 () Bool)

(assert (=> b!1724772 (=> res!774097 e!1103298)))

(declare-fun lt!660394 () BalanceConc!12510)

(declare-fun dynLambda!8741 (Int TokenValue!3439) BalanceConc!12510)

(declare-fun dynLambda!8742 (Int BalanceConc!12510) TokenValue!3439)

(assert (=> b!1724772 (= res!774097 (not (= (list!7634 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394))) lt!660396)))))

(declare-fun lt!660378 () Unit!32737)

(declare-fun lemmaSemiInverse!495 (TokenValueInjection!6538 BalanceConc!12510) Unit!32737)

(assert (=> b!1724772 (= lt!660378 (lemmaSemiInverse!495 (transformation!3349 (rule!5307 (_1!10691 lt!660389))) lt!660394))))

(declare-fun b!1724773 () Bool)

(assert (=> b!1724773 (= e!1103315 e!1103306)))

(declare-fun res!774108 () Bool)

(assert (=> b!1724773 (=> res!774108 e!1103306)))

(declare-fun isPrefix!1590 (List!18961 List!18961) Bool)

(assert (=> b!1724773 (= res!774108 (not (isPrefix!1590 lt!660396 lt!660385)))))

(assert (=> b!1724773 (isPrefix!1590 lt!660396 (++!5174 lt!660396 (_2!10691 lt!660389)))))

(declare-fun lt!660388 () Unit!32737)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1100 (List!18961 List!18961) Unit!32737)

(assert (=> b!1724773 (= lt!660388 (lemmaConcatTwoListThenFirstIsPrefix!1100 lt!660396 (_2!10691 lt!660389)))))

(assert (=> b!1724773 (= lt!660396 (list!7634 lt!660394))))

(assert (=> b!1724773 (= lt!660394 (charsOf!1998 (_1!10691 lt!660389)))))

(assert (=> b!1724773 e!1103296))

(declare-fun res!774100 () Bool)

(assert (=> b!1724773 (=> (not res!774100) (not e!1103296))))

(declare-fun isDefined!3066 (Option!3722) Bool)

(assert (=> b!1724773 (= res!774100 (isDefined!3066 lt!660384))))

(declare-fun getRuleFromTag!399 (LexerInterface!2978 List!18962 String!21527) Option!3722)

(assert (=> b!1724773 (= lt!660384 (getRuleFromTag!399 thiss!24550 rules!3447 (tag!3665 (rule!5307 (_1!10691 lt!660389)))))))

(declare-fun lt!660387 () Unit!32737)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!399 (LexerInterface!2978 List!18962 List!18961 Token!6264) Unit!32737)

(assert (=> b!1724773 (= lt!660387 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!399 thiss!24550 rules!3447 lt!660385 (_1!10691 lt!660389)))))

(declare-fun lt!660382 () Option!3723)

(declare-fun get!5615 (Option!3723) tuple2!18578)

(assert (=> b!1724773 (= lt!660389 (get!5615 lt!660382))))

(declare-fun lt!660405 () Unit!32737)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!502 (LexerInterface!2978 List!18962 List!18961 List!18961) Unit!32737)

(assert (=> b!1724773 (= lt!660405 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!502 thiss!24550 rules!3447 lt!660390 suffix!1421))))

(assert (=> b!1724773 (= lt!660382 (maxPrefix!1532 thiss!24550 rules!3447 lt!660385))))

(assert (=> b!1724773 (isPrefix!1590 lt!660390 lt!660385)))

(declare-fun lt!660393 () Unit!32737)

(assert (=> b!1724773 (= lt!660393 (lemmaConcatTwoListThenFirstIsPrefix!1100 lt!660390 suffix!1421))))

(assert (=> b!1724773 (= lt!660385 (++!5174 lt!660390 suffix!1421))))

(declare-fun b!1724774 () Bool)

(declare-fun res!774105 () Bool)

(assert (=> b!1724774 (=> res!774105 e!1103298)))

(assert (=> b!1724774 (= res!774105 (not (= lt!660394 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389))))))))

(declare-fun b!1724775 () Bool)

(declare-fun res!774096 () Bool)

(assert (=> b!1724775 (=> (not res!774096) (not e!1103304))))

(declare-fun rulesInvariant!2647 (LexerInterface!2978 List!18962) Bool)

(assert (=> b!1724775 (= res!774096 (rulesInvariant!2647 thiss!24550 rules!3447))))

(declare-fun b!1724776 () Bool)

(declare-fun e!1103303 () Bool)

(declare-fun tp!492259 () Bool)

(assert (=> b!1724776 (= e!1103303 (and e!1103302 tp!492259))))

(declare-fun b!1724777 () Bool)

(declare-fun e!1103313 () Bool)

(assert (=> b!1724777 (= e!1103313 e!1103300)))

(declare-fun res!774102 () Bool)

(assert (=> b!1724777 (=> res!774102 e!1103300)))

(declare-fun lt!660391 () Option!3723)

(declare-fun lt!660406 () List!18961)

(assert (=> b!1724777 (= res!774102 (or (not (= lt!660406 (_2!10691 lt!660389))) (not (= lt!660391 (Some!3722 (tuple2!18579 (_1!10691 lt!660389) lt!660406))))))))

(assert (=> b!1724777 (= (_2!10691 lt!660389) lt!660406)))

(declare-fun lt!660386 () Unit!32737)

(declare-fun lemmaSamePrefixThenSameSuffix!734 (List!18961 List!18961 List!18961 List!18961 List!18961) Unit!32737)

(assert (=> b!1724777 (= lt!660386 (lemmaSamePrefixThenSameSuffix!734 lt!660396 (_2!10691 lt!660389) lt!660396 lt!660406 lt!660385))))

(declare-fun getSuffix!784 (List!18961 List!18961) List!18961)

(assert (=> b!1724777 (= lt!660406 (getSuffix!784 lt!660385 lt!660396))))

(declare-fun lt!660381 () Int)

(declare-fun lt!660403 () TokenValue!3439)

(assert (=> b!1724777 (= lt!660391 (Some!3722 (tuple2!18579 (Token!6265 lt!660403 (rule!5307 (_1!10691 lt!660389)) lt!660381 lt!660396) (_2!10691 lt!660389))))))

(declare-fun maxPrefixOneRule!908 (LexerInterface!2978 Rule!6498 List!18961) Option!3723)

(assert (=> b!1724777 (= lt!660391 (maxPrefixOneRule!908 thiss!24550 (rule!5307 (_1!10691 lt!660389)) lt!660385))))

(declare-fun size!15012 (List!18961) Int)

(assert (=> b!1724777 (= lt!660381 (size!15012 lt!660396))))

(declare-fun apply!5154 (TokenValueInjection!6538 BalanceConc!12510) TokenValue!3439)

(declare-fun seqFromList!2323 (List!18961) BalanceConc!12510)

(assert (=> b!1724777 (= lt!660403 (apply!5154 (transformation!3349 (rule!5307 (_1!10691 lt!660389))) (seqFromList!2323 lt!660396)))))

(declare-fun lt!660377 () Unit!32737)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!307 (LexerInterface!2978 List!18962 List!18961 List!18961 List!18961 Rule!6498) Unit!32737)

(assert (=> b!1724777 (= lt!660377 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!307 thiss!24550 rules!3447 lt!660396 lt!660385 (_2!10691 lt!660389) (rule!5307 (_1!10691 lt!660389))))))

(declare-fun b!1724779 () Bool)

(declare-fun res!774109 () Bool)

(assert (=> b!1724779 (=> res!774109 e!1103305)))

(assert (=> b!1724779 (= res!774109 (isEmpty!11881 suffix!1421))))

(declare-fun b!1724780 () Bool)

(declare-fun e!1103299 () Bool)

(declare-fun tp_is_empty!7597 () Bool)

(declare-fun tp!492250 () Bool)

(assert (=> b!1724780 (= e!1103299 (and tp_is_empty!7597 tp!492250))))

(declare-fun b!1724781 () Bool)

(declare-fun res!774104 () Bool)

(assert (=> b!1724781 (=> (not res!774104) (not e!1103304))))

(declare-fun isEmpty!11882 (List!18962) Bool)

(assert (=> b!1724781 (= res!774104 (not (isEmpty!11882 rules!3447)))))

(declare-fun res!774114 () Bool)

(assert (=> start!169218 (=> (not res!774114) (not e!1103304))))

(get-info :version)

(assert (=> start!169218 (= res!774114 ((_ is Lexer!2976) thiss!24550))))

(assert (=> start!169218 e!1103304))

(assert (=> start!169218 e!1103299))

(assert (=> start!169218 e!1103295))

(assert (=> start!169218 true))

(declare-fun inv!24413 (Token!6264) Bool)

(assert (=> start!169218 (and (inv!24413 token!523) e!1103309)))

(assert (=> start!169218 e!1103303))

(declare-fun b!1724778 () Bool)

(assert (=> b!1724778 (= e!1103301 e!1103307)))

(declare-fun res!774112 () Bool)

(assert (=> b!1724778 (=> (not res!774112) (not e!1103307))))

(assert (=> b!1724778 (= res!774112 (= (_1!10691 lt!660376) token!523))))

(assert (=> b!1724778 (= lt!660376 (get!5615 lt!660401))))

(declare-fun b!1724782 () Bool)

(assert (=> b!1724782 (= e!1103298 e!1103313)))

(declare-fun res!774107 () Bool)

(assert (=> b!1724782 (=> res!774107 e!1103313)))

(declare-fun lt!660402 () TokenValue!3439)

(assert (=> b!1724782 (= res!774107 (not (= lt!660382 (Some!3722 (tuple2!18579 (Token!6265 lt!660402 (rule!5307 (_1!10691 lt!660389)) lt!660404 lt!660396) (_2!10691 lt!660389))))))))

(assert (=> b!1724782 (= lt!660404 (size!15011 lt!660394))))

(assert (=> b!1724782 (= lt!660402 (apply!5154 (transformation!3349 (rule!5307 (_1!10691 lt!660389))) lt!660394))))

(declare-fun lt!660399 () Unit!32737)

(declare-fun lemmaCharactersSize!421 (Token!6264) Unit!32737)

(assert (=> b!1724782 (= lt!660399 (lemmaCharactersSize!421 (_1!10691 lt!660389)))))

(declare-fun lt!660398 () Unit!32737)

(declare-fun lemmaEqSameImage!274 (TokenValueInjection!6538 BalanceConc!12510 BalanceConc!12510) Unit!32737)

(assert (=> b!1724782 (= lt!660398 (lemmaEqSameImage!274 (transformation!3349 (rule!5307 (_1!10691 lt!660389))) lt!660394 (seqFromList!2323 (originalCharacters!4163 (_1!10691 lt!660389)))))))

(assert (=> b!1724783 (= e!1103310 (and tp!492260 tp!492252))))

(assert (= (and start!169218 res!774114) b!1724781))

(assert (= (and b!1724781 res!774104) b!1724775))

(assert (= (and b!1724775 res!774096) b!1724771))

(assert (= (and b!1724771 res!774110) b!1724767))

(assert (= (and b!1724767 res!774106) b!1724778))

(assert (= (and b!1724778 res!774112) b!1724765))

(assert (= (and b!1724765 res!774103) b!1724754))

(assert (= (and b!1724754 res!774095) b!1724769))

(assert (= (and b!1724769 (not res!774098)) b!1724779))

(assert (= (and b!1724779 (not res!774109)) b!1724757))

(assert (= (and b!1724757 (not res!774099)) b!1724773))

(assert (= (and b!1724773 res!774100) b!1724766))

(assert (= (and b!1724766 res!774094) b!1724758))

(assert (= (and b!1724773 (not res!774108)) b!1724762))

(assert (= (and b!1724762 (not res!774111)) b!1724760))

(assert (= (and b!1724760 (not res!774101)) b!1724772))

(assert (= (and b!1724772 (not res!774097)) b!1724774))

(assert (= (and b!1724774 (not res!774105)) b!1724782))

(assert (= (and b!1724782 (not res!774107)) b!1724777))

(assert (= (and b!1724777 (not res!774102)) b!1724755))

(assert (= (and b!1724755 (not res!774113)) b!1724768))

(assert (= (and start!169218 ((_ is Cons!18891) suffix!1421)) b!1724780))

(assert (= b!1724759 b!1724770))

(assert (= start!169218 b!1724759))

(assert (= b!1724764 b!1724756))

(assert (= b!1724761 b!1724764))

(assert (= start!169218 b!1724761))

(assert (= b!1724763 b!1724783))

(assert (= b!1724776 b!1724763))

(assert (= (and start!169218 ((_ is Cons!18892) rules!3447)) b!1724776))

(declare-fun b_lambda!54819 () Bool)

(assert (=> (not b_lambda!54819) (not b!1724772)))

(declare-fun t!159942 () Bool)

(declare-fun tb!102417 () Bool)

(assert (=> (and b!1724756 (= (toChars!4715 (transformation!3349 (rule!5307 token!523))) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!159942) tb!102417))

(declare-fun tp!492263 () Bool)

(declare-fun b!1724799 () Bool)

(declare-fun e!1103328 () Bool)

(declare-fun inv!24414 (Conc!6283) Bool)

(assert (=> b!1724799 (= e!1103328 (and (inv!24414 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394)))) tp!492263))))

(declare-fun result!123116 () Bool)

(declare-fun inv!24415 (BalanceConc!12510) Bool)

(assert (=> tb!102417 (= result!123116 (and (inv!24415 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394))) e!1103328))))

(assert (= tb!102417 b!1724799))

(declare-fun m!2131237 () Bool)

(assert (=> b!1724799 m!2131237))

(declare-fun m!2131239 () Bool)

(assert (=> tb!102417 m!2131239))

(assert (=> b!1724772 t!159942))

(declare-fun b_and!126419 () Bool)

(assert (= b_and!126409 (and (=> t!159942 result!123116) b_and!126419)))

(declare-fun tb!102419 () Bool)

(declare-fun t!159944 () Bool)

(assert (=> (and b!1724783 (= (toChars!4715 (transformation!3349 (h!24293 rules!3447))) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!159944) tb!102419))

(declare-fun result!123120 () Bool)

(assert (= result!123120 result!123116))

(assert (=> b!1724772 t!159944))

(declare-fun b_and!126421 () Bool)

(assert (= b_and!126413 (and (=> t!159944 result!123120) b_and!126421)))

(declare-fun t!159946 () Bool)

(declare-fun tb!102421 () Bool)

(assert (=> (and b!1724770 (= (toChars!4715 (transformation!3349 rule!422)) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!159946) tb!102421))

(declare-fun result!123122 () Bool)

(assert (= result!123122 result!123116))

(assert (=> b!1724772 t!159946))

(declare-fun b_and!126423 () Bool)

(assert (= b_and!126417 (and (=> t!159946 result!123122) b_and!126423)))

(declare-fun b_lambda!54821 () Bool)

(assert (=> (not b_lambda!54821) (not b!1724772)))

(declare-fun t!159948 () Bool)

(declare-fun tb!102423 () Bool)

(assert (=> (and b!1724756 (= (toValue!4856 (transformation!3349 (rule!5307 token!523))) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!159948) tb!102423))

(declare-fun result!123124 () Bool)

(assert (=> tb!102423 (= result!123124 (inv!21 (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394)))))

(declare-fun m!2131241 () Bool)

(assert (=> tb!102423 m!2131241))

(assert (=> b!1724772 t!159948))

(declare-fun b_and!126425 () Bool)

(assert (= b_and!126407 (and (=> t!159948 result!123124) b_and!126425)))

(declare-fun t!159950 () Bool)

(declare-fun tb!102425 () Bool)

(assert (=> (and b!1724783 (= (toValue!4856 (transformation!3349 (h!24293 rules!3447))) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!159950) tb!102425))

(declare-fun result!123128 () Bool)

(assert (= result!123128 result!123124))

(assert (=> b!1724772 t!159950))

(declare-fun b_and!126427 () Bool)

(assert (= b_and!126411 (and (=> t!159950 result!123128) b_and!126427)))

(declare-fun tb!102427 () Bool)

(declare-fun t!159952 () Bool)

(assert (=> (and b!1724770 (= (toValue!4856 (transformation!3349 rule!422)) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!159952) tb!102427))

(declare-fun result!123130 () Bool)

(assert (= result!123130 result!123124))

(assert (=> b!1724772 t!159952))

(declare-fun b_and!126429 () Bool)

(assert (= b_and!126415 (and (=> t!159952 result!123130) b_and!126429)))

(declare-fun b_lambda!54823 () Bool)

(assert (=> (not b_lambda!54823) (not b!1724774)))

(declare-fun tb!102429 () Bool)

(declare-fun t!159954 () Bool)

(assert (=> (and b!1724756 (= (toChars!4715 (transformation!3349 (rule!5307 token!523))) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!159954) tb!102429))

(declare-fun b!1724802 () Bool)

(declare-fun e!1103332 () Bool)

(declare-fun tp!492264 () Bool)

(assert (=> b!1724802 (= e!1103332 (and (inv!24414 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389))))) tp!492264))))

(declare-fun result!123132 () Bool)

(assert (=> tb!102429 (= result!123132 (and (inv!24415 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389)))) e!1103332))))

(assert (= tb!102429 b!1724802))

(declare-fun m!2131243 () Bool)

(assert (=> b!1724802 m!2131243))

(declare-fun m!2131245 () Bool)

(assert (=> tb!102429 m!2131245))

(assert (=> b!1724774 t!159954))

(declare-fun b_and!126431 () Bool)

(assert (= b_and!126419 (and (=> t!159954 result!123132) b_and!126431)))

(declare-fun tb!102431 () Bool)

(declare-fun t!159956 () Bool)

(assert (=> (and b!1724783 (= (toChars!4715 (transformation!3349 (h!24293 rules!3447))) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!159956) tb!102431))

(declare-fun result!123134 () Bool)

(assert (= result!123134 result!123132))

(assert (=> b!1724774 t!159956))

(declare-fun b_and!126433 () Bool)

(assert (= b_and!126421 (and (=> t!159956 result!123134) b_and!126433)))

(declare-fun tb!102433 () Bool)

(declare-fun t!159958 () Bool)

(assert (=> (and b!1724770 (= (toChars!4715 (transformation!3349 rule!422)) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!159958) tb!102433))

(declare-fun result!123136 () Bool)

(assert (= result!123136 result!123132))

(assert (=> b!1724774 t!159958))

(declare-fun b_and!126435 () Bool)

(assert (= b_and!126423 (and (=> t!159958 result!123136) b_and!126435)))

(declare-fun m!2131247 () Bool)

(assert (=> start!169218 m!2131247))

(declare-fun m!2131249 () Bool)

(assert (=> b!1724760 m!2131249))

(declare-fun m!2131251 () Bool)

(assert (=> b!1724760 m!2131251))

(declare-fun m!2131253 () Bool)

(assert (=> b!1724767 m!2131253))

(declare-fun m!2131255 () Bool)

(assert (=> b!1724767 m!2131255))

(declare-fun m!2131257 () Bool)

(assert (=> b!1724767 m!2131257))

(declare-fun m!2131259 () Bool)

(assert (=> b!1724767 m!2131259))

(declare-fun m!2131261 () Bool)

(assert (=> b!1724757 m!2131261))

(declare-fun m!2131263 () Bool)

(assert (=> b!1724757 m!2131263))

(assert (=> b!1724757 m!2131263))

(declare-fun m!2131265 () Bool)

(assert (=> b!1724757 m!2131265))

(declare-fun m!2131267 () Bool)

(assert (=> b!1724757 m!2131267))

(declare-fun m!2131269 () Bool)

(assert (=> b!1724765 m!2131269))

(declare-fun m!2131271 () Bool)

(assert (=> b!1724781 m!2131271))

(declare-fun m!2131273 () Bool)

(assert (=> b!1724777 m!2131273))

(declare-fun m!2131275 () Bool)

(assert (=> b!1724777 m!2131275))

(declare-fun m!2131277 () Bool)

(assert (=> b!1724777 m!2131277))

(declare-fun m!2131279 () Bool)

(assert (=> b!1724777 m!2131279))

(declare-fun m!2131281 () Bool)

(assert (=> b!1724777 m!2131281))

(assert (=> b!1724777 m!2131275))

(declare-fun m!2131283 () Bool)

(assert (=> b!1724777 m!2131283))

(declare-fun m!2131285 () Bool)

(assert (=> b!1724777 m!2131285))

(declare-fun m!2131287 () Bool)

(assert (=> b!1724782 m!2131287))

(assert (=> b!1724782 m!2131287))

(declare-fun m!2131289 () Bool)

(assert (=> b!1724782 m!2131289))

(declare-fun m!2131291 () Bool)

(assert (=> b!1724782 m!2131291))

(declare-fun m!2131293 () Bool)

(assert (=> b!1724782 m!2131293))

(declare-fun m!2131295 () Bool)

(assert (=> b!1724782 m!2131295))

(declare-fun m!2131297 () Bool)

(assert (=> b!1724775 m!2131297))

(declare-fun m!2131299 () Bool)

(assert (=> b!1724771 m!2131299))

(declare-fun m!2131301 () Bool)

(assert (=> b!1724761 m!2131301))

(declare-fun m!2131303 () Bool)

(assert (=> b!1724769 m!2131303))

(declare-fun m!2131305 () Bool)

(assert (=> b!1724769 m!2131305))

(declare-fun m!2131307 () Bool)

(assert (=> b!1724769 m!2131307))

(declare-fun m!2131309 () Bool)

(assert (=> b!1724773 m!2131309))

(declare-fun m!2131311 () Bool)

(assert (=> b!1724773 m!2131311))

(declare-fun m!2131313 () Bool)

(assert (=> b!1724773 m!2131313))

(declare-fun m!2131315 () Bool)

(assert (=> b!1724773 m!2131315))

(declare-fun m!2131317 () Bool)

(assert (=> b!1724773 m!2131317))

(declare-fun m!2131319 () Bool)

(assert (=> b!1724773 m!2131319))

(declare-fun m!2131321 () Bool)

(assert (=> b!1724773 m!2131321))

(assert (=> b!1724773 m!2131315))

(declare-fun m!2131323 () Bool)

(assert (=> b!1724773 m!2131323))

(declare-fun m!2131325 () Bool)

(assert (=> b!1724773 m!2131325))

(declare-fun m!2131327 () Bool)

(assert (=> b!1724773 m!2131327))

(declare-fun m!2131329 () Bool)

(assert (=> b!1724773 m!2131329))

(declare-fun m!2131331 () Bool)

(assert (=> b!1724773 m!2131331))

(declare-fun m!2131333 () Bool)

(assert (=> b!1724773 m!2131333))

(declare-fun m!2131335 () Bool)

(assert (=> b!1724773 m!2131335))

(declare-fun m!2131337 () Bool)

(assert (=> b!1724773 m!2131337))

(declare-fun m!2131339 () Bool)

(assert (=> b!1724755 m!2131339))

(declare-fun m!2131341 () Bool)

(assert (=> b!1724755 m!2131341))

(declare-fun m!2131343 () Bool)

(assert (=> b!1724755 m!2131343))

(declare-fun m!2131345 () Bool)

(assert (=> b!1724772 m!2131345))

(assert (=> b!1724772 m!2131345))

(declare-fun m!2131347 () Bool)

(assert (=> b!1724772 m!2131347))

(assert (=> b!1724772 m!2131347))

(declare-fun m!2131349 () Bool)

(assert (=> b!1724772 m!2131349))

(declare-fun m!2131351 () Bool)

(assert (=> b!1724772 m!2131351))

(assert (=> b!1724766 m!2131309))

(assert (=> b!1724766 m!2131309))

(declare-fun m!2131353 () Bool)

(assert (=> b!1724766 m!2131353))

(assert (=> b!1724766 m!2131353))

(declare-fun m!2131355 () Bool)

(assert (=> b!1724766 m!2131355))

(declare-fun m!2131357 () Bool)

(assert (=> b!1724766 m!2131357))

(declare-fun m!2131359 () Bool)

(assert (=> b!1724762 m!2131359))

(declare-fun m!2131361 () Bool)

(assert (=> b!1724778 m!2131361))

(declare-fun m!2131363 () Bool)

(assert (=> b!1724763 m!2131363))

(declare-fun m!2131365 () Bool)

(assert (=> b!1724763 m!2131365))

(declare-fun m!2131367 () Bool)

(assert (=> b!1724768 m!2131367))

(declare-fun m!2131369 () Bool)

(assert (=> b!1724768 m!2131369))

(declare-fun m!2131371 () Bool)

(assert (=> b!1724768 m!2131371))

(declare-fun m!2131373 () Bool)

(assert (=> b!1724764 m!2131373))

(declare-fun m!2131375 () Bool)

(assert (=> b!1724764 m!2131375))

(declare-fun m!2131377 () Bool)

(assert (=> b!1724779 m!2131377))

(declare-fun m!2131379 () Bool)

(assert (=> b!1724774 m!2131379))

(declare-fun m!2131381 () Bool)

(assert (=> b!1724759 m!2131381))

(declare-fun m!2131383 () Bool)

(assert (=> b!1724759 m!2131383))

(check-sat (not b!1724777) (not b_next!47781) (not b!1724782) (not b!1724765) b_and!126431 (not b!1724767) (not b!1724761) (not b_lambda!54821) (not b!1724764) (not b!1724766) (not b!1724802) (not b!1724775) (not b!1724759) (not b!1724769) (not tb!102417) (not b!1724773) (not tb!102423) (not start!169218) (not b!1724755) (not b!1724779) (not b!1724757) (not b!1724781) b_and!126425 (not b_next!47789) b_and!126433 (not b!1724776) (not b!1724780) (not b_next!47783) (not tb!102429) (not b_lambda!54823) b_and!126435 (not b_next!47787) (not b!1724772) tp_is_empty!7597 (not b!1724771) (not b_lambda!54819) (not b!1724762) (not b_next!47779) (not b_next!47785) (not b!1724799) b_and!126427 (not b!1724778) (not b!1724768) b_and!126429 (not b!1724760) (not b!1724763))
(check-sat (not b_next!47781) b_and!126425 b_and!126431 (not b_next!47783) (not b_next!47779) b_and!126429 (not b_next!47789) b_and!126433 b_and!126435 (not b_next!47787) (not b_next!47785) b_and!126427)
(get-model)

(declare-fun b!1724847 () Bool)

(declare-fun e!1103360 () Bool)

(declare-fun inv!17 (TokenValue!3439) Bool)

(assert (=> b!1724847 (= e!1103360 (inv!17 (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394)))))

(declare-fun b!1724848 () Bool)

(declare-fun e!1103361 () Bool)

(assert (=> b!1724848 (= e!1103361 e!1103360)))

(declare-fun c!282053 () Bool)

(assert (=> b!1724848 (= c!282053 ((_ is IntegerValue!10318) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394)))))

(declare-fun b!1724849 () Bool)

(declare-fun e!1103359 () Bool)

(declare-fun inv!15 (TokenValue!3439) Bool)

(assert (=> b!1724849 (= e!1103359 (inv!15 (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394)))))

(declare-fun b!1724850 () Bool)

(declare-fun res!774143 () Bool)

(assert (=> b!1724850 (=> res!774143 e!1103359)))

(assert (=> b!1724850 (= res!774143 (not ((_ is IntegerValue!10319) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394))))))

(assert (=> b!1724850 (= e!1103360 e!1103359)))

(declare-fun b!1724851 () Bool)

(declare-fun inv!16 (TokenValue!3439) Bool)

(assert (=> b!1724851 (= e!1103361 (inv!16 (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394)))))

(declare-fun d!528435 () Bool)

(declare-fun c!282052 () Bool)

(assert (=> d!528435 (= c!282052 ((_ is IntegerValue!10317) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394)))))

(assert (=> d!528435 (= (inv!21 (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394)) e!1103361)))

(assert (= (and d!528435 c!282052) b!1724851))

(assert (= (and d!528435 (not c!282052)) b!1724848))

(assert (= (and b!1724848 c!282053) b!1724847))

(assert (= (and b!1724848 (not c!282053)) b!1724850))

(assert (= (and b!1724850 (not res!774143)) b!1724849))

(declare-fun m!2131439 () Bool)

(assert (=> b!1724847 m!2131439))

(declare-fun m!2131441 () Bool)

(assert (=> b!1724849 m!2131441))

(declare-fun m!2131443 () Bool)

(assert (=> b!1724851 m!2131443))

(assert (=> tb!102423 d!528435))

(declare-fun b!1724907 () Bool)

(declare-fun e!1103391 () Bool)

(declare-fun lt!660440 () Bool)

(assert (=> b!1724907 (= e!1103391 (not lt!660440))))

(declare-fun b!1724908 () Bool)

(declare-fun res!774183 () Bool)

(declare-fun e!1103387 () Bool)

(assert (=> b!1724908 (=> (not res!774183) (not e!1103387))))

(declare-fun call!109800 () Bool)

(assert (=> b!1724908 (= res!774183 (not call!109800))))

(declare-fun bm!109795 () Bool)

(assert (=> bm!109795 (= call!109800 (isEmpty!11881 lt!660396))))

(declare-fun b!1724909 () Bool)

(declare-fun res!774186 () Bool)

(declare-fun e!1103389 () Bool)

(assert (=> b!1724909 (=> res!774186 e!1103389)))

(assert (=> b!1724909 (= res!774186 e!1103387)))

(declare-fun res!774184 () Bool)

(assert (=> b!1724909 (=> (not res!774184) (not e!1103387))))

(assert (=> b!1724909 (= res!774184 lt!660440)))

(declare-fun b!1724910 () Bool)

(declare-fun res!774182 () Bool)

(declare-fun e!1103385 () Bool)

(assert (=> b!1724910 (=> res!774182 e!1103385)))

(declare-fun tail!2577 (List!18961) List!18961)

(assert (=> b!1724910 (= res!774182 (not (isEmpty!11881 (tail!2577 lt!660396))))))

(declare-fun b!1724911 () Bool)

(declare-fun e!1103388 () Bool)

(declare-fun derivativeStep!1179 (Regex!4677 C!9528) Regex!4677)

(assert (=> b!1724911 (= e!1103388 (matchR!2151 (derivativeStep!1179 (regex!3349 (rule!5307 (_1!10691 lt!660389))) (head!3908 lt!660396)) (tail!2577 lt!660396)))))

(declare-fun d!528437 () Bool)

(declare-fun e!1103390 () Bool)

(assert (=> d!528437 e!1103390))

(declare-fun c!282065 () Bool)

(assert (=> d!528437 (= c!282065 ((_ is EmptyExpr!4677) (regex!3349 (rule!5307 (_1!10691 lt!660389)))))))

(assert (=> d!528437 (= lt!660440 e!1103388)))

(declare-fun c!282064 () Bool)

(assert (=> d!528437 (= c!282064 (isEmpty!11881 lt!660396))))

(assert (=> d!528437 (validRegex!1886 (regex!3349 (rule!5307 (_1!10691 lt!660389))))))

(assert (=> d!528437 (= (matchR!2151 (regex!3349 (rule!5307 (_1!10691 lt!660389))) lt!660396) lt!660440)))

(declare-fun b!1724912 () Bool)

(declare-fun nullable!1411 (Regex!4677) Bool)

(assert (=> b!1724912 (= e!1103388 (nullable!1411 (regex!3349 (rule!5307 (_1!10691 lt!660389)))))))

(declare-fun b!1724913 () Bool)

(assert (=> b!1724913 (= e!1103387 (= (head!3908 lt!660396) (c!282042 (regex!3349 (rule!5307 (_1!10691 lt!660389))))))))

(declare-fun b!1724914 () Bool)

(declare-fun e!1103386 () Bool)

(assert (=> b!1724914 (= e!1103386 e!1103385)))

(declare-fun res!774187 () Bool)

(assert (=> b!1724914 (=> res!774187 e!1103385)))

(assert (=> b!1724914 (= res!774187 call!109800)))

(declare-fun b!1724915 () Bool)

(assert (=> b!1724915 (= e!1103389 e!1103386)))

(declare-fun res!774185 () Bool)

(assert (=> b!1724915 (=> (not res!774185) (not e!1103386))))

(assert (=> b!1724915 (= res!774185 (not lt!660440))))

(declare-fun b!1724916 () Bool)

(assert (=> b!1724916 (= e!1103385 (not (= (head!3908 lt!660396) (c!282042 (regex!3349 (rule!5307 (_1!10691 lt!660389)))))))))

(declare-fun b!1724917 () Bool)

(assert (=> b!1724917 (= e!1103390 e!1103391)))

(declare-fun c!282063 () Bool)

(assert (=> b!1724917 (= c!282063 ((_ is EmptyLang!4677) (regex!3349 (rule!5307 (_1!10691 lt!660389)))))))

(declare-fun b!1724918 () Bool)

(assert (=> b!1724918 (= e!1103390 (= lt!660440 call!109800))))

(declare-fun b!1724919 () Bool)

(declare-fun res!774181 () Bool)

(assert (=> b!1724919 (=> (not res!774181) (not e!1103387))))

(assert (=> b!1724919 (= res!774181 (isEmpty!11881 (tail!2577 lt!660396)))))

(declare-fun b!1724920 () Bool)

(declare-fun res!774188 () Bool)

(assert (=> b!1724920 (=> res!774188 e!1103389)))

(assert (=> b!1724920 (= res!774188 (not ((_ is ElementMatch!4677) (regex!3349 (rule!5307 (_1!10691 lt!660389))))))))

(assert (=> b!1724920 (= e!1103391 e!1103389)))

(assert (= (and d!528437 c!282064) b!1724912))

(assert (= (and d!528437 (not c!282064)) b!1724911))

(assert (= (and d!528437 c!282065) b!1724918))

(assert (= (and d!528437 (not c!282065)) b!1724917))

(assert (= (and b!1724917 c!282063) b!1724907))

(assert (= (and b!1724917 (not c!282063)) b!1724920))

(assert (= (and b!1724920 (not res!774188)) b!1724909))

(assert (= (and b!1724909 res!774184) b!1724908))

(assert (= (and b!1724908 res!774183) b!1724919))

(assert (= (and b!1724919 res!774181) b!1724913))

(assert (= (and b!1724909 (not res!774186)) b!1724915))

(assert (= (and b!1724915 res!774185) b!1724914))

(assert (= (and b!1724914 (not res!774187)) b!1724910))

(assert (= (and b!1724910 (not res!774182)) b!1724916))

(assert (= (or b!1724918 b!1724908 b!1724914) bm!109795))

(declare-fun m!2131477 () Bool)

(assert (=> b!1724912 m!2131477))

(declare-fun m!2131479 () Bool)

(assert (=> d!528437 m!2131479))

(declare-fun m!2131481 () Bool)

(assert (=> d!528437 m!2131481))

(declare-fun m!2131483 () Bool)

(assert (=> b!1724919 m!2131483))

(assert (=> b!1724919 m!2131483))

(declare-fun m!2131485 () Bool)

(assert (=> b!1724919 m!2131485))

(assert (=> bm!109795 m!2131479))

(declare-fun m!2131487 () Bool)

(assert (=> b!1724911 m!2131487))

(assert (=> b!1724911 m!2131487))

(declare-fun m!2131489 () Bool)

(assert (=> b!1724911 m!2131489))

(assert (=> b!1724911 m!2131483))

(assert (=> b!1724911 m!2131489))

(assert (=> b!1724911 m!2131483))

(declare-fun m!2131491 () Bool)

(assert (=> b!1724911 m!2131491))

(assert (=> b!1724916 m!2131487))

(assert (=> b!1724913 m!2131487))

(assert (=> b!1724910 m!2131483))

(assert (=> b!1724910 m!2131483))

(assert (=> b!1724910 m!2131485))

(assert (=> b!1724762 d!528437))

(declare-fun d!528441 () Bool)

(declare-fun fromListB!1065 (List!18961) BalanceConc!12510)

(assert (=> d!528441 (= (seqFromList!2323 (originalCharacters!4163 (_1!10691 lt!660389))) (fromListB!1065 (originalCharacters!4163 (_1!10691 lt!660389))))))

(declare-fun bs!402359 () Bool)

(assert (= bs!402359 d!528441))

(declare-fun m!2131493 () Bool)

(assert (=> bs!402359 m!2131493))

(assert (=> b!1724782 d!528441))

(declare-fun d!528443 () Bool)

(declare-fun lt!660443 () Int)

(assert (=> d!528443 (= lt!660443 (size!15012 (list!7634 lt!660394)))))

(declare-fun size!15013 (Conc!6283) Int)

(assert (=> d!528443 (= lt!660443 (size!15013 (c!282043 lt!660394)))))

(assert (=> d!528443 (= (size!15011 lt!660394) lt!660443)))

(declare-fun bs!402360 () Bool)

(assert (= bs!402360 d!528443))

(assert (=> bs!402360 m!2131321))

(assert (=> bs!402360 m!2131321))

(declare-fun m!2131495 () Bool)

(assert (=> bs!402360 m!2131495))

(declare-fun m!2131497 () Bool)

(assert (=> bs!402360 m!2131497))

(assert (=> b!1724782 d!528443))

(declare-fun d!528445 () Bool)

(assert (=> d!528445 (= (size!15010 (_1!10691 lt!660389)) (size!15012 (originalCharacters!4163 (_1!10691 lt!660389))))))

(declare-fun Unit!32741 () Unit!32737)

(assert (=> d!528445 (= (lemmaCharactersSize!421 (_1!10691 lt!660389)) Unit!32741)))

(declare-fun bs!402361 () Bool)

(assert (= bs!402361 d!528445))

(declare-fun m!2131499 () Bool)

(assert (=> bs!402361 m!2131499))

(assert (=> b!1724782 d!528445))

(declare-fun d!528447 () Bool)

(assert (=> d!528447 (= (apply!5154 (transformation!3349 (rule!5307 (_1!10691 lt!660389))) lt!660394) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394))))

(declare-fun b_lambda!54827 () Bool)

(assert (=> (not b_lambda!54827) (not d!528447)))

(assert (=> d!528447 t!159948))

(declare-fun b_and!126443 () Bool)

(assert (= b_and!126425 (and (=> t!159948 result!123124) b_and!126443)))

(assert (=> d!528447 t!159950))

(declare-fun b_and!126445 () Bool)

(assert (= b_and!126427 (and (=> t!159950 result!123128) b_and!126445)))

(assert (=> d!528447 t!159952))

(declare-fun b_and!126447 () Bool)

(assert (= b_and!126429 (and (=> t!159952 result!123130) b_and!126447)))

(assert (=> d!528447 m!2131345))

(assert (=> b!1724782 d!528447))

(declare-fun b!1724927 () Bool)

(declare-fun e!1103396 () Bool)

(assert (=> b!1724927 (= e!1103396 true)))

(declare-fun d!528449 () Bool)

(assert (=> d!528449 e!1103396))

(assert (= d!528449 b!1724927))

(declare-fun order!11565 () Int)

(declare-fun lambda!69221 () Int)

(declare-fun dynLambda!8743 (Int Int) Int)

(assert (=> b!1724927 (< (dynLambda!8738 order!11559 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) (dynLambda!8743 order!11565 lambda!69221))))

(assert (=> b!1724927 (< (dynLambda!8740 order!11563 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) (dynLambda!8743 order!11565 lambda!69221))))

(assert (=> d!528449 (= (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (seqFromList!2323 (originalCharacters!4163 (_1!10691 lt!660389)))))))

(declare-fun lt!660446 () Unit!32737)

(declare-fun Forall2of!80 (Int BalanceConc!12510 BalanceConc!12510) Unit!32737)

(assert (=> d!528449 (= lt!660446 (Forall2of!80 lambda!69221 lt!660394 (seqFromList!2323 (originalCharacters!4163 (_1!10691 lt!660389)))))))

(assert (=> d!528449 (= (list!7634 lt!660394) (list!7634 (seqFromList!2323 (originalCharacters!4163 (_1!10691 lt!660389)))))))

(assert (=> d!528449 (= (lemmaEqSameImage!274 (transformation!3349 (rule!5307 (_1!10691 lt!660389))) lt!660394 (seqFromList!2323 (originalCharacters!4163 (_1!10691 lt!660389)))) lt!660446)))

(declare-fun b_lambda!54829 () Bool)

(assert (=> (not b_lambda!54829) (not d!528449)))

(assert (=> d!528449 t!159948))

(declare-fun b_and!126449 () Bool)

(assert (= b_and!126443 (and (=> t!159948 result!123124) b_and!126449)))

(assert (=> d!528449 t!159950))

(declare-fun b_and!126451 () Bool)

(assert (= b_and!126445 (and (=> t!159950 result!123128) b_and!126451)))

(assert (=> d!528449 t!159952))

(declare-fun b_and!126453 () Bool)

(assert (= b_and!126447 (and (=> t!159952 result!123130) b_and!126453)))

(declare-fun b_lambda!54831 () Bool)

(assert (=> (not b_lambda!54831) (not d!528449)))

(declare-fun tb!102435 () Bool)

(declare-fun t!159963 () Bool)

(assert (=> (and b!1724756 (= (toValue!4856 (transformation!3349 (rule!5307 token!523))) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!159963) tb!102435))

(declare-fun result!123138 () Bool)

(assert (=> tb!102435 (= result!123138 (inv!21 (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (seqFromList!2323 (originalCharacters!4163 (_1!10691 lt!660389))))))))

(declare-fun m!2131501 () Bool)

(assert (=> tb!102435 m!2131501))

(assert (=> d!528449 t!159963))

(declare-fun b_and!126455 () Bool)

(assert (= b_and!126449 (and (=> t!159963 result!123138) b_and!126455)))

(declare-fun tb!102437 () Bool)

(declare-fun t!159965 () Bool)

(assert (=> (and b!1724783 (= (toValue!4856 (transformation!3349 (h!24293 rules!3447))) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!159965) tb!102437))

(declare-fun result!123140 () Bool)

(assert (= result!123140 result!123138))

(assert (=> d!528449 t!159965))

(declare-fun b_and!126457 () Bool)

(assert (= b_and!126451 (and (=> t!159965 result!123140) b_and!126457)))

(declare-fun t!159967 () Bool)

(declare-fun tb!102439 () Bool)

(assert (=> (and b!1724770 (= (toValue!4856 (transformation!3349 rule!422)) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!159967) tb!102439))

(declare-fun result!123142 () Bool)

(assert (= result!123142 result!123138))

(assert (=> d!528449 t!159967))

(declare-fun b_and!126459 () Bool)

(assert (= b_and!126453 (and (=> t!159967 result!123142) b_and!126459)))

(assert (=> d!528449 m!2131321))

(assert (=> d!528449 m!2131287))

(declare-fun m!2131503 () Bool)

(assert (=> d!528449 m!2131503))

(assert (=> d!528449 m!2131287))

(declare-fun m!2131505 () Bool)

(assert (=> d!528449 m!2131505))

(assert (=> d!528449 m!2131287))

(declare-fun m!2131507 () Bool)

(assert (=> d!528449 m!2131507))

(assert (=> d!528449 m!2131345))

(assert (=> b!1724782 d!528449))

(declare-fun b!1724928 () Bool)

(declare-fun e!1103399 () Bool)

(assert (=> b!1724928 (= e!1103399 (inv!17 (value!105119 token!523)))))

(declare-fun b!1724929 () Bool)

(declare-fun e!1103400 () Bool)

(assert (=> b!1724929 (= e!1103400 e!1103399)))

(declare-fun c!282067 () Bool)

(assert (=> b!1724929 (= c!282067 ((_ is IntegerValue!10318) (value!105119 token!523)))))

(declare-fun b!1724930 () Bool)

(declare-fun e!1103398 () Bool)

(assert (=> b!1724930 (= e!1103398 (inv!15 (value!105119 token!523)))))

(declare-fun b!1724931 () Bool)

(declare-fun res!774191 () Bool)

(assert (=> b!1724931 (=> res!774191 e!1103398)))

(assert (=> b!1724931 (= res!774191 (not ((_ is IntegerValue!10319) (value!105119 token!523))))))

(assert (=> b!1724931 (= e!1103399 e!1103398)))

(declare-fun b!1724932 () Bool)

(assert (=> b!1724932 (= e!1103400 (inv!16 (value!105119 token!523)))))

(declare-fun d!528451 () Bool)

(declare-fun c!282066 () Bool)

(assert (=> d!528451 (= c!282066 ((_ is IntegerValue!10317) (value!105119 token!523)))))

(assert (=> d!528451 (= (inv!21 (value!105119 token!523)) e!1103400)))

(assert (= (and d!528451 c!282066) b!1724932))

(assert (= (and d!528451 (not c!282066)) b!1724929))

(assert (= (and b!1724929 c!282067) b!1724928))

(assert (= (and b!1724929 (not c!282067)) b!1724931))

(assert (= (and b!1724931 (not res!774191)) b!1724930))

(declare-fun m!2131509 () Bool)

(assert (=> b!1724928 m!2131509))

(declare-fun m!2131511 () Bool)

(assert (=> b!1724930 m!2131511))

(declare-fun m!2131513 () Bool)

(assert (=> b!1724932 m!2131513))

(assert (=> b!1724761 d!528451))

(declare-fun d!528453 () Bool)

(declare-fun c!282070 () Bool)

(assert (=> d!528453 (= c!282070 ((_ is Node!6283) (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389))))))))

(declare-fun e!1103405 () Bool)

(assert (=> d!528453 (= (inv!24414 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389))))) e!1103405)))

(declare-fun b!1724939 () Bool)

(declare-fun inv!24418 (Conc!6283) Bool)

(assert (=> b!1724939 (= e!1103405 (inv!24418 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389))))))))

(declare-fun b!1724940 () Bool)

(declare-fun e!1103406 () Bool)

(assert (=> b!1724940 (= e!1103405 e!1103406)))

(declare-fun res!774194 () Bool)

(assert (=> b!1724940 (= res!774194 (not ((_ is Leaf!9178) (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389)))))))))

(assert (=> b!1724940 (=> res!774194 e!1103406)))

(declare-fun b!1724941 () Bool)

(declare-fun inv!24419 (Conc!6283) Bool)

(assert (=> b!1724941 (= e!1103406 (inv!24419 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389))))))))

(assert (= (and d!528453 c!282070) b!1724939))

(assert (= (and d!528453 (not c!282070)) b!1724940))

(assert (= (and b!1724940 (not res!774194)) b!1724941))

(declare-fun m!2131515 () Bool)

(assert (=> b!1724939 m!2131515))

(declare-fun m!2131517 () Bool)

(assert (=> b!1724941 m!2131517))

(assert (=> b!1724802 d!528453))

(declare-fun d!528455 () Bool)

(assert (=> d!528455 (= (isEmpty!11881 (_2!10691 lt!660376)) ((_ is Nil!18891) (_2!10691 lt!660376)))))

(assert (=> b!1724765 d!528455))

(declare-fun d!528457 () Bool)

(assert (=> d!528457 (= (inv!24407 (tag!3665 (h!24293 rules!3447))) (= (mod (str.len (value!105118 (tag!3665 (h!24293 rules!3447)))) 2) 0))))

(assert (=> b!1724763 d!528457))

(declare-fun d!528459 () Bool)

(declare-fun res!774197 () Bool)

(declare-fun e!1103409 () Bool)

(assert (=> d!528459 (=> (not res!774197) (not e!1103409))))

(declare-fun semiInverseModEq!1325 (Int Int) Bool)

(assert (=> d!528459 (= res!774197 (semiInverseModEq!1325 (toChars!4715 (transformation!3349 (h!24293 rules!3447))) (toValue!4856 (transformation!3349 (h!24293 rules!3447)))))))

(assert (=> d!528459 (= (inv!24412 (transformation!3349 (h!24293 rules!3447))) e!1103409)))

(declare-fun b!1724944 () Bool)

(declare-fun equivClasses!1266 (Int Int) Bool)

(assert (=> b!1724944 (= e!1103409 (equivClasses!1266 (toChars!4715 (transformation!3349 (h!24293 rules!3447))) (toValue!4856 (transformation!3349 (h!24293 rules!3447)))))))

(assert (= (and d!528459 res!774197) b!1724944))

(declare-fun m!2131519 () Bool)

(assert (=> d!528459 m!2131519))

(declare-fun m!2131521 () Bool)

(assert (=> b!1724944 m!2131521))

(assert (=> b!1724763 d!528459))

(declare-fun d!528461 () Bool)

(assert (=> d!528461 (= (inv!24407 (tag!3665 (rule!5307 token!523))) (= (mod (str.len (value!105118 (tag!3665 (rule!5307 token!523)))) 2) 0))))

(assert (=> b!1724764 d!528461))

(declare-fun d!528463 () Bool)

(declare-fun res!774198 () Bool)

(declare-fun e!1103410 () Bool)

(assert (=> d!528463 (=> (not res!774198) (not e!1103410))))

(assert (=> d!528463 (= res!774198 (semiInverseModEq!1325 (toChars!4715 (transformation!3349 (rule!5307 token!523))) (toValue!4856 (transformation!3349 (rule!5307 token!523)))))))

(assert (=> d!528463 (= (inv!24412 (transformation!3349 (rule!5307 token!523))) e!1103410)))

(declare-fun b!1724945 () Bool)

(assert (=> b!1724945 (= e!1103410 (equivClasses!1266 (toChars!4715 (transformation!3349 (rule!5307 token!523))) (toValue!4856 (transformation!3349 (rule!5307 token!523)))))))

(assert (= (and d!528463 res!774198) b!1724945))

(declare-fun m!2131523 () Bool)

(assert (=> d!528463 m!2131523))

(declare-fun m!2131525 () Bool)

(assert (=> b!1724945 m!2131525))

(assert (=> b!1724764 d!528463))

(declare-fun d!528465 () Bool)

(declare-fun isEmpty!11885 (Option!3723) Bool)

(assert (=> d!528465 (= (isDefined!3065 lt!660401) (not (isEmpty!11885 lt!660401)))))

(declare-fun bs!402362 () Bool)

(assert (= bs!402362 d!528465))

(declare-fun m!2131527 () Bool)

(assert (=> bs!402362 m!2131527))

(assert (=> b!1724767 d!528465))

(declare-fun b!1724964 () Bool)

(declare-fun res!774217 () Bool)

(declare-fun e!1103417 () Bool)

(assert (=> b!1724964 (=> (not res!774217) (not e!1103417))))

(declare-fun lt!660461 () Option!3723)

(assert (=> b!1724964 (= res!774217 (= (value!105119 (_1!10691 (get!5615 lt!660461))) (apply!5154 (transformation!3349 (rule!5307 (_1!10691 (get!5615 lt!660461)))) (seqFromList!2323 (originalCharacters!4163 (_1!10691 (get!5615 lt!660461)))))))))

(declare-fun d!528467 () Bool)

(declare-fun e!1103419 () Bool)

(assert (=> d!528467 e!1103419))

(declare-fun res!774215 () Bool)

(assert (=> d!528467 (=> res!774215 e!1103419)))

(assert (=> d!528467 (= res!774215 (isEmpty!11885 lt!660461))))

(declare-fun e!1103418 () Option!3723)

(assert (=> d!528467 (= lt!660461 e!1103418)))

(declare-fun c!282073 () Bool)

(assert (=> d!528467 (= c!282073 (and ((_ is Cons!18892) rules!3447) ((_ is Nil!18892) (t!159961 rules!3447))))))

(declare-fun lt!660459 () Unit!32737)

(declare-fun lt!660460 () Unit!32737)

(assert (=> d!528467 (= lt!660459 lt!660460)))

(assert (=> d!528467 (isPrefix!1590 lt!660390 lt!660390)))

(declare-fun lemmaIsPrefixRefl!1075 (List!18961 List!18961) Unit!32737)

(assert (=> d!528467 (= lt!660460 (lemmaIsPrefixRefl!1075 lt!660390 lt!660390))))

(declare-fun rulesValidInductive!1112 (LexerInterface!2978 List!18962) Bool)

(assert (=> d!528467 (rulesValidInductive!1112 thiss!24550 rules!3447)))

(assert (=> d!528467 (= (maxPrefix!1532 thiss!24550 rules!3447 lt!660390) lt!660461)))

(declare-fun b!1724965 () Bool)

(assert (=> b!1724965 (= e!1103419 e!1103417)))

(declare-fun res!774213 () Bool)

(assert (=> b!1724965 (=> (not res!774213) (not e!1103417))))

(assert (=> b!1724965 (= res!774213 (isDefined!3065 lt!660461))))

(declare-fun b!1724966 () Bool)

(declare-fun res!774214 () Bool)

(assert (=> b!1724966 (=> (not res!774214) (not e!1103417))))

(assert (=> b!1724966 (= res!774214 (= (++!5174 (list!7634 (charsOf!1998 (_1!10691 (get!5615 lt!660461)))) (_2!10691 (get!5615 lt!660461))) lt!660390))))

(declare-fun b!1724967 () Bool)

(declare-fun call!109803 () Option!3723)

(assert (=> b!1724967 (= e!1103418 call!109803)))

(declare-fun b!1724968 () Bool)

(declare-fun res!774216 () Bool)

(assert (=> b!1724968 (=> (not res!774216) (not e!1103417))))

(assert (=> b!1724968 (= res!774216 (matchR!2151 (regex!3349 (rule!5307 (_1!10691 (get!5615 lt!660461)))) (list!7634 (charsOf!1998 (_1!10691 (get!5615 lt!660461))))))))

(declare-fun bm!109798 () Bool)

(assert (=> bm!109798 (= call!109803 (maxPrefixOneRule!908 thiss!24550 (h!24293 rules!3447) lt!660390))))

(declare-fun b!1724969 () Bool)

(declare-fun res!774219 () Bool)

(assert (=> b!1724969 (=> (not res!774219) (not e!1103417))))

(assert (=> b!1724969 (= res!774219 (< (size!15012 (_2!10691 (get!5615 lt!660461))) (size!15012 lt!660390)))))

(declare-fun b!1724970 () Bool)

(declare-fun res!774218 () Bool)

(assert (=> b!1724970 (=> (not res!774218) (not e!1103417))))

(assert (=> b!1724970 (= res!774218 (= (list!7634 (charsOf!1998 (_1!10691 (get!5615 lt!660461)))) (originalCharacters!4163 (_1!10691 (get!5615 lt!660461)))))))

(declare-fun b!1724971 () Bool)

(declare-fun lt!660457 () Option!3723)

(declare-fun lt!660458 () Option!3723)

(assert (=> b!1724971 (= e!1103418 (ite (and ((_ is None!3722) lt!660457) ((_ is None!3722) lt!660458)) None!3722 (ite ((_ is None!3722) lt!660458) lt!660457 (ite ((_ is None!3722) lt!660457) lt!660458 (ite (>= (size!15010 (_1!10691 (v!25131 lt!660457))) (size!15010 (_1!10691 (v!25131 lt!660458)))) lt!660457 lt!660458)))))))

(assert (=> b!1724971 (= lt!660457 call!109803)))

(assert (=> b!1724971 (= lt!660458 (maxPrefix!1532 thiss!24550 (t!159961 rules!3447) lt!660390))))

(declare-fun b!1724972 () Bool)

(assert (=> b!1724972 (= e!1103417 (contains!3371 rules!3447 (rule!5307 (_1!10691 (get!5615 lt!660461)))))))

(assert (= (and d!528467 c!282073) b!1724967))

(assert (= (and d!528467 (not c!282073)) b!1724971))

(assert (= (or b!1724967 b!1724971) bm!109798))

(assert (= (and d!528467 (not res!774215)) b!1724965))

(assert (= (and b!1724965 res!774213) b!1724970))

(assert (= (and b!1724970 res!774218) b!1724969))

(assert (= (and b!1724969 res!774219) b!1724966))

(assert (= (and b!1724966 res!774214) b!1724964))

(assert (= (and b!1724964 res!774217) b!1724968))

(assert (= (and b!1724968 res!774216) b!1724972))

(declare-fun m!2131529 () Bool)

(assert (=> b!1724969 m!2131529))

(declare-fun m!2131531 () Bool)

(assert (=> b!1724969 m!2131531))

(declare-fun m!2131533 () Bool)

(assert (=> b!1724969 m!2131533))

(declare-fun m!2131535 () Bool)

(assert (=> d!528467 m!2131535))

(declare-fun m!2131537 () Bool)

(assert (=> d!528467 m!2131537))

(declare-fun m!2131539 () Bool)

(assert (=> d!528467 m!2131539))

(declare-fun m!2131541 () Bool)

(assert (=> d!528467 m!2131541))

(assert (=> b!1724972 m!2131529))

(declare-fun m!2131543 () Bool)

(assert (=> b!1724972 m!2131543))

(declare-fun m!2131545 () Bool)

(assert (=> bm!109798 m!2131545))

(declare-fun m!2131547 () Bool)

(assert (=> b!1724965 m!2131547))

(assert (=> b!1724964 m!2131529))

(declare-fun m!2131549 () Bool)

(assert (=> b!1724964 m!2131549))

(assert (=> b!1724964 m!2131549))

(declare-fun m!2131551 () Bool)

(assert (=> b!1724964 m!2131551))

(declare-fun m!2131553 () Bool)

(assert (=> b!1724971 m!2131553))

(assert (=> b!1724968 m!2131529))

(declare-fun m!2131555 () Bool)

(assert (=> b!1724968 m!2131555))

(assert (=> b!1724968 m!2131555))

(declare-fun m!2131557 () Bool)

(assert (=> b!1724968 m!2131557))

(assert (=> b!1724968 m!2131557))

(declare-fun m!2131559 () Bool)

(assert (=> b!1724968 m!2131559))

(assert (=> b!1724970 m!2131529))

(assert (=> b!1724970 m!2131555))

(assert (=> b!1724970 m!2131555))

(assert (=> b!1724970 m!2131557))

(assert (=> b!1724966 m!2131529))

(assert (=> b!1724966 m!2131555))

(assert (=> b!1724966 m!2131555))

(assert (=> b!1724966 m!2131557))

(assert (=> b!1724966 m!2131557))

(declare-fun m!2131561 () Bool)

(assert (=> b!1724966 m!2131561))

(assert (=> b!1724767 d!528467))

(declare-fun d!528469 () Bool)

(declare-fun list!7637 (Conc!6283) List!18961)

(assert (=> d!528469 (= (list!7634 lt!660380) (list!7637 (c!282043 lt!660380)))))

(declare-fun bs!402363 () Bool)

(assert (= bs!402363 d!528469))

(declare-fun m!2131563 () Bool)

(assert (=> bs!402363 m!2131563))

(assert (=> b!1724767 d!528469))

(declare-fun d!528471 () Bool)

(declare-fun lt!660498 () BalanceConc!12510)

(assert (=> d!528471 (= (list!7634 lt!660498) (originalCharacters!4163 token!523))))

(assert (=> d!528471 (= lt!660498 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 token!523))) (value!105119 token!523)))))

(assert (=> d!528471 (= (charsOf!1998 token!523) lt!660498)))

(declare-fun b_lambda!54833 () Bool)

(assert (=> (not b_lambda!54833) (not d!528471)))

(declare-fun t!159969 () Bool)

(declare-fun tb!102441 () Bool)

(assert (=> (and b!1724756 (= (toChars!4715 (transformation!3349 (rule!5307 token!523))) (toChars!4715 (transformation!3349 (rule!5307 token!523)))) t!159969) tb!102441))

(declare-fun b!1724981 () Bool)

(declare-fun e!1103424 () Bool)

(declare-fun tp!492265 () Bool)

(assert (=> b!1724981 (= e!1103424 (and (inv!24414 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 token!523))) (value!105119 token!523)))) tp!492265))))

(declare-fun result!123144 () Bool)

(assert (=> tb!102441 (= result!123144 (and (inv!24415 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 token!523))) (value!105119 token!523))) e!1103424))))

(assert (= tb!102441 b!1724981))

(declare-fun m!2131565 () Bool)

(assert (=> b!1724981 m!2131565))

(declare-fun m!2131567 () Bool)

(assert (=> tb!102441 m!2131567))

(assert (=> d!528471 t!159969))

(declare-fun b_and!126461 () Bool)

(assert (= b_and!126431 (and (=> t!159969 result!123144) b_and!126461)))

(declare-fun t!159971 () Bool)

(declare-fun tb!102443 () Bool)

(assert (=> (and b!1724783 (= (toChars!4715 (transformation!3349 (h!24293 rules!3447))) (toChars!4715 (transformation!3349 (rule!5307 token!523)))) t!159971) tb!102443))

(declare-fun result!123146 () Bool)

(assert (= result!123146 result!123144))

(assert (=> d!528471 t!159971))

(declare-fun b_and!126463 () Bool)

(assert (= b_and!126433 (and (=> t!159971 result!123146) b_and!126463)))

(declare-fun tb!102445 () Bool)

(declare-fun t!159973 () Bool)

(assert (=> (and b!1724770 (= (toChars!4715 (transformation!3349 rule!422)) (toChars!4715 (transformation!3349 (rule!5307 token!523)))) t!159973) tb!102445))

(declare-fun result!123148 () Bool)

(assert (= result!123148 result!123144))

(assert (=> d!528471 t!159973))

(declare-fun b_and!126465 () Bool)

(assert (= b_and!126435 (and (=> t!159973 result!123148) b_and!126465)))

(declare-fun m!2131569 () Bool)

(assert (=> d!528471 m!2131569))

(declare-fun m!2131571 () Bool)

(assert (=> d!528471 m!2131571))

(assert (=> b!1724767 d!528471))

(declare-fun b!1725012 () Bool)

(declare-fun res!774246 () Bool)

(declare-fun e!1103449 () Bool)

(assert (=> b!1725012 (=> (not res!774246) (not e!1103449))))

(declare-fun call!109811 () Bool)

(assert (=> b!1725012 (= res!774246 call!109811)))

(declare-fun e!1103447 () Bool)

(assert (=> b!1725012 (= e!1103447 e!1103449)))

(declare-fun b!1725013 () Bool)

(declare-fun e!1103450 () Bool)

(assert (=> b!1725013 (= e!1103450 e!1103447)))

(declare-fun c!282082 () Bool)

(assert (=> b!1725013 (= c!282082 ((_ is Union!4677) lt!660395))))

(declare-fun bm!109805 () Bool)

(declare-fun call!109810 () Bool)

(declare-fun c!282081 () Bool)

(assert (=> bm!109805 (= call!109810 (validRegex!1886 (ite c!282081 (reg!5006 lt!660395) (ite c!282082 (regTwo!9867 lt!660395) (regOne!9866 lt!660395)))))))

(declare-fun bm!109806 () Bool)

(declare-fun call!109812 () Bool)

(assert (=> bm!109806 (= call!109812 call!109810)))

(declare-fun d!528473 () Bool)

(declare-fun res!774247 () Bool)

(declare-fun e!1103452 () Bool)

(assert (=> d!528473 (=> res!774247 e!1103452)))

(assert (=> d!528473 (= res!774247 ((_ is ElementMatch!4677) lt!660395))))

(assert (=> d!528473 (= (validRegex!1886 lt!660395) e!1103452)))

(declare-fun b!1725014 () Bool)

(declare-fun e!1103451 () Bool)

(assert (=> b!1725014 (= e!1103451 call!109810)))

(declare-fun bm!109807 () Bool)

(assert (=> bm!109807 (= call!109811 (validRegex!1886 (ite c!282082 (regOne!9867 lt!660395) (regTwo!9866 lt!660395))))))

(declare-fun b!1725015 () Bool)

(declare-fun e!1103448 () Bool)

(assert (=> b!1725015 (= e!1103448 call!109811)))

(declare-fun b!1725016 () Bool)

(assert (=> b!1725016 (= e!1103452 e!1103450)))

(assert (=> b!1725016 (= c!282081 ((_ is Star!4677) lt!660395))))

(declare-fun b!1725017 () Bool)

(assert (=> b!1725017 (= e!1103450 e!1103451)))

(declare-fun res!774244 () Bool)

(assert (=> b!1725017 (= res!774244 (not (nullable!1411 (reg!5006 lt!660395))))))

(assert (=> b!1725017 (=> (not res!774244) (not e!1103451))))

(declare-fun b!1725018 () Bool)

(declare-fun res!774248 () Bool)

(declare-fun e!1103453 () Bool)

(assert (=> b!1725018 (=> res!774248 e!1103453)))

(assert (=> b!1725018 (= res!774248 (not ((_ is Concat!8117) lt!660395)))))

(assert (=> b!1725018 (= e!1103447 e!1103453)))

(declare-fun b!1725019 () Bool)

(assert (=> b!1725019 (= e!1103453 e!1103448)))

(declare-fun res!774245 () Bool)

(assert (=> b!1725019 (=> (not res!774245) (not e!1103448))))

(assert (=> b!1725019 (= res!774245 call!109812)))

(declare-fun b!1725020 () Bool)

(assert (=> b!1725020 (= e!1103449 call!109812)))

(assert (= (and d!528473 (not res!774247)) b!1725016))

(assert (= (and b!1725016 c!282081) b!1725017))

(assert (= (and b!1725016 (not c!282081)) b!1725013))

(assert (= (and b!1725017 res!774244) b!1725014))

(assert (= (and b!1725013 c!282082) b!1725012))

(assert (= (and b!1725013 (not c!282082)) b!1725018))

(assert (= (and b!1725012 res!774246) b!1725020))

(assert (= (and b!1725018 (not res!774248)) b!1725019))

(assert (= (and b!1725019 res!774245) b!1725015))

(assert (= (or b!1725012 b!1725015) bm!109807))

(assert (= (or b!1725020 b!1725019) bm!109806))

(assert (= (or b!1725014 bm!109806) bm!109805))

(declare-fun m!2131641 () Bool)

(assert (=> bm!109805 m!2131641))

(declare-fun m!2131643 () Bool)

(assert (=> bm!109807 m!2131643))

(declare-fun m!2131645 () Bool)

(assert (=> b!1725017 m!2131645))

(assert (=> b!1724768 d!528473))

(declare-fun b!1725021 () Bool)

(declare-fun e!1103460 () Bool)

(declare-fun lt!660519 () Bool)

(assert (=> b!1725021 (= e!1103460 (not lt!660519))))

(declare-fun b!1725022 () Bool)

(declare-fun res!774251 () Bool)

(declare-fun e!1103456 () Bool)

(assert (=> b!1725022 (=> (not res!774251) (not e!1103456))))

(declare-fun call!109813 () Bool)

(assert (=> b!1725022 (= res!774251 (not call!109813))))

(declare-fun bm!109808 () Bool)

(assert (=> bm!109808 (= call!109813 (isEmpty!11881 lt!660396))))

(declare-fun b!1725023 () Bool)

(declare-fun res!774254 () Bool)

(declare-fun e!1103458 () Bool)

(assert (=> b!1725023 (=> res!774254 e!1103458)))

(assert (=> b!1725023 (= res!774254 e!1103456)))

(declare-fun res!774252 () Bool)

(assert (=> b!1725023 (=> (not res!774252) (not e!1103456))))

(assert (=> b!1725023 (= res!774252 lt!660519)))

(declare-fun b!1725024 () Bool)

(declare-fun res!774250 () Bool)

(declare-fun e!1103454 () Bool)

(assert (=> b!1725024 (=> res!774250 e!1103454)))

(assert (=> b!1725024 (= res!774250 (not (isEmpty!11881 (tail!2577 lt!660396))))))

(declare-fun b!1725025 () Bool)

(declare-fun e!1103457 () Bool)

(assert (=> b!1725025 (= e!1103457 (matchR!2151 (derivativeStep!1179 lt!660395 (head!3908 lt!660396)) (tail!2577 lt!660396)))))

(declare-fun d!528485 () Bool)

(declare-fun e!1103459 () Bool)

(assert (=> d!528485 e!1103459))

(declare-fun c!282085 () Bool)

(assert (=> d!528485 (= c!282085 ((_ is EmptyExpr!4677) lt!660395))))

(assert (=> d!528485 (= lt!660519 e!1103457)))

(declare-fun c!282084 () Bool)

(assert (=> d!528485 (= c!282084 (isEmpty!11881 lt!660396))))

(assert (=> d!528485 (validRegex!1886 lt!660395)))

(assert (=> d!528485 (= (matchR!2151 lt!660395 lt!660396) lt!660519)))

(declare-fun b!1725026 () Bool)

(assert (=> b!1725026 (= e!1103457 (nullable!1411 lt!660395))))

(declare-fun b!1725027 () Bool)

(assert (=> b!1725027 (= e!1103456 (= (head!3908 lt!660396) (c!282042 lt!660395)))))

(declare-fun b!1725028 () Bool)

(declare-fun e!1103455 () Bool)

(assert (=> b!1725028 (= e!1103455 e!1103454)))

(declare-fun res!774255 () Bool)

(assert (=> b!1725028 (=> res!774255 e!1103454)))

(assert (=> b!1725028 (= res!774255 call!109813)))

(declare-fun b!1725029 () Bool)

(assert (=> b!1725029 (= e!1103458 e!1103455)))

(declare-fun res!774253 () Bool)

(assert (=> b!1725029 (=> (not res!774253) (not e!1103455))))

(assert (=> b!1725029 (= res!774253 (not lt!660519))))

(declare-fun b!1725030 () Bool)

(assert (=> b!1725030 (= e!1103454 (not (= (head!3908 lt!660396) (c!282042 lt!660395))))))

(declare-fun b!1725031 () Bool)

(assert (=> b!1725031 (= e!1103459 e!1103460)))

(declare-fun c!282083 () Bool)

(assert (=> b!1725031 (= c!282083 ((_ is EmptyLang!4677) lt!660395))))

(declare-fun b!1725032 () Bool)

(assert (=> b!1725032 (= e!1103459 (= lt!660519 call!109813))))

(declare-fun b!1725033 () Bool)

(declare-fun res!774249 () Bool)

(assert (=> b!1725033 (=> (not res!774249) (not e!1103456))))

(assert (=> b!1725033 (= res!774249 (isEmpty!11881 (tail!2577 lt!660396)))))

(declare-fun b!1725034 () Bool)

(declare-fun res!774256 () Bool)

(assert (=> b!1725034 (=> res!774256 e!1103458)))

(assert (=> b!1725034 (= res!774256 (not ((_ is ElementMatch!4677) lt!660395)))))

(assert (=> b!1725034 (= e!1103460 e!1103458)))

(assert (= (and d!528485 c!282084) b!1725026))

(assert (= (and d!528485 (not c!282084)) b!1725025))

(assert (= (and d!528485 c!282085) b!1725032))

(assert (= (and d!528485 (not c!282085)) b!1725031))

(assert (= (and b!1725031 c!282083) b!1725021))

(assert (= (and b!1725031 (not c!282083)) b!1725034))

(assert (= (and b!1725034 (not res!774256)) b!1725023))

(assert (= (and b!1725023 res!774252) b!1725022))

(assert (= (and b!1725022 res!774251) b!1725033))

(assert (= (and b!1725033 res!774249) b!1725027))

(assert (= (and b!1725023 (not res!774254)) b!1725029))

(assert (= (and b!1725029 res!774253) b!1725028))

(assert (= (and b!1725028 (not res!774255)) b!1725024))

(assert (= (and b!1725024 (not res!774250)) b!1725030))

(assert (= (or b!1725032 b!1725022 b!1725028) bm!109808))

(declare-fun m!2131647 () Bool)

(assert (=> b!1725026 m!2131647))

(assert (=> d!528485 m!2131479))

(assert (=> d!528485 m!2131367))

(assert (=> b!1725033 m!2131483))

(assert (=> b!1725033 m!2131483))

(assert (=> b!1725033 m!2131485))

(assert (=> bm!109808 m!2131479))

(assert (=> b!1725025 m!2131487))

(assert (=> b!1725025 m!2131487))

(declare-fun m!2131649 () Bool)

(assert (=> b!1725025 m!2131649))

(assert (=> b!1725025 m!2131483))

(assert (=> b!1725025 m!2131649))

(assert (=> b!1725025 m!2131483))

(declare-fun m!2131651 () Bool)

(assert (=> b!1725025 m!2131651))

(assert (=> b!1725030 m!2131487))

(assert (=> b!1725027 m!2131487))

(assert (=> b!1725024 m!2131483))

(assert (=> b!1725024 m!2131483))

(assert (=> b!1725024 m!2131485))

(assert (=> b!1724768 d!528485))

(declare-fun d!528487 () Bool)

(assert (=> d!528487 (matchR!2151 (rulesRegex!707 thiss!24550 rules!3447) (list!7634 (charsOf!1998 (_1!10691 lt!660389))))))

(declare-fun lt!660524 () Unit!32737)

(declare-fun choose!10510 (LexerInterface!2978 List!18962 List!18961 Token!6264 Rule!6498 List!18961) Unit!32737)

(assert (=> d!528487 (= lt!660524 (choose!10510 thiss!24550 rules!3447 lt!660385 (_1!10691 lt!660389) (rule!5307 (_1!10691 lt!660389)) (_2!10691 lt!660389)))))

(assert (=> d!528487 (not (isEmpty!11882 rules!3447))))

(assert (=> d!528487 (= (lemmaMaxPrefixThenMatchesRulesRegex!98 thiss!24550 rules!3447 lt!660385 (_1!10691 lt!660389) (rule!5307 (_1!10691 lt!660389)) (_2!10691 lt!660389)) lt!660524)))

(declare-fun bs!402365 () Bool)

(assert (= bs!402365 d!528487))

(assert (=> bs!402365 m!2131309))

(assert (=> bs!402365 m!2131353))

(assert (=> bs!402365 m!2131267))

(assert (=> bs!402365 m!2131267))

(assert (=> bs!402365 m!2131353))

(declare-fun m!2131653 () Bool)

(assert (=> bs!402365 m!2131653))

(declare-fun m!2131655 () Bool)

(assert (=> bs!402365 m!2131655))

(assert (=> bs!402365 m!2131271))

(assert (=> bs!402365 m!2131309))

(assert (=> b!1724768 d!528487))

(declare-fun b!1725043 () Bool)

(declare-fun e!1103471 () Bool)

(declare-fun lt!660529 () Bool)

(assert (=> b!1725043 (= e!1103471 (not lt!660529))))

(declare-fun b!1725044 () Bool)

(declare-fun res!774259 () Bool)

(declare-fun e!1103467 () Bool)

(assert (=> b!1725044 (=> (not res!774259) (not e!1103467))))

(declare-fun call!109814 () Bool)

(assert (=> b!1725044 (= res!774259 (not call!109814))))

(declare-fun bm!109809 () Bool)

(assert (=> bm!109809 (= call!109814 (isEmpty!11881 (list!7634 (charsOf!1998 (_1!10691 lt!660389)))))))

(declare-fun b!1725045 () Bool)

(declare-fun res!774262 () Bool)

(declare-fun e!1103469 () Bool)

(assert (=> b!1725045 (=> res!774262 e!1103469)))

(assert (=> b!1725045 (= res!774262 e!1103467)))

(declare-fun res!774260 () Bool)

(assert (=> b!1725045 (=> (not res!774260) (not e!1103467))))

(assert (=> b!1725045 (= res!774260 lt!660529)))

(declare-fun b!1725046 () Bool)

(declare-fun res!774258 () Bool)

(declare-fun e!1103465 () Bool)

(assert (=> b!1725046 (=> res!774258 e!1103465)))

(assert (=> b!1725046 (= res!774258 (not (isEmpty!11881 (tail!2577 (list!7634 (charsOf!1998 (_1!10691 lt!660389)))))))))

(declare-fun b!1725047 () Bool)

(declare-fun e!1103468 () Bool)

(assert (=> b!1725047 (= e!1103468 (matchR!2151 (derivativeStep!1179 (regex!3349 lt!660397) (head!3908 (list!7634 (charsOf!1998 (_1!10691 lt!660389))))) (tail!2577 (list!7634 (charsOf!1998 (_1!10691 lt!660389))))))))

(declare-fun d!528489 () Bool)

(declare-fun e!1103470 () Bool)

(assert (=> d!528489 e!1103470))

(declare-fun c!282092 () Bool)

(assert (=> d!528489 (= c!282092 ((_ is EmptyExpr!4677) (regex!3349 lt!660397)))))

(assert (=> d!528489 (= lt!660529 e!1103468)))

(declare-fun c!282091 () Bool)

(assert (=> d!528489 (= c!282091 (isEmpty!11881 (list!7634 (charsOf!1998 (_1!10691 lt!660389)))))))

(assert (=> d!528489 (validRegex!1886 (regex!3349 lt!660397))))

(assert (=> d!528489 (= (matchR!2151 (regex!3349 lt!660397) (list!7634 (charsOf!1998 (_1!10691 lt!660389)))) lt!660529)))

(declare-fun b!1725048 () Bool)

(assert (=> b!1725048 (= e!1103468 (nullable!1411 (regex!3349 lt!660397)))))

(declare-fun b!1725049 () Bool)

(assert (=> b!1725049 (= e!1103467 (= (head!3908 (list!7634 (charsOf!1998 (_1!10691 lt!660389)))) (c!282042 (regex!3349 lt!660397))))))

(declare-fun b!1725050 () Bool)

(declare-fun e!1103466 () Bool)

(assert (=> b!1725050 (= e!1103466 e!1103465)))

(declare-fun res!774263 () Bool)

(assert (=> b!1725050 (=> res!774263 e!1103465)))

(assert (=> b!1725050 (= res!774263 call!109814)))

(declare-fun b!1725051 () Bool)

(assert (=> b!1725051 (= e!1103469 e!1103466)))

(declare-fun res!774261 () Bool)

(assert (=> b!1725051 (=> (not res!774261) (not e!1103466))))

(assert (=> b!1725051 (= res!774261 (not lt!660529))))

(declare-fun b!1725052 () Bool)

(assert (=> b!1725052 (= e!1103465 (not (= (head!3908 (list!7634 (charsOf!1998 (_1!10691 lt!660389)))) (c!282042 (regex!3349 lt!660397)))))))

(declare-fun b!1725053 () Bool)

(assert (=> b!1725053 (= e!1103470 e!1103471)))

(declare-fun c!282090 () Bool)

(assert (=> b!1725053 (= c!282090 ((_ is EmptyLang!4677) (regex!3349 lt!660397)))))

(declare-fun b!1725054 () Bool)

(assert (=> b!1725054 (= e!1103470 (= lt!660529 call!109814))))

(declare-fun b!1725055 () Bool)

(declare-fun res!774257 () Bool)

(assert (=> b!1725055 (=> (not res!774257) (not e!1103467))))

(assert (=> b!1725055 (= res!774257 (isEmpty!11881 (tail!2577 (list!7634 (charsOf!1998 (_1!10691 lt!660389))))))))

(declare-fun b!1725056 () Bool)

(declare-fun res!774264 () Bool)

(assert (=> b!1725056 (=> res!774264 e!1103469)))

(assert (=> b!1725056 (= res!774264 (not ((_ is ElementMatch!4677) (regex!3349 lt!660397))))))

(assert (=> b!1725056 (= e!1103471 e!1103469)))

(assert (= (and d!528489 c!282091) b!1725048))

(assert (= (and d!528489 (not c!282091)) b!1725047))

(assert (= (and d!528489 c!282092) b!1725054))

(assert (= (and d!528489 (not c!282092)) b!1725053))

(assert (= (and b!1725053 c!282090) b!1725043))

(assert (= (and b!1725053 (not c!282090)) b!1725056))

(assert (= (and b!1725056 (not res!774264)) b!1725045))

(assert (= (and b!1725045 res!774260) b!1725044))

(assert (= (and b!1725044 res!774259) b!1725055))

(assert (= (and b!1725055 res!774257) b!1725049))

(assert (= (and b!1725045 (not res!774262)) b!1725051))

(assert (= (and b!1725051 res!774261) b!1725050))

(assert (= (and b!1725050 (not res!774263)) b!1725046))

(assert (= (and b!1725046 (not res!774258)) b!1725052))

(assert (= (or b!1725054 b!1725044 b!1725050) bm!109809))

(declare-fun m!2131657 () Bool)

(assert (=> b!1725048 m!2131657))

(assert (=> d!528489 m!2131353))

(declare-fun m!2131659 () Bool)

(assert (=> d!528489 m!2131659))

(declare-fun m!2131661 () Bool)

(assert (=> d!528489 m!2131661))

(assert (=> b!1725055 m!2131353))

(declare-fun m!2131663 () Bool)

(assert (=> b!1725055 m!2131663))

(assert (=> b!1725055 m!2131663))

(declare-fun m!2131665 () Bool)

(assert (=> b!1725055 m!2131665))

(assert (=> bm!109809 m!2131353))

(assert (=> bm!109809 m!2131659))

(assert (=> b!1725047 m!2131353))

(declare-fun m!2131667 () Bool)

(assert (=> b!1725047 m!2131667))

(assert (=> b!1725047 m!2131667))

(declare-fun m!2131669 () Bool)

(assert (=> b!1725047 m!2131669))

(assert (=> b!1725047 m!2131353))

(assert (=> b!1725047 m!2131663))

(assert (=> b!1725047 m!2131669))

(assert (=> b!1725047 m!2131663))

(declare-fun m!2131671 () Bool)

(assert (=> b!1725047 m!2131671))

(assert (=> b!1725052 m!2131353))

(assert (=> b!1725052 m!2131667))

(assert (=> b!1725049 m!2131353))

(assert (=> b!1725049 m!2131667))

(assert (=> b!1725046 m!2131353))

(assert (=> b!1725046 m!2131663))

(assert (=> b!1725046 m!2131663))

(assert (=> b!1725046 m!2131665))

(assert (=> b!1724766 d!528489))

(declare-fun d!528491 () Bool)

(assert (=> d!528491 (= (list!7634 (charsOf!1998 (_1!10691 lt!660389))) (list!7637 (c!282043 (charsOf!1998 (_1!10691 lt!660389)))))))

(declare-fun bs!402366 () Bool)

(assert (= bs!402366 d!528491))

(declare-fun m!2131673 () Bool)

(assert (=> bs!402366 m!2131673))

(assert (=> b!1724766 d!528491))

(declare-fun d!528493 () Bool)

(declare-fun lt!660530 () BalanceConc!12510)

(assert (=> d!528493 (= (list!7634 lt!660530) (originalCharacters!4163 (_1!10691 lt!660389)))))

(assert (=> d!528493 (= lt!660530 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389))))))

(assert (=> d!528493 (= (charsOf!1998 (_1!10691 lt!660389)) lt!660530)))

(declare-fun b_lambda!54835 () Bool)

(assert (=> (not b_lambda!54835) (not d!528493)))

(assert (=> d!528493 t!159954))

(declare-fun b_and!126467 () Bool)

(assert (= b_and!126461 (and (=> t!159954 result!123132) b_and!126467)))

(assert (=> d!528493 t!159956))

(declare-fun b_and!126469 () Bool)

(assert (= b_and!126463 (and (=> t!159956 result!123134) b_and!126469)))

(assert (=> d!528493 t!159958))

(declare-fun b_and!126471 () Bool)

(assert (= b_and!126465 (and (=> t!159958 result!123136) b_and!126471)))

(declare-fun m!2131675 () Bool)

(assert (=> d!528493 m!2131675))

(assert (=> d!528493 m!2131379))

(assert (=> b!1724766 d!528493))

(declare-fun d!528495 () Bool)

(assert (=> d!528495 (= (get!5614 lt!660384) (v!25130 lt!660384))))

(assert (=> b!1724766 d!528495))

(declare-fun b!1725067 () Bool)

(declare-fun e!1103486 () Bool)

(declare-fun lt!660534 () Bool)

(assert (=> b!1725067 (= e!1103486 (not lt!660534))))

(declare-fun b!1725068 () Bool)

(declare-fun res!774273 () Bool)

(declare-fun e!1103482 () Bool)

(assert (=> b!1725068 (=> (not res!774273) (not e!1103482))))

(declare-fun call!109815 () Bool)

(assert (=> b!1725068 (= res!774273 (not call!109815))))

(declare-fun bm!109810 () Bool)

(assert (=> bm!109810 (= call!109815 (isEmpty!11881 lt!660390))))

(declare-fun b!1725069 () Bool)

(declare-fun res!774276 () Bool)

(declare-fun e!1103484 () Bool)

(assert (=> b!1725069 (=> res!774276 e!1103484)))

(assert (=> b!1725069 (= res!774276 e!1103482)))

(declare-fun res!774274 () Bool)

(assert (=> b!1725069 (=> (not res!774274) (not e!1103482))))

(assert (=> b!1725069 (= res!774274 lt!660534)))

(declare-fun b!1725070 () Bool)

(declare-fun res!774272 () Bool)

(declare-fun e!1103480 () Bool)

(assert (=> b!1725070 (=> res!774272 e!1103480)))

(assert (=> b!1725070 (= res!774272 (not (isEmpty!11881 (tail!2577 lt!660390))))))

(declare-fun b!1725071 () Bool)

(declare-fun e!1103483 () Bool)

(assert (=> b!1725071 (= e!1103483 (matchR!2151 (derivativeStep!1179 (regex!3349 rule!422) (head!3908 lt!660390)) (tail!2577 lt!660390)))))

(declare-fun d!528497 () Bool)

(declare-fun e!1103485 () Bool)

(assert (=> d!528497 e!1103485))

(declare-fun c!282097 () Bool)

(assert (=> d!528497 (= c!282097 ((_ is EmptyExpr!4677) (regex!3349 rule!422)))))

(assert (=> d!528497 (= lt!660534 e!1103483)))

(declare-fun c!282096 () Bool)

(assert (=> d!528497 (= c!282096 (isEmpty!11881 lt!660390))))

(assert (=> d!528497 (validRegex!1886 (regex!3349 rule!422))))

(assert (=> d!528497 (= (matchR!2151 (regex!3349 rule!422) lt!660390) lt!660534)))

(declare-fun b!1725072 () Bool)

(assert (=> b!1725072 (= e!1103483 (nullable!1411 (regex!3349 rule!422)))))

(declare-fun b!1725073 () Bool)

(assert (=> b!1725073 (= e!1103482 (= (head!3908 lt!660390) (c!282042 (regex!3349 rule!422))))))

(declare-fun b!1725074 () Bool)

(declare-fun e!1103481 () Bool)

(assert (=> b!1725074 (= e!1103481 e!1103480)))

(declare-fun res!774277 () Bool)

(assert (=> b!1725074 (=> res!774277 e!1103480)))

(assert (=> b!1725074 (= res!774277 call!109815)))

(declare-fun b!1725075 () Bool)

(assert (=> b!1725075 (= e!1103484 e!1103481)))

(declare-fun res!774275 () Bool)

(assert (=> b!1725075 (=> (not res!774275) (not e!1103481))))

(assert (=> b!1725075 (= res!774275 (not lt!660534))))

(declare-fun b!1725076 () Bool)

(assert (=> b!1725076 (= e!1103480 (not (= (head!3908 lt!660390) (c!282042 (regex!3349 rule!422)))))))

(declare-fun b!1725077 () Bool)

(assert (=> b!1725077 (= e!1103485 e!1103486)))

(declare-fun c!282095 () Bool)

(assert (=> b!1725077 (= c!282095 ((_ is EmptyLang!4677) (regex!3349 rule!422)))))

(declare-fun b!1725078 () Bool)

(assert (=> b!1725078 (= e!1103485 (= lt!660534 call!109815))))

(declare-fun b!1725079 () Bool)

(declare-fun res!774271 () Bool)

(assert (=> b!1725079 (=> (not res!774271) (not e!1103482))))

(assert (=> b!1725079 (= res!774271 (isEmpty!11881 (tail!2577 lt!660390)))))

(declare-fun b!1725080 () Bool)

(declare-fun res!774278 () Bool)

(assert (=> b!1725080 (=> res!774278 e!1103484)))

(assert (=> b!1725080 (= res!774278 (not ((_ is ElementMatch!4677) (regex!3349 rule!422))))))

(assert (=> b!1725080 (= e!1103486 e!1103484)))

(assert (= (and d!528497 c!282096) b!1725072))

(assert (= (and d!528497 (not c!282096)) b!1725071))

(assert (= (and d!528497 c!282097) b!1725078))

(assert (= (and d!528497 (not c!282097)) b!1725077))

(assert (= (and b!1725077 c!282095) b!1725067))

(assert (= (and b!1725077 (not c!282095)) b!1725080))

(assert (= (and b!1725080 (not res!774278)) b!1725069))

(assert (= (and b!1725069 res!774274) b!1725068))

(assert (= (and b!1725068 res!774273) b!1725079))

(assert (= (and b!1725079 res!774271) b!1725073))

(assert (= (and b!1725069 (not res!774276)) b!1725075))

(assert (= (and b!1725075 res!774275) b!1725074))

(assert (= (and b!1725074 (not res!774277)) b!1725070))

(assert (= (and b!1725070 (not res!774272)) b!1725076))

(assert (= (or b!1725078 b!1725068 b!1725074) bm!109810))

(declare-fun m!2131689 () Bool)

(assert (=> b!1725072 m!2131689))

(declare-fun m!2131691 () Bool)

(assert (=> d!528497 m!2131691))

(declare-fun m!2131693 () Bool)

(assert (=> d!528497 m!2131693))

(declare-fun m!2131695 () Bool)

(assert (=> b!1725079 m!2131695))

(assert (=> b!1725079 m!2131695))

(declare-fun m!2131697 () Bool)

(assert (=> b!1725079 m!2131697))

(assert (=> bm!109810 m!2131691))

(declare-fun m!2131699 () Bool)

(assert (=> b!1725071 m!2131699))

(assert (=> b!1725071 m!2131699))

(declare-fun m!2131701 () Bool)

(assert (=> b!1725071 m!2131701))

(assert (=> b!1725071 m!2131695))

(assert (=> b!1725071 m!2131701))

(assert (=> b!1725071 m!2131695))

(declare-fun m!2131703 () Bool)

(assert (=> b!1725071 m!2131703))

(assert (=> b!1725076 m!2131699))

(assert (=> b!1725073 m!2131699))

(assert (=> b!1725070 m!2131695))

(assert (=> b!1725070 m!2131695))

(assert (=> b!1725070 m!2131697))

(assert (=> b!1724769 d!528497))

(declare-fun d!528501 () Bool)

(declare-fun res!774283 () Bool)

(declare-fun e!1103489 () Bool)

(assert (=> d!528501 (=> (not res!774283) (not e!1103489))))

(assert (=> d!528501 (= res!774283 (validRegex!1886 (regex!3349 rule!422)))))

(assert (=> d!528501 (= (ruleValid!848 thiss!24550 rule!422) e!1103489)))

(declare-fun b!1725085 () Bool)

(declare-fun res!774284 () Bool)

(assert (=> b!1725085 (=> (not res!774284) (not e!1103489))))

(assert (=> b!1725085 (= res!774284 (not (nullable!1411 (regex!3349 rule!422))))))

(declare-fun b!1725086 () Bool)

(assert (=> b!1725086 (= e!1103489 (not (= (tag!3665 rule!422) (String!21528 ""))))))

(assert (= (and d!528501 res!774283) b!1725085))

(assert (= (and b!1725085 res!774284) b!1725086))

(assert (=> d!528501 m!2131693))

(assert (=> b!1725085 m!2131689))

(assert (=> b!1724769 d!528501))

(declare-fun d!528505 () Bool)

(assert (=> d!528505 (ruleValid!848 thiss!24550 rule!422)))

(declare-fun lt!660537 () Unit!32737)

(declare-fun choose!10511 (LexerInterface!2978 Rule!6498 List!18962) Unit!32737)

(assert (=> d!528505 (= lt!660537 (choose!10511 thiss!24550 rule!422 rules!3447))))

(assert (=> d!528505 (contains!3371 rules!3447 rule!422)))

(assert (=> d!528505 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!372 thiss!24550 rule!422 rules!3447) lt!660537)))

(declare-fun bs!402367 () Bool)

(assert (= bs!402367 d!528505))

(assert (=> bs!402367 m!2131305))

(declare-fun m!2131709 () Bool)

(assert (=> bs!402367 m!2131709))

(assert (=> bs!402367 m!2131299))

(assert (=> b!1724769 d!528505))

(declare-fun d!528509 () Bool)

(declare-fun res!774295 () Bool)

(declare-fun e!1103501 () Bool)

(assert (=> d!528509 (=> (not res!774295) (not e!1103501))))

(assert (=> d!528509 (= res!774295 (not (isEmpty!11881 (originalCharacters!4163 token!523))))))

(assert (=> d!528509 (= (inv!24413 token!523) e!1103501)))

(declare-fun b!1725103 () Bool)

(declare-fun res!774296 () Bool)

(assert (=> b!1725103 (=> (not res!774296) (not e!1103501))))

(assert (=> b!1725103 (= res!774296 (= (originalCharacters!4163 token!523) (list!7634 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 token!523))) (value!105119 token!523)))))))

(declare-fun b!1725104 () Bool)

(assert (=> b!1725104 (= e!1103501 (= (size!15010 token!523) (size!15012 (originalCharacters!4163 token!523))))))

(assert (= (and d!528509 res!774295) b!1725103))

(assert (= (and b!1725103 res!774296) b!1725104))

(declare-fun b_lambda!54837 () Bool)

(assert (=> (not b_lambda!54837) (not b!1725103)))

(assert (=> b!1725103 t!159969))

(declare-fun b_and!126473 () Bool)

(assert (= b_and!126467 (and (=> t!159969 result!123144) b_and!126473)))

(assert (=> b!1725103 t!159971))

(declare-fun b_and!126475 () Bool)

(assert (= b_and!126469 (and (=> t!159971 result!123146) b_and!126475)))

(assert (=> b!1725103 t!159973))

(declare-fun b_and!126477 () Bool)

(assert (= b_and!126471 (and (=> t!159973 result!123148) b_and!126477)))

(declare-fun m!2131715 () Bool)

(assert (=> d!528509 m!2131715))

(assert (=> b!1725103 m!2131571))

(assert (=> b!1725103 m!2131571))

(declare-fun m!2131717 () Bool)

(assert (=> b!1725103 m!2131717))

(declare-fun m!2131719 () Bool)

(assert (=> b!1725104 m!2131719))

(assert (=> start!169218 d!528509))

(declare-fun d!528513 () Bool)

(assert (=> d!528513 (= (list!7634 lt!660394) (list!7637 (c!282043 lt!660394)))))

(declare-fun bs!402368 () Bool)

(assert (= bs!402368 d!528513))

(declare-fun m!2131721 () Bool)

(assert (=> bs!402368 m!2131721))

(assert (=> b!1724773 d!528513))

(declare-fun d!528515 () Bool)

(assert (=> d!528515 (= (get!5615 lt!660382) (v!25131 lt!660382))))

(assert (=> b!1724773 d!528515))

(assert (=> b!1724773 d!528493))

(declare-fun b!1725291 () Bool)

(declare-fun e!1103613 () Unit!32737)

(declare-fun Unit!32742 () Unit!32737)

(assert (=> b!1725291 (= e!1103613 Unit!32742)))

(declare-fun d!528517 () Bool)

(assert (=> d!528517 (isDefined!3065 (maxPrefix!1532 thiss!24550 rules!3447 (++!5174 lt!660390 suffix!1421)))))

(declare-fun lt!660614 () Unit!32737)

(assert (=> d!528517 (= lt!660614 e!1103613)))

(declare-fun c!282139 () Bool)

(assert (=> d!528517 (= c!282139 (isEmpty!11885 (maxPrefix!1532 thiss!24550 rules!3447 (++!5174 lt!660390 suffix!1421))))))

(declare-fun lt!660610 () Unit!32737)

(declare-fun lt!660611 () Unit!32737)

(assert (=> d!528517 (= lt!660610 lt!660611)))

(declare-fun e!1103612 () Bool)

(assert (=> d!528517 e!1103612))

(declare-fun res!774404 () Bool)

(assert (=> d!528517 (=> (not res!774404) (not e!1103612))))

(declare-fun lt!660609 () Token!6264)

(assert (=> d!528517 (= res!774404 (isDefined!3066 (getRuleFromTag!399 thiss!24550 rules!3447 (tag!3665 (rule!5307 lt!660609)))))))

(assert (=> d!528517 (= lt!660611 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!399 thiss!24550 rules!3447 lt!660390 lt!660609))))

(declare-fun lt!660607 () Unit!32737)

(declare-fun lt!660602 () Unit!32737)

(assert (=> d!528517 (= lt!660607 lt!660602)))

(declare-fun lt!660606 () List!18961)

(assert (=> d!528517 (isPrefix!1590 lt!660606 (++!5174 lt!660390 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!261 (List!18961 List!18961 List!18961) Unit!32737)

(assert (=> d!528517 (= lt!660602 (lemmaPrefixStaysPrefixWhenAddingToSuffix!261 lt!660606 lt!660390 suffix!1421))))

(assert (=> d!528517 (= lt!660606 (list!7634 (charsOf!1998 lt!660609)))))

(declare-fun lt!660598 () Unit!32737)

(declare-fun lt!660603 () Unit!32737)

(assert (=> d!528517 (= lt!660598 lt!660603)))

(declare-fun lt!660613 () List!18961)

(declare-fun lt!660601 () List!18961)

(assert (=> d!528517 (isPrefix!1590 lt!660613 (++!5174 lt!660613 lt!660601))))

(assert (=> d!528517 (= lt!660603 (lemmaConcatTwoListThenFirstIsPrefix!1100 lt!660613 lt!660601))))

(assert (=> d!528517 (= lt!660601 (_2!10691 (get!5615 (maxPrefix!1532 thiss!24550 rules!3447 lt!660390))))))

(assert (=> d!528517 (= lt!660613 (list!7634 (charsOf!1998 lt!660609)))))

(declare-datatypes ((List!18965 0))(
  ( (Nil!18895) (Cons!18895 (h!24296 Token!6264) (t!160024 List!18965)) )
))
(declare-fun head!3910 (List!18965) Token!6264)

(declare-datatypes ((IArray!12575 0))(
  ( (IArray!12576 (innerList!6345 List!18965)) )
))
(declare-datatypes ((Conc!6285 0))(
  ( (Node!6285 (left!15081 Conc!6285) (right!15411 Conc!6285) (csize!12800 Int) (cheight!6496 Int)) (Leaf!9180 (xs!9161 IArray!12575) (csize!12801 Int)) (Empty!6285) )
))
(declare-datatypes ((BalanceConc!12514 0))(
  ( (BalanceConc!12515 (c!282185 Conc!6285)) )
))
(declare-fun list!7638 (BalanceConc!12514) List!18965)

(declare-datatypes ((tuple2!18582 0))(
  ( (tuple2!18583 (_1!10693 BalanceConc!12514) (_2!10693 BalanceConc!12510)) )
))
(declare-fun lex!1400 (LexerInterface!2978 List!18962 BalanceConc!12510) tuple2!18582)

(assert (=> d!528517 (= lt!660609 (head!3910 (list!7638 (_1!10693 (lex!1400 thiss!24550 rules!3447 (seqFromList!2323 lt!660390))))))))

(assert (=> d!528517 (not (isEmpty!11882 rules!3447))))

(assert (=> d!528517 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!502 thiss!24550 rules!3447 lt!660390 suffix!1421) lt!660614)))

(declare-fun b!1725289 () Bool)

(assert (=> b!1725289 (= e!1103612 (= (rule!5307 lt!660609) (get!5614 (getRuleFromTag!399 thiss!24550 rules!3447 (tag!3665 (rule!5307 lt!660609))))))))

(declare-fun b!1725290 () Bool)

(declare-fun Unit!32743 () Unit!32737)

(assert (=> b!1725290 (= e!1103613 Unit!32743)))

(declare-fun lt!660608 () List!18961)

(assert (=> b!1725290 (= lt!660608 (++!5174 lt!660390 suffix!1421))))

(declare-fun lt!660604 () Unit!32737)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!269 (LexerInterface!2978 Rule!6498 List!18962 List!18961) Unit!32737)

(assert (=> b!1725290 (= lt!660604 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!269 thiss!24550 (rule!5307 lt!660609) rules!3447 lt!660608))))

(assert (=> b!1725290 (isEmpty!11885 (maxPrefixOneRule!908 thiss!24550 (rule!5307 lt!660609) lt!660608))))

(declare-fun lt!660600 () Unit!32737)

(assert (=> b!1725290 (= lt!660600 lt!660604)))

(declare-fun lt!660605 () List!18961)

(assert (=> b!1725290 (= lt!660605 (list!7634 (charsOf!1998 lt!660609)))))

(declare-fun lt!660612 () Unit!32737)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!265 (LexerInterface!2978 Rule!6498 List!18961 List!18961) Unit!32737)

(assert (=> b!1725290 (= lt!660612 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!265 thiss!24550 (rule!5307 lt!660609) lt!660605 (++!5174 lt!660390 suffix!1421)))))

(assert (=> b!1725290 (not (matchR!2151 (regex!3349 (rule!5307 lt!660609)) lt!660605))))

(declare-fun lt!660599 () Unit!32737)

(assert (=> b!1725290 (= lt!660599 lt!660612)))

(assert (=> b!1725290 false))

(declare-fun b!1725288 () Bool)

(declare-fun res!774403 () Bool)

(assert (=> b!1725288 (=> (not res!774403) (not e!1103612))))

(assert (=> b!1725288 (= res!774403 (matchR!2151 (regex!3349 (get!5614 (getRuleFromTag!399 thiss!24550 rules!3447 (tag!3665 (rule!5307 lt!660609))))) (list!7634 (charsOf!1998 lt!660609))))))

(assert (= (and d!528517 res!774404) b!1725288))

(assert (= (and b!1725288 res!774403) b!1725289))

(assert (= (and d!528517 c!282139) b!1725290))

(assert (= (and d!528517 (not c!282139)) b!1725291))

(declare-fun m!2131859 () Bool)

(assert (=> d!528517 m!2131859))

(assert (=> d!528517 m!2131313))

(declare-fun m!2131861 () Bool)

(assert (=> d!528517 m!2131861))

(declare-fun m!2131863 () Bool)

(assert (=> d!528517 m!2131863))

(declare-fun m!2131865 () Bool)

(assert (=> d!528517 m!2131865))

(declare-fun m!2131867 () Bool)

(assert (=> d!528517 m!2131867))

(assert (=> d!528517 m!2131863))

(declare-fun m!2131869 () Bool)

(assert (=> d!528517 m!2131869))

(assert (=> d!528517 m!2131271))

(assert (=> d!528517 m!2131255))

(declare-fun m!2131871 () Bool)

(assert (=> d!528517 m!2131871))

(declare-fun m!2131873 () Bool)

(assert (=> d!528517 m!2131873))

(declare-fun m!2131875 () Bool)

(assert (=> d!528517 m!2131875))

(assert (=> d!528517 m!2131861))

(declare-fun m!2131877 () Bool)

(assert (=> d!528517 m!2131877))

(declare-fun m!2131879 () Bool)

(assert (=> d!528517 m!2131879))

(declare-fun m!2131881 () Bool)

(assert (=> d!528517 m!2131881))

(declare-fun m!2131883 () Bool)

(assert (=> d!528517 m!2131883))

(assert (=> d!528517 m!2131861))

(declare-fun m!2131885 () Bool)

(assert (=> d!528517 m!2131885))

(assert (=> d!528517 m!2131313))

(assert (=> d!528517 m!2131871))

(assert (=> d!528517 m!2131879))

(declare-fun m!2131887 () Bool)

(assert (=> d!528517 m!2131887))

(assert (=> d!528517 m!2131255))

(declare-fun m!2131889 () Bool)

(assert (=> d!528517 m!2131889))

(assert (=> d!528517 m!2131313))

(declare-fun m!2131891 () Bool)

(assert (=> d!528517 m!2131891))

(assert (=> d!528517 m!2131881))

(assert (=> d!528517 m!2131875))

(declare-fun m!2131893 () Bool)

(assert (=> d!528517 m!2131893))

(assert (=> b!1725289 m!2131863))

(assert (=> b!1725289 m!2131863))

(declare-fun m!2131895 () Bool)

(assert (=> b!1725289 m!2131895))

(assert (=> b!1725290 m!2131871))

(assert (=> b!1725290 m!2131313))

(declare-fun m!2131897 () Bool)

(assert (=> b!1725290 m!2131897))

(declare-fun m!2131899 () Bool)

(assert (=> b!1725290 m!2131899))

(declare-fun m!2131901 () Bool)

(assert (=> b!1725290 m!2131901))

(assert (=> b!1725290 m!2131871))

(assert (=> b!1725290 m!2131873))

(declare-fun m!2131903 () Bool)

(assert (=> b!1725290 m!2131903))

(declare-fun m!2131905 () Bool)

(assert (=> b!1725290 m!2131905))

(assert (=> b!1725290 m!2131313))

(assert (=> b!1725290 m!2131903))

(assert (=> b!1725288 m!2131871))

(assert (=> b!1725288 m!2131863))

(assert (=> b!1725288 m!2131873))

(declare-fun m!2131907 () Bool)

(assert (=> b!1725288 m!2131907))

(assert (=> b!1725288 m!2131863))

(assert (=> b!1725288 m!2131895))

(assert (=> b!1725288 m!2131871))

(assert (=> b!1725288 m!2131873))

(assert (=> b!1724773 d!528517))

(declare-fun b!1725320 () Bool)

(declare-fun e!1103628 () Bool)

(assert (=> b!1725320 (= e!1103628 (isPrefix!1590 (tail!2577 lt!660396) (tail!2577 lt!660385)))))

(declare-fun b!1725319 () Bool)

(declare-fun res!774429 () Bool)

(assert (=> b!1725319 (=> (not res!774429) (not e!1103628))))

(assert (=> b!1725319 (= res!774429 (= (head!3908 lt!660396) (head!3908 lt!660385)))))

(declare-fun d!528581 () Bool)

(declare-fun e!1103630 () Bool)

(assert (=> d!528581 e!1103630))

(declare-fun res!774430 () Bool)

(assert (=> d!528581 (=> res!774430 e!1103630)))

(declare-fun lt!660627 () Bool)

(assert (=> d!528581 (= res!774430 (not lt!660627))))

(declare-fun e!1103629 () Bool)

(assert (=> d!528581 (= lt!660627 e!1103629)))

(declare-fun res!774428 () Bool)

(assert (=> d!528581 (=> res!774428 e!1103629)))

(assert (=> d!528581 (= res!774428 ((_ is Nil!18891) lt!660396))))

(assert (=> d!528581 (= (isPrefix!1590 lt!660396 lt!660385) lt!660627)))

(declare-fun b!1725321 () Bool)

(assert (=> b!1725321 (= e!1103630 (>= (size!15012 lt!660385) (size!15012 lt!660396)))))

(declare-fun b!1725318 () Bool)

(assert (=> b!1725318 (= e!1103629 e!1103628)))

(declare-fun res!774427 () Bool)

(assert (=> b!1725318 (=> (not res!774427) (not e!1103628))))

(assert (=> b!1725318 (= res!774427 (not ((_ is Nil!18891) lt!660385)))))

(assert (= (and d!528581 (not res!774428)) b!1725318))

(assert (= (and b!1725318 res!774427) b!1725319))

(assert (= (and b!1725319 res!774429) b!1725320))

(assert (= (and d!528581 (not res!774430)) b!1725321))

(assert (=> b!1725320 m!2131483))

(declare-fun m!2131909 () Bool)

(assert (=> b!1725320 m!2131909))

(assert (=> b!1725320 m!2131483))

(assert (=> b!1725320 m!2131909))

(declare-fun m!2131911 () Bool)

(assert (=> b!1725320 m!2131911))

(assert (=> b!1725319 m!2131487))

(declare-fun m!2131913 () Bool)

(assert (=> b!1725319 m!2131913))

(declare-fun m!2131915 () Bool)

(assert (=> b!1725321 m!2131915))

(assert (=> b!1725321 m!2131283))

(assert (=> b!1724773 d!528581))

(declare-fun e!1103636 () Bool)

(declare-fun b!1725333 () Bool)

(declare-fun lt!660630 () List!18961)

(assert (=> b!1725333 (= e!1103636 (or (not (= suffix!1421 Nil!18891)) (= lt!660630 lt!660390)))))

(declare-fun b!1725331 () Bool)

(declare-fun e!1103635 () List!18961)

(assert (=> b!1725331 (= e!1103635 (Cons!18891 (h!24292 lt!660390) (++!5174 (t!159960 lt!660390) suffix!1421)))))

(declare-fun b!1725330 () Bool)

(assert (=> b!1725330 (= e!1103635 suffix!1421)))

(declare-fun d!528583 () Bool)

(assert (=> d!528583 e!1103636))

(declare-fun res!774435 () Bool)

(assert (=> d!528583 (=> (not res!774435) (not e!1103636))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2700 (List!18961) (InoxSet C!9528))

(assert (=> d!528583 (= res!774435 (= (content!2700 lt!660630) ((_ map or) (content!2700 lt!660390) (content!2700 suffix!1421))))))

(assert (=> d!528583 (= lt!660630 e!1103635)))

(declare-fun c!282144 () Bool)

(assert (=> d!528583 (= c!282144 ((_ is Nil!18891) lt!660390))))

(assert (=> d!528583 (= (++!5174 lt!660390 suffix!1421) lt!660630)))

(declare-fun b!1725332 () Bool)

(declare-fun res!774436 () Bool)

(assert (=> b!1725332 (=> (not res!774436) (not e!1103636))))

(assert (=> b!1725332 (= res!774436 (= (size!15012 lt!660630) (+ (size!15012 lt!660390) (size!15012 suffix!1421))))))

(assert (= (and d!528583 c!282144) b!1725330))

(assert (= (and d!528583 (not c!282144)) b!1725331))

(assert (= (and d!528583 res!774435) b!1725332))

(assert (= (and b!1725332 res!774436) b!1725333))

(declare-fun m!2131917 () Bool)

(assert (=> b!1725331 m!2131917))

(declare-fun m!2131919 () Bool)

(assert (=> d!528583 m!2131919))

(declare-fun m!2131921 () Bool)

(assert (=> d!528583 m!2131921))

(declare-fun m!2131923 () Bool)

(assert (=> d!528583 m!2131923))

(declare-fun m!2131925 () Bool)

(assert (=> b!1725332 m!2131925))

(assert (=> b!1725332 m!2131533))

(declare-fun m!2131927 () Bool)

(assert (=> b!1725332 m!2131927))

(assert (=> b!1724773 d!528583))

(declare-fun b!1725346 () Bool)

(declare-fun lt!660636 () List!18961)

(declare-fun e!1103642 () Bool)

(assert (=> b!1725346 (= e!1103642 (or (not (= (_2!10691 lt!660389) Nil!18891)) (= lt!660636 lt!660396)))))

(declare-fun b!1725344 () Bool)

(declare-fun e!1103641 () List!18961)

(assert (=> b!1725344 (= e!1103641 (Cons!18891 (h!24292 lt!660396) (++!5174 (t!159960 lt!660396) (_2!10691 lt!660389))))))

(declare-fun b!1725343 () Bool)

(assert (=> b!1725343 (= e!1103641 (_2!10691 lt!660389))))

(declare-fun d!528585 () Bool)

(assert (=> d!528585 e!1103642))

(declare-fun res!774444 () Bool)

(assert (=> d!528585 (=> (not res!774444) (not e!1103642))))

(assert (=> d!528585 (= res!774444 (= (content!2700 lt!660636) ((_ map or) (content!2700 lt!660396) (content!2700 (_2!10691 lt!660389)))))))

(assert (=> d!528585 (= lt!660636 e!1103641)))

(declare-fun c!282146 () Bool)

(assert (=> d!528585 (= c!282146 ((_ is Nil!18891) lt!660396))))

(assert (=> d!528585 (= (++!5174 lt!660396 (_2!10691 lt!660389)) lt!660636)))

(declare-fun b!1725345 () Bool)

(declare-fun res!774445 () Bool)

(assert (=> b!1725345 (=> (not res!774445) (not e!1103642))))

(assert (=> b!1725345 (= res!774445 (= (size!15012 lt!660636) (+ (size!15012 lt!660396) (size!15012 (_2!10691 lt!660389)))))))

(assert (= (and d!528585 c!282146) b!1725343))

(assert (= (and d!528585 (not c!282146)) b!1725344))

(assert (= (and d!528585 res!774444) b!1725345))

(assert (= (and b!1725345 res!774445) b!1725346))

(declare-fun m!2131929 () Bool)

(assert (=> b!1725344 m!2131929))

(declare-fun m!2131931 () Bool)

(assert (=> d!528585 m!2131931))

(declare-fun m!2131933 () Bool)

(assert (=> d!528585 m!2131933))

(declare-fun m!2131935 () Bool)

(assert (=> d!528585 m!2131935))

(declare-fun m!2131937 () Bool)

(assert (=> b!1725345 m!2131937))

(assert (=> b!1725345 m!2131283))

(declare-fun m!2131939 () Bool)

(assert (=> b!1725345 m!2131939))

(assert (=> b!1724773 d!528585))

(declare-fun d!528587 () Bool)

(assert (=> d!528587 (isPrefix!1590 lt!660390 (++!5174 lt!660390 suffix!1421))))

(declare-fun lt!660639 () Unit!32737)

(declare-fun choose!10515 (List!18961 List!18961) Unit!32737)

(assert (=> d!528587 (= lt!660639 (choose!10515 lt!660390 suffix!1421))))

(assert (=> d!528587 (= (lemmaConcatTwoListThenFirstIsPrefix!1100 lt!660390 suffix!1421) lt!660639)))

(declare-fun bs!402378 () Bool)

(assert (= bs!402378 d!528587))

(assert (=> bs!402378 m!2131313))

(assert (=> bs!402378 m!2131313))

(declare-fun m!2131955 () Bool)

(assert (=> bs!402378 m!2131955))

(declare-fun m!2131957 () Bool)

(assert (=> bs!402378 m!2131957))

(assert (=> b!1724773 d!528587))

(declare-fun b!1725371 () Bool)

(declare-fun e!1103660 () Option!3722)

(declare-fun e!1103658 () Option!3722)

(assert (=> b!1725371 (= e!1103660 e!1103658)))

(declare-fun c!282158 () Bool)

(assert (=> b!1725371 (= c!282158 (and ((_ is Cons!18892) rules!3447) (not (= (tag!3665 (h!24293 rules!3447)) (tag!3665 (rule!5307 (_1!10691 lt!660389)))))))))

(declare-fun b!1725372 () Bool)

(assert (=> b!1725372 (= e!1103660 (Some!3721 (h!24293 rules!3447)))))

(declare-fun b!1725373 () Bool)

(declare-fun e!1103657 () Bool)

(declare-fun e!1103659 () Bool)

(assert (=> b!1725373 (= e!1103657 e!1103659)))

(declare-fun res!774450 () Bool)

(assert (=> b!1725373 (=> (not res!774450) (not e!1103659))))

(declare-fun lt!660656 () Option!3722)

(assert (=> b!1725373 (= res!774450 (contains!3371 rules!3447 (get!5614 lt!660656)))))

(declare-fun b!1725374 () Bool)

(assert (=> b!1725374 (= e!1103658 None!3721)))

(declare-fun b!1725375 () Bool)

(assert (=> b!1725375 (= e!1103659 (= (tag!3665 (get!5614 lt!660656)) (tag!3665 (rule!5307 (_1!10691 lt!660389)))))))

(declare-fun b!1725376 () Bool)

(declare-fun lt!660655 () Unit!32737)

(declare-fun lt!660654 () Unit!32737)

(assert (=> b!1725376 (= lt!660655 lt!660654)))

(assert (=> b!1725376 (rulesInvariant!2647 thiss!24550 (t!159961 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!140 (LexerInterface!2978 Rule!6498 List!18962) Unit!32737)

(assert (=> b!1725376 (= lt!660654 (lemmaInvariantOnRulesThenOnTail!140 thiss!24550 (h!24293 rules!3447) (t!159961 rules!3447)))))

(assert (=> b!1725376 (= e!1103658 (getRuleFromTag!399 thiss!24550 (t!159961 rules!3447) (tag!3665 (rule!5307 (_1!10691 lt!660389)))))))

(declare-fun d!528589 () Bool)

(assert (=> d!528589 e!1103657))

(declare-fun res!774451 () Bool)

(assert (=> d!528589 (=> res!774451 e!1103657)))

(declare-fun isEmpty!11886 (Option!3722) Bool)

(assert (=> d!528589 (= res!774451 (isEmpty!11886 lt!660656))))

(assert (=> d!528589 (= lt!660656 e!1103660)))

(declare-fun c!282157 () Bool)

(assert (=> d!528589 (= c!282157 (and ((_ is Cons!18892) rules!3447) (= (tag!3665 (h!24293 rules!3447)) (tag!3665 (rule!5307 (_1!10691 lt!660389))))))))

(assert (=> d!528589 (rulesInvariant!2647 thiss!24550 rules!3447)))

(assert (=> d!528589 (= (getRuleFromTag!399 thiss!24550 rules!3447 (tag!3665 (rule!5307 (_1!10691 lt!660389)))) lt!660656)))

(assert (= (and d!528589 c!282157) b!1725372))

(assert (= (and d!528589 (not c!282157)) b!1725371))

(assert (= (and b!1725371 c!282158) b!1725376))

(assert (= (and b!1725371 (not c!282158)) b!1725374))

(assert (= (and d!528589 (not res!774451)) b!1725373))

(assert (= (and b!1725373 res!774450) b!1725375))

(declare-fun m!2131995 () Bool)

(assert (=> b!1725373 m!2131995))

(assert (=> b!1725373 m!2131995))

(declare-fun m!2131997 () Bool)

(assert (=> b!1725373 m!2131997))

(assert (=> b!1725375 m!2131995))

(declare-fun m!2131999 () Bool)

(assert (=> b!1725376 m!2131999))

(declare-fun m!2132001 () Bool)

(assert (=> b!1725376 m!2132001))

(declare-fun m!2132003 () Bool)

(assert (=> b!1725376 m!2132003))

(declare-fun m!2132005 () Bool)

(assert (=> d!528589 m!2132005))

(assert (=> d!528589 m!2131297))

(assert (=> b!1724773 d!528589))

(declare-fun d!528599 () Bool)

(assert (=> d!528599 (= (isDefined!3066 lt!660384) (not (isEmpty!11886 lt!660384)))))

(declare-fun bs!402379 () Bool)

(assert (= bs!402379 d!528599))

(declare-fun m!2132007 () Bool)

(assert (=> bs!402379 m!2132007))

(assert (=> b!1724773 d!528599))

(declare-fun d!528601 () Bool)

(declare-fun e!1103669 () Bool)

(assert (=> d!528601 e!1103669))

(declare-fun res!774458 () Bool)

(assert (=> d!528601 (=> (not res!774458) (not e!1103669))))

(assert (=> d!528601 (= res!774458 (isDefined!3066 (getRuleFromTag!399 thiss!24550 rules!3447 (tag!3665 (rule!5307 (_1!10691 lt!660389))))))))

(declare-fun lt!660661 () Unit!32737)

(declare-fun choose!10516 (LexerInterface!2978 List!18962 List!18961 Token!6264) Unit!32737)

(assert (=> d!528601 (= lt!660661 (choose!10516 thiss!24550 rules!3447 lt!660385 (_1!10691 lt!660389)))))

(assert (=> d!528601 (rulesInvariant!2647 thiss!24550 rules!3447)))

(assert (=> d!528601 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!399 thiss!24550 rules!3447 lt!660385 (_1!10691 lt!660389)) lt!660661)))

(declare-fun b!1725388 () Bool)

(declare-fun res!774459 () Bool)

(assert (=> b!1725388 (=> (not res!774459) (not e!1103669))))

(assert (=> b!1725388 (= res!774459 (matchR!2151 (regex!3349 (get!5614 (getRuleFromTag!399 thiss!24550 rules!3447 (tag!3665 (rule!5307 (_1!10691 lt!660389)))))) (list!7634 (charsOf!1998 (_1!10691 lt!660389)))))))

(declare-fun b!1725389 () Bool)

(assert (=> b!1725389 (= e!1103669 (= (rule!5307 (_1!10691 lt!660389)) (get!5614 (getRuleFromTag!399 thiss!24550 rules!3447 (tag!3665 (rule!5307 (_1!10691 lt!660389)))))))))

(assert (= (and d!528601 res!774458) b!1725388))

(assert (= (and b!1725388 res!774459) b!1725389))

(assert (=> d!528601 m!2131311))

(assert (=> d!528601 m!2131311))

(declare-fun m!2132027 () Bool)

(assert (=> d!528601 m!2132027))

(declare-fun m!2132029 () Bool)

(assert (=> d!528601 m!2132029))

(assert (=> d!528601 m!2131297))

(assert (=> b!1725388 m!2131309))

(assert (=> b!1725388 m!2131353))

(assert (=> b!1725388 m!2131353))

(declare-fun m!2132031 () Bool)

(assert (=> b!1725388 m!2132031))

(assert (=> b!1725388 m!2131311))

(declare-fun m!2132033 () Bool)

(assert (=> b!1725388 m!2132033))

(assert (=> b!1725388 m!2131309))

(assert (=> b!1725388 m!2131311))

(assert (=> b!1725389 m!2131311))

(assert (=> b!1725389 m!2131311))

(assert (=> b!1725389 m!2132033))

(assert (=> b!1724773 d!528601))

(declare-fun b!1725392 () Bool)

(declare-fun e!1103670 () Bool)

(assert (=> b!1725392 (= e!1103670 (isPrefix!1590 (tail!2577 lt!660390) (tail!2577 lt!660385)))))

(declare-fun b!1725391 () Bool)

(declare-fun res!774462 () Bool)

(assert (=> b!1725391 (=> (not res!774462) (not e!1103670))))

(assert (=> b!1725391 (= res!774462 (= (head!3908 lt!660390) (head!3908 lt!660385)))))

(declare-fun d!528613 () Bool)

(declare-fun e!1103672 () Bool)

(assert (=> d!528613 e!1103672))

(declare-fun res!774463 () Bool)

(assert (=> d!528613 (=> res!774463 e!1103672)))

(declare-fun lt!660664 () Bool)

(assert (=> d!528613 (= res!774463 (not lt!660664))))

(declare-fun e!1103671 () Bool)

(assert (=> d!528613 (= lt!660664 e!1103671)))

(declare-fun res!774461 () Bool)

(assert (=> d!528613 (=> res!774461 e!1103671)))

(assert (=> d!528613 (= res!774461 ((_ is Nil!18891) lt!660390))))

(assert (=> d!528613 (= (isPrefix!1590 lt!660390 lt!660385) lt!660664)))

(declare-fun b!1725393 () Bool)

(assert (=> b!1725393 (= e!1103672 (>= (size!15012 lt!660385) (size!15012 lt!660390)))))

(declare-fun b!1725390 () Bool)

(assert (=> b!1725390 (= e!1103671 e!1103670)))

(declare-fun res!774460 () Bool)

(assert (=> b!1725390 (=> (not res!774460) (not e!1103670))))

(assert (=> b!1725390 (= res!774460 (not ((_ is Nil!18891) lt!660385)))))

(assert (= (and d!528613 (not res!774461)) b!1725390))

(assert (= (and b!1725390 res!774460) b!1725391))

(assert (= (and b!1725391 res!774462) b!1725392))

(assert (= (and d!528613 (not res!774463)) b!1725393))

(assert (=> b!1725392 m!2131695))

(assert (=> b!1725392 m!2131909))

(assert (=> b!1725392 m!2131695))

(assert (=> b!1725392 m!2131909))

(declare-fun m!2132035 () Bool)

(assert (=> b!1725392 m!2132035))

(assert (=> b!1725391 m!2131699))

(assert (=> b!1725391 m!2131913))

(assert (=> b!1725393 m!2131915))

(assert (=> b!1725393 m!2131533))

(assert (=> b!1724773 d!528613))

(declare-fun b!1725396 () Bool)

(declare-fun e!1103673 () Bool)

(assert (=> b!1725396 (= e!1103673 (isPrefix!1590 (tail!2577 lt!660396) (tail!2577 (++!5174 lt!660396 (_2!10691 lt!660389)))))))

(declare-fun b!1725395 () Bool)

(declare-fun res!774466 () Bool)

(assert (=> b!1725395 (=> (not res!774466) (not e!1103673))))

(assert (=> b!1725395 (= res!774466 (= (head!3908 lt!660396) (head!3908 (++!5174 lt!660396 (_2!10691 lt!660389)))))))

(declare-fun d!528615 () Bool)

(declare-fun e!1103675 () Bool)

(assert (=> d!528615 e!1103675))

(declare-fun res!774467 () Bool)

(assert (=> d!528615 (=> res!774467 e!1103675)))

(declare-fun lt!660665 () Bool)

(assert (=> d!528615 (= res!774467 (not lt!660665))))

(declare-fun e!1103674 () Bool)

(assert (=> d!528615 (= lt!660665 e!1103674)))

(declare-fun res!774465 () Bool)

(assert (=> d!528615 (=> res!774465 e!1103674)))

(assert (=> d!528615 (= res!774465 ((_ is Nil!18891) lt!660396))))

(assert (=> d!528615 (= (isPrefix!1590 lt!660396 (++!5174 lt!660396 (_2!10691 lt!660389))) lt!660665)))

(declare-fun b!1725397 () Bool)

(assert (=> b!1725397 (= e!1103675 (>= (size!15012 (++!5174 lt!660396 (_2!10691 lt!660389))) (size!15012 lt!660396)))))

(declare-fun b!1725394 () Bool)

(assert (=> b!1725394 (= e!1103674 e!1103673)))

(declare-fun res!774464 () Bool)

(assert (=> b!1725394 (=> (not res!774464) (not e!1103673))))

(assert (=> b!1725394 (= res!774464 (not ((_ is Nil!18891) (++!5174 lt!660396 (_2!10691 lt!660389)))))))

(assert (= (and d!528615 (not res!774465)) b!1725394))

(assert (= (and b!1725394 res!774464) b!1725395))

(assert (= (and b!1725395 res!774466) b!1725396))

(assert (= (and d!528615 (not res!774467)) b!1725397))

(assert (=> b!1725396 m!2131483))

(assert (=> b!1725396 m!2131315))

(declare-fun m!2132037 () Bool)

(assert (=> b!1725396 m!2132037))

(assert (=> b!1725396 m!2131483))

(assert (=> b!1725396 m!2132037))

(declare-fun m!2132039 () Bool)

(assert (=> b!1725396 m!2132039))

(assert (=> b!1725395 m!2131487))

(assert (=> b!1725395 m!2131315))

(declare-fun m!2132041 () Bool)

(assert (=> b!1725395 m!2132041))

(assert (=> b!1725397 m!2131315))

(declare-fun m!2132043 () Bool)

(assert (=> b!1725397 m!2132043))

(assert (=> b!1725397 m!2131283))

(assert (=> b!1724773 d!528615))

(declare-fun d!528617 () Bool)

(assert (=> d!528617 (isPrefix!1590 lt!660396 (++!5174 lt!660396 (_2!10691 lt!660389)))))

(declare-fun lt!660666 () Unit!32737)

(assert (=> d!528617 (= lt!660666 (choose!10515 lt!660396 (_2!10691 lt!660389)))))

(assert (=> d!528617 (= (lemmaConcatTwoListThenFirstIsPrefix!1100 lt!660396 (_2!10691 lt!660389)) lt!660666)))

(declare-fun bs!402384 () Bool)

(assert (= bs!402384 d!528617))

(assert (=> bs!402384 m!2131315))

(assert (=> bs!402384 m!2131315))

(assert (=> bs!402384 m!2131317))

(declare-fun m!2132045 () Bool)

(assert (=> bs!402384 m!2132045))

(assert (=> b!1724773 d!528617))

(declare-fun b!1725398 () Bool)

(declare-fun res!774472 () Bool)

(declare-fun e!1103676 () Bool)

(assert (=> b!1725398 (=> (not res!774472) (not e!1103676))))

(declare-fun lt!660671 () Option!3723)

(assert (=> b!1725398 (= res!774472 (= (value!105119 (_1!10691 (get!5615 lt!660671))) (apply!5154 (transformation!3349 (rule!5307 (_1!10691 (get!5615 lt!660671)))) (seqFromList!2323 (originalCharacters!4163 (_1!10691 (get!5615 lt!660671)))))))))

(declare-fun d!528619 () Bool)

(declare-fun e!1103678 () Bool)

(assert (=> d!528619 e!1103678))

(declare-fun res!774470 () Bool)

(assert (=> d!528619 (=> res!774470 e!1103678)))

(assert (=> d!528619 (= res!774470 (isEmpty!11885 lt!660671))))

(declare-fun e!1103677 () Option!3723)

(assert (=> d!528619 (= lt!660671 e!1103677)))

(declare-fun c!282160 () Bool)

(assert (=> d!528619 (= c!282160 (and ((_ is Cons!18892) rules!3447) ((_ is Nil!18892) (t!159961 rules!3447))))))

(declare-fun lt!660669 () Unit!32737)

(declare-fun lt!660670 () Unit!32737)

(assert (=> d!528619 (= lt!660669 lt!660670)))

(assert (=> d!528619 (isPrefix!1590 lt!660385 lt!660385)))

(assert (=> d!528619 (= lt!660670 (lemmaIsPrefixRefl!1075 lt!660385 lt!660385))))

(assert (=> d!528619 (rulesValidInductive!1112 thiss!24550 rules!3447)))

(assert (=> d!528619 (= (maxPrefix!1532 thiss!24550 rules!3447 lt!660385) lt!660671)))

(declare-fun b!1725399 () Bool)

(assert (=> b!1725399 (= e!1103678 e!1103676)))

(declare-fun res!774468 () Bool)

(assert (=> b!1725399 (=> (not res!774468) (not e!1103676))))

(assert (=> b!1725399 (= res!774468 (isDefined!3065 lt!660671))))

(declare-fun b!1725400 () Bool)

(declare-fun res!774469 () Bool)

(assert (=> b!1725400 (=> (not res!774469) (not e!1103676))))

(assert (=> b!1725400 (= res!774469 (= (++!5174 (list!7634 (charsOf!1998 (_1!10691 (get!5615 lt!660671)))) (_2!10691 (get!5615 lt!660671))) lt!660385))))

(declare-fun b!1725401 () Bool)

(declare-fun call!109832 () Option!3723)

(assert (=> b!1725401 (= e!1103677 call!109832)))

(declare-fun b!1725402 () Bool)

(declare-fun res!774471 () Bool)

(assert (=> b!1725402 (=> (not res!774471) (not e!1103676))))

(assert (=> b!1725402 (= res!774471 (matchR!2151 (regex!3349 (rule!5307 (_1!10691 (get!5615 lt!660671)))) (list!7634 (charsOf!1998 (_1!10691 (get!5615 lt!660671))))))))

(declare-fun bm!109827 () Bool)

(assert (=> bm!109827 (= call!109832 (maxPrefixOneRule!908 thiss!24550 (h!24293 rules!3447) lt!660385))))

(declare-fun b!1725403 () Bool)

(declare-fun res!774474 () Bool)

(assert (=> b!1725403 (=> (not res!774474) (not e!1103676))))

(assert (=> b!1725403 (= res!774474 (< (size!15012 (_2!10691 (get!5615 lt!660671))) (size!15012 lt!660385)))))

(declare-fun b!1725404 () Bool)

(declare-fun res!774473 () Bool)

(assert (=> b!1725404 (=> (not res!774473) (not e!1103676))))

(assert (=> b!1725404 (= res!774473 (= (list!7634 (charsOf!1998 (_1!10691 (get!5615 lt!660671)))) (originalCharacters!4163 (_1!10691 (get!5615 lt!660671)))))))

(declare-fun b!1725405 () Bool)

(declare-fun lt!660667 () Option!3723)

(declare-fun lt!660668 () Option!3723)

(assert (=> b!1725405 (= e!1103677 (ite (and ((_ is None!3722) lt!660667) ((_ is None!3722) lt!660668)) None!3722 (ite ((_ is None!3722) lt!660668) lt!660667 (ite ((_ is None!3722) lt!660667) lt!660668 (ite (>= (size!15010 (_1!10691 (v!25131 lt!660667))) (size!15010 (_1!10691 (v!25131 lt!660668)))) lt!660667 lt!660668)))))))

(assert (=> b!1725405 (= lt!660667 call!109832)))

(assert (=> b!1725405 (= lt!660668 (maxPrefix!1532 thiss!24550 (t!159961 rules!3447) lt!660385))))

(declare-fun b!1725406 () Bool)

(assert (=> b!1725406 (= e!1103676 (contains!3371 rules!3447 (rule!5307 (_1!10691 (get!5615 lt!660671)))))))

(assert (= (and d!528619 c!282160) b!1725401))

(assert (= (and d!528619 (not c!282160)) b!1725405))

(assert (= (or b!1725401 b!1725405) bm!109827))

(assert (= (and d!528619 (not res!774470)) b!1725399))

(assert (= (and b!1725399 res!774468) b!1725404))

(assert (= (and b!1725404 res!774473) b!1725403))

(assert (= (and b!1725403 res!774474) b!1725400))

(assert (= (and b!1725400 res!774469) b!1725398))

(assert (= (and b!1725398 res!774472) b!1725402))

(assert (= (and b!1725402 res!774471) b!1725406))

(declare-fun m!2132047 () Bool)

(assert (=> b!1725403 m!2132047))

(declare-fun m!2132049 () Bool)

(assert (=> b!1725403 m!2132049))

(assert (=> b!1725403 m!2131915))

(declare-fun m!2132051 () Bool)

(assert (=> d!528619 m!2132051))

(declare-fun m!2132053 () Bool)

(assert (=> d!528619 m!2132053))

(declare-fun m!2132055 () Bool)

(assert (=> d!528619 m!2132055))

(assert (=> d!528619 m!2131541))

(assert (=> b!1725406 m!2132047))

(declare-fun m!2132057 () Bool)

(assert (=> b!1725406 m!2132057))

(declare-fun m!2132059 () Bool)

(assert (=> bm!109827 m!2132059))

(declare-fun m!2132061 () Bool)

(assert (=> b!1725399 m!2132061))

(assert (=> b!1725398 m!2132047))

(declare-fun m!2132063 () Bool)

(assert (=> b!1725398 m!2132063))

(assert (=> b!1725398 m!2132063))

(declare-fun m!2132065 () Bool)

(assert (=> b!1725398 m!2132065))

(declare-fun m!2132067 () Bool)

(assert (=> b!1725405 m!2132067))

(assert (=> b!1725402 m!2132047))

(declare-fun m!2132069 () Bool)

(assert (=> b!1725402 m!2132069))

(assert (=> b!1725402 m!2132069))

(declare-fun m!2132071 () Bool)

(assert (=> b!1725402 m!2132071))

(assert (=> b!1725402 m!2132071))

(declare-fun m!2132073 () Bool)

(assert (=> b!1725402 m!2132073))

(assert (=> b!1725404 m!2132047))

(assert (=> b!1725404 m!2132069))

(assert (=> b!1725404 m!2132069))

(assert (=> b!1725404 m!2132071))

(assert (=> b!1725400 m!2132047))

(assert (=> b!1725400 m!2132069))

(assert (=> b!1725400 m!2132069))

(assert (=> b!1725400 m!2132071))

(assert (=> b!1725400 m!2132071))

(declare-fun m!2132077 () Bool)

(assert (=> b!1725400 m!2132077))

(assert (=> b!1724773 d!528619))

(declare-fun d!528623 () Bool)

(declare-fun lt!660680 () Bool)

(declare-fun content!2701 (List!18962) (InoxSet Rule!6498))

(assert (=> d!528623 (= lt!660680 (select (content!2701 rules!3447) rule!422))))

(declare-fun e!1103690 () Bool)

(assert (=> d!528623 (= lt!660680 e!1103690)))

(declare-fun res!774486 () Bool)

(assert (=> d!528623 (=> (not res!774486) (not e!1103690))))

(assert (=> d!528623 (= res!774486 ((_ is Cons!18892) rules!3447))))

(assert (=> d!528623 (= (contains!3371 rules!3447 rule!422) lt!660680)))

(declare-fun b!1725425 () Bool)

(declare-fun e!1103689 () Bool)

(assert (=> b!1725425 (= e!1103690 e!1103689)))

(declare-fun res!774487 () Bool)

(assert (=> b!1725425 (=> res!774487 e!1103689)))

(assert (=> b!1725425 (= res!774487 (= (h!24293 rules!3447) rule!422))))

(declare-fun b!1725426 () Bool)

(assert (=> b!1725426 (= e!1103689 (contains!3371 (t!159961 rules!3447) rule!422))))

(assert (= (and d!528623 res!774486) b!1725425))

(assert (= (and b!1725425 (not res!774487)) b!1725426))

(declare-fun m!2132083 () Bool)

(assert (=> d!528623 m!2132083))

(declare-fun m!2132085 () Bool)

(assert (=> d!528623 m!2132085))

(declare-fun m!2132087 () Bool)

(assert (=> b!1725426 m!2132087))

(assert (=> b!1724771 d!528623))

(declare-fun d!528629 () Bool)

(assert (=> d!528629 (= (list!7634 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394))) (list!7637 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394)))))))

(declare-fun bs!402388 () Bool)

(assert (= bs!402388 d!528629))

(declare-fun m!2132089 () Bool)

(assert (=> bs!402388 m!2132089))

(assert (=> b!1724772 d!528629))

(declare-fun bs!402391 () Bool)

(declare-fun d!528631 () Bool)

(assert (= bs!402391 (and d!528631 b!1724760)))

(declare-fun lambda!69230 () Int)

(assert (=> bs!402391 (= lambda!69230 lambda!69218)))

(declare-fun b!1725435 () Bool)

(declare-fun e!1103695 () Bool)

(assert (=> b!1725435 (= e!1103695 true)))

(assert (=> d!528631 e!1103695))

(assert (= d!528631 b!1725435))

(assert (=> b!1725435 (< (dynLambda!8738 order!11559 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) (dynLambda!8739 order!11561 lambda!69230))))

(assert (=> b!1725435 (< (dynLambda!8740 order!11563 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) (dynLambda!8739 order!11561 lambda!69230))))

(assert (=> d!528631 (= (list!7634 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394))) (list!7634 lt!660394))))

(declare-fun lt!660684 () Unit!32737)

(declare-fun ForallOf!268 (Int BalanceConc!12510) Unit!32737)

(assert (=> d!528631 (= lt!660684 (ForallOf!268 lambda!69230 lt!660394))))

(assert (=> d!528631 (= (lemmaSemiInverse!495 (transformation!3349 (rule!5307 (_1!10691 lt!660389))) lt!660394) lt!660684)))

(declare-fun b_lambda!54855 () Bool)

(assert (=> (not b_lambda!54855) (not d!528631)))

(assert (=> d!528631 t!159942))

(declare-fun b_and!126527 () Bool)

(assert (= b_and!126473 (and (=> t!159942 result!123116) b_and!126527)))

(assert (=> d!528631 t!159944))

(declare-fun b_and!126529 () Bool)

(assert (= b_and!126475 (and (=> t!159944 result!123120) b_and!126529)))

(assert (=> d!528631 t!159946))

(declare-fun b_and!126531 () Bool)

(assert (= b_and!126477 (and (=> t!159946 result!123122) b_and!126531)))

(declare-fun b_lambda!54857 () Bool)

(assert (=> (not b_lambda!54857) (not d!528631)))

(assert (=> d!528631 t!159948))

(declare-fun b_and!126533 () Bool)

(assert (= b_and!126455 (and (=> t!159948 result!123124) b_and!126533)))

(assert (=> d!528631 t!159950))

(declare-fun b_and!126535 () Bool)

(assert (= b_and!126457 (and (=> t!159950 result!123128) b_and!126535)))

(assert (=> d!528631 t!159952))

(declare-fun b_and!126537 () Bool)

(assert (= b_and!126459 (and (=> t!159952 result!123130) b_and!126537)))

(assert (=> d!528631 m!2131345))

(assert (=> d!528631 m!2131347))

(assert (=> d!528631 m!2131349))

(assert (=> d!528631 m!2131345))

(assert (=> d!528631 m!2131347))

(declare-fun m!2132139 () Bool)

(assert (=> d!528631 m!2132139))

(assert (=> d!528631 m!2131321))

(assert (=> b!1724772 d!528631))

(declare-fun d!528643 () Bool)

(declare-fun res!774492 () Bool)

(declare-fun e!1103701 () Bool)

(assert (=> d!528643 (=> (not res!774492) (not e!1103701))))

(declare-fun rulesValid!1252 (LexerInterface!2978 List!18962) Bool)

(assert (=> d!528643 (= res!774492 (rulesValid!1252 thiss!24550 rules!3447))))

(assert (=> d!528643 (= (rulesInvariant!2647 thiss!24550 rules!3447) e!1103701)))

(declare-fun b!1725444 () Bool)

(declare-datatypes ((List!18966 0))(
  ( (Nil!18896) (Cons!18896 (h!24297 String!21527) (t!160025 List!18966)) )
))
(declare-fun noDuplicateTag!1252 (LexerInterface!2978 List!18962 List!18966) Bool)

(assert (=> b!1725444 (= e!1103701 (noDuplicateTag!1252 thiss!24550 rules!3447 Nil!18896))))

(assert (= (and d!528643 res!774492) b!1725444))

(declare-fun m!2132151 () Bool)

(assert (=> d!528643 m!2132151))

(declare-fun m!2132153 () Bool)

(assert (=> b!1725444 m!2132153))

(assert (=> b!1724775 d!528643))

(declare-fun d!528649 () Bool)

(assert (=> d!528649 (= (get!5615 lt!660401) (v!25131 lt!660401))))

(assert (=> b!1724778 d!528649))

(declare-fun d!528651 () Bool)

(declare-fun c!282169 () Bool)

(assert (=> d!528651 (= c!282169 (isEmpty!11881 (++!5174 lt!660390 (Cons!18891 (head!3908 suffix!1421) Nil!18891))))))

(declare-fun e!1103707 () Bool)

(assert (=> d!528651 (= (prefixMatch!562 lt!660395 (++!5174 lt!660390 (Cons!18891 (head!3908 suffix!1421) Nil!18891))) e!1103707)))

(declare-fun b!1725463 () Bool)

(declare-fun lostCause!521 (Regex!4677) Bool)

(assert (=> b!1725463 (= e!1103707 (not (lostCause!521 lt!660395)))))

(declare-fun b!1725464 () Bool)

(assert (=> b!1725464 (= e!1103707 (prefixMatch!562 (derivativeStep!1179 lt!660395 (head!3908 (++!5174 lt!660390 (Cons!18891 (head!3908 suffix!1421) Nil!18891)))) (tail!2577 (++!5174 lt!660390 (Cons!18891 (head!3908 suffix!1421) Nil!18891)))))))

(assert (= (and d!528651 c!282169) b!1725463))

(assert (= (and d!528651 (not c!282169)) b!1725464))

(assert (=> d!528651 m!2131263))

(declare-fun m!2132161 () Bool)

(assert (=> d!528651 m!2132161))

(declare-fun m!2132163 () Bool)

(assert (=> b!1725463 m!2132163))

(assert (=> b!1725464 m!2131263))

(declare-fun m!2132165 () Bool)

(assert (=> b!1725464 m!2132165))

(assert (=> b!1725464 m!2132165))

(declare-fun m!2132167 () Bool)

(assert (=> b!1725464 m!2132167))

(assert (=> b!1725464 m!2131263))

(declare-fun m!2132169 () Bool)

(assert (=> b!1725464 m!2132169))

(assert (=> b!1725464 m!2132167))

(assert (=> b!1725464 m!2132169))

(declare-fun m!2132171 () Bool)

(assert (=> b!1725464 m!2132171))

(assert (=> b!1724757 d!528651))

(declare-fun b!1725474 () Bool)

(declare-fun e!1103715 () Bool)

(declare-fun lt!660689 () List!18961)

(assert (=> b!1725474 (= e!1103715 (or (not (= (Cons!18891 (head!3908 suffix!1421) Nil!18891) Nil!18891)) (= lt!660689 lt!660390)))))

(declare-fun b!1725472 () Bool)

(declare-fun e!1103714 () List!18961)

(assert (=> b!1725472 (= e!1103714 (Cons!18891 (h!24292 lt!660390) (++!5174 (t!159960 lt!660390) (Cons!18891 (head!3908 suffix!1421) Nil!18891))))))

(declare-fun b!1725471 () Bool)

(assert (=> b!1725471 (= e!1103714 (Cons!18891 (head!3908 suffix!1421) Nil!18891))))

(declare-fun d!528657 () Bool)

(assert (=> d!528657 e!1103715))

(declare-fun res!774493 () Bool)

(assert (=> d!528657 (=> (not res!774493) (not e!1103715))))

(assert (=> d!528657 (= res!774493 (= (content!2700 lt!660689) ((_ map or) (content!2700 lt!660390) (content!2700 (Cons!18891 (head!3908 suffix!1421) Nil!18891)))))))

(assert (=> d!528657 (= lt!660689 e!1103714)))

(declare-fun c!282170 () Bool)

(assert (=> d!528657 (= c!282170 ((_ is Nil!18891) lt!660390))))

(assert (=> d!528657 (= (++!5174 lt!660390 (Cons!18891 (head!3908 suffix!1421) Nil!18891)) lt!660689)))

(declare-fun b!1725473 () Bool)

(declare-fun res!774494 () Bool)

(assert (=> b!1725473 (=> (not res!774494) (not e!1103715))))

(assert (=> b!1725473 (= res!774494 (= (size!15012 lt!660689) (+ (size!15012 lt!660390) (size!15012 (Cons!18891 (head!3908 suffix!1421) Nil!18891)))))))

(assert (= (and d!528657 c!282170) b!1725471))

(assert (= (and d!528657 (not c!282170)) b!1725472))

(assert (= (and d!528657 res!774493) b!1725473))

(assert (= (and b!1725473 res!774494) b!1725474))

(declare-fun m!2132173 () Bool)

(assert (=> b!1725472 m!2132173))

(declare-fun m!2132175 () Bool)

(assert (=> d!528657 m!2132175))

(assert (=> d!528657 m!2131921))

(declare-fun m!2132177 () Bool)

(assert (=> d!528657 m!2132177))

(declare-fun m!2132179 () Bool)

(assert (=> b!1725473 m!2132179))

(assert (=> b!1725473 m!2131533))

(declare-fun m!2132181 () Bool)

(assert (=> b!1725473 m!2132181))

(assert (=> b!1724757 d!528657))

(declare-fun d!528659 () Bool)

(assert (=> d!528659 (= (head!3908 suffix!1421) (h!24292 suffix!1421))))

(assert (=> b!1724757 d!528659))

(declare-fun d!528661 () Bool)

(declare-fun lt!660692 () Unit!32737)

(declare-fun lemma!335 (List!18962 LexerInterface!2978 List!18962) Unit!32737)

(assert (=> d!528661 (= lt!660692 (lemma!335 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69236 () Int)

(declare-datatypes ((List!18967 0))(
  ( (Nil!18897) (Cons!18897 (h!24298 Regex!4677) (t!160026 List!18967)) )
))
(declare-fun generalisedUnion!343 (List!18967) Regex!4677)

(declare-fun map!3889 (List!18962 Int) List!18967)

(assert (=> d!528661 (= (rulesRegex!707 thiss!24550 rules!3447) (generalisedUnion!343 (map!3889 rules!3447 lambda!69236)))))

(declare-fun bs!402393 () Bool)

(assert (= bs!402393 d!528661))

(declare-fun m!2132193 () Bool)

(assert (=> bs!402393 m!2132193))

(declare-fun m!2132195 () Bool)

(assert (=> bs!402393 m!2132195))

(assert (=> bs!402393 m!2132195))

(declare-fun m!2132197 () Bool)

(assert (=> bs!402393 m!2132197))

(assert (=> b!1724757 d!528661))

(declare-fun d!528663 () Bool)

(declare-fun lt!660693 () Int)

(assert (=> d!528663 (= lt!660693 (size!15012 (list!7634 lt!660380)))))

(assert (=> d!528663 (= lt!660693 (size!15013 (c!282043 lt!660380)))))

(assert (=> d!528663 (= (size!15011 lt!660380) lt!660693)))

(declare-fun bs!402394 () Bool)

(assert (= bs!402394 d!528663))

(assert (=> bs!402394 m!2131257))

(assert (=> bs!402394 m!2131257))

(declare-fun m!2132199 () Bool)

(assert (=> bs!402394 m!2132199))

(declare-fun m!2132201 () Bool)

(assert (=> bs!402394 m!2132201))

(assert (=> b!1724755 d!528663))

(declare-fun b!1725497 () Bool)

(declare-fun e!1103738 () Bool)

(declare-fun lt!660694 () Bool)

(assert (=> b!1725497 (= e!1103738 (not lt!660694))))

(declare-fun b!1725498 () Bool)

(declare-fun res!774497 () Bool)

(declare-fun e!1103733 () Bool)

(assert (=> b!1725498 (=> (not res!774497) (not e!1103733))))

(declare-fun call!109834 () Bool)

(assert (=> b!1725498 (= res!774497 (not call!109834))))

(declare-fun bm!109829 () Bool)

(assert (=> bm!109829 (= call!109834 (isEmpty!11881 lt!660390))))

(declare-fun b!1725499 () Bool)

(declare-fun res!774500 () Bool)

(declare-fun e!1103735 () Bool)

(assert (=> b!1725499 (=> res!774500 e!1103735)))

(assert (=> b!1725499 (= res!774500 e!1103733)))

(declare-fun res!774498 () Bool)

(assert (=> b!1725499 (=> (not res!774498) (not e!1103733))))

(assert (=> b!1725499 (= res!774498 lt!660694)))

(declare-fun b!1725500 () Bool)

(declare-fun res!774496 () Bool)

(declare-fun e!1103731 () Bool)

(assert (=> b!1725500 (=> res!774496 e!1103731)))

(assert (=> b!1725500 (= res!774496 (not (isEmpty!11881 (tail!2577 lt!660390))))))

(declare-fun b!1725501 () Bool)

(declare-fun e!1103734 () Bool)

(assert (=> b!1725501 (= e!1103734 (matchR!2151 (derivativeStep!1179 lt!660395 (head!3908 lt!660390)) (tail!2577 lt!660390)))))

(declare-fun d!528665 () Bool)

(declare-fun e!1103737 () Bool)

(assert (=> d!528665 e!1103737))

(declare-fun c!282173 () Bool)

(assert (=> d!528665 (= c!282173 ((_ is EmptyExpr!4677) lt!660395))))

(assert (=> d!528665 (= lt!660694 e!1103734)))

(declare-fun c!282172 () Bool)

(assert (=> d!528665 (= c!282172 (isEmpty!11881 lt!660390))))

(assert (=> d!528665 (validRegex!1886 lt!660395)))

(assert (=> d!528665 (= (matchR!2151 lt!660395 lt!660390) lt!660694)))

(declare-fun b!1725502 () Bool)

(assert (=> b!1725502 (= e!1103734 (nullable!1411 lt!660395))))

(declare-fun b!1725503 () Bool)

(assert (=> b!1725503 (= e!1103733 (= (head!3908 lt!660390) (c!282042 lt!660395)))))

(declare-fun b!1725504 () Bool)

(declare-fun e!1103732 () Bool)

(assert (=> b!1725504 (= e!1103732 e!1103731)))

(declare-fun res!774501 () Bool)

(assert (=> b!1725504 (=> res!774501 e!1103731)))

(assert (=> b!1725504 (= res!774501 call!109834)))

(declare-fun b!1725505 () Bool)

(assert (=> b!1725505 (= e!1103735 e!1103732)))

(declare-fun res!774499 () Bool)

(assert (=> b!1725505 (=> (not res!774499) (not e!1103732))))

(assert (=> b!1725505 (= res!774499 (not lt!660694))))

(declare-fun b!1725506 () Bool)

(assert (=> b!1725506 (= e!1103731 (not (= (head!3908 lt!660390) (c!282042 lt!660395))))))

(declare-fun b!1725507 () Bool)

(assert (=> b!1725507 (= e!1103737 e!1103738)))

(declare-fun c!282171 () Bool)

(assert (=> b!1725507 (= c!282171 ((_ is EmptyLang!4677) lt!660395))))

(declare-fun b!1725508 () Bool)

(assert (=> b!1725508 (= e!1103737 (= lt!660694 call!109834))))

(declare-fun b!1725509 () Bool)

(declare-fun res!774495 () Bool)

(assert (=> b!1725509 (=> (not res!774495) (not e!1103733))))

(assert (=> b!1725509 (= res!774495 (isEmpty!11881 (tail!2577 lt!660390)))))

(declare-fun b!1725510 () Bool)

(declare-fun res!774502 () Bool)

(assert (=> b!1725510 (=> res!774502 e!1103735)))

(assert (=> b!1725510 (= res!774502 (not ((_ is ElementMatch!4677) lt!660395)))))

(assert (=> b!1725510 (= e!1103738 e!1103735)))

(assert (= (and d!528665 c!282172) b!1725502))

(assert (= (and d!528665 (not c!282172)) b!1725501))

(assert (= (and d!528665 c!282173) b!1725508))

(assert (= (and d!528665 (not c!282173)) b!1725507))

(assert (= (and b!1725507 c!282171) b!1725497))

(assert (= (and b!1725507 (not c!282171)) b!1725510))

(assert (= (and b!1725510 (not res!774502)) b!1725499))

(assert (= (and b!1725499 res!774498) b!1725498))

(assert (= (and b!1725498 res!774497) b!1725509))

(assert (= (and b!1725509 res!774495) b!1725503))

(assert (= (and b!1725499 (not res!774500)) b!1725505))

(assert (= (and b!1725505 res!774499) b!1725504))

(assert (= (and b!1725504 (not res!774501)) b!1725500))

(assert (= (and b!1725500 (not res!774496)) b!1725506))

(assert (= (or b!1725508 b!1725498 b!1725504) bm!109829))

(assert (=> b!1725502 m!2131647))

(assert (=> d!528665 m!2131691))

(assert (=> d!528665 m!2131367))

(assert (=> b!1725509 m!2131695))

(assert (=> b!1725509 m!2131695))

(assert (=> b!1725509 m!2131697))

(assert (=> bm!109829 m!2131691))

(assert (=> b!1725501 m!2131699))

(assert (=> b!1725501 m!2131699))

(declare-fun m!2132209 () Bool)

(assert (=> b!1725501 m!2132209))

(assert (=> b!1725501 m!2131695))

(assert (=> b!1725501 m!2132209))

(assert (=> b!1725501 m!2131695))

(declare-fun m!2132211 () Bool)

(assert (=> b!1725501 m!2132211))

(assert (=> b!1725506 m!2131699))

(assert (=> b!1725503 m!2131699))

(assert (=> b!1725500 m!2131695))

(assert (=> b!1725500 m!2131695))

(assert (=> b!1725500 m!2131697))

(assert (=> b!1724755 d!528665))

(declare-fun d!528667 () Bool)

(assert (=> d!528667 (matchR!2151 (rulesRegex!707 thiss!24550 rules!3447) (list!7634 (charsOf!1998 token!523)))))

(declare-fun lt!660695 () Unit!32737)

(assert (=> d!528667 (= lt!660695 (choose!10510 thiss!24550 rules!3447 lt!660390 token!523 rule!422 Nil!18891))))

(assert (=> d!528667 (not (isEmpty!11882 rules!3447))))

(assert (=> d!528667 (= (lemmaMaxPrefixThenMatchesRulesRegex!98 thiss!24550 rules!3447 lt!660390 token!523 rule!422 Nil!18891) lt!660695)))

(declare-fun bs!402395 () Bool)

(assert (= bs!402395 d!528667))

(assert (=> bs!402395 m!2131259))

(declare-fun m!2132213 () Bool)

(assert (=> bs!402395 m!2132213))

(assert (=> bs!402395 m!2131267))

(assert (=> bs!402395 m!2131267))

(assert (=> bs!402395 m!2132213))

(declare-fun m!2132215 () Bool)

(assert (=> bs!402395 m!2132215))

(declare-fun m!2132217 () Bool)

(assert (=> bs!402395 m!2132217))

(assert (=> bs!402395 m!2131271))

(assert (=> bs!402395 m!2131259))

(assert (=> b!1724755 d!528667))

(declare-fun d!528669 () Bool)

(declare-fun c!282174 () Bool)

(assert (=> d!528669 (= c!282174 ((_ is Node!6283) (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394)))))))

(declare-fun e!1103743 () Bool)

(assert (=> d!528669 (= (inv!24414 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394)))) e!1103743)))

(declare-fun b!1725522 () Bool)

(assert (=> b!1725522 (= e!1103743 (inv!24418 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394)))))))

(declare-fun b!1725523 () Bool)

(declare-fun e!1103744 () Bool)

(assert (=> b!1725523 (= e!1103743 e!1103744)))

(declare-fun res!774503 () Bool)

(assert (=> b!1725523 (= res!774503 (not ((_ is Leaf!9178) (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394))))))))

(assert (=> b!1725523 (=> res!774503 e!1103744)))

(declare-fun b!1725524 () Bool)

(assert (=> b!1725524 (= e!1103744 (inv!24419 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394)))))))

(assert (= (and d!528669 c!282174) b!1725522))

(assert (= (and d!528669 (not c!282174)) b!1725523))

(assert (= (and b!1725523 (not res!774503)) b!1725524))

(declare-fun m!2132219 () Bool)

(assert (=> b!1725522 m!2132219))

(declare-fun m!2132221 () Bool)

(assert (=> b!1725524 m!2132221))

(assert (=> b!1724799 d!528669))

(declare-fun b!1725543 () Bool)

(declare-fun res!774521 () Bool)

(declare-fun e!1103754 () Bool)

(assert (=> b!1725543 (=> (not res!774521) (not e!1103754))))

(declare-fun lt!660710 () Option!3723)

(assert (=> b!1725543 (= res!774521 (= (++!5174 (list!7634 (charsOf!1998 (_1!10691 (get!5615 lt!660710)))) (_2!10691 (get!5615 lt!660710))) lt!660385))))

(declare-fun d!528671 () Bool)

(declare-fun e!1103756 () Bool)

(assert (=> d!528671 e!1103756))

(declare-fun res!774522 () Bool)

(assert (=> d!528671 (=> res!774522 e!1103756)))

(assert (=> d!528671 (= res!774522 (isEmpty!11885 lt!660710))))

(declare-fun e!1103755 () Option!3723)

(assert (=> d!528671 (= lt!660710 e!1103755)))

(declare-fun c!282177 () Bool)

(declare-datatypes ((tuple2!18586 0))(
  ( (tuple2!18587 (_1!10695 List!18961) (_2!10695 List!18961)) )
))
(declare-fun lt!660709 () tuple2!18586)

(assert (=> d!528671 (= c!282177 (isEmpty!11881 (_1!10695 lt!660709)))))

(declare-fun findLongestMatch!330 (Regex!4677 List!18961) tuple2!18586)

(assert (=> d!528671 (= lt!660709 (findLongestMatch!330 (regex!3349 (rule!5307 (_1!10691 lt!660389))) lt!660385))))

(assert (=> d!528671 (ruleValid!848 thiss!24550 (rule!5307 (_1!10691 lt!660389)))))

(assert (=> d!528671 (= (maxPrefixOneRule!908 thiss!24550 (rule!5307 (_1!10691 lt!660389)) lt!660385) lt!660710)))

(declare-fun b!1725544 () Bool)

(declare-fun e!1103753 () Bool)

(declare-fun findLongestMatchInner!403 (Regex!4677 List!18961 Int List!18961 List!18961 Int) tuple2!18586)

(assert (=> b!1725544 (= e!1103753 (matchR!2151 (regex!3349 (rule!5307 (_1!10691 lt!660389))) (_1!10695 (findLongestMatchInner!403 (regex!3349 (rule!5307 (_1!10691 lt!660389))) Nil!18891 (size!15012 Nil!18891) lt!660385 lt!660385 (size!15012 lt!660385)))))))

(declare-fun b!1725545 () Bool)

(assert (=> b!1725545 (= e!1103756 e!1103754)))

(declare-fun res!774518 () Bool)

(assert (=> b!1725545 (=> (not res!774518) (not e!1103754))))

(assert (=> b!1725545 (= res!774518 (matchR!2151 (regex!3349 (rule!5307 (_1!10691 lt!660389))) (list!7634 (charsOf!1998 (_1!10691 (get!5615 lt!660710))))))))

(declare-fun b!1725546 () Bool)

(declare-fun res!774520 () Bool)

(assert (=> b!1725546 (=> (not res!774520) (not e!1103754))))

(assert (=> b!1725546 (= res!774520 (= (value!105119 (_1!10691 (get!5615 lt!660710))) (apply!5154 (transformation!3349 (rule!5307 (_1!10691 (get!5615 lt!660710)))) (seqFromList!2323 (originalCharacters!4163 (_1!10691 (get!5615 lt!660710)))))))))

(declare-fun b!1725547 () Bool)

(declare-fun res!774524 () Bool)

(assert (=> b!1725547 (=> (not res!774524) (not e!1103754))))

(assert (=> b!1725547 (= res!774524 (< (size!15012 (_2!10691 (get!5615 lt!660710))) (size!15012 lt!660385)))))

(declare-fun b!1725548 () Bool)

(assert (=> b!1725548 (= e!1103754 (= (size!15010 (_1!10691 (get!5615 lt!660710))) (size!15012 (originalCharacters!4163 (_1!10691 (get!5615 lt!660710))))))))

(declare-fun b!1725549 () Bool)

(assert (=> b!1725549 (= e!1103755 (Some!3722 (tuple2!18579 (Token!6265 (apply!5154 (transformation!3349 (rule!5307 (_1!10691 lt!660389))) (seqFromList!2323 (_1!10695 lt!660709))) (rule!5307 (_1!10691 lt!660389)) (size!15011 (seqFromList!2323 (_1!10695 lt!660709))) (_1!10695 lt!660709)) (_2!10695 lt!660709))))))

(declare-fun lt!660706 () Unit!32737)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!387 (Regex!4677 List!18961) Unit!32737)

(assert (=> b!1725549 (= lt!660706 (longestMatchIsAcceptedByMatchOrIsEmpty!387 (regex!3349 (rule!5307 (_1!10691 lt!660389))) lt!660385))))

(declare-fun res!774523 () Bool)

(assert (=> b!1725549 (= res!774523 (isEmpty!11881 (_1!10695 (findLongestMatchInner!403 (regex!3349 (rule!5307 (_1!10691 lt!660389))) Nil!18891 (size!15012 Nil!18891) lt!660385 lt!660385 (size!15012 lt!660385)))))))

(assert (=> b!1725549 (=> res!774523 e!1103753)))

(assert (=> b!1725549 e!1103753))

(declare-fun lt!660708 () Unit!32737)

(assert (=> b!1725549 (= lt!660708 lt!660706)))

(declare-fun lt!660707 () Unit!32737)

(assert (=> b!1725549 (= lt!660707 (lemmaSemiInverse!495 (transformation!3349 (rule!5307 (_1!10691 lt!660389))) (seqFromList!2323 (_1!10695 lt!660709))))))

(declare-fun b!1725550 () Bool)

(assert (=> b!1725550 (= e!1103755 None!3722)))

(declare-fun b!1725551 () Bool)

(declare-fun res!774519 () Bool)

(assert (=> b!1725551 (=> (not res!774519) (not e!1103754))))

(assert (=> b!1725551 (= res!774519 (= (rule!5307 (_1!10691 (get!5615 lt!660710))) (rule!5307 (_1!10691 lt!660389))))))

(assert (= (and d!528671 c!282177) b!1725550))

(assert (= (and d!528671 (not c!282177)) b!1725549))

(assert (= (and b!1725549 (not res!774523)) b!1725544))

(assert (= (and d!528671 (not res!774522)) b!1725545))

(assert (= (and b!1725545 res!774518) b!1725543))

(assert (= (and b!1725543 res!774521) b!1725547))

(assert (= (and b!1725547 res!774524) b!1725551))

(assert (= (and b!1725551 res!774519) b!1725546))

(assert (= (and b!1725546 res!774520) b!1725548))

(declare-fun m!2132223 () Bool)

(assert (=> b!1725544 m!2132223))

(assert (=> b!1725544 m!2131915))

(assert (=> b!1725544 m!2132223))

(assert (=> b!1725544 m!2131915))

(declare-fun m!2132225 () Bool)

(assert (=> b!1725544 m!2132225))

(declare-fun m!2132227 () Bool)

(assert (=> b!1725544 m!2132227))

(declare-fun m!2132229 () Bool)

(assert (=> b!1725549 m!2132229))

(declare-fun m!2132231 () Bool)

(assert (=> b!1725549 m!2132231))

(declare-fun m!2132233 () Bool)

(assert (=> b!1725549 m!2132233))

(assert (=> b!1725549 m!2132231))

(declare-fun m!2132235 () Bool)

(assert (=> b!1725549 m!2132235))

(assert (=> b!1725549 m!2132223))

(assert (=> b!1725549 m!2131915))

(assert (=> b!1725549 m!2132225))

(assert (=> b!1725549 m!2132223))

(declare-fun m!2132237 () Bool)

(assert (=> b!1725549 m!2132237))

(assert (=> b!1725549 m!2132231))

(assert (=> b!1725549 m!2132231))

(declare-fun m!2132239 () Bool)

(assert (=> b!1725549 m!2132239))

(assert (=> b!1725549 m!2131915))

(declare-fun m!2132241 () Bool)

(assert (=> b!1725547 m!2132241))

(declare-fun m!2132243 () Bool)

(assert (=> b!1725547 m!2132243))

(assert (=> b!1725547 m!2131915))

(assert (=> b!1725548 m!2132241))

(declare-fun m!2132245 () Bool)

(assert (=> b!1725548 m!2132245))

(assert (=> b!1725543 m!2132241))

(declare-fun m!2132247 () Bool)

(assert (=> b!1725543 m!2132247))

(assert (=> b!1725543 m!2132247))

(declare-fun m!2132249 () Bool)

(assert (=> b!1725543 m!2132249))

(assert (=> b!1725543 m!2132249))

(declare-fun m!2132251 () Bool)

(assert (=> b!1725543 m!2132251))

(assert (=> b!1725551 m!2132241))

(assert (=> b!1725546 m!2132241))

(declare-fun m!2132253 () Bool)

(assert (=> b!1725546 m!2132253))

(assert (=> b!1725546 m!2132253))

(declare-fun m!2132255 () Bool)

(assert (=> b!1725546 m!2132255))

(declare-fun m!2132257 () Bool)

(assert (=> d!528671 m!2132257))

(declare-fun m!2132259 () Bool)

(assert (=> d!528671 m!2132259))

(declare-fun m!2132261 () Bool)

(assert (=> d!528671 m!2132261))

(declare-fun m!2132263 () Bool)

(assert (=> d!528671 m!2132263))

(assert (=> b!1725545 m!2132241))

(assert (=> b!1725545 m!2132247))

(assert (=> b!1725545 m!2132247))

(assert (=> b!1725545 m!2132249))

(assert (=> b!1725545 m!2132249))

(declare-fun m!2132265 () Bool)

(assert (=> b!1725545 m!2132265))

(assert (=> b!1724777 d!528671))

(declare-fun d!528673 () Bool)

(declare-fun lt!660713 () List!18961)

(assert (=> d!528673 (= (++!5174 lt!660396 lt!660713) lt!660385)))

(declare-fun e!1103759 () List!18961)

(assert (=> d!528673 (= lt!660713 e!1103759)))

(declare-fun c!282180 () Bool)

(assert (=> d!528673 (= c!282180 ((_ is Cons!18891) lt!660396))))

(assert (=> d!528673 (>= (size!15012 lt!660385) (size!15012 lt!660396))))

(assert (=> d!528673 (= (getSuffix!784 lt!660385 lt!660396) lt!660713)))

(declare-fun b!1725556 () Bool)

(assert (=> b!1725556 (= e!1103759 (getSuffix!784 (tail!2577 lt!660385) (t!159960 lt!660396)))))

(declare-fun b!1725557 () Bool)

(assert (=> b!1725557 (= e!1103759 lt!660385)))

(assert (= (and d!528673 c!282180) b!1725556))

(assert (= (and d!528673 (not c!282180)) b!1725557))

(declare-fun m!2132267 () Bool)

(assert (=> d!528673 m!2132267))

(assert (=> d!528673 m!2131915))

(assert (=> d!528673 m!2131283))

(assert (=> b!1725556 m!2131909))

(assert (=> b!1725556 m!2131909))

(declare-fun m!2132269 () Bool)

(assert (=> b!1725556 m!2132269))

(assert (=> b!1724777 d!528673))

(declare-fun d!528675 () Bool)

(assert (=> d!528675 (= (maxPrefixOneRule!908 thiss!24550 (rule!5307 (_1!10691 lt!660389)) lt!660385) (Some!3722 (tuple2!18579 (Token!6265 (apply!5154 (transformation!3349 (rule!5307 (_1!10691 lt!660389))) (seqFromList!2323 lt!660396)) (rule!5307 (_1!10691 lt!660389)) (size!15012 lt!660396) lt!660396) (_2!10691 lt!660389))))))

(declare-fun lt!660716 () Unit!32737)

(declare-fun choose!10517 (LexerInterface!2978 List!18962 List!18961 List!18961 List!18961 Rule!6498) Unit!32737)

(assert (=> d!528675 (= lt!660716 (choose!10517 thiss!24550 rules!3447 lt!660396 lt!660385 (_2!10691 lt!660389) (rule!5307 (_1!10691 lt!660389))))))

(assert (=> d!528675 (not (isEmpty!11882 rules!3447))))

(assert (=> d!528675 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!307 thiss!24550 rules!3447 lt!660396 lt!660385 (_2!10691 lt!660389) (rule!5307 (_1!10691 lt!660389))) lt!660716)))

(declare-fun bs!402396 () Bool)

(assert (= bs!402396 d!528675))

(assert (=> bs!402396 m!2131281))

(declare-fun m!2132271 () Bool)

(assert (=> bs!402396 m!2132271))

(assert (=> bs!402396 m!2131275))

(assert (=> bs!402396 m!2131283))

(assert (=> bs!402396 m!2131271))

(assert (=> bs!402396 m!2131275))

(assert (=> bs!402396 m!2131277))

(assert (=> b!1724777 d!528675))

(declare-fun d!528677 () Bool)

(assert (=> d!528677 (= (apply!5154 (transformation!3349 (rule!5307 (_1!10691 lt!660389))) (seqFromList!2323 lt!660396)) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (seqFromList!2323 lt!660396)))))

(declare-fun b_lambda!54869 () Bool)

(assert (=> (not b_lambda!54869) (not d!528677)))

(declare-fun t!160006 () Bool)

(declare-fun tb!102477 () Bool)

(assert (=> (and b!1724756 (= (toValue!4856 (transformation!3349 (rule!5307 token!523))) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!160006) tb!102477))

(declare-fun result!123188 () Bool)

(assert (=> tb!102477 (= result!123188 (inv!21 (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (seqFromList!2323 lt!660396))))))

(declare-fun m!2132273 () Bool)

(assert (=> tb!102477 m!2132273))

(assert (=> d!528677 t!160006))

(declare-fun b_and!126543 () Bool)

(assert (= b_and!126533 (and (=> t!160006 result!123188) b_and!126543)))

(declare-fun t!160008 () Bool)

(declare-fun tb!102479 () Bool)

(assert (=> (and b!1724783 (= (toValue!4856 (transformation!3349 (h!24293 rules!3447))) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!160008) tb!102479))

(declare-fun result!123190 () Bool)

(assert (= result!123190 result!123188))

(assert (=> d!528677 t!160008))

(declare-fun b_and!126545 () Bool)

(assert (= b_and!126535 (and (=> t!160008 result!123190) b_and!126545)))

(declare-fun t!160010 () Bool)

(declare-fun tb!102481 () Bool)

(assert (=> (and b!1724770 (= (toValue!4856 (transformation!3349 rule!422)) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!160010) tb!102481))

(declare-fun result!123192 () Bool)

(assert (= result!123192 result!123188))

(assert (=> d!528677 t!160010))

(declare-fun b_and!126547 () Bool)

(assert (= b_and!126537 (and (=> t!160010 result!123192) b_and!126547)))

(assert (=> d!528677 m!2131275))

(declare-fun m!2132275 () Bool)

(assert (=> d!528677 m!2132275))

(assert (=> b!1724777 d!528677))

(declare-fun d!528679 () Bool)

(assert (=> d!528679 (= (_2!10691 lt!660389) lt!660406)))

(declare-fun lt!660719 () Unit!32737)

(declare-fun choose!10518 (List!18961 List!18961 List!18961 List!18961 List!18961) Unit!32737)

(assert (=> d!528679 (= lt!660719 (choose!10518 lt!660396 (_2!10691 lt!660389) lt!660396 lt!660406 lt!660385))))

(assert (=> d!528679 (isPrefix!1590 lt!660396 lt!660385)))

(assert (=> d!528679 (= (lemmaSamePrefixThenSameSuffix!734 lt!660396 (_2!10691 lt!660389) lt!660396 lt!660406 lt!660385) lt!660719)))

(declare-fun bs!402397 () Bool)

(assert (= bs!402397 d!528679))

(declare-fun m!2132277 () Bool)

(assert (=> bs!402397 m!2132277))

(assert (=> bs!402397 m!2131329))

(assert (=> b!1724777 d!528679))

(declare-fun d!528681 () Bool)

(declare-fun lt!660722 () Int)

(assert (=> d!528681 (>= lt!660722 0)))

(declare-fun e!1103763 () Int)

(assert (=> d!528681 (= lt!660722 e!1103763)))

(declare-fun c!282184 () Bool)

(assert (=> d!528681 (= c!282184 ((_ is Nil!18891) lt!660396))))

(assert (=> d!528681 (= (size!15012 lt!660396) lt!660722)))

(declare-fun b!1725562 () Bool)

(assert (=> b!1725562 (= e!1103763 0)))

(declare-fun b!1725563 () Bool)

(assert (=> b!1725563 (= e!1103763 (+ 1 (size!15012 (t!159960 lt!660396))))))

(assert (= (and d!528681 c!282184) b!1725562))

(assert (= (and d!528681 (not c!282184)) b!1725563))

(declare-fun m!2132279 () Bool)

(assert (=> b!1725563 m!2132279))

(assert (=> b!1724777 d!528681))

(declare-fun d!528683 () Bool)

(assert (=> d!528683 (= (seqFromList!2323 lt!660396) (fromListB!1065 lt!660396))))

(declare-fun bs!402398 () Bool)

(assert (= bs!402398 d!528683))

(declare-fun m!2132281 () Bool)

(assert (=> bs!402398 m!2132281))

(assert (=> b!1724777 d!528683))

(declare-fun d!528685 () Bool)

(declare-fun isBalanced!1966 (Conc!6283) Bool)

(assert (=> d!528685 (= (inv!24415 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389)))) (isBalanced!1966 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389))))))))

(declare-fun bs!402399 () Bool)

(assert (= bs!402399 d!528685))

(declare-fun m!2132283 () Bool)

(assert (=> bs!402399 m!2132283))

(assert (=> tb!102429 d!528685))

(declare-fun d!528687 () Bool)

(assert (=> d!528687 (= (inv!24407 (tag!3665 rule!422)) (= (mod (str.len (value!105118 (tag!3665 rule!422))) 2) 0))))

(assert (=> b!1724759 d!528687))

(declare-fun d!528689 () Bool)

(declare-fun res!774525 () Bool)

(declare-fun e!1103764 () Bool)

(assert (=> d!528689 (=> (not res!774525) (not e!1103764))))

(assert (=> d!528689 (= res!774525 (semiInverseModEq!1325 (toChars!4715 (transformation!3349 rule!422)) (toValue!4856 (transformation!3349 rule!422))))))

(assert (=> d!528689 (= (inv!24412 (transformation!3349 rule!422)) e!1103764)))

(declare-fun b!1725564 () Bool)

(assert (=> b!1725564 (= e!1103764 (equivClasses!1266 (toChars!4715 (transformation!3349 rule!422)) (toValue!4856 (transformation!3349 rule!422))))))

(assert (= (and d!528689 res!774525) b!1725564))

(declare-fun m!2132285 () Bool)

(assert (=> d!528689 m!2132285))

(declare-fun m!2132287 () Bool)

(assert (=> b!1725564 m!2132287))

(assert (=> b!1724759 d!528689))

(declare-fun d!528691 () Bool)

(assert (=> d!528691 (= (inv!24415 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394))) (isBalanced!1966 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394)))))))

(declare-fun bs!402400 () Bool)

(assert (= bs!402400 d!528691))

(declare-fun m!2132289 () Bool)

(assert (=> bs!402400 m!2132289))

(assert (=> tb!102417 d!528691))

(declare-fun d!528693 () Bool)

(assert (=> d!528693 (= (isEmpty!11882 rules!3447) ((_ is Nil!18892) rules!3447))))

(assert (=> b!1724781 d!528693))

(declare-fun d!528695 () Bool)

(declare-fun choose!10519 (Int) Bool)

(assert (=> d!528695 (= (Forall!724 lambda!69218) (choose!10519 lambda!69218))))

(declare-fun bs!402401 () Bool)

(assert (= bs!402401 d!528695))

(declare-fun m!2132291 () Bool)

(assert (=> bs!402401 m!2132291))

(assert (=> b!1724760 d!528695))

(declare-fun d!528697 () Bool)

(declare-fun e!1103767 () Bool)

(assert (=> d!528697 e!1103767))

(declare-fun res!774528 () Bool)

(assert (=> d!528697 (=> (not res!774528) (not e!1103767))))

(assert (=> d!528697 (= res!774528 (semiInverseModEq!1325 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))))))

(declare-fun Unit!32746 () Unit!32737)

(assert (=> d!528697 (= (lemmaInv!556 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) Unit!32746)))

(declare-fun b!1725567 () Bool)

(assert (=> b!1725567 (= e!1103767 (equivClasses!1266 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))))))

(assert (= (and d!528697 res!774528) b!1725567))

(declare-fun m!2132293 () Bool)

(assert (=> d!528697 m!2132293))

(declare-fun m!2132295 () Bool)

(assert (=> b!1725567 m!2132295))

(assert (=> b!1724760 d!528697))

(declare-fun d!528699 () Bool)

(assert (=> d!528699 (= (isEmpty!11881 suffix!1421) ((_ is Nil!18891) suffix!1421))))

(assert (=> b!1724779 d!528699))

(declare-fun b!1725576 () Bool)

(declare-fun tp!492328 () Bool)

(declare-fun tp!492327 () Bool)

(declare-fun e!1103772 () Bool)

(assert (=> b!1725576 (= e!1103772 (and (inv!24414 (left!15079 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394))))) tp!492327 (inv!24414 (right!15409 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394))))) tp!492328))))

(declare-fun b!1725578 () Bool)

(declare-fun e!1103773 () Bool)

(declare-fun tp!492326 () Bool)

(assert (=> b!1725578 (= e!1103773 tp!492326)))

(declare-fun b!1725577 () Bool)

(declare-fun inv!24421 (IArray!12571) Bool)

(assert (=> b!1725577 (= e!1103772 (and (inv!24421 (xs!9159 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394))))) e!1103773))))

(assert (=> b!1724799 (= tp!492263 (and (inv!24414 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394)))) e!1103772))))

(assert (= (and b!1724799 ((_ is Node!6283) (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394))))) b!1725576))

(assert (= b!1725577 b!1725578))

(assert (= (and b!1724799 ((_ is Leaf!9178) (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (dynLambda!8742 (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) lt!660394))))) b!1725577))

(declare-fun m!2132297 () Bool)

(assert (=> b!1725576 m!2132297))

(declare-fun m!2132299 () Bool)

(assert (=> b!1725576 m!2132299))

(declare-fun m!2132301 () Bool)

(assert (=> b!1725577 m!2132301))

(assert (=> b!1724799 m!2131237))

(declare-fun b!1725583 () Bool)

(declare-fun e!1103776 () Bool)

(declare-fun tp!492331 () Bool)

(assert (=> b!1725583 (= e!1103776 (and tp_is_empty!7597 tp!492331))))

(assert (=> b!1724761 (= tp!492255 e!1103776)))

(assert (= (and b!1724761 ((_ is Cons!18891) (originalCharacters!4163 token!523))) b!1725583))

(declare-fun tp!492334 () Bool)

(declare-fun b!1725584 () Bool)

(declare-fun e!1103777 () Bool)

(declare-fun tp!492333 () Bool)

(assert (=> b!1725584 (= e!1103777 (and (inv!24414 (left!15079 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389)))))) tp!492333 (inv!24414 (right!15409 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389)))))) tp!492334))))

(declare-fun b!1725586 () Bool)

(declare-fun e!1103778 () Bool)

(declare-fun tp!492332 () Bool)

(assert (=> b!1725586 (= e!1103778 tp!492332)))

(declare-fun b!1725585 () Bool)

(assert (=> b!1725585 (= e!1103777 (and (inv!24421 (xs!9159 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389)))))) e!1103778))))

(assert (=> b!1724802 (= tp!492264 (and (inv!24414 (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389))))) e!1103777))))

(assert (= (and b!1724802 ((_ is Node!6283) (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389)))))) b!1725584))

(assert (= b!1725585 b!1725586))

(assert (= (and b!1724802 ((_ is Leaf!9178) (c!282043 (dynLambda!8741 (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))) (value!105119 (_1!10691 lt!660389)))))) b!1725585))

(declare-fun m!2132303 () Bool)

(assert (=> b!1725584 m!2132303))

(declare-fun m!2132305 () Bool)

(assert (=> b!1725584 m!2132305))

(declare-fun m!2132307 () Bool)

(assert (=> b!1725585 m!2132307))

(assert (=> b!1724802 m!2131243))

(declare-fun b!1725600 () Bool)

(declare-fun e!1103781 () Bool)

(declare-fun tp!492345 () Bool)

(declare-fun tp!492348 () Bool)

(assert (=> b!1725600 (= e!1103781 (and tp!492345 tp!492348))))

(declare-fun b!1725599 () Bool)

(declare-fun tp!492346 () Bool)

(assert (=> b!1725599 (= e!1103781 tp!492346)))

(declare-fun b!1725598 () Bool)

(declare-fun tp!492347 () Bool)

(declare-fun tp!492349 () Bool)

(assert (=> b!1725598 (= e!1103781 (and tp!492347 tp!492349))))

(assert (=> b!1724759 (= tp!492253 e!1103781)))

(declare-fun b!1725597 () Bool)

(assert (=> b!1725597 (= e!1103781 tp_is_empty!7597)))

(assert (= (and b!1724759 ((_ is ElementMatch!4677) (regex!3349 rule!422))) b!1725597))

(assert (= (and b!1724759 ((_ is Concat!8117) (regex!3349 rule!422))) b!1725598))

(assert (= (and b!1724759 ((_ is Star!4677) (regex!3349 rule!422))) b!1725599))

(assert (= (and b!1724759 ((_ is Union!4677) (regex!3349 rule!422))) b!1725600))

(declare-fun b!1725611 () Bool)

(declare-fun b_free!47091 () Bool)

(declare-fun b_next!47795 () Bool)

(assert (=> b!1725611 (= b_free!47091 (not b_next!47795))))

(declare-fun tb!102483 () Bool)

(declare-fun t!160012 () Bool)

(assert (=> (and b!1725611 (= (toValue!4856 (transformation!3349 (h!24293 (t!159961 rules!3447)))) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!160012) tb!102483))

(declare-fun result!123202 () Bool)

(assert (= result!123202 result!123138))

(assert (=> d!528449 t!160012))

(declare-fun tb!102485 () Bool)

(declare-fun t!160014 () Bool)

(assert (=> (and b!1725611 (= (toValue!4856 (transformation!3349 (h!24293 (t!159961 rules!3447)))) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!160014) tb!102485))

(declare-fun result!123204 () Bool)

(assert (= result!123204 result!123124))

(assert (=> d!528449 t!160014))

(assert (=> b!1724772 t!160014))

(declare-fun t!160016 () Bool)

(declare-fun tb!102487 () Bool)

(assert (=> (and b!1725611 (= (toValue!4856 (transformation!3349 (h!24293 (t!159961 rules!3447)))) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!160016) tb!102487))

(declare-fun result!123206 () Bool)

(assert (= result!123206 result!123188))

(assert (=> d!528677 t!160016))

(assert (=> d!528447 t!160014))

(assert (=> d!528631 t!160014))

(declare-fun tp!492359 () Bool)

(declare-fun b_and!126549 () Bool)

(assert (=> b!1725611 (= tp!492359 (and (=> t!160014 result!123204) (=> t!160012 result!123202) (=> t!160016 result!123206) b_and!126549))))

(declare-fun b_free!47093 () Bool)

(declare-fun b_next!47797 () Bool)

(assert (=> b!1725611 (= b_free!47093 (not b_next!47797))))

(declare-fun tb!102489 () Bool)

(declare-fun t!160018 () Bool)

(assert (=> (and b!1725611 (= (toChars!4715 (transformation!3349 (h!24293 (t!159961 rules!3447)))) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!160018) tb!102489))

(declare-fun result!123208 () Bool)

(assert (= result!123208 result!123132))

(assert (=> d!528493 t!160018))

(assert (=> b!1724774 t!160018))

(declare-fun t!160020 () Bool)

(declare-fun tb!102491 () Bool)

(assert (=> (and b!1725611 (= (toChars!4715 (transformation!3349 (h!24293 (t!159961 rules!3447)))) (toChars!4715 (transformation!3349 (rule!5307 token!523)))) t!160020) tb!102491))

(declare-fun result!123210 () Bool)

(assert (= result!123210 result!123144))

(assert (=> b!1725103 t!160020))

(declare-fun tb!102493 () Bool)

(declare-fun t!160022 () Bool)

(assert (=> (and b!1725611 (= (toChars!4715 (transformation!3349 (h!24293 (t!159961 rules!3447)))) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389))))) t!160022) tb!102493))

(declare-fun result!123212 () Bool)

(assert (= result!123212 result!123116))

(assert (=> b!1724772 t!160022))

(assert (=> d!528471 t!160020))

(assert (=> d!528631 t!160022))

(declare-fun tp!492361 () Bool)

(declare-fun b_and!126551 () Bool)

(assert (=> b!1725611 (= tp!492361 (and (=> t!160020 result!123210) (=> t!160018 result!123208) (=> t!160022 result!123212) b_and!126551))))

(declare-fun e!1103793 () Bool)

(assert (=> b!1725611 (= e!1103793 (and tp!492359 tp!492361))))

(declare-fun tp!492360 () Bool)

(declare-fun e!1103790 () Bool)

(declare-fun b!1725610 () Bool)

(assert (=> b!1725610 (= e!1103790 (and tp!492360 (inv!24407 (tag!3665 (h!24293 (t!159961 rules!3447)))) (inv!24412 (transformation!3349 (h!24293 (t!159961 rules!3447)))) e!1103793))))

(declare-fun b!1725609 () Bool)

(declare-fun e!1103791 () Bool)

(declare-fun tp!492358 () Bool)

(assert (=> b!1725609 (= e!1103791 (and e!1103790 tp!492358))))

(assert (=> b!1724776 (= tp!492259 e!1103791)))

(assert (= b!1725610 b!1725611))

(assert (= b!1725609 b!1725610))

(assert (= (and b!1724776 ((_ is Cons!18892) (t!159961 rules!3447))) b!1725609))

(declare-fun m!2132309 () Bool)

(assert (=> b!1725610 m!2132309))

(declare-fun m!2132311 () Bool)

(assert (=> b!1725610 m!2132311))

(declare-fun b!1725615 () Bool)

(declare-fun e!1103794 () Bool)

(declare-fun tp!492362 () Bool)

(declare-fun tp!492365 () Bool)

(assert (=> b!1725615 (= e!1103794 (and tp!492362 tp!492365))))

(declare-fun b!1725614 () Bool)

(declare-fun tp!492363 () Bool)

(assert (=> b!1725614 (= e!1103794 tp!492363)))

(declare-fun b!1725613 () Bool)

(declare-fun tp!492364 () Bool)

(declare-fun tp!492366 () Bool)

(assert (=> b!1725613 (= e!1103794 (and tp!492364 tp!492366))))

(assert (=> b!1724763 (= tp!492256 e!1103794)))

(declare-fun b!1725612 () Bool)

(assert (=> b!1725612 (= e!1103794 tp_is_empty!7597)))

(assert (= (and b!1724763 ((_ is ElementMatch!4677) (regex!3349 (h!24293 rules!3447)))) b!1725612))

(assert (= (and b!1724763 ((_ is Concat!8117) (regex!3349 (h!24293 rules!3447)))) b!1725613))

(assert (= (and b!1724763 ((_ is Star!4677) (regex!3349 (h!24293 rules!3447)))) b!1725614))

(assert (= (and b!1724763 ((_ is Union!4677) (regex!3349 (h!24293 rules!3447)))) b!1725615))

(declare-fun b!1725619 () Bool)

(declare-fun e!1103795 () Bool)

(declare-fun tp!492367 () Bool)

(declare-fun tp!492370 () Bool)

(assert (=> b!1725619 (= e!1103795 (and tp!492367 tp!492370))))

(declare-fun b!1725618 () Bool)

(declare-fun tp!492368 () Bool)

(assert (=> b!1725618 (= e!1103795 tp!492368)))

(declare-fun b!1725617 () Bool)

(declare-fun tp!492369 () Bool)

(declare-fun tp!492371 () Bool)

(assert (=> b!1725617 (= e!1103795 (and tp!492369 tp!492371))))

(assert (=> b!1724764 (= tp!492251 e!1103795)))

(declare-fun b!1725616 () Bool)

(assert (=> b!1725616 (= e!1103795 tp_is_empty!7597)))

(assert (= (and b!1724764 ((_ is ElementMatch!4677) (regex!3349 (rule!5307 token!523)))) b!1725616))

(assert (= (and b!1724764 ((_ is Concat!8117) (regex!3349 (rule!5307 token!523)))) b!1725617))

(assert (= (and b!1724764 ((_ is Star!4677) (regex!3349 (rule!5307 token!523)))) b!1725618))

(assert (= (and b!1724764 ((_ is Union!4677) (regex!3349 (rule!5307 token!523)))) b!1725619))

(declare-fun b!1725620 () Bool)

(declare-fun e!1103796 () Bool)

(declare-fun tp!492372 () Bool)

(assert (=> b!1725620 (= e!1103796 (and tp_is_empty!7597 tp!492372))))

(assert (=> b!1724780 (= tp!492250 e!1103796)))

(assert (= (and b!1724780 ((_ is Cons!18891) (t!159960 suffix!1421))) b!1725620))

(declare-fun b_lambda!54871 () Bool)

(assert (= b_lambda!54821 (or (and b!1724756 b_free!47075 (= (toValue!4856 (transformation!3349 (rule!5307 token!523))) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))))) (and b!1724783 b_free!47079 (= (toValue!4856 (transformation!3349 (h!24293 rules!3447))) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))))) (and b!1724770 b_free!47083 (= (toValue!4856 (transformation!3349 rule!422)) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))))) (and b!1725611 b_free!47091 (= (toValue!4856 (transformation!3349 (h!24293 (t!159961 rules!3447)))) (toValue!4856 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))))) b_lambda!54871)))

(declare-fun b_lambda!54873 () Bool)

(assert (= b_lambda!54819 (or (and b!1724756 b_free!47077 (= (toChars!4715 (transformation!3349 (rule!5307 token!523))) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))))) (and b!1724783 b_free!47081 (= (toChars!4715 (transformation!3349 (h!24293 rules!3447))) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))))) (and b!1724770 b_free!47085 (= (toChars!4715 (transformation!3349 rule!422)) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))))) (and b!1725611 b_free!47093 (= (toChars!4715 (transformation!3349 (h!24293 (t!159961 rules!3447)))) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))))) b_lambda!54873)))

(declare-fun b_lambda!54875 () Bool)

(assert (= b_lambda!54833 (or (and b!1724756 b_free!47077) (and b!1724783 b_free!47081 (= (toChars!4715 (transformation!3349 (h!24293 rules!3447))) (toChars!4715 (transformation!3349 (rule!5307 token!523))))) (and b!1724770 b_free!47085 (= (toChars!4715 (transformation!3349 rule!422)) (toChars!4715 (transformation!3349 (rule!5307 token!523))))) (and b!1725611 b_free!47093 (= (toChars!4715 (transformation!3349 (h!24293 (t!159961 rules!3447)))) (toChars!4715 (transformation!3349 (rule!5307 token!523))))) b_lambda!54875)))

(declare-fun b_lambda!54877 () Bool)

(assert (= b_lambda!54837 (or (and b!1724756 b_free!47077) (and b!1724783 b_free!47081 (= (toChars!4715 (transformation!3349 (h!24293 rules!3447))) (toChars!4715 (transformation!3349 (rule!5307 token!523))))) (and b!1724770 b_free!47085 (= (toChars!4715 (transformation!3349 rule!422)) (toChars!4715 (transformation!3349 (rule!5307 token!523))))) (and b!1725611 b_free!47093 (= (toChars!4715 (transformation!3349 (h!24293 (t!159961 rules!3447)))) (toChars!4715 (transformation!3349 (rule!5307 token!523))))) b_lambda!54877)))

(declare-fun b_lambda!54879 () Bool)

(assert (= b_lambda!54823 (or (and b!1724756 b_free!47077 (= (toChars!4715 (transformation!3349 (rule!5307 token!523))) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))))) (and b!1724783 b_free!47081 (= (toChars!4715 (transformation!3349 (h!24293 rules!3447))) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))))) (and b!1724770 b_free!47085 (= (toChars!4715 (transformation!3349 rule!422)) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))))) (and b!1725611 b_free!47093 (= (toChars!4715 (transformation!3349 (h!24293 (t!159961 rules!3447)))) (toChars!4715 (transformation!3349 (rule!5307 (_1!10691 lt!660389)))))) b_lambda!54879)))

(check-sat (not b!1725473) (not b!1724916) (not d!528441) (not b!1724911) (not b!1725463) (not d!528623) (not b!1724968) (not b!1724965) (not b_next!47797) (not d!528617) (not d!528505) (not tb!102477) (not b!1725556) (not d!528469) (not b_lambda!54869) (not b!1725578) (not d!528663) (not bm!109805) (not d!528679) (not b!1725388) (not b_next!47781) (not b!1725506) (not d!528497) (not d!528463) (not d!528619) (not b!1725546) (not b!1725501) (not b!1725047) (not d!528487) (not b!1725321) (not b!1725610) (not d!528683) (not b!1725393) (not d!528445) (not b!1725599) (not b!1725544) (not b!1725025) (not d!528661) (not b!1725614) b_and!126547 (not b!1725503) (not b!1725024) (not b!1725567) (not d!528467) (not d!528629) (not b_lambda!54879) (not b!1725551) (not b!1725073) (not d!528651) (not d!528443) b_and!126527 (not b!1725399) (not b!1725103) (not bm!109798) (not bm!109827) (not b!1724932) (not b_next!47789) (not b!1725522) b_and!126543 (not d!528673) (not b!1725619) (not d!528685) (not b!1725052) (not b!1725375) (not b!1725600) (not d!528459) (not d!528513) (not b!1724944) (not b!1725405) (not b!1725397) (not b!1725400) (not d!528643) (not b_lambda!54875) b_and!126551 (not b_lambda!54877) (not d!528437) (not d!528689) (not d!528671) (not b!1725584) (not d!528517) (not bm!109808) (not b_lambda!54829) (not tb!102441) (not b!1725472) (not b!1725033) (not b_next!47783) (not b!1724847) (not d!528599) (not b!1725320) (not d!528601) (not d!528697) (not b!1725048) (not b!1725079) (not b_lambda!54835) (not b!1725104) (not d!528667) (not b!1725402) (not b!1725444) (not b!1724970) (not b_lambda!54871) (not b!1725049) (not b!1724928) (not d!528665) (not b!1725072) (not b!1725344) (not b!1725288) b_and!126529 (not b!1725403) (not b!1725026) (not d!528695) (not bm!109829) (not b!1725406) (not b!1725373) (not bm!109809) (not b!1725030) (not b!1725609) (not b_next!47795) (not b!1725548) (not d!528691) (not b!1724919) (not b!1725618) (not b!1725543) (not b!1725563) (not b!1725391) (not b!1725046) (not b!1725404) (not b!1725070) (not b!1725509) (not d!528589) (not b!1725017) (not b_lambda!54831) (not b_next!47787) (not b!1724941) (not b!1724966) (not b!1725464) (not b!1725290) (not b!1725620) (not b!1724913) (not b!1725545) (not b!1725549) (not b!1725586) (not b!1724972) (not d!528509) (not b!1724851) (not b!1724945) (not b!1724910) (not b!1725392) tp_is_empty!7597 (not b!1724964) (not b!1725332) (not b!1724912) (not d!528465) (not b!1725564) (not b!1725085) (not d!528471) b_and!126531 (not b!1724849) (not b!1725617) (not b!1724802) (not b!1725576) (not d!528491) (not tb!102435) (not b!1724939) (not b!1725027) (not b!1725071) (not b!1725396) (not bm!109810) (not b!1725547) (not b!1725583) (not b_next!47779) (not b!1725500) (not b!1725376) (not b!1725613) (not d!528583) (not b!1725524) (not b!1725319) (not d!528489) (not d!528449) (not b_next!47785) (not d!528587) (not b!1724799) (not b!1725585) (not b_lambda!54857) (not b!1725577) (not b!1725076) (not b!1725331) (not d!528631) (not b_lambda!54827) (not b!1725389) (not d!528585) (not b!1724981) (not d!528657) (not bm!109795) (not d!528493) (not d!528675) (not b!1725345) (not b!1725598) (not b!1725502) (not bm!109807) (not b!1725055) (not b!1725615) b_and!126549 b_and!126545 (not b_lambda!54855) (not d!528501) (not b!1725289) (not b!1724930) (not b!1724971) (not b!1725395) (not b!1725398) (not b!1724969) (not b_lambda!54873) (not b!1725426) (not d!528485))
(check-sat (not b_next!47797) (not b_next!47781) b_and!126547 b_and!126527 b_and!126551 (not b_next!47783) b_and!126529 (not b_next!47795) (not b_next!47787) b_and!126531 (not b_next!47779) (not b_next!47785) (not b_next!47789) b_and!126543 b_and!126549 b_and!126545)
