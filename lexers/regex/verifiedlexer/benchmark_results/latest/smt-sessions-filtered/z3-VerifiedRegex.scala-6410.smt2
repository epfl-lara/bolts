; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!334342 () Bool)

(assert start!334342)

(declare-fun b!3598213 () Bool)

(declare-fun b_free!93049 () Bool)

(declare-fun b_next!93753 () Bool)

(assert (=> b!3598213 (= b_free!93049 (not b_next!93753))))

(declare-fun tp!1100936 () Bool)

(declare-fun b_and!261083 () Bool)

(assert (=> b!3598213 (= tp!1100936 b_and!261083)))

(declare-fun b_free!93051 () Bool)

(declare-fun b_next!93755 () Bool)

(assert (=> b!3598213 (= b_free!93051 (not b_next!93755))))

(declare-fun tp!1100928 () Bool)

(declare-fun b_and!261085 () Bool)

(assert (=> b!3598213 (= tp!1100928 b_and!261085)))

(declare-fun b!3598196 () Bool)

(declare-fun b_free!93053 () Bool)

(declare-fun b_next!93757 () Bool)

(assert (=> b!3598196 (= b_free!93053 (not b_next!93757))))

(declare-fun tp!1100930 () Bool)

(declare-fun b_and!261087 () Bool)

(assert (=> b!3598196 (= tp!1100930 b_and!261087)))

(declare-fun b_free!93055 () Bool)

(declare-fun b_next!93759 () Bool)

(assert (=> b!3598196 (= b_free!93055 (not b_next!93759))))

(declare-fun tp!1100925 () Bool)

(declare-fun b_and!261089 () Bool)

(assert (=> b!3598196 (= tp!1100925 b_and!261089)))

(declare-fun b!3598219 () Bool)

(declare-fun b_free!93057 () Bool)

(declare-fun b_next!93761 () Bool)

(assert (=> b!3598219 (= b_free!93057 (not b_next!93761))))

(declare-fun tp!1100929 () Bool)

(declare-fun b_and!261091 () Bool)

(assert (=> b!3598219 (= tp!1100929 b_and!261091)))

(declare-fun b_free!93059 () Bool)

(declare-fun b_next!93763 () Bool)

(assert (=> b!3598219 (= b_free!93059 (not b_next!93763))))

(declare-fun tp!1100933 () Bool)

(declare-fun b_and!261093 () Bool)

(assert (=> b!3598219 (= tp!1100933 b_and!261093)))

(declare-fun b!3598216 () Bool)

(declare-fun b_free!93061 () Bool)

(declare-fun b_next!93765 () Bool)

(assert (=> b!3598216 (= b_free!93061 (not b_next!93765))))

(declare-fun tp!1100927 () Bool)

(declare-fun b_and!261095 () Bool)

(assert (=> b!3598216 (= tp!1100927 b_and!261095)))

(declare-fun b_free!93063 () Bool)

(declare-fun b_next!93767 () Bool)

(assert (=> b!3598216 (= b_free!93063 (not b_next!93767))))

(declare-fun tp!1100937 () Bool)

(declare-fun b_and!261097 () Bool)

(assert (=> b!3598216 (= tp!1100937 b_and!261097)))

(declare-fun b!3598193 () Bool)

(declare-fun res!1453780 () Bool)

(declare-fun e!2226592 () Bool)

(assert (=> b!3598193 (=> (not res!1453780) (not e!2226592))))

(declare-datatypes ((List!37971 0))(
  ( (Nil!37847) (Cons!37847 (h!43267 (_ BitVec 16)) (t!291942 List!37971)) )
))
(declare-datatypes ((TokenValue!5830 0))(
  ( (FloatLiteralValue!11660 (text!41255 List!37971)) (TokenValueExt!5829 (__x!23877 Int)) (Broken!29150 (value!180034 List!37971)) (Object!5953) (End!5830) (Def!5830) (Underscore!5830) (Match!5830) (Else!5830) (Error!5830) (Case!5830) (If!5830) (Extends!5830) (Abstract!5830) (Class!5830) (Val!5830) (DelimiterValue!11660 (del!5890 List!37971)) (KeywordValue!5836 (value!180035 List!37971)) (CommentValue!11660 (value!180036 List!37971)) (WhitespaceValue!11660 (value!180037 List!37971)) (IndentationValue!5830 (value!180038 List!37971)) (String!42483) (Int32!5830) (Broken!29151 (value!180039 List!37971)) (Boolean!5831) (Unit!53866) (OperatorValue!5833 (op!5890 List!37971)) (IdentifierValue!11660 (value!180040 List!37971)) (IdentifierValue!11661 (value!180041 List!37971)) (WhitespaceValue!11661 (value!180042 List!37971)) (True!11660) (False!11660) (Broken!29152 (value!180043 List!37971)) (Broken!29153 (value!180044 List!37971)) (True!11661) (RightBrace!5830) (RightBracket!5830) (Colon!5830) (Null!5830) (Comma!5830) (LeftBracket!5830) (False!11661) (LeftBrace!5830) (ImaginaryLiteralValue!5830 (text!41256 List!37971)) (StringLiteralValue!17490 (value!180045 List!37971)) (EOFValue!5830 (value!180046 List!37971)) (IdentValue!5830 (value!180047 List!37971)) (DelimiterValue!11661 (value!180048 List!37971)) (DedentValue!5830 (value!180049 List!37971)) (NewLineValue!5830 (value!180050 List!37971)) (IntegerValue!17490 (value!180051 (_ BitVec 32)) (text!41257 List!37971)) (IntegerValue!17491 (value!180052 Int) (text!41258 List!37971)) (Times!5830) (Or!5830) (Equal!5830) (Minus!5830) (Broken!29154 (value!180053 List!37971)) (And!5830) (Div!5830) (LessEqual!5830) (Mod!5830) (Concat!16189) (Not!5830) (Plus!5830) (SpaceValue!5830 (value!180054 List!37971)) (IntegerValue!17492 (value!180055 Int) (text!41259 List!37971)) (StringLiteralValue!17491 (text!41260 List!37971)) (FloatLiteralValue!11661 (text!41261 List!37971)) (BytesLiteralValue!5830 (value!180056 List!37971)) (CommentValue!11661 (value!180057 List!37971)) (StringLiteralValue!17492 (value!180058 List!37971)) (ErrorTokenValue!5830 (msg!5891 List!37971)) )
))
(declare-datatypes ((C!20904 0))(
  ( (C!20905 (val!12500 Int)) )
))
(declare-datatypes ((Regex!10359 0))(
  ( (ElementMatch!10359 (c!622820 C!20904)) (Concat!16190 (regOne!21230 Regex!10359) (regTwo!21230 Regex!10359)) (EmptyExpr!10359) (Star!10359 (reg!10688 Regex!10359)) (EmptyLang!10359) (Union!10359 (regOne!21231 Regex!10359) (regTwo!21231 Regex!10359)) )
))
(declare-datatypes ((String!42484 0))(
  ( (String!42485 (value!180059 String)) )
))
(declare-datatypes ((List!37972 0))(
  ( (Nil!37848) (Cons!37848 (h!43268 C!20904) (t!291943 List!37972)) )
))
(declare-datatypes ((IArray!23047 0))(
  ( (IArray!23048 (innerList!11581 List!37972)) )
))
(declare-datatypes ((Conc!11521 0))(
  ( (Node!11521 (left!29571 Conc!11521) (right!29901 Conc!11521) (csize!23272 Int) (cheight!11732 Int)) (Leaf!17932 (xs!14723 IArray!23047) (csize!23273 Int)) (Empty!11521) )
))
(declare-datatypes ((BalanceConc!22656 0))(
  ( (BalanceConc!22657 (c!622821 Conc!11521)) )
))
(declare-datatypes ((TokenValueInjection!11088 0))(
  ( (TokenValueInjection!11089 (toValue!7884 Int) (toChars!7743 Int)) )
))
(declare-datatypes ((Rule!11000 0))(
  ( (Rule!11001 (regex!5600 Regex!10359) (tag!6286 String!42484) (isSeparator!5600 Bool) (transformation!5600 TokenValueInjection!11088)) )
))
(declare-datatypes ((List!37973 0))(
  ( (Nil!37849) (Cons!37849 (h!43269 Rule!11000) (t!291944 List!37973)) )
))
(declare-fun rules!3307 () List!37973)

(declare-fun rule!403 () Rule!11000)

(declare-fun contains!7263 (List!37973 Rule!11000) Bool)

(assert (=> b!3598193 (= res!1453780 (contains!7263 rules!3307 rule!403))))

(declare-fun e!2226587 () Bool)

(declare-fun tp!1100934 () Bool)

(declare-datatypes ((Token!10566 0))(
  ( (Token!10567 (value!180060 TokenValue!5830) (rule!8330 Rule!11000) (size!28838 Int) (originalCharacters!6314 List!37972)) )
))
(declare-fun token!511 () Token!10566)

(declare-fun b!3598194 () Bool)

(declare-fun e!2226607 () Bool)

(declare-fun inv!21 (TokenValue!5830) Bool)

(assert (=> b!3598194 (= e!2226607 (and (inv!21 (value!180060 token!511)) e!2226587 tp!1100934))))

(declare-fun b!3598195 () Bool)

(declare-datatypes ((Unit!53867 0))(
  ( (Unit!53868) )
))
(declare-fun e!2226583 () Unit!53867)

(declare-fun Unit!53869 () Unit!53867)

(assert (=> b!3598195 (= e!2226583 Unit!53869)))

(declare-fun lt!1235742 () C!20904)

(declare-fun lt!1235726 () Unit!53867)

(declare-fun lt!1235736 () List!37972)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!584 (Regex!10359 List!37972 C!20904) Unit!53867)

(assert (=> b!3598195 (= lt!1235726 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!584 (regex!5600 rule!403) lt!1235736 lt!1235742))))

(assert (=> b!3598195 false))

(declare-fun e!2226608 () Bool)

(assert (=> b!3598196 (= e!2226608 (and tp!1100930 tp!1100925))))

(declare-fun b!3598197 () Bool)

(declare-fun res!1453762 () Bool)

(assert (=> b!3598197 (=> (not res!1453762) (not e!2226592))))

(declare-datatypes ((LexerInterface!5189 0))(
  ( (LexerInterfaceExt!5186 (__x!23878 Int)) (Lexer!5187) )
))
(declare-fun thiss!23823 () LexerInterface!5189)

(declare-fun rulesInvariant!4586 (LexerInterface!5189 List!37973) Bool)

(assert (=> b!3598197 (= res!1453762 (rulesInvariant!4586 thiss!23823 rules!3307))))

(declare-fun b!3598198 () Bool)

(declare-fun e!2226610 () Bool)

(declare-fun e!2226604 () Bool)

(assert (=> b!3598198 (= e!2226610 e!2226604)))

(declare-fun res!1453772 () Bool)

(assert (=> b!3598198 (=> res!1453772 e!2226604)))

(declare-datatypes ((tuple2!37736 0))(
  ( (tuple2!37737 (_1!22002 Token!10566) (_2!22002 List!37972)) )
))
(declare-datatypes ((Option!7830 0))(
  ( (None!7829) (Some!7829 (v!37531 tuple2!37736)) )
))
(declare-fun lt!1235746 () Option!7830)

(declare-fun lt!1235723 () tuple2!37736)

(declare-fun lt!1235735 () List!37972)

(declare-fun lt!1235738 () BalanceConc!22656)

(declare-fun apply!9106 (TokenValueInjection!11088 BalanceConc!22656) TokenValue!5830)

(declare-fun size!28839 (BalanceConc!22656) Int)

(assert (=> b!3598198 (= res!1453772 (not (= lt!1235746 (Some!7829 (tuple2!37737 (Token!10567 (apply!9106 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))) lt!1235738) (rule!8330 (_1!22002 lt!1235723)) (size!28839 lt!1235738) lt!1235735) (_2!22002 lt!1235723))))))))

(declare-fun lt!1235741 () Unit!53867)

(declare-fun lemmaCharactersSize!653 (Token!10566) Unit!53867)

(assert (=> b!3598198 (= lt!1235741 (lemmaCharactersSize!653 (_1!22002 lt!1235723)))))

(declare-fun lt!1235720 () Unit!53867)

(declare-fun lemmaEqSameImage!791 (TokenValueInjection!11088 BalanceConc!22656 BalanceConc!22656) Unit!53867)

(declare-fun seqFromList!4153 (List!37972) BalanceConc!22656)

(assert (=> b!3598198 (= lt!1235720 (lemmaEqSameImage!791 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))) lt!1235738 (seqFromList!4153 (originalCharacters!6314 (_1!22002 lt!1235723)))))))

(declare-fun lt!1235728 () Unit!53867)

(declare-fun lemmaSemiInverse!1357 (TokenValueInjection!11088 BalanceConc!22656) Unit!53867)

(assert (=> b!3598198 (= lt!1235728 (lemmaSemiInverse!1357 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))) lt!1235738))))

(declare-fun b!3598199 () Bool)

(declare-fun res!1453781 () Bool)

(declare-fun e!2226599 () Bool)

(assert (=> b!3598199 (=> (not res!1453781) (not e!2226599))))

(assert (=> b!3598199 (= res!1453781 (= (rule!8330 token!511) rule!403))))

(declare-fun b!3598200 () Bool)

(declare-fun res!1453782 () Bool)

(declare-fun e!2226595 () Bool)

(assert (=> b!3598200 (=> res!1453782 e!2226595)))

(declare-fun anOtherTypeRule!33 () Rule!11000)

(declare-fun lt!1235722 () C!20904)

(declare-fun contains!7264 (List!37972 C!20904) Bool)

(declare-fun usedCharacters!814 (Regex!10359) List!37972)

(assert (=> b!3598200 (= res!1453782 (not (contains!7264 (usedCharacters!814 (regex!5600 anOtherTypeRule!33)) lt!1235722)))))

(declare-fun b!3598201 () Bool)

(declare-fun e!2226609 () Bool)

(declare-fun e!2226590 () Bool)

(declare-fun tp!1100926 () Bool)

(assert (=> b!3598201 (= e!2226609 (and e!2226590 tp!1100926))))

(declare-fun tp!1100931 () Bool)

(declare-fun e!2226588 () Bool)

(declare-fun b!3598202 () Bool)

(declare-fun e!2226598 () Bool)

(declare-fun inv!51198 (String!42484) Bool)

(declare-fun inv!51201 (TokenValueInjection!11088) Bool)

(assert (=> b!3598202 (= e!2226588 (and tp!1100931 (inv!51198 (tag!6286 rule!403)) (inv!51201 (transformation!5600 rule!403)) e!2226598))))

(declare-fun b!3598203 () Bool)

(declare-fun res!1453766 () Bool)

(declare-fun e!2226601 () Bool)

(assert (=> b!3598203 (=> res!1453766 e!2226601)))

(assert (=> b!3598203 (= res!1453766 (not (contains!7264 lt!1235736 lt!1235742)))))

(declare-fun b!3598204 () Bool)

(declare-fun res!1453775 () Bool)

(assert (=> b!3598204 (=> res!1453775 e!2226610)))

(declare-fun matchR!4928 (Regex!10359 List!37972) Bool)

(assert (=> b!3598204 (= res!1453775 (not (matchR!4928 (regex!5600 (rule!8330 (_1!22002 lt!1235723))) lt!1235735)))))

(declare-fun b!3598205 () Bool)

(assert (=> b!3598205 (= e!2226601 (not (= lt!1235735 Nil!37848)))))

(declare-fun b!3598206 () Bool)

(assert (=> b!3598206 (= e!2226595 e!2226610)))

(declare-fun res!1453761 () Bool)

(assert (=> b!3598206 (=> res!1453761 e!2226610)))

(declare-fun lt!1235719 () List!37972)

(declare-fun isPrefix!2963 (List!37972 List!37972) Bool)

(assert (=> b!3598206 (= res!1453761 (not (isPrefix!2963 lt!1235735 lt!1235719)))))

(declare-fun ++!9416 (List!37972 List!37972) List!37972)

(assert (=> b!3598206 (isPrefix!2963 lt!1235735 (++!9416 lt!1235735 (_2!22002 lt!1235723)))))

(declare-fun lt!1235739 () Unit!53867)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1884 (List!37972 List!37972) Unit!53867)

(assert (=> b!3598206 (= lt!1235739 (lemmaConcatTwoListThenFirstIsPrefix!1884 lt!1235735 (_2!22002 lt!1235723)))))

(declare-fun list!13936 (BalanceConc!22656) List!37972)

(assert (=> b!3598206 (= lt!1235735 (list!13936 lt!1235738))))

(declare-fun charsOf!3614 (Token!10566) BalanceConc!22656)

(assert (=> b!3598206 (= lt!1235738 (charsOf!3614 (_1!22002 lt!1235723)))))

(declare-fun e!2226600 () Bool)

(assert (=> b!3598206 e!2226600))

(declare-fun res!1453774 () Bool)

(assert (=> b!3598206 (=> (not res!1453774) (not e!2226600))))

(declare-datatypes ((Option!7831 0))(
  ( (None!7830) (Some!7830 (v!37532 Rule!11000)) )
))
(declare-fun lt!1235737 () Option!7831)

(declare-fun isDefined!6062 (Option!7831) Bool)

(assert (=> b!3598206 (= res!1453774 (isDefined!6062 lt!1235737))))

(declare-fun getRuleFromTag!1206 (LexerInterface!5189 List!37973 String!42484) Option!7831)

(assert (=> b!3598206 (= lt!1235737 (getRuleFromTag!1206 thiss!23823 rules!3307 (tag!6286 (rule!8330 (_1!22002 lt!1235723)))))))

(declare-fun lt!1235718 () Unit!53867)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1206 (LexerInterface!5189 List!37973 List!37972 Token!10566) Unit!53867)

(assert (=> b!3598206 (= lt!1235718 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1206 thiss!23823 rules!3307 lt!1235719 (_1!22002 lt!1235723)))))

(declare-fun get!12240 (Option!7830) tuple2!37736)

(assert (=> b!3598206 (= lt!1235723 (get!12240 lt!1235746))))

(declare-fun lt!1235729 () Unit!53867)

(declare-fun suffix!1395 () List!37972)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!869 (LexerInterface!5189 List!37973 List!37972 List!37972) Unit!53867)

(assert (=> b!3598206 (= lt!1235729 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!869 thiss!23823 rules!3307 lt!1235736 suffix!1395))))

(declare-fun maxPrefix!2723 (LexerInterface!5189 List!37973 List!37972) Option!7830)

(assert (=> b!3598206 (= lt!1235746 (maxPrefix!2723 thiss!23823 rules!3307 lt!1235719))))

(assert (=> b!3598206 (isPrefix!2963 lt!1235736 lt!1235719)))

(declare-fun lt!1235734 () Unit!53867)

(assert (=> b!3598206 (= lt!1235734 (lemmaConcatTwoListThenFirstIsPrefix!1884 lt!1235736 suffix!1395))))

(assert (=> b!3598206 (= lt!1235719 (++!9416 lt!1235736 suffix!1395))))

(declare-fun b!3598207 () Bool)

(declare-fun e!2226605 () Bool)

(assert (=> b!3598207 (= e!2226592 e!2226605)))

(declare-fun res!1453765 () Bool)

(assert (=> b!3598207 (=> (not res!1453765) (not e!2226605))))

(declare-fun lt!1235740 () Option!7830)

(declare-fun isDefined!6063 (Option!7830) Bool)

(assert (=> b!3598207 (= res!1453765 (isDefined!6063 lt!1235740))))

(assert (=> b!3598207 (= lt!1235740 (maxPrefix!2723 thiss!23823 rules!3307 lt!1235736))))

(assert (=> b!3598207 (= lt!1235736 (list!13936 (charsOf!3614 token!511)))))

(declare-fun e!2226586 () Bool)

(declare-fun tp!1100932 () Bool)

(declare-fun b!3598208 () Bool)

(declare-fun e!2226584 () Bool)

(assert (=> b!3598208 (= e!2226584 (and tp!1100932 (inv!51198 (tag!6286 anOtherTypeRule!33)) (inv!51201 (transformation!5600 anOtherTypeRule!33)) e!2226586))))

(declare-fun b!3598209 () Bool)

(declare-fun res!1453769 () Bool)

(assert (=> b!3598209 (=> (not res!1453769) (not e!2226599))))

(declare-fun lt!1235731 () tuple2!37736)

(declare-fun isEmpty!22322 (List!37972) Bool)

(assert (=> b!3598209 (= res!1453769 (isEmpty!22322 (_2!22002 lt!1235731)))))

(declare-fun b!3598210 () Bool)

(declare-fun e!2226603 () Bool)

(assert (=> b!3598210 (= e!2226600 e!2226603)))

(declare-fun res!1453779 () Bool)

(assert (=> b!3598210 (=> (not res!1453779) (not e!2226603))))

(declare-fun lt!1235721 () Rule!11000)

(assert (=> b!3598210 (= res!1453779 (matchR!4928 (regex!5600 lt!1235721) (list!13936 (charsOf!3614 (_1!22002 lt!1235723)))))))

(declare-fun get!12241 (Option!7831) Rule!11000)

(assert (=> b!3598210 (= lt!1235721 (get!12241 lt!1235737))))

(declare-fun b!3598211 () Bool)

(declare-fun res!1453760 () Bool)

(assert (=> b!3598211 (=> (not res!1453760) (not e!2226592))))

(assert (=> b!3598211 (= res!1453760 (not (= (isSeparator!5600 anOtherTypeRule!33) (isSeparator!5600 rule!403))))))

(declare-fun b!3598212 () Bool)

(declare-fun e!2226591 () Bool)

(assert (=> b!3598212 (= e!2226604 e!2226591)))

(declare-fun res!1453776 () Bool)

(assert (=> b!3598212 (=> res!1453776 e!2226591)))

(declare-fun lt!1235733 () Option!7830)

(declare-fun lt!1235745 () List!37972)

(assert (=> b!3598212 (= res!1453776 (or (not (= lt!1235745 (_2!22002 lt!1235723))) (not (= lt!1235733 (Some!7829 (tuple2!37737 (_1!22002 lt!1235723) lt!1235745))))))))

(assert (=> b!3598212 (= (_2!22002 lt!1235723) lt!1235745)))

(declare-fun lt!1235725 () Unit!53867)

(declare-fun lemmaSamePrefixThenSameSuffix!1318 (List!37972 List!37972 List!37972 List!37972 List!37972) Unit!53867)

(assert (=> b!3598212 (= lt!1235725 (lemmaSamePrefixThenSameSuffix!1318 lt!1235735 (_2!22002 lt!1235723) lt!1235735 lt!1235745 lt!1235719))))

(declare-fun getSuffix!1538 (List!37972 List!37972) List!37972)

(assert (=> b!3598212 (= lt!1235745 (getSuffix!1538 lt!1235719 lt!1235735))))

(declare-fun lt!1235724 () Int)

(declare-fun lt!1235732 () TokenValue!5830)

(assert (=> b!3598212 (= lt!1235733 (Some!7829 (tuple2!37737 (Token!10567 lt!1235732 (rule!8330 (_1!22002 lt!1235723)) lt!1235724 lt!1235735) (_2!22002 lt!1235723))))))

(declare-fun maxPrefixOneRule!1867 (LexerInterface!5189 Rule!11000 List!37972) Option!7830)

(assert (=> b!3598212 (= lt!1235733 (maxPrefixOneRule!1867 thiss!23823 (rule!8330 (_1!22002 lt!1235723)) lt!1235719))))

(declare-fun size!28840 (List!37972) Int)

(assert (=> b!3598212 (= lt!1235724 (size!28840 lt!1235735))))

(assert (=> b!3598212 (= lt!1235732 (apply!9106 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))) (seqFromList!4153 lt!1235735)))))

(declare-fun lt!1235744 () Unit!53867)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!939 (LexerInterface!5189 List!37973 List!37972 List!37972 List!37972 Rule!11000) Unit!53867)

(assert (=> b!3598212 (= lt!1235744 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!939 thiss!23823 rules!3307 lt!1235735 lt!1235719 (_2!22002 lt!1235723) (rule!8330 (_1!22002 lt!1235723))))))

(declare-fun e!2226602 () Bool)

(assert (=> b!3598213 (= e!2226602 (and tp!1100936 tp!1100928))))

(declare-fun b!3598214 () Bool)

(declare-fun res!1453778 () Bool)

(assert (=> b!3598214 (=> res!1453778 e!2226595)))

(declare-fun sepAndNonSepRulesDisjointChars!1770 (List!37973 List!37973) Bool)

(assert (=> b!3598214 (= res!1453778 (not (sepAndNonSepRulesDisjointChars!1770 rules!3307 rules!3307)))))

(declare-fun b!3598215 () Bool)

(declare-fun e!2226593 () Bool)

(assert (=> b!3598215 (= e!2226599 (not e!2226593))))

(declare-fun res!1453767 () Bool)

(assert (=> b!3598215 (=> res!1453767 e!2226593)))

(assert (=> b!3598215 (= res!1453767 (not (matchR!4928 (regex!5600 rule!403) lt!1235736)))))

(declare-fun ruleValid!1865 (LexerInterface!5189 Rule!11000) Bool)

(assert (=> b!3598215 (ruleValid!1865 thiss!23823 rule!403)))

(declare-fun lt!1235730 () Unit!53867)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1020 (LexerInterface!5189 Rule!11000 List!37973) Unit!53867)

(assert (=> b!3598215 (= lt!1235730 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1020 thiss!23823 rule!403 rules!3307))))

(assert (=> b!3598216 (= e!2226598 (and tp!1100927 tp!1100937))))

(declare-fun b!3598217 () Bool)

(declare-fun res!1453771 () Bool)

(assert (=> b!3598217 (=> (not res!1453771) (not e!2226592))))

(declare-fun isEmpty!22323 (List!37973) Bool)

(assert (=> b!3598217 (= res!1453771 (not (isEmpty!22323 rules!3307)))))

(declare-fun b!3598218 () Bool)

(assert (=> b!3598218 (= e!2226591 e!2226601)))

(declare-fun res!1453777 () Bool)

(assert (=> b!3598218 (=> res!1453777 e!2226601)))

(assert (=> b!3598218 (= res!1453777 (or (not (isSeparator!5600 rule!403)) (isSeparator!5600 (rule!8330 (_1!22002 lt!1235723)))))))

(declare-fun lt!1235727 () Unit!53867)

(assert (=> b!3598218 (= lt!1235727 e!2226583)))

(declare-fun c!622819 () Bool)

(declare-fun lt!1235743 () List!37972)

(assert (=> b!3598218 (= c!622819 (not (contains!7264 lt!1235743 lt!1235742)))))

(declare-fun head!7538 (List!37972) C!20904)

(assert (=> b!3598218 (= lt!1235742 (head!7538 lt!1235735))))

(assert (=> b!3598219 (= e!2226586 (and tp!1100929 tp!1100933))))

(declare-fun b!3598220 () Bool)

(declare-fun tp!1100935 () Bool)

(assert (=> b!3598220 (= e!2226587 (and tp!1100935 (inv!51198 (tag!6286 (rule!8330 token!511))) (inv!51201 (transformation!5600 (rule!8330 token!511))) e!2226602))))

(declare-fun b!3598221 () Bool)

(assert (=> b!3598221 (= e!2226605 e!2226599)))

(declare-fun res!1453770 () Bool)

(assert (=> b!3598221 (=> (not res!1453770) (not e!2226599))))

(assert (=> b!3598221 (= res!1453770 (= (_1!22002 lt!1235731) token!511))))

(assert (=> b!3598221 (= lt!1235731 (get!12240 lt!1235740))))

(declare-fun tp!1100938 () Bool)

(declare-fun b!3598222 () Bool)

(assert (=> b!3598222 (= e!2226590 (and tp!1100938 (inv!51198 (tag!6286 (h!43269 rules!3307))) (inv!51201 (transformation!5600 (h!43269 rules!3307))) e!2226608))))

(declare-fun b!3598223 () Bool)

(assert (=> b!3598223 (= e!2226603 (= (rule!8330 (_1!22002 lt!1235723)) lt!1235721))))

(declare-fun b!3598224 () Bool)

(declare-fun e!2226597 () Bool)

(declare-fun tp_is_empty!17801 () Bool)

(declare-fun tp!1100924 () Bool)

(assert (=> b!3598224 (= e!2226597 (and tp_is_empty!17801 tp!1100924))))

(declare-fun b!3598225 () Bool)

(declare-fun res!1453764 () Bool)

(assert (=> b!3598225 (=> res!1453764 e!2226593)))

(assert (=> b!3598225 (= res!1453764 (isEmpty!22322 suffix!1395))))

(declare-fun b!3598226 () Bool)

(declare-fun res!1453768 () Bool)

(assert (=> b!3598226 (=> (not res!1453768) (not e!2226592))))

(assert (=> b!3598226 (= res!1453768 (contains!7263 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3598227 () Bool)

(declare-fun Unit!53870 () Unit!53867)

(assert (=> b!3598227 (= e!2226583 Unit!53870)))

(declare-fun res!1453773 () Bool)

(assert (=> start!334342 (=> (not res!1453773) (not e!2226592))))

(get-info :version)

(assert (=> start!334342 (= res!1453773 ((_ is Lexer!5187) thiss!23823))))

(assert (=> start!334342 e!2226592))

(assert (=> start!334342 e!2226609))

(assert (=> start!334342 e!2226597))

(assert (=> start!334342 true))

(declare-fun inv!51202 (Token!10566) Bool)

(assert (=> start!334342 (and (inv!51202 token!511) e!2226607)))

(assert (=> start!334342 e!2226588))

(assert (=> start!334342 e!2226584))

(declare-fun b!3598228 () Bool)

(assert (=> b!3598228 (= e!2226593 e!2226595)))

(declare-fun res!1453763 () Bool)

(assert (=> b!3598228 (=> res!1453763 e!2226595)))

(assert (=> b!3598228 (= res!1453763 (contains!7264 lt!1235743 lt!1235722))))

(assert (=> b!3598228 (= lt!1235722 (head!7538 suffix!1395))))

(assert (=> b!3598228 (= lt!1235743 (usedCharacters!814 (regex!5600 rule!403)))))

(assert (= (and start!334342 res!1453773) b!3598217))

(assert (= (and b!3598217 res!1453771) b!3598197))

(assert (= (and b!3598197 res!1453762) b!3598193))

(assert (= (and b!3598193 res!1453780) b!3598226))

(assert (= (and b!3598226 res!1453768) b!3598211))

(assert (= (and b!3598211 res!1453760) b!3598207))

(assert (= (and b!3598207 res!1453765) b!3598221))

(assert (= (and b!3598221 res!1453770) b!3598209))

(assert (= (and b!3598209 res!1453769) b!3598199))

(assert (= (and b!3598199 res!1453781) b!3598215))

(assert (= (and b!3598215 (not res!1453767)) b!3598225))

(assert (= (and b!3598225 (not res!1453764)) b!3598228))

(assert (= (and b!3598228 (not res!1453763)) b!3598200))

(assert (= (and b!3598200 (not res!1453782)) b!3598214))

(assert (= (and b!3598214 (not res!1453778)) b!3598206))

(assert (= (and b!3598206 res!1453774) b!3598210))

(assert (= (and b!3598210 res!1453779) b!3598223))

(assert (= (and b!3598206 (not res!1453761)) b!3598204))

(assert (= (and b!3598204 (not res!1453775)) b!3598198))

(assert (= (and b!3598198 (not res!1453772)) b!3598212))

(assert (= (and b!3598212 (not res!1453776)) b!3598218))

(assert (= (and b!3598218 c!622819) b!3598195))

(assert (= (and b!3598218 (not c!622819)) b!3598227))

(assert (= (and b!3598218 (not res!1453777)) b!3598203))

(assert (= (and b!3598203 (not res!1453766)) b!3598205))

(assert (= b!3598222 b!3598196))

(assert (= b!3598201 b!3598222))

(assert (= (and start!334342 ((_ is Cons!37849) rules!3307)) b!3598201))

(assert (= (and start!334342 ((_ is Cons!37848) suffix!1395)) b!3598224))

(assert (= b!3598220 b!3598213))

(assert (= b!3598194 b!3598220))

(assert (= start!334342 b!3598194))

(assert (= b!3598202 b!3598216))

(assert (= start!334342 b!3598202))

(assert (= b!3598208 b!3598219))

(assert (= start!334342 b!3598208))

(declare-fun m!4093613 () Bool)

(assert (=> b!3598228 m!4093613))

(declare-fun m!4093615 () Bool)

(assert (=> b!3598228 m!4093615))

(declare-fun m!4093617 () Bool)

(assert (=> b!3598228 m!4093617))

(declare-fun m!4093619 () Bool)

(assert (=> b!3598208 m!4093619))

(declare-fun m!4093621 () Bool)

(assert (=> b!3598208 m!4093621))

(declare-fun m!4093623 () Bool)

(assert (=> b!3598226 m!4093623))

(declare-fun m!4093625 () Bool)

(assert (=> b!3598197 m!4093625))

(declare-fun m!4093627 () Bool)

(assert (=> b!3598225 m!4093627))

(declare-fun m!4093629 () Bool)

(assert (=> b!3598217 m!4093629))

(declare-fun m!4093631 () Bool)

(assert (=> b!3598215 m!4093631))

(declare-fun m!4093633 () Bool)

(assert (=> b!3598215 m!4093633))

(declare-fun m!4093635 () Bool)

(assert (=> b!3598215 m!4093635))

(declare-fun m!4093637 () Bool)

(assert (=> b!3598204 m!4093637))

(declare-fun m!4093639 () Bool)

(assert (=> b!3598195 m!4093639))

(declare-fun m!4093641 () Bool)

(assert (=> b!3598202 m!4093641))

(declare-fun m!4093643 () Bool)

(assert (=> b!3598202 m!4093643))

(declare-fun m!4093645 () Bool)

(assert (=> b!3598221 m!4093645))

(declare-fun m!4093647 () Bool)

(assert (=> b!3598194 m!4093647))

(declare-fun m!4093649 () Bool)

(assert (=> start!334342 m!4093649))

(declare-fun m!4093651 () Bool)

(assert (=> b!3598200 m!4093651))

(assert (=> b!3598200 m!4093651))

(declare-fun m!4093653 () Bool)

(assert (=> b!3598200 m!4093653))

(declare-fun m!4093655 () Bool)

(assert (=> b!3598222 m!4093655))

(declare-fun m!4093657 () Bool)

(assert (=> b!3598222 m!4093657))

(declare-fun m!4093659 () Bool)

(assert (=> b!3598209 m!4093659))

(declare-fun m!4093661 () Bool)

(assert (=> b!3598218 m!4093661))

(declare-fun m!4093663 () Bool)

(assert (=> b!3598218 m!4093663))

(declare-fun m!4093665 () Bool)

(assert (=> b!3598198 m!4093665))

(declare-fun m!4093667 () Bool)

(assert (=> b!3598198 m!4093667))

(declare-fun m!4093669 () Bool)

(assert (=> b!3598198 m!4093669))

(declare-fun m!4093671 () Bool)

(assert (=> b!3598198 m!4093671))

(assert (=> b!3598198 m!4093667))

(declare-fun m!4093673 () Bool)

(assert (=> b!3598198 m!4093673))

(declare-fun m!4093675 () Bool)

(assert (=> b!3598198 m!4093675))

(declare-fun m!4093677 () Bool)

(assert (=> b!3598214 m!4093677))

(declare-fun m!4093679 () Bool)

(assert (=> b!3598210 m!4093679))

(assert (=> b!3598210 m!4093679))

(declare-fun m!4093681 () Bool)

(assert (=> b!3598210 m!4093681))

(assert (=> b!3598210 m!4093681))

(declare-fun m!4093683 () Bool)

(assert (=> b!3598210 m!4093683))

(declare-fun m!4093685 () Bool)

(assert (=> b!3598210 m!4093685))

(declare-fun m!4093687 () Bool)

(assert (=> b!3598207 m!4093687))

(declare-fun m!4093689 () Bool)

(assert (=> b!3598207 m!4093689))

(declare-fun m!4093691 () Bool)

(assert (=> b!3598207 m!4093691))

(assert (=> b!3598207 m!4093691))

(declare-fun m!4093693 () Bool)

(assert (=> b!3598207 m!4093693))

(declare-fun m!4093695 () Bool)

(assert (=> b!3598220 m!4093695))

(declare-fun m!4093697 () Bool)

(assert (=> b!3598220 m!4093697))

(declare-fun m!4093699 () Bool)

(assert (=> b!3598212 m!4093699))

(declare-fun m!4093701 () Bool)

(assert (=> b!3598212 m!4093701))

(declare-fun m!4093703 () Bool)

(assert (=> b!3598212 m!4093703))

(assert (=> b!3598212 m!4093701))

(declare-fun m!4093705 () Bool)

(assert (=> b!3598212 m!4093705))

(declare-fun m!4093707 () Bool)

(assert (=> b!3598212 m!4093707))

(declare-fun m!4093709 () Bool)

(assert (=> b!3598212 m!4093709))

(declare-fun m!4093711 () Bool)

(assert (=> b!3598212 m!4093711))

(declare-fun m!4093713 () Bool)

(assert (=> b!3598206 m!4093713))

(declare-fun m!4093715 () Bool)

(assert (=> b!3598206 m!4093715))

(declare-fun m!4093717 () Bool)

(assert (=> b!3598206 m!4093717))

(declare-fun m!4093719 () Bool)

(assert (=> b!3598206 m!4093719))

(assert (=> b!3598206 m!4093715))

(declare-fun m!4093721 () Bool)

(assert (=> b!3598206 m!4093721))

(declare-fun m!4093723 () Bool)

(assert (=> b!3598206 m!4093723))

(declare-fun m!4093725 () Bool)

(assert (=> b!3598206 m!4093725))

(declare-fun m!4093727 () Bool)

(assert (=> b!3598206 m!4093727))

(assert (=> b!3598206 m!4093679))

(declare-fun m!4093729 () Bool)

(assert (=> b!3598206 m!4093729))

(declare-fun m!4093731 () Bool)

(assert (=> b!3598206 m!4093731))

(declare-fun m!4093733 () Bool)

(assert (=> b!3598206 m!4093733))

(declare-fun m!4093735 () Bool)

(assert (=> b!3598206 m!4093735))

(declare-fun m!4093737 () Bool)

(assert (=> b!3598206 m!4093737))

(declare-fun m!4093739 () Bool)

(assert (=> b!3598206 m!4093739))

(declare-fun m!4093741 () Bool)

(assert (=> b!3598193 m!4093741))

(declare-fun m!4093743 () Bool)

(assert (=> b!3598203 m!4093743))

(check-sat (not b_next!93761) b_and!261085 (not b!3598209) (not b!3598194) (not b!3598220) (not b!3598193) (not b!3598208) (not b!3598203) (not b!3598217) (not b_next!93759) (not b!3598210) (not b!3598198) (not b!3598222) (not b!3598212) (not b!3598204) tp_is_empty!17801 (not b_next!93765) (not start!334342) (not b!3598200) (not b!3598225) b_and!261089 (not b_next!93767) b_and!261097 (not b!3598221) (not b!3598202) (not b_next!93763) (not b_next!93755) (not b_next!93753) b_and!261095 b_and!261087 (not b!3598206) (not b!3598226) (not b!3598207) (not b!3598215) (not b!3598201) (not b_next!93757) (not b!3598218) b_and!261093 (not b!3598197) (not b!3598214) (not b!3598195) (not b!3598224) (not b!3598228) b_and!261083 b_and!261091)
(check-sat (not b_next!93761) b_and!261085 (not b_next!93763) (not b_next!93757) b_and!261093 (not b_next!93759) (not b_next!93765) b_and!261089 (not b_next!93767) b_and!261097 (not b_next!93755) (not b_next!93753) b_and!261095 b_and!261087 b_and!261083 b_and!261091)
(get-model)

(declare-fun d!1060293 () Bool)

(assert (=> d!1060293 (= (isEmpty!22322 (_2!22002 lt!1235731)) ((_ is Nil!37848) (_2!22002 lt!1235731)))))

(assert (=> b!3598209 d!1060293))

(declare-fun b!3598279 () Bool)

(declare-fun e!2226642 () Bool)

(declare-fun lt!1235755 () Bool)

(declare-fun call!260269 () Bool)

(assert (=> b!3598279 (= e!2226642 (= lt!1235755 call!260269))))

(declare-fun b!3598280 () Bool)

(declare-fun e!2226641 () Bool)

(assert (=> b!3598280 (= e!2226642 e!2226641)))

(declare-fun c!622832 () Bool)

(assert (=> b!3598280 (= c!622832 ((_ is EmptyLang!10359) (regex!5600 lt!1235721)))))

(declare-fun b!3598281 () Bool)

(declare-fun res!1453821 () Bool)

(declare-fun e!2226640 () Bool)

(assert (=> b!3598281 (=> res!1453821 e!2226640)))

(assert (=> b!3598281 (= res!1453821 (not ((_ is ElementMatch!10359) (regex!5600 lt!1235721))))))

(assert (=> b!3598281 (= e!2226641 e!2226640)))

(declare-fun b!3598282 () Bool)

(declare-fun e!2226644 () Bool)

(assert (=> b!3598282 (= e!2226644 (= (head!7538 (list!13936 (charsOf!3614 (_1!22002 lt!1235723)))) (c!622820 (regex!5600 lt!1235721))))))

(declare-fun b!3598283 () Bool)

(declare-fun e!2226646 () Bool)

(assert (=> b!3598283 (= e!2226640 e!2226646)))

(declare-fun res!1453825 () Bool)

(assert (=> b!3598283 (=> (not res!1453825) (not e!2226646))))

(assert (=> b!3598283 (= res!1453825 (not lt!1235755))))

(declare-fun b!3598285 () Bool)

(declare-fun e!2226645 () Bool)

(declare-fun nullable!3578 (Regex!10359) Bool)

(assert (=> b!3598285 (= e!2226645 (nullable!3578 (regex!5600 lt!1235721)))))

(declare-fun b!3598286 () Bool)

(declare-fun res!1453819 () Bool)

(assert (=> b!3598286 (=> res!1453819 e!2226640)))

(assert (=> b!3598286 (= res!1453819 e!2226644)))

(declare-fun res!1453818 () Bool)

(assert (=> b!3598286 (=> (not res!1453818) (not e!2226644))))

(assert (=> b!3598286 (= res!1453818 lt!1235755)))

(declare-fun b!3598287 () Bool)

(declare-fun res!1453822 () Bool)

(declare-fun e!2226643 () Bool)

(assert (=> b!3598287 (=> res!1453822 e!2226643)))

(declare-fun tail!5577 (List!37972) List!37972)

(assert (=> b!3598287 (= res!1453822 (not (isEmpty!22322 (tail!5577 (list!13936 (charsOf!3614 (_1!22002 lt!1235723)))))))))

(declare-fun b!3598288 () Bool)

(assert (=> b!3598288 (= e!2226643 (not (= (head!7538 (list!13936 (charsOf!3614 (_1!22002 lt!1235723)))) (c!622820 (regex!5600 lt!1235721)))))))

(declare-fun bm!260264 () Bool)

(assert (=> bm!260264 (= call!260269 (isEmpty!22322 (list!13936 (charsOf!3614 (_1!22002 lt!1235723)))))))

(declare-fun d!1060297 () Bool)

(assert (=> d!1060297 e!2226642))

(declare-fun c!622833 () Bool)

(assert (=> d!1060297 (= c!622833 ((_ is EmptyExpr!10359) (regex!5600 lt!1235721)))))

(assert (=> d!1060297 (= lt!1235755 e!2226645)))

(declare-fun c!622834 () Bool)

(assert (=> d!1060297 (= c!622834 (isEmpty!22322 (list!13936 (charsOf!3614 (_1!22002 lt!1235723)))))))

(declare-fun validRegex!4737 (Regex!10359) Bool)

(assert (=> d!1060297 (validRegex!4737 (regex!5600 lt!1235721))))

(assert (=> d!1060297 (= (matchR!4928 (regex!5600 lt!1235721) (list!13936 (charsOf!3614 (_1!22002 lt!1235723)))) lt!1235755)))

(declare-fun b!3598284 () Bool)

(assert (=> b!3598284 (= e!2226646 e!2226643)))

(declare-fun res!1453824 () Bool)

(assert (=> b!3598284 (=> res!1453824 e!2226643)))

(assert (=> b!3598284 (= res!1453824 call!260269)))

(declare-fun b!3598289 () Bool)

(declare-fun res!1453820 () Bool)

(assert (=> b!3598289 (=> (not res!1453820) (not e!2226644))))

(assert (=> b!3598289 (= res!1453820 (isEmpty!22322 (tail!5577 (list!13936 (charsOf!3614 (_1!22002 lt!1235723))))))))

(declare-fun b!3598290 () Bool)

(assert (=> b!3598290 (= e!2226641 (not lt!1235755))))

(declare-fun b!3598291 () Bool)

(declare-fun derivativeStep!3127 (Regex!10359 C!20904) Regex!10359)

(assert (=> b!3598291 (= e!2226645 (matchR!4928 (derivativeStep!3127 (regex!5600 lt!1235721) (head!7538 (list!13936 (charsOf!3614 (_1!22002 lt!1235723))))) (tail!5577 (list!13936 (charsOf!3614 (_1!22002 lt!1235723))))))))

(declare-fun b!3598292 () Bool)

(declare-fun res!1453823 () Bool)

(assert (=> b!3598292 (=> (not res!1453823) (not e!2226644))))

(assert (=> b!3598292 (= res!1453823 (not call!260269))))

(assert (= (and d!1060297 c!622834) b!3598285))

(assert (= (and d!1060297 (not c!622834)) b!3598291))

(assert (= (and d!1060297 c!622833) b!3598279))

(assert (= (and d!1060297 (not c!622833)) b!3598280))

(assert (= (and b!3598280 c!622832) b!3598290))

(assert (= (and b!3598280 (not c!622832)) b!3598281))

(assert (= (and b!3598281 (not res!1453821)) b!3598286))

(assert (= (and b!3598286 res!1453818) b!3598292))

(assert (= (and b!3598292 res!1453823) b!3598289))

(assert (= (and b!3598289 res!1453820) b!3598282))

(assert (= (and b!3598286 (not res!1453819)) b!3598283))

(assert (= (and b!3598283 res!1453825) b!3598284))

(assert (= (and b!3598284 (not res!1453824)) b!3598287))

(assert (= (and b!3598287 (not res!1453822)) b!3598288))

(assert (= (or b!3598279 b!3598284 b!3598292) bm!260264))

(declare-fun m!4093773 () Bool)

(assert (=> b!3598285 m!4093773))

(assert (=> b!3598289 m!4093681))

(declare-fun m!4093775 () Bool)

(assert (=> b!3598289 m!4093775))

(assert (=> b!3598289 m!4093775))

(declare-fun m!4093777 () Bool)

(assert (=> b!3598289 m!4093777))

(assert (=> b!3598287 m!4093681))

(assert (=> b!3598287 m!4093775))

(assert (=> b!3598287 m!4093775))

(assert (=> b!3598287 m!4093777))

(assert (=> b!3598291 m!4093681))

(declare-fun m!4093779 () Bool)

(assert (=> b!3598291 m!4093779))

(assert (=> b!3598291 m!4093779))

(declare-fun m!4093781 () Bool)

(assert (=> b!3598291 m!4093781))

(assert (=> b!3598291 m!4093681))

(assert (=> b!3598291 m!4093775))

(assert (=> b!3598291 m!4093781))

(assert (=> b!3598291 m!4093775))

(declare-fun m!4093783 () Bool)

(assert (=> b!3598291 m!4093783))

(assert (=> b!3598282 m!4093681))

(assert (=> b!3598282 m!4093779))

(assert (=> d!1060297 m!4093681))

(declare-fun m!4093785 () Bool)

(assert (=> d!1060297 m!4093785))

(declare-fun m!4093787 () Bool)

(assert (=> d!1060297 m!4093787))

(assert (=> bm!260264 m!4093681))

(assert (=> bm!260264 m!4093785))

(assert (=> b!3598288 m!4093681))

(assert (=> b!3598288 m!4093779))

(assert (=> b!3598210 d!1060297))

(declare-fun d!1060313 () Bool)

(declare-fun list!13937 (Conc!11521) List!37972)

(assert (=> d!1060313 (= (list!13936 (charsOf!3614 (_1!22002 lt!1235723))) (list!13937 (c!622821 (charsOf!3614 (_1!22002 lt!1235723)))))))

(declare-fun bs!570461 () Bool)

(assert (= bs!570461 d!1060313))

(declare-fun m!4093791 () Bool)

(assert (=> bs!570461 m!4093791))

(assert (=> b!3598210 d!1060313))

(declare-fun d!1060317 () Bool)

(declare-fun lt!1235764 () BalanceConc!22656)

(assert (=> d!1060317 (= (list!13936 lt!1235764) (originalCharacters!6314 (_1!22002 lt!1235723)))))

(declare-fun dynLambda!16317 (Int TokenValue!5830) BalanceConc!22656)

(assert (=> d!1060317 (= lt!1235764 (dynLambda!16317 (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) (value!180060 (_1!22002 lt!1235723))))))

(assert (=> d!1060317 (= (charsOf!3614 (_1!22002 lt!1235723)) lt!1235764)))

(declare-fun b_lambda!106383 () Bool)

(assert (=> (not b_lambda!106383) (not d!1060317)))

(declare-fun tb!205753 () Bool)

(declare-fun t!291962 () Bool)

(assert (=> (and b!3598213 (= (toChars!7743 (transformation!5600 (rule!8330 token!511))) (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!291962) tb!205753))

(declare-fun b!3598297 () Bool)

(declare-fun e!2226649 () Bool)

(declare-fun tp!1100944 () Bool)

(declare-fun inv!51205 (Conc!11521) Bool)

(assert (=> b!3598297 (= e!2226649 (and (inv!51205 (c!622821 (dynLambda!16317 (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) (value!180060 (_1!22002 lt!1235723))))) tp!1100944))))

(declare-fun result!250818 () Bool)

(declare-fun inv!51206 (BalanceConc!22656) Bool)

(assert (=> tb!205753 (= result!250818 (and (inv!51206 (dynLambda!16317 (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) (value!180060 (_1!22002 lt!1235723)))) e!2226649))))

(assert (= tb!205753 b!3598297))

(declare-fun m!4093795 () Bool)

(assert (=> b!3598297 m!4093795))

(declare-fun m!4093797 () Bool)

(assert (=> tb!205753 m!4093797))

(assert (=> d!1060317 t!291962))

(declare-fun b_and!261115 () Bool)

(assert (= b_and!261085 (and (=> t!291962 result!250818) b_and!261115)))

(declare-fun t!291964 () Bool)

(declare-fun tb!205755 () Bool)

(assert (=> (and b!3598196 (= (toChars!7743 (transformation!5600 (h!43269 rules!3307))) (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!291964) tb!205755))

(declare-fun result!250822 () Bool)

(assert (= result!250822 result!250818))

(assert (=> d!1060317 t!291964))

(declare-fun b_and!261117 () Bool)

(assert (= b_and!261089 (and (=> t!291964 result!250822) b_and!261117)))

(declare-fun t!291966 () Bool)

(declare-fun tb!205757 () Bool)

(assert (=> (and b!3598219 (= (toChars!7743 (transformation!5600 anOtherTypeRule!33)) (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!291966) tb!205757))

(declare-fun result!250824 () Bool)

(assert (= result!250824 result!250818))

(assert (=> d!1060317 t!291966))

(declare-fun b_and!261119 () Bool)

(assert (= b_and!261093 (and (=> t!291966 result!250824) b_and!261119)))

(declare-fun t!291968 () Bool)

(declare-fun tb!205759 () Bool)

(assert (=> (and b!3598216 (= (toChars!7743 (transformation!5600 rule!403)) (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!291968) tb!205759))

(declare-fun result!250826 () Bool)

(assert (= result!250826 result!250818))

(assert (=> d!1060317 t!291968))

(declare-fun b_and!261121 () Bool)

(assert (= b_and!261097 (and (=> t!291968 result!250826) b_and!261121)))

(declare-fun m!4093799 () Bool)

(assert (=> d!1060317 m!4093799))

(declare-fun m!4093801 () Bool)

(assert (=> d!1060317 m!4093801))

(assert (=> b!3598210 d!1060317))

(declare-fun d!1060321 () Bool)

(assert (=> d!1060321 (= (get!12241 lt!1235737) (v!37532 lt!1235737))))

(assert (=> b!3598210 d!1060321))

(declare-fun b!3598307 () Bool)

(declare-fun res!1453834 () Bool)

(declare-fun e!2226657 () Bool)

(assert (=> b!3598307 (=> (not res!1453834) (not e!2226657))))

(assert (=> b!3598307 (= res!1453834 (= (head!7538 lt!1235735) (head!7538 (++!9416 lt!1235735 (_2!22002 lt!1235723)))))))

(declare-fun b!3598306 () Bool)

(declare-fun e!2226656 () Bool)

(assert (=> b!3598306 (= e!2226656 e!2226657)))

(declare-fun res!1453835 () Bool)

(assert (=> b!3598306 (=> (not res!1453835) (not e!2226657))))

(assert (=> b!3598306 (= res!1453835 (not ((_ is Nil!37848) (++!9416 lt!1235735 (_2!22002 lt!1235723)))))))

(declare-fun b!3598309 () Bool)

(declare-fun e!2226658 () Bool)

(assert (=> b!3598309 (= e!2226658 (>= (size!28840 (++!9416 lt!1235735 (_2!22002 lt!1235723))) (size!28840 lt!1235735)))))

(declare-fun d!1060323 () Bool)

(assert (=> d!1060323 e!2226658))

(declare-fun res!1453836 () Bool)

(assert (=> d!1060323 (=> res!1453836 e!2226658)))

(declare-fun lt!1235767 () Bool)

(assert (=> d!1060323 (= res!1453836 (not lt!1235767))))

(assert (=> d!1060323 (= lt!1235767 e!2226656)))

(declare-fun res!1453837 () Bool)

(assert (=> d!1060323 (=> res!1453837 e!2226656)))

(assert (=> d!1060323 (= res!1453837 ((_ is Nil!37848) lt!1235735))))

(assert (=> d!1060323 (= (isPrefix!2963 lt!1235735 (++!9416 lt!1235735 (_2!22002 lt!1235723))) lt!1235767)))

(declare-fun b!3598308 () Bool)

(assert (=> b!3598308 (= e!2226657 (isPrefix!2963 (tail!5577 lt!1235735) (tail!5577 (++!9416 lt!1235735 (_2!22002 lt!1235723)))))))

(assert (= (and d!1060323 (not res!1453837)) b!3598306))

(assert (= (and b!3598306 res!1453835) b!3598307))

(assert (= (and b!3598307 res!1453834) b!3598308))

(assert (= (and d!1060323 (not res!1453836)) b!3598309))

(assert (=> b!3598307 m!4093663))

(assert (=> b!3598307 m!4093715))

(declare-fun m!4093803 () Bool)

(assert (=> b!3598307 m!4093803))

(assert (=> b!3598309 m!4093715))

(declare-fun m!4093805 () Bool)

(assert (=> b!3598309 m!4093805))

(assert (=> b!3598309 m!4093709))

(declare-fun m!4093807 () Bool)

(assert (=> b!3598308 m!4093807))

(assert (=> b!3598308 m!4093715))

(declare-fun m!4093809 () Bool)

(assert (=> b!3598308 m!4093809))

(assert (=> b!3598308 m!4093807))

(assert (=> b!3598308 m!4093809))

(declare-fun m!4093811 () Bool)

(assert (=> b!3598308 m!4093811))

(assert (=> b!3598206 d!1060323))

(declare-fun b!3598311 () Bool)

(declare-fun res!1453838 () Bool)

(declare-fun e!2226660 () Bool)

(assert (=> b!3598311 (=> (not res!1453838) (not e!2226660))))

(assert (=> b!3598311 (= res!1453838 (= (head!7538 lt!1235735) (head!7538 lt!1235719)))))

(declare-fun b!3598310 () Bool)

(declare-fun e!2226659 () Bool)

(assert (=> b!3598310 (= e!2226659 e!2226660)))

(declare-fun res!1453839 () Bool)

(assert (=> b!3598310 (=> (not res!1453839) (not e!2226660))))

(assert (=> b!3598310 (= res!1453839 (not ((_ is Nil!37848) lt!1235719)))))

(declare-fun b!3598313 () Bool)

(declare-fun e!2226661 () Bool)

(assert (=> b!3598313 (= e!2226661 (>= (size!28840 lt!1235719) (size!28840 lt!1235735)))))

(declare-fun d!1060325 () Bool)

(assert (=> d!1060325 e!2226661))

(declare-fun res!1453840 () Bool)

(assert (=> d!1060325 (=> res!1453840 e!2226661)))

(declare-fun lt!1235768 () Bool)

(assert (=> d!1060325 (= res!1453840 (not lt!1235768))))

(assert (=> d!1060325 (= lt!1235768 e!2226659)))

(declare-fun res!1453841 () Bool)

(assert (=> d!1060325 (=> res!1453841 e!2226659)))

(assert (=> d!1060325 (= res!1453841 ((_ is Nil!37848) lt!1235735))))

(assert (=> d!1060325 (= (isPrefix!2963 lt!1235735 lt!1235719) lt!1235768)))

(declare-fun b!3598312 () Bool)

(assert (=> b!3598312 (= e!2226660 (isPrefix!2963 (tail!5577 lt!1235735) (tail!5577 lt!1235719)))))

(assert (= (and d!1060325 (not res!1453841)) b!3598310))

(assert (= (and b!3598310 res!1453839) b!3598311))

(assert (= (and b!3598311 res!1453838) b!3598312))

(assert (= (and d!1060325 (not res!1453840)) b!3598313))

(assert (=> b!3598311 m!4093663))

(declare-fun m!4093813 () Bool)

(assert (=> b!3598311 m!4093813))

(declare-fun m!4093815 () Bool)

(assert (=> b!3598313 m!4093815))

(assert (=> b!3598313 m!4093709))

(assert (=> b!3598312 m!4093807))

(declare-fun m!4093817 () Bool)

(assert (=> b!3598312 m!4093817))

(assert (=> b!3598312 m!4093807))

(assert (=> b!3598312 m!4093817))

(declare-fun m!4093819 () Bool)

(assert (=> b!3598312 m!4093819))

(assert (=> b!3598206 d!1060325))

(assert (=> b!3598206 d!1060317))

(declare-fun b!3598344 () Bool)

(declare-fun e!2226680 () Bool)

(declare-fun e!2226678 () Bool)

(assert (=> b!3598344 (= e!2226680 e!2226678)))

(declare-fun res!1453861 () Bool)

(assert (=> b!3598344 (=> (not res!1453861) (not e!2226678))))

(declare-fun lt!1235785 () Option!7831)

(assert (=> b!3598344 (= res!1453861 (contains!7263 rules!3307 (get!12241 lt!1235785)))))

(declare-fun b!3598345 () Bool)

(declare-fun lt!1235787 () Unit!53867)

(declare-fun lt!1235786 () Unit!53867)

(assert (=> b!3598345 (= lt!1235787 lt!1235786)))

(assert (=> b!3598345 (rulesInvariant!4586 thiss!23823 (t!291944 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!510 (LexerInterface!5189 Rule!11000 List!37973) Unit!53867)

(assert (=> b!3598345 (= lt!1235786 (lemmaInvariantOnRulesThenOnTail!510 thiss!23823 (h!43269 rules!3307) (t!291944 rules!3307)))))

(declare-fun e!2226681 () Option!7831)

(assert (=> b!3598345 (= e!2226681 (getRuleFromTag!1206 thiss!23823 (t!291944 rules!3307) (tag!6286 (rule!8330 (_1!22002 lt!1235723)))))))

(declare-fun d!1060327 () Bool)

(assert (=> d!1060327 e!2226680))

(declare-fun res!1453860 () Bool)

(assert (=> d!1060327 (=> res!1453860 e!2226680)))

(declare-fun isEmpty!22326 (Option!7831) Bool)

(assert (=> d!1060327 (= res!1453860 (isEmpty!22326 lt!1235785))))

(declare-fun e!2226679 () Option!7831)

(assert (=> d!1060327 (= lt!1235785 e!2226679)))

(declare-fun c!622841 () Bool)

(assert (=> d!1060327 (= c!622841 (and ((_ is Cons!37849) rules!3307) (= (tag!6286 (h!43269 rules!3307)) (tag!6286 (rule!8330 (_1!22002 lt!1235723))))))))

(assert (=> d!1060327 (rulesInvariant!4586 thiss!23823 rules!3307)))

(assert (=> d!1060327 (= (getRuleFromTag!1206 thiss!23823 rules!3307 (tag!6286 (rule!8330 (_1!22002 lt!1235723)))) lt!1235785)))

(declare-fun b!3598346 () Bool)

(assert (=> b!3598346 (= e!2226678 (= (tag!6286 (get!12241 lt!1235785)) (tag!6286 (rule!8330 (_1!22002 lt!1235723)))))))

(declare-fun b!3598347 () Bool)

(assert (=> b!3598347 (= e!2226679 e!2226681)))

(declare-fun c!622842 () Bool)

(assert (=> b!3598347 (= c!622842 (and ((_ is Cons!37849) rules!3307) (not (= (tag!6286 (h!43269 rules!3307)) (tag!6286 (rule!8330 (_1!22002 lt!1235723)))))))))

(declare-fun b!3598348 () Bool)

(assert (=> b!3598348 (= e!2226681 None!7830)))

(declare-fun b!3598349 () Bool)

(assert (=> b!3598349 (= e!2226679 (Some!7830 (h!43269 rules!3307)))))

(assert (= (and d!1060327 c!622841) b!3598349))

(assert (= (and d!1060327 (not c!622841)) b!3598347))

(assert (= (and b!3598347 c!622842) b!3598345))

(assert (= (and b!3598347 (not c!622842)) b!3598348))

(assert (= (and d!1060327 (not res!1453860)) b!3598344))

(assert (= (and b!3598344 res!1453861) b!3598346))

(declare-fun m!4093821 () Bool)

(assert (=> b!3598344 m!4093821))

(assert (=> b!3598344 m!4093821))

(declare-fun m!4093823 () Bool)

(assert (=> b!3598344 m!4093823))

(declare-fun m!4093825 () Bool)

(assert (=> b!3598345 m!4093825))

(declare-fun m!4093827 () Bool)

(assert (=> b!3598345 m!4093827))

(declare-fun m!4093829 () Bool)

(assert (=> b!3598345 m!4093829))

(declare-fun m!4093831 () Bool)

(assert (=> d!1060327 m!4093831))

(assert (=> d!1060327 m!4093625))

(assert (=> b!3598346 m!4093821))

(assert (=> b!3598206 d!1060327))

(declare-fun d!1060329 () Bool)

(assert (=> d!1060329 (= (isDefined!6062 lt!1235737) (not (isEmpty!22326 lt!1235737)))))

(declare-fun bs!570463 () Bool)

(assert (= bs!570463 d!1060329))

(declare-fun m!4093833 () Bool)

(assert (=> bs!570463 m!4093833))

(assert (=> b!3598206 d!1060329))

(declare-fun d!1060331 () Bool)

(assert (=> d!1060331 (isPrefix!2963 lt!1235735 (++!9416 lt!1235735 (_2!22002 lt!1235723)))))

(declare-fun lt!1235795 () Unit!53867)

(declare-fun choose!20963 (List!37972 List!37972) Unit!53867)

(assert (=> d!1060331 (= lt!1235795 (choose!20963 lt!1235735 (_2!22002 lt!1235723)))))

(assert (=> d!1060331 (= (lemmaConcatTwoListThenFirstIsPrefix!1884 lt!1235735 (_2!22002 lt!1235723)) lt!1235795)))

(declare-fun bs!570464 () Bool)

(assert (= bs!570464 d!1060331))

(assert (=> bs!570464 m!4093715))

(assert (=> bs!570464 m!4093715))

(assert (=> bs!570464 m!4093717))

(declare-fun m!4093835 () Bool)

(assert (=> bs!570464 m!4093835))

(assert (=> b!3598206 d!1060331))

(declare-fun d!1060333 () Bool)

(assert (=> d!1060333 (isPrefix!2963 lt!1235736 (++!9416 lt!1235736 suffix!1395))))

(declare-fun lt!1235796 () Unit!53867)

(assert (=> d!1060333 (= lt!1235796 (choose!20963 lt!1235736 suffix!1395))))

(assert (=> d!1060333 (= (lemmaConcatTwoListThenFirstIsPrefix!1884 lt!1235736 suffix!1395) lt!1235796)))

(declare-fun bs!570465 () Bool)

(assert (= bs!570465 d!1060333))

(assert (=> bs!570465 m!4093727))

(assert (=> bs!570465 m!4093727))

(declare-fun m!4093837 () Bool)

(assert (=> bs!570465 m!4093837))

(declare-fun m!4093839 () Bool)

(assert (=> bs!570465 m!4093839))

(assert (=> b!3598206 d!1060333))

(declare-fun d!1060335 () Bool)

(assert (=> d!1060335 (= (list!13936 lt!1235738) (list!13937 (c!622821 lt!1235738)))))

(declare-fun bs!570466 () Bool)

(assert (= bs!570466 d!1060335))

(declare-fun m!4093841 () Bool)

(assert (=> bs!570466 m!4093841))

(assert (=> b!3598206 d!1060335))

(declare-fun d!1060337 () Bool)

(declare-fun e!2226705 () Bool)

(assert (=> d!1060337 e!2226705))

(declare-fun res!1453887 () Bool)

(assert (=> d!1060337 (=> (not res!1453887) (not e!2226705))))

(assert (=> d!1060337 (= res!1453887 (isDefined!6062 (getRuleFromTag!1206 thiss!23823 rules!3307 (tag!6286 (rule!8330 (_1!22002 lt!1235723))))))))

(declare-fun lt!1235808 () Unit!53867)

(declare-fun choose!20964 (LexerInterface!5189 List!37973 List!37972 Token!10566) Unit!53867)

(assert (=> d!1060337 (= lt!1235808 (choose!20964 thiss!23823 rules!3307 lt!1235719 (_1!22002 lt!1235723)))))

(assert (=> d!1060337 (rulesInvariant!4586 thiss!23823 rules!3307)))

(assert (=> d!1060337 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1206 thiss!23823 rules!3307 lt!1235719 (_1!22002 lt!1235723)) lt!1235808)))

(declare-fun b!3598383 () Bool)

(declare-fun res!1453888 () Bool)

(assert (=> b!3598383 (=> (not res!1453888) (not e!2226705))))

(assert (=> b!3598383 (= res!1453888 (matchR!4928 (regex!5600 (get!12241 (getRuleFromTag!1206 thiss!23823 rules!3307 (tag!6286 (rule!8330 (_1!22002 lt!1235723)))))) (list!13936 (charsOf!3614 (_1!22002 lt!1235723)))))))

(declare-fun b!3598384 () Bool)

(assert (=> b!3598384 (= e!2226705 (= (rule!8330 (_1!22002 lt!1235723)) (get!12241 (getRuleFromTag!1206 thiss!23823 rules!3307 (tag!6286 (rule!8330 (_1!22002 lt!1235723)))))))))

(assert (= (and d!1060337 res!1453887) b!3598383))

(assert (= (and b!3598383 res!1453888) b!3598384))

(assert (=> d!1060337 m!4093723))

(assert (=> d!1060337 m!4093723))

(declare-fun m!4093915 () Bool)

(assert (=> d!1060337 m!4093915))

(declare-fun m!4093917 () Bool)

(assert (=> d!1060337 m!4093917))

(assert (=> d!1060337 m!4093625))

(assert (=> b!3598383 m!4093723))

(assert (=> b!3598383 m!4093679))

(assert (=> b!3598383 m!4093681))

(assert (=> b!3598383 m!4093679))

(assert (=> b!3598383 m!4093723))

(declare-fun m!4093919 () Bool)

(assert (=> b!3598383 m!4093919))

(assert (=> b!3598383 m!4093681))

(declare-fun m!4093921 () Bool)

(assert (=> b!3598383 m!4093921))

(assert (=> b!3598384 m!4093723))

(assert (=> b!3598384 m!4093723))

(assert (=> b!3598384 m!4093919))

(assert (=> b!3598206 d!1060337))

(declare-fun b!3598468 () Bool)

(declare-fun res!1453949 () Bool)

(declare-fun e!2226749 () Bool)

(assert (=> b!3598468 (=> (not res!1453949) (not e!2226749))))

(declare-fun lt!1235852 () Option!7830)

(assert (=> b!3598468 (= res!1453949 (= (list!13936 (charsOf!3614 (_1!22002 (get!12240 lt!1235852)))) (originalCharacters!6314 (_1!22002 (get!12240 lt!1235852)))))))

(declare-fun d!1060359 () Bool)

(declare-fun e!2226747 () Bool)

(assert (=> d!1060359 e!2226747))

(declare-fun res!1453948 () Bool)

(assert (=> d!1060359 (=> res!1453948 e!2226747)))

(declare-fun isEmpty!22327 (Option!7830) Bool)

(assert (=> d!1060359 (= res!1453948 (isEmpty!22327 lt!1235852))))

(declare-fun e!2226748 () Option!7830)

(assert (=> d!1060359 (= lt!1235852 e!2226748)))

(declare-fun c!622860 () Bool)

(assert (=> d!1060359 (= c!622860 (and ((_ is Cons!37849) rules!3307) ((_ is Nil!37849) (t!291944 rules!3307))))))

(declare-fun lt!1235856 () Unit!53867)

(declare-fun lt!1235853 () Unit!53867)

(assert (=> d!1060359 (= lt!1235856 lt!1235853)))

(assert (=> d!1060359 (isPrefix!2963 lt!1235719 lt!1235719)))

(declare-fun lemmaIsPrefixRefl!1896 (List!37972 List!37972) Unit!53867)

(assert (=> d!1060359 (= lt!1235853 (lemmaIsPrefixRefl!1896 lt!1235719 lt!1235719))))

(declare-fun rulesValidInductive!1961 (LexerInterface!5189 List!37973) Bool)

(assert (=> d!1060359 (rulesValidInductive!1961 thiss!23823 rules!3307)))

(assert (=> d!1060359 (= (maxPrefix!2723 thiss!23823 rules!3307 lt!1235719) lt!1235852)))

(declare-fun b!3598469 () Bool)

(declare-fun lt!1235854 () Option!7830)

(declare-fun lt!1235855 () Option!7830)

(assert (=> b!3598469 (= e!2226748 (ite (and ((_ is None!7829) lt!1235854) ((_ is None!7829) lt!1235855)) None!7829 (ite ((_ is None!7829) lt!1235855) lt!1235854 (ite ((_ is None!7829) lt!1235854) lt!1235855 (ite (>= (size!28838 (_1!22002 (v!37531 lt!1235854))) (size!28838 (_1!22002 (v!37531 lt!1235855)))) lt!1235854 lt!1235855)))))))

(declare-fun call!260275 () Option!7830)

(assert (=> b!3598469 (= lt!1235854 call!260275)))

(assert (=> b!3598469 (= lt!1235855 (maxPrefix!2723 thiss!23823 (t!291944 rules!3307) lt!1235719))))

(declare-fun b!3598470 () Bool)

(assert (=> b!3598470 (= e!2226747 e!2226749)))

(declare-fun res!1453950 () Bool)

(assert (=> b!3598470 (=> (not res!1453950) (not e!2226749))))

(assert (=> b!3598470 (= res!1453950 (isDefined!6063 lt!1235852))))

(declare-fun b!3598471 () Bool)

(declare-fun res!1453947 () Bool)

(assert (=> b!3598471 (=> (not res!1453947) (not e!2226749))))

(assert (=> b!3598471 (= res!1453947 (= (value!180060 (_1!22002 (get!12240 lt!1235852))) (apply!9106 (transformation!5600 (rule!8330 (_1!22002 (get!12240 lt!1235852)))) (seqFromList!4153 (originalCharacters!6314 (_1!22002 (get!12240 lt!1235852)))))))))

(declare-fun b!3598472 () Bool)

(declare-fun res!1453951 () Bool)

(assert (=> b!3598472 (=> (not res!1453951) (not e!2226749))))

(assert (=> b!3598472 (= res!1453951 (= (++!9416 (list!13936 (charsOf!3614 (_1!22002 (get!12240 lt!1235852)))) (_2!22002 (get!12240 lt!1235852))) lt!1235719))))

(declare-fun b!3598473 () Bool)

(declare-fun res!1453952 () Bool)

(assert (=> b!3598473 (=> (not res!1453952) (not e!2226749))))

(assert (=> b!3598473 (= res!1453952 (< (size!28840 (_2!22002 (get!12240 lt!1235852))) (size!28840 lt!1235719)))))

(declare-fun b!3598474 () Bool)

(assert (=> b!3598474 (= e!2226748 call!260275)))

(declare-fun bm!260270 () Bool)

(assert (=> bm!260270 (= call!260275 (maxPrefixOneRule!1867 thiss!23823 (h!43269 rules!3307) lt!1235719))))

(declare-fun b!3598475 () Bool)

(declare-fun res!1453946 () Bool)

(assert (=> b!3598475 (=> (not res!1453946) (not e!2226749))))

(assert (=> b!3598475 (= res!1453946 (matchR!4928 (regex!5600 (rule!8330 (_1!22002 (get!12240 lt!1235852)))) (list!13936 (charsOf!3614 (_1!22002 (get!12240 lt!1235852))))))))

(declare-fun b!3598476 () Bool)

(assert (=> b!3598476 (= e!2226749 (contains!7263 rules!3307 (rule!8330 (_1!22002 (get!12240 lt!1235852)))))))

(assert (= (and d!1060359 c!622860) b!3598474))

(assert (= (and d!1060359 (not c!622860)) b!3598469))

(assert (= (or b!3598474 b!3598469) bm!260270))

(assert (= (and d!1060359 (not res!1453948)) b!3598470))

(assert (= (and b!3598470 res!1453950) b!3598468))

(assert (= (and b!3598468 res!1453949) b!3598473))

(assert (= (and b!3598473 res!1453952) b!3598472))

(assert (= (and b!3598472 res!1453951) b!3598471))

(assert (= (and b!3598471 res!1453947) b!3598475))

(assert (= (and b!3598475 res!1453946) b!3598476))

(declare-fun m!4093987 () Bool)

(assert (=> b!3598473 m!4093987))

(declare-fun m!4093989 () Bool)

(assert (=> b!3598473 m!4093989))

(assert (=> b!3598473 m!4093815))

(assert (=> b!3598471 m!4093987))

(declare-fun m!4093991 () Bool)

(assert (=> b!3598471 m!4093991))

(assert (=> b!3598471 m!4093991))

(declare-fun m!4093999 () Bool)

(assert (=> b!3598471 m!4093999))

(declare-fun m!4094005 () Bool)

(assert (=> b!3598469 m!4094005))

(declare-fun m!4094009 () Bool)

(assert (=> d!1060359 m!4094009))

(declare-fun m!4094011 () Bool)

(assert (=> d!1060359 m!4094011))

(declare-fun m!4094013 () Bool)

(assert (=> d!1060359 m!4094013))

(declare-fun m!4094015 () Bool)

(assert (=> d!1060359 m!4094015))

(assert (=> b!3598476 m!4093987))

(declare-fun m!4094017 () Bool)

(assert (=> b!3598476 m!4094017))

(assert (=> b!3598468 m!4093987))

(declare-fun m!4094019 () Bool)

(assert (=> b!3598468 m!4094019))

(assert (=> b!3598468 m!4094019))

(declare-fun m!4094021 () Bool)

(assert (=> b!3598468 m!4094021))

(declare-fun m!4094023 () Bool)

(assert (=> bm!260270 m!4094023))

(assert (=> b!3598472 m!4093987))

(assert (=> b!3598472 m!4094019))

(assert (=> b!3598472 m!4094019))

(assert (=> b!3598472 m!4094021))

(assert (=> b!3598472 m!4094021))

(declare-fun m!4094031 () Bool)

(assert (=> b!3598472 m!4094031))

(declare-fun m!4094035 () Bool)

(assert (=> b!3598470 m!4094035))

(assert (=> b!3598475 m!4093987))

(assert (=> b!3598475 m!4094019))

(assert (=> b!3598475 m!4094019))

(assert (=> b!3598475 m!4094021))

(assert (=> b!3598475 m!4094021))

(declare-fun m!4094037 () Bool)

(assert (=> b!3598475 m!4094037))

(assert (=> b!3598206 d!1060359))

(declare-fun b!3598502 () Bool)

(declare-fun e!2226764 () List!37972)

(assert (=> b!3598502 (= e!2226764 (Cons!37848 (h!43268 lt!1235735) (++!9416 (t!291943 lt!1235735) (_2!22002 lt!1235723))))))

(declare-fun b!3598501 () Bool)

(assert (=> b!3598501 (= e!2226764 (_2!22002 lt!1235723))))

(declare-fun b!3598503 () Bool)

(declare-fun res!1453970 () Bool)

(declare-fun e!2226763 () Bool)

(assert (=> b!3598503 (=> (not res!1453970) (not e!2226763))))

(declare-fun lt!1235863 () List!37972)

(assert (=> b!3598503 (= res!1453970 (= (size!28840 lt!1235863) (+ (size!28840 lt!1235735) (size!28840 (_2!22002 lt!1235723)))))))

(declare-fun d!1060377 () Bool)

(assert (=> d!1060377 e!2226763))

(declare-fun res!1453969 () Bool)

(assert (=> d!1060377 (=> (not res!1453969) (not e!2226763))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5396 (List!37972) (InoxSet C!20904))

(assert (=> d!1060377 (= res!1453969 (= (content!5396 lt!1235863) ((_ map or) (content!5396 lt!1235735) (content!5396 (_2!22002 lt!1235723)))))))

(assert (=> d!1060377 (= lt!1235863 e!2226764)))

(declare-fun c!622865 () Bool)

(assert (=> d!1060377 (= c!622865 ((_ is Nil!37848) lt!1235735))))

(assert (=> d!1060377 (= (++!9416 lt!1235735 (_2!22002 lt!1235723)) lt!1235863)))

(declare-fun b!3598504 () Bool)

(assert (=> b!3598504 (= e!2226763 (or (not (= (_2!22002 lt!1235723) Nil!37848)) (= lt!1235863 lt!1235735)))))

(assert (= (and d!1060377 c!622865) b!3598501))

(assert (= (and d!1060377 (not c!622865)) b!3598502))

(assert (= (and d!1060377 res!1453969) b!3598503))

(assert (= (and b!3598503 res!1453970) b!3598504))

(declare-fun m!4094055 () Bool)

(assert (=> b!3598502 m!4094055))

(declare-fun m!4094057 () Bool)

(assert (=> b!3598503 m!4094057))

(assert (=> b!3598503 m!4093709))

(declare-fun m!4094059 () Bool)

(assert (=> b!3598503 m!4094059))

(declare-fun m!4094061 () Bool)

(assert (=> d!1060377 m!4094061))

(declare-fun m!4094063 () Bool)

(assert (=> d!1060377 m!4094063))

(declare-fun m!4094065 () Bool)

(assert (=> d!1060377 m!4094065))

(assert (=> b!3598206 d!1060377))

(declare-fun b!3598506 () Bool)

(declare-fun res!1453971 () Bool)

(declare-fun e!2226766 () Bool)

(assert (=> b!3598506 (=> (not res!1453971) (not e!2226766))))

(assert (=> b!3598506 (= res!1453971 (= (head!7538 lt!1235736) (head!7538 lt!1235719)))))

(declare-fun b!3598505 () Bool)

(declare-fun e!2226765 () Bool)

(assert (=> b!3598505 (= e!2226765 e!2226766)))

(declare-fun res!1453972 () Bool)

(assert (=> b!3598505 (=> (not res!1453972) (not e!2226766))))

(assert (=> b!3598505 (= res!1453972 (not ((_ is Nil!37848) lt!1235719)))))

(declare-fun b!3598508 () Bool)

(declare-fun e!2226767 () Bool)

(assert (=> b!3598508 (= e!2226767 (>= (size!28840 lt!1235719) (size!28840 lt!1235736)))))

(declare-fun d!1060385 () Bool)

(assert (=> d!1060385 e!2226767))

(declare-fun res!1453973 () Bool)

(assert (=> d!1060385 (=> res!1453973 e!2226767)))

(declare-fun lt!1235864 () Bool)

(assert (=> d!1060385 (= res!1453973 (not lt!1235864))))

(assert (=> d!1060385 (= lt!1235864 e!2226765)))

(declare-fun res!1453974 () Bool)

(assert (=> d!1060385 (=> res!1453974 e!2226765)))

(assert (=> d!1060385 (= res!1453974 ((_ is Nil!37848) lt!1235736))))

(assert (=> d!1060385 (= (isPrefix!2963 lt!1235736 lt!1235719) lt!1235864)))

(declare-fun b!3598507 () Bool)

(assert (=> b!3598507 (= e!2226766 (isPrefix!2963 (tail!5577 lt!1235736) (tail!5577 lt!1235719)))))

(assert (= (and d!1060385 (not res!1453974)) b!3598505))

(assert (= (and b!3598505 res!1453972) b!3598506))

(assert (= (and b!3598506 res!1453971) b!3598507))

(assert (= (and d!1060385 (not res!1453973)) b!3598508))

(declare-fun m!4094067 () Bool)

(assert (=> b!3598506 m!4094067))

(assert (=> b!3598506 m!4093813))

(assert (=> b!3598508 m!4093815))

(declare-fun m!4094069 () Bool)

(assert (=> b!3598508 m!4094069))

(declare-fun m!4094071 () Bool)

(assert (=> b!3598507 m!4094071))

(assert (=> b!3598507 m!4093817))

(assert (=> b!3598507 m!4094071))

(assert (=> b!3598507 m!4093817))

(declare-fun m!4094073 () Bool)

(assert (=> b!3598507 m!4094073))

(assert (=> b!3598206 d!1060385))

(declare-fun d!1060387 () Bool)

(assert (=> d!1060387 (= (get!12240 lt!1235746) (v!37531 lt!1235746))))

(assert (=> b!3598206 d!1060387))

(declare-fun d!1060389 () Bool)

(assert (=> d!1060389 (isDefined!6063 (maxPrefix!2723 thiss!23823 rules!3307 (++!9416 lt!1235736 suffix!1395)))))

(declare-fun lt!1235966 () Unit!53867)

(declare-fun e!2226779 () Unit!53867)

(assert (=> d!1060389 (= lt!1235966 e!2226779)))

(declare-fun c!622871 () Bool)

(assert (=> d!1060389 (= c!622871 (isEmpty!22327 (maxPrefix!2723 thiss!23823 rules!3307 (++!9416 lt!1235736 suffix!1395))))))

(declare-fun lt!1235952 () Unit!53867)

(declare-fun lt!1235962 () Unit!53867)

(assert (=> d!1060389 (= lt!1235952 lt!1235962)))

(declare-fun e!2226778 () Bool)

(assert (=> d!1060389 e!2226778))

(declare-fun res!1453986 () Bool)

(assert (=> d!1060389 (=> (not res!1453986) (not e!2226778))))

(declare-fun lt!1235955 () Token!10566)

(assert (=> d!1060389 (= res!1453986 (isDefined!6062 (getRuleFromTag!1206 thiss!23823 rules!3307 (tag!6286 (rule!8330 lt!1235955)))))))

(assert (=> d!1060389 (= lt!1235962 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1206 thiss!23823 rules!3307 lt!1235736 lt!1235955))))

(declare-fun lt!1235954 () Unit!53867)

(declare-fun lt!1235959 () Unit!53867)

(assert (=> d!1060389 (= lt!1235954 lt!1235959)))

(declare-fun lt!1235963 () List!37972)

(assert (=> d!1060389 (isPrefix!2963 lt!1235963 (++!9416 lt!1235736 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!430 (List!37972 List!37972 List!37972) Unit!53867)

(assert (=> d!1060389 (= lt!1235959 (lemmaPrefixStaysPrefixWhenAddingToSuffix!430 lt!1235963 lt!1235736 suffix!1395))))

(assert (=> d!1060389 (= lt!1235963 (list!13936 (charsOf!3614 lt!1235955)))))

(declare-fun lt!1235950 () Unit!53867)

(declare-fun lt!1235964 () Unit!53867)

(assert (=> d!1060389 (= lt!1235950 lt!1235964)))

(declare-fun lt!1235960 () List!37972)

(declare-fun lt!1235953 () List!37972)

(assert (=> d!1060389 (isPrefix!2963 lt!1235960 (++!9416 lt!1235960 lt!1235953))))

(assert (=> d!1060389 (= lt!1235964 (lemmaConcatTwoListThenFirstIsPrefix!1884 lt!1235960 lt!1235953))))

(assert (=> d!1060389 (= lt!1235953 (_2!22002 (get!12240 (maxPrefix!2723 thiss!23823 rules!3307 lt!1235736))))))

(assert (=> d!1060389 (= lt!1235960 (list!13936 (charsOf!3614 lt!1235955)))))

(declare-datatypes ((List!37975 0))(
  ( (Nil!37851) (Cons!37851 (h!43271 Token!10566) (t!292066 List!37975)) )
))
(declare-fun head!7540 (List!37975) Token!10566)

(declare-datatypes ((IArray!23051 0))(
  ( (IArray!23052 (innerList!11583 List!37975)) )
))
(declare-datatypes ((Conc!11523 0))(
  ( (Node!11523 (left!29577 Conc!11523) (right!29907 Conc!11523) (csize!23276 Int) (cheight!11734 Int)) (Leaf!17934 (xs!14725 IArray!23051) (csize!23277 Int)) (Empty!11523) )
))
(declare-datatypes ((BalanceConc!22660 0))(
  ( (BalanceConc!22661 (c!622953 Conc!11523)) )
))
(declare-fun list!13940 (BalanceConc!22660) List!37975)

(declare-datatypes ((tuple2!37742 0))(
  ( (tuple2!37743 (_1!22005 BalanceConc!22660) (_2!22005 BalanceConc!22656)) )
))
(declare-fun lex!2462 (LexerInterface!5189 List!37973 BalanceConc!22656) tuple2!37742)

(assert (=> d!1060389 (= lt!1235955 (head!7540 (list!13940 (_1!22005 (lex!2462 thiss!23823 rules!3307 (seqFromList!4153 lt!1235736))))))))

(assert (=> d!1060389 (not (isEmpty!22323 rules!3307))))

(assert (=> d!1060389 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!869 thiss!23823 rules!3307 lt!1235736 suffix!1395) lt!1235966)))

(declare-fun b!3598530 () Bool)

(assert (=> b!3598530 (= e!2226778 (= (rule!8330 lt!1235955) (get!12241 (getRuleFromTag!1206 thiss!23823 rules!3307 (tag!6286 (rule!8330 lt!1235955))))))))

(declare-fun b!3598532 () Bool)

(declare-fun Unit!53873 () Unit!53867)

(assert (=> b!3598532 (= e!2226779 Unit!53873)))

(declare-fun b!3598529 () Bool)

(declare-fun res!1453985 () Bool)

(assert (=> b!3598529 (=> (not res!1453985) (not e!2226778))))

(assert (=> b!3598529 (= res!1453985 (matchR!4928 (regex!5600 (get!12241 (getRuleFromTag!1206 thiss!23823 rules!3307 (tag!6286 (rule!8330 lt!1235955))))) (list!13936 (charsOf!3614 lt!1235955))))))

(declare-fun b!3598531 () Bool)

(declare-fun Unit!53874 () Unit!53867)

(assert (=> b!3598531 (= e!2226779 Unit!53874)))

(declare-fun lt!1235965 () List!37972)

(assert (=> b!3598531 (= lt!1235965 (++!9416 lt!1235736 suffix!1395))))

(declare-fun lt!1235961 () Unit!53867)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!466 (LexerInterface!5189 Rule!11000 List!37973 List!37972) Unit!53867)

(assert (=> b!3598531 (= lt!1235961 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!466 thiss!23823 (rule!8330 lt!1235955) rules!3307 lt!1235965))))

(assert (=> b!3598531 (isEmpty!22327 (maxPrefixOneRule!1867 thiss!23823 (rule!8330 lt!1235955) lt!1235965))))

(declare-fun lt!1235958 () Unit!53867)

(assert (=> b!3598531 (= lt!1235958 lt!1235961)))

(declare-fun lt!1235956 () List!37972)

(assert (=> b!3598531 (= lt!1235956 (list!13936 (charsOf!3614 lt!1235955)))))

(declare-fun lt!1235957 () Unit!53867)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!454 (LexerInterface!5189 Rule!11000 List!37972 List!37972) Unit!53867)

(assert (=> b!3598531 (= lt!1235957 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!454 thiss!23823 (rule!8330 lt!1235955) lt!1235956 (++!9416 lt!1235736 suffix!1395)))))

(assert (=> b!3598531 (not (matchR!4928 (regex!5600 (rule!8330 lt!1235955)) lt!1235956))))

(declare-fun lt!1235951 () Unit!53867)

(assert (=> b!3598531 (= lt!1235951 lt!1235957)))

(assert (=> b!3598531 false))

(assert (= (and d!1060389 res!1453986) b!3598529))

(assert (= (and b!3598529 res!1453985) b!3598530))

(assert (= (and d!1060389 c!622871) b!3598531))

(assert (= (and d!1060389 (not c!622871)) b!3598532))

(declare-fun m!4094125 () Bool)

(assert (=> d!1060389 m!4094125))

(declare-fun m!4094127 () Bool)

(assert (=> d!1060389 m!4094127))

(assert (=> d!1060389 m!4094125))

(declare-fun m!4094129 () Bool)

(assert (=> d!1060389 m!4094129))

(declare-fun m!4094131 () Bool)

(assert (=> d!1060389 m!4094131))

(declare-fun m!4094133 () Bool)

(assert (=> d!1060389 m!4094133))

(declare-fun m!4094135 () Bool)

(assert (=> d!1060389 m!4094135))

(assert (=> d!1060389 m!4093727))

(declare-fun m!4094137 () Bool)

(assert (=> d!1060389 m!4094137))

(assert (=> d!1060389 m!4093727))

(assert (=> d!1060389 m!4093727))

(assert (=> d!1060389 m!4094125))

(declare-fun m!4094139 () Bool)

(assert (=> d!1060389 m!4094139))

(declare-fun m!4094141 () Bool)

(assert (=> d!1060389 m!4094141))

(declare-fun m!4094143 () Bool)

(assert (=> d!1060389 m!4094143))

(assert (=> d!1060389 m!4094131))

(declare-fun m!4094145 () Bool)

(assert (=> d!1060389 m!4094145))

(declare-fun m!4094147 () Bool)

(assert (=> d!1060389 m!4094147))

(declare-fun m!4094149 () Bool)

(assert (=> d!1060389 m!4094149))

(assert (=> d!1060389 m!4094139))

(assert (=> d!1060389 m!4093689))

(declare-fun m!4094151 () Bool)

(assert (=> d!1060389 m!4094151))

(assert (=> d!1060389 m!4093689))

(assert (=> d!1060389 m!4094145))

(assert (=> d!1060389 m!4094149))

(declare-fun m!4094157 () Bool)

(assert (=> d!1060389 m!4094157))

(declare-fun m!4094159 () Bool)

(assert (=> d!1060389 m!4094159))

(declare-fun m!4094161 () Bool)

(assert (=> d!1060389 m!4094161))

(declare-fun m!4094163 () Bool)

(assert (=> d!1060389 m!4094163))

(assert (=> d!1060389 m!4094159))

(assert (=> d!1060389 m!4093629))

(assert (=> b!3598530 m!4094139))

(assert (=> b!3598530 m!4094139))

(declare-fun m!4094165 () Bool)

(assert (=> b!3598530 m!4094165))

(assert (=> b!3598529 m!4094139))

(assert (=> b!3598529 m!4094145))

(assert (=> b!3598529 m!4094147))

(declare-fun m!4094171 () Bool)

(assert (=> b!3598529 m!4094171))

(assert (=> b!3598529 m!4094139))

(assert (=> b!3598529 m!4094165))

(assert (=> b!3598529 m!4094145))

(assert (=> b!3598529 m!4094147))

(declare-fun m!4094173 () Bool)

(assert (=> b!3598531 m!4094173))

(assert (=> b!3598531 m!4094145))

(assert (=> b!3598531 m!4093727))

(declare-fun m!4094175 () Bool)

(assert (=> b!3598531 m!4094175))

(declare-fun m!4094177 () Bool)

(assert (=> b!3598531 m!4094177))

(assert (=> b!3598531 m!4094175))

(declare-fun m!4094179 () Bool)

(assert (=> b!3598531 m!4094179))

(assert (=> b!3598531 m!4093727))

(declare-fun m!4094181 () Bool)

(assert (=> b!3598531 m!4094181))

(assert (=> b!3598531 m!4094145))

(assert (=> b!3598531 m!4094147))

(assert (=> b!3598206 d!1060389))

(declare-fun b!3598535 () Bool)

(declare-fun e!2226782 () List!37972)

(assert (=> b!3598535 (= e!2226782 (Cons!37848 (h!43268 lt!1235736) (++!9416 (t!291943 lt!1235736) suffix!1395)))))

(declare-fun b!3598534 () Bool)

(assert (=> b!3598534 (= e!2226782 suffix!1395)))

(declare-fun b!3598536 () Bool)

(declare-fun res!1453988 () Bool)

(declare-fun e!2226781 () Bool)

(assert (=> b!3598536 (=> (not res!1453988) (not e!2226781))))

(declare-fun lt!1235970 () List!37972)

(assert (=> b!3598536 (= res!1453988 (= (size!28840 lt!1235970) (+ (size!28840 lt!1235736) (size!28840 suffix!1395))))))

(declare-fun d!1060397 () Bool)

(assert (=> d!1060397 e!2226781))

(declare-fun res!1453987 () Bool)

(assert (=> d!1060397 (=> (not res!1453987) (not e!2226781))))

(assert (=> d!1060397 (= res!1453987 (= (content!5396 lt!1235970) ((_ map or) (content!5396 lt!1235736) (content!5396 suffix!1395))))))

(assert (=> d!1060397 (= lt!1235970 e!2226782)))

(declare-fun c!622872 () Bool)

(assert (=> d!1060397 (= c!622872 ((_ is Nil!37848) lt!1235736))))

(assert (=> d!1060397 (= (++!9416 lt!1235736 suffix!1395) lt!1235970)))

(declare-fun b!3598537 () Bool)

(assert (=> b!3598537 (= e!2226781 (or (not (= suffix!1395 Nil!37848)) (= lt!1235970 lt!1235736)))))

(assert (= (and d!1060397 c!622872) b!3598534))

(assert (= (and d!1060397 (not c!622872)) b!3598535))

(assert (= (and d!1060397 res!1453987) b!3598536))

(assert (= (and b!3598536 res!1453988) b!3598537))

(declare-fun m!4094183 () Bool)

(assert (=> b!3598535 m!4094183))

(declare-fun m!4094185 () Bool)

(assert (=> b!3598536 m!4094185))

(assert (=> b!3598536 m!4094069))

(declare-fun m!4094187 () Bool)

(assert (=> b!3598536 m!4094187))

(declare-fun m!4094189 () Bool)

(assert (=> d!1060397 m!4094189))

(declare-fun m!4094191 () Bool)

(assert (=> d!1060397 m!4094191))

(declare-fun m!4094193 () Bool)

(assert (=> d!1060397 m!4094193))

(assert (=> b!3598206 d!1060397))

(declare-fun d!1060399 () Bool)

(declare-fun lt!1235973 () Bool)

(assert (=> d!1060399 (= lt!1235973 (select (content!5396 lt!1235743) lt!1235722))))

(declare-fun e!2226787 () Bool)

(assert (=> d!1060399 (= lt!1235973 e!2226787)))

(declare-fun res!1453994 () Bool)

(assert (=> d!1060399 (=> (not res!1453994) (not e!2226787))))

(assert (=> d!1060399 (= res!1453994 ((_ is Cons!37848) lt!1235743))))

(assert (=> d!1060399 (= (contains!7264 lt!1235743 lt!1235722) lt!1235973)))

(declare-fun b!3598542 () Bool)

(declare-fun e!2226788 () Bool)

(assert (=> b!3598542 (= e!2226787 e!2226788)))

(declare-fun res!1453993 () Bool)

(assert (=> b!3598542 (=> res!1453993 e!2226788)))

(assert (=> b!3598542 (= res!1453993 (= (h!43268 lt!1235743) lt!1235722))))

(declare-fun b!3598543 () Bool)

(assert (=> b!3598543 (= e!2226788 (contains!7264 (t!291943 lt!1235743) lt!1235722))))

(assert (= (and d!1060399 res!1453994) b!3598542))

(assert (= (and b!3598542 (not res!1453993)) b!3598543))

(declare-fun m!4094195 () Bool)

(assert (=> d!1060399 m!4094195))

(declare-fun m!4094197 () Bool)

(assert (=> d!1060399 m!4094197))

(declare-fun m!4094199 () Bool)

(assert (=> b!3598543 m!4094199))

(assert (=> b!3598228 d!1060399))

(declare-fun d!1060401 () Bool)

(assert (=> d!1060401 (= (head!7538 suffix!1395) (h!43268 suffix!1395))))

(assert (=> b!3598228 d!1060401))

(declare-fun b!3598570 () Bool)

(declare-fun e!2226806 () List!37972)

(declare-fun e!2226807 () List!37972)

(assert (=> b!3598570 (= e!2226806 e!2226807)))

(declare-fun c!622883 () Bool)

(assert (=> b!3598570 (= c!622883 ((_ is Union!10359) (regex!5600 rule!403)))))

(declare-fun b!3598571 () Bool)

(declare-fun e!2226805 () List!37972)

(assert (=> b!3598571 (= e!2226805 Nil!37848)))

(declare-fun b!3598572 () Bool)

(declare-fun e!2226804 () List!37972)

(assert (=> b!3598572 (= e!2226804 (Cons!37848 (c!622820 (regex!5600 rule!403)) Nil!37848))))

(declare-fun b!3598573 () Bool)

(declare-fun call!260286 () List!37972)

(assert (=> b!3598573 (= e!2226807 call!260286)))

(declare-fun bm!260279 () Bool)

(declare-fun call!260285 () List!37972)

(declare-fun call!260284 () List!37972)

(assert (=> bm!260279 (= call!260285 call!260284)))

(declare-fun bm!260281 () Bool)

(declare-fun call!260287 () List!37972)

(assert (=> bm!260281 (= call!260286 (++!9416 (ite c!622883 call!260287 call!260285) (ite c!622883 call!260285 call!260287)))))

(declare-fun b!3598574 () Bool)

(assert (=> b!3598574 (= e!2226806 call!260284)))

(declare-fun b!3598575 () Bool)

(assert (=> b!3598575 (= e!2226805 e!2226804)))

(declare-fun c!622882 () Bool)

(assert (=> b!3598575 (= c!622882 ((_ is ElementMatch!10359) (regex!5600 rule!403)))))

(declare-fun bm!260282 () Bool)

(declare-fun c!622881 () Bool)

(assert (=> bm!260282 (= call!260284 (usedCharacters!814 (ite c!622881 (reg!10688 (regex!5600 rule!403)) (ite c!622883 (regTwo!21231 (regex!5600 rule!403)) (regOne!21230 (regex!5600 rule!403))))))))

(declare-fun b!3598576 () Bool)

(assert (=> b!3598576 (= e!2226807 call!260286)))

(declare-fun b!3598577 () Bool)

(assert (=> b!3598577 (= c!622881 ((_ is Star!10359) (regex!5600 rule!403)))))

(assert (=> b!3598577 (= e!2226804 e!2226806)))

(declare-fun d!1060403 () Bool)

(declare-fun c!622884 () Bool)

(assert (=> d!1060403 (= c!622884 (or ((_ is EmptyExpr!10359) (regex!5600 rule!403)) ((_ is EmptyLang!10359) (regex!5600 rule!403))))))

(assert (=> d!1060403 (= (usedCharacters!814 (regex!5600 rule!403)) e!2226805)))

(declare-fun bm!260280 () Bool)

(assert (=> bm!260280 (= call!260287 (usedCharacters!814 (ite c!622883 (regOne!21231 (regex!5600 rule!403)) (regTwo!21230 (regex!5600 rule!403)))))))

(assert (= (and d!1060403 c!622884) b!3598571))

(assert (= (and d!1060403 (not c!622884)) b!3598575))

(assert (= (and b!3598575 c!622882) b!3598572))

(assert (= (and b!3598575 (not c!622882)) b!3598577))

(assert (= (and b!3598577 c!622881) b!3598574))

(assert (= (and b!3598577 (not c!622881)) b!3598570))

(assert (= (and b!3598570 c!622883) b!3598576))

(assert (= (and b!3598570 (not c!622883)) b!3598573))

(assert (= (or b!3598576 b!3598573) bm!260280))

(assert (= (or b!3598576 b!3598573) bm!260279))

(assert (= (or b!3598576 b!3598573) bm!260281))

(assert (= (or b!3598574 bm!260279) bm!260282))

(declare-fun m!4094217 () Bool)

(assert (=> bm!260281 m!4094217))

(declare-fun m!4094219 () Bool)

(assert (=> bm!260282 m!4094219))

(declare-fun m!4094221 () Bool)

(assert (=> bm!260280 m!4094221))

(assert (=> b!3598228 d!1060403))

(declare-fun d!1060415 () Bool)

(assert (=> d!1060415 (= (isDefined!6063 lt!1235740) (not (isEmpty!22327 lt!1235740)))))

(declare-fun bs!570471 () Bool)

(assert (= bs!570471 d!1060415))

(declare-fun m!4094223 () Bool)

(assert (=> bs!570471 m!4094223))

(assert (=> b!3598207 d!1060415))

(declare-fun b!3598594 () Bool)

(declare-fun res!1454008 () Bool)

(declare-fun e!2226818 () Bool)

(assert (=> b!3598594 (=> (not res!1454008) (not e!2226818))))

(declare-fun lt!1235979 () Option!7830)

(assert (=> b!3598594 (= res!1454008 (= (list!13936 (charsOf!3614 (_1!22002 (get!12240 lt!1235979)))) (originalCharacters!6314 (_1!22002 (get!12240 lt!1235979)))))))

(declare-fun d!1060417 () Bool)

(declare-fun e!2226816 () Bool)

(assert (=> d!1060417 e!2226816))

(declare-fun res!1454007 () Bool)

(assert (=> d!1060417 (=> res!1454007 e!2226816)))

(assert (=> d!1060417 (= res!1454007 (isEmpty!22327 lt!1235979))))

(declare-fun e!2226817 () Option!7830)

(assert (=> d!1060417 (= lt!1235979 e!2226817)))

(declare-fun c!622893 () Bool)

(assert (=> d!1060417 (= c!622893 (and ((_ is Cons!37849) rules!3307) ((_ is Nil!37849) (t!291944 rules!3307))))))

(declare-fun lt!1235983 () Unit!53867)

(declare-fun lt!1235980 () Unit!53867)

(assert (=> d!1060417 (= lt!1235983 lt!1235980)))

(assert (=> d!1060417 (isPrefix!2963 lt!1235736 lt!1235736)))

(assert (=> d!1060417 (= lt!1235980 (lemmaIsPrefixRefl!1896 lt!1235736 lt!1235736))))

(assert (=> d!1060417 (rulesValidInductive!1961 thiss!23823 rules!3307)))

(assert (=> d!1060417 (= (maxPrefix!2723 thiss!23823 rules!3307 lt!1235736) lt!1235979)))

(declare-fun b!3598595 () Bool)

(declare-fun lt!1235981 () Option!7830)

(declare-fun lt!1235982 () Option!7830)

(assert (=> b!3598595 (= e!2226817 (ite (and ((_ is None!7829) lt!1235981) ((_ is None!7829) lt!1235982)) None!7829 (ite ((_ is None!7829) lt!1235982) lt!1235981 (ite ((_ is None!7829) lt!1235981) lt!1235982 (ite (>= (size!28838 (_1!22002 (v!37531 lt!1235981))) (size!28838 (_1!22002 (v!37531 lt!1235982)))) lt!1235981 lt!1235982)))))))

(declare-fun call!260288 () Option!7830)

(assert (=> b!3598595 (= lt!1235981 call!260288)))

(assert (=> b!3598595 (= lt!1235982 (maxPrefix!2723 thiss!23823 (t!291944 rules!3307) lt!1235736))))

(declare-fun b!3598596 () Bool)

(assert (=> b!3598596 (= e!2226816 e!2226818)))

(declare-fun res!1454009 () Bool)

(assert (=> b!3598596 (=> (not res!1454009) (not e!2226818))))

(assert (=> b!3598596 (= res!1454009 (isDefined!6063 lt!1235979))))

(declare-fun b!3598597 () Bool)

(declare-fun res!1454006 () Bool)

(assert (=> b!3598597 (=> (not res!1454006) (not e!2226818))))

(assert (=> b!3598597 (= res!1454006 (= (value!180060 (_1!22002 (get!12240 lt!1235979))) (apply!9106 (transformation!5600 (rule!8330 (_1!22002 (get!12240 lt!1235979)))) (seqFromList!4153 (originalCharacters!6314 (_1!22002 (get!12240 lt!1235979)))))))))

(declare-fun b!3598598 () Bool)

(declare-fun res!1454010 () Bool)

(assert (=> b!3598598 (=> (not res!1454010) (not e!2226818))))

(assert (=> b!3598598 (= res!1454010 (= (++!9416 (list!13936 (charsOf!3614 (_1!22002 (get!12240 lt!1235979)))) (_2!22002 (get!12240 lt!1235979))) lt!1235736))))

(declare-fun b!3598599 () Bool)

(declare-fun res!1454011 () Bool)

(assert (=> b!3598599 (=> (not res!1454011) (not e!2226818))))

(assert (=> b!3598599 (= res!1454011 (< (size!28840 (_2!22002 (get!12240 lt!1235979))) (size!28840 lt!1235736)))))

(declare-fun b!3598600 () Bool)

(assert (=> b!3598600 (= e!2226817 call!260288)))

(declare-fun bm!260283 () Bool)

(assert (=> bm!260283 (= call!260288 (maxPrefixOneRule!1867 thiss!23823 (h!43269 rules!3307) lt!1235736))))

(declare-fun b!3598601 () Bool)

(declare-fun res!1454005 () Bool)

(assert (=> b!3598601 (=> (not res!1454005) (not e!2226818))))

(assert (=> b!3598601 (= res!1454005 (matchR!4928 (regex!5600 (rule!8330 (_1!22002 (get!12240 lt!1235979)))) (list!13936 (charsOf!3614 (_1!22002 (get!12240 lt!1235979))))))))

(declare-fun b!3598602 () Bool)

(assert (=> b!3598602 (= e!2226818 (contains!7263 rules!3307 (rule!8330 (_1!22002 (get!12240 lt!1235979)))))))

(assert (= (and d!1060417 c!622893) b!3598600))

(assert (= (and d!1060417 (not c!622893)) b!3598595))

(assert (= (or b!3598600 b!3598595) bm!260283))

(assert (= (and d!1060417 (not res!1454007)) b!3598596))

(assert (= (and b!3598596 res!1454009) b!3598594))

(assert (= (and b!3598594 res!1454008) b!3598599))

(assert (= (and b!3598599 res!1454011) b!3598598))

(assert (= (and b!3598598 res!1454010) b!3598597))

(assert (= (and b!3598597 res!1454006) b!3598601))

(assert (= (and b!3598601 res!1454005) b!3598602))

(declare-fun m!4094225 () Bool)

(assert (=> b!3598599 m!4094225))

(declare-fun m!4094227 () Bool)

(assert (=> b!3598599 m!4094227))

(assert (=> b!3598599 m!4094069))

(assert (=> b!3598597 m!4094225))

(declare-fun m!4094229 () Bool)

(assert (=> b!3598597 m!4094229))

(assert (=> b!3598597 m!4094229))

(declare-fun m!4094231 () Bool)

(assert (=> b!3598597 m!4094231))

(declare-fun m!4094233 () Bool)

(assert (=> b!3598595 m!4094233))

(declare-fun m!4094235 () Bool)

(assert (=> d!1060417 m!4094235))

(declare-fun m!4094237 () Bool)

(assert (=> d!1060417 m!4094237))

(declare-fun m!4094239 () Bool)

(assert (=> d!1060417 m!4094239))

(assert (=> d!1060417 m!4094015))

(assert (=> b!3598602 m!4094225))

(declare-fun m!4094241 () Bool)

(assert (=> b!3598602 m!4094241))

(assert (=> b!3598594 m!4094225))

(declare-fun m!4094243 () Bool)

(assert (=> b!3598594 m!4094243))

(assert (=> b!3598594 m!4094243))

(declare-fun m!4094245 () Bool)

(assert (=> b!3598594 m!4094245))

(declare-fun m!4094247 () Bool)

(assert (=> bm!260283 m!4094247))

(assert (=> b!3598598 m!4094225))

(assert (=> b!3598598 m!4094243))

(assert (=> b!3598598 m!4094243))

(assert (=> b!3598598 m!4094245))

(assert (=> b!3598598 m!4094245))

(declare-fun m!4094249 () Bool)

(assert (=> b!3598598 m!4094249))

(declare-fun m!4094251 () Bool)

(assert (=> b!3598596 m!4094251))

(assert (=> b!3598601 m!4094225))

(assert (=> b!3598601 m!4094243))

(assert (=> b!3598601 m!4094243))

(assert (=> b!3598601 m!4094245))

(assert (=> b!3598601 m!4094245))

(declare-fun m!4094253 () Bool)

(assert (=> b!3598601 m!4094253))

(assert (=> b!3598207 d!1060417))

(declare-fun d!1060419 () Bool)

(assert (=> d!1060419 (= (list!13936 (charsOf!3614 token!511)) (list!13937 (c!622821 (charsOf!3614 token!511))))))

(declare-fun bs!570472 () Bool)

(assert (= bs!570472 d!1060419))

(declare-fun m!4094255 () Bool)

(assert (=> bs!570472 m!4094255))

(assert (=> b!3598207 d!1060419))

(declare-fun d!1060421 () Bool)

(declare-fun lt!1235984 () BalanceConc!22656)

(assert (=> d!1060421 (= (list!13936 lt!1235984) (originalCharacters!6314 token!511))))

(assert (=> d!1060421 (= lt!1235984 (dynLambda!16317 (toChars!7743 (transformation!5600 (rule!8330 token!511))) (value!180060 token!511)))))

(assert (=> d!1060421 (= (charsOf!3614 token!511) lt!1235984)))

(declare-fun b_lambda!106387 () Bool)

(assert (=> (not b_lambda!106387) (not d!1060421)))

(declare-fun t!291978 () Bool)

(declare-fun tb!205769 () Bool)

(assert (=> (and b!3598213 (= (toChars!7743 (transformation!5600 (rule!8330 token!511))) (toChars!7743 (transformation!5600 (rule!8330 token!511)))) t!291978) tb!205769))

(declare-fun b!3598603 () Bool)

(declare-fun e!2226819 () Bool)

(declare-fun tp!1100946 () Bool)

(assert (=> b!3598603 (= e!2226819 (and (inv!51205 (c!622821 (dynLambda!16317 (toChars!7743 (transformation!5600 (rule!8330 token!511))) (value!180060 token!511)))) tp!1100946))))

(declare-fun result!250836 () Bool)

(assert (=> tb!205769 (= result!250836 (and (inv!51206 (dynLambda!16317 (toChars!7743 (transformation!5600 (rule!8330 token!511))) (value!180060 token!511))) e!2226819))))

(assert (= tb!205769 b!3598603))

(declare-fun m!4094257 () Bool)

(assert (=> b!3598603 m!4094257))

(declare-fun m!4094259 () Bool)

(assert (=> tb!205769 m!4094259))

(assert (=> d!1060421 t!291978))

(declare-fun b_and!261131 () Bool)

(assert (= b_and!261115 (and (=> t!291978 result!250836) b_and!261131)))

(declare-fun t!291980 () Bool)

(declare-fun tb!205771 () Bool)

(assert (=> (and b!3598196 (= (toChars!7743 (transformation!5600 (h!43269 rules!3307))) (toChars!7743 (transformation!5600 (rule!8330 token!511)))) t!291980) tb!205771))

(declare-fun result!250838 () Bool)

(assert (= result!250838 result!250836))

(assert (=> d!1060421 t!291980))

(declare-fun b_and!261133 () Bool)

(assert (= b_and!261117 (and (=> t!291980 result!250838) b_and!261133)))

(declare-fun tb!205773 () Bool)

(declare-fun t!291982 () Bool)

(assert (=> (and b!3598219 (= (toChars!7743 (transformation!5600 anOtherTypeRule!33)) (toChars!7743 (transformation!5600 (rule!8330 token!511)))) t!291982) tb!205773))

(declare-fun result!250840 () Bool)

(assert (= result!250840 result!250836))

(assert (=> d!1060421 t!291982))

(declare-fun b_and!261135 () Bool)

(assert (= b_and!261119 (and (=> t!291982 result!250840) b_and!261135)))

(declare-fun t!291984 () Bool)

(declare-fun tb!205775 () Bool)

(assert (=> (and b!3598216 (= (toChars!7743 (transformation!5600 rule!403)) (toChars!7743 (transformation!5600 (rule!8330 token!511)))) t!291984) tb!205775))

(declare-fun result!250842 () Bool)

(assert (= result!250842 result!250836))

(assert (=> d!1060421 t!291984))

(declare-fun b_and!261137 () Bool)

(assert (= b_and!261121 (and (=> t!291984 result!250842) b_and!261137)))

(declare-fun m!4094261 () Bool)

(assert (=> d!1060421 m!4094261))

(declare-fun m!4094263 () Bool)

(assert (=> d!1060421 m!4094263))

(assert (=> b!3598207 d!1060421))

(declare-fun d!1060423 () Bool)

(assert (=> d!1060423 (= (inv!51198 (tag!6286 anOtherTypeRule!33)) (= (mod (str.len (value!180059 (tag!6286 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3598208 d!1060423))

(declare-fun d!1060427 () Bool)

(declare-fun res!1454016 () Bool)

(declare-fun e!2226832 () Bool)

(assert (=> d!1060427 (=> (not res!1454016) (not e!2226832))))

(declare-fun semiInverseModEq!2377 (Int Int) Bool)

(assert (=> d!1060427 (= res!1454016 (semiInverseModEq!2377 (toChars!7743 (transformation!5600 anOtherTypeRule!33)) (toValue!7884 (transformation!5600 anOtherTypeRule!33))))))

(assert (=> d!1060427 (= (inv!51201 (transformation!5600 anOtherTypeRule!33)) e!2226832)))

(declare-fun b!3598624 () Bool)

(declare-fun equivClasses!2276 (Int Int) Bool)

(assert (=> b!3598624 (= e!2226832 (equivClasses!2276 (toChars!7743 (transformation!5600 anOtherTypeRule!33)) (toValue!7884 (transformation!5600 anOtherTypeRule!33))))))

(assert (= (and d!1060427 res!1454016) b!3598624))

(declare-fun m!4094283 () Bool)

(assert (=> d!1060427 m!4094283))

(declare-fun m!4094285 () Bool)

(assert (=> b!3598624 m!4094285))

(assert (=> b!3598208 d!1060427))

(declare-fun d!1060433 () Bool)

(assert (=> d!1060433 (= (isEmpty!22322 suffix!1395) ((_ is Nil!37848) suffix!1395))))

(assert (=> b!3598225 d!1060433))

(declare-fun b!3598635 () Bool)

(declare-fun e!2226841 () Bool)

(declare-fun lt!1235986 () Bool)

(declare-fun call!260305 () Bool)

(assert (=> b!3598635 (= e!2226841 (= lt!1235986 call!260305))))

(declare-fun b!3598636 () Bool)

(declare-fun e!2226840 () Bool)

(assert (=> b!3598636 (= e!2226841 e!2226840)))

(declare-fun c!622906 () Bool)

(assert (=> b!3598636 (= c!622906 ((_ is EmptyLang!10359) (regex!5600 (rule!8330 (_1!22002 lt!1235723)))))))

(declare-fun b!3598637 () Bool)

(declare-fun res!1454022 () Bool)

(declare-fun e!2226839 () Bool)

(assert (=> b!3598637 (=> res!1454022 e!2226839)))

(assert (=> b!3598637 (= res!1454022 (not ((_ is ElementMatch!10359) (regex!5600 (rule!8330 (_1!22002 lt!1235723))))))))

(assert (=> b!3598637 (= e!2226840 e!2226839)))

(declare-fun b!3598638 () Bool)

(declare-fun e!2226843 () Bool)

(assert (=> b!3598638 (= e!2226843 (= (head!7538 lt!1235735) (c!622820 (regex!5600 (rule!8330 (_1!22002 lt!1235723))))))))

(declare-fun b!3598639 () Bool)

(declare-fun e!2226845 () Bool)

(assert (=> b!3598639 (= e!2226839 e!2226845)))

(declare-fun res!1454026 () Bool)

(assert (=> b!3598639 (=> (not res!1454026) (not e!2226845))))

(assert (=> b!3598639 (= res!1454026 (not lt!1235986))))

(declare-fun b!3598641 () Bool)

(declare-fun e!2226844 () Bool)

(assert (=> b!3598641 (= e!2226844 (nullable!3578 (regex!5600 (rule!8330 (_1!22002 lt!1235723)))))))

(declare-fun b!3598642 () Bool)

(declare-fun res!1454020 () Bool)

(assert (=> b!3598642 (=> res!1454020 e!2226839)))

(assert (=> b!3598642 (= res!1454020 e!2226843)))

(declare-fun res!1454019 () Bool)

(assert (=> b!3598642 (=> (not res!1454019) (not e!2226843))))

(assert (=> b!3598642 (= res!1454019 lt!1235986)))

(declare-fun b!3598643 () Bool)

(declare-fun res!1454023 () Bool)

(declare-fun e!2226842 () Bool)

(assert (=> b!3598643 (=> res!1454023 e!2226842)))

(assert (=> b!3598643 (= res!1454023 (not (isEmpty!22322 (tail!5577 lt!1235735))))))

(declare-fun b!3598644 () Bool)

(assert (=> b!3598644 (= e!2226842 (not (= (head!7538 lt!1235735) (c!622820 (regex!5600 (rule!8330 (_1!22002 lt!1235723)))))))))

(declare-fun bm!260300 () Bool)

(assert (=> bm!260300 (= call!260305 (isEmpty!22322 lt!1235735))))

(declare-fun d!1060435 () Bool)

(assert (=> d!1060435 e!2226841))

(declare-fun c!622907 () Bool)

(assert (=> d!1060435 (= c!622907 ((_ is EmptyExpr!10359) (regex!5600 (rule!8330 (_1!22002 lt!1235723)))))))

(assert (=> d!1060435 (= lt!1235986 e!2226844)))

(declare-fun c!622908 () Bool)

(assert (=> d!1060435 (= c!622908 (isEmpty!22322 lt!1235735))))

(assert (=> d!1060435 (validRegex!4737 (regex!5600 (rule!8330 (_1!22002 lt!1235723))))))

(assert (=> d!1060435 (= (matchR!4928 (regex!5600 (rule!8330 (_1!22002 lt!1235723))) lt!1235735) lt!1235986)))

(declare-fun b!3598640 () Bool)

(assert (=> b!3598640 (= e!2226845 e!2226842)))

(declare-fun res!1454025 () Bool)

(assert (=> b!3598640 (=> res!1454025 e!2226842)))

(assert (=> b!3598640 (= res!1454025 call!260305)))

(declare-fun b!3598645 () Bool)

(declare-fun res!1454021 () Bool)

(assert (=> b!3598645 (=> (not res!1454021) (not e!2226843))))

(assert (=> b!3598645 (= res!1454021 (isEmpty!22322 (tail!5577 lt!1235735)))))

(declare-fun b!3598646 () Bool)

(assert (=> b!3598646 (= e!2226840 (not lt!1235986))))

(declare-fun b!3598647 () Bool)

(assert (=> b!3598647 (= e!2226844 (matchR!4928 (derivativeStep!3127 (regex!5600 (rule!8330 (_1!22002 lt!1235723))) (head!7538 lt!1235735)) (tail!5577 lt!1235735)))))

(declare-fun b!3598648 () Bool)

(declare-fun res!1454024 () Bool)

(assert (=> b!3598648 (=> (not res!1454024) (not e!2226843))))

(assert (=> b!3598648 (= res!1454024 (not call!260305))))

(assert (= (and d!1060435 c!622908) b!3598641))

(assert (= (and d!1060435 (not c!622908)) b!3598647))

(assert (= (and d!1060435 c!622907) b!3598635))

(assert (= (and d!1060435 (not c!622907)) b!3598636))

(assert (= (and b!3598636 c!622906) b!3598646))

(assert (= (and b!3598636 (not c!622906)) b!3598637))

(assert (= (and b!3598637 (not res!1454022)) b!3598642))

(assert (= (and b!3598642 res!1454019) b!3598648))

(assert (= (and b!3598648 res!1454024) b!3598645))

(assert (= (and b!3598645 res!1454021) b!3598638))

(assert (= (and b!3598642 (not res!1454020)) b!3598639))

(assert (= (and b!3598639 res!1454026) b!3598640))

(assert (= (and b!3598640 (not res!1454025)) b!3598643))

(assert (= (and b!3598643 (not res!1454023)) b!3598644))

(assert (= (or b!3598635 b!3598640 b!3598648) bm!260300))

(declare-fun m!4094287 () Bool)

(assert (=> b!3598641 m!4094287))

(assert (=> b!3598645 m!4093807))

(assert (=> b!3598645 m!4093807))

(declare-fun m!4094289 () Bool)

(assert (=> b!3598645 m!4094289))

(assert (=> b!3598643 m!4093807))

(assert (=> b!3598643 m!4093807))

(assert (=> b!3598643 m!4094289))

(assert (=> b!3598647 m!4093663))

(assert (=> b!3598647 m!4093663))

(declare-fun m!4094291 () Bool)

(assert (=> b!3598647 m!4094291))

(assert (=> b!3598647 m!4093807))

(assert (=> b!3598647 m!4094291))

(assert (=> b!3598647 m!4093807))

(declare-fun m!4094293 () Bool)

(assert (=> b!3598647 m!4094293))

(assert (=> b!3598638 m!4093663))

(declare-fun m!4094295 () Bool)

(assert (=> d!1060435 m!4094295))

(declare-fun m!4094297 () Bool)

(assert (=> d!1060435 m!4094297))

(assert (=> bm!260300 m!4094295))

(assert (=> b!3598644 m!4093663))

(assert (=> b!3598204 d!1060435))

(declare-fun d!1060437 () Bool)

(declare-fun lt!1235989 () Bool)

(declare-fun content!5397 (List!37973) (InoxSet Rule!11000))

(assert (=> d!1060437 (= lt!1235989 (select (content!5397 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2226854 () Bool)

(assert (=> d!1060437 (= lt!1235989 e!2226854)))

(declare-fun res!1454033 () Bool)

(assert (=> d!1060437 (=> (not res!1454033) (not e!2226854))))

(assert (=> d!1060437 (= res!1454033 ((_ is Cons!37849) rules!3307))))

(assert (=> d!1060437 (= (contains!7263 rules!3307 anOtherTypeRule!33) lt!1235989)))

(declare-fun b!3598658 () Bool)

(declare-fun e!2226853 () Bool)

(assert (=> b!3598658 (= e!2226854 e!2226853)))

(declare-fun res!1454032 () Bool)

(assert (=> b!3598658 (=> res!1454032 e!2226853)))

(assert (=> b!3598658 (= res!1454032 (= (h!43269 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3598659 () Bool)

(assert (=> b!3598659 (= e!2226853 (contains!7263 (t!291944 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1060437 res!1454033) b!3598658))

(assert (= (and b!3598658 (not res!1454032)) b!3598659))

(declare-fun m!4094305 () Bool)

(assert (=> d!1060437 m!4094305))

(declare-fun m!4094307 () Bool)

(assert (=> d!1060437 m!4094307))

(declare-fun m!4094309 () Bool)

(assert (=> b!3598659 m!4094309))

(assert (=> b!3598226 d!1060437))

(declare-fun d!1060441 () Bool)

(assert (=> d!1060441 (= (inv!51198 (tag!6286 (h!43269 rules!3307))) (= (mod (str.len (value!180059 (tag!6286 (h!43269 rules!3307)))) 2) 0))))

(assert (=> b!3598222 d!1060441))

(declare-fun d!1060443 () Bool)

(declare-fun res!1454034 () Bool)

(declare-fun e!2226855 () Bool)

(assert (=> d!1060443 (=> (not res!1454034) (not e!2226855))))

(assert (=> d!1060443 (= res!1454034 (semiInverseModEq!2377 (toChars!7743 (transformation!5600 (h!43269 rules!3307))) (toValue!7884 (transformation!5600 (h!43269 rules!3307)))))))

(assert (=> d!1060443 (= (inv!51201 (transformation!5600 (h!43269 rules!3307))) e!2226855)))

(declare-fun b!3598660 () Bool)

(assert (=> b!3598660 (= e!2226855 (equivClasses!2276 (toChars!7743 (transformation!5600 (h!43269 rules!3307))) (toValue!7884 (transformation!5600 (h!43269 rules!3307)))))))

(assert (= (and d!1060443 res!1454034) b!3598660))

(declare-fun m!4094311 () Bool)

(assert (=> d!1060443 m!4094311))

(declare-fun m!4094313 () Bool)

(assert (=> b!3598660 m!4094313))

(assert (=> b!3598222 d!1060443))

(declare-fun d!1060445 () Bool)

(assert (=> d!1060445 (= (inv!51198 (tag!6286 rule!403)) (= (mod (str.len (value!180059 (tag!6286 rule!403))) 2) 0))))

(assert (=> b!3598202 d!1060445))

(declare-fun d!1060447 () Bool)

(declare-fun res!1454035 () Bool)

(declare-fun e!2226856 () Bool)

(assert (=> d!1060447 (=> (not res!1454035) (not e!2226856))))

(assert (=> d!1060447 (= res!1454035 (semiInverseModEq!2377 (toChars!7743 (transformation!5600 rule!403)) (toValue!7884 (transformation!5600 rule!403))))))

(assert (=> d!1060447 (= (inv!51201 (transformation!5600 rule!403)) e!2226856)))

(declare-fun b!3598661 () Bool)

(assert (=> b!3598661 (= e!2226856 (equivClasses!2276 (toChars!7743 (transformation!5600 rule!403)) (toValue!7884 (transformation!5600 rule!403))))))

(assert (= (and d!1060447 res!1454035) b!3598661))

(declare-fun m!4094315 () Bool)

(assert (=> d!1060447 m!4094315))

(declare-fun m!4094317 () Bool)

(assert (=> b!3598661 m!4094317))

(assert (=> b!3598202 d!1060447))

(declare-fun d!1060449 () Bool)

(declare-fun lt!1235990 () Bool)

(assert (=> d!1060449 (= lt!1235990 (select (content!5396 lt!1235736) lt!1235742))))

(declare-fun e!2226857 () Bool)

(assert (=> d!1060449 (= lt!1235990 e!2226857)))

(declare-fun res!1454037 () Bool)

(assert (=> d!1060449 (=> (not res!1454037) (not e!2226857))))

(assert (=> d!1060449 (= res!1454037 ((_ is Cons!37848) lt!1235736))))

(assert (=> d!1060449 (= (contains!7264 lt!1235736 lt!1235742) lt!1235990)))

(declare-fun b!3598662 () Bool)

(declare-fun e!2226858 () Bool)

(assert (=> b!3598662 (= e!2226857 e!2226858)))

(declare-fun res!1454036 () Bool)

(assert (=> b!3598662 (=> res!1454036 e!2226858)))

(assert (=> b!3598662 (= res!1454036 (= (h!43268 lt!1235736) lt!1235742))))

(declare-fun b!3598663 () Bool)

(assert (=> b!3598663 (= e!2226858 (contains!7264 (t!291943 lt!1235736) lt!1235742))))

(assert (= (and d!1060449 res!1454037) b!3598662))

(assert (= (and b!3598662 (not res!1454036)) b!3598663))

(assert (=> d!1060449 m!4094191))

(declare-fun m!4094319 () Bool)

(assert (=> d!1060449 m!4094319))

(declare-fun m!4094321 () Bool)

(assert (=> b!3598663 m!4094321))

(assert (=> b!3598203 d!1060449))

(declare-fun d!1060451 () Bool)

(declare-fun fromListB!1917 (List!37972) BalanceConc!22656)

(assert (=> d!1060451 (= (seqFromList!4153 (originalCharacters!6314 (_1!22002 lt!1235723))) (fromListB!1917 (originalCharacters!6314 (_1!22002 lt!1235723))))))

(declare-fun bs!570473 () Bool)

(assert (= bs!570473 d!1060451))

(declare-fun m!4094323 () Bool)

(assert (=> bs!570473 m!4094323))

(assert (=> b!3598198 d!1060451))

(declare-fun b!3598758 () Bool)

(declare-fun e!2226907 () Bool)

(assert (=> b!3598758 (= e!2226907 true)))

(declare-fun d!1060453 () Bool)

(assert (=> d!1060453 e!2226907))

(assert (= d!1060453 b!3598758))

(declare-fun order!20597 () Int)

(declare-fun lambda!123936 () Int)

(declare-fun order!20595 () Int)

(declare-fun dynLambda!16318 (Int Int) Int)

(declare-fun dynLambda!16319 (Int Int) Int)

(assert (=> b!3598758 (< (dynLambda!16318 order!20595 (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) (dynLambda!16319 order!20597 lambda!123936))))

(declare-fun order!20599 () Int)

(declare-fun dynLambda!16320 (Int Int) Int)

(assert (=> b!3598758 (< (dynLambda!16320 order!20599 (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) (dynLambda!16319 order!20597 lambda!123936))))

(declare-fun dynLambda!16321 (Int BalanceConc!22656) TokenValue!5830)

(assert (=> d!1060453 (= (dynLambda!16321 (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) lt!1235738) (dynLambda!16321 (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) (seqFromList!4153 (originalCharacters!6314 (_1!22002 lt!1235723)))))))

(declare-fun lt!1236010 () Unit!53867)

(declare-fun Forall2of!296 (Int BalanceConc!22656 BalanceConc!22656) Unit!53867)

(assert (=> d!1060453 (= lt!1236010 (Forall2of!296 lambda!123936 lt!1235738 (seqFromList!4153 (originalCharacters!6314 (_1!22002 lt!1235723)))))))

(assert (=> d!1060453 (= (list!13936 lt!1235738) (list!13936 (seqFromList!4153 (originalCharacters!6314 (_1!22002 lt!1235723)))))))

(assert (=> d!1060453 (= (lemmaEqSameImage!791 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))) lt!1235738 (seqFromList!4153 (originalCharacters!6314 (_1!22002 lt!1235723)))) lt!1236010)))

(declare-fun b_lambda!106391 () Bool)

(assert (=> (not b_lambda!106391) (not d!1060453)))

(declare-fun t!291986 () Bool)

(declare-fun tb!205777 () Bool)

(assert (=> (and b!3598213 (= (toValue!7884 (transformation!5600 (rule!8330 token!511))) (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!291986) tb!205777))

(declare-fun result!250844 () Bool)

(assert (=> tb!205777 (= result!250844 (inv!21 (dynLambda!16321 (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) lt!1235738)))))

(declare-fun m!4094415 () Bool)

(assert (=> tb!205777 m!4094415))

(assert (=> d!1060453 t!291986))

(declare-fun b_and!261147 () Bool)

(assert (= b_and!261083 (and (=> t!291986 result!250844) b_and!261147)))

(declare-fun t!291988 () Bool)

(declare-fun tb!205779 () Bool)

(assert (=> (and b!3598196 (= (toValue!7884 (transformation!5600 (h!43269 rules!3307))) (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!291988) tb!205779))

(declare-fun result!250848 () Bool)

(assert (= result!250848 result!250844))

(assert (=> d!1060453 t!291988))

(declare-fun b_and!261149 () Bool)

(assert (= b_and!261087 (and (=> t!291988 result!250848) b_and!261149)))

(declare-fun t!291990 () Bool)

(declare-fun tb!205781 () Bool)

(assert (=> (and b!3598219 (= (toValue!7884 (transformation!5600 anOtherTypeRule!33)) (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!291990) tb!205781))

(declare-fun result!250850 () Bool)

(assert (= result!250850 result!250844))

(assert (=> d!1060453 t!291990))

(declare-fun b_and!261151 () Bool)

(assert (= b_and!261091 (and (=> t!291990 result!250850) b_and!261151)))

(declare-fun tb!205783 () Bool)

(declare-fun t!291992 () Bool)

(assert (=> (and b!3598216 (= (toValue!7884 (transformation!5600 rule!403)) (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!291992) tb!205783))

(declare-fun result!250852 () Bool)

(assert (= result!250852 result!250844))

(assert (=> d!1060453 t!291992))

(declare-fun b_and!261153 () Bool)

(assert (= b_and!261095 (and (=> t!291992 result!250852) b_and!261153)))

(declare-fun b_lambda!106393 () Bool)

(assert (=> (not b_lambda!106393) (not d!1060453)))

(declare-fun t!291994 () Bool)

(declare-fun tb!205785 () Bool)

(assert (=> (and b!3598213 (= (toValue!7884 (transformation!5600 (rule!8330 token!511))) (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!291994) tb!205785))

(declare-fun result!250854 () Bool)

(assert (=> tb!205785 (= result!250854 (inv!21 (dynLambda!16321 (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) (seqFromList!4153 (originalCharacters!6314 (_1!22002 lt!1235723))))))))

(declare-fun m!4094417 () Bool)

(assert (=> tb!205785 m!4094417))

(assert (=> d!1060453 t!291994))

(declare-fun b_and!261155 () Bool)

(assert (= b_and!261147 (and (=> t!291994 result!250854) b_and!261155)))

(declare-fun tb!205787 () Bool)

(declare-fun t!291996 () Bool)

(assert (=> (and b!3598196 (= (toValue!7884 (transformation!5600 (h!43269 rules!3307))) (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!291996) tb!205787))

(declare-fun result!250856 () Bool)

(assert (= result!250856 result!250854))

(assert (=> d!1060453 t!291996))

(declare-fun b_and!261157 () Bool)

(assert (= b_and!261149 (and (=> t!291996 result!250856) b_and!261157)))

(declare-fun t!291998 () Bool)

(declare-fun tb!205789 () Bool)

(assert (=> (and b!3598219 (= (toValue!7884 (transformation!5600 anOtherTypeRule!33)) (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!291998) tb!205789))

(declare-fun result!250858 () Bool)

(assert (= result!250858 result!250854))

(assert (=> d!1060453 t!291998))

(declare-fun b_and!261159 () Bool)

(assert (= b_and!261151 (and (=> t!291998 result!250858) b_and!261159)))

(declare-fun tb!205791 () Bool)

(declare-fun t!292000 () Bool)

(assert (=> (and b!3598216 (= (toValue!7884 (transformation!5600 rule!403)) (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!292000) tb!205791))

(declare-fun result!250860 () Bool)

(assert (= result!250860 result!250854))

(assert (=> d!1060453 t!292000))

(declare-fun b_and!261161 () Bool)

(assert (= b_and!261153 (and (=> t!292000 result!250860) b_and!261161)))

(assert (=> d!1060453 m!4093721))

(assert (=> d!1060453 m!4093667))

(declare-fun m!4094419 () Bool)

(assert (=> d!1060453 m!4094419))

(declare-fun m!4094421 () Bool)

(assert (=> d!1060453 m!4094421))

(assert (=> d!1060453 m!4093667))

(declare-fun m!4094423 () Bool)

(assert (=> d!1060453 m!4094423))

(assert (=> d!1060453 m!4093667))

(declare-fun m!4094425 () Bool)

(assert (=> d!1060453 m!4094425))

(assert (=> b!3598198 d!1060453))

(declare-fun d!1060491 () Bool)

(assert (=> d!1060491 (= (apply!9106 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))) lt!1235738) (dynLambda!16321 (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) lt!1235738))))

(declare-fun b_lambda!106395 () Bool)

(assert (=> (not b_lambda!106395) (not d!1060491)))

(assert (=> d!1060491 t!291986))

(declare-fun b_and!261163 () Bool)

(assert (= b_and!261155 (and (=> t!291986 result!250844) b_and!261163)))

(assert (=> d!1060491 t!291988))

(declare-fun b_and!261165 () Bool)

(assert (= b_and!261157 (and (=> t!291988 result!250848) b_and!261165)))

(assert (=> d!1060491 t!291990))

(declare-fun b_and!261167 () Bool)

(assert (= b_and!261159 (and (=> t!291990 result!250850) b_and!261167)))

(assert (=> d!1060491 t!291992))

(declare-fun b_and!261169 () Bool)

(assert (= b_and!261161 (and (=> t!291992 result!250852) b_and!261169)))

(assert (=> d!1060491 m!4094421))

(assert (=> b!3598198 d!1060491))

(declare-fun d!1060493 () Bool)

(assert (=> d!1060493 (= (size!28838 (_1!22002 lt!1235723)) (size!28840 (originalCharacters!6314 (_1!22002 lt!1235723))))))

(declare-fun Unit!53875 () Unit!53867)

(assert (=> d!1060493 (= (lemmaCharactersSize!653 (_1!22002 lt!1235723)) Unit!53875)))

(declare-fun bs!570480 () Bool)

(assert (= bs!570480 d!1060493))

(declare-fun m!4094427 () Bool)

(assert (=> bs!570480 m!4094427))

(assert (=> b!3598198 d!1060493))

(declare-fun d!1060495 () Bool)

(declare-fun lt!1236013 () Int)

(assert (=> d!1060495 (= lt!1236013 (size!28840 (list!13936 lt!1235738)))))

(declare-fun size!28841 (Conc!11521) Int)

(assert (=> d!1060495 (= lt!1236013 (size!28841 (c!622821 lt!1235738)))))

(assert (=> d!1060495 (= (size!28839 lt!1235738) lt!1236013)))

(declare-fun bs!570481 () Bool)

(assert (= bs!570481 d!1060495))

(assert (=> bs!570481 m!4093721))

(assert (=> bs!570481 m!4093721))

(declare-fun m!4094429 () Bool)

(assert (=> bs!570481 m!4094429))

(declare-fun m!4094431 () Bool)

(assert (=> bs!570481 m!4094431))

(assert (=> b!3598198 d!1060495))

(declare-fun b!3598765 () Bool)

(declare-fun e!2226914 () Bool)

(assert (=> b!3598765 (= e!2226914 true)))

(declare-fun d!1060497 () Bool)

(assert (=> d!1060497 e!2226914))

(assert (= d!1060497 b!3598765))

(declare-fun lambda!123939 () Int)

(declare-fun order!20601 () Int)

(declare-fun dynLambda!16322 (Int Int) Int)

(assert (=> b!3598765 (< (dynLambda!16318 order!20595 (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) (dynLambda!16322 order!20601 lambda!123939))))

(assert (=> b!3598765 (< (dynLambda!16320 order!20599 (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) (dynLambda!16322 order!20601 lambda!123939))))

(assert (=> d!1060497 (= (list!13936 (dynLambda!16317 (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) (dynLambda!16321 (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) lt!1235738))) (list!13936 lt!1235738))))

(declare-fun lt!1236016 () Unit!53867)

(declare-fun ForallOf!637 (Int BalanceConc!22656) Unit!53867)

(assert (=> d!1060497 (= lt!1236016 (ForallOf!637 lambda!123939 lt!1235738))))

(assert (=> d!1060497 (= (lemmaSemiInverse!1357 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))) lt!1235738) lt!1236016)))

(declare-fun b_lambda!106397 () Bool)

(assert (=> (not b_lambda!106397) (not d!1060497)))

(declare-fun tb!205793 () Bool)

(declare-fun t!292002 () Bool)

(assert (=> (and b!3598213 (= (toChars!7743 (transformation!5600 (rule!8330 token!511))) (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!292002) tb!205793))

(declare-fun e!2226915 () Bool)

(declare-fun b!3598766 () Bool)

(declare-fun tp!1100947 () Bool)

(assert (=> b!3598766 (= e!2226915 (and (inv!51205 (c!622821 (dynLambda!16317 (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) (dynLambda!16321 (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) lt!1235738)))) tp!1100947))))

(declare-fun result!250862 () Bool)

(assert (=> tb!205793 (= result!250862 (and (inv!51206 (dynLambda!16317 (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) (dynLambda!16321 (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) lt!1235738))) e!2226915))))

(assert (= tb!205793 b!3598766))

(declare-fun m!4094433 () Bool)

(assert (=> b!3598766 m!4094433))

(declare-fun m!4094435 () Bool)

(assert (=> tb!205793 m!4094435))

(assert (=> d!1060497 t!292002))

(declare-fun b_and!261171 () Bool)

(assert (= b_and!261131 (and (=> t!292002 result!250862) b_and!261171)))

(declare-fun tb!205795 () Bool)

(declare-fun t!292004 () Bool)

(assert (=> (and b!3598196 (= (toChars!7743 (transformation!5600 (h!43269 rules!3307))) (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!292004) tb!205795))

(declare-fun result!250864 () Bool)

(assert (= result!250864 result!250862))

(assert (=> d!1060497 t!292004))

(declare-fun b_and!261173 () Bool)

(assert (= b_and!261133 (and (=> t!292004 result!250864) b_and!261173)))

(declare-fun t!292006 () Bool)

(declare-fun tb!205797 () Bool)

(assert (=> (and b!3598219 (= (toChars!7743 (transformation!5600 anOtherTypeRule!33)) (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!292006) tb!205797))

(declare-fun result!250866 () Bool)

(assert (= result!250866 result!250862))

(assert (=> d!1060497 t!292006))

(declare-fun b_and!261175 () Bool)

(assert (= b_and!261135 (and (=> t!292006 result!250866) b_and!261175)))

(declare-fun t!292008 () Bool)

(declare-fun tb!205799 () Bool)

(assert (=> (and b!3598216 (= (toChars!7743 (transformation!5600 rule!403)) (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!292008) tb!205799))

(declare-fun result!250868 () Bool)

(assert (= result!250868 result!250862))

(assert (=> d!1060497 t!292008))

(declare-fun b_and!261177 () Bool)

(assert (= b_and!261137 (and (=> t!292008 result!250868) b_and!261177)))

(declare-fun b_lambda!106399 () Bool)

(assert (=> (not b_lambda!106399) (not d!1060497)))

(assert (=> d!1060497 t!291986))

(declare-fun b_and!261179 () Bool)

(assert (= b_and!261163 (and (=> t!291986 result!250844) b_and!261179)))

(assert (=> d!1060497 t!291988))

(declare-fun b_and!261181 () Bool)

(assert (= b_and!261165 (and (=> t!291988 result!250848) b_and!261181)))

(assert (=> d!1060497 t!291990))

(declare-fun b_and!261183 () Bool)

(assert (= b_and!261167 (and (=> t!291990 result!250850) b_and!261183)))

(assert (=> d!1060497 t!291992))

(declare-fun b_and!261185 () Bool)

(assert (= b_and!261169 (and (=> t!291992 result!250852) b_and!261185)))

(assert (=> d!1060497 m!4094421))

(assert (=> d!1060497 m!4094421))

(declare-fun m!4094437 () Bool)

(assert (=> d!1060497 m!4094437))

(assert (=> d!1060497 m!4094437))

(declare-fun m!4094439 () Bool)

(assert (=> d!1060497 m!4094439))

(assert (=> d!1060497 m!4093721))

(declare-fun m!4094441 () Bool)

(assert (=> d!1060497 m!4094441))

(assert (=> b!3598198 d!1060497))

(declare-fun d!1060499 () Bool)

(assert (=> d!1060499 (= (inv!51198 (tag!6286 (rule!8330 token!511))) (= (mod (str.len (value!180059 (tag!6286 (rule!8330 token!511)))) 2) 0))))

(assert (=> b!3598220 d!1060499))

(declare-fun d!1060501 () Bool)

(declare-fun res!1454096 () Bool)

(declare-fun e!2226916 () Bool)

(assert (=> d!1060501 (=> (not res!1454096) (not e!2226916))))

(assert (=> d!1060501 (= res!1454096 (semiInverseModEq!2377 (toChars!7743 (transformation!5600 (rule!8330 token!511))) (toValue!7884 (transformation!5600 (rule!8330 token!511)))))))

(assert (=> d!1060501 (= (inv!51201 (transformation!5600 (rule!8330 token!511))) e!2226916)))

(declare-fun b!3598769 () Bool)

(assert (=> b!3598769 (= e!2226916 (equivClasses!2276 (toChars!7743 (transformation!5600 (rule!8330 token!511))) (toValue!7884 (transformation!5600 (rule!8330 token!511)))))))

(assert (= (and d!1060501 res!1454096) b!3598769))

(declare-fun m!4094443 () Bool)

(assert (=> d!1060501 m!4094443))

(declare-fun m!4094445 () Bool)

(assert (=> b!3598769 m!4094445))

(assert (=> b!3598220 d!1060501))

(declare-fun d!1060503 () Bool)

(assert (=> d!1060503 (= (get!12240 lt!1235740) (v!37531 lt!1235740))))

(assert (=> b!3598221 d!1060503))

(declare-fun d!1060505 () Bool)

(declare-fun lt!1236018 () Bool)

(assert (=> d!1060505 (= lt!1236018 (select (content!5396 (usedCharacters!814 (regex!5600 anOtherTypeRule!33))) lt!1235722))))

(declare-fun e!2226919 () Bool)

(assert (=> d!1060505 (= lt!1236018 e!2226919)))

(declare-fun res!1454098 () Bool)

(assert (=> d!1060505 (=> (not res!1454098) (not e!2226919))))

(assert (=> d!1060505 (= res!1454098 ((_ is Cons!37848) (usedCharacters!814 (regex!5600 anOtherTypeRule!33))))))

(assert (=> d!1060505 (= (contains!7264 (usedCharacters!814 (regex!5600 anOtherTypeRule!33)) lt!1235722) lt!1236018)))

(declare-fun b!3598772 () Bool)

(declare-fun e!2226920 () Bool)

(assert (=> b!3598772 (= e!2226919 e!2226920)))

(declare-fun res!1454097 () Bool)

(assert (=> b!3598772 (=> res!1454097 e!2226920)))

(assert (=> b!3598772 (= res!1454097 (= (h!43268 (usedCharacters!814 (regex!5600 anOtherTypeRule!33))) lt!1235722))))

(declare-fun b!3598773 () Bool)

(assert (=> b!3598773 (= e!2226920 (contains!7264 (t!291943 (usedCharacters!814 (regex!5600 anOtherTypeRule!33))) lt!1235722))))

(assert (= (and d!1060505 res!1454098) b!3598772))

(assert (= (and b!3598772 (not res!1454097)) b!3598773))

(assert (=> d!1060505 m!4093651))

(declare-fun m!4094447 () Bool)

(assert (=> d!1060505 m!4094447))

(declare-fun m!4094449 () Bool)

(assert (=> d!1060505 m!4094449))

(declare-fun m!4094451 () Bool)

(assert (=> b!3598773 m!4094451))

(assert (=> b!3598200 d!1060505))

(declare-fun b!3598774 () Bool)

(declare-fun e!2226923 () List!37972)

(declare-fun e!2226924 () List!37972)

(assert (=> b!3598774 (= e!2226923 e!2226924)))

(declare-fun c!622931 () Bool)

(assert (=> b!3598774 (= c!622931 ((_ is Union!10359) (regex!5600 anOtherTypeRule!33)))))

(declare-fun b!3598775 () Bool)

(declare-fun e!2226922 () List!37972)

(assert (=> b!3598775 (= e!2226922 Nil!37848)))

(declare-fun b!3598776 () Bool)

(declare-fun e!2226921 () List!37972)

(assert (=> b!3598776 (= e!2226921 (Cons!37848 (c!622820 (regex!5600 anOtherTypeRule!33)) Nil!37848))))

(declare-fun b!3598777 () Bool)

(declare-fun call!260314 () List!37972)

(assert (=> b!3598777 (= e!2226924 call!260314)))

(declare-fun bm!260307 () Bool)

(declare-fun call!260313 () List!37972)

(declare-fun call!260312 () List!37972)

(assert (=> bm!260307 (= call!260313 call!260312)))

(declare-fun bm!260309 () Bool)

(declare-fun call!260315 () List!37972)

(assert (=> bm!260309 (= call!260314 (++!9416 (ite c!622931 call!260315 call!260313) (ite c!622931 call!260313 call!260315)))))

(declare-fun b!3598778 () Bool)

(assert (=> b!3598778 (= e!2226923 call!260312)))

(declare-fun b!3598779 () Bool)

(assert (=> b!3598779 (= e!2226922 e!2226921)))

(declare-fun c!622930 () Bool)

(assert (=> b!3598779 (= c!622930 ((_ is ElementMatch!10359) (regex!5600 anOtherTypeRule!33)))))

(declare-fun c!622929 () Bool)

(declare-fun bm!260310 () Bool)

(assert (=> bm!260310 (= call!260312 (usedCharacters!814 (ite c!622929 (reg!10688 (regex!5600 anOtherTypeRule!33)) (ite c!622931 (regTwo!21231 (regex!5600 anOtherTypeRule!33)) (regOne!21230 (regex!5600 anOtherTypeRule!33))))))))

(declare-fun b!3598780 () Bool)

(assert (=> b!3598780 (= e!2226924 call!260314)))

(declare-fun b!3598781 () Bool)

(assert (=> b!3598781 (= c!622929 ((_ is Star!10359) (regex!5600 anOtherTypeRule!33)))))

(assert (=> b!3598781 (= e!2226921 e!2226923)))

(declare-fun d!1060507 () Bool)

(declare-fun c!622932 () Bool)

(assert (=> d!1060507 (= c!622932 (or ((_ is EmptyExpr!10359) (regex!5600 anOtherTypeRule!33)) ((_ is EmptyLang!10359) (regex!5600 anOtherTypeRule!33))))))

(assert (=> d!1060507 (= (usedCharacters!814 (regex!5600 anOtherTypeRule!33)) e!2226922)))

(declare-fun bm!260308 () Bool)

(assert (=> bm!260308 (= call!260315 (usedCharacters!814 (ite c!622931 (regOne!21231 (regex!5600 anOtherTypeRule!33)) (regTwo!21230 (regex!5600 anOtherTypeRule!33)))))))

(assert (= (and d!1060507 c!622932) b!3598775))

(assert (= (and d!1060507 (not c!622932)) b!3598779))

(assert (= (and b!3598779 c!622930) b!3598776))

(assert (= (and b!3598779 (not c!622930)) b!3598781))

(assert (= (and b!3598781 c!622929) b!3598778))

(assert (= (and b!3598781 (not c!622929)) b!3598774))

(assert (= (and b!3598774 c!622931) b!3598780))

(assert (= (and b!3598774 (not c!622931)) b!3598777))

(assert (= (or b!3598780 b!3598777) bm!260308))

(assert (= (or b!3598780 b!3598777) bm!260307))

(assert (= (or b!3598780 b!3598777) bm!260309))

(assert (= (or b!3598778 bm!260307) bm!260310))

(declare-fun m!4094453 () Bool)

(assert (=> bm!260309 m!4094453))

(declare-fun m!4094455 () Bool)

(assert (=> bm!260310 m!4094455))

(declare-fun m!4094457 () Bool)

(assert (=> bm!260308 m!4094457))

(assert (=> b!3598200 d!1060507))

(declare-fun d!1060509 () Bool)

(assert (=> d!1060509 (= (isEmpty!22323 rules!3307) ((_ is Nil!37849) rules!3307))))

(assert (=> b!3598217 d!1060509))

(declare-fun d!1060511 () Bool)

(declare-fun lt!1236019 () Bool)

(assert (=> d!1060511 (= lt!1236019 (select (content!5396 lt!1235743) lt!1235742))))

(declare-fun e!2226927 () Bool)

(assert (=> d!1060511 (= lt!1236019 e!2226927)))

(declare-fun res!1454100 () Bool)

(assert (=> d!1060511 (=> (not res!1454100) (not e!2226927))))

(assert (=> d!1060511 (= res!1454100 ((_ is Cons!37848) lt!1235743))))

(assert (=> d!1060511 (= (contains!7264 lt!1235743 lt!1235742) lt!1236019)))

(declare-fun b!3598784 () Bool)

(declare-fun e!2226928 () Bool)

(assert (=> b!3598784 (= e!2226927 e!2226928)))

(declare-fun res!1454099 () Bool)

(assert (=> b!3598784 (=> res!1454099 e!2226928)))

(assert (=> b!3598784 (= res!1454099 (= (h!43268 lt!1235743) lt!1235742))))

(declare-fun b!3598785 () Bool)

(assert (=> b!3598785 (= e!2226928 (contains!7264 (t!291943 lt!1235743) lt!1235742))))

(assert (= (and d!1060511 res!1454100) b!3598784))

(assert (= (and b!3598784 (not res!1454099)) b!3598785))

(assert (=> d!1060511 m!4094195))

(declare-fun m!4094463 () Bool)

(assert (=> d!1060511 m!4094463))

(declare-fun m!4094467 () Bool)

(assert (=> b!3598785 m!4094467))

(assert (=> b!3598218 d!1060511))

(declare-fun d!1060513 () Bool)

(assert (=> d!1060513 (= (head!7538 lt!1235735) (h!43268 lt!1235735))))

(assert (=> b!3598218 d!1060513))

(declare-fun d!1060515 () Bool)

(declare-fun res!1454103 () Bool)

(declare-fun e!2226932 () Bool)

(assert (=> d!1060515 (=> (not res!1454103) (not e!2226932))))

(declare-fun rulesValid!2135 (LexerInterface!5189 List!37973) Bool)

(assert (=> d!1060515 (= res!1454103 (rulesValid!2135 thiss!23823 rules!3307))))

(assert (=> d!1060515 (= (rulesInvariant!4586 thiss!23823 rules!3307) e!2226932)))

(declare-fun b!3598788 () Bool)

(declare-datatypes ((List!37976 0))(
  ( (Nil!37852) (Cons!37852 (h!43272 String!42484) (t!292067 List!37976)) )
))
(declare-fun noDuplicateTag!2131 (LexerInterface!5189 List!37973 List!37976) Bool)

(assert (=> b!3598788 (= e!2226932 (noDuplicateTag!2131 thiss!23823 rules!3307 Nil!37852))))

(assert (= (and d!1060515 res!1454103) b!3598788))

(declare-fun m!4094477 () Bool)

(assert (=> d!1060515 m!4094477))

(declare-fun m!4094479 () Bool)

(assert (=> b!3598788 m!4094479))

(assert (=> b!3598197 d!1060515))

(declare-fun d!1060521 () Bool)

(declare-fun res!1454108 () Bool)

(declare-fun e!2226937 () Bool)

(assert (=> d!1060521 (=> res!1454108 e!2226937)))

(assert (=> d!1060521 (= res!1454108 (not ((_ is Cons!37849) rules!3307)))))

(assert (=> d!1060521 (= (sepAndNonSepRulesDisjointChars!1770 rules!3307 rules!3307) e!2226937)))

(declare-fun b!3598793 () Bool)

(declare-fun e!2226938 () Bool)

(assert (=> b!3598793 (= e!2226937 e!2226938)))

(declare-fun res!1454109 () Bool)

(assert (=> b!3598793 (=> (not res!1454109) (not e!2226938))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!802 (Rule!11000 List!37973) Bool)

(assert (=> b!3598793 (= res!1454109 (ruleDisjointCharsFromAllFromOtherType!802 (h!43269 rules!3307) rules!3307))))

(declare-fun b!3598794 () Bool)

(assert (=> b!3598794 (= e!2226938 (sepAndNonSepRulesDisjointChars!1770 rules!3307 (t!291944 rules!3307)))))

(assert (= (and d!1060521 (not res!1454108)) b!3598793))

(assert (= (and b!3598793 res!1454109) b!3598794))

(declare-fun m!4094481 () Bool)

(assert (=> b!3598793 m!4094481))

(declare-fun m!4094483 () Bool)

(assert (=> b!3598794 m!4094483))

(assert (=> b!3598214 d!1060521))

(declare-fun d!1060523 () Bool)

(declare-fun lt!1236022 () Bool)

(assert (=> d!1060523 (= lt!1236022 (select (content!5397 rules!3307) rule!403))))

(declare-fun e!2226940 () Bool)

(assert (=> d!1060523 (= lt!1236022 e!2226940)))

(declare-fun res!1454111 () Bool)

(assert (=> d!1060523 (=> (not res!1454111) (not e!2226940))))

(assert (=> d!1060523 (= res!1454111 ((_ is Cons!37849) rules!3307))))

(assert (=> d!1060523 (= (contains!7263 rules!3307 rule!403) lt!1236022)))

(declare-fun b!3598795 () Bool)

(declare-fun e!2226939 () Bool)

(assert (=> b!3598795 (= e!2226940 e!2226939)))

(declare-fun res!1454110 () Bool)

(assert (=> b!3598795 (=> res!1454110 e!2226939)))

(assert (=> b!3598795 (= res!1454110 (= (h!43269 rules!3307) rule!403))))

(declare-fun b!3598796 () Bool)

(assert (=> b!3598796 (= e!2226939 (contains!7263 (t!291944 rules!3307) rule!403))))

(assert (= (and d!1060523 res!1454111) b!3598795))

(assert (= (and b!3598795 (not res!1454110)) b!3598796))

(assert (=> d!1060523 m!4094305))

(declare-fun m!4094485 () Bool)

(assert (=> d!1060523 m!4094485))

(declare-fun m!4094487 () Bool)

(assert (=> b!3598796 m!4094487))

(assert (=> b!3598193 d!1060523))

(declare-fun b!3598799 () Bool)

(declare-fun e!2226945 () Bool)

(declare-fun lt!1236023 () Bool)

(declare-fun call!260316 () Bool)

(assert (=> b!3598799 (= e!2226945 (= lt!1236023 call!260316))))

(declare-fun b!3598800 () Bool)

(declare-fun e!2226944 () Bool)

(assert (=> b!3598800 (= e!2226945 e!2226944)))

(declare-fun c!622933 () Bool)

(assert (=> b!3598800 (= c!622933 ((_ is EmptyLang!10359) (regex!5600 rule!403)))))

(declare-fun b!3598801 () Bool)

(declare-fun res!1454117 () Bool)

(declare-fun e!2226943 () Bool)

(assert (=> b!3598801 (=> res!1454117 e!2226943)))

(assert (=> b!3598801 (= res!1454117 (not ((_ is ElementMatch!10359) (regex!5600 rule!403))))))

(assert (=> b!3598801 (= e!2226944 e!2226943)))

(declare-fun b!3598802 () Bool)

(declare-fun e!2226947 () Bool)

(assert (=> b!3598802 (= e!2226947 (= (head!7538 lt!1235736) (c!622820 (regex!5600 rule!403))))))

(declare-fun b!3598803 () Bool)

(declare-fun e!2226949 () Bool)

(assert (=> b!3598803 (= e!2226943 e!2226949)))

(declare-fun res!1454121 () Bool)

(assert (=> b!3598803 (=> (not res!1454121) (not e!2226949))))

(assert (=> b!3598803 (= res!1454121 (not lt!1236023))))

(declare-fun b!3598805 () Bool)

(declare-fun e!2226948 () Bool)

(assert (=> b!3598805 (= e!2226948 (nullable!3578 (regex!5600 rule!403)))))

(declare-fun b!3598806 () Bool)

(declare-fun res!1454115 () Bool)

(assert (=> b!3598806 (=> res!1454115 e!2226943)))

(assert (=> b!3598806 (= res!1454115 e!2226947)))

(declare-fun res!1454114 () Bool)

(assert (=> b!3598806 (=> (not res!1454114) (not e!2226947))))

(assert (=> b!3598806 (= res!1454114 lt!1236023)))

(declare-fun b!3598807 () Bool)

(declare-fun res!1454118 () Bool)

(declare-fun e!2226946 () Bool)

(assert (=> b!3598807 (=> res!1454118 e!2226946)))

(assert (=> b!3598807 (= res!1454118 (not (isEmpty!22322 (tail!5577 lt!1235736))))))

(declare-fun b!3598808 () Bool)

(assert (=> b!3598808 (= e!2226946 (not (= (head!7538 lt!1235736) (c!622820 (regex!5600 rule!403)))))))

(declare-fun bm!260311 () Bool)

(assert (=> bm!260311 (= call!260316 (isEmpty!22322 lt!1235736))))

(declare-fun d!1060525 () Bool)

(assert (=> d!1060525 e!2226945))

(declare-fun c!622934 () Bool)

(assert (=> d!1060525 (= c!622934 ((_ is EmptyExpr!10359) (regex!5600 rule!403)))))

(assert (=> d!1060525 (= lt!1236023 e!2226948)))

(declare-fun c!622935 () Bool)

(assert (=> d!1060525 (= c!622935 (isEmpty!22322 lt!1235736))))

(assert (=> d!1060525 (validRegex!4737 (regex!5600 rule!403))))

(assert (=> d!1060525 (= (matchR!4928 (regex!5600 rule!403) lt!1235736) lt!1236023)))

(declare-fun b!3598804 () Bool)

(assert (=> b!3598804 (= e!2226949 e!2226946)))

(declare-fun res!1454120 () Bool)

(assert (=> b!3598804 (=> res!1454120 e!2226946)))

(assert (=> b!3598804 (= res!1454120 call!260316)))

(declare-fun b!3598809 () Bool)

(declare-fun res!1454116 () Bool)

(assert (=> b!3598809 (=> (not res!1454116) (not e!2226947))))

(assert (=> b!3598809 (= res!1454116 (isEmpty!22322 (tail!5577 lt!1235736)))))

(declare-fun b!3598810 () Bool)

(assert (=> b!3598810 (= e!2226944 (not lt!1236023))))

(declare-fun b!3598811 () Bool)

(assert (=> b!3598811 (= e!2226948 (matchR!4928 (derivativeStep!3127 (regex!5600 rule!403) (head!7538 lt!1235736)) (tail!5577 lt!1235736)))))

(declare-fun b!3598812 () Bool)

(declare-fun res!1454119 () Bool)

(assert (=> b!3598812 (=> (not res!1454119) (not e!2226947))))

(assert (=> b!3598812 (= res!1454119 (not call!260316))))

(assert (= (and d!1060525 c!622935) b!3598805))

(assert (= (and d!1060525 (not c!622935)) b!3598811))

(assert (= (and d!1060525 c!622934) b!3598799))

(assert (= (and d!1060525 (not c!622934)) b!3598800))

(assert (= (and b!3598800 c!622933) b!3598810))

(assert (= (and b!3598800 (not c!622933)) b!3598801))

(assert (= (and b!3598801 (not res!1454117)) b!3598806))

(assert (= (and b!3598806 res!1454114) b!3598812))

(assert (= (and b!3598812 res!1454119) b!3598809))

(assert (= (and b!3598809 res!1454116) b!3598802))

(assert (= (and b!3598806 (not res!1454115)) b!3598803))

(assert (= (and b!3598803 res!1454121) b!3598804))

(assert (= (and b!3598804 (not res!1454120)) b!3598807))

(assert (= (and b!3598807 (not res!1454118)) b!3598808))

(assert (= (or b!3598799 b!3598804 b!3598812) bm!260311))

(declare-fun m!4094489 () Bool)

(assert (=> b!3598805 m!4094489))

(assert (=> b!3598809 m!4094071))

(assert (=> b!3598809 m!4094071))

(declare-fun m!4094491 () Bool)

(assert (=> b!3598809 m!4094491))

(assert (=> b!3598807 m!4094071))

(assert (=> b!3598807 m!4094071))

(assert (=> b!3598807 m!4094491))

(assert (=> b!3598811 m!4094067))

(assert (=> b!3598811 m!4094067))

(declare-fun m!4094493 () Bool)

(assert (=> b!3598811 m!4094493))

(assert (=> b!3598811 m!4094071))

(assert (=> b!3598811 m!4094493))

(assert (=> b!3598811 m!4094071))

(declare-fun m!4094495 () Bool)

(assert (=> b!3598811 m!4094495))

(assert (=> b!3598802 m!4094067))

(declare-fun m!4094497 () Bool)

(assert (=> d!1060525 m!4094497))

(declare-fun m!4094499 () Bool)

(assert (=> d!1060525 m!4094499))

(assert (=> bm!260311 m!4094497))

(assert (=> b!3598808 m!4094067))

(assert (=> b!3598215 d!1060525))

(declare-fun d!1060527 () Bool)

(declare-fun res!1454126 () Bool)

(declare-fun e!2226955 () Bool)

(assert (=> d!1060527 (=> (not res!1454126) (not e!2226955))))

(assert (=> d!1060527 (= res!1454126 (validRegex!4737 (regex!5600 rule!403)))))

(assert (=> d!1060527 (= (ruleValid!1865 thiss!23823 rule!403) e!2226955)))

(declare-fun b!3598822 () Bool)

(declare-fun res!1454127 () Bool)

(assert (=> b!3598822 (=> (not res!1454127) (not e!2226955))))

(assert (=> b!3598822 (= res!1454127 (not (nullable!3578 (regex!5600 rule!403))))))

(declare-fun b!3598823 () Bool)

(assert (=> b!3598823 (= e!2226955 (not (= (tag!6286 rule!403) (String!42485 ""))))))

(assert (= (and d!1060527 res!1454126) b!3598822))

(assert (= (and b!3598822 res!1454127) b!3598823))

(assert (=> d!1060527 m!4094499))

(assert (=> b!3598822 m!4094489))

(assert (=> b!3598215 d!1060527))

(declare-fun d!1060529 () Bool)

(assert (=> d!1060529 (ruleValid!1865 thiss!23823 rule!403)))

(declare-fun lt!1236027 () Unit!53867)

(declare-fun choose!20967 (LexerInterface!5189 Rule!11000 List!37973) Unit!53867)

(assert (=> d!1060529 (= lt!1236027 (choose!20967 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1060529 (contains!7263 rules!3307 rule!403)))

(assert (=> d!1060529 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1020 thiss!23823 rule!403 rules!3307) lt!1236027)))

(declare-fun bs!570482 () Bool)

(assert (= bs!570482 d!1060529))

(assert (=> bs!570482 m!4093633))

(declare-fun m!4094509 () Bool)

(assert (=> bs!570482 m!4094509))

(assert (=> bs!570482 m!4093741))

(assert (=> b!3598215 d!1060529))

(declare-fun b!3598836 () Bool)

(declare-fun e!2226966 () Bool)

(declare-fun e!2226965 () Bool)

(assert (=> b!3598836 (= e!2226966 e!2226965)))

(declare-fun c!622941 () Bool)

(assert (=> b!3598836 (= c!622941 ((_ is IntegerValue!17491) (value!180060 token!511)))))

(declare-fun d!1060533 () Bool)

(declare-fun c!622940 () Bool)

(assert (=> d!1060533 (= c!622940 ((_ is IntegerValue!17490) (value!180060 token!511)))))

(assert (=> d!1060533 (= (inv!21 (value!180060 token!511)) e!2226966)))

(declare-fun b!3598837 () Bool)

(declare-fun res!1454132 () Bool)

(declare-fun e!2226967 () Bool)

(assert (=> b!3598837 (=> res!1454132 e!2226967)))

(assert (=> b!3598837 (= res!1454132 (not ((_ is IntegerValue!17492) (value!180060 token!511))))))

(assert (=> b!3598837 (= e!2226965 e!2226967)))

(declare-fun b!3598838 () Bool)

(declare-fun inv!15 (TokenValue!5830) Bool)

(assert (=> b!3598838 (= e!2226967 (inv!15 (value!180060 token!511)))))

(declare-fun b!3598839 () Bool)

(declare-fun inv!17 (TokenValue!5830) Bool)

(assert (=> b!3598839 (= e!2226965 (inv!17 (value!180060 token!511)))))

(declare-fun b!3598840 () Bool)

(declare-fun inv!16 (TokenValue!5830) Bool)

(assert (=> b!3598840 (= e!2226966 (inv!16 (value!180060 token!511)))))

(assert (= (and d!1060533 c!622940) b!3598840))

(assert (= (and d!1060533 (not c!622940)) b!3598836))

(assert (= (and b!3598836 c!622941) b!3598839))

(assert (= (and b!3598836 (not c!622941)) b!3598837))

(assert (= (and b!3598837 (not res!1454132)) b!3598838))

(declare-fun m!4094519 () Bool)

(assert (=> b!3598838 m!4094519))

(declare-fun m!4094521 () Bool)

(assert (=> b!3598839 m!4094521))

(declare-fun m!4094523 () Bool)

(assert (=> b!3598840 m!4094523))

(assert (=> b!3598194 d!1060533))

(declare-fun d!1060539 () Bool)

(assert (=> d!1060539 (not (matchR!4928 (regex!5600 rule!403) lt!1235736))))

(declare-fun lt!1236033 () Unit!53867)

(declare-fun choose!20968 (Regex!10359 List!37972 C!20904) Unit!53867)

(assert (=> d!1060539 (= lt!1236033 (choose!20968 (regex!5600 rule!403) lt!1235736 lt!1235742))))

(assert (=> d!1060539 (validRegex!4737 (regex!5600 rule!403))))

(assert (=> d!1060539 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!584 (regex!5600 rule!403) lt!1235736 lt!1235742) lt!1236033)))

(declare-fun bs!570484 () Bool)

(assert (= bs!570484 d!1060539))

(assert (=> bs!570484 m!4093631))

(declare-fun m!4094525 () Bool)

(assert (=> bs!570484 m!4094525))

(assert (=> bs!570484 m!4094499))

(assert (=> b!3598195 d!1060539))

(declare-fun d!1060541 () Bool)

(assert (=> d!1060541 (= (seqFromList!4153 lt!1235735) (fromListB!1917 lt!1235735))))

(declare-fun bs!570485 () Bool)

(assert (= bs!570485 d!1060541))

(declare-fun m!4094527 () Bool)

(assert (=> bs!570485 m!4094527))

(assert (=> b!3598212 d!1060541))

(declare-fun d!1060543 () Bool)

(declare-fun lt!1236036 () List!37972)

(assert (=> d!1060543 (= (++!9416 lt!1235735 lt!1236036) lt!1235719)))

(declare-fun e!2226992 () List!37972)

(assert (=> d!1060543 (= lt!1236036 e!2226992)))

(declare-fun c!622945 () Bool)

(assert (=> d!1060543 (= c!622945 ((_ is Cons!37848) lt!1235735))))

(assert (=> d!1060543 (>= (size!28840 lt!1235719) (size!28840 lt!1235735))))

(assert (=> d!1060543 (= (getSuffix!1538 lt!1235719 lt!1235735) lt!1236036)))

(declare-fun b!3598886 () Bool)

(assert (=> b!3598886 (= e!2226992 (getSuffix!1538 (tail!5577 lt!1235719) (t!291943 lt!1235735)))))

(declare-fun b!3598887 () Bool)

(assert (=> b!3598887 (= e!2226992 lt!1235719)))

(assert (= (and d!1060543 c!622945) b!3598886))

(assert (= (and d!1060543 (not c!622945)) b!3598887))

(declare-fun m!4094533 () Bool)

(assert (=> d!1060543 m!4094533))

(assert (=> d!1060543 m!4093815))

(assert (=> d!1060543 m!4093709))

(assert (=> b!3598886 m!4093817))

(assert (=> b!3598886 m!4093817))

(declare-fun m!4094535 () Bool)

(assert (=> b!3598886 m!4094535))

(assert (=> b!3598212 d!1060543))

(declare-fun d!1060545 () Bool)

(declare-fun lt!1236039 () Int)

(assert (=> d!1060545 (>= lt!1236039 0)))

(declare-fun e!2227001 () Int)

(assert (=> d!1060545 (= lt!1236039 e!2227001)))

(declare-fun c!622948 () Bool)

(assert (=> d!1060545 (= c!622948 ((_ is Nil!37848) lt!1235735))))

(assert (=> d!1060545 (= (size!28840 lt!1235735) lt!1236039)))

(declare-fun b!3598897 () Bool)

(assert (=> b!3598897 (= e!2227001 0)))

(declare-fun b!3598898 () Bool)

(assert (=> b!3598898 (= e!2227001 (+ 1 (size!28840 (t!291943 lt!1235735))))))

(assert (= (and d!1060545 c!622948) b!3598897))

(assert (= (and d!1060545 (not c!622948)) b!3598898))

(declare-fun m!4094537 () Bool)

(assert (=> b!3598898 m!4094537))

(assert (=> b!3598212 d!1060545))

(declare-fun b!3598921 () Bool)

(declare-fun e!2227012 () Bool)

(declare-fun lt!1236053 () Option!7830)

(assert (=> b!3598921 (= e!2227012 (= (size!28838 (_1!22002 (get!12240 lt!1236053))) (size!28840 (originalCharacters!6314 (_1!22002 (get!12240 lt!1236053))))))))

(declare-fun b!3598923 () Bool)

(declare-fun res!1454159 () Bool)

(assert (=> b!3598923 (=> (not res!1454159) (not e!2227012))))

(assert (=> b!3598923 (= res!1454159 (= (value!180060 (_1!22002 (get!12240 lt!1236053))) (apply!9106 (transformation!5600 (rule!8330 (_1!22002 (get!12240 lt!1236053)))) (seqFromList!4153 (originalCharacters!6314 (_1!22002 (get!12240 lt!1236053)))))))))

(declare-fun b!3598924 () Bool)

(declare-fun e!2227014 () Bool)

(declare-datatypes ((tuple2!37744 0))(
  ( (tuple2!37745 (_1!22006 List!37972) (_2!22006 List!37972)) )
))
(declare-fun findLongestMatchInner!985 (Regex!10359 List!37972 Int List!37972 List!37972 Int) tuple2!37744)

(assert (=> b!3598924 (= e!2227014 (matchR!4928 (regex!5600 (rule!8330 (_1!22002 lt!1235723))) (_1!22006 (findLongestMatchInner!985 (regex!5600 (rule!8330 (_1!22002 lt!1235723))) Nil!37848 (size!28840 Nil!37848) lt!1235719 lt!1235719 (size!28840 lt!1235719)))))))

(declare-fun b!3598925 () Bool)

(declare-fun res!1454156 () Bool)

(assert (=> b!3598925 (=> (not res!1454156) (not e!2227012))))

(assert (=> b!3598925 (= res!1454156 (= (rule!8330 (_1!22002 (get!12240 lt!1236053))) (rule!8330 (_1!22002 lt!1235723))))))

(declare-fun b!3598926 () Bool)

(declare-fun e!2227011 () Option!7830)

(assert (=> b!3598926 (= e!2227011 None!7829)))

(declare-fun b!3598927 () Bool)

(declare-fun lt!1236054 () tuple2!37744)

(assert (=> b!3598927 (= e!2227011 (Some!7829 (tuple2!37737 (Token!10567 (apply!9106 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))) (seqFromList!4153 (_1!22006 lt!1236054))) (rule!8330 (_1!22002 lt!1235723)) (size!28839 (seqFromList!4153 (_1!22006 lt!1236054))) (_1!22006 lt!1236054)) (_2!22006 lt!1236054))))))

(declare-fun lt!1236052 () Unit!53867)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!958 (Regex!10359 List!37972) Unit!53867)

(assert (=> b!3598927 (= lt!1236052 (longestMatchIsAcceptedByMatchOrIsEmpty!958 (regex!5600 (rule!8330 (_1!22002 lt!1235723))) lt!1235719))))

(declare-fun res!1454154 () Bool)

(assert (=> b!3598927 (= res!1454154 (isEmpty!22322 (_1!22006 (findLongestMatchInner!985 (regex!5600 (rule!8330 (_1!22002 lt!1235723))) Nil!37848 (size!28840 Nil!37848) lt!1235719 lt!1235719 (size!28840 lt!1235719)))))))

(assert (=> b!3598927 (=> res!1454154 e!2227014)))

(assert (=> b!3598927 e!2227014))

(declare-fun lt!1236050 () Unit!53867)

(assert (=> b!3598927 (= lt!1236050 lt!1236052)))

(declare-fun lt!1236051 () Unit!53867)

(assert (=> b!3598927 (= lt!1236051 (lemmaSemiInverse!1357 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))) (seqFromList!4153 (_1!22006 lt!1236054))))))

(declare-fun b!3598928 () Bool)

(declare-fun res!1454160 () Bool)

(assert (=> b!3598928 (=> (not res!1454160) (not e!2227012))))

(assert (=> b!3598928 (= res!1454160 (< (size!28840 (_2!22002 (get!12240 lt!1236053))) (size!28840 lt!1235719)))))

(declare-fun b!3598929 () Bool)

(declare-fun e!2227013 () Bool)

(assert (=> b!3598929 (= e!2227013 e!2227012)))

(declare-fun res!1454155 () Bool)

(assert (=> b!3598929 (=> (not res!1454155) (not e!2227012))))

(assert (=> b!3598929 (= res!1454155 (matchR!4928 (regex!5600 (rule!8330 (_1!22002 lt!1235723))) (list!13936 (charsOf!3614 (_1!22002 (get!12240 lt!1236053))))))))

(declare-fun d!1060547 () Bool)

(assert (=> d!1060547 e!2227013))

(declare-fun res!1454158 () Bool)

(assert (=> d!1060547 (=> res!1454158 e!2227013)))

(assert (=> d!1060547 (= res!1454158 (isEmpty!22327 lt!1236053))))

(assert (=> d!1060547 (= lt!1236053 e!2227011)))

(declare-fun c!622951 () Bool)

(assert (=> d!1060547 (= c!622951 (isEmpty!22322 (_1!22006 lt!1236054)))))

(declare-fun findLongestMatch!900 (Regex!10359 List!37972) tuple2!37744)

(assert (=> d!1060547 (= lt!1236054 (findLongestMatch!900 (regex!5600 (rule!8330 (_1!22002 lt!1235723))) lt!1235719))))

(assert (=> d!1060547 (ruleValid!1865 thiss!23823 (rule!8330 (_1!22002 lt!1235723)))))

(assert (=> d!1060547 (= (maxPrefixOneRule!1867 thiss!23823 (rule!8330 (_1!22002 lt!1235723)) lt!1235719) lt!1236053)))

(declare-fun b!3598922 () Bool)

(declare-fun res!1454157 () Bool)

(assert (=> b!3598922 (=> (not res!1454157) (not e!2227012))))

(assert (=> b!3598922 (= res!1454157 (= (++!9416 (list!13936 (charsOf!3614 (_1!22002 (get!12240 lt!1236053)))) (_2!22002 (get!12240 lt!1236053))) lt!1235719))))

(assert (= (and d!1060547 c!622951) b!3598926))

(assert (= (and d!1060547 (not c!622951)) b!3598927))

(assert (= (and b!3598927 (not res!1454154)) b!3598924))

(assert (= (and d!1060547 (not res!1454158)) b!3598929))

(assert (= (and b!3598929 res!1454155) b!3598922))

(assert (= (and b!3598922 res!1454157) b!3598928))

(assert (= (and b!3598928 res!1454160) b!3598925))

(assert (= (and b!3598925 res!1454156) b!3598923))

(assert (= (and b!3598923 res!1454159) b!3598921))

(declare-fun m!4094543 () Bool)

(assert (=> b!3598921 m!4094543))

(declare-fun m!4094545 () Bool)

(assert (=> b!3598921 m!4094545))

(assert (=> b!3598925 m!4094543))

(assert (=> b!3598928 m!4094543))

(declare-fun m!4094547 () Bool)

(assert (=> b!3598928 m!4094547))

(assert (=> b!3598928 m!4093815))

(declare-fun m!4094549 () Bool)

(assert (=> b!3598924 m!4094549))

(assert (=> b!3598924 m!4093815))

(assert (=> b!3598924 m!4094549))

(assert (=> b!3598924 m!4093815))

(declare-fun m!4094551 () Bool)

(assert (=> b!3598924 m!4094551))

(declare-fun m!4094553 () Bool)

(assert (=> b!3598924 m!4094553))

(assert (=> b!3598929 m!4094543))

(declare-fun m!4094555 () Bool)

(assert (=> b!3598929 m!4094555))

(assert (=> b!3598929 m!4094555))

(declare-fun m!4094557 () Bool)

(assert (=> b!3598929 m!4094557))

(assert (=> b!3598929 m!4094557))

(declare-fun m!4094559 () Bool)

(assert (=> b!3598929 m!4094559))

(declare-fun m!4094561 () Bool)

(assert (=> b!3598927 m!4094561))

(declare-fun m!4094563 () Bool)

(assert (=> b!3598927 m!4094563))

(assert (=> b!3598927 m!4094561))

(declare-fun m!4094565 () Bool)

(assert (=> b!3598927 m!4094565))

(assert (=> b!3598927 m!4094549))

(assert (=> b!3598927 m!4093815))

(assert (=> b!3598927 m!4094551))

(assert (=> b!3598927 m!4094561))

(declare-fun m!4094567 () Bool)

(assert (=> b!3598927 m!4094567))

(assert (=> b!3598927 m!4093815))

(declare-fun m!4094569 () Bool)

(assert (=> b!3598927 m!4094569))

(declare-fun m!4094571 () Bool)

(assert (=> b!3598927 m!4094571))

(assert (=> b!3598927 m!4094561))

(assert (=> b!3598927 m!4094549))

(assert (=> b!3598923 m!4094543))

(declare-fun m!4094573 () Bool)

(assert (=> b!3598923 m!4094573))

(assert (=> b!3598923 m!4094573))

(declare-fun m!4094575 () Bool)

(assert (=> b!3598923 m!4094575))

(declare-fun m!4094577 () Bool)

(assert (=> d!1060547 m!4094577))

(declare-fun m!4094579 () Bool)

(assert (=> d!1060547 m!4094579))

(declare-fun m!4094581 () Bool)

(assert (=> d!1060547 m!4094581))

(declare-fun m!4094583 () Bool)

(assert (=> d!1060547 m!4094583))

(assert (=> b!3598922 m!4094543))

(assert (=> b!3598922 m!4094555))

(assert (=> b!3598922 m!4094555))

(assert (=> b!3598922 m!4094557))

(assert (=> b!3598922 m!4094557))

(declare-fun m!4094585 () Bool)

(assert (=> b!3598922 m!4094585))

(assert (=> b!3598212 d!1060547))

(declare-fun d!1060549 () Bool)

(assert (=> d!1060549 (= (apply!9106 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))) (seqFromList!4153 lt!1235735)) (dynLambda!16321 (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) (seqFromList!4153 lt!1235735)))))

(declare-fun b_lambda!106415 () Bool)

(assert (=> (not b_lambda!106415) (not d!1060549)))

(declare-fun t!292046 () Bool)

(declare-fun tb!205837 () Bool)

(assert (=> (and b!3598213 (= (toValue!7884 (transformation!5600 (rule!8330 token!511))) (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!292046) tb!205837))

(declare-fun result!250912 () Bool)

(assert (=> tb!205837 (= result!250912 (inv!21 (dynLambda!16321 (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723)))) (seqFromList!4153 lt!1235735))))))

(declare-fun m!4094587 () Bool)

(assert (=> tb!205837 m!4094587))

(assert (=> d!1060549 t!292046))

(declare-fun b_and!261231 () Bool)

(assert (= b_and!261179 (and (=> t!292046 result!250912) b_and!261231)))

(declare-fun t!292048 () Bool)

(declare-fun tb!205839 () Bool)

(assert (=> (and b!3598196 (= (toValue!7884 (transformation!5600 (h!43269 rules!3307))) (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!292048) tb!205839))

(declare-fun result!250914 () Bool)

(assert (= result!250914 result!250912))

(assert (=> d!1060549 t!292048))

(declare-fun b_and!261233 () Bool)

(assert (= b_and!261181 (and (=> t!292048 result!250914) b_and!261233)))

(declare-fun tb!205841 () Bool)

(declare-fun t!292050 () Bool)

(assert (=> (and b!3598219 (= (toValue!7884 (transformation!5600 anOtherTypeRule!33)) (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!292050) tb!205841))

(declare-fun result!250916 () Bool)

(assert (= result!250916 result!250912))

(assert (=> d!1060549 t!292050))

(declare-fun b_and!261235 () Bool)

(assert (= b_and!261183 (and (=> t!292050 result!250916) b_and!261235)))

(declare-fun t!292052 () Bool)

(declare-fun tb!205843 () Bool)

(assert (=> (and b!3598216 (= (toValue!7884 (transformation!5600 rule!403)) (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!292052) tb!205843))

(declare-fun result!250918 () Bool)

(assert (= result!250918 result!250912))

(assert (=> d!1060549 t!292052))

(declare-fun b_and!261237 () Bool)

(assert (= b_and!261185 (and (=> t!292052 result!250918) b_and!261237)))

(assert (=> d!1060549 m!4093701))

(declare-fun m!4094589 () Bool)

(assert (=> d!1060549 m!4094589))

(assert (=> b!3598212 d!1060549))

(declare-fun d!1060551 () Bool)

(assert (=> d!1060551 (= (_2!22002 lt!1235723) lt!1235745)))

(declare-fun lt!1236057 () Unit!53867)

(declare-fun choose!20969 (List!37972 List!37972 List!37972 List!37972 List!37972) Unit!53867)

(assert (=> d!1060551 (= lt!1236057 (choose!20969 lt!1235735 (_2!22002 lt!1235723) lt!1235735 lt!1235745 lt!1235719))))

(assert (=> d!1060551 (isPrefix!2963 lt!1235735 lt!1235719)))

(assert (=> d!1060551 (= (lemmaSamePrefixThenSameSuffix!1318 lt!1235735 (_2!22002 lt!1235723) lt!1235735 lt!1235745 lt!1235719) lt!1236057)))

(declare-fun bs!570486 () Bool)

(assert (= bs!570486 d!1060551))

(declare-fun m!4094591 () Bool)

(assert (=> bs!570486 m!4094591))

(assert (=> bs!570486 m!4093729))

(assert (=> b!3598212 d!1060551))

(declare-fun d!1060553 () Bool)

(assert (=> d!1060553 (= (maxPrefixOneRule!1867 thiss!23823 (rule!8330 (_1!22002 lt!1235723)) lt!1235719) (Some!7829 (tuple2!37737 (Token!10567 (apply!9106 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))) (seqFromList!4153 lt!1235735)) (rule!8330 (_1!22002 lt!1235723)) (size!28840 lt!1235735) lt!1235735) (_2!22002 lt!1235723))))))

(declare-fun lt!1236060 () Unit!53867)

(declare-fun choose!20970 (LexerInterface!5189 List!37973 List!37972 List!37972 List!37972 Rule!11000) Unit!53867)

(assert (=> d!1060553 (= lt!1236060 (choose!20970 thiss!23823 rules!3307 lt!1235735 lt!1235719 (_2!22002 lt!1235723) (rule!8330 (_1!22002 lt!1235723))))))

(assert (=> d!1060553 (not (isEmpty!22323 rules!3307))))

(assert (=> d!1060553 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!939 thiss!23823 rules!3307 lt!1235735 lt!1235719 (_2!22002 lt!1235723) (rule!8330 (_1!22002 lt!1235723))) lt!1236060)))

(declare-fun bs!570487 () Bool)

(assert (= bs!570487 d!1060553))

(assert (=> bs!570487 m!4093709))

(assert (=> bs!570487 m!4093699))

(assert (=> bs!570487 m!4093701))

(declare-fun m!4094593 () Bool)

(assert (=> bs!570487 m!4094593))

(assert (=> bs!570487 m!4093629))

(assert (=> bs!570487 m!4093701))

(assert (=> bs!570487 m!4093705))

(assert (=> b!3598212 d!1060553))

(declare-fun d!1060555 () Bool)

(declare-fun res!1454165 () Bool)

(declare-fun e!2227018 () Bool)

(assert (=> d!1060555 (=> (not res!1454165) (not e!2227018))))

(assert (=> d!1060555 (= res!1454165 (not (isEmpty!22322 (originalCharacters!6314 token!511))))))

(assert (=> d!1060555 (= (inv!51202 token!511) e!2227018)))

(declare-fun b!3598934 () Bool)

(declare-fun res!1454166 () Bool)

(assert (=> b!3598934 (=> (not res!1454166) (not e!2227018))))

(assert (=> b!3598934 (= res!1454166 (= (originalCharacters!6314 token!511) (list!13936 (dynLambda!16317 (toChars!7743 (transformation!5600 (rule!8330 token!511))) (value!180060 token!511)))))))

(declare-fun b!3598935 () Bool)

(assert (=> b!3598935 (= e!2227018 (= (size!28838 token!511) (size!28840 (originalCharacters!6314 token!511))))))

(assert (= (and d!1060555 res!1454165) b!3598934))

(assert (= (and b!3598934 res!1454166) b!3598935))

(declare-fun b_lambda!106417 () Bool)

(assert (=> (not b_lambda!106417) (not b!3598934)))

(assert (=> b!3598934 t!291978))

(declare-fun b_and!261239 () Bool)

(assert (= b_and!261171 (and (=> t!291978 result!250836) b_and!261239)))

(assert (=> b!3598934 t!291980))

(declare-fun b_and!261241 () Bool)

(assert (= b_and!261173 (and (=> t!291980 result!250838) b_and!261241)))

(assert (=> b!3598934 t!291982))

(declare-fun b_and!261243 () Bool)

(assert (= b_and!261175 (and (=> t!291982 result!250840) b_and!261243)))

(assert (=> b!3598934 t!291984))

(declare-fun b_and!261245 () Bool)

(assert (= b_and!261177 (and (=> t!291984 result!250842) b_and!261245)))

(declare-fun m!4094595 () Bool)

(assert (=> d!1060555 m!4094595))

(assert (=> b!3598934 m!4094263))

(assert (=> b!3598934 m!4094263))

(declare-fun m!4094597 () Bool)

(assert (=> b!3598934 m!4094597))

(declare-fun m!4094599 () Bool)

(assert (=> b!3598935 m!4094599))

(assert (=> start!334342 d!1060555))

(declare-fun b!3598949 () Bool)

(declare-fun e!2227021 () Bool)

(declare-fun tp!1101006 () Bool)

(declare-fun tp!1101007 () Bool)

(assert (=> b!3598949 (= e!2227021 (and tp!1101006 tp!1101007))))

(declare-fun b!3598948 () Bool)

(declare-fun tp!1101009 () Bool)

(assert (=> b!3598948 (= e!2227021 tp!1101009)))

(declare-fun b!3598946 () Bool)

(assert (=> b!3598946 (= e!2227021 tp_is_empty!17801)))

(assert (=> b!3598220 (= tp!1100935 e!2227021)))

(declare-fun b!3598947 () Bool)

(declare-fun tp!1101008 () Bool)

(declare-fun tp!1101005 () Bool)

(assert (=> b!3598947 (= e!2227021 (and tp!1101008 tp!1101005))))

(assert (= (and b!3598220 ((_ is ElementMatch!10359) (regex!5600 (rule!8330 token!511)))) b!3598946))

(assert (= (and b!3598220 ((_ is Concat!16190) (regex!5600 (rule!8330 token!511)))) b!3598947))

(assert (= (and b!3598220 ((_ is Star!10359) (regex!5600 (rule!8330 token!511)))) b!3598948))

(assert (= (and b!3598220 ((_ is Union!10359) (regex!5600 (rule!8330 token!511)))) b!3598949))

(declare-fun b!3598954 () Bool)

(declare-fun e!2227024 () Bool)

(declare-fun tp!1101012 () Bool)

(assert (=> b!3598954 (= e!2227024 (and tp_is_empty!17801 tp!1101012))))

(assert (=> b!3598194 (= tp!1100934 e!2227024)))

(assert (= (and b!3598194 ((_ is Cons!37848) (originalCharacters!6314 token!511))) b!3598954))

(declare-fun b!3598958 () Bool)

(declare-fun e!2227025 () Bool)

(declare-fun tp!1101014 () Bool)

(declare-fun tp!1101015 () Bool)

(assert (=> b!3598958 (= e!2227025 (and tp!1101014 tp!1101015))))

(declare-fun b!3598957 () Bool)

(declare-fun tp!1101017 () Bool)

(assert (=> b!3598957 (= e!2227025 tp!1101017)))

(declare-fun b!3598955 () Bool)

(assert (=> b!3598955 (= e!2227025 tp_is_empty!17801)))

(assert (=> b!3598222 (= tp!1100938 e!2227025)))

(declare-fun b!3598956 () Bool)

(declare-fun tp!1101016 () Bool)

(declare-fun tp!1101013 () Bool)

(assert (=> b!3598956 (= e!2227025 (and tp!1101016 tp!1101013))))

(assert (= (and b!3598222 ((_ is ElementMatch!10359) (regex!5600 (h!43269 rules!3307)))) b!3598955))

(assert (= (and b!3598222 ((_ is Concat!16190) (regex!5600 (h!43269 rules!3307)))) b!3598956))

(assert (= (and b!3598222 ((_ is Star!10359) (regex!5600 (h!43269 rules!3307)))) b!3598957))

(assert (= (and b!3598222 ((_ is Union!10359) (regex!5600 (h!43269 rules!3307)))) b!3598958))

(declare-fun b!3598969 () Bool)

(declare-fun b_free!93069 () Bool)

(declare-fun b_next!93773 () Bool)

(assert (=> b!3598969 (= b_free!93069 (not b_next!93773))))

(declare-fun tb!205845 () Bool)

(declare-fun t!292054 () Bool)

(assert (=> (and b!3598969 (= (toValue!7884 (transformation!5600 (h!43269 (t!291944 rules!3307)))) (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!292054) tb!205845))

(declare-fun result!250926 () Bool)

(assert (= result!250926 result!250844))

(assert (=> d!1060453 t!292054))

(declare-fun tb!205847 () Bool)

(declare-fun t!292056 () Bool)

(assert (=> (and b!3598969 (= (toValue!7884 (transformation!5600 (h!43269 (t!291944 rules!3307)))) (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!292056) tb!205847))

(declare-fun result!250928 () Bool)

(assert (= result!250928 result!250912))

(assert (=> d!1060549 t!292056))

(assert (=> d!1060491 t!292054))

(declare-fun t!292058 () Bool)

(declare-fun tb!205849 () Bool)

(assert (=> (and b!3598969 (= (toValue!7884 (transformation!5600 (h!43269 (t!291944 rules!3307)))) (toValue!7884 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!292058) tb!205849))

(declare-fun result!250930 () Bool)

(assert (= result!250930 result!250854))

(assert (=> d!1060453 t!292058))

(assert (=> d!1060497 t!292054))

(declare-fun tp!1101026 () Bool)

(declare-fun b_and!261247 () Bool)

(assert (=> b!3598969 (= tp!1101026 (and (=> t!292054 result!250926) (=> t!292056 result!250928) (=> t!292058 result!250930) b_and!261247))))

(declare-fun b_free!93071 () Bool)

(declare-fun b_next!93775 () Bool)

(assert (=> b!3598969 (= b_free!93071 (not b_next!93775))))

(declare-fun t!292060 () Bool)

(declare-fun tb!205851 () Bool)

(assert (=> (and b!3598969 (= (toChars!7743 (transformation!5600 (h!43269 (t!291944 rules!3307)))) (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!292060) tb!205851))

(declare-fun result!250932 () Bool)

(assert (= result!250932 result!250818))

(assert (=> d!1060317 t!292060))

(declare-fun tb!205853 () Bool)

(declare-fun t!292062 () Bool)

(assert (=> (and b!3598969 (= (toChars!7743 (transformation!5600 (h!43269 (t!291944 rules!3307)))) (toChars!7743 (transformation!5600 (rule!8330 token!511)))) t!292062) tb!205853))

(declare-fun result!250934 () Bool)

(assert (= result!250934 result!250836))

(assert (=> d!1060421 t!292062))

(declare-fun t!292064 () Bool)

(declare-fun tb!205855 () Bool)

(assert (=> (and b!3598969 (= (toChars!7743 (transformation!5600 (h!43269 (t!291944 rules!3307)))) (toChars!7743 (transformation!5600 (rule!8330 (_1!22002 lt!1235723))))) t!292064) tb!205855))

(declare-fun result!250936 () Bool)

(assert (= result!250936 result!250862))

(assert (=> d!1060497 t!292064))

(assert (=> b!3598934 t!292062))

(declare-fun b_and!261249 () Bool)

(declare-fun tp!1101029 () Bool)

(assert (=> b!3598969 (= tp!1101029 (and (=> t!292060 result!250932) (=> t!292062 result!250934) (=> t!292064 result!250936) b_and!261249))))

(declare-fun e!2227037 () Bool)

(assert (=> b!3598969 (= e!2227037 (and tp!1101026 tp!1101029))))

(declare-fun tp!1101028 () Bool)

(declare-fun b!3598968 () Bool)

(declare-fun e!2227035 () Bool)

(assert (=> b!3598968 (= e!2227035 (and tp!1101028 (inv!51198 (tag!6286 (h!43269 (t!291944 rules!3307)))) (inv!51201 (transformation!5600 (h!43269 (t!291944 rules!3307)))) e!2227037))))

(declare-fun b!3598967 () Bool)

(declare-fun e!2227034 () Bool)

(declare-fun tp!1101027 () Bool)

(assert (=> b!3598967 (= e!2227034 (and e!2227035 tp!1101027))))

(assert (=> b!3598201 (= tp!1100926 e!2227034)))

(assert (= b!3598968 b!3598969))

(assert (= b!3598967 b!3598968))

(assert (= (and b!3598201 ((_ is Cons!37849) (t!291944 rules!3307))) b!3598967))

(declare-fun m!4094601 () Bool)

(assert (=> b!3598968 m!4094601))

(declare-fun m!4094603 () Bool)

(assert (=> b!3598968 m!4094603))

(declare-fun b!3598973 () Bool)

(declare-fun e!2227038 () Bool)

(declare-fun tp!1101031 () Bool)

(declare-fun tp!1101032 () Bool)

(assert (=> b!3598973 (= e!2227038 (and tp!1101031 tp!1101032))))

(declare-fun b!3598972 () Bool)

(declare-fun tp!1101034 () Bool)

(assert (=> b!3598972 (= e!2227038 tp!1101034)))

(declare-fun b!3598970 () Bool)

(assert (=> b!3598970 (= e!2227038 tp_is_empty!17801)))

(assert (=> b!3598202 (= tp!1100931 e!2227038)))

(declare-fun b!3598971 () Bool)

(declare-fun tp!1101033 () Bool)

(declare-fun tp!1101030 () Bool)

(assert (=> b!3598971 (= e!2227038 (and tp!1101033 tp!1101030))))

(assert (= (and b!3598202 ((_ is ElementMatch!10359) (regex!5600 rule!403))) b!3598970))

(assert (= (and b!3598202 ((_ is Concat!16190) (regex!5600 rule!403))) b!3598971))

(assert (= (and b!3598202 ((_ is Star!10359) (regex!5600 rule!403))) b!3598972))

(assert (= (and b!3598202 ((_ is Union!10359) (regex!5600 rule!403))) b!3598973))

(declare-fun b!3598974 () Bool)

(declare-fun e!2227039 () Bool)

(declare-fun tp!1101035 () Bool)

(assert (=> b!3598974 (= e!2227039 (and tp_is_empty!17801 tp!1101035))))

(assert (=> b!3598224 (= tp!1100924 e!2227039)))

(assert (= (and b!3598224 ((_ is Cons!37848) (t!291943 suffix!1395))) b!3598974))

(declare-fun b!3598978 () Bool)

(declare-fun e!2227040 () Bool)

(declare-fun tp!1101037 () Bool)

(declare-fun tp!1101038 () Bool)

(assert (=> b!3598978 (= e!2227040 (and tp!1101037 tp!1101038))))

(declare-fun b!3598977 () Bool)

(declare-fun tp!1101040 () Bool)

(assert (=> b!3598977 (= e!2227040 tp!1101040)))

(declare-fun b!3598975 () Bool)

(assert (=> b!3598975 (= e!2227040 tp_is_empty!17801)))

(assert (=> b!3598208 (= tp!1100932 e!2227040)))

(declare-fun b!3598976 () Bool)

(declare-fun tp!1101039 () Bool)

(declare-fun tp!1101036 () Bool)

(assert (=> b!3598976 (= e!2227040 (and tp!1101039 tp!1101036))))

(assert (= (and b!3598208 ((_ is ElementMatch!10359) (regex!5600 anOtherTypeRule!33))) b!3598975))

(assert (= (and b!3598208 ((_ is Concat!16190) (regex!5600 anOtherTypeRule!33))) b!3598976))

(assert (= (and b!3598208 ((_ is Star!10359) (regex!5600 anOtherTypeRule!33))) b!3598977))

(assert (= (and b!3598208 ((_ is Union!10359) (regex!5600 anOtherTypeRule!33))) b!3598978))

(declare-fun b_lambda!106419 () Bool)

(assert (= b_lambda!106387 (or (and b!3598196 b_free!93055 (= (toChars!7743 (transformation!5600 (h!43269 rules!3307))) (toChars!7743 (transformation!5600 (rule!8330 token!511))))) (and b!3598216 b_free!93063 (= (toChars!7743 (transformation!5600 rule!403)) (toChars!7743 (transformation!5600 (rule!8330 token!511))))) (and b!3598219 b_free!93059 (= (toChars!7743 (transformation!5600 anOtherTypeRule!33)) (toChars!7743 (transformation!5600 (rule!8330 token!511))))) (and b!3598213 b_free!93051) (and b!3598969 b_free!93071 (= (toChars!7743 (transformation!5600 (h!43269 (t!291944 rules!3307)))) (toChars!7743 (transformation!5600 (rule!8330 token!511))))) b_lambda!106419)))

(declare-fun b_lambda!106421 () Bool)

(assert (= b_lambda!106417 (or (and b!3598196 b_free!93055 (= (toChars!7743 (transformation!5600 (h!43269 rules!3307))) (toChars!7743 (transformation!5600 (rule!8330 token!511))))) (and b!3598216 b_free!93063 (= (toChars!7743 (transformation!5600 rule!403)) (toChars!7743 (transformation!5600 (rule!8330 token!511))))) (and b!3598219 b_free!93059 (= (toChars!7743 (transformation!5600 anOtherTypeRule!33)) (toChars!7743 (transformation!5600 (rule!8330 token!511))))) (and b!3598213 b_free!93051) (and b!3598969 b_free!93071 (= (toChars!7743 (transformation!5600 (h!43269 (t!291944 rules!3307)))) (toChars!7743 (transformation!5600 (rule!8330 token!511))))) b_lambda!106421)))

(check-sat (not d!1060317) (not d!1060529) (not b!3598312) (not b!3598470) (not bm!260311) (not b!3598468) (not b!3598644) (not b!3598898) (not b!3598766) (not b!3598886) (not b!3598531) (not b!3598793) (not b!3598602) b_and!261235 (not b!3598594) (not d!1060421) (not b!3598935) (not b!3598601) (not b!3598469) (not b!3598788) (not d!1060511) (not b!3598807) (not b!3598471) (not bm!260281) (not b!3598978) (not b!3598840) (not b_lambda!106397) (not b_next!93761) (not b!3598287) b_and!261241 (not b!3598291) (not d!1060495) (not tb!205753) (not b!3598977) (not b!3598599) (not b!3598968) (not d!1060501) (not b!3598289) tp_is_empty!17801 (not d!1060555) (not d!1060399) (not d!1060397) (not b!3598929) (not b!3598958) (not d!1060515) (not b!3598313) (not b!3598948) (not d!1060389) (not b!3598475) (not bm!260283) (not bm!260309) (not b!3598285) (not b!3598972) (not b!3598535) (not b!3598282) (not b!3598529) (not b!3598974) (not d!1060297) (not b!3598309) (not b!3598954) (not b!3598934) (not b_lambda!106391) (not b_next!93765) (not b!3598976) (not b!3598344) (not d!1060527) (not b!3598624) (not d!1060539) (not d!1060329) b_and!261243 (not d!1060553) (not b!3598597) (not b_next!93767) (not b!3598838) (not b!3598288) (not b!3598663) b_and!261237 (not d!1060547) (not b!3598947) (not b!3598805) (not b_next!93775) (not b!3598643) (not b_next!93763) (not d!1060427) (not b!3598641) (not d!1060443) (not b!3598645) (not b!3598957) (not bm!260308) (not b!3598297) (not b!3598785) (not b_lambda!106395) (not d!1060333) (not d!1060451) (not b!3598924) (not b!3598543) (not b!3598307) (not d!1060453) (not b!3598530) (not b_next!93755) (not b!3598384) (not b!3598598) b_and!261245 (not b_next!93753) (not b!3598502) (not d!1060419) (not b!3598949) (not b_lambda!106421) b_and!261249 (not d!1060447) (not b_lambda!106399) (not b!3598808) (not d!1060523) (not d!1060505) (not tb!205769) (not b!3598927) (not d!1060493) (not d!1060331) (not d!1060377) (not b!3598596) (not b_lambda!106415) (not d!1060335) (not bm!260280) (not d!1060497) (not d!1060359) (not b!3598508) (not d!1060543) (not d!1060435) (not d!1060437) (not b!3598472) (not b!3598659) (not b!3598383) (not b!3598769) (not d!1060313) (not b!3598796) (not tb!205837) (not b!3598811) (not b!3598647) (not b_next!93757) (not b!3598923) (not b!3598809) (not tb!205793) (not b!3598308) (not bm!260310) (not tb!205777) (not d!1060541) (not b_lambda!106419) b_and!261239 (not b!3598603) (not b!3598971) (not b!3598773) (not b!3598345) (not b!3598925) (not b!3598506) (not b!3598967) (not b!3598921) (not b!3598660) (not b!3598536) (not b!3598661) (not b!3598794) (not b!3598973) b_and!261233 (not d!1060525) (not b!3598311) (not b!3598922) (not b!3598638) (not bm!260264) (not b!3598507) (not bm!260270) (not b!3598839) (not b!3598473) (not d!1060551) (not bm!260282) (not d!1060327) (not d!1060417) (not d!1060449) (not b_next!93773) (not d!1060337) (not b!3598802) (not b_next!93759) (not b!3598503) b_and!261247 (not b!3598956) (not bm!260300) (not b_lambda!106393) (not b!3598346) (not b_lambda!106383) (not b!3598822) (not b!3598595) b_and!261231 (not b!3598928) (not d!1060415) (not tb!205785) (not b!3598476))
(check-sat b_and!261235 (not b_next!93765) b_and!261243 b_and!261249 (not b_next!93757) b_and!261239 b_and!261233 (not b_next!93773) b_and!261231 (not b_next!93761) b_and!261241 (not b_next!93767) b_and!261237 (not b_next!93775) (not b_next!93763) (not b_next!93755) b_and!261245 (not b_next!93753) (not b_next!93759) b_and!261247)
