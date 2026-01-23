; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!313048 () Bool)

(assert start!313048)

(declare-fun b!3366242 () Bool)

(declare-fun b_free!87949 () Bool)

(declare-fun b_next!88653 () Bool)

(assert (=> b!3366242 (= b_free!87949 (not b_next!88653))))

(declare-fun tp!1053459 () Bool)

(declare-fun b_and!233199 () Bool)

(assert (=> b!3366242 (= tp!1053459 b_and!233199)))

(declare-fun b_free!87951 () Bool)

(declare-fun b_next!88655 () Bool)

(assert (=> b!3366242 (= b_free!87951 (not b_next!88655))))

(declare-fun tp!1053467 () Bool)

(declare-fun b_and!233201 () Bool)

(assert (=> b!3366242 (= tp!1053467 b_and!233201)))

(declare-fun b!3366256 () Bool)

(declare-fun b_free!87953 () Bool)

(declare-fun b_next!88657 () Bool)

(assert (=> b!3366256 (= b_free!87953 (not b_next!88657))))

(declare-fun tp!1053462 () Bool)

(declare-fun b_and!233203 () Bool)

(assert (=> b!3366256 (= tp!1053462 b_and!233203)))

(declare-fun b_free!87955 () Bool)

(declare-fun b_next!88659 () Bool)

(assert (=> b!3366256 (= b_free!87955 (not b_next!88659))))

(declare-fun tp!1053461 () Bool)

(declare-fun b_and!233205 () Bool)

(assert (=> b!3366256 (= tp!1053461 b_and!233205)))

(declare-fun b!3366238 () Bool)

(declare-fun b_free!87957 () Bool)

(declare-fun b_next!88661 () Bool)

(assert (=> b!3366238 (= b_free!87957 (not b_next!88661))))

(declare-fun tp!1053463 () Bool)

(declare-fun b_and!233207 () Bool)

(assert (=> b!3366238 (= tp!1053463 b_and!233207)))

(declare-fun b_free!87959 () Bool)

(declare-fun b_next!88663 () Bool)

(assert (=> b!3366238 (= b_free!87959 (not b_next!88663))))

(declare-fun tp!1053468 () Bool)

(declare-fun b_and!233209 () Bool)

(assert (=> b!3366238 (= tp!1053468 b_and!233209)))

(declare-fun e!2089236 () Bool)

(declare-datatypes ((C!20390 0))(
  ( (C!20391 (val!12243 Int)) )
))
(declare-datatypes ((Regex!10102 0))(
  ( (ElementMatch!10102 (c!573148 C!20390)) (Concat!15675 (regOne!20716 Regex!10102) (regTwo!20716 Regex!10102)) (EmptyExpr!10102) (Star!10102 (reg!10431 Regex!10102)) (EmptyLang!10102) (Union!10102 (regOne!20717 Regex!10102) (regTwo!20717 Regex!10102)) )
))
(declare-datatypes ((List!36844 0))(
  ( (Nil!36720) (Cons!36720 (h!42140 (_ BitVec 16)) (t!261507 List!36844)) )
))
(declare-datatypes ((TokenValue!5573 0))(
  ( (FloatLiteralValue!11146 (text!39456 List!36844)) (TokenValueExt!5572 (__x!23363 Int)) (Broken!27865 (value!172711 List!36844)) (Object!5696) (End!5573) (Def!5573) (Underscore!5573) (Match!5573) (Else!5573) (Error!5573) (Case!5573) (If!5573) (Extends!5573) (Abstract!5573) (Class!5573) (Val!5573) (DelimiterValue!11146 (del!5633 List!36844)) (KeywordValue!5579 (value!172712 List!36844)) (CommentValue!11146 (value!172713 List!36844)) (WhitespaceValue!11146 (value!172714 List!36844)) (IndentationValue!5573 (value!172715 List!36844)) (String!41200) (Int32!5573) (Broken!27866 (value!172716 List!36844)) (Boolean!5574) (Unit!51826) (OperatorValue!5576 (op!5633 List!36844)) (IdentifierValue!11146 (value!172717 List!36844)) (IdentifierValue!11147 (value!172718 List!36844)) (WhitespaceValue!11147 (value!172719 List!36844)) (True!11146) (False!11146) (Broken!27867 (value!172720 List!36844)) (Broken!27868 (value!172721 List!36844)) (True!11147) (RightBrace!5573) (RightBracket!5573) (Colon!5573) (Null!5573) (Comma!5573) (LeftBracket!5573) (False!11147) (LeftBrace!5573) (ImaginaryLiteralValue!5573 (text!39457 List!36844)) (StringLiteralValue!16719 (value!172722 List!36844)) (EOFValue!5573 (value!172723 List!36844)) (IdentValue!5573 (value!172724 List!36844)) (DelimiterValue!11147 (value!172725 List!36844)) (DedentValue!5573 (value!172726 List!36844)) (NewLineValue!5573 (value!172727 List!36844)) (IntegerValue!16719 (value!172728 (_ BitVec 32)) (text!39458 List!36844)) (IntegerValue!16720 (value!172729 Int) (text!39459 List!36844)) (Times!5573) (Or!5573) (Equal!5573) (Minus!5573) (Broken!27869 (value!172730 List!36844)) (And!5573) (Div!5573) (LessEqual!5573) (Mod!5573) (Concat!15676) (Not!5573) (Plus!5573) (SpaceValue!5573 (value!172731 List!36844)) (IntegerValue!16721 (value!172732 Int) (text!39460 List!36844)) (StringLiteralValue!16720 (text!39461 List!36844)) (FloatLiteralValue!11147 (text!39462 List!36844)) (BytesLiteralValue!5573 (value!172733 List!36844)) (CommentValue!11147 (value!172734 List!36844)) (StringLiteralValue!16721 (value!172735 List!36844)) (ErrorTokenValue!5573 (msg!5634 List!36844)) )
))
(declare-datatypes ((List!36845 0))(
  ( (Nil!36721) (Cons!36721 (h!42141 C!20390) (t!261508 List!36845)) )
))
(declare-datatypes ((IArray!22127 0))(
  ( (IArray!22128 (innerList!11121 List!36845)) )
))
(declare-datatypes ((Conc!11061 0))(
  ( (Node!11061 (left!28623 Conc!11061) (right!28953 Conc!11061) (csize!22352 Int) (cheight!11272 Int)) (Leaf!17344 (xs!14211 IArray!22127) (csize!22353 Int)) (Empty!11061) )
))
(declare-datatypes ((BalanceConc!21736 0))(
  ( (BalanceConc!21737 (c!573149 Conc!11061)) )
))
(declare-datatypes ((String!41201 0))(
  ( (String!41202 (value!172736 String)) )
))
(declare-datatypes ((TokenValueInjection!10574 0))(
  ( (TokenValueInjection!10575 (toValue!7523 Int) (toChars!7382 Int)) )
))
(declare-datatypes ((Rule!10486 0))(
  ( (Rule!10487 (regex!5343 Regex!10102) (tag!5899 String!41201) (isSeparator!5343 Bool) (transformation!5343 TokenValueInjection!10574)) )
))
(declare-datatypes ((List!36846 0))(
  ( (Nil!36722) (Cons!36722 (h!42142 Rule!10486) (t!261509 List!36846)) )
))
(declare-fun rules!2135 () List!36846)

(declare-fun e!2089237 () Bool)

(declare-fun tp!1053458 () Bool)

(declare-fun b!3366237 () Bool)

(declare-fun inv!49775 (String!41201) Bool)

(declare-fun inv!49778 (TokenValueInjection!10574) Bool)

(assert (=> b!3366237 (= e!2089236 (and tp!1053458 (inv!49775 (tag!5899 (h!42142 rules!2135))) (inv!49778 (transformation!5343 (h!42142 rules!2135))) e!2089237))))

(declare-fun b!3366239 () Bool)

(declare-fun res!1361167 () Bool)

(declare-fun e!2089232 () Bool)

(assert (=> b!3366239 (=> res!1361167 e!2089232)))

(declare-fun lt!1142211 () List!36845)

(declare-datatypes ((LexerInterface!4932 0))(
  ( (LexerInterfaceExt!4929 (__x!23364 Int)) (Lexer!4930) )
))
(declare-fun thiss!18206 () LexerInterface!4932)

(declare-datatypes ((Token!10052 0))(
  ( (Token!10053 (value!172737 TokenValue!5573) (rule!7881 Rule!10486) (size!27786 Int) (originalCharacters!6057 List!36845)) )
))
(declare-datatypes ((List!36847 0))(
  ( (Nil!36723) (Cons!36723 (h!42143 Token!10052) (t!261510 List!36847)) )
))
(declare-datatypes ((IArray!22129 0))(
  ( (IArray!22130 (innerList!11122 List!36847)) )
))
(declare-datatypes ((Conc!11062 0))(
  ( (Node!11062 (left!28624 Conc!11062) (right!28954 Conc!11062) (csize!22354 Int) (cheight!11273 Int)) (Leaf!17345 (xs!14212 IArray!22129) (csize!22355 Int)) (Empty!11062) )
))
(declare-datatypes ((BalanceConc!21738 0))(
  ( (BalanceConc!21739 (c!573150 Conc!11062)) )
))
(declare-fun isEmpty!20914 (BalanceConc!21738) Bool)

(declare-datatypes ((tuple2!36268 0))(
  ( (tuple2!36269 (_1!21268 BalanceConc!21738) (_2!21268 BalanceConc!21736)) )
))
(declare-fun lex!2258 (LexerInterface!4932 List!36846 BalanceConc!21736) tuple2!36268)

(declare-fun seqFromList!3739 (List!36845) BalanceConc!21736)

(assert (=> b!3366239 (= res!1361167 (isEmpty!20914 (_1!21268 (lex!2258 thiss!18206 rules!2135 (seqFromList!3739 lt!1142211)))))))

(declare-fun b!3366240 () Bool)

(declare-fun res!1361164 () Bool)

(assert (=> b!3366240 (=> res!1361164 e!2089232)))

(declare-fun tokens!494 () List!36847)

(declare-fun rulesProduceIndividualToken!2424 (LexerInterface!4932 List!36846 Token!10052) Bool)

(assert (=> b!3366240 (= res!1361164 (not (rulesProduceIndividualToken!2424 thiss!18206 rules!2135 (h!42143 tokens!494))))))

(declare-fun tp!1053457 () Bool)

(declare-fun b!3366241 () Bool)

(declare-fun e!2089241 () Bool)

(declare-fun e!2089252 () Bool)

(assert (=> b!3366241 (= e!2089241 (and tp!1053457 (inv!49775 (tag!5899 (rule!7881 (h!42143 tokens!494)))) (inv!49778 (transformation!5343 (rule!7881 (h!42143 tokens!494)))) e!2089252))))

(assert (=> b!3366242 (= e!2089237 (and tp!1053459 tp!1053467))))

(declare-fun b!3366243 () Bool)

(declare-fun e!2089234 () Bool)

(declare-fun tp!1053460 () Bool)

(assert (=> b!3366243 (= e!2089234 (and e!2089236 tp!1053460))))

(declare-fun b!3366244 () Bool)

(declare-fun res!1361163 () Bool)

(declare-fun e!2089242 () Bool)

(assert (=> b!3366244 (=> (not res!1361163) (not e!2089242))))

(declare-fun lambda!120160 () Int)

(declare-fun forall!7698 (List!36847 Int) Bool)

(assert (=> b!3366244 (= res!1361163 (forall!7698 tokens!494 lambda!120160))))

(declare-fun b!3366245 () Bool)

(declare-fun e!2089243 () Bool)

(declare-fun e!2089244 () Bool)

(assert (=> b!3366245 (= e!2089243 e!2089244)))

(declare-fun res!1361150 () Bool)

(assert (=> b!3366245 (=> res!1361150 e!2089244)))

(declare-fun lt!1142212 () BalanceConc!21736)

(declare-fun lt!1142205 () List!36845)

(declare-fun list!13254 (BalanceConc!21736) List!36845)

(declare-fun ++!8954 (List!36845 List!36845) List!36845)

(assert (=> b!3366245 (= res!1361150 (not (= (list!13254 lt!1142212) (++!8954 lt!1142211 lt!1142205))))))

(declare-fun separatorToken!241 () Token!10052)

(declare-fun charsOf!3357 (Token!10052) BalanceConc!21736)

(assert (=> b!3366245 (= lt!1142205 (list!13254 (charsOf!3357 separatorToken!241)))))

(declare-fun lt!1142203 () BalanceConc!21738)

(declare-fun printWithSeparatorToken!123 (LexerInterface!4932 BalanceConc!21738 Token!10052) BalanceConc!21736)

(assert (=> b!3366245 (= lt!1142212 (printWithSeparatorToken!123 thiss!18206 lt!1142203 separatorToken!241))))

(declare-fun b!3366246 () Bool)

(declare-fun res!1361162 () Bool)

(assert (=> b!3366246 (=> (not res!1361162) (not e!2089242))))

(declare-fun sepAndNonSepRulesDisjointChars!1537 (List!36846 List!36846) Bool)

(assert (=> b!3366246 (= res!1361162 (sepAndNonSepRulesDisjointChars!1537 rules!2135 rules!2135))))

(declare-fun b!3366247 () Bool)

(declare-fun e!2089247 () Bool)

(assert (=> b!3366247 (= e!2089247 e!2089242)))

(declare-fun res!1361156 () Bool)

(assert (=> b!3366247 (=> (not res!1361156) (not e!2089242))))

(declare-fun rulesProduceEachTokenIndividually!1383 (LexerInterface!4932 List!36846 BalanceConc!21738) Bool)

(assert (=> b!3366247 (= res!1361156 (rulesProduceEachTokenIndividually!1383 thiss!18206 rules!2135 lt!1142203))))

(declare-fun seqFromList!3740 (List!36847) BalanceConc!21738)

(assert (=> b!3366247 (= lt!1142203 (seqFromList!3740 tokens!494))))

(declare-fun b!3366248 () Bool)

(declare-fun res!1361152 () Bool)

(assert (=> b!3366248 (=> (not res!1361152) (not e!2089247))))

(declare-fun rulesInvariant!4329 (LexerInterface!4932 List!36846) Bool)

(assert (=> b!3366248 (= res!1361152 (rulesInvariant!4329 thiss!18206 rules!2135))))

(declare-fun b!3366249 () Bool)

(declare-fun e!2089233 () Bool)

(declare-fun lt!1142216 () Rule!10486)

(assert (=> b!3366249 (= e!2089233 (= (rule!7881 (h!42143 tokens!494)) lt!1142216))))

(declare-fun b!3366250 () Bool)

(declare-fun res!1361157 () Bool)

(assert (=> b!3366250 (=> (not res!1361157) (not e!2089242))))

(assert (=> b!3366250 (= res!1361157 (rulesProduceIndividualToken!2424 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3366251 () Bool)

(declare-fun contains!6674 (List!36846 Rule!10486) Bool)

(assert (=> b!3366251 (= e!2089244 (contains!6674 rules!2135 (rule!7881 (h!42143 tokens!494))))))

(declare-fun e!2089229 () Bool)

(assert (=> b!3366251 e!2089229))

(declare-fun res!1361153 () Bool)

(assert (=> b!3366251 (=> (not res!1361153) (not e!2089229))))

(declare-datatypes ((Option!7337 0))(
  ( (None!7336) (Some!7336 (v!36322 Rule!10486)) )
))
(declare-fun lt!1142210 () Option!7337)

(declare-fun isDefined!5677 (Option!7337) Bool)

(assert (=> b!3366251 (= res!1361153 (isDefined!5677 lt!1142210))))

(declare-fun getRuleFromTag!998 (LexerInterface!4932 List!36846 String!41201) Option!7337)

(assert (=> b!3366251 (= lt!1142210 (getRuleFromTag!998 thiss!18206 rules!2135 (tag!5899 (rule!7881 separatorToken!241))))))

(declare-datatypes ((Unit!51827 0))(
  ( (Unit!51828) )
))
(declare-fun lt!1142202 () Unit!51827)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!998 (LexerInterface!4932 List!36846 List!36845 Token!10052) Unit!51827)

(assert (=> b!3366251 (= lt!1142202 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!998 thiss!18206 rules!2135 lt!1142205 separatorToken!241))))

(declare-fun e!2089231 () Bool)

(assert (=> b!3366251 e!2089231))

(declare-fun res!1361155 () Bool)

(assert (=> b!3366251 (=> (not res!1361155) (not e!2089231))))

(declare-fun lt!1142201 () Option!7337)

(assert (=> b!3366251 (= res!1361155 (isDefined!5677 lt!1142201))))

(assert (=> b!3366251 (= lt!1142201 (getRuleFromTag!998 thiss!18206 rules!2135 (tag!5899 (rule!7881 (h!42143 tokens!494)))))))

(declare-fun lt!1142217 () Unit!51827)

(assert (=> b!3366251 (= lt!1142217 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!998 thiss!18206 rules!2135 lt!1142211 (h!42143 tokens!494)))))

(declare-fun lt!1142208 () Unit!51827)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!927 (LexerInterface!4932 List!36846 List!36847 Token!10052) Unit!51827)

(assert (=> b!3366251 (= lt!1142208 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!927 thiss!18206 rules!2135 tokens!494 (h!42143 tokens!494)))))

(declare-fun isEmpty!20915 (List!36845) Bool)

(declare-fun getSuffix!1437 (List!36845 List!36845) List!36845)

(assert (=> b!3366251 (isEmpty!20915 (getSuffix!1437 lt!1142211 lt!1142211))))

(declare-fun lt!1142207 () Unit!51827)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!95 (List!36845) Unit!51827)

(assert (=> b!3366251 (= lt!1142207 (lemmaGetSuffixOnListWithItSelfIsEmpty!95 lt!1142211))))

(assert (=> b!3366238 (= e!2089252 (and tp!1053463 tp!1053468))))

(declare-fun res!1361158 () Bool)

(assert (=> start!313048 (=> (not res!1361158) (not e!2089247))))

(assert (=> start!313048 (= res!1361158 (is-Lexer!4930 thiss!18206))))

(assert (=> start!313048 e!2089247))

(assert (=> start!313048 true))

(assert (=> start!313048 e!2089234))

(declare-fun e!2089239 () Bool)

(declare-fun inv!49779 (Token!10052) Bool)

(assert (=> start!313048 (and (inv!49779 separatorToken!241) e!2089239)))

(declare-fun e!2089235 () Bool)

(assert (=> start!313048 e!2089235))

(declare-fun b!3366252 () Bool)

(declare-fun e!2089230 () Bool)

(assert (=> b!3366252 (= e!2089230 e!2089232)))

(declare-fun res!1361161 () Bool)

(assert (=> b!3366252 (=> res!1361161 e!2089232)))

(declare-fun lt!1142215 () List!36845)

(declare-fun lt!1142209 () List!36845)

(assert (=> b!3366252 (= res!1361161 (or (not (= lt!1142215 lt!1142211)) (not (= lt!1142209 lt!1142211))))))

(assert (=> b!3366252 (= lt!1142211 (list!13254 (charsOf!3357 (h!42143 tokens!494))))))

(declare-fun b!3366253 () Bool)

(declare-fun tp!1053469 () Bool)

(declare-fun e!2089248 () Bool)

(declare-fun e!2089249 () Bool)

(assert (=> b!3366253 (= e!2089248 (and tp!1053469 (inv!49775 (tag!5899 (rule!7881 separatorToken!241))) (inv!49778 (transformation!5343 (rule!7881 separatorToken!241))) e!2089249))))

(declare-fun b!3366254 () Bool)

(declare-fun res!1361160 () Bool)

(assert (=> b!3366254 (=> (not res!1361160) (not e!2089247))))

(declare-fun isEmpty!20916 (List!36846) Bool)

(assert (=> b!3366254 (= res!1361160 (not (isEmpty!20916 rules!2135)))))

(declare-fun tp!1053466 () Bool)

(declare-fun b!3366255 () Bool)

(declare-fun e!2089246 () Bool)

(declare-fun inv!21 (TokenValue!5573) Bool)

(assert (=> b!3366255 (= e!2089246 (and (inv!21 (value!172737 (h!42143 tokens!494))) e!2089241 tp!1053466))))

(assert (=> b!3366256 (= e!2089249 (and tp!1053462 tp!1053461))))

(declare-fun b!3366257 () Bool)

(declare-fun res!1361159 () Bool)

(assert (=> b!3366257 (=> (not res!1361159) (not e!2089242))))

(assert (=> b!3366257 (= res!1361159 (isSeparator!5343 (rule!7881 separatorToken!241)))))

(declare-fun b!3366258 () Bool)

(assert (=> b!3366258 (= e!2089232 e!2089243)))

(declare-fun res!1361154 () Bool)

(assert (=> b!3366258 (=> res!1361154 e!2089243)))

(assert (=> b!3366258 (= res!1361154 (isSeparator!5343 (rule!7881 (h!42143 tokens!494))))))

(declare-fun lt!1142213 () Unit!51827)

(declare-fun forallContained!1290 (List!36847 Int Token!10052) Unit!51827)

(assert (=> b!3366258 (= lt!1142213 (forallContained!1290 tokens!494 lambda!120160 (h!42143 tokens!494)))))

(declare-fun b!3366259 () Bool)

(declare-fun e!2089245 () Bool)

(assert (=> b!3366259 (= e!2089229 e!2089245)))

(declare-fun res!1361151 () Bool)

(assert (=> b!3366259 (=> (not res!1361151) (not e!2089245))))

(declare-fun lt!1142206 () Rule!10486)

(declare-fun matchR!4694 (Regex!10102 List!36845) Bool)

(assert (=> b!3366259 (= res!1361151 (matchR!4694 (regex!5343 lt!1142206) lt!1142205))))

(declare-fun get!11706 (Option!7337) Rule!10486)

(assert (=> b!3366259 (= lt!1142206 (get!11706 lt!1142210))))

(declare-fun b!3366260 () Bool)

(declare-fun tp!1053464 () Bool)

(assert (=> b!3366260 (= e!2089235 (and (inv!49779 (h!42143 tokens!494)) e!2089246 tp!1053464))))

(declare-fun b!3366261 () Bool)

(declare-fun res!1361165 () Bool)

(assert (=> b!3366261 (=> (not res!1361165) (not e!2089242))))

(assert (=> b!3366261 (= res!1361165 (and (not (is-Nil!36723 tokens!494)) (is-Nil!36723 (t!261510 tokens!494))))))

(declare-fun b!3366262 () Bool)

(assert (=> b!3366262 (= e!2089231 e!2089233)))

(declare-fun res!1361149 () Bool)

(assert (=> b!3366262 (=> (not res!1361149) (not e!2089233))))

(assert (=> b!3366262 (= res!1361149 (matchR!4694 (regex!5343 lt!1142216) lt!1142211))))

(assert (=> b!3366262 (= lt!1142216 (get!11706 lt!1142201))))

(declare-fun b!3366263 () Bool)

(assert (=> b!3366263 (= e!2089242 (not e!2089230))))

(declare-fun res!1361166 () Bool)

(assert (=> b!3366263 (=> res!1361166 e!2089230)))

(assert (=> b!3366263 (= res!1361166 (not (= lt!1142209 lt!1142215)))))

(declare-fun printList!1480 (LexerInterface!4932 List!36847) List!36845)

(assert (=> b!3366263 (= lt!1142215 (printList!1480 thiss!18206 (Cons!36723 (h!42143 tokens!494) Nil!36723)))))

(declare-fun lt!1142204 () BalanceConc!21736)

(assert (=> b!3366263 (= lt!1142209 (list!13254 lt!1142204))))

(declare-fun lt!1142214 () BalanceConc!21738)

(declare-fun printTailRec!1427 (LexerInterface!4932 BalanceConc!21738 Int BalanceConc!21736) BalanceConc!21736)

(assert (=> b!3366263 (= lt!1142204 (printTailRec!1427 thiss!18206 lt!1142214 0 (BalanceConc!21737 Empty!11061)))))

(declare-fun print!1997 (LexerInterface!4932 BalanceConc!21738) BalanceConc!21736)

(assert (=> b!3366263 (= lt!1142204 (print!1997 thiss!18206 lt!1142214))))

(declare-fun singletonSeq!2439 (Token!10052) BalanceConc!21738)

(assert (=> b!3366263 (= lt!1142214 (singletonSeq!2439 (h!42143 tokens!494)))))

(declare-fun b!3366264 () Bool)

(assert (=> b!3366264 (= e!2089245 (= (rule!7881 separatorToken!241) lt!1142206))))

(declare-fun b!3366265 () Bool)

(declare-fun tp!1053465 () Bool)

(assert (=> b!3366265 (= e!2089239 (and (inv!21 (value!172737 separatorToken!241)) e!2089248 tp!1053465))))

(assert (= (and start!313048 res!1361158) b!3366254))

(assert (= (and b!3366254 res!1361160) b!3366248))

(assert (= (and b!3366248 res!1361152) b!3366247))

(assert (= (and b!3366247 res!1361156) b!3366250))

(assert (= (and b!3366250 res!1361157) b!3366257))

(assert (= (and b!3366257 res!1361159) b!3366244))

(assert (= (and b!3366244 res!1361163) b!3366246))

(assert (= (and b!3366246 res!1361162) b!3366261))

(assert (= (and b!3366261 res!1361165) b!3366263))

(assert (= (and b!3366263 (not res!1361166)) b!3366252))

(assert (= (and b!3366252 (not res!1361161)) b!3366240))

(assert (= (and b!3366240 (not res!1361164)) b!3366239))

(assert (= (and b!3366239 (not res!1361167)) b!3366258))

(assert (= (and b!3366258 (not res!1361154)) b!3366245))

(assert (= (and b!3366245 (not res!1361150)) b!3366251))

(assert (= (and b!3366251 res!1361155) b!3366262))

(assert (= (and b!3366262 res!1361149) b!3366249))

(assert (= (and b!3366251 res!1361153) b!3366259))

(assert (= (and b!3366259 res!1361151) b!3366264))

(assert (= b!3366237 b!3366242))

(assert (= b!3366243 b!3366237))

(assert (= (and start!313048 (is-Cons!36722 rules!2135)) b!3366243))

(assert (= b!3366253 b!3366256))

(assert (= b!3366265 b!3366253))

(assert (= start!313048 b!3366265))

(assert (= b!3366241 b!3366238))

(assert (= b!3366255 b!3366241))

(assert (= b!3366260 b!3366255))

(assert (= (and start!313048 (is-Cons!36723 tokens!494)) b!3366260))

(declare-fun m!3726141 () Bool)

(assert (=> b!3366248 m!3726141))

(declare-fun m!3726143 () Bool)

(assert (=> b!3366237 m!3726143))

(declare-fun m!3726145 () Bool)

(assert (=> b!3366237 m!3726145))

(declare-fun m!3726147 () Bool)

(assert (=> b!3366258 m!3726147))

(declare-fun m!3726149 () Bool)

(assert (=> b!3366252 m!3726149))

(assert (=> b!3366252 m!3726149))

(declare-fun m!3726151 () Bool)

(assert (=> b!3366252 m!3726151))

(declare-fun m!3726153 () Bool)

(assert (=> b!3366263 m!3726153))

(declare-fun m!3726155 () Bool)

(assert (=> b!3366263 m!3726155))

(declare-fun m!3726157 () Bool)

(assert (=> b!3366263 m!3726157))

(declare-fun m!3726159 () Bool)

(assert (=> b!3366263 m!3726159))

(declare-fun m!3726161 () Bool)

(assert (=> b!3366263 m!3726161))

(declare-fun m!3726163 () Bool)

(assert (=> b!3366253 m!3726163))

(declare-fun m!3726165 () Bool)

(assert (=> b!3366253 m!3726165))

(declare-fun m!3726167 () Bool)

(assert (=> b!3366255 m!3726167))

(declare-fun m!3726169 () Bool)

(assert (=> b!3366241 m!3726169))

(declare-fun m!3726171 () Bool)

(assert (=> b!3366241 m!3726171))

(declare-fun m!3726173 () Bool)

(assert (=> b!3366246 m!3726173))

(declare-fun m!3726175 () Bool)

(assert (=> b!3366259 m!3726175))

(declare-fun m!3726177 () Bool)

(assert (=> b!3366259 m!3726177))

(declare-fun m!3726179 () Bool)

(assert (=> b!3366260 m!3726179))

(declare-fun m!3726181 () Bool)

(assert (=> b!3366250 m!3726181))

(declare-fun m!3726183 () Bool)

(assert (=> b!3366251 m!3726183))

(declare-fun m!3726185 () Bool)

(assert (=> b!3366251 m!3726185))

(declare-fun m!3726187 () Bool)

(assert (=> b!3366251 m!3726187))

(declare-fun m!3726189 () Bool)

(assert (=> b!3366251 m!3726189))

(declare-fun m!3726191 () Bool)

(assert (=> b!3366251 m!3726191))

(declare-fun m!3726193 () Bool)

(assert (=> b!3366251 m!3726193))

(declare-fun m!3726195 () Bool)

(assert (=> b!3366251 m!3726195))

(assert (=> b!3366251 m!3726189))

(declare-fun m!3726197 () Bool)

(assert (=> b!3366251 m!3726197))

(declare-fun m!3726199 () Bool)

(assert (=> b!3366251 m!3726199))

(declare-fun m!3726201 () Bool)

(assert (=> b!3366251 m!3726201))

(declare-fun m!3726203 () Bool)

(assert (=> b!3366251 m!3726203))

(declare-fun m!3726205 () Bool)

(assert (=> b!3366245 m!3726205))

(declare-fun m!3726207 () Bool)

(assert (=> b!3366245 m!3726207))

(declare-fun m!3726209 () Bool)

(assert (=> b!3366245 m!3726209))

(declare-fun m!3726211 () Bool)

(assert (=> b!3366245 m!3726211))

(assert (=> b!3366245 m!3726205))

(declare-fun m!3726213 () Bool)

(assert (=> b!3366245 m!3726213))

(declare-fun m!3726215 () Bool)

(assert (=> start!313048 m!3726215))

(declare-fun m!3726217 () Bool)

(assert (=> b!3366247 m!3726217))

(declare-fun m!3726219 () Bool)

(assert (=> b!3366247 m!3726219))

(declare-fun m!3726221 () Bool)

(assert (=> b!3366244 m!3726221))

(declare-fun m!3726223 () Bool)

(assert (=> b!3366265 m!3726223))

(declare-fun m!3726225 () Bool)

(assert (=> b!3366240 m!3726225))

(declare-fun m!3726227 () Bool)

(assert (=> b!3366262 m!3726227))

(declare-fun m!3726229 () Bool)

(assert (=> b!3366262 m!3726229))

(declare-fun m!3726231 () Bool)

(assert (=> b!3366239 m!3726231))

(assert (=> b!3366239 m!3726231))

(declare-fun m!3726233 () Bool)

(assert (=> b!3366239 m!3726233))

(declare-fun m!3726235 () Bool)

(assert (=> b!3366239 m!3726235))

(declare-fun m!3726237 () Bool)

(assert (=> b!3366254 m!3726237))

(push 1)

(assert (not b!3366262))

(assert (not b!3366237))

(assert (not b!3366255))

(assert (not b!3366265))

(assert (not b!3366243))

(assert (not b_next!88661))

(assert (not b!3366263))

(assert (not b!3366239))

(assert (not b!3366259))

(assert b_and!233201)

(assert (not b!3366240))

(assert (not b!3366241))

(assert b_and!233199)

(assert (not b_next!88663))

(assert (not b!3366246))

(assert (not b_next!88653))

(assert (not b!3366253))

(assert (not b_next!88655))

(assert (not b!3366251))

(assert (not b!3366247))

(assert b_and!233209)

(assert (not b!3366252))

(assert (not start!313048))

(assert (not b_next!88657))

(assert b_and!233205)

(assert (not b!3366260))

(assert b_and!233207)

(assert (not b!3366248))

(assert (not b!3366244))

(assert (not b!3366254))

(assert (not b!3366245))

(assert b_and!233203)

(assert (not b!3366250))

(assert (not b!3366258))

(assert (not b_next!88659))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!88653))

(assert (not b_next!88655))

(assert b_and!233209)

(assert b_and!233207)

(assert (not b_next!88661))

(assert b_and!233201)

(assert b_and!233203)

(assert b_and!233199)

(assert (not b_next!88659))

(assert (not b_next!88663))

(assert (not b_next!88657))

(assert b_and!233205)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!954165 () Bool)

(declare-fun res!1361233 () Bool)

(declare-fun e!2089333 () Bool)

(assert (=> d!954165 (=> res!1361233 e!2089333)))

(assert (=> d!954165 (= res!1361233 (not (is-Cons!36722 rules!2135)))))

(assert (=> d!954165 (= (sepAndNonSepRulesDisjointChars!1537 rules!2135 rules!2135) e!2089333)))

(declare-fun b!3366357 () Bool)

(declare-fun e!2089334 () Bool)

(assert (=> b!3366357 (= e!2089333 e!2089334)))

(declare-fun res!1361234 () Bool)

(assert (=> b!3366357 (=> (not res!1361234) (not e!2089334))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!658 (Rule!10486 List!36846) Bool)

(assert (=> b!3366357 (= res!1361234 (ruleDisjointCharsFromAllFromOtherType!658 (h!42142 rules!2135) rules!2135))))

(declare-fun b!3366358 () Bool)

(assert (=> b!3366358 (= e!2089334 (sepAndNonSepRulesDisjointChars!1537 rules!2135 (t!261509 rules!2135)))))

(assert (= (and d!954165 (not res!1361233)) b!3366357))

(assert (= (and b!3366357 res!1361234) b!3366358))

(declare-fun m!3726337 () Bool)

(assert (=> b!3366357 m!3726337))

(declare-fun m!3726339 () Bool)

(assert (=> b!3366358 m!3726339))

(assert (=> b!3366246 d!954165))

(declare-fun bs!553930 () Bool)

(declare-fun d!954167 () Bool)

(assert (= bs!553930 (and d!954167 b!3366244)))

(declare-fun lambda!120170 () Int)

(assert (=> bs!553930 (not (= lambda!120170 lambda!120160))))

(declare-fun b!3366426 () Bool)

(declare-fun e!2089384 () Bool)

(assert (=> b!3366426 (= e!2089384 true)))

(declare-fun b!3366425 () Bool)

(declare-fun e!2089383 () Bool)

(assert (=> b!3366425 (= e!2089383 e!2089384)))

(declare-fun b!3366424 () Bool)

(declare-fun e!2089382 () Bool)

(assert (=> b!3366424 (= e!2089382 e!2089383)))

(assert (=> d!954167 e!2089382))

(assert (= b!3366425 b!3366426))

(assert (= b!3366424 b!3366425))

(assert (= (and d!954167 (is-Cons!36722 rules!2135)) b!3366424))

(declare-fun order!19277 () Int)

(declare-fun order!19275 () Int)

(declare-fun dynLambda!15205 (Int Int) Int)

(declare-fun dynLambda!15206 (Int Int) Int)

(assert (=> b!3366426 (< (dynLambda!15205 order!19275 (toValue!7523 (transformation!5343 (h!42142 rules!2135)))) (dynLambda!15206 order!19277 lambda!120170))))

(declare-fun order!19279 () Int)

(declare-fun dynLambda!15207 (Int Int) Int)

(assert (=> b!3366426 (< (dynLambda!15207 order!19279 (toChars!7382 (transformation!5343 (h!42142 rules!2135)))) (dynLambda!15206 order!19277 lambda!120170))))

(assert (=> d!954167 true))

(declare-fun e!2089375 () Bool)

(assert (=> d!954167 e!2089375))

(declare-fun res!1361275 () Bool)

(assert (=> d!954167 (=> (not res!1361275) (not e!2089375))))

(declare-fun lt!1142283 () Bool)

(declare-fun list!13256 (BalanceConc!21738) List!36847)

(assert (=> d!954167 (= res!1361275 (= lt!1142283 (forall!7698 (list!13256 lt!1142203) lambda!120170)))))

(declare-fun forall!7700 (BalanceConc!21738 Int) Bool)

(assert (=> d!954167 (= lt!1142283 (forall!7700 lt!1142203 lambda!120170))))

(assert (=> d!954167 (not (isEmpty!20916 rules!2135))))

(assert (=> d!954167 (= (rulesProduceEachTokenIndividually!1383 thiss!18206 rules!2135 lt!1142203) lt!1142283)))

(declare-fun b!3366415 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1794 (LexerInterface!4932 List!36846 List!36847) Bool)

(assert (=> b!3366415 (= e!2089375 (= lt!1142283 (rulesProduceEachTokenIndividuallyList!1794 thiss!18206 rules!2135 (list!13256 lt!1142203))))))

(assert (= (and d!954167 res!1361275) b!3366415))

(declare-fun m!3726413 () Bool)

(assert (=> d!954167 m!3726413))

(assert (=> d!954167 m!3726413))

(declare-fun m!3726415 () Bool)

(assert (=> d!954167 m!3726415))

(declare-fun m!3726417 () Bool)

(assert (=> d!954167 m!3726417))

(assert (=> d!954167 m!3726237))

(assert (=> b!3366415 m!3726413))

(assert (=> b!3366415 m!3726413))

(declare-fun m!3726419 () Bool)

(assert (=> b!3366415 m!3726419))

(assert (=> b!3366247 d!954167))

(declare-fun d!954203 () Bool)

(declare-fun fromListB!1660 (List!36847) BalanceConc!21738)

(assert (=> d!954203 (= (seqFromList!3740 tokens!494) (fromListB!1660 tokens!494))))

(declare-fun bs!553931 () Bool)

(assert (= bs!553931 d!954203))

(declare-fun m!3726421 () Bool)

(assert (=> bs!553931 m!3726421))

(assert (=> b!3366247 d!954203))

(declare-fun d!954205 () Bool)

(declare-fun lt!1142286 () BalanceConc!21736)

(declare-fun printWithSeparatorTokenList!235 (LexerInterface!4932 List!36847 Token!10052) List!36845)

(assert (=> d!954205 (= (list!13254 lt!1142286) (printWithSeparatorTokenList!235 thiss!18206 (list!13256 lt!1142203) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!51 (LexerInterface!4932 BalanceConc!21738 Token!10052 Int BalanceConc!21736) BalanceConc!21736)

(assert (=> d!954205 (= lt!1142286 (printWithSeparatorTokenTailRec!51 thiss!18206 lt!1142203 separatorToken!241 0 (BalanceConc!21737 Empty!11061)))))

(assert (=> d!954205 (isSeparator!5343 (rule!7881 separatorToken!241))))

(assert (=> d!954205 (= (printWithSeparatorToken!123 thiss!18206 lt!1142203 separatorToken!241) lt!1142286)))

(declare-fun bs!553932 () Bool)

(assert (= bs!553932 d!954205))

(declare-fun m!3726423 () Bool)

(assert (=> bs!553932 m!3726423))

(assert (=> bs!553932 m!3726413))

(assert (=> bs!553932 m!3726413))

(declare-fun m!3726425 () Bool)

(assert (=> bs!553932 m!3726425))

(declare-fun m!3726427 () Bool)

(assert (=> bs!553932 m!3726427))

(assert (=> b!3366245 d!954205))

(declare-fun b!3366438 () Bool)

(declare-fun e!2089390 () List!36845)

(assert (=> b!3366438 (= e!2089390 (Cons!36721 (h!42141 lt!1142211) (++!8954 (t!261508 lt!1142211) lt!1142205)))))

(declare-fun b!3366439 () Bool)

(declare-fun res!1361281 () Bool)

(declare-fun e!2089389 () Bool)

(assert (=> b!3366439 (=> (not res!1361281) (not e!2089389))))

(declare-fun lt!1142289 () List!36845)

(declare-fun size!27788 (List!36845) Int)

(assert (=> b!3366439 (= res!1361281 (= (size!27788 lt!1142289) (+ (size!27788 lt!1142211) (size!27788 lt!1142205))))))

(declare-fun b!3366440 () Bool)

(assert (=> b!3366440 (= e!2089389 (or (not (= lt!1142205 Nil!36721)) (= lt!1142289 lt!1142211)))))

(declare-fun b!3366437 () Bool)

(assert (=> b!3366437 (= e!2089390 lt!1142205)))

(declare-fun d!954207 () Bool)

(assert (=> d!954207 e!2089389))

(declare-fun res!1361280 () Bool)

(assert (=> d!954207 (=> (not res!1361280) (not e!2089389))))

(declare-fun content!5038 (List!36845) (Set C!20390))

(assert (=> d!954207 (= res!1361280 (= (content!5038 lt!1142289) (set.union (content!5038 lt!1142211) (content!5038 lt!1142205))))))

(assert (=> d!954207 (= lt!1142289 e!2089390)))

(declare-fun c!573165 () Bool)

(assert (=> d!954207 (= c!573165 (is-Nil!36721 lt!1142211))))

(assert (=> d!954207 (= (++!8954 lt!1142211 lt!1142205) lt!1142289)))

(assert (= (and d!954207 c!573165) b!3366437))

(assert (= (and d!954207 (not c!573165)) b!3366438))

(assert (= (and d!954207 res!1361280) b!3366439))

(assert (= (and b!3366439 res!1361281) b!3366440))

(declare-fun m!3726429 () Bool)

(assert (=> b!3366438 m!3726429))

(declare-fun m!3726431 () Bool)

(assert (=> b!3366439 m!3726431))

(declare-fun m!3726433 () Bool)

(assert (=> b!3366439 m!3726433))

(declare-fun m!3726435 () Bool)

(assert (=> b!3366439 m!3726435))

(declare-fun m!3726437 () Bool)

(assert (=> d!954207 m!3726437))

(declare-fun m!3726439 () Bool)

(assert (=> d!954207 m!3726439))

(declare-fun m!3726441 () Bool)

(assert (=> d!954207 m!3726441))

(assert (=> b!3366245 d!954207))

(declare-fun d!954209 () Bool)

(declare-fun list!13257 (Conc!11061) List!36845)

(assert (=> d!954209 (= (list!13254 lt!1142212) (list!13257 (c!573149 lt!1142212)))))

(declare-fun bs!553933 () Bool)

(assert (= bs!553933 d!954209))

(declare-fun m!3726443 () Bool)

(assert (=> bs!553933 m!3726443))

(assert (=> b!3366245 d!954209))

(declare-fun d!954211 () Bool)

(declare-fun lt!1142292 () BalanceConc!21736)

(assert (=> d!954211 (= (list!13254 lt!1142292) (originalCharacters!6057 separatorToken!241))))

(declare-fun dynLambda!15208 (Int TokenValue!5573) BalanceConc!21736)

(assert (=> d!954211 (= lt!1142292 (dynLambda!15208 (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))) (value!172737 separatorToken!241)))))

(assert (=> d!954211 (= (charsOf!3357 separatorToken!241) lt!1142292)))

(declare-fun b_lambda!95193 () Bool)

(assert (=> (not b_lambda!95193) (not d!954211)))

(declare-fun tb!178697 () Bool)

(declare-fun t!261529 () Bool)

(assert (=> (and b!3366242 (= (toChars!7382 (transformation!5343 (h!42142 rules!2135))) (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241)))) t!261529) tb!178697))

(declare-fun b!3366445 () Bool)

(declare-fun e!2089393 () Bool)

(declare-fun tp!1053514 () Bool)

(declare-fun inv!49782 (Conc!11061) Bool)

(assert (=> b!3366445 (= e!2089393 (and (inv!49782 (c!573149 (dynLambda!15208 (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))) (value!172737 separatorToken!241)))) tp!1053514))))

(declare-fun result!221920 () Bool)

(declare-fun inv!49783 (BalanceConc!21736) Bool)

(assert (=> tb!178697 (= result!221920 (and (inv!49783 (dynLambda!15208 (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))) (value!172737 separatorToken!241))) e!2089393))))

(assert (= tb!178697 b!3366445))

(declare-fun m!3726445 () Bool)

(assert (=> b!3366445 m!3726445))

(declare-fun m!3726447 () Bool)

(assert (=> tb!178697 m!3726447))

(assert (=> d!954211 t!261529))

(declare-fun b_and!233235 () Bool)

(assert (= b_and!233201 (and (=> t!261529 result!221920) b_and!233235)))

(declare-fun t!261531 () Bool)

(declare-fun tb!178699 () Bool)

(assert (=> (and b!3366256 (= (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))) (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241)))) t!261531) tb!178699))

(declare-fun result!221924 () Bool)

(assert (= result!221924 result!221920))

(assert (=> d!954211 t!261531))

(declare-fun b_and!233237 () Bool)

(assert (= b_and!233205 (and (=> t!261531 result!221924) b_and!233237)))

(declare-fun tb!178701 () Bool)

(declare-fun t!261533 () Bool)

(assert (=> (and b!3366238 (= (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))) (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241)))) t!261533) tb!178701))

(declare-fun result!221926 () Bool)

(assert (= result!221926 result!221920))

(assert (=> d!954211 t!261533))

(declare-fun b_and!233239 () Bool)

(assert (= b_and!233209 (and (=> t!261533 result!221926) b_and!233239)))

(declare-fun m!3726449 () Bool)

(assert (=> d!954211 m!3726449))

(declare-fun m!3726451 () Bool)

(assert (=> d!954211 m!3726451))

(assert (=> b!3366245 d!954211))

(declare-fun d!954213 () Bool)

(assert (=> d!954213 (= (list!13254 (charsOf!3357 separatorToken!241)) (list!13257 (c!573149 (charsOf!3357 separatorToken!241))))))

(declare-fun bs!553934 () Bool)

(assert (= bs!553934 d!954213))

(declare-fun m!3726453 () Bool)

(assert (=> bs!553934 m!3726453))

(assert (=> b!3366245 d!954213))

(declare-fun d!954215 () Bool)

(assert (=> d!954215 (= (isEmpty!20916 rules!2135) (is-Nil!36722 rules!2135))))

(assert (=> b!3366254 d!954215))

(declare-fun b!3366456 () Bool)

(declare-fun e!2089400 () Bool)

(declare-fun inv!15 (TokenValue!5573) Bool)

(assert (=> b!3366456 (= e!2089400 (inv!15 (value!172737 separatorToken!241)))))

(declare-fun d!954217 () Bool)

(declare-fun c!573170 () Bool)

(assert (=> d!954217 (= c!573170 (is-IntegerValue!16719 (value!172737 separatorToken!241)))))

(declare-fun e!2089402 () Bool)

(assert (=> d!954217 (= (inv!21 (value!172737 separatorToken!241)) e!2089402)))

(declare-fun b!3366457 () Bool)

(declare-fun e!2089401 () Bool)

(declare-fun inv!17 (TokenValue!5573) Bool)

(assert (=> b!3366457 (= e!2089401 (inv!17 (value!172737 separatorToken!241)))))

(declare-fun b!3366458 () Bool)

(declare-fun inv!16 (TokenValue!5573) Bool)

(assert (=> b!3366458 (= e!2089402 (inv!16 (value!172737 separatorToken!241)))))

(declare-fun b!3366459 () Bool)

(declare-fun res!1361284 () Bool)

(assert (=> b!3366459 (=> res!1361284 e!2089400)))

(assert (=> b!3366459 (= res!1361284 (not (is-IntegerValue!16721 (value!172737 separatorToken!241))))))

(assert (=> b!3366459 (= e!2089401 e!2089400)))

(declare-fun b!3366460 () Bool)

(assert (=> b!3366460 (= e!2089402 e!2089401)))

(declare-fun c!573171 () Bool)

(assert (=> b!3366460 (= c!573171 (is-IntegerValue!16720 (value!172737 separatorToken!241)))))

(assert (= (and d!954217 c!573170) b!3366458))

(assert (= (and d!954217 (not c!573170)) b!3366460))

(assert (= (and b!3366460 c!573171) b!3366457))

(assert (= (and b!3366460 (not c!573171)) b!3366459))

(assert (= (and b!3366459 (not res!1361284)) b!3366456))

(declare-fun m!3726455 () Bool)

(assert (=> b!3366456 m!3726455))

(declare-fun m!3726457 () Bool)

(assert (=> b!3366457 m!3726457))

(declare-fun m!3726459 () Bool)

(assert (=> b!3366458 m!3726459))

(assert (=> b!3366265 d!954217))

(declare-fun d!954219 () Bool)

(declare-fun res!1361289 () Bool)

(declare-fun e!2089407 () Bool)

(assert (=> d!954219 (=> res!1361289 e!2089407)))

(assert (=> d!954219 (= res!1361289 (is-Nil!36723 tokens!494))))

(assert (=> d!954219 (= (forall!7698 tokens!494 lambda!120160) e!2089407)))

(declare-fun b!3366465 () Bool)

(declare-fun e!2089408 () Bool)

(assert (=> b!3366465 (= e!2089407 e!2089408)))

(declare-fun res!1361290 () Bool)

(assert (=> b!3366465 (=> (not res!1361290) (not e!2089408))))

(declare-fun dynLambda!15209 (Int Token!10052) Bool)

(assert (=> b!3366465 (= res!1361290 (dynLambda!15209 lambda!120160 (h!42143 tokens!494)))))

(declare-fun b!3366466 () Bool)

(assert (=> b!3366466 (= e!2089408 (forall!7698 (t!261510 tokens!494) lambda!120160))))

(assert (= (and d!954219 (not res!1361289)) b!3366465))

(assert (= (and b!3366465 res!1361290) b!3366466))

(declare-fun b_lambda!95195 () Bool)

(assert (=> (not b_lambda!95195) (not b!3366465)))

(declare-fun m!3726461 () Bool)

(assert (=> b!3366465 m!3726461))

(declare-fun m!3726463 () Bool)

(assert (=> b!3366466 m!3726463))

(assert (=> b!3366244 d!954219))

(declare-fun b!3366467 () Bool)

(declare-fun e!2089409 () Bool)

(assert (=> b!3366467 (= e!2089409 (inv!15 (value!172737 (h!42143 tokens!494))))))

(declare-fun d!954221 () Bool)

(declare-fun c!573172 () Bool)

(assert (=> d!954221 (= c!573172 (is-IntegerValue!16719 (value!172737 (h!42143 tokens!494))))))

(declare-fun e!2089411 () Bool)

(assert (=> d!954221 (= (inv!21 (value!172737 (h!42143 tokens!494))) e!2089411)))

(declare-fun b!3366468 () Bool)

(declare-fun e!2089410 () Bool)

(assert (=> b!3366468 (= e!2089410 (inv!17 (value!172737 (h!42143 tokens!494))))))

(declare-fun b!3366469 () Bool)

(assert (=> b!3366469 (= e!2089411 (inv!16 (value!172737 (h!42143 tokens!494))))))

(declare-fun b!3366470 () Bool)

(declare-fun res!1361291 () Bool)

(assert (=> b!3366470 (=> res!1361291 e!2089409)))

(assert (=> b!3366470 (= res!1361291 (not (is-IntegerValue!16721 (value!172737 (h!42143 tokens!494)))))))

(assert (=> b!3366470 (= e!2089410 e!2089409)))

(declare-fun b!3366471 () Bool)

(assert (=> b!3366471 (= e!2089411 e!2089410)))

(declare-fun c!573173 () Bool)

(assert (=> b!3366471 (= c!573173 (is-IntegerValue!16720 (value!172737 (h!42143 tokens!494))))))

(assert (= (and d!954221 c!573172) b!3366469))

(assert (= (and d!954221 (not c!573172)) b!3366471))

(assert (= (and b!3366471 c!573173) b!3366468))

(assert (= (and b!3366471 (not c!573173)) b!3366470))

(assert (= (and b!3366470 (not res!1361291)) b!3366467))

(declare-fun m!3726465 () Bool)

(assert (=> b!3366467 m!3726465))

(declare-fun m!3726467 () Bool)

(assert (=> b!3366468 m!3726467))

(declare-fun m!3726469 () Bool)

(assert (=> b!3366469 m!3726469))

(assert (=> b!3366255 d!954221))

(declare-fun d!954223 () Bool)

(assert (=> d!954223 (= (inv!49775 (tag!5899 (rule!7881 separatorToken!241))) (= (mod (str.len (value!172736 (tag!5899 (rule!7881 separatorToken!241)))) 2) 0))))

(assert (=> b!3366253 d!954223))

(declare-fun d!954225 () Bool)

(declare-fun res!1361294 () Bool)

(declare-fun e!2089414 () Bool)

(assert (=> d!954225 (=> (not res!1361294) (not e!2089414))))

(declare-fun semiInverseModEq!2222 (Int Int) Bool)

(assert (=> d!954225 (= res!1361294 (semiInverseModEq!2222 (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))) (toValue!7523 (transformation!5343 (rule!7881 separatorToken!241)))))))

(assert (=> d!954225 (= (inv!49778 (transformation!5343 (rule!7881 separatorToken!241))) e!2089414)))

(declare-fun b!3366474 () Bool)

(declare-fun equivClasses!2121 (Int Int) Bool)

(assert (=> b!3366474 (= e!2089414 (equivClasses!2121 (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))) (toValue!7523 (transformation!5343 (rule!7881 separatorToken!241)))))))

(assert (= (and d!954225 res!1361294) b!3366474))

(declare-fun m!3726471 () Bool)

(assert (=> d!954225 m!3726471))

(declare-fun m!3726473 () Bool)

(assert (=> b!3366474 m!3726473))

(assert (=> b!3366253 d!954225))

(declare-fun b!3366503 () Bool)

(declare-fun e!2089429 () Bool)

(declare-fun lt!1142295 () Bool)

(assert (=> b!3366503 (= e!2089429 (not lt!1142295))))

(declare-fun b!3366504 () Bool)

(declare-fun e!2089434 () Bool)

(assert (=> b!3366504 (= e!2089434 e!2089429)))

(declare-fun c!573181 () Bool)

(assert (=> b!3366504 (= c!573181 (is-EmptyLang!10102 (regex!5343 lt!1142216)))))

(declare-fun b!3366505 () Bool)

(declare-fun res!1361315 () Bool)

(declare-fun e!2089430 () Bool)

(assert (=> b!3366505 (=> (not res!1361315) (not e!2089430))))

(declare-fun call!243783 () Bool)

(assert (=> b!3366505 (= res!1361315 (not call!243783))))

(declare-fun b!3366506 () Bool)

(declare-fun e!2089432 () Bool)

(declare-fun nullable!3431 (Regex!10102) Bool)

(assert (=> b!3366506 (= e!2089432 (nullable!3431 (regex!5343 lt!1142216)))))

(declare-fun b!3366507 () Bool)

(declare-fun e!2089433 () Bool)

(declare-fun e!2089435 () Bool)

(assert (=> b!3366507 (= e!2089433 e!2089435)))

(declare-fun res!1361316 () Bool)

(assert (=> b!3366507 (=> (not res!1361316) (not e!2089435))))

(assert (=> b!3366507 (= res!1361316 (not lt!1142295))))

(declare-fun b!3366508 () Bool)

(declare-fun e!2089431 () Bool)

(declare-fun head!7176 (List!36845) C!20390)

(assert (=> b!3366508 (= e!2089431 (not (= (head!7176 lt!1142211) (c!573148 (regex!5343 lt!1142216)))))))

(declare-fun b!3366509 () Bool)

(assert (=> b!3366509 (= e!2089435 e!2089431)))

(declare-fun res!1361311 () Bool)

(assert (=> b!3366509 (=> res!1361311 e!2089431)))

(assert (=> b!3366509 (= res!1361311 call!243783)))

(declare-fun d!954227 () Bool)

(assert (=> d!954227 e!2089434))

(declare-fun c!573182 () Bool)

(assert (=> d!954227 (= c!573182 (is-EmptyExpr!10102 (regex!5343 lt!1142216)))))

(assert (=> d!954227 (= lt!1142295 e!2089432)))

(declare-fun c!573180 () Bool)

(assert (=> d!954227 (= c!573180 (isEmpty!20915 lt!1142211))))

(declare-fun validRegex!4587 (Regex!10102) Bool)

(assert (=> d!954227 (validRegex!4587 (regex!5343 lt!1142216))))

(assert (=> d!954227 (= (matchR!4694 (regex!5343 lt!1142216) lt!1142211) lt!1142295)))

(declare-fun b!3366510 () Bool)

(declare-fun res!1361318 () Bool)

(assert (=> b!3366510 (=> res!1361318 e!2089433)))

(assert (=> b!3366510 (= res!1361318 (not (is-ElementMatch!10102 (regex!5343 lt!1142216))))))

(assert (=> b!3366510 (= e!2089429 e!2089433)))

(declare-fun b!3366511 () Bool)

(assert (=> b!3366511 (= e!2089434 (= lt!1142295 call!243783))))

(declare-fun bm!243778 () Bool)

(assert (=> bm!243778 (= call!243783 (isEmpty!20915 lt!1142211))))

(declare-fun b!3366512 () Bool)

(assert (=> b!3366512 (= e!2089430 (= (head!7176 lt!1142211) (c!573148 (regex!5343 lt!1142216))))))

(declare-fun b!3366513 () Bool)

(declare-fun res!1361312 () Bool)

(assert (=> b!3366513 (=> res!1361312 e!2089431)))

(declare-fun tail!5314 (List!36845) List!36845)

(assert (=> b!3366513 (= res!1361312 (not (isEmpty!20915 (tail!5314 lt!1142211))))))

(declare-fun b!3366514 () Bool)

(declare-fun derivativeStep!2984 (Regex!10102 C!20390) Regex!10102)

(assert (=> b!3366514 (= e!2089432 (matchR!4694 (derivativeStep!2984 (regex!5343 lt!1142216) (head!7176 lt!1142211)) (tail!5314 lt!1142211)))))

(declare-fun b!3366515 () Bool)

(declare-fun res!1361314 () Bool)

(assert (=> b!3366515 (=> (not res!1361314) (not e!2089430))))

(assert (=> b!3366515 (= res!1361314 (isEmpty!20915 (tail!5314 lt!1142211)))))

(declare-fun b!3366516 () Bool)

(declare-fun res!1361317 () Bool)

(assert (=> b!3366516 (=> res!1361317 e!2089433)))

(assert (=> b!3366516 (= res!1361317 e!2089430)))

(declare-fun res!1361313 () Bool)

(assert (=> b!3366516 (=> (not res!1361313) (not e!2089430))))

(assert (=> b!3366516 (= res!1361313 lt!1142295)))

(assert (= (and d!954227 c!573180) b!3366506))

(assert (= (and d!954227 (not c!573180)) b!3366514))

(assert (= (and d!954227 c!573182) b!3366511))

(assert (= (and d!954227 (not c!573182)) b!3366504))

(assert (= (and b!3366504 c!573181) b!3366503))

(assert (= (and b!3366504 (not c!573181)) b!3366510))

(assert (= (and b!3366510 (not res!1361318)) b!3366516))

(assert (= (and b!3366516 res!1361313) b!3366505))

(assert (= (and b!3366505 res!1361315) b!3366515))

(assert (= (and b!3366515 res!1361314) b!3366512))

(assert (= (and b!3366516 (not res!1361317)) b!3366507))

(assert (= (and b!3366507 res!1361316) b!3366509))

(assert (= (and b!3366509 (not res!1361311)) b!3366513))

(assert (= (and b!3366513 (not res!1361312)) b!3366508))

(assert (= (or b!3366511 b!3366505 b!3366509) bm!243778))

(declare-fun m!3726475 () Bool)

(assert (=> b!3366506 m!3726475))

(declare-fun m!3726477 () Bool)

(assert (=> d!954227 m!3726477))

(declare-fun m!3726479 () Bool)

(assert (=> d!954227 m!3726479))

(declare-fun m!3726481 () Bool)

(assert (=> b!3366513 m!3726481))

(assert (=> b!3366513 m!3726481))

(declare-fun m!3726483 () Bool)

(assert (=> b!3366513 m!3726483))

(assert (=> bm!243778 m!3726477))

(declare-fun m!3726485 () Bool)

(assert (=> b!3366514 m!3726485))

(assert (=> b!3366514 m!3726485))

(declare-fun m!3726487 () Bool)

(assert (=> b!3366514 m!3726487))

(assert (=> b!3366514 m!3726481))

(assert (=> b!3366514 m!3726487))

(assert (=> b!3366514 m!3726481))

(declare-fun m!3726489 () Bool)

(assert (=> b!3366514 m!3726489))

(assert (=> b!3366512 m!3726485))

(assert (=> b!3366508 m!3726485))

(assert (=> b!3366515 m!3726481))

(assert (=> b!3366515 m!3726481))

(assert (=> b!3366515 m!3726483))

(assert (=> b!3366262 d!954227))

(declare-fun d!954229 () Bool)

(assert (=> d!954229 (= (get!11706 lt!1142201) (v!36322 lt!1142201))))

(assert (=> b!3366262 d!954229))

(declare-fun d!954231 () Bool)

(assert (=> d!954231 (= (inv!49775 (tag!5899 (rule!7881 (h!42143 tokens!494)))) (= (mod (str.len (value!172736 (tag!5899 (rule!7881 (h!42143 tokens!494))))) 2) 0))))

(assert (=> b!3366241 d!954231))

(declare-fun d!954233 () Bool)

(declare-fun res!1361319 () Bool)

(declare-fun e!2089436 () Bool)

(assert (=> d!954233 (=> (not res!1361319) (not e!2089436))))

(assert (=> d!954233 (= res!1361319 (semiInverseModEq!2222 (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))) (toValue!7523 (transformation!5343 (rule!7881 (h!42143 tokens!494))))))))

(assert (=> d!954233 (= (inv!49778 (transformation!5343 (rule!7881 (h!42143 tokens!494)))) e!2089436)))

(declare-fun b!3366517 () Bool)

(assert (=> b!3366517 (= e!2089436 (equivClasses!2121 (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))) (toValue!7523 (transformation!5343 (rule!7881 (h!42143 tokens!494))))))))

(assert (= (and d!954233 res!1361319) b!3366517))

(declare-fun m!3726491 () Bool)

(assert (=> d!954233 m!3726491))

(declare-fun m!3726493 () Bool)

(assert (=> b!3366517 m!3726493))

(assert (=> b!3366241 d!954233))

(declare-fun d!954235 () Bool)

(assert (=> d!954235 (= (list!13254 (charsOf!3357 (h!42143 tokens!494))) (list!13257 (c!573149 (charsOf!3357 (h!42143 tokens!494)))))))

(declare-fun bs!553935 () Bool)

(assert (= bs!553935 d!954235))

(declare-fun m!3726495 () Bool)

(assert (=> bs!553935 m!3726495))

(assert (=> b!3366252 d!954235))

(declare-fun d!954237 () Bool)

(declare-fun lt!1142296 () BalanceConc!21736)

(assert (=> d!954237 (= (list!13254 lt!1142296) (originalCharacters!6057 (h!42143 tokens!494)))))

(assert (=> d!954237 (= lt!1142296 (dynLambda!15208 (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))) (value!172737 (h!42143 tokens!494))))))

(assert (=> d!954237 (= (charsOf!3357 (h!42143 tokens!494)) lt!1142296)))

(declare-fun b_lambda!95197 () Bool)

(assert (=> (not b_lambda!95197) (not d!954237)))

(declare-fun tb!178703 () Bool)

(declare-fun t!261535 () Bool)

(assert (=> (and b!3366242 (= (toChars!7382 (transformation!5343 (h!42142 rules!2135))) (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494))))) t!261535) tb!178703))

(declare-fun b!3366518 () Bool)

(declare-fun e!2089437 () Bool)

(declare-fun tp!1053515 () Bool)

(assert (=> b!3366518 (= e!2089437 (and (inv!49782 (c!573149 (dynLambda!15208 (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))) (value!172737 (h!42143 tokens!494))))) tp!1053515))))

(declare-fun result!221928 () Bool)

(assert (=> tb!178703 (= result!221928 (and (inv!49783 (dynLambda!15208 (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))) (value!172737 (h!42143 tokens!494)))) e!2089437))))

(assert (= tb!178703 b!3366518))

(declare-fun m!3726497 () Bool)

(assert (=> b!3366518 m!3726497))

(declare-fun m!3726499 () Bool)

(assert (=> tb!178703 m!3726499))

(assert (=> d!954237 t!261535))

(declare-fun b_and!233241 () Bool)

(assert (= b_and!233235 (and (=> t!261535 result!221928) b_and!233241)))

(declare-fun tb!178705 () Bool)

(declare-fun t!261537 () Bool)

(assert (=> (and b!3366256 (= (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))) (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494))))) t!261537) tb!178705))

(declare-fun result!221930 () Bool)

(assert (= result!221930 result!221928))

(assert (=> d!954237 t!261537))

(declare-fun b_and!233243 () Bool)

(assert (= b_and!233237 (and (=> t!261537 result!221930) b_and!233243)))

(declare-fun t!261539 () Bool)

(declare-fun tb!178707 () Bool)

(assert (=> (and b!3366238 (= (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))) (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494))))) t!261539) tb!178707))

(declare-fun result!221932 () Bool)

(assert (= result!221932 result!221928))

(assert (=> d!954237 t!261539))

(declare-fun b_and!233245 () Bool)

(assert (= b_and!233239 (and (=> t!261539 result!221932) b_and!233245)))

(declare-fun m!3726501 () Bool)

(assert (=> d!954237 m!3726501))

(declare-fun m!3726503 () Bool)

(assert (=> d!954237 m!3726503))

(assert (=> b!3366252 d!954237))

(declare-fun d!954239 () Bool)

(assert (=> d!954239 (= (list!13254 lt!1142204) (list!13257 (c!573149 lt!1142204)))))

(declare-fun bs!553936 () Bool)

(assert (= bs!553936 d!954239))

(declare-fun m!3726505 () Bool)

(assert (=> bs!553936 m!3726505))

(assert (=> b!3366263 d!954239))

(declare-fun d!954241 () Bool)

(declare-fun lt!1142316 () BalanceConc!21736)

(declare-fun printListTailRec!627 (LexerInterface!4932 List!36847 List!36845) List!36845)

(declare-fun dropList!1144 (BalanceConc!21738 Int) List!36847)

(assert (=> d!954241 (= (list!13254 lt!1142316) (printListTailRec!627 thiss!18206 (dropList!1144 lt!1142214 0) (list!13254 (BalanceConc!21737 Empty!11061))))))

(declare-fun e!2089452 () BalanceConc!21736)

(assert (=> d!954241 (= lt!1142316 e!2089452)))

(declare-fun c!573188 () Bool)

(declare-fun size!27789 (BalanceConc!21738) Int)

(assert (=> d!954241 (= c!573188 (>= 0 (size!27789 lt!1142214)))))

(declare-fun e!2089451 () Bool)

(assert (=> d!954241 e!2089451))

(declare-fun res!1361331 () Bool)

(assert (=> d!954241 (=> (not res!1361331) (not e!2089451))))

(assert (=> d!954241 (= res!1361331 (>= 0 0))))

(assert (=> d!954241 (= (printTailRec!1427 thiss!18206 lt!1142214 0 (BalanceConc!21737 Empty!11061)) lt!1142316)))

(declare-fun b!3366540 () Bool)

(assert (=> b!3366540 (= e!2089451 (<= 0 (size!27789 lt!1142214)))))

(declare-fun b!3366541 () Bool)

(assert (=> b!3366541 (= e!2089452 (BalanceConc!21737 Empty!11061))))

(declare-fun b!3366542 () Bool)

(declare-fun ++!8956 (BalanceConc!21736 BalanceConc!21736) BalanceConc!21736)

(declare-fun apply!8504 (BalanceConc!21738 Int) Token!10052)

(assert (=> b!3366542 (= e!2089452 (printTailRec!1427 thiss!18206 lt!1142214 (+ 0 1) (++!8956 (BalanceConc!21737 Empty!11061) (charsOf!3357 (apply!8504 lt!1142214 0)))))))

(declare-fun lt!1142314 () List!36847)

(assert (=> b!3366542 (= lt!1142314 (list!13256 lt!1142214))))

(declare-fun lt!1142319 () Unit!51827)

(declare-fun lemmaDropApply!1102 (List!36847 Int) Unit!51827)

(assert (=> b!3366542 (= lt!1142319 (lemmaDropApply!1102 lt!1142314 0))))

(declare-fun head!7177 (List!36847) Token!10052)

(declare-fun drop!1940 (List!36847 Int) List!36847)

(declare-fun apply!8505 (List!36847 Int) Token!10052)

(assert (=> b!3366542 (= (head!7177 (drop!1940 lt!1142314 0)) (apply!8505 lt!1142314 0))))

(declare-fun lt!1142315 () Unit!51827)

(assert (=> b!3366542 (= lt!1142315 lt!1142319)))

(declare-fun lt!1142317 () List!36847)

(assert (=> b!3366542 (= lt!1142317 (list!13256 lt!1142214))))

(declare-fun lt!1142320 () Unit!51827)

(declare-fun lemmaDropTail!986 (List!36847 Int) Unit!51827)

(assert (=> b!3366542 (= lt!1142320 (lemmaDropTail!986 lt!1142317 0))))

(declare-fun tail!5315 (List!36847) List!36847)

(assert (=> b!3366542 (= (tail!5315 (drop!1940 lt!1142317 0)) (drop!1940 lt!1142317 (+ 0 1)))))

(declare-fun lt!1142318 () Unit!51827)

(assert (=> b!3366542 (= lt!1142318 lt!1142320)))

(assert (= (and d!954241 res!1361331) b!3366540))

(assert (= (and d!954241 c!573188) b!3366541))

(assert (= (and d!954241 (not c!573188)) b!3366542))

(declare-fun m!3726527 () Bool)

(assert (=> d!954241 m!3726527))

(declare-fun m!3726529 () Bool)

(assert (=> d!954241 m!3726529))

(declare-fun m!3726531 () Bool)

(assert (=> d!954241 m!3726531))

(assert (=> d!954241 m!3726527))

(declare-fun m!3726533 () Bool)

(assert (=> d!954241 m!3726533))

(declare-fun m!3726535 () Bool)

(assert (=> d!954241 m!3726535))

(assert (=> d!954241 m!3726529))

(assert (=> b!3366540 m!3726535))

(declare-fun m!3726537 () Bool)

(assert (=> b!3366542 m!3726537))

(declare-fun m!3726539 () Bool)

(assert (=> b!3366542 m!3726539))

(declare-fun m!3726541 () Bool)

(assert (=> b!3366542 m!3726541))

(declare-fun m!3726543 () Bool)

(assert (=> b!3366542 m!3726543))

(declare-fun m!3726545 () Bool)

(assert (=> b!3366542 m!3726545))

(declare-fun m!3726547 () Bool)

(assert (=> b!3366542 m!3726547))

(declare-fun m!3726549 () Bool)

(assert (=> b!3366542 m!3726549))

(declare-fun m!3726551 () Bool)

(assert (=> b!3366542 m!3726551))

(declare-fun m!3726553 () Bool)

(assert (=> b!3366542 m!3726553))

(declare-fun m!3726555 () Bool)

(assert (=> b!3366542 m!3726555))

(declare-fun m!3726557 () Bool)

(assert (=> b!3366542 m!3726557))

(declare-fun m!3726559 () Bool)

(assert (=> b!3366542 m!3726559))

(assert (=> b!3366542 m!3726549))

(assert (=> b!3366542 m!3726553))

(assert (=> b!3366542 m!3726543))

(declare-fun m!3726561 () Bool)

(assert (=> b!3366542 m!3726561))

(assert (=> b!3366542 m!3726541))

(assert (=> b!3366542 m!3726559))

(assert (=> b!3366263 d!954241))

(declare-fun d!954247 () Bool)

(declare-fun lt!1142323 () BalanceConc!21736)

(assert (=> d!954247 (= (list!13254 lt!1142323) (printList!1480 thiss!18206 (list!13256 lt!1142214)))))

(assert (=> d!954247 (= lt!1142323 (printTailRec!1427 thiss!18206 lt!1142214 0 (BalanceConc!21737 Empty!11061)))))

(assert (=> d!954247 (= (print!1997 thiss!18206 lt!1142214) lt!1142323)))

(declare-fun bs!553938 () Bool)

(assert (= bs!553938 d!954247))

(declare-fun m!3726563 () Bool)

(assert (=> bs!553938 m!3726563))

(assert (=> bs!553938 m!3726547))

(assert (=> bs!553938 m!3726547))

(declare-fun m!3726565 () Bool)

(assert (=> bs!553938 m!3726565))

(assert (=> bs!553938 m!3726155))

(assert (=> b!3366263 d!954247))

(declare-fun d!954249 () Bool)

(declare-fun e!2089455 () Bool)

(assert (=> d!954249 e!2089455))

(declare-fun res!1361334 () Bool)

(assert (=> d!954249 (=> (not res!1361334) (not e!2089455))))

(declare-fun lt!1142326 () BalanceConc!21738)

(assert (=> d!954249 (= res!1361334 (= (list!13256 lt!1142326) (Cons!36723 (h!42143 tokens!494) Nil!36723)))))

(declare-fun singleton!1059 (Token!10052) BalanceConc!21738)

(assert (=> d!954249 (= lt!1142326 (singleton!1059 (h!42143 tokens!494)))))

(assert (=> d!954249 (= (singletonSeq!2439 (h!42143 tokens!494)) lt!1142326)))

(declare-fun b!3366545 () Bool)

(declare-fun isBalanced!3330 (Conc!11062) Bool)

(assert (=> b!3366545 (= e!2089455 (isBalanced!3330 (c!573150 lt!1142326)))))

(assert (= (and d!954249 res!1361334) b!3366545))

(declare-fun m!3726567 () Bool)

(assert (=> d!954249 m!3726567))

(declare-fun m!3726569 () Bool)

(assert (=> d!954249 m!3726569))

(declare-fun m!3726571 () Bool)

(assert (=> b!3366545 m!3726571))

(assert (=> b!3366263 d!954249))

(declare-fun d!954251 () Bool)

(declare-fun c!573191 () Bool)

(assert (=> d!954251 (= c!573191 (is-Cons!36723 (Cons!36723 (h!42143 tokens!494) Nil!36723)))))

(declare-fun e!2089458 () List!36845)

(assert (=> d!954251 (= (printList!1480 thiss!18206 (Cons!36723 (h!42143 tokens!494) Nil!36723)) e!2089458)))

(declare-fun b!3366550 () Bool)

(assert (=> b!3366550 (= e!2089458 (++!8954 (list!13254 (charsOf!3357 (h!42143 (Cons!36723 (h!42143 tokens!494) Nil!36723)))) (printList!1480 thiss!18206 (t!261510 (Cons!36723 (h!42143 tokens!494) Nil!36723)))))))

(declare-fun b!3366551 () Bool)

(assert (=> b!3366551 (= e!2089458 Nil!36721)))

(assert (= (and d!954251 c!573191) b!3366550))

(assert (= (and d!954251 (not c!573191)) b!3366551))

(declare-fun m!3726573 () Bool)

(assert (=> b!3366550 m!3726573))

(assert (=> b!3366550 m!3726573))

(declare-fun m!3726575 () Bool)

(assert (=> b!3366550 m!3726575))

(declare-fun m!3726577 () Bool)

(assert (=> b!3366550 m!3726577))

(assert (=> b!3366550 m!3726575))

(assert (=> b!3366550 m!3726577))

(declare-fun m!3726579 () Bool)

(assert (=> b!3366550 m!3726579))

(assert (=> b!3366263 d!954251))

(declare-fun d!954253 () Bool)

(declare-fun lt!1142334 () Bool)

(declare-fun e!2089464 () Bool)

(assert (=> d!954253 (= lt!1142334 e!2089464)))

(declare-fun res!1361341 () Bool)

(assert (=> d!954253 (=> (not res!1361341) (not e!2089464))))

(assert (=> d!954253 (= res!1361341 (= (list!13256 (_1!21268 (lex!2258 thiss!18206 rules!2135 (print!1997 thiss!18206 (singletonSeq!2439 separatorToken!241))))) (list!13256 (singletonSeq!2439 separatorToken!241))))))

(declare-fun e!2089463 () Bool)

(assert (=> d!954253 (= lt!1142334 e!2089463)))

(declare-fun res!1361342 () Bool)

(assert (=> d!954253 (=> (not res!1361342) (not e!2089463))))

(declare-fun lt!1142333 () tuple2!36268)

(assert (=> d!954253 (= res!1361342 (= (size!27789 (_1!21268 lt!1142333)) 1))))

(assert (=> d!954253 (= lt!1142333 (lex!2258 thiss!18206 rules!2135 (print!1997 thiss!18206 (singletonSeq!2439 separatorToken!241))))))

(assert (=> d!954253 (not (isEmpty!20916 rules!2135))))

(assert (=> d!954253 (= (rulesProduceIndividualToken!2424 thiss!18206 rules!2135 separatorToken!241) lt!1142334)))

(declare-fun b!3366558 () Bool)

(declare-fun res!1361343 () Bool)

(assert (=> b!3366558 (=> (not res!1361343) (not e!2089463))))

(assert (=> b!3366558 (= res!1361343 (= (apply!8504 (_1!21268 lt!1142333) 0) separatorToken!241))))

(declare-fun b!3366559 () Bool)

(declare-fun isEmpty!20920 (BalanceConc!21736) Bool)

(assert (=> b!3366559 (= e!2089463 (isEmpty!20920 (_2!21268 lt!1142333)))))

(declare-fun b!3366560 () Bool)

(assert (=> b!3366560 (= e!2089464 (isEmpty!20920 (_2!21268 (lex!2258 thiss!18206 rules!2135 (print!1997 thiss!18206 (singletonSeq!2439 separatorToken!241))))))))

(assert (= (and d!954253 res!1361342) b!3366558))

(assert (= (and b!3366558 res!1361343) b!3366559))

(assert (= (and d!954253 res!1361341) b!3366560))

(declare-fun m!3726581 () Bool)

(assert (=> d!954253 m!3726581))

(declare-fun m!3726583 () Bool)

(assert (=> d!954253 m!3726583))

(assert (=> d!954253 m!3726581))

(assert (=> d!954253 m!3726583))

(declare-fun m!3726585 () Bool)

(assert (=> d!954253 m!3726585))

(assert (=> d!954253 m!3726237))

(assert (=> d!954253 m!3726581))

(declare-fun m!3726587 () Bool)

(assert (=> d!954253 m!3726587))

(declare-fun m!3726589 () Bool)

(assert (=> d!954253 m!3726589))

(declare-fun m!3726591 () Bool)

(assert (=> d!954253 m!3726591))

(declare-fun m!3726593 () Bool)

(assert (=> b!3366558 m!3726593))

(declare-fun m!3726595 () Bool)

(assert (=> b!3366559 m!3726595))

(assert (=> b!3366560 m!3726581))

(assert (=> b!3366560 m!3726581))

(assert (=> b!3366560 m!3726583))

(assert (=> b!3366560 m!3726583))

(assert (=> b!3366560 m!3726585))

(declare-fun m!3726597 () Bool)

(assert (=> b!3366560 m!3726597))

(assert (=> b!3366250 d!954253))

(declare-fun d!954255 () Bool)

(declare-fun res!1361348 () Bool)

(declare-fun e!2089467 () Bool)

(assert (=> d!954255 (=> (not res!1361348) (not e!2089467))))

(assert (=> d!954255 (= res!1361348 (not (isEmpty!20915 (originalCharacters!6057 separatorToken!241))))))

(assert (=> d!954255 (= (inv!49779 separatorToken!241) e!2089467)))

(declare-fun b!3366565 () Bool)

(declare-fun res!1361349 () Bool)

(assert (=> b!3366565 (=> (not res!1361349) (not e!2089467))))

(assert (=> b!3366565 (= res!1361349 (= (originalCharacters!6057 separatorToken!241) (list!13254 (dynLambda!15208 (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))) (value!172737 separatorToken!241)))))))

(declare-fun b!3366566 () Bool)

(assert (=> b!3366566 (= e!2089467 (= (size!27786 separatorToken!241) (size!27788 (originalCharacters!6057 separatorToken!241))))))

(assert (= (and d!954255 res!1361348) b!3366565))

(assert (= (and b!3366565 res!1361349) b!3366566))

(declare-fun b_lambda!95199 () Bool)

(assert (=> (not b_lambda!95199) (not b!3366565)))

(assert (=> b!3366565 t!261529))

(declare-fun b_and!233247 () Bool)

(assert (= b_and!233241 (and (=> t!261529 result!221920) b_and!233247)))

(assert (=> b!3366565 t!261531))

(declare-fun b_and!233249 () Bool)

(assert (= b_and!233243 (and (=> t!261531 result!221924) b_and!233249)))

(assert (=> b!3366565 t!261533))

(declare-fun b_and!233251 () Bool)

(assert (= b_and!233245 (and (=> t!261533 result!221926) b_and!233251)))

(declare-fun m!3726599 () Bool)

(assert (=> d!954255 m!3726599))

(assert (=> b!3366565 m!3726451))

(assert (=> b!3366565 m!3726451))

(declare-fun m!3726601 () Bool)

(assert (=> b!3366565 m!3726601))

(declare-fun m!3726603 () Bool)

(assert (=> b!3366566 m!3726603))

(assert (=> start!313048 d!954255))

(declare-fun d!954257 () Bool)

(declare-fun lt!1142336 () Bool)

(declare-fun e!2089469 () Bool)

(assert (=> d!954257 (= lt!1142336 e!2089469)))

(declare-fun res!1361350 () Bool)

(assert (=> d!954257 (=> (not res!1361350) (not e!2089469))))

(assert (=> d!954257 (= res!1361350 (= (list!13256 (_1!21268 (lex!2258 thiss!18206 rules!2135 (print!1997 thiss!18206 (singletonSeq!2439 (h!42143 tokens!494)))))) (list!13256 (singletonSeq!2439 (h!42143 tokens!494)))))))

(declare-fun e!2089468 () Bool)

(assert (=> d!954257 (= lt!1142336 e!2089468)))

(declare-fun res!1361351 () Bool)

(assert (=> d!954257 (=> (not res!1361351) (not e!2089468))))

(declare-fun lt!1142335 () tuple2!36268)

(assert (=> d!954257 (= res!1361351 (= (size!27789 (_1!21268 lt!1142335)) 1))))

(assert (=> d!954257 (= lt!1142335 (lex!2258 thiss!18206 rules!2135 (print!1997 thiss!18206 (singletonSeq!2439 (h!42143 tokens!494)))))))

(assert (=> d!954257 (not (isEmpty!20916 rules!2135))))

(assert (=> d!954257 (= (rulesProduceIndividualToken!2424 thiss!18206 rules!2135 (h!42143 tokens!494)) lt!1142336)))

(declare-fun b!3366567 () Bool)

(declare-fun res!1361352 () Bool)

(assert (=> b!3366567 (=> (not res!1361352) (not e!2089468))))

(assert (=> b!3366567 (= res!1361352 (= (apply!8504 (_1!21268 lt!1142335) 0) (h!42143 tokens!494)))))

(declare-fun b!3366568 () Bool)

(assert (=> b!3366568 (= e!2089468 (isEmpty!20920 (_2!21268 lt!1142335)))))

(declare-fun b!3366569 () Bool)

(assert (=> b!3366569 (= e!2089469 (isEmpty!20920 (_2!21268 (lex!2258 thiss!18206 rules!2135 (print!1997 thiss!18206 (singletonSeq!2439 (h!42143 tokens!494)))))))))

(assert (= (and d!954257 res!1361351) b!3366567))

(assert (= (and b!3366567 res!1361352) b!3366568))

(assert (= (and d!954257 res!1361350) b!3366569))

(assert (=> d!954257 m!3726153))

(declare-fun m!3726605 () Bool)

(assert (=> d!954257 m!3726605))

(assert (=> d!954257 m!3726153))

(assert (=> d!954257 m!3726605))

(declare-fun m!3726607 () Bool)

(assert (=> d!954257 m!3726607))

(assert (=> d!954257 m!3726237))

(assert (=> d!954257 m!3726153))

(declare-fun m!3726609 () Bool)

(assert (=> d!954257 m!3726609))

(declare-fun m!3726611 () Bool)

(assert (=> d!954257 m!3726611))

(declare-fun m!3726613 () Bool)

(assert (=> d!954257 m!3726613))

(declare-fun m!3726615 () Bool)

(assert (=> b!3366567 m!3726615))

(declare-fun m!3726617 () Bool)

(assert (=> b!3366568 m!3726617))

(assert (=> b!3366569 m!3726153))

(assert (=> b!3366569 m!3726153))

(assert (=> b!3366569 m!3726605))

(assert (=> b!3366569 m!3726605))

(assert (=> b!3366569 m!3726607))

(declare-fun m!3726619 () Bool)

(assert (=> b!3366569 m!3726619))

(assert (=> b!3366240 d!954257))

(declare-fun d!954259 () Bool)

(assert (=> d!954259 (rulesProduceIndividualToken!2424 thiss!18206 rules!2135 (h!42143 tokens!494))))

(declare-fun lt!1142339 () Unit!51827)

(declare-fun choose!19429 (LexerInterface!4932 List!36846 List!36847 Token!10052) Unit!51827)

(assert (=> d!954259 (= lt!1142339 (choose!19429 thiss!18206 rules!2135 tokens!494 (h!42143 tokens!494)))))

(assert (=> d!954259 (not (isEmpty!20916 rules!2135))))

(assert (=> d!954259 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!927 thiss!18206 rules!2135 tokens!494 (h!42143 tokens!494)) lt!1142339)))

(declare-fun bs!553939 () Bool)

(assert (= bs!553939 d!954259))

(assert (=> bs!553939 m!3726225))

(declare-fun m!3726621 () Bool)

(assert (=> bs!553939 m!3726621))

(assert (=> bs!553939 m!3726237))

(assert (=> b!3366251 d!954259))

(declare-fun d!954261 () Bool)

(declare-fun e!2089472 () Bool)

(assert (=> d!954261 e!2089472))

(declare-fun res!1361357 () Bool)

(assert (=> d!954261 (=> (not res!1361357) (not e!2089472))))

(assert (=> d!954261 (= res!1361357 (isDefined!5677 (getRuleFromTag!998 thiss!18206 rules!2135 (tag!5899 (rule!7881 separatorToken!241)))))))

(declare-fun lt!1142342 () Unit!51827)

(declare-fun choose!19430 (LexerInterface!4932 List!36846 List!36845 Token!10052) Unit!51827)

(assert (=> d!954261 (= lt!1142342 (choose!19430 thiss!18206 rules!2135 lt!1142205 separatorToken!241))))

(assert (=> d!954261 (rulesInvariant!4329 thiss!18206 rules!2135)))

(assert (=> d!954261 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!998 thiss!18206 rules!2135 lt!1142205 separatorToken!241) lt!1142342)))

(declare-fun b!3366574 () Bool)

(declare-fun res!1361358 () Bool)

(assert (=> b!3366574 (=> (not res!1361358) (not e!2089472))))

(assert (=> b!3366574 (= res!1361358 (matchR!4694 (regex!5343 (get!11706 (getRuleFromTag!998 thiss!18206 rules!2135 (tag!5899 (rule!7881 separatorToken!241))))) (list!13254 (charsOf!3357 separatorToken!241))))))

(declare-fun b!3366575 () Bool)

(assert (=> b!3366575 (= e!2089472 (= (rule!7881 separatorToken!241) (get!11706 (getRuleFromTag!998 thiss!18206 rules!2135 (tag!5899 (rule!7881 separatorToken!241))))))))

(assert (= (and d!954261 res!1361357) b!3366574))

(assert (= (and b!3366574 res!1361358) b!3366575))

(assert (=> d!954261 m!3726187))

(assert (=> d!954261 m!3726187))

(declare-fun m!3726623 () Bool)

(assert (=> d!954261 m!3726623))

(declare-fun m!3726625 () Bool)

(assert (=> d!954261 m!3726625))

(assert (=> d!954261 m!3726141))

(assert (=> b!3366574 m!3726205))

(assert (=> b!3366574 m!3726213))

(declare-fun m!3726627 () Bool)

(assert (=> b!3366574 m!3726627))

(assert (=> b!3366574 m!3726205))

(assert (=> b!3366574 m!3726213))

(assert (=> b!3366574 m!3726187))

(assert (=> b!3366574 m!3726187))

(declare-fun m!3726629 () Bool)

(assert (=> b!3366574 m!3726629))

(assert (=> b!3366575 m!3726187))

(assert (=> b!3366575 m!3726187))

(assert (=> b!3366575 m!3726629))

(assert (=> b!3366251 d!954261))

(declare-fun b!3366589 () Bool)

(declare-fun e!2089481 () Option!7337)

(assert (=> b!3366589 (= e!2089481 None!7336)))

(declare-fun b!3366590 () Bool)

(declare-fun e!2089484 () Bool)

(declare-fun e!2089482 () Bool)

(assert (=> b!3366590 (= e!2089484 e!2089482)))

(declare-fun res!1361363 () Bool)

(assert (=> b!3366590 (=> (not res!1361363) (not e!2089482))))

(declare-fun lt!1142349 () Option!7337)

(assert (=> b!3366590 (= res!1361363 (contains!6674 rules!2135 (get!11706 lt!1142349)))))

(declare-fun b!3366591 () Bool)

(assert (=> b!3366591 (= e!2089482 (= (tag!5899 (get!11706 lt!1142349)) (tag!5899 (rule!7881 (h!42143 tokens!494)))))))

(declare-fun d!954263 () Bool)

(assert (=> d!954263 e!2089484))

(declare-fun res!1361364 () Bool)

(assert (=> d!954263 (=> res!1361364 e!2089484)))

(declare-fun isEmpty!20921 (Option!7337) Bool)

(assert (=> d!954263 (= res!1361364 (isEmpty!20921 lt!1142349))))

(declare-fun e!2089483 () Option!7337)

(assert (=> d!954263 (= lt!1142349 e!2089483)))

(declare-fun c!573197 () Bool)

(assert (=> d!954263 (= c!573197 (and (is-Cons!36722 rules!2135) (= (tag!5899 (h!42142 rules!2135)) (tag!5899 (rule!7881 (h!42143 tokens!494))))))))

(assert (=> d!954263 (rulesInvariant!4329 thiss!18206 rules!2135)))

(assert (=> d!954263 (= (getRuleFromTag!998 thiss!18206 rules!2135 (tag!5899 (rule!7881 (h!42143 tokens!494)))) lt!1142349)))

(declare-fun b!3366588 () Bool)

(declare-fun lt!1142351 () Unit!51827)

(declare-fun lt!1142350 () Unit!51827)

(assert (=> b!3366588 (= lt!1142351 lt!1142350)))

(assert (=> b!3366588 (rulesInvariant!4329 thiss!18206 (t!261509 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!379 (LexerInterface!4932 Rule!10486 List!36846) Unit!51827)

(assert (=> b!3366588 (= lt!1142350 (lemmaInvariantOnRulesThenOnTail!379 thiss!18206 (h!42142 rules!2135) (t!261509 rules!2135)))))

(assert (=> b!3366588 (= e!2089481 (getRuleFromTag!998 thiss!18206 (t!261509 rules!2135) (tag!5899 (rule!7881 (h!42143 tokens!494)))))))

(declare-fun b!3366592 () Bool)

(assert (=> b!3366592 (= e!2089483 (Some!7336 (h!42142 rules!2135)))))

(declare-fun b!3366593 () Bool)

(assert (=> b!3366593 (= e!2089483 e!2089481)))

(declare-fun c!573196 () Bool)

(assert (=> b!3366593 (= c!573196 (and (is-Cons!36722 rules!2135) (not (= (tag!5899 (h!42142 rules!2135)) (tag!5899 (rule!7881 (h!42143 tokens!494)))))))))

(assert (= (and d!954263 c!573197) b!3366592))

(assert (= (and d!954263 (not c!573197)) b!3366593))

(assert (= (and b!3366593 c!573196) b!3366588))

(assert (= (and b!3366593 (not c!573196)) b!3366589))

(assert (= (and d!954263 (not res!1361364)) b!3366590))

(assert (= (and b!3366590 res!1361363) b!3366591))

(declare-fun m!3726631 () Bool)

(assert (=> b!3366590 m!3726631))

(assert (=> b!3366590 m!3726631))

(declare-fun m!3726633 () Bool)

(assert (=> b!3366590 m!3726633))

(assert (=> b!3366591 m!3726631))

(declare-fun m!3726635 () Bool)

(assert (=> d!954263 m!3726635))

(assert (=> d!954263 m!3726141))

(declare-fun m!3726637 () Bool)

(assert (=> b!3366588 m!3726637))

(declare-fun m!3726639 () Bool)

(assert (=> b!3366588 m!3726639))

(declare-fun m!3726641 () Bool)

(assert (=> b!3366588 m!3726641))

(assert (=> b!3366251 d!954263))

(declare-fun d!954265 () Bool)

(assert (=> d!954265 (= (isEmpty!20915 (getSuffix!1437 lt!1142211 lt!1142211)) (is-Nil!36721 (getSuffix!1437 lt!1142211 lt!1142211)))))

(assert (=> b!3366251 d!954265))

(declare-fun d!954267 () Bool)

(assert (=> d!954267 (= (isDefined!5677 lt!1142210) (not (isEmpty!20921 lt!1142210)))))

(declare-fun bs!553940 () Bool)

(assert (= bs!553940 d!954267))

(declare-fun m!3726643 () Bool)

(assert (=> bs!553940 m!3726643))

(assert (=> b!3366251 d!954267))

(declare-fun d!954269 () Bool)

(assert (=> d!954269 (= (isDefined!5677 lt!1142201) (not (isEmpty!20921 lt!1142201)))))

(declare-fun bs!553941 () Bool)

(assert (= bs!553941 d!954269))

(declare-fun m!3726645 () Bool)

(assert (=> bs!553941 m!3726645))

(assert (=> b!3366251 d!954269))

(declare-fun d!954271 () Bool)

(assert (=> d!954271 (isEmpty!20915 (getSuffix!1437 lt!1142211 lt!1142211))))

(declare-fun lt!1142354 () Unit!51827)

(declare-fun choose!19431 (List!36845) Unit!51827)

(assert (=> d!954271 (= lt!1142354 (choose!19431 lt!1142211))))

(assert (=> d!954271 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!95 lt!1142211) lt!1142354)))

(declare-fun bs!553942 () Bool)

(assert (= bs!553942 d!954271))

(assert (=> bs!553942 m!3726189))

(assert (=> bs!553942 m!3726189))

(assert (=> bs!553942 m!3726197))

(declare-fun m!3726647 () Bool)

(assert (=> bs!553942 m!3726647))

(assert (=> b!3366251 d!954271))

(declare-fun d!954273 () Bool)

(declare-fun e!2089485 () Bool)

(assert (=> d!954273 e!2089485))

(declare-fun res!1361365 () Bool)

(assert (=> d!954273 (=> (not res!1361365) (not e!2089485))))

(assert (=> d!954273 (= res!1361365 (isDefined!5677 (getRuleFromTag!998 thiss!18206 rules!2135 (tag!5899 (rule!7881 (h!42143 tokens!494))))))))

(declare-fun lt!1142355 () Unit!51827)

(assert (=> d!954273 (= lt!1142355 (choose!19430 thiss!18206 rules!2135 lt!1142211 (h!42143 tokens!494)))))

(assert (=> d!954273 (rulesInvariant!4329 thiss!18206 rules!2135)))

(assert (=> d!954273 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!998 thiss!18206 rules!2135 lt!1142211 (h!42143 tokens!494)) lt!1142355)))

(declare-fun b!3366594 () Bool)

(declare-fun res!1361366 () Bool)

(assert (=> b!3366594 (=> (not res!1361366) (not e!2089485))))

(assert (=> b!3366594 (= res!1361366 (matchR!4694 (regex!5343 (get!11706 (getRuleFromTag!998 thiss!18206 rules!2135 (tag!5899 (rule!7881 (h!42143 tokens!494)))))) (list!13254 (charsOf!3357 (h!42143 tokens!494)))))))

(declare-fun b!3366595 () Bool)

(assert (=> b!3366595 (= e!2089485 (= (rule!7881 (h!42143 tokens!494)) (get!11706 (getRuleFromTag!998 thiss!18206 rules!2135 (tag!5899 (rule!7881 (h!42143 tokens!494)))))))))

(assert (= (and d!954273 res!1361365) b!3366594))

(assert (= (and b!3366594 res!1361366) b!3366595))

(assert (=> d!954273 m!3726199))

(assert (=> d!954273 m!3726199))

(declare-fun m!3726649 () Bool)

(assert (=> d!954273 m!3726649))

(declare-fun m!3726651 () Bool)

(assert (=> d!954273 m!3726651))

(assert (=> d!954273 m!3726141))

(assert (=> b!3366594 m!3726149))

(assert (=> b!3366594 m!3726151))

(declare-fun m!3726653 () Bool)

(assert (=> b!3366594 m!3726653))

(assert (=> b!3366594 m!3726149))

(assert (=> b!3366594 m!3726151))

(assert (=> b!3366594 m!3726199))

(assert (=> b!3366594 m!3726199))

(declare-fun m!3726655 () Bool)

(assert (=> b!3366594 m!3726655))

(assert (=> b!3366595 m!3726199))

(assert (=> b!3366595 m!3726199))

(assert (=> b!3366595 m!3726655))

(assert (=> b!3366251 d!954273))

(declare-fun b!3366597 () Bool)

(declare-fun e!2089486 () Option!7337)

(assert (=> b!3366597 (= e!2089486 None!7336)))

(declare-fun b!3366598 () Bool)

(declare-fun e!2089489 () Bool)

(declare-fun e!2089487 () Bool)

(assert (=> b!3366598 (= e!2089489 e!2089487)))

(declare-fun res!1361367 () Bool)

(assert (=> b!3366598 (=> (not res!1361367) (not e!2089487))))

(declare-fun lt!1142356 () Option!7337)

(assert (=> b!3366598 (= res!1361367 (contains!6674 rules!2135 (get!11706 lt!1142356)))))

(declare-fun b!3366599 () Bool)

(assert (=> b!3366599 (= e!2089487 (= (tag!5899 (get!11706 lt!1142356)) (tag!5899 (rule!7881 separatorToken!241))))))

(declare-fun d!954275 () Bool)

(assert (=> d!954275 e!2089489))

(declare-fun res!1361368 () Bool)

(assert (=> d!954275 (=> res!1361368 e!2089489)))

(assert (=> d!954275 (= res!1361368 (isEmpty!20921 lt!1142356))))

(declare-fun e!2089488 () Option!7337)

(assert (=> d!954275 (= lt!1142356 e!2089488)))

(declare-fun c!573199 () Bool)

(assert (=> d!954275 (= c!573199 (and (is-Cons!36722 rules!2135) (= (tag!5899 (h!42142 rules!2135)) (tag!5899 (rule!7881 separatorToken!241)))))))

(assert (=> d!954275 (rulesInvariant!4329 thiss!18206 rules!2135)))

(assert (=> d!954275 (= (getRuleFromTag!998 thiss!18206 rules!2135 (tag!5899 (rule!7881 separatorToken!241))) lt!1142356)))

(declare-fun b!3366596 () Bool)

(declare-fun lt!1142358 () Unit!51827)

(declare-fun lt!1142357 () Unit!51827)

(assert (=> b!3366596 (= lt!1142358 lt!1142357)))

(assert (=> b!3366596 (rulesInvariant!4329 thiss!18206 (t!261509 rules!2135))))

(assert (=> b!3366596 (= lt!1142357 (lemmaInvariantOnRulesThenOnTail!379 thiss!18206 (h!42142 rules!2135) (t!261509 rules!2135)))))

(assert (=> b!3366596 (= e!2089486 (getRuleFromTag!998 thiss!18206 (t!261509 rules!2135) (tag!5899 (rule!7881 separatorToken!241))))))

(declare-fun b!3366600 () Bool)

(assert (=> b!3366600 (= e!2089488 (Some!7336 (h!42142 rules!2135)))))

(declare-fun b!3366601 () Bool)

(assert (=> b!3366601 (= e!2089488 e!2089486)))

(declare-fun c!573198 () Bool)

(assert (=> b!3366601 (= c!573198 (and (is-Cons!36722 rules!2135) (not (= (tag!5899 (h!42142 rules!2135)) (tag!5899 (rule!7881 separatorToken!241))))))))

(assert (= (and d!954275 c!573199) b!3366600))

(assert (= (and d!954275 (not c!573199)) b!3366601))

(assert (= (and b!3366601 c!573198) b!3366596))

(assert (= (and b!3366601 (not c!573198)) b!3366597))

(assert (= (and d!954275 (not res!1361368)) b!3366598))

(assert (= (and b!3366598 res!1361367) b!3366599))

(declare-fun m!3726657 () Bool)

(assert (=> b!3366598 m!3726657))

(assert (=> b!3366598 m!3726657))

(declare-fun m!3726659 () Bool)

(assert (=> b!3366598 m!3726659))

(assert (=> b!3366599 m!3726657))

(declare-fun m!3726661 () Bool)

(assert (=> d!954275 m!3726661))

(assert (=> d!954275 m!3726141))

(assert (=> b!3366596 m!3726637))

(assert (=> b!3366596 m!3726639))

(declare-fun m!3726663 () Bool)

(assert (=> b!3366596 m!3726663))

(assert (=> b!3366251 d!954275))

(declare-fun d!954277 () Bool)

(declare-fun lt!1142361 () Bool)

(declare-fun content!5039 (List!36846) (Set Rule!10486))

(assert (=> d!954277 (= lt!1142361 (set.member (rule!7881 (h!42143 tokens!494)) (content!5039 rules!2135)))))

(declare-fun e!2089494 () Bool)

(assert (=> d!954277 (= lt!1142361 e!2089494)))

(declare-fun res!1361374 () Bool)

(assert (=> d!954277 (=> (not res!1361374) (not e!2089494))))

(assert (=> d!954277 (= res!1361374 (is-Cons!36722 rules!2135))))

(assert (=> d!954277 (= (contains!6674 rules!2135 (rule!7881 (h!42143 tokens!494))) lt!1142361)))

(declare-fun b!3366606 () Bool)

(declare-fun e!2089495 () Bool)

(assert (=> b!3366606 (= e!2089494 e!2089495)))

(declare-fun res!1361373 () Bool)

(assert (=> b!3366606 (=> res!1361373 e!2089495)))

(assert (=> b!3366606 (= res!1361373 (= (h!42142 rules!2135) (rule!7881 (h!42143 tokens!494))))))

(declare-fun b!3366607 () Bool)

(assert (=> b!3366607 (= e!2089495 (contains!6674 (t!261509 rules!2135) (rule!7881 (h!42143 tokens!494))))))

(assert (= (and d!954277 res!1361374) b!3366606))

(assert (= (and b!3366606 (not res!1361373)) b!3366607))

(declare-fun m!3726665 () Bool)

(assert (=> d!954277 m!3726665))

(declare-fun m!3726667 () Bool)

(assert (=> d!954277 m!3726667))

(declare-fun m!3726669 () Bool)

(assert (=> b!3366607 m!3726669))

(assert (=> b!3366251 d!954277))

(declare-fun d!954279 () Bool)

(declare-fun lt!1142364 () List!36845)

(assert (=> d!954279 (= (++!8954 lt!1142211 lt!1142364) lt!1142211)))

(declare-fun e!2089498 () List!36845)

(assert (=> d!954279 (= lt!1142364 e!2089498)))

(declare-fun c!573202 () Bool)

(assert (=> d!954279 (= c!573202 (is-Cons!36721 lt!1142211))))

(assert (=> d!954279 (>= (size!27788 lt!1142211) (size!27788 lt!1142211))))

(assert (=> d!954279 (= (getSuffix!1437 lt!1142211 lt!1142211) lt!1142364)))

(declare-fun b!3366612 () Bool)

(assert (=> b!3366612 (= e!2089498 (getSuffix!1437 (tail!5314 lt!1142211) (t!261508 lt!1142211)))))

(declare-fun b!3366613 () Bool)

(assert (=> b!3366613 (= e!2089498 lt!1142211)))

(assert (= (and d!954279 c!573202) b!3366612))

(assert (= (and d!954279 (not c!573202)) b!3366613))

(declare-fun m!3726671 () Bool)

(assert (=> d!954279 m!3726671))

(assert (=> d!954279 m!3726433))

(assert (=> d!954279 m!3726433))

(assert (=> b!3366612 m!3726481))

(assert (=> b!3366612 m!3726481))

(declare-fun m!3726673 () Bool)

(assert (=> b!3366612 m!3726673))

(assert (=> b!3366251 d!954279))

(declare-fun d!954281 () Bool)

(declare-fun res!1361375 () Bool)

(declare-fun e!2089499 () Bool)

(assert (=> d!954281 (=> (not res!1361375) (not e!2089499))))

(assert (=> d!954281 (= res!1361375 (not (isEmpty!20915 (originalCharacters!6057 (h!42143 tokens!494)))))))

(assert (=> d!954281 (= (inv!49779 (h!42143 tokens!494)) e!2089499)))

(declare-fun b!3366614 () Bool)

(declare-fun res!1361376 () Bool)

(assert (=> b!3366614 (=> (not res!1361376) (not e!2089499))))

(assert (=> b!3366614 (= res!1361376 (= (originalCharacters!6057 (h!42143 tokens!494)) (list!13254 (dynLambda!15208 (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))) (value!172737 (h!42143 tokens!494))))))))

(declare-fun b!3366615 () Bool)

(assert (=> b!3366615 (= e!2089499 (= (size!27786 (h!42143 tokens!494)) (size!27788 (originalCharacters!6057 (h!42143 tokens!494)))))))

(assert (= (and d!954281 res!1361375) b!3366614))

(assert (= (and b!3366614 res!1361376) b!3366615))

(declare-fun b_lambda!95201 () Bool)

(assert (=> (not b_lambda!95201) (not b!3366614)))

(assert (=> b!3366614 t!261535))

(declare-fun b_and!233253 () Bool)

(assert (= b_and!233247 (and (=> t!261535 result!221928) b_and!233253)))

(assert (=> b!3366614 t!261537))

(declare-fun b_and!233255 () Bool)

(assert (= b_and!233249 (and (=> t!261537 result!221930) b_and!233255)))

(assert (=> b!3366614 t!261539))

(declare-fun b_and!233257 () Bool)

(assert (= b_and!233251 (and (=> t!261539 result!221932) b_and!233257)))

(declare-fun m!3726675 () Bool)

(assert (=> d!954281 m!3726675))

(assert (=> b!3366614 m!3726503))

(assert (=> b!3366614 m!3726503))

(declare-fun m!3726677 () Bool)

(assert (=> b!3366614 m!3726677))

(declare-fun m!3726679 () Bool)

(assert (=> b!3366615 m!3726679))

(assert (=> b!3366260 d!954281))

(declare-fun d!954283 () Bool)

(declare-fun lt!1142367 () Bool)

(declare-fun isEmpty!20922 (List!36847) Bool)

(assert (=> d!954283 (= lt!1142367 (isEmpty!20922 (list!13256 (_1!21268 (lex!2258 thiss!18206 rules!2135 (seqFromList!3739 lt!1142211))))))))

(declare-fun isEmpty!20923 (Conc!11062) Bool)

(assert (=> d!954283 (= lt!1142367 (isEmpty!20923 (c!573150 (_1!21268 (lex!2258 thiss!18206 rules!2135 (seqFromList!3739 lt!1142211))))))))

(assert (=> d!954283 (= (isEmpty!20914 (_1!21268 (lex!2258 thiss!18206 rules!2135 (seqFromList!3739 lt!1142211)))) lt!1142367)))

(declare-fun bs!553943 () Bool)

(assert (= bs!553943 d!954283))

(declare-fun m!3726681 () Bool)

(assert (=> bs!553943 m!3726681))

(assert (=> bs!553943 m!3726681))

(declare-fun m!3726683 () Bool)

(assert (=> bs!553943 m!3726683))

(declare-fun m!3726685 () Bool)

(assert (=> bs!553943 m!3726685))

(assert (=> b!3366239 d!954283))

(declare-fun b!3366651 () Bool)

(declare-fun e!2089526 () Bool)

(declare-fun lt!1142373 () tuple2!36268)

(assert (=> b!3366651 (= e!2089526 (= (_2!21268 lt!1142373) (seqFromList!3739 lt!1142211)))))

(declare-fun b!3366652 () Bool)

(declare-fun res!1361396 () Bool)

(declare-fun e!2089527 () Bool)

(assert (=> b!3366652 (=> (not res!1361396) (not e!2089527))))

(declare-datatypes ((tuple2!36272 0))(
  ( (tuple2!36273 (_1!21270 List!36847) (_2!21270 List!36845)) )
))
(declare-fun lexList!1385 (LexerInterface!4932 List!36846 List!36845) tuple2!36272)

(assert (=> b!3366652 (= res!1361396 (= (list!13256 (_1!21268 lt!1142373)) (_1!21270 (lexList!1385 thiss!18206 rules!2135 (list!13254 (seqFromList!3739 lt!1142211))))))))

(declare-fun b!3366653 () Bool)

(assert (=> b!3366653 (= e!2089527 (= (list!13254 (_2!21268 lt!1142373)) (_2!21270 (lexList!1385 thiss!18206 rules!2135 (list!13254 (seqFromList!3739 lt!1142211))))))))

(declare-fun b!3366654 () Bool)

(declare-fun e!2089528 () Bool)

(assert (=> b!3366654 (= e!2089528 (not (isEmpty!20914 (_1!21268 lt!1142373))))))

(declare-fun d!954285 () Bool)

(assert (=> d!954285 e!2089527))

(declare-fun res!1361397 () Bool)

(assert (=> d!954285 (=> (not res!1361397) (not e!2089527))))

(assert (=> d!954285 (= res!1361397 e!2089526)))

(declare-fun c!573205 () Bool)

(assert (=> d!954285 (= c!573205 (> (size!27789 (_1!21268 lt!1142373)) 0))))

(declare-fun lexTailRecV2!995 (LexerInterface!4932 List!36846 BalanceConc!21736 BalanceConc!21736 BalanceConc!21736 BalanceConc!21738) tuple2!36268)

(assert (=> d!954285 (= lt!1142373 (lexTailRecV2!995 thiss!18206 rules!2135 (seqFromList!3739 lt!1142211) (BalanceConc!21737 Empty!11061) (seqFromList!3739 lt!1142211) (BalanceConc!21739 Empty!11062)))))

(assert (=> d!954285 (= (lex!2258 thiss!18206 rules!2135 (seqFromList!3739 lt!1142211)) lt!1142373)))

(declare-fun b!3366655 () Bool)

(assert (=> b!3366655 (= e!2089526 e!2089528)))

(declare-fun res!1361395 () Bool)

(declare-fun size!27791 (BalanceConc!21736) Int)

(assert (=> b!3366655 (= res!1361395 (< (size!27791 (_2!21268 lt!1142373)) (size!27791 (seqFromList!3739 lt!1142211))))))

(assert (=> b!3366655 (=> (not res!1361395) (not e!2089528))))

(assert (= (and d!954285 c!573205) b!3366655))

(assert (= (and d!954285 (not c!573205)) b!3366651))

(assert (= (and b!3366655 res!1361395) b!3366654))

(assert (= (and d!954285 res!1361397) b!3366652))

(assert (= (and b!3366652 res!1361396) b!3366653))

(declare-fun m!3726717 () Bool)

(assert (=> d!954285 m!3726717))

(assert (=> d!954285 m!3726231))

(assert (=> d!954285 m!3726231))

(declare-fun m!3726719 () Bool)

(assert (=> d!954285 m!3726719))

(declare-fun m!3726721 () Bool)

(assert (=> b!3366655 m!3726721))

(assert (=> b!3366655 m!3726231))

(declare-fun m!3726723 () Bool)

(assert (=> b!3366655 m!3726723))

(declare-fun m!3726725 () Bool)

(assert (=> b!3366653 m!3726725))

(assert (=> b!3366653 m!3726231))

(declare-fun m!3726727 () Bool)

(assert (=> b!3366653 m!3726727))

(assert (=> b!3366653 m!3726727))

(declare-fun m!3726729 () Bool)

(assert (=> b!3366653 m!3726729))

(declare-fun m!3726731 () Bool)

(assert (=> b!3366652 m!3726731))

(assert (=> b!3366652 m!3726231))

(assert (=> b!3366652 m!3726727))

(assert (=> b!3366652 m!3726727))

(assert (=> b!3366652 m!3726729))

(declare-fun m!3726733 () Bool)

(assert (=> b!3366654 m!3726733))

(assert (=> b!3366239 d!954285))

(declare-fun d!954295 () Bool)

(declare-fun fromListB!1661 (List!36845) BalanceConc!21736)

(assert (=> d!954295 (= (seqFromList!3739 lt!1142211) (fromListB!1661 lt!1142211))))

(declare-fun bs!553946 () Bool)

(assert (= bs!553946 d!954295))

(declare-fun m!3726735 () Bool)

(assert (=> bs!553946 m!3726735))

(assert (=> b!3366239 d!954295))

(declare-fun d!954297 () Bool)

(assert (=> d!954297 (dynLambda!15209 lambda!120160 (h!42143 tokens!494))))

(declare-fun lt!1142378 () Unit!51827)

(declare-fun choose!19432 (List!36847 Int Token!10052) Unit!51827)

(assert (=> d!954297 (= lt!1142378 (choose!19432 tokens!494 lambda!120160 (h!42143 tokens!494)))))

(declare-fun e!2089545 () Bool)

(assert (=> d!954297 e!2089545))

(declare-fun res!1361416 () Bool)

(assert (=> d!954297 (=> (not res!1361416) (not e!2089545))))

(assert (=> d!954297 (= res!1361416 (forall!7698 tokens!494 lambda!120160))))

(assert (=> d!954297 (= (forallContained!1290 tokens!494 lambda!120160 (h!42143 tokens!494)) lt!1142378)))

(declare-fun b!3366686 () Bool)

(declare-fun contains!6676 (List!36847 Token!10052) Bool)

(assert (=> b!3366686 (= e!2089545 (contains!6676 tokens!494 (h!42143 tokens!494)))))

(assert (= (and d!954297 res!1361416) b!3366686))

(declare-fun b_lambda!95203 () Bool)

(assert (=> (not b_lambda!95203) (not d!954297)))

(assert (=> d!954297 m!3726461))

(declare-fun m!3726737 () Bool)

(assert (=> d!954297 m!3726737))

(assert (=> d!954297 m!3726221))

(declare-fun m!3726739 () Bool)

(assert (=> b!3366686 m!3726739))

(assert (=> b!3366258 d!954297))

(declare-fun d!954299 () Bool)

(assert (=> d!954299 (= (inv!49775 (tag!5899 (h!42142 rules!2135))) (= (mod (str.len (value!172736 (tag!5899 (h!42142 rules!2135)))) 2) 0))))

(assert (=> b!3366237 d!954299))

(declare-fun d!954301 () Bool)

(declare-fun res!1361425 () Bool)

(declare-fun e!2089553 () Bool)

(assert (=> d!954301 (=> (not res!1361425) (not e!2089553))))

(assert (=> d!954301 (= res!1361425 (semiInverseModEq!2222 (toChars!7382 (transformation!5343 (h!42142 rules!2135))) (toValue!7523 (transformation!5343 (h!42142 rules!2135)))))))

(assert (=> d!954301 (= (inv!49778 (transformation!5343 (h!42142 rules!2135))) e!2089553)))

(declare-fun b!3366701 () Bool)

(assert (=> b!3366701 (= e!2089553 (equivClasses!2121 (toChars!7382 (transformation!5343 (h!42142 rules!2135))) (toValue!7523 (transformation!5343 (h!42142 rules!2135)))))))

(assert (= (and d!954301 res!1361425) b!3366701))

(declare-fun m!3726741 () Bool)

(assert (=> d!954301 m!3726741))

(declare-fun m!3726743 () Bool)

(assert (=> b!3366701 m!3726743))

(assert (=> b!3366237 d!954301))

(declare-fun d!954303 () Bool)

(declare-fun res!1361428 () Bool)

(declare-fun e!2089556 () Bool)

(assert (=> d!954303 (=> (not res!1361428) (not e!2089556))))

(declare-fun rulesValid!1982 (LexerInterface!4932 List!36846) Bool)

(assert (=> d!954303 (= res!1361428 (rulesValid!1982 thiss!18206 rules!2135))))

(assert (=> d!954303 (= (rulesInvariant!4329 thiss!18206 rules!2135) e!2089556)))

(declare-fun b!3366704 () Bool)

(declare-datatypes ((List!36852 0))(
  ( (Nil!36728) (Cons!36728 (h!42148 String!41201) (t!261571 List!36852)) )
))
(declare-fun noDuplicateTag!1978 (LexerInterface!4932 List!36846 List!36852) Bool)

(assert (=> b!3366704 (= e!2089556 (noDuplicateTag!1978 thiss!18206 rules!2135 Nil!36728))))

(assert (= (and d!954303 res!1361428) b!3366704))

(declare-fun m!3726761 () Bool)

(assert (=> d!954303 m!3726761))

(declare-fun m!3726763 () Bool)

(assert (=> b!3366704 m!3726763))

(assert (=> b!3366248 d!954303))

(declare-fun b!3366705 () Bool)

(declare-fun e!2089557 () Bool)

(declare-fun lt!1142380 () Bool)

(assert (=> b!3366705 (= e!2089557 (not lt!1142380))))

(declare-fun b!3366706 () Bool)

(declare-fun e!2089562 () Bool)

(assert (=> b!3366706 (= e!2089562 e!2089557)))

(declare-fun c!573216 () Bool)

(assert (=> b!3366706 (= c!573216 (is-EmptyLang!10102 (regex!5343 lt!1142206)))))

(declare-fun b!3366707 () Bool)

(declare-fun res!1361433 () Bool)

(declare-fun e!2089558 () Bool)

(assert (=> b!3366707 (=> (not res!1361433) (not e!2089558))))

(declare-fun call!243787 () Bool)

(assert (=> b!3366707 (= res!1361433 (not call!243787))))

(declare-fun b!3366708 () Bool)

(declare-fun e!2089560 () Bool)

(assert (=> b!3366708 (= e!2089560 (nullable!3431 (regex!5343 lt!1142206)))))

(declare-fun b!3366709 () Bool)

(declare-fun e!2089561 () Bool)

(declare-fun e!2089563 () Bool)

(assert (=> b!3366709 (= e!2089561 e!2089563)))

(declare-fun res!1361434 () Bool)

(assert (=> b!3366709 (=> (not res!1361434) (not e!2089563))))

(assert (=> b!3366709 (= res!1361434 (not lt!1142380))))

(declare-fun b!3366710 () Bool)

(declare-fun e!2089559 () Bool)

(assert (=> b!3366710 (= e!2089559 (not (= (head!7176 lt!1142205) (c!573148 (regex!5343 lt!1142206)))))))

(declare-fun b!3366711 () Bool)

(assert (=> b!3366711 (= e!2089563 e!2089559)))

(declare-fun res!1361429 () Bool)

(assert (=> b!3366711 (=> res!1361429 e!2089559)))

(assert (=> b!3366711 (= res!1361429 call!243787)))

(declare-fun d!954309 () Bool)

(assert (=> d!954309 e!2089562))

(declare-fun c!573217 () Bool)

(assert (=> d!954309 (= c!573217 (is-EmptyExpr!10102 (regex!5343 lt!1142206)))))

(assert (=> d!954309 (= lt!1142380 e!2089560)))

(declare-fun c!573215 () Bool)

(assert (=> d!954309 (= c!573215 (isEmpty!20915 lt!1142205))))

(assert (=> d!954309 (validRegex!4587 (regex!5343 lt!1142206))))

(assert (=> d!954309 (= (matchR!4694 (regex!5343 lt!1142206) lt!1142205) lt!1142380)))

(declare-fun b!3366712 () Bool)

(declare-fun res!1361436 () Bool)

(assert (=> b!3366712 (=> res!1361436 e!2089561)))

(assert (=> b!3366712 (= res!1361436 (not (is-ElementMatch!10102 (regex!5343 lt!1142206))))))

(assert (=> b!3366712 (= e!2089557 e!2089561)))

(declare-fun b!3366713 () Bool)

(assert (=> b!3366713 (= e!2089562 (= lt!1142380 call!243787))))

(declare-fun bm!243782 () Bool)

(assert (=> bm!243782 (= call!243787 (isEmpty!20915 lt!1142205))))

(declare-fun b!3366714 () Bool)

(assert (=> b!3366714 (= e!2089558 (= (head!7176 lt!1142205) (c!573148 (regex!5343 lt!1142206))))))

(declare-fun b!3366715 () Bool)

(declare-fun res!1361430 () Bool)

(assert (=> b!3366715 (=> res!1361430 e!2089559)))

(assert (=> b!3366715 (= res!1361430 (not (isEmpty!20915 (tail!5314 lt!1142205))))))

(declare-fun b!3366716 () Bool)

(assert (=> b!3366716 (= e!2089560 (matchR!4694 (derivativeStep!2984 (regex!5343 lt!1142206) (head!7176 lt!1142205)) (tail!5314 lt!1142205)))))

(declare-fun b!3366717 () Bool)

(declare-fun res!1361432 () Bool)

(assert (=> b!3366717 (=> (not res!1361432) (not e!2089558))))

(assert (=> b!3366717 (= res!1361432 (isEmpty!20915 (tail!5314 lt!1142205)))))

(declare-fun b!3366718 () Bool)

(declare-fun res!1361435 () Bool)

(assert (=> b!3366718 (=> res!1361435 e!2089561)))

(assert (=> b!3366718 (= res!1361435 e!2089558)))

(declare-fun res!1361431 () Bool)

(assert (=> b!3366718 (=> (not res!1361431) (not e!2089558))))

(assert (=> b!3366718 (= res!1361431 lt!1142380)))

(assert (= (and d!954309 c!573215) b!3366708))

(assert (= (and d!954309 (not c!573215)) b!3366716))

(assert (= (and d!954309 c!573217) b!3366713))

(assert (= (and d!954309 (not c!573217)) b!3366706))

(assert (= (and b!3366706 c!573216) b!3366705))

(assert (= (and b!3366706 (not c!573216)) b!3366712))

(assert (= (and b!3366712 (not res!1361436)) b!3366718))

(assert (= (and b!3366718 res!1361431) b!3366707))

(assert (= (and b!3366707 res!1361433) b!3366717))

(assert (= (and b!3366717 res!1361432) b!3366714))

(assert (= (and b!3366718 (not res!1361435)) b!3366709))

(assert (= (and b!3366709 res!1361434) b!3366711))

(assert (= (and b!3366711 (not res!1361429)) b!3366715))

(assert (= (and b!3366715 (not res!1361430)) b!3366710))

(assert (= (or b!3366713 b!3366707 b!3366711) bm!243782))

(declare-fun m!3726765 () Bool)

(assert (=> b!3366708 m!3726765))

(declare-fun m!3726767 () Bool)

(assert (=> d!954309 m!3726767))

(declare-fun m!3726769 () Bool)

(assert (=> d!954309 m!3726769))

(declare-fun m!3726771 () Bool)

(assert (=> b!3366715 m!3726771))

(assert (=> b!3366715 m!3726771))

(declare-fun m!3726773 () Bool)

(assert (=> b!3366715 m!3726773))

(assert (=> bm!243782 m!3726767))

(declare-fun m!3726775 () Bool)

(assert (=> b!3366716 m!3726775))

(assert (=> b!3366716 m!3726775))

(declare-fun m!3726777 () Bool)

(assert (=> b!3366716 m!3726777))

(assert (=> b!3366716 m!3726771))

(assert (=> b!3366716 m!3726777))

(assert (=> b!3366716 m!3726771))

(declare-fun m!3726779 () Bool)

(assert (=> b!3366716 m!3726779))

(assert (=> b!3366714 m!3726775))

(assert (=> b!3366710 m!3726775))

(assert (=> b!3366717 m!3726771))

(assert (=> b!3366717 m!3726771))

(assert (=> b!3366717 m!3726773))

(assert (=> b!3366259 d!954309))

(declare-fun d!954311 () Bool)

(assert (=> d!954311 (= (get!11706 lt!1142210) (v!36322 lt!1142210))))

(assert (=> b!3366259 d!954311))

(declare-fun b!3366729 () Bool)

(declare-fun e!2089566 () Bool)

(declare-fun tp_is_empty!17435 () Bool)

(assert (=> b!3366729 (= e!2089566 tp_is_empty!17435)))

(declare-fun b!3366730 () Bool)

(declare-fun tp!1053526 () Bool)

(declare-fun tp!1053530 () Bool)

(assert (=> b!3366730 (= e!2089566 (and tp!1053526 tp!1053530))))

(assert (=> b!3366241 (= tp!1053457 e!2089566)))

(declare-fun b!3366731 () Bool)

(declare-fun tp!1053527 () Bool)

(assert (=> b!3366731 (= e!2089566 tp!1053527)))

(declare-fun b!3366732 () Bool)

(declare-fun tp!1053529 () Bool)

(declare-fun tp!1053528 () Bool)

(assert (=> b!3366732 (= e!2089566 (and tp!1053529 tp!1053528))))

(assert (= (and b!3366241 (is-ElementMatch!10102 (regex!5343 (rule!7881 (h!42143 tokens!494))))) b!3366729))

(assert (= (and b!3366241 (is-Concat!15675 (regex!5343 (rule!7881 (h!42143 tokens!494))))) b!3366730))

(assert (= (and b!3366241 (is-Star!10102 (regex!5343 (rule!7881 (h!42143 tokens!494))))) b!3366731))

(assert (= (and b!3366241 (is-Union!10102 (regex!5343 (rule!7881 (h!42143 tokens!494))))) b!3366732))

(declare-fun b!3366737 () Bool)

(declare-fun e!2089569 () Bool)

(declare-fun tp!1053533 () Bool)

(assert (=> b!3366737 (= e!2089569 (and tp_is_empty!17435 tp!1053533))))

(assert (=> b!3366265 (= tp!1053465 e!2089569)))

(assert (= (and b!3366265 (is-Cons!36721 (originalCharacters!6057 separatorToken!241))) b!3366737))

(declare-fun b!3366751 () Bool)

(declare-fun b_free!87973 () Bool)

(declare-fun b_next!88677 () Bool)

(assert (=> b!3366751 (= b_free!87973 (not b_next!88677))))

(declare-fun tp!1053548 () Bool)

(declare-fun b_and!233259 () Bool)

(assert (=> b!3366751 (= tp!1053548 b_and!233259)))

(declare-fun b_free!87975 () Bool)

(declare-fun b_next!88679 () Bool)

(assert (=> b!3366751 (= b_free!87975 (not b_next!88679))))

(declare-fun t!261548 () Bool)

(declare-fun tb!178709 () Bool)

(assert (=> (and b!3366751 (= (toChars!7382 (transformation!5343 (rule!7881 (h!42143 (t!261510 tokens!494))))) (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241)))) t!261548) tb!178709))

(declare-fun result!221940 () Bool)

(assert (= result!221940 result!221920))

(assert (=> d!954211 t!261548))

(declare-fun t!261550 () Bool)

(declare-fun tb!178711 () Bool)

(assert (=> (and b!3366751 (= (toChars!7382 (transformation!5343 (rule!7881 (h!42143 (t!261510 tokens!494))))) (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494))))) t!261550) tb!178711))

(declare-fun result!221942 () Bool)

(assert (= result!221942 result!221928))

(assert (=> d!954237 t!261550))

(assert (=> b!3366565 t!261548))

(assert (=> b!3366614 t!261550))

(declare-fun b_and!233261 () Bool)

(declare-fun tp!1053546 () Bool)

(assert (=> b!3366751 (= tp!1053546 (and (=> t!261548 result!221940) (=> t!261550 result!221942) b_and!233261))))

(declare-fun e!2089585 () Bool)

(declare-fun e!2089582 () Bool)

(declare-fun tp!1053545 () Bool)

(declare-fun b!3366748 () Bool)

(assert (=> b!3366748 (= e!2089585 (and (inv!49779 (h!42143 (t!261510 tokens!494))) e!2089582 tp!1053545))))

(assert (=> b!3366260 (= tp!1053464 e!2089585)))

(declare-fun e!2089583 () Bool)

(assert (=> b!3366751 (= e!2089583 (and tp!1053548 tp!1053546))))

(declare-fun tp!1053547 () Bool)

(declare-fun b!3366750 () Bool)

(declare-fun e!2089587 () Bool)

(assert (=> b!3366750 (= e!2089587 (and tp!1053547 (inv!49775 (tag!5899 (rule!7881 (h!42143 (t!261510 tokens!494))))) (inv!49778 (transformation!5343 (rule!7881 (h!42143 (t!261510 tokens!494))))) e!2089583))))

(declare-fun b!3366749 () Bool)

(declare-fun tp!1053544 () Bool)

(assert (=> b!3366749 (= e!2089582 (and (inv!21 (value!172737 (h!42143 (t!261510 tokens!494)))) e!2089587 tp!1053544))))

(assert (= b!3366750 b!3366751))

(assert (= b!3366749 b!3366750))

(assert (= b!3366748 b!3366749))

(assert (= (and b!3366260 (is-Cons!36723 (t!261510 tokens!494))) b!3366748))

(declare-fun m!3726781 () Bool)

(assert (=> b!3366748 m!3726781))

(declare-fun m!3726783 () Bool)

(assert (=> b!3366750 m!3726783))

(declare-fun m!3726785 () Bool)

(assert (=> b!3366750 m!3726785))

(declare-fun m!3726787 () Bool)

(assert (=> b!3366749 m!3726787))

(declare-fun b!3366752 () Bool)

(declare-fun e!2089588 () Bool)

(declare-fun tp!1053549 () Bool)

(assert (=> b!3366752 (= e!2089588 (and tp_is_empty!17435 tp!1053549))))

(assert (=> b!3366255 (= tp!1053466 e!2089588)))

(assert (= (and b!3366255 (is-Cons!36721 (originalCharacters!6057 (h!42143 tokens!494)))) b!3366752))

(declare-fun b!3366753 () Bool)

(declare-fun e!2089589 () Bool)

(assert (=> b!3366753 (= e!2089589 tp_is_empty!17435)))

(declare-fun b!3366754 () Bool)

(declare-fun tp!1053550 () Bool)

(declare-fun tp!1053554 () Bool)

(assert (=> b!3366754 (= e!2089589 (and tp!1053550 tp!1053554))))

(assert (=> b!3366253 (= tp!1053469 e!2089589)))

(declare-fun b!3366755 () Bool)

(declare-fun tp!1053551 () Bool)

(assert (=> b!3366755 (= e!2089589 tp!1053551)))

(declare-fun b!3366756 () Bool)

(declare-fun tp!1053553 () Bool)

(declare-fun tp!1053552 () Bool)

(assert (=> b!3366756 (= e!2089589 (and tp!1053553 tp!1053552))))

(assert (= (and b!3366253 (is-ElementMatch!10102 (regex!5343 (rule!7881 separatorToken!241)))) b!3366753))

(assert (= (and b!3366253 (is-Concat!15675 (regex!5343 (rule!7881 separatorToken!241)))) b!3366754))

(assert (= (and b!3366253 (is-Star!10102 (regex!5343 (rule!7881 separatorToken!241)))) b!3366755))

(assert (= (and b!3366253 (is-Union!10102 (regex!5343 (rule!7881 separatorToken!241)))) b!3366756))

(declare-fun b!3366757 () Bool)

(declare-fun e!2089590 () Bool)

(assert (=> b!3366757 (= e!2089590 tp_is_empty!17435)))

(declare-fun b!3366758 () Bool)

(declare-fun tp!1053555 () Bool)

(declare-fun tp!1053559 () Bool)

(assert (=> b!3366758 (= e!2089590 (and tp!1053555 tp!1053559))))

(assert (=> b!3366237 (= tp!1053458 e!2089590)))

(declare-fun b!3366759 () Bool)

(declare-fun tp!1053556 () Bool)

(assert (=> b!3366759 (= e!2089590 tp!1053556)))

(declare-fun b!3366760 () Bool)

(declare-fun tp!1053558 () Bool)

(declare-fun tp!1053557 () Bool)

(assert (=> b!3366760 (= e!2089590 (and tp!1053558 tp!1053557))))

(assert (= (and b!3366237 (is-ElementMatch!10102 (regex!5343 (h!42142 rules!2135)))) b!3366757))

(assert (= (and b!3366237 (is-Concat!15675 (regex!5343 (h!42142 rules!2135)))) b!3366758))

(assert (= (and b!3366237 (is-Star!10102 (regex!5343 (h!42142 rules!2135)))) b!3366759))

(assert (= (and b!3366237 (is-Union!10102 (regex!5343 (h!42142 rules!2135)))) b!3366760))

(declare-fun b!3366771 () Bool)

(declare-fun b_free!87977 () Bool)

(declare-fun b_next!88681 () Bool)

(assert (=> b!3366771 (= b_free!87977 (not b_next!88681))))

(declare-fun tp!1053570 () Bool)

(declare-fun b_and!233263 () Bool)

(assert (=> b!3366771 (= tp!1053570 b_and!233263)))

(declare-fun b_free!87979 () Bool)

(declare-fun b_next!88683 () Bool)

(assert (=> b!3366771 (= b_free!87979 (not b_next!88683))))

(declare-fun t!261552 () Bool)

(declare-fun tb!178713 () Bool)

(assert (=> (and b!3366771 (= (toChars!7382 (transformation!5343 (h!42142 (t!261509 rules!2135)))) (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241)))) t!261552) tb!178713))

(declare-fun result!221946 () Bool)

(assert (= result!221946 result!221920))

(assert (=> d!954211 t!261552))

(declare-fun t!261554 () Bool)

(declare-fun tb!178715 () Bool)

(assert (=> (and b!3366771 (= (toChars!7382 (transformation!5343 (h!42142 (t!261509 rules!2135)))) (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494))))) t!261554) tb!178715))

(declare-fun result!221948 () Bool)

(assert (= result!221948 result!221928))

(assert (=> d!954237 t!261554))

(assert (=> b!3366565 t!261552))

(assert (=> b!3366614 t!261554))

(declare-fun tp!1053569 () Bool)

(declare-fun b_and!233265 () Bool)

(assert (=> b!3366771 (= tp!1053569 (and (=> t!261552 result!221946) (=> t!261554 result!221948) b_and!233265))))

(declare-fun e!2089602 () Bool)

(assert (=> b!3366771 (= e!2089602 (and tp!1053570 tp!1053569))))

(declare-fun b!3366770 () Bool)

(declare-fun e!2089601 () Bool)

(declare-fun tp!1053571 () Bool)

(assert (=> b!3366770 (= e!2089601 (and tp!1053571 (inv!49775 (tag!5899 (h!42142 (t!261509 rules!2135)))) (inv!49778 (transformation!5343 (h!42142 (t!261509 rules!2135)))) e!2089602))))

(declare-fun b!3366769 () Bool)

(declare-fun e!2089599 () Bool)

(declare-fun tp!1053568 () Bool)

(assert (=> b!3366769 (= e!2089599 (and e!2089601 tp!1053568))))

(assert (=> b!3366243 (= tp!1053460 e!2089599)))

(assert (= b!3366770 b!3366771))

(assert (= b!3366769 b!3366770))

(assert (= (and b!3366243 (is-Cons!36722 (t!261509 rules!2135))) b!3366769))

(declare-fun m!3726795 () Bool)

(assert (=> b!3366770 m!3726795))

(declare-fun m!3726797 () Bool)

(assert (=> b!3366770 m!3726797))

(declare-fun b_lambda!95205 () Bool)

(assert (= b_lambda!95197 (or (and b!3366771 b_free!87979 (= (toChars!7382 (transformation!5343 (h!42142 (t!261509 rules!2135)))) (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))))) (and b!3366256 b_free!87955 (= (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))) (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))))) (and b!3366238 b_free!87959) (and b!3366751 b_free!87975 (= (toChars!7382 (transformation!5343 (rule!7881 (h!42143 (t!261510 tokens!494))))) (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))))) (and b!3366242 b_free!87951 (= (toChars!7382 (transformation!5343 (h!42142 rules!2135))) (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))))) b_lambda!95205)))

(declare-fun b_lambda!95207 () Bool)

(assert (= b_lambda!95195 (or b!3366244 b_lambda!95207)))

(declare-fun bs!553948 () Bool)

(declare-fun d!954315 () Bool)

(assert (= bs!553948 (and d!954315 b!3366244)))

(assert (=> bs!553948 (= (dynLambda!15209 lambda!120160 (h!42143 tokens!494)) (not (isSeparator!5343 (rule!7881 (h!42143 tokens!494)))))))

(assert (=> b!3366465 d!954315))

(declare-fun b_lambda!95209 () Bool)

(assert (= b_lambda!95203 (or b!3366244 b_lambda!95209)))

(assert (=> d!954297 d!954315))

(declare-fun b_lambda!95211 () Bool)

(assert (= b_lambda!95201 (or (and b!3366771 b_free!87979 (= (toChars!7382 (transformation!5343 (h!42142 (t!261509 rules!2135)))) (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))))) (and b!3366256 b_free!87955 (= (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))) (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))))) (and b!3366238 b_free!87959) (and b!3366751 b_free!87975 (= (toChars!7382 (transformation!5343 (rule!7881 (h!42143 (t!261510 tokens!494))))) (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))))) (and b!3366242 b_free!87951 (= (toChars!7382 (transformation!5343 (h!42142 rules!2135))) (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))))) b_lambda!95211)))

(declare-fun b_lambda!95213 () Bool)

(assert (= b_lambda!95199 (or (and b!3366751 b_free!87975 (= (toChars!7382 (transformation!5343 (rule!7881 (h!42143 (t!261510 tokens!494))))) (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))))) (and b!3366256 b_free!87955) (and b!3366238 b_free!87959 (= (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))) (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))))) (and b!3366242 b_free!87951 (= (toChars!7382 (transformation!5343 (h!42142 rules!2135))) (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))))) (and b!3366771 b_free!87979 (= (toChars!7382 (transformation!5343 (h!42142 (t!261509 rules!2135)))) (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))))) b_lambda!95213)))

(declare-fun b_lambda!95215 () Bool)

(assert (= b_lambda!95193 (or (and b!3366751 b_free!87975 (= (toChars!7382 (transformation!5343 (rule!7881 (h!42143 (t!261510 tokens!494))))) (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))))) (and b!3366256 b_free!87955) (and b!3366238 b_free!87959 (= (toChars!7382 (transformation!5343 (rule!7881 (h!42143 tokens!494)))) (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))))) (and b!3366242 b_free!87951 (= (toChars!7382 (transformation!5343 (h!42142 rules!2135))) (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))))) (and b!3366771 b_free!87979 (= (toChars!7382 (transformation!5343 (h!42142 (t!261509 rules!2135)))) (toChars!7382 (transformation!5343 (rule!7881 separatorToken!241))))) b_lambda!95215)))

(push 1)

(assert (not b!3366655))

(assert (not d!954253))

(assert (not b_next!88653))

(assert (not b!3366575))

(assert (not b!3366569))

(assert (not b!3366770))

(assert (not b!3366748))

(assert (not b!3366716))

(assert (not b!3366474))

(assert (not b!3366717))

(assert (not b!3366458))

(assert (not b!3366686))

(assert (not d!954277))

(assert (not b_next!88655))

(assert (not b!3366752))

(assert (not b!3366550))

(assert (not d!954225))

(assert (not b!3366515))

(assert (not b!3366598))

(assert (not b!3366588))

(assert (not b!3366518))

(assert (not tb!178697))

(assert (not b!3366514))

(assert (not d!954271))

(assert tp_is_empty!17435)

(assert (not b!3366566))

(assert (not d!954259))

(assert (not b!3366652))

(assert (not tb!178703))

(assert (not b!3366506))

(assert (not b!3366704))

(assert (not bm!243778))

(assert (not b!3366654))

(assert (not b!3366542))

(assert (not b!3366469))

(assert (not b!3366438))

(assert (not d!954207))

(assert (not b!3366614))

(assert (not b!3366558))

(assert (not d!954275))

(assert (not d!954205))

(assert (not d!954263))

(assert (not b!3366590))

(assert (not b!3366457))

(assert (not b_lambda!95215))

(assert (not b_lambda!95211))

(assert (not b!3366653))

(assert (not b_next!88657))

(assert (not d!954309))

(assert (not d!954281))

(assert (not b!3366612))

(assert b_and!233257)

(assert (not b_lambda!95213))

(assert (not d!954227))

(assert b_and!233259)

(assert (not d!954239))

(assert b_and!233261)

(assert (not b!3366769))

(assert (not d!954167))

(assert (not b_lambda!95209))

(assert (not b!3366424))

(assert (not b!3366594))

(assert b_and!233207)

(assert (not d!954297))

(assert (not d!954211))

(assert (not b_next!88661))

(assert (not d!954233))

(assert (not d!954213))

(assert (not b!3366513))

(assert (not b_lambda!95205))

(assert (not b!3366357))

(assert (not d!954209))

(assert (not b_next!88679))

(assert (not b!3366759))

(assert (not b!3366708))

(assert (not d!954235))

(assert (not d!954241))

(assert (not d!954267))

(assert (not b!3366545))

(assert (not b!3366466))

(assert (not b!3366467))

(assert (not b!3366456))

(assert (not d!954257))

(assert (not b!3366560))

(assert (not b!3366732))

(assert (not d!954247))

(assert (not b!3366701))

(assert b_and!233263)

(assert (not d!954261))

(assert (not d!954301))

(assert (not b!3366749))

(assert (not d!954255))

(assert (not d!954303))

(assert (not b!3366750))

(assert (not d!954283))

(assert (not b!3366731))

(assert (not b!3366415))

(assert (not b_next!88677))

(assert (not b!3366615))

(assert (not d!954295))

(assert (not b!3366737))

(assert (not b!3366591))

(assert (not b!3366568))

(assert (not b!3366710))

(assert (not b!3366567))

(assert (not b!3366512))

(assert b_and!233203)

(assert b_and!233255)

(assert (not b!3366517))

(assert (not b!3366559))

(assert (not b_lambda!95207))

(assert (not b!3366607))

(assert (not b!3366574))

(assert (not b!3366508))

(assert (not b!3366596))

(assert (not b!3366565))

(assert (not b!3366595))

(assert (not b!3366439))

(assert (not b!3366358))

(assert b_and!233199)

(assert (not b!3366599))

(assert (not b!3366756))

(assert (not b_next!88683))

(assert (not b!3366730))

(assert (not b!3366758))

(assert (not b!3366755))

(assert (not b!3366468))

(assert (not b!3366715))

(assert (not b_next!88659))

(assert (not b_next!88681))

(assert (not b!3366445))

(assert (not d!954249))

(assert (not d!954203))

(assert b_and!233265)

(assert (not d!954237))

(assert (not b!3366540))

(assert (not b!3366714))

(assert (not d!954269))

(assert (not b!3366760))

(assert (not d!954279))

(assert (not d!954285))

(assert (not b!3366754))

(assert (not bm!243782))

(assert (not b_next!88663))

(assert b_and!233253)

(assert (not d!954273))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!88653))

(assert (not b_next!88655))

(assert (not b_next!88657))

(assert b_and!233207)

(assert (not b_next!88661))

(assert (not b_next!88679))

(assert b_and!233263)

(assert (not b_next!88677))

(assert b_and!233199)

(assert b_and!233265)

(assert b_and!233257)

(assert b_and!233259)

(assert b_and!233261)

(assert b_and!233203)

(assert b_and!233255)

(assert (not b_next!88683))

(assert (not b_next!88659))

(assert (not b_next!88681))

(assert (not b_next!88663))

(assert b_and!233253)

(check-sat)

(pop 1)

