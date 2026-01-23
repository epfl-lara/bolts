; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!314386 () Bool)

(assert start!314386)

(declare-fun b!3376854 () Bool)

(declare-fun b_free!88281 () Bool)

(declare-fun b_next!88985 () Bool)

(assert (=> b!3376854 (= b_free!88281 (not b_next!88985))))

(declare-fun tp!1056064 () Bool)

(declare-fun b_and!234455 () Bool)

(assert (=> b!3376854 (= tp!1056064 b_and!234455)))

(declare-fun b_free!88283 () Bool)

(declare-fun b_next!88987 () Bool)

(assert (=> b!3376854 (= b_free!88283 (not b_next!88987))))

(declare-fun tp!1056076 () Bool)

(declare-fun b_and!234457 () Bool)

(assert (=> b!3376854 (= tp!1056076 b_and!234457)))

(declare-fun b!3376859 () Bool)

(declare-fun b_free!88285 () Bool)

(declare-fun b_next!88989 () Bool)

(assert (=> b!3376859 (= b_free!88285 (not b_next!88989))))

(declare-fun tp!1056068 () Bool)

(declare-fun b_and!234459 () Bool)

(assert (=> b!3376859 (= tp!1056068 b_and!234459)))

(declare-fun b_free!88287 () Bool)

(declare-fun b_next!88991 () Bool)

(assert (=> b!3376859 (= b_free!88287 (not b_next!88991))))

(declare-fun tp!1056073 () Bool)

(declare-fun b_and!234461 () Bool)

(assert (=> b!3376859 (= tp!1056073 b_and!234461)))

(declare-fun b!3376860 () Bool)

(declare-fun b_free!88289 () Bool)

(declare-fun b_next!88993 () Bool)

(assert (=> b!3376860 (= b_free!88289 (not b_next!88993))))

(declare-fun tp!1056075 () Bool)

(declare-fun b_and!234463 () Bool)

(assert (=> b!3376860 (= tp!1056075 b_and!234463)))

(declare-fun b_free!88291 () Bool)

(declare-fun b_next!88995 () Bool)

(assert (=> b!3376860 (= b_free!88291 (not b_next!88995))))

(declare-fun tp!1056072 () Bool)

(declare-fun b_and!234465 () Bool)

(assert (=> b!3376860 (= tp!1056072 b_and!234465)))

(declare-fun b!3376847 () Bool)

(declare-fun res!1365712 () Bool)

(declare-fun e!2095932 () Bool)

(assert (=> b!3376847 (=> (not res!1365712) (not e!2095932))))

(declare-datatypes ((C!20424 0))(
  ( (C!20425 (val!12260 Int)) )
))
(declare-datatypes ((Regex!10119 0))(
  ( (ElementMatch!10119 (c!575060 C!20424)) (Concat!15709 (regOne!20750 Regex!10119) (regTwo!20750 Regex!10119)) (EmptyExpr!10119) (Star!10119 (reg!10448 Regex!10119)) (EmptyLang!10119) (Union!10119 (regOne!20751 Regex!10119) (regTwo!20751 Regex!10119)) )
))
(declare-datatypes ((List!36924 0))(
  ( (Nil!36800) (Cons!36800 (h!42220 (_ BitVec 16)) (t!262807 List!36924)) )
))
(declare-datatypes ((TokenValue!5590 0))(
  ( (FloatLiteralValue!11180 (text!39575 List!36924)) (TokenValueExt!5589 (__x!23397 Int)) (Broken!27950 (value!173194 List!36924)) (Object!5713) (End!5590) (Def!5590) (Underscore!5590) (Match!5590) (Else!5590) (Error!5590) (Case!5590) (If!5590) (Extends!5590) (Abstract!5590) (Class!5590) (Val!5590) (DelimiterValue!11180 (del!5650 List!36924)) (KeywordValue!5596 (value!173195 List!36924)) (CommentValue!11180 (value!173196 List!36924)) (WhitespaceValue!11180 (value!173197 List!36924)) (IndentationValue!5590 (value!173198 List!36924)) (String!41283) (Int32!5590) (Broken!27951 (value!173199 List!36924)) (Boolean!5591) (Unit!51901) (OperatorValue!5593 (op!5650 List!36924)) (IdentifierValue!11180 (value!173200 List!36924)) (IdentifierValue!11181 (value!173201 List!36924)) (WhitespaceValue!11181 (value!173202 List!36924)) (True!11180) (False!11180) (Broken!27952 (value!173203 List!36924)) (Broken!27953 (value!173204 List!36924)) (True!11181) (RightBrace!5590) (RightBracket!5590) (Colon!5590) (Null!5590) (Comma!5590) (LeftBracket!5590) (False!11181) (LeftBrace!5590) (ImaginaryLiteralValue!5590 (text!39576 List!36924)) (StringLiteralValue!16770 (value!173205 List!36924)) (EOFValue!5590 (value!173206 List!36924)) (IdentValue!5590 (value!173207 List!36924)) (DelimiterValue!11181 (value!173208 List!36924)) (DedentValue!5590 (value!173209 List!36924)) (NewLineValue!5590 (value!173210 List!36924)) (IntegerValue!16770 (value!173211 (_ BitVec 32)) (text!39577 List!36924)) (IntegerValue!16771 (value!173212 Int) (text!39578 List!36924)) (Times!5590) (Or!5590) (Equal!5590) (Minus!5590) (Broken!27954 (value!173213 List!36924)) (And!5590) (Div!5590) (LessEqual!5590) (Mod!5590) (Concat!15710) (Not!5590) (Plus!5590) (SpaceValue!5590 (value!173214 List!36924)) (IntegerValue!16772 (value!173215 Int) (text!39579 List!36924)) (StringLiteralValue!16771 (text!39580 List!36924)) (FloatLiteralValue!11181 (text!39581 List!36924)) (BytesLiteralValue!5590 (value!173216 List!36924)) (CommentValue!11181 (value!173217 List!36924)) (StringLiteralValue!16772 (value!173218 List!36924)) (ErrorTokenValue!5590 (msg!5651 List!36924)) )
))
(declare-datatypes ((List!36925 0))(
  ( (Nil!36801) (Cons!36801 (h!42221 C!20424) (t!262808 List!36925)) )
))
(declare-datatypes ((IArray!22195 0))(
  ( (IArray!22196 (innerList!11155 List!36925)) )
))
(declare-datatypes ((Conc!11095 0))(
  ( (Node!11095 (left!28689 Conc!11095) (right!29019 Conc!11095) (csize!22420 Int) (cheight!11306 Int)) (Leaf!17386 (xs!14249 IArray!22195) (csize!22421 Int)) (Empty!11095) )
))
(declare-datatypes ((BalanceConc!21804 0))(
  ( (BalanceConc!21805 (c!575061 Conc!11095)) )
))
(declare-datatypes ((String!41284 0))(
  ( (String!41285 (value!173219 String)) )
))
(declare-datatypes ((TokenValueInjection!10608 0))(
  ( (TokenValueInjection!10609 (toValue!7544 Int) (toChars!7403 Int)) )
))
(declare-datatypes ((Rule!10520 0))(
  ( (Rule!10521 (regex!5360 Regex!10119) (tag!5928 String!41284) (isSeparator!5360 Bool) (transformation!5360 TokenValueInjection!10608)) )
))
(declare-datatypes ((List!36926 0))(
  ( (Nil!36802) (Cons!36802 (h!42222 Rule!10520) (t!262809 List!36926)) )
))
(declare-fun rules!2135 () List!36926)

(declare-fun sepAndNonSepRulesDisjointChars!1554 (List!36926 List!36926) Bool)

(assert (=> b!3376847 (= res!1365712 (sepAndNonSepRulesDisjointChars!1554 rules!2135 rules!2135))))

(declare-fun b!3376848 () Bool)

(declare-fun e!2095912 () Bool)

(declare-fun e!2095916 () Bool)

(assert (=> b!3376848 (= e!2095912 e!2095916)))

(declare-fun res!1365729 () Bool)

(assert (=> b!3376848 (=> res!1365729 e!2095916)))

(declare-fun lt!1146217 () List!36925)

(declare-fun lt!1146208 () List!36925)

(declare-fun lt!1146200 () List!36925)

(assert (=> b!3376848 (= res!1365729 (or (not (= lt!1146208 lt!1146200)) (not (= lt!1146217 lt!1146200))))))

(declare-datatypes ((Token!10086 0))(
  ( (Token!10087 (value!173220 TokenValue!5590) (rule!7904 Rule!10520) (size!27850 Int) (originalCharacters!6074 List!36925)) )
))
(declare-datatypes ((List!36927 0))(
  ( (Nil!36803) (Cons!36803 (h!42223 Token!10086) (t!262810 List!36927)) )
))
(declare-fun tokens!494 () List!36927)

(declare-fun list!13301 (BalanceConc!21804) List!36925)

(declare-fun charsOf!3374 (Token!10086) BalanceConc!21804)

(assert (=> b!3376848 (= lt!1146200 (list!13301 (charsOf!3374 (h!42223 tokens!494))))))

(declare-fun b!3376849 () Bool)

(declare-fun res!1365720 () Bool)

(assert (=> b!3376849 (=> (not res!1365720) (not e!2095932))))

(declare-fun separatorToken!241 () Token!10086)

(assert (=> b!3376849 (= res!1365720 (isSeparator!5360 (rule!7904 separatorToken!241)))))

(declare-fun b!3376850 () Bool)

(declare-fun res!1365719 () Bool)

(assert (=> b!3376850 (=> (not res!1365719) (not e!2095932))))

(get-info :version)

(assert (=> b!3376850 (= res!1365719 (and (not ((_ is Nil!36803) tokens!494)) ((_ is Nil!36803) (t!262810 tokens!494))))))

(declare-fun b!3376851 () Bool)

(declare-fun e!2095913 () Bool)

(declare-fun e!2095933 () Bool)

(assert (=> b!3376851 (= e!2095913 e!2095933)))

(declare-fun res!1365716 () Bool)

(assert (=> b!3376851 (=> res!1365716 e!2095933)))

(declare-fun lt!1146213 () BalanceConc!21804)

(declare-fun lt!1146220 () List!36925)

(declare-fun ++!8987 (List!36925 List!36925) List!36925)

(assert (=> b!3376851 (= res!1365716 (not (= (list!13301 lt!1146213) (++!8987 lt!1146200 lt!1146220))))))

(assert (=> b!3376851 (= lt!1146220 (list!13301 (charsOf!3374 separatorToken!241)))))

(declare-datatypes ((LexerInterface!4949 0))(
  ( (LexerInterfaceExt!4946 (__x!23398 Int)) (Lexer!4947) )
))
(declare-fun thiss!18206 () LexerInterface!4949)

(declare-datatypes ((IArray!22197 0))(
  ( (IArray!22198 (innerList!11156 List!36927)) )
))
(declare-datatypes ((Conc!11096 0))(
  ( (Node!11096 (left!28690 Conc!11096) (right!29020 Conc!11096) (csize!22422 Int) (cheight!11307 Int)) (Leaf!17387 (xs!14250 IArray!22197) (csize!22423 Int)) (Empty!11096) )
))
(declare-datatypes ((BalanceConc!21806 0))(
  ( (BalanceConc!21807 (c!575062 Conc!11096)) )
))
(declare-fun lt!1146205 () BalanceConc!21806)

(declare-fun printWithSeparatorToken!140 (LexerInterface!4949 BalanceConc!21806 Token!10086) BalanceConc!21804)

(assert (=> b!3376851 (= lt!1146213 (printWithSeparatorToken!140 thiss!18206 lt!1146205 separatorToken!241))))

(declare-fun res!1365728 () Bool)

(declare-fun e!2095919 () Bool)

(assert (=> start!314386 (=> (not res!1365728) (not e!2095919))))

(assert (=> start!314386 (= res!1365728 ((_ is Lexer!4947) thiss!18206))))

(assert (=> start!314386 e!2095919))

(assert (=> start!314386 true))

(declare-fun e!2095910 () Bool)

(assert (=> start!314386 e!2095910))

(declare-fun e!2095920 () Bool)

(declare-fun inv!49870 (Token!10086) Bool)

(assert (=> start!314386 (and (inv!49870 separatorToken!241) e!2095920)))

(declare-fun e!2095924 () Bool)

(assert (=> start!314386 e!2095924))

(declare-fun e!2095914 () Bool)

(declare-fun b!3376852 () Bool)

(declare-fun tp!1056067 () Bool)

(declare-fun e!2095936 () Bool)

(declare-fun inv!49867 (String!41284) Bool)

(declare-fun inv!49871 (TokenValueInjection!10608) Bool)

(assert (=> b!3376852 (= e!2095936 (and tp!1056067 (inv!49867 (tag!5928 (h!42222 rules!2135))) (inv!49871 (transformation!5360 (h!42222 rules!2135))) e!2095914))))

(declare-fun b!3376853 () Bool)

(declare-fun res!1365725 () Bool)

(assert (=> b!3376853 (=> (not res!1365725) (not e!2095932))))

(declare-fun lambda!120375 () Int)

(declare-fun forall!7735 (List!36927 Int) Bool)

(assert (=> b!3376853 (= res!1365725 (forall!7735 tokens!494 lambda!120375))))

(declare-fun e!2095931 () Bool)

(assert (=> b!3376854 (= e!2095931 (and tp!1056064 tp!1056076))))

(declare-fun b!3376855 () Bool)

(declare-fun e!2095917 () Bool)

(declare-fun e!2095915 () Bool)

(assert (=> b!3376855 (= e!2095917 e!2095915)))

(declare-fun res!1365727 () Bool)

(assert (=> b!3376855 (=> (not res!1365727) (not e!2095915))))

(declare-fun lt!1146202 () Rule!10520)

(declare-fun matchR!4711 (Regex!10119 List!36925) Bool)

(assert (=> b!3376855 (= res!1365727 (matchR!4711 (regex!5360 lt!1146202) lt!1146200))))

(declare-datatypes ((Option!7367 0))(
  ( (None!7366) (Some!7366 (v!36414 Rule!10520)) )
))
(declare-fun lt!1146215 () Option!7367)

(declare-fun get!11739 (Option!7367) Rule!10520)

(assert (=> b!3376855 (= lt!1146202 (get!11739 lt!1146215))))

(declare-fun b!3376856 () Bool)

(declare-fun res!1365730 () Bool)

(assert (=> b!3376856 (=> (not res!1365730) (not e!2095932))))

(declare-fun rulesProduceIndividualToken!2441 (LexerInterface!4949 List!36926 Token!10086) Bool)

(assert (=> b!3376856 (= res!1365730 (rulesProduceIndividualToken!2441 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3376857 () Bool)

(assert (=> b!3376857 (= e!2095919 e!2095932)))

(declare-fun res!1365722 () Bool)

(assert (=> b!3376857 (=> (not res!1365722) (not e!2095932))))

(declare-fun rulesProduceEachTokenIndividually!1400 (LexerInterface!4949 List!36926 BalanceConc!21806) Bool)

(assert (=> b!3376857 (= res!1365722 (rulesProduceEachTokenIndividually!1400 thiss!18206 rules!2135 lt!1146205))))

(declare-fun seqFromList!3773 (List!36927) BalanceConc!21806)

(assert (=> b!3376857 (= lt!1146205 (seqFromList!3773 tokens!494))))

(declare-fun b!3376858 () Bool)

(assert (=> b!3376858 (= e!2095933 true)))

(declare-datatypes ((Unit!51902 0))(
  ( (Unit!51903) )
))
(declare-fun lt!1146204 () Unit!51902)

(declare-fun e!2095922 () Unit!51902)

(assert (=> b!3376858 (= lt!1146204 e!2095922)))

(declare-fun c!575059 () Bool)

(declare-fun lt!1146216 () C!20424)

(declare-fun contains!6709 (List!36925 C!20424) Bool)

(declare-fun usedCharacters!616 (Regex!10119) List!36925)

(assert (=> b!3376858 (= c!575059 (not (contains!6709 (usedCharacters!616 (regex!5360 (rule!7904 separatorToken!241))) lt!1146216)))))

(declare-fun head!7203 (List!36925) C!20424)

(assert (=> b!3376858 (= lt!1146216 (head!7203 lt!1146220))))

(declare-fun lt!1146219 () BalanceConc!21804)

(declare-datatypes ((tuple2!36364 0))(
  ( (tuple2!36365 (_1!21316 Token!10086) (_2!21316 List!36925)) )
))
(declare-datatypes ((Option!7368 0))(
  ( (None!7367) (Some!7367 (v!36415 tuple2!36364)) )
))
(declare-fun maxPrefixOneRule!1672 (LexerInterface!4949 Rule!10520 List!36925) Option!7368)

(declare-fun apply!8543 (TokenValueInjection!10608 BalanceConc!21804) TokenValue!5590)

(declare-fun size!27851 (List!36925) Int)

(assert (=> b!3376858 (= (maxPrefixOneRule!1672 thiss!18206 (rule!7904 (h!42223 tokens!494)) lt!1146200) (Some!7367 (tuple2!36365 (Token!10087 (apply!8543 (transformation!5360 (rule!7904 (h!42223 tokens!494))) lt!1146219) (rule!7904 (h!42223 tokens!494)) (size!27851 lt!1146200) lt!1146200) Nil!36801)))))

(declare-fun lt!1146214 () Unit!51902)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!771 (LexerInterface!4949 List!36926 List!36925 List!36925 List!36925 Rule!10520) Unit!51902)

(assert (=> b!3376858 (= lt!1146214 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!771 thiss!18206 rules!2135 lt!1146200 lt!1146200 Nil!36801 (rule!7904 (h!42223 tokens!494))))))

(declare-fun e!2095935 () Bool)

(assert (=> b!3376858 e!2095935))

(declare-fun res!1365711 () Bool)

(assert (=> b!3376858 (=> (not res!1365711) (not e!2095935))))

(declare-fun lt!1146199 () Option!7367)

(declare-fun isDefined!5698 (Option!7367) Bool)

(assert (=> b!3376858 (= res!1365711 (isDefined!5698 lt!1146199))))

(declare-fun getRuleFromTag!1015 (LexerInterface!4949 List!36926 String!41284) Option!7367)

(assert (=> b!3376858 (= lt!1146199 (getRuleFromTag!1015 thiss!18206 rules!2135 (tag!5928 (rule!7904 separatorToken!241))))))

(declare-fun lt!1146206 () Unit!51902)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1015 (LexerInterface!4949 List!36926 List!36925 Token!10086) Unit!51902)

(assert (=> b!3376858 (= lt!1146206 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1015 thiss!18206 rules!2135 lt!1146220 separatorToken!241))))

(assert (=> b!3376858 e!2095917))

(declare-fun res!1365715 () Bool)

(assert (=> b!3376858 (=> (not res!1365715) (not e!2095917))))

(assert (=> b!3376858 (= res!1365715 (isDefined!5698 lt!1146215))))

(assert (=> b!3376858 (= lt!1146215 (getRuleFromTag!1015 thiss!18206 rules!2135 (tag!5928 (rule!7904 (h!42223 tokens!494)))))))

(declare-fun lt!1146212 () Unit!51902)

(assert (=> b!3376858 (= lt!1146212 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1015 thiss!18206 rules!2135 lt!1146200 (h!42223 tokens!494)))))

(declare-fun lt!1146201 () Unit!51902)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!944 (LexerInterface!4949 List!36926 List!36927 Token!10086) Unit!51902)

(assert (=> b!3376858 (= lt!1146201 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!944 thiss!18206 rules!2135 tokens!494 (h!42223 tokens!494)))))

(declare-fun isEmpty!21021 (List!36925) Bool)

(declare-fun getSuffix!1454 (List!36925 List!36925) List!36925)

(assert (=> b!3376858 (isEmpty!21021 (getSuffix!1454 lt!1146200 lt!1146200))))

(declare-fun lt!1146209 () Unit!51902)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!112 (List!36925) Unit!51902)

(assert (=> b!3376858 (= lt!1146209 (lemmaGetSuffixOnListWithItSelfIsEmpty!112 lt!1146200))))

(declare-fun e!2095909 () Bool)

(assert (=> b!3376859 (= e!2095909 (and tp!1056068 tp!1056073))))

(assert (=> b!3376860 (= e!2095914 (and tp!1056075 tp!1056072))))

(declare-fun b!3376861 () Bool)

(declare-fun res!1365724 () Bool)

(assert (=> b!3376861 (=> (not res!1365724) (not e!2095919))))

(declare-fun isEmpty!21022 (List!36926) Bool)

(assert (=> b!3376861 (= res!1365724 (not (isEmpty!21022 rules!2135)))))

(declare-fun b!3376862 () Bool)

(declare-fun Unit!51904 () Unit!51902)

(assert (=> b!3376862 (= e!2095922 Unit!51904)))

(declare-fun b!3376863 () Bool)

(declare-fun res!1365713 () Bool)

(assert (=> b!3376863 (=> (not res!1365713) (not e!2095919))))

(declare-fun rulesInvariant!4346 (LexerInterface!4949 List!36926) Bool)

(assert (=> b!3376863 (= res!1365713 (rulesInvariant!4346 thiss!18206 rules!2135))))

(declare-fun b!3376864 () Bool)

(assert (=> b!3376864 (= e!2095915 (= (rule!7904 (h!42223 tokens!494)) lt!1146202))))

(declare-fun b!3376865 () Bool)

(declare-fun e!2095930 () Bool)

(declare-fun lt!1146203 () Rule!10520)

(assert (=> b!3376865 (= e!2095930 (= (rule!7904 separatorToken!241) lt!1146203))))

(declare-fun b!3376866 () Bool)

(declare-fun res!1365718 () Bool)

(assert (=> b!3376866 (=> res!1365718 e!2095916)))

(assert (=> b!3376866 (= res!1365718 (not (rulesProduceIndividualToken!2441 thiss!18206 rules!2135 (h!42223 tokens!494))))))

(declare-fun b!3376867 () Bool)

(declare-fun e!2095934 () Bool)

(assert (=> b!3376867 (= e!2095916 e!2095934)))

(declare-fun res!1365717 () Bool)

(assert (=> b!3376867 (=> res!1365717 e!2095934)))

(declare-fun isEmpty!21023 (BalanceConc!21806) Bool)

(declare-datatypes ((tuple2!36366 0))(
  ( (tuple2!36367 (_1!21317 BalanceConc!21806) (_2!21317 BalanceConc!21804)) )
))
(declare-fun lex!2275 (LexerInterface!4949 List!36926 BalanceConc!21804) tuple2!36366)

(assert (=> b!3376867 (= res!1365717 (isEmpty!21023 (_1!21317 (lex!2275 thiss!18206 rules!2135 lt!1146219))))))

(declare-fun seqFromList!3774 (List!36925) BalanceConc!21804)

(assert (=> b!3376867 (= lt!1146219 (seqFromList!3774 lt!1146200))))

(declare-fun b!3376868 () Bool)

(declare-fun e!2095918 () Bool)

(assert (=> b!3376868 (= e!2095918 false)))

(declare-fun b!3376869 () Bool)

(declare-fun Unit!51905 () Unit!51902)

(assert (=> b!3376869 (= e!2095922 Unit!51905)))

(declare-fun lt!1146218 () Unit!51902)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!450 (Regex!10119 List!36925 C!20424) Unit!51902)

(assert (=> b!3376869 (= lt!1146218 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!450 (regex!5360 (rule!7904 separatorToken!241)) lt!1146220 lt!1146216))))

(declare-fun res!1365714 () Bool)

(assert (=> b!3376869 (= res!1365714 (not (matchR!4711 (regex!5360 (rule!7904 separatorToken!241)) lt!1146220)))))

(assert (=> b!3376869 (=> (not res!1365714) (not e!2095918))))

(assert (=> b!3376869 e!2095918))

(declare-fun e!2095923 () Bool)

(declare-fun b!3376870 () Bool)

(declare-fun tp!1056066 () Bool)

(assert (=> b!3376870 (= e!2095924 (and (inv!49870 (h!42223 tokens!494)) e!2095923 tp!1056066))))

(declare-fun b!3376871 () Bool)

(assert (=> b!3376871 (= e!2095934 e!2095913)))

(declare-fun res!1365723 () Bool)

(assert (=> b!3376871 (=> res!1365723 e!2095913)))

(assert (=> b!3376871 (= res!1365723 (isSeparator!5360 (rule!7904 (h!42223 tokens!494))))))

(declare-fun lt!1146207 () Unit!51902)

(declare-fun forallContained!1307 (List!36927 Int Token!10086) Unit!51902)

(assert (=> b!3376871 (= lt!1146207 (forallContained!1307 tokens!494 lambda!120375 (h!42223 tokens!494)))))

(declare-fun tp!1056074 () Bool)

(declare-fun b!3376872 () Bool)

(declare-fun e!2095929 () Bool)

(declare-fun inv!21 (TokenValue!5590) Bool)

(assert (=> b!3376872 (= e!2095923 (and (inv!21 (value!173220 (h!42223 tokens!494))) e!2095929 tp!1056074))))

(declare-fun b!3376873 () Bool)

(declare-fun tp!1056071 () Bool)

(assert (=> b!3376873 (= e!2095929 (and tp!1056071 (inv!49867 (tag!5928 (rule!7904 (h!42223 tokens!494)))) (inv!49871 (transformation!5360 (rule!7904 (h!42223 tokens!494)))) e!2095931))))

(declare-fun b!3376874 () Bool)

(declare-fun tp!1056070 () Bool)

(declare-fun e!2095925 () Bool)

(assert (=> b!3376874 (= e!2095925 (and tp!1056070 (inv!49867 (tag!5928 (rule!7904 separatorToken!241))) (inv!49871 (transformation!5360 (rule!7904 separatorToken!241))) e!2095909))))

(declare-fun b!3376875 () Bool)

(assert (=> b!3376875 (= e!2095932 (not e!2095912))))

(declare-fun res!1365726 () Bool)

(assert (=> b!3376875 (=> res!1365726 e!2095912)))

(assert (=> b!3376875 (= res!1365726 (not (= lt!1146217 lt!1146208)))))

(declare-fun printList!1497 (LexerInterface!4949 List!36927) List!36925)

(assert (=> b!3376875 (= lt!1146208 (printList!1497 thiss!18206 (Cons!36803 (h!42223 tokens!494) Nil!36803)))))

(declare-fun lt!1146211 () BalanceConc!21804)

(assert (=> b!3376875 (= lt!1146217 (list!13301 lt!1146211))))

(declare-fun lt!1146210 () BalanceConc!21806)

(declare-fun printTailRec!1444 (LexerInterface!4949 BalanceConc!21806 Int BalanceConc!21804) BalanceConc!21804)

(assert (=> b!3376875 (= lt!1146211 (printTailRec!1444 thiss!18206 lt!1146210 0 (BalanceConc!21805 Empty!11095)))))

(declare-fun print!2014 (LexerInterface!4949 BalanceConc!21806) BalanceConc!21804)

(assert (=> b!3376875 (= lt!1146211 (print!2014 thiss!18206 lt!1146210))))

(declare-fun singletonSeq!2456 (Token!10086) BalanceConc!21806)

(assert (=> b!3376875 (= lt!1146210 (singletonSeq!2456 (h!42223 tokens!494)))))

(declare-fun b!3376876 () Bool)

(assert (=> b!3376876 (= e!2095935 e!2095930)))

(declare-fun res!1365721 () Bool)

(assert (=> b!3376876 (=> (not res!1365721) (not e!2095930))))

(assert (=> b!3376876 (= res!1365721 (matchR!4711 (regex!5360 lt!1146203) lt!1146220))))

(assert (=> b!3376876 (= lt!1146203 (get!11739 lt!1146199))))

(declare-fun tp!1056065 () Bool)

(declare-fun b!3376877 () Bool)

(assert (=> b!3376877 (= e!2095920 (and (inv!21 (value!173220 separatorToken!241)) e!2095925 tp!1056065))))

(declare-fun b!3376878 () Bool)

(declare-fun tp!1056069 () Bool)

(assert (=> b!3376878 (= e!2095910 (and e!2095936 tp!1056069))))

(assert (= (and start!314386 res!1365728) b!3376861))

(assert (= (and b!3376861 res!1365724) b!3376863))

(assert (= (and b!3376863 res!1365713) b!3376857))

(assert (= (and b!3376857 res!1365722) b!3376856))

(assert (= (and b!3376856 res!1365730) b!3376849))

(assert (= (and b!3376849 res!1365720) b!3376853))

(assert (= (and b!3376853 res!1365725) b!3376847))

(assert (= (and b!3376847 res!1365712) b!3376850))

(assert (= (and b!3376850 res!1365719) b!3376875))

(assert (= (and b!3376875 (not res!1365726)) b!3376848))

(assert (= (and b!3376848 (not res!1365729)) b!3376866))

(assert (= (and b!3376866 (not res!1365718)) b!3376867))

(assert (= (and b!3376867 (not res!1365717)) b!3376871))

(assert (= (and b!3376871 (not res!1365723)) b!3376851))

(assert (= (and b!3376851 (not res!1365716)) b!3376858))

(assert (= (and b!3376858 res!1365715) b!3376855))

(assert (= (and b!3376855 res!1365727) b!3376864))

(assert (= (and b!3376858 res!1365711) b!3376876))

(assert (= (and b!3376876 res!1365721) b!3376865))

(assert (= (and b!3376858 c!575059) b!3376869))

(assert (= (and b!3376858 (not c!575059)) b!3376862))

(assert (= (and b!3376869 res!1365714) b!3376868))

(assert (= b!3376852 b!3376860))

(assert (= b!3376878 b!3376852))

(assert (= (and start!314386 ((_ is Cons!36802) rules!2135)) b!3376878))

(assert (= b!3376874 b!3376859))

(assert (= b!3376877 b!3376874))

(assert (= start!314386 b!3376877))

(assert (= b!3376873 b!3376854))

(assert (= b!3376872 b!3376873))

(assert (= b!3376870 b!3376872))

(assert (= (and start!314386 ((_ is Cons!36803) tokens!494)) b!3376870))

(declare-fun m!3740419 () Bool)

(assert (=> b!3376856 m!3740419))

(declare-fun m!3740421 () Bool)

(assert (=> b!3376870 m!3740421))

(declare-fun m!3740423 () Bool)

(assert (=> b!3376861 m!3740423))

(declare-fun m!3740425 () Bool)

(assert (=> b!3376867 m!3740425))

(declare-fun m!3740427 () Bool)

(assert (=> b!3376867 m!3740427))

(declare-fun m!3740429 () Bool)

(assert (=> b!3376867 m!3740429))

(declare-fun m!3740431 () Bool)

(assert (=> b!3376858 m!3740431))

(declare-fun m!3740433 () Bool)

(assert (=> b!3376858 m!3740433))

(declare-fun m!3740435 () Bool)

(assert (=> b!3376858 m!3740435))

(declare-fun m!3740437 () Bool)

(assert (=> b!3376858 m!3740437))

(declare-fun m!3740439 () Bool)

(assert (=> b!3376858 m!3740439))

(declare-fun m!3740441 () Bool)

(assert (=> b!3376858 m!3740441))

(declare-fun m!3740443 () Bool)

(assert (=> b!3376858 m!3740443))

(declare-fun m!3740445 () Bool)

(assert (=> b!3376858 m!3740445))

(declare-fun m!3740447 () Bool)

(assert (=> b!3376858 m!3740447))

(declare-fun m!3740449 () Bool)

(assert (=> b!3376858 m!3740449))

(declare-fun m!3740451 () Bool)

(assert (=> b!3376858 m!3740451))

(declare-fun m!3740453 () Bool)

(assert (=> b!3376858 m!3740453))

(assert (=> b!3376858 m!3740445))

(declare-fun m!3740455 () Bool)

(assert (=> b!3376858 m!3740455))

(declare-fun m!3740457 () Bool)

(assert (=> b!3376858 m!3740457))

(assert (=> b!3376858 m!3740447))

(declare-fun m!3740459 () Bool)

(assert (=> b!3376858 m!3740459))

(declare-fun m!3740461 () Bool)

(assert (=> b!3376858 m!3740461))

(declare-fun m!3740463 () Bool)

(assert (=> b!3376858 m!3740463))

(declare-fun m!3740465 () Bool)

(assert (=> b!3376869 m!3740465))

(declare-fun m!3740467 () Bool)

(assert (=> b!3376869 m!3740467))

(declare-fun m!3740469 () Bool)

(assert (=> start!314386 m!3740469))

(declare-fun m!3740471 () Bool)

(assert (=> b!3376866 m!3740471))

(declare-fun m!3740473 () Bool)

(assert (=> b!3376873 m!3740473))

(declare-fun m!3740475 () Bool)

(assert (=> b!3376873 m!3740475))

(declare-fun m!3740477 () Bool)

(assert (=> b!3376874 m!3740477))

(declare-fun m!3740479 () Bool)

(assert (=> b!3376874 m!3740479))

(declare-fun m!3740481 () Bool)

(assert (=> b!3376847 m!3740481))

(declare-fun m!3740483 () Bool)

(assert (=> b!3376872 m!3740483))

(declare-fun m!3740485 () Bool)

(assert (=> b!3376848 m!3740485))

(assert (=> b!3376848 m!3740485))

(declare-fun m!3740487 () Bool)

(assert (=> b!3376848 m!3740487))

(declare-fun m!3740489 () Bool)

(assert (=> b!3376875 m!3740489))

(declare-fun m!3740491 () Bool)

(assert (=> b!3376875 m!3740491))

(declare-fun m!3740493 () Bool)

(assert (=> b!3376875 m!3740493))

(declare-fun m!3740495 () Bool)

(assert (=> b!3376875 m!3740495))

(declare-fun m!3740497 () Bool)

(assert (=> b!3376875 m!3740497))

(declare-fun m!3740499 () Bool)

(assert (=> b!3376871 m!3740499))

(declare-fun m!3740501 () Bool)

(assert (=> b!3376852 m!3740501))

(declare-fun m!3740503 () Bool)

(assert (=> b!3376852 m!3740503))

(declare-fun m!3740505 () Bool)

(assert (=> b!3376876 m!3740505))

(declare-fun m!3740507 () Bool)

(assert (=> b!3376876 m!3740507))

(declare-fun m!3740509 () Bool)

(assert (=> b!3376853 m!3740509))

(declare-fun m!3740511 () Bool)

(assert (=> b!3376877 m!3740511))

(declare-fun m!3740513 () Bool)

(assert (=> b!3376855 m!3740513))

(declare-fun m!3740515 () Bool)

(assert (=> b!3376855 m!3740515))

(declare-fun m!3740517 () Bool)

(assert (=> b!3376863 m!3740517))

(declare-fun m!3740519 () Bool)

(assert (=> b!3376857 m!3740519))

(declare-fun m!3740521 () Bool)

(assert (=> b!3376857 m!3740521))

(declare-fun m!3740523 () Bool)

(assert (=> b!3376851 m!3740523))

(declare-fun m!3740525 () Bool)

(assert (=> b!3376851 m!3740525))

(declare-fun m!3740527 () Bool)

(assert (=> b!3376851 m!3740527))

(declare-fun m!3740529 () Bool)

(assert (=> b!3376851 m!3740529))

(assert (=> b!3376851 m!3740523))

(declare-fun m!3740531 () Bool)

(assert (=> b!3376851 m!3740531))

(check-sat (not b!3376867) (not b!3376848) b_and!234461 (not b!3376855) (not b_next!88993) (not b_next!88987) (not b!3376872) (not b!3376857) b_and!234463 (not b!3376852) (not b!3376876) (not b!3376875) (not b!3376877) (not b!3376870) (not b!3376853) (not b!3376847) (not b!3376866) (not b_next!88989) (not b!3376869) (not b_next!88985) (not b!3376874) (not b!3376871) (not b!3376861) (not b_next!88995) (not b!3376858) b_and!234465 (not b!3376873) (not b!3376878) (not start!314386) (not b_next!88991) (not b!3376863) b_and!234459 b_and!234455 b_and!234457 (not b!3376851) (not b!3376856))
(check-sat (not b_next!88989) b_and!234461 (not b_next!88985) (not b_next!88993) (not b_next!88987) (not b_next!88995) b_and!234465 b_and!234463 (not b_next!88991) b_and!234459 b_and!234455 b_and!234457)
