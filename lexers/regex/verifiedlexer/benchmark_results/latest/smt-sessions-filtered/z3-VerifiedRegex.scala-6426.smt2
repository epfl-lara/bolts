; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!335878 () Bool)

(assert start!335878)

(declare-fun b!3608721 () Bool)

(declare-fun b_free!93633 () Bool)

(declare-fun b_next!94337 () Bool)

(assert (=> b!3608721 (= b_free!93633 (not b_next!94337))))

(declare-fun tp!1103296 () Bool)

(declare-fun b_and!262963 () Bool)

(assert (=> b!3608721 (= tp!1103296 b_and!262963)))

(declare-fun b_free!93635 () Bool)

(declare-fun b_next!94339 () Bool)

(assert (=> b!3608721 (= b_free!93635 (not b_next!94339))))

(declare-fun tp!1103285 () Bool)

(declare-fun b_and!262965 () Bool)

(assert (=> b!3608721 (= tp!1103285 b_and!262965)))

(declare-fun b!3608734 () Bool)

(declare-fun b_free!93637 () Bool)

(declare-fun b_next!94341 () Bool)

(assert (=> b!3608734 (= b_free!93637 (not b_next!94341))))

(declare-fun tp!1103294 () Bool)

(declare-fun b_and!262967 () Bool)

(assert (=> b!3608734 (= tp!1103294 b_and!262967)))

(declare-fun b_free!93639 () Bool)

(declare-fun b_next!94343 () Bool)

(assert (=> b!3608734 (= b_free!93639 (not b_next!94343))))

(declare-fun tp!1103295 () Bool)

(declare-fun b_and!262969 () Bool)

(assert (=> b!3608734 (= tp!1103295 b_and!262969)))

(declare-fun b!3608713 () Bool)

(declare-fun b_free!93641 () Bool)

(declare-fun b_next!94345 () Bool)

(assert (=> b!3608713 (= b_free!93641 (not b_next!94345))))

(declare-fun tp!1103288 () Bool)

(declare-fun b_and!262971 () Bool)

(assert (=> b!3608713 (= tp!1103288 b_and!262971)))

(declare-fun b_free!93643 () Bool)

(declare-fun b_next!94347 () Bool)

(assert (=> b!3608713 (= b_free!93643 (not b_next!94347))))

(declare-fun tp!1103286 () Bool)

(declare-fun b_and!262973 () Bool)

(assert (=> b!3608713 (= tp!1103286 b_and!262973)))

(declare-fun b!3608744 () Bool)

(declare-fun b_free!93645 () Bool)

(declare-fun b_next!94349 () Bool)

(assert (=> b!3608744 (= b_free!93645 (not b_next!94349))))

(declare-fun tp!1103291 () Bool)

(declare-fun b_and!262975 () Bool)

(assert (=> b!3608744 (= tp!1103291 b_and!262975)))

(declare-fun b_free!93647 () Bool)

(declare-fun b_next!94351 () Bool)

(assert (=> b!3608744 (= b_free!93647 (not b_next!94351))))

(declare-fun tp!1103290 () Bool)

(declare-fun b_and!262977 () Bool)

(assert (=> b!3608744 (= tp!1103290 b_and!262977)))

(declare-fun b!3608708 () Bool)

(declare-fun res!1459478 () Bool)

(declare-fun e!2233339 () Bool)

(assert (=> b!3608708 (=> res!1459478 e!2233339)))

(declare-datatypes ((List!38101 0))(
  ( (Nil!37977) (Cons!37977 (h!43397 (_ BitVec 16)) (t!293152 List!38101)) )
))
(declare-datatypes ((TokenValue!5862 0))(
  ( (FloatLiteralValue!11724 (text!41479 List!38101)) (TokenValueExt!5861 (__x!23941 Int)) (Broken!29310 (value!180946 List!38101)) (Object!5985) (End!5862) (Def!5862) (Underscore!5862) (Match!5862) (Else!5862) (Error!5862) (Case!5862) (If!5862) (Extends!5862) (Abstract!5862) (Class!5862) (Val!5862) (DelimiterValue!11724 (del!5922 List!38101)) (KeywordValue!5868 (value!180947 List!38101)) (CommentValue!11724 (value!180948 List!38101)) (WhitespaceValue!11724 (value!180949 List!38101)) (IndentationValue!5862 (value!180950 List!38101)) (String!42643) (Int32!5862) (Broken!29311 (value!180951 List!38101)) (Boolean!5863) (Unit!54123) (OperatorValue!5865 (op!5922 List!38101)) (IdentifierValue!11724 (value!180952 List!38101)) (IdentifierValue!11725 (value!180953 List!38101)) (WhitespaceValue!11725 (value!180954 List!38101)) (True!11724) (False!11724) (Broken!29312 (value!180955 List!38101)) (Broken!29313 (value!180956 List!38101)) (True!11725) (RightBrace!5862) (RightBracket!5862) (Colon!5862) (Null!5862) (Comma!5862) (LeftBracket!5862) (False!11725) (LeftBrace!5862) (ImaginaryLiteralValue!5862 (text!41480 List!38101)) (StringLiteralValue!17586 (value!180957 List!38101)) (EOFValue!5862 (value!180958 List!38101)) (IdentValue!5862 (value!180959 List!38101)) (DelimiterValue!11725 (value!180960 List!38101)) (DedentValue!5862 (value!180961 List!38101)) (NewLineValue!5862 (value!180962 List!38101)) (IntegerValue!17586 (value!180963 (_ BitVec 32)) (text!41481 List!38101)) (IntegerValue!17587 (value!180964 Int) (text!41482 List!38101)) (Times!5862) (Or!5862) (Equal!5862) (Minus!5862) (Broken!29314 (value!180965 List!38101)) (And!5862) (Div!5862) (LessEqual!5862) (Mod!5862) (Concat!16253) (Not!5862) (Plus!5862) (SpaceValue!5862 (value!180966 List!38101)) (IntegerValue!17588 (value!180967 Int) (text!41483 List!38101)) (StringLiteralValue!17587 (text!41484 List!38101)) (FloatLiteralValue!11725 (text!41485 List!38101)) (BytesLiteralValue!5862 (value!180968 List!38101)) (CommentValue!11725 (value!180969 List!38101)) (StringLiteralValue!17588 (value!180970 List!38101)) (ErrorTokenValue!5862 (msg!5923 List!38101)) )
))
(declare-datatypes ((C!20968 0))(
  ( (C!20969 (val!12532 Int)) )
))
(declare-datatypes ((Regex!10391 0))(
  ( (ElementMatch!10391 (c!624352 C!20968)) (Concat!16254 (regOne!21294 Regex!10391) (regTwo!21294 Regex!10391)) (EmptyExpr!10391) (Star!10391 (reg!10720 Regex!10391)) (EmptyLang!10391) (Union!10391 (regOne!21295 Regex!10391) (regTwo!21295 Regex!10391)) )
))
(declare-datatypes ((String!42644 0))(
  ( (String!42645 (value!180971 String)) )
))
(declare-datatypes ((List!38102 0))(
  ( (Nil!37978) (Cons!37978 (h!43398 C!20968) (t!293153 List!38102)) )
))
(declare-datatypes ((IArray!23147 0))(
  ( (IArray!23148 (innerList!11631 List!38102)) )
))
(declare-datatypes ((Conc!11571 0))(
  ( (Node!11571 (left!29673 Conc!11571) (right!30003 Conc!11571) (csize!23372 Int) (cheight!11782 Int)) (Leaf!17998 (xs!14773 IArray!23147) (csize!23373 Int)) (Empty!11571) )
))
(declare-datatypes ((BalanceConc!22756 0))(
  ( (BalanceConc!22757 (c!624353 Conc!11571)) )
))
(declare-datatypes ((TokenValueInjection!11152 0))(
  ( (TokenValueInjection!11153 (toValue!7916 Int) (toChars!7775 Int)) )
))
(declare-datatypes ((Rule!11064 0))(
  ( (Rule!11065 (regex!5632 Regex!10391) (tag!6336 String!42644) (isSeparator!5632 Bool) (transformation!5632 TokenValueInjection!11152)) )
))
(declare-datatypes ((List!38103 0))(
  ( (Nil!37979) (Cons!37979 (h!43399 Rule!11064) (t!293154 List!38103)) )
))
(declare-fun rules!3307 () List!38103)

(declare-fun sepAndNonSepRulesDisjointChars!1802 (List!38103 List!38103) Bool)

(assert (=> b!3608708 (= res!1459478 (not (sepAndNonSepRulesDisjointChars!1802 rules!3307 rules!3307)))))

(declare-fun bm!260849 () Bool)

(declare-fun call!260855 () Bool)

(declare-fun call!260856 () List!38102)

(declare-fun lt!1241845 () C!20968)

(declare-fun contains!7327 (List!38102 C!20968) Bool)

(assert (=> bm!260849 (= call!260855 (contains!7327 call!260856 lt!1241845))))

(declare-fun res!1459485 () Bool)

(declare-fun e!2233333 () Bool)

(assert (=> start!335878 (=> (not res!1459485) (not e!2233333))))

(declare-datatypes ((LexerInterface!5221 0))(
  ( (LexerInterfaceExt!5218 (__x!23942 Int)) (Lexer!5219) )
))
(declare-fun thiss!23823 () LexerInterface!5221)

(get-info :version)

(assert (=> start!335878 (= res!1459485 ((_ is Lexer!5219) thiss!23823))))

(assert (=> start!335878 e!2233333))

(declare-fun e!2233341 () Bool)

(assert (=> start!335878 e!2233341))

(declare-fun e!2233348 () Bool)

(assert (=> start!335878 e!2233348))

(assert (=> start!335878 true))

(declare-datatypes ((Token!10630 0))(
  ( (Token!10631 (value!180972 TokenValue!5862) (rule!8380 Rule!11064) (size!28951 Int) (originalCharacters!6346 List!38102)) )
))
(declare-fun token!511 () Token!10630)

(declare-fun e!2233331 () Bool)

(declare-fun inv!51349 (Token!10630) Bool)

(assert (=> start!335878 (and (inv!51349 token!511) e!2233331)))

(declare-fun e!2233330 () Bool)

(assert (=> start!335878 e!2233330))

(declare-fun e!2233345 () Bool)

(assert (=> start!335878 e!2233345))

(declare-fun b!3608709 () Bool)

(declare-datatypes ((Unit!54124 0))(
  ( (Unit!54125) )
))
(declare-fun e!2233327 () Unit!54124)

(declare-fun Unit!54126 () Unit!54124)

(assert (=> b!3608709 (= e!2233327 Unit!54126)))

(declare-fun lt!1241860 () List!38102)

(declare-fun rule!403 () Rule!11064)

(declare-fun lt!1241830 () Unit!54124)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!616 (Regex!10391 List!38102 C!20968) Unit!54124)

(assert (=> b!3608709 (= lt!1241830 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!616 (regex!5632 rule!403) lt!1241860 lt!1241845))))

(assert (=> b!3608709 false))

(declare-fun b!3608710 () Bool)

(declare-fun res!1459479 () Bool)

(assert (=> b!3608710 (=> res!1459479 e!2233339)))

(declare-fun anOtherTypeRule!33 () Rule!11064)

(declare-fun lt!1241849 () C!20968)

(declare-fun usedCharacters!846 (Regex!10391) List!38102)

(assert (=> b!3608710 (= res!1459479 (not (contains!7327 (usedCharacters!846 (regex!5632 anOtherTypeRule!33)) lt!1241849)))))

(declare-fun b!3608711 () Bool)

(declare-fun e!2233343 () Bool)

(declare-fun e!2233325 () Bool)

(assert (=> b!3608711 (= e!2233343 e!2233325)))

(declare-fun res!1459472 () Bool)

(assert (=> b!3608711 (=> (not res!1459472) (not e!2233325))))

(declare-fun lt!1241859 () Rule!11064)

(declare-datatypes ((tuple2!37872 0))(
  ( (tuple2!37873 (_1!22070 Token!10630) (_2!22070 List!38102)) )
))
(declare-fun lt!1241842 () tuple2!37872)

(declare-fun matchR!4960 (Regex!10391 List!38102) Bool)

(declare-fun list!14004 (BalanceConc!22756) List!38102)

(declare-fun charsOf!3646 (Token!10630) BalanceConc!22756)

(assert (=> b!3608711 (= res!1459472 (matchR!4960 (regex!5632 lt!1241859) (list!14004 (charsOf!3646 (_1!22070 lt!1241842)))))))

(declare-datatypes ((Option!7894 0))(
  ( (None!7893) (Some!7893 (v!37631 Rule!11064)) )
))
(declare-fun lt!1241846 () Option!7894)

(declare-fun get!12320 (Option!7894) Rule!11064)

(assert (=> b!3608711 (= lt!1241859 (get!12320 lt!1241846))))

(declare-fun b!3608712 () Bool)

(declare-fun res!1459482 () Bool)

(assert (=> b!3608712 (=> (not res!1459482) (not e!2233333))))

(declare-fun rulesInvariant!4618 (LexerInterface!5221 List!38103) Bool)

(assert (=> b!3608712 (= res!1459482 (rulesInvariant!4618 thiss!23823 rules!3307))))

(declare-fun e!2233322 () Bool)

(assert (=> b!3608713 (= e!2233322 (and tp!1103288 tp!1103286))))

(declare-fun b!3608714 () Bool)

(declare-fun e!2233323 () Unit!54124)

(declare-fun Unit!54127 () Unit!54124)

(assert (=> b!3608714 (= e!2233323 Unit!54127)))

(declare-fun b!3608715 () Bool)

(declare-fun res!1459474 () Bool)

(assert (=> b!3608715 (=> (not res!1459474) (not e!2233333))))

(declare-fun contains!7328 (List!38103 Rule!11064) Bool)

(assert (=> b!3608715 (= res!1459474 (contains!7328 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3608716 () Bool)

(declare-fun e!2233324 () Bool)

(declare-fun e!2233319 () Bool)

(assert (=> b!3608716 (= e!2233324 e!2233319)))

(declare-fun res!1459476 () Bool)

(assert (=> b!3608716 (=> res!1459476 e!2233319)))

(declare-fun lt!1241844 () Int)

(declare-fun lt!1241832 () BalanceConc!22756)

(declare-fun size!28952 (BalanceConc!22756) Int)

(assert (=> b!3608716 (= res!1459476 (<= lt!1241844 (size!28952 lt!1241832)))))

(declare-fun lt!1241850 () Unit!54124)

(declare-fun e!2233342 () Unit!54124)

(assert (=> b!3608716 (= lt!1241850 e!2233342)))

(declare-fun c!624349 () Bool)

(assert (=> b!3608716 (= c!624349 (isSeparator!5632 rule!403))))

(declare-fun lt!1241834 () Unit!54124)

(assert (=> b!3608716 (= lt!1241834 e!2233327)))

(declare-fun c!624350 () Bool)

(declare-fun lt!1241831 () List!38102)

(assert (=> b!3608716 (= c!624350 (not (contains!7327 lt!1241831 lt!1241845)))))

(declare-fun lt!1241847 () List!38102)

(declare-fun head!7588 (List!38102) C!20968)

(assert (=> b!3608716 (= lt!1241845 (head!7588 lt!1241847))))

(declare-fun b!3608717 () Bool)

(declare-fun tp_is_empty!17865 () Bool)

(declare-fun tp!1103283 () Bool)

(assert (=> b!3608717 (= e!2233348 (and tp_is_empty!17865 tp!1103283))))

(declare-fun b!3608718 () Bool)

(declare-fun e!2233334 () Bool)

(assert (=> b!3608718 (= e!2233333 e!2233334)))

(declare-fun res!1459484 () Bool)

(assert (=> b!3608718 (=> (not res!1459484) (not e!2233334))))

(declare-datatypes ((Option!7895 0))(
  ( (None!7894) (Some!7894 (v!37632 tuple2!37872)) )
))
(declare-fun lt!1241829 () Option!7895)

(declare-fun isDefined!6126 (Option!7895) Bool)

(assert (=> b!3608718 (= res!1459484 (isDefined!6126 lt!1241829))))

(declare-fun maxPrefix!2755 (LexerInterface!5221 List!38103 List!38102) Option!7895)

(assert (=> b!3608718 (= lt!1241829 (maxPrefix!2755 thiss!23823 rules!3307 lt!1241860))))

(assert (=> b!3608718 (= lt!1241860 (list!14004 lt!1241832))))

(assert (=> b!3608718 (= lt!1241832 (charsOf!3646 token!511))))

(declare-fun bm!260850 () Bool)

(assert (=> bm!260850 (= call!260856 (usedCharacters!846 (regex!5632 (rule!8380 (_1!22070 lt!1241842)))))))

(declare-fun b!3608719 () Bool)

(declare-fun res!1459470 () Bool)

(assert (=> b!3608719 (=> (not res!1459470) (not e!2233333))))

(assert (=> b!3608719 (= res!1459470 (not (= (isSeparator!5632 anOtherTypeRule!33) (isSeparator!5632 rule!403))))))

(declare-fun b!3608720 () Bool)

(assert (=> b!3608720 (= e!2233342 e!2233323)))

(declare-fun c!624351 () Bool)

(assert (=> b!3608720 (= c!624351 (isSeparator!5632 (rule!8380 (_1!22070 lt!1241842))))))

(declare-fun e!2233335 () Bool)

(assert (=> b!3608721 (= e!2233335 (and tp!1103296 tp!1103285))))

(declare-fun b!3608722 () Bool)

(declare-fun e!2233336 () Bool)

(declare-fun e!2233344 () Bool)

(assert (=> b!3608722 (= e!2233336 (not e!2233344))))

(declare-fun res!1459477 () Bool)

(assert (=> b!3608722 (=> res!1459477 e!2233344)))

(assert (=> b!3608722 (= res!1459477 (not (matchR!4960 (regex!5632 rule!403) lt!1241860)))))

(declare-fun ruleValid!1897 (LexerInterface!5221 Rule!11064) Bool)

(assert (=> b!3608722 (ruleValid!1897 thiss!23823 rule!403)))

(declare-fun lt!1241855 () Unit!54124)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1052 (LexerInterface!5221 Rule!11064 List!38103) Unit!54124)

(assert (=> b!3608722 (= lt!1241855 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1052 thiss!23823 rule!403 rules!3307))))

(declare-fun e!2233347 () Bool)

(declare-fun tp!1103293 () Bool)

(declare-fun b!3608723 () Bool)

(declare-fun inv!51346 (String!42644) Bool)

(declare-fun inv!51350 (TokenValueInjection!11152) Bool)

(assert (=> b!3608723 (= e!2233330 (and tp!1103293 (inv!51346 (tag!6336 rule!403)) (inv!51350 (transformation!5632 rule!403)) e!2233347))))

(declare-fun b!3608724 () Bool)

(declare-fun e!2233340 () Bool)

(assert (=> b!3608724 (= e!2233339 e!2233340)))

(declare-fun res!1459471 () Bool)

(assert (=> b!3608724 (=> res!1459471 e!2233340)))

(declare-fun lt!1241851 () List!38102)

(declare-fun isPrefix!2995 (List!38102 List!38102) Bool)

(assert (=> b!3608724 (= res!1459471 (not (isPrefix!2995 lt!1241847 lt!1241851)))))

(declare-fun ++!9448 (List!38102 List!38102) List!38102)

(assert (=> b!3608724 (isPrefix!2995 lt!1241847 (++!9448 lt!1241847 (_2!22070 lt!1241842)))))

(declare-fun lt!1241848 () Unit!54124)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1916 (List!38102 List!38102) Unit!54124)

(assert (=> b!3608724 (= lt!1241848 (lemmaConcatTwoListThenFirstIsPrefix!1916 lt!1241847 (_2!22070 lt!1241842)))))

(declare-fun lt!1241841 () BalanceConc!22756)

(assert (=> b!3608724 (= lt!1241847 (list!14004 lt!1241841))))

(assert (=> b!3608724 (= lt!1241841 (charsOf!3646 (_1!22070 lt!1241842)))))

(assert (=> b!3608724 e!2233343))

(declare-fun res!1459469 () Bool)

(assert (=> b!3608724 (=> (not res!1459469) (not e!2233343))))

(declare-fun isDefined!6127 (Option!7894) Bool)

(assert (=> b!3608724 (= res!1459469 (isDefined!6127 lt!1241846))))

(declare-fun getRuleFromTag!1238 (LexerInterface!5221 List!38103 String!42644) Option!7894)

(assert (=> b!3608724 (= lt!1241846 (getRuleFromTag!1238 thiss!23823 rules!3307 (tag!6336 (rule!8380 (_1!22070 lt!1241842)))))))

(declare-fun lt!1241858 () Unit!54124)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1238 (LexerInterface!5221 List!38103 List!38102 Token!10630) Unit!54124)

(assert (=> b!3608724 (= lt!1241858 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1238 thiss!23823 rules!3307 lt!1241851 (_1!22070 lt!1241842)))))

(declare-fun lt!1241839 () Option!7895)

(declare-fun get!12321 (Option!7895) tuple2!37872)

(assert (=> b!3608724 (= lt!1241842 (get!12321 lt!1241839))))

(declare-fun suffix!1395 () List!38102)

(declare-fun lt!1241826 () Unit!54124)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!901 (LexerInterface!5221 List!38103 List!38102 List!38102) Unit!54124)

(assert (=> b!3608724 (= lt!1241826 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!901 thiss!23823 rules!3307 lt!1241860 suffix!1395))))

(assert (=> b!3608724 (= lt!1241839 (maxPrefix!2755 thiss!23823 rules!3307 lt!1241851))))

(assert (=> b!3608724 (isPrefix!2995 lt!1241860 lt!1241851)))

(declare-fun lt!1241827 () Unit!54124)

(assert (=> b!3608724 (= lt!1241827 (lemmaConcatTwoListThenFirstIsPrefix!1916 lt!1241860 suffix!1395))))

(assert (=> b!3608724 (= lt!1241851 (++!9448 lt!1241860 suffix!1395))))

(declare-fun b!3608725 () Bool)

(declare-fun tp!1103289 () Bool)

(assert (=> b!3608725 (= e!2233345 (and tp!1103289 (inv!51346 (tag!6336 anOtherTypeRule!33)) (inv!51350 (transformation!5632 anOtherTypeRule!33)) e!2233322))))

(declare-fun b!3608726 () Bool)

(declare-fun res!1459473 () Bool)

(assert (=> b!3608726 (=> (not res!1459473) (not e!2233333))))

(declare-fun isEmpty!22422 (List!38103) Bool)

(assert (=> b!3608726 (= res!1459473 (not (isEmpty!22422 rules!3307)))))

(declare-fun e!2233320 () Bool)

(declare-fun tp!1103284 () Bool)

(declare-fun b!3608727 () Bool)

(declare-fun inv!21 (TokenValue!5862) Bool)

(assert (=> b!3608727 (= e!2233331 (and (inv!21 (value!180972 token!511)) e!2233320 tp!1103284))))

(declare-fun e!2233328 () Bool)

(declare-fun tp!1103292 () Bool)

(declare-fun e!2233346 () Bool)

(declare-fun b!3608728 () Bool)

(assert (=> b!3608728 (= e!2233328 (and tp!1103292 (inv!51346 (tag!6336 (h!43399 rules!3307))) (inv!51350 (transformation!5632 (h!43399 rules!3307))) e!2233346))))

(declare-fun b!3608729 () Bool)

(assert (=> b!3608729 (= e!2233319 (or (isSeparator!5632 rule!403) (not (= suffix!1395 Nil!37978))))))

(assert (=> b!3608729 (contains!7327 lt!1241847 lt!1241849)))

(declare-fun lt!1241843 () Unit!54124)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!10 (List!38102 List!38102 List!38102 List!38102) Unit!54124)

(assert (=> b!3608729 (= lt!1241843 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!10 lt!1241860 suffix!1395 lt!1241847 lt!1241851))))

(declare-fun b!3608730 () Bool)

(assert (=> b!3608730 false))

(declare-fun lt!1241856 () Unit!54124)

(declare-fun call!260854 () Unit!54124)

(assert (=> b!3608730 (= lt!1241856 call!260854)))

(assert (=> b!3608730 (not call!260855)))

(declare-fun lt!1241852 () Unit!54124)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!338 (LexerInterface!5221 List!38103 List!38103 Rule!11064 Rule!11064 C!20968) Unit!54124)

(assert (=> b!3608730 (= lt!1241852 (lemmaNonSepRuleNotContainsCharContainedInASepRule!338 thiss!23823 rules!3307 rules!3307 (rule!8380 (_1!22070 lt!1241842)) rule!403 lt!1241845))))

(declare-fun e!2233329 () Unit!54124)

(declare-fun Unit!54128 () Unit!54124)

(assert (=> b!3608730 (= e!2233329 Unit!54128)))

(declare-fun b!3608731 () Bool)

(assert (=> b!3608731 (= e!2233342 e!2233329)))

(declare-fun c!624348 () Bool)

(assert (=> b!3608731 (= c!624348 (not (isSeparator!5632 (rule!8380 (_1!22070 lt!1241842)))))))

(declare-fun bm!260851 () Bool)

(assert (=> bm!260851 (= call!260854 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!616 (regex!5632 (rule!8380 (_1!22070 lt!1241842))) lt!1241847 lt!1241845))))

(declare-fun b!3608732 () Bool)

(assert (=> b!3608732 (= e!2233344 e!2233339)))

(declare-fun res!1459480 () Bool)

(assert (=> b!3608732 (=> res!1459480 e!2233339)))

(assert (=> b!3608732 (= res!1459480 (contains!7327 lt!1241831 lt!1241849))))

(assert (=> b!3608732 (= lt!1241849 (head!7588 suffix!1395))))

(assert (=> b!3608732 (= lt!1241831 (usedCharacters!846 (regex!5632 rule!403)))))

(declare-fun tp!1103287 () Bool)

(declare-fun b!3608733 () Bool)

(assert (=> b!3608733 (= e!2233320 (and tp!1103287 (inv!51346 (tag!6336 (rule!8380 token!511))) (inv!51350 (transformation!5632 (rule!8380 token!511))) e!2233335))))

(assert (=> b!3608734 (= e!2233346 (and tp!1103294 tp!1103295))))

(declare-fun b!3608735 () Bool)

(assert (=> b!3608735 (= e!2233325 (= (rule!8380 (_1!22070 lt!1241842)) lt!1241859))))

(declare-fun b!3608736 () Bool)

(declare-fun e!2233326 () Bool)

(assert (=> b!3608736 (= e!2233340 e!2233326)))

(declare-fun res!1459486 () Bool)

(assert (=> b!3608736 (=> res!1459486 e!2233326)))

(declare-fun lt!1241824 () TokenValue!5862)

(assert (=> b!3608736 (= res!1459486 (not (= lt!1241839 (Some!7894 (tuple2!37873 (Token!10631 lt!1241824 (rule!8380 (_1!22070 lt!1241842)) lt!1241844 lt!1241847) (_2!22070 lt!1241842))))))))

(assert (=> b!3608736 (= lt!1241844 (size!28952 lt!1241841))))

(declare-fun apply!9138 (TokenValueInjection!11152 BalanceConc!22756) TokenValue!5862)

(assert (=> b!3608736 (= lt!1241824 (apply!9138 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))) lt!1241841))))

(declare-fun lt!1241854 () Unit!54124)

(declare-fun lemmaCharactersSize!685 (Token!10630) Unit!54124)

(assert (=> b!3608736 (= lt!1241854 (lemmaCharactersSize!685 (_1!22070 lt!1241842)))))

(declare-fun lt!1241837 () Unit!54124)

(declare-fun lemmaEqSameImage!823 (TokenValueInjection!11152 BalanceConc!22756 BalanceConc!22756) Unit!54124)

(declare-fun seqFromList!4185 (List!38102) BalanceConc!22756)

(assert (=> b!3608736 (= lt!1241837 (lemmaEqSameImage!823 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))) lt!1241841 (seqFromList!4185 (originalCharacters!6346 (_1!22070 lt!1241842)))))))

(declare-fun lt!1241853 () Unit!54124)

(declare-fun lemmaSemiInverse!1389 (TokenValueInjection!11152 BalanceConc!22756) Unit!54124)

(assert (=> b!3608736 (= lt!1241853 (lemmaSemiInverse!1389 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))) lt!1241841))))

(declare-fun b!3608737 () Bool)

(declare-fun res!1459483 () Bool)

(assert (=> b!3608737 (=> (not res!1459483) (not e!2233333))))

(assert (=> b!3608737 (= res!1459483 (contains!7328 rules!3307 rule!403))))

(declare-fun b!3608738 () Bool)

(declare-fun tp!1103282 () Bool)

(assert (=> b!3608738 (= e!2233341 (and e!2233328 tp!1103282))))

(declare-fun b!3608739 () Bool)

(assert (=> b!3608739 false))

(declare-fun lt!1241833 () Unit!54124)

(assert (=> b!3608739 (= lt!1241833 call!260854)))

(assert (=> b!3608739 (not call!260855)))

(declare-fun lt!1241836 () Unit!54124)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!220 (LexerInterface!5221 List!38103 List!38103 Rule!11064 Rule!11064 C!20968) Unit!54124)

(assert (=> b!3608739 (= lt!1241836 (lemmaSepRuleNotContainsCharContainedInANonSepRule!220 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8380 (_1!22070 lt!1241842)) lt!1241845))))

(declare-fun Unit!54129 () Unit!54124)

(assert (=> b!3608739 (= e!2233323 Unit!54129)))

(declare-fun b!3608740 () Bool)

(declare-fun res!1459465 () Bool)

(assert (=> b!3608740 (=> (not res!1459465) (not e!2233336))))

(declare-fun lt!1241840 () tuple2!37872)

(declare-fun isEmpty!22423 (List!38102) Bool)

(assert (=> b!3608740 (= res!1459465 (isEmpty!22423 (_2!22070 lt!1241840)))))

(declare-fun b!3608741 () Bool)

(declare-fun res!1459475 () Bool)

(assert (=> b!3608741 (=> res!1459475 e!2233340)))

(assert (=> b!3608741 (= res!1459475 (not (matchR!4960 (regex!5632 (rule!8380 (_1!22070 lt!1241842))) lt!1241847)))))

(declare-fun b!3608742 () Bool)

(declare-fun Unit!54130 () Unit!54124)

(assert (=> b!3608742 (= e!2233329 Unit!54130)))

(declare-fun b!3608743 () Bool)

(declare-fun res!1459468 () Bool)

(assert (=> b!3608743 (=> (not res!1459468) (not e!2233336))))

(assert (=> b!3608743 (= res!1459468 (= (rule!8380 token!511) rule!403))))

(assert (=> b!3608744 (= e!2233347 (and tp!1103291 tp!1103290))))

(declare-fun b!3608745 () Bool)

(assert (=> b!3608745 (= e!2233326 e!2233324)))

(declare-fun res!1459467 () Bool)

(assert (=> b!3608745 (=> res!1459467 e!2233324)))

(declare-fun lt!1241857 () Option!7895)

(declare-fun lt!1241835 () List!38102)

(assert (=> b!3608745 (= res!1459467 (or (not (= lt!1241835 (_2!22070 lt!1241842))) (not (= lt!1241857 (Some!7894 (tuple2!37873 (_1!22070 lt!1241842) lt!1241835))))))))

(assert (=> b!3608745 (= (_2!22070 lt!1241842) lt!1241835)))

(declare-fun lt!1241838 () Unit!54124)

(declare-fun lemmaSamePrefixThenSameSuffix!1350 (List!38102 List!38102 List!38102 List!38102 List!38102) Unit!54124)

(assert (=> b!3608745 (= lt!1241838 (lemmaSamePrefixThenSameSuffix!1350 lt!1241847 (_2!22070 lt!1241842) lt!1241847 lt!1241835 lt!1241851))))

(declare-fun getSuffix!1570 (List!38102 List!38102) List!38102)

(assert (=> b!3608745 (= lt!1241835 (getSuffix!1570 lt!1241851 lt!1241847))))

(declare-fun lt!1241828 () TokenValue!5862)

(declare-fun lt!1241825 () Int)

(assert (=> b!3608745 (= lt!1241857 (Some!7894 (tuple2!37873 (Token!10631 lt!1241828 (rule!8380 (_1!22070 lt!1241842)) lt!1241825 lt!1241847) (_2!22070 lt!1241842))))))

(declare-fun maxPrefixOneRule!1899 (LexerInterface!5221 Rule!11064 List!38102) Option!7895)

(assert (=> b!3608745 (= lt!1241857 (maxPrefixOneRule!1899 thiss!23823 (rule!8380 (_1!22070 lt!1241842)) lt!1241851))))

(declare-fun size!28953 (List!38102) Int)

(assert (=> b!3608745 (= lt!1241825 (size!28953 lt!1241847))))

(assert (=> b!3608745 (= lt!1241828 (apply!9138 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))) (seqFromList!4185 lt!1241847)))))

(declare-fun lt!1241823 () Unit!54124)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!971 (LexerInterface!5221 List!38103 List!38102 List!38102 List!38102 Rule!11064) Unit!54124)

(assert (=> b!3608745 (= lt!1241823 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!971 thiss!23823 rules!3307 lt!1241847 lt!1241851 (_2!22070 lt!1241842) (rule!8380 (_1!22070 lt!1241842))))))

(declare-fun b!3608746 () Bool)

(declare-fun Unit!54131 () Unit!54124)

(assert (=> b!3608746 (= e!2233327 Unit!54131)))

(declare-fun b!3608747 () Bool)

(declare-fun res!1459466 () Bool)

(assert (=> b!3608747 (=> res!1459466 e!2233344)))

(assert (=> b!3608747 (= res!1459466 (isEmpty!22423 suffix!1395))))

(declare-fun b!3608748 () Bool)

(assert (=> b!3608748 (= e!2233334 e!2233336)))

(declare-fun res!1459481 () Bool)

(assert (=> b!3608748 (=> (not res!1459481) (not e!2233336))))

(assert (=> b!3608748 (= res!1459481 (= (_1!22070 lt!1241840) token!511))))

(assert (=> b!3608748 (= lt!1241840 (get!12321 lt!1241829))))

(assert (= (and start!335878 res!1459485) b!3608726))

(assert (= (and b!3608726 res!1459473) b!3608712))

(assert (= (and b!3608712 res!1459482) b!3608737))

(assert (= (and b!3608737 res!1459483) b!3608715))

(assert (= (and b!3608715 res!1459474) b!3608719))

(assert (= (and b!3608719 res!1459470) b!3608718))

(assert (= (and b!3608718 res!1459484) b!3608748))

(assert (= (and b!3608748 res!1459481) b!3608740))

(assert (= (and b!3608740 res!1459465) b!3608743))

(assert (= (and b!3608743 res!1459468) b!3608722))

(assert (= (and b!3608722 (not res!1459477)) b!3608747))

(assert (= (and b!3608747 (not res!1459466)) b!3608732))

(assert (= (and b!3608732 (not res!1459480)) b!3608710))

(assert (= (and b!3608710 (not res!1459479)) b!3608708))

(assert (= (and b!3608708 (not res!1459478)) b!3608724))

(assert (= (and b!3608724 res!1459469) b!3608711))

(assert (= (and b!3608711 res!1459472) b!3608735))

(assert (= (and b!3608724 (not res!1459471)) b!3608741))

(assert (= (and b!3608741 (not res!1459475)) b!3608736))

(assert (= (and b!3608736 (not res!1459486)) b!3608745))

(assert (= (and b!3608745 (not res!1459467)) b!3608716))

(assert (= (and b!3608716 c!624350) b!3608709))

(assert (= (and b!3608716 (not c!624350)) b!3608746))

(assert (= (and b!3608716 c!624349) b!3608731))

(assert (= (and b!3608716 (not c!624349)) b!3608720))

(assert (= (and b!3608731 c!624348) b!3608730))

(assert (= (and b!3608731 (not c!624348)) b!3608742))

(assert (= (and b!3608720 c!624351) b!3608739))

(assert (= (and b!3608720 (not c!624351)) b!3608714))

(assert (= (or b!3608730 b!3608739) bm!260851))

(assert (= (or b!3608730 b!3608739) bm!260850))

(assert (= (or b!3608730 b!3608739) bm!260849))

(assert (= (and b!3608716 (not res!1459476)) b!3608729))

(assert (= b!3608728 b!3608734))

(assert (= b!3608738 b!3608728))

(assert (= (and start!335878 ((_ is Cons!37979) rules!3307)) b!3608738))

(assert (= (and start!335878 ((_ is Cons!37978) suffix!1395)) b!3608717))

(assert (= b!3608733 b!3608721))

(assert (= b!3608727 b!3608733))

(assert (= start!335878 b!3608727))

(assert (= b!3608723 b!3608744))

(assert (= start!335878 b!3608723))

(assert (= b!3608725 b!3608713))

(assert (= start!335878 b!3608725))

(declare-fun m!4105991 () Bool)

(assert (=> b!3608727 m!4105991))

(declare-fun m!4105993 () Bool)

(assert (=> b!3608718 m!4105993))

(declare-fun m!4105995 () Bool)

(assert (=> b!3608718 m!4105995))

(declare-fun m!4105997 () Bool)

(assert (=> b!3608718 m!4105997))

(declare-fun m!4105999 () Bool)

(assert (=> b!3608718 m!4105999))

(declare-fun m!4106001 () Bool)

(assert (=> b!3608709 m!4106001))

(declare-fun m!4106003 () Bool)

(assert (=> b!3608748 m!4106003))

(declare-fun m!4106005 () Bool)

(assert (=> b!3608733 m!4106005))

(declare-fun m!4106007 () Bool)

(assert (=> b!3608733 m!4106007))

(declare-fun m!4106009 () Bool)

(assert (=> b!3608710 m!4106009))

(assert (=> b!3608710 m!4106009))

(declare-fun m!4106011 () Bool)

(assert (=> b!3608710 m!4106011))

(declare-fun m!4106013 () Bool)

(assert (=> b!3608747 m!4106013))

(declare-fun m!4106015 () Bool)

(assert (=> b!3608737 m!4106015))

(declare-fun m!4106017 () Bool)

(assert (=> bm!260849 m!4106017))

(declare-fun m!4106019 () Bool)

(assert (=> b!3608711 m!4106019))

(assert (=> b!3608711 m!4106019))

(declare-fun m!4106021 () Bool)

(assert (=> b!3608711 m!4106021))

(assert (=> b!3608711 m!4106021))

(declare-fun m!4106023 () Bool)

(assert (=> b!3608711 m!4106023))

(declare-fun m!4106025 () Bool)

(assert (=> b!3608711 m!4106025))

(declare-fun m!4106027 () Bool)

(assert (=> b!3608724 m!4106027))

(declare-fun m!4106029 () Bool)

(assert (=> b!3608724 m!4106029))

(declare-fun m!4106031 () Bool)

(assert (=> b!3608724 m!4106031))

(declare-fun m!4106033 () Bool)

(assert (=> b!3608724 m!4106033))

(declare-fun m!4106035 () Bool)

(assert (=> b!3608724 m!4106035))

(declare-fun m!4106037 () Bool)

(assert (=> b!3608724 m!4106037))

(declare-fun m!4106039 () Bool)

(assert (=> b!3608724 m!4106039))

(declare-fun m!4106041 () Bool)

(assert (=> b!3608724 m!4106041))

(assert (=> b!3608724 m!4106019))

(assert (=> b!3608724 m!4106035))

(declare-fun m!4106043 () Bool)

(assert (=> b!3608724 m!4106043))

(declare-fun m!4106045 () Bool)

(assert (=> b!3608724 m!4106045))

(declare-fun m!4106047 () Bool)

(assert (=> b!3608724 m!4106047))

(declare-fun m!4106049 () Bool)

(assert (=> b!3608724 m!4106049))

(declare-fun m!4106051 () Bool)

(assert (=> b!3608724 m!4106051))

(declare-fun m!4106053 () Bool)

(assert (=> b!3608724 m!4106053))

(declare-fun m!4106055 () Bool)

(assert (=> b!3608723 m!4106055))

(declare-fun m!4106057 () Bool)

(assert (=> b!3608723 m!4106057))

(declare-fun m!4106059 () Bool)

(assert (=> b!3608726 m!4106059))

(declare-fun m!4106061 () Bool)

(assert (=> b!3608716 m!4106061))

(declare-fun m!4106063 () Bool)

(assert (=> b!3608716 m!4106063))

(declare-fun m!4106065 () Bool)

(assert (=> b!3608716 m!4106065))

(declare-fun m!4106067 () Bool)

(assert (=> b!3608728 m!4106067))

(declare-fun m!4106069 () Bool)

(assert (=> b!3608728 m!4106069))

(declare-fun m!4106071 () Bool)

(assert (=> bm!260851 m!4106071))

(declare-fun m!4106073 () Bool)

(assert (=> b!3608739 m!4106073))

(declare-fun m!4106075 () Bool)

(assert (=> b!3608729 m!4106075))

(declare-fun m!4106077 () Bool)

(assert (=> b!3608729 m!4106077))

(declare-fun m!4106079 () Bool)

(assert (=> b!3608730 m!4106079))

(declare-fun m!4106081 () Bool)

(assert (=> b!3608715 m!4106081))

(declare-fun m!4106083 () Bool)

(assert (=> b!3608740 m!4106083))

(declare-fun m!4106085 () Bool)

(assert (=> b!3608745 m!4106085))

(declare-fun m!4106087 () Bool)

(assert (=> b!3608745 m!4106087))

(declare-fun m!4106089 () Bool)

(assert (=> b!3608745 m!4106089))

(declare-fun m!4106091 () Bool)

(assert (=> b!3608745 m!4106091))

(declare-fun m!4106093 () Bool)

(assert (=> b!3608745 m!4106093))

(assert (=> b!3608745 m!4106087))

(declare-fun m!4106095 () Bool)

(assert (=> b!3608745 m!4106095))

(declare-fun m!4106097 () Bool)

(assert (=> b!3608745 m!4106097))

(declare-fun m!4106099 () Bool)

(assert (=> bm!260850 m!4106099))

(declare-fun m!4106101 () Bool)

(assert (=> b!3608708 m!4106101))

(declare-fun m!4106103 () Bool)

(assert (=> b!3608732 m!4106103))

(declare-fun m!4106105 () Bool)

(assert (=> b!3608732 m!4106105))

(declare-fun m!4106107 () Bool)

(assert (=> b!3608732 m!4106107))

(declare-fun m!4106109 () Bool)

(assert (=> b!3608722 m!4106109))

(declare-fun m!4106111 () Bool)

(assert (=> b!3608722 m!4106111))

(declare-fun m!4106113 () Bool)

(assert (=> b!3608722 m!4106113))

(declare-fun m!4106115 () Bool)

(assert (=> start!335878 m!4106115))

(declare-fun m!4106117 () Bool)

(assert (=> b!3608725 m!4106117))

(declare-fun m!4106119 () Bool)

(assert (=> b!3608725 m!4106119))

(declare-fun m!4106121 () Bool)

(assert (=> b!3608741 m!4106121))

(declare-fun m!4106123 () Bool)

(assert (=> b!3608736 m!4106123))

(declare-fun m!4106125 () Bool)

(assert (=> b!3608736 m!4106125))

(declare-fun m!4106127 () Bool)

(assert (=> b!3608736 m!4106127))

(assert (=> b!3608736 m!4106125))

(declare-fun m!4106129 () Bool)

(assert (=> b!3608736 m!4106129))

(declare-fun m!4106131 () Bool)

(assert (=> b!3608736 m!4106131))

(declare-fun m!4106133 () Bool)

(assert (=> b!3608736 m!4106133))

(declare-fun m!4106135 () Bool)

(assert (=> b!3608712 m!4106135))

(check-sat b_and!262971 (not bm!260849) (not b!3608717) (not b!3608715) b_and!262977 (not b!3608727) (not b!3608733) (not b!3608732) (not b!3608728) tp_is_empty!17865 (not b!3608716) b_and!262969 (not b!3608726) (not b!3608741) (not b!3608748) (not b_next!94341) (not b!3608739) (not b_next!94337) (not b_next!94351) (not b_next!94343) (not b!3608711) (not b!3608710) b_and!262965 (not b!3608740) (not b!3608722) (not b!3608737) (not b!3608745) (not b!3608729) (not b!3608718) (not b!3608738) b_and!262967 (not b!3608724) b_and!262973 (not b!3608709) (not b!3608708) (not b_next!94349) (not b!3608725) (not b_next!94345) (not start!335878) (not b!3608736) (not bm!260850) (not b_next!94339) (not b!3608712) (not b!3608747) b_and!262963 (not b!3608723) (not b!3608730) (not b_next!94347) b_and!262975 (not bm!260851))
(check-sat (not b_next!94341) b_and!262971 (not b_next!94343) b_and!262965 b_and!262977 (not b_next!94339) b_and!262969 b_and!262963 (not b_next!94337) (not b_next!94351) b_and!262967 b_and!262973 (not b_next!94349) (not b_next!94345) (not b_next!94347) b_and!262975)
(get-model)

(declare-fun d!1062771 () Bool)

(declare-fun lt!1241863 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5430 (List!38102) (InoxSet C!20968))

(assert (=> d!1062771 (= lt!1241863 (select (content!5430 lt!1241831) lt!1241849))))

(declare-fun e!2233356 () Bool)

(assert (=> d!1062771 (= lt!1241863 e!2233356)))

(declare-fun res!1459505 () Bool)

(assert (=> d!1062771 (=> (not res!1459505) (not e!2233356))))

(assert (=> d!1062771 (= res!1459505 ((_ is Cons!37978) lt!1241831))))

(assert (=> d!1062771 (= (contains!7327 lt!1241831 lt!1241849) lt!1241863)))

(declare-fun b!3608756 () Bool)

(declare-fun e!2233357 () Bool)

(assert (=> b!3608756 (= e!2233356 e!2233357)))

(declare-fun res!1459504 () Bool)

(assert (=> b!3608756 (=> res!1459504 e!2233357)))

(assert (=> b!3608756 (= res!1459504 (= (h!43398 lt!1241831) lt!1241849))))

(declare-fun b!3608757 () Bool)

(assert (=> b!3608757 (= e!2233357 (contains!7327 (t!293153 lt!1241831) lt!1241849))))

(assert (= (and d!1062771 res!1459505) b!3608756))

(assert (= (and b!3608756 (not res!1459504)) b!3608757))

(declare-fun m!4106143 () Bool)

(assert (=> d!1062771 m!4106143))

(declare-fun m!4106145 () Bool)

(assert (=> d!1062771 m!4106145))

(declare-fun m!4106147 () Bool)

(assert (=> b!3608757 m!4106147))

(assert (=> b!3608732 d!1062771))

(declare-fun d!1062779 () Bool)

(assert (=> d!1062779 (= (head!7588 suffix!1395) (h!43398 suffix!1395))))

(assert (=> b!3608732 d!1062779))

(declare-fun c!624369 () Bool)

(declare-fun call!260865 () List!38102)

(declare-fun call!260867 () List!38102)

(declare-fun call!260868 () List!38102)

(declare-fun bm!260860 () Bool)

(assert (=> bm!260860 (= call!260868 (++!9448 (ite c!624369 call!260867 call!260865) (ite c!624369 call!260865 call!260867)))))

(declare-fun bm!260861 () Bool)

(declare-fun call!260866 () List!38102)

(assert (=> bm!260861 (= call!260867 call!260866)))

(declare-fun bm!260862 () Bool)

(declare-fun c!624370 () Bool)

(assert (=> bm!260862 (= call!260866 (usedCharacters!846 (ite c!624370 (reg!10720 (regex!5632 rule!403)) (ite c!624369 (regOne!21295 (regex!5632 rule!403)) (regTwo!21294 (regex!5632 rule!403))))))))

(declare-fun b!3608787 () Bool)

(declare-fun e!2233373 () List!38102)

(assert (=> b!3608787 (= e!2233373 call!260866)))

(declare-fun b!3608788 () Bool)

(declare-fun e!2233372 () List!38102)

(assert (=> b!3608788 (= e!2233372 (Cons!37978 (c!624352 (regex!5632 rule!403)) Nil!37978))))

(declare-fun b!3608789 () Bool)

(declare-fun e!2233374 () List!38102)

(assert (=> b!3608789 (= e!2233374 call!260868)))

(declare-fun b!3608790 () Bool)

(assert (=> b!3608790 (= e!2233374 call!260868)))

(declare-fun b!3608791 () Bool)

(declare-fun e!2233375 () List!38102)

(assert (=> b!3608791 (= e!2233375 e!2233372)))

(declare-fun c!624368 () Bool)

(assert (=> b!3608791 (= c!624368 ((_ is ElementMatch!10391) (regex!5632 rule!403)))))

(declare-fun b!3608792 () Bool)

(assert (=> b!3608792 (= c!624370 ((_ is Star!10391) (regex!5632 rule!403)))))

(assert (=> b!3608792 (= e!2233372 e!2233373)))

(declare-fun bm!260863 () Bool)

(assert (=> bm!260863 (= call!260865 (usedCharacters!846 (ite c!624369 (regTwo!21295 (regex!5632 rule!403)) (regOne!21294 (regex!5632 rule!403)))))))

(declare-fun b!3608793 () Bool)

(assert (=> b!3608793 (= e!2233375 Nil!37978)))

(declare-fun b!3608786 () Bool)

(assert (=> b!3608786 (= e!2233373 e!2233374)))

(assert (=> b!3608786 (= c!624369 ((_ is Union!10391) (regex!5632 rule!403)))))

(declare-fun d!1062783 () Bool)

(declare-fun c!624371 () Bool)

(assert (=> d!1062783 (= c!624371 (or ((_ is EmptyExpr!10391) (regex!5632 rule!403)) ((_ is EmptyLang!10391) (regex!5632 rule!403))))))

(assert (=> d!1062783 (= (usedCharacters!846 (regex!5632 rule!403)) e!2233375)))

(assert (= (and d!1062783 c!624371) b!3608793))

(assert (= (and d!1062783 (not c!624371)) b!3608791))

(assert (= (and b!3608791 c!624368) b!3608788))

(assert (= (and b!3608791 (not c!624368)) b!3608792))

(assert (= (and b!3608792 c!624370) b!3608787))

(assert (= (and b!3608792 (not c!624370)) b!3608786))

(assert (= (and b!3608786 c!624369) b!3608790))

(assert (= (and b!3608786 (not c!624369)) b!3608789))

(assert (= (or b!3608790 b!3608789) bm!260861))

(assert (= (or b!3608790 b!3608789) bm!260863))

(assert (= (or b!3608790 b!3608789) bm!260860))

(assert (= (or b!3608787 bm!260861) bm!260862))

(declare-fun m!4106163 () Bool)

(assert (=> bm!260860 m!4106163))

(declare-fun m!4106165 () Bool)

(assert (=> bm!260862 m!4106165))

(declare-fun m!4106167 () Bool)

(assert (=> bm!260863 m!4106167))

(assert (=> b!3608732 d!1062783))

(declare-fun b!3608824 () Bool)

(declare-fun e!2233399 () Bool)

(declare-fun lt!1241878 () Bool)

(assert (=> b!3608824 (= e!2233399 (not lt!1241878))))

(declare-fun b!3608825 () Bool)

(declare-fun res!1459526 () Bool)

(declare-fun e!2233395 () Bool)

(assert (=> b!3608825 (=> res!1459526 e!2233395)))

(declare-fun e!2233397 () Bool)

(assert (=> b!3608825 (= res!1459526 e!2233397)))

(declare-fun res!1459524 () Bool)

(assert (=> b!3608825 (=> (not res!1459524) (not e!2233397))))

(assert (=> b!3608825 (= res!1459524 lt!1241878)))

(declare-fun b!3608826 () Bool)

(declare-fun res!1459528 () Bool)

(assert (=> b!3608826 (=> res!1459528 e!2233395)))

(assert (=> b!3608826 (= res!1459528 (not ((_ is ElementMatch!10391) (regex!5632 lt!1241859))))))

(assert (=> b!3608826 (= e!2233399 e!2233395)))

(declare-fun d!1062791 () Bool)

(declare-fun e!2233393 () Bool)

(assert (=> d!1062791 e!2233393))

(declare-fun c!624380 () Bool)

(assert (=> d!1062791 (= c!624380 ((_ is EmptyExpr!10391) (regex!5632 lt!1241859)))))

(declare-fun e!2233398 () Bool)

(assert (=> d!1062791 (= lt!1241878 e!2233398)))

(declare-fun c!624379 () Bool)

(assert (=> d!1062791 (= c!624379 (isEmpty!22423 (list!14004 (charsOf!3646 (_1!22070 lt!1241842)))))))

(declare-fun validRegex!4759 (Regex!10391) Bool)

(assert (=> d!1062791 (validRegex!4759 (regex!5632 lt!1241859))))

(assert (=> d!1062791 (= (matchR!4960 (regex!5632 lt!1241859) (list!14004 (charsOf!3646 (_1!22070 lt!1241842)))) lt!1241878)))

(declare-fun b!3608827 () Bool)

(assert (=> b!3608827 (= e!2233397 (= (head!7588 (list!14004 (charsOf!3646 (_1!22070 lt!1241842)))) (c!624352 (regex!5632 lt!1241859))))))

(declare-fun bm!260866 () Bool)

(declare-fun call!260871 () Bool)

(assert (=> bm!260866 (= call!260871 (isEmpty!22423 (list!14004 (charsOf!3646 (_1!22070 lt!1241842)))))))

(declare-fun b!3608828 () Bool)

(declare-fun res!1459529 () Bool)

(declare-fun e!2233394 () Bool)

(assert (=> b!3608828 (=> res!1459529 e!2233394)))

(declare-fun tail!5595 (List!38102) List!38102)

(assert (=> b!3608828 (= res!1459529 (not (isEmpty!22423 (tail!5595 (list!14004 (charsOf!3646 (_1!22070 lt!1241842)))))))))

(declare-fun b!3608829 () Bool)

(declare-fun res!1459525 () Bool)

(assert (=> b!3608829 (=> (not res!1459525) (not e!2233397))))

(assert (=> b!3608829 (= res!1459525 (not call!260871))))

(declare-fun b!3608830 () Bool)

(assert (=> b!3608830 (= e!2233393 (= lt!1241878 call!260871))))

(declare-fun b!3608831 () Bool)

(declare-fun e!2233396 () Bool)

(assert (=> b!3608831 (= e!2233396 e!2233394)))

(declare-fun res!1459523 () Bool)

(assert (=> b!3608831 (=> res!1459523 e!2233394)))

(assert (=> b!3608831 (= res!1459523 call!260871)))

(declare-fun b!3608832 () Bool)

(declare-fun derivativeStep!3146 (Regex!10391 C!20968) Regex!10391)

(assert (=> b!3608832 (= e!2233398 (matchR!4960 (derivativeStep!3146 (regex!5632 lt!1241859) (head!7588 (list!14004 (charsOf!3646 (_1!22070 lt!1241842))))) (tail!5595 (list!14004 (charsOf!3646 (_1!22070 lt!1241842))))))))

(declare-fun b!3608833 () Bool)

(declare-fun nullable!3597 (Regex!10391) Bool)

(assert (=> b!3608833 (= e!2233398 (nullable!3597 (regex!5632 lt!1241859)))))

(declare-fun b!3608834 () Bool)

(assert (=> b!3608834 (= e!2233395 e!2233396)))

(declare-fun res!1459527 () Bool)

(assert (=> b!3608834 (=> (not res!1459527) (not e!2233396))))

(assert (=> b!3608834 (= res!1459527 (not lt!1241878))))

(declare-fun b!3608835 () Bool)

(assert (=> b!3608835 (= e!2233393 e!2233399)))

(declare-fun c!624378 () Bool)

(assert (=> b!3608835 (= c!624378 ((_ is EmptyLang!10391) (regex!5632 lt!1241859)))))

(declare-fun b!3608836 () Bool)

(declare-fun res!1459522 () Bool)

(assert (=> b!3608836 (=> (not res!1459522) (not e!2233397))))

(assert (=> b!3608836 (= res!1459522 (isEmpty!22423 (tail!5595 (list!14004 (charsOf!3646 (_1!22070 lt!1241842))))))))

(declare-fun b!3608837 () Bool)

(assert (=> b!3608837 (= e!2233394 (not (= (head!7588 (list!14004 (charsOf!3646 (_1!22070 lt!1241842)))) (c!624352 (regex!5632 lt!1241859)))))))

(assert (= (and d!1062791 c!624379) b!3608833))

(assert (= (and d!1062791 (not c!624379)) b!3608832))

(assert (= (and d!1062791 c!624380) b!3608830))

(assert (= (and d!1062791 (not c!624380)) b!3608835))

(assert (= (and b!3608835 c!624378) b!3608824))

(assert (= (and b!3608835 (not c!624378)) b!3608826))

(assert (= (and b!3608826 (not res!1459528)) b!3608825))

(assert (= (and b!3608825 res!1459524) b!3608829))

(assert (= (and b!3608829 res!1459525) b!3608836))

(assert (= (and b!3608836 res!1459522) b!3608827))

(assert (= (and b!3608825 (not res!1459526)) b!3608834))

(assert (= (and b!3608834 res!1459527) b!3608831))

(assert (= (and b!3608831 (not res!1459523)) b!3608828))

(assert (= (and b!3608828 (not res!1459529)) b!3608837))

(assert (= (or b!3608830 b!3608829 b!3608831) bm!260866))

(declare-fun m!4106173 () Bool)

(assert (=> b!3608833 m!4106173))

(assert (=> b!3608836 m!4106021))

(declare-fun m!4106175 () Bool)

(assert (=> b!3608836 m!4106175))

(assert (=> b!3608836 m!4106175))

(declare-fun m!4106177 () Bool)

(assert (=> b!3608836 m!4106177))

(assert (=> bm!260866 m!4106021))

(declare-fun m!4106179 () Bool)

(assert (=> bm!260866 m!4106179))

(assert (=> b!3608828 m!4106021))

(assert (=> b!3608828 m!4106175))

(assert (=> b!3608828 m!4106175))

(assert (=> b!3608828 m!4106177))

(assert (=> d!1062791 m!4106021))

(assert (=> d!1062791 m!4106179))

(declare-fun m!4106181 () Bool)

(assert (=> d!1062791 m!4106181))

(assert (=> b!3608827 m!4106021))

(declare-fun m!4106183 () Bool)

(assert (=> b!3608827 m!4106183))

(assert (=> b!3608832 m!4106021))

(assert (=> b!3608832 m!4106183))

(assert (=> b!3608832 m!4106183))

(declare-fun m!4106185 () Bool)

(assert (=> b!3608832 m!4106185))

(assert (=> b!3608832 m!4106021))

(assert (=> b!3608832 m!4106175))

(assert (=> b!3608832 m!4106185))

(assert (=> b!3608832 m!4106175))

(declare-fun m!4106187 () Bool)

(assert (=> b!3608832 m!4106187))

(assert (=> b!3608837 m!4106021))

(assert (=> b!3608837 m!4106183))

(assert (=> b!3608711 d!1062791))

(declare-fun d!1062795 () Bool)

(declare-fun list!14006 (Conc!11571) List!38102)

(assert (=> d!1062795 (= (list!14004 (charsOf!3646 (_1!22070 lt!1241842))) (list!14006 (c!624353 (charsOf!3646 (_1!22070 lt!1241842)))))))

(declare-fun bs!570789 () Bool)

(assert (= bs!570789 d!1062795))

(declare-fun m!4106189 () Bool)

(assert (=> bs!570789 m!4106189))

(assert (=> b!3608711 d!1062795))

(declare-fun d!1062797 () Bool)

(declare-fun lt!1241881 () BalanceConc!22756)

(assert (=> d!1062797 (= (list!14004 lt!1241881) (originalCharacters!6346 (_1!22070 lt!1241842)))))

(declare-fun dynLambda!16424 (Int TokenValue!5862) BalanceConc!22756)

(assert (=> d!1062797 (= lt!1241881 (dynLambda!16424 (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) (value!180972 (_1!22070 lt!1241842))))))

(assert (=> d!1062797 (= (charsOf!3646 (_1!22070 lt!1241842)) lt!1241881)))

(declare-fun b_lambda!106777 () Bool)

(assert (=> (not b_lambda!106777) (not d!1062797)))

(declare-fun tb!206825 () Bool)

(declare-fun t!293164 () Bool)

(assert (=> (and b!3608721 (= (toChars!7775 (transformation!5632 (rule!8380 token!511))) (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293164) tb!206825))

(declare-fun b!3608846 () Bool)

(declare-fun e!2233404 () Bool)

(declare-fun tp!1103299 () Bool)

(declare-fun inv!51353 (Conc!11571) Bool)

(assert (=> b!3608846 (= e!2233404 (and (inv!51353 (c!624353 (dynLambda!16424 (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) (value!180972 (_1!22070 lt!1241842))))) tp!1103299))))

(declare-fun result!252068 () Bool)

(declare-fun inv!51354 (BalanceConc!22756) Bool)

(assert (=> tb!206825 (= result!252068 (and (inv!51354 (dynLambda!16424 (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) (value!180972 (_1!22070 lt!1241842)))) e!2233404))))

(assert (= tb!206825 b!3608846))

(declare-fun m!4106191 () Bool)

(assert (=> b!3608846 m!4106191))

(declare-fun m!4106193 () Bool)

(assert (=> tb!206825 m!4106193))

(assert (=> d!1062797 t!293164))

(declare-fun b_and!262987 () Bool)

(assert (= b_and!262965 (and (=> t!293164 result!252068) b_and!262987)))

(declare-fun t!293166 () Bool)

(declare-fun tb!206827 () Bool)

(assert (=> (and b!3608734 (= (toChars!7775 (transformation!5632 (h!43399 rules!3307))) (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293166) tb!206827))

(declare-fun result!252072 () Bool)

(assert (= result!252072 result!252068))

(assert (=> d!1062797 t!293166))

(declare-fun b_and!262989 () Bool)

(assert (= b_and!262969 (and (=> t!293166 result!252072) b_and!262989)))

(declare-fun t!293168 () Bool)

(declare-fun tb!206829 () Bool)

(assert (=> (and b!3608713 (= (toChars!7775 (transformation!5632 anOtherTypeRule!33)) (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293168) tb!206829))

(declare-fun result!252074 () Bool)

(assert (= result!252074 result!252068))

(assert (=> d!1062797 t!293168))

(declare-fun b_and!262991 () Bool)

(assert (= b_and!262973 (and (=> t!293168 result!252074) b_and!262991)))

(declare-fun t!293170 () Bool)

(declare-fun tb!206831 () Bool)

(assert (=> (and b!3608744 (= (toChars!7775 (transformation!5632 rule!403)) (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293170) tb!206831))

(declare-fun result!252076 () Bool)

(assert (= result!252076 result!252068))

(assert (=> d!1062797 t!293170))

(declare-fun b_and!262993 () Bool)

(assert (= b_and!262977 (and (=> t!293170 result!252076) b_and!262993)))

(declare-fun m!4106195 () Bool)

(assert (=> d!1062797 m!4106195))

(declare-fun m!4106197 () Bool)

(assert (=> d!1062797 m!4106197))

(assert (=> b!3608711 d!1062797))

(declare-fun d!1062799 () Bool)

(assert (=> d!1062799 (= (get!12320 lt!1241846) (v!37631 lt!1241846))))

(assert (=> b!3608711 d!1062799))

(declare-fun d!1062801 () Bool)

(assert (=> d!1062801 (not (matchR!4960 (regex!5632 (rule!8380 (_1!22070 lt!1241842))) lt!1241847))))

(declare-fun lt!1241899 () Unit!54124)

(declare-fun choose!21083 (Regex!10391 List!38102 C!20968) Unit!54124)

(assert (=> d!1062801 (= lt!1241899 (choose!21083 (regex!5632 (rule!8380 (_1!22070 lt!1241842))) lt!1241847 lt!1241845))))

(assert (=> d!1062801 (validRegex!4759 (regex!5632 (rule!8380 (_1!22070 lt!1241842))))))

(assert (=> d!1062801 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!616 (regex!5632 (rule!8380 (_1!22070 lt!1241842))) lt!1241847 lt!1241845) lt!1241899)))

(declare-fun bs!570790 () Bool)

(assert (= bs!570790 d!1062801))

(assert (=> bs!570790 m!4106121))

(declare-fun m!4106219 () Bool)

(assert (=> bs!570790 m!4106219))

(declare-fun m!4106223 () Bool)

(assert (=> bs!570790 m!4106223))

(assert (=> bm!260851 d!1062801))

(declare-fun d!1062803 () Bool)

(declare-fun res!1459553 () Bool)

(declare-fun e!2233417 () Bool)

(assert (=> d!1062803 (=> (not res!1459553) (not e!2233417))))

(declare-fun rulesValid!2151 (LexerInterface!5221 List!38103) Bool)

(assert (=> d!1062803 (= res!1459553 (rulesValid!2151 thiss!23823 rules!3307))))

(assert (=> d!1062803 (= (rulesInvariant!4618 thiss!23823 rules!3307) e!2233417)))

(declare-fun b!3608872 () Bool)

(declare-datatypes ((List!38104 0))(
  ( (Nil!37980) (Cons!37980 (h!43400 String!42644) (t!293275 List!38104)) )
))
(declare-fun noDuplicateTag!2147 (LexerInterface!5221 List!38103 List!38104) Bool)

(assert (=> b!3608872 (= e!2233417 (noDuplicateTag!2147 thiss!23823 rules!3307 Nil!37980))))

(assert (= (and d!1062803 res!1459553) b!3608872))

(declare-fun m!4106247 () Bool)

(assert (=> d!1062803 m!4106247))

(declare-fun m!4106249 () Bool)

(assert (=> b!3608872 m!4106249))

(assert (=> b!3608712 d!1062803))

(declare-fun d!1062807 () Bool)

(declare-fun lt!1241904 () Bool)

(declare-fun content!5433 (List!38103) (InoxSet Rule!11064))

(assert (=> d!1062807 (= lt!1241904 (select (content!5433 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2233436 () Bool)

(assert (=> d!1062807 (= lt!1241904 e!2233436)))

(declare-fun res!1459575 () Bool)

(assert (=> d!1062807 (=> (not res!1459575) (not e!2233436))))

(assert (=> d!1062807 (= res!1459575 ((_ is Cons!37979) rules!3307))))

(assert (=> d!1062807 (= (contains!7328 rules!3307 anOtherTypeRule!33) lt!1241904)))

(declare-fun b!3608905 () Bool)

(declare-fun e!2233437 () Bool)

(assert (=> b!3608905 (= e!2233436 e!2233437)))

(declare-fun res!1459574 () Bool)

(assert (=> b!3608905 (=> res!1459574 e!2233437)))

(assert (=> b!3608905 (= res!1459574 (= (h!43399 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3608906 () Bool)

(assert (=> b!3608906 (= e!2233437 (contains!7328 (t!293154 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1062807 res!1459575) b!3608905))

(assert (= (and b!3608905 (not res!1459574)) b!3608906))

(declare-fun m!4106251 () Bool)

(assert (=> d!1062807 m!4106251))

(declare-fun m!4106253 () Bool)

(assert (=> d!1062807 m!4106253))

(declare-fun m!4106255 () Bool)

(assert (=> b!3608906 m!4106255))

(assert (=> b!3608715 d!1062807))

(declare-fun d!1062809 () Bool)

(declare-fun lt!1241908 () Int)

(assert (=> d!1062809 (= lt!1241908 (size!28953 (list!14004 lt!1241832)))))

(declare-fun size!28954 (Conc!11571) Int)

(assert (=> d!1062809 (= lt!1241908 (size!28954 (c!624353 lt!1241832)))))

(assert (=> d!1062809 (= (size!28952 lt!1241832) lt!1241908)))

(declare-fun bs!570791 () Bool)

(assert (= bs!570791 d!1062809))

(assert (=> bs!570791 m!4105997))

(assert (=> bs!570791 m!4105997))

(declare-fun m!4106273 () Bool)

(assert (=> bs!570791 m!4106273))

(declare-fun m!4106275 () Bool)

(assert (=> bs!570791 m!4106275))

(assert (=> b!3608716 d!1062809))

(declare-fun d!1062813 () Bool)

(declare-fun lt!1241909 () Bool)

(assert (=> d!1062813 (= lt!1241909 (select (content!5430 lt!1241831) lt!1241845))))

(declare-fun e!2233445 () Bool)

(assert (=> d!1062813 (= lt!1241909 e!2233445)))

(declare-fun res!1459585 () Bool)

(assert (=> d!1062813 (=> (not res!1459585) (not e!2233445))))

(assert (=> d!1062813 (= res!1459585 ((_ is Cons!37978) lt!1241831))))

(assert (=> d!1062813 (= (contains!7327 lt!1241831 lt!1241845) lt!1241909)))

(declare-fun b!3608921 () Bool)

(declare-fun e!2233446 () Bool)

(assert (=> b!3608921 (= e!2233445 e!2233446)))

(declare-fun res!1459584 () Bool)

(assert (=> b!3608921 (=> res!1459584 e!2233446)))

(assert (=> b!3608921 (= res!1459584 (= (h!43398 lt!1241831) lt!1241845))))

(declare-fun b!3608922 () Bool)

(assert (=> b!3608922 (= e!2233446 (contains!7327 (t!293153 lt!1241831) lt!1241845))))

(assert (= (and d!1062813 res!1459585) b!3608921))

(assert (= (and b!3608921 (not res!1459584)) b!3608922))

(assert (=> d!1062813 m!4106143))

(declare-fun m!4106277 () Bool)

(assert (=> d!1062813 m!4106277))

(declare-fun m!4106279 () Bool)

(assert (=> b!3608922 m!4106279))

(assert (=> b!3608716 d!1062813))

(declare-fun d!1062815 () Bool)

(assert (=> d!1062815 (= (head!7588 lt!1241847) (h!43398 lt!1241847))))

(assert (=> b!3608716 d!1062815))

(declare-fun d!1062817 () Bool)

(assert (=> d!1062817 (= (inv!51346 (tag!6336 (rule!8380 token!511))) (= (mod (str.len (value!180971 (tag!6336 (rule!8380 token!511)))) 2) 0))))

(assert (=> b!3608733 d!1062817))

(declare-fun d!1062821 () Bool)

(declare-fun res!1459592 () Bool)

(declare-fun e!2233456 () Bool)

(assert (=> d!1062821 (=> (not res!1459592) (not e!2233456))))

(declare-fun semiInverseModEq!2395 (Int Int) Bool)

(assert (=> d!1062821 (= res!1459592 (semiInverseModEq!2395 (toChars!7775 (transformation!5632 (rule!8380 token!511))) (toValue!7916 (transformation!5632 (rule!8380 token!511)))))))

(assert (=> d!1062821 (= (inv!51350 (transformation!5632 (rule!8380 token!511))) e!2233456)))

(declare-fun b!3608934 () Bool)

(declare-fun equivClasses!2294 (Int Int) Bool)

(assert (=> b!3608934 (= e!2233456 (equivClasses!2294 (toChars!7775 (transformation!5632 (rule!8380 token!511))) (toValue!7916 (transformation!5632 (rule!8380 token!511)))))))

(assert (= (and d!1062821 res!1459592) b!3608934))

(declare-fun m!4106291 () Bool)

(assert (=> d!1062821 m!4106291))

(declare-fun m!4106293 () Bool)

(assert (=> b!3608934 m!4106293))

(assert (=> b!3608733 d!1062821))

(declare-fun d!1062827 () Bool)

(declare-fun res!1459599 () Bool)

(declare-fun e!2233471 () Bool)

(assert (=> d!1062827 (=> res!1459599 e!2233471)))

(assert (=> d!1062827 (= res!1459599 (not ((_ is Cons!37979) rules!3307)))))

(assert (=> d!1062827 (= (sepAndNonSepRulesDisjointChars!1802 rules!3307 rules!3307) e!2233471)))

(declare-fun b!3608957 () Bool)

(declare-fun e!2233472 () Bool)

(assert (=> b!3608957 (= e!2233471 e!2233472)))

(declare-fun res!1459600 () Bool)

(assert (=> b!3608957 (=> (not res!1459600) (not e!2233472))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!820 (Rule!11064 List!38103) Bool)

(assert (=> b!3608957 (= res!1459600 (ruleDisjointCharsFromAllFromOtherType!820 (h!43399 rules!3307) rules!3307))))

(declare-fun b!3608958 () Bool)

(assert (=> b!3608958 (= e!2233472 (sepAndNonSepRulesDisjointChars!1802 rules!3307 (t!293154 rules!3307)))))

(assert (= (and d!1062827 (not res!1459599)) b!3608957))

(assert (= (and b!3608957 res!1459600) b!3608958))

(declare-fun m!4106301 () Bool)

(assert (=> b!3608957 m!4106301))

(declare-fun m!4106303 () Bool)

(assert (=> b!3608958 m!4106303))

(assert (=> b!3608708 d!1062827))

(declare-fun d!1062833 () Bool)

(assert (=> d!1062833 (= (get!12321 lt!1241829) (v!37632 lt!1241829))))

(assert (=> b!3608748 d!1062833))

(declare-fun d!1062835 () Bool)

(assert (=> d!1062835 (= (inv!51346 (tag!6336 (h!43399 rules!3307))) (= (mod (str.len (value!180971 (tag!6336 (h!43399 rules!3307)))) 2) 0))))

(assert (=> b!3608728 d!1062835))

(declare-fun d!1062837 () Bool)

(declare-fun res!1459601 () Bool)

(declare-fun e!2233473 () Bool)

(assert (=> d!1062837 (=> (not res!1459601) (not e!2233473))))

(assert (=> d!1062837 (= res!1459601 (semiInverseModEq!2395 (toChars!7775 (transformation!5632 (h!43399 rules!3307))) (toValue!7916 (transformation!5632 (h!43399 rules!3307)))))))

(assert (=> d!1062837 (= (inv!51350 (transformation!5632 (h!43399 rules!3307))) e!2233473)))

(declare-fun b!3608959 () Bool)

(assert (=> b!3608959 (= e!2233473 (equivClasses!2294 (toChars!7775 (transformation!5632 (h!43399 rules!3307))) (toValue!7916 (transformation!5632 (h!43399 rules!3307)))))))

(assert (= (and d!1062837 res!1459601) b!3608959))

(declare-fun m!4106305 () Bool)

(assert (=> d!1062837 m!4106305))

(declare-fun m!4106307 () Bool)

(assert (=> b!3608959 m!4106307))

(assert (=> b!3608728 d!1062837))

(declare-fun d!1062839 () Bool)

(declare-fun lt!1241916 () Bool)

(assert (=> d!1062839 (= lt!1241916 (select (content!5430 call!260856) lt!1241845))))

(declare-fun e!2233474 () Bool)

(assert (=> d!1062839 (= lt!1241916 e!2233474)))

(declare-fun res!1459603 () Bool)

(assert (=> d!1062839 (=> (not res!1459603) (not e!2233474))))

(assert (=> d!1062839 (= res!1459603 ((_ is Cons!37978) call!260856))))

(assert (=> d!1062839 (= (contains!7327 call!260856 lt!1241845) lt!1241916)))

(declare-fun b!3608960 () Bool)

(declare-fun e!2233475 () Bool)

(assert (=> b!3608960 (= e!2233474 e!2233475)))

(declare-fun res!1459602 () Bool)

(assert (=> b!3608960 (=> res!1459602 e!2233475)))

(assert (=> b!3608960 (= res!1459602 (= (h!43398 call!260856) lt!1241845))))

(declare-fun b!3608961 () Bool)

(assert (=> b!3608961 (= e!2233475 (contains!7327 (t!293153 call!260856) lt!1241845))))

(assert (= (and d!1062839 res!1459603) b!3608960))

(assert (= (and b!3608960 (not res!1459602)) b!3608961))

(declare-fun m!4106309 () Bool)

(assert (=> d!1062839 m!4106309))

(declare-fun m!4106311 () Bool)

(assert (=> d!1062839 m!4106311))

(declare-fun m!4106313 () Bool)

(assert (=> b!3608961 m!4106313))

(assert (=> bm!260849 d!1062839))

(declare-fun d!1062841 () Bool)

(assert (=> d!1062841 (= (isEmpty!22422 rules!3307) ((_ is Nil!37979) rules!3307))))

(assert (=> b!3608726 d!1062841))

(declare-fun d!1062843 () Bool)

(assert (=> d!1062843 (= (isEmpty!22423 suffix!1395) ((_ is Nil!37978) suffix!1395))))

(assert (=> b!3608747 d!1062843))

(declare-fun b!3608987 () Bool)

(declare-fun e!2233493 () Bool)

(declare-fun e!2233494 () Bool)

(assert (=> b!3608987 (= e!2233493 e!2233494)))

(declare-fun c!624410 () Bool)

(assert (=> b!3608987 (= c!624410 ((_ is IntegerValue!17587) (value!180972 token!511)))))

(declare-fun b!3608988 () Bool)

(declare-fun inv!16 (TokenValue!5862) Bool)

(assert (=> b!3608988 (= e!2233493 (inv!16 (value!180972 token!511)))))

(declare-fun b!3608989 () Bool)

(declare-fun inv!17 (TokenValue!5862) Bool)

(assert (=> b!3608989 (= e!2233494 (inv!17 (value!180972 token!511)))))

(declare-fun d!1062851 () Bool)

(declare-fun c!624411 () Bool)

(assert (=> d!1062851 (= c!624411 ((_ is IntegerValue!17586) (value!180972 token!511)))))

(assert (=> d!1062851 (= (inv!21 (value!180972 token!511)) e!2233493)))

(declare-fun b!3608990 () Bool)

(declare-fun res!1459613 () Bool)

(declare-fun e!2233495 () Bool)

(assert (=> b!3608990 (=> res!1459613 e!2233495)))

(assert (=> b!3608990 (= res!1459613 (not ((_ is IntegerValue!17588) (value!180972 token!511))))))

(assert (=> b!3608990 (= e!2233494 e!2233495)))

(declare-fun b!3608991 () Bool)

(declare-fun inv!15 (TokenValue!5862) Bool)

(assert (=> b!3608991 (= e!2233495 (inv!15 (value!180972 token!511)))))

(assert (= (and d!1062851 c!624411) b!3608988))

(assert (= (and d!1062851 (not c!624411)) b!3608987))

(assert (= (and b!3608987 c!624410) b!3608989))

(assert (= (and b!3608987 (not c!624410)) b!3608990))

(assert (= (and b!3608990 (not res!1459613)) b!3608991))

(declare-fun m!4106333 () Bool)

(assert (=> b!3608988 m!4106333))

(declare-fun m!4106335 () Bool)

(assert (=> b!3608989 m!4106335))

(declare-fun m!4106337 () Bool)

(assert (=> b!3608991 m!4106337))

(assert (=> b!3608727 d!1062851))

(declare-fun d!1062859 () Bool)

(assert (=> d!1062859 (not (contains!7327 (usedCharacters!846 (regex!5632 (rule!8380 (_1!22070 lt!1241842)))) lt!1241845))))

(declare-fun lt!1241922 () Unit!54124)

(declare-fun choose!21085 (LexerInterface!5221 List!38103 List!38103 Rule!11064 Rule!11064 C!20968) Unit!54124)

(assert (=> d!1062859 (= lt!1241922 (choose!21085 thiss!23823 rules!3307 rules!3307 (rule!8380 (_1!22070 lt!1241842)) rule!403 lt!1241845))))

(assert (=> d!1062859 (rulesInvariant!4618 thiss!23823 rules!3307)))

(assert (=> d!1062859 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!338 thiss!23823 rules!3307 rules!3307 (rule!8380 (_1!22070 lt!1241842)) rule!403 lt!1241845) lt!1241922)))

(declare-fun bs!570794 () Bool)

(assert (= bs!570794 d!1062859))

(assert (=> bs!570794 m!4106099))

(assert (=> bs!570794 m!4106099))

(declare-fun m!4106339 () Bool)

(assert (=> bs!570794 m!4106339))

(declare-fun m!4106341 () Bool)

(assert (=> bs!570794 m!4106341))

(assert (=> bs!570794 m!4106135))

(assert (=> b!3608730 d!1062859))

(declare-fun d!1062861 () Bool)

(declare-fun lt!1241923 () Bool)

(assert (=> d!1062861 (= lt!1241923 (select (content!5430 (usedCharacters!846 (regex!5632 anOtherTypeRule!33))) lt!1241849))))

(declare-fun e!2233496 () Bool)

(assert (=> d!1062861 (= lt!1241923 e!2233496)))

(declare-fun res!1459615 () Bool)

(assert (=> d!1062861 (=> (not res!1459615) (not e!2233496))))

(assert (=> d!1062861 (= res!1459615 ((_ is Cons!37978) (usedCharacters!846 (regex!5632 anOtherTypeRule!33))))))

(assert (=> d!1062861 (= (contains!7327 (usedCharacters!846 (regex!5632 anOtherTypeRule!33)) lt!1241849) lt!1241923)))

(declare-fun b!3608992 () Bool)

(declare-fun e!2233497 () Bool)

(assert (=> b!3608992 (= e!2233496 e!2233497)))

(declare-fun res!1459614 () Bool)

(assert (=> b!3608992 (=> res!1459614 e!2233497)))

(assert (=> b!3608992 (= res!1459614 (= (h!43398 (usedCharacters!846 (regex!5632 anOtherTypeRule!33))) lt!1241849))))

(declare-fun b!3608993 () Bool)

(assert (=> b!3608993 (= e!2233497 (contains!7327 (t!293153 (usedCharacters!846 (regex!5632 anOtherTypeRule!33))) lt!1241849))))

(assert (= (and d!1062861 res!1459615) b!3608992))

(assert (= (and b!3608992 (not res!1459614)) b!3608993))

(assert (=> d!1062861 m!4106009))

(declare-fun m!4106343 () Bool)

(assert (=> d!1062861 m!4106343))

(declare-fun m!4106345 () Bool)

(assert (=> d!1062861 m!4106345))

(declare-fun m!4106347 () Bool)

(assert (=> b!3608993 m!4106347))

(assert (=> b!3608710 d!1062861))

(declare-fun c!624414 () Bool)

(declare-fun bm!260882 () Bool)

(declare-fun call!260889 () List!38102)

(declare-fun call!260887 () List!38102)

(declare-fun call!260890 () List!38102)

(assert (=> bm!260882 (= call!260890 (++!9448 (ite c!624414 call!260889 call!260887) (ite c!624414 call!260887 call!260889)))))

(declare-fun bm!260883 () Bool)

(declare-fun call!260888 () List!38102)

(assert (=> bm!260883 (= call!260889 call!260888)))

(declare-fun c!624415 () Bool)

(declare-fun bm!260884 () Bool)

(assert (=> bm!260884 (= call!260888 (usedCharacters!846 (ite c!624415 (reg!10720 (regex!5632 anOtherTypeRule!33)) (ite c!624414 (regOne!21295 (regex!5632 anOtherTypeRule!33)) (regTwo!21294 (regex!5632 anOtherTypeRule!33))))))))

(declare-fun b!3608995 () Bool)

(declare-fun e!2233499 () List!38102)

(assert (=> b!3608995 (= e!2233499 call!260888)))

(declare-fun b!3608996 () Bool)

(declare-fun e!2233498 () List!38102)

(assert (=> b!3608996 (= e!2233498 (Cons!37978 (c!624352 (regex!5632 anOtherTypeRule!33)) Nil!37978))))

(declare-fun b!3608997 () Bool)

(declare-fun e!2233500 () List!38102)

(assert (=> b!3608997 (= e!2233500 call!260890)))

(declare-fun b!3608998 () Bool)

(assert (=> b!3608998 (= e!2233500 call!260890)))

(declare-fun b!3608999 () Bool)

(declare-fun e!2233501 () List!38102)

(assert (=> b!3608999 (= e!2233501 e!2233498)))

(declare-fun c!624413 () Bool)

(assert (=> b!3608999 (= c!624413 ((_ is ElementMatch!10391) (regex!5632 anOtherTypeRule!33)))))

(declare-fun b!3609000 () Bool)

(assert (=> b!3609000 (= c!624415 ((_ is Star!10391) (regex!5632 anOtherTypeRule!33)))))

(assert (=> b!3609000 (= e!2233498 e!2233499)))

(declare-fun bm!260885 () Bool)

(assert (=> bm!260885 (= call!260887 (usedCharacters!846 (ite c!624414 (regTwo!21295 (regex!5632 anOtherTypeRule!33)) (regOne!21294 (regex!5632 anOtherTypeRule!33)))))))

(declare-fun b!3609001 () Bool)

(assert (=> b!3609001 (= e!2233501 Nil!37978)))

(declare-fun b!3608994 () Bool)

(assert (=> b!3608994 (= e!2233499 e!2233500)))

(assert (=> b!3608994 (= c!624414 ((_ is Union!10391) (regex!5632 anOtherTypeRule!33)))))

(declare-fun d!1062863 () Bool)

(declare-fun c!624416 () Bool)

(assert (=> d!1062863 (= c!624416 (or ((_ is EmptyExpr!10391) (regex!5632 anOtherTypeRule!33)) ((_ is EmptyLang!10391) (regex!5632 anOtherTypeRule!33))))))

(assert (=> d!1062863 (= (usedCharacters!846 (regex!5632 anOtherTypeRule!33)) e!2233501)))

(assert (= (and d!1062863 c!624416) b!3609001))

(assert (= (and d!1062863 (not c!624416)) b!3608999))

(assert (= (and b!3608999 c!624413) b!3608996))

(assert (= (and b!3608999 (not c!624413)) b!3609000))

(assert (= (and b!3609000 c!624415) b!3608995))

(assert (= (and b!3609000 (not c!624415)) b!3608994))

(assert (= (and b!3608994 c!624414) b!3608998))

(assert (= (and b!3608994 (not c!624414)) b!3608997))

(assert (= (or b!3608998 b!3608997) bm!260883))

(assert (= (or b!3608998 b!3608997) bm!260885))

(assert (= (or b!3608998 b!3608997) bm!260882))

(assert (= (or b!3608995 bm!260883) bm!260884))

(declare-fun m!4106349 () Bool)

(assert (=> bm!260882 m!4106349))

(declare-fun m!4106351 () Bool)

(assert (=> bm!260884 m!4106351))

(declare-fun m!4106353 () Bool)

(assert (=> bm!260885 m!4106353))

(assert (=> b!3608710 d!1062863))

(declare-fun d!1062865 () Bool)

(declare-fun lt!1241924 () Bool)

(assert (=> d!1062865 (= lt!1241924 (select (content!5430 lt!1241847) lt!1241849))))

(declare-fun e!2233502 () Bool)

(assert (=> d!1062865 (= lt!1241924 e!2233502)))

(declare-fun res!1459617 () Bool)

(assert (=> d!1062865 (=> (not res!1459617) (not e!2233502))))

(assert (=> d!1062865 (= res!1459617 ((_ is Cons!37978) lt!1241847))))

(assert (=> d!1062865 (= (contains!7327 lt!1241847 lt!1241849) lt!1241924)))

(declare-fun b!3609002 () Bool)

(declare-fun e!2233503 () Bool)

(assert (=> b!3609002 (= e!2233502 e!2233503)))

(declare-fun res!1459616 () Bool)

(assert (=> b!3609002 (=> res!1459616 e!2233503)))

(assert (=> b!3609002 (= res!1459616 (= (h!43398 lt!1241847) lt!1241849))))

(declare-fun b!3609003 () Bool)

(assert (=> b!3609003 (= e!2233503 (contains!7327 (t!293153 lt!1241847) lt!1241849))))

(assert (= (and d!1062865 res!1459617) b!3609002))

(assert (= (and b!3609002 (not res!1459616)) b!3609003))

(declare-fun m!4106355 () Bool)

(assert (=> d!1062865 m!4106355))

(declare-fun m!4106357 () Bool)

(assert (=> d!1062865 m!4106357))

(declare-fun m!4106359 () Bool)

(assert (=> b!3609003 m!4106359))

(assert (=> b!3608729 d!1062865))

(declare-fun d!1062867 () Bool)

(assert (=> d!1062867 (contains!7327 lt!1241847 (head!7588 suffix!1395))))

(declare-fun lt!1241927 () Unit!54124)

(declare-fun choose!21087 (List!38102 List!38102 List!38102 List!38102) Unit!54124)

(assert (=> d!1062867 (= lt!1241927 (choose!21087 lt!1241860 suffix!1395 lt!1241847 lt!1241851))))

(assert (=> d!1062867 (isPrefix!2995 lt!1241847 lt!1241851)))

(assert (=> d!1062867 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!10 lt!1241860 suffix!1395 lt!1241847 lt!1241851) lt!1241927)))

(declare-fun bs!570795 () Bool)

(assert (= bs!570795 d!1062867))

(assert (=> bs!570795 m!4106105))

(assert (=> bs!570795 m!4106105))

(declare-fun m!4106361 () Bool)

(assert (=> bs!570795 m!4106361))

(declare-fun m!4106363 () Bool)

(assert (=> bs!570795 m!4106363))

(assert (=> bs!570795 m!4106033))

(assert (=> b!3608729 d!1062867))

(declare-fun d!1062869 () Bool)

(assert (=> d!1062869 (not (matchR!4960 (regex!5632 rule!403) lt!1241860))))

(declare-fun lt!1241928 () Unit!54124)

(assert (=> d!1062869 (= lt!1241928 (choose!21083 (regex!5632 rule!403) lt!1241860 lt!1241845))))

(assert (=> d!1062869 (validRegex!4759 (regex!5632 rule!403))))

(assert (=> d!1062869 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!616 (regex!5632 rule!403) lt!1241860 lt!1241845) lt!1241928)))

(declare-fun bs!570796 () Bool)

(assert (= bs!570796 d!1062869))

(assert (=> bs!570796 m!4106109))

(declare-fun m!4106365 () Bool)

(assert (=> bs!570796 m!4106365))

(declare-fun m!4106367 () Bool)

(assert (=> bs!570796 m!4106367))

(assert (=> b!3608709 d!1062869))

(declare-fun b!3609004 () Bool)

(declare-fun e!2233510 () Bool)

(declare-fun lt!1241929 () Bool)

(assert (=> b!3609004 (= e!2233510 (not lt!1241929))))

(declare-fun b!3609005 () Bool)

(declare-fun res!1459622 () Bool)

(declare-fun e!2233506 () Bool)

(assert (=> b!3609005 (=> res!1459622 e!2233506)))

(declare-fun e!2233508 () Bool)

(assert (=> b!3609005 (= res!1459622 e!2233508)))

(declare-fun res!1459620 () Bool)

(assert (=> b!3609005 (=> (not res!1459620) (not e!2233508))))

(assert (=> b!3609005 (= res!1459620 lt!1241929)))

(declare-fun b!3609006 () Bool)

(declare-fun res!1459624 () Bool)

(assert (=> b!3609006 (=> res!1459624 e!2233506)))

(assert (=> b!3609006 (= res!1459624 (not ((_ is ElementMatch!10391) (regex!5632 rule!403))))))

(assert (=> b!3609006 (= e!2233510 e!2233506)))

(declare-fun d!1062871 () Bool)

(declare-fun e!2233504 () Bool)

(assert (=> d!1062871 e!2233504))

(declare-fun c!624419 () Bool)

(assert (=> d!1062871 (= c!624419 ((_ is EmptyExpr!10391) (regex!5632 rule!403)))))

(declare-fun e!2233509 () Bool)

(assert (=> d!1062871 (= lt!1241929 e!2233509)))

(declare-fun c!624418 () Bool)

(assert (=> d!1062871 (= c!624418 (isEmpty!22423 lt!1241860))))

(assert (=> d!1062871 (validRegex!4759 (regex!5632 rule!403))))

(assert (=> d!1062871 (= (matchR!4960 (regex!5632 rule!403) lt!1241860) lt!1241929)))

(declare-fun b!3609007 () Bool)

(assert (=> b!3609007 (= e!2233508 (= (head!7588 lt!1241860) (c!624352 (regex!5632 rule!403))))))

(declare-fun bm!260886 () Bool)

(declare-fun call!260891 () Bool)

(assert (=> bm!260886 (= call!260891 (isEmpty!22423 lt!1241860))))

(declare-fun b!3609008 () Bool)

(declare-fun res!1459625 () Bool)

(declare-fun e!2233505 () Bool)

(assert (=> b!3609008 (=> res!1459625 e!2233505)))

(assert (=> b!3609008 (= res!1459625 (not (isEmpty!22423 (tail!5595 lt!1241860))))))

(declare-fun b!3609009 () Bool)

(declare-fun res!1459621 () Bool)

(assert (=> b!3609009 (=> (not res!1459621) (not e!2233508))))

(assert (=> b!3609009 (= res!1459621 (not call!260891))))

(declare-fun b!3609010 () Bool)

(assert (=> b!3609010 (= e!2233504 (= lt!1241929 call!260891))))

(declare-fun b!3609011 () Bool)

(declare-fun e!2233507 () Bool)

(assert (=> b!3609011 (= e!2233507 e!2233505)))

(declare-fun res!1459619 () Bool)

(assert (=> b!3609011 (=> res!1459619 e!2233505)))

(assert (=> b!3609011 (= res!1459619 call!260891)))

(declare-fun b!3609012 () Bool)

(assert (=> b!3609012 (= e!2233509 (matchR!4960 (derivativeStep!3146 (regex!5632 rule!403) (head!7588 lt!1241860)) (tail!5595 lt!1241860)))))

(declare-fun b!3609013 () Bool)

(assert (=> b!3609013 (= e!2233509 (nullable!3597 (regex!5632 rule!403)))))

(declare-fun b!3609014 () Bool)

(assert (=> b!3609014 (= e!2233506 e!2233507)))

(declare-fun res!1459623 () Bool)

(assert (=> b!3609014 (=> (not res!1459623) (not e!2233507))))

(assert (=> b!3609014 (= res!1459623 (not lt!1241929))))

(declare-fun b!3609015 () Bool)

(assert (=> b!3609015 (= e!2233504 e!2233510)))

(declare-fun c!624417 () Bool)

(assert (=> b!3609015 (= c!624417 ((_ is EmptyLang!10391) (regex!5632 rule!403)))))

(declare-fun b!3609016 () Bool)

(declare-fun res!1459618 () Bool)

(assert (=> b!3609016 (=> (not res!1459618) (not e!2233508))))

(assert (=> b!3609016 (= res!1459618 (isEmpty!22423 (tail!5595 lt!1241860)))))

(declare-fun b!3609017 () Bool)

(assert (=> b!3609017 (= e!2233505 (not (= (head!7588 lt!1241860) (c!624352 (regex!5632 rule!403)))))))

(assert (= (and d!1062871 c!624418) b!3609013))

(assert (= (and d!1062871 (not c!624418)) b!3609012))

(assert (= (and d!1062871 c!624419) b!3609010))

(assert (= (and d!1062871 (not c!624419)) b!3609015))

(assert (= (and b!3609015 c!624417) b!3609004))

(assert (= (and b!3609015 (not c!624417)) b!3609006))

(assert (= (and b!3609006 (not res!1459624)) b!3609005))

(assert (= (and b!3609005 res!1459620) b!3609009))

(assert (= (and b!3609009 res!1459621) b!3609016))

(assert (= (and b!3609016 res!1459618) b!3609007))

(assert (= (and b!3609005 (not res!1459622)) b!3609014))

(assert (= (and b!3609014 res!1459623) b!3609011))

(assert (= (and b!3609011 (not res!1459619)) b!3609008))

(assert (= (and b!3609008 (not res!1459625)) b!3609017))

(assert (= (or b!3609010 b!3609009 b!3609011) bm!260886))

(declare-fun m!4106369 () Bool)

(assert (=> b!3609013 m!4106369))

(declare-fun m!4106371 () Bool)

(assert (=> b!3609016 m!4106371))

(assert (=> b!3609016 m!4106371))

(declare-fun m!4106373 () Bool)

(assert (=> b!3609016 m!4106373))

(declare-fun m!4106375 () Bool)

(assert (=> bm!260886 m!4106375))

(assert (=> b!3609008 m!4106371))

(assert (=> b!3609008 m!4106371))

(assert (=> b!3609008 m!4106373))

(assert (=> d!1062871 m!4106375))

(assert (=> d!1062871 m!4106367))

(declare-fun m!4106377 () Bool)

(assert (=> b!3609007 m!4106377))

(assert (=> b!3609012 m!4106377))

(assert (=> b!3609012 m!4106377))

(declare-fun m!4106379 () Bool)

(assert (=> b!3609012 m!4106379))

(assert (=> b!3609012 m!4106371))

(assert (=> b!3609012 m!4106379))

(assert (=> b!3609012 m!4106371))

(declare-fun m!4106381 () Bool)

(assert (=> b!3609012 m!4106381))

(assert (=> b!3609017 m!4106377))

(assert (=> b!3608722 d!1062871))

(declare-fun d!1062873 () Bool)

(declare-fun res!1459630 () Bool)

(declare-fun e!2233515 () Bool)

(assert (=> d!1062873 (=> (not res!1459630) (not e!2233515))))

(assert (=> d!1062873 (= res!1459630 (validRegex!4759 (regex!5632 rule!403)))))

(assert (=> d!1062873 (= (ruleValid!1897 thiss!23823 rule!403) e!2233515)))

(declare-fun b!3609026 () Bool)

(declare-fun res!1459631 () Bool)

(assert (=> b!3609026 (=> (not res!1459631) (not e!2233515))))

(assert (=> b!3609026 (= res!1459631 (not (nullable!3597 (regex!5632 rule!403))))))

(declare-fun b!3609027 () Bool)

(assert (=> b!3609027 (= e!2233515 (not (= (tag!6336 rule!403) (String!42645 ""))))))

(assert (= (and d!1062873 res!1459630) b!3609026))

(assert (= (and b!3609026 res!1459631) b!3609027))

(assert (=> d!1062873 m!4106367))

(assert (=> b!3609026 m!4106369))

(assert (=> b!3608722 d!1062873))

(declare-fun d!1062875 () Bool)

(assert (=> d!1062875 (ruleValid!1897 thiss!23823 rule!403)))

(declare-fun lt!1241942 () Unit!54124)

(declare-fun choose!21088 (LexerInterface!5221 Rule!11064 List!38103) Unit!54124)

(assert (=> d!1062875 (= lt!1241942 (choose!21088 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1062875 (contains!7328 rules!3307 rule!403)))

(assert (=> d!1062875 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1052 thiss!23823 rule!403 rules!3307) lt!1241942)))

(declare-fun bs!570797 () Bool)

(assert (= bs!570797 d!1062875))

(assert (=> bs!570797 m!4106111))

(declare-fun m!4106383 () Bool)

(assert (=> bs!570797 m!4106383))

(assert (=> bs!570797 m!4106015))

(assert (=> b!3608722 d!1062875))

(declare-fun d!1062877 () Bool)

(declare-fun res!1459657 () Bool)

(declare-fun e!2233525 () Bool)

(assert (=> d!1062877 (=> (not res!1459657) (not e!2233525))))

(assert (=> d!1062877 (= res!1459657 (not (isEmpty!22423 (originalCharacters!6346 token!511))))))

(assert (=> d!1062877 (= (inv!51349 token!511) e!2233525)))

(declare-fun b!3609055 () Bool)

(declare-fun res!1459658 () Bool)

(assert (=> b!3609055 (=> (not res!1459658) (not e!2233525))))

(assert (=> b!3609055 (= res!1459658 (= (originalCharacters!6346 token!511) (list!14004 (dynLambda!16424 (toChars!7775 (transformation!5632 (rule!8380 token!511))) (value!180972 token!511)))))))

(declare-fun b!3609056 () Bool)

(assert (=> b!3609056 (= e!2233525 (= (size!28951 token!511) (size!28953 (originalCharacters!6346 token!511))))))

(assert (= (and d!1062877 res!1459657) b!3609055))

(assert (= (and b!3609055 res!1459658) b!3609056))

(declare-fun b_lambda!106781 () Bool)

(assert (=> (not b_lambda!106781) (not b!3609055)))

(declare-fun t!293180 () Bool)

(declare-fun tb!206841 () Bool)

(assert (=> (and b!3608721 (= (toChars!7775 (transformation!5632 (rule!8380 token!511))) (toChars!7775 (transformation!5632 (rule!8380 token!511)))) t!293180) tb!206841))

(declare-fun b!3609057 () Bool)

(declare-fun e!2233526 () Bool)

(declare-fun tp!1103303 () Bool)

(assert (=> b!3609057 (= e!2233526 (and (inv!51353 (c!624353 (dynLambda!16424 (toChars!7775 (transformation!5632 (rule!8380 token!511))) (value!180972 token!511)))) tp!1103303))))

(declare-fun result!252088 () Bool)

(assert (=> tb!206841 (= result!252088 (and (inv!51354 (dynLambda!16424 (toChars!7775 (transformation!5632 (rule!8380 token!511))) (value!180972 token!511))) e!2233526))))

(assert (= tb!206841 b!3609057))

(declare-fun m!4106397 () Bool)

(assert (=> b!3609057 m!4106397))

(declare-fun m!4106401 () Bool)

(assert (=> tb!206841 m!4106401))

(assert (=> b!3609055 t!293180))

(declare-fun b_and!263003 () Bool)

(assert (= b_and!262987 (and (=> t!293180 result!252088) b_and!263003)))

(declare-fun t!293182 () Bool)

(declare-fun tb!206843 () Bool)

(assert (=> (and b!3608734 (= (toChars!7775 (transformation!5632 (h!43399 rules!3307))) (toChars!7775 (transformation!5632 (rule!8380 token!511)))) t!293182) tb!206843))

(declare-fun result!252090 () Bool)

(assert (= result!252090 result!252088))

(assert (=> b!3609055 t!293182))

(declare-fun b_and!263005 () Bool)

(assert (= b_and!262989 (and (=> t!293182 result!252090) b_and!263005)))

(declare-fun tb!206845 () Bool)

(declare-fun t!293184 () Bool)

(assert (=> (and b!3608713 (= (toChars!7775 (transformation!5632 anOtherTypeRule!33)) (toChars!7775 (transformation!5632 (rule!8380 token!511)))) t!293184) tb!206845))

(declare-fun result!252092 () Bool)

(assert (= result!252092 result!252088))

(assert (=> b!3609055 t!293184))

(declare-fun b_and!263007 () Bool)

(assert (= b_and!262991 (and (=> t!293184 result!252092) b_and!263007)))

(declare-fun t!293186 () Bool)

(declare-fun tb!206847 () Bool)

(assert (=> (and b!3608744 (= (toChars!7775 (transformation!5632 rule!403)) (toChars!7775 (transformation!5632 (rule!8380 token!511)))) t!293186) tb!206847))

(declare-fun result!252094 () Bool)

(assert (= result!252094 result!252088))

(assert (=> b!3609055 t!293186))

(declare-fun b_and!263009 () Bool)

(assert (= b_and!262993 (and (=> t!293186 result!252094) b_and!263009)))

(declare-fun m!4106405 () Bool)

(assert (=> d!1062877 m!4106405))

(declare-fun m!4106407 () Bool)

(assert (=> b!3609055 m!4106407))

(assert (=> b!3609055 m!4106407))

(declare-fun m!4106411 () Bool)

(assert (=> b!3609055 m!4106411))

(declare-fun m!4106413 () Bool)

(assert (=> b!3609056 m!4106413))

(assert (=> start!335878 d!1062877))

(declare-fun d!1062879 () Bool)

(assert (=> d!1062879 (= (inv!51346 (tag!6336 rule!403)) (= (mod (str.len (value!180971 (tag!6336 rule!403))) 2) 0))))

(assert (=> b!3608723 d!1062879))

(declare-fun d!1062881 () Bool)

(declare-fun res!1459659 () Bool)

(declare-fun e!2233527 () Bool)

(assert (=> d!1062881 (=> (not res!1459659) (not e!2233527))))

(assert (=> d!1062881 (= res!1459659 (semiInverseModEq!2395 (toChars!7775 (transformation!5632 rule!403)) (toValue!7916 (transformation!5632 rule!403))))))

(assert (=> d!1062881 (= (inv!51350 (transformation!5632 rule!403)) e!2233527)))

(declare-fun b!3609058 () Bool)

(assert (=> b!3609058 (= e!2233527 (equivClasses!2294 (toChars!7775 (transformation!5632 rule!403)) (toValue!7916 (transformation!5632 rule!403))))))

(assert (= (and d!1062881 res!1459659) b!3609058))

(declare-fun m!4106431 () Bool)

(assert (=> d!1062881 m!4106431))

(declare-fun m!4106435 () Bool)

(assert (=> b!3609058 m!4106435))

(assert (=> b!3608723 d!1062881))

(declare-fun b!3609059 () Bool)

(declare-fun e!2233534 () Bool)

(declare-fun lt!1241949 () Bool)

(assert (=> b!3609059 (= e!2233534 (not lt!1241949))))

(declare-fun b!3609060 () Bool)

(declare-fun res!1459664 () Bool)

(declare-fun e!2233530 () Bool)

(assert (=> b!3609060 (=> res!1459664 e!2233530)))

(declare-fun e!2233532 () Bool)

(assert (=> b!3609060 (= res!1459664 e!2233532)))

(declare-fun res!1459662 () Bool)

(assert (=> b!3609060 (=> (not res!1459662) (not e!2233532))))

(assert (=> b!3609060 (= res!1459662 lt!1241949)))

(declare-fun b!3609061 () Bool)

(declare-fun res!1459666 () Bool)

(assert (=> b!3609061 (=> res!1459666 e!2233530)))

(assert (=> b!3609061 (= res!1459666 (not ((_ is ElementMatch!10391) (regex!5632 (rule!8380 (_1!22070 lt!1241842))))))))

(assert (=> b!3609061 (= e!2233534 e!2233530)))

(declare-fun d!1062885 () Bool)

(declare-fun e!2233528 () Bool)

(assert (=> d!1062885 e!2233528))

(declare-fun c!624425 () Bool)

(assert (=> d!1062885 (= c!624425 ((_ is EmptyExpr!10391) (regex!5632 (rule!8380 (_1!22070 lt!1241842)))))))

(declare-fun e!2233533 () Bool)

(assert (=> d!1062885 (= lt!1241949 e!2233533)))

(declare-fun c!624424 () Bool)

(assert (=> d!1062885 (= c!624424 (isEmpty!22423 lt!1241847))))

(assert (=> d!1062885 (validRegex!4759 (regex!5632 (rule!8380 (_1!22070 lt!1241842))))))

(assert (=> d!1062885 (= (matchR!4960 (regex!5632 (rule!8380 (_1!22070 lt!1241842))) lt!1241847) lt!1241949)))

(declare-fun b!3609062 () Bool)

(assert (=> b!3609062 (= e!2233532 (= (head!7588 lt!1241847) (c!624352 (regex!5632 (rule!8380 (_1!22070 lt!1241842))))))))

(declare-fun bm!260890 () Bool)

(declare-fun call!260895 () Bool)

(assert (=> bm!260890 (= call!260895 (isEmpty!22423 lt!1241847))))

(declare-fun b!3609063 () Bool)

(declare-fun res!1459667 () Bool)

(declare-fun e!2233529 () Bool)

(assert (=> b!3609063 (=> res!1459667 e!2233529)))

(assert (=> b!3609063 (= res!1459667 (not (isEmpty!22423 (tail!5595 lt!1241847))))))

(declare-fun b!3609064 () Bool)

(declare-fun res!1459663 () Bool)

(assert (=> b!3609064 (=> (not res!1459663) (not e!2233532))))

(assert (=> b!3609064 (= res!1459663 (not call!260895))))

(declare-fun b!3609065 () Bool)

(assert (=> b!3609065 (= e!2233528 (= lt!1241949 call!260895))))

(declare-fun b!3609066 () Bool)

(declare-fun e!2233531 () Bool)

(assert (=> b!3609066 (= e!2233531 e!2233529)))

(declare-fun res!1459661 () Bool)

(assert (=> b!3609066 (=> res!1459661 e!2233529)))

(assert (=> b!3609066 (= res!1459661 call!260895)))

(declare-fun b!3609067 () Bool)

(assert (=> b!3609067 (= e!2233533 (matchR!4960 (derivativeStep!3146 (regex!5632 (rule!8380 (_1!22070 lt!1241842))) (head!7588 lt!1241847)) (tail!5595 lt!1241847)))))

(declare-fun b!3609068 () Bool)

(assert (=> b!3609068 (= e!2233533 (nullable!3597 (regex!5632 (rule!8380 (_1!22070 lt!1241842)))))))

(declare-fun b!3609069 () Bool)

(assert (=> b!3609069 (= e!2233530 e!2233531)))

(declare-fun res!1459665 () Bool)

(assert (=> b!3609069 (=> (not res!1459665) (not e!2233531))))

(assert (=> b!3609069 (= res!1459665 (not lt!1241949))))

(declare-fun b!3609070 () Bool)

(assert (=> b!3609070 (= e!2233528 e!2233534)))

(declare-fun c!624423 () Bool)

(assert (=> b!3609070 (= c!624423 ((_ is EmptyLang!10391) (regex!5632 (rule!8380 (_1!22070 lt!1241842)))))))

(declare-fun b!3609071 () Bool)

(declare-fun res!1459660 () Bool)

(assert (=> b!3609071 (=> (not res!1459660) (not e!2233532))))

(assert (=> b!3609071 (= res!1459660 (isEmpty!22423 (tail!5595 lt!1241847)))))

(declare-fun b!3609072 () Bool)

(assert (=> b!3609072 (= e!2233529 (not (= (head!7588 lt!1241847) (c!624352 (regex!5632 (rule!8380 (_1!22070 lt!1241842)))))))))

(assert (= (and d!1062885 c!624424) b!3609068))

(assert (= (and d!1062885 (not c!624424)) b!3609067))

(assert (= (and d!1062885 c!624425) b!3609065))

(assert (= (and d!1062885 (not c!624425)) b!3609070))

(assert (= (and b!3609070 c!624423) b!3609059))

(assert (= (and b!3609070 (not c!624423)) b!3609061))

(assert (= (and b!3609061 (not res!1459666)) b!3609060))

(assert (= (and b!3609060 res!1459662) b!3609064))

(assert (= (and b!3609064 res!1459663) b!3609071))

(assert (= (and b!3609071 res!1459660) b!3609062))

(assert (= (and b!3609060 (not res!1459664)) b!3609069))

(assert (= (and b!3609069 res!1459665) b!3609066))

(assert (= (and b!3609066 (not res!1459661)) b!3609063))

(assert (= (and b!3609063 (not res!1459667)) b!3609072))

(assert (= (or b!3609065 b!3609064 b!3609066) bm!260890))

(declare-fun m!4106445 () Bool)

(assert (=> b!3609068 m!4106445))

(declare-fun m!4106447 () Bool)

(assert (=> b!3609071 m!4106447))

(assert (=> b!3609071 m!4106447))

(declare-fun m!4106449 () Bool)

(assert (=> b!3609071 m!4106449))

(declare-fun m!4106451 () Bool)

(assert (=> bm!260890 m!4106451))

(assert (=> b!3609063 m!4106447))

(assert (=> b!3609063 m!4106447))

(assert (=> b!3609063 m!4106449))

(assert (=> d!1062885 m!4106451))

(assert (=> d!1062885 m!4106223))

(assert (=> b!3609062 m!4106065))

(assert (=> b!3609067 m!4106065))

(assert (=> b!3609067 m!4106065))

(declare-fun m!4106453 () Bool)

(assert (=> b!3609067 m!4106453))

(assert (=> b!3609067 m!4106447))

(assert (=> b!3609067 m!4106453))

(assert (=> b!3609067 m!4106447))

(declare-fun m!4106455 () Bool)

(assert (=> b!3609067 m!4106455))

(assert (=> b!3609072 m!4106065))

(assert (=> b!3608741 d!1062885))

(declare-fun d!1062891 () Bool)

(declare-fun lt!1241952 () Int)

(assert (=> d!1062891 (>= lt!1241952 0)))

(declare-fun e!2233538 () Int)

(assert (=> d!1062891 (= lt!1241952 e!2233538)))

(declare-fun c!624428 () Bool)

(assert (=> d!1062891 (= c!624428 ((_ is Nil!37978) lt!1241847))))

(assert (=> d!1062891 (= (size!28953 lt!1241847) lt!1241952)))

(declare-fun b!3609078 () Bool)

(assert (=> b!3609078 (= e!2233538 0)))

(declare-fun b!3609079 () Bool)

(assert (=> b!3609079 (= e!2233538 (+ 1 (size!28953 (t!293153 lt!1241847))))))

(assert (= (and d!1062891 c!624428) b!3609078))

(assert (= (and d!1062891 (not c!624428)) b!3609079))

(declare-fun m!4106457 () Bool)

(assert (=> b!3609079 m!4106457))

(assert (=> b!3608745 d!1062891))

(declare-fun d!1062893 () Bool)

(declare-fun e!2233590 () Bool)

(assert (=> d!1062893 e!2233590))

(declare-fun res!1459730 () Bool)

(assert (=> d!1062893 (=> res!1459730 e!2233590)))

(declare-fun lt!1241980 () Option!7895)

(declare-fun isEmpty!22426 (Option!7895) Bool)

(assert (=> d!1062893 (= res!1459730 (isEmpty!22426 lt!1241980))))

(declare-fun e!2233591 () Option!7895)

(assert (=> d!1062893 (= lt!1241980 e!2233591)))

(declare-fun c!624441 () Bool)

(declare-datatypes ((tuple2!37878 0))(
  ( (tuple2!37879 (_1!22073 List!38102) (_2!22073 List!38102)) )
))
(declare-fun lt!1241981 () tuple2!37878)

(assert (=> d!1062893 (= c!624441 (isEmpty!22423 (_1!22073 lt!1241981)))))

(declare-fun findLongestMatch!918 (Regex!10391 List!38102) tuple2!37878)

(assert (=> d!1062893 (= lt!1241981 (findLongestMatch!918 (regex!5632 (rule!8380 (_1!22070 lt!1241842))) lt!1241851))))

(assert (=> d!1062893 (ruleValid!1897 thiss!23823 (rule!8380 (_1!22070 lt!1241842)))))

(assert (=> d!1062893 (= (maxPrefixOneRule!1899 thiss!23823 (rule!8380 (_1!22070 lt!1241842)) lt!1241851) lt!1241980)))

(declare-fun b!3609159 () Bool)

(declare-fun res!1459725 () Bool)

(declare-fun e!2233589 () Bool)

(assert (=> b!3609159 (=> (not res!1459725) (not e!2233589))))

(assert (=> b!3609159 (= res!1459725 (< (size!28953 (_2!22070 (get!12321 lt!1241980))) (size!28953 lt!1241851)))))

(declare-fun b!3609160 () Bool)

(declare-fun e!2233592 () Bool)

(declare-fun findLongestMatchInner!1003 (Regex!10391 List!38102 Int List!38102 List!38102 Int) tuple2!37878)

(assert (=> b!3609160 (= e!2233592 (matchR!4960 (regex!5632 (rule!8380 (_1!22070 lt!1241842))) (_1!22073 (findLongestMatchInner!1003 (regex!5632 (rule!8380 (_1!22070 lt!1241842))) Nil!37978 (size!28953 Nil!37978) lt!1241851 lt!1241851 (size!28953 lt!1241851)))))))

(declare-fun b!3609161 () Bool)

(declare-fun res!1459727 () Bool)

(assert (=> b!3609161 (=> (not res!1459727) (not e!2233589))))

(assert (=> b!3609161 (= res!1459727 (= (value!180972 (_1!22070 (get!12321 lt!1241980))) (apply!9138 (transformation!5632 (rule!8380 (_1!22070 (get!12321 lt!1241980)))) (seqFromList!4185 (originalCharacters!6346 (_1!22070 (get!12321 lt!1241980)))))))))

(declare-fun b!3609162 () Bool)

(declare-fun res!1459726 () Bool)

(assert (=> b!3609162 (=> (not res!1459726) (not e!2233589))))

(assert (=> b!3609162 (= res!1459726 (= (++!9448 (list!14004 (charsOf!3646 (_1!22070 (get!12321 lt!1241980)))) (_2!22070 (get!12321 lt!1241980))) lt!1241851))))

(declare-fun b!3609163 () Bool)

(declare-fun res!1459731 () Bool)

(assert (=> b!3609163 (=> (not res!1459731) (not e!2233589))))

(assert (=> b!3609163 (= res!1459731 (= (rule!8380 (_1!22070 (get!12321 lt!1241980))) (rule!8380 (_1!22070 lt!1241842))))))

(declare-fun b!3609164 () Bool)

(assert (=> b!3609164 (= e!2233591 (Some!7894 (tuple2!37873 (Token!10631 (apply!9138 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))) (seqFromList!4185 (_1!22073 lt!1241981))) (rule!8380 (_1!22070 lt!1241842)) (size!28952 (seqFromList!4185 (_1!22073 lt!1241981))) (_1!22073 lt!1241981)) (_2!22073 lt!1241981))))))

(declare-fun lt!1241983 () Unit!54124)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!976 (Regex!10391 List!38102) Unit!54124)

(assert (=> b!3609164 (= lt!1241983 (longestMatchIsAcceptedByMatchOrIsEmpty!976 (regex!5632 (rule!8380 (_1!22070 lt!1241842))) lt!1241851))))

(declare-fun res!1459729 () Bool)

(assert (=> b!3609164 (= res!1459729 (isEmpty!22423 (_1!22073 (findLongestMatchInner!1003 (regex!5632 (rule!8380 (_1!22070 lt!1241842))) Nil!37978 (size!28953 Nil!37978) lt!1241851 lt!1241851 (size!28953 lt!1241851)))))))

(assert (=> b!3609164 (=> res!1459729 e!2233592)))

(assert (=> b!3609164 e!2233592))

(declare-fun lt!1241979 () Unit!54124)

(assert (=> b!3609164 (= lt!1241979 lt!1241983)))

(declare-fun lt!1241982 () Unit!54124)

(assert (=> b!3609164 (= lt!1241982 (lemmaSemiInverse!1389 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))) (seqFromList!4185 (_1!22073 lt!1241981))))))

(declare-fun b!3609165 () Bool)

(assert (=> b!3609165 (= e!2233590 e!2233589)))

(declare-fun res!1459728 () Bool)

(assert (=> b!3609165 (=> (not res!1459728) (not e!2233589))))

(assert (=> b!3609165 (= res!1459728 (matchR!4960 (regex!5632 (rule!8380 (_1!22070 lt!1241842))) (list!14004 (charsOf!3646 (_1!22070 (get!12321 lt!1241980))))))))

(declare-fun b!3609166 () Bool)

(assert (=> b!3609166 (= e!2233591 None!7894)))

(declare-fun b!3609167 () Bool)

(assert (=> b!3609167 (= e!2233589 (= (size!28951 (_1!22070 (get!12321 lt!1241980))) (size!28953 (originalCharacters!6346 (_1!22070 (get!12321 lt!1241980))))))))

(assert (= (and d!1062893 c!624441) b!3609166))

(assert (= (and d!1062893 (not c!624441)) b!3609164))

(assert (= (and b!3609164 (not res!1459729)) b!3609160))

(assert (= (and d!1062893 (not res!1459730)) b!3609165))

(assert (= (and b!3609165 res!1459728) b!3609162))

(assert (= (and b!3609162 res!1459726) b!3609159))

(assert (= (and b!3609159 res!1459725) b!3609163))

(assert (= (and b!3609163 res!1459731) b!3609161))

(assert (= (and b!3609161 res!1459727) b!3609167))

(declare-fun m!4106537 () Bool)

(assert (=> b!3609159 m!4106537))

(declare-fun m!4106539 () Bool)

(assert (=> b!3609159 m!4106539))

(declare-fun m!4106541 () Bool)

(assert (=> b!3609159 m!4106541))

(declare-fun m!4106543 () Bool)

(assert (=> b!3609160 m!4106543))

(assert (=> b!3609160 m!4106541))

(assert (=> b!3609160 m!4106543))

(assert (=> b!3609160 m!4106541))

(declare-fun m!4106545 () Bool)

(assert (=> b!3609160 m!4106545))

(declare-fun m!4106547 () Bool)

(assert (=> b!3609160 m!4106547))

(assert (=> b!3609162 m!4106537))

(declare-fun m!4106549 () Bool)

(assert (=> b!3609162 m!4106549))

(assert (=> b!3609162 m!4106549))

(declare-fun m!4106551 () Bool)

(assert (=> b!3609162 m!4106551))

(assert (=> b!3609162 m!4106551))

(declare-fun m!4106553 () Bool)

(assert (=> b!3609162 m!4106553))

(assert (=> b!3609163 m!4106537))

(assert (=> b!3609167 m!4106537))

(declare-fun m!4106555 () Bool)

(assert (=> b!3609167 m!4106555))

(declare-fun m!4106557 () Bool)

(assert (=> d!1062893 m!4106557))

(declare-fun m!4106559 () Bool)

(assert (=> d!1062893 m!4106559))

(declare-fun m!4106561 () Bool)

(assert (=> d!1062893 m!4106561))

(declare-fun m!4106563 () Bool)

(assert (=> d!1062893 m!4106563))

(assert (=> b!3609164 m!4106541))

(declare-fun m!4106565 () Bool)

(assert (=> b!3609164 m!4106565))

(declare-fun m!4106567 () Bool)

(assert (=> b!3609164 m!4106567))

(declare-fun m!4106569 () Bool)

(assert (=> b!3609164 m!4106569))

(assert (=> b!3609164 m!4106567))

(declare-fun m!4106571 () Bool)

(assert (=> b!3609164 m!4106571))

(assert (=> b!3609164 m!4106567))

(declare-fun m!4106573 () Bool)

(assert (=> b!3609164 m!4106573))

(assert (=> b!3609164 m!4106543))

(assert (=> b!3609164 m!4106541))

(assert (=> b!3609164 m!4106545))

(assert (=> b!3609164 m!4106567))

(declare-fun m!4106575 () Bool)

(assert (=> b!3609164 m!4106575))

(assert (=> b!3609164 m!4106543))

(assert (=> b!3609161 m!4106537))

(declare-fun m!4106577 () Bool)

(assert (=> b!3609161 m!4106577))

(assert (=> b!3609161 m!4106577))

(declare-fun m!4106579 () Bool)

(assert (=> b!3609161 m!4106579))

(assert (=> b!3609165 m!4106537))

(assert (=> b!3609165 m!4106549))

(assert (=> b!3609165 m!4106549))

(assert (=> b!3609165 m!4106551))

(assert (=> b!3609165 m!4106551))

(declare-fun m!4106581 () Bool)

(assert (=> b!3609165 m!4106581))

(assert (=> b!3608745 d!1062893))

(declare-fun d!1062937 () Bool)

(assert (=> d!1062937 (= (maxPrefixOneRule!1899 thiss!23823 (rule!8380 (_1!22070 lt!1241842)) lt!1241851) (Some!7894 (tuple2!37873 (Token!10631 (apply!9138 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))) (seqFromList!4185 lt!1241847)) (rule!8380 (_1!22070 lt!1241842)) (size!28953 lt!1241847) lt!1241847) (_2!22070 lt!1241842))))))

(declare-fun lt!1241986 () Unit!54124)

(declare-fun choose!21090 (LexerInterface!5221 List!38103 List!38102 List!38102 List!38102 Rule!11064) Unit!54124)

(assert (=> d!1062937 (= lt!1241986 (choose!21090 thiss!23823 rules!3307 lt!1241847 lt!1241851 (_2!22070 lt!1241842) (rule!8380 (_1!22070 lt!1241842))))))

(assert (=> d!1062937 (not (isEmpty!22422 rules!3307))))

(assert (=> d!1062937 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!971 thiss!23823 rules!3307 lt!1241847 lt!1241851 (_2!22070 lt!1241842) (rule!8380 (_1!22070 lt!1241842))) lt!1241986)))

(declare-fun bs!570804 () Bool)

(assert (= bs!570804 d!1062937))

(assert (=> bs!570804 m!4106087))

(assert (=> bs!570804 m!4106089))

(assert (=> bs!570804 m!4106085))

(assert (=> bs!570804 m!4106059))

(assert (=> bs!570804 m!4106087))

(assert (=> bs!570804 m!4106093))

(declare-fun m!4106583 () Bool)

(assert (=> bs!570804 m!4106583))

(assert (=> b!3608745 d!1062937))

(declare-fun d!1062939 () Bool)

(assert (=> d!1062939 (= (_2!22070 lt!1241842) lt!1241835)))

(declare-fun lt!1241989 () Unit!54124)

(declare-fun choose!21091 (List!38102 List!38102 List!38102 List!38102 List!38102) Unit!54124)

(assert (=> d!1062939 (= lt!1241989 (choose!21091 lt!1241847 (_2!22070 lt!1241842) lt!1241847 lt!1241835 lt!1241851))))

(assert (=> d!1062939 (isPrefix!2995 lt!1241847 lt!1241851)))

(assert (=> d!1062939 (= (lemmaSamePrefixThenSameSuffix!1350 lt!1241847 (_2!22070 lt!1241842) lt!1241847 lt!1241835 lt!1241851) lt!1241989)))

(declare-fun bs!570805 () Bool)

(assert (= bs!570805 d!1062939))

(declare-fun m!4106585 () Bool)

(assert (=> bs!570805 m!4106585))

(assert (=> bs!570805 m!4106033))

(assert (=> b!3608745 d!1062939))

(declare-fun d!1062941 () Bool)

(declare-fun dynLambda!16425 (Int BalanceConc!22756) TokenValue!5862)

(assert (=> d!1062941 (= (apply!9138 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))) (seqFromList!4185 lt!1241847)) (dynLambda!16425 (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) (seqFromList!4185 lt!1241847)))))

(declare-fun b_lambda!106787 () Bool)

(assert (=> (not b_lambda!106787) (not d!1062941)))

(declare-fun t!293196 () Bool)

(declare-fun tb!206857 () Bool)

(assert (=> (and b!3608721 (= (toValue!7916 (transformation!5632 (rule!8380 token!511))) (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293196) tb!206857))

(declare-fun result!252104 () Bool)

(assert (=> tb!206857 (= result!252104 (inv!21 (dynLambda!16425 (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) (seqFromList!4185 lt!1241847))))))

(declare-fun m!4106587 () Bool)

(assert (=> tb!206857 m!4106587))

(assert (=> d!1062941 t!293196))

(declare-fun b_and!263027 () Bool)

(assert (= b_and!262963 (and (=> t!293196 result!252104) b_and!263027)))

(declare-fun tb!206859 () Bool)

(declare-fun t!293198 () Bool)

(assert (=> (and b!3608734 (= (toValue!7916 (transformation!5632 (h!43399 rules!3307))) (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293198) tb!206859))

(declare-fun result!252108 () Bool)

(assert (= result!252108 result!252104))

(assert (=> d!1062941 t!293198))

(declare-fun b_and!263029 () Bool)

(assert (= b_and!262967 (and (=> t!293198 result!252108) b_and!263029)))

(declare-fun t!293200 () Bool)

(declare-fun tb!206861 () Bool)

(assert (=> (and b!3608713 (= (toValue!7916 (transformation!5632 anOtherTypeRule!33)) (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293200) tb!206861))

(declare-fun result!252110 () Bool)

(assert (= result!252110 result!252104))

(assert (=> d!1062941 t!293200))

(declare-fun b_and!263031 () Bool)

(assert (= b_and!262971 (and (=> t!293200 result!252110) b_and!263031)))

(declare-fun tb!206863 () Bool)

(declare-fun t!293202 () Bool)

(assert (=> (and b!3608744 (= (toValue!7916 (transformation!5632 rule!403)) (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293202) tb!206863))

(declare-fun result!252112 () Bool)

(assert (= result!252112 result!252104))

(assert (=> d!1062941 t!293202))

(declare-fun b_and!263033 () Bool)

(assert (= b_and!262975 (and (=> t!293202 result!252112) b_and!263033)))

(assert (=> d!1062941 m!4106087))

(declare-fun m!4106589 () Bool)

(assert (=> d!1062941 m!4106589))

(assert (=> b!3608745 d!1062941))

(declare-fun d!1062943 () Bool)

(declare-fun lt!1241992 () List!38102)

(assert (=> d!1062943 (= (++!9448 lt!1241847 lt!1241992) lt!1241851)))

(declare-fun e!2233598 () List!38102)

(assert (=> d!1062943 (= lt!1241992 e!2233598)))

(declare-fun c!624444 () Bool)

(assert (=> d!1062943 (= c!624444 ((_ is Cons!37978) lt!1241847))))

(assert (=> d!1062943 (>= (size!28953 lt!1241851) (size!28953 lt!1241847))))

(assert (=> d!1062943 (= (getSuffix!1570 lt!1241851 lt!1241847) lt!1241992)))

(declare-fun b!3609174 () Bool)

(assert (=> b!3609174 (= e!2233598 (getSuffix!1570 (tail!5595 lt!1241851) (t!293153 lt!1241847)))))

(declare-fun b!3609175 () Bool)

(assert (=> b!3609175 (= e!2233598 lt!1241851)))

(assert (= (and d!1062943 c!624444) b!3609174))

(assert (= (and d!1062943 (not c!624444)) b!3609175))

(declare-fun m!4106591 () Bool)

(assert (=> d!1062943 m!4106591))

(assert (=> d!1062943 m!4106541))

(assert (=> d!1062943 m!4106085))

(declare-fun m!4106593 () Bool)

(assert (=> b!3609174 m!4106593))

(assert (=> b!3609174 m!4106593))

(declare-fun m!4106595 () Bool)

(assert (=> b!3609174 m!4106595))

(assert (=> b!3608745 d!1062943))

(declare-fun d!1062945 () Bool)

(declare-fun fromListB!1935 (List!38102) BalanceConc!22756)

(assert (=> d!1062945 (= (seqFromList!4185 lt!1241847) (fromListB!1935 lt!1241847))))

(declare-fun bs!570806 () Bool)

(assert (= bs!570806 d!1062945))

(declare-fun m!4106597 () Bool)

(assert (=> bs!570806 m!4106597))

(assert (=> b!3608745 d!1062945))

(declare-fun d!1062947 () Bool)

(assert (=> d!1062947 (= (inv!51346 (tag!6336 anOtherTypeRule!33)) (= (mod (str.len (value!180971 (tag!6336 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3608725 d!1062947))

(declare-fun d!1062949 () Bool)

(declare-fun res!1459732 () Bool)

(declare-fun e!2233599 () Bool)

(assert (=> d!1062949 (=> (not res!1459732) (not e!2233599))))

(assert (=> d!1062949 (= res!1459732 (semiInverseModEq!2395 (toChars!7775 (transformation!5632 anOtherTypeRule!33)) (toValue!7916 (transformation!5632 anOtherTypeRule!33))))))

(assert (=> d!1062949 (= (inv!51350 (transformation!5632 anOtherTypeRule!33)) e!2233599)))

(declare-fun b!3609176 () Bool)

(assert (=> b!3609176 (= e!2233599 (equivClasses!2294 (toChars!7775 (transformation!5632 anOtherTypeRule!33)) (toValue!7916 (transformation!5632 anOtherTypeRule!33))))))

(assert (= (and d!1062949 res!1459732) b!3609176))

(declare-fun m!4106599 () Bool)

(assert (=> d!1062949 m!4106599))

(declare-fun m!4106601 () Bool)

(assert (=> b!3609176 m!4106601))

(assert (=> b!3608725 d!1062949))

(declare-fun b!3609187 () Bool)

(declare-fun e!2233608 () Bool)

(assert (=> b!3609187 (= e!2233608 (isPrefix!2995 (tail!5595 lt!1241860) (tail!5595 lt!1241851)))))

(declare-fun d!1062951 () Bool)

(declare-fun e!2233607 () Bool)

(assert (=> d!1062951 e!2233607))

(declare-fun res!1459741 () Bool)

(assert (=> d!1062951 (=> res!1459741 e!2233607)))

(declare-fun lt!1241995 () Bool)

(assert (=> d!1062951 (= res!1459741 (not lt!1241995))))

(declare-fun e!2233606 () Bool)

(assert (=> d!1062951 (= lt!1241995 e!2233606)))

(declare-fun res!1459743 () Bool)

(assert (=> d!1062951 (=> res!1459743 e!2233606)))

(assert (=> d!1062951 (= res!1459743 ((_ is Nil!37978) lt!1241860))))

(assert (=> d!1062951 (= (isPrefix!2995 lt!1241860 lt!1241851) lt!1241995)))

(declare-fun b!3609188 () Bool)

(assert (=> b!3609188 (= e!2233607 (>= (size!28953 lt!1241851) (size!28953 lt!1241860)))))

(declare-fun b!3609185 () Bool)

(assert (=> b!3609185 (= e!2233606 e!2233608)))

(declare-fun res!1459742 () Bool)

(assert (=> b!3609185 (=> (not res!1459742) (not e!2233608))))

(assert (=> b!3609185 (= res!1459742 (not ((_ is Nil!37978) lt!1241851)))))

(declare-fun b!3609186 () Bool)

(declare-fun res!1459744 () Bool)

(assert (=> b!3609186 (=> (not res!1459744) (not e!2233608))))

(assert (=> b!3609186 (= res!1459744 (= (head!7588 lt!1241860) (head!7588 lt!1241851)))))

(assert (= (and d!1062951 (not res!1459743)) b!3609185))

(assert (= (and b!3609185 res!1459742) b!3609186))

(assert (= (and b!3609186 res!1459744) b!3609187))

(assert (= (and d!1062951 (not res!1459741)) b!3609188))

(assert (=> b!3609187 m!4106371))

(assert (=> b!3609187 m!4106593))

(assert (=> b!3609187 m!4106371))

(assert (=> b!3609187 m!4106593))

(declare-fun m!4106603 () Bool)

(assert (=> b!3609187 m!4106603))

(assert (=> b!3609188 m!4106541))

(declare-fun m!4106605 () Bool)

(assert (=> b!3609188 m!4106605))

(assert (=> b!3609186 m!4106377))

(declare-fun m!4106607 () Bool)

(assert (=> b!3609186 m!4106607))

(assert (=> b!3608724 d!1062951))

(declare-fun lt!1241998 () List!38102)

(declare-fun e!2233613 () Bool)

(declare-fun b!3609200 () Bool)

(assert (=> b!3609200 (= e!2233613 (or (not (= (_2!22070 lt!1241842) Nil!37978)) (= lt!1241998 lt!1241847)))))

(declare-fun b!3609198 () Bool)

(declare-fun e!2233614 () List!38102)

(assert (=> b!3609198 (= e!2233614 (Cons!37978 (h!43398 lt!1241847) (++!9448 (t!293153 lt!1241847) (_2!22070 lt!1241842))))))

(declare-fun b!3609197 () Bool)

(assert (=> b!3609197 (= e!2233614 (_2!22070 lt!1241842))))

(declare-fun d!1062953 () Bool)

(assert (=> d!1062953 e!2233613))

(declare-fun res!1459750 () Bool)

(assert (=> d!1062953 (=> (not res!1459750) (not e!2233613))))

(assert (=> d!1062953 (= res!1459750 (= (content!5430 lt!1241998) ((_ map or) (content!5430 lt!1241847) (content!5430 (_2!22070 lt!1241842)))))))

(assert (=> d!1062953 (= lt!1241998 e!2233614)))

(declare-fun c!624447 () Bool)

(assert (=> d!1062953 (= c!624447 ((_ is Nil!37978) lt!1241847))))

(assert (=> d!1062953 (= (++!9448 lt!1241847 (_2!22070 lt!1241842)) lt!1241998)))

(declare-fun b!3609199 () Bool)

(declare-fun res!1459749 () Bool)

(assert (=> b!3609199 (=> (not res!1459749) (not e!2233613))))

(assert (=> b!3609199 (= res!1459749 (= (size!28953 lt!1241998) (+ (size!28953 lt!1241847) (size!28953 (_2!22070 lt!1241842)))))))

(assert (= (and d!1062953 c!624447) b!3609197))

(assert (= (and d!1062953 (not c!624447)) b!3609198))

(assert (= (and d!1062953 res!1459750) b!3609199))

(assert (= (and b!3609199 res!1459749) b!3609200))

(declare-fun m!4106609 () Bool)

(assert (=> b!3609198 m!4106609))

(declare-fun m!4106611 () Bool)

(assert (=> d!1062953 m!4106611))

(assert (=> d!1062953 m!4106355))

(declare-fun m!4106613 () Bool)

(assert (=> d!1062953 m!4106613))

(declare-fun m!4106615 () Bool)

(assert (=> b!3609199 m!4106615))

(assert (=> b!3609199 m!4106085))

(declare-fun m!4106617 () Bool)

(assert (=> b!3609199 m!4106617))

(assert (=> b!3608724 d!1062953))

(declare-fun d!1062955 () Bool)

(declare-fun isEmpty!22427 (Option!7894) Bool)

(assert (=> d!1062955 (= (isDefined!6127 lt!1241846) (not (isEmpty!22427 lt!1241846)))))

(declare-fun bs!570807 () Bool)

(assert (= bs!570807 d!1062955))

(declare-fun m!4106619 () Bool)

(assert (=> bs!570807 m!4106619))

(assert (=> b!3608724 d!1062955))

(declare-fun e!2233670 () Bool)

(declare-fun b!3609299 () Bool)

(declare-fun lt!1242126 () Token!10630)

(assert (=> b!3609299 (= e!2233670 (= (rule!8380 lt!1242126) (get!12320 (getRuleFromTag!1238 thiss!23823 rules!3307 (tag!6336 (rule!8380 lt!1242126))))))))

(declare-fun b!3609298 () Bool)

(declare-fun res!1459800 () Bool)

(assert (=> b!3609298 (=> (not res!1459800) (not e!2233670))))

(assert (=> b!3609298 (= res!1459800 (matchR!4960 (regex!5632 (get!12320 (getRuleFromTag!1238 thiss!23823 rules!3307 (tag!6336 (rule!8380 lt!1242126))))) (list!14004 (charsOf!3646 lt!1242126))))))

(declare-fun b!3609300 () Bool)

(declare-fun e!2233669 () Unit!54124)

(declare-fun Unit!54134 () Unit!54124)

(assert (=> b!3609300 (= e!2233669 Unit!54134)))

(declare-fun lt!1242128 () List!38102)

(assert (=> b!3609300 (= lt!1242128 (++!9448 lt!1241860 suffix!1395))))

(declare-fun lt!1242134 () Unit!54124)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!484 (LexerInterface!5221 Rule!11064 List!38103 List!38102) Unit!54124)

(assert (=> b!3609300 (= lt!1242134 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!484 thiss!23823 (rule!8380 lt!1242126) rules!3307 lt!1242128))))

(assert (=> b!3609300 (isEmpty!22426 (maxPrefixOneRule!1899 thiss!23823 (rule!8380 lt!1242126) lt!1242128))))

(declare-fun lt!1242136 () Unit!54124)

(assert (=> b!3609300 (= lt!1242136 lt!1242134)))

(declare-fun lt!1242122 () List!38102)

(assert (=> b!3609300 (= lt!1242122 (list!14004 (charsOf!3646 lt!1242126)))))

(declare-fun lt!1242129 () Unit!54124)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!472 (LexerInterface!5221 Rule!11064 List!38102 List!38102) Unit!54124)

(assert (=> b!3609300 (= lt!1242129 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!472 thiss!23823 (rule!8380 lt!1242126) lt!1242122 (++!9448 lt!1241860 suffix!1395)))))

(assert (=> b!3609300 (not (matchR!4960 (regex!5632 (rule!8380 lt!1242126)) lt!1242122))))

(declare-fun lt!1242125 () Unit!54124)

(assert (=> b!3609300 (= lt!1242125 lt!1242129)))

(assert (=> b!3609300 false))

(declare-fun b!3609301 () Bool)

(declare-fun Unit!54135 () Unit!54124)

(assert (=> b!3609301 (= e!2233669 Unit!54135)))

(declare-fun d!1062957 () Bool)

(assert (=> d!1062957 (isDefined!6126 (maxPrefix!2755 thiss!23823 rules!3307 (++!9448 lt!1241860 suffix!1395)))))

(declare-fun lt!1242121 () Unit!54124)

(assert (=> d!1062957 (= lt!1242121 e!2233669)))

(declare-fun c!624474 () Bool)

(assert (=> d!1062957 (= c!624474 (isEmpty!22426 (maxPrefix!2755 thiss!23823 rules!3307 (++!9448 lt!1241860 suffix!1395))))))

(declare-fun lt!1242123 () Unit!54124)

(declare-fun lt!1242133 () Unit!54124)

(assert (=> d!1062957 (= lt!1242123 lt!1242133)))

(assert (=> d!1062957 e!2233670))

(declare-fun res!1459801 () Bool)

(assert (=> d!1062957 (=> (not res!1459801) (not e!2233670))))

(assert (=> d!1062957 (= res!1459801 (isDefined!6127 (getRuleFromTag!1238 thiss!23823 rules!3307 (tag!6336 (rule!8380 lt!1242126)))))))

(assert (=> d!1062957 (= lt!1242133 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1238 thiss!23823 rules!3307 lt!1241860 lt!1242126))))

(declare-fun lt!1242135 () Unit!54124)

(declare-fun lt!1242124 () Unit!54124)

(assert (=> d!1062957 (= lt!1242135 lt!1242124)))

(declare-fun lt!1242132 () List!38102)

(assert (=> d!1062957 (isPrefix!2995 lt!1242132 (++!9448 lt!1241860 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!448 (List!38102 List!38102 List!38102) Unit!54124)

(assert (=> d!1062957 (= lt!1242124 (lemmaPrefixStaysPrefixWhenAddingToSuffix!448 lt!1242132 lt!1241860 suffix!1395))))

(assert (=> d!1062957 (= lt!1242132 (list!14004 (charsOf!3646 lt!1242126)))))

(declare-fun lt!1242130 () Unit!54124)

(declare-fun lt!1242137 () Unit!54124)

(assert (=> d!1062957 (= lt!1242130 lt!1242137)))

(declare-fun lt!1242131 () List!38102)

(declare-fun lt!1242127 () List!38102)

(assert (=> d!1062957 (isPrefix!2995 lt!1242131 (++!9448 lt!1242131 lt!1242127))))

(assert (=> d!1062957 (= lt!1242137 (lemmaConcatTwoListThenFirstIsPrefix!1916 lt!1242131 lt!1242127))))

(assert (=> d!1062957 (= lt!1242127 (_2!22070 (get!12321 (maxPrefix!2755 thiss!23823 rules!3307 lt!1241860))))))

(assert (=> d!1062957 (= lt!1242131 (list!14004 (charsOf!3646 lt!1242126)))))

(declare-datatypes ((List!38106 0))(
  ( (Nil!37982) (Cons!37982 (h!43402 Token!10630) (t!293277 List!38106)) )
))
(declare-fun head!7590 (List!38106) Token!10630)

(declare-datatypes ((IArray!23151 0))(
  ( (IArray!23152 (innerList!11633 List!38106)) )
))
(declare-datatypes ((Conc!11573 0))(
  ( (Node!11573 (left!29679 Conc!11573) (right!30009 Conc!11573) (csize!23376 Int) (cheight!11784 Int)) (Leaf!18000 (xs!14775 IArray!23151) (csize!23377 Int)) (Empty!11573) )
))
(declare-datatypes ((BalanceConc!22760 0))(
  ( (BalanceConc!22761 (c!624497 Conc!11573)) )
))
(declare-fun list!14008 (BalanceConc!22760) List!38106)

(declare-datatypes ((tuple2!37880 0))(
  ( (tuple2!37881 (_1!22074 BalanceConc!22760) (_2!22074 BalanceConc!22756)) )
))
(declare-fun lex!2480 (LexerInterface!5221 List!38103 BalanceConc!22756) tuple2!37880)

(assert (=> d!1062957 (= lt!1242126 (head!7590 (list!14008 (_1!22074 (lex!2480 thiss!23823 rules!3307 (seqFromList!4185 lt!1241860))))))))

(assert (=> d!1062957 (not (isEmpty!22422 rules!3307))))

(assert (=> d!1062957 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!901 thiss!23823 rules!3307 lt!1241860 suffix!1395) lt!1242121)))

(assert (= (and d!1062957 res!1459801) b!3609298))

(assert (= (and b!3609298 res!1459800) b!3609299))

(assert (= (and d!1062957 c!624474) b!3609300))

(assert (= (and d!1062957 (not c!624474)) b!3609301))

(declare-fun m!4106785 () Bool)

(assert (=> b!3609299 m!4106785))

(assert (=> b!3609299 m!4106785))

(declare-fun m!4106787 () Bool)

(assert (=> b!3609299 m!4106787))

(assert (=> b!3609298 m!4106785))

(assert (=> b!3609298 m!4106785))

(assert (=> b!3609298 m!4106787))

(declare-fun m!4106789 () Bool)

(assert (=> b!3609298 m!4106789))

(declare-fun m!4106791 () Bool)

(assert (=> b!3609298 m!4106791))

(declare-fun m!4106793 () Bool)

(assert (=> b!3609298 m!4106793))

(assert (=> b!3609298 m!4106789))

(assert (=> b!3609298 m!4106793))

(declare-fun m!4106795 () Bool)

(assert (=> b!3609300 m!4106795))

(declare-fun m!4106797 () Bool)

(assert (=> b!3609300 m!4106797))

(assert (=> b!3609300 m!4106031))

(assert (=> b!3609300 m!4106793))

(assert (=> b!3609300 m!4106789))

(assert (=> b!3609300 m!4106793))

(assert (=> b!3609300 m!4106031))

(declare-fun m!4106799 () Bool)

(assert (=> b!3609300 m!4106799))

(assert (=> b!3609300 m!4106795))

(declare-fun m!4106801 () Bool)

(assert (=> b!3609300 m!4106801))

(declare-fun m!4106803 () Bool)

(assert (=> b!3609300 m!4106803))

(assert (=> d!1062957 m!4106785))

(assert (=> d!1062957 m!4106059))

(assert (=> d!1062957 m!4106793))

(assert (=> d!1062957 m!4106789))

(assert (=> d!1062957 m!4106793))

(declare-fun m!4106805 () Bool)

(assert (=> d!1062957 m!4106805))

(declare-fun m!4106807 () Bool)

(assert (=> d!1062957 m!4106807))

(assert (=> d!1062957 m!4106785))

(declare-fun m!4106809 () Bool)

(assert (=> d!1062957 m!4106809))

(declare-fun m!4106811 () Bool)

(assert (=> d!1062957 m!4106811))

(assert (=> d!1062957 m!4106031))

(declare-fun m!4106813 () Bool)

(assert (=> d!1062957 m!4106813))

(declare-fun m!4106815 () Bool)

(assert (=> d!1062957 m!4106815))

(assert (=> d!1062957 m!4106813))

(declare-fun m!4106817 () Bool)

(assert (=> d!1062957 m!4106817))

(declare-fun m!4106819 () Bool)

(assert (=> d!1062957 m!4106819))

(declare-fun m!4106821 () Bool)

(assert (=> d!1062957 m!4106821))

(assert (=> d!1062957 m!4106811))

(declare-fun m!4106823 () Bool)

(assert (=> d!1062957 m!4106823))

(assert (=> d!1062957 m!4105995))

(declare-fun m!4106825 () Bool)

(assert (=> d!1062957 m!4106825))

(assert (=> d!1062957 m!4106031))

(declare-fun m!4106827 () Bool)

(assert (=> d!1062957 m!4106827))

(assert (=> d!1062957 m!4106805))

(assert (=> d!1062957 m!4106819))

(assert (=> d!1062957 m!4105995))

(assert (=> d!1062957 m!4106031))

(declare-fun m!4106829 () Bool)

(assert (=> d!1062957 m!4106829))

(declare-fun m!4106831 () Bool)

(assert (=> d!1062957 m!4106831))

(assert (=> d!1062957 m!4106813))

(declare-fun m!4106833 () Bool)

(assert (=> d!1062957 m!4106833))

(assert (=> b!3608724 d!1062957))

(declare-fun d!1062991 () Bool)

(assert (=> d!1062991 (= (get!12321 lt!1241839) (v!37632 lt!1241839))))

(assert (=> b!3608724 d!1062991))

(declare-fun lt!1242138 () List!38102)

(declare-fun e!2233671 () Bool)

(declare-fun b!3609305 () Bool)

(assert (=> b!3609305 (= e!2233671 (or (not (= suffix!1395 Nil!37978)) (= lt!1242138 lt!1241860)))))

(declare-fun b!3609303 () Bool)

(declare-fun e!2233672 () List!38102)

(assert (=> b!3609303 (= e!2233672 (Cons!37978 (h!43398 lt!1241860) (++!9448 (t!293153 lt!1241860) suffix!1395)))))

(declare-fun b!3609302 () Bool)

(assert (=> b!3609302 (= e!2233672 suffix!1395)))

(declare-fun d!1062993 () Bool)

(assert (=> d!1062993 e!2233671))

(declare-fun res!1459803 () Bool)

(assert (=> d!1062993 (=> (not res!1459803) (not e!2233671))))

(assert (=> d!1062993 (= res!1459803 (= (content!5430 lt!1242138) ((_ map or) (content!5430 lt!1241860) (content!5430 suffix!1395))))))

(assert (=> d!1062993 (= lt!1242138 e!2233672)))

(declare-fun c!624475 () Bool)

(assert (=> d!1062993 (= c!624475 ((_ is Nil!37978) lt!1241860))))

(assert (=> d!1062993 (= (++!9448 lt!1241860 suffix!1395) lt!1242138)))

(declare-fun b!3609304 () Bool)

(declare-fun res!1459802 () Bool)

(assert (=> b!3609304 (=> (not res!1459802) (not e!2233671))))

(assert (=> b!3609304 (= res!1459802 (= (size!28953 lt!1242138) (+ (size!28953 lt!1241860) (size!28953 suffix!1395))))))

(assert (= (and d!1062993 c!624475) b!3609302))

(assert (= (and d!1062993 (not c!624475)) b!3609303))

(assert (= (and d!1062993 res!1459803) b!3609304))

(assert (= (and b!3609304 res!1459802) b!3609305))

(declare-fun m!4106835 () Bool)

(assert (=> b!3609303 m!4106835))

(declare-fun m!4106837 () Bool)

(assert (=> d!1062993 m!4106837))

(declare-fun m!4106839 () Bool)

(assert (=> d!1062993 m!4106839))

(declare-fun m!4106841 () Bool)

(assert (=> d!1062993 m!4106841))

(declare-fun m!4106843 () Bool)

(assert (=> b!3609304 m!4106843))

(assert (=> b!3609304 m!4106605))

(declare-fun m!4106845 () Bool)

(assert (=> b!3609304 m!4106845))

(assert (=> b!3608724 d!1062993))

(declare-fun b!3609308 () Bool)

(declare-fun e!2233675 () Bool)

(assert (=> b!3609308 (= e!2233675 (isPrefix!2995 (tail!5595 lt!1241847) (tail!5595 lt!1241851)))))

(declare-fun d!1062995 () Bool)

(declare-fun e!2233674 () Bool)

(assert (=> d!1062995 e!2233674))

(declare-fun res!1459804 () Bool)

(assert (=> d!1062995 (=> res!1459804 e!2233674)))

(declare-fun lt!1242139 () Bool)

(assert (=> d!1062995 (= res!1459804 (not lt!1242139))))

(declare-fun e!2233673 () Bool)

(assert (=> d!1062995 (= lt!1242139 e!2233673)))

(declare-fun res!1459806 () Bool)

(assert (=> d!1062995 (=> res!1459806 e!2233673)))

(assert (=> d!1062995 (= res!1459806 ((_ is Nil!37978) lt!1241847))))

(assert (=> d!1062995 (= (isPrefix!2995 lt!1241847 lt!1241851) lt!1242139)))

(declare-fun b!3609309 () Bool)

(assert (=> b!3609309 (= e!2233674 (>= (size!28953 lt!1241851) (size!28953 lt!1241847)))))

(declare-fun b!3609306 () Bool)

(assert (=> b!3609306 (= e!2233673 e!2233675)))

(declare-fun res!1459805 () Bool)

(assert (=> b!3609306 (=> (not res!1459805) (not e!2233675))))

(assert (=> b!3609306 (= res!1459805 (not ((_ is Nil!37978) lt!1241851)))))

(declare-fun b!3609307 () Bool)

(declare-fun res!1459807 () Bool)

(assert (=> b!3609307 (=> (not res!1459807) (not e!2233675))))

(assert (=> b!3609307 (= res!1459807 (= (head!7588 lt!1241847) (head!7588 lt!1241851)))))

(assert (= (and d!1062995 (not res!1459806)) b!3609306))

(assert (= (and b!3609306 res!1459805) b!3609307))

(assert (= (and b!3609307 res!1459807) b!3609308))

(assert (= (and d!1062995 (not res!1459804)) b!3609309))

(assert (=> b!3609308 m!4106447))

(assert (=> b!3609308 m!4106593))

(assert (=> b!3609308 m!4106447))

(assert (=> b!3609308 m!4106593))

(declare-fun m!4106847 () Bool)

(assert (=> b!3609308 m!4106847))

(assert (=> b!3609309 m!4106541))

(assert (=> b!3609309 m!4106085))

(assert (=> b!3609307 m!4106065))

(assert (=> b!3609307 m!4106607))

(assert (=> b!3608724 d!1062995))

(declare-fun d!1062997 () Bool)

(declare-fun e!2233678 () Bool)

(assert (=> d!1062997 e!2233678))

(declare-fun res!1459812 () Bool)

(assert (=> d!1062997 (=> (not res!1459812) (not e!2233678))))

(assert (=> d!1062997 (= res!1459812 (isDefined!6127 (getRuleFromTag!1238 thiss!23823 rules!3307 (tag!6336 (rule!8380 (_1!22070 lt!1241842))))))))

(declare-fun lt!1242142 () Unit!54124)

(declare-fun choose!21095 (LexerInterface!5221 List!38103 List!38102 Token!10630) Unit!54124)

(assert (=> d!1062997 (= lt!1242142 (choose!21095 thiss!23823 rules!3307 lt!1241851 (_1!22070 lt!1241842)))))

(assert (=> d!1062997 (rulesInvariant!4618 thiss!23823 rules!3307)))

(assert (=> d!1062997 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1238 thiss!23823 rules!3307 lt!1241851 (_1!22070 lt!1241842)) lt!1242142)))

(declare-fun b!3609314 () Bool)

(declare-fun res!1459813 () Bool)

(assert (=> b!3609314 (=> (not res!1459813) (not e!2233678))))

(assert (=> b!3609314 (= res!1459813 (matchR!4960 (regex!5632 (get!12320 (getRuleFromTag!1238 thiss!23823 rules!3307 (tag!6336 (rule!8380 (_1!22070 lt!1241842)))))) (list!14004 (charsOf!3646 (_1!22070 lt!1241842)))))))

(declare-fun b!3609315 () Bool)

(assert (=> b!3609315 (= e!2233678 (= (rule!8380 (_1!22070 lt!1241842)) (get!12320 (getRuleFromTag!1238 thiss!23823 rules!3307 (tag!6336 (rule!8380 (_1!22070 lt!1241842)))))))))

(assert (= (and d!1062997 res!1459812) b!3609314))

(assert (= (and b!3609314 res!1459813) b!3609315))

(assert (=> d!1062997 m!4106039))

(assert (=> d!1062997 m!4106039))

(declare-fun m!4106849 () Bool)

(assert (=> d!1062997 m!4106849))

(declare-fun m!4106851 () Bool)

(assert (=> d!1062997 m!4106851))

(assert (=> d!1062997 m!4106135))

(assert (=> b!3609314 m!4106019))

(assert (=> b!3609314 m!4106021))

(assert (=> b!3609314 m!4106019))

(assert (=> b!3609314 m!4106039))

(declare-fun m!4106853 () Bool)

(assert (=> b!3609314 m!4106853))

(assert (=> b!3609314 m!4106021))

(declare-fun m!4106855 () Bool)

(assert (=> b!3609314 m!4106855))

(assert (=> b!3609314 m!4106039))

(assert (=> b!3609315 m!4106039))

(assert (=> b!3609315 m!4106039))

(assert (=> b!3609315 m!4106853))

(assert (=> b!3608724 d!1062997))

(declare-fun b!3609318 () Bool)

(declare-fun e!2233681 () Bool)

(assert (=> b!3609318 (= e!2233681 (isPrefix!2995 (tail!5595 lt!1241847) (tail!5595 (++!9448 lt!1241847 (_2!22070 lt!1241842)))))))

(declare-fun d!1062999 () Bool)

(declare-fun e!2233680 () Bool)

(assert (=> d!1062999 e!2233680))

(declare-fun res!1459814 () Bool)

(assert (=> d!1062999 (=> res!1459814 e!2233680)))

(declare-fun lt!1242143 () Bool)

(assert (=> d!1062999 (= res!1459814 (not lt!1242143))))

(declare-fun e!2233679 () Bool)

(assert (=> d!1062999 (= lt!1242143 e!2233679)))

(declare-fun res!1459816 () Bool)

(assert (=> d!1062999 (=> res!1459816 e!2233679)))

(assert (=> d!1062999 (= res!1459816 ((_ is Nil!37978) lt!1241847))))

(assert (=> d!1062999 (= (isPrefix!2995 lt!1241847 (++!9448 lt!1241847 (_2!22070 lt!1241842))) lt!1242143)))

(declare-fun b!3609319 () Bool)

(assert (=> b!3609319 (= e!2233680 (>= (size!28953 (++!9448 lt!1241847 (_2!22070 lt!1241842))) (size!28953 lt!1241847)))))

(declare-fun b!3609316 () Bool)

(assert (=> b!3609316 (= e!2233679 e!2233681)))

(declare-fun res!1459815 () Bool)

(assert (=> b!3609316 (=> (not res!1459815) (not e!2233681))))

(assert (=> b!3609316 (= res!1459815 (not ((_ is Nil!37978) (++!9448 lt!1241847 (_2!22070 lt!1241842)))))))

(declare-fun b!3609317 () Bool)

(declare-fun res!1459817 () Bool)

(assert (=> b!3609317 (=> (not res!1459817) (not e!2233681))))

(assert (=> b!3609317 (= res!1459817 (= (head!7588 lt!1241847) (head!7588 (++!9448 lt!1241847 (_2!22070 lt!1241842)))))))

(assert (= (and d!1062999 (not res!1459816)) b!3609316))

(assert (= (and b!3609316 res!1459815) b!3609317))

(assert (= (and b!3609317 res!1459817) b!3609318))

(assert (= (and d!1062999 (not res!1459814)) b!3609319))

(assert (=> b!3609318 m!4106447))

(assert (=> b!3609318 m!4106035))

(declare-fun m!4106857 () Bool)

(assert (=> b!3609318 m!4106857))

(assert (=> b!3609318 m!4106447))

(assert (=> b!3609318 m!4106857))

(declare-fun m!4106859 () Bool)

(assert (=> b!3609318 m!4106859))

(assert (=> b!3609319 m!4106035))

(declare-fun m!4106861 () Bool)

(assert (=> b!3609319 m!4106861))

(assert (=> b!3609319 m!4106085))

(assert (=> b!3609317 m!4106065))

(assert (=> b!3609317 m!4106035))

(declare-fun m!4106863 () Bool)

(assert (=> b!3609317 m!4106863))

(assert (=> b!3608724 d!1062999))

(declare-fun d!1063001 () Bool)

(assert (=> d!1063001 (isPrefix!2995 lt!1241860 (++!9448 lt!1241860 suffix!1395))))

(declare-fun lt!1242146 () Unit!54124)

(declare-fun choose!21096 (List!38102 List!38102) Unit!54124)

(assert (=> d!1063001 (= lt!1242146 (choose!21096 lt!1241860 suffix!1395))))

(assert (=> d!1063001 (= (lemmaConcatTwoListThenFirstIsPrefix!1916 lt!1241860 suffix!1395) lt!1242146)))

(declare-fun bs!570812 () Bool)

(assert (= bs!570812 d!1063001))

(assert (=> bs!570812 m!4106031))

(assert (=> bs!570812 m!4106031))

(declare-fun m!4106865 () Bool)

(assert (=> bs!570812 m!4106865))

(declare-fun m!4106867 () Bool)

(assert (=> bs!570812 m!4106867))

(assert (=> b!3608724 d!1063001))

(declare-fun b!3609332 () Bool)

(declare-fun e!2233693 () Bool)

(declare-fun e!2233692 () Bool)

(assert (=> b!3609332 (= e!2233693 e!2233692)))

(declare-fun res!1459823 () Bool)

(assert (=> b!3609332 (=> (not res!1459823) (not e!2233692))))

(declare-fun lt!1242154 () Option!7894)

(assert (=> b!3609332 (= res!1459823 (contains!7328 rules!3307 (get!12320 lt!1242154)))))

(declare-fun d!1063003 () Bool)

(assert (=> d!1063003 e!2233693))

(declare-fun res!1459822 () Bool)

(assert (=> d!1063003 (=> res!1459822 e!2233693)))

(assert (=> d!1063003 (= res!1459822 (isEmpty!22427 lt!1242154))))

(declare-fun e!2233691 () Option!7894)

(assert (=> d!1063003 (= lt!1242154 e!2233691)))

(declare-fun c!624481 () Bool)

(assert (=> d!1063003 (= c!624481 (and ((_ is Cons!37979) rules!3307) (= (tag!6336 (h!43399 rules!3307)) (tag!6336 (rule!8380 (_1!22070 lt!1241842))))))))

(assert (=> d!1063003 (rulesInvariant!4618 thiss!23823 rules!3307)))

(assert (=> d!1063003 (= (getRuleFromTag!1238 thiss!23823 rules!3307 (tag!6336 (rule!8380 (_1!22070 lt!1241842)))) lt!1242154)))

(declare-fun b!3609333 () Bool)

(assert (=> b!3609333 (= e!2233691 (Some!7893 (h!43399 rules!3307)))))

(declare-fun b!3609334 () Bool)

(assert (=> b!3609334 (= e!2233692 (= (tag!6336 (get!12320 lt!1242154)) (tag!6336 (rule!8380 (_1!22070 lt!1241842)))))))

(declare-fun b!3609335 () Bool)

(declare-fun lt!1242153 () Unit!54124)

(declare-fun lt!1242155 () Unit!54124)

(assert (=> b!3609335 (= lt!1242153 lt!1242155)))

(assert (=> b!3609335 (rulesInvariant!4618 thiss!23823 (t!293154 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!527 (LexerInterface!5221 Rule!11064 List!38103) Unit!54124)

(assert (=> b!3609335 (= lt!1242155 (lemmaInvariantOnRulesThenOnTail!527 thiss!23823 (h!43399 rules!3307) (t!293154 rules!3307)))))

(declare-fun e!2233690 () Option!7894)

(assert (=> b!3609335 (= e!2233690 (getRuleFromTag!1238 thiss!23823 (t!293154 rules!3307) (tag!6336 (rule!8380 (_1!22070 lt!1241842)))))))

(declare-fun b!3609336 () Bool)

(assert (=> b!3609336 (= e!2233690 None!7893)))

(declare-fun b!3609337 () Bool)

(assert (=> b!3609337 (= e!2233691 e!2233690)))

(declare-fun c!624480 () Bool)

(assert (=> b!3609337 (= c!624480 (and ((_ is Cons!37979) rules!3307) (not (= (tag!6336 (h!43399 rules!3307)) (tag!6336 (rule!8380 (_1!22070 lt!1241842)))))))))

(assert (= (and d!1063003 c!624481) b!3609333))

(assert (= (and d!1063003 (not c!624481)) b!3609337))

(assert (= (and b!3609337 c!624480) b!3609335))

(assert (= (and b!3609337 (not c!624480)) b!3609336))

(assert (= (and d!1063003 (not res!1459822)) b!3609332))

(assert (= (and b!3609332 res!1459823) b!3609334))

(declare-fun m!4106869 () Bool)

(assert (=> b!3609332 m!4106869))

(assert (=> b!3609332 m!4106869))

(declare-fun m!4106871 () Bool)

(assert (=> b!3609332 m!4106871))

(declare-fun m!4106873 () Bool)

(assert (=> d!1063003 m!4106873))

(assert (=> d!1063003 m!4106135))

(assert (=> b!3609334 m!4106869))

(declare-fun m!4106875 () Bool)

(assert (=> b!3609335 m!4106875))

(declare-fun m!4106877 () Bool)

(assert (=> b!3609335 m!4106877))

(declare-fun m!4106879 () Bool)

(assert (=> b!3609335 m!4106879))

(assert (=> b!3608724 d!1063003))

(declare-fun d!1063005 () Bool)

(assert (=> d!1063005 (isPrefix!2995 lt!1241847 (++!9448 lt!1241847 (_2!22070 lt!1241842)))))

(declare-fun lt!1242156 () Unit!54124)

(assert (=> d!1063005 (= lt!1242156 (choose!21096 lt!1241847 (_2!22070 lt!1241842)))))

(assert (=> d!1063005 (= (lemmaConcatTwoListThenFirstIsPrefix!1916 lt!1241847 (_2!22070 lt!1241842)) lt!1242156)))

(declare-fun bs!570813 () Bool)

(assert (= bs!570813 d!1063005))

(assert (=> bs!570813 m!4106035))

(assert (=> bs!570813 m!4106035))

(assert (=> bs!570813 m!4106043))

(declare-fun m!4106881 () Bool)

(assert (=> bs!570813 m!4106881))

(assert (=> b!3608724 d!1063005))

(declare-fun b!3609356 () Bool)

(declare-fun res!1459844 () Bool)

(declare-fun e!2233700 () Bool)

(assert (=> b!3609356 (=> (not res!1459844) (not e!2233700))))

(declare-fun lt!1242170 () Option!7895)

(assert (=> b!3609356 (= res!1459844 (= (value!180972 (_1!22070 (get!12321 lt!1242170))) (apply!9138 (transformation!5632 (rule!8380 (_1!22070 (get!12321 lt!1242170)))) (seqFromList!4185 (originalCharacters!6346 (_1!22070 (get!12321 lt!1242170)))))))))

(declare-fun b!3609357 () Bool)

(declare-fun res!1459840 () Bool)

(assert (=> b!3609357 (=> (not res!1459840) (not e!2233700))))

(assert (=> b!3609357 (= res!1459840 (= (list!14004 (charsOf!3646 (_1!22070 (get!12321 lt!1242170)))) (originalCharacters!6346 (_1!22070 (get!12321 lt!1242170)))))))

(declare-fun b!3609358 () Bool)

(declare-fun e!2233701 () Option!7895)

(declare-fun lt!1242171 () Option!7895)

(declare-fun lt!1242167 () Option!7895)

(assert (=> b!3609358 (= e!2233701 (ite (and ((_ is None!7894) lt!1242171) ((_ is None!7894) lt!1242167)) None!7894 (ite ((_ is None!7894) lt!1242167) lt!1242171 (ite ((_ is None!7894) lt!1242171) lt!1242167 (ite (>= (size!28951 (_1!22070 (v!37632 lt!1242171))) (size!28951 (_1!22070 (v!37632 lt!1242167)))) lt!1242171 lt!1242167)))))))

(declare-fun call!260908 () Option!7895)

(assert (=> b!3609358 (= lt!1242171 call!260908)))

(assert (=> b!3609358 (= lt!1242167 (maxPrefix!2755 thiss!23823 (t!293154 rules!3307) lt!1241851))))

(declare-fun d!1063007 () Bool)

(declare-fun e!2233702 () Bool)

(assert (=> d!1063007 e!2233702))

(declare-fun res!1459841 () Bool)

(assert (=> d!1063007 (=> res!1459841 e!2233702)))

(assert (=> d!1063007 (= res!1459841 (isEmpty!22426 lt!1242170))))

(assert (=> d!1063007 (= lt!1242170 e!2233701)))

(declare-fun c!624484 () Bool)

(assert (=> d!1063007 (= c!624484 (and ((_ is Cons!37979) rules!3307) ((_ is Nil!37979) (t!293154 rules!3307))))))

(declare-fun lt!1242169 () Unit!54124)

(declare-fun lt!1242168 () Unit!54124)

(assert (=> d!1063007 (= lt!1242169 lt!1242168)))

(assert (=> d!1063007 (isPrefix!2995 lt!1241851 lt!1241851)))

(declare-fun lemmaIsPrefixRefl!1914 (List!38102 List!38102) Unit!54124)

(assert (=> d!1063007 (= lt!1242168 (lemmaIsPrefixRefl!1914 lt!1241851 lt!1241851))))

(declare-fun rulesValidInductive!1979 (LexerInterface!5221 List!38103) Bool)

(assert (=> d!1063007 (rulesValidInductive!1979 thiss!23823 rules!3307)))

(assert (=> d!1063007 (= (maxPrefix!2755 thiss!23823 rules!3307 lt!1241851) lt!1242170)))

(declare-fun b!3609359 () Bool)

(declare-fun res!1459839 () Bool)

(assert (=> b!3609359 (=> (not res!1459839) (not e!2233700))))

(assert (=> b!3609359 (= res!1459839 (< (size!28953 (_2!22070 (get!12321 lt!1242170))) (size!28953 lt!1241851)))))

(declare-fun b!3609360 () Bool)

(declare-fun res!1459838 () Bool)

(assert (=> b!3609360 (=> (not res!1459838) (not e!2233700))))

(assert (=> b!3609360 (= res!1459838 (matchR!4960 (regex!5632 (rule!8380 (_1!22070 (get!12321 lt!1242170)))) (list!14004 (charsOf!3646 (_1!22070 (get!12321 lt!1242170))))))))

(declare-fun bm!260903 () Bool)

(assert (=> bm!260903 (= call!260908 (maxPrefixOneRule!1899 thiss!23823 (h!43399 rules!3307) lt!1241851))))

(declare-fun b!3609361 () Bool)

(assert (=> b!3609361 (= e!2233702 e!2233700)))

(declare-fun res!1459843 () Bool)

(assert (=> b!3609361 (=> (not res!1459843) (not e!2233700))))

(assert (=> b!3609361 (= res!1459843 (isDefined!6126 lt!1242170))))

(declare-fun b!3609362 () Bool)

(assert (=> b!3609362 (= e!2233700 (contains!7328 rules!3307 (rule!8380 (_1!22070 (get!12321 lt!1242170)))))))

(declare-fun b!3609363 () Bool)

(declare-fun res!1459842 () Bool)

(assert (=> b!3609363 (=> (not res!1459842) (not e!2233700))))

(assert (=> b!3609363 (= res!1459842 (= (++!9448 (list!14004 (charsOf!3646 (_1!22070 (get!12321 lt!1242170)))) (_2!22070 (get!12321 lt!1242170))) lt!1241851))))

(declare-fun b!3609364 () Bool)

(assert (=> b!3609364 (= e!2233701 call!260908)))

(assert (= (and d!1063007 c!624484) b!3609364))

(assert (= (and d!1063007 (not c!624484)) b!3609358))

(assert (= (or b!3609364 b!3609358) bm!260903))

(assert (= (and d!1063007 (not res!1459841)) b!3609361))

(assert (= (and b!3609361 res!1459843) b!3609357))

(assert (= (and b!3609357 res!1459840) b!3609359))

(assert (= (and b!3609359 res!1459839) b!3609363))

(assert (= (and b!3609363 res!1459842) b!3609356))

(assert (= (and b!3609356 res!1459844) b!3609360))

(assert (= (and b!3609360 res!1459838) b!3609362))

(declare-fun m!4106883 () Bool)

(assert (=> b!3609358 m!4106883))

(declare-fun m!4106885 () Bool)

(assert (=> b!3609357 m!4106885))

(declare-fun m!4106887 () Bool)

(assert (=> b!3609357 m!4106887))

(assert (=> b!3609357 m!4106887))

(declare-fun m!4106889 () Bool)

(assert (=> b!3609357 m!4106889))

(declare-fun m!4106891 () Bool)

(assert (=> d!1063007 m!4106891))

(declare-fun m!4106893 () Bool)

(assert (=> d!1063007 m!4106893))

(declare-fun m!4106895 () Bool)

(assert (=> d!1063007 m!4106895))

(declare-fun m!4106897 () Bool)

(assert (=> d!1063007 m!4106897))

(assert (=> b!3609362 m!4106885))

(declare-fun m!4106899 () Bool)

(assert (=> b!3609362 m!4106899))

(assert (=> b!3609363 m!4106885))

(assert (=> b!3609363 m!4106887))

(assert (=> b!3609363 m!4106887))

(assert (=> b!3609363 m!4106889))

(assert (=> b!3609363 m!4106889))

(declare-fun m!4106901 () Bool)

(assert (=> b!3609363 m!4106901))

(assert (=> b!3609359 m!4106885))

(declare-fun m!4106903 () Bool)

(assert (=> b!3609359 m!4106903))

(assert (=> b!3609359 m!4106541))

(declare-fun m!4106905 () Bool)

(assert (=> b!3609361 m!4106905))

(assert (=> b!3609360 m!4106885))

(assert (=> b!3609360 m!4106887))

(assert (=> b!3609360 m!4106887))

(assert (=> b!3609360 m!4106889))

(assert (=> b!3609360 m!4106889))

(declare-fun m!4106907 () Bool)

(assert (=> b!3609360 m!4106907))

(declare-fun m!4106909 () Bool)

(assert (=> bm!260903 m!4106909))

(assert (=> b!3609356 m!4106885))

(declare-fun m!4106911 () Bool)

(assert (=> b!3609356 m!4106911))

(assert (=> b!3609356 m!4106911))

(declare-fun m!4106913 () Bool)

(assert (=> b!3609356 m!4106913))

(assert (=> b!3608724 d!1063007))

(declare-fun d!1063009 () Bool)

(assert (=> d!1063009 (= (list!14004 lt!1241841) (list!14006 (c!624353 lt!1241841)))))

(declare-fun bs!570814 () Bool)

(assert (= bs!570814 d!1063009))

(declare-fun m!4106915 () Bool)

(assert (=> bs!570814 m!4106915))

(assert (=> b!3608724 d!1063009))

(assert (=> b!3608724 d!1062797))

(declare-fun d!1063011 () Bool)

(declare-fun lt!1242172 () Bool)

(assert (=> d!1063011 (= lt!1242172 (select (content!5433 rules!3307) rule!403))))

(declare-fun e!2233703 () Bool)

(assert (=> d!1063011 (= lt!1242172 e!2233703)))

(declare-fun res!1459846 () Bool)

(assert (=> d!1063011 (=> (not res!1459846) (not e!2233703))))

(assert (=> d!1063011 (= res!1459846 ((_ is Cons!37979) rules!3307))))

(assert (=> d!1063011 (= (contains!7328 rules!3307 rule!403) lt!1242172)))

(declare-fun b!3609365 () Bool)

(declare-fun e!2233704 () Bool)

(assert (=> b!3609365 (= e!2233703 e!2233704)))

(declare-fun res!1459845 () Bool)

(assert (=> b!3609365 (=> res!1459845 e!2233704)))

(assert (=> b!3609365 (= res!1459845 (= (h!43399 rules!3307) rule!403))))

(declare-fun b!3609366 () Bool)

(assert (=> b!3609366 (= e!2233704 (contains!7328 (t!293154 rules!3307) rule!403))))

(assert (= (and d!1063011 res!1459846) b!3609365))

(assert (= (and b!3609365 (not res!1459845)) b!3609366))

(assert (=> d!1063011 m!4106251))

(declare-fun m!4106917 () Bool)

(assert (=> d!1063011 m!4106917))

(declare-fun m!4106919 () Bool)

(assert (=> b!3609366 m!4106919))

(assert (=> b!3608737 d!1063011))

(declare-fun d!1063013 () Bool)

(assert (=> d!1063013 (= (isDefined!6126 lt!1241829) (not (isEmpty!22426 lt!1241829)))))

(declare-fun bs!570815 () Bool)

(assert (= bs!570815 d!1063013))

(declare-fun m!4106921 () Bool)

(assert (=> bs!570815 m!4106921))

(assert (=> b!3608718 d!1063013))

(declare-fun b!3609367 () Bool)

(declare-fun res!1459853 () Bool)

(declare-fun e!2233705 () Bool)

(assert (=> b!3609367 (=> (not res!1459853) (not e!2233705))))

(declare-fun lt!1242176 () Option!7895)

(assert (=> b!3609367 (= res!1459853 (= (value!180972 (_1!22070 (get!12321 lt!1242176))) (apply!9138 (transformation!5632 (rule!8380 (_1!22070 (get!12321 lt!1242176)))) (seqFromList!4185 (originalCharacters!6346 (_1!22070 (get!12321 lt!1242176)))))))))

(declare-fun b!3609368 () Bool)

(declare-fun res!1459849 () Bool)

(assert (=> b!3609368 (=> (not res!1459849) (not e!2233705))))

(assert (=> b!3609368 (= res!1459849 (= (list!14004 (charsOf!3646 (_1!22070 (get!12321 lt!1242176)))) (originalCharacters!6346 (_1!22070 (get!12321 lt!1242176)))))))

(declare-fun b!3609369 () Bool)

(declare-fun e!2233706 () Option!7895)

(declare-fun lt!1242177 () Option!7895)

(declare-fun lt!1242173 () Option!7895)

(assert (=> b!3609369 (= e!2233706 (ite (and ((_ is None!7894) lt!1242177) ((_ is None!7894) lt!1242173)) None!7894 (ite ((_ is None!7894) lt!1242173) lt!1242177 (ite ((_ is None!7894) lt!1242177) lt!1242173 (ite (>= (size!28951 (_1!22070 (v!37632 lt!1242177))) (size!28951 (_1!22070 (v!37632 lt!1242173)))) lt!1242177 lt!1242173)))))))

(declare-fun call!260909 () Option!7895)

(assert (=> b!3609369 (= lt!1242177 call!260909)))

(assert (=> b!3609369 (= lt!1242173 (maxPrefix!2755 thiss!23823 (t!293154 rules!3307) lt!1241860))))

(declare-fun d!1063015 () Bool)

(declare-fun e!2233707 () Bool)

(assert (=> d!1063015 e!2233707))

(declare-fun res!1459850 () Bool)

(assert (=> d!1063015 (=> res!1459850 e!2233707)))

(assert (=> d!1063015 (= res!1459850 (isEmpty!22426 lt!1242176))))

(assert (=> d!1063015 (= lt!1242176 e!2233706)))

(declare-fun c!624485 () Bool)

(assert (=> d!1063015 (= c!624485 (and ((_ is Cons!37979) rules!3307) ((_ is Nil!37979) (t!293154 rules!3307))))))

(declare-fun lt!1242175 () Unit!54124)

(declare-fun lt!1242174 () Unit!54124)

(assert (=> d!1063015 (= lt!1242175 lt!1242174)))

(assert (=> d!1063015 (isPrefix!2995 lt!1241860 lt!1241860)))

(assert (=> d!1063015 (= lt!1242174 (lemmaIsPrefixRefl!1914 lt!1241860 lt!1241860))))

(assert (=> d!1063015 (rulesValidInductive!1979 thiss!23823 rules!3307)))

(assert (=> d!1063015 (= (maxPrefix!2755 thiss!23823 rules!3307 lt!1241860) lt!1242176)))

(declare-fun b!3609370 () Bool)

(declare-fun res!1459848 () Bool)

(assert (=> b!3609370 (=> (not res!1459848) (not e!2233705))))

(assert (=> b!3609370 (= res!1459848 (< (size!28953 (_2!22070 (get!12321 lt!1242176))) (size!28953 lt!1241860)))))

(declare-fun b!3609371 () Bool)

(declare-fun res!1459847 () Bool)

(assert (=> b!3609371 (=> (not res!1459847) (not e!2233705))))

(assert (=> b!3609371 (= res!1459847 (matchR!4960 (regex!5632 (rule!8380 (_1!22070 (get!12321 lt!1242176)))) (list!14004 (charsOf!3646 (_1!22070 (get!12321 lt!1242176))))))))

(declare-fun bm!260904 () Bool)

(assert (=> bm!260904 (= call!260909 (maxPrefixOneRule!1899 thiss!23823 (h!43399 rules!3307) lt!1241860))))

(declare-fun b!3609372 () Bool)

(assert (=> b!3609372 (= e!2233707 e!2233705)))

(declare-fun res!1459852 () Bool)

(assert (=> b!3609372 (=> (not res!1459852) (not e!2233705))))

(assert (=> b!3609372 (= res!1459852 (isDefined!6126 lt!1242176))))

(declare-fun b!3609373 () Bool)

(assert (=> b!3609373 (= e!2233705 (contains!7328 rules!3307 (rule!8380 (_1!22070 (get!12321 lt!1242176)))))))

(declare-fun b!3609374 () Bool)

(declare-fun res!1459851 () Bool)

(assert (=> b!3609374 (=> (not res!1459851) (not e!2233705))))

(assert (=> b!3609374 (= res!1459851 (= (++!9448 (list!14004 (charsOf!3646 (_1!22070 (get!12321 lt!1242176)))) (_2!22070 (get!12321 lt!1242176))) lt!1241860))))

(declare-fun b!3609375 () Bool)

(assert (=> b!3609375 (= e!2233706 call!260909)))

(assert (= (and d!1063015 c!624485) b!3609375))

(assert (= (and d!1063015 (not c!624485)) b!3609369))

(assert (= (or b!3609375 b!3609369) bm!260904))

(assert (= (and d!1063015 (not res!1459850)) b!3609372))

(assert (= (and b!3609372 res!1459852) b!3609368))

(assert (= (and b!3609368 res!1459849) b!3609370))

(assert (= (and b!3609370 res!1459848) b!3609374))

(assert (= (and b!3609374 res!1459851) b!3609367))

(assert (= (and b!3609367 res!1459853) b!3609371))

(assert (= (and b!3609371 res!1459847) b!3609373))

(declare-fun m!4106923 () Bool)

(assert (=> b!3609369 m!4106923))

(declare-fun m!4106925 () Bool)

(assert (=> b!3609368 m!4106925))

(declare-fun m!4106927 () Bool)

(assert (=> b!3609368 m!4106927))

(assert (=> b!3609368 m!4106927))

(declare-fun m!4106929 () Bool)

(assert (=> b!3609368 m!4106929))

(declare-fun m!4106931 () Bool)

(assert (=> d!1063015 m!4106931))

(declare-fun m!4106933 () Bool)

(assert (=> d!1063015 m!4106933))

(declare-fun m!4106935 () Bool)

(assert (=> d!1063015 m!4106935))

(assert (=> d!1063015 m!4106897))

(assert (=> b!3609373 m!4106925))

(declare-fun m!4106937 () Bool)

(assert (=> b!3609373 m!4106937))

(assert (=> b!3609374 m!4106925))

(assert (=> b!3609374 m!4106927))

(assert (=> b!3609374 m!4106927))

(assert (=> b!3609374 m!4106929))

(assert (=> b!3609374 m!4106929))

(declare-fun m!4106939 () Bool)

(assert (=> b!3609374 m!4106939))

(assert (=> b!3609370 m!4106925))

(declare-fun m!4106941 () Bool)

(assert (=> b!3609370 m!4106941))

(assert (=> b!3609370 m!4106605))

(declare-fun m!4106943 () Bool)

(assert (=> b!3609372 m!4106943))

(assert (=> b!3609371 m!4106925))

(assert (=> b!3609371 m!4106927))

(assert (=> b!3609371 m!4106927))

(assert (=> b!3609371 m!4106929))

(assert (=> b!3609371 m!4106929))

(declare-fun m!4106945 () Bool)

(assert (=> b!3609371 m!4106945))

(declare-fun m!4106947 () Bool)

(assert (=> bm!260904 m!4106947))

(assert (=> b!3609367 m!4106925))

(declare-fun m!4106949 () Bool)

(assert (=> b!3609367 m!4106949))

(assert (=> b!3609367 m!4106949))

(declare-fun m!4106951 () Bool)

(assert (=> b!3609367 m!4106951))

(assert (=> b!3608718 d!1063015))

(declare-fun d!1063017 () Bool)

(assert (=> d!1063017 (= (list!14004 lt!1241832) (list!14006 (c!624353 lt!1241832)))))

(declare-fun bs!570816 () Bool)

(assert (= bs!570816 d!1063017))

(declare-fun m!4106953 () Bool)

(assert (=> bs!570816 m!4106953))

(assert (=> b!3608718 d!1063017))

(declare-fun d!1063019 () Bool)

(declare-fun lt!1242178 () BalanceConc!22756)

(assert (=> d!1063019 (= (list!14004 lt!1242178) (originalCharacters!6346 token!511))))

(assert (=> d!1063019 (= lt!1242178 (dynLambda!16424 (toChars!7775 (transformation!5632 (rule!8380 token!511))) (value!180972 token!511)))))

(assert (=> d!1063019 (= (charsOf!3646 token!511) lt!1242178)))

(declare-fun b_lambda!106789 () Bool)

(assert (=> (not b_lambda!106789) (not d!1063019)))

(assert (=> d!1063019 t!293180))

(declare-fun b_and!263035 () Bool)

(assert (= b_and!263003 (and (=> t!293180 result!252088) b_and!263035)))

(assert (=> d!1063019 t!293182))

(declare-fun b_and!263037 () Bool)

(assert (= b_and!263005 (and (=> t!293182 result!252090) b_and!263037)))

(assert (=> d!1063019 t!293184))

(declare-fun b_and!263039 () Bool)

(assert (= b_and!263007 (and (=> t!293184 result!252092) b_and!263039)))

(assert (=> d!1063019 t!293186))

(declare-fun b_and!263041 () Bool)

(assert (= b_and!263009 (and (=> t!293186 result!252094) b_and!263041)))

(declare-fun m!4106955 () Bool)

(assert (=> d!1063019 m!4106955))

(assert (=> d!1063019 m!4106407))

(assert (=> b!3608718 d!1063019))

(declare-fun d!1063021 () Bool)

(assert (=> d!1063021 (= (seqFromList!4185 (originalCharacters!6346 (_1!22070 lt!1241842))) (fromListB!1935 (originalCharacters!6346 (_1!22070 lt!1241842))))))

(declare-fun bs!570817 () Bool)

(assert (= bs!570817 d!1063021))

(declare-fun m!4106957 () Bool)

(assert (=> bs!570817 m!4106957))

(assert (=> b!3608736 d!1063021))

(declare-fun b!3609461 () Bool)

(declare-fun e!2233758 () Bool)

(assert (=> b!3609461 (= e!2233758 true)))

(declare-fun d!1063023 () Bool)

(assert (=> d!1063023 e!2233758))

(assert (= d!1063023 b!3609461))

(declare-fun order!20749 () Int)

(declare-fun lambda!124050 () Int)

(declare-fun order!20747 () Int)

(declare-fun dynLambda!16430 (Int Int) Int)

(declare-fun dynLambda!16431 (Int Int) Int)

(assert (=> b!3609461 (< (dynLambda!16430 order!20747 (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) (dynLambda!16431 order!20749 lambda!124050))))

(declare-fun order!20751 () Int)

(declare-fun dynLambda!16432 (Int Int) Int)

(assert (=> b!3609461 (< (dynLambda!16432 order!20751 (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) (dynLambda!16431 order!20749 lambda!124050))))

(assert (=> d!1063023 (= (dynLambda!16425 (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) lt!1241841) (dynLambda!16425 (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) (seqFromList!4185 (originalCharacters!6346 (_1!22070 lt!1241842)))))))

(declare-fun lt!1242191 () Unit!54124)

(declare-fun Forall2of!314 (Int BalanceConc!22756 BalanceConc!22756) Unit!54124)

(assert (=> d!1063023 (= lt!1242191 (Forall2of!314 lambda!124050 lt!1241841 (seqFromList!4185 (originalCharacters!6346 (_1!22070 lt!1241842)))))))

(assert (=> d!1063023 (= (list!14004 lt!1241841) (list!14004 (seqFromList!4185 (originalCharacters!6346 (_1!22070 lt!1241842)))))))

(assert (=> d!1063023 (= (lemmaEqSameImage!823 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))) lt!1241841 (seqFromList!4185 (originalCharacters!6346 (_1!22070 lt!1241842)))) lt!1242191)))

(declare-fun b_lambda!106805 () Bool)

(assert (=> (not b_lambda!106805) (not d!1063023)))

(declare-fun tb!206901 () Bool)

(declare-fun t!293240 () Bool)

(assert (=> (and b!3608721 (= (toValue!7916 (transformation!5632 (rule!8380 token!511))) (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293240) tb!206901))

(declare-fun result!252156 () Bool)

(assert (=> tb!206901 (= result!252156 (inv!21 (dynLambda!16425 (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) lt!1241841)))))

(declare-fun m!4107013 () Bool)

(assert (=> tb!206901 m!4107013))

(assert (=> d!1063023 t!293240))

(declare-fun b_and!263087 () Bool)

(assert (= b_and!263027 (and (=> t!293240 result!252156) b_and!263087)))

(declare-fun tb!206903 () Bool)

(declare-fun t!293242 () Bool)

(assert (=> (and b!3608734 (= (toValue!7916 (transformation!5632 (h!43399 rules!3307))) (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293242) tb!206903))

(declare-fun result!252158 () Bool)

(assert (= result!252158 result!252156))

(assert (=> d!1063023 t!293242))

(declare-fun b_and!263089 () Bool)

(assert (= b_and!263029 (and (=> t!293242 result!252158) b_and!263089)))

(declare-fun tb!206905 () Bool)

(declare-fun t!293244 () Bool)

(assert (=> (and b!3608713 (= (toValue!7916 (transformation!5632 anOtherTypeRule!33)) (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293244) tb!206905))

(declare-fun result!252160 () Bool)

(assert (= result!252160 result!252156))

(assert (=> d!1063023 t!293244))

(declare-fun b_and!263091 () Bool)

(assert (= b_and!263031 (and (=> t!293244 result!252160) b_and!263091)))

(declare-fun tb!206907 () Bool)

(declare-fun t!293246 () Bool)

(assert (=> (and b!3608744 (= (toValue!7916 (transformation!5632 rule!403)) (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293246) tb!206907))

(declare-fun result!252162 () Bool)

(assert (= result!252162 result!252156))

(assert (=> d!1063023 t!293246))

(declare-fun b_and!263093 () Bool)

(assert (= b_and!263033 (and (=> t!293246 result!252162) b_and!263093)))

(declare-fun b_lambda!106807 () Bool)

(assert (=> (not b_lambda!106807) (not d!1063023)))

(declare-fun t!293248 () Bool)

(declare-fun tb!206909 () Bool)

(assert (=> (and b!3608721 (= (toValue!7916 (transformation!5632 (rule!8380 token!511))) (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293248) tb!206909))

(declare-fun result!252164 () Bool)

(assert (=> tb!206909 (= result!252164 (inv!21 (dynLambda!16425 (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) (seqFromList!4185 (originalCharacters!6346 (_1!22070 lt!1241842))))))))

(declare-fun m!4107015 () Bool)

(assert (=> tb!206909 m!4107015))

(assert (=> d!1063023 t!293248))

(declare-fun b_and!263095 () Bool)

(assert (= b_and!263087 (and (=> t!293248 result!252164) b_and!263095)))

(declare-fun t!293250 () Bool)

(declare-fun tb!206911 () Bool)

(assert (=> (and b!3608734 (= (toValue!7916 (transformation!5632 (h!43399 rules!3307))) (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293250) tb!206911))

(declare-fun result!252166 () Bool)

(assert (= result!252166 result!252164))

(assert (=> d!1063023 t!293250))

(declare-fun b_and!263097 () Bool)

(assert (= b_and!263089 (and (=> t!293250 result!252166) b_and!263097)))

(declare-fun t!293252 () Bool)

(declare-fun tb!206913 () Bool)

(assert (=> (and b!3608713 (= (toValue!7916 (transformation!5632 anOtherTypeRule!33)) (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293252) tb!206913))

(declare-fun result!252168 () Bool)

(assert (= result!252168 result!252164))

(assert (=> d!1063023 t!293252))

(declare-fun b_and!263099 () Bool)

(assert (= b_and!263091 (and (=> t!293252 result!252168) b_and!263099)))

(declare-fun tb!206915 () Bool)

(declare-fun t!293254 () Bool)

(assert (=> (and b!3608744 (= (toValue!7916 (transformation!5632 rule!403)) (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293254) tb!206915))

(declare-fun result!252170 () Bool)

(assert (= result!252170 result!252164))

(assert (=> d!1063023 t!293254))

(declare-fun b_and!263101 () Bool)

(assert (= b_and!263093 (and (=> t!293254 result!252170) b_and!263101)))

(assert (=> d!1063023 m!4106125))

(declare-fun m!4107017 () Bool)

(assert (=> d!1063023 m!4107017))

(assert (=> d!1063023 m!4106041))

(assert (=> d!1063023 m!4106125))

(declare-fun m!4107019 () Bool)

(assert (=> d!1063023 m!4107019))

(assert (=> d!1063023 m!4106125))

(declare-fun m!4107021 () Bool)

(assert (=> d!1063023 m!4107021))

(declare-fun m!4107023 () Bool)

(assert (=> d!1063023 m!4107023))

(assert (=> b!3608736 d!1063023))

(declare-fun d!1063047 () Bool)

(assert (=> d!1063047 (= (size!28951 (_1!22070 lt!1241842)) (size!28953 (originalCharacters!6346 (_1!22070 lt!1241842))))))

(declare-fun Unit!54137 () Unit!54124)

(assert (=> d!1063047 (= (lemmaCharactersSize!685 (_1!22070 lt!1241842)) Unit!54137)))

(declare-fun bs!570823 () Bool)

(assert (= bs!570823 d!1063047))

(declare-fun m!4107025 () Bool)

(assert (=> bs!570823 m!4107025))

(assert (=> b!3608736 d!1063047))

(declare-fun d!1063049 () Bool)

(assert (=> d!1063049 (= (apply!9138 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))) lt!1241841) (dynLambda!16425 (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) lt!1241841))))

(declare-fun b_lambda!106809 () Bool)

(assert (=> (not b_lambda!106809) (not d!1063049)))

(assert (=> d!1063049 t!293240))

(declare-fun b_and!263103 () Bool)

(assert (= b_and!263095 (and (=> t!293240 result!252156) b_and!263103)))

(assert (=> d!1063049 t!293242))

(declare-fun b_and!263105 () Bool)

(assert (= b_and!263097 (and (=> t!293242 result!252158) b_and!263105)))

(assert (=> d!1063049 t!293244))

(declare-fun b_and!263107 () Bool)

(assert (= b_and!263099 (and (=> t!293244 result!252160) b_and!263107)))

(assert (=> d!1063049 t!293246))

(declare-fun b_and!263109 () Bool)

(assert (= b_and!263101 (and (=> t!293246 result!252162) b_and!263109)))

(assert (=> d!1063049 m!4107023))

(assert (=> b!3608736 d!1063049))

(declare-fun b!3609466 () Bool)

(declare-fun e!2233763 () Bool)

(assert (=> b!3609466 (= e!2233763 true)))

(declare-fun d!1063051 () Bool)

(assert (=> d!1063051 e!2233763))

(assert (= d!1063051 b!3609466))

(declare-fun order!20753 () Int)

(declare-fun lambda!124053 () Int)

(declare-fun dynLambda!16433 (Int Int) Int)

(assert (=> b!3609466 (< (dynLambda!16430 order!20747 (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) (dynLambda!16433 order!20753 lambda!124053))))

(assert (=> b!3609466 (< (dynLambda!16432 order!20751 (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) (dynLambda!16433 order!20753 lambda!124053))))

(assert (=> d!1063051 (= (list!14004 (dynLambda!16424 (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) (dynLambda!16425 (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) lt!1241841))) (list!14004 lt!1241841))))

(declare-fun lt!1242194 () Unit!54124)

(declare-fun ForallOf!656 (Int BalanceConc!22756) Unit!54124)

(assert (=> d!1063051 (= lt!1242194 (ForallOf!656 lambda!124053 lt!1241841))))

(assert (=> d!1063051 (= (lemmaSemiInverse!1389 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))) lt!1241841) lt!1242194)))

(declare-fun b_lambda!106811 () Bool)

(assert (=> (not b_lambda!106811) (not d!1063051)))

(declare-fun tb!206917 () Bool)

(declare-fun t!293256 () Bool)

(assert (=> (and b!3608721 (= (toChars!7775 (transformation!5632 (rule!8380 token!511))) (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293256) tb!206917))

(declare-fun tp!1103352 () Bool)

(declare-fun b!3609467 () Bool)

(declare-fun e!2233764 () Bool)

(assert (=> b!3609467 (= e!2233764 (and (inv!51353 (c!624353 (dynLambda!16424 (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) (dynLambda!16425 (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) lt!1241841)))) tp!1103352))))

(declare-fun result!252172 () Bool)

(assert (=> tb!206917 (= result!252172 (and (inv!51354 (dynLambda!16424 (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) (dynLambda!16425 (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842)))) lt!1241841))) e!2233764))))

(assert (= tb!206917 b!3609467))

(declare-fun m!4107027 () Bool)

(assert (=> b!3609467 m!4107027))

(declare-fun m!4107029 () Bool)

(assert (=> tb!206917 m!4107029))

(assert (=> d!1063051 t!293256))

(declare-fun b_and!263111 () Bool)

(assert (= b_and!263035 (and (=> t!293256 result!252172) b_and!263111)))

(declare-fun tb!206919 () Bool)

(declare-fun t!293258 () Bool)

(assert (=> (and b!3608734 (= (toChars!7775 (transformation!5632 (h!43399 rules!3307))) (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293258) tb!206919))

(declare-fun result!252174 () Bool)

(assert (= result!252174 result!252172))

(assert (=> d!1063051 t!293258))

(declare-fun b_and!263113 () Bool)

(assert (= b_and!263037 (and (=> t!293258 result!252174) b_and!263113)))

(declare-fun t!293260 () Bool)

(declare-fun tb!206921 () Bool)

(assert (=> (and b!3608713 (= (toChars!7775 (transformation!5632 anOtherTypeRule!33)) (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293260) tb!206921))

(declare-fun result!252176 () Bool)

(assert (= result!252176 result!252172))

(assert (=> d!1063051 t!293260))

(declare-fun b_and!263115 () Bool)

(assert (= b_and!263039 (and (=> t!293260 result!252176) b_and!263115)))

(declare-fun t!293262 () Bool)

(declare-fun tb!206923 () Bool)

(assert (=> (and b!3608744 (= (toChars!7775 (transformation!5632 rule!403)) (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293262) tb!206923))

(declare-fun result!252178 () Bool)

(assert (= result!252178 result!252172))

(assert (=> d!1063051 t!293262))

(declare-fun b_and!263117 () Bool)

(assert (= b_and!263041 (and (=> t!293262 result!252178) b_and!263117)))

(declare-fun b_lambda!106813 () Bool)

(assert (=> (not b_lambda!106813) (not d!1063051)))

(assert (=> d!1063051 t!293240))

(declare-fun b_and!263119 () Bool)

(assert (= b_and!263103 (and (=> t!293240 result!252156) b_and!263119)))

(assert (=> d!1063051 t!293242))

(declare-fun b_and!263121 () Bool)

(assert (= b_and!263105 (and (=> t!293242 result!252158) b_and!263121)))

(assert (=> d!1063051 t!293244))

(declare-fun b_and!263123 () Bool)

(assert (= b_and!263107 (and (=> t!293244 result!252160) b_and!263123)))

(assert (=> d!1063051 t!293246))

(declare-fun b_and!263125 () Bool)

(assert (= b_and!263109 (and (=> t!293246 result!252162) b_and!263125)))

(assert (=> d!1063051 m!4107023))

(assert (=> d!1063051 m!4106041))

(declare-fun m!4107031 () Bool)

(assert (=> d!1063051 m!4107031))

(declare-fun m!4107033 () Bool)

(assert (=> d!1063051 m!4107033))

(assert (=> d!1063051 m!4107023))

(assert (=> d!1063051 m!4107031))

(declare-fun m!4107035 () Bool)

(assert (=> d!1063051 m!4107035))

(assert (=> b!3608736 d!1063051))

(declare-fun d!1063053 () Bool)

(declare-fun lt!1242195 () Int)

(assert (=> d!1063053 (= lt!1242195 (size!28953 (list!14004 lt!1241841)))))

(assert (=> d!1063053 (= lt!1242195 (size!28954 (c!624353 lt!1241841)))))

(assert (=> d!1063053 (= (size!28952 lt!1241841) lt!1242195)))

(declare-fun bs!570824 () Bool)

(assert (= bs!570824 d!1063053))

(assert (=> bs!570824 m!4106041))

(assert (=> bs!570824 m!4106041))

(declare-fun m!4107037 () Bool)

(assert (=> bs!570824 m!4107037))

(declare-fun m!4107039 () Bool)

(assert (=> bs!570824 m!4107039))

(assert (=> b!3608736 d!1063053))

(declare-fun d!1063055 () Bool)

(assert (=> d!1063055 (= (isEmpty!22423 (_2!22070 lt!1241840)) ((_ is Nil!37978) (_2!22070 lt!1241840)))))

(assert (=> b!3608740 d!1063055))

(declare-fun call!260914 () List!38102)

(declare-fun call!260911 () List!38102)

(declare-fun c!624492 () Bool)

(declare-fun bm!260906 () Bool)

(declare-fun call!260913 () List!38102)

(assert (=> bm!260906 (= call!260914 (++!9448 (ite c!624492 call!260913 call!260911) (ite c!624492 call!260911 call!260913)))))

(declare-fun bm!260907 () Bool)

(declare-fun call!260912 () List!38102)

(assert (=> bm!260907 (= call!260913 call!260912)))

(declare-fun bm!260908 () Bool)

(declare-fun c!624493 () Bool)

(assert (=> bm!260908 (= call!260912 (usedCharacters!846 (ite c!624493 (reg!10720 (regex!5632 (rule!8380 (_1!22070 lt!1241842)))) (ite c!624492 (regOne!21295 (regex!5632 (rule!8380 (_1!22070 lt!1241842)))) (regTwo!21294 (regex!5632 (rule!8380 (_1!22070 lt!1241842))))))))))

(declare-fun b!3609469 () Bool)

(declare-fun e!2233766 () List!38102)

(assert (=> b!3609469 (= e!2233766 call!260912)))

(declare-fun b!3609470 () Bool)

(declare-fun e!2233765 () List!38102)

(assert (=> b!3609470 (= e!2233765 (Cons!37978 (c!624352 (regex!5632 (rule!8380 (_1!22070 lt!1241842)))) Nil!37978))))

(declare-fun b!3609471 () Bool)

(declare-fun e!2233767 () List!38102)

(assert (=> b!3609471 (= e!2233767 call!260914)))

(declare-fun b!3609472 () Bool)

(assert (=> b!3609472 (= e!2233767 call!260914)))

(declare-fun b!3609473 () Bool)

(declare-fun e!2233768 () List!38102)

(assert (=> b!3609473 (= e!2233768 e!2233765)))

(declare-fun c!624491 () Bool)

(assert (=> b!3609473 (= c!624491 ((_ is ElementMatch!10391) (regex!5632 (rule!8380 (_1!22070 lt!1241842)))))))

(declare-fun b!3609474 () Bool)

(assert (=> b!3609474 (= c!624493 ((_ is Star!10391) (regex!5632 (rule!8380 (_1!22070 lt!1241842)))))))

(assert (=> b!3609474 (= e!2233765 e!2233766)))

(declare-fun bm!260909 () Bool)

(assert (=> bm!260909 (= call!260911 (usedCharacters!846 (ite c!624492 (regTwo!21295 (regex!5632 (rule!8380 (_1!22070 lt!1241842)))) (regOne!21294 (regex!5632 (rule!8380 (_1!22070 lt!1241842)))))))))

(declare-fun b!3609475 () Bool)

(assert (=> b!3609475 (= e!2233768 Nil!37978)))

(declare-fun b!3609468 () Bool)

(assert (=> b!3609468 (= e!2233766 e!2233767)))

(assert (=> b!3609468 (= c!624492 ((_ is Union!10391) (regex!5632 (rule!8380 (_1!22070 lt!1241842)))))))

(declare-fun d!1063057 () Bool)

(declare-fun c!624494 () Bool)

(assert (=> d!1063057 (= c!624494 (or ((_ is EmptyExpr!10391) (regex!5632 (rule!8380 (_1!22070 lt!1241842)))) ((_ is EmptyLang!10391) (regex!5632 (rule!8380 (_1!22070 lt!1241842))))))))

(assert (=> d!1063057 (= (usedCharacters!846 (regex!5632 (rule!8380 (_1!22070 lt!1241842)))) e!2233768)))

(assert (= (and d!1063057 c!624494) b!3609475))

(assert (= (and d!1063057 (not c!624494)) b!3609473))

(assert (= (and b!3609473 c!624491) b!3609470))

(assert (= (and b!3609473 (not c!624491)) b!3609474))

(assert (= (and b!3609474 c!624493) b!3609469))

(assert (= (and b!3609474 (not c!624493)) b!3609468))

(assert (= (and b!3609468 c!624492) b!3609472))

(assert (= (and b!3609468 (not c!624492)) b!3609471))

(assert (= (or b!3609472 b!3609471) bm!260907))

(assert (= (or b!3609472 b!3609471) bm!260909))

(assert (= (or b!3609472 b!3609471) bm!260906))

(assert (= (or b!3609469 bm!260907) bm!260908))

(declare-fun m!4107041 () Bool)

(assert (=> bm!260906 m!4107041))

(declare-fun m!4107043 () Bool)

(assert (=> bm!260908 m!4107043))

(declare-fun m!4107045 () Bool)

(assert (=> bm!260909 m!4107045))

(assert (=> bm!260850 d!1063057))

(declare-fun d!1063059 () Bool)

(assert (=> d!1063059 (not (contains!7327 (usedCharacters!846 (regex!5632 (rule!8380 (_1!22070 lt!1241842)))) lt!1241845))))

(declare-fun lt!1242198 () Unit!54124)

(declare-fun choose!21098 (LexerInterface!5221 List!38103 List!38103 Rule!11064 Rule!11064 C!20968) Unit!54124)

(assert (=> d!1063059 (= lt!1242198 (choose!21098 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8380 (_1!22070 lt!1241842)) lt!1241845))))

(assert (=> d!1063059 (rulesInvariant!4618 thiss!23823 rules!3307)))

(assert (=> d!1063059 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!220 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8380 (_1!22070 lt!1241842)) lt!1241845) lt!1242198)))

(declare-fun bs!570825 () Bool)

(assert (= bs!570825 d!1063059))

(assert (=> bs!570825 m!4106099))

(assert (=> bs!570825 m!4106099))

(assert (=> bs!570825 m!4106339))

(declare-fun m!4107047 () Bool)

(assert (=> bs!570825 m!4107047))

(assert (=> bs!570825 m!4106135))

(assert (=> b!3608739 d!1063059))

(declare-fun b!3609488 () Bool)

(declare-fun e!2233771 () Bool)

(declare-fun tp!1103365 () Bool)

(assert (=> b!3609488 (= e!2233771 tp!1103365)))

(declare-fun b!3609489 () Bool)

(declare-fun tp!1103363 () Bool)

(declare-fun tp!1103366 () Bool)

(assert (=> b!3609489 (= e!2233771 (and tp!1103363 tp!1103366))))

(declare-fun b!3609486 () Bool)

(assert (=> b!3609486 (= e!2233771 tp_is_empty!17865)))

(assert (=> b!3608728 (= tp!1103292 e!2233771)))

(declare-fun b!3609487 () Bool)

(declare-fun tp!1103364 () Bool)

(declare-fun tp!1103367 () Bool)

(assert (=> b!3609487 (= e!2233771 (and tp!1103364 tp!1103367))))

(assert (= (and b!3608728 ((_ is ElementMatch!10391) (regex!5632 (h!43399 rules!3307)))) b!3609486))

(assert (= (and b!3608728 ((_ is Concat!16254) (regex!5632 (h!43399 rules!3307)))) b!3609487))

(assert (= (and b!3608728 ((_ is Star!10391) (regex!5632 (h!43399 rules!3307)))) b!3609488))

(assert (= (and b!3608728 ((_ is Union!10391) (regex!5632 (h!43399 rules!3307)))) b!3609489))

(declare-fun b!3609492 () Bool)

(declare-fun e!2233772 () Bool)

(declare-fun tp!1103370 () Bool)

(assert (=> b!3609492 (= e!2233772 tp!1103370)))

(declare-fun b!3609493 () Bool)

(declare-fun tp!1103368 () Bool)

(declare-fun tp!1103371 () Bool)

(assert (=> b!3609493 (= e!2233772 (and tp!1103368 tp!1103371))))

(declare-fun b!3609490 () Bool)

(assert (=> b!3609490 (= e!2233772 tp_is_empty!17865)))

(assert (=> b!3608723 (= tp!1103293 e!2233772)))

(declare-fun b!3609491 () Bool)

(declare-fun tp!1103369 () Bool)

(declare-fun tp!1103372 () Bool)

(assert (=> b!3609491 (= e!2233772 (and tp!1103369 tp!1103372))))

(assert (= (and b!3608723 ((_ is ElementMatch!10391) (regex!5632 rule!403))) b!3609490))

(assert (= (and b!3608723 ((_ is Concat!16254) (regex!5632 rule!403))) b!3609491))

(assert (= (and b!3608723 ((_ is Star!10391) (regex!5632 rule!403))) b!3609492))

(assert (= (and b!3608723 ((_ is Union!10391) (regex!5632 rule!403))) b!3609493))

(declare-fun b!3609504 () Bool)

(declare-fun b_free!93653 () Bool)

(declare-fun b_next!94357 () Bool)

(assert (=> b!3609504 (= b_free!93653 (not b_next!94357))))

(declare-fun tb!206925 () Bool)

(declare-fun t!293264 () Bool)

(assert (=> (and b!3609504 (= (toValue!7916 (transformation!5632 (h!43399 (t!293154 rules!3307)))) (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293264) tb!206925))

(declare-fun result!252184 () Bool)

(assert (= result!252184 result!252164))

(assert (=> d!1063023 t!293264))

(declare-fun t!293266 () Bool)

(declare-fun tb!206927 () Bool)

(assert (=> (and b!3609504 (= (toValue!7916 (transformation!5632 (h!43399 (t!293154 rules!3307)))) (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293266) tb!206927))

(declare-fun result!252186 () Bool)

(assert (= result!252186 result!252156))

(assert (=> d!1063023 t!293266))

(assert (=> d!1063049 t!293266))

(assert (=> d!1063051 t!293266))

(declare-fun t!293268 () Bool)

(declare-fun tb!206929 () Bool)

(assert (=> (and b!3609504 (= (toValue!7916 (transformation!5632 (h!43399 (t!293154 rules!3307)))) (toValue!7916 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293268) tb!206929))

(declare-fun result!252188 () Bool)

(assert (= result!252188 result!252104))

(assert (=> d!1062941 t!293268))

(declare-fun tp!1103381 () Bool)

(declare-fun b_and!263127 () Bool)

(assert (=> b!3609504 (= tp!1103381 (and (=> t!293266 result!252186) (=> t!293264 result!252184) (=> t!293268 result!252188) b_and!263127))))

(declare-fun b_free!93655 () Bool)

(declare-fun b_next!94359 () Bool)

(assert (=> b!3609504 (= b_free!93655 (not b_next!94359))))

(declare-fun t!293270 () Bool)

(declare-fun tb!206931 () Bool)

(assert (=> (and b!3609504 (= (toChars!7775 (transformation!5632 (h!43399 (t!293154 rules!3307)))) (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293270) tb!206931))

(declare-fun result!252190 () Bool)

(assert (= result!252190 result!252068))

(assert (=> d!1062797 t!293270))

(declare-fun t!293272 () Bool)

(declare-fun tb!206933 () Bool)

(assert (=> (and b!3609504 (= (toChars!7775 (transformation!5632 (h!43399 (t!293154 rules!3307)))) (toChars!7775 (transformation!5632 (rule!8380 token!511)))) t!293272) tb!206933))

(declare-fun result!252192 () Bool)

(assert (= result!252192 result!252088))

(assert (=> b!3609055 t!293272))

(assert (=> d!1063019 t!293272))

(declare-fun tb!206935 () Bool)

(declare-fun t!293274 () Bool)

(assert (=> (and b!3609504 (= (toChars!7775 (transformation!5632 (h!43399 (t!293154 rules!3307)))) (toChars!7775 (transformation!5632 (rule!8380 (_1!22070 lt!1241842))))) t!293274) tb!206935))

(declare-fun result!252194 () Bool)

(assert (= result!252194 result!252172))

(assert (=> d!1063051 t!293274))

(declare-fun tp!1103383 () Bool)

(declare-fun b_and!263129 () Bool)

(assert (=> b!3609504 (= tp!1103383 (and (=> t!293270 result!252190) (=> t!293272 result!252192) (=> t!293274 result!252194) b_and!263129))))

(declare-fun e!2233783 () Bool)

(assert (=> b!3609504 (= e!2233783 (and tp!1103381 tp!1103383))))

(declare-fun tp!1103382 () Bool)

(declare-fun e!2233784 () Bool)

(declare-fun b!3609503 () Bool)

(assert (=> b!3609503 (= e!2233784 (and tp!1103382 (inv!51346 (tag!6336 (h!43399 (t!293154 rules!3307)))) (inv!51350 (transformation!5632 (h!43399 (t!293154 rules!3307)))) e!2233783))))

(declare-fun b!3609502 () Bool)

(declare-fun e!2233781 () Bool)

(declare-fun tp!1103384 () Bool)

(assert (=> b!3609502 (= e!2233781 (and e!2233784 tp!1103384))))

(assert (=> b!3608738 (= tp!1103282 e!2233781)))

(assert (= b!3609503 b!3609504))

(assert (= b!3609502 b!3609503))

(assert (= (and b!3608738 ((_ is Cons!37979) (t!293154 rules!3307))) b!3609502))

(declare-fun m!4107049 () Bool)

(assert (=> b!3609503 m!4107049))

(declare-fun m!4107051 () Bool)

(assert (=> b!3609503 m!4107051))

(declare-fun b!3609509 () Bool)

(declare-fun e!2233787 () Bool)

(declare-fun tp!1103387 () Bool)

(assert (=> b!3609509 (= e!2233787 (and tp_is_empty!17865 tp!1103387))))

(assert (=> b!3608717 (= tp!1103283 e!2233787)))

(assert (= (and b!3608717 ((_ is Cons!37978) (t!293153 suffix!1395))) b!3609509))

(declare-fun b!3609510 () Bool)

(declare-fun e!2233788 () Bool)

(declare-fun tp!1103388 () Bool)

(assert (=> b!3609510 (= e!2233788 (and tp_is_empty!17865 tp!1103388))))

(assert (=> b!3608727 (= tp!1103284 e!2233788)))

(assert (= (and b!3608727 ((_ is Cons!37978) (originalCharacters!6346 token!511))) b!3609510))

(declare-fun b!3609513 () Bool)

(declare-fun e!2233789 () Bool)

(declare-fun tp!1103391 () Bool)

(assert (=> b!3609513 (= e!2233789 tp!1103391)))

(declare-fun b!3609514 () Bool)

(declare-fun tp!1103389 () Bool)

(declare-fun tp!1103392 () Bool)

(assert (=> b!3609514 (= e!2233789 (and tp!1103389 tp!1103392))))

(declare-fun b!3609511 () Bool)

(assert (=> b!3609511 (= e!2233789 tp_is_empty!17865)))

(assert (=> b!3608725 (= tp!1103289 e!2233789)))

(declare-fun b!3609512 () Bool)

(declare-fun tp!1103390 () Bool)

(declare-fun tp!1103393 () Bool)

(assert (=> b!3609512 (= e!2233789 (and tp!1103390 tp!1103393))))

(assert (= (and b!3608725 ((_ is ElementMatch!10391) (regex!5632 anOtherTypeRule!33))) b!3609511))

(assert (= (and b!3608725 ((_ is Concat!16254) (regex!5632 anOtherTypeRule!33))) b!3609512))

(assert (= (and b!3608725 ((_ is Star!10391) (regex!5632 anOtherTypeRule!33))) b!3609513))

(assert (= (and b!3608725 ((_ is Union!10391) (regex!5632 anOtherTypeRule!33))) b!3609514))

(declare-fun b!3609517 () Bool)

(declare-fun e!2233790 () Bool)

(declare-fun tp!1103396 () Bool)

(assert (=> b!3609517 (= e!2233790 tp!1103396)))

(declare-fun b!3609518 () Bool)

(declare-fun tp!1103394 () Bool)

(declare-fun tp!1103397 () Bool)

(assert (=> b!3609518 (= e!2233790 (and tp!1103394 tp!1103397))))

(declare-fun b!3609515 () Bool)

(assert (=> b!3609515 (= e!2233790 tp_is_empty!17865)))

(assert (=> b!3608733 (= tp!1103287 e!2233790)))

(declare-fun b!3609516 () Bool)

(declare-fun tp!1103395 () Bool)

(declare-fun tp!1103398 () Bool)

(assert (=> b!3609516 (= e!2233790 (and tp!1103395 tp!1103398))))

(assert (= (and b!3608733 ((_ is ElementMatch!10391) (regex!5632 (rule!8380 token!511)))) b!3609515))

(assert (= (and b!3608733 ((_ is Concat!16254) (regex!5632 (rule!8380 token!511)))) b!3609516))

(assert (= (and b!3608733 ((_ is Star!10391) (regex!5632 (rule!8380 token!511)))) b!3609517))

(assert (= (and b!3608733 ((_ is Union!10391) (regex!5632 (rule!8380 token!511)))) b!3609518))

(declare-fun b_lambda!106815 () Bool)

(assert (= b_lambda!106789 (or (and b!3608734 b_free!93639 (= (toChars!7775 (transformation!5632 (h!43399 rules!3307))) (toChars!7775 (transformation!5632 (rule!8380 token!511))))) (and b!3608721 b_free!93635) (and b!3608744 b_free!93647 (= (toChars!7775 (transformation!5632 rule!403)) (toChars!7775 (transformation!5632 (rule!8380 token!511))))) (and b!3608713 b_free!93643 (= (toChars!7775 (transformation!5632 anOtherTypeRule!33)) (toChars!7775 (transformation!5632 (rule!8380 token!511))))) (and b!3609504 b_free!93655 (= (toChars!7775 (transformation!5632 (h!43399 (t!293154 rules!3307)))) (toChars!7775 (transformation!5632 (rule!8380 token!511))))) b_lambda!106815)))

(declare-fun b_lambda!106817 () Bool)

(assert (= b_lambda!106781 (or (and b!3608734 b_free!93639 (= (toChars!7775 (transformation!5632 (h!43399 rules!3307))) (toChars!7775 (transformation!5632 (rule!8380 token!511))))) (and b!3608721 b_free!93635) (and b!3608744 b_free!93647 (= (toChars!7775 (transformation!5632 rule!403)) (toChars!7775 (transformation!5632 (rule!8380 token!511))))) (and b!3608713 b_free!93643 (= (toChars!7775 (transformation!5632 anOtherTypeRule!33)) (toChars!7775 (transformation!5632 (rule!8380 token!511))))) (and b!3609504 b_free!93655 (= (toChars!7775 (transformation!5632 (h!43399 (t!293154 rules!3307)))) (toChars!7775 (transformation!5632 (rule!8380 token!511))))) b_lambda!106817)))

(check-sat (not d!1062791) (not tb!206857) (not d!1062867) (not b_lambda!106805) (not d!1063047) (not b_next!94341) (not b!3608837) (not b!3609012) (not tb!206917) (not b!3608922) (not b!3609071) (not d!1062771) (not b_next!94337) (not b_next!94351) (not b!3608957) (not b!3609304) (not d!1063059) (not b_lambda!106809) (not b!3609159) (not d!1062993) (not tb!206825) (not d!1062893) (not d!1063015) (not b!3609367) (not b!3609509) (not d!1062945) (not b!3609487) b_and!263125 (not b!3609008) (not d!1063005) (not b!3609360) (not b!3609510) (not b!3609308) (not b_lambda!106813) (not d!1062807) (not b!3609068) (not b!3609502) (not b!3609299) (not tb!206841) (not b!3609063) (not b!3609363) (not b_next!94343) (not b!3609491) (not b!3609062) (not d!1062949) (not d!1062885) (not b!3609335) (not b!3608989) (not b!3609517) (not b!3608961) (not bm!260903) (not d!1063009) (not b!3609188) (not d!1062837) (not d!1062871) (not d!1062861) (not b!3609356) (not b!3608993) (not b!3609371) (not b!3609055) (not b!3608959) (not b!3609370) (not d!1062859) (not d!1062881) (not d!1063003) (not d!1062937) (not tb!206909) (not b!3609309) (not bm!260904) (not b!3609162) (not b!3609332) (not b!3609079) (not b!3609160) b_and!263115 (not d!1063017) (not b_next!94349) (not d!1062955) (not b!3609358) (not b!3609003) (not b!3609026) (not b_next!94345) (not d!1062813) (not b!3609307) (not b!3609514) (not b!3608988) b_and!263117 b_and!263127 (not d!1062795) (not d!1063011) (not b_lambda!106787) (not b!3608828) (not b!3609013) (not bm!260884) (not d!1062875) (not b!3608872) (not bm!260863) (not d!1063051) (not d!1062877) (not d!1063021) (not bm!260882) (not d!1062803) (not b!3609489) (not b!3609167) b_and!263129 (not b!3609319) (not bm!260886) (not bm!260866) (not b!3609017) (not b_lambda!106815) (not b_lambda!106817) (not b!3609366) (not bm!260909) (not b!3609334) b_and!263121 (not b!3609057) (not b!3609303) (not b!3609518) (not b_lambda!106807) (not b!3609199) (not b!3609516) (not b!3609016) (not bm!260908) (not b!3609056) b_and!263123 (not d!1063019) (not d!1062869) (not b!3609467) (not d!1062821) (not d!1062797) (not b!3608906) (not b_next!94339) (not tb!206901) (not d!1063023) (not b!3608827) (not b!3609362) (not b!3608934) (not d!1062801) (not b!3609187) (not b!3609503) (not b!3608832) b_and!263111 (not b_lambda!106811) (not d!1062839) (not b!3609067) (not b!3609176) (not b!3608991) (not b!3609361) (not d!1062943) (not d!1063001) (not b!3609165) (not b!3609072) (not b!3609164) (not b!3609373) tp_is_empty!17865 (not b!3609369) b_and!263113 (not b!3609058) (not b_lambda!106777) (not bm!260862) (not b!3609161) (not b!3609374) (not b!3609186) (not d!1063007) (not bm!260885) (not b!3609493) (not b!3609513) (not d!1062957) (not b!3608846) (not b!3609512) (not d!1062865) (not d!1062809) (not d!1062953) (not b!3609492) (not d!1062939) (not b!3609488) (not bm!260906) (not b!3608958) (not b_next!94359) (not b!3609174) (not b!3609357) (not d!1062873) (not b!3609198) (not b!3609317) (not b!3609163) (not b!3609372) (not d!1062997) (not b!3609007) b_and!263119 (not b!3609314) (not b!3609315) (not b!3609300) (not d!1063053) (not b!3609318) (not b!3608757) (not b!3609359) (not b!3609298) (not b!3608833) (not bm!260860) (not d!1063013) (not b_next!94347) (not b_next!94357) (not b!3609368) (not b!3608836) (not bm!260890))
(check-sat (not b_next!94341) b_and!263125 (not b_next!94343) b_and!263129 b_and!263121 b_and!263123 (not b_next!94339) b_and!263111 b_and!263113 (not b_next!94359) b_and!263119 (not b_next!94337) (not b_next!94351) (not b_next!94349) b_and!263115 (not b_next!94345) b_and!263117 b_and!263127 (not b_next!94347) (not b_next!94357))
