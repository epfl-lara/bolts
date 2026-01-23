; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!318078 () Bool)

(assert start!318078)

(declare-fun b!3403359 () Bool)

(declare-fun b_free!89169 () Bool)

(declare-fun b_next!89873 () Bool)

(assert (=> b!3403359 (= b_free!89169 (not b_next!89873))))

(declare-fun tp!1061923 () Bool)

(declare-fun b_and!237655 () Bool)

(assert (=> b!3403359 (= tp!1061923 b_and!237655)))

(declare-fun b_free!89171 () Bool)

(declare-fun b_next!89875 () Bool)

(assert (=> b!3403359 (= b_free!89171 (not b_next!89875))))

(declare-fun tp!1061924 () Bool)

(declare-fun b_and!237657 () Bool)

(assert (=> b!3403359 (= tp!1061924 b_and!237657)))

(declare-fun b!3403375 () Bool)

(declare-fun b_free!89173 () Bool)

(declare-fun b_next!89877 () Bool)

(assert (=> b!3403375 (= b_free!89173 (not b_next!89877))))

(declare-fun tp!1061933 () Bool)

(declare-fun b_and!237659 () Bool)

(assert (=> b!3403375 (= tp!1061933 b_and!237659)))

(declare-fun b_free!89175 () Bool)

(declare-fun b_next!89879 () Bool)

(assert (=> b!3403375 (= b_free!89175 (not b_next!89879))))

(declare-fun tp!1061932 () Bool)

(declare-fun b_and!237661 () Bool)

(assert (=> b!3403375 (= tp!1061932 b_and!237661)))

(declare-fun b!3403376 () Bool)

(declare-fun b_free!89177 () Bool)

(declare-fun b_next!89881 () Bool)

(assert (=> b!3403376 (= b_free!89177 (not b_next!89881))))

(declare-fun tp!1061931 () Bool)

(declare-fun b_and!237663 () Bool)

(assert (=> b!3403376 (= tp!1061931 b_and!237663)))

(declare-fun b_free!89179 () Bool)

(declare-fun b_next!89883 () Bool)

(assert (=> b!3403376 (= b_free!89179 (not b_next!89883))))

(declare-fun tp!1061927 () Bool)

(declare-fun b_and!237665 () Bool)

(assert (=> b!3403376 (= tp!1061927 b_and!237665)))

(declare-fun b!3403348 () Bool)

(declare-fun e!2112730 () Bool)

(declare-fun e!2112723 () Bool)

(assert (=> b!3403348 (= e!2112730 e!2112723)))

(declare-fun res!1377226 () Bool)

(assert (=> b!3403348 (=> res!1377226 e!2112723)))

(declare-datatypes ((C!20516 0))(
  ( (C!20517 (val!12306 Int)) )
))
(declare-datatypes ((Regex!10165 0))(
  ( (ElementMatch!10165 (c!580100 C!20516)) (Concat!15801 (regOne!20842 Regex!10165) (regTwo!20842 Regex!10165)) (EmptyExpr!10165) (Star!10165 (reg!10494 Regex!10165)) (EmptyLang!10165) (Union!10165 (regOne!20843 Regex!10165) (regTwo!20843 Regex!10165)) )
))
(declare-datatypes ((List!37136 0))(
  ( (Nil!37012) (Cons!37012 (h!42432 (_ BitVec 16)) (t!266237 List!37136)) )
))
(declare-datatypes ((TokenValue!5636 0))(
  ( (FloatLiteralValue!11272 (text!39897 List!37136)) (TokenValueExt!5635 (__x!23489 Int)) (Broken!28180 (value!174505 List!37136)) (Object!5759) (End!5636) (Def!5636) (Underscore!5636) (Match!5636) (Else!5636) (Error!5636) (Case!5636) (If!5636) (Extends!5636) (Abstract!5636) (Class!5636) (Val!5636) (DelimiterValue!11272 (del!5696 List!37136)) (KeywordValue!5642 (value!174506 List!37136)) (CommentValue!11272 (value!174507 List!37136)) (WhitespaceValue!11272 (value!174508 List!37136)) (IndentationValue!5636 (value!174509 List!37136)) (String!41513) (Int32!5636) (Broken!28181 (value!174510 List!37136)) (Boolean!5637) (Unit!52169) (OperatorValue!5639 (op!5696 List!37136)) (IdentifierValue!11272 (value!174511 List!37136)) (IdentifierValue!11273 (value!174512 List!37136)) (WhitespaceValue!11273 (value!174513 List!37136)) (True!11272) (False!11272) (Broken!28182 (value!174514 List!37136)) (Broken!28183 (value!174515 List!37136)) (True!11273) (RightBrace!5636) (RightBracket!5636) (Colon!5636) (Null!5636) (Comma!5636) (LeftBracket!5636) (False!11273) (LeftBrace!5636) (ImaginaryLiteralValue!5636 (text!39898 List!37136)) (StringLiteralValue!16908 (value!174516 List!37136)) (EOFValue!5636 (value!174517 List!37136)) (IdentValue!5636 (value!174518 List!37136)) (DelimiterValue!11273 (value!174519 List!37136)) (DedentValue!5636 (value!174520 List!37136)) (NewLineValue!5636 (value!174521 List!37136)) (IntegerValue!16908 (value!174522 (_ BitVec 32)) (text!39899 List!37136)) (IntegerValue!16909 (value!174523 Int) (text!39900 List!37136)) (Times!5636) (Or!5636) (Equal!5636) (Minus!5636) (Broken!28184 (value!174524 List!37136)) (And!5636) (Div!5636) (LessEqual!5636) (Mod!5636) (Concat!15802) (Not!5636) (Plus!5636) (SpaceValue!5636 (value!174525 List!37136)) (IntegerValue!16910 (value!174526 Int) (text!39901 List!37136)) (StringLiteralValue!16909 (text!39902 List!37136)) (FloatLiteralValue!11273 (text!39903 List!37136)) (BytesLiteralValue!5636 (value!174527 List!37136)) (CommentValue!11273 (value!174528 List!37136)) (StringLiteralValue!16910 (value!174529 List!37136)) (ErrorTokenValue!5636 (msg!5697 List!37136)) )
))
(declare-datatypes ((List!37137 0))(
  ( (Nil!37013) (Cons!37013 (h!42433 C!20516) (t!266238 List!37137)) )
))
(declare-datatypes ((IArray!22379 0))(
  ( (IArray!22380 (innerList!11247 List!37137)) )
))
(declare-datatypes ((Conc!11187 0))(
  ( (Node!11187 (left!28860 Conc!11187) (right!29190 Conc!11187) (csize!22604 Int) (cheight!11398 Int)) (Leaf!17501 (xs!14345 IArray!22379) (csize!22605 Int)) (Empty!11187) )
))
(declare-datatypes ((BalanceConc!21988 0))(
  ( (BalanceConc!21989 (c!580101 Conc!11187)) )
))
(declare-datatypes ((String!41514 0))(
  ( (String!41515 (value!174530 String)) )
))
(declare-datatypes ((TokenValueInjection!10700 0))(
  ( (TokenValueInjection!10701 (toValue!7614 Int) (toChars!7473 Int)) )
))
(declare-datatypes ((Rule!10612 0))(
  ( (Rule!10613 (regex!5406 Regex!10165) (tag!5994 String!41514) (isSeparator!5406 Bool) (transformation!5406 TokenValueInjection!10700)) )
))
(declare-datatypes ((List!37138 0))(
  ( (Nil!37014) (Cons!37014 (h!42434 Rule!10612) (t!266239 List!37138)) )
))
(declare-fun rules!2135 () List!37138)

(declare-datatypes ((Token!10178 0))(
  ( (Token!10179 (value!174531 TokenValue!5636) (rule!7970 Rule!10612) (size!28029 Int) (originalCharacters!6120 List!37137)) )
))
(declare-datatypes ((List!37139 0))(
  ( (Nil!37015) (Cons!37015 (h!42435 Token!10178) (t!266240 List!37139)) )
))
(declare-fun tokens!494 () List!37139)

(declare-fun contains!6809 (List!37138 Rule!10612) Bool)

(assert (=> b!3403348 (= res!1377226 (not (contains!6809 rules!2135 (rule!7970 (h!42435 tokens!494)))))))

(declare-fun e!2112718 () Bool)

(assert (=> b!3403348 e!2112718))

(declare-fun res!1377229 () Bool)

(assert (=> b!3403348 (=> (not res!1377229) (not e!2112718))))

(declare-datatypes ((Option!7448 0))(
  ( (None!7447) (Some!7447 (v!36639 Rule!10612)) )
))
(declare-fun lt!1157524 () Option!7448)

(declare-fun isDefined!5748 (Option!7448) Bool)

(assert (=> b!3403348 (= res!1377229 (isDefined!5748 lt!1157524))))

(declare-datatypes ((LexerInterface!4995 0))(
  ( (LexerInterfaceExt!4992 (__x!23490 Int)) (Lexer!4993) )
))
(declare-fun thiss!18206 () LexerInterface!4995)

(declare-fun getRuleFromTag!1049 (LexerInterface!4995 List!37138 String!41514) Option!7448)

(assert (=> b!3403348 (= lt!1157524 (getRuleFromTag!1049 thiss!18206 rules!2135 (tag!5994 (rule!7970 (h!42435 tokens!494)))))))

(declare-datatypes ((Unit!52170 0))(
  ( (Unit!52171) )
))
(declare-fun lt!1157515 () Unit!52170)

(declare-fun lt!1157517 () List!37137)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1049 (LexerInterface!4995 List!37138 List!37137 Token!10178) Unit!52170)

(assert (=> b!3403348 (= lt!1157515 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1049 thiss!18206 rules!2135 lt!1157517 (h!42435 tokens!494)))))

(declare-fun lt!1157520 () Unit!52170)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!984 (LexerInterface!4995 List!37138 List!37139 Token!10178) Unit!52170)

(assert (=> b!3403348 (= lt!1157520 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!984 thiss!18206 rules!2135 tokens!494 (h!42435 tokens!494)))))

(declare-fun b!3403349 () Bool)

(declare-fun res!1377225 () Bool)

(declare-fun e!2112716 () Bool)

(assert (=> b!3403349 (=> (not res!1377225) (not e!2112716))))

(declare-fun lambda!121071 () Int)

(declare-fun forall!7837 (List!37139 Int) Bool)

(assert (=> b!3403349 (= res!1377225 (forall!7837 tokens!494 lambda!121071))))

(declare-fun b!3403350 () Bool)

(declare-fun res!1377238 () Bool)

(assert (=> b!3403350 (=> (not res!1377238) (not e!2112716))))

(declare-datatypes ((IArray!22381 0))(
  ( (IArray!22382 (innerList!11248 List!37139)) )
))
(declare-datatypes ((Conc!11188 0))(
  ( (Node!11188 (left!28861 Conc!11188) (right!29191 Conc!11188) (csize!22606 Int) (cheight!11399 Int)) (Leaf!17502 (xs!14346 IArray!22381) (csize!22607 Int)) (Empty!11188) )
))
(declare-datatypes ((BalanceConc!21990 0))(
  ( (BalanceConc!21991 (c!580102 Conc!11188)) )
))
(declare-fun rulesProduceEachTokenIndividually!1446 (LexerInterface!4995 List!37138 BalanceConc!21990) Bool)

(declare-fun seqFromList!3865 (List!37139) BalanceConc!21990)

(assert (=> b!3403350 (= res!1377238 (rulesProduceEachTokenIndividually!1446 thiss!18206 rules!2135 (seqFromList!3865 tokens!494)))))

(declare-fun b!3403351 () Bool)

(declare-fun isEmpty!21293 (List!37137) Bool)

(assert (=> b!3403351 (= e!2112723 (not (isEmpty!21293 lt!1157517)))))

(declare-fun b!3403352 () Bool)

(declare-fun res!1377244 () Bool)

(assert (=> b!3403352 (=> (not res!1377244) (not e!2112716))))

(declare-fun isEmpty!21294 (List!37138) Bool)

(assert (=> b!3403352 (= res!1377244 (not (isEmpty!21294 rules!2135)))))

(declare-fun b!3403353 () Bool)

(declare-fun res!1377243 () Bool)

(assert (=> b!3403353 (=> (not res!1377243) (not e!2112716))))

(declare-fun sepAndNonSepRulesDisjointChars!1600 (List!37138 List!37138) Bool)

(assert (=> b!3403353 (= res!1377243 (sepAndNonSepRulesDisjointChars!1600 rules!2135 rules!2135))))

(declare-fun e!2112724 () Bool)

(declare-fun e!2112735 () Bool)

(declare-fun tp!1061926 () Bool)

(declare-fun b!3403354 () Bool)

(declare-fun inv!50124 (String!41514) Bool)

(declare-fun inv!50127 (TokenValueInjection!10700) Bool)

(assert (=> b!3403354 (= e!2112724 (and tp!1061926 (inv!50124 (tag!5994 (h!42434 rules!2135))) (inv!50127 (transformation!5406 (h!42434 rules!2135))) e!2112735))))

(declare-fun b!3403355 () Bool)

(declare-fun e!2112722 () Bool)

(declare-fun e!2112721 () Bool)

(declare-fun tp!1061928 () Bool)

(assert (=> b!3403355 (= e!2112721 (and tp!1061928 (inv!50124 (tag!5994 (rule!7970 (h!42435 tokens!494)))) (inv!50127 (transformation!5406 (rule!7970 (h!42435 tokens!494)))) e!2112722))))

(declare-fun res!1377227 () Bool)

(assert (=> start!318078 (=> (not res!1377227) (not e!2112716))))

(get-info :version)

(assert (=> start!318078 (= res!1377227 ((_ is Lexer!4993) thiss!18206))))

(assert (=> start!318078 e!2112716))

(assert (=> start!318078 true))

(declare-fun e!2112713 () Bool)

(assert (=> start!318078 e!2112713))

(declare-fun e!2112736 () Bool)

(assert (=> start!318078 e!2112736))

(declare-fun separatorToken!241 () Token!10178)

(declare-fun e!2112726 () Bool)

(declare-fun inv!50128 (Token!10178) Bool)

(assert (=> start!318078 (and (inv!50128 separatorToken!241) e!2112726)))

(declare-fun e!2112733 () Bool)

(declare-fun tp!1061934 () Bool)

(declare-fun b!3403356 () Bool)

(assert (=> b!3403356 (= e!2112736 (and (inv!50128 (h!42435 tokens!494)) e!2112733 tp!1061934))))

(declare-fun tp!1061929 () Bool)

(declare-fun e!2112731 () Bool)

(declare-fun b!3403357 () Bool)

(declare-fun e!2112727 () Bool)

(assert (=> b!3403357 (= e!2112731 (and tp!1061929 (inv!50124 (tag!5994 (rule!7970 separatorToken!241))) (inv!50127 (transformation!5406 (rule!7970 separatorToken!241))) e!2112727))))

(declare-fun b!3403358 () Bool)

(declare-fun res!1377231 () Bool)

(assert (=> b!3403358 (=> res!1377231 e!2112723)))

(declare-fun ++!9085 (List!37137 List!37137) List!37137)

(assert (=> b!3403358 (= res!1377231 (not (= lt!1157517 (++!9085 lt!1157517 Nil!37013))))))

(assert (=> b!3403359 (= e!2112727 (and tp!1061923 tp!1061924))))

(declare-fun b!3403360 () Bool)

(declare-fun res!1377241 () Bool)

(declare-fun e!2112734 () Bool)

(assert (=> b!3403360 (=> res!1377241 e!2112734)))

(declare-fun rulesProduceIndividualToken!2487 (LexerInterface!4995 List!37138 Token!10178) Bool)

(assert (=> b!3403360 (= res!1377241 (not (rulesProduceIndividualToken!2487 thiss!18206 rules!2135 (h!42435 tokens!494))))))

(declare-fun b!3403361 () Bool)

(declare-fun e!2112717 () Bool)

(declare-fun e!2112715 () Bool)

(assert (=> b!3403361 (= e!2112717 e!2112715)))

(declare-fun res!1377230 () Bool)

(assert (=> b!3403361 (=> res!1377230 e!2112715)))

(declare-fun lt!1157518 () List!37137)

(declare-fun lt!1157525 () List!37137)

(assert (=> b!3403361 (= res!1377230 (not (= lt!1157518 lt!1157525)))))

(declare-fun lt!1157530 () List!37137)

(declare-fun lt!1157522 () List!37137)

(assert (=> b!3403361 (= lt!1157525 (++!9085 (++!9085 lt!1157517 lt!1157522) lt!1157530))))

(declare-fun b!3403362 () Bool)

(declare-fun e!2112729 () Bool)

(assert (=> b!3403362 (= e!2112718 e!2112729)))

(declare-fun res!1377232 () Bool)

(assert (=> b!3403362 (=> (not res!1377232) (not e!2112729))))

(declare-fun lt!1157514 () Rule!10612)

(declare-fun matchR!4749 (Regex!10165 List!37137) Bool)

(assert (=> b!3403362 (= res!1377232 (matchR!4749 (regex!5406 lt!1157514) lt!1157517))))

(declare-fun get!11820 (Option!7448) Rule!10612)

(assert (=> b!3403362 (= lt!1157514 (get!11820 lt!1157524))))

(declare-fun b!3403363 () Bool)

(declare-fun e!2112720 () Bool)

(assert (=> b!3403363 (= e!2112720 e!2112717)))

(declare-fun res!1377233 () Bool)

(assert (=> b!3403363 (=> res!1377233 e!2112717)))

(declare-fun list!13431 (BalanceConc!21988) List!37137)

(declare-fun charsOf!3420 (Token!10178) BalanceConc!21988)

(declare-fun printWithSeparatorTokenList!282 (LexerInterface!4995 List!37139 Token!10178) List!37137)

(assert (=> b!3403363 (= res!1377233 (not (= lt!1157530 (++!9085 (++!9085 (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494)))) lt!1157522) (printWithSeparatorTokenList!282 thiss!18206 (t!266240 (t!266240 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1157529 () List!37137)

(assert (=> b!3403363 (= lt!1157529 (++!9085 lt!1157522 lt!1157530))))

(assert (=> b!3403363 (= lt!1157522 (list!13431 (charsOf!3420 separatorToken!241)))))

(assert (=> b!3403363 (= lt!1157530 (printWithSeparatorTokenList!282 thiss!18206 (t!266240 tokens!494) separatorToken!241))))

(assert (=> b!3403363 (= lt!1157518 (printWithSeparatorTokenList!282 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3403364 () Bool)

(declare-fun e!2112732 () Bool)

(assert (=> b!3403364 (= e!2112732 e!2112734)))

(declare-fun res!1377235 () Bool)

(assert (=> b!3403364 (=> res!1377235 e!2112734)))

(declare-fun lt!1157513 () List!37137)

(declare-fun lt!1157528 () List!37137)

(assert (=> b!3403364 (= res!1377235 (or (not (= lt!1157528 lt!1157517)) (not (= lt!1157513 lt!1157517))))))

(assert (=> b!3403364 (= lt!1157517 (list!13431 (charsOf!3420 (h!42435 tokens!494))))))

(declare-fun tp!1061925 () Bool)

(declare-fun b!3403365 () Bool)

(declare-fun inv!21 (TokenValue!5636) Bool)

(assert (=> b!3403365 (= e!2112733 (and (inv!21 (value!174531 (h!42435 tokens!494))) e!2112721 tp!1061925))))

(declare-fun b!3403366 () Bool)

(declare-fun res!1377228 () Bool)

(assert (=> b!3403366 (=> (not res!1377228) (not e!2112716))))

(assert (=> b!3403366 (= res!1377228 (rulesProduceIndividualToken!2487 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3403367 () Bool)

(declare-fun tp!1061922 () Bool)

(assert (=> b!3403367 (= e!2112713 (and e!2112724 tp!1061922))))

(declare-fun b!3403368 () Bool)

(declare-fun res!1377242 () Bool)

(assert (=> b!3403368 (=> res!1377242 e!2112734)))

(declare-fun isEmpty!21295 (BalanceConc!21990) Bool)

(declare-datatypes ((tuple2!36650 0))(
  ( (tuple2!36651 (_1!21459 BalanceConc!21990) (_2!21459 BalanceConc!21988)) )
))
(declare-fun lex!2321 (LexerInterface!4995 List!37138 BalanceConc!21988) tuple2!36650)

(declare-fun seqFromList!3866 (List!37137) BalanceConc!21988)

(assert (=> b!3403368 (= res!1377242 (isEmpty!21295 (_1!21459 (lex!2321 thiss!18206 rules!2135 (seqFromList!3866 lt!1157517)))))))

(declare-fun b!3403369 () Bool)

(declare-fun res!1377240 () Bool)

(assert (=> b!3403369 (=> (not res!1377240) (not e!2112716))))

(declare-fun rulesInvariant!4392 (LexerInterface!4995 List!37138) Bool)

(assert (=> b!3403369 (= res!1377240 (rulesInvariant!4392 thiss!18206 rules!2135))))

(declare-fun b!3403370 () Bool)

(declare-fun res!1377236 () Bool)

(assert (=> b!3403370 (=> (not res!1377236) (not e!2112716))))

(assert (=> b!3403370 (= res!1377236 (isSeparator!5406 (rule!7970 separatorToken!241)))))

(declare-fun b!3403371 () Bool)

(assert (=> b!3403371 (= e!2112734 e!2112720)))

(declare-fun res!1377234 () Bool)

(assert (=> b!3403371 (=> res!1377234 e!2112720)))

(assert (=> b!3403371 (= res!1377234 (or (isSeparator!5406 (rule!7970 (h!42435 tokens!494))) (isSeparator!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))))))

(declare-fun lt!1157523 () Unit!52170)

(declare-fun forallContained!1353 (List!37139 Int Token!10178) Unit!52170)

(assert (=> b!3403371 (= lt!1157523 (forallContained!1353 tokens!494 lambda!121071 (h!42435 (t!266240 tokens!494))))))

(declare-fun lt!1157519 () Unit!52170)

(assert (=> b!3403371 (= lt!1157519 (forallContained!1353 tokens!494 lambda!121071 (h!42435 tokens!494)))))

(declare-fun b!3403372 () Bool)

(assert (=> b!3403372 (= e!2112716 (not e!2112732))))

(declare-fun res!1377237 () Bool)

(assert (=> b!3403372 (=> res!1377237 e!2112732)))

(assert (=> b!3403372 (= res!1377237 (not (= lt!1157513 lt!1157528)))))

(declare-fun printList!1543 (LexerInterface!4995 List!37139) List!37137)

(assert (=> b!3403372 (= lt!1157528 (printList!1543 thiss!18206 (Cons!37015 (h!42435 tokens!494) Nil!37015)))))

(declare-fun lt!1157521 () BalanceConc!21988)

(assert (=> b!3403372 (= lt!1157513 (list!13431 lt!1157521))))

(declare-fun lt!1157527 () BalanceConc!21990)

(declare-fun printTailRec!1490 (LexerInterface!4995 BalanceConc!21990 Int BalanceConc!21988) BalanceConc!21988)

(assert (=> b!3403372 (= lt!1157521 (printTailRec!1490 thiss!18206 lt!1157527 0 (BalanceConc!21989 Empty!11187)))))

(declare-fun print!2060 (LexerInterface!4995 BalanceConc!21990) BalanceConc!21988)

(assert (=> b!3403372 (= lt!1157521 (print!2060 thiss!18206 lt!1157527))))

(declare-fun singletonSeq!2502 (Token!10178) BalanceConc!21990)

(assert (=> b!3403372 (= lt!1157527 (singletonSeq!2502 (h!42435 tokens!494)))))

(declare-fun b!3403373 () Bool)

(assert (=> b!3403373 (= e!2112715 e!2112730)))

(declare-fun res!1377245 () Bool)

(assert (=> b!3403373 (=> res!1377245 e!2112730)))

(declare-fun lt!1157516 () List!37137)

(assert (=> b!3403373 (= res!1377245 (not (= lt!1157518 lt!1157516)))))

(assert (=> b!3403373 (= lt!1157525 lt!1157516)))

(assert (=> b!3403373 (= lt!1157516 (++!9085 lt!1157517 lt!1157529))))

(declare-fun lt!1157526 () Unit!52170)

(declare-fun lemmaConcatAssociativity!1912 (List!37137 List!37137 List!37137) Unit!52170)

(assert (=> b!3403373 (= lt!1157526 (lemmaConcatAssociativity!1912 lt!1157517 lt!1157522 lt!1157530))))

(declare-fun b!3403374 () Bool)

(declare-fun tp!1061930 () Bool)

(assert (=> b!3403374 (= e!2112726 (and (inv!21 (value!174531 separatorToken!241)) e!2112731 tp!1061930))))

(assert (=> b!3403375 (= e!2112735 (and tp!1061933 tp!1061932))))

(assert (=> b!3403376 (= e!2112722 (and tp!1061931 tp!1061927))))

(declare-fun b!3403377 () Bool)

(assert (=> b!3403377 (= e!2112729 (= (rule!7970 (h!42435 tokens!494)) lt!1157514))))

(declare-fun b!3403378 () Bool)

(declare-fun res!1377239 () Bool)

(assert (=> b!3403378 (=> (not res!1377239) (not e!2112716))))

(assert (=> b!3403378 (= res!1377239 (and (not ((_ is Nil!37015) tokens!494)) (not ((_ is Nil!37015) (t!266240 tokens!494)))))))

(assert (= (and start!318078 res!1377227) b!3403352))

(assert (= (and b!3403352 res!1377244) b!3403369))

(assert (= (and b!3403369 res!1377240) b!3403350))

(assert (= (and b!3403350 res!1377238) b!3403366))

(assert (= (and b!3403366 res!1377228) b!3403370))

(assert (= (and b!3403370 res!1377236) b!3403349))

(assert (= (and b!3403349 res!1377225) b!3403353))

(assert (= (and b!3403353 res!1377243) b!3403378))

(assert (= (and b!3403378 res!1377239) b!3403372))

(assert (= (and b!3403372 (not res!1377237)) b!3403364))

(assert (= (and b!3403364 (not res!1377235)) b!3403360))

(assert (= (and b!3403360 (not res!1377241)) b!3403368))

(assert (= (and b!3403368 (not res!1377242)) b!3403371))

(assert (= (and b!3403371 (not res!1377234)) b!3403363))

(assert (= (and b!3403363 (not res!1377233)) b!3403361))

(assert (= (and b!3403361 (not res!1377230)) b!3403373))

(assert (= (and b!3403373 (not res!1377245)) b!3403348))

(assert (= (and b!3403348 res!1377229) b!3403362))

(assert (= (and b!3403362 res!1377232) b!3403377))

(assert (= (and b!3403348 (not res!1377226)) b!3403358))

(assert (= (and b!3403358 (not res!1377231)) b!3403351))

(assert (= b!3403354 b!3403375))

(assert (= b!3403367 b!3403354))

(assert (= (and start!318078 ((_ is Cons!37014) rules!2135)) b!3403367))

(assert (= b!3403355 b!3403376))

(assert (= b!3403365 b!3403355))

(assert (= b!3403356 b!3403365))

(assert (= (and start!318078 ((_ is Cons!37015) tokens!494)) b!3403356))

(assert (= b!3403357 b!3403359))

(assert (= b!3403374 b!3403357))

(assert (= start!318078 b!3403374))

(declare-fun m!3776791 () Bool)

(assert (=> b!3403350 m!3776791))

(assert (=> b!3403350 m!3776791))

(declare-fun m!3776793 () Bool)

(assert (=> b!3403350 m!3776793))

(declare-fun m!3776795 () Bool)

(assert (=> b!3403355 m!3776795))

(declare-fun m!3776797 () Bool)

(assert (=> b!3403355 m!3776797))

(declare-fun m!3776799 () Bool)

(assert (=> b!3403351 m!3776799))

(declare-fun m!3776801 () Bool)

(assert (=> b!3403357 m!3776801))

(declare-fun m!3776803 () Bool)

(assert (=> b!3403357 m!3776803))

(declare-fun m!3776805 () Bool)

(assert (=> b!3403372 m!3776805))

(declare-fun m!3776807 () Bool)

(assert (=> b!3403372 m!3776807))

(declare-fun m!3776809 () Bool)

(assert (=> b!3403372 m!3776809))

(declare-fun m!3776811 () Bool)

(assert (=> b!3403372 m!3776811))

(declare-fun m!3776813 () Bool)

(assert (=> b!3403372 m!3776813))

(declare-fun m!3776815 () Bool)

(assert (=> b!3403364 m!3776815))

(assert (=> b!3403364 m!3776815))

(declare-fun m!3776817 () Bool)

(assert (=> b!3403364 m!3776817))

(declare-fun m!3776819 () Bool)

(assert (=> b!3403358 m!3776819))

(declare-fun m!3776821 () Bool)

(assert (=> b!3403348 m!3776821))

(declare-fun m!3776823 () Bool)

(assert (=> b!3403348 m!3776823))

(declare-fun m!3776825 () Bool)

(assert (=> b!3403348 m!3776825))

(declare-fun m!3776827 () Bool)

(assert (=> b!3403348 m!3776827))

(declare-fun m!3776829 () Bool)

(assert (=> b!3403348 m!3776829))

(declare-fun m!3776831 () Bool)

(assert (=> b!3403361 m!3776831))

(assert (=> b!3403361 m!3776831))

(declare-fun m!3776833 () Bool)

(assert (=> b!3403361 m!3776833))

(declare-fun m!3776835 () Bool)

(assert (=> b!3403366 m!3776835))

(declare-fun m!3776837 () Bool)

(assert (=> b!3403371 m!3776837))

(declare-fun m!3776839 () Bool)

(assert (=> b!3403371 m!3776839))

(declare-fun m!3776841 () Bool)

(assert (=> start!318078 m!3776841))

(declare-fun m!3776843 () Bool)

(assert (=> b!3403349 m!3776843))

(declare-fun m!3776845 () Bool)

(assert (=> b!3403369 m!3776845))

(declare-fun m!3776847 () Bool)

(assert (=> b!3403368 m!3776847))

(assert (=> b!3403368 m!3776847))

(declare-fun m!3776849 () Bool)

(assert (=> b!3403368 m!3776849))

(declare-fun m!3776851 () Bool)

(assert (=> b!3403368 m!3776851))

(declare-fun m!3776853 () Bool)

(assert (=> b!3403352 m!3776853))

(declare-fun m!3776855 () Bool)

(assert (=> b!3403353 m!3776855))

(declare-fun m!3776857 () Bool)

(assert (=> b!3403373 m!3776857))

(declare-fun m!3776859 () Bool)

(assert (=> b!3403373 m!3776859))

(declare-fun m!3776861 () Bool)

(assert (=> b!3403365 m!3776861))

(declare-fun m!3776863 () Bool)

(assert (=> b!3403362 m!3776863))

(declare-fun m!3776865 () Bool)

(assert (=> b!3403362 m!3776865))

(declare-fun m!3776867 () Bool)

(assert (=> b!3403356 m!3776867))

(declare-fun m!3776869 () Bool)

(assert (=> b!3403374 m!3776869))

(declare-fun m!3776871 () Bool)

(assert (=> b!3403354 m!3776871))

(declare-fun m!3776873 () Bool)

(assert (=> b!3403354 m!3776873))

(declare-fun m!3776875 () Bool)

(assert (=> b!3403363 m!3776875))

(declare-fun m!3776877 () Bool)

(assert (=> b!3403363 m!3776877))

(declare-fun m!3776879 () Bool)

(assert (=> b!3403363 m!3776879))

(assert (=> b!3403363 m!3776875))

(declare-fun m!3776881 () Bool)

(assert (=> b!3403363 m!3776881))

(declare-fun m!3776883 () Bool)

(assert (=> b!3403363 m!3776883))

(declare-fun m!3776885 () Bool)

(assert (=> b!3403363 m!3776885))

(assert (=> b!3403363 m!3776881))

(declare-fun m!3776887 () Bool)

(assert (=> b!3403363 m!3776887))

(declare-fun m!3776889 () Bool)

(assert (=> b!3403363 m!3776889))

(assert (=> b!3403363 m!3776889))

(declare-fun m!3776891 () Bool)

(assert (=> b!3403363 m!3776891))

(assert (=> b!3403363 m!3776887))

(assert (=> b!3403363 m!3776883))

(declare-fun m!3776893 () Bool)

(assert (=> b!3403363 m!3776893))

(declare-fun m!3776895 () Bool)

(assert (=> b!3403360 m!3776895))

(check-sat (not b!3403363) (not b!3403355) (not b!3403364) (not start!318078) (not b_next!89877) (not b!3403351) b_and!237655 (not b!3403357) (not b!3403358) (not b!3403366) (not b!3403371) (not b!3403349) b_and!237665 (not b!3403362) b_and!237659 (not b!3403356) (not b!3403368) (not b!3403372) (not b!3403353) b_and!237661 (not b!3403361) (not b!3403354) (not b!3403350) (not b_next!89879) (not b!3403360) (not b!3403352) (not b_next!89873) (not b!3403367) b_and!237663 (not b_next!89875) (not b!3403373) b_and!237657 (not b!3403348) (not b_next!89881) (not b!3403374) (not b!3403365) (not b!3403369) (not b_next!89883))
(check-sat b_and!237659 b_and!237661 (not b_next!89879) (not b_next!89873) (not b_next!89877) (not b_next!89881) b_and!237655 (not b_next!89883) b_and!237665 b_and!237663 (not b_next!89875) b_and!237657)
(get-model)

(declare-fun bs!556422 () Bool)

(declare-fun d!968424 () Bool)

(assert (= bs!556422 (and d!968424 b!3403349)))

(declare-fun lambda!121076 () Int)

(assert (=> bs!556422 (not (= lambda!121076 lambda!121071))))

(declare-fun b!3403613 () Bool)

(declare-fun e!2112886 () Bool)

(assert (=> b!3403613 (= e!2112886 true)))

(declare-fun b!3403612 () Bool)

(declare-fun e!2112885 () Bool)

(assert (=> b!3403612 (= e!2112885 e!2112886)))

(declare-fun b!3403611 () Bool)

(declare-fun e!2112884 () Bool)

(assert (=> b!3403611 (= e!2112884 e!2112885)))

(assert (=> d!968424 e!2112884))

(assert (= b!3403612 b!3403613))

(assert (= b!3403611 b!3403612))

(assert (= (and d!968424 ((_ is Cons!37014) rules!2135)) b!3403611))

(declare-fun order!19581 () Int)

(declare-fun order!19579 () Int)

(declare-fun dynLambda!15473 (Int Int) Int)

(declare-fun dynLambda!15474 (Int Int) Int)

(assert (=> b!3403613 (< (dynLambda!15473 order!19579 (toValue!7614 (transformation!5406 (h!42434 rules!2135)))) (dynLambda!15474 order!19581 lambda!121076))))

(declare-fun order!19583 () Int)

(declare-fun dynLambda!15475 (Int Int) Int)

(assert (=> b!3403613 (< (dynLambda!15475 order!19583 (toChars!7473 (transformation!5406 (h!42434 rules!2135)))) (dynLambda!15474 order!19581 lambda!121076))))

(assert (=> d!968424 true))

(declare-fun e!2112877 () Bool)

(assert (=> d!968424 e!2112877))

(declare-fun res!1377381 () Bool)

(assert (=> d!968424 (=> (not res!1377381) (not e!2112877))))

(declare-fun lt!1157618 () Bool)

(declare-fun list!13434 (BalanceConc!21990) List!37139)

(assert (=> d!968424 (= res!1377381 (= lt!1157618 (forall!7837 (list!13434 (seqFromList!3865 tokens!494)) lambda!121076)))))

(declare-fun forall!7838 (BalanceConc!21990 Int) Bool)

(assert (=> d!968424 (= lt!1157618 (forall!7838 (seqFromList!3865 tokens!494) lambda!121076))))

(assert (=> d!968424 (not (isEmpty!21294 rules!2135))))

(assert (=> d!968424 (= (rulesProduceEachTokenIndividually!1446 thiss!18206 rules!2135 (seqFromList!3865 tokens!494)) lt!1157618)))

(declare-fun b!3403602 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1834 (LexerInterface!4995 List!37138 List!37139) Bool)

(assert (=> b!3403602 (= e!2112877 (= lt!1157618 (rulesProduceEachTokenIndividuallyList!1834 thiss!18206 rules!2135 (list!13434 (seqFromList!3865 tokens!494)))))))

(assert (= (and d!968424 res!1377381) b!3403602))

(assert (=> d!968424 m!3776791))

(declare-fun m!3777241 () Bool)

(assert (=> d!968424 m!3777241))

(assert (=> d!968424 m!3777241))

(declare-fun m!3777243 () Bool)

(assert (=> d!968424 m!3777243))

(assert (=> d!968424 m!3776791))

(declare-fun m!3777245 () Bool)

(assert (=> d!968424 m!3777245))

(assert (=> d!968424 m!3776853))

(assert (=> b!3403602 m!3776791))

(assert (=> b!3403602 m!3777241))

(assert (=> b!3403602 m!3777241))

(declare-fun m!3777247 () Bool)

(assert (=> b!3403602 m!3777247))

(assert (=> b!3403350 d!968424))

(declare-fun d!968474 () Bool)

(declare-fun fromListB!1740 (List!37139) BalanceConc!21990)

(assert (=> d!968474 (= (seqFromList!3865 tokens!494) (fromListB!1740 tokens!494))))

(declare-fun bs!556423 () Bool)

(assert (= bs!556423 d!968474))

(declare-fun m!3777249 () Bool)

(assert (=> bs!556423 m!3777249))

(assert (=> b!3403350 d!968474))

(declare-fun d!968476 () Bool)

(declare-fun lt!1157621 () BalanceConc!21988)

(assert (=> d!968476 (= (list!13431 lt!1157621) (printList!1543 thiss!18206 (list!13434 lt!1157527)))))

(assert (=> d!968476 (= lt!1157621 (printTailRec!1490 thiss!18206 lt!1157527 0 (BalanceConc!21989 Empty!11187)))))

(assert (=> d!968476 (= (print!2060 thiss!18206 lt!1157527) lt!1157621)))

(declare-fun bs!556424 () Bool)

(assert (= bs!556424 d!968476))

(declare-fun m!3777251 () Bool)

(assert (=> bs!556424 m!3777251))

(declare-fun m!3777253 () Bool)

(assert (=> bs!556424 m!3777253))

(assert (=> bs!556424 m!3777253))

(declare-fun m!3777255 () Bool)

(assert (=> bs!556424 m!3777255))

(assert (=> bs!556424 m!3776813))

(assert (=> b!3403372 d!968476))

(declare-fun d!968478 () Bool)

(declare-fun lt!1157639 () BalanceConc!21988)

(declare-fun printListTailRec!668 (LexerInterface!4995 List!37139 List!37137) List!37137)

(declare-fun dropList!1185 (BalanceConc!21990 Int) List!37139)

(assert (=> d!968478 (= (list!13431 lt!1157639) (printListTailRec!668 thiss!18206 (dropList!1185 lt!1157527 0) (list!13431 (BalanceConc!21989 Empty!11187))))))

(declare-fun e!2112891 () BalanceConc!21988)

(assert (=> d!968478 (= lt!1157639 e!2112891)))

(declare-fun c!580151 () Bool)

(declare-fun size!28032 (BalanceConc!21990) Int)

(assert (=> d!968478 (= c!580151 (>= 0 (size!28032 lt!1157527)))))

(declare-fun e!2112892 () Bool)

(assert (=> d!968478 e!2112892))

(declare-fun res!1377384 () Bool)

(assert (=> d!968478 (=> (not res!1377384) (not e!2112892))))

(assert (=> d!968478 (= res!1377384 (>= 0 0))))

(assert (=> d!968478 (= (printTailRec!1490 thiss!18206 lt!1157527 0 (BalanceConc!21989 Empty!11187)) lt!1157639)))

(declare-fun b!3403622 () Bool)

(assert (=> b!3403622 (= e!2112892 (<= 0 (size!28032 lt!1157527)))))

(declare-fun b!3403623 () Bool)

(assert (=> b!3403623 (= e!2112891 (BalanceConc!21989 Empty!11187))))

(declare-fun b!3403624 () Bool)

(declare-fun ++!9087 (BalanceConc!21988 BalanceConc!21988) BalanceConc!21988)

(declare-fun apply!8648 (BalanceConc!21990 Int) Token!10178)

(assert (=> b!3403624 (= e!2112891 (printTailRec!1490 thiss!18206 lt!1157527 (+ 0 1) (++!9087 (BalanceConc!21989 Empty!11187) (charsOf!3420 (apply!8648 lt!1157527 0)))))))

(declare-fun lt!1157640 () List!37139)

(assert (=> b!3403624 (= lt!1157640 (list!13434 lt!1157527))))

(declare-fun lt!1157636 () Unit!52170)

(declare-fun lemmaDropApply!1143 (List!37139 Int) Unit!52170)

(assert (=> b!3403624 (= lt!1157636 (lemmaDropApply!1143 lt!1157640 0))))

(declare-fun head!7270 (List!37139) Token!10178)

(declare-fun drop!1985 (List!37139 Int) List!37139)

(declare-fun apply!8649 (List!37139 Int) Token!10178)

(assert (=> b!3403624 (= (head!7270 (drop!1985 lt!1157640 0)) (apply!8649 lt!1157640 0))))

(declare-fun lt!1157641 () Unit!52170)

(assert (=> b!3403624 (= lt!1157641 lt!1157636)))

(declare-fun lt!1157642 () List!37139)

(assert (=> b!3403624 (= lt!1157642 (list!13434 lt!1157527))))

(declare-fun lt!1157638 () Unit!52170)

(declare-fun lemmaDropTail!1027 (List!37139 Int) Unit!52170)

(assert (=> b!3403624 (= lt!1157638 (lemmaDropTail!1027 lt!1157642 0))))

(declare-fun tail!5392 (List!37139) List!37139)

(assert (=> b!3403624 (= (tail!5392 (drop!1985 lt!1157642 0)) (drop!1985 lt!1157642 (+ 0 1)))))

(declare-fun lt!1157637 () Unit!52170)

(assert (=> b!3403624 (= lt!1157637 lt!1157638)))

(assert (= (and d!968478 res!1377384) b!3403622))

(assert (= (and d!968478 c!580151) b!3403623))

(assert (= (and d!968478 (not c!580151)) b!3403624))

(declare-fun m!3777257 () Bool)

(assert (=> d!968478 m!3777257))

(declare-fun m!3777259 () Bool)

(assert (=> d!968478 m!3777259))

(declare-fun m!3777261 () Bool)

(assert (=> d!968478 m!3777261))

(assert (=> d!968478 m!3777257))

(declare-fun m!3777263 () Bool)

(assert (=> d!968478 m!3777263))

(assert (=> d!968478 m!3777259))

(declare-fun m!3777265 () Bool)

(assert (=> d!968478 m!3777265))

(assert (=> b!3403622 m!3777263))

(declare-fun m!3777267 () Bool)

(assert (=> b!3403624 m!3777267))

(declare-fun m!3777269 () Bool)

(assert (=> b!3403624 m!3777269))

(declare-fun m!3777271 () Bool)

(assert (=> b!3403624 m!3777271))

(declare-fun m!3777273 () Bool)

(assert (=> b!3403624 m!3777273))

(declare-fun m!3777275 () Bool)

(assert (=> b!3403624 m!3777275))

(declare-fun m!3777277 () Bool)

(assert (=> b!3403624 m!3777277))

(declare-fun m!3777279 () Bool)

(assert (=> b!3403624 m!3777279))

(declare-fun m!3777281 () Bool)

(assert (=> b!3403624 m!3777281))

(declare-fun m!3777283 () Bool)

(assert (=> b!3403624 m!3777283))

(declare-fun m!3777285 () Bool)

(assert (=> b!3403624 m!3777285))

(assert (=> b!3403624 m!3777271))

(assert (=> b!3403624 m!3777269))

(declare-fun m!3777287 () Bool)

(assert (=> b!3403624 m!3777287))

(declare-fun m!3777289 () Bool)

(assert (=> b!3403624 m!3777289))

(assert (=> b!3403624 m!3777275))

(assert (=> b!3403624 m!3777273))

(assert (=> b!3403624 m!3777283))

(assert (=> b!3403624 m!3777253))

(assert (=> b!3403372 d!968478))

(declare-fun d!968480 () Bool)

(declare-fun list!13435 (Conc!11187) List!37137)

(assert (=> d!968480 (= (list!13431 lt!1157521) (list!13435 (c!580101 lt!1157521)))))

(declare-fun bs!556425 () Bool)

(assert (= bs!556425 d!968480))

(declare-fun m!3777291 () Bool)

(assert (=> bs!556425 m!3777291))

(assert (=> b!3403372 d!968480))

(declare-fun d!968482 () Bool)

(declare-fun e!2112895 () Bool)

(assert (=> d!968482 e!2112895))

(declare-fun res!1377387 () Bool)

(assert (=> d!968482 (=> (not res!1377387) (not e!2112895))))

(declare-fun lt!1157645 () BalanceConc!21990)

(assert (=> d!968482 (= res!1377387 (= (list!13434 lt!1157645) (Cons!37015 (h!42435 tokens!494) Nil!37015)))))

(declare-fun singleton!1100 (Token!10178) BalanceConc!21990)

(assert (=> d!968482 (= lt!1157645 (singleton!1100 (h!42435 tokens!494)))))

(assert (=> d!968482 (= (singletonSeq!2502 (h!42435 tokens!494)) lt!1157645)))

(declare-fun b!3403627 () Bool)

(declare-fun isBalanced!3385 (Conc!11188) Bool)

(assert (=> b!3403627 (= e!2112895 (isBalanced!3385 (c!580102 lt!1157645)))))

(assert (= (and d!968482 res!1377387) b!3403627))

(declare-fun m!3777293 () Bool)

(assert (=> d!968482 m!3777293))

(declare-fun m!3777295 () Bool)

(assert (=> d!968482 m!3777295))

(declare-fun m!3777297 () Bool)

(assert (=> b!3403627 m!3777297))

(assert (=> b!3403372 d!968482))

(declare-fun d!968484 () Bool)

(declare-fun c!580154 () Bool)

(assert (=> d!968484 (= c!580154 ((_ is Cons!37015) (Cons!37015 (h!42435 tokens!494) Nil!37015)))))

(declare-fun e!2112898 () List!37137)

(assert (=> d!968484 (= (printList!1543 thiss!18206 (Cons!37015 (h!42435 tokens!494) Nil!37015)) e!2112898)))

(declare-fun b!3403632 () Bool)

(assert (=> b!3403632 (= e!2112898 (++!9085 (list!13431 (charsOf!3420 (h!42435 (Cons!37015 (h!42435 tokens!494) Nil!37015)))) (printList!1543 thiss!18206 (t!266240 (Cons!37015 (h!42435 tokens!494) Nil!37015)))))))

(declare-fun b!3403633 () Bool)

(assert (=> b!3403633 (= e!2112898 Nil!37013)))

(assert (= (and d!968484 c!580154) b!3403632))

(assert (= (and d!968484 (not c!580154)) b!3403633))

(declare-fun m!3777299 () Bool)

(assert (=> b!3403632 m!3777299))

(assert (=> b!3403632 m!3777299))

(declare-fun m!3777301 () Bool)

(assert (=> b!3403632 m!3777301))

(declare-fun m!3777303 () Bool)

(assert (=> b!3403632 m!3777303))

(assert (=> b!3403632 m!3777301))

(assert (=> b!3403632 m!3777303))

(declare-fun m!3777305 () Bool)

(assert (=> b!3403632 m!3777305))

(assert (=> b!3403372 d!968484))

(declare-fun d!968486 () Bool)

(assert (=> d!968486 (= (isEmpty!21293 lt!1157517) ((_ is Nil!37013) lt!1157517))))

(assert (=> b!3403351 d!968486))

(declare-fun b!3403644 () Bool)

(declare-fun res!1377393 () Bool)

(declare-fun e!2112904 () Bool)

(assert (=> b!3403644 (=> (not res!1377393) (not e!2112904))))

(declare-fun lt!1157648 () List!37137)

(declare-fun size!28034 (List!37137) Int)

(assert (=> b!3403644 (= res!1377393 (= (size!28034 lt!1157648) (+ (size!28034 lt!1157517) (size!28034 lt!1157529))))))

(declare-fun b!3403642 () Bool)

(declare-fun e!2112903 () List!37137)

(assert (=> b!3403642 (= e!2112903 lt!1157529)))

(declare-fun b!3403645 () Bool)

(assert (=> b!3403645 (= e!2112904 (or (not (= lt!1157529 Nil!37013)) (= lt!1157648 lt!1157517)))))

(declare-fun d!968488 () Bool)

(assert (=> d!968488 e!2112904))

(declare-fun res!1377392 () Bool)

(assert (=> d!968488 (=> (not res!1377392) (not e!2112904))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5131 (List!37137) (InoxSet C!20516))

(assert (=> d!968488 (= res!1377392 (= (content!5131 lt!1157648) ((_ map or) (content!5131 lt!1157517) (content!5131 lt!1157529))))))

(assert (=> d!968488 (= lt!1157648 e!2112903)))

(declare-fun c!580157 () Bool)

(assert (=> d!968488 (= c!580157 ((_ is Nil!37013) lt!1157517))))

(assert (=> d!968488 (= (++!9085 lt!1157517 lt!1157529) lt!1157648)))

(declare-fun b!3403643 () Bool)

(assert (=> b!3403643 (= e!2112903 (Cons!37013 (h!42433 lt!1157517) (++!9085 (t!266238 lt!1157517) lt!1157529)))))

(assert (= (and d!968488 c!580157) b!3403642))

(assert (= (and d!968488 (not c!580157)) b!3403643))

(assert (= (and d!968488 res!1377392) b!3403644))

(assert (= (and b!3403644 res!1377393) b!3403645))

(declare-fun m!3777307 () Bool)

(assert (=> b!3403644 m!3777307))

(declare-fun m!3777309 () Bool)

(assert (=> b!3403644 m!3777309))

(declare-fun m!3777311 () Bool)

(assert (=> b!3403644 m!3777311))

(declare-fun m!3777313 () Bool)

(assert (=> d!968488 m!3777313))

(declare-fun m!3777315 () Bool)

(assert (=> d!968488 m!3777315))

(declare-fun m!3777317 () Bool)

(assert (=> d!968488 m!3777317))

(declare-fun m!3777319 () Bool)

(assert (=> b!3403643 m!3777319))

(assert (=> b!3403373 d!968488))

(declare-fun d!968490 () Bool)

(assert (=> d!968490 (= (++!9085 (++!9085 lt!1157517 lt!1157522) lt!1157530) (++!9085 lt!1157517 (++!9085 lt!1157522 lt!1157530)))))

(declare-fun lt!1157651 () Unit!52170)

(declare-fun choose!19749 (List!37137 List!37137 List!37137) Unit!52170)

(assert (=> d!968490 (= lt!1157651 (choose!19749 lt!1157517 lt!1157522 lt!1157530))))

(assert (=> d!968490 (= (lemmaConcatAssociativity!1912 lt!1157517 lt!1157522 lt!1157530) lt!1157651)))

(declare-fun bs!556426 () Bool)

(assert (= bs!556426 d!968490))

(declare-fun m!3777321 () Bool)

(assert (=> bs!556426 m!3777321))

(assert (=> bs!556426 m!3776885))

(declare-fun m!3777323 () Bool)

(assert (=> bs!556426 m!3777323))

(assert (=> bs!556426 m!3776831))

(assert (=> bs!556426 m!3776885))

(assert (=> bs!556426 m!3776831))

(assert (=> bs!556426 m!3776833))

(assert (=> b!3403373 d!968490))

(declare-fun d!968492 () Bool)

(assert (=> d!968492 (= (isEmpty!21294 rules!2135) ((_ is Nil!37014) rules!2135))))

(assert (=> b!3403352 d!968492))

(declare-fun d!968494 () Bool)

(declare-fun res!1377396 () Bool)

(declare-fun e!2112907 () Bool)

(assert (=> d!968494 (=> (not res!1377396) (not e!2112907))))

(declare-fun rulesValid!2023 (LexerInterface!4995 List!37138) Bool)

(assert (=> d!968494 (= res!1377396 (rulesValid!2023 thiss!18206 rules!2135))))

(assert (=> d!968494 (= (rulesInvariant!4392 thiss!18206 rules!2135) e!2112907)))

(declare-fun b!3403648 () Bool)

(declare-datatypes ((List!37141 0))(
  ( (Nil!37017) (Cons!37017 (h!42437 String!41514) (t!266316 List!37141)) )
))
(declare-fun noDuplicateTag!2019 (LexerInterface!4995 List!37138 List!37141) Bool)

(assert (=> b!3403648 (= e!2112907 (noDuplicateTag!2019 thiss!18206 rules!2135 Nil!37017))))

(assert (= (and d!968494 res!1377396) b!3403648))

(declare-fun m!3777325 () Bool)

(assert (=> d!968494 m!3777325))

(declare-fun m!3777327 () Bool)

(assert (=> b!3403648 m!3777327))

(assert (=> b!3403369 d!968494))

(declare-fun d!968496 () Bool)

(assert (=> d!968496 (rulesProduceIndividualToken!2487 thiss!18206 rules!2135 (h!42435 tokens!494))))

(declare-fun lt!1157654 () Unit!52170)

(declare-fun choose!19750 (LexerInterface!4995 List!37138 List!37139 Token!10178) Unit!52170)

(assert (=> d!968496 (= lt!1157654 (choose!19750 thiss!18206 rules!2135 tokens!494 (h!42435 tokens!494)))))

(assert (=> d!968496 (not (isEmpty!21294 rules!2135))))

(assert (=> d!968496 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!984 thiss!18206 rules!2135 tokens!494 (h!42435 tokens!494)) lt!1157654)))

(declare-fun bs!556427 () Bool)

(assert (= bs!556427 d!968496))

(assert (=> bs!556427 m!3776895))

(declare-fun m!3777329 () Bool)

(assert (=> bs!556427 m!3777329))

(assert (=> bs!556427 m!3776853))

(assert (=> b!3403348 d!968496))

(declare-fun b!3403661 () Bool)

(declare-fun e!2112919 () Bool)

(declare-fun e!2112917 () Bool)

(assert (=> b!3403661 (= e!2112919 e!2112917)))

(declare-fun res!1377402 () Bool)

(assert (=> b!3403661 (=> (not res!1377402) (not e!2112917))))

(declare-fun lt!1157661 () Option!7448)

(assert (=> b!3403661 (= res!1377402 (contains!6809 rules!2135 (get!11820 lt!1157661)))))

(declare-fun d!968498 () Bool)

(assert (=> d!968498 e!2112919))

(declare-fun res!1377401 () Bool)

(assert (=> d!968498 (=> res!1377401 e!2112919)))

(declare-fun isEmpty!21299 (Option!7448) Bool)

(assert (=> d!968498 (= res!1377401 (isEmpty!21299 lt!1157661))))

(declare-fun e!2112918 () Option!7448)

(assert (=> d!968498 (= lt!1157661 e!2112918)))

(declare-fun c!580163 () Bool)

(assert (=> d!968498 (= c!580163 (and ((_ is Cons!37014) rules!2135) (= (tag!5994 (h!42434 rules!2135)) (tag!5994 (rule!7970 (h!42435 tokens!494))))))))

(assert (=> d!968498 (rulesInvariant!4392 thiss!18206 rules!2135)))

(assert (=> d!968498 (= (getRuleFromTag!1049 thiss!18206 rules!2135 (tag!5994 (rule!7970 (h!42435 tokens!494)))) lt!1157661)))

(declare-fun b!3403662 () Bool)

(assert (=> b!3403662 (= e!2112917 (= (tag!5994 (get!11820 lt!1157661)) (tag!5994 (rule!7970 (h!42435 tokens!494)))))))

(declare-fun b!3403663 () Bool)

(declare-fun lt!1157663 () Unit!52170)

(declare-fun lt!1157662 () Unit!52170)

(assert (=> b!3403663 (= lt!1157663 lt!1157662)))

(assert (=> b!3403663 (rulesInvariant!4392 thiss!18206 (t!266239 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!411 (LexerInterface!4995 Rule!10612 List!37138) Unit!52170)

(assert (=> b!3403663 (= lt!1157662 (lemmaInvariantOnRulesThenOnTail!411 thiss!18206 (h!42434 rules!2135) (t!266239 rules!2135)))))

(declare-fun e!2112916 () Option!7448)

(assert (=> b!3403663 (= e!2112916 (getRuleFromTag!1049 thiss!18206 (t!266239 rules!2135) (tag!5994 (rule!7970 (h!42435 tokens!494)))))))

(declare-fun b!3403664 () Bool)

(assert (=> b!3403664 (= e!2112918 e!2112916)))

(declare-fun c!580162 () Bool)

(assert (=> b!3403664 (= c!580162 (and ((_ is Cons!37014) rules!2135) (not (= (tag!5994 (h!42434 rules!2135)) (tag!5994 (rule!7970 (h!42435 tokens!494)))))))))

(declare-fun b!3403665 () Bool)

(assert (=> b!3403665 (= e!2112916 None!7447)))

(declare-fun b!3403666 () Bool)

(assert (=> b!3403666 (= e!2112918 (Some!7447 (h!42434 rules!2135)))))

(assert (= (and d!968498 c!580163) b!3403666))

(assert (= (and d!968498 (not c!580163)) b!3403664))

(assert (= (and b!3403664 c!580162) b!3403663))

(assert (= (and b!3403664 (not c!580162)) b!3403665))

(assert (= (and d!968498 (not res!1377401)) b!3403661))

(assert (= (and b!3403661 res!1377402) b!3403662))

(declare-fun m!3777331 () Bool)

(assert (=> b!3403661 m!3777331))

(assert (=> b!3403661 m!3777331))

(declare-fun m!3777333 () Bool)

(assert (=> b!3403661 m!3777333))

(declare-fun m!3777335 () Bool)

(assert (=> d!968498 m!3777335))

(assert (=> d!968498 m!3776845))

(assert (=> b!3403662 m!3777331))

(declare-fun m!3777337 () Bool)

(assert (=> b!3403663 m!3777337))

(declare-fun m!3777339 () Bool)

(assert (=> b!3403663 m!3777339))

(declare-fun m!3777341 () Bool)

(assert (=> b!3403663 m!3777341))

(assert (=> b!3403348 d!968498))

(declare-fun d!968500 () Bool)

(declare-fun lt!1157666 () Bool)

(declare-fun content!5132 (List!37138) (InoxSet Rule!10612))

(assert (=> d!968500 (= lt!1157666 (select (content!5132 rules!2135) (rule!7970 (h!42435 tokens!494))))))

(declare-fun e!2112924 () Bool)

(assert (=> d!968500 (= lt!1157666 e!2112924)))

(declare-fun res!1377407 () Bool)

(assert (=> d!968500 (=> (not res!1377407) (not e!2112924))))

(assert (=> d!968500 (= res!1377407 ((_ is Cons!37014) rules!2135))))

(assert (=> d!968500 (= (contains!6809 rules!2135 (rule!7970 (h!42435 tokens!494))) lt!1157666)))

(declare-fun b!3403671 () Bool)

(declare-fun e!2112925 () Bool)

(assert (=> b!3403671 (= e!2112924 e!2112925)))

(declare-fun res!1377408 () Bool)

(assert (=> b!3403671 (=> res!1377408 e!2112925)))

(assert (=> b!3403671 (= res!1377408 (= (h!42434 rules!2135) (rule!7970 (h!42435 tokens!494))))))

(declare-fun b!3403672 () Bool)

(assert (=> b!3403672 (= e!2112925 (contains!6809 (t!266239 rules!2135) (rule!7970 (h!42435 tokens!494))))))

(assert (= (and d!968500 res!1377407) b!3403671))

(assert (= (and b!3403671 (not res!1377408)) b!3403672))

(declare-fun m!3777343 () Bool)

(assert (=> d!968500 m!3777343))

(declare-fun m!3777345 () Bool)

(assert (=> d!968500 m!3777345))

(declare-fun m!3777347 () Bool)

(assert (=> b!3403672 m!3777347))

(assert (=> b!3403348 d!968500))

(declare-fun d!968502 () Bool)

(declare-fun e!2112928 () Bool)

(assert (=> d!968502 e!2112928))

(declare-fun res!1377413 () Bool)

(assert (=> d!968502 (=> (not res!1377413) (not e!2112928))))

(assert (=> d!968502 (= res!1377413 (isDefined!5748 (getRuleFromTag!1049 thiss!18206 rules!2135 (tag!5994 (rule!7970 (h!42435 tokens!494))))))))

(declare-fun lt!1157669 () Unit!52170)

(declare-fun choose!19752 (LexerInterface!4995 List!37138 List!37137 Token!10178) Unit!52170)

(assert (=> d!968502 (= lt!1157669 (choose!19752 thiss!18206 rules!2135 lt!1157517 (h!42435 tokens!494)))))

(assert (=> d!968502 (rulesInvariant!4392 thiss!18206 rules!2135)))

(assert (=> d!968502 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1049 thiss!18206 rules!2135 lt!1157517 (h!42435 tokens!494)) lt!1157669)))

(declare-fun b!3403677 () Bool)

(declare-fun res!1377414 () Bool)

(assert (=> b!3403677 (=> (not res!1377414) (not e!2112928))))

(assert (=> b!3403677 (= res!1377414 (matchR!4749 (regex!5406 (get!11820 (getRuleFromTag!1049 thiss!18206 rules!2135 (tag!5994 (rule!7970 (h!42435 tokens!494)))))) (list!13431 (charsOf!3420 (h!42435 tokens!494)))))))

(declare-fun b!3403678 () Bool)

(assert (=> b!3403678 (= e!2112928 (= (rule!7970 (h!42435 tokens!494)) (get!11820 (getRuleFromTag!1049 thiss!18206 rules!2135 (tag!5994 (rule!7970 (h!42435 tokens!494)))))))))

(assert (= (and d!968502 res!1377413) b!3403677))

(assert (= (and b!3403677 res!1377414) b!3403678))

(assert (=> d!968502 m!3776823))

(assert (=> d!968502 m!3776823))

(declare-fun m!3777349 () Bool)

(assert (=> d!968502 m!3777349))

(declare-fun m!3777351 () Bool)

(assert (=> d!968502 m!3777351))

(assert (=> d!968502 m!3776845))

(assert (=> b!3403677 m!3776815))

(assert (=> b!3403677 m!3776817))

(assert (=> b!3403677 m!3776823))

(assert (=> b!3403677 m!3776823))

(declare-fun m!3777353 () Bool)

(assert (=> b!3403677 m!3777353))

(assert (=> b!3403677 m!3776815))

(assert (=> b!3403677 m!3776817))

(declare-fun m!3777355 () Bool)

(assert (=> b!3403677 m!3777355))

(assert (=> b!3403678 m!3776823))

(assert (=> b!3403678 m!3776823))

(assert (=> b!3403678 m!3777353))

(assert (=> b!3403348 d!968502))

(declare-fun d!968504 () Bool)

(assert (=> d!968504 (= (isDefined!5748 lt!1157524) (not (isEmpty!21299 lt!1157524)))))

(declare-fun bs!556428 () Bool)

(assert (= bs!556428 d!968504))

(declare-fun m!3777357 () Bool)

(assert (=> bs!556428 m!3777357))

(assert (=> b!3403348 d!968504))

(declare-fun d!968506 () Bool)

(declare-fun res!1377419 () Bool)

(declare-fun e!2112933 () Bool)

(assert (=> d!968506 (=> res!1377419 e!2112933)))

(assert (=> d!968506 (= res!1377419 ((_ is Nil!37015) tokens!494))))

(assert (=> d!968506 (= (forall!7837 tokens!494 lambda!121071) e!2112933)))

(declare-fun b!3403683 () Bool)

(declare-fun e!2112934 () Bool)

(assert (=> b!3403683 (= e!2112933 e!2112934)))

(declare-fun res!1377420 () Bool)

(assert (=> b!3403683 (=> (not res!1377420) (not e!2112934))))

(declare-fun dynLambda!15476 (Int Token!10178) Bool)

(assert (=> b!3403683 (= res!1377420 (dynLambda!15476 lambda!121071 (h!42435 tokens!494)))))

(declare-fun b!3403684 () Bool)

(assert (=> b!3403684 (= e!2112934 (forall!7837 (t!266240 tokens!494) lambda!121071))))

(assert (= (and d!968506 (not res!1377419)) b!3403683))

(assert (= (and b!3403683 res!1377420) b!3403684))

(declare-fun b_lambda!97235 () Bool)

(assert (=> (not b_lambda!97235) (not b!3403683)))

(declare-fun m!3777359 () Bool)

(assert (=> b!3403683 m!3777359))

(declare-fun m!3777361 () Bool)

(assert (=> b!3403684 m!3777361))

(assert (=> b!3403349 d!968506))

(declare-fun d!968508 () Bool)

(assert (=> d!968508 (dynLambda!15476 lambda!121071 (h!42435 (t!266240 tokens!494)))))

(declare-fun lt!1157672 () Unit!52170)

(declare-fun choose!19754 (List!37139 Int Token!10178) Unit!52170)

(assert (=> d!968508 (= lt!1157672 (choose!19754 tokens!494 lambda!121071 (h!42435 (t!266240 tokens!494))))))

(declare-fun e!2112937 () Bool)

(assert (=> d!968508 e!2112937))

(declare-fun res!1377423 () Bool)

(assert (=> d!968508 (=> (not res!1377423) (not e!2112937))))

(assert (=> d!968508 (= res!1377423 (forall!7837 tokens!494 lambda!121071))))

(assert (=> d!968508 (= (forallContained!1353 tokens!494 lambda!121071 (h!42435 (t!266240 tokens!494))) lt!1157672)))

(declare-fun b!3403687 () Bool)

(declare-fun contains!6811 (List!37139 Token!10178) Bool)

(assert (=> b!3403687 (= e!2112937 (contains!6811 tokens!494 (h!42435 (t!266240 tokens!494))))))

(assert (= (and d!968508 res!1377423) b!3403687))

(declare-fun b_lambda!97237 () Bool)

(assert (=> (not b_lambda!97237) (not d!968508)))

(declare-fun m!3777363 () Bool)

(assert (=> d!968508 m!3777363))

(declare-fun m!3777365 () Bool)

(assert (=> d!968508 m!3777365))

(assert (=> d!968508 m!3776843))

(declare-fun m!3777367 () Bool)

(assert (=> b!3403687 m!3777367))

(assert (=> b!3403371 d!968508))

(declare-fun d!968510 () Bool)

(assert (=> d!968510 (dynLambda!15476 lambda!121071 (h!42435 tokens!494))))

(declare-fun lt!1157673 () Unit!52170)

(assert (=> d!968510 (= lt!1157673 (choose!19754 tokens!494 lambda!121071 (h!42435 tokens!494)))))

(declare-fun e!2112938 () Bool)

(assert (=> d!968510 e!2112938))

(declare-fun res!1377424 () Bool)

(assert (=> d!968510 (=> (not res!1377424) (not e!2112938))))

(assert (=> d!968510 (= res!1377424 (forall!7837 tokens!494 lambda!121071))))

(assert (=> d!968510 (= (forallContained!1353 tokens!494 lambda!121071 (h!42435 tokens!494)) lt!1157673)))

(declare-fun b!3403688 () Bool)

(assert (=> b!3403688 (= e!2112938 (contains!6811 tokens!494 (h!42435 tokens!494)))))

(assert (= (and d!968510 res!1377424) b!3403688))

(declare-fun b_lambda!97239 () Bool)

(assert (=> (not b_lambda!97239) (not d!968510)))

(assert (=> d!968510 m!3777359))

(declare-fun m!3777369 () Bool)

(assert (=> d!968510 m!3777369))

(assert (=> d!968510 m!3776843))

(declare-fun m!3777371 () Bool)

(assert (=> b!3403688 m!3777371))

(assert (=> b!3403371 d!968510))

(declare-fun d!968512 () Bool)

(declare-fun lt!1157679 () Bool)

(declare-fun e!2112996 () Bool)

(assert (=> d!968512 (= lt!1157679 e!2112996)))

(declare-fun res!1377436 () Bool)

(assert (=> d!968512 (=> (not res!1377436) (not e!2112996))))

(assert (=> d!968512 (= res!1377436 (= (list!13434 (_1!21459 (lex!2321 thiss!18206 rules!2135 (print!2060 thiss!18206 (singletonSeq!2502 separatorToken!241))))) (list!13434 (singletonSeq!2502 separatorToken!241))))))

(declare-fun e!2112995 () Bool)

(assert (=> d!968512 (= lt!1157679 e!2112995)))

(declare-fun res!1377435 () Bool)

(assert (=> d!968512 (=> (not res!1377435) (not e!2112995))))

(declare-fun lt!1157680 () tuple2!36650)

(assert (=> d!968512 (= res!1377435 (= (size!28032 (_1!21459 lt!1157680)) 1))))

(assert (=> d!968512 (= lt!1157680 (lex!2321 thiss!18206 rules!2135 (print!2060 thiss!18206 (singletonSeq!2502 separatorToken!241))))))

(assert (=> d!968512 (not (isEmpty!21294 rules!2135))))

(assert (=> d!968512 (= (rulesProduceIndividualToken!2487 thiss!18206 rules!2135 separatorToken!241) lt!1157679)))

(declare-fun b!3403765 () Bool)

(declare-fun res!1377437 () Bool)

(assert (=> b!3403765 (=> (not res!1377437) (not e!2112995))))

(assert (=> b!3403765 (= res!1377437 (= (apply!8648 (_1!21459 lt!1157680) 0) separatorToken!241))))

(declare-fun b!3403766 () Bool)

(declare-fun isEmpty!21301 (BalanceConc!21988) Bool)

(assert (=> b!3403766 (= e!2112995 (isEmpty!21301 (_2!21459 lt!1157680)))))

(declare-fun b!3403767 () Bool)

(assert (=> b!3403767 (= e!2112996 (isEmpty!21301 (_2!21459 (lex!2321 thiss!18206 rules!2135 (print!2060 thiss!18206 (singletonSeq!2502 separatorToken!241))))))))

(assert (= (and d!968512 res!1377435) b!3403765))

(assert (= (and b!3403765 res!1377437) b!3403766))

(assert (= (and d!968512 res!1377436) b!3403767))

(assert (=> d!968512 m!3776853))

(declare-fun m!3777399 () Bool)

(assert (=> d!968512 m!3777399))

(declare-fun m!3777401 () Bool)

(assert (=> d!968512 m!3777401))

(declare-fun m!3777403 () Bool)

(assert (=> d!968512 m!3777403))

(declare-fun m!3777405 () Bool)

(assert (=> d!968512 m!3777405))

(assert (=> d!968512 m!3777399))

(declare-fun m!3777407 () Bool)

(assert (=> d!968512 m!3777407))

(assert (=> d!968512 m!3777405))

(declare-fun m!3777409 () Bool)

(assert (=> d!968512 m!3777409))

(assert (=> d!968512 m!3777405))

(declare-fun m!3777411 () Bool)

(assert (=> b!3403765 m!3777411))

(declare-fun m!3777413 () Bool)

(assert (=> b!3403766 m!3777413))

(assert (=> b!3403767 m!3777405))

(assert (=> b!3403767 m!3777405))

(assert (=> b!3403767 m!3777399))

(assert (=> b!3403767 m!3777399))

(assert (=> b!3403767 m!3777401))

(declare-fun m!3777415 () Bool)

(assert (=> b!3403767 m!3777415))

(assert (=> b!3403366 d!968512))

(declare-fun lt!1157683 () Bool)

(declare-fun d!968524 () Bool)

(declare-fun isEmpty!21302 (List!37139) Bool)

(assert (=> d!968524 (= lt!1157683 (isEmpty!21302 (list!13434 (_1!21459 (lex!2321 thiss!18206 rules!2135 (seqFromList!3866 lt!1157517))))))))

(declare-fun isEmpty!21303 (Conc!11188) Bool)

(assert (=> d!968524 (= lt!1157683 (isEmpty!21303 (c!580102 (_1!21459 (lex!2321 thiss!18206 rules!2135 (seqFromList!3866 lt!1157517))))))))

(assert (=> d!968524 (= (isEmpty!21295 (_1!21459 (lex!2321 thiss!18206 rules!2135 (seqFromList!3866 lt!1157517)))) lt!1157683)))

(declare-fun bs!556433 () Bool)

(assert (= bs!556433 d!968524))

(declare-fun m!3777417 () Bool)

(assert (=> bs!556433 m!3777417))

(assert (=> bs!556433 m!3777417))

(declare-fun m!3777419 () Bool)

(assert (=> bs!556433 m!3777419))

(declare-fun m!3777421 () Bool)

(assert (=> bs!556433 m!3777421))

(assert (=> b!3403368 d!968524))

(declare-fun b!3403778 () Bool)

(declare-fun e!2113005 () Bool)

(declare-fun e!2113003 () Bool)

(assert (=> b!3403778 (= e!2113005 e!2113003)))

(declare-fun res!1377446 () Bool)

(declare-fun lt!1157686 () tuple2!36650)

(declare-fun size!28035 (BalanceConc!21988) Int)

(assert (=> b!3403778 (= res!1377446 (< (size!28035 (_2!21459 lt!1157686)) (size!28035 (seqFromList!3866 lt!1157517))))))

(assert (=> b!3403778 (=> (not res!1377446) (not e!2113003))))

(declare-fun b!3403779 () Bool)

(assert (=> b!3403779 (= e!2113003 (not (isEmpty!21295 (_1!21459 lt!1157686))))))

(declare-fun d!968526 () Bool)

(declare-fun e!2113004 () Bool)

(assert (=> d!968526 e!2113004))

(declare-fun res!1377445 () Bool)

(assert (=> d!968526 (=> (not res!1377445) (not e!2113004))))

(assert (=> d!968526 (= res!1377445 e!2113005)))

(declare-fun c!580166 () Bool)

(assert (=> d!968526 (= c!580166 (> (size!28032 (_1!21459 lt!1157686)) 0))))

(declare-fun lexTailRecV2!1036 (LexerInterface!4995 List!37138 BalanceConc!21988 BalanceConc!21988 BalanceConc!21988 BalanceConc!21990) tuple2!36650)

(assert (=> d!968526 (= lt!1157686 (lexTailRecV2!1036 thiss!18206 rules!2135 (seqFromList!3866 lt!1157517) (BalanceConc!21989 Empty!11187) (seqFromList!3866 lt!1157517) (BalanceConc!21991 Empty!11188)))))

(assert (=> d!968526 (= (lex!2321 thiss!18206 rules!2135 (seqFromList!3866 lt!1157517)) lt!1157686)))

(declare-fun b!3403780 () Bool)

(declare-fun res!1377444 () Bool)

(assert (=> b!3403780 (=> (not res!1377444) (not e!2113004))))

(declare-datatypes ((tuple2!36654 0))(
  ( (tuple2!36655 (_1!21461 List!37139) (_2!21461 List!37137)) )
))
(declare-fun lexList!1428 (LexerInterface!4995 List!37138 List!37137) tuple2!36654)

(assert (=> b!3403780 (= res!1377444 (= (list!13434 (_1!21459 lt!1157686)) (_1!21461 (lexList!1428 thiss!18206 rules!2135 (list!13431 (seqFromList!3866 lt!1157517))))))))

(declare-fun b!3403781 () Bool)

(assert (=> b!3403781 (= e!2113005 (= (_2!21459 lt!1157686) (seqFromList!3866 lt!1157517)))))

(declare-fun b!3403782 () Bool)

(assert (=> b!3403782 (= e!2113004 (= (list!13431 (_2!21459 lt!1157686)) (_2!21461 (lexList!1428 thiss!18206 rules!2135 (list!13431 (seqFromList!3866 lt!1157517))))))))

(assert (= (and d!968526 c!580166) b!3403778))

(assert (= (and d!968526 (not c!580166)) b!3403781))

(assert (= (and b!3403778 res!1377446) b!3403779))

(assert (= (and d!968526 res!1377445) b!3403780))

(assert (= (and b!3403780 res!1377444) b!3403782))

(declare-fun m!3777423 () Bool)

(assert (=> b!3403780 m!3777423))

(assert (=> b!3403780 m!3776847))

(declare-fun m!3777425 () Bool)

(assert (=> b!3403780 m!3777425))

(assert (=> b!3403780 m!3777425))

(declare-fun m!3777427 () Bool)

(assert (=> b!3403780 m!3777427))

(declare-fun m!3777429 () Bool)

(assert (=> b!3403779 m!3777429))

(declare-fun m!3777431 () Bool)

(assert (=> b!3403782 m!3777431))

(assert (=> b!3403782 m!3776847))

(assert (=> b!3403782 m!3777425))

(assert (=> b!3403782 m!3777425))

(assert (=> b!3403782 m!3777427))

(declare-fun m!3777433 () Bool)

(assert (=> d!968526 m!3777433))

(assert (=> d!968526 m!3776847))

(assert (=> d!968526 m!3776847))

(declare-fun m!3777435 () Bool)

(assert (=> d!968526 m!3777435))

(declare-fun m!3777437 () Bool)

(assert (=> b!3403778 m!3777437))

(assert (=> b!3403778 m!3776847))

(declare-fun m!3777439 () Bool)

(assert (=> b!3403778 m!3777439))

(assert (=> b!3403368 d!968526))

(declare-fun d!968528 () Bool)

(declare-fun fromListB!1743 (List!37137) BalanceConc!21988)

(assert (=> d!968528 (= (seqFromList!3866 lt!1157517) (fromListB!1743 lt!1157517))))

(declare-fun bs!556434 () Bool)

(assert (= bs!556434 d!968528))

(declare-fun m!3777441 () Bool)

(assert (=> bs!556434 m!3777441))

(assert (=> b!3403368 d!968528))

(declare-fun d!968530 () Bool)

(assert (=> d!968530 (= (list!13431 (charsOf!3420 (h!42435 tokens!494))) (list!13435 (c!580101 (charsOf!3420 (h!42435 tokens!494)))))))

(declare-fun bs!556435 () Bool)

(assert (= bs!556435 d!968530))

(declare-fun m!3777443 () Bool)

(assert (=> bs!556435 m!3777443))

(assert (=> b!3403364 d!968530))

(declare-fun d!968532 () Bool)

(declare-fun lt!1157689 () BalanceConc!21988)

(assert (=> d!968532 (= (list!13431 lt!1157689) (originalCharacters!6120 (h!42435 tokens!494)))))

(declare-fun dynLambda!15480 (Int TokenValue!5636) BalanceConc!21988)

(assert (=> d!968532 (= lt!1157689 (dynLambda!15480 (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))) (value!174531 (h!42435 tokens!494))))))

(assert (=> d!968532 (= (charsOf!3420 (h!42435 tokens!494)) lt!1157689)))

(declare-fun b_lambda!97257 () Bool)

(assert (=> (not b_lambda!97257) (not d!968532)))

(declare-fun t!266286 () Bool)

(declare-fun tb!182585 () Bool)

(assert (=> (and b!3403359 (= (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494))))) t!266286) tb!182585))

(declare-fun b!3403787 () Bool)

(declare-fun e!2113008 () Bool)

(declare-fun tp!1061998 () Bool)

(declare-fun inv!50131 (Conc!11187) Bool)

(assert (=> b!3403787 (= e!2113008 (and (inv!50131 (c!580101 (dynLambda!15480 (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))) (value!174531 (h!42435 tokens!494))))) tp!1061998))))

(declare-fun result!226296 () Bool)

(declare-fun inv!50132 (BalanceConc!21988) Bool)

(assert (=> tb!182585 (= result!226296 (and (inv!50132 (dynLambda!15480 (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))) (value!174531 (h!42435 tokens!494)))) e!2113008))))

(assert (= tb!182585 b!3403787))

(declare-fun m!3777445 () Bool)

(assert (=> b!3403787 m!3777445))

(declare-fun m!3777447 () Bool)

(assert (=> tb!182585 m!3777447))

(assert (=> d!968532 t!266286))

(declare-fun b_and!237705 () Bool)

(assert (= b_and!237657 (and (=> t!266286 result!226296) b_and!237705)))

(declare-fun t!266288 () Bool)

(declare-fun tb!182587 () Bool)

(assert (=> (and b!3403375 (= (toChars!7473 (transformation!5406 (h!42434 rules!2135))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494))))) t!266288) tb!182587))

(declare-fun result!226300 () Bool)

(assert (= result!226300 result!226296))

(assert (=> d!968532 t!266288))

(declare-fun b_and!237707 () Bool)

(assert (= b_and!237661 (and (=> t!266288 result!226300) b_and!237707)))

(declare-fun t!266290 () Bool)

(declare-fun tb!182589 () Bool)

(assert (=> (and b!3403376 (= (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494))))) t!266290) tb!182589))

(declare-fun result!226302 () Bool)

(assert (= result!226302 result!226296))

(assert (=> d!968532 t!266290))

(declare-fun b_and!237709 () Bool)

(assert (= b_and!237665 (and (=> t!266290 result!226302) b_and!237709)))

(declare-fun m!3777449 () Bool)

(assert (=> d!968532 m!3777449))

(declare-fun m!3777451 () Bool)

(assert (=> d!968532 m!3777451))

(assert (=> b!3403364 d!968532))

(declare-fun b!3403798 () Bool)

(declare-fun e!2113015 () Bool)

(declare-fun e!2113016 () Bool)

(assert (=> b!3403798 (= e!2113015 e!2113016)))

(declare-fun c!580171 () Bool)

(assert (=> b!3403798 (= c!580171 ((_ is IntegerValue!16909) (value!174531 (h!42435 tokens!494))))))

(declare-fun b!3403799 () Bool)

(declare-fun inv!17 (TokenValue!5636) Bool)

(assert (=> b!3403799 (= e!2113016 (inv!17 (value!174531 (h!42435 tokens!494))))))

(declare-fun b!3403800 () Bool)

(declare-fun res!1377449 () Bool)

(declare-fun e!2113017 () Bool)

(assert (=> b!3403800 (=> res!1377449 e!2113017)))

(assert (=> b!3403800 (= res!1377449 (not ((_ is IntegerValue!16910) (value!174531 (h!42435 tokens!494)))))))

(assert (=> b!3403800 (= e!2113016 e!2113017)))

(declare-fun d!968534 () Bool)

(declare-fun c!580172 () Bool)

(assert (=> d!968534 (= c!580172 ((_ is IntegerValue!16908) (value!174531 (h!42435 tokens!494))))))

(assert (=> d!968534 (= (inv!21 (value!174531 (h!42435 tokens!494))) e!2113015)))

(declare-fun b!3403801 () Bool)

(declare-fun inv!16 (TokenValue!5636) Bool)

(assert (=> b!3403801 (= e!2113015 (inv!16 (value!174531 (h!42435 tokens!494))))))

(declare-fun b!3403802 () Bool)

(declare-fun inv!15 (TokenValue!5636) Bool)

(assert (=> b!3403802 (= e!2113017 (inv!15 (value!174531 (h!42435 tokens!494))))))

(assert (= (and d!968534 c!580172) b!3403801))

(assert (= (and d!968534 (not c!580172)) b!3403798))

(assert (= (and b!3403798 c!580171) b!3403799))

(assert (= (and b!3403798 (not c!580171)) b!3403800))

(assert (= (and b!3403800 (not res!1377449)) b!3403802))

(declare-fun m!3777453 () Bool)

(assert (=> b!3403799 m!3777453))

(declare-fun m!3777455 () Bool)

(assert (=> b!3403801 m!3777455))

(declare-fun m!3777457 () Bool)

(assert (=> b!3403802 m!3777457))

(assert (=> b!3403365 d!968534))

(declare-fun b!3403805 () Bool)

(declare-fun res!1377451 () Bool)

(declare-fun e!2113019 () Bool)

(assert (=> b!3403805 (=> (not res!1377451) (not e!2113019))))

(declare-fun lt!1157690 () List!37137)

(assert (=> b!3403805 (= res!1377451 (= (size!28034 lt!1157690) (+ (size!28034 (++!9085 lt!1157517 lt!1157522)) (size!28034 lt!1157530))))))

(declare-fun b!3403803 () Bool)

(declare-fun e!2113018 () List!37137)

(assert (=> b!3403803 (= e!2113018 lt!1157530)))

(declare-fun b!3403806 () Bool)

(assert (=> b!3403806 (= e!2113019 (or (not (= lt!1157530 Nil!37013)) (= lt!1157690 (++!9085 lt!1157517 lt!1157522))))))

(declare-fun d!968536 () Bool)

(assert (=> d!968536 e!2113019))

(declare-fun res!1377450 () Bool)

(assert (=> d!968536 (=> (not res!1377450) (not e!2113019))))

(assert (=> d!968536 (= res!1377450 (= (content!5131 lt!1157690) ((_ map or) (content!5131 (++!9085 lt!1157517 lt!1157522)) (content!5131 lt!1157530))))))

(assert (=> d!968536 (= lt!1157690 e!2113018)))

(declare-fun c!580173 () Bool)

(assert (=> d!968536 (= c!580173 ((_ is Nil!37013) (++!9085 lt!1157517 lt!1157522)))))

(assert (=> d!968536 (= (++!9085 (++!9085 lt!1157517 lt!1157522) lt!1157530) lt!1157690)))

(declare-fun b!3403804 () Bool)

(assert (=> b!3403804 (= e!2113018 (Cons!37013 (h!42433 (++!9085 lt!1157517 lt!1157522)) (++!9085 (t!266238 (++!9085 lt!1157517 lt!1157522)) lt!1157530)))))

(assert (= (and d!968536 c!580173) b!3403803))

(assert (= (and d!968536 (not c!580173)) b!3403804))

(assert (= (and d!968536 res!1377450) b!3403805))

(assert (= (and b!3403805 res!1377451) b!3403806))

(declare-fun m!3777459 () Bool)

(assert (=> b!3403805 m!3777459))

(assert (=> b!3403805 m!3776831))

(declare-fun m!3777461 () Bool)

(assert (=> b!3403805 m!3777461))

(declare-fun m!3777463 () Bool)

(assert (=> b!3403805 m!3777463))

(declare-fun m!3777465 () Bool)

(assert (=> d!968536 m!3777465))

(assert (=> d!968536 m!3776831))

(declare-fun m!3777467 () Bool)

(assert (=> d!968536 m!3777467))

(declare-fun m!3777469 () Bool)

(assert (=> d!968536 m!3777469))

(declare-fun m!3777471 () Bool)

(assert (=> b!3403804 m!3777471))

(assert (=> b!3403361 d!968536))

(declare-fun b!3403809 () Bool)

(declare-fun res!1377453 () Bool)

(declare-fun e!2113021 () Bool)

(assert (=> b!3403809 (=> (not res!1377453) (not e!2113021))))

(declare-fun lt!1157691 () List!37137)

(assert (=> b!3403809 (= res!1377453 (= (size!28034 lt!1157691) (+ (size!28034 lt!1157517) (size!28034 lt!1157522))))))

(declare-fun b!3403807 () Bool)

(declare-fun e!2113020 () List!37137)

(assert (=> b!3403807 (= e!2113020 lt!1157522)))

(declare-fun b!3403810 () Bool)

(assert (=> b!3403810 (= e!2113021 (or (not (= lt!1157522 Nil!37013)) (= lt!1157691 lt!1157517)))))

(declare-fun d!968538 () Bool)

(assert (=> d!968538 e!2113021))

(declare-fun res!1377452 () Bool)

(assert (=> d!968538 (=> (not res!1377452) (not e!2113021))))

(assert (=> d!968538 (= res!1377452 (= (content!5131 lt!1157691) ((_ map or) (content!5131 lt!1157517) (content!5131 lt!1157522))))))

(assert (=> d!968538 (= lt!1157691 e!2113020)))

(declare-fun c!580174 () Bool)

(assert (=> d!968538 (= c!580174 ((_ is Nil!37013) lt!1157517))))

(assert (=> d!968538 (= (++!9085 lt!1157517 lt!1157522) lt!1157691)))

(declare-fun b!3403808 () Bool)

(assert (=> b!3403808 (= e!2113020 (Cons!37013 (h!42433 lt!1157517) (++!9085 (t!266238 lt!1157517) lt!1157522)))))

(assert (= (and d!968538 c!580174) b!3403807))

(assert (= (and d!968538 (not c!580174)) b!3403808))

(assert (= (and d!968538 res!1377452) b!3403809))

(assert (= (and b!3403809 res!1377453) b!3403810))

(declare-fun m!3777473 () Bool)

(assert (=> b!3403809 m!3777473))

(assert (=> b!3403809 m!3777309))

(declare-fun m!3777475 () Bool)

(assert (=> b!3403809 m!3777475))

(declare-fun m!3777477 () Bool)

(assert (=> d!968538 m!3777477))

(assert (=> d!968538 m!3777315))

(declare-fun m!3777479 () Bool)

(assert (=> d!968538 m!3777479))

(declare-fun m!3777481 () Bool)

(assert (=> b!3403808 m!3777481))

(assert (=> b!3403361 d!968538))

(declare-fun b!3403839 () Bool)

(declare-fun res!1377471 () Bool)

(declare-fun e!2113039 () Bool)

(assert (=> b!3403839 (=> (not res!1377471) (not e!2113039))))

(declare-fun call!245878 () Bool)

(assert (=> b!3403839 (= res!1377471 (not call!245878))))

(declare-fun b!3403840 () Bool)

(declare-fun e!2113042 () Bool)

(declare-fun head!7271 (List!37137) C!20516)

(assert (=> b!3403840 (= e!2113042 (not (= (head!7271 lt!1157517) (c!580100 (regex!5406 lt!1157514)))))))

(declare-fun b!3403841 () Bool)

(assert (=> b!3403841 (= e!2113039 (= (head!7271 lt!1157517) (c!580100 (regex!5406 lt!1157514))))))

(declare-fun b!3403842 () Bool)

(declare-fun e!2113041 () Bool)

(assert (=> b!3403842 (= e!2113041 e!2113042)))

(declare-fun res!1377473 () Bool)

(assert (=> b!3403842 (=> res!1377473 e!2113042)))

(assert (=> b!3403842 (= res!1377473 call!245878)))

(declare-fun b!3403843 () Bool)

(declare-fun e!2113040 () Bool)

(declare-fun nullable!3468 (Regex!10165) Bool)

(assert (=> b!3403843 (= e!2113040 (nullable!3468 (regex!5406 lt!1157514)))))

(declare-fun d!968540 () Bool)

(declare-fun e!2113037 () Bool)

(assert (=> d!968540 e!2113037))

(declare-fun c!580183 () Bool)

(assert (=> d!968540 (= c!580183 ((_ is EmptyExpr!10165) (regex!5406 lt!1157514)))))

(declare-fun lt!1157694 () Bool)

(assert (=> d!968540 (= lt!1157694 e!2113040)))

(declare-fun c!580181 () Bool)

(assert (=> d!968540 (= c!580181 (isEmpty!21293 lt!1157517))))

(declare-fun validRegex!4624 (Regex!10165) Bool)

(assert (=> d!968540 (validRegex!4624 (regex!5406 lt!1157514))))

(assert (=> d!968540 (= (matchR!4749 (regex!5406 lt!1157514) lt!1157517) lt!1157694)))

(declare-fun b!3403844 () Bool)

(declare-fun res!1377477 () Bool)

(declare-fun e!2113036 () Bool)

(assert (=> b!3403844 (=> res!1377477 e!2113036)))

(assert (=> b!3403844 (= res!1377477 e!2113039)))

(declare-fun res!1377472 () Bool)

(assert (=> b!3403844 (=> (not res!1377472) (not e!2113039))))

(assert (=> b!3403844 (= res!1377472 lt!1157694)))

(declare-fun b!3403845 () Bool)

(assert (=> b!3403845 (= e!2113037 (= lt!1157694 call!245878))))

(declare-fun b!3403846 () Bool)

(declare-fun res!1377470 () Bool)

(assert (=> b!3403846 (=> res!1377470 e!2113036)))

(assert (=> b!3403846 (= res!1377470 (not ((_ is ElementMatch!10165) (regex!5406 lt!1157514))))))

(declare-fun e!2113038 () Bool)

(assert (=> b!3403846 (= e!2113038 e!2113036)))

(declare-fun b!3403847 () Bool)

(declare-fun derivativeStep!3021 (Regex!10165 C!20516) Regex!10165)

(declare-fun tail!5393 (List!37137) List!37137)

(assert (=> b!3403847 (= e!2113040 (matchR!4749 (derivativeStep!3021 (regex!5406 lt!1157514) (head!7271 lt!1157517)) (tail!5393 lt!1157517)))))

(declare-fun b!3403848 () Bool)

(assert (=> b!3403848 (= e!2113038 (not lt!1157694))))

(declare-fun b!3403849 () Bool)

(assert (=> b!3403849 (= e!2113036 e!2113041)))

(declare-fun res!1377474 () Bool)

(assert (=> b!3403849 (=> (not res!1377474) (not e!2113041))))

(assert (=> b!3403849 (= res!1377474 (not lt!1157694))))

(declare-fun bm!245873 () Bool)

(assert (=> bm!245873 (= call!245878 (isEmpty!21293 lt!1157517))))

(declare-fun b!3403850 () Bool)

(declare-fun res!1377475 () Bool)

(assert (=> b!3403850 (=> res!1377475 e!2113042)))

(assert (=> b!3403850 (= res!1377475 (not (isEmpty!21293 (tail!5393 lt!1157517))))))

(declare-fun b!3403851 () Bool)

(assert (=> b!3403851 (= e!2113037 e!2113038)))

(declare-fun c!580182 () Bool)

(assert (=> b!3403851 (= c!580182 ((_ is EmptyLang!10165) (regex!5406 lt!1157514)))))

(declare-fun b!3403852 () Bool)

(declare-fun res!1377476 () Bool)

(assert (=> b!3403852 (=> (not res!1377476) (not e!2113039))))

(assert (=> b!3403852 (= res!1377476 (isEmpty!21293 (tail!5393 lt!1157517)))))

(assert (= (and d!968540 c!580181) b!3403843))

(assert (= (and d!968540 (not c!580181)) b!3403847))

(assert (= (and d!968540 c!580183) b!3403845))

(assert (= (and d!968540 (not c!580183)) b!3403851))

(assert (= (and b!3403851 c!580182) b!3403848))

(assert (= (and b!3403851 (not c!580182)) b!3403846))

(assert (= (and b!3403846 (not res!1377470)) b!3403844))

(assert (= (and b!3403844 res!1377472) b!3403839))

(assert (= (and b!3403839 res!1377471) b!3403852))

(assert (= (and b!3403852 res!1377476) b!3403841))

(assert (= (and b!3403844 (not res!1377477)) b!3403849))

(assert (= (and b!3403849 res!1377474) b!3403842))

(assert (= (and b!3403842 (not res!1377473)) b!3403850))

(assert (= (and b!3403850 (not res!1377475)) b!3403840))

(assert (= (or b!3403845 b!3403839 b!3403842) bm!245873))

(declare-fun m!3777483 () Bool)

(assert (=> b!3403843 m!3777483))

(declare-fun m!3777485 () Bool)

(assert (=> b!3403840 m!3777485))

(assert (=> d!968540 m!3776799))

(declare-fun m!3777487 () Bool)

(assert (=> d!968540 m!3777487))

(assert (=> bm!245873 m!3776799))

(declare-fun m!3777489 () Bool)

(assert (=> b!3403850 m!3777489))

(assert (=> b!3403850 m!3777489))

(declare-fun m!3777491 () Bool)

(assert (=> b!3403850 m!3777491))

(assert (=> b!3403847 m!3777485))

(assert (=> b!3403847 m!3777485))

(declare-fun m!3777493 () Bool)

(assert (=> b!3403847 m!3777493))

(assert (=> b!3403847 m!3777489))

(assert (=> b!3403847 m!3777493))

(assert (=> b!3403847 m!3777489))

(declare-fun m!3777495 () Bool)

(assert (=> b!3403847 m!3777495))

(assert (=> b!3403841 m!3777485))

(assert (=> b!3403852 m!3777489))

(assert (=> b!3403852 m!3777489))

(assert (=> b!3403852 m!3777491))

(assert (=> b!3403362 d!968540))

(declare-fun d!968542 () Bool)

(assert (=> d!968542 (= (get!11820 lt!1157524) (v!36639 lt!1157524))))

(assert (=> b!3403362 d!968542))

(declare-fun d!968544 () Bool)

(declare-fun c!580186 () Bool)

(assert (=> d!968544 (= c!580186 ((_ is Cons!37015) tokens!494))))

(declare-fun e!2113045 () List!37137)

(assert (=> d!968544 (= (printWithSeparatorTokenList!282 thiss!18206 tokens!494 separatorToken!241) e!2113045)))

(declare-fun b!3403857 () Bool)

(assert (=> b!3403857 (= e!2113045 (++!9085 (++!9085 (list!13431 (charsOf!3420 (h!42435 tokens!494))) (list!13431 (charsOf!3420 separatorToken!241))) (printWithSeparatorTokenList!282 thiss!18206 (t!266240 tokens!494) separatorToken!241)))))

(declare-fun b!3403858 () Bool)

(assert (=> b!3403858 (= e!2113045 Nil!37013)))

(assert (= (and d!968544 c!580186) b!3403857))

(assert (= (and d!968544 (not c!580186)) b!3403858))

(declare-fun m!3777497 () Bool)

(assert (=> b!3403857 m!3777497))

(assert (=> b!3403857 m!3776879))

(declare-fun m!3777499 () Bool)

(assert (=> b!3403857 m!3777499))

(assert (=> b!3403857 m!3776889))

(assert (=> b!3403857 m!3776891))

(assert (=> b!3403857 m!3776815))

(assert (=> b!3403857 m!3776815))

(assert (=> b!3403857 m!3776817))

(assert (=> b!3403857 m!3776817))

(assert (=> b!3403857 m!3776891))

(assert (=> b!3403857 m!3777497))

(assert (=> b!3403857 m!3776879))

(assert (=> b!3403857 m!3776889))

(assert (=> b!3403363 d!968544))

(declare-fun b!3403861 () Bool)

(declare-fun res!1377479 () Bool)

(declare-fun e!2113047 () Bool)

(assert (=> b!3403861 (=> (not res!1377479) (not e!2113047))))

(declare-fun lt!1157695 () List!37137)

(assert (=> b!3403861 (= res!1377479 (= (size!28034 lt!1157695) (+ (size!28034 (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494))))) (size!28034 lt!1157522))))))

(declare-fun b!3403859 () Bool)

(declare-fun e!2113046 () List!37137)

(assert (=> b!3403859 (= e!2113046 lt!1157522)))

(declare-fun b!3403862 () Bool)

(assert (=> b!3403862 (= e!2113047 (or (not (= lt!1157522 Nil!37013)) (= lt!1157695 (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494)))))))))

(declare-fun d!968546 () Bool)

(assert (=> d!968546 e!2113047))

(declare-fun res!1377478 () Bool)

(assert (=> d!968546 (=> (not res!1377478) (not e!2113047))))

(assert (=> d!968546 (= res!1377478 (= (content!5131 lt!1157695) ((_ map or) (content!5131 (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494))))) (content!5131 lt!1157522))))))

(assert (=> d!968546 (= lt!1157695 e!2113046)))

(declare-fun c!580187 () Bool)

(assert (=> d!968546 (= c!580187 ((_ is Nil!37013) (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494))))))))

(assert (=> d!968546 (= (++!9085 (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494)))) lt!1157522) lt!1157695)))

(declare-fun b!3403860 () Bool)

(assert (=> b!3403860 (= e!2113046 (Cons!37013 (h!42433 (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494))))) (++!9085 (t!266238 (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494))))) lt!1157522)))))

(assert (= (and d!968546 c!580187) b!3403859))

(assert (= (and d!968546 (not c!580187)) b!3403860))

(assert (= (and d!968546 res!1377478) b!3403861))

(assert (= (and b!3403861 res!1377479) b!3403862))

(declare-fun m!3777501 () Bool)

(assert (=> b!3403861 m!3777501))

(assert (=> b!3403861 m!3776881))

(declare-fun m!3777503 () Bool)

(assert (=> b!3403861 m!3777503))

(assert (=> b!3403861 m!3777475))

(declare-fun m!3777505 () Bool)

(assert (=> d!968546 m!3777505))

(assert (=> d!968546 m!3776881))

(declare-fun m!3777507 () Bool)

(assert (=> d!968546 m!3777507))

(assert (=> d!968546 m!3777479))

(declare-fun m!3777509 () Bool)

(assert (=> b!3403860 m!3777509))

(assert (=> b!3403363 d!968546))

(declare-fun b!3403865 () Bool)

(declare-fun res!1377481 () Bool)

(declare-fun e!2113049 () Bool)

(assert (=> b!3403865 (=> (not res!1377481) (not e!2113049))))

(declare-fun lt!1157696 () List!37137)

(assert (=> b!3403865 (= res!1377481 (= (size!28034 lt!1157696) (+ (size!28034 lt!1157522) (size!28034 lt!1157530))))))

(declare-fun b!3403863 () Bool)

(declare-fun e!2113048 () List!37137)

(assert (=> b!3403863 (= e!2113048 lt!1157530)))

(declare-fun b!3403866 () Bool)

(assert (=> b!3403866 (= e!2113049 (or (not (= lt!1157530 Nil!37013)) (= lt!1157696 lt!1157522)))))

(declare-fun d!968548 () Bool)

(assert (=> d!968548 e!2113049))

(declare-fun res!1377480 () Bool)

(assert (=> d!968548 (=> (not res!1377480) (not e!2113049))))

(assert (=> d!968548 (= res!1377480 (= (content!5131 lt!1157696) ((_ map or) (content!5131 lt!1157522) (content!5131 lt!1157530))))))

(assert (=> d!968548 (= lt!1157696 e!2113048)))

(declare-fun c!580188 () Bool)

(assert (=> d!968548 (= c!580188 ((_ is Nil!37013) lt!1157522))))

(assert (=> d!968548 (= (++!9085 lt!1157522 lt!1157530) lt!1157696)))

(declare-fun b!3403864 () Bool)

(assert (=> b!3403864 (= e!2113048 (Cons!37013 (h!42433 lt!1157522) (++!9085 (t!266238 lt!1157522) lt!1157530)))))

(assert (= (and d!968548 c!580188) b!3403863))

(assert (= (and d!968548 (not c!580188)) b!3403864))

(assert (= (and d!968548 res!1377480) b!3403865))

(assert (= (and b!3403865 res!1377481) b!3403866))

(declare-fun m!3777511 () Bool)

(assert (=> b!3403865 m!3777511))

(assert (=> b!3403865 m!3777475))

(assert (=> b!3403865 m!3777463))

(declare-fun m!3777513 () Bool)

(assert (=> d!968548 m!3777513))

(assert (=> d!968548 m!3777479))

(assert (=> d!968548 m!3777469))

(declare-fun m!3777515 () Bool)

(assert (=> b!3403864 m!3777515))

(assert (=> b!3403363 d!968548))

(declare-fun d!968550 () Bool)

(declare-fun lt!1157697 () BalanceConc!21988)

(assert (=> d!968550 (= (list!13431 lt!1157697) (originalCharacters!6120 separatorToken!241))))

(assert (=> d!968550 (= lt!1157697 (dynLambda!15480 (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))) (value!174531 separatorToken!241)))))

(assert (=> d!968550 (= (charsOf!3420 separatorToken!241) lt!1157697)))

(declare-fun b_lambda!97259 () Bool)

(assert (=> (not b_lambda!97259) (not d!968550)))

(declare-fun t!266292 () Bool)

(declare-fun tb!182591 () Bool)

(assert (=> (and b!3403359 (= (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))) (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241)))) t!266292) tb!182591))

(declare-fun b!3403867 () Bool)

(declare-fun e!2113050 () Bool)

(declare-fun tp!1061999 () Bool)

(assert (=> b!3403867 (= e!2113050 (and (inv!50131 (c!580101 (dynLambda!15480 (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))) (value!174531 separatorToken!241)))) tp!1061999))))

(declare-fun result!226304 () Bool)

(assert (=> tb!182591 (= result!226304 (and (inv!50132 (dynLambda!15480 (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))) (value!174531 separatorToken!241))) e!2113050))))

(assert (= tb!182591 b!3403867))

(declare-fun m!3777517 () Bool)

(assert (=> b!3403867 m!3777517))

(declare-fun m!3777519 () Bool)

(assert (=> tb!182591 m!3777519))

(assert (=> d!968550 t!266292))

(declare-fun b_and!237711 () Bool)

(assert (= b_and!237705 (and (=> t!266292 result!226304) b_and!237711)))

(declare-fun t!266294 () Bool)

(declare-fun tb!182593 () Bool)

(assert (=> (and b!3403375 (= (toChars!7473 (transformation!5406 (h!42434 rules!2135))) (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241)))) t!266294) tb!182593))

(declare-fun result!226306 () Bool)

(assert (= result!226306 result!226304))

(assert (=> d!968550 t!266294))

(declare-fun b_and!237713 () Bool)

(assert (= b_and!237707 (and (=> t!266294 result!226306) b_and!237713)))

(declare-fun tb!182595 () Bool)

(declare-fun t!266296 () Bool)

(assert (=> (and b!3403376 (= (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))) (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241)))) t!266296) tb!182595))

(declare-fun result!226308 () Bool)

(assert (= result!226308 result!226304))

(assert (=> d!968550 t!266296))

(declare-fun b_and!237715 () Bool)

(assert (= b_and!237709 (and (=> t!266296 result!226308) b_and!237715)))

(declare-fun m!3777521 () Bool)

(assert (=> d!968550 m!3777521))

(declare-fun m!3777523 () Bool)

(assert (=> d!968550 m!3777523))

(assert (=> b!3403363 d!968550))

(declare-fun d!968552 () Bool)

(assert (=> d!968552 (= (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494)))) (list!13435 (c!580101 (charsOf!3420 (h!42435 (t!266240 tokens!494))))))))

(declare-fun bs!556436 () Bool)

(assert (= bs!556436 d!968552))

(declare-fun m!3777525 () Bool)

(assert (=> bs!556436 m!3777525))

(assert (=> b!3403363 d!968552))

(declare-fun d!968554 () Bool)

(declare-fun c!580189 () Bool)

(assert (=> d!968554 (= c!580189 ((_ is Cons!37015) (t!266240 (t!266240 tokens!494))))))

(declare-fun e!2113051 () List!37137)

(assert (=> d!968554 (= (printWithSeparatorTokenList!282 thiss!18206 (t!266240 (t!266240 tokens!494)) separatorToken!241) e!2113051)))

(declare-fun b!3403868 () Bool)

(assert (=> b!3403868 (= e!2113051 (++!9085 (++!9085 (list!13431 (charsOf!3420 (h!42435 (t!266240 (t!266240 tokens!494))))) (list!13431 (charsOf!3420 separatorToken!241))) (printWithSeparatorTokenList!282 thiss!18206 (t!266240 (t!266240 (t!266240 tokens!494))) separatorToken!241)))))

(declare-fun b!3403869 () Bool)

(assert (=> b!3403869 (= e!2113051 Nil!37013)))

(assert (= (and d!968554 c!580189) b!3403868))

(assert (= (and d!968554 (not c!580189)) b!3403869))

(declare-fun m!3777527 () Bool)

(assert (=> b!3403868 m!3777527))

(declare-fun m!3777529 () Bool)

(assert (=> b!3403868 m!3777529))

(declare-fun m!3777531 () Bool)

(assert (=> b!3403868 m!3777531))

(assert (=> b!3403868 m!3776889))

(assert (=> b!3403868 m!3776891))

(declare-fun m!3777533 () Bool)

(assert (=> b!3403868 m!3777533))

(assert (=> b!3403868 m!3777533))

(declare-fun m!3777535 () Bool)

(assert (=> b!3403868 m!3777535))

(assert (=> b!3403868 m!3777535))

(assert (=> b!3403868 m!3776891))

(assert (=> b!3403868 m!3777527))

(assert (=> b!3403868 m!3777529))

(assert (=> b!3403868 m!3776889))

(assert (=> b!3403363 d!968554))

(declare-fun d!968556 () Bool)

(declare-fun c!580190 () Bool)

(assert (=> d!968556 (= c!580190 ((_ is Cons!37015) (t!266240 tokens!494)))))

(declare-fun e!2113052 () List!37137)

(assert (=> d!968556 (= (printWithSeparatorTokenList!282 thiss!18206 (t!266240 tokens!494) separatorToken!241) e!2113052)))

(declare-fun b!3403870 () Bool)

(assert (=> b!3403870 (= e!2113052 (++!9085 (++!9085 (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494)))) (list!13431 (charsOf!3420 separatorToken!241))) (printWithSeparatorTokenList!282 thiss!18206 (t!266240 (t!266240 tokens!494)) separatorToken!241)))))

(declare-fun b!3403871 () Bool)

(assert (=> b!3403871 (= e!2113052 Nil!37013)))

(assert (= (and d!968556 c!580190) b!3403870))

(assert (= (and d!968556 (not c!580190)) b!3403871))

(declare-fun m!3777537 () Bool)

(assert (=> b!3403870 m!3777537))

(assert (=> b!3403870 m!3776883))

(declare-fun m!3777539 () Bool)

(assert (=> b!3403870 m!3777539))

(assert (=> b!3403870 m!3776889))

(assert (=> b!3403870 m!3776891))

(assert (=> b!3403870 m!3776875))

(assert (=> b!3403870 m!3776875))

(assert (=> b!3403870 m!3776881))

(assert (=> b!3403870 m!3776881))

(assert (=> b!3403870 m!3776891))

(assert (=> b!3403870 m!3777537))

(assert (=> b!3403870 m!3776883))

(assert (=> b!3403870 m!3776889))

(assert (=> b!3403363 d!968556))

(declare-fun b!3403874 () Bool)

(declare-fun res!1377483 () Bool)

(declare-fun e!2113054 () Bool)

(assert (=> b!3403874 (=> (not res!1377483) (not e!2113054))))

(declare-fun lt!1157698 () List!37137)

(assert (=> b!3403874 (= res!1377483 (= (size!28034 lt!1157698) (+ (size!28034 (++!9085 (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494)))) lt!1157522)) (size!28034 (printWithSeparatorTokenList!282 thiss!18206 (t!266240 (t!266240 tokens!494)) separatorToken!241)))))))

(declare-fun e!2113053 () List!37137)

(declare-fun b!3403872 () Bool)

(assert (=> b!3403872 (= e!2113053 (printWithSeparatorTokenList!282 thiss!18206 (t!266240 (t!266240 tokens!494)) separatorToken!241))))

(declare-fun b!3403875 () Bool)

(assert (=> b!3403875 (= e!2113054 (or (not (= (printWithSeparatorTokenList!282 thiss!18206 (t!266240 (t!266240 tokens!494)) separatorToken!241) Nil!37013)) (= lt!1157698 (++!9085 (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494)))) lt!1157522))))))

(declare-fun d!968558 () Bool)

(assert (=> d!968558 e!2113054))

(declare-fun res!1377482 () Bool)

(assert (=> d!968558 (=> (not res!1377482) (not e!2113054))))

(assert (=> d!968558 (= res!1377482 (= (content!5131 lt!1157698) ((_ map or) (content!5131 (++!9085 (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494)))) lt!1157522)) (content!5131 (printWithSeparatorTokenList!282 thiss!18206 (t!266240 (t!266240 tokens!494)) separatorToken!241)))))))

(assert (=> d!968558 (= lt!1157698 e!2113053)))

(declare-fun c!580191 () Bool)

(assert (=> d!968558 (= c!580191 ((_ is Nil!37013) (++!9085 (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494)))) lt!1157522)))))

(assert (=> d!968558 (= (++!9085 (++!9085 (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494)))) lt!1157522) (printWithSeparatorTokenList!282 thiss!18206 (t!266240 (t!266240 tokens!494)) separatorToken!241)) lt!1157698)))

(declare-fun b!3403873 () Bool)

(assert (=> b!3403873 (= e!2113053 (Cons!37013 (h!42433 (++!9085 (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494)))) lt!1157522)) (++!9085 (t!266238 (++!9085 (list!13431 (charsOf!3420 (h!42435 (t!266240 tokens!494)))) lt!1157522)) (printWithSeparatorTokenList!282 thiss!18206 (t!266240 (t!266240 tokens!494)) separatorToken!241))))))

(assert (= (and d!968558 c!580191) b!3403872))

(assert (= (and d!968558 (not c!580191)) b!3403873))

(assert (= (and d!968558 res!1377482) b!3403874))

(assert (= (and b!3403874 res!1377483) b!3403875))

(declare-fun m!3777541 () Bool)

(assert (=> b!3403874 m!3777541))

(assert (=> b!3403874 m!3776887))

(declare-fun m!3777543 () Bool)

(assert (=> b!3403874 m!3777543))

(assert (=> b!3403874 m!3776883))

(declare-fun m!3777545 () Bool)

(assert (=> b!3403874 m!3777545))

(declare-fun m!3777547 () Bool)

(assert (=> d!968558 m!3777547))

(assert (=> d!968558 m!3776887))

(declare-fun m!3777549 () Bool)

(assert (=> d!968558 m!3777549))

(assert (=> d!968558 m!3776883))

(declare-fun m!3777551 () Bool)

(assert (=> d!968558 m!3777551))

(assert (=> b!3403873 m!3776883))

(declare-fun m!3777553 () Bool)

(assert (=> b!3403873 m!3777553))

(assert (=> b!3403363 d!968558))

(declare-fun d!968560 () Bool)

(assert (=> d!968560 (= (list!13431 (charsOf!3420 separatorToken!241)) (list!13435 (c!580101 (charsOf!3420 separatorToken!241))))))

(declare-fun bs!556437 () Bool)

(assert (= bs!556437 d!968560))

(declare-fun m!3777555 () Bool)

(assert (=> bs!556437 m!3777555))

(assert (=> b!3403363 d!968560))

(declare-fun d!968562 () Bool)

(declare-fun lt!1157699 () BalanceConc!21988)

(assert (=> d!968562 (= (list!13431 lt!1157699) (originalCharacters!6120 (h!42435 (t!266240 tokens!494))))))

(assert (=> d!968562 (= lt!1157699 (dynLambda!15480 (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))) (value!174531 (h!42435 (t!266240 tokens!494)))))))

(assert (=> d!968562 (= (charsOf!3420 (h!42435 (t!266240 tokens!494))) lt!1157699)))

(declare-fun b_lambda!97261 () Bool)

(assert (=> (not b_lambda!97261) (not d!968562)))

(declare-fun tb!182597 () Bool)

(declare-fun t!266298 () Bool)

(assert (=> (and b!3403359 (= (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494)))))) t!266298) tb!182597))

(declare-fun b!3403876 () Bool)

(declare-fun e!2113055 () Bool)

(declare-fun tp!1062000 () Bool)

(assert (=> b!3403876 (= e!2113055 (and (inv!50131 (c!580101 (dynLambda!15480 (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))) (value!174531 (h!42435 (t!266240 tokens!494)))))) tp!1062000))))

(declare-fun result!226310 () Bool)

(assert (=> tb!182597 (= result!226310 (and (inv!50132 (dynLambda!15480 (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))) (value!174531 (h!42435 (t!266240 tokens!494))))) e!2113055))))

(assert (= tb!182597 b!3403876))

(declare-fun m!3777557 () Bool)

(assert (=> b!3403876 m!3777557))

(declare-fun m!3777559 () Bool)

(assert (=> tb!182597 m!3777559))

(assert (=> d!968562 t!266298))

(declare-fun b_and!237717 () Bool)

(assert (= b_and!237711 (and (=> t!266298 result!226310) b_and!237717)))

(declare-fun t!266300 () Bool)

(declare-fun tb!182599 () Bool)

(assert (=> (and b!3403375 (= (toChars!7473 (transformation!5406 (h!42434 rules!2135))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494)))))) t!266300) tb!182599))

(declare-fun result!226312 () Bool)

(assert (= result!226312 result!226310))

(assert (=> d!968562 t!266300))

(declare-fun b_and!237719 () Bool)

(assert (= b_and!237713 (and (=> t!266300 result!226312) b_and!237719)))

(declare-fun t!266302 () Bool)

(declare-fun tb!182601 () Bool)

(assert (=> (and b!3403376 (= (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494)))))) t!266302) tb!182601))

(declare-fun result!226314 () Bool)

(assert (= result!226314 result!226310))

(assert (=> d!968562 t!266302))

(declare-fun b_and!237721 () Bool)

(assert (= b_and!237715 (and (=> t!266302 result!226314) b_and!237721)))

(declare-fun m!3777561 () Bool)

(assert (=> d!968562 m!3777561))

(declare-fun m!3777563 () Bool)

(assert (=> d!968562 m!3777563))

(assert (=> b!3403363 d!968562))

(declare-fun b!3403879 () Bool)

(declare-fun res!1377485 () Bool)

(declare-fun e!2113057 () Bool)

(assert (=> b!3403879 (=> (not res!1377485) (not e!2113057))))

(declare-fun lt!1157700 () List!37137)

(assert (=> b!3403879 (= res!1377485 (= (size!28034 lt!1157700) (+ (size!28034 lt!1157517) (size!28034 Nil!37013))))))

(declare-fun b!3403877 () Bool)

(declare-fun e!2113056 () List!37137)

(assert (=> b!3403877 (= e!2113056 Nil!37013)))

(declare-fun b!3403880 () Bool)

(assert (=> b!3403880 (= e!2113057 (or (not (= Nil!37013 Nil!37013)) (= lt!1157700 lt!1157517)))))

(declare-fun d!968564 () Bool)

(assert (=> d!968564 e!2113057))

(declare-fun res!1377484 () Bool)

(assert (=> d!968564 (=> (not res!1377484) (not e!2113057))))

(assert (=> d!968564 (= res!1377484 (= (content!5131 lt!1157700) ((_ map or) (content!5131 lt!1157517) (content!5131 Nil!37013))))))

(assert (=> d!968564 (= lt!1157700 e!2113056)))

(declare-fun c!580192 () Bool)

(assert (=> d!968564 (= c!580192 ((_ is Nil!37013) lt!1157517))))

(assert (=> d!968564 (= (++!9085 lt!1157517 Nil!37013) lt!1157700)))

(declare-fun b!3403878 () Bool)

(assert (=> b!3403878 (= e!2113056 (Cons!37013 (h!42433 lt!1157517) (++!9085 (t!266238 lt!1157517) Nil!37013)))))

(assert (= (and d!968564 c!580192) b!3403877))

(assert (= (and d!968564 (not c!580192)) b!3403878))

(assert (= (and d!968564 res!1377484) b!3403879))

(assert (= (and b!3403879 res!1377485) b!3403880))

(declare-fun m!3777565 () Bool)

(assert (=> b!3403879 m!3777565))

(assert (=> b!3403879 m!3777309))

(declare-fun m!3777567 () Bool)

(assert (=> b!3403879 m!3777567))

(declare-fun m!3777569 () Bool)

(assert (=> d!968564 m!3777569))

(assert (=> d!968564 m!3777315))

(declare-fun m!3777571 () Bool)

(assert (=> d!968564 m!3777571))

(declare-fun m!3777573 () Bool)

(assert (=> b!3403878 m!3777573))

(assert (=> b!3403358 d!968564))

(declare-fun d!968566 () Bool)

(declare-fun lt!1157701 () Bool)

(declare-fun e!2113059 () Bool)

(assert (=> d!968566 (= lt!1157701 e!2113059)))

(declare-fun res!1377487 () Bool)

(assert (=> d!968566 (=> (not res!1377487) (not e!2113059))))

(assert (=> d!968566 (= res!1377487 (= (list!13434 (_1!21459 (lex!2321 thiss!18206 rules!2135 (print!2060 thiss!18206 (singletonSeq!2502 (h!42435 tokens!494)))))) (list!13434 (singletonSeq!2502 (h!42435 tokens!494)))))))

(declare-fun e!2113058 () Bool)

(assert (=> d!968566 (= lt!1157701 e!2113058)))

(declare-fun res!1377486 () Bool)

(assert (=> d!968566 (=> (not res!1377486) (not e!2113058))))

(declare-fun lt!1157702 () tuple2!36650)

(assert (=> d!968566 (= res!1377486 (= (size!28032 (_1!21459 lt!1157702)) 1))))

(assert (=> d!968566 (= lt!1157702 (lex!2321 thiss!18206 rules!2135 (print!2060 thiss!18206 (singletonSeq!2502 (h!42435 tokens!494)))))))

(assert (=> d!968566 (not (isEmpty!21294 rules!2135))))

(assert (=> d!968566 (= (rulesProduceIndividualToken!2487 thiss!18206 rules!2135 (h!42435 tokens!494)) lt!1157701)))

(declare-fun b!3403881 () Bool)

(declare-fun res!1377488 () Bool)

(assert (=> b!3403881 (=> (not res!1377488) (not e!2113058))))

(assert (=> b!3403881 (= res!1377488 (= (apply!8648 (_1!21459 lt!1157702) 0) (h!42435 tokens!494)))))

(declare-fun b!3403882 () Bool)

(assert (=> b!3403882 (= e!2113058 (isEmpty!21301 (_2!21459 lt!1157702)))))

(declare-fun b!3403883 () Bool)

(assert (=> b!3403883 (= e!2113059 (isEmpty!21301 (_2!21459 (lex!2321 thiss!18206 rules!2135 (print!2060 thiss!18206 (singletonSeq!2502 (h!42435 tokens!494)))))))))

(assert (= (and d!968566 res!1377486) b!3403881))

(assert (= (and b!3403881 res!1377488) b!3403882))

(assert (= (and d!968566 res!1377487) b!3403883))

(assert (=> d!968566 m!3776853))

(declare-fun m!3777575 () Bool)

(assert (=> d!968566 m!3777575))

(declare-fun m!3777577 () Bool)

(assert (=> d!968566 m!3777577))

(declare-fun m!3777579 () Bool)

(assert (=> d!968566 m!3777579))

(assert (=> d!968566 m!3776811))

(assert (=> d!968566 m!3777575))

(declare-fun m!3777581 () Bool)

(assert (=> d!968566 m!3777581))

(assert (=> d!968566 m!3776811))

(declare-fun m!3777583 () Bool)

(assert (=> d!968566 m!3777583))

(assert (=> d!968566 m!3776811))

(declare-fun m!3777585 () Bool)

(assert (=> b!3403881 m!3777585))

(declare-fun m!3777587 () Bool)

(assert (=> b!3403882 m!3777587))

(assert (=> b!3403883 m!3776811))

(assert (=> b!3403883 m!3776811))

(assert (=> b!3403883 m!3777575))

(assert (=> b!3403883 m!3777575))

(assert (=> b!3403883 m!3777577))

(declare-fun m!3777589 () Bool)

(assert (=> b!3403883 m!3777589))

(assert (=> b!3403360 d!968566))

(declare-fun d!968568 () Bool)

(declare-fun res!1377493 () Bool)

(declare-fun e!2113062 () Bool)

(assert (=> d!968568 (=> (not res!1377493) (not e!2113062))))

(assert (=> d!968568 (= res!1377493 (not (isEmpty!21293 (originalCharacters!6120 (h!42435 tokens!494)))))))

(assert (=> d!968568 (= (inv!50128 (h!42435 tokens!494)) e!2113062)))

(declare-fun b!3403888 () Bool)

(declare-fun res!1377494 () Bool)

(assert (=> b!3403888 (=> (not res!1377494) (not e!2113062))))

(assert (=> b!3403888 (= res!1377494 (= (originalCharacters!6120 (h!42435 tokens!494)) (list!13431 (dynLambda!15480 (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))) (value!174531 (h!42435 tokens!494))))))))

(declare-fun b!3403889 () Bool)

(assert (=> b!3403889 (= e!2113062 (= (size!28029 (h!42435 tokens!494)) (size!28034 (originalCharacters!6120 (h!42435 tokens!494)))))))

(assert (= (and d!968568 res!1377493) b!3403888))

(assert (= (and b!3403888 res!1377494) b!3403889))

(declare-fun b_lambda!97263 () Bool)

(assert (=> (not b_lambda!97263) (not b!3403888)))

(assert (=> b!3403888 t!266286))

(declare-fun b_and!237723 () Bool)

(assert (= b_and!237717 (and (=> t!266286 result!226296) b_and!237723)))

(assert (=> b!3403888 t!266288))

(declare-fun b_and!237725 () Bool)

(assert (= b_and!237719 (and (=> t!266288 result!226300) b_and!237725)))

(assert (=> b!3403888 t!266290))

(declare-fun b_and!237727 () Bool)

(assert (= b_and!237721 (and (=> t!266290 result!226302) b_and!237727)))

(declare-fun m!3777591 () Bool)

(assert (=> d!968568 m!3777591))

(assert (=> b!3403888 m!3777451))

(assert (=> b!3403888 m!3777451))

(declare-fun m!3777593 () Bool)

(assert (=> b!3403888 m!3777593))

(declare-fun m!3777595 () Bool)

(assert (=> b!3403889 m!3777595))

(assert (=> b!3403356 d!968568))

(declare-fun d!968570 () Bool)

(assert (=> d!968570 (= (inv!50124 (tag!5994 (rule!7970 separatorToken!241))) (= (mod (str.len (value!174530 (tag!5994 (rule!7970 separatorToken!241)))) 2) 0))))

(assert (=> b!3403357 d!968570))

(declare-fun d!968572 () Bool)

(declare-fun res!1377497 () Bool)

(declare-fun e!2113065 () Bool)

(assert (=> d!968572 (=> (not res!1377497) (not e!2113065))))

(declare-fun semiInverseModEq!2263 (Int Int) Bool)

(assert (=> d!968572 (= res!1377497 (semiInverseModEq!2263 (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))) (toValue!7614 (transformation!5406 (rule!7970 separatorToken!241)))))))

(assert (=> d!968572 (= (inv!50127 (transformation!5406 (rule!7970 separatorToken!241))) e!2113065)))

(declare-fun b!3403892 () Bool)

(declare-fun equivClasses!2162 (Int Int) Bool)

(assert (=> b!3403892 (= e!2113065 (equivClasses!2162 (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))) (toValue!7614 (transformation!5406 (rule!7970 separatorToken!241)))))))

(assert (= (and d!968572 res!1377497) b!3403892))

(declare-fun m!3777597 () Bool)

(assert (=> d!968572 m!3777597))

(declare-fun m!3777599 () Bool)

(assert (=> b!3403892 m!3777599))

(assert (=> b!3403357 d!968572))

(declare-fun b!3403893 () Bool)

(declare-fun e!2113066 () Bool)

(declare-fun e!2113067 () Bool)

(assert (=> b!3403893 (= e!2113066 e!2113067)))

(declare-fun c!580193 () Bool)

(assert (=> b!3403893 (= c!580193 ((_ is IntegerValue!16909) (value!174531 separatorToken!241)))))

(declare-fun b!3403894 () Bool)

(assert (=> b!3403894 (= e!2113067 (inv!17 (value!174531 separatorToken!241)))))

(declare-fun b!3403895 () Bool)

(declare-fun res!1377498 () Bool)

(declare-fun e!2113068 () Bool)

(assert (=> b!3403895 (=> res!1377498 e!2113068)))

(assert (=> b!3403895 (= res!1377498 (not ((_ is IntegerValue!16910) (value!174531 separatorToken!241))))))

(assert (=> b!3403895 (= e!2113067 e!2113068)))

(declare-fun d!968574 () Bool)

(declare-fun c!580194 () Bool)

(assert (=> d!968574 (= c!580194 ((_ is IntegerValue!16908) (value!174531 separatorToken!241)))))

(assert (=> d!968574 (= (inv!21 (value!174531 separatorToken!241)) e!2113066)))

(declare-fun b!3403896 () Bool)

(assert (=> b!3403896 (= e!2113066 (inv!16 (value!174531 separatorToken!241)))))

(declare-fun b!3403897 () Bool)

(assert (=> b!3403897 (= e!2113068 (inv!15 (value!174531 separatorToken!241)))))

(assert (= (and d!968574 c!580194) b!3403896))

(assert (= (and d!968574 (not c!580194)) b!3403893))

(assert (= (and b!3403893 c!580193) b!3403894))

(assert (= (and b!3403893 (not c!580193)) b!3403895))

(assert (= (and b!3403895 (not res!1377498)) b!3403897))

(declare-fun m!3777601 () Bool)

(assert (=> b!3403894 m!3777601))

(declare-fun m!3777603 () Bool)

(assert (=> b!3403896 m!3777603))

(declare-fun m!3777605 () Bool)

(assert (=> b!3403897 m!3777605))

(assert (=> b!3403374 d!968574))

(declare-fun d!968576 () Bool)

(declare-fun res!1377503 () Bool)

(declare-fun e!2113073 () Bool)

(assert (=> d!968576 (=> res!1377503 e!2113073)))

(assert (=> d!968576 (= res!1377503 (not ((_ is Cons!37014) rules!2135)))))

(assert (=> d!968576 (= (sepAndNonSepRulesDisjointChars!1600 rules!2135 rules!2135) e!2113073)))

(declare-fun b!3403902 () Bool)

(declare-fun e!2113074 () Bool)

(assert (=> b!3403902 (= e!2113073 e!2113074)))

(declare-fun res!1377504 () Bool)

(assert (=> b!3403902 (=> (not res!1377504) (not e!2113074))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!699 (Rule!10612 List!37138) Bool)

(assert (=> b!3403902 (= res!1377504 (ruleDisjointCharsFromAllFromOtherType!699 (h!42434 rules!2135) rules!2135))))

(declare-fun b!3403903 () Bool)

(assert (=> b!3403903 (= e!2113074 (sepAndNonSepRulesDisjointChars!1600 rules!2135 (t!266239 rules!2135)))))

(assert (= (and d!968576 (not res!1377503)) b!3403902))

(assert (= (and b!3403902 res!1377504) b!3403903))

(declare-fun m!3777607 () Bool)

(assert (=> b!3403902 m!3777607))

(declare-fun m!3777609 () Bool)

(assert (=> b!3403903 m!3777609))

(assert (=> b!3403353 d!968576))

(declare-fun d!968578 () Bool)

(assert (=> d!968578 (= (inv!50124 (tag!5994 (h!42434 rules!2135))) (= (mod (str.len (value!174530 (tag!5994 (h!42434 rules!2135)))) 2) 0))))

(assert (=> b!3403354 d!968578))

(declare-fun d!968580 () Bool)

(declare-fun res!1377505 () Bool)

(declare-fun e!2113075 () Bool)

(assert (=> d!968580 (=> (not res!1377505) (not e!2113075))))

(assert (=> d!968580 (= res!1377505 (semiInverseModEq!2263 (toChars!7473 (transformation!5406 (h!42434 rules!2135))) (toValue!7614 (transformation!5406 (h!42434 rules!2135)))))))

(assert (=> d!968580 (= (inv!50127 (transformation!5406 (h!42434 rules!2135))) e!2113075)))

(declare-fun b!3403904 () Bool)

(assert (=> b!3403904 (= e!2113075 (equivClasses!2162 (toChars!7473 (transformation!5406 (h!42434 rules!2135))) (toValue!7614 (transformation!5406 (h!42434 rules!2135)))))))

(assert (= (and d!968580 res!1377505) b!3403904))

(declare-fun m!3777611 () Bool)

(assert (=> d!968580 m!3777611))

(declare-fun m!3777613 () Bool)

(assert (=> b!3403904 m!3777613))

(assert (=> b!3403354 d!968580))

(declare-fun d!968582 () Bool)

(declare-fun res!1377506 () Bool)

(declare-fun e!2113076 () Bool)

(assert (=> d!968582 (=> (not res!1377506) (not e!2113076))))

(assert (=> d!968582 (= res!1377506 (not (isEmpty!21293 (originalCharacters!6120 separatorToken!241))))))

(assert (=> d!968582 (= (inv!50128 separatorToken!241) e!2113076)))

(declare-fun b!3403905 () Bool)

(declare-fun res!1377507 () Bool)

(assert (=> b!3403905 (=> (not res!1377507) (not e!2113076))))

(assert (=> b!3403905 (= res!1377507 (= (originalCharacters!6120 separatorToken!241) (list!13431 (dynLambda!15480 (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))) (value!174531 separatorToken!241)))))))

(declare-fun b!3403906 () Bool)

(assert (=> b!3403906 (= e!2113076 (= (size!28029 separatorToken!241) (size!28034 (originalCharacters!6120 separatorToken!241))))))

(assert (= (and d!968582 res!1377506) b!3403905))

(assert (= (and b!3403905 res!1377507) b!3403906))

(declare-fun b_lambda!97265 () Bool)

(assert (=> (not b_lambda!97265) (not b!3403905)))

(assert (=> b!3403905 t!266292))

(declare-fun b_and!237729 () Bool)

(assert (= b_and!237723 (and (=> t!266292 result!226304) b_and!237729)))

(assert (=> b!3403905 t!266294))

(declare-fun b_and!237731 () Bool)

(assert (= b_and!237725 (and (=> t!266294 result!226306) b_and!237731)))

(assert (=> b!3403905 t!266296))

(declare-fun b_and!237733 () Bool)

(assert (= b_and!237727 (and (=> t!266296 result!226308) b_and!237733)))

(declare-fun m!3777615 () Bool)

(assert (=> d!968582 m!3777615))

(assert (=> b!3403905 m!3777523))

(assert (=> b!3403905 m!3777523))

(declare-fun m!3777617 () Bool)

(assert (=> b!3403905 m!3777617))

(declare-fun m!3777619 () Bool)

(assert (=> b!3403906 m!3777619))

(assert (=> start!318078 d!968582))

(declare-fun d!968584 () Bool)

(assert (=> d!968584 (= (inv!50124 (tag!5994 (rule!7970 (h!42435 tokens!494)))) (= (mod (str.len (value!174530 (tag!5994 (rule!7970 (h!42435 tokens!494))))) 2) 0))))

(assert (=> b!3403355 d!968584))

(declare-fun d!968586 () Bool)

(declare-fun res!1377508 () Bool)

(declare-fun e!2113077 () Bool)

(assert (=> d!968586 (=> (not res!1377508) (not e!2113077))))

(assert (=> d!968586 (= res!1377508 (semiInverseModEq!2263 (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))) (toValue!7614 (transformation!5406 (rule!7970 (h!42435 tokens!494))))))))

(assert (=> d!968586 (= (inv!50127 (transformation!5406 (rule!7970 (h!42435 tokens!494)))) e!2113077)))

(declare-fun b!3403907 () Bool)

(assert (=> b!3403907 (= e!2113077 (equivClasses!2162 (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))) (toValue!7614 (transformation!5406 (rule!7970 (h!42435 tokens!494))))))))

(assert (= (and d!968586 res!1377508) b!3403907))

(declare-fun m!3777621 () Bool)

(assert (=> d!968586 m!3777621))

(declare-fun m!3777623 () Bool)

(assert (=> b!3403907 m!3777623))

(assert (=> b!3403355 d!968586))

(declare-fun b!3403921 () Bool)

(declare-fun b_free!89189 () Bool)

(declare-fun b_next!89893 () Bool)

(assert (=> b!3403921 (= b_free!89189 (not b_next!89893))))

(declare-fun tp!1062015 () Bool)

(declare-fun b_and!237735 () Bool)

(assert (=> b!3403921 (= tp!1062015 b_and!237735)))

(declare-fun b_free!89191 () Bool)

(declare-fun b_next!89895 () Bool)

(assert (=> b!3403921 (= b_free!89191 (not b_next!89895))))

(declare-fun tb!182603 () Bool)

(declare-fun t!266304 () Bool)

(assert (=> (and b!3403921 (= (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))) (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241)))) t!266304) tb!182603))

(declare-fun result!226318 () Bool)

(assert (= result!226318 result!226304))

(assert (=> b!3403905 t!266304))

(assert (=> d!968550 t!266304))

(declare-fun t!266306 () Bool)

(declare-fun tb!182605 () Bool)

(assert (=> (and b!3403921 (= (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494)))))) t!266306) tb!182605))

(declare-fun result!226320 () Bool)

(assert (= result!226320 result!226310))

(assert (=> d!968562 t!266306))

(declare-fun t!266308 () Bool)

(declare-fun tb!182607 () Bool)

(assert (=> (and b!3403921 (= (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494))))) t!266308) tb!182607))

(declare-fun result!226322 () Bool)

(assert (= result!226322 result!226296))

(assert (=> d!968532 t!266308))

(assert (=> b!3403888 t!266308))

(declare-fun b_and!237737 () Bool)

(declare-fun tp!1062011 () Bool)

(assert (=> b!3403921 (= tp!1062011 (and (=> t!266308 result!226322) (=> t!266306 result!226320) (=> t!266304 result!226318) b_and!237737))))

(declare-fun e!2113090 () Bool)

(declare-fun b!3403919 () Bool)

(declare-fun tp!1062013 () Bool)

(declare-fun e!2113092 () Bool)

(assert (=> b!3403919 (= e!2113090 (and (inv!21 (value!174531 (h!42435 (t!266240 tokens!494)))) e!2113092 tp!1062013))))

(declare-fun e!2113095 () Bool)

(assert (=> b!3403356 (= tp!1061934 e!2113095)))

(declare-fun tp!1062014 () Bool)

(declare-fun b!3403918 () Bool)

(assert (=> b!3403918 (= e!2113095 (and (inv!50128 (h!42435 (t!266240 tokens!494))) e!2113090 tp!1062014))))

(declare-fun e!2113093 () Bool)

(assert (=> b!3403921 (= e!2113093 (and tp!1062015 tp!1062011))))

(declare-fun b!3403920 () Bool)

(declare-fun tp!1062012 () Bool)

(assert (=> b!3403920 (= e!2113092 (and tp!1062012 (inv!50124 (tag!5994 (rule!7970 (h!42435 (t!266240 tokens!494))))) (inv!50127 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))) e!2113093))))

(assert (= b!3403920 b!3403921))

(assert (= b!3403919 b!3403920))

(assert (= b!3403918 b!3403919))

(assert (= (and b!3403356 ((_ is Cons!37015) (t!266240 tokens!494))) b!3403918))

(declare-fun m!3777625 () Bool)

(assert (=> b!3403919 m!3777625))

(declare-fun m!3777627 () Bool)

(assert (=> b!3403918 m!3777627))

(declare-fun m!3777629 () Bool)

(assert (=> b!3403920 m!3777629))

(declare-fun m!3777631 () Bool)

(assert (=> b!3403920 m!3777631))

(declare-fun b!3403932 () Bool)

(declare-fun b_free!89193 () Bool)

(declare-fun b_next!89897 () Bool)

(assert (=> b!3403932 (= b_free!89193 (not b_next!89897))))

(declare-fun tp!1062027 () Bool)

(declare-fun b_and!237739 () Bool)

(assert (=> b!3403932 (= tp!1062027 b_and!237739)))

(declare-fun b_free!89195 () Bool)

(declare-fun b_next!89899 () Bool)

(assert (=> b!3403932 (= b_free!89195 (not b_next!89899))))

(declare-fun tb!182609 () Bool)

(declare-fun t!266310 () Bool)

(assert (=> (and b!3403932 (= (toChars!7473 (transformation!5406 (h!42434 (t!266239 rules!2135)))) (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241)))) t!266310) tb!182609))

(declare-fun result!226326 () Bool)

(assert (= result!226326 result!226304))

(assert (=> b!3403905 t!266310))

(assert (=> d!968550 t!266310))

(declare-fun tb!182611 () Bool)

(declare-fun t!266312 () Bool)

(assert (=> (and b!3403932 (= (toChars!7473 (transformation!5406 (h!42434 (t!266239 rules!2135)))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494)))))) t!266312) tb!182611))

(declare-fun result!226328 () Bool)

(assert (= result!226328 result!226310))

(assert (=> d!968562 t!266312))

(declare-fun tb!182613 () Bool)

(declare-fun t!266314 () Bool)

(assert (=> (and b!3403932 (= (toChars!7473 (transformation!5406 (h!42434 (t!266239 rules!2135)))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494))))) t!266314) tb!182613))

(declare-fun result!226330 () Bool)

(assert (= result!226330 result!226296))

(assert (=> d!968532 t!266314))

(assert (=> b!3403888 t!266314))

(declare-fun b_and!237741 () Bool)

(declare-fun tp!1062026 () Bool)

(assert (=> b!3403932 (= tp!1062026 (and (=> t!266310 result!226326) (=> t!266312 result!226328) (=> t!266314 result!226330) b_and!237741))))

(declare-fun e!2113106 () Bool)

(assert (=> b!3403932 (= e!2113106 (and tp!1062027 tp!1062026))))

(declare-fun b!3403931 () Bool)

(declare-fun e!2113105 () Bool)

(declare-fun tp!1062025 () Bool)

(assert (=> b!3403931 (= e!2113105 (and tp!1062025 (inv!50124 (tag!5994 (h!42434 (t!266239 rules!2135)))) (inv!50127 (transformation!5406 (h!42434 (t!266239 rules!2135)))) e!2113106))))

(declare-fun b!3403930 () Bool)

(declare-fun e!2113107 () Bool)

(declare-fun tp!1062024 () Bool)

(assert (=> b!3403930 (= e!2113107 (and e!2113105 tp!1062024))))

(assert (=> b!3403367 (= tp!1061922 e!2113107)))

(assert (= b!3403931 b!3403932))

(assert (= b!3403930 b!3403931))

(assert (= (and b!3403367 ((_ is Cons!37014) (t!266239 rules!2135))) b!3403930))

(declare-fun m!3777633 () Bool)

(assert (=> b!3403931 m!3777633))

(declare-fun m!3777635 () Bool)

(assert (=> b!3403931 m!3777635))

(declare-fun b!3403946 () Bool)

(declare-fun e!2113110 () Bool)

(declare-fun tp!1062041 () Bool)

(declare-fun tp!1062038 () Bool)

(assert (=> b!3403946 (= e!2113110 (and tp!1062041 tp!1062038))))

(declare-fun b!3403945 () Bool)

(declare-fun tp!1062039 () Bool)

(assert (=> b!3403945 (= e!2113110 tp!1062039)))

(assert (=> b!3403357 (= tp!1061929 e!2113110)))

(declare-fun b!3403944 () Bool)

(declare-fun tp!1062040 () Bool)

(declare-fun tp!1062042 () Bool)

(assert (=> b!3403944 (= e!2113110 (and tp!1062040 tp!1062042))))

(declare-fun b!3403943 () Bool)

(declare-fun tp_is_empty!17517 () Bool)

(assert (=> b!3403943 (= e!2113110 tp_is_empty!17517)))

(assert (= (and b!3403357 ((_ is ElementMatch!10165) (regex!5406 (rule!7970 separatorToken!241)))) b!3403943))

(assert (= (and b!3403357 ((_ is Concat!15801) (regex!5406 (rule!7970 separatorToken!241)))) b!3403944))

(assert (= (and b!3403357 ((_ is Star!10165) (regex!5406 (rule!7970 separatorToken!241)))) b!3403945))

(assert (= (and b!3403357 ((_ is Union!10165) (regex!5406 (rule!7970 separatorToken!241)))) b!3403946))

(declare-fun b!3403951 () Bool)

(declare-fun e!2113113 () Bool)

(declare-fun tp!1062045 () Bool)

(assert (=> b!3403951 (= e!2113113 (and tp_is_empty!17517 tp!1062045))))

(assert (=> b!3403374 (= tp!1061930 e!2113113)))

(assert (= (and b!3403374 ((_ is Cons!37013) (originalCharacters!6120 separatorToken!241))) b!3403951))

(declare-fun b!3403955 () Bool)

(declare-fun e!2113114 () Bool)

(declare-fun tp!1062049 () Bool)

(declare-fun tp!1062046 () Bool)

(assert (=> b!3403955 (= e!2113114 (and tp!1062049 tp!1062046))))

(declare-fun b!3403954 () Bool)

(declare-fun tp!1062047 () Bool)

(assert (=> b!3403954 (= e!2113114 tp!1062047)))

(assert (=> b!3403354 (= tp!1061926 e!2113114)))

(declare-fun b!3403953 () Bool)

(declare-fun tp!1062048 () Bool)

(declare-fun tp!1062050 () Bool)

(assert (=> b!3403953 (= e!2113114 (and tp!1062048 tp!1062050))))

(declare-fun b!3403952 () Bool)

(assert (=> b!3403952 (= e!2113114 tp_is_empty!17517)))

(assert (= (and b!3403354 ((_ is ElementMatch!10165) (regex!5406 (h!42434 rules!2135)))) b!3403952))

(assert (= (and b!3403354 ((_ is Concat!15801) (regex!5406 (h!42434 rules!2135)))) b!3403953))

(assert (= (and b!3403354 ((_ is Star!10165) (regex!5406 (h!42434 rules!2135)))) b!3403954))

(assert (= (and b!3403354 ((_ is Union!10165) (regex!5406 (h!42434 rules!2135)))) b!3403955))

(declare-fun b!3403956 () Bool)

(declare-fun e!2113115 () Bool)

(declare-fun tp!1062051 () Bool)

(assert (=> b!3403956 (= e!2113115 (and tp_is_empty!17517 tp!1062051))))

(assert (=> b!3403365 (= tp!1061925 e!2113115)))

(assert (= (and b!3403365 ((_ is Cons!37013) (originalCharacters!6120 (h!42435 tokens!494)))) b!3403956))

(declare-fun b!3403960 () Bool)

(declare-fun e!2113116 () Bool)

(declare-fun tp!1062055 () Bool)

(declare-fun tp!1062052 () Bool)

(assert (=> b!3403960 (= e!2113116 (and tp!1062055 tp!1062052))))

(declare-fun b!3403959 () Bool)

(declare-fun tp!1062053 () Bool)

(assert (=> b!3403959 (= e!2113116 tp!1062053)))

(assert (=> b!3403355 (= tp!1061928 e!2113116)))

(declare-fun b!3403958 () Bool)

(declare-fun tp!1062054 () Bool)

(declare-fun tp!1062056 () Bool)

(assert (=> b!3403958 (= e!2113116 (and tp!1062054 tp!1062056))))

(declare-fun b!3403957 () Bool)

(assert (=> b!3403957 (= e!2113116 tp_is_empty!17517)))

(assert (= (and b!3403355 ((_ is ElementMatch!10165) (regex!5406 (rule!7970 (h!42435 tokens!494))))) b!3403957))

(assert (= (and b!3403355 ((_ is Concat!15801) (regex!5406 (rule!7970 (h!42435 tokens!494))))) b!3403958))

(assert (= (and b!3403355 ((_ is Star!10165) (regex!5406 (rule!7970 (h!42435 tokens!494))))) b!3403959))

(assert (= (and b!3403355 ((_ is Union!10165) (regex!5406 (rule!7970 (h!42435 tokens!494))))) b!3403960))

(declare-fun b_lambda!97267 () Bool)

(assert (= b_lambda!97263 (or (and b!3403932 b_free!89195 (= (toChars!7473 (transformation!5406 (h!42434 (t!266239 rules!2135)))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))))) (and b!3403921 b_free!89191 (= (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))))) (and b!3403376 b_free!89179) (and b!3403359 b_free!89171 (= (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))))) (and b!3403375 b_free!89175 (= (toChars!7473 (transformation!5406 (h!42434 rules!2135))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))))) b_lambda!97267)))

(declare-fun b_lambda!97269 () Bool)

(assert (= b_lambda!97261 (or (and b!3403359 b_free!89171 (= (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))))) (and b!3403375 b_free!89175 (= (toChars!7473 (transformation!5406 (h!42434 rules!2135))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))))) (and b!3403376 b_free!89179 (= (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))))) (and b!3403932 b_free!89195 (= (toChars!7473 (transformation!5406 (h!42434 (t!266239 rules!2135)))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))))) (and b!3403921 b_free!89191) b_lambda!97269)))

(declare-fun b_lambda!97271 () Bool)

(assert (= b_lambda!97265 (or (and b!3403376 b_free!89179 (= (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))) (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))))) (and b!3403921 b_free!89191 (= (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))) (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))))) (and b!3403359 b_free!89171) (and b!3403375 b_free!89175 (= (toChars!7473 (transformation!5406 (h!42434 rules!2135))) (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))))) (and b!3403932 b_free!89195 (= (toChars!7473 (transformation!5406 (h!42434 (t!266239 rules!2135)))) (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))))) b_lambda!97271)))

(declare-fun b_lambda!97273 () Bool)

(assert (= b_lambda!97259 (or (and b!3403376 b_free!89179 (= (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))) (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))))) (and b!3403921 b_free!89191 (= (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))) (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))))) (and b!3403359 b_free!89171) (and b!3403375 b_free!89175 (= (toChars!7473 (transformation!5406 (h!42434 rules!2135))) (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))))) (and b!3403932 b_free!89195 (= (toChars!7473 (transformation!5406 (h!42434 (t!266239 rules!2135)))) (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))))) b_lambda!97273)))

(declare-fun b_lambda!97275 () Bool)

(assert (= b_lambda!97257 (or (and b!3403932 b_free!89195 (= (toChars!7473 (transformation!5406 (h!42434 (t!266239 rules!2135)))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))))) (and b!3403921 b_free!89191 (= (toChars!7473 (transformation!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))))) (and b!3403376 b_free!89179) (and b!3403359 b_free!89171 (= (toChars!7473 (transformation!5406 (rule!7970 separatorToken!241))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))))) (and b!3403375 b_free!89175 (= (toChars!7473 (transformation!5406 (h!42434 rules!2135))) (toChars!7473 (transformation!5406 (rule!7970 (h!42435 tokens!494)))))) b_lambda!97275)))

(declare-fun b_lambda!97277 () Bool)

(assert (= b_lambda!97237 (or b!3403349 b_lambda!97277)))

(declare-fun bs!556438 () Bool)

(declare-fun d!968588 () Bool)

(assert (= bs!556438 (and d!968588 b!3403349)))

(assert (=> bs!556438 (= (dynLambda!15476 lambda!121071 (h!42435 (t!266240 tokens!494))) (not (isSeparator!5406 (rule!7970 (h!42435 (t!266240 tokens!494))))))))

(assert (=> d!968508 d!968588))

(declare-fun b_lambda!97279 () Bool)

(assert (= b_lambda!97235 (or b!3403349 b_lambda!97279)))

(declare-fun bs!556439 () Bool)

(declare-fun d!968590 () Bool)

(assert (= bs!556439 (and d!968590 b!3403349)))

(assert (=> bs!556439 (= (dynLambda!15476 lambda!121071 (h!42435 tokens!494)) (not (isSeparator!5406 (rule!7970 (h!42435 tokens!494)))))))

(assert (=> b!3403683 d!968590))

(declare-fun b_lambda!97281 () Bool)

(assert (= b_lambda!97239 (or b!3403349 b_lambda!97281)))

(assert (=> d!968510 d!968590))

(check-sat b_and!237659 (not d!968474) (not b!3403622) (not d!968528) (not b!3403930) (not b!3403953) (not b!3403687) (not b!3403894) (not d!968510) (not b!3403881) (not b!3403840) (not b!3403958) (not b!3403648) (not d!968580) (not b!3403661) (not b!3403906) (not d!968562) (not b!3403805) (not b!3403931) (not d!968530) (not d!968508) b_and!237741 (not b!3403663) (not d!968538) (not b!3403804) (not b!3403867) (not tb!182597) (not d!968566) (not b_lambda!97279) (not b!3403905) (not b!3403955) (not b!3403643) (not b!3403678) (not b!3403802) (not b!3403801) (not b!3403780) (not d!968568) (not b!3403956) (not b!3403874) (not b!3403841) (not d!968504) (not b!3403850) (not d!968478) (not d!968476) (not b_next!89879) (not d!968482) b_and!237733 (not b!3403951) (not d!968496) (not d!968548) (not b!3403918) (not d!968524) (not d!968582) (not d!968494) (not b!3403688) (not d!968532) (not b!3403611) (not b!3403904) (not d!968560) (not b!3403944) (not b!3403892) (not b!3403919) (not b_next!89873) (not b!3403946) tp_is_empty!17517 (not b!3403876) (not b!3403954) (not b!3403883) (not b!3403677) (not b!3403897) (not d!968480) (not b!3403624) b_and!237739 (not b_lambda!97273) (not d!968540) (not b!3403847) (not d!968546) (not b!3403684) (not b_next!89877) (not b!3403878) (not b!3403959) (not b!3403902) b_and!237663 (not b_next!89875) (not d!968500) (not b!3403960) (not b!3403889) (not tb!182585) (not b_next!89881) (not b!3403907) (not b!3403861) (not b!3403787) (not b!3403799) (not d!968572) (not b!3403865) (not d!968558) (not b!3403765) (not d!968490) (not d!968488) (not b_lambda!97271) (not tb!182591) (not b!3403860) b_and!237655 (not b!3403882) (not b!3403767) (not bm!245873) (not b!3403632) (not b!3403644) (not b!3403903) (not d!968512) (not b!3403873) (not d!968586) (not b!3403879) (not b!3403672) b_and!237735 (not b_next!89883) b_and!237737 (not b!3403782) (not b!3403808) (not b!3403779) (not b!3403662) (not d!968552) (not b!3403896) (not b_next!89895) (not b_next!89893) (not b!3403843) (not b_lambda!97275) (not d!968424) (not b!3403920) (not b_lambda!97267) (not d!968498) (not b!3403870) (not d!968536) (not b_lambda!97277) (not b!3403945) (not b!3403778) (not b_lambda!97269) (not b!3403864) (not b!3403766) (not b!3403852) (not b!3403809) b_and!237731 (not b_next!89897) (not b!3403857) (not b!3403868) (not b!3403888) (not d!968502) (not b!3403602) (not b!3403627) (not b_next!89899) (not b_lambda!97281) (not d!968564) (not d!968550) b_and!237729 (not d!968526))
(check-sat b_and!237659 b_and!237741 (not b_next!89879) b_and!237733 (not b_next!89873) b_and!237739 (not b_next!89877) (not b_next!89881) b_and!237655 b_and!237663 (not b_next!89875) b_and!237735 (not b_next!89883) b_and!237737 (not b_next!89895) (not b_next!89893) b_and!237731 (not b_next!89897) (not b_next!89899) b_and!237729)
