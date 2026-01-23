; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!323118 () Bool)

(assert start!323118)

(declare-fun b!3474588 () Bool)

(declare-fun b_free!90065 () Bool)

(declare-fun b_next!90769 () Bool)

(assert (=> b!3474588 (= b_free!90065 (not b_next!90769))))

(declare-fun tp!1080204 () Bool)

(declare-fun b_and!245035 () Bool)

(assert (=> b!3474588 (= tp!1080204 b_and!245035)))

(declare-fun b_free!90067 () Bool)

(declare-fun b_next!90771 () Bool)

(assert (=> b!3474588 (= b_free!90067 (not b_next!90771))))

(declare-fun tp!1080196 () Bool)

(declare-fun b_and!245037 () Bool)

(assert (=> b!3474588 (= tp!1080196 b_and!245037)))

(declare-fun b!3474621 () Bool)

(declare-fun b_free!90069 () Bool)

(declare-fun b_next!90773 () Bool)

(assert (=> b!3474621 (= b_free!90069 (not b_next!90773))))

(declare-fun tp!1080198 () Bool)

(declare-fun b_and!245039 () Bool)

(assert (=> b!3474621 (= tp!1080198 b_and!245039)))

(declare-fun b_free!90071 () Bool)

(declare-fun b_next!90775 () Bool)

(assert (=> b!3474621 (= b_free!90071 (not b_next!90775))))

(declare-fun tp!1080201 () Bool)

(declare-fun b_and!245041 () Bool)

(assert (=> b!3474621 (= tp!1080201 b_and!245041)))

(declare-fun b!3474619 () Bool)

(declare-fun b_free!90073 () Bool)

(declare-fun b_next!90777 () Bool)

(assert (=> b!3474619 (= b_free!90073 (not b_next!90777))))

(declare-fun tp!1080193 () Bool)

(declare-fun b_and!245043 () Bool)

(assert (=> b!3474619 (= tp!1080193 b_and!245043)))

(declare-fun b_free!90075 () Bool)

(declare-fun b_next!90779 () Bool)

(assert (=> b!3474619 (= b_free!90075 (not b_next!90779))))

(declare-fun tp!1080192 () Bool)

(declare-fun b_and!245045 () Bool)

(assert (=> b!3474619 (= tp!1080192 b_and!245045)))

(declare-fun bs!561639 () Bool)

(declare-fun b!3474603 () Bool)

(declare-fun b!3474600 () Bool)

(assert (= bs!561639 (and b!3474603 b!3474600)))

(declare-fun lambda!122055 () Int)

(declare-fun lambda!122054 () Int)

(assert (=> bs!561639 (not (= lambda!122055 lambda!122054))))

(declare-fun b!3474638 () Bool)

(declare-fun e!2152110 () Bool)

(assert (=> b!3474638 (= e!2152110 true)))

(declare-fun b!3474637 () Bool)

(declare-fun e!2152109 () Bool)

(assert (=> b!3474637 (= e!2152109 e!2152110)))

(declare-fun b!3474636 () Bool)

(declare-fun e!2152108 () Bool)

(assert (=> b!3474636 (= e!2152108 e!2152109)))

(assert (=> b!3474603 e!2152108))

(assert (= b!3474637 b!3474638))

(assert (= b!3474636 b!3474637))

(declare-datatypes ((C!20596 0))(
  ( (C!20597 (val!12346 Int)) )
))
(declare-datatypes ((Regex!10205 0))(
  ( (ElementMatch!10205 (c!595952 C!20596)) (Concat!15881 (regOne!20922 Regex!10205) (regTwo!20922 Regex!10205)) (EmptyExpr!10205) (Star!10205 (reg!10534 Regex!10205)) (EmptyLang!10205) (Union!10205 (regOne!20923 Regex!10205) (regTwo!20923 Regex!10205)) )
))
(declare-datatypes ((List!37322 0))(
  ( (Nil!37198) (Cons!37198 (h!42618 (_ BitVec 16)) (t!274931 List!37322)) )
))
(declare-datatypes ((TokenValue!5676 0))(
  ( (FloatLiteralValue!11352 (text!40177 List!37322)) (TokenValueExt!5675 (__x!23569 Int)) (Broken!28380 (value!175645 List!37322)) (Object!5799) (End!5676) (Def!5676) (Underscore!5676) (Match!5676) (Else!5676) (Error!5676) (Case!5676) (If!5676) (Extends!5676) (Abstract!5676) (Class!5676) (Val!5676) (DelimiterValue!11352 (del!5736 List!37322)) (KeywordValue!5682 (value!175646 List!37322)) (CommentValue!11352 (value!175647 List!37322)) (WhitespaceValue!11352 (value!175648 List!37322)) (IndentationValue!5676 (value!175649 List!37322)) (String!41713) (Int32!5676) (Broken!28381 (value!175650 List!37322)) (Boolean!5677) (Unit!52627) (OperatorValue!5679 (op!5736 List!37322)) (IdentifierValue!11352 (value!175651 List!37322)) (IdentifierValue!11353 (value!175652 List!37322)) (WhitespaceValue!11353 (value!175653 List!37322)) (True!11352) (False!11352) (Broken!28382 (value!175654 List!37322)) (Broken!28383 (value!175655 List!37322)) (True!11353) (RightBrace!5676) (RightBracket!5676) (Colon!5676) (Null!5676) (Comma!5676) (LeftBracket!5676) (False!11353) (LeftBrace!5676) (ImaginaryLiteralValue!5676 (text!40178 List!37322)) (StringLiteralValue!17028 (value!175656 List!37322)) (EOFValue!5676 (value!175657 List!37322)) (IdentValue!5676 (value!175658 List!37322)) (DelimiterValue!11353 (value!175659 List!37322)) (DedentValue!5676 (value!175660 List!37322)) (NewLineValue!5676 (value!175661 List!37322)) (IntegerValue!17028 (value!175662 (_ BitVec 32)) (text!40179 List!37322)) (IntegerValue!17029 (value!175663 Int) (text!40180 List!37322)) (Times!5676) (Or!5676) (Equal!5676) (Minus!5676) (Broken!28384 (value!175664 List!37322)) (And!5676) (Div!5676) (LessEqual!5676) (Mod!5676) (Concat!15882) (Not!5676) (Plus!5676) (SpaceValue!5676 (value!175665 List!37322)) (IntegerValue!17030 (value!175666 Int) (text!40181 List!37322)) (StringLiteralValue!17029 (text!40182 List!37322)) (FloatLiteralValue!11353 (text!40183 List!37322)) (BytesLiteralValue!5676 (value!175667 List!37322)) (CommentValue!11353 (value!175668 List!37322)) (StringLiteralValue!17030 (value!175669 List!37322)) (ErrorTokenValue!5676 (msg!5737 List!37322)) )
))
(declare-datatypes ((List!37323 0))(
  ( (Nil!37199) (Cons!37199 (h!42619 C!20596) (t!274932 List!37323)) )
))
(declare-datatypes ((IArray!22539 0))(
  ( (IArray!22540 (innerList!11327 List!37323)) )
))
(declare-datatypes ((Conc!11267 0))(
  ( (Node!11267 (left!29032 Conc!11267) (right!29362 Conc!11267) (csize!22764 Int) (cheight!11478 Int)) (Leaf!17601 (xs!14445 IArray!22539) (csize!22765 Int)) (Empty!11267) )
))
(declare-datatypes ((BalanceConc!22148 0))(
  ( (BalanceConc!22149 (c!595953 Conc!11267)) )
))
(declare-datatypes ((String!41714 0))(
  ( (String!41715 (value!175670 String)) )
))
(declare-datatypes ((TokenValueInjection!10780 0))(
  ( (TokenValueInjection!10781 (toValue!7682 Int) (toChars!7541 Int)) )
))
(declare-datatypes ((Rule!10692 0))(
  ( (Rule!10693 (regex!5446 Regex!10205) (tag!6060 String!41714) (isSeparator!5446 Bool) (transformation!5446 TokenValueInjection!10780)) )
))
(declare-datatypes ((List!37324 0))(
  ( (Nil!37200) (Cons!37200 (h!42620 Rule!10692) (t!274933 List!37324)) )
))
(declare-fun rules!2135 () List!37324)

(get-info :version)

(assert (= (and b!3474603 ((_ is Cons!37200) rules!2135)) b!3474636))

(declare-fun order!19863 () Int)

(declare-fun order!19861 () Int)

(declare-fun dynLambda!15708 (Int Int) Int)

(declare-fun dynLambda!15709 (Int Int) Int)

(assert (=> b!3474638 (< (dynLambda!15708 order!19861 (toValue!7682 (transformation!5446 (h!42620 rules!2135)))) (dynLambda!15709 order!19863 lambda!122055))))

(declare-fun order!19865 () Int)

(declare-fun dynLambda!15710 (Int Int) Int)

(assert (=> b!3474638 (< (dynLambda!15710 order!19865 (toChars!7541 (transformation!5446 (h!42620 rules!2135)))) (dynLambda!15709 order!19863 lambda!122055))))

(assert (=> b!3474603 true))

(declare-fun b!3474585 () Bool)

(declare-fun res!1401385 () Bool)

(declare-fun e!2152074 () Bool)

(assert (=> b!3474585 (=> res!1401385 e!2152074)))

(declare-datatypes ((Token!10258 0))(
  ( (Token!10259 (value!175671 TokenValue!5676) (rule!8042 Rule!10692) (size!28235 Int) (originalCharacters!6160 List!37323)) )
))
(declare-fun separatorToken!241 () Token!10258)

(declare-fun contains!6915 (List!37324 Rule!10692) Bool)

(assert (=> b!3474585 (= res!1401385 (not (contains!6915 rules!2135 (rule!8042 separatorToken!241))))))

(declare-fun tp!1080197 () Bool)

(declare-datatypes ((List!37325 0))(
  ( (Nil!37201) (Cons!37201 (h!42621 Token!10258) (t!274934 List!37325)) )
))
(declare-fun tokens!494 () List!37325)

(declare-fun e!2152071 () Bool)

(declare-fun b!3474586 () Bool)

(declare-fun e!2152091 () Bool)

(declare-fun inv!50389 (Token!10258) Bool)

(assert (=> b!3474586 (= e!2152071 (and (inv!50389 (h!42621 tokens!494)) e!2152091 tp!1080197))))

(declare-fun b!3474587 () Bool)

(declare-fun e!2152086 () Bool)

(declare-fun e!2152094 () Bool)

(assert (=> b!3474587 (= e!2152086 e!2152094)))

(declare-fun res!1401376 () Bool)

(assert (=> b!3474587 (=> res!1401376 e!2152094)))

(declare-fun lt!1182331 () List!37323)

(declare-fun lt!1182312 () List!37323)

(assert (=> b!3474587 (= res!1401376 (not (= lt!1182331 lt!1182312)))))

(declare-fun lt!1182314 () List!37323)

(assert (=> b!3474587 (= lt!1182314 lt!1182312)))

(declare-fun lt!1182326 () List!37323)

(declare-fun lt!1182330 () List!37323)

(declare-fun ++!9183 (List!37323 List!37323) List!37323)

(assert (=> b!3474587 (= lt!1182312 (++!9183 lt!1182326 lt!1182330))))

(declare-fun lt!1182339 () List!37323)

(declare-fun lt!1182335 () List!37323)

(declare-datatypes ((Unit!52628 0))(
  ( (Unit!52629) )
))
(declare-fun lt!1182334 () Unit!52628)

(declare-fun lemmaConcatAssociativity!1970 (List!37323 List!37323 List!37323) Unit!52628)

(assert (=> b!3474587 (= lt!1182334 (lemmaConcatAssociativity!1970 lt!1182326 lt!1182339 lt!1182335))))

(declare-fun e!2152073 () Bool)

(assert (=> b!3474588 (= e!2152073 (and tp!1080204 tp!1080196))))

(declare-fun b!3474589 () Bool)

(declare-fun res!1401394 () Bool)

(declare-fun e!2152069 () Bool)

(assert (=> b!3474589 (=> (not res!1401394) (not e!2152069))))

(declare-datatypes ((IArray!22541 0))(
  ( (IArray!22542 (innerList!11328 List!37325)) )
))
(declare-datatypes ((Conc!11268 0))(
  ( (Node!11268 (left!29033 Conc!11268) (right!29363 Conc!11268) (csize!22766 Int) (cheight!11479 Int)) (Leaf!17602 (xs!14446 IArray!22541) (csize!22767 Int)) (Empty!11268) )
))
(declare-datatypes ((BalanceConc!22150 0))(
  ( (BalanceConc!22151 (c!595954 Conc!11268)) )
))
(declare-datatypes ((tuple2!36944 0))(
  ( (tuple2!36945 (_1!21606 BalanceConc!22150) (_2!21606 BalanceConc!22148)) )
))
(declare-fun lt!1182310 () tuple2!36944)

(declare-fun apply!8780 (BalanceConc!22150 Int) Token!10258)

(assert (=> b!3474589 (= res!1401394 (= (apply!8780 (_1!21606 lt!1182310) 0) (h!42621 (t!274934 tokens!494))))))

(declare-fun b!3474590 () Bool)

(declare-fun res!1401372 () Bool)

(declare-fun e!2152090 () Bool)

(assert (=> b!3474590 (=> (not res!1401372) (not e!2152090))))

(declare-datatypes ((LexerInterface!5035 0))(
  ( (LexerInterfaceExt!5032 (__x!23570 Int)) (Lexer!5033) )
))
(declare-fun thiss!18206 () LexerInterface!5035)

(declare-fun rulesInvariant!4432 (LexerInterface!5035 List!37324) Bool)

(assert (=> b!3474590 (= res!1401372 (rulesInvariant!4432 thiss!18206 rules!2135))))

(declare-fun tp!1080195 () Bool)

(declare-fun b!3474591 () Bool)

(declare-fun e!2152075 () Bool)

(declare-fun inv!50386 (String!41714) Bool)

(declare-fun inv!50390 (TokenValueInjection!10780) Bool)

(assert (=> b!3474591 (= e!2152075 (and tp!1080195 (inv!50386 (tag!6060 (rule!8042 (h!42621 tokens!494)))) (inv!50390 (transformation!5446 (rule!8042 (h!42621 tokens!494)))) e!2152073))))

(declare-fun b!3474592 () Bool)

(declare-fun e!2152088 () Bool)

(declare-fun e!2152078 () Bool)

(assert (=> b!3474592 (= e!2152088 e!2152078)))

(declare-fun res!1401399 () Bool)

(assert (=> b!3474592 (=> res!1401399 e!2152078)))

(declare-fun list!13559 (BalanceConc!22148) List!37323)

(declare-fun charsOf!3460 (Token!10258) BalanceConc!22148)

(declare-fun printWithSeparatorTokenList!322 (LexerInterface!5035 List!37325 Token!10258) List!37323)

(assert (=> b!3474592 (= res!1401399 (not (= lt!1182335 (++!9183 (++!9183 (list!13559 (charsOf!3460 (h!42621 (t!274934 tokens!494)))) lt!1182339) (printWithSeparatorTokenList!322 thiss!18206 (t!274934 (t!274934 tokens!494)) separatorToken!241)))))))

(assert (=> b!3474592 (= lt!1182330 (++!9183 lt!1182339 lt!1182335))))

(assert (=> b!3474592 (= lt!1182339 (list!13559 (charsOf!3460 separatorToken!241)))))

(assert (=> b!3474592 (= lt!1182335 (printWithSeparatorTokenList!322 thiss!18206 (t!274934 tokens!494) separatorToken!241))))

(assert (=> b!3474592 (= lt!1182331 (printWithSeparatorTokenList!322 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3474593 () Bool)

(declare-fun res!1401386 () Bool)

(declare-fun e!2152084 () Bool)

(assert (=> b!3474593 (=> (not res!1401386) (not e!2152084))))

(declare-fun lt!1182322 () tuple2!36944)

(assert (=> b!3474593 (= res!1401386 (= (apply!8780 (_1!21606 lt!1182322) 0) separatorToken!241))))

(declare-fun b!3474594 () Bool)

(declare-fun res!1401387 () Bool)

(declare-fun e!2152096 () Bool)

(assert (=> b!3474594 (=> res!1401387 e!2152096)))

(declare-datatypes ((tuple2!36946 0))(
  ( (tuple2!36947 (_1!21607 Token!10258) (_2!21607 List!37323)) )
))
(declare-fun lt!1182337 () tuple2!36946)

(declare-fun isEmpty!21568 (List!37323) Bool)

(assert (=> b!3474594 (= res!1401387 (not (isEmpty!21568 (_2!21607 lt!1182337))))))

(declare-fun b!3474595 () Bool)

(declare-fun e!2152070 () Bool)

(declare-fun e!2152101 () Bool)

(assert (=> b!3474595 (= e!2152070 e!2152101)))

(declare-fun res!1401375 () Bool)

(assert (=> b!3474595 (=> (not res!1401375) (not e!2152101))))

(declare-fun lt!1182308 () Rule!10692)

(declare-fun matchR!4789 (Regex!10205 List!37323) Bool)

(assert (=> b!3474595 (= res!1401375 (matchR!4789 (regex!5446 lt!1182308) lt!1182326))))

(declare-datatypes ((Option!7545 0))(
  ( (None!7544) (Some!7544 (v!36900 Rule!10692)) )
))
(declare-fun lt!1182316 () Option!7545)

(declare-fun get!11913 (Option!7545) Rule!10692)

(assert (=> b!3474595 (= lt!1182308 (get!11913 lt!1182316))))

(declare-fun b!3474596 () Bool)

(declare-fun res!1401392 () Bool)

(assert (=> b!3474596 (=> (not res!1401392) (not e!2152090))))

(declare-fun isEmpty!21569 (List!37324) Bool)

(assert (=> b!3474596 (= res!1401392 (not (isEmpty!21569 rules!2135)))))

(declare-fun b!3474597 () Bool)

(declare-fun e!2152082 () Unit!52628)

(declare-fun Unit!52630 () Unit!52628)

(assert (=> b!3474597 (= e!2152082 Unit!52630)))

(declare-fun b!3474598 () Bool)

(declare-fun res!1401373 () Bool)

(assert (=> b!3474598 (=> (not res!1401373) (not e!2152090))))

(declare-fun sepAndNonSepRulesDisjointChars!1640 (List!37324 List!37324) Bool)

(assert (=> b!3474598 (= res!1401373 (sepAndNonSepRulesDisjointChars!1640 rules!2135 rules!2135))))

(declare-fun b!3474599 () Bool)

(declare-fun isEmpty!21570 (BalanceConc!22148) Bool)

(assert (=> b!3474599 (= e!2152084 (isEmpty!21570 (_2!21606 lt!1182322)))))

(declare-fun res!1401389 () Bool)

(assert (=> b!3474600 (=> (not res!1401389) (not e!2152090))))

(declare-fun forall!7947 (List!37325 Int) Bool)

(assert (=> b!3474600 (= res!1401389 (forall!7947 tokens!494 lambda!122054))))

(declare-fun b!3474601 () Bool)

(declare-fun e!2152080 () Bool)

(declare-fun e!2152100 () Bool)

(declare-fun tp!1080203 () Bool)

(assert (=> b!3474601 (= e!2152080 (and e!2152100 tp!1080203))))

(declare-fun b!3474602 () Bool)

(assert (=> b!3474602 (= e!2152096 (matchR!4789 (regex!5446 (rule!8042 (h!42621 tokens!494))) lt!1182326))))

(declare-fun ruleValid!1744 (LexerInterface!5035 Rule!10692) Bool)

(assert (=> b!3474602 (ruleValid!1744 thiss!18206 (rule!8042 (h!42621 tokens!494)))))

(declare-fun lt!1182324 () Unit!52628)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!944 (LexerInterface!5035 Rule!10692 List!37324) Unit!52628)

(assert (=> b!3474602 (= lt!1182324 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!944 thiss!18206 (rule!8042 (h!42621 tokens!494)) rules!2135))))

(assert (=> b!3474603 (= e!2152094 e!2152074)))

(declare-fun res!1401382 () Bool)

(assert (=> b!3474603 (=> res!1401382 e!2152074)))

(assert (=> b!3474603 (= res!1401382 (not (contains!6915 rules!2135 (rule!8042 (h!42621 tokens!494)))))))

(declare-fun lt!1182313 () C!20596)

(declare-fun contains!6916 (List!37323 C!20596) Bool)

(declare-fun usedCharacters!680 (Regex!10205) List!37323)

(assert (=> b!3474603 (not (contains!6916 (usedCharacters!680 (regex!5446 (rule!8042 (h!42621 tokens!494)))) lt!1182313))))

(declare-fun lt!1182309 () Unit!52628)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!246 (LexerInterface!5035 List!37324 List!37324 Rule!10692 Rule!10692 C!20596) Unit!52628)

(assert (=> b!3474603 (= lt!1182309 (lemmaNonSepRuleNotContainsCharContainedInASepRule!246 thiss!18206 rules!2135 rules!2135 (rule!8042 (h!42621 tokens!494)) (rule!8042 separatorToken!241) lt!1182313))))

(declare-fun lt!1182319 () Unit!52628)

(declare-fun forallContained!1393 (List!37325 Int Token!10258) Unit!52628)

(assert (=> b!3474603 (= lt!1182319 (forallContained!1393 tokens!494 lambda!122055 (h!42621 (t!274934 tokens!494))))))

(declare-fun rulesProduceIndividualToken!2527 (LexerInterface!5035 List!37324 Token!10258) Bool)

(assert (=> b!3474603 (= (rulesProduceIndividualToken!2527 thiss!18206 rules!2135 (h!42621 (t!274934 tokens!494))) e!2152069)))

(declare-fun res!1401391 () Bool)

(assert (=> b!3474603 (=> (not res!1401391) (not e!2152069))))

(declare-fun size!28236 (BalanceConc!22150) Int)

(assert (=> b!3474603 (= res!1401391 (= (size!28236 (_1!21606 lt!1182310)) 1))))

(declare-fun lt!1182336 () BalanceConc!22148)

(declare-fun lex!2361 (LexerInterface!5035 List!37324 BalanceConc!22148) tuple2!36944)

(assert (=> b!3474603 (= lt!1182310 (lex!2361 thiss!18206 rules!2135 lt!1182336))))

(declare-fun lt!1182323 () BalanceConc!22150)

(declare-fun printTailRec!1530 (LexerInterface!5035 BalanceConc!22150 Int BalanceConc!22148) BalanceConc!22148)

(assert (=> b!3474603 (= lt!1182336 (printTailRec!1530 thiss!18206 lt!1182323 0 (BalanceConc!22149 Empty!11267)))))

(declare-fun print!2100 (LexerInterface!5035 BalanceConc!22150) BalanceConc!22148)

(assert (=> b!3474603 (= lt!1182336 (print!2100 thiss!18206 lt!1182323))))

(declare-fun singletonSeq!2542 (Token!10258) BalanceConc!22150)

(assert (=> b!3474603 (= lt!1182323 (singletonSeq!2542 (h!42621 (t!274934 tokens!494))))))

(assert (=> b!3474603 e!2152084))

(declare-fun res!1401398 () Bool)

(assert (=> b!3474603 (=> (not res!1401398) (not e!2152084))))

(assert (=> b!3474603 (= res!1401398 (= (size!28236 (_1!21606 lt!1182322)) 1))))

(declare-fun lt!1182328 () BalanceConc!22148)

(assert (=> b!3474603 (= lt!1182322 (lex!2361 thiss!18206 rules!2135 lt!1182328))))

(declare-fun lt!1182318 () BalanceConc!22150)

(assert (=> b!3474603 (= lt!1182328 (printTailRec!1530 thiss!18206 lt!1182318 0 (BalanceConc!22149 Empty!11267)))))

(assert (=> b!3474603 (= lt!1182328 (print!2100 thiss!18206 lt!1182318))))

(assert (=> b!3474603 (= lt!1182318 (singletonSeq!2542 separatorToken!241))))

(declare-fun lt!1182343 () Unit!52628)

(assert (=> b!3474603 (= lt!1182343 e!2152082)))

(declare-fun c!595951 () Bool)

(assert (=> b!3474603 (= c!595951 (not (contains!6916 (usedCharacters!680 (regex!5446 (rule!8042 separatorToken!241))) lt!1182313)))))

(declare-fun head!7331 (List!37323) C!20596)

(assert (=> b!3474603 (= lt!1182313 (head!7331 lt!1182339))))

(declare-fun e!2152095 () Bool)

(assert (=> b!3474603 e!2152095))

(declare-fun res!1401400 () Bool)

(assert (=> b!3474603 (=> (not res!1401400) (not e!2152095))))

(declare-fun lt!1182340 () Option!7545)

(declare-fun isDefined!5809 (Option!7545) Bool)

(assert (=> b!3474603 (= res!1401400 (isDefined!5809 lt!1182340))))

(declare-fun getRuleFromTag!1089 (LexerInterface!5035 List!37324 String!41714) Option!7545)

(assert (=> b!3474603 (= lt!1182340 (getRuleFromTag!1089 thiss!18206 rules!2135 (tag!6060 (rule!8042 separatorToken!241))))))

(declare-fun lt!1182332 () Unit!52628)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1089 (LexerInterface!5035 List!37324 List!37323 Token!10258) Unit!52628)

(assert (=> b!3474603 (= lt!1182332 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1089 thiss!18206 rules!2135 lt!1182339 separatorToken!241))))

(declare-fun lt!1182321 () BalanceConc!22148)

(declare-datatypes ((Option!7546 0))(
  ( (None!7545) (Some!7545 (v!36901 tuple2!36946)) )
))
(declare-fun maxPrefixOneRule!1742 (LexerInterface!5035 Rule!10692 List!37323) Option!7546)

(declare-fun apply!8781 (TokenValueInjection!10780 BalanceConc!22148) TokenValue!5676)

(declare-fun size!28237 (List!37323) Int)

(assert (=> b!3474603 (= (maxPrefixOneRule!1742 thiss!18206 (rule!8042 (h!42621 tokens!494)) lt!1182326) (Some!7545 (tuple2!36947 (Token!10259 (apply!8781 (transformation!5446 (rule!8042 (h!42621 tokens!494))) lt!1182321) (rule!8042 (h!42621 tokens!494)) (size!28237 lt!1182326) lt!1182326) Nil!37199)))))

(declare-fun lt!1182333 () Unit!52628)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!835 (LexerInterface!5035 List!37324 List!37323 List!37323 List!37323 Rule!10692) Unit!52628)

(assert (=> b!3474603 (= lt!1182333 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!835 thiss!18206 rules!2135 lt!1182326 lt!1182326 Nil!37199 (rule!8042 (h!42621 tokens!494))))))

(assert (=> b!3474603 e!2152070))

(declare-fun res!1401370 () Bool)

(assert (=> b!3474603 (=> (not res!1401370) (not e!2152070))))

(assert (=> b!3474603 (= res!1401370 (isDefined!5809 lt!1182316))))

(assert (=> b!3474603 (= lt!1182316 (getRuleFromTag!1089 thiss!18206 rules!2135 (tag!6060 (rule!8042 (h!42621 tokens!494)))))))

(declare-fun lt!1182325 () Unit!52628)

(assert (=> b!3474603 (= lt!1182325 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1089 thiss!18206 rules!2135 lt!1182326 (h!42621 tokens!494)))))

(declare-fun lt!1182317 () Unit!52628)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1024 (LexerInterface!5035 List!37324 List!37325 Token!10258) Unit!52628)

(assert (=> b!3474603 (= lt!1182317 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1024 thiss!18206 rules!2135 tokens!494 (h!42621 tokens!494)))))

(declare-fun b!3474604 () Bool)

(declare-fun e!2152098 () Bool)

(assert (=> b!3474604 (= e!2152074 e!2152098)))

(declare-fun res!1401390 () Bool)

(assert (=> b!3474604 (=> res!1401390 e!2152098)))

(declare-fun lt!1182342 () Option!7546)

(declare-fun isDefined!5810 (Option!7546) Bool)

(assert (=> b!3474604 (= res!1401390 (not (isDefined!5810 lt!1182342)))))

(declare-fun maxPrefix!2575 (LexerInterface!5035 List!37324 List!37323) Option!7546)

(assert (=> b!3474604 (= lt!1182342 (maxPrefix!2575 thiss!18206 rules!2135 lt!1182326))))

(declare-fun b!3474605 () Bool)

(declare-fun e!2152076 () Bool)

(declare-fun e!2152083 () Bool)

(assert (=> b!3474605 (= e!2152076 e!2152083)))

(declare-fun res!1401379 () Bool)

(assert (=> b!3474605 (=> res!1401379 e!2152083)))

(declare-fun isEmpty!21571 (BalanceConc!22150) Bool)

(assert (=> b!3474605 (= res!1401379 (isEmpty!21571 (_1!21606 (lex!2361 thiss!18206 rules!2135 lt!1182321))))))

(declare-fun seqFromList!3945 (List!37323) BalanceConc!22148)

(assert (=> b!3474605 (= lt!1182321 (seqFromList!3945 lt!1182326))))

(declare-fun b!3474606 () Bool)

(assert (=> b!3474606 (= e!2152098 e!2152096)))

(declare-fun res!1401383 () Bool)

(assert (=> b!3474606 (=> res!1401383 e!2152096)))

(assert (=> b!3474606 (= res!1401383 (not (= (_1!21607 lt!1182337) (h!42621 tokens!494))))))

(declare-fun get!11914 (Option!7546) tuple2!36946)

(assert (=> b!3474606 (= lt!1182337 (get!11914 lt!1182342))))

(declare-fun b!3474607 () Bool)

(assert (=> b!3474607 (= e!2152083 e!2152088)))

(declare-fun res!1401393 () Bool)

(assert (=> b!3474607 (=> res!1401393 e!2152088)))

(assert (=> b!3474607 (= res!1401393 (or (isSeparator!5446 (rule!8042 (h!42621 tokens!494))) (isSeparator!5446 (rule!8042 (h!42621 (t!274934 tokens!494))))))))

(declare-fun lt!1182320 () Unit!52628)

(assert (=> b!3474607 (= lt!1182320 (forallContained!1393 tokens!494 lambda!122054 (h!42621 (t!274934 tokens!494))))))

(declare-fun lt!1182344 () Unit!52628)

(assert (=> b!3474607 (= lt!1182344 (forallContained!1393 tokens!494 lambda!122054 (h!42621 tokens!494)))))

(declare-fun b!3474608 () Bool)

(declare-fun tp!1080202 () Bool)

(declare-fun inv!21 (TokenValue!5676) Bool)

(assert (=> b!3474608 (= e!2152091 (and (inv!21 (value!175671 (h!42621 tokens!494))) e!2152075 tp!1080202))))

(declare-fun tp!1080200 () Bool)

(declare-fun b!3474609 () Bool)

(declare-fun e!2152097 () Bool)

(declare-fun e!2152079 () Bool)

(assert (=> b!3474609 (= e!2152097 (and tp!1080200 (inv!50386 (tag!6060 (rule!8042 separatorToken!241))) (inv!50390 (transformation!5446 (rule!8042 separatorToken!241))) e!2152079))))

(declare-fun b!3474610 () Bool)

(declare-fun e!2152068 () Bool)

(assert (=> b!3474610 (= e!2152095 e!2152068)))

(declare-fun res!1401397 () Bool)

(assert (=> b!3474610 (=> (not res!1401397) (not e!2152068))))

(declare-fun lt!1182329 () Rule!10692)

(assert (=> b!3474610 (= res!1401397 (matchR!4789 (regex!5446 lt!1182329) lt!1182339))))

(assert (=> b!3474610 (= lt!1182329 (get!11913 lt!1182340))))

(declare-fun b!3474611 () Bool)

(assert (=> b!3474611 (= e!2152069 (isEmpty!21570 (_2!21606 lt!1182310)))))

(declare-fun b!3474612 () Bool)

(assert (=> b!3474612 (= e!2152068 (= (rule!8042 separatorToken!241) lt!1182329))))

(declare-fun b!3474613 () Bool)

(declare-fun e!2152081 () Bool)

(assert (=> b!3474613 (= e!2152081 false)))

(declare-fun tp!1080199 () Bool)

(declare-fun e!2152093 () Bool)

(declare-fun b!3474614 () Bool)

(assert (=> b!3474614 (= e!2152093 (and (inv!21 (value!175671 separatorToken!241)) e!2152097 tp!1080199))))

(declare-fun b!3474615 () Bool)

(declare-fun res!1401381 () Bool)

(assert (=> b!3474615 (=> (not res!1401381) (not e!2152090))))

(assert (=> b!3474615 (= res!1401381 (and (not ((_ is Nil!37201) tokens!494)) (not ((_ is Nil!37201) (t!274934 tokens!494)))))))

(declare-fun b!3474616 () Bool)

(declare-fun res!1401395 () Bool)

(assert (=> b!3474616 (=> (not res!1401395) (not e!2152090))))

(declare-fun rulesProduceEachTokenIndividually!1486 (LexerInterface!5035 List!37324 BalanceConc!22150) Bool)

(declare-fun seqFromList!3946 (List!37325) BalanceConc!22150)

(assert (=> b!3474616 (= res!1401395 (rulesProduceEachTokenIndividually!1486 thiss!18206 rules!2135 (seqFromList!3946 tokens!494)))))

(declare-fun b!3474617 () Bool)

(declare-fun tp!1080194 () Bool)

(declare-fun e!2152099 () Bool)

(assert (=> b!3474617 (= e!2152100 (and tp!1080194 (inv!50386 (tag!6060 (h!42620 rules!2135))) (inv!50390 (transformation!5446 (h!42620 rules!2135))) e!2152099))))

(declare-fun b!3474618 () Bool)

(declare-fun e!2152085 () Bool)

(assert (=> b!3474618 (= e!2152085 e!2152076)))

(declare-fun res!1401380 () Bool)

(assert (=> b!3474618 (=> res!1401380 e!2152076)))

(declare-fun lt!1182341 () List!37323)

(declare-fun lt!1182338 () List!37323)

(assert (=> b!3474618 (= res!1401380 (or (not (= lt!1182338 lt!1182326)) (not (= lt!1182341 lt!1182326))))))

(assert (=> b!3474618 (= lt!1182326 (list!13559 (charsOf!3460 (h!42621 tokens!494))))))

(assert (=> b!3474619 (= e!2152099 (and tp!1080193 tp!1080192))))

(declare-fun res!1401388 () Bool)

(assert (=> start!323118 (=> (not res!1401388) (not e!2152090))))

(assert (=> start!323118 (= res!1401388 ((_ is Lexer!5033) thiss!18206))))

(assert (=> start!323118 e!2152090))

(assert (=> start!323118 true))

(assert (=> start!323118 e!2152080))

(assert (=> start!323118 e!2152071))

(assert (=> start!323118 (and (inv!50389 separatorToken!241) e!2152093)))

(declare-fun b!3474620 () Bool)

(assert (=> b!3474620 (= e!2152078 e!2152086)))

(declare-fun res!1401371 () Bool)

(assert (=> b!3474620 (=> res!1401371 e!2152086)))

(assert (=> b!3474620 (= res!1401371 (not (= lt!1182331 lt!1182314)))))

(assert (=> b!3474620 (= lt!1182314 (++!9183 (++!9183 lt!1182326 lt!1182339) lt!1182335))))

(assert (=> b!3474621 (= e!2152079 (and tp!1080198 tp!1080201))))

(declare-fun b!3474622 () Bool)

(declare-fun res!1401396 () Bool)

(assert (=> b!3474622 (=> (not res!1401396) (not e!2152090))))

(assert (=> b!3474622 (= res!1401396 (rulesProduceIndividualToken!2527 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3474623 () Bool)

(assert (=> b!3474623 (= e!2152090 (not e!2152085))))

(declare-fun res!1401378 () Bool)

(assert (=> b!3474623 (=> res!1401378 e!2152085)))

(assert (=> b!3474623 (= res!1401378 (not (= lt!1182341 lt!1182338)))))

(declare-fun printList!1583 (LexerInterface!5035 List!37325) List!37323)

(assert (=> b!3474623 (= lt!1182338 (printList!1583 thiss!18206 (Cons!37201 (h!42621 tokens!494) Nil!37201)))))

(declare-fun lt!1182315 () BalanceConc!22148)

(assert (=> b!3474623 (= lt!1182341 (list!13559 lt!1182315))))

(declare-fun lt!1182327 () BalanceConc!22150)

(assert (=> b!3474623 (= lt!1182315 (printTailRec!1530 thiss!18206 lt!1182327 0 (BalanceConc!22149 Empty!11267)))))

(assert (=> b!3474623 (= lt!1182315 (print!2100 thiss!18206 lt!1182327))))

(assert (=> b!3474623 (= lt!1182327 (singletonSeq!2542 (h!42621 tokens!494)))))

(declare-fun b!3474624 () Bool)

(declare-fun Unit!52631 () Unit!52628)

(assert (=> b!3474624 (= e!2152082 Unit!52631)))

(declare-fun lt!1182311 () Unit!52628)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!504 (Regex!10205 List!37323 C!20596) Unit!52628)

(assert (=> b!3474624 (= lt!1182311 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!504 (regex!5446 (rule!8042 separatorToken!241)) lt!1182339 lt!1182313))))

(declare-fun res!1401374 () Bool)

(assert (=> b!3474624 (= res!1401374 (not (matchR!4789 (regex!5446 (rule!8042 separatorToken!241)) lt!1182339)))))

(assert (=> b!3474624 (=> (not res!1401374) (not e!2152081))))

(assert (=> b!3474624 e!2152081))

(declare-fun b!3474625 () Bool)

(assert (=> b!3474625 (= e!2152101 (= (rule!8042 (h!42621 tokens!494)) lt!1182308))))

(declare-fun b!3474626 () Bool)

(declare-fun res!1401384 () Bool)

(assert (=> b!3474626 (=> res!1401384 e!2152076)))

(assert (=> b!3474626 (= res!1401384 (not (rulesProduceIndividualToken!2527 thiss!18206 rules!2135 (h!42621 tokens!494))))))

(declare-fun b!3474627 () Bool)

(declare-fun res!1401377 () Bool)

(assert (=> b!3474627 (=> (not res!1401377) (not e!2152090))))

(assert (=> b!3474627 (= res!1401377 (isSeparator!5446 (rule!8042 separatorToken!241)))))

(assert (= (and start!323118 res!1401388) b!3474596))

(assert (= (and b!3474596 res!1401392) b!3474590))

(assert (= (and b!3474590 res!1401372) b!3474616))

(assert (= (and b!3474616 res!1401395) b!3474622))

(assert (= (and b!3474622 res!1401396) b!3474627))

(assert (= (and b!3474627 res!1401377) b!3474600))

(assert (= (and b!3474600 res!1401389) b!3474598))

(assert (= (and b!3474598 res!1401373) b!3474615))

(assert (= (and b!3474615 res!1401381) b!3474623))

(assert (= (and b!3474623 (not res!1401378)) b!3474618))

(assert (= (and b!3474618 (not res!1401380)) b!3474626))

(assert (= (and b!3474626 (not res!1401384)) b!3474605))

(assert (= (and b!3474605 (not res!1401379)) b!3474607))

(assert (= (and b!3474607 (not res!1401393)) b!3474592))

(assert (= (and b!3474592 (not res!1401399)) b!3474620))

(assert (= (and b!3474620 (not res!1401371)) b!3474587))

(assert (= (and b!3474587 (not res!1401376)) b!3474603))

(assert (= (and b!3474603 res!1401370) b!3474595))

(assert (= (and b!3474595 res!1401375) b!3474625))

(assert (= (and b!3474603 res!1401400) b!3474610))

(assert (= (and b!3474610 res!1401397) b!3474612))

(assert (= (and b!3474603 c!595951) b!3474624))

(assert (= (and b!3474603 (not c!595951)) b!3474597))

(assert (= (and b!3474624 res!1401374) b!3474613))

(assert (= (and b!3474603 res!1401398) b!3474593))

(assert (= (and b!3474593 res!1401386) b!3474599))

(assert (= (and b!3474603 res!1401391) b!3474589))

(assert (= (and b!3474589 res!1401394) b!3474611))

(assert (= (and b!3474603 (not res!1401382)) b!3474585))

(assert (= (and b!3474585 (not res!1401385)) b!3474604))

(assert (= (and b!3474604 (not res!1401390)) b!3474606))

(assert (= (and b!3474606 (not res!1401383)) b!3474594))

(assert (= (and b!3474594 (not res!1401387)) b!3474602))

(assert (= b!3474617 b!3474619))

(assert (= b!3474601 b!3474617))

(assert (= (and start!323118 ((_ is Cons!37200) rules!2135)) b!3474601))

(assert (= b!3474591 b!3474588))

(assert (= b!3474608 b!3474591))

(assert (= b!3474586 b!3474608))

(assert (= (and start!323118 ((_ is Cons!37201) tokens!494)) b!3474586))

(assert (= b!3474609 b!3474621))

(assert (= b!3474614 b!3474609))

(assert (= start!323118 b!3474614))

(declare-fun m!3888513 () Bool)

(assert (=> b!3474591 m!3888513))

(declare-fun m!3888515 () Bool)

(assert (=> b!3474591 m!3888515))

(declare-fun m!3888517 () Bool)

(assert (=> b!3474600 m!3888517))

(declare-fun m!3888519 () Bool)

(assert (=> b!3474611 m!3888519))

(declare-fun m!3888521 () Bool)

(assert (=> b!3474622 m!3888521))

(declare-fun m!3888523 () Bool)

(assert (=> b!3474592 m!3888523))

(declare-fun m!3888525 () Bool)

(assert (=> b!3474592 m!3888525))

(declare-fun m!3888527 () Bool)

(assert (=> b!3474592 m!3888527))

(declare-fun m!3888529 () Bool)

(assert (=> b!3474592 m!3888529))

(declare-fun m!3888531 () Bool)

(assert (=> b!3474592 m!3888531))

(declare-fun m!3888533 () Bool)

(assert (=> b!3474592 m!3888533))

(assert (=> b!3474592 m!3888523))

(assert (=> b!3474592 m!3888529))

(declare-fun m!3888535 () Bool)

(assert (=> b!3474592 m!3888535))

(assert (=> b!3474592 m!3888525))

(declare-fun m!3888537 () Bool)

(assert (=> b!3474592 m!3888537))

(declare-fun m!3888539 () Bool)

(assert (=> b!3474592 m!3888539))

(assert (=> b!3474592 m!3888531))

(assert (=> b!3474592 m!3888535))

(declare-fun m!3888541 () Bool)

(assert (=> b!3474592 m!3888541))

(declare-fun m!3888543 () Bool)

(assert (=> b!3474618 m!3888543))

(assert (=> b!3474618 m!3888543))

(declare-fun m!3888545 () Bool)

(assert (=> b!3474618 m!3888545))

(declare-fun m!3888547 () Bool)

(assert (=> b!3474623 m!3888547))

(declare-fun m!3888549 () Bool)

(assert (=> b!3474623 m!3888549))

(declare-fun m!3888551 () Bool)

(assert (=> b!3474623 m!3888551))

(declare-fun m!3888553 () Bool)

(assert (=> b!3474623 m!3888553))

(declare-fun m!3888555 () Bool)

(assert (=> b!3474623 m!3888555))

(declare-fun m!3888557 () Bool)

(assert (=> b!3474598 m!3888557))

(declare-fun m!3888559 () Bool)

(assert (=> b!3474594 m!3888559))

(declare-fun m!3888561 () Bool)

(assert (=> b!3474616 m!3888561))

(assert (=> b!3474616 m!3888561))

(declare-fun m!3888563 () Bool)

(assert (=> b!3474616 m!3888563))

(declare-fun m!3888565 () Bool)

(assert (=> b!3474605 m!3888565))

(declare-fun m!3888567 () Bool)

(assert (=> b!3474605 m!3888567))

(declare-fun m!3888569 () Bool)

(assert (=> b!3474605 m!3888569))

(declare-fun m!3888571 () Bool)

(assert (=> b!3474593 m!3888571))

(declare-fun m!3888573 () Bool)

(assert (=> b!3474603 m!3888573))

(declare-fun m!3888575 () Bool)

(assert (=> b!3474603 m!3888575))

(declare-fun m!3888577 () Bool)

(assert (=> b!3474603 m!3888577))

(declare-fun m!3888579 () Bool)

(assert (=> b!3474603 m!3888579))

(declare-fun m!3888581 () Bool)

(assert (=> b!3474603 m!3888581))

(declare-fun m!3888583 () Bool)

(assert (=> b!3474603 m!3888583))

(declare-fun m!3888585 () Bool)

(assert (=> b!3474603 m!3888585))

(declare-fun m!3888587 () Bool)

(assert (=> b!3474603 m!3888587))

(declare-fun m!3888589 () Bool)

(assert (=> b!3474603 m!3888589))

(declare-fun m!3888591 () Bool)

(assert (=> b!3474603 m!3888591))

(declare-fun m!3888593 () Bool)

(assert (=> b!3474603 m!3888593))

(declare-fun m!3888595 () Bool)

(assert (=> b!3474603 m!3888595))

(declare-fun m!3888597 () Bool)

(assert (=> b!3474603 m!3888597))

(declare-fun m!3888599 () Bool)

(assert (=> b!3474603 m!3888599))

(declare-fun m!3888601 () Bool)

(assert (=> b!3474603 m!3888601))

(declare-fun m!3888603 () Bool)

(assert (=> b!3474603 m!3888603))

(declare-fun m!3888605 () Bool)

(assert (=> b!3474603 m!3888605))

(declare-fun m!3888607 () Bool)

(assert (=> b!3474603 m!3888607))

(declare-fun m!3888609 () Bool)

(assert (=> b!3474603 m!3888609))

(declare-fun m!3888611 () Bool)

(assert (=> b!3474603 m!3888611))

(declare-fun m!3888613 () Bool)

(assert (=> b!3474603 m!3888613))

(declare-fun m!3888615 () Bool)

(assert (=> b!3474603 m!3888615))

(declare-fun m!3888617 () Bool)

(assert (=> b!3474603 m!3888617))

(declare-fun m!3888619 () Bool)

(assert (=> b!3474603 m!3888619))

(declare-fun m!3888621 () Bool)

(assert (=> b!3474603 m!3888621))

(declare-fun m!3888623 () Bool)

(assert (=> b!3474603 m!3888623))

(declare-fun m!3888625 () Bool)

(assert (=> b!3474603 m!3888625))

(declare-fun m!3888627 () Bool)

(assert (=> b!3474603 m!3888627))

(declare-fun m!3888629 () Bool)

(assert (=> b!3474603 m!3888629))

(assert (=> b!3474603 m!3888597))

(declare-fun m!3888631 () Bool)

(assert (=> b!3474603 m!3888631))

(assert (=> b!3474603 m!3888577))

(declare-fun m!3888633 () Bool)

(assert (=> b!3474624 m!3888633))

(declare-fun m!3888635 () Bool)

(assert (=> b!3474624 m!3888635))

(declare-fun m!3888637 () Bool)

(assert (=> start!323118 m!3888637))

(declare-fun m!3888639 () Bool)

(assert (=> b!3474614 m!3888639))

(declare-fun m!3888641 () Bool)

(assert (=> b!3474596 m!3888641))

(declare-fun m!3888643 () Bool)

(assert (=> b!3474626 m!3888643))

(declare-fun m!3888645 () Bool)

(assert (=> b!3474602 m!3888645))

(declare-fun m!3888647 () Bool)

(assert (=> b!3474602 m!3888647))

(declare-fun m!3888649 () Bool)

(assert (=> b!3474602 m!3888649))

(declare-fun m!3888651 () Bool)

(assert (=> b!3474589 m!3888651))

(declare-fun m!3888653 () Bool)

(assert (=> b!3474585 m!3888653))

(declare-fun m!3888655 () Bool)

(assert (=> b!3474608 m!3888655))

(declare-fun m!3888657 () Bool)

(assert (=> b!3474617 m!3888657))

(declare-fun m!3888659 () Bool)

(assert (=> b!3474617 m!3888659))

(declare-fun m!3888661 () Bool)

(assert (=> b!3474606 m!3888661))

(declare-fun m!3888663 () Bool)

(assert (=> b!3474607 m!3888663))

(declare-fun m!3888665 () Bool)

(assert (=> b!3474607 m!3888665))

(declare-fun m!3888667 () Bool)

(assert (=> b!3474599 m!3888667))

(declare-fun m!3888669 () Bool)

(assert (=> b!3474610 m!3888669))

(declare-fun m!3888671 () Bool)

(assert (=> b!3474610 m!3888671))

(declare-fun m!3888673 () Bool)

(assert (=> b!3474587 m!3888673))

(declare-fun m!3888675 () Bool)

(assert (=> b!3474587 m!3888675))

(declare-fun m!3888677 () Bool)

(assert (=> b!3474620 m!3888677))

(assert (=> b!3474620 m!3888677))

(declare-fun m!3888679 () Bool)

(assert (=> b!3474620 m!3888679))

(declare-fun m!3888681 () Bool)

(assert (=> b!3474604 m!3888681))

(declare-fun m!3888683 () Bool)

(assert (=> b!3474604 m!3888683))

(declare-fun m!3888685 () Bool)

(assert (=> b!3474609 m!3888685))

(declare-fun m!3888687 () Bool)

(assert (=> b!3474609 m!3888687))

(declare-fun m!3888689 () Bool)

(assert (=> b!3474586 m!3888689))

(declare-fun m!3888691 () Bool)

(assert (=> b!3474590 m!3888691))

(declare-fun m!3888693 () Bool)

(assert (=> b!3474595 m!3888693))

(declare-fun m!3888695 () Bool)

(assert (=> b!3474595 m!3888695))

(check-sat (not b!3474614) (not b_next!90775) (not b!3474609) (not b!3474604) (not b!3474616) (not b!3474596) (not b!3474590) (not b_next!90777) (not b_next!90771) (not b!3474605) (not b!3474622) (not b!3474620) (not b!3474591) (not b!3474594) (not start!323118) (not b!3474608) (not b!3474587) (not b!3474600) (not b!3474606) b_and!245037 (not b!3474586) (not b!3474603) (not b!3474618) (not b!3474592) b_and!245043 b_and!245035 (not b!3474601) (not b!3474636) (not b!3474595) (not b!3474589) (not b_next!90773) (not b!3474599) (not b!3474585) (not b_next!90769) (not b!3474624) b_and!245041 (not b!3474626) (not b_next!90779) (not b!3474623) (not b!3474607) b_and!245039 (not b!3474598) (not b!3474602) (not b!3474610) (not b!3474593) (not b!3474617) (not b!3474611) b_and!245045)
(check-sat b_and!245037 (not b_next!90775) b_and!245043 b_and!245035 (not b_next!90773) (not b_next!90769) b_and!245041 (not b_next!90779) b_and!245039 (not b_next!90777) b_and!245045 (not b_next!90771))
