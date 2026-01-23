; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!313046 () Bool)

(assert start!313046)

(declare-fun b!3366174 () Bool)

(declare-fun b_free!87937 () Bool)

(declare-fun b_next!88641 () Bool)

(assert (=> b!3366174 (= b_free!87937 (not b_next!88641))))

(declare-fun tp!1053430 () Bool)

(declare-fun b_and!233187 () Bool)

(assert (=> b!3366174 (= tp!1053430 b_and!233187)))

(declare-fun b_free!87939 () Bool)

(declare-fun b_next!88643 () Bool)

(assert (=> b!3366174 (= b_free!87939 (not b_next!88643))))

(declare-fun tp!1053428 () Bool)

(declare-fun b_and!233189 () Bool)

(assert (=> b!3366174 (= tp!1053428 b_and!233189)))

(declare-fun b!3366168 () Bool)

(declare-fun b_free!87941 () Bool)

(declare-fun b_next!88645 () Bool)

(assert (=> b!3366168 (= b_free!87941 (not b_next!88645))))

(declare-fun tp!1053418 () Bool)

(declare-fun b_and!233191 () Bool)

(assert (=> b!3366168 (= tp!1053418 b_and!233191)))

(declare-fun b_free!87943 () Bool)

(declare-fun b_next!88647 () Bool)

(assert (=> b!3366168 (= b_free!87943 (not b_next!88647))))

(declare-fun tp!1053425 () Bool)

(declare-fun b_and!233193 () Bool)

(assert (=> b!3366168 (= tp!1053425 b_and!233193)))

(declare-fun b!3366164 () Bool)

(declare-fun b_free!87945 () Bool)

(declare-fun b_next!88649 () Bool)

(assert (=> b!3366164 (= b_free!87945 (not b_next!88649))))

(declare-fun tp!1053421 () Bool)

(declare-fun b_and!233195 () Bool)

(assert (=> b!3366164 (= tp!1053421 b_and!233195)))

(declare-fun b_free!87947 () Bool)

(declare-fun b_next!88651 () Bool)

(assert (=> b!3366164 (= b_free!87947 (not b_next!88651))))

(declare-fun tp!1053422 () Bool)

(declare-fun b_and!233197 () Bool)

(assert (=> b!3366164 (= tp!1053422 b_and!233197)))

(declare-fun b!3366150 () Bool)

(declare-fun e!2089158 () Bool)

(declare-datatypes ((C!20388 0))(
  ( (C!20389 (val!12242 Int)) )
))
(declare-datatypes ((Regex!10101 0))(
  ( (ElementMatch!10101 (c!573144 C!20388)) (Concat!15673 (regOne!20714 Regex!10101) (regTwo!20714 Regex!10101)) (EmptyExpr!10101) (Star!10101 (reg!10430 Regex!10101)) (EmptyLang!10101) (Union!10101 (regOne!20715 Regex!10101) (regTwo!20715 Regex!10101)) )
))
(declare-datatypes ((String!41193 0))(
  ( (String!41194 (value!172681 String)) )
))
(declare-datatypes ((List!36840 0))(
  ( (Nil!36716) (Cons!36716 (h!42136 (_ BitVec 16)) (t!261501 List!36840)) )
))
(declare-datatypes ((TokenValue!5572 0))(
  ( (FloatLiteralValue!11144 (text!39449 List!36840)) (TokenValueExt!5571 (__x!23361 Int)) (Broken!27860 (value!172682 List!36840)) (Object!5695) (End!5572) (Def!5572) (Underscore!5572) (Match!5572) (Else!5572) (Error!5572) (Case!5572) (If!5572) (Extends!5572) (Abstract!5572) (Class!5572) (Val!5572) (DelimiterValue!11144 (del!5632 List!36840)) (KeywordValue!5578 (value!172683 List!36840)) (CommentValue!11144 (value!172684 List!36840)) (WhitespaceValue!11144 (value!172685 List!36840)) (IndentationValue!5572 (value!172686 List!36840)) (String!41195) (Int32!5572) (Broken!27861 (value!172687 List!36840)) (Boolean!5573) (Unit!51823) (OperatorValue!5575 (op!5632 List!36840)) (IdentifierValue!11144 (value!172688 List!36840)) (IdentifierValue!11145 (value!172689 List!36840)) (WhitespaceValue!11145 (value!172690 List!36840)) (True!11144) (False!11144) (Broken!27862 (value!172691 List!36840)) (Broken!27863 (value!172692 List!36840)) (True!11145) (RightBrace!5572) (RightBracket!5572) (Colon!5572) (Null!5572) (Comma!5572) (LeftBracket!5572) (False!11145) (LeftBrace!5572) (ImaginaryLiteralValue!5572 (text!39450 List!36840)) (StringLiteralValue!16716 (value!172693 List!36840)) (EOFValue!5572 (value!172694 List!36840)) (IdentValue!5572 (value!172695 List!36840)) (DelimiterValue!11145 (value!172696 List!36840)) (DedentValue!5572 (value!172697 List!36840)) (NewLineValue!5572 (value!172698 List!36840)) (IntegerValue!16716 (value!172699 (_ BitVec 32)) (text!39451 List!36840)) (IntegerValue!16717 (value!172700 Int) (text!39452 List!36840)) (Times!5572) (Or!5572) (Equal!5572) (Minus!5572) (Broken!27864 (value!172701 List!36840)) (And!5572) (Div!5572) (LessEqual!5572) (Mod!5572) (Concat!15674) (Not!5572) (Plus!5572) (SpaceValue!5572 (value!172702 List!36840)) (IntegerValue!16718 (value!172703 Int) (text!39453 List!36840)) (StringLiteralValue!16717 (text!39454 List!36840)) (FloatLiteralValue!11145 (text!39455 List!36840)) (BytesLiteralValue!5572 (value!172704 List!36840)) (CommentValue!11145 (value!172705 List!36840)) (StringLiteralValue!16718 (value!172706 List!36840)) (ErrorTokenValue!5572 (msg!5633 List!36840)) )
))
(declare-datatypes ((List!36841 0))(
  ( (Nil!36717) (Cons!36717 (h!42137 C!20388) (t!261502 List!36841)) )
))
(declare-datatypes ((IArray!22123 0))(
  ( (IArray!22124 (innerList!11119 List!36841)) )
))
(declare-datatypes ((Conc!11059 0))(
  ( (Node!11059 (left!28620 Conc!11059) (right!28950 Conc!11059) (csize!22348 Int) (cheight!11270 Int)) (Leaf!17341 (xs!14209 IArray!22123) (csize!22349 Int)) (Empty!11059) )
))
(declare-datatypes ((BalanceConc!21732 0))(
  ( (BalanceConc!21733 (c!573145 Conc!11059)) )
))
(declare-datatypes ((TokenValueInjection!10572 0))(
  ( (TokenValueInjection!10573 (toValue!7522 Int) (toChars!7381 Int)) )
))
(declare-datatypes ((Rule!10484 0))(
  ( (Rule!10485 (regex!5342 Regex!10101) (tag!5898 String!41193) (isSeparator!5342 Bool) (transformation!5342 TokenValueInjection!10572)) )
))
(declare-datatypes ((Token!10050 0))(
  ( (Token!10051 (value!172707 TokenValue!5572) (rule!7880 Rule!10484) (size!27785 Int) (originalCharacters!6056 List!36841)) )
))
(declare-fun separatorToken!241 () Token!10050)

(declare-fun lt!1142162 () Rule!10484)

(assert (=> b!3366150 (= e!2089158 (= (rule!7880 separatorToken!241) lt!1142162))))

(declare-fun b!3366151 () Bool)

(declare-fun res!1361093 () Bool)

(declare-fun e!2089157 () Bool)

(assert (=> b!3366151 (=> (not res!1361093) (not e!2089157))))

(declare-datatypes ((LexerInterface!4931 0))(
  ( (LexerInterfaceExt!4928 (__x!23362 Int)) (Lexer!4929) )
))
(declare-fun thiss!18206 () LexerInterface!4931)

(declare-datatypes ((List!36842 0))(
  ( (Nil!36718) (Cons!36718 (h!42138 Rule!10484) (t!261503 List!36842)) )
))
(declare-fun rules!2135 () List!36842)

(declare-fun rulesInvariant!4328 (LexerInterface!4931 List!36842) Bool)

(assert (=> b!3366151 (= res!1361093 (rulesInvariant!4328 thiss!18206 rules!2135))))

(declare-fun b!3366152 () Bool)

(declare-fun e!2089164 () Bool)

(declare-fun e!2089174 () Bool)

(assert (=> b!3366152 (= e!2089164 (not e!2089174))))

(declare-fun res!1361104 () Bool)

(assert (=> b!3366152 (=> res!1361104 e!2089174)))

(declare-fun lt!1142165 () List!36841)

(declare-fun lt!1142163 () List!36841)

(assert (=> b!3366152 (= res!1361104 (not (= lt!1142165 lt!1142163)))))

(declare-datatypes ((List!36843 0))(
  ( (Nil!36719) (Cons!36719 (h!42139 Token!10050) (t!261504 List!36843)) )
))
(declare-fun tokens!494 () List!36843)

(declare-fun printList!1479 (LexerInterface!4931 List!36843) List!36841)

(assert (=> b!3366152 (= lt!1142163 (printList!1479 thiss!18206 (Cons!36719 (h!42139 tokens!494) Nil!36719)))))

(declare-fun lt!1142155 () BalanceConc!21732)

(declare-fun list!13253 (BalanceConc!21732) List!36841)

(assert (=> b!3366152 (= lt!1142165 (list!13253 lt!1142155))))

(declare-datatypes ((IArray!22125 0))(
  ( (IArray!22126 (innerList!11120 List!36843)) )
))
(declare-datatypes ((Conc!11060 0))(
  ( (Node!11060 (left!28621 Conc!11060) (right!28951 Conc!11060) (csize!22350 Int) (cheight!11271 Int)) (Leaf!17342 (xs!14210 IArray!22125) (csize!22351 Int)) (Empty!11060) )
))
(declare-datatypes ((BalanceConc!21734 0))(
  ( (BalanceConc!21735 (c!573146 Conc!11060)) )
))
(declare-fun lt!1142154 () BalanceConc!21734)

(declare-fun printTailRec!1426 (LexerInterface!4931 BalanceConc!21734 Int BalanceConc!21732) BalanceConc!21732)

(assert (=> b!3366152 (= lt!1142155 (printTailRec!1426 thiss!18206 lt!1142154 0 (BalanceConc!21733 Empty!11059)))))

(declare-fun print!1996 (LexerInterface!4931 BalanceConc!21734) BalanceConc!21732)

(assert (=> b!3366152 (= lt!1142155 (print!1996 thiss!18206 lt!1142154))))

(declare-fun singletonSeq!2438 (Token!10050) BalanceConc!21734)

(assert (=> b!3366152 (= lt!1142154 (singletonSeq!2438 (h!42139 tokens!494)))))

(declare-fun b!3366153 () Bool)

(declare-fun res!1361101 () Bool)

(assert (=> b!3366153 (=> (not res!1361101) (not e!2089164))))

(get-info :version)

(assert (=> b!3366153 (= res!1361101 (and (not ((_ is Nil!36719) tokens!494)) ((_ is Nil!36719) (t!261504 tokens!494))))))

(declare-fun b!3366154 () Bool)

(declare-fun e!2089159 () Bool)

(declare-fun tp!1053426 () Bool)

(declare-fun e!2089175 () Bool)

(declare-fun inv!21 (TokenValue!5572) Bool)

(assert (=> b!3366154 (= e!2089175 (and (inv!21 (value!172707 separatorToken!241)) e!2089159 tp!1053426))))

(declare-fun b!3366155 () Bool)

(declare-fun e!2089173 () Bool)

(declare-fun e!2089166 () Bool)

(assert (=> b!3366155 (= e!2089173 e!2089166)))

(declare-fun res!1361096 () Bool)

(assert (=> b!3366155 (=> res!1361096 e!2089166)))

(assert (=> b!3366155 (= res!1361096 (isSeparator!5342 (rule!7880 (h!42139 tokens!494))))))

(declare-datatypes ((Unit!51824 0))(
  ( (Unit!51825) )
))
(declare-fun lt!1142160 () Unit!51824)

(declare-fun lambda!120155 () Int)

(declare-fun forallContained!1289 (List!36843 Int Token!10050) Unit!51824)

(assert (=> b!3366155 (= lt!1142160 (forallContained!1289 tokens!494 lambda!120155 (h!42139 tokens!494)))))

(declare-fun b!3366156 () Bool)

(declare-fun e!2089165 () Bool)

(declare-fun lt!1142159 () Rule!10484)

(assert (=> b!3366156 (= e!2089165 (= (rule!7880 (h!42139 tokens!494)) lt!1142159))))

(declare-fun b!3366157 () Bool)

(declare-fun res!1361095 () Bool)

(assert (=> b!3366157 (=> (not res!1361095) (not e!2089164))))

(declare-fun rulesProduceIndividualToken!2423 (LexerInterface!4931 List!36842 Token!10050) Bool)

(assert (=> b!3366157 (= res!1361095 (rulesProduceIndividualToken!2423 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!2089156 () Bool)

(declare-fun b!3366158 () Bool)

(declare-fun e!2089161 () Bool)

(declare-fun tp!1053419 () Bool)

(declare-fun inv!49770 (String!41193) Bool)

(declare-fun inv!49773 (TokenValueInjection!10572) Bool)

(assert (=> b!3366158 (= e!2089156 (and tp!1053419 (inv!49770 (tag!5898 (h!42138 rules!2135))) (inv!49773 (transformation!5342 (h!42138 rules!2135))) e!2089161))))

(declare-fun b!3366159 () Bool)

(declare-fun e!2089176 () Bool)

(assert (=> b!3366159 (= e!2089176 e!2089158)))

(declare-fun res!1361103 () Bool)

(assert (=> b!3366159 (=> (not res!1361103) (not e!2089158))))

(declare-fun lt!1142164 () List!36841)

(declare-fun matchR!4693 (Regex!10101 List!36841) Bool)

(assert (=> b!3366159 (= res!1361103 (matchR!4693 (regex!5342 lt!1142162) lt!1142164))))

(declare-datatypes ((Option!7336 0))(
  ( (None!7335) (Some!7335 (v!36321 Rule!10484)) )
))
(declare-fun lt!1142166 () Option!7336)

(declare-fun get!11704 (Option!7336) Rule!10484)

(assert (=> b!3366159 (= lt!1142162 (get!11704 lt!1142166))))

(declare-fun b!3366160 () Bool)

(declare-fun res!1361099 () Bool)

(assert (=> b!3366160 (=> (not res!1361099) (not e!2089164))))

(declare-fun forall!7697 (List!36843 Int) Bool)

(assert (=> b!3366160 (= res!1361099 (forall!7697 tokens!494 lambda!120155))))

(declare-fun b!3366161 () Bool)

(declare-fun res!1361108 () Bool)

(assert (=> b!3366161 (=> (not res!1361108) (not e!2089157))))

(declare-fun isEmpty!20911 (List!36842) Bool)

(assert (=> b!3366161 (= res!1361108 (not (isEmpty!20911 rules!2135)))))

(declare-fun e!2089172 () Bool)

(declare-fun tp!1053420 () Bool)

(declare-fun b!3366162 () Bool)

(assert (=> b!3366162 (= e!2089159 (and tp!1053420 (inv!49770 (tag!5898 (rule!7880 separatorToken!241))) (inv!49773 (transformation!5342 (rule!7880 separatorToken!241))) e!2089172))))

(declare-fun res!1361105 () Bool)

(assert (=> start!313046 (=> (not res!1361105) (not e!2089157))))

(assert (=> start!313046 (= res!1361105 ((_ is Lexer!4929) thiss!18206))))

(assert (=> start!313046 e!2089157))

(assert (=> start!313046 true))

(declare-fun e!2089177 () Bool)

(assert (=> start!313046 e!2089177))

(declare-fun inv!49774 (Token!10050) Bool)

(assert (=> start!313046 (and (inv!49774 separatorToken!241) e!2089175)))

(declare-fun e!2089171 () Bool)

(assert (=> start!313046 e!2089171))

(declare-fun b!3366163 () Bool)

(assert (=> b!3366163 (= e!2089174 e!2089173)))

(declare-fun res!1361106 () Bool)

(assert (=> b!3366163 (=> res!1361106 e!2089173)))

(declare-fun lt!1142151 () List!36841)

(assert (=> b!3366163 (= res!1361106 (or (not (= lt!1142163 lt!1142151)) (not (= lt!1142165 lt!1142151))))))

(declare-fun charsOf!3356 (Token!10050) BalanceConc!21732)

(assert (=> b!3366163 (= lt!1142151 (list!13253 (charsOf!3356 (h!42139 tokens!494))))))

(declare-fun e!2089162 () Bool)

(assert (=> b!3366164 (= e!2089162 (and tp!1053421 tp!1053422))))

(declare-fun b!3366165 () Bool)

(declare-fun e!2089155 () Bool)

(assert (=> b!3366165 (= e!2089166 e!2089155)))

(declare-fun res!1361107 () Bool)

(assert (=> b!3366165 (=> res!1361107 e!2089155)))

(declare-fun lt!1142161 () BalanceConc!21732)

(declare-fun ++!8953 (List!36841 List!36841) List!36841)

(assert (=> b!3366165 (= res!1361107 (not (= (list!13253 lt!1142161) (++!8953 lt!1142151 lt!1142164))))))

(assert (=> b!3366165 (= lt!1142164 (list!13253 (charsOf!3356 separatorToken!241)))))

(declare-fun lt!1142150 () BalanceConc!21734)

(declare-fun printWithSeparatorToken!122 (LexerInterface!4931 BalanceConc!21734 Token!10050) BalanceConc!21732)

(assert (=> b!3366165 (= lt!1142161 (printWithSeparatorToken!122 thiss!18206 lt!1142150 separatorToken!241))))

(declare-fun b!3366166 () Bool)

(declare-fun tp!1053424 () Bool)

(declare-fun e!2089167 () Bool)

(declare-fun e!2089169 () Bool)

(assert (=> b!3366166 (= e!2089167 (and (inv!21 (value!172707 (h!42139 tokens!494))) e!2089169 tp!1053424))))

(declare-fun b!3366167 () Bool)

(declare-fun res!1361110 () Bool)

(assert (=> b!3366167 (=> res!1361110 e!2089173)))

(declare-fun isEmpty!20912 (BalanceConc!21734) Bool)

(declare-datatypes ((tuple2!36266 0))(
  ( (tuple2!36267 (_1!21267 BalanceConc!21734) (_2!21267 BalanceConc!21732)) )
))
(declare-fun lex!2257 (LexerInterface!4931 List!36842 BalanceConc!21732) tuple2!36266)

(declare-fun seqFromList!3737 (List!36841) BalanceConc!21732)

(assert (=> b!3366167 (= res!1361110 (isEmpty!20912 (_1!21267 (lex!2257 thiss!18206 rules!2135 (seqFromList!3737 lt!1142151)))))))

(assert (=> b!3366168 (= e!2089172 (and tp!1053418 tp!1053425))))

(declare-fun b!3366169 () Bool)

(declare-fun tp!1053423 () Bool)

(assert (=> b!3366169 (= e!2089177 (and e!2089156 tp!1053423))))

(declare-fun b!3366170 () Bool)

(assert (=> b!3366170 (= e!2089157 e!2089164)))

(declare-fun res!1361100 () Bool)

(assert (=> b!3366170 (=> (not res!1361100) (not e!2089164))))

(declare-fun rulesProduceEachTokenIndividually!1382 (LexerInterface!4931 List!36842 BalanceConc!21734) Bool)

(assert (=> b!3366170 (= res!1361100 (rulesProduceEachTokenIndividually!1382 thiss!18206 rules!2135 lt!1142150))))

(declare-fun seqFromList!3738 (List!36843) BalanceConc!21734)

(assert (=> b!3366170 (= lt!1142150 (seqFromList!3738 tokens!494))))

(declare-fun b!3366171 () Bool)

(declare-fun tp!1053429 () Bool)

(assert (=> b!3366171 (= e!2089171 (and (inv!49774 (h!42139 tokens!494)) e!2089167 tp!1053429))))

(declare-fun b!3366172 () Bool)

(declare-fun e!2089168 () Bool)

(assert (=> b!3366172 (= e!2089168 e!2089165)))

(declare-fun res!1361094 () Bool)

(assert (=> b!3366172 (=> (not res!1361094) (not e!2089165))))

(assert (=> b!3366172 (= res!1361094 (matchR!4693 (regex!5342 lt!1142159) lt!1142151))))

(declare-fun lt!1142153 () Option!7336)

(assert (=> b!3366172 (= lt!1142159 (get!11704 lt!1142153))))

(declare-fun b!3366173 () Bool)

(declare-fun tp!1053427 () Bool)

(assert (=> b!3366173 (= e!2089169 (and tp!1053427 (inv!49770 (tag!5898 (rule!7880 (h!42139 tokens!494)))) (inv!49773 (transformation!5342 (rule!7880 (h!42139 tokens!494)))) e!2089162))))

(assert (=> b!3366174 (= e!2089161 (and tp!1053430 tp!1053428))))

(declare-fun b!3366175 () Bool)

(declare-fun res!1361092 () Bool)

(assert (=> b!3366175 (=> (not res!1361092) (not e!2089164))))

(assert (=> b!3366175 (= res!1361092 (isSeparator!5342 (rule!7880 separatorToken!241)))))

(declare-fun b!3366176 () Bool)

(assert (=> b!3366176 (= e!2089155 true)))

(assert (=> b!3366176 e!2089176))

(declare-fun res!1361109 () Bool)

(assert (=> b!3366176 (=> (not res!1361109) (not e!2089176))))

(declare-fun isDefined!5676 (Option!7336) Bool)

(assert (=> b!3366176 (= res!1361109 (isDefined!5676 lt!1142166))))

(declare-fun getRuleFromTag!997 (LexerInterface!4931 List!36842 String!41193) Option!7336)

(assert (=> b!3366176 (= lt!1142166 (getRuleFromTag!997 thiss!18206 rules!2135 (tag!5898 (rule!7880 separatorToken!241))))))

(declare-fun lt!1142156 () Unit!51824)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!997 (LexerInterface!4931 List!36842 List!36841 Token!10050) Unit!51824)

(assert (=> b!3366176 (= lt!1142156 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!997 thiss!18206 rules!2135 lt!1142164 separatorToken!241))))

(assert (=> b!3366176 e!2089168))

(declare-fun res!1361098 () Bool)

(assert (=> b!3366176 (=> (not res!1361098) (not e!2089168))))

(assert (=> b!3366176 (= res!1361098 (isDefined!5676 lt!1142153))))

(assert (=> b!3366176 (= lt!1142153 (getRuleFromTag!997 thiss!18206 rules!2135 (tag!5898 (rule!7880 (h!42139 tokens!494)))))))

(declare-fun lt!1142152 () Unit!51824)

(assert (=> b!3366176 (= lt!1142152 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!997 thiss!18206 rules!2135 lt!1142151 (h!42139 tokens!494)))))

(declare-fun lt!1142157 () Unit!51824)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!926 (LexerInterface!4931 List!36842 List!36843 Token!10050) Unit!51824)

(assert (=> b!3366176 (= lt!1142157 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!926 thiss!18206 rules!2135 tokens!494 (h!42139 tokens!494)))))

(declare-fun isEmpty!20913 (List!36841) Bool)

(declare-fun getSuffix!1436 (List!36841 List!36841) List!36841)

(assert (=> b!3366176 (isEmpty!20913 (getSuffix!1436 lt!1142151 lt!1142151))))

(declare-fun lt!1142158 () Unit!51824)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!94 (List!36841) Unit!51824)

(assert (=> b!3366176 (= lt!1142158 (lemmaGetSuffixOnListWithItSelfIsEmpty!94 lt!1142151))))

(declare-fun b!3366177 () Bool)

(declare-fun res!1361097 () Bool)

(assert (=> b!3366177 (=> res!1361097 e!2089173)))

(assert (=> b!3366177 (= res!1361097 (not (rulesProduceIndividualToken!2423 thiss!18206 rules!2135 (h!42139 tokens!494))))))

(declare-fun b!3366178 () Bool)

(declare-fun res!1361102 () Bool)

(assert (=> b!3366178 (=> (not res!1361102) (not e!2089164))))

(declare-fun sepAndNonSepRulesDisjointChars!1536 (List!36842 List!36842) Bool)

(assert (=> b!3366178 (= res!1361102 (sepAndNonSepRulesDisjointChars!1536 rules!2135 rules!2135))))

(assert (= (and start!313046 res!1361105) b!3366161))

(assert (= (and b!3366161 res!1361108) b!3366151))

(assert (= (and b!3366151 res!1361093) b!3366170))

(assert (= (and b!3366170 res!1361100) b!3366157))

(assert (= (and b!3366157 res!1361095) b!3366175))

(assert (= (and b!3366175 res!1361092) b!3366160))

(assert (= (and b!3366160 res!1361099) b!3366178))

(assert (= (and b!3366178 res!1361102) b!3366153))

(assert (= (and b!3366153 res!1361101) b!3366152))

(assert (= (and b!3366152 (not res!1361104)) b!3366163))

(assert (= (and b!3366163 (not res!1361106)) b!3366177))

(assert (= (and b!3366177 (not res!1361097)) b!3366167))

(assert (= (and b!3366167 (not res!1361110)) b!3366155))

(assert (= (and b!3366155 (not res!1361096)) b!3366165))

(assert (= (and b!3366165 (not res!1361107)) b!3366176))

(assert (= (and b!3366176 res!1361098) b!3366172))

(assert (= (and b!3366172 res!1361094) b!3366156))

(assert (= (and b!3366176 res!1361109) b!3366159))

(assert (= (and b!3366159 res!1361103) b!3366150))

(assert (= b!3366158 b!3366174))

(assert (= b!3366169 b!3366158))

(assert (= (and start!313046 ((_ is Cons!36718) rules!2135)) b!3366169))

(assert (= b!3366162 b!3366168))

(assert (= b!3366154 b!3366162))

(assert (= start!313046 b!3366154))

(assert (= b!3366173 b!3366164))

(assert (= b!3366166 b!3366173))

(assert (= b!3366171 b!3366166))

(assert (= (and start!313046 ((_ is Cons!36719) tokens!494)) b!3366171))

(declare-fun m!3726045 () Bool)

(assert (=> b!3366151 m!3726045))

(declare-fun m!3726047 () Bool)

(assert (=> b!3366152 m!3726047))

(declare-fun m!3726049 () Bool)

(assert (=> b!3366152 m!3726049))

(declare-fun m!3726051 () Bool)

(assert (=> b!3366152 m!3726051))

(declare-fun m!3726053 () Bool)

(assert (=> b!3366152 m!3726053))

(declare-fun m!3726055 () Bool)

(assert (=> b!3366152 m!3726055))

(declare-fun m!3726057 () Bool)

(assert (=> b!3366161 m!3726057))

(declare-fun m!3726059 () Bool)

(assert (=> start!313046 m!3726059))

(declare-fun m!3726061 () Bool)

(assert (=> b!3366177 m!3726061))

(declare-fun m!3726063 () Bool)

(assert (=> b!3366166 m!3726063))

(declare-fun m!3726065 () Bool)

(assert (=> b!3366172 m!3726065))

(declare-fun m!3726067 () Bool)

(assert (=> b!3366172 m!3726067))

(declare-fun m!3726069 () Bool)

(assert (=> b!3366160 m!3726069))

(declare-fun m!3726071 () Bool)

(assert (=> b!3366159 m!3726071))

(declare-fun m!3726073 () Bool)

(assert (=> b!3366159 m!3726073))

(declare-fun m!3726075 () Bool)

(assert (=> b!3366173 m!3726075))

(declare-fun m!3726077 () Bool)

(assert (=> b!3366173 m!3726077))

(declare-fun m!3726079 () Bool)

(assert (=> b!3366162 m!3726079))

(declare-fun m!3726081 () Bool)

(assert (=> b!3366162 m!3726081))

(declare-fun m!3726083 () Bool)

(assert (=> b!3366155 m!3726083))

(declare-fun m!3726085 () Bool)

(assert (=> b!3366171 m!3726085))

(declare-fun m!3726087 () Bool)

(assert (=> b!3366157 m!3726087))

(declare-fun m!3726089 () Bool)

(assert (=> b!3366165 m!3726089))

(declare-fun m!3726091 () Bool)

(assert (=> b!3366165 m!3726091))

(declare-fun m!3726093 () Bool)

(assert (=> b!3366165 m!3726093))

(assert (=> b!3366165 m!3726089))

(declare-fun m!3726095 () Bool)

(assert (=> b!3366165 m!3726095))

(declare-fun m!3726097 () Bool)

(assert (=> b!3366165 m!3726097))

(declare-fun m!3726099 () Bool)

(assert (=> b!3366167 m!3726099))

(assert (=> b!3366167 m!3726099))

(declare-fun m!3726101 () Bool)

(assert (=> b!3366167 m!3726101))

(declare-fun m!3726103 () Bool)

(assert (=> b!3366167 m!3726103))

(declare-fun m!3726105 () Bool)

(assert (=> b!3366176 m!3726105))

(declare-fun m!3726107 () Bool)

(assert (=> b!3366176 m!3726107))

(declare-fun m!3726109 () Bool)

(assert (=> b!3366176 m!3726109))

(declare-fun m!3726111 () Bool)

(assert (=> b!3366176 m!3726111))

(declare-fun m!3726113 () Bool)

(assert (=> b!3366176 m!3726113))

(declare-fun m!3726115 () Bool)

(assert (=> b!3366176 m!3726115))

(declare-fun m!3726117 () Bool)

(assert (=> b!3366176 m!3726117))

(declare-fun m!3726119 () Bool)

(assert (=> b!3366176 m!3726119))

(declare-fun m!3726121 () Bool)

(assert (=> b!3366176 m!3726121))

(assert (=> b!3366176 m!3726117))

(declare-fun m!3726123 () Bool)

(assert (=> b!3366176 m!3726123))

(declare-fun m!3726125 () Bool)

(assert (=> b!3366163 m!3726125))

(assert (=> b!3366163 m!3726125))

(declare-fun m!3726127 () Bool)

(assert (=> b!3366163 m!3726127))

(declare-fun m!3726129 () Bool)

(assert (=> b!3366158 m!3726129))

(declare-fun m!3726131 () Bool)

(assert (=> b!3366158 m!3726131))

(declare-fun m!3726133 () Bool)

(assert (=> b!3366170 m!3726133))

(declare-fun m!3726135 () Bool)

(assert (=> b!3366170 m!3726135))

(declare-fun m!3726137 () Bool)

(assert (=> b!3366178 m!3726137))

(declare-fun m!3726139 () Bool)

(assert (=> b!3366154 m!3726139))

(check-sat (not b_next!88647) (not b!3366154) (not b_next!88649) (not b!3366171) (not b!3366172) b_and!233189 (not b!3366155) (not b!3366161) (not b_next!88643) b_and!233191 b_and!233193 (not b!3366151) (not b!3366178) (not b!3366160) (not b!3366162) (not b!3366176) (not b_next!88645) (not b!3366166) (not b!3366169) (not b!3366173) b_and!233197 (not b!3366163) (not b!3366177) (not b!3366165) (not b_next!88651) (not b!3366170) b_and!233187 (not b!3366152) b_and!233195 (not b!3366157) (not b!3366159) (not b!3366158) (not b!3366167) (not b_next!88641) (not start!313046))
(check-sat (not b_next!88643) (not b_next!88647) (not b_next!88645) b_and!233197 (not b_next!88649) (not b_next!88651) b_and!233189 b_and!233187 b_and!233195 (not b_next!88641) b_and!233191 b_and!233193)
