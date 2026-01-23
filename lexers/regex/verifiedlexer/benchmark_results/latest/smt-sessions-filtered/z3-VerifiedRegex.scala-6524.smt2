; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!344414 () Bool)

(assert start!344414)

(declare-fun b!3673770 () Bool)

(declare-fun b_free!97161 () Bool)

(declare-fun b_next!97865 () Bool)

(assert (=> b!3673770 (= b_free!97161 (not b_next!97865))))

(declare-fun tp!1117589 () Bool)

(declare-fun b_and!273851 () Bool)

(assert (=> b!3673770 (= tp!1117589 b_and!273851)))

(declare-fun b_free!97163 () Bool)

(declare-fun b_next!97867 () Bool)

(assert (=> b!3673770 (= b_free!97163 (not b_next!97867))))

(declare-fun tp!1117596 () Bool)

(declare-fun b_and!273853 () Bool)

(assert (=> b!3673770 (= tp!1117596 b_and!273853)))

(declare-fun b!3673781 () Bool)

(declare-fun b_free!97165 () Bool)

(declare-fun b_next!97869 () Bool)

(assert (=> b!3673781 (= b_free!97165 (not b_next!97869))))

(declare-fun tp!1117595 () Bool)

(declare-fun b_and!273855 () Bool)

(assert (=> b!3673781 (= tp!1117595 b_and!273855)))

(declare-fun b_free!97167 () Bool)

(declare-fun b_next!97871 () Bool)

(assert (=> b!3673781 (= b_free!97167 (not b_next!97871))))

(declare-fun tp!1117585 () Bool)

(declare-fun b_and!273857 () Bool)

(assert (=> b!3673781 (= tp!1117585 b_and!273857)))

(declare-fun b!3673790 () Bool)

(declare-fun b_free!97169 () Bool)

(declare-fun b_next!97873 () Bool)

(assert (=> b!3673790 (= b_free!97169 (not b_next!97873))))

(declare-fun tp!1117590 () Bool)

(declare-fun b_and!273859 () Bool)

(assert (=> b!3673790 (= tp!1117590 b_and!273859)))

(declare-fun b_free!97171 () Bool)

(declare-fun b_next!97875 () Bool)

(assert (=> b!3673790 (= b_free!97171 (not b_next!97875))))

(declare-fun tp!1117592 () Bool)

(declare-fun b_and!273861 () Bool)

(assert (=> b!3673790 (= tp!1117592 b_and!273861)))

(declare-fun b!3673771 () Bool)

(declare-fun b_free!97173 () Bool)

(declare-fun b_next!97877 () Bool)

(assert (=> b!3673771 (= b_free!97173 (not b_next!97877))))

(declare-fun tp!1117587 () Bool)

(declare-fun b_and!273863 () Bool)

(assert (=> b!3673771 (= tp!1117587 b_and!273863)))

(declare-fun b_free!97175 () Bool)

(declare-fun b_next!97879 () Bool)

(assert (=> b!3673771 (= b_free!97175 (not b_next!97879))))

(declare-fun tp!1117586 () Bool)

(declare-fun b_and!273865 () Bool)

(assert (=> b!3673771 (= tp!1117586 b_and!273865)))

(declare-fun b!3673739 () Bool)

(assert (=> b!3673739 false))

(declare-datatypes ((Unit!56458 0))(
  ( (Unit!56459) )
))
(declare-fun lt!1281714 () Unit!56458)

(declare-fun call!266011 () Unit!56458)

(assert (=> b!3673739 (= lt!1281714 call!266011)))

(declare-fun call!266010 () Bool)

(assert (=> b!3673739 (not call!266010)))

(declare-datatypes ((C!21360 0))(
  ( (C!21361 (val!12728 Int)) )
))
(declare-fun lt!1281704 () C!21360)

(declare-datatypes ((List!38871 0))(
  ( (Nil!38747) (Cons!38747 (h!44167 (_ BitVec 16)) (t!299946 List!38871)) )
))
(declare-datatypes ((TokenValue!6058 0))(
  ( (FloatLiteralValue!12116 (text!42851 List!38871)) (TokenValueExt!6057 (__x!24333 Int)) (Broken!30290 (value!186532 List!38871)) (Object!6181) (End!6058) (Def!6058) (Underscore!6058) (Match!6058) (Else!6058) (Error!6058) (Case!6058) (If!6058) (Extends!6058) (Abstract!6058) (Class!6058) (Val!6058) (DelimiterValue!12116 (del!6118 List!38871)) (KeywordValue!6064 (value!186533 List!38871)) (CommentValue!12116 (value!186534 List!38871)) (WhitespaceValue!12116 (value!186535 List!38871)) (IndentationValue!6058 (value!186536 List!38871)) (String!43623) (Int32!6058) (Broken!30291 (value!186537 List!38871)) (Boolean!6059) (Unit!56460) (OperatorValue!6061 (op!6118 List!38871)) (IdentifierValue!12116 (value!186538 List!38871)) (IdentifierValue!12117 (value!186539 List!38871)) (WhitespaceValue!12117 (value!186540 List!38871)) (True!12116) (False!12116) (Broken!30292 (value!186541 List!38871)) (Broken!30293 (value!186542 List!38871)) (True!12117) (RightBrace!6058) (RightBracket!6058) (Colon!6058) (Null!6058) (Comma!6058) (LeftBracket!6058) (False!12117) (LeftBrace!6058) (ImaginaryLiteralValue!6058 (text!42852 List!38871)) (StringLiteralValue!18174 (value!186543 List!38871)) (EOFValue!6058 (value!186544 List!38871)) (IdentValue!6058 (value!186545 List!38871)) (DelimiterValue!12117 (value!186546 List!38871)) (DedentValue!6058 (value!186547 List!38871)) (NewLineValue!6058 (value!186548 List!38871)) (IntegerValue!18174 (value!186549 (_ BitVec 32)) (text!42853 List!38871)) (IntegerValue!18175 (value!186550 Int) (text!42854 List!38871)) (Times!6058) (Or!6058) (Equal!6058) (Minus!6058) (Broken!30294 (value!186551 List!38871)) (And!6058) (Div!6058) (LessEqual!6058) (Mod!6058) (Concat!16645) (Not!6058) (Plus!6058) (SpaceValue!6058 (value!186552 List!38871)) (IntegerValue!18176 (value!186553 Int) (text!42855 List!38871)) (StringLiteralValue!18175 (text!42856 List!38871)) (FloatLiteralValue!12117 (text!42857 List!38871)) (BytesLiteralValue!6058 (value!186554 List!38871)) (CommentValue!12117 (value!186555 List!38871)) (StringLiteralValue!18176 (value!186556 List!38871)) (ErrorTokenValue!6058 (msg!6119 List!38871)) )
))
(declare-datatypes ((String!43624 0))(
  ( (String!43625 (value!186557 String)) )
))
(declare-datatypes ((Regex!10587 0))(
  ( (ElementMatch!10587 (c!635260 C!21360)) (Concat!16646 (regOne!21686 Regex!10587) (regTwo!21686 Regex!10587)) (EmptyExpr!10587) (Star!10587 (reg!10916 Regex!10587)) (EmptyLang!10587) (Union!10587 (regOne!21687 Regex!10587) (regTwo!21687 Regex!10587)) )
))
(declare-datatypes ((List!38872 0))(
  ( (Nil!38748) (Cons!38748 (h!44168 C!21360) (t!299947 List!38872)) )
))
(declare-datatypes ((IArray!23719 0))(
  ( (IArray!23720 (innerList!11917 List!38872)) )
))
(declare-datatypes ((Conc!11857 0))(
  ( (Node!11857 (left!30237 Conc!11857) (right!30567 Conc!11857) (csize!23944 Int) (cheight!12068 Int)) (Leaf!18382 (xs!15059 IArray!23719) (csize!23945 Int)) (Empty!11857) )
))
(declare-datatypes ((BalanceConc!23328 0))(
  ( (BalanceConc!23329 (c!635261 Conc!11857)) )
))
(declare-datatypes ((TokenValueInjection!11544 0))(
  ( (TokenValueInjection!11545 (toValue!8124 Int) (toChars!7983 Int)) )
))
(declare-datatypes ((Rule!11456 0))(
  ( (Rule!11457 (regex!5828 Regex!10587) (tag!6622 String!43624) (isSeparator!5828 Bool) (transformation!5828 TokenValueInjection!11544)) )
))
(declare-datatypes ((List!38873 0))(
  ( (Nil!38749) (Cons!38749 (h!44169 Rule!11456) (t!299948 List!38873)) )
))
(declare-fun rules!3307 () List!38873)

(declare-datatypes ((LexerInterface!5417 0))(
  ( (LexerInterfaceExt!5414 (__x!24334 Int)) (Lexer!5415) )
))
(declare-fun thiss!23823 () LexerInterface!5417)

(declare-fun rule!403 () Rule!11456)

(declare-datatypes ((Token!11022 0))(
  ( (Token!11023 (value!186558 TokenValue!6058) (rule!8656 Rule!11456) (size!29619 Int) (originalCharacters!6542 List!38872)) )
))
(declare-datatypes ((tuple2!38616 0))(
  ( (tuple2!38617 (_1!22442 Token!11022) (_2!22442 List!38872)) )
))
(declare-fun lt!1281736 () tuple2!38616)

(declare-fun lt!1281727 () Unit!56458)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!356 (LexerInterface!5417 List!38873 List!38873 Rule!11456 Rule!11456 C!21360) Unit!56458)

(assert (=> b!3673739 (= lt!1281727 (lemmaSepRuleNotContainsCharContainedInANonSepRule!356 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8656 (_1!22442 lt!1281736)) lt!1281704))))

(declare-fun e!2274827 () Unit!56458)

(declare-fun Unit!56461 () Unit!56458)

(assert (=> b!3673739 (= e!2274827 Unit!56461)))

(declare-fun b!3673740 () Bool)

(declare-fun e!2274807 () Bool)

(declare-fun tp_is_empty!18257 () Bool)

(declare-fun tp!1117588 () Bool)

(assert (=> b!3673740 (= e!2274807 (and tp_is_empty!18257 tp!1117588))))

(declare-fun token!511 () Token!11022)

(declare-fun e!2274821 () Bool)

(declare-fun tp!1117593 () Bool)

(declare-fun e!2274814 () Bool)

(declare-fun b!3673741 () Bool)

(declare-fun inv!52233 (String!43624) Bool)

(declare-fun inv!52236 (TokenValueInjection!11544) Bool)

(assert (=> b!3673741 (= e!2274814 (and tp!1117593 (inv!52233 (tag!6622 (rule!8656 token!511))) (inv!52236 (transformation!5828 (rule!8656 token!511))) e!2274821))))

(declare-fun b!3673742 () Bool)

(declare-fun e!2274834 () Bool)

(declare-fun e!2274829 () Bool)

(assert (=> b!3673742 (= e!2274834 e!2274829)))

(declare-fun res!1492207 () Bool)

(assert (=> b!3673742 (=> res!1492207 e!2274829)))

(declare-fun lt!1281729 () List!38872)

(declare-fun lt!1281702 () List!38872)

(declare-fun isPrefix!3191 (List!38872 List!38872) Bool)

(assert (=> b!3673742 (= res!1492207 (not (isPrefix!3191 lt!1281729 lt!1281702)))))

(declare-fun ++!9644 (List!38872 List!38872) List!38872)

(assert (=> b!3673742 (isPrefix!3191 lt!1281729 (++!9644 lt!1281729 (_2!22442 lt!1281736)))))

(declare-fun lt!1281698 () Unit!56458)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2110 (List!38872 List!38872) Unit!56458)

(assert (=> b!3673742 (= lt!1281698 (lemmaConcatTwoListThenFirstIsPrefix!2110 lt!1281729 (_2!22442 lt!1281736)))))

(declare-fun lt!1281700 () BalanceConc!23328)

(declare-fun list!14394 (BalanceConc!23328) List!38872)

(assert (=> b!3673742 (= lt!1281729 (list!14394 lt!1281700))))

(declare-fun charsOf!3842 (Token!11022) BalanceConc!23328)

(assert (=> b!3673742 (= lt!1281700 (charsOf!3842 (_1!22442 lt!1281736)))))

(declare-fun e!2274811 () Bool)

(assert (=> b!3673742 e!2274811))

(declare-fun res!1492222 () Bool)

(assert (=> b!3673742 (=> (not res!1492222) (not e!2274811))))

(declare-datatypes ((Option!8284 0))(
  ( (None!8283) (Some!8283 (v!38203 Rule!11456)) )
))
(declare-fun lt!1281708 () Option!8284)

(declare-fun isDefined!6516 (Option!8284) Bool)

(assert (=> b!3673742 (= res!1492222 (isDefined!6516 lt!1281708))))

(declare-fun getRuleFromTag!1432 (LexerInterface!5417 List!38873 String!43624) Option!8284)

(assert (=> b!3673742 (= lt!1281708 (getRuleFromTag!1432 thiss!23823 rules!3307 (tag!6622 (rule!8656 (_1!22442 lt!1281736)))))))

(declare-fun lt!1281732 () Unit!56458)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1432 (LexerInterface!5417 List!38873 List!38872 Token!11022) Unit!56458)

(assert (=> b!3673742 (= lt!1281732 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1432 thiss!23823 rules!3307 lt!1281702 (_1!22442 lt!1281736)))))

(declare-datatypes ((Option!8285 0))(
  ( (None!8284) (Some!8284 (v!38204 tuple2!38616)) )
))
(declare-fun lt!1281734 () Option!8285)

(declare-fun get!12808 (Option!8285) tuple2!38616)

(assert (=> b!3673742 (= lt!1281736 (get!12808 lt!1281734))))

(declare-fun lt!1281717 () Unit!56458)

(declare-fun suffix!1395 () List!38872)

(declare-fun lt!1281725 () List!38872)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1095 (LexerInterface!5417 List!38873 List!38872 List!38872) Unit!56458)

(assert (=> b!3673742 (= lt!1281717 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1095 thiss!23823 rules!3307 lt!1281725 suffix!1395))))

(declare-fun maxPrefix!2951 (LexerInterface!5417 List!38873 List!38872) Option!8285)

(assert (=> b!3673742 (= lt!1281734 (maxPrefix!2951 thiss!23823 rules!3307 lt!1281702))))

(assert (=> b!3673742 (isPrefix!3191 lt!1281725 lt!1281702)))

(declare-fun lt!1281690 () Unit!56458)

(assert (=> b!3673742 (= lt!1281690 (lemmaConcatTwoListThenFirstIsPrefix!2110 lt!1281725 suffix!1395))))

(assert (=> b!3673742 (= lt!1281702 (++!9644 lt!1281725 suffix!1395))))

(declare-fun e!2274836 () Bool)

(declare-fun b!3673743 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11456)

(declare-fun e!2274825 () Bool)

(declare-fun tp!1117597 () Bool)

(assert (=> b!3673743 (= e!2274836 (and tp!1117597 (inv!52233 (tag!6622 anOtherTypeRule!33)) (inv!52236 (transformation!5828 anOtherTypeRule!33)) e!2274825))))

(declare-fun b!3673744 () Bool)

(declare-fun e!2274828 () Bool)

(declare-fun e!2274804 () Bool)

(assert (=> b!3673744 (= e!2274828 e!2274804)))

(declare-fun res!1492217 () Bool)

(assert (=> b!3673744 (=> res!1492217 e!2274804)))

(declare-fun lt!1281692 () List!38872)

(declare-fun lt!1281738 () Option!8285)

(assert (=> b!3673744 (= res!1492217 (or (not (= lt!1281692 (_2!22442 lt!1281736))) (not (= lt!1281738 (Some!8284 (tuple2!38617 (_1!22442 lt!1281736) lt!1281692))))))))

(assert (=> b!3673744 (= (_2!22442 lt!1281736) lt!1281692)))

(declare-fun lt!1281722 () Unit!56458)

(declare-fun lemmaSamePrefixThenSameSuffix!1518 (List!38872 List!38872 List!38872 List!38872 List!38872) Unit!56458)

(assert (=> b!3673744 (= lt!1281722 (lemmaSamePrefixThenSameSuffix!1518 lt!1281729 (_2!22442 lt!1281736) lt!1281729 lt!1281692 lt!1281702))))

(declare-fun getSuffix!1744 (List!38872 List!38872) List!38872)

(assert (=> b!3673744 (= lt!1281692 (getSuffix!1744 lt!1281702 lt!1281729))))

(declare-fun lt!1281739 () Int)

(declare-fun lt!1281720 () TokenValue!6058)

(assert (=> b!3673744 (= lt!1281738 (Some!8284 (tuple2!38617 (Token!11023 lt!1281720 (rule!8656 (_1!22442 lt!1281736)) lt!1281739 lt!1281729) (_2!22442 lt!1281736))))))

(declare-fun maxPrefixOneRule!2089 (LexerInterface!5417 Rule!11456 List!38872) Option!8285)

(assert (=> b!3673744 (= lt!1281738 (maxPrefixOneRule!2089 thiss!23823 (rule!8656 (_1!22442 lt!1281736)) lt!1281702))))

(declare-fun size!29620 (List!38872) Int)

(assert (=> b!3673744 (= lt!1281739 (size!29620 lt!1281729))))

(declare-fun apply!9330 (TokenValueInjection!11544 BalanceConc!23328) TokenValue!6058)

(declare-fun seqFromList!4377 (List!38872) BalanceConc!23328)

(assert (=> b!3673744 (= lt!1281720 (apply!9330 (transformation!5828 (rule!8656 (_1!22442 lt!1281736))) (seqFromList!4377 lt!1281729)))))

(declare-fun lt!1281695 () Unit!56458)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1145 (LexerInterface!5417 List!38873 List!38872 List!38872 List!38872 Rule!11456) Unit!56458)

(assert (=> b!3673744 (= lt!1281695 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1145 thiss!23823 rules!3307 lt!1281729 lt!1281702 (_2!22442 lt!1281736) (rule!8656 (_1!22442 lt!1281736))))))

(declare-fun b!3673745 () Bool)

(declare-fun res!1492216 () Bool)

(declare-fun e!2274815 () Bool)

(assert (=> b!3673745 (=> (not res!1492216) (not e!2274815))))

(assert (=> b!3673745 (= res!1492216 (not (= (isSeparator!5828 anOtherTypeRule!33) (isSeparator!5828 rule!403))))))

(declare-fun b!3673746 () Bool)

(declare-fun res!1492210 () Bool)

(assert (=> b!3673746 (=> res!1492210 e!2274834)))

(declare-fun sepAndNonSepRulesDisjointChars!1996 (List!38873 List!38873) Bool)

(assert (=> b!3673746 (= res!1492210 (not (sepAndNonSepRulesDisjointChars!1996 rules!3307 rules!3307)))))

(declare-fun b!3673747 () Bool)

(declare-fun e!2274802 () Bool)

(declare-fun e!2274820 () Bool)

(assert (=> b!3673747 (= e!2274802 e!2274820)))

(declare-fun res!1492205 () Bool)

(assert (=> b!3673747 (=> (not res!1492205) (not e!2274820))))

(declare-fun lt!1281735 () tuple2!38616)

(assert (=> b!3673747 (= res!1492205 (= (_1!22442 lt!1281735) token!511))))

(declare-fun lt!1281693 () Option!8285)

(assert (=> b!3673747 (= lt!1281735 (get!12808 lt!1281693))))

(declare-fun b!3673748 () Bool)

(declare-fun e!2274817 () Unit!56458)

(declare-fun Unit!56462 () Unit!56458)

(assert (=> b!3673748 (= e!2274817 Unit!56462)))

(declare-fun b!3673749 () Bool)

(declare-fun e!2274809 () Unit!56458)

(declare-fun Unit!56463 () Unit!56458)

(assert (=> b!3673749 (= e!2274809 Unit!56463)))

(declare-fun lt!1281719 () Unit!56458)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!236 (LexerInterface!5417 List!38873 Rule!11456 List!38872 List!38872 Rule!11456) Unit!56458)

(assert (=> b!3673749 (= lt!1281719 (lemmaMaxPrefNoSmallerRuleMatches!236 thiss!23823 rules!3307 (rule!8656 (_1!22442 lt!1281736)) lt!1281725 lt!1281702 rule!403))))

(assert (=> b!3673749 false))

(declare-fun b!3673750 () Bool)

(declare-fun e!2274816 () Unit!56458)

(declare-fun e!2274833 () Unit!56458)

(assert (=> b!3673750 (= e!2274816 e!2274833)))

(declare-fun lt!1281712 () Unit!56458)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!136 (List!38872 List!38872 List!38872 List!38872) Unit!56458)

(assert (=> b!3673750 (= lt!1281712 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!136 lt!1281725 suffix!1395 lt!1281729 lt!1281702))))

(declare-fun lt!1281687 () C!21360)

(declare-fun contains!7723 (List!38872 C!21360) Bool)

(assert (=> b!3673750 (contains!7723 lt!1281729 lt!1281687)))

(declare-fun c!635256 () Bool)

(assert (=> b!3673750 (= c!635256 (isSeparator!5828 rule!403))))

(declare-fun b!3673751 () Bool)

(declare-fun e!2274806 () Bool)

(declare-fun lt!1281740 () Rule!11456)

(assert (=> b!3673751 (= e!2274806 (= (rule!8656 (_1!22442 lt!1281736)) lt!1281740))))

(declare-fun bm!266002 () Bool)

(declare-fun call!266012 () List!38872)

(declare-fun usedCharacters!1040 (Regex!10587) List!38872)

(assert (=> bm!266002 (= call!266012 (usedCharacters!1040 (regex!5828 (rule!8656 (_1!22442 lt!1281736)))))))

(declare-fun b!3673752 () Bool)

(declare-fun res!1492209 () Bool)

(assert (=> b!3673752 (=> res!1492209 e!2274829)))

(declare-fun matchR!5156 (Regex!10587 List!38872) Bool)

(assert (=> b!3673752 (= res!1492209 (not (matchR!5156 (regex!5828 (rule!8656 (_1!22442 lt!1281736))) lt!1281729)))))

(declare-fun bm!266003 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!776 (Regex!10587 List!38872 C!21360) Unit!56458)

(assert (=> bm!266003 (= call!266011 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!776 (regex!5828 (rule!8656 (_1!22442 lt!1281736))) lt!1281729 lt!1281704))))

(declare-fun call!266008 () Unit!56458)

(declare-fun bm!266004 () Bool)

(assert (=> bm!266004 (= call!266008 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!776 (regex!5828 (rule!8656 (_1!22442 lt!1281736))) lt!1281729 lt!1281687))))

(declare-fun b!3673753 () Bool)

(declare-fun res!1492213 () Bool)

(assert (=> b!3673753 (=> (not res!1492213) (not e!2274820))))

(declare-fun isEmpty!23002 (List!38872) Bool)

(assert (=> b!3673753 (= res!1492213 (isEmpty!23002 (_2!22442 lt!1281735)))))

(declare-fun bm!266005 () Bool)

(declare-fun call!266007 () List!38872)

(assert (=> bm!266005 (= call!266007 (usedCharacters!1040 (regex!5828 (rule!8656 (_1!22442 lt!1281736)))))))

(declare-fun b!3673754 () Bool)

(assert (=> b!3673754 (= e!2274815 e!2274802)))

(declare-fun res!1492221 () Bool)

(assert (=> b!3673754 (=> (not res!1492221) (not e!2274802))))

(declare-fun isDefined!6517 (Option!8285) Bool)

(assert (=> b!3673754 (= res!1492221 (isDefined!6517 lt!1281693))))

(assert (=> b!3673754 (= lt!1281693 (maxPrefix!2951 thiss!23823 rules!3307 lt!1281725))))

(declare-fun lt!1281709 () BalanceConc!23328)

(assert (=> b!3673754 (= lt!1281725 (list!14394 lt!1281709))))

(assert (=> b!3673754 (= lt!1281709 (charsOf!3842 token!511))))

(declare-fun b!3673755 () Bool)

(declare-fun e!2274831 () Bool)

(declare-fun e!2274837 () Bool)

(declare-fun tp!1117584 () Bool)

(assert (=> b!3673755 (= e!2274831 (and e!2274837 tp!1117584))))

(declare-fun b!3673756 () Bool)

(declare-fun e!2274808 () Unit!56458)

(declare-fun Unit!56464 () Unit!56458)

(assert (=> b!3673756 (= e!2274808 Unit!56464)))

(declare-fun lt!1281707 () Unit!56458)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!208 (List!38872) Unit!56458)

(assert (=> b!3673756 (= lt!1281707 (lemmaGetSuffixOnListWithItSelfIsEmpty!208 lt!1281725))))

(assert (=> b!3673756 (isEmpty!23002 (getSuffix!1744 lt!1281725 lt!1281725))))

(declare-fun lt!1281715 () Unit!56458)

(assert (=> b!3673756 (= lt!1281715 (lemmaMaxPrefNoSmallerRuleMatches!236 thiss!23823 rules!3307 rule!403 lt!1281725 lt!1281725 (rule!8656 (_1!22442 lt!1281736))))))

(declare-fun res!1492224 () Bool)

(assert (=> b!3673756 (= res!1492224 (not (matchR!5156 (regex!5828 (rule!8656 (_1!22442 lt!1281736))) lt!1281725)))))

(declare-fun e!2274812 () Bool)

(assert (=> b!3673756 (=> (not res!1492224) (not e!2274812))))

(assert (=> b!3673756 e!2274812))

(declare-fun b!3673757 () Bool)

(assert (=> b!3673757 (= e!2274812 false)))

(declare-fun b!3673758 () Bool)

(assert (=> b!3673758 (= e!2274829 e!2274828)))

(declare-fun res!1492211 () Bool)

(assert (=> b!3673758 (=> res!1492211 e!2274828)))

(declare-fun lt!1281730 () Int)

(declare-fun lt!1281713 () TokenValue!6058)

(assert (=> b!3673758 (= res!1492211 (not (= lt!1281734 (Some!8284 (tuple2!38617 (Token!11023 lt!1281713 (rule!8656 (_1!22442 lt!1281736)) lt!1281730 lt!1281729) (_2!22442 lt!1281736))))))))

(declare-fun size!29621 (BalanceConc!23328) Int)

(assert (=> b!3673758 (= lt!1281730 (size!29621 lt!1281700))))

(assert (=> b!3673758 (= lt!1281713 (apply!9330 (transformation!5828 (rule!8656 (_1!22442 lt!1281736))) lt!1281700))))

(declare-fun lt!1281705 () Unit!56458)

(declare-fun lemmaCharactersSize!873 (Token!11022) Unit!56458)

(assert (=> b!3673758 (= lt!1281705 (lemmaCharactersSize!873 (_1!22442 lt!1281736)))))

(declare-fun lt!1281689 () Unit!56458)

(declare-fun lemmaEqSameImage!1011 (TokenValueInjection!11544 BalanceConc!23328 BalanceConc!23328) Unit!56458)

(assert (=> b!3673758 (= lt!1281689 (lemmaEqSameImage!1011 (transformation!5828 (rule!8656 (_1!22442 lt!1281736))) lt!1281700 (seqFromList!4377 (originalCharacters!6542 (_1!22442 lt!1281736)))))))

(declare-fun lt!1281728 () Unit!56458)

(declare-fun lemmaSemiInverse!1577 (TokenValueInjection!11544 BalanceConc!23328) Unit!56458)

(assert (=> b!3673758 (= lt!1281728 (lemmaSemiInverse!1577 (transformation!5828 (rule!8656 (_1!22442 lt!1281736))) lt!1281700))))

(declare-fun b!3673759 () Bool)

(declare-fun res!1492226 () Bool)

(assert (=> b!3673759 (=> (not res!1492226) (not e!2274815))))

(declare-fun contains!7724 (List!38873 Rule!11456) Bool)

(assert (=> b!3673759 (= res!1492226 (contains!7724 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3673760 () Bool)

(declare-fun res!1492214 () Bool)

(assert (=> b!3673760 (=> (not res!1492214) (not e!2274815))))

(assert (=> b!3673760 (= res!1492214 (contains!7724 rules!3307 rule!403))))

(declare-fun b!3673761 () Bool)

(declare-fun res!1492223 () Bool)

(assert (=> b!3673761 (=> res!1492223 e!2274834)))

(assert (=> b!3673761 (= res!1492223 (not (contains!7723 (usedCharacters!1040 (regex!5828 anOtherTypeRule!33)) lt!1281687)))))

(declare-fun b!3673762 () Bool)

(declare-fun Unit!56465 () Unit!56458)

(assert (=> b!3673762 (= e!2274809 Unit!56465)))

(declare-fun b!3673763 () Bool)

(declare-fun res!1492219 () Bool)

(assert (=> b!3673763 (=> (not res!1492219) (not e!2274815))))

(declare-fun rulesInvariant!4814 (LexerInterface!5417 List!38873) Bool)

(assert (=> b!3673763 (= res!1492219 (rulesInvariant!4814 thiss!23823 rules!3307))))

(declare-fun b!3673764 () Bool)

(declare-fun e!2274822 () Unit!56458)

(declare-fun Unit!56466 () Unit!56458)

(assert (=> b!3673764 (= e!2274822 Unit!56466)))

(declare-fun lt!1281688 () Unit!56458)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!370 (LexerInterface!5417 List!38873 Rule!11456 List!38872 List!38872 List!38872 Rule!11456) Unit!56458)

(assert (=> b!3673764 (= lt!1281688 (lemmaMaxPrefixOutputsMaxPrefix!370 thiss!23823 rules!3307 (rule!8656 (_1!22442 lt!1281736)) lt!1281729 lt!1281702 lt!1281725 rule!403))))

(assert (=> b!3673764 false))

(declare-fun b!3673765 () Bool)

(declare-fun Unit!56467 () Unit!56458)

(assert (=> b!3673765 (= e!2274808 Unit!56467)))

(declare-fun b!3673766 () Bool)

(assert (=> b!3673766 (= e!2274811 e!2274806)))

(declare-fun res!1492212 () Bool)

(assert (=> b!3673766 (=> (not res!1492212) (not e!2274806))))

(assert (=> b!3673766 (= res!1492212 (matchR!5156 (regex!5828 lt!1281740) (list!14394 (charsOf!3842 (_1!22442 lt!1281736)))))))

(declare-fun get!12809 (Option!8284) Rule!11456)

(assert (=> b!3673766 (= lt!1281740 (get!12809 lt!1281708))))

(declare-fun tp!1117594 () Bool)

(declare-fun b!3673767 () Bool)

(declare-fun e!2274805 () Bool)

(declare-fun e!2274832 () Bool)

(assert (=> b!3673767 (= e!2274805 (and tp!1117594 (inv!52233 (tag!6622 rule!403)) (inv!52236 (transformation!5828 rule!403)) e!2274832))))

(declare-fun b!3673768 () Bool)

(declare-fun tp!1117591 () Bool)

(declare-fun e!2274838 () Bool)

(declare-fun inv!21 (TokenValue!6058) Bool)

(assert (=> b!3673768 (= e!2274838 (and (inv!21 (value!186558 token!511)) e!2274814 tp!1117591))))

(declare-fun b!3673769 () Bool)

(assert (=> b!3673769 false))

(declare-fun lt!1281697 () Unit!56458)

(assert (=> b!3673769 (= lt!1281697 call!266008)))

(declare-fun call!266009 () Bool)

(assert (=> b!3673769 (not call!266009)))

(declare-fun lt!1281731 () Unit!56458)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!474 (LexerInterface!5417 List!38873 List!38873 Rule!11456 Rule!11456 C!21360) Unit!56458)

(assert (=> b!3673769 (= lt!1281731 (lemmaNonSepRuleNotContainsCharContainedInASepRule!474 thiss!23823 rules!3307 rules!3307 (rule!8656 (_1!22442 lt!1281736)) anOtherTypeRule!33 lt!1281687))))

(declare-fun Unit!56468 () Unit!56458)

(assert (=> b!3673769 (= e!2274833 Unit!56468)))

(assert (=> b!3673770 (= e!2274825 (and tp!1117589 tp!1117596))))

(assert (=> b!3673771 (= e!2274821 (and tp!1117587 tp!1117586))))

(declare-fun b!3673772 () Bool)

(assert (=> b!3673772 false))

(declare-fun lt!1281701 () Unit!56458)

(assert (=> b!3673772 (= lt!1281701 call!266011)))

(assert (=> b!3673772 (not call!266010)))

(declare-fun lt!1281699 () Unit!56458)

(assert (=> b!3673772 (= lt!1281699 (lemmaNonSepRuleNotContainsCharContainedInASepRule!474 thiss!23823 rules!3307 rules!3307 (rule!8656 (_1!22442 lt!1281736)) rule!403 lt!1281704))))

(declare-fun Unit!56469 () Unit!56458)

(assert (=> b!3673772 (= e!2274817 Unit!56469)))

(declare-fun b!3673773 () Bool)

(declare-fun e!2274819 () Unit!56458)

(assert (=> b!3673773 (= e!2274819 e!2274827)))

(declare-fun c!635258 () Bool)

(assert (=> b!3673773 (= c!635258 (isSeparator!5828 (rule!8656 (_1!22442 lt!1281736))))))

(declare-fun bm!266006 () Bool)

(assert (=> bm!266006 (= call!266009 (contains!7723 call!266012 lt!1281687))))

(declare-fun b!3673774 () Bool)

(declare-fun res!1492225 () Bool)

(assert (=> b!3673774 (=> (not res!1492225) (not e!2274820))))

(assert (=> b!3673774 (= res!1492225 (= (rule!8656 token!511) rule!403))))

(declare-fun b!3673775 () Bool)

(declare-fun Unit!56470 () Unit!56458)

(assert (=> b!3673775 (= e!2274827 Unit!56470)))

(declare-fun b!3673776 () Bool)

(declare-fun e!2274826 () Unit!56458)

(declare-fun Unit!56471 () Unit!56458)

(assert (=> b!3673776 (= e!2274826 Unit!56471)))

(declare-fun lt!1281691 () Unit!56458)

(assert (=> b!3673776 (= lt!1281691 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!776 (regex!5828 rule!403) lt!1281725 lt!1281704))))

(assert (=> b!3673776 false))

(declare-fun b!3673777 () Bool)

(declare-fun e!2274824 () Bool)

(assert (=> b!3673777 (= e!2274824 false)))

(assert (=> b!3673777 (= (rule!8656 (_1!22442 lt!1281736)) rule!403)))

(declare-fun lt!1281696 () Unit!56458)

(declare-fun lemmaSameIndexThenSameElement!228 (List!38873 Rule!11456 Rule!11456) Unit!56458)

(assert (=> b!3673777 (= lt!1281696 (lemmaSameIndexThenSameElement!228 rules!3307 (rule!8656 (_1!22442 lt!1281736)) rule!403))))

(declare-fun lt!1281721 () Unit!56458)

(assert (=> b!3673777 (= lt!1281721 e!2274809)))

(declare-fun c!635259 () Bool)

(declare-fun lt!1281718 () Int)

(declare-fun lt!1281706 () Int)

(assert (=> b!3673777 (= c!635259 (< lt!1281718 lt!1281706))))

(declare-fun lt!1281737 () Unit!56458)

(assert (=> b!3673777 (= lt!1281737 e!2274808)))

(declare-fun c!635251 () Bool)

(assert (=> b!3673777 (= c!635251 (< lt!1281706 lt!1281718))))

(declare-fun getIndex!496 (List!38873 Rule!11456) Int)

(assert (=> b!3673777 (= lt!1281718 (getIndex!496 rules!3307 rule!403))))

(assert (=> b!3673777 (= lt!1281706 (getIndex!496 rules!3307 (rule!8656 (_1!22442 lt!1281736))))))

(declare-fun b!3673778 () Bool)

(declare-fun e!2274810 () Bool)

(assert (=> b!3673778 (= e!2274810 e!2274834)))

(declare-fun res!1492215 () Bool)

(assert (=> b!3673778 (=> res!1492215 e!2274834)))

(declare-fun lt!1281733 () List!38872)

(assert (=> b!3673778 (= res!1492215 (contains!7723 lt!1281733 lt!1281687))))

(declare-fun head!7872 (List!38872) C!21360)

(assert (=> b!3673778 (= lt!1281687 (head!7872 suffix!1395))))

(assert (=> b!3673778 (= lt!1281733 (usedCharacters!1040 (regex!5828 rule!403)))))

(declare-fun b!3673779 () Bool)

(declare-fun res!1492227 () Bool)

(assert (=> b!3673779 (=> res!1492227 e!2274810)))

(assert (=> b!3673779 (= res!1492227 (isEmpty!23002 suffix!1395))))

(declare-fun b!3673780 () Bool)

(declare-fun res!1492206 () Bool)

(assert (=> b!3673780 (=> (not res!1492206) (not e!2274815))))

(declare-fun isEmpty!23003 (List!38873) Bool)

(assert (=> b!3673780 (= res!1492206 (not (isEmpty!23003 rules!3307)))))

(declare-fun e!2274818 () Bool)

(assert (=> b!3673781 (= e!2274818 (and tp!1117595 tp!1117585))))

(declare-fun tp!1117598 () Bool)

(declare-fun b!3673782 () Bool)

(assert (=> b!3673782 (= e!2274837 (and tp!1117598 (inv!52233 (tag!6622 (h!44169 rules!3307))) (inv!52236 (transformation!5828 (h!44169 rules!3307))) e!2274818))))

(declare-fun b!3673783 () Bool)

(assert (=> b!3673783 (= e!2274820 (not e!2274810))))

(declare-fun res!1492218 () Bool)

(assert (=> b!3673783 (=> res!1492218 e!2274810)))

(assert (=> b!3673783 (= res!1492218 (not (matchR!5156 (regex!5828 rule!403) lt!1281725)))))

(declare-fun ruleValid!2092 (LexerInterface!5417 Rule!11456) Bool)

(assert (=> b!3673783 (ruleValid!2092 thiss!23823 rule!403)))

(declare-fun lt!1281710 () Unit!56458)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1246 (LexerInterface!5417 Rule!11456 List!38873) Unit!56458)

(assert (=> b!3673783 (= lt!1281710 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1246 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3673784 () Bool)

(declare-fun Unit!56472 () Unit!56458)

(assert (=> b!3673784 (= e!2274826 Unit!56472)))

(declare-fun b!3673785 () Bool)

(assert (=> b!3673785 (= e!2274804 e!2274824)))

(declare-fun res!1492220 () Bool)

(assert (=> b!3673785 (=> res!1492220 e!2274824)))

(assert (=> b!3673785 (= res!1492220 (= (rule!8656 (_1!22442 lt!1281736)) (rule!8656 token!511)))))

(assert (=> b!3673785 (= lt!1281729 lt!1281725)))

(declare-fun lt!1281723 () Unit!56458)

(declare-fun lemmaIsPrefixSameLengthThenSameList!653 (List!38872 List!38872 List!38872) Unit!56458)

(assert (=> b!3673785 (= lt!1281723 (lemmaIsPrefixSameLengthThenSameList!653 lt!1281729 lt!1281725 lt!1281702))))

(declare-fun lt!1281726 () Unit!56458)

(assert (=> b!3673785 (= lt!1281726 e!2274822)))

(declare-fun c!635255 () Bool)

(declare-fun lt!1281694 () Int)

(assert (=> b!3673785 (= c!635255 (< lt!1281730 lt!1281694))))

(declare-fun lt!1281724 () Unit!56458)

(assert (=> b!3673785 (= lt!1281724 e!2274816)))

(declare-fun c!635252 () Bool)

(assert (=> b!3673785 (= c!635252 (> lt!1281730 lt!1281694))))

(assert (=> b!3673785 (= lt!1281694 (size!29621 lt!1281709))))

(declare-fun lt!1281686 () Unit!56458)

(assert (=> b!3673785 (= lt!1281686 e!2274819)))

(declare-fun c!635257 () Bool)

(assert (=> b!3673785 (= c!635257 (isSeparator!5828 rule!403))))

(declare-fun lt!1281711 () Unit!56458)

(assert (=> b!3673785 (= lt!1281711 e!2274826)))

(declare-fun c!635254 () Bool)

(assert (=> b!3673785 (= c!635254 (not (contains!7723 lt!1281733 lt!1281704)))))

(assert (=> b!3673785 (= lt!1281704 (head!7872 lt!1281729))))

(declare-fun b!3673786 () Bool)

(assert (=> b!3673786 false))

(declare-fun lt!1281716 () Unit!56458)

(assert (=> b!3673786 (= lt!1281716 call!266008)))

(assert (=> b!3673786 (not call!266009)))

(declare-fun lt!1281703 () Unit!56458)

(assert (=> b!3673786 (= lt!1281703 (lemmaSepRuleNotContainsCharContainedInANonSepRule!356 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8656 (_1!22442 lt!1281736)) lt!1281687))))

(declare-fun Unit!56473 () Unit!56458)

(assert (=> b!3673786 (= e!2274833 Unit!56473)))

(declare-fun bm!266007 () Bool)

(assert (=> bm!266007 (= call!266010 (contains!7723 call!266007 lt!1281704))))

(declare-fun b!3673787 () Bool)

(declare-fun Unit!56474 () Unit!56458)

(assert (=> b!3673787 (= e!2274822 Unit!56474)))

(declare-fun b!3673788 () Bool)

(declare-fun Unit!56475 () Unit!56458)

(assert (=> b!3673788 (= e!2274816 Unit!56475)))

(declare-fun res!1492208 () Bool)

(assert (=> start!344414 (=> (not res!1492208) (not e!2274815))))

(get-info :version)

(assert (=> start!344414 (= res!1492208 ((_ is Lexer!5415) thiss!23823))))

(assert (=> start!344414 e!2274815))

(assert (=> start!344414 e!2274831))

(assert (=> start!344414 e!2274807))

(assert (=> start!344414 true))

(declare-fun inv!52237 (Token!11022) Bool)

(assert (=> start!344414 (and (inv!52237 token!511) e!2274838)))

(assert (=> start!344414 e!2274805))

(assert (=> start!344414 e!2274836))

(declare-fun b!3673789 () Bool)

(assert (=> b!3673789 (= e!2274819 e!2274817)))

(declare-fun c!635253 () Bool)

(assert (=> b!3673789 (= c!635253 (not (isSeparator!5828 (rule!8656 (_1!22442 lt!1281736)))))))

(assert (=> b!3673790 (= e!2274832 (and tp!1117590 tp!1117592))))

(assert (= (and start!344414 res!1492208) b!3673780))

(assert (= (and b!3673780 res!1492206) b!3673763))

(assert (= (and b!3673763 res!1492219) b!3673760))

(assert (= (and b!3673760 res!1492214) b!3673759))

(assert (= (and b!3673759 res!1492226) b!3673745))

(assert (= (and b!3673745 res!1492216) b!3673754))

(assert (= (and b!3673754 res!1492221) b!3673747))

(assert (= (and b!3673747 res!1492205) b!3673753))

(assert (= (and b!3673753 res!1492213) b!3673774))

(assert (= (and b!3673774 res!1492225) b!3673783))

(assert (= (and b!3673783 (not res!1492218)) b!3673779))

(assert (= (and b!3673779 (not res!1492227)) b!3673778))

(assert (= (and b!3673778 (not res!1492215)) b!3673761))

(assert (= (and b!3673761 (not res!1492223)) b!3673746))

(assert (= (and b!3673746 (not res!1492210)) b!3673742))

(assert (= (and b!3673742 res!1492222) b!3673766))

(assert (= (and b!3673766 res!1492212) b!3673751))

(assert (= (and b!3673742 (not res!1492207)) b!3673752))

(assert (= (and b!3673752 (not res!1492209)) b!3673758))

(assert (= (and b!3673758 (not res!1492211)) b!3673744))

(assert (= (and b!3673744 (not res!1492217)) b!3673785))

(assert (= (and b!3673785 c!635254) b!3673776))

(assert (= (and b!3673785 (not c!635254)) b!3673784))

(assert (= (and b!3673785 c!635257) b!3673789))

(assert (= (and b!3673785 (not c!635257)) b!3673773))

(assert (= (and b!3673789 c!635253) b!3673772))

(assert (= (and b!3673789 (not c!635253)) b!3673748))

(assert (= (and b!3673773 c!635258) b!3673739))

(assert (= (and b!3673773 (not c!635258)) b!3673775))

(assert (= (or b!3673772 b!3673739) bm!266003))

(assert (= (or b!3673772 b!3673739) bm!266005))

(assert (= (or b!3673772 b!3673739) bm!266007))

(assert (= (and b!3673785 c!635252) b!3673750))

(assert (= (and b!3673785 (not c!635252)) b!3673788))

(assert (= (and b!3673750 c!635256) b!3673786))

(assert (= (and b!3673750 (not c!635256)) b!3673769))

(assert (= (or b!3673786 b!3673769) bm!266004))

(assert (= (or b!3673786 b!3673769) bm!266002))

(assert (= (or b!3673786 b!3673769) bm!266006))

(assert (= (and b!3673785 c!635255) b!3673764))

(assert (= (and b!3673785 (not c!635255)) b!3673787))

(assert (= (and b!3673785 (not res!1492220)) b!3673777))

(assert (= (and b!3673777 c!635251) b!3673756))

(assert (= (and b!3673777 (not c!635251)) b!3673765))

(assert (= (and b!3673756 res!1492224) b!3673757))

(assert (= (and b!3673777 c!635259) b!3673749))

(assert (= (and b!3673777 (not c!635259)) b!3673762))

(assert (= b!3673782 b!3673781))

(assert (= b!3673755 b!3673782))

(assert (= (and start!344414 ((_ is Cons!38749) rules!3307)) b!3673755))

(assert (= (and start!344414 ((_ is Cons!38748) suffix!1395)) b!3673740))

(assert (= b!3673741 b!3673771))

(assert (= b!3673768 b!3673741))

(assert (= start!344414 b!3673768))

(assert (= b!3673767 b!3673790))

(assert (= start!344414 b!3673767))

(assert (= b!3673743 b!3673770))

(assert (= start!344414 b!3673743))

(declare-fun m!4182813 () Bool)

(assert (=> bm!266006 m!4182813))

(declare-fun m!4182815 () Bool)

(assert (=> b!3673750 m!4182815))

(declare-fun m!4182817 () Bool)

(assert (=> b!3673750 m!4182817))

(declare-fun m!4182819 () Bool)

(assert (=> b!3673753 m!4182819))

(declare-fun m!4182821 () Bool)

(assert (=> b!3673760 m!4182821))

(declare-fun m!4182823 () Bool)

(assert (=> b!3673780 m!4182823))

(declare-fun m!4182825 () Bool)

(assert (=> b!3673741 m!4182825))

(declare-fun m!4182827 () Bool)

(assert (=> b!3673741 m!4182827))

(declare-fun m!4182829 () Bool)

(assert (=> b!3673782 m!4182829))

(declare-fun m!4182831 () Bool)

(assert (=> b!3673782 m!4182831))

(declare-fun m!4182833 () Bool)

(assert (=> b!3673758 m!4182833))

(declare-fun m!4182835 () Bool)

(assert (=> b!3673758 m!4182835))

(declare-fun m!4182837 () Bool)

(assert (=> b!3673758 m!4182837))

(declare-fun m!4182839 () Bool)

(assert (=> b!3673758 m!4182839))

(declare-fun m!4182841 () Bool)

(assert (=> b!3673758 m!4182841))

(declare-fun m!4182843 () Bool)

(assert (=> b!3673758 m!4182843))

(assert (=> b!3673758 m!4182835))

(declare-fun m!4182845 () Bool)

(assert (=> b!3673769 m!4182845))

(declare-fun m!4182847 () Bool)

(assert (=> bm!266004 m!4182847))

(declare-fun m!4182849 () Bool)

(assert (=> b!3673768 m!4182849))

(declare-fun m!4182851 () Bool)

(assert (=> start!344414 m!4182851))

(declare-fun m!4182853 () Bool)

(assert (=> b!3673744 m!4182853))

(declare-fun m!4182855 () Bool)

(assert (=> b!3673744 m!4182855))

(declare-fun m!4182857 () Bool)

(assert (=> b!3673744 m!4182857))

(declare-fun m!4182859 () Bool)

(assert (=> b!3673744 m!4182859))

(declare-fun m!4182861 () Bool)

(assert (=> b!3673744 m!4182861))

(assert (=> b!3673744 m!4182853))

(declare-fun m!4182863 () Bool)

(assert (=> b!3673744 m!4182863))

(declare-fun m!4182865 () Bool)

(assert (=> b!3673744 m!4182865))

(declare-fun m!4182867 () Bool)

(assert (=> b!3673766 m!4182867))

(assert (=> b!3673766 m!4182867))

(declare-fun m!4182869 () Bool)

(assert (=> b!3673766 m!4182869))

(assert (=> b!3673766 m!4182869))

(declare-fun m!4182871 () Bool)

(assert (=> b!3673766 m!4182871))

(declare-fun m!4182873 () Bool)

(assert (=> b!3673766 m!4182873))

(declare-fun m!4182875 () Bool)

(assert (=> b!3673772 m!4182875))

(declare-fun m!4182877 () Bool)

(assert (=> b!3673776 m!4182877))

(declare-fun m!4182879 () Bool)

(assert (=> b!3673754 m!4182879))

(declare-fun m!4182881 () Bool)

(assert (=> b!3673754 m!4182881))

(declare-fun m!4182883 () Bool)

(assert (=> b!3673754 m!4182883))

(declare-fun m!4182885 () Bool)

(assert (=> b!3673754 m!4182885))

(declare-fun m!4182887 () Bool)

(assert (=> bm!266002 m!4182887))

(declare-fun m!4182889 () Bool)

(assert (=> b!3673749 m!4182889))

(declare-fun m!4182891 () Bool)

(assert (=> bm!266007 m!4182891))

(declare-fun m!4182893 () Bool)

(assert (=> b!3673739 m!4182893))

(declare-fun m!4182895 () Bool)

(assert (=> b!3673759 m!4182895))

(declare-fun m!4182897 () Bool)

(assert (=> b!3673763 m!4182897))

(declare-fun m!4182899 () Bool)

(assert (=> b!3673747 m!4182899))

(declare-fun m!4182901 () Bool)

(assert (=> b!3673786 m!4182901))

(declare-fun m!4182903 () Bool)

(assert (=> b!3673779 m!4182903))

(declare-fun m!4182905 () Bool)

(assert (=> b!3673746 m!4182905))

(assert (=> bm!266005 m!4182887))

(declare-fun m!4182907 () Bool)

(assert (=> b!3673783 m!4182907))

(declare-fun m!4182909 () Bool)

(assert (=> b!3673783 m!4182909))

(declare-fun m!4182911 () Bool)

(assert (=> b!3673783 m!4182911))

(declare-fun m!4182913 () Bool)

(assert (=> b!3673756 m!4182913))

(declare-fun m!4182915 () Bool)

(assert (=> b!3673756 m!4182915))

(declare-fun m!4182917 () Bool)

(assert (=> b!3673756 m!4182917))

(declare-fun m!4182919 () Bool)

(assert (=> b!3673756 m!4182919))

(assert (=> b!3673756 m!4182913))

(declare-fun m!4182921 () Bool)

(assert (=> b!3673756 m!4182921))

(declare-fun m!4182923 () Bool)

(assert (=> b!3673764 m!4182923))

(declare-fun m!4182925 () Bool)

(assert (=> b!3673778 m!4182925))

(declare-fun m!4182927 () Bool)

(assert (=> b!3673778 m!4182927))

(declare-fun m!4182929 () Bool)

(assert (=> b!3673778 m!4182929))

(declare-fun m!4182931 () Bool)

(assert (=> b!3673777 m!4182931))

(declare-fun m!4182933 () Bool)

(assert (=> b!3673777 m!4182933))

(declare-fun m!4182935 () Bool)

(assert (=> b!3673777 m!4182935))

(declare-fun m!4182937 () Bool)

(assert (=> b!3673761 m!4182937))

(assert (=> b!3673761 m!4182937))

(declare-fun m!4182939 () Bool)

(assert (=> b!3673761 m!4182939))

(declare-fun m!4182941 () Bool)

(assert (=> b!3673742 m!4182941))

(declare-fun m!4182943 () Bool)

(assert (=> b!3673742 m!4182943))

(declare-fun m!4182945 () Bool)

(assert (=> b!3673742 m!4182945))

(declare-fun m!4182947 () Bool)

(assert (=> b!3673742 m!4182947))

(declare-fun m!4182949 () Bool)

(assert (=> b!3673742 m!4182949))

(declare-fun m!4182951 () Bool)

(assert (=> b!3673742 m!4182951))

(declare-fun m!4182953 () Bool)

(assert (=> b!3673742 m!4182953))

(assert (=> b!3673742 m!4182867))

(declare-fun m!4182955 () Bool)

(assert (=> b!3673742 m!4182955))

(declare-fun m!4182957 () Bool)

(assert (=> b!3673742 m!4182957))

(declare-fun m!4182959 () Bool)

(assert (=> b!3673742 m!4182959))

(declare-fun m!4182961 () Bool)

(assert (=> b!3673742 m!4182961))

(declare-fun m!4182963 () Bool)

(assert (=> b!3673742 m!4182963))

(assert (=> b!3673742 m!4182951))

(declare-fun m!4182965 () Bool)

(assert (=> b!3673742 m!4182965))

(declare-fun m!4182967 () Bool)

(assert (=> b!3673742 m!4182967))

(declare-fun m!4182969 () Bool)

(assert (=> b!3673785 m!4182969))

(declare-fun m!4182971 () Bool)

(assert (=> b!3673785 m!4182971))

(declare-fun m!4182973 () Bool)

(assert (=> b!3673785 m!4182973))

(declare-fun m!4182975 () Bool)

(assert (=> b!3673785 m!4182975))

(declare-fun m!4182977 () Bool)

(assert (=> b!3673767 m!4182977))

(declare-fun m!4182979 () Bool)

(assert (=> b!3673767 m!4182979))

(declare-fun m!4182981 () Bool)

(assert (=> bm!266003 m!4182981))

(declare-fun m!4182983 () Bool)

(assert (=> b!3673743 m!4182983))

(declare-fun m!4182985 () Bool)

(assert (=> b!3673743 m!4182985))

(declare-fun m!4182987 () Bool)

(assert (=> b!3673752 m!4182987))

(check-sat tp_is_empty!18257 (not b_next!97875) (not b!3673743) (not b!3673741) (not b!3673769) (not b!3673744) (not b_next!97867) (not b_next!97865) (not b!3673782) (not b_next!97869) (not b!3673761) (not b!3673767) (not b_next!97877) (not b!3673753) (not b_next!97871) (not b!3673739) (not b!3673752) b_and!273851 (not b!3673766) (not b!3673759) (not b!3673785) (not b!3673763) (not b!3673783) (not b!3673747) (not b!3673786) b_and!273857 (not start!344414) (not bm!266007) (not b!3673742) (not b!3673776) (not bm!266006) (not bm!266002) (not b!3673755) (not b!3673740) (not b!3673760) (not b_next!97873) b_and!273861 b_and!273863 (not b_next!97879) b_and!273865 (not b!3673754) (not b!3673777) b_and!273855 (not b!3673746) (not b!3673756) (not bm!266003) (not b!3673780) (not b!3673772) (not b!3673778) (not b!3673779) (not b!3673749) (not b!3673758) b_and!273859 b_and!273853 (not b!3673768) (not bm!266005) (not b!3673764) (not bm!266004) (not b!3673750))
(check-sat (not b_next!97869) (not b_next!97877) (not b_next!97871) b_and!273851 (not b_next!97875) b_and!273857 b_and!273855 b_and!273859 b_and!273853 (not b_next!97867) (not b_next!97865) (not b_next!97873) b_and!273861 b_and!273863 (not b_next!97879) b_and!273865)
