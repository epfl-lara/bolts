; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!320880 () Bool)

(assert start!320880)

(declare-fun b!3452540 () Bool)

(declare-fun b_free!89613 () Bool)

(declare-fun b_next!90317 () Bool)

(assert (=> b!3452540 (= b_free!89613 (not b_next!90317))))

(declare-fun tp!1076693 () Bool)

(declare-fun b_and!242551 () Bool)

(assert (=> b!3452540 (= tp!1076693 b_and!242551)))

(declare-fun b_free!89615 () Bool)

(declare-fun b_next!90319 () Bool)

(assert (=> b!3452540 (= b_free!89615 (not b_next!90319))))

(declare-fun tp!1076691 () Bool)

(declare-fun b_and!242553 () Bool)

(assert (=> b!3452540 (= tp!1076691 b_and!242553)))

(declare-fun b!3452523 () Bool)

(declare-fun b_free!89617 () Bool)

(declare-fun b_next!90321 () Bool)

(assert (=> b!3452523 (= b_free!89617 (not b_next!90321))))

(declare-fun tp!1076698 () Bool)

(declare-fun b_and!242555 () Bool)

(assert (=> b!3452523 (= tp!1076698 b_and!242555)))

(declare-fun b_free!89619 () Bool)

(declare-fun b_next!90323 () Bool)

(assert (=> b!3452523 (= b_free!89619 (not b_next!90323))))

(declare-fun tp!1076703 () Bool)

(declare-fun b_and!242557 () Bool)

(assert (=> b!3452523 (= tp!1076703 b_and!242557)))

(declare-fun b!3452528 () Bool)

(declare-fun b_free!89621 () Bool)

(declare-fun b_next!90325 () Bool)

(assert (=> b!3452528 (= b_free!89621 (not b_next!90325))))

(declare-fun tp!1076701 () Bool)

(declare-fun b_and!242559 () Bool)

(assert (=> b!3452528 (= tp!1076701 b_and!242559)))

(declare-fun b_free!89623 () Bool)

(declare-fun b_next!90327 () Bool)

(assert (=> b!3452528 (= b_free!89623 (not b_next!90327))))

(declare-fun tp!1076695 () Bool)

(declare-fun b_and!242561 () Bool)

(assert (=> b!3452528 (= tp!1076695 b_and!242561)))

(declare-fun bs!559912 () Bool)

(declare-fun b!3452517 () Bool)

(declare-fun b!3452532 () Bool)

(assert (= bs!559912 (and b!3452517 b!3452532)))

(declare-fun lambda!121597 () Int)

(declare-fun lambda!121596 () Int)

(assert (=> bs!559912 (not (= lambda!121597 lambda!121596))))

(declare-fun b!3452563 () Bool)

(declare-fun e!2138638 () Bool)

(assert (=> b!3452563 (= e!2138638 true)))

(declare-fun b!3452562 () Bool)

(declare-fun e!2138637 () Bool)

(assert (=> b!3452562 (= e!2138637 e!2138638)))

(declare-fun b!3452561 () Bool)

(declare-fun e!2138636 () Bool)

(assert (=> b!3452561 (= e!2138636 e!2138637)))

(assert (=> b!3452517 e!2138636))

(assert (= b!3452562 b!3452563))

(assert (= b!3452561 b!3452562))

(declare-datatypes ((C!20550 0))(
  ( (C!20551 (val!12323 Int)) )
))
(declare-datatypes ((Regex!10182 0))(
  ( (ElementMatch!10182 (c!591039 C!20550)) (Concat!15835 (regOne!20876 Regex!10182) (regTwo!20876 Regex!10182)) (EmptyExpr!10182) (Star!10182 (reg!10511 Regex!10182)) (EmptyLang!10182) (Union!10182 (regOne!20877 Regex!10182) (regTwo!20877 Regex!10182)) )
))
(declare-datatypes ((List!37216 0))(
  ( (Nil!37092) (Cons!37092 (h!42512 (_ BitVec 16)) (t!272003 List!37216)) )
))
(declare-datatypes ((TokenValue!5653 0))(
  ( (FloatLiteralValue!11306 (text!40016 List!37216)) (TokenValueExt!5652 (__x!23523 Int)) (Broken!28265 (value!174991 List!37216)) (Object!5776) (End!5653) (Def!5653) (Underscore!5653) (Match!5653) (Else!5653) (Error!5653) (Case!5653) (If!5653) (Extends!5653) (Abstract!5653) (Class!5653) (Val!5653) (DelimiterValue!11306 (del!5713 List!37216)) (KeywordValue!5659 (value!174992 List!37216)) (CommentValue!11306 (value!174993 List!37216)) (WhitespaceValue!11306 (value!174994 List!37216)) (IndentationValue!5653 (value!174995 List!37216)) (String!41600) (Int32!5653) (Broken!28266 (value!174996 List!37216)) (Boolean!5654) (Unit!52416) (OperatorValue!5656 (op!5713 List!37216)) (IdentifierValue!11306 (value!174997 List!37216)) (IdentifierValue!11307 (value!174998 List!37216)) (WhitespaceValue!11307 (value!174999 List!37216)) (True!11306) (False!11306) (Broken!28267 (value!175000 List!37216)) (Broken!28268 (value!175001 List!37216)) (True!11307) (RightBrace!5653) (RightBracket!5653) (Colon!5653) (Null!5653) (Comma!5653) (LeftBracket!5653) (False!11307) (LeftBrace!5653) (ImaginaryLiteralValue!5653 (text!40017 List!37216)) (StringLiteralValue!16959 (value!175002 List!37216)) (EOFValue!5653 (value!175003 List!37216)) (IdentValue!5653 (value!175004 List!37216)) (DelimiterValue!11307 (value!175005 List!37216)) (DedentValue!5653 (value!175006 List!37216)) (NewLineValue!5653 (value!175007 List!37216)) (IntegerValue!16959 (value!175008 (_ BitVec 32)) (text!40018 List!37216)) (IntegerValue!16960 (value!175009 Int) (text!40019 List!37216)) (Times!5653) (Or!5653) (Equal!5653) (Minus!5653) (Broken!28269 (value!175010 List!37216)) (And!5653) (Div!5653) (LessEqual!5653) (Mod!5653) (Concat!15836) (Not!5653) (Plus!5653) (SpaceValue!5653 (value!175011 List!37216)) (IntegerValue!16961 (value!175012 Int) (text!40020 List!37216)) (StringLiteralValue!16960 (text!40021 List!37216)) (FloatLiteralValue!11307 (text!40022 List!37216)) (BytesLiteralValue!5653 (value!175013 List!37216)) (CommentValue!11307 (value!175014 List!37216)) (StringLiteralValue!16961 (value!175015 List!37216)) (ErrorTokenValue!5653 (msg!5714 List!37216)) )
))
(declare-datatypes ((List!37217 0))(
  ( (Nil!37093) (Cons!37093 (h!42513 C!20550) (t!272004 List!37217)) )
))
(declare-datatypes ((IArray!22447 0))(
  ( (IArray!22448 (innerList!11281 List!37217)) )
))
(declare-datatypes ((Conc!11221 0))(
  ( (Node!11221 (left!28929 Conc!11221) (right!29259 Conc!11221) (csize!22672 Int) (cheight!11432 Int)) (Leaf!17544 (xs!14395 IArray!22447) (csize!22673 Int)) (Empty!11221) )
))
(declare-datatypes ((BalanceConc!22056 0))(
  ( (BalanceConc!22057 (c!591040 Conc!11221)) )
))
(declare-datatypes ((String!41601 0))(
  ( (String!41602 (value!175016 String)) )
))
(declare-datatypes ((TokenValueInjection!10734 0))(
  ( (TokenValueInjection!10735 (toValue!7647 Int) (toChars!7506 Int)) )
))
(declare-datatypes ((Rule!10646 0))(
  ( (Rule!10647 (regex!5423 Regex!10182) (tag!6023 String!41601) (isSeparator!5423 Bool) (transformation!5423 TokenValueInjection!10734)) )
))
(declare-datatypes ((List!37218 0))(
  ( (Nil!37094) (Cons!37094 (h!42514 Rule!10646) (t!272005 List!37218)) )
))
(declare-fun rules!2135 () List!37218)

(assert (= (and b!3452517 (is-Cons!37094 rules!2135)) b!3452561))

(declare-fun order!19695 () Int)

(declare-fun order!19697 () Int)

(declare-fun dynLambda!15579 (Int Int) Int)

(declare-fun dynLambda!15580 (Int Int) Int)

(assert (=> b!3452563 (< (dynLambda!15579 order!19695 (toValue!7647 (transformation!5423 (h!42514 rules!2135)))) (dynLambda!15580 order!19697 lambda!121597))))

(declare-fun order!19699 () Int)

(declare-fun dynLambda!15581 (Int Int) Int)

(assert (=> b!3452563 (< (dynLambda!15581 order!19699 (toChars!7506 (transformation!5423 (h!42514 rules!2135)))) (dynLambda!15580 order!19697 lambda!121597))))

(assert (=> b!3452517 true))

(declare-fun e!2138612 () Bool)

(declare-datatypes ((Token!10212 0))(
  ( (Token!10213 (value!175017 TokenValue!5653) (rule!8005 Rule!10646) (size!28116 Int) (originalCharacters!6137 List!37217)) )
))
(declare-datatypes ((List!37219 0))(
  ( (Nil!37095) (Cons!37095 (h!42515 Token!10212) (t!272006 List!37219)) )
))
(declare-fun tokens!494 () List!37219)

(declare-fun tp!1076697 () Bool)

(declare-fun e!2138622 () Bool)

(declare-fun b!3452515 () Bool)

(declare-fun inv!50257 (String!41601) Bool)

(declare-fun inv!50260 (TokenValueInjection!10734) Bool)

(assert (=> b!3452515 (= e!2138612 (and tp!1076697 (inv!50257 (tag!6023 (rule!8005 (h!42515 tokens!494)))) (inv!50260 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) e!2138622))))

(declare-fun tp!1076699 () Bool)

(declare-fun e!2138621 () Bool)

(declare-fun b!3452516 () Bool)

(declare-fun inv!21 (TokenValue!5653) Bool)

(assert (=> b!3452516 (= e!2138621 (and (inv!21 (value!175017 (h!42515 tokens!494))) e!2138612 tp!1076699))))

(declare-fun e!2138602 () Bool)

(declare-fun separatorToken!241 () Token!10212)

(declare-fun contains!6851 (List!37218 Rule!10646) Bool)

(assert (=> b!3452517 (= e!2138602 (contains!6851 rules!2135 (rule!8005 separatorToken!241)))))

(declare-datatypes ((Unit!52417 0))(
  ( (Unit!52418) )
))
(declare-fun lt!1172169 () Unit!52417)

(declare-fun forallContained!1370 (List!37219 Int Token!10212) Unit!52417)

(assert (=> b!3452517 (= lt!1172169 (forallContained!1370 tokens!494 lambda!121597 (h!42515 (t!272006 tokens!494))))))

(declare-datatypes ((LexerInterface!5012 0))(
  ( (LexerInterfaceExt!5009 (__x!23524 Int)) (Lexer!5010) )
))
(declare-fun thiss!18206 () LexerInterface!5012)

(declare-fun e!2138624 () Bool)

(declare-fun rulesProduceIndividualToken!2504 (LexerInterface!5012 List!37218 Token!10212) Bool)

(assert (=> b!3452517 (= (rulesProduceIndividualToken!2504 thiss!18206 rules!2135 (h!42515 (t!272006 tokens!494))) e!2138624)))

(declare-fun res!1392281 () Bool)

(assert (=> b!3452517 (=> (not res!1392281) (not e!2138624))))

(declare-datatypes ((IArray!22449 0))(
  ( (IArray!22450 (innerList!11282 List!37219)) )
))
(declare-datatypes ((Conc!11222 0))(
  ( (Node!11222 (left!28930 Conc!11222) (right!29260 Conc!11222) (csize!22674 Int) (cheight!11433 Int)) (Leaf!17545 (xs!14396 IArray!22449) (csize!22675 Int)) (Empty!11222) )
))
(declare-datatypes ((BalanceConc!22058 0))(
  ( (BalanceConc!22059 (c!591041 Conc!11222)) )
))
(declare-datatypes ((tuple2!36784 0))(
  ( (tuple2!36785 (_1!21526 BalanceConc!22058) (_2!21526 BalanceConc!22056)) )
))
(declare-fun lt!1172181 () tuple2!36784)

(declare-fun size!28117 (BalanceConc!22058) Int)

(assert (=> b!3452517 (= res!1392281 (= (size!28117 (_1!21526 lt!1172181)) 1))))

(declare-fun lt!1172173 () BalanceConc!22056)

(declare-fun lex!2338 (LexerInterface!5012 List!37218 BalanceConc!22056) tuple2!36784)

(assert (=> b!3452517 (= lt!1172181 (lex!2338 thiss!18206 rules!2135 lt!1172173))))

(declare-fun lt!1172179 () BalanceConc!22058)

(declare-fun printTailRec!1507 (LexerInterface!5012 BalanceConc!22058 Int BalanceConc!22056) BalanceConc!22056)

(assert (=> b!3452517 (= lt!1172173 (printTailRec!1507 thiss!18206 lt!1172179 0 (BalanceConc!22057 Empty!11221)))))

(declare-fun print!2077 (LexerInterface!5012 BalanceConc!22058) BalanceConc!22056)

(assert (=> b!3452517 (= lt!1172173 (print!2077 thiss!18206 lt!1172179))))

(declare-fun singletonSeq!2519 (Token!10212) BalanceConc!22058)

(assert (=> b!3452517 (= lt!1172179 (singletonSeq!2519 (h!42515 (t!272006 tokens!494))))))

(declare-fun e!2138623 () Bool)

(assert (=> b!3452517 e!2138623))

(declare-fun res!1392272 () Bool)

(assert (=> b!3452517 (=> (not res!1392272) (not e!2138623))))

(declare-fun lt!1172170 () tuple2!36784)

(assert (=> b!3452517 (= res!1392272 (= (size!28117 (_1!21526 lt!1172170)) 1))))

(declare-fun lt!1172163 () BalanceConc!22056)

(assert (=> b!3452517 (= lt!1172170 (lex!2338 thiss!18206 rules!2135 lt!1172163))))

(declare-fun lt!1172185 () BalanceConc!22058)

(assert (=> b!3452517 (= lt!1172163 (printTailRec!1507 thiss!18206 lt!1172185 0 (BalanceConc!22057 Empty!11221)))))

(assert (=> b!3452517 (= lt!1172163 (print!2077 thiss!18206 lt!1172185))))

(assert (=> b!3452517 (= lt!1172185 (singletonSeq!2519 separatorToken!241))))

(declare-fun lt!1172175 () Unit!52417)

(declare-fun e!2138616 () Unit!52417)

(assert (=> b!3452517 (= lt!1172175 e!2138616)))

(declare-fun c!591038 () Bool)

(declare-fun lt!1172156 () C!20550)

(declare-fun contains!6852 (List!37217 C!20550) Bool)

(declare-fun usedCharacters!657 (Regex!10182) List!37217)

(assert (=> b!3452517 (= c!591038 (not (contains!6852 (usedCharacters!657 (regex!5423 (rule!8005 separatorToken!241))) lt!1172156)))))

(declare-fun lt!1172178 () List!37217)

(declare-fun head!7294 (List!37217) C!20550)

(assert (=> b!3452517 (= lt!1172156 (head!7294 lt!1172178))))

(declare-fun e!2138601 () Bool)

(assert (=> b!3452517 e!2138601))

(declare-fun res!1392271 () Bool)

(assert (=> b!3452517 (=> (not res!1392271) (not e!2138601))))

(declare-datatypes ((Option!7493 0))(
  ( (None!7492) (Some!7492 (v!36776 Rule!10646)) )
))
(declare-fun lt!1172171 () Option!7493)

(declare-fun isDefined!5777 (Option!7493) Bool)

(assert (=> b!3452517 (= res!1392271 (isDefined!5777 lt!1172171))))

(declare-fun getRuleFromTag!1066 (LexerInterface!5012 List!37218 String!41601) Option!7493)

(assert (=> b!3452517 (= lt!1172171 (getRuleFromTag!1066 thiss!18206 rules!2135 (tag!6023 (rule!8005 separatorToken!241))))))

(declare-fun lt!1172166 () Unit!52417)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1066 (LexerInterface!5012 List!37218 List!37217 Token!10212) Unit!52417)

(assert (=> b!3452517 (= lt!1172166 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1066 thiss!18206 rules!2135 lt!1172178 separatorToken!241))))

(declare-fun lt!1172172 () List!37217)

(declare-fun lt!1172165 () BalanceConc!22056)

(declare-datatypes ((tuple2!36786 0))(
  ( (tuple2!36787 (_1!21527 Token!10212) (_2!21527 List!37217)) )
))
(declare-datatypes ((Option!7494 0))(
  ( (None!7493) (Some!7493 (v!36777 tuple2!36786)) )
))
(declare-fun maxPrefixOneRule!1719 (LexerInterface!5012 Rule!10646 List!37217) Option!7494)

(declare-fun apply!8700 (TokenValueInjection!10734 BalanceConc!22056) TokenValue!5653)

(declare-fun size!28118 (List!37217) Int)

(assert (=> b!3452517 (= (maxPrefixOneRule!1719 thiss!18206 (rule!8005 (h!42515 tokens!494)) lt!1172172) (Some!7493 (tuple2!36787 (Token!10213 (apply!8700 (transformation!5423 (rule!8005 (h!42515 tokens!494))) lt!1172165) (rule!8005 (h!42515 tokens!494)) (size!28118 lt!1172172) lt!1172172) Nil!37093)))))

(declare-fun lt!1172160 () Unit!52417)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!812 (LexerInterface!5012 List!37218 List!37217 List!37217 List!37217 Rule!10646) Unit!52417)

(assert (=> b!3452517 (= lt!1172160 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!812 thiss!18206 rules!2135 lt!1172172 lt!1172172 Nil!37093 (rule!8005 (h!42515 tokens!494))))))

(declare-fun e!2138613 () Bool)

(assert (=> b!3452517 e!2138613))

(declare-fun res!1392264 () Bool)

(assert (=> b!3452517 (=> (not res!1392264) (not e!2138613))))

(declare-fun lt!1172157 () Option!7493)

(assert (=> b!3452517 (= res!1392264 (isDefined!5777 lt!1172157))))

(assert (=> b!3452517 (= lt!1172157 (getRuleFromTag!1066 thiss!18206 rules!2135 (tag!6023 (rule!8005 (h!42515 tokens!494)))))))

(declare-fun lt!1172177 () Unit!52417)

(assert (=> b!3452517 (= lt!1172177 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1066 thiss!18206 rules!2135 lt!1172172 (h!42515 tokens!494)))))

(declare-fun lt!1172155 () Unit!52417)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1001 (LexerInterface!5012 List!37218 List!37219 Token!10212) Unit!52417)

(assert (=> b!3452517 (= lt!1172155 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1001 thiss!18206 rules!2135 tokens!494 (h!42515 tokens!494)))))

(declare-fun b!3452518 () Bool)

(declare-fun e!2138608 () Bool)

(declare-fun e!2138627 () Bool)

(assert (=> b!3452518 (= e!2138608 e!2138627)))

(declare-fun res!1392262 () Bool)

(assert (=> b!3452518 (=> res!1392262 e!2138627)))

(assert (=> b!3452518 (= res!1392262 (or (isSeparator!5423 (rule!8005 (h!42515 tokens!494))) (isSeparator!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))))))

(declare-fun lt!1172164 () Unit!52417)

(assert (=> b!3452518 (= lt!1172164 (forallContained!1370 tokens!494 lambda!121596 (h!42515 (t!272006 tokens!494))))))

(declare-fun lt!1172161 () Unit!52417)

(assert (=> b!3452518 (= lt!1172161 (forallContained!1370 tokens!494 lambda!121596 (h!42515 tokens!494)))))

(declare-fun b!3452519 () Bool)

(declare-fun e!2138614 () Bool)

(declare-fun lt!1172183 () Rule!10646)

(assert (=> b!3452519 (= e!2138614 (= (rule!8005 separatorToken!241) lt!1172183))))

(declare-fun b!3452520 () Bool)

(declare-fun e!2138620 () Bool)

(assert (=> b!3452520 (= e!2138613 e!2138620)))

(declare-fun res!1392270 () Bool)

(assert (=> b!3452520 (=> (not res!1392270) (not e!2138620))))

(declare-fun lt!1172158 () Rule!10646)

(declare-fun matchR!4766 (Regex!10182 List!37217) Bool)

(assert (=> b!3452520 (= res!1392270 (matchR!4766 (regex!5423 lt!1172158) lt!1172172))))

(declare-fun get!11862 (Option!7493) Rule!10646)

(assert (=> b!3452520 (= lt!1172158 (get!11862 lt!1172157))))

(declare-fun res!1392267 () Bool)

(declare-fun e!2138617 () Bool)

(assert (=> start!320880 (=> (not res!1392267) (not e!2138617))))

(assert (=> start!320880 (= res!1392267 (is-Lexer!5010 thiss!18206))))

(assert (=> start!320880 e!2138617))

(assert (=> start!320880 true))

(declare-fun e!2138626 () Bool)

(assert (=> start!320880 e!2138626))

(declare-fun e!2138599 () Bool)

(assert (=> start!320880 e!2138599))

(declare-fun e!2138605 () Bool)

(declare-fun inv!50261 (Token!10212) Bool)

(assert (=> start!320880 (and (inv!50261 separatorToken!241) e!2138605)))

(declare-fun b!3452521 () Bool)

(declare-fun e!2138600 () Bool)

(assert (=> b!3452521 (= e!2138600 e!2138608)))

(declare-fun res!1392268 () Bool)

(assert (=> b!3452521 (=> res!1392268 e!2138608)))

(declare-fun isEmpty!21414 (BalanceConc!22058) Bool)

(assert (=> b!3452521 (= res!1392268 (isEmpty!21414 (_1!21526 (lex!2338 thiss!18206 rules!2135 lt!1172165))))))

(declare-fun seqFromList!3899 (List!37217) BalanceConc!22056)

(assert (=> b!3452521 (= lt!1172165 (seqFromList!3899 lt!1172172))))

(declare-fun tp!1076692 () Bool)

(declare-fun b!3452522 () Bool)

(assert (=> b!3452522 (= e!2138599 (and (inv!50261 (h!42515 tokens!494)) e!2138621 tp!1076692))))

(declare-fun e!2138610 () Bool)

(assert (=> b!3452523 (= e!2138610 (and tp!1076698 tp!1076703))))

(declare-fun b!3452524 () Bool)

(declare-fun res!1392269 () Bool)

(assert (=> b!3452524 (=> (not res!1392269) (not e!2138623))))

(declare-fun apply!8701 (BalanceConc!22058 Int) Token!10212)

(assert (=> b!3452524 (= res!1392269 (= (apply!8701 (_1!21526 lt!1172170) 0) separatorToken!241))))

(declare-fun b!3452525 () Bool)

(declare-fun res!1392275 () Bool)

(assert (=> b!3452525 (=> (not res!1392275) (not e!2138617))))

(assert (=> b!3452525 (= res!1392275 (and (not (is-Nil!37095 tokens!494)) (not (is-Nil!37095 (t!272006 tokens!494)))))))

(declare-fun b!3452526 () Bool)

(declare-fun res!1392263 () Bool)

(assert (=> b!3452526 (=> res!1392263 e!2138600)))

(assert (=> b!3452526 (= res!1392263 (not (rulesProduceIndividualToken!2504 thiss!18206 rules!2135 (h!42515 tokens!494))))))

(declare-fun b!3452527 () Bool)

(declare-fun res!1392284 () Bool)

(assert (=> b!3452527 (=> (not res!1392284) (not e!2138624))))

(assert (=> b!3452527 (= res!1392284 (= (apply!8701 (_1!21526 lt!1172181) 0) (h!42515 (t!272006 tokens!494))))))

(declare-fun e!2138603 () Bool)

(assert (=> b!3452528 (= e!2138603 (and tp!1076701 tp!1076695))))

(declare-fun b!3452529 () Bool)

(declare-fun res!1392273 () Bool)

(assert (=> b!3452529 (=> (not res!1392273) (not e!2138617))))

(declare-fun rulesInvariant!4409 (LexerInterface!5012 List!37218) Bool)

(assert (=> b!3452529 (= res!1392273 (rulesInvariant!4409 thiss!18206 rules!2135))))

(declare-fun b!3452530 () Bool)

(declare-fun res!1392278 () Bool)

(assert (=> b!3452530 (=> (not res!1392278) (not e!2138617))))

(declare-fun sepAndNonSepRulesDisjointChars!1617 (List!37218 List!37218) Bool)

(assert (=> b!3452530 (= res!1392278 (sepAndNonSepRulesDisjointChars!1617 rules!2135 rules!2135))))

(declare-fun b!3452531 () Bool)

(declare-fun e!2138604 () Bool)

(assert (=> b!3452531 (= e!2138604 e!2138602)))

(declare-fun res!1392276 () Bool)

(assert (=> b!3452531 (=> res!1392276 e!2138602)))

(declare-fun lt!1172159 () List!37217)

(declare-fun lt!1172180 () List!37217)

(assert (=> b!3452531 (= res!1392276 (not (= lt!1172159 lt!1172180)))))

(declare-fun lt!1172186 () List!37217)

(assert (=> b!3452531 (= lt!1172186 lt!1172180)))

(declare-fun lt!1172174 () List!37217)

(declare-fun ++!9134 (List!37217 List!37217) List!37217)

(assert (=> b!3452531 (= lt!1172180 (++!9134 lt!1172172 lt!1172174))))

(declare-fun lt!1172162 () Unit!52417)

(declare-fun lt!1172184 () List!37217)

(declare-fun lemmaConcatAssociativity!1941 (List!37217 List!37217 List!37217) Unit!52417)

(assert (=> b!3452531 (= lt!1172162 (lemmaConcatAssociativity!1941 lt!1172172 lt!1172178 lt!1172184))))

(declare-fun res!1392283 () Bool)

(assert (=> b!3452532 (=> (not res!1392283) (not e!2138617))))

(declare-fun forall!7894 (List!37219 Int) Bool)

(assert (=> b!3452532 (= res!1392283 (forall!7894 tokens!494 lambda!121596))))

(declare-fun b!3452533 () Bool)

(declare-fun isEmpty!21415 (BalanceConc!22056) Bool)

(assert (=> b!3452533 (= e!2138624 (isEmpty!21415 (_2!21526 lt!1172181)))))

(declare-fun b!3452534 () Bool)

(assert (=> b!3452534 (= e!2138623 (isEmpty!21415 (_2!21526 lt!1172170)))))

(declare-fun b!3452535 () Bool)

(declare-fun e!2138606 () Bool)

(assert (=> b!3452535 (= e!2138606 false)))

(declare-fun e!2138625 () Bool)

(declare-fun b!3452536 () Bool)

(declare-fun tp!1076694 () Bool)

(assert (=> b!3452536 (= e!2138625 (and tp!1076694 (inv!50257 (tag!6023 (h!42514 rules!2135))) (inv!50260 (transformation!5423 (h!42514 rules!2135))) e!2138603))))

(declare-fun b!3452537 () Bool)

(declare-fun Unit!52419 () Unit!52417)

(assert (=> b!3452537 (= e!2138616 Unit!52419)))

(declare-fun b!3452538 () Bool)

(declare-fun res!1392274 () Bool)

(assert (=> b!3452538 (=> (not res!1392274) (not e!2138617))))

(declare-fun rulesProduceEachTokenIndividually!1463 (LexerInterface!5012 List!37218 BalanceConc!22058) Bool)

(declare-fun seqFromList!3900 (List!37219) BalanceConc!22058)

(assert (=> b!3452538 (= res!1392274 (rulesProduceEachTokenIndividually!1463 thiss!18206 rules!2135 (seqFromList!3900 tokens!494)))))

(declare-fun b!3452539 () Bool)

(declare-fun res!1392282 () Bool)

(assert (=> b!3452539 (=> (not res!1392282) (not e!2138617))))

(assert (=> b!3452539 (= res!1392282 (rulesProduceIndividualToken!2504 thiss!18206 rules!2135 separatorToken!241))))

(assert (=> b!3452540 (= e!2138622 (and tp!1076693 tp!1076691))))

(declare-fun b!3452541 () Bool)

(assert (=> b!3452541 (= e!2138620 (= (rule!8005 (h!42515 tokens!494)) lt!1172158))))

(declare-fun b!3452542 () Bool)

(assert (=> b!3452542 (= e!2138601 e!2138614)))

(declare-fun res!1392280 () Bool)

(assert (=> b!3452542 (=> (not res!1392280) (not e!2138614))))

(assert (=> b!3452542 (= res!1392280 (matchR!4766 (regex!5423 lt!1172183) lt!1172178))))

(assert (=> b!3452542 (= lt!1172183 (get!11862 lt!1172171))))

(declare-fun tp!1076700 () Bool)

(declare-fun b!3452543 () Bool)

(declare-fun e!2138628 () Bool)

(assert (=> b!3452543 (= e!2138628 (and tp!1076700 (inv!50257 (tag!6023 (rule!8005 separatorToken!241))) (inv!50260 (transformation!5423 (rule!8005 separatorToken!241))) e!2138610))))

(declare-fun b!3452544 () Bool)

(declare-fun res!1392287 () Bool)

(assert (=> b!3452544 (=> (not res!1392287) (not e!2138617))))

(declare-fun isEmpty!21416 (List!37218) Bool)

(assert (=> b!3452544 (= res!1392287 (not (isEmpty!21416 rules!2135)))))

(declare-fun b!3452545 () Bool)

(declare-fun e!2138607 () Bool)

(assert (=> b!3452545 (= e!2138627 e!2138607)))

(declare-fun res!1392279 () Bool)

(assert (=> b!3452545 (=> res!1392279 e!2138607)))

(declare-fun list!13494 (BalanceConc!22056) List!37217)

(declare-fun charsOf!3437 (Token!10212) BalanceConc!22056)

(declare-fun printWithSeparatorTokenList!299 (LexerInterface!5012 List!37219 Token!10212) List!37217)

(assert (=> b!3452545 (= res!1392279 (not (= lt!1172184 (++!9134 (++!9134 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494)))) lt!1172178) (printWithSeparatorTokenList!299 thiss!18206 (t!272006 (t!272006 tokens!494)) separatorToken!241)))))))

(assert (=> b!3452545 (= lt!1172174 (++!9134 lt!1172178 lt!1172184))))

(assert (=> b!3452545 (= lt!1172178 (list!13494 (charsOf!3437 separatorToken!241)))))

(assert (=> b!3452545 (= lt!1172184 (printWithSeparatorTokenList!299 thiss!18206 (t!272006 tokens!494) separatorToken!241))))

(assert (=> b!3452545 (= lt!1172159 (printWithSeparatorTokenList!299 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3452546 () Bool)

(assert (=> b!3452546 (= e!2138607 e!2138604)))

(declare-fun res!1392265 () Bool)

(assert (=> b!3452546 (=> res!1392265 e!2138604)))

(assert (=> b!3452546 (= res!1392265 (not (= lt!1172159 lt!1172186)))))

(assert (=> b!3452546 (= lt!1172186 (++!9134 (++!9134 lt!1172172 lt!1172178) lt!1172184))))

(declare-fun b!3452547 () Bool)

(declare-fun e!2138615 () Bool)

(assert (=> b!3452547 (= e!2138615 e!2138600)))

(declare-fun res!1392277 () Bool)

(assert (=> b!3452547 (=> res!1392277 e!2138600)))

(declare-fun lt!1172187 () List!37217)

(declare-fun lt!1172168 () List!37217)

(assert (=> b!3452547 (= res!1392277 (or (not (= lt!1172187 lt!1172172)) (not (= lt!1172168 lt!1172172))))))

(assert (=> b!3452547 (= lt!1172172 (list!13494 (charsOf!3437 (h!42515 tokens!494))))))

(declare-fun b!3452548 () Bool)

(declare-fun Unit!52420 () Unit!52417)

(assert (=> b!3452548 (= e!2138616 Unit!52420)))

(declare-fun lt!1172167 () Unit!52417)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!481 (Regex!10182 List!37217 C!20550) Unit!52417)

(assert (=> b!3452548 (= lt!1172167 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!481 (regex!5423 (rule!8005 separatorToken!241)) lt!1172178 lt!1172156))))

(declare-fun res!1392286 () Bool)

(assert (=> b!3452548 (= res!1392286 (not (matchR!4766 (regex!5423 (rule!8005 separatorToken!241)) lt!1172178)))))

(assert (=> b!3452548 (=> (not res!1392286) (not e!2138606))))

(assert (=> b!3452548 e!2138606))

(declare-fun b!3452549 () Bool)

(declare-fun res!1392285 () Bool)

(assert (=> b!3452549 (=> (not res!1392285) (not e!2138617))))

(assert (=> b!3452549 (= res!1392285 (isSeparator!5423 (rule!8005 separatorToken!241)))))

(declare-fun tp!1076696 () Bool)

(declare-fun b!3452550 () Bool)

(assert (=> b!3452550 (= e!2138605 (and (inv!21 (value!175017 separatorToken!241)) e!2138628 tp!1076696))))

(declare-fun b!3452551 () Bool)

(declare-fun tp!1076702 () Bool)

(assert (=> b!3452551 (= e!2138626 (and e!2138625 tp!1076702))))

(declare-fun b!3452552 () Bool)

(assert (=> b!3452552 (= e!2138617 (not e!2138615))))

(declare-fun res!1392266 () Bool)

(assert (=> b!3452552 (=> res!1392266 e!2138615)))

(assert (=> b!3452552 (= res!1392266 (not (= lt!1172168 lt!1172187)))))

(declare-fun printList!1560 (LexerInterface!5012 List!37219) List!37217)

(assert (=> b!3452552 (= lt!1172187 (printList!1560 thiss!18206 (Cons!37095 (h!42515 tokens!494) Nil!37095)))))

(declare-fun lt!1172182 () BalanceConc!22056)

(assert (=> b!3452552 (= lt!1172168 (list!13494 lt!1172182))))

(declare-fun lt!1172176 () BalanceConc!22058)

(assert (=> b!3452552 (= lt!1172182 (printTailRec!1507 thiss!18206 lt!1172176 0 (BalanceConc!22057 Empty!11221)))))

(assert (=> b!3452552 (= lt!1172182 (print!2077 thiss!18206 lt!1172176))))

(assert (=> b!3452552 (= lt!1172176 (singletonSeq!2519 (h!42515 tokens!494)))))

(assert (= (and start!320880 res!1392267) b!3452544))

(assert (= (and b!3452544 res!1392287) b!3452529))

(assert (= (and b!3452529 res!1392273) b!3452538))

(assert (= (and b!3452538 res!1392274) b!3452539))

(assert (= (and b!3452539 res!1392282) b!3452549))

(assert (= (and b!3452549 res!1392285) b!3452532))

(assert (= (and b!3452532 res!1392283) b!3452530))

(assert (= (and b!3452530 res!1392278) b!3452525))

(assert (= (and b!3452525 res!1392275) b!3452552))

(assert (= (and b!3452552 (not res!1392266)) b!3452547))

(assert (= (and b!3452547 (not res!1392277)) b!3452526))

(assert (= (and b!3452526 (not res!1392263)) b!3452521))

(assert (= (and b!3452521 (not res!1392268)) b!3452518))

(assert (= (and b!3452518 (not res!1392262)) b!3452545))

(assert (= (and b!3452545 (not res!1392279)) b!3452546))

(assert (= (and b!3452546 (not res!1392265)) b!3452531))

(assert (= (and b!3452531 (not res!1392276)) b!3452517))

(assert (= (and b!3452517 res!1392264) b!3452520))

(assert (= (and b!3452520 res!1392270) b!3452541))

(assert (= (and b!3452517 res!1392271) b!3452542))

(assert (= (and b!3452542 res!1392280) b!3452519))

(assert (= (and b!3452517 c!591038) b!3452548))

(assert (= (and b!3452517 (not c!591038)) b!3452537))

(assert (= (and b!3452548 res!1392286) b!3452535))

(assert (= (and b!3452517 res!1392272) b!3452524))

(assert (= (and b!3452524 res!1392269) b!3452534))

(assert (= (and b!3452517 res!1392281) b!3452527))

(assert (= (and b!3452527 res!1392284) b!3452533))

(assert (= b!3452536 b!3452528))

(assert (= b!3452551 b!3452536))

(assert (= (and start!320880 (is-Cons!37094 rules!2135)) b!3452551))

(assert (= b!3452515 b!3452540))

(assert (= b!3452516 b!3452515))

(assert (= b!3452522 b!3452516))

(assert (= (and start!320880 (is-Cons!37095 tokens!494)) b!3452522))

(assert (= b!3452543 b!3452523))

(assert (= b!3452550 b!3452543))

(assert (= start!320880 b!3452550))

(declare-fun m!3850465 () Bool)

(assert (=> b!3452542 m!3850465))

(declare-fun m!3850467 () Bool)

(assert (=> b!3452542 m!3850467))

(declare-fun m!3850469 () Bool)

(assert (=> b!3452550 m!3850469))

(declare-fun m!3850471 () Bool)

(assert (=> b!3452533 m!3850471))

(declare-fun m!3850473 () Bool)

(assert (=> b!3452517 m!3850473))

(declare-fun m!3850475 () Bool)

(assert (=> b!3452517 m!3850475))

(declare-fun m!3850477 () Bool)

(assert (=> b!3452517 m!3850477))

(declare-fun m!3850479 () Bool)

(assert (=> b!3452517 m!3850479))

(declare-fun m!3850481 () Bool)

(assert (=> b!3452517 m!3850481))

(declare-fun m!3850483 () Bool)

(assert (=> b!3452517 m!3850483))

(declare-fun m!3850485 () Bool)

(assert (=> b!3452517 m!3850485))

(declare-fun m!3850487 () Bool)

(assert (=> b!3452517 m!3850487))

(assert (=> b!3452517 m!3850475))

(declare-fun m!3850489 () Bool)

(assert (=> b!3452517 m!3850489))

(declare-fun m!3850491 () Bool)

(assert (=> b!3452517 m!3850491))

(declare-fun m!3850493 () Bool)

(assert (=> b!3452517 m!3850493))

(declare-fun m!3850495 () Bool)

(assert (=> b!3452517 m!3850495))

(declare-fun m!3850497 () Bool)

(assert (=> b!3452517 m!3850497))

(declare-fun m!3850499 () Bool)

(assert (=> b!3452517 m!3850499))

(declare-fun m!3850501 () Bool)

(assert (=> b!3452517 m!3850501))

(declare-fun m!3850503 () Bool)

(assert (=> b!3452517 m!3850503))

(declare-fun m!3850505 () Bool)

(assert (=> b!3452517 m!3850505))

(declare-fun m!3850507 () Bool)

(assert (=> b!3452517 m!3850507))

(declare-fun m!3850509 () Bool)

(assert (=> b!3452517 m!3850509))

(declare-fun m!3850511 () Bool)

(assert (=> b!3452517 m!3850511))

(declare-fun m!3850513 () Bool)

(assert (=> b!3452517 m!3850513))

(declare-fun m!3850515 () Bool)

(assert (=> b!3452517 m!3850515))

(declare-fun m!3850517 () Bool)

(assert (=> b!3452517 m!3850517))

(declare-fun m!3850519 () Bool)

(assert (=> b!3452517 m!3850519))

(declare-fun m!3850521 () Bool)

(assert (=> b!3452517 m!3850521))

(declare-fun m!3850523 () Bool)

(assert (=> b!3452517 m!3850523))

(declare-fun m!3850525 () Bool)

(assert (=> b!3452517 m!3850525))

(declare-fun m!3850527 () Bool)

(assert (=> b!3452536 m!3850527))

(declare-fun m!3850529 () Bool)

(assert (=> b!3452536 m!3850529))

(declare-fun m!3850531 () Bool)

(assert (=> b!3452552 m!3850531))

(declare-fun m!3850533 () Bool)

(assert (=> b!3452552 m!3850533))

(declare-fun m!3850535 () Bool)

(assert (=> b!3452552 m!3850535))

(declare-fun m!3850537 () Bool)

(assert (=> b!3452552 m!3850537))

(declare-fun m!3850539 () Bool)

(assert (=> b!3452552 m!3850539))

(declare-fun m!3850541 () Bool)

(assert (=> b!3452522 m!3850541))

(declare-fun m!3850543 () Bool)

(assert (=> b!3452532 m!3850543))

(declare-fun m!3850545 () Bool)

(assert (=> b!3452538 m!3850545))

(assert (=> b!3452538 m!3850545))

(declare-fun m!3850547 () Bool)

(assert (=> b!3452538 m!3850547))

(declare-fun m!3850549 () Bool)

(assert (=> b!3452534 m!3850549))

(declare-fun m!3850551 () Bool)

(assert (=> b!3452520 m!3850551))

(declare-fun m!3850553 () Bool)

(assert (=> b!3452520 m!3850553))

(declare-fun m!3850555 () Bool)

(assert (=> b!3452516 m!3850555))

(declare-fun m!3850557 () Bool)

(assert (=> b!3452547 m!3850557))

(assert (=> b!3452547 m!3850557))

(declare-fun m!3850559 () Bool)

(assert (=> b!3452547 m!3850559))

(declare-fun m!3850561 () Bool)

(assert (=> start!320880 m!3850561))

(declare-fun m!3850563 () Bool)

(assert (=> b!3452526 m!3850563))

(declare-fun m!3850565 () Bool)

(assert (=> b!3452515 m!3850565))

(declare-fun m!3850567 () Bool)

(assert (=> b!3452515 m!3850567))

(declare-fun m!3850569 () Bool)

(assert (=> b!3452548 m!3850569))

(declare-fun m!3850571 () Bool)

(assert (=> b!3452548 m!3850571))

(declare-fun m!3850573 () Bool)

(assert (=> b!3452545 m!3850573))

(declare-fun m!3850575 () Bool)

(assert (=> b!3452545 m!3850575))

(declare-fun m!3850577 () Bool)

(assert (=> b!3452545 m!3850577))

(declare-fun m!3850579 () Bool)

(assert (=> b!3452545 m!3850579))

(assert (=> b!3452545 m!3850573))

(declare-fun m!3850581 () Bool)

(assert (=> b!3452545 m!3850581))

(declare-fun m!3850583 () Bool)

(assert (=> b!3452545 m!3850583))

(assert (=> b!3452545 m!3850581))

(declare-fun m!3850585 () Bool)

(assert (=> b!3452545 m!3850585))

(assert (=> b!3452545 m!3850575))

(declare-fun m!3850587 () Bool)

(assert (=> b!3452545 m!3850587))

(declare-fun m!3850589 () Bool)

(assert (=> b!3452545 m!3850589))

(assert (=> b!3452545 m!3850585))

(assert (=> b!3452545 m!3850589))

(declare-fun m!3850591 () Bool)

(assert (=> b!3452545 m!3850591))

(declare-fun m!3850593 () Bool)

(assert (=> b!3452527 m!3850593))

(declare-fun m!3850595 () Bool)

(assert (=> b!3452544 m!3850595))

(declare-fun m!3850597 () Bool)

(assert (=> b!3452543 m!3850597))

(declare-fun m!3850599 () Bool)

(assert (=> b!3452543 m!3850599))

(declare-fun m!3850601 () Bool)

(assert (=> b!3452524 m!3850601))

(declare-fun m!3850603 () Bool)

(assert (=> b!3452521 m!3850603))

(declare-fun m!3850605 () Bool)

(assert (=> b!3452521 m!3850605))

(declare-fun m!3850607 () Bool)

(assert (=> b!3452521 m!3850607))

(declare-fun m!3850609 () Bool)

(assert (=> b!3452529 m!3850609))

(declare-fun m!3850611 () Bool)

(assert (=> b!3452546 m!3850611))

(assert (=> b!3452546 m!3850611))

(declare-fun m!3850613 () Bool)

(assert (=> b!3452546 m!3850613))

(declare-fun m!3850615 () Bool)

(assert (=> b!3452530 m!3850615))

(declare-fun m!3850617 () Bool)

(assert (=> b!3452531 m!3850617))

(declare-fun m!3850619 () Bool)

(assert (=> b!3452531 m!3850619))

(declare-fun m!3850621 () Bool)

(assert (=> b!3452539 m!3850621))

(declare-fun m!3850623 () Bool)

(assert (=> b!3452518 m!3850623))

(declare-fun m!3850625 () Bool)

(assert (=> b!3452518 m!3850625))

(push 1)

(assert (not b!3452548))

(assert (not b!3452527))

(assert (not b!3452524))

(assert (not b_next!90323))

(assert (not b!3452521))

(assert (not b!3452520))

(assert (not b!3452538))

(assert b_and!242559)

(assert (not b!3452516))

(assert (not b!3452529))

(assert (not b!3452518))

(assert (not b_next!90325))

(assert (not b_next!90319))

(assert (not b!3452522))

(assert (not b_next!90327))

(assert b_and!242557)

(assert (not start!320880))

(assert (not b!3452552))

(assert (not b!3452547))

(assert (not b!3452543))

(assert (not b!3452530))

(assert b_and!242561)

(assert (not b!3452534))

(assert (not b!3452532))

(assert b_and!242553)

(assert (not b!3452550))

(assert (not b!3452536))

(assert (not b!3452545))

(assert (not b!3452533))

(assert (not b!3452539))

(assert (not b!3452542))

(assert (not b!3452526))

(assert (not b!3452544))

(assert b_and!242551)

(assert (not b_next!90317))

(assert (not b!3452515))

(assert (not b!3452517))

(assert (not b!3452546))

(assert (not b!3452531))

(assert (not b!3452561))

(assert (not b!3452551))

(assert (not b_next!90321))

(assert b_and!242555)

(check-sat)

(pop 1)

(push 1)

(assert b_and!242559)

(assert (not b_next!90327))

(assert b_and!242557)

(assert b_and!242561)

(assert (not b_next!90323))

(assert b_and!242553)

(assert (not b_next!90325))

(assert (not b_next!90319))

(assert b_and!242551)

(assert (not b_next!90317))

(assert (not b_next!90321))

(assert b_and!242555)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!993005 () Bool)

(declare-fun res!1392375 () Bool)

(declare-fun e!2138743 () Bool)

(assert (=> d!993005 (=> (not res!1392375) (not e!2138743))))

(declare-fun isEmpty!21420 (List!37217) Bool)

(assert (=> d!993005 (= res!1392375 (not (isEmpty!21420 (originalCharacters!6137 separatorToken!241))))))

(assert (=> d!993005 (= (inv!50261 separatorToken!241) e!2138743)))

(declare-fun b!3452697 () Bool)

(declare-fun res!1392376 () Bool)

(assert (=> b!3452697 (=> (not res!1392376) (not e!2138743))))

(declare-fun dynLambda!15585 (Int TokenValue!5653) BalanceConc!22056)

(assert (=> b!3452697 (= res!1392376 (= (originalCharacters!6137 separatorToken!241) (list!13494 (dynLambda!15585 (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))) (value!175017 separatorToken!241)))))))

(declare-fun b!3452698 () Bool)

(assert (=> b!3452698 (= e!2138743 (= (size!28116 separatorToken!241) (size!28118 (originalCharacters!6137 separatorToken!241))))))

(assert (= (and d!993005 res!1392375) b!3452697))

(assert (= (and b!3452697 res!1392376) b!3452698))

(declare-fun b_lambda!99151 () Bool)

(assert (=> (not b_lambda!99151) (not b!3452697)))

(declare-fun t!272018 () Bool)

(declare-fun tb!187959 () Bool)

(assert (=> (and b!3452540 (= (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241)))) t!272018) tb!187959))

(declare-fun b!3452703 () Bool)

(declare-fun e!2138746 () Bool)

(declare-fun tp!1076745 () Bool)

(declare-fun inv!50264 (Conc!11221) Bool)

(assert (=> b!3452703 (= e!2138746 (and (inv!50264 (c!591040 (dynLambda!15585 (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))) (value!175017 separatorToken!241)))) tp!1076745))))

(declare-fun result!231824 () Bool)

(declare-fun inv!50265 (BalanceConc!22056) Bool)

(assert (=> tb!187959 (= result!231824 (and (inv!50265 (dynLambda!15585 (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))) (value!175017 separatorToken!241))) e!2138746))))

(assert (= tb!187959 b!3452703))

(declare-fun m!3850789 () Bool)

(assert (=> b!3452703 m!3850789))

(declare-fun m!3850791 () Bool)

(assert (=> tb!187959 m!3850791))

(assert (=> b!3452697 t!272018))

(declare-fun b_and!242575 () Bool)

(assert (= b_and!242553 (and (=> t!272018 result!231824) b_and!242575)))

(declare-fun t!272020 () Bool)

(declare-fun tb!187961 () Bool)

(assert (=> (and b!3452523 (= (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))) (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241)))) t!272020) tb!187961))

(declare-fun result!231828 () Bool)

(assert (= result!231828 result!231824))

(assert (=> b!3452697 t!272020))

(declare-fun b_and!242577 () Bool)

(assert (= b_and!242557 (and (=> t!272020 result!231828) b_and!242577)))

(declare-fun t!272022 () Bool)

(declare-fun tb!187963 () Bool)

(assert (=> (and b!3452528 (= (toChars!7506 (transformation!5423 (h!42514 rules!2135))) (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241)))) t!272022) tb!187963))

(declare-fun result!231830 () Bool)

(assert (= result!231830 result!231824))

(assert (=> b!3452697 t!272022))

(declare-fun b_and!242579 () Bool)

(assert (= b_and!242561 (and (=> t!272022 result!231830) b_and!242579)))

(declare-fun m!3850793 () Bool)

(assert (=> d!993005 m!3850793))

(declare-fun m!3850795 () Bool)

(assert (=> b!3452697 m!3850795))

(assert (=> b!3452697 m!3850795))

(declare-fun m!3850797 () Bool)

(assert (=> b!3452697 m!3850797))

(declare-fun m!3850799 () Bool)

(assert (=> b!3452698 m!3850799))

(assert (=> start!320880 d!993005))

(declare-fun d!993007 () Bool)

(declare-fun c!591051 () Bool)

(assert (=> d!993007 (= c!591051 (is-Cons!37095 tokens!494))))

(declare-fun e!2138749 () List!37217)

(assert (=> d!993007 (= (printWithSeparatorTokenList!299 thiss!18206 tokens!494 separatorToken!241) e!2138749)))

(declare-fun b!3452708 () Bool)

(assert (=> b!3452708 (= e!2138749 (++!9134 (++!9134 (list!13494 (charsOf!3437 (h!42515 tokens!494))) (list!13494 (charsOf!3437 separatorToken!241))) (printWithSeparatorTokenList!299 thiss!18206 (t!272006 tokens!494) separatorToken!241)))))

(declare-fun b!3452709 () Bool)

(assert (=> b!3452709 (= e!2138749 Nil!37093)))

(assert (= (and d!993007 c!591051) b!3452708))

(assert (= (and d!993007 (not c!591051)) b!3452709))

(assert (=> b!3452708 m!3850559))

(assert (=> b!3452708 m!3850587))

(declare-fun m!3850801 () Bool)

(assert (=> b!3452708 m!3850801))

(assert (=> b!3452708 m!3850575))

(assert (=> b!3452708 m!3850587))

(assert (=> b!3452708 m!3850579))

(assert (=> b!3452708 m!3850557))

(assert (=> b!3452708 m!3850559))

(assert (=> b!3452708 m!3850557))

(assert (=> b!3452708 m!3850575))

(assert (=> b!3452708 m!3850801))

(assert (=> b!3452708 m!3850579))

(declare-fun m!3850803 () Bool)

(assert (=> b!3452708 m!3850803))

(assert (=> b!3452545 d!993007))

(declare-fun b!3452718 () Bool)

(declare-fun e!2138755 () List!37217)

(assert (=> b!3452718 (= e!2138755 (printWithSeparatorTokenList!299 thiss!18206 (t!272006 (t!272006 tokens!494)) separatorToken!241))))

(declare-fun e!2138754 () Bool)

(declare-fun b!3452721 () Bool)

(declare-fun lt!1172289 () List!37217)

(assert (=> b!3452721 (= e!2138754 (or (not (= (printWithSeparatorTokenList!299 thiss!18206 (t!272006 (t!272006 tokens!494)) separatorToken!241) Nil!37093)) (= lt!1172289 (++!9134 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494)))) lt!1172178))))))

(declare-fun d!993009 () Bool)

(assert (=> d!993009 e!2138754))

(declare-fun res!1392383 () Bool)

(assert (=> d!993009 (=> (not res!1392383) (not e!2138754))))

(declare-fun content!5166 (List!37217) (Set C!20550))

(assert (=> d!993009 (= res!1392383 (= (content!5166 lt!1172289) (set.union (content!5166 (++!9134 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494)))) lt!1172178)) (content!5166 (printWithSeparatorTokenList!299 thiss!18206 (t!272006 (t!272006 tokens!494)) separatorToken!241)))))))

(assert (=> d!993009 (= lt!1172289 e!2138755)))

(declare-fun c!591054 () Bool)

(assert (=> d!993009 (= c!591054 (is-Nil!37093 (++!9134 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494)))) lt!1172178)))))

(assert (=> d!993009 (= (++!9134 (++!9134 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494)))) lt!1172178) (printWithSeparatorTokenList!299 thiss!18206 (t!272006 (t!272006 tokens!494)) separatorToken!241)) lt!1172289)))

(declare-fun b!3452719 () Bool)

(assert (=> b!3452719 (= e!2138755 (Cons!37093 (h!42513 (++!9134 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494)))) lt!1172178)) (++!9134 (t!272004 (++!9134 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494)))) lt!1172178)) (printWithSeparatorTokenList!299 thiss!18206 (t!272006 (t!272006 tokens!494)) separatorToken!241))))))

(declare-fun b!3452720 () Bool)

(declare-fun res!1392384 () Bool)

(assert (=> b!3452720 (=> (not res!1392384) (not e!2138754))))

(assert (=> b!3452720 (= res!1392384 (= (size!28118 lt!1172289) (+ (size!28118 (++!9134 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494)))) lt!1172178)) (size!28118 (printWithSeparatorTokenList!299 thiss!18206 (t!272006 (t!272006 tokens!494)) separatorToken!241)))))))

(assert (= (and d!993009 c!591054) b!3452718))

(assert (= (and d!993009 (not c!591054)) b!3452719))

(assert (= (and d!993009 res!1392383) b!3452720))

(assert (= (and b!3452720 res!1392384) b!3452721))

(declare-fun m!3850805 () Bool)

(assert (=> d!993009 m!3850805))

(assert (=> d!993009 m!3850585))

(declare-fun m!3850807 () Bool)

(assert (=> d!993009 m!3850807))

(assert (=> d!993009 m!3850589))

(declare-fun m!3850809 () Bool)

(assert (=> d!993009 m!3850809))

(assert (=> b!3452719 m!3850589))

(declare-fun m!3850811 () Bool)

(assert (=> b!3452719 m!3850811))

(declare-fun m!3850813 () Bool)

(assert (=> b!3452720 m!3850813))

(assert (=> b!3452720 m!3850585))

(declare-fun m!3850815 () Bool)

(assert (=> b!3452720 m!3850815))

(assert (=> b!3452720 m!3850589))

(declare-fun m!3850817 () Bool)

(assert (=> b!3452720 m!3850817))

(assert (=> b!3452545 d!993009))

(declare-fun d!993011 () Bool)

(declare-fun lt!1172292 () BalanceConc!22056)

(assert (=> d!993011 (= (list!13494 lt!1172292) (originalCharacters!6137 separatorToken!241))))

(assert (=> d!993011 (= lt!1172292 (dynLambda!15585 (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))) (value!175017 separatorToken!241)))))

(assert (=> d!993011 (= (charsOf!3437 separatorToken!241) lt!1172292)))

(declare-fun b_lambda!99153 () Bool)

(assert (=> (not b_lambda!99153) (not d!993011)))

(assert (=> d!993011 t!272018))

(declare-fun b_and!242581 () Bool)

(assert (= b_and!242575 (and (=> t!272018 result!231824) b_and!242581)))

(assert (=> d!993011 t!272020))

(declare-fun b_and!242583 () Bool)

(assert (= b_and!242577 (and (=> t!272020 result!231828) b_and!242583)))

(assert (=> d!993011 t!272022))

(declare-fun b_and!242585 () Bool)

(assert (= b_and!242579 (and (=> t!272022 result!231830) b_and!242585)))

(declare-fun m!3850819 () Bool)

(assert (=> d!993011 m!3850819))

(assert (=> d!993011 m!3850795))

(assert (=> b!3452545 d!993011))

(declare-fun b!3452722 () Bool)

(declare-fun e!2138757 () List!37217)

(assert (=> b!3452722 (= e!2138757 lt!1172184)))

(declare-fun lt!1172293 () List!37217)

(declare-fun e!2138756 () Bool)

(declare-fun b!3452725 () Bool)

(assert (=> b!3452725 (= e!2138756 (or (not (= lt!1172184 Nil!37093)) (= lt!1172293 lt!1172178)))))

(declare-fun d!993013 () Bool)

(assert (=> d!993013 e!2138756))

(declare-fun res!1392385 () Bool)

(assert (=> d!993013 (=> (not res!1392385) (not e!2138756))))

(assert (=> d!993013 (= res!1392385 (= (content!5166 lt!1172293) (set.union (content!5166 lt!1172178) (content!5166 lt!1172184))))))

(assert (=> d!993013 (= lt!1172293 e!2138757)))

(declare-fun c!591055 () Bool)

(assert (=> d!993013 (= c!591055 (is-Nil!37093 lt!1172178))))

(assert (=> d!993013 (= (++!9134 lt!1172178 lt!1172184) lt!1172293)))

(declare-fun b!3452723 () Bool)

(assert (=> b!3452723 (= e!2138757 (Cons!37093 (h!42513 lt!1172178) (++!9134 (t!272004 lt!1172178) lt!1172184)))))

(declare-fun b!3452724 () Bool)

(declare-fun res!1392386 () Bool)

(assert (=> b!3452724 (=> (not res!1392386) (not e!2138756))))

(assert (=> b!3452724 (= res!1392386 (= (size!28118 lt!1172293) (+ (size!28118 lt!1172178) (size!28118 lt!1172184))))))

(assert (= (and d!993013 c!591055) b!3452722))

(assert (= (and d!993013 (not c!591055)) b!3452723))

(assert (= (and d!993013 res!1392385) b!3452724))

(assert (= (and b!3452724 res!1392386) b!3452725))

(declare-fun m!3850821 () Bool)

(assert (=> d!993013 m!3850821))

(declare-fun m!3850823 () Bool)

(assert (=> d!993013 m!3850823))

(declare-fun m!3850825 () Bool)

(assert (=> d!993013 m!3850825))

(declare-fun m!3850827 () Bool)

(assert (=> b!3452723 m!3850827))

(declare-fun m!3850829 () Bool)

(assert (=> b!3452724 m!3850829))

(declare-fun m!3850831 () Bool)

(assert (=> b!3452724 m!3850831))

(declare-fun m!3850833 () Bool)

(assert (=> b!3452724 m!3850833))

(assert (=> b!3452545 d!993013))

(declare-fun d!993015 () Bool)

(declare-fun c!591056 () Bool)

(assert (=> d!993015 (= c!591056 (is-Cons!37095 (t!272006 (t!272006 tokens!494))))))

(declare-fun e!2138758 () List!37217)

(assert (=> d!993015 (= (printWithSeparatorTokenList!299 thiss!18206 (t!272006 (t!272006 tokens!494)) separatorToken!241) e!2138758)))

(declare-fun b!3452726 () Bool)

(assert (=> b!3452726 (= e!2138758 (++!9134 (++!9134 (list!13494 (charsOf!3437 (h!42515 (t!272006 (t!272006 tokens!494))))) (list!13494 (charsOf!3437 separatorToken!241))) (printWithSeparatorTokenList!299 thiss!18206 (t!272006 (t!272006 (t!272006 tokens!494))) separatorToken!241)))))

(declare-fun b!3452727 () Bool)

(assert (=> b!3452727 (= e!2138758 Nil!37093)))

(assert (= (and d!993015 c!591056) b!3452726))

(assert (= (and d!993015 (not c!591056)) b!3452727))

(declare-fun m!3850835 () Bool)

(assert (=> b!3452726 m!3850835))

(assert (=> b!3452726 m!3850587))

(declare-fun m!3850837 () Bool)

(assert (=> b!3452726 m!3850837))

(assert (=> b!3452726 m!3850575))

(assert (=> b!3452726 m!3850587))

(declare-fun m!3850839 () Bool)

(assert (=> b!3452726 m!3850839))

(declare-fun m!3850841 () Bool)

(assert (=> b!3452726 m!3850841))

(assert (=> b!3452726 m!3850835))

(assert (=> b!3452726 m!3850841))

(assert (=> b!3452726 m!3850575))

(assert (=> b!3452726 m!3850837))

(assert (=> b!3452726 m!3850839))

(declare-fun m!3850843 () Bool)

(assert (=> b!3452726 m!3850843))

(assert (=> b!3452545 d!993015))

(declare-fun d!993017 () Bool)

(declare-fun c!591057 () Bool)

(assert (=> d!993017 (= c!591057 (is-Cons!37095 (t!272006 tokens!494)))))

(declare-fun e!2138759 () List!37217)

(assert (=> d!993017 (= (printWithSeparatorTokenList!299 thiss!18206 (t!272006 tokens!494) separatorToken!241) e!2138759)))

(declare-fun b!3452728 () Bool)

(assert (=> b!3452728 (= e!2138759 (++!9134 (++!9134 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494)))) (list!13494 (charsOf!3437 separatorToken!241))) (printWithSeparatorTokenList!299 thiss!18206 (t!272006 (t!272006 tokens!494)) separatorToken!241)))))

(declare-fun b!3452729 () Bool)

(assert (=> b!3452729 (= e!2138759 Nil!37093)))

(assert (= (and d!993017 c!591057) b!3452728))

(assert (= (and d!993017 (not c!591057)) b!3452729))

(assert (=> b!3452728 m!3850581))

(assert (=> b!3452728 m!3850587))

(declare-fun m!3850845 () Bool)

(assert (=> b!3452728 m!3850845))

(assert (=> b!3452728 m!3850575))

(assert (=> b!3452728 m!3850587))

(assert (=> b!3452728 m!3850589))

(assert (=> b!3452728 m!3850573))

(assert (=> b!3452728 m!3850581))

(assert (=> b!3452728 m!3850573))

(assert (=> b!3452728 m!3850575))

(assert (=> b!3452728 m!3850845))

(assert (=> b!3452728 m!3850589))

(declare-fun m!3850847 () Bool)

(assert (=> b!3452728 m!3850847))

(assert (=> b!3452545 d!993017))

(declare-fun d!993019 () Bool)

(declare-fun list!13496 (Conc!11221) List!37217)

(assert (=> d!993019 (= (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494)))) (list!13496 (c!591040 (charsOf!3437 (h!42515 (t!272006 tokens!494))))))))

(declare-fun bs!559914 () Bool)

(assert (= bs!559914 d!993019))

(declare-fun m!3850849 () Bool)

(assert (=> bs!559914 m!3850849))

(assert (=> b!3452545 d!993019))

(declare-fun b!3452730 () Bool)

(declare-fun e!2138761 () List!37217)

(assert (=> b!3452730 (= e!2138761 lt!1172178)))

(declare-fun b!3452733 () Bool)

(declare-fun e!2138760 () Bool)

(declare-fun lt!1172294 () List!37217)

(assert (=> b!3452733 (= e!2138760 (or (not (= lt!1172178 Nil!37093)) (= lt!1172294 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494)))))))))

(declare-fun d!993021 () Bool)

(assert (=> d!993021 e!2138760))

(declare-fun res!1392389 () Bool)

(assert (=> d!993021 (=> (not res!1392389) (not e!2138760))))

(assert (=> d!993021 (= res!1392389 (= (content!5166 lt!1172294) (set.union (content!5166 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494))))) (content!5166 lt!1172178))))))

(assert (=> d!993021 (= lt!1172294 e!2138761)))

(declare-fun c!591058 () Bool)

(assert (=> d!993021 (= c!591058 (is-Nil!37093 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494))))))))

(assert (=> d!993021 (= (++!9134 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494)))) lt!1172178) lt!1172294)))

(declare-fun b!3452731 () Bool)

(assert (=> b!3452731 (= e!2138761 (Cons!37093 (h!42513 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494))))) (++!9134 (t!272004 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494))))) lt!1172178)))))

(declare-fun b!3452732 () Bool)

(declare-fun res!1392390 () Bool)

(assert (=> b!3452732 (=> (not res!1392390) (not e!2138760))))

(assert (=> b!3452732 (= res!1392390 (= (size!28118 lt!1172294) (+ (size!28118 (list!13494 (charsOf!3437 (h!42515 (t!272006 tokens!494))))) (size!28118 lt!1172178))))))

(assert (= (and d!993021 c!591058) b!3452730))

(assert (= (and d!993021 (not c!591058)) b!3452731))

(assert (= (and d!993021 res!1392389) b!3452732))

(assert (= (and b!3452732 res!1392390) b!3452733))

(declare-fun m!3850851 () Bool)

(assert (=> d!993021 m!3850851))

(assert (=> d!993021 m!3850581))

(declare-fun m!3850853 () Bool)

(assert (=> d!993021 m!3850853))

(assert (=> d!993021 m!3850823))

(declare-fun m!3850855 () Bool)

(assert (=> b!3452731 m!3850855))

(declare-fun m!3850857 () Bool)

(assert (=> b!3452732 m!3850857))

(assert (=> b!3452732 m!3850581))

(declare-fun m!3850859 () Bool)

(assert (=> b!3452732 m!3850859))

(assert (=> b!3452732 m!3850831))

(assert (=> b!3452545 d!993021))

(declare-fun d!993023 () Bool)

(assert (=> d!993023 (= (list!13494 (charsOf!3437 separatorToken!241)) (list!13496 (c!591040 (charsOf!3437 separatorToken!241))))))

(declare-fun bs!559915 () Bool)

(assert (= bs!559915 d!993023))

(declare-fun m!3850861 () Bool)

(assert (=> bs!559915 m!3850861))

(assert (=> b!3452545 d!993023))

(declare-fun d!993025 () Bool)

(declare-fun lt!1172295 () BalanceConc!22056)

(assert (=> d!993025 (= (list!13494 lt!1172295) (originalCharacters!6137 (h!42515 (t!272006 tokens!494))))))

(assert (=> d!993025 (= lt!1172295 (dynLambda!15585 (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))) (value!175017 (h!42515 (t!272006 tokens!494)))))))

(assert (=> d!993025 (= (charsOf!3437 (h!42515 (t!272006 tokens!494))) lt!1172295)))

(declare-fun b_lambda!99155 () Bool)

(assert (=> (not b_lambda!99155) (not d!993025)))

(declare-fun t!272024 () Bool)

(declare-fun tb!187965 () Bool)

(assert (=> (and b!3452540 (= (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494)))))) t!272024) tb!187965))

(declare-fun b!3452734 () Bool)

(declare-fun e!2138762 () Bool)

(declare-fun tp!1076746 () Bool)

(assert (=> b!3452734 (= e!2138762 (and (inv!50264 (c!591040 (dynLambda!15585 (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))) (value!175017 (h!42515 (t!272006 tokens!494)))))) tp!1076746))))

(declare-fun result!231832 () Bool)

(assert (=> tb!187965 (= result!231832 (and (inv!50265 (dynLambda!15585 (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))) (value!175017 (h!42515 (t!272006 tokens!494))))) e!2138762))))

(assert (= tb!187965 b!3452734))

(declare-fun m!3850863 () Bool)

(assert (=> b!3452734 m!3850863))

(declare-fun m!3850865 () Bool)

(assert (=> tb!187965 m!3850865))

(assert (=> d!993025 t!272024))

(declare-fun b_and!242587 () Bool)

(assert (= b_and!242581 (and (=> t!272024 result!231832) b_and!242587)))

(declare-fun tb!187967 () Bool)

(declare-fun t!272026 () Bool)

(assert (=> (and b!3452523 (= (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494)))))) t!272026) tb!187967))

(declare-fun result!231834 () Bool)

(assert (= result!231834 result!231832))

(assert (=> d!993025 t!272026))

(declare-fun b_and!242589 () Bool)

(assert (= b_and!242583 (and (=> t!272026 result!231834) b_and!242589)))

(declare-fun tb!187969 () Bool)

(declare-fun t!272028 () Bool)

(assert (=> (and b!3452528 (= (toChars!7506 (transformation!5423 (h!42514 rules!2135))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494)))))) t!272028) tb!187969))

(declare-fun result!231836 () Bool)

(assert (= result!231836 result!231832))

(assert (=> d!993025 t!272028))

(declare-fun b_and!242591 () Bool)

(assert (= b_and!242585 (and (=> t!272028 result!231836) b_and!242591)))

(declare-fun m!3850867 () Bool)

(assert (=> d!993025 m!3850867))

(declare-fun m!3850869 () Bool)

(assert (=> d!993025 m!3850869))

(assert (=> b!3452545 d!993025))

(declare-fun d!993027 () Bool)

(assert (=> d!993027 (= (isEmpty!21416 rules!2135) (is-Nil!37094 rules!2135))))

(assert (=> b!3452544 d!993027))

(declare-fun d!993029 () Bool)

(declare-fun res!1392393 () Bool)

(declare-fun e!2138763 () Bool)

(assert (=> d!993029 (=> (not res!1392393) (not e!2138763))))

(assert (=> d!993029 (= res!1392393 (not (isEmpty!21420 (originalCharacters!6137 (h!42515 tokens!494)))))))

(assert (=> d!993029 (= (inv!50261 (h!42515 tokens!494)) e!2138763)))

(declare-fun b!3452735 () Bool)

(declare-fun res!1392394 () Bool)

(assert (=> b!3452735 (=> (not res!1392394) (not e!2138763))))

(assert (=> b!3452735 (= res!1392394 (= (originalCharacters!6137 (h!42515 tokens!494)) (list!13494 (dynLambda!15585 (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) (value!175017 (h!42515 tokens!494))))))))

(declare-fun b!3452736 () Bool)

(assert (=> b!3452736 (= e!2138763 (= (size!28116 (h!42515 tokens!494)) (size!28118 (originalCharacters!6137 (h!42515 tokens!494)))))))

(assert (= (and d!993029 res!1392393) b!3452735))

(assert (= (and b!3452735 res!1392394) b!3452736))

(declare-fun b_lambda!99157 () Bool)

(assert (=> (not b_lambda!99157) (not b!3452735)))

(declare-fun t!272030 () Bool)

(declare-fun tb!187971 () Bool)

(assert (=> (and b!3452540 (= (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494))))) t!272030) tb!187971))

(declare-fun b!3452737 () Bool)

(declare-fun e!2138764 () Bool)

(declare-fun tp!1076747 () Bool)

(assert (=> b!3452737 (= e!2138764 (and (inv!50264 (c!591040 (dynLambda!15585 (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) (value!175017 (h!42515 tokens!494))))) tp!1076747))))

(declare-fun result!231838 () Bool)

(assert (=> tb!187971 (= result!231838 (and (inv!50265 (dynLambda!15585 (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) (value!175017 (h!42515 tokens!494)))) e!2138764))))

(assert (= tb!187971 b!3452737))

(declare-fun m!3850871 () Bool)

(assert (=> b!3452737 m!3850871))

(declare-fun m!3850873 () Bool)

(assert (=> tb!187971 m!3850873))

(assert (=> b!3452735 t!272030))

(declare-fun b_and!242593 () Bool)

(assert (= b_and!242587 (and (=> t!272030 result!231838) b_and!242593)))

(declare-fun tb!187973 () Bool)

(declare-fun t!272032 () Bool)

(assert (=> (and b!3452523 (= (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494))))) t!272032) tb!187973))

(declare-fun result!231840 () Bool)

(assert (= result!231840 result!231838))

(assert (=> b!3452735 t!272032))

(declare-fun b_and!242595 () Bool)

(assert (= b_and!242589 (and (=> t!272032 result!231840) b_and!242595)))

(declare-fun t!272034 () Bool)

(declare-fun tb!187975 () Bool)

(assert (=> (and b!3452528 (= (toChars!7506 (transformation!5423 (h!42514 rules!2135))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494))))) t!272034) tb!187975))

(declare-fun result!231842 () Bool)

(assert (= result!231842 result!231838))

(assert (=> b!3452735 t!272034))

(declare-fun b_and!242597 () Bool)

(assert (= b_and!242591 (and (=> t!272034 result!231842) b_and!242597)))

(declare-fun m!3850875 () Bool)

(assert (=> d!993029 m!3850875))

(declare-fun m!3850877 () Bool)

(assert (=> b!3452735 m!3850877))

(assert (=> b!3452735 m!3850877))

(declare-fun m!3850879 () Bool)

(assert (=> b!3452735 m!3850879))

(declare-fun m!3850881 () Bool)

(assert (=> b!3452736 m!3850881))

(assert (=> b!3452522 d!993029))

(declare-fun d!993031 () Bool)

(assert (=> d!993031 (= (inv!50257 (tag!6023 (rule!8005 separatorToken!241))) (= (mod (str.len (value!175016 (tag!6023 (rule!8005 separatorToken!241)))) 2) 0))))

(assert (=> b!3452543 d!993031))

(declare-fun d!993033 () Bool)

(declare-fun res!1392399 () Bool)

(declare-fun e!2138767 () Bool)

(assert (=> d!993033 (=> (not res!1392399) (not e!2138767))))

(declare-fun semiInverseModEq!2274 (Int Int) Bool)

(assert (=> d!993033 (= res!1392399 (semiInverseModEq!2274 (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))) (toValue!7647 (transformation!5423 (rule!8005 separatorToken!241)))))))

(assert (=> d!993033 (= (inv!50260 (transformation!5423 (rule!8005 separatorToken!241))) e!2138767)))

(declare-fun b!3452740 () Bool)

(declare-fun equivClasses!2173 (Int Int) Bool)

(assert (=> b!3452740 (= e!2138767 (equivClasses!2173 (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))) (toValue!7647 (transformation!5423 (rule!8005 separatorToken!241)))))))

(assert (= (and d!993033 res!1392399) b!3452740))

(declare-fun m!3850883 () Bool)

(assert (=> d!993033 m!3850883))

(declare-fun m!3850885 () Bool)

(assert (=> b!3452740 m!3850885))

(assert (=> b!3452543 d!993033))

(declare-fun d!993035 () Bool)

(declare-fun lt!1172301 () Bool)

(declare-fun e!2138772 () Bool)

(assert (=> d!993035 (= lt!1172301 e!2138772)))

(declare-fun res!1392407 () Bool)

(assert (=> d!993035 (=> (not res!1392407) (not e!2138772))))

(declare-fun list!13497 (BalanceConc!22058) List!37219)

(assert (=> d!993035 (= res!1392407 (= (list!13497 (_1!21526 (lex!2338 thiss!18206 rules!2135 (print!2077 thiss!18206 (singletonSeq!2519 (h!42515 tokens!494)))))) (list!13497 (singletonSeq!2519 (h!42515 tokens!494)))))))

(declare-fun e!2138773 () Bool)

(assert (=> d!993035 (= lt!1172301 e!2138773)))

(declare-fun res!1392406 () Bool)

(assert (=> d!993035 (=> (not res!1392406) (not e!2138773))))

(declare-fun lt!1172300 () tuple2!36784)

(assert (=> d!993035 (= res!1392406 (= (size!28117 (_1!21526 lt!1172300)) 1))))

(assert (=> d!993035 (= lt!1172300 (lex!2338 thiss!18206 rules!2135 (print!2077 thiss!18206 (singletonSeq!2519 (h!42515 tokens!494)))))))

(assert (=> d!993035 (not (isEmpty!21416 rules!2135))))

(assert (=> d!993035 (= (rulesProduceIndividualToken!2504 thiss!18206 rules!2135 (h!42515 tokens!494)) lt!1172301)))

(declare-fun b!3452747 () Bool)

(declare-fun res!1392408 () Bool)

(assert (=> b!3452747 (=> (not res!1392408) (not e!2138773))))

(assert (=> b!3452747 (= res!1392408 (= (apply!8701 (_1!21526 lt!1172300) 0) (h!42515 tokens!494)))))

(declare-fun b!3452748 () Bool)

(assert (=> b!3452748 (= e!2138773 (isEmpty!21415 (_2!21526 lt!1172300)))))

(declare-fun b!3452749 () Bool)

(assert (=> b!3452749 (= e!2138772 (isEmpty!21415 (_2!21526 (lex!2338 thiss!18206 rules!2135 (print!2077 thiss!18206 (singletonSeq!2519 (h!42515 tokens!494)))))))))

(assert (= (and d!993035 res!1392406) b!3452747))

(assert (= (and b!3452747 res!1392408) b!3452748))

(assert (= (and d!993035 res!1392407) b!3452749))

(declare-fun m!3850887 () Bool)

(assert (=> d!993035 m!3850887))

(assert (=> d!993035 m!3850533))

(declare-fun m!3850889 () Bool)

(assert (=> d!993035 m!3850889))

(assert (=> d!993035 m!3850533))

(declare-fun m!3850891 () Bool)

(assert (=> d!993035 m!3850891))

(assert (=> d!993035 m!3850533))

(declare-fun m!3850893 () Bool)

(assert (=> d!993035 m!3850893))

(assert (=> d!993035 m!3850595))

(assert (=> d!993035 m!3850891))

(declare-fun m!3850895 () Bool)

(assert (=> d!993035 m!3850895))

(declare-fun m!3850897 () Bool)

(assert (=> b!3452747 m!3850897))

(declare-fun m!3850899 () Bool)

(assert (=> b!3452748 m!3850899))

(assert (=> b!3452749 m!3850533))

(assert (=> b!3452749 m!3850533))

(assert (=> b!3452749 m!3850891))

(assert (=> b!3452749 m!3850891))

(assert (=> b!3452749 m!3850895))

(declare-fun m!3850901 () Bool)

(assert (=> b!3452749 m!3850901))

(assert (=> b!3452526 d!993035))

(declare-fun d!993037 () Bool)

(assert (=> d!993037 (= (list!13494 (charsOf!3437 (h!42515 tokens!494))) (list!13496 (c!591040 (charsOf!3437 (h!42515 tokens!494)))))))

(declare-fun bs!559916 () Bool)

(assert (= bs!559916 d!993037))

(declare-fun m!3850903 () Bool)

(assert (=> bs!559916 m!3850903))

(assert (=> b!3452547 d!993037))

(declare-fun d!993039 () Bool)

(declare-fun lt!1172302 () BalanceConc!22056)

(assert (=> d!993039 (= (list!13494 lt!1172302) (originalCharacters!6137 (h!42515 tokens!494)))))

(assert (=> d!993039 (= lt!1172302 (dynLambda!15585 (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) (value!175017 (h!42515 tokens!494))))))

(assert (=> d!993039 (= (charsOf!3437 (h!42515 tokens!494)) lt!1172302)))

(declare-fun b_lambda!99159 () Bool)

(assert (=> (not b_lambda!99159) (not d!993039)))

(assert (=> d!993039 t!272030))

(declare-fun b_and!242599 () Bool)

(assert (= b_and!242593 (and (=> t!272030 result!231838) b_and!242599)))

(assert (=> d!993039 t!272032))

(declare-fun b_and!242601 () Bool)

(assert (= b_and!242595 (and (=> t!272032 result!231840) b_and!242601)))

(assert (=> d!993039 t!272034))

(declare-fun b_and!242603 () Bool)

(assert (= b_and!242597 (and (=> t!272034 result!231842) b_and!242603)))

(declare-fun m!3850905 () Bool)

(assert (=> d!993039 m!3850905))

(assert (=> d!993039 m!3850877))

(assert (=> b!3452547 d!993039))

(declare-fun b!3452750 () Bool)

(declare-fun e!2138775 () List!37217)

(assert (=> b!3452750 (= e!2138775 lt!1172184)))

(declare-fun b!3452753 () Bool)

(declare-fun lt!1172303 () List!37217)

(declare-fun e!2138774 () Bool)

(assert (=> b!3452753 (= e!2138774 (or (not (= lt!1172184 Nil!37093)) (= lt!1172303 (++!9134 lt!1172172 lt!1172178))))))

(declare-fun d!993041 () Bool)

(assert (=> d!993041 e!2138774))

(declare-fun res!1392409 () Bool)

(assert (=> d!993041 (=> (not res!1392409) (not e!2138774))))

(assert (=> d!993041 (= res!1392409 (= (content!5166 lt!1172303) (set.union (content!5166 (++!9134 lt!1172172 lt!1172178)) (content!5166 lt!1172184))))))

(assert (=> d!993041 (= lt!1172303 e!2138775)))

(declare-fun c!591059 () Bool)

(assert (=> d!993041 (= c!591059 (is-Nil!37093 (++!9134 lt!1172172 lt!1172178)))))

(assert (=> d!993041 (= (++!9134 (++!9134 lt!1172172 lt!1172178) lt!1172184) lt!1172303)))

(declare-fun b!3452751 () Bool)

(assert (=> b!3452751 (= e!2138775 (Cons!37093 (h!42513 (++!9134 lt!1172172 lt!1172178)) (++!9134 (t!272004 (++!9134 lt!1172172 lt!1172178)) lt!1172184)))))

(declare-fun b!3452752 () Bool)

(declare-fun res!1392410 () Bool)

(assert (=> b!3452752 (=> (not res!1392410) (not e!2138774))))

(assert (=> b!3452752 (= res!1392410 (= (size!28118 lt!1172303) (+ (size!28118 (++!9134 lt!1172172 lt!1172178)) (size!28118 lt!1172184))))))

(assert (= (and d!993041 c!591059) b!3452750))

(assert (= (and d!993041 (not c!591059)) b!3452751))

(assert (= (and d!993041 res!1392409) b!3452752))

(assert (= (and b!3452752 res!1392410) b!3452753))

(declare-fun m!3850907 () Bool)

(assert (=> d!993041 m!3850907))

(assert (=> d!993041 m!3850611))

(declare-fun m!3850909 () Bool)

(assert (=> d!993041 m!3850909))

(assert (=> d!993041 m!3850825))

(declare-fun m!3850911 () Bool)

(assert (=> b!3452751 m!3850911))

(declare-fun m!3850913 () Bool)

(assert (=> b!3452752 m!3850913))

(assert (=> b!3452752 m!3850611))

(declare-fun m!3850915 () Bool)

(assert (=> b!3452752 m!3850915))

(assert (=> b!3452752 m!3850833))

(assert (=> b!3452546 d!993041))

(declare-fun b!3452754 () Bool)

(declare-fun e!2138777 () List!37217)

(assert (=> b!3452754 (= e!2138777 lt!1172178)))

(declare-fun e!2138776 () Bool)

(declare-fun lt!1172304 () List!37217)

(declare-fun b!3452757 () Bool)

(assert (=> b!3452757 (= e!2138776 (or (not (= lt!1172178 Nil!37093)) (= lt!1172304 lt!1172172)))))

(declare-fun d!993043 () Bool)

(assert (=> d!993043 e!2138776))

(declare-fun res!1392411 () Bool)

(assert (=> d!993043 (=> (not res!1392411) (not e!2138776))))

(assert (=> d!993043 (= res!1392411 (= (content!5166 lt!1172304) (set.union (content!5166 lt!1172172) (content!5166 lt!1172178))))))

(assert (=> d!993043 (= lt!1172304 e!2138777)))

(declare-fun c!591060 () Bool)

(assert (=> d!993043 (= c!591060 (is-Nil!37093 lt!1172172))))

(assert (=> d!993043 (= (++!9134 lt!1172172 lt!1172178) lt!1172304)))

(declare-fun b!3452755 () Bool)

(assert (=> b!3452755 (= e!2138777 (Cons!37093 (h!42513 lt!1172172) (++!9134 (t!272004 lt!1172172) lt!1172178)))))

(declare-fun b!3452756 () Bool)

(declare-fun res!1392412 () Bool)

(assert (=> b!3452756 (=> (not res!1392412) (not e!2138776))))

(assert (=> b!3452756 (= res!1392412 (= (size!28118 lt!1172304) (+ (size!28118 lt!1172172) (size!28118 lt!1172178))))))

(assert (= (and d!993043 c!591060) b!3452754))

(assert (= (and d!993043 (not c!591060)) b!3452755))

(assert (= (and d!993043 res!1392411) b!3452756))

(assert (= (and b!3452756 res!1392412) b!3452757))

(declare-fun m!3850917 () Bool)

(assert (=> d!993043 m!3850917))

(declare-fun m!3850919 () Bool)

(assert (=> d!993043 m!3850919))

(assert (=> d!993043 m!3850823))

(declare-fun m!3850921 () Bool)

(assert (=> b!3452755 m!3850921))

(declare-fun m!3850923 () Bool)

(assert (=> b!3452756 m!3850923))

(assert (=> b!3452756 m!3850517))

(assert (=> b!3452756 m!3850831))

(assert (=> b!3452546 d!993043))

(declare-fun d!993045 () Bool)

(declare-fun lt!1172307 () Token!10212)

(declare-fun apply!8704 (List!37219 Int) Token!10212)

(assert (=> d!993045 (= lt!1172307 (apply!8704 (list!13497 (_1!21526 lt!1172170)) 0))))

(declare-fun apply!8705 (Conc!11222 Int) Token!10212)

(assert (=> d!993045 (= lt!1172307 (apply!8705 (c!591041 (_1!21526 lt!1172170)) 0))))

(declare-fun e!2138780 () Bool)

(assert (=> d!993045 e!2138780))

(declare-fun res!1392415 () Bool)

(assert (=> d!993045 (=> (not res!1392415) (not e!2138780))))

(assert (=> d!993045 (= res!1392415 (<= 0 0))))

(assert (=> d!993045 (= (apply!8701 (_1!21526 lt!1172170) 0) lt!1172307)))

(declare-fun b!3452760 () Bool)

(assert (=> b!3452760 (= e!2138780 (< 0 (size!28117 (_1!21526 lt!1172170))))))

(assert (= (and d!993045 res!1392415) b!3452760))

(declare-fun m!3850925 () Bool)

(assert (=> d!993045 m!3850925))

(assert (=> d!993045 m!3850925))

(declare-fun m!3850927 () Bool)

(assert (=> d!993045 m!3850927))

(declare-fun m!3850929 () Bool)

(assert (=> d!993045 m!3850929))

(assert (=> b!3452760 m!3850495))

(assert (=> b!3452524 d!993045))

(declare-fun d!993047 () Bool)

(declare-fun res!1392418 () Bool)

(declare-fun e!2138783 () Bool)

(assert (=> d!993047 (=> (not res!1392418) (not e!2138783))))

(declare-fun rulesValid!2034 (LexerInterface!5012 List!37218) Bool)

(assert (=> d!993047 (= res!1392418 (rulesValid!2034 thiss!18206 rules!2135))))

(assert (=> d!993047 (= (rulesInvariant!4409 thiss!18206 rules!2135) e!2138783)))

(declare-fun b!3452763 () Bool)

(declare-datatypes ((List!37224 0))(
  ( (Nil!37100) (Cons!37100 (h!42520 String!41601) (t!272091 List!37224)) )
))
(declare-fun noDuplicateTag!2030 (LexerInterface!5012 List!37218 List!37224) Bool)

(assert (=> b!3452763 (= e!2138783 (noDuplicateTag!2030 thiss!18206 rules!2135 Nil!37100))))

(assert (= (and d!993047 res!1392418) b!3452763))

(declare-fun m!3850931 () Bool)

(assert (=> d!993047 m!3850931))

(declare-fun m!3850933 () Bool)

(assert (=> b!3452763 m!3850933))

(assert (=> b!3452529 d!993047))

(declare-fun b!3452774 () Bool)

(declare-fun res!1392421 () Bool)

(declare-fun e!2138792 () Bool)

(assert (=> b!3452774 (=> res!1392421 e!2138792)))

(assert (=> b!3452774 (= res!1392421 (not (is-IntegerValue!16961 (value!175017 separatorToken!241))))))

(declare-fun e!2138791 () Bool)

(assert (=> b!3452774 (= e!2138791 e!2138792)))

(declare-fun b!3452775 () Bool)

(declare-fun inv!15 (TokenValue!5653) Bool)

(assert (=> b!3452775 (= e!2138792 (inv!15 (value!175017 separatorToken!241)))))

(declare-fun b!3452776 () Bool)

(declare-fun e!2138790 () Bool)

(assert (=> b!3452776 (= e!2138790 e!2138791)))

(declare-fun c!591066 () Bool)

(assert (=> b!3452776 (= c!591066 (is-IntegerValue!16960 (value!175017 separatorToken!241)))))

(declare-fun d!993049 () Bool)

(declare-fun c!591065 () Bool)

(assert (=> d!993049 (= c!591065 (is-IntegerValue!16959 (value!175017 separatorToken!241)))))

(assert (=> d!993049 (= (inv!21 (value!175017 separatorToken!241)) e!2138790)))

(declare-fun b!3452777 () Bool)

(declare-fun inv!16 (TokenValue!5653) Bool)

(assert (=> b!3452777 (= e!2138790 (inv!16 (value!175017 separatorToken!241)))))

(declare-fun b!3452778 () Bool)

(declare-fun inv!17 (TokenValue!5653) Bool)

(assert (=> b!3452778 (= e!2138791 (inv!17 (value!175017 separatorToken!241)))))

(assert (= (and d!993049 c!591065) b!3452777))

(assert (= (and d!993049 (not c!591065)) b!3452776))

(assert (= (and b!3452776 c!591066) b!3452778))

(assert (= (and b!3452776 (not c!591066)) b!3452774))

(assert (= (and b!3452774 (not res!1392421)) b!3452775))

(declare-fun m!3850935 () Bool)

(assert (=> b!3452775 m!3850935))

(declare-fun m!3850937 () Bool)

(assert (=> b!3452777 m!3850937))

(declare-fun m!3850939 () Bool)

(assert (=> b!3452778 m!3850939))

(assert (=> b!3452550 d!993049))

(declare-fun d!993051 () Bool)

(declare-fun lt!1172308 () Token!10212)

(assert (=> d!993051 (= lt!1172308 (apply!8704 (list!13497 (_1!21526 lt!1172181)) 0))))

(assert (=> d!993051 (= lt!1172308 (apply!8705 (c!591041 (_1!21526 lt!1172181)) 0))))

(declare-fun e!2138793 () Bool)

(assert (=> d!993051 e!2138793))

(declare-fun res!1392422 () Bool)

(assert (=> d!993051 (=> (not res!1392422) (not e!2138793))))

(assert (=> d!993051 (= res!1392422 (<= 0 0))))

(assert (=> d!993051 (= (apply!8701 (_1!21526 lt!1172181) 0) lt!1172308)))

(declare-fun b!3452779 () Bool)

(assert (=> b!3452779 (= e!2138793 (< 0 (size!28117 (_1!21526 lt!1172181))))))

(assert (= (and d!993051 res!1392422) b!3452779))

(declare-fun m!3850941 () Bool)

(assert (=> d!993051 m!3850941))

(assert (=> d!993051 m!3850941))

(declare-fun m!3850943 () Bool)

(assert (=> d!993051 m!3850943))

(declare-fun m!3850945 () Bool)

(assert (=> d!993051 m!3850945))

(assert (=> b!3452779 m!3850483))

(assert (=> b!3452527 d!993051))

(declare-fun d!993053 () Bool)

(assert (=> d!993053 (not (matchR!4766 (regex!5423 (rule!8005 separatorToken!241)) lt!1172178))))

(declare-fun lt!1172311 () Unit!52417)

(declare-fun choose!19937 (Regex!10182 List!37217 C!20550) Unit!52417)

(assert (=> d!993053 (= lt!1172311 (choose!19937 (regex!5423 (rule!8005 separatorToken!241)) lt!1172178 lt!1172156))))

(declare-fun validRegex!4635 (Regex!10182) Bool)

(assert (=> d!993053 (validRegex!4635 (regex!5423 (rule!8005 separatorToken!241)))))

(assert (=> d!993053 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!481 (regex!5423 (rule!8005 separatorToken!241)) lt!1172178 lt!1172156) lt!1172311)))

(declare-fun bs!559917 () Bool)

(assert (= bs!559917 d!993053))

(assert (=> bs!559917 m!3850571))

(declare-fun m!3850947 () Bool)

(assert (=> bs!559917 m!3850947))

(declare-fun m!3850949 () Bool)

(assert (=> bs!559917 m!3850949))

(assert (=> b!3452548 d!993053))

(declare-fun d!993055 () Bool)

(declare-fun e!2138819 () Bool)

(assert (=> d!993055 e!2138819))

(declare-fun c!591080 () Bool)

(assert (=> d!993055 (= c!591080 (is-EmptyExpr!10182 (regex!5423 (rule!8005 separatorToken!241))))))

(declare-fun lt!1172314 () Bool)

(declare-fun e!2138814 () Bool)

(assert (=> d!993055 (= lt!1172314 e!2138814)))

(declare-fun c!591078 () Bool)

(assert (=> d!993055 (= c!591078 (isEmpty!21420 lt!1172178))))

(assert (=> d!993055 (validRegex!4635 (regex!5423 (rule!8005 separatorToken!241)))))

(assert (=> d!993055 (= (matchR!4766 (regex!5423 (rule!8005 separatorToken!241)) lt!1172178) lt!1172314)))

(declare-fun b!3452818 () Bool)

(declare-fun e!2138820 () Bool)

(declare-fun e!2138818 () Bool)

(assert (=> b!3452818 (= e!2138820 e!2138818)))

(declare-fun res!1392448 () Bool)

(assert (=> b!3452818 (=> res!1392448 e!2138818)))

(declare-fun call!249201 () Bool)

(assert (=> b!3452818 (= res!1392448 call!249201)))

(declare-fun b!3452819 () Bool)

(declare-fun res!1392442 () Bool)

(declare-fun e!2138816 () Bool)

(assert (=> b!3452819 (=> res!1392442 e!2138816)))

(assert (=> b!3452819 (= res!1392442 (not (is-ElementMatch!10182 (regex!5423 (rule!8005 separatorToken!241)))))))

(declare-fun e!2138815 () Bool)

(assert (=> b!3452819 (= e!2138815 e!2138816)))

(declare-fun b!3452820 () Bool)

(declare-fun nullable!3479 (Regex!10182) Bool)

(assert (=> b!3452820 (= e!2138814 (nullable!3479 (regex!5423 (rule!8005 separatorToken!241))))))

(declare-fun b!3452821 () Bool)

(declare-fun res!1392447 () Bool)

(assert (=> b!3452821 (=> res!1392447 e!2138818)))

(declare-fun tail!5414 (List!37217) List!37217)

(assert (=> b!3452821 (= res!1392447 (not (isEmpty!21420 (tail!5414 lt!1172178))))))

(declare-fun b!3452822 () Bool)

(assert (=> b!3452822 (= e!2138816 e!2138820)))

(declare-fun res!1392443 () Bool)

(assert (=> b!3452822 (=> (not res!1392443) (not e!2138820))))

(assert (=> b!3452822 (= res!1392443 (not lt!1172314))))

(declare-fun b!3452823 () Bool)

(declare-fun res!1392441 () Bool)

(declare-fun e!2138817 () Bool)

(assert (=> b!3452823 (=> (not res!1392441) (not e!2138817))))

(assert (=> b!3452823 (= res!1392441 (not call!249201))))

(declare-fun b!3452824 () Bool)

(declare-fun derivativeStep!3032 (Regex!10182 C!20550) Regex!10182)

(assert (=> b!3452824 (= e!2138814 (matchR!4766 (derivativeStep!3032 (regex!5423 (rule!8005 separatorToken!241)) (head!7294 lt!1172178)) (tail!5414 lt!1172178)))))

(declare-fun b!3452825 () Bool)

(assert (=> b!3452825 (= e!2138819 e!2138815)))

(declare-fun c!591079 () Bool)

(assert (=> b!3452825 (= c!591079 (is-EmptyLang!10182 (regex!5423 (rule!8005 separatorToken!241))))))

(declare-fun b!3452826 () Bool)

(declare-fun res!1392444 () Bool)

(assert (=> b!3452826 (=> (not res!1392444) (not e!2138817))))

(assert (=> b!3452826 (= res!1392444 (isEmpty!21420 (tail!5414 lt!1172178)))))

(declare-fun b!3452827 () Bool)

(assert (=> b!3452827 (= e!2138815 (not lt!1172314))))

(declare-fun bm!249196 () Bool)

(assert (=> bm!249196 (= call!249201 (isEmpty!21420 lt!1172178))))

(declare-fun b!3452828 () Bool)

(declare-fun res!1392446 () Bool)

(assert (=> b!3452828 (=> res!1392446 e!2138816)))

(assert (=> b!3452828 (= res!1392446 e!2138817)))

(declare-fun res!1392445 () Bool)

(assert (=> b!3452828 (=> (not res!1392445) (not e!2138817))))

(assert (=> b!3452828 (= res!1392445 lt!1172314)))

(declare-fun b!3452829 () Bool)

(assert (=> b!3452829 (= e!2138818 (not (= (head!7294 lt!1172178) (c!591039 (regex!5423 (rule!8005 separatorToken!241))))))))

(declare-fun b!3452830 () Bool)

(assert (=> b!3452830 (= e!2138817 (= (head!7294 lt!1172178) (c!591039 (regex!5423 (rule!8005 separatorToken!241)))))))

(declare-fun b!3452831 () Bool)

(assert (=> b!3452831 (= e!2138819 (= lt!1172314 call!249201))))

(assert (= (and d!993055 c!591078) b!3452820))

(assert (= (and d!993055 (not c!591078)) b!3452824))

(assert (= (and d!993055 c!591080) b!3452831))

(assert (= (and d!993055 (not c!591080)) b!3452825))

(assert (= (and b!3452825 c!591079) b!3452827))

(assert (= (and b!3452825 (not c!591079)) b!3452819))

(assert (= (and b!3452819 (not res!1392442)) b!3452828))

(assert (= (and b!3452828 res!1392445) b!3452823))

(assert (= (and b!3452823 res!1392441) b!3452826))

(assert (= (and b!3452826 res!1392444) b!3452830))

(assert (= (and b!3452828 (not res!1392446)) b!3452822))

(assert (= (and b!3452822 res!1392443) b!3452818))

(assert (= (and b!3452818 (not res!1392448)) b!3452821))

(assert (= (and b!3452821 (not res!1392447)) b!3452829))

(assert (= (or b!3452831 b!3452818 b!3452823) bm!249196))

(declare-fun m!3850951 () Bool)

(assert (=> d!993055 m!3850951))

(assert (=> d!993055 m!3850949))

(declare-fun m!3850953 () Bool)

(assert (=> b!3452826 m!3850953))

(assert (=> b!3452826 m!3850953))

(declare-fun m!3850955 () Bool)

(assert (=> b!3452826 m!3850955))

(assert (=> b!3452824 m!3850505))

(assert (=> b!3452824 m!3850505))

(declare-fun m!3850957 () Bool)

(assert (=> b!3452824 m!3850957))

(assert (=> b!3452824 m!3850953))

(assert (=> b!3452824 m!3850957))

(assert (=> b!3452824 m!3850953))

(declare-fun m!3850959 () Bool)

(assert (=> b!3452824 m!3850959))

(declare-fun m!3850961 () Bool)

(assert (=> b!3452820 m!3850961))

(assert (=> b!3452830 m!3850505))

(assert (=> b!3452829 m!3850505))

(assert (=> b!3452821 m!3850953))

(assert (=> b!3452821 m!3850953))

(assert (=> b!3452821 m!3850955))

(assert (=> bm!249196 m!3850951))

(assert (=> b!3452548 d!993055))

(declare-fun b!3452837 () Bool)

(declare-fun e!2138825 () List!37217)

(assert (=> b!3452837 (= e!2138825 lt!1172174)))

(declare-fun b!3452840 () Bool)

(declare-fun lt!1172315 () List!37217)

(declare-fun e!2138824 () Bool)

(assert (=> b!3452840 (= e!2138824 (or (not (= lt!1172174 Nil!37093)) (= lt!1172315 lt!1172172)))))

(declare-fun d!993059 () Bool)

(assert (=> d!993059 e!2138824))

(declare-fun res!1392450 () Bool)

(assert (=> d!993059 (=> (not res!1392450) (not e!2138824))))

(assert (=> d!993059 (= res!1392450 (= (content!5166 lt!1172315) (set.union (content!5166 lt!1172172) (content!5166 lt!1172174))))))

(assert (=> d!993059 (= lt!1172315 e!2138825)))

(declare-fun c!591083 () Bool)

(assert (=> d!993059 (= c!591083 (is-Nil!37093 lt!1172172))))

(assert (=> d!993059 (= (++!9134 lt!1172172 lt!1172174) lt!1172315)))

(declare-fun b!3452838 () Bool)

(assert (=> b!3452838 (= e!2138825 (Cons!37093 (h!42513 lt!1172172) (++!9134 (t!272004 lt!1172172) lt!1172174)))))

(declare-fun b!3452839 () Bool)

(declare-fun res!1392451 () Bool)

(assert (=> b!3452839 (=> (not res!1392451) (not e!2138824))))

(assert (=> b!3452839 (= res!1392451 (= (size!28118 lt!1172315) (+ (size!28118 lt!1172172) (size!28118 lt!1172174))))))

(assert (= (and d!993059 c!591083) b!3452837))

(assert (= (and d!993059 (not c!591083)) b!3452838))

(assert (= (and d!993059 res!1392450) b!3452839))

(assert (= (and b!3452839 res!1392451) b!3452840))

(declare-fun m!3850969 () Bool)

(assert (=> d!993059 m!3850969))

(assert (=> d!993059 m!3850919))

(declare-fun m!3850971 () Bool)

(assert (=> d!993059 m!3850971))

(declare-fun m!3850973 () Bool)

(assert (=> b!3452838 m!3850973))

(declare-fun m!3850975 () Bool)

(assert (=> b!3452839 m!3850975))

(assert (=> b!3452839 m!3850517))

(declare-fun m!3850977 () Bool)

(assert (=> b!3452839 m!3850977))

(assert (=> b!3452531 d!993059))

(declare-fun d!993063 () Bool)

(assert (=> d!993063 (= (++!9134 (++!9134 lt!1172172 lt!1172178) lt!1172184) (++!9134 lt!1172172 (++!9134 lt!1172178 lt!1172184)))))

(declare-fun lt!1172318 () Unit!52417)

(declare-fun choose!19938 (List!37217 List!37217 List!37217) Unit!52417)

(assert (=> d!993063 (= lt!1172318 (choose!19938 lt!1172172 lt!1172178 lt!1172184))))

(assert (=> d!993063 (= (lemmaConcatAssociativity!1941 lt!1172172 lt!1172178 lt!1172184) lt!1172318)))

(declare-fun bs!559918 () Bool)

(assert (= bs!559918 d!993063))

(assert (=> bs!559918 m!3850611))

(assert (=> bs!559918 m!3850583))

(assert (=> bs!559918 m!3850583))

(declare-fun m!3850979 () Bool)

(assert (=> bs!559918 m!3850979))

(declare-fun m!3850981 () Bool)

(assert (=> bs!559918 m!3850981))

(assert (=> bs!559918 m!3850611))

(assert (=> bs!559918 m!3850613))

(assert (=> b!3452531 d!993063))

(declare-fun d!993067 () Bool)

(declare-fun lt!1172321 () BalanceConc!22056)

(assert (=> d!993067 (= (list!13494 lt!1172321) (printList!1560 thiss!18206 (list!13497 lt!1172176)))))

(assert (=> d!993067 (= lt!1172321 (printTailRec!1507 thiss!18206 lt!1172176 0 (BalanceConc!22057 Empty!11221)))))

(assert (=> d!993067 (= (print!2077 thiss!18206 lt!1172176) lt!1172321)))

(declare-fun bs!559919 () Bool)

(assert (= bs!559919 d!993067))

(declare-fun m!3850987 () Bool)

(assert (=> bs!559919 m!3850987))

(declare-fun m!3850989 () Bool)

(assert (=> bs!559919 m!3850989))

(assert (=> bs!559919 m!3850989))

(declare-fun m!3850991 () Bool)

(assert (=> bs!559919 m!3850991))

(assert (=> bs!559919 m!3850531))

(assert (=> b!3452552 d!993067))

(declare-fun d!993071 () Bool)

(declare-fun lt!1172340 () BalanceConc!22056)

(declare-fun printListTailRec!679 (LexerInterface!5012 List!37219 List!37217) List!37217)

(declare-fun dropList!1196 (BalanceConc!22058 Int) List!37219)

(assert (=> d!993071 (= (list!13494 lt!1172340) (printListTailRec!679 thiss!18206 (dropList!1196 lt!1172176 0) (list!13494 (BalanceConc!22057 Empty!11221))))))

(declare-fun e!2138839 () BalanceConc!22056)

(assert (=> d!993071 (= lt!1172340 e!2138839)))

(declare-fun c!591086 () Bool)

(assert (=> d!993071 (= c!591086 (>= 0 (size!28117 lt!1172176)))))

(declare-fun e!2138840 () Bool)

(assert (=> d!993071 e!2138840))

(declare-fun res!1392463 () Bool)

(assert (=> d!993071 (=> (not res!1392463) (not e!2138840))))

(assert (=> d!993071 (= res!1392463 (>= 0 0))))

(assert (=> d!993071 (= (printTailRec!1507 thiss!18206 lt!1172176 0 (BalanceConc!22057 Empty!11221)) lt!1172340)))

(declare-fun b!3452861 () Bool)

(assert (=> b!3452861 (= e!2138840 (<= 0 (size!28117 lt!1172176)))))

(declare-fun b!3452862 () Bool)

(assert (=> b!3452862 (= e!2138839 (BalanceConc!22057 Empty!11221))))

(declare-fun b!3452863 () Bool)

(declare-fun ++!9136 (BalanceConc!22056 BalanceConc!22056) BalanceConc!22056)

(assert (=> b!3452863 (= e!2138839 (printTailRec!1507 thiss!18206 lt!1172176 (+ 0 1) (++!9136 (BalanceConc!22057 Empty!11221) (charsOf!3437 (apply!8701 lt!1172176 0)))))))

(declare-fun lt!1172339 () List!37219)

(assert (=> b!3452863 (= lt!1172339 (list!13497 lt!1172176))))

(declare-fun lt!1172337 () Unit!52417)

(declare-fun lemmaDropApply!1154 (List!37219 Int) Unit!52417)

(assert (=> b!3452863 (= lt!1172337 (lemmaDropApply!1154 lt!1172339 0))))

(declare-fun head!7296 (List!37219) Token!10212)

(declare-fun drop!2002 (List!37219 Int) List!37219)

(assert (=> b!3452863 (= (head!7296 (drop!2002 lt!1172339 0)) (apply!8704 lt!1172339 0))))

(declare-fun lt!1172342 () Unit!52417)

(assert (=> b!3452863 (= lt!1172342 lt!1172337)))

(declare-fun lt!1172338 () List!37219)

(assert (=> b!3452863 (= lt!1172338 (list!13497 lt!1172176))))

(declare-fun lt!1172341 () Unit!52417)

(declare-fun lemmaDropTail!1038 (List!37219 Int) Unit!52417)

(assert (=> b!3452863 (= lt!1172341 (lemmaDropTail!1038 lt!1172338 0))))

(declare-fun tail!5415 (List!37219) List!37219)

(assert (=> b!3452863 (= (tail!5415 (drop!2002 lt!1172338 0)) (drop!2002 lt!1172338 (+ 0 1)))))

(declare-fun lt!1172336 () Unit!52417)

(assert (=> b!3452863 (= lt!1172336 lt!1172341)))

(assert (= (and d!993071 res!1392463) b!3452861))

(assert (= (and d!993071 c!591086) b!3452862))

(assert (= (and d!993071 (not c!591086)) b!3452863))

(declare-fun m!3851005 () Bool)

(assert (=> d!993071 m!3851005))

(declare-fun m!3851007 () Bool)

(assert (=> d!993071 m!3851007))

(declare-fun m!3851009 () Bool)

(assert (=> d!993071 m!3851009))

(declare-fun m!3851011 () Bool)

(assert (=> d!993071 m!3851011))

(assert (=> d!993071 m!3851009))

(assert (=> d!993071 m!3851005))

(declare-fun m!3851013 () Bool)

(assert (=> d!993071 m!3851013))

(assert (=> b!3452861 m!3851011))

(declare-fun m!3851015 () Bool)

(assert (=> b!3452863 m!3851015))

(declare-fun m!3851017 () Bool)

(assert (=> b!3452863 m!3851017))

(assert (=> b!3452863 m!3850989))

(declare-fun m!3851019 () Bool)

(assert (=> b!3452863 m!3851019))

(declare-fun m!3851021 () Bool)

(assert (=> b!3452863 m!3851021))

(declare-fun m!3851023 () Bool)

(assert (=> b!3452863 m!3851023))

(assert (=> b!3452863 m!3851019))

(declare-fun m!3851025 () Bool)

(assert (=> b!3452863 m!3851025))

(declare-fun m!3851027 () Bool)

(assert (=> b!3452863 m!3851027))

(declare-fun m!3851029 () Bool)

(assert (=> b!3452863 m!3851029))

(declare-fun m!3851031 () Bool)

(assert (=> b!3452863 m!3851031))

(assert (=> b!3452863 m!3851017))

(assert (=> b!3452863 m!3851021))

(assert (=> b!3452863 m!3851027))

(declare-fun m!3851033 () Bool)

(assert (=> b!3452863 m!3851033))

(declare-fun m!3851035 () Bool)

(assert (=> b!3452863 m!3851035))

(assert (=> b!3452863 m!3851015))

(declare-fun m!3851037 () Bool)

(assert (=> b!3452863 m!3851037))

(assert (=> b!3452552 d!993071))

(declare-fun d!993075 () Bool)

(assert (=> d!993075 (= (list!13494 lt!1172182) (list!13496 (c!591040 lt!1172182)))))

(declare-fun bs!559920 () Bool)

(assert (= bs!559920 d!993075))

(declare-fun m!3851039 () Bool)

(assert (=> bs!559920 m!3851039))

(assert (=> b!3452552 d!993075))

(declare-fun d!993077 () Bool)

(declare-fun e!2138843 () Bool)

(assert (=> d!993077 e!2138843))

(declare-fun res!1392466 () Bool)

(assert (=> d!993077 (=> (not res!1392466) (not e!2138843))))

(declare-fun lt!1172345 () BalanceConc!22058)

(assert (=> d!993077 (= res!1392466 (= (list!13497 lt!1172345) (Cons!37095 (h!42515 tokens!494) Nil!37095)))))

(declare-fun singleton!1111 (Token!10212) BalanceConc!22058)

(assert (=> d!993077 (= lt!1172345 (singleton!1111 (h!42515 tokens!494)))))

(assert (=> d!993077 (= (singletonSeq!2519 (h!42515 tokens!494)) lt!1172345)))

(declare-fun b!3452866 () Bool)

(declare-fun isBalanced!3404 (Conc!11222) Bool)

(assert (=> b!3452866 (= e!2138843 (isBalanced!3404 (c!591041 lt!1172345)))))

(assert (= (and d!993077 res!1392466) b!3452866))

(declare-fun m!3851041 () Bool)

(assert (=> d!993077 m!3851041))

(declare-fun m!3851043 () Bool)

(assert (=> d!993077 m!3851043))

(declare-fun m!3851045 () Bool)

(assert (=> b!3452866 m!3851045))

(assert (=> b!3452552 d!993077))

(declare-fun d!993079 () Bool)

(declare-fun c!591089 () Bool)

(assert (=> d!993079 (= c!591089 (is-Cons!37095 (Cons!37095 (h!42515 tokens!494) Nil!37095)))))

(declare-fun e!2138846 () List!37217)

(assert (=> d!993079 (= (printList!1560 thiss!18206 (Cons!37095 (h!42515 tokens!494) Nil!37095)) e!2138846)))

(declare-fun b!3452871 () Bool)

(assert (=> b!3452871 (= e!2138846 (++!9134 (list!13494 (charsOf!3437 (h!42515 (Cons!37095 (h!42515 tokens!494) Nil!37095)))) (printList!1560 thiss!18206 (t!272006 (Cons!37095 (h!42515 tokens!494) Nil!37095)))))))

(declare-fun b!3452872 () Bool)

(assert (=> b!3452872 (= e!2138846 Nil!37093)))

(assert (= (and d!993079 c!591089) b!3452871))

(assert (= (and d!993079 (not c!591089)) b!3452872))

(declare-fun m!3851047 () Bool)

(assert (=> b!3452871 m!3851047))

(assert (=> b!3452871 m!3851047))

(declare-fun m!3851049 () Bool)

(assert (=> b!3452871 m!3851049))

(declare-fun m!3851051 () Bool)

(assert (=> b!3452871 m!3851051))

(assert (=> b!3452871 m!3851049))

(assert (=> b!3452871 m!3851051))

(declare-fun m!3851053 () Bool)

(assert (=> b!3452871 m!3851053))

(assert (=> b!3452552 d!993079))

(declare-fun d!993081 () Bool)

(declare-fun res!1392471 () Bool)

(declare-fun e!2138851 () Bool)

(assert (=> d!993081 (=> res!1392471 e!2138851)))

(assert (=> d!993081 (= res!1392471 (not (is-Cons!37094 rules!2135)))))

(assert (=> d!993081 (= (sepAndNonSepRulesDisjointChars!1617 rules!2135 rules!2135) e!2138851)))

(declare-fun b!3452877 () Bool)

(declare-fun e!2138852 () Bool)

(assert (=> b!3452877 (= e!2138851 e!2138852)))

(declare-fun res!1392472 () Bool)

(assert (=> b!3452877 (=> (not res!1392472) (not e!2138852))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!710 (Rule!10646 List!37218) Bool)

(assert (=> b!3452877 (= res!1392472 (ruleDisjointCharsFromAllFromOtherType!710 (h!42514 rules!2135) rules!2135))))

(declare-fun b!3452878 () Bool)

(assert (=> b!3452878 (= e!2138852 (sepAndNonSepRulesDisjointChars!1617 rules!2135 (t!272005 rules!2135)))))

(assert (= (and d!993081 (not res!1392471)) b!3452877))

(assert (= (and b!3452877 res!1392472) b!3452878))

(declare-fun m!3851055 () Bool)

(assert (=> b!3452877 m!3851055))

(declare-fun m!3851057 () Bool)

(assert (=> b!3452878 m!3851057))

(assert (=> b!3452530 d!993081))

(declare-fun d!993083 () Bool)

(declare-fun lt!1172348 () Bool)

(assert (=> d!993083 (= lt!1172348 (isEmpty!21420 (list!13494 (_2!21526 lt!1172170))))))

(declare-fun isEmpty!21421 (Conc!11221) Bool)

(assert (=> d!993083 (= lt!1172348 (isEmpty!21421 (c!591040 (_2!21526 lt!1172170))))))

(assert (=> d!993083 (= (isEmpty!21415 (_2!21526 lt!1172170)) lt!1172348)))

(declare-fun bs!559921 () Bool)

(assert (= bs!559921 d!993083))

(declare-fun m!3851059 () Bool)

(assert (=> bs!559921 m!3851059))

(assert (=> bs!559921 m!3851059))

(declare-fun m!3851061 () Bool)

(assert (=> bs!559921 m!3851061))

(declare-fun m!3851063 () Bool)

(assert (=> bs!559921 m!3851063))

(assert (=> b!3452534 d!993083))

(declare-fun d!993085 () Bool)

(declare-fun lt!1172349 () Bool)

(assert (=> d!993085 (= lt!1172349 (isEmpty!21420 (list!13494 (_2!21526 lt!1172181))))))

(assert (=> d!993085 (= lt!1172349 (isEmpty!21421 (c!591040 (_2!21526 lt!1172181))))))

(assert (=> d!993085 (= (isEmpty!21415 (_2!21526 lt!1172181)) lt!1172349)))

(declare-fun bs!559922 () Bool)

(assert (= bs!559922 d!993085))

(declare-fun m!3851065 () Bool)

(assert (=> bs!559922 m!3851065))

(assert (=> bs!559922 m!3851065))

(declare-fun m!3851067 () Bool)

(assert (=> bs!559922 m!3851067))

(declare-fun m!3851069 () Bool)

(assert (=> bs!559922 m!3851069))

(assert (=> b!3452533 d!993085))

(declare-fun d!993087 () Bool)

(declare-fun res!1392477 () Bool)

(declare-fun e!2138857 () Bool)

(assert (=> d!993087 (=> res!1392477 e!2138857)))

(assert (=> d!993087 (= res!1392477 (is-Nil!37095 tokens!494))))

(assert (=> d!993087 (= (forall!7894 tokens!494 lambda!121596) e!2138857)))

(declare-fun b!3452883 () Bool)

(declare-fun e!2138858 () Bool)

(assert (=> b!3452883 (= e!2138857 e!2138858)))

(declare-fun res!1392478 () Bool)

(assert (=> b!3452883 (=> (not res!1392478) (not e!2138858))))

(declare-fun dynLambda!15586 (Int Token!10212) Bool)

(assert (=> b!3452883 (= res!1392478 (dynLambda!15586 lambda!121596 (h!42515 tokens!494)))))

(declare-fun b!3452884 () Bool)

(assert (=> b!3452884 (= e!2138858 (forall!7894 (t!272006 tokens!494) lambda!121596))))

(assert (= (and d!993087 (not res!1392477)) b!3452883))

(assert (= (and b!3452883 res!1392478) b!3452884))

(declare-fun b_lambda!99163 () Bool)

(assert (=> (not b_lambda!99163) (not b!3452883)))

(declare-fun m!3851071 () Bool)

(assert (=> b!3452883 m!3851071))

(declare-fun m!3851073 () Bool)

(assert (=> b!3452884 m!3851073))

(assert (=> b!3452532 d!993087))

(declare-fun d!993089 () Bool)

(assert (=> d!993089 (= (inv!50257 (tag!6023 (rule!8005 (h!42515 tokens!494)))) (= (mod (str.len (value!175016 (tag!6023 (rule!8005 (h!42515 tokens!494))))) 2) 0))))

(assert (=> b!3452515 d!993089))

(declare-fun d!993091 () Bool)

(declare-fun res!1392479 () Bool)

(declare-fun e!2138859 () Bool)

(assert (=> d!993091 (=> (not res!1392479) (not e!2138859))))

(assert (=> d!993091 (= res!1392479 (semiInverseModEq!2274 (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) (toValue!7647 (transformation!5423 (rule!8005 (h!42515 tokens!494))))))))

(assert (=> d!993091 (= (inv!50260 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) e!2138859)))

(declare-fun b!3452885 () Bool)

(assert (=> b!3452885 (= e!2138859 (equivClasses!2173 (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) (toValue!7647 (transformation!5423 (rule!8005 (h!42515 tokens!494))))))))

(assert (= (and d!993091 res!1392479) b!3452885))

(declare-fun m!3851075 () Bool)

(assert (=> d!993091 m!3851075))

(declare-fun m!3851077 () Bool)

(assert (=> b!3452885 m!3851077))

(assert (=> b!3452515 d!993091))

(declare-fun d!993093 () Bool)

(assert (=> d!993093 (= (inv!50257 (tag!6023 (h!42514 rules!2135))) (= (mod (str.len (value!175016 (tag!6023 (h!42514 rules!2135)))) 2) 0))))

(assert (=> b!3452536 d!993093))

(declare-fun d!993095 () Bool)

(declare-fun res!1392480 () Bool)

(declare-fun e!2138860 () Bool)

(assert (=> d!993095 (=> (not res!1392480) (not e!2138860))))

(assert (=> d!993095 (= res!1392480 (semiInverseModEq!2274 (toChars!7506 (transformation!5423 (h!42514 rules!2135))) (toValue!7647 (transformation!5423 (h!42514 rules!2135)))))))

(assert (=> d!993095 (= (inv!50260 (transformation!5423 (h!42514 rules!2135))) e!2138860)))

(declare-fun b!3452886 () Bool)

(assert (=> b!3452886 (= e!2138860 (equivClasses!2173 (toChars!7506 (transformation!5423 (h!42514 rules!2135))) (toValue!7647 (transformation!5423 (h!42514 rules!2135)))))))

(assert (= (and d!993095 res!1392480) b!3452886))

(declare-fun m!3851079 () Bool)

(assert (=> d!993095 m!3851079))

(declare-fun m!3851081 () Bool)

(assert (=> b!3452886 m!3851081))

(assert (=> b!3452536 d!993095))

(declare-fun d!993097 () Bool)

(assert (=> d!993097 (dynLambda!15586 lambda!121596 (h!42515 (t!272006 tokens!494)))))

(declare-fun lt!1172352 () Unit!52417)

(declare-fun choose!19939 (List!37219 Int Token!10212) Unit!52417)

(assert (=> d!993097 (= lt!1172352 (choose!19939 tokens!494 lambda!121596 (h!42515 (t!272006 tokens!494))))))

(declare-fun e!2138863 () Bool)

(assert (=> d!993097 e!2138863))

(declare-fun res!1392483 () Bool)

(assert (=> d!993097 (=> (not res!1392483) (not e!2138863))))

(assert (=> d!993097 (= res!1392483 (forall!7894 tokens!494 lambda!121596))))

(assert (=> d!993097 (= (forallContained!1370 tokens!494 lambda!121596 (h!42515 (t!272006 tokens!494))) lt!1172352)))

(declare-fun b!3452889 () Bool)

(declare-fun contains!6855 (List!37219 Token!10212) Bool)

(assert (=> b!3452889 (= e!2138863 (contains!6855 tokens!494 (h!42515 (t!272006 tokens!494))))))

(assert (= (and d!993097 res!1392483) b!3452889))

(declare-fun b_lambda!99165 () Bool)

(assert (=> (not b_lambda!99165) (not d!993097)))

(declare-fun m!3851083 () Bool)

(assert (=> d!993097 m!3851083))

(declare-fun m!3851085 () Bool)

(assert (=> d!993097 m!3851085))

(assert (=> d!993097 m!3850543))

(declare-fun m!3851087 () Bool)

(assert (=> b!3452889 m!3851087))

(assert (=> b!3452518 d!993097))

(declare-fun d!993099 () Bool)

(assert (=> d!993099 (dynLambda!15586 lambda!121596 (h!42515 tokens!494))))

(declare-fun lt!1172353 () Unit!52417)

(assert (=> d!993099 (= lt!1172353 (choose!19939 tokens!494 lambda!121596 (h!42515 tokens!494)))))

(declare-fun e!2138864 () Bool)

(assert (=> d!993099 e!2138864))

(declare-fun res!1392484 () Bool)

(assert (=> d!993099 (=> (not res!1392484) (not e!2138864))))

(assert (=> d!993099 (= res!1392484 (forall!7894 tokens!494 lambda!121596))))

(assert (=> d!993099 (= (forallContained!1370 tokens!494 lambda!121596 (h!42515 tokens!494)) lt!1172353)))

(declare-fun b!3452890 () Bool)

(assert (=> b!3452890 (= e!2138864 (contains!6855 tokens!494 (h!42515 tokens!494)))))

(assert (= (and d!993099 res!1392484) b!3452890))

(declare-fun b_lambda!99167 () Bool)

(assert (=> (not b_lambda!99167) (not d!993099)))

(assert (=> d!993099 m!3851071))

(declare-fun m!3851089 () Bool)

(assert (=> d!993099 m!3851089))

(assert (=> d!993099 m!3850543))

(declare-fun m!3851091 () Bool)

(assert (=> b!3452890 m!3851091))

(assert (=> b!3452518 d!993099))

(declare-fun d!993101 () Bool)

(declare-fun lt!1172355 () Bool)

(declare-fun e!2138865 () Bool)

(assert (=> d!993101 (= lt!1172355 e!2138865)))

(declare-fun res!1392486 () Bool)

(assert (=> d!993101 (=> (not res!1392486) (not e!2138865))))

(assert (=> d!993101 (= res!1392486 (= (list!13497 (_1!21526 (lex!2338 thiss!18206 rules!2135 (print!2077 thiss!18206 (singletonSeq!2519 separatorToken!241))))) (list!13497 (singletonSeq!2519 separatorToken!241))))))

(declare-fun e!2138866 () Bool)

(assert (=> d!993101 (= lt!1172355 e!2138866)))

(declare-fun res!1392485 () Bool)

(assert (=> d!993101 (=> (not res!1392485) (not e!2138866))))

(declare-fun lt!1172354 () tuple2!36784)

(assert (=> d!993101 (= res!1392485 (= (size!28117 (_1!21526 lt!1172354)) 1))))

(assert (=> d!993101 (= lt!1172354 (lex!2338 thiss!18206 rules!2135 (print!2077 thiss!18206 (singletonSeq!2519 separatorToken!241))))))

(assert (=> d!993101 (not (isEmpty!21416 rules!2135))))

(assert (=> d!993101 (= (rulesProduceIndividualToken!2504 thiss!18206 rules!2135 separatorToken!241) lt!1172355)))

(declare-fun b!3452891 () Bool)

(declare-fun res!1392487 () Bool)

(assert (=> b!3452891 (=> (not res!1392487) (not e!2138866))))

(assert (=> b!3452891 (= res!1392487 (= (apply!8701 (_1!21526 lt!1172354) 0) separatorToken!241))))

(declare-fun b!3452892 () Bool)

(assert (=> b!3452892 (= e!2138866 (isEmpty!21415 (_2!21526 lt!1172354)))))

(declare-fun b!3452893 () Bool)

(assert (=> b!3452893 (= e!2138865 (isEmpty!21415 (_2!21526 (lex!2338 thiss!18206 rules!2135 (print!2077 thiss!18206 (singletonSeq!2519 separatorToken!241))))))))

(assert (= (and d!993101 res!1392485) b!3452891))

(assert (= (and b!3452891 res!1392487) b!3452892))

(assert (= (and d!993101 res!1392486) b!3452893))

(declare-fun m!3851093 () Bool)

(assert (=> d!993101 m!3851093))

(assert (=> d!993101 m!3850507))

(declare-fun m!3851095 () Bool)

(assert (=> d!993101 m!3851095))

(assert (=> d!993101 m!3850507))

(declare-fun m!3851097 () Bool)

(assert (=> d!993101 m!3851097))

(assert (=> d!993101 m!3850507))

(declare-fun m!3851099 () Bool)

(assert (=> d!993101 m!3851099))

(assert (=> d!993101 m!3850595))

(assert (=> d!993101 m!3851097))

(declare-fun m!3851101 () Bool)

(assert (=> d!993101 m!3851101))

(declare-fun m!3851103 () Bool)

(assert (=> b!3452891 m!3851103))

(declare-fun m!3851105 () Bool)

(assert (=> b!3452892 m!3851105))

(assert (=> b!3452893 m!3850507))

(assert (=> b!3452893 m!3850507))

(assert (=> b!3452893 m!3851097))

(assert (=> b!3452893 m!3851097))

(assert (=> b!3452893 m!3851101))

(declare-fun m!3851107 () Bool)

(assert (=> b!3452893 m!3851107))

(assert (=> b!3452539 d!993101))

(declare-fun d!993103 () Bool)

(assert (=> d!993103 (dynLambda!15586 lambda!121597 (h!42515 (t!272006 tokens!494)))))

(declare-fun lt!1172356 () Unit!52417)

(assert (=> d!993103 (= lt!1172356 (choose!19939 tokens!494 lambda!121597 (h!42515 (t!272006 tokens!494))))))

(declare-fun e!2138867 () Bool)

(assert (=> d!993103 e!2138867))

(declare-fun res!1392488 () Bool)

(assert (=> d!993103 (=> (not res!1392488) (not e!2138867))))

(assert (=> d!993103 (= res!1392488 (forall!7894 tokens!494 lambda!121597))))

(assert (=> d!993103 (= (forallContained!1370 tokens!494 lambda!121597 (h!42515 (t!272006 tokens!494))) lt!1172356)))

(declare-fun b!3452894 () Bool)

(assert (=> b!3452894 (= e!2138867 (contains!6855 tokens!494 (h!42515 (t!272006 tokens!494))))))

(assert (= (and d!993103 res!1392488) b!3452894))

(declare-fun b_lambda!99169 () Bool)

(assert (=> (not b_lambda!99169) (not d!993103)))

(declare-fun m!3851109 () Bool)

(assert (=> d!993103 m!3851109))

(declare-fun m!3851111 () Bool)

(assert (=> d!993103 m!3851111))

(declare-fun m!3851113 () Bool)

(assert (=> d!993103 m!3851113))

(assert (=> b!3452894 m!3851087))

(assert (=> b!3452517 d!993103))

(declare-fun d!993105 () Bool)

(declare-fun isEmpty!21423 (Option!7493) Bool)

(assert (=> d!993105 (= (isDefined!5777 lt!1172171) (not (isEmpty!21423 lt!1172171)))))

(declare-fun bs!559923 () Bool)

(assert (= bs!559923 d!993105))

(declare-fun m!3851115 () Bool)

(assert (=> bs!559923 m!3851115))

(assert (=> b!3452517 d!993105))

(declare-fun b!3452907 () Bool)

(declare-fun e!2138876 () Option!7493)

(assert (=> b!3452907 (= e!2138876 None!7492)))

(declare-fun b!3452908 () Bool)

(declare-fun e!2138879 () Option!7493)

(assert (=> b!3452908 (= e!2138879 (Some!7492 (h!42514 rules!2135)))))

(declare-fun d!993107 () Bool)

(declare-fun e!2138877 () Bool)

(assert (=> d!993107 e!2138877))

(declare-fun res!1392493 () Bool)

(assert (=> d!993107 (=> res!1392493 e!2138877)))

(declare-fun lt!1172365 () Option!7493)

(assert (=> d!993107 (= res!1392493 (isEmpty!21423 lt!1172365))))

(assert (=> d!993107 (= lt!1172365 e!2138879)))

(declare-fun c!591095 () Bool)

(assert (=> d!993107 (= c!591095 (and (is-Cons!37094 rules!2135) (= (tag!6023 (h!42514 rules!2135)) (tag!6023 (rule!8005 separatorToken!241)))))))

(assert (=> d!993107 (rulesInvariant!4409 thiss!18206 rules!2135)))

(assert (=> d!993107 (= (getRuleFromTag!1066 thiss!18206 rules!2135 (tag!6023 (rule!8005 separatorToken!241))) lt!1172365)))

(declare-fun b!3452909 () Bool)

(declare-fun e!2138878 () Bool)

(assert (=> b!3452909 (= e!2138878 (= (tag!6023 (get!11862 lt!1172365)) (tag!6023 (rule!8005 separatorToken!241))))))

(declare-fun b!3452910 () Bool)

(declare-fun lt!1172364 () Unit!52417)

(declare-fun lt!1172363 () Unit!52417)

(assert (=> b!3452910 (= lt!1172364 lt!1172363)))

(assert (=> b!3452910 (rulesInvariant!4409 thiss!18206 (t!272005 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!423 (LexerInterface!5012 Rule!10646 List!37218) Unit!52417)

(assert (=> b!3452910 (= lt!1172363 (lemmaInvariantOnRulesThenOnTail!423 thiss!18206 (h!42514 rules!2135) (t!272005 rules!2135)))))

(assert (=> b!3452910 (= e!2138876 (getRuleFromTag!1066 thiss!18206 (t!272005 rules!2135) (tag!6023 (rule!8005 separatorToken!241))))))

(declare-fun b!3452911 () Bool)

(assert (=> b!3452911 (= e!2138879 e!2138876)))

(declare-fun c!591094 () Bool)

(assert (=> b!3452911 (= c!591094 (and (is-Cons!37094 rules!2135) (not (= (tag!6023 (h!42514 rules!2135)) (tag!6023 (rule!8005 separatorToken!241))))))))

(declare-fun b!3452912 () Bool)

(assert (=> b!3452912 (= e!2138877 e!2138878)))

(declare-fun res!1392494 () Bool)

(assert (=> b!3452912 (=> (not res!1392494) (not e!2138878))))

(assert (=> b!3452912 (= res!1392494 (contains!6851 rules!2135 (get!11862 lt!1172365)))))

(assert (= (and d!993107 c!591095) b!3452908))

(assert (= (and d!993107 (not c!591095)) b!3452911))

(assert (= (and b!3452911 c!591094) b!3452910))

(assert (= (and b!3452911 (not c!591094)) b!3452907))

(assert (= (and d!993107 (not res!1392493)) b!3452912))

(assert (= (and b!3452912 res!1392494) b!3452909))

(declare-fun m!3851117 () Bool)

(assert (=> d!993107 m!3851117))

(assert (=> d!993107 m!3850609))

(declare-fun m!3851119 () Bool)

(assert (=> b!3452909 m!3851119))

(declare-fun m!3851121 () Bool)

(assert (=> b!3452910 m!3851121))

(declare-fun m!3851123 () Bool)

(assert (=> b!3452910 m!3851123))

(declare-fun m!3851125 () Bool)

(assert (=> b!3452910 m!3851125))

(assert (=> b!3452912 m!3851119))

(assert (=> b!3452912 m!3851119))

(declare-fun m!3851127 () Bool)

(assert (=> b!3452912 m!3851127))

(assert (=> b!3452517 d!993107))

(declare-fun b!3452931 () Bool)

(declare-fun e!2138890 () Bool)

(declare-fun e!2138889 () Bool)

(assert (=> b!3452931 (= e!2138890 e!2138889)))

(declare-fun res!1392509 () Bool)

(assert (=> b!3452931 (=> (not res!1392509) (not e!2138889))))

(declare-fun lt!1172380 () Option!7494)

(declare-fun get!11864 (Option!7494) tuple2!36786)

(assert (=> b!3452931 (= res!1392509 (matchR!4766 (regex!5423 (rule!8005 (h!42515 tokens!494))) (list!13494 (charsOf!3437 (_1!21527 (get!11864 lt!1172380))))))))

(declare-fun b!3452932 () Bool)

(declare-fun res!1392513 () Bool)

(assert (=> b!3452932 (=> (not res!1392513) (not e!2138889))))

(assert (=> b!3452932 (= res!1392513 (< (size!28118 (_2!21527 (get!11864 lt!1172380))) (size!28118 lt!1172172)))))

(declare-fun b!3452933 () Bool)

(declare-fun res!1392511 () Bool)

(assert (=> b!3452933 (=> (not res!1392511) (not e!2138889))))

(assert (=> b!3452933 (= res!1392511 (= (value!175017 (_1!21527 (get!11864 lt!1172380))) (apply!8700 (transformation!5423 (rule!8005 (_1!21527 (get!11864 lt!1172380)))) (seqFromList!3899 (originalCharacters!6137 (_1!21527 (get!11864 lt!1172380)))))))))

(declare-fun b!3452934 () Bool)

(assert (=> b!3452934 (= e!2138889 (= (size!28116 (_1!21527 (get!11864 lt!1172380))) (size!28118 (originalCharacters!6137 (_1!21527 (get!11864 lt!1172380))))))))

(declare-fun b!3452935 () Bool)

(declare-fun e!2138891 () Option!7494)

(assert (=> b!3452935 (= e!2138891 None!7493)))

(declare-fun b!3452936 () Bool)

(declare-fun res!1392515 () Bool)

(assert (=> b!3452936 (=> (not res!1392515) (not e!2138889))))

(assert (=> b!3452936 (= res!1392515 (= (rule!8005 (_1!21527 (get!11864 lt!1172380))) (rule!8005 (h!42515 tokens!494))))))

(declare-fun b!3452937 () Bool)

(declare-fun e!2138888 () Bool)

(declare-datatypes ((tuple2!36792 0))(
  ( (tuple2!36793 (_1!21530 List!37217) (_2!21530 List!37217)) )
))
(declare-fun findLongestMatchInner!900 (Regex!10182 List!37217 Int List!37217 List!37217 Int) tuple2!36792)

(assert (=> b!3452937 (= e!2138888 (matchR!4766 (regex!5423 (rule!8005 (h!42515 tokens!494))) (_1!21530 (findLongestMatchInner!900 (regex!5423 (rule!8005 (h!42515 tokens!494))) Nil!37093 (size!28118 Nil!37093) lt!1172172 lt!1172172 (size!28118 lt!1172172)))))))

(declare-fun b!3452938 () Bool)

(declare-fun res!1392510 () Bool)

(assert (=> b!3452938 (=> (not res!1392510) (not e!2138889))))

(assert (=> b!3452938 (= res!1392510 (= (++!9134 (list!13494 (charsOf!3437 (_1!21527 (get!11864 lt!1172380)))) (_2!21527 (get!11864 lt!1172380))) lt!1172172))))

(declare-fun b!3452939 () Bool)

(declare-fun lt!1172376 () tuple2!36792)

(declare-fun size!28122 (BalanceConc!22056) Int)

(assert (=> b!3452939 (= e!2138891 (Some!7493 (tuple2!36787 (Token!10213 (apply!8700 (transformation!5423 (rule!8005 (h!42515 tokens!494))) (seqFromList!3899 (_1!21530 lt!1172376))) (rule!8005 (h!42515 tokens!494)) (size!28122 (seqFromList!3899 (_1!21530 lt!1172376))) (_1!21530 lt!1172376)) (_2!21530 lt!1172376))))))

(declare-fun lt!1172379 () Unit!52417)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!873 (Regex!10182 List!37217) Unit!52417)

(assert (=> b!3452939 (= lt!1172379 (longestMatchIsAcceptedByMatchOrIsEmpty!873 (regex!5423 (rule!8005 (h!42515 tokens!494))) lt!1172172))))

(declare-fun res!1392512 () Bool)

(assert (=> b!3452939 (= res!1392512 (isEmpty!21420 (_1!21530 (findLongestMatchInner!900 (regex!5423 (rule!8005 (h!42515 tokens!494))) Nil!37093 (size!28118 Nil!37093) lt!1172172 lt!1172172 (size!28118 lt!1172172)))))))

(assert (=> b!3452939 (=> res!1392512 e!2138888)))

(assert (=> b!3452939 e!2138888))

(declare-fun lt!1172377 () Unit!52417)

(assert (=> b!3452939 (= lt!1172377 lt!1172379)))

(declare-fun lt!1172378 () Unit!52417)

(declare-fun lemmaSemiInverse!1250 (TokenValueInjection!10734 BalanceConc!22056) Unit!52417)

(assert (=> b!3452939 (= lt!1172378 (lemmaSemiInverse!1250 (transformation!5423 (rule!8005 (h!42515 tokens!494))) (seqFromList!3899 (_1!21530 lt!1172376))))))

(declare-fun d!993109 () Bool)

(assert (=> d!993109 e!2138890))

(declare-fun res!1392514 () Bool)

(assert (=> d!993109 (=> res!1392514 e!2138890)))

(declare-fun isEmpty!21425 (Option!7494) Bool)

(assert (=> d!993109 (= res!1392514 (isEmpty!21425 lt!1172380))))

(assert (=> d!993109 (= lt!1172380 e!2138891)))

(declare-fun c!591098 () Bool)

(assert (=> d!993109 (= c!591098 (isEmpty!21420 (_1!21530 lt!1172376)))))

(declare-fun findLongestMatch!815 (Regex!10182 List!37217) tuple2!36792)

(assert (=> d!993109 (= lt!1172376 (findLongestMatch!815 (regex!5423 (rule!8005 (h!42515 tokens!494))) lt!1172172))))

(declare-fun ruleValid!1729 (LexerInterface!5012 Rule!10646) Bool)

(assert (=> d!993109 (ruleValid!1729 thiss!18206 (rule!8005 (h!42515 tokens!494)))))

(assert (=> d!993109 (= (maxPrefixOneRule!1719 thiss!18206 (rule!8005 (h!42515 tokens!494)) lt!1172172) lt!1172380)))

(assert (= (and d!993109 c!591098) b!3452935))

(assert (= (and d!993109 (not c!591098)) b!3452939))

(assert (= (and b!3452939 (not res!1392512)) b!3452937))

(assert (= (and d!993109 (not res!1392514)) b!3452931))

(assert (= (and b!3452931 res!1392509) b!3452938))

(assert (= (and b!3452938 res!1392510) b!3452932))

(assert (= (and b!3452932 res!1392513) b!3452936))

(assert (= (and b!3452936 res!1392515) b!3452933))

(assert (= (and b!3452933 res!1392511) b!3452934))

(declare-fun m!3851129 () Bool)

(assert (=> b!3452936 m!3851129))

(assert (=> b!3452934 m!3851129))

(declare-fun m!3851131 () Bool)

(assert (=> b!3452934 m!3851131))

(assert (=> b!3452931 m!3851129))

(declare-fun m!3851133 () Bool)

(assert (=> b!3452931 m!3851133))

(assert (=> b!3452931 m!3851133))

(declare-fun m!3851135 () Bool)

(assert (=> b!3452931 m!3851135))

(assert (=> b!3452931 m!3851135))

(declare-fun m!3851137 () Bool)

(assert (=> b!3452931 m!3851137))

(assert (=> b!3452932 m!3851129))

(declare-fun m!3851139 () Bool)

(assert (=> b!3452932 m!3851139))

(assert (=> b!3452932 m!3850517))

(declare-fun m!3851141 () Bool)

(assert (=> d!993109 m!3851141))

(declare-fun m!3851143 () Bool)

(assert (=> d!993109 m!3851143))

(declare-fun m!3851145 () Bool)

(assert (=> d!993109 m!3851145))

(declare-fun m!3851147 () Bool)

(assert (=> d!993109 m!3851147))

(assert (=> b!3452938 m!3851129))

(assert (=> b!3452938 m!3851133))

(assert (=> b!3452938 m!3851133))

(assert (=> b!3452938 m!3851135))

(assert (=> b!3452938 m!3851135))

(declare-fun m!3851149 () Bool)

(assert (=> b!3452938 m!3851149))

(declare-fun m!3851151 () Bool)

(assert (=> b!3452937 m!3851151))

(assert (=> b!3452937 m!3850517))

(assert (=> b!3452937 m!3851151))

(assert (=> b!3452937 m!3850517))

(declare-fun m!3851153 () Bool)

(assert (=> b!3452937 m!3851153))

(declare-fun m!3851155 () Bool)

(assert (=> b!3452937 m!3851155))

(assert (=> b!3452933 m!3851129))

(declare-fun m!3851157 () Bool)

(assert (=> b!3452933 m!3851157))

(assert (=> b!3452933 m!3851157))

(declare-fun m!3851159 () Bool)

(assert (=> b!3452933 m!3851159))

(declare-fun m!3851161 () Bool)

(assert (=> b!3452939 m!3851161))

(assert (=> b!3452939 m!3851161))

(declare-fun m!3851163 () Bool)

(assert (=> b!3452939 m!3851163))

(assert (=> b!3452939 m!3851161))

(declare-fun m!3851165 () Bool)

(assert (=> b!3452939 m!3851165))

(assert (=> b!3452939 m!3850517))

(declare-fun m!3851167 () Bool)

(assert (=> b!3452939 m!3851167))

(declare-fun m!3851169 () Bool)

(assert (=> b!3452939 m!3851169))

(assert (=> b!3452939 m!3851151))

(assert (=> b!3452939 m!3851161))

(declare-fun m!3851171 () Bool)

(assert (=> b!3452939 m!3851171))

(assert (=> b!3452939 m!3851151))

(assert (=> b!3452939 m!3850517))

(assert (=> b!3452939 m!3851153))

(assert (=> b!3452517 d!993109))

(declare-fun d!993111 () Bool)

(declare-fun dynLambda!15588 (Int BalanceConc!22056) TokenValue!5653)

(assert (=> d!993111 (= (apply!8700 (transformation!5423 (rule!8005 (h!42515 tokens!494))) lt!1172165) (dynLambda!15588 (toValue!7647 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) lt!1172165))))

(declare-fun b_lambda!99171 () Bool)

(assert (=> (not b_lambda!99171) (not d!993111)))

(declare-fun t!272045 () Bool)

(declare-fun tb!187983 () Bool)

(assert (=> (and b!3452540 (= (toValue!7647 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) (toValue!7647 (transformation!5423 (rule!8005 (h!42515 tokens!494))))) t!272045) tb!187983))

(declare-fun result!231852 () Bool)

(assert (=> tb!187983 (= result!231852 (inv!21 (dynLambda!15588 (toValue!7647 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) lt!1172165)))))

(declare-fun m!3851173 () Bool)

(assert (=> tb!187983 m!3851173))

(assert (=> d!993111 t!272045))

(declare-fun b_and!242611 () Bool)

(assert (= b_and!242551 (and (=> t!272045 result!231852) b_and!242611)))

(declare-fun t!272047 () Bool)

(declare-fun tb!187985 () Bool)

(assert (=> (and b!3452523 (= (toValue!7647 (transformation!5423 (rule!8005 separatorToken!241))) (toValue!7647 (transformation!5423 (rule!8005 (h!42515 tokens!494))))) t!272047) tb!187985))

(declare-fun result!231856 () Bool)

(assert (= result!231856 result!231852))

(assert (=> d!993111 t!272047))

(declare-fun b_and!242613 () Bool)

(assert (= b_and!242555 (and (=> t!272047 result!231856) b_and!242613)))

(declare-fun tb!187987 () Bool)

(declare-fun t!272049 () Bool)

(assert (=> (and b!3452528 (= (toValue!7647 (transformation!5423 (h!42514 rules!2135))) (toValue!7647 (transformation!5423 (rule!8005 (h!42515 tokens!494))))) t!272049) tb!187987))

(declare-fun result!231858 () Bool)

(assert (= result!231858 result!231852))

(assert (=> d!993111 t!272049))

(declare-fun b_and!242615 () Bool)

(assert (= b_and!242559 (and (=> t!272049 result!231858) b_and!242615)))

(declare-fun m!3851175 () Bool)

(assert (=> d!993111 m!3851175))

(assert (=> b!3452517 d!993111))

(declare-fun d!993113 () Bool)

(declare-fun e!2138906 () Bool)

(assert (=> d!993113 e!2138906))

(declare-fun res!1392529 () Bool)

(assert (=> d!993113 (=> (not res!1392529) (not e!2138906))))

(assert (=> d!993113 (= res!1392529 (isDefined!5777 (getRuleFromTag!1066 thiss!18206 rules!2135 (tag!6023 (rule!8005 separatorToken!241)))))))

(declare-fun lt!1172392 () Unit!52417)

(declare-fun choose!19940 (LexerInterface!5012 List!37218 List!37217 Token!10212) Unit!52417)

(assert (=> d!993113 (= lt!1172392 (choose!19940 thiss!18206 rules!2135 lt!1172178 separatorToken!241))))

(assert (=> d!993113 (rulesInvariant!4409 thiss!18206 rules!2135)))

(assert (=> d!993113 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1066 thiss!18206 rules!2135 lt!1172178 separatorToken!241) lt!1172392)))

(declare-fun b!3452961 () Bool)

(declare-fun res!1392530 () Bool)

(assert (=> b!3452961 (=> (not res!1392530) (not e!2138906))))

(assert (=> b!3452961 (= res!1392530 (matchR!4766 (regex!5423 (get!11862 (getRuleFromTag!1066 thiss!18206 rules!2135 (tag!6023 (rule!8005 separatorToken!241))))) (list!13494 (charsOf!3437 separatorToken!241))))))

(declare-fun b!3452962 () Bool)

(assert (=> b!3452962 (= e!2138906 (= (rule!8005 separatorToken!241) (get!11862 (getRuleFromTag!1066 thiss!18206 rules!2135 (tag!6023 (rule!8005 separatorToken!241))))))))

(assert (= (and d!993113 res!1392529) b!3452961))

(assert (= (and b!3452961 res!1392530) b!3452962))

(assert (=> d!993113 m!3850511))

(assert (=> d!993113 m!3850511))

(declare-fun m!3851203 () Bool)

(assert (=> d!993113 m!3851203))

(declare-fun m!3851205 () Bool)

(assert (=> d!993113 m!3851205))

(assert (=> d!993113 m!3850609))

(assert (=> b!3452961 m!3850511))

(declare-fun m!3851207 () Bool)

(assert (=> b!3452961 m!3851207))

(assert (=> b!3452961 m!3850587))

(declare-fun m!3851209 () Bool)

(assert (=> b!3452961 m!3851209))

(assert (=> b!3452961 m!3850575))

(assert (=> b!3452961 m!3850511))

(assert (=> b!3452961 m!3850575))

(assert (=> b!3452961 m!3850587))

(assert (=> b!3452962 m!3850511))

(assert (=> b!3452962 m!3850511))

(assert (=> b!3452962 m!3851207))

(assert (=> b!3452517 d!993113))

(declare-fun d!993121 () Bool)

(declare-fun lt!1172397 () BalanceConc!22056)

(assert (=> d!993121 (= (list!13494 lt!1172397) (printListTailRec!679 thiss!18206 (dropList!1196 lt!1172179 0) (list!13494 (BalanceConc!22057 Empty!11221))))))

(declare-fun e!2138907 () BalanceConc!22056)

(assert (=> d!993121 (= lt!1172397 e!2138907)))

(declare-fun c!591102 () Bool)

(assert (=> d!993121 (= c!591102 (>= 0 (size!28117 lt!1172179)))))

(declare-fun e!2138908 () Bool)

(assert (=> d!993121 e!2138908))

(declare-fun res!1392531 () Bool)

(assert (=> d!993121 (=> (not res!1392531) (not e!2138908))))

(assert (=> d!993121 (= res!1392531 (>= 0 0))))

(assert (=> d!993121 (= (printTailRec!1507 thiss!18206 lt!1172179 0 (BalanceConc!22057 Empty!11221)) lt!1172397)))

(declare-fun b!3452963 () Bool)

(assert (=> b!3452963 (= e!2138908 (<= 0 (size!28117 lt!1172179)))))

(declare-fun b!3452964 () Bool)

(assert (=> b!3452964 (= e!2138907 (BalanceConc!22057 Empty!11221))))

(declare-fun b!3452965 () Bool)

(assert (=> b!3452965 (= e!2138907 (printTailRec!1507 thiss!18206 lt!1172179 (+ 0 1) (++!9136 (BalanceConc!22057 Empty!11221) (charsOf!3437 (apply!8701 lt!1172179 0)))))))

(declare-fun lt!1172396 () List!37219)

(assert (=> b!3452965 (= lt!1172396 (list!13497 lt!1172179))))

(declare-fun lt!1172394 () Unit!52417)

(assert (=> b!3452965 (= lt!1172394 (lemmaDropApply!1154 lt!1172396 0))))

(assert (=> b!3452965 (= (head!7296 (drop!2002 lt!1172396 0)) (apply!8704 lt!1172396 0))))

(declare-fun lt!1172399 () Unit!52417)

(assert (=> b!3452965 (= lt!1172399 lt!1172394)))

(declare-fun lt!1172395 () List!37219)

(assert (=> b!3452965 (= lt!1172395 (list!13497 lt!1172179))))

(declare-fun lt!1172398 () Unit!52417)

(assert (=> b!3452965 (= lt!1172398 (lemmaDropTail!1038 lt!1172395 0))))

(assert (=> b!3452965 (= (tail!5415 (drop!2002 lt!1172395 0)) (drop!2002 lt!1172395 (+ 0 1)))))

(declare-fun lt!1172393 () Unit!52417)

(assert (=> b!3452965 (= lt!1172393 lt!1172398)))

(assert (= (and d!993121 res!1392531) b!3452963))

(assert (= (and d!993121 c!591102) b!3452964))

(assert (= (and d!993121 (not c!591102)) b!3452965))

(assert (=> d!993121 m!3851005))

(declare-fun m!3851211 () Bool)

(assert (=> d!993121 m!3851211))

(declare-fun m!3851213 () Bool)

(assert (=> d!993121 m!3851213))

(declare-fun m!3851215 () Bool)

(assert (=> d!993121 m!3851215))

(assert (=> d!993121 m!3851213))

(assert (=> d!993121 m!3851005))

(declare-fun m!3851217 () Bool)

(assert (=> d!993121 m!3851217))

(assert (=> b!3452963 m!3851215))

(declare-fun m!3851219 () Bool)

(assert (=> b!3452965 m!3851219))

(declare-fun m!3851221 () Bool)

(assert (=> b!3452965 m!3851221))

(declare-fun m!3851223 () Bool)

(assert (=> b!3452965 m!3851223))

(declare-fun m!3851225 () Bool)

(assert (=> b!3452965 m!3851225))

(declare-fun m!3851227 () Bool)

(assert (=> b!3452965 m!3851227))

(declare-fun m!3851229 () Bool)

(assert (=> b!3452965 m!3851229))

(assert (=> b!3452965 m!3851225))

(declare-fun m!3851231 () Bool)

(assert (=> b!3452965 m!3851231))

(declare-fun m!3851233 () Bool)

(assert (=> b!3452965 m!3851233))

(declare-fun m!3851235 () Bool)

(assert (=> b!3452965 m!3851235))

(declare-fun m!3851237 () Bool)

(assert (=> b!3452965 m!3851237))

(assert (=> b!3452965 m!3851221))

(assert (=> b!3452965 m!3851227))

(assert (=> b!3452965 m!3851233))

(declare-fun m!3851239 () Bool)

(assert (=> b!3452965 m!3851239))

(declare-fun m!3851241 () Bool)

(assert (=> b!3452965 m!3851241))

(assert (=> b!3452965 m!3851219))

(declare-fun m!3851243 () Bool)

(assert (=> b!3452965 m!3851243))

(assert (=> b!3452517 d!993121))

(declare-fun d!993123 () Bool)

(assert (=> d!993123 (rulesProduceIndividualToken!2504 thiss!18206 rules!2135 (h!42515 tokens!494))))

(declare-fun lt!1172420 () Unit!52417)

(declare-fun choose!19941 (LexerInterface!5012 List!37218 List!37219 Token!10212) Unit!52417)

(assert (=> d!993123 (= lt!1172420 (choose!19941 thiss!18206 rules!2135 tokens!494 (h!42515 tokens!494)))))

(assert (=> d!993123 (not (isEmpty!21416 rules!2135))))

(assert (=> d!993123 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1001 thiss!18206 rules!2135 tokens!494 (h!42515 tokens!494)) lt!1172420)))

(declare-fun bs!559929 () Bool)

(assert (= bs!559929 d!993123))

(assert (=> bs!559929 m!3850563))

(declare-fun m!3851347 () Bool)

(assert (=> bs!559929 m!3851347))

(assert (=> bs!559929 m!3850595))

(assert (=> b!3452517 d!993123))

(declare-fun d!993153 () Bool)

(declare-fun lt!1172422 () Bool)

(declare-fun e!2138953 () Bool)

(assert (=> d!993153 (= lt!1172422 e!2138953)))

(declare-fun res!1392576 () Bool)

(assert (=> d!993153 (=> (not res!1392576) (not e!2138953))))

(assert (=> d!993153 (= res!1392576 (= (list!13497 (_1!21526 (lex!2338 thiss!18206 rules!2135 (print!2077 thiss!18206 (singletonSeq!2519 (h!42515 (t!272006 tokens!494))))))) (list!13497 (singletonSeq!2519 (h!42515 (t!272006 tokens!494))))))))

(declare-fun e!2138954 () Bool)

(assert (=> d!993153 (= lt!1172422 e!2138954)))

(declare-fun res!1392575 () Bool)

(assert (=> d!993153 (=> (not res!1392575) (not e!2138954))))

(declare-fun lt!1172421 () tuple2!36784)

(assert (=> d!993153 (= res!1392575 (= (size!28117 (_1!21526 lt!1172421)) 1))))

(assert (=> d!993153 (= lt!1172421 (lex!2338 thiss!18206 rules!2135 (print!2077 thiss!18206 (singletonSeq!2519 (h!42515 (t!272006 tokens!494))))))))

(assert (=> d!993153 (not (isEmpty!21416 rules!2135))))

(assert (=> d!993153 (= (rulesProduceIndividualToken!2504 thiss!18206 rules!2135 (h!42515 (t!272006 tokens!494))) lt!1172422)))

(declare-fun b!3453043 () Bool)

(declare-fun res!1392577 () Bool)

(assert (=> b!3453043 (=> (not res!1392577) (not e!2138954))))

(assert (=> b!3453043 (= res!1392577 (= (apply!8701 (_1!21526 lt!1172421) 0) (h!42515 (t!272006 tokens!494))))))

(declare-fun b!3453044 () Bool)

(assert (=> b!3453044 (= e!2138954 (isEmpty!21415 (_2!21526 lt!1172421)))))

(declare-fun b!3453045 () Bool)

(assert (=> b!3453045 (= e!2138953 (isEmpty!21415 (_2!21526 (lex!2338 thiss!18206 rules!2135 (print!2077 thiss!18206 (singletonSeq!2519 (h!42515 (t!272006 tokens!494))))))))))

(assert (= (and d!993153 res!1392575) b!3453043))

(assert (= (and b!3453043 res!1392577) b!3453044))

(assert (= (and d!993153 res!1392576) b!3453045))

(declare-fun m!3851349 () Bool)

(assert (=> d!993153 m!3851349))

(assert (=> d!993153 m!3850515))

(declare-fun m!3851351 () Bool)

(assert (=> d!993153 m!3851351))

(assert (=> d!993153 m!3850515))

(declare-fun m!3851353 () Bool)

(assert (=> d!993153 m!3851353))

(assert (=> d!993153 m!3850515))

(declare-fun m!3851355 () Bool)

(assert (=> d!993153 m!3851355))

(assert (=> d!993153 m!3850595))

(assert (=> d!993153 m!3851353))

(declare-fun m!3851357 () Bool)

(assert (=> d!993153 m!3851357))

(declare-fun m!3851359 () Bool)

(assert (=> b!3453043 m!3851359))

(declare-fun m!3851361 () Bool)

(assert (=> b!3453044 m!3851361))

(assert (=> b!3453045 m!3850515))

(assert (=> b!3453045 m!3850515))

(assert (=> b!3453045 m!3851353))

(assert (=> b!3453045 m!3851353))

(assert (=> b!3453045 m!3851357))

(declare-fun m!3851363 () Bool)

(assert (=> b!3453045 m!3851363))

(assert (=> b!3452517 d!993153))

(declare-fun d!993155 () Bool)

(declare-fun lt!1172425 () Bool)

(assert (=> d!993155 (= lt!1172425 (set.member lt!1172156 (content!5166 (usedCharacters!657 (regex!5423 (rule!8005 separatorToken!241))))))))

(declare-fun e!2138959 () Bool)

(assert (=> d!993155 (= lt!1172425 e!2138959)))

(declare-fun res!1392583 () Bool)

(assert (=> d!993155 (=> (not res!1392583) (not e!2138959))))

(assert (=> d!993155 (= res!1392583 (is-Cons!37093 (usedCharacters!657 (regex!5423 (rule!8005 separatorToken!241)))))))

(assert (=> d!993155 (= (contains!6852 (usedCharacters!657 (regex!5423 (rule!8005 separatorToken!241))) lt!1172156) lt!1172425)))

(declare-fun b!3453050 () Bool)

(declare-fun e!2138960 () Bool)

(assert (=> b!3453050 (= e!2138959 e!2138960)))

(declare-fun res!1392582 () Bool)

(assert (=> b!3453050 (=> res!1392582 e!2138960)))

(assert (=> b!3453050 (= res!1392582 (= (h!42513 (usedCharacters!657 (regex!5423 (rule!8005 separatorToken!241)))) lt!1172156))))

(declare-fun b!3453051 () Bool)

(assert (=> b!3453051 (= e!2138960 (contains!6852 (t!272004 (usedCharacters!657 (regex!5423 (rule!8005 separatorToken!241)))) lt!1172156))))

(assert (= (and d!993155 res!1392583) b!3453050))

(assert (= (and b!3453050 (not res!1392582)) b!3453051))

(assert (=> d!993155 m!3850475))

(declare-fun m!3851365 () Bool)

(assert (=> d!993155 m!3851365))

(declare-fun m!3851367 () Bool)

(assert (=> d!993155 m!3851367))

(declare-fun m!3851369 () Bool)

(assert (=> b!3453051 m!3851369))

(assert (=> b!3452517 d!993155))

(declare-fun d!993157 () Bool)

(declare-fun lt!1172426 () BalanceConc!22056)

(assert (=> d!993157 (= (list!13494 lt!1172426) (printList!1560 thiss!18206 (list!13497 lt!1172185)))))

(assert (=> d!993157 (= lt!1172426 (printTailRec!1507 thiss!18206 lt!1172185 0 (BalanceConc!22057 Empty!11221)))))

(assert (=> d!993157 (= (print!2077 thiss!18206 lt!1172185) lt!1172426)))

(declare-fun bs!559930 () Bool)

(assert (= bs!559930 d!993157))

(declare-fun m!3851371 () Bool)

(assert (=> bs!559930 m!3851371))

(declare-fun m!3851373 () Bool)

(assert (=> bs!559930 m!3851373))

(assert (=> bs!559930 m!3851373))

(declare-fun m!3851375 () Bool)

(assert (=> bs!559930 m!3851375))

(assert (=> bs!559930 m!3850493))

(assert (=> b!3452517 d!993157))

(declare-fun d!993159 () Bool)

(declare-fun lt!1172431 () BalanceConc!22056)

(assert (=> d!993159 (= (list!13494 lt!1172431) (printListTailRec!679 thiss!18206 (dropList!1196 lt!1172185 0) (list!13494 (BalanceConc!22057 Empty!11221))))))

(declare-fun e!2138961 () BalanceConc!22056)

(assert (=> d!993159 (= lt!1172431 e!2138961)))

(declare-fun c!591120 () Bool)

(assert (=> d!993159 (= c!591120 (>= 0 (size!28117 lt!1172185)))))

(declare-fun e!2138962 () Bool)

(assert (=> d!993159 e!2138962))

(declare-fun res!1392584 () Bool)

(assert (=> d!993159 (=> (not res!1392584) (not e!2138962))))

(assert (=> d!993159 (= res!1392584 (>= 0 0))))

(assert (=> d!993159 (= (printTailRec!1507 thiss!18206 lt!1172185 0 (BalanceConc!22057 Empty!11221)) lt!1172431)))

(declare-fun b!3453052 () Bool)

(assert (=> b!3453052 (= e!2138962 (<= 0 (size!28117 lt!1172185)))))

(declare-fun b!3453053 () Bool)

(assert (=> b!3453053 (= e!2138961 (BalanceConc!22057 Empty!11221))))

(declare-fun b!3453054 () Bool)

(assert (=> b!3453054 (= e!2138961 (printTailRec!1507 thiss!18206 lt!1172185 (+ 0 1) (++!9136 (BalanceConc!22057 Empty!11221) (charsOf!3437 (apply!8701 lt!1172185 0)))))))

(declare-fun lt!1172430 () List!37219)

(assert (=> b!3453054 (= lt!1172430 (list!13497 lt!1172185))))

(declare-fun lt!1172428 () Unit!52417)

(assert (=> b!3453054 (= lt!1172428 (lemmaDropApply!1154 lt!1172430 0))))

(assert (=> b!3453054 (= (head!7296 (drop!2002 lt!1172430 0)) (apply!8704 lt!1172430 0))))

(declare-fun lt!1172433 () Unit!52417)

(assert (=> b!3453054 (= lt!1172433 lt!1172428)))

(declare-fun lt!1172429 () List!37219)

(assert (=> b!3453054 (= lt!1172429 (list!13497 lt!1172185))))

(declare-fun lt!1172432 () Unit!52417)

(assert (=> b!3453054 (= lt!1172432 (lemmaDropTail!1038 lt!1172429 0))))

(assert (=> b!3453054 (= (tail!5415 (drop!2002 lt!1172429 0)) (drop!2002 lt!1172429 (+ 0 1)))))

(declare-fun lt!1172427 () Unit!52417)

(assert (=> b!3453054 (= lt!1172427 lt!1172432)))

(assert (= (and d!993159 res!1392584) b!3453052))

(assert (= (and d!993159 c!591120) b!3453053))

(assert (= (and d!993159 (not c!591120)) b!3453054))

(assert (=> d!993159 m!3851005))

(declare-fun m!3851377 () Bool)

(assert (=> d!993159 m!3851377))

(declare-fun m!3851379 () Bool)

(assert (=> d!993159 m!3851379))

(declare-fun m!3851381 () Bool)

(assert (=> d!993159 m!3851381))

(assert (=> d!993159 m!3851379))

(assert (=> d!993159 m!3851005))

(declare-fun m!3851383 () Bool)

(assert (=> d!993159 m!3851383))

(assert (=> b!3453052 m!3851381))

(declare-fun m!3851385 () Bool)

(assert (=> b!3453054 m!3851385))

(declare-fun m!3851387 () Bool)

(assert (=> b!3453054 m!3851387))

(assert (=> b!3453054 m!3851373))

(declare-fun m!3851389 () Bool)

(assert (=> b!3453054 m!3851389))

(declare-fun m!3851391 () Bool)

(assert (=> b!3453054 m!3851391))

(declare-fun m!3851393 () Bool)

(assert (=> b!3453054 m!3851393))

(assert (=> b!3453054 m!3851389))

(declare-fun m!3851395 () Bool)

(assert (=> b!3453054 m!3851395))

(declare-fun m!3851397 () Bool)

(assert (=> b!3453054 m!3851397))

(declare-fun m!3851399 () Bool)

(assert (=> b!3453054 m!3851399))

(declare-fun m!3851401 () Bool)

(assert (=> b!3453054 m!3851401))

(assert (=> b!3453054 m!3851387))

(assert (=> b!3453054 m!3851391))

(assert (=> b!3453054 m!3851397))

(declare-fun m!3851403 () Bool)

(assert (=> b!3453054 m!3851403))

(declare-fun m!3851405 () Bool)

(assert (=> b!3453054 m!3851405))

(assert (=> b!3453054 m!3851385))

(declare-fun m!3851407 () Bool)

(assert (=> b!3453054 m!3851407))

(assert (=> b!3452517 d!993159))

(declare-fun d!993161 () Bool)

(declare-fun e!2138963 () Bool)

(assert (=> d!993161 e!2138963))

(declare-fun res!1392585 () Bool)

(assert (=> d!993161 (=> (not res!1392585) (not e!2138963))))

(assert (=> d!993161 (= res!1392585 (isDefined!5777 (getRuleFromTag!1066 thiss!18206 rules!2135 (tag!6023 (rule!8005 (h!42515 tokens!494))))))))

(declare-fun lt!1172434 () Unit!52417)

(assert (=> d!993161 (= lt!1172434 (choose!19940 thiss!18206 rules!2135 lt!1172172 (h!42515 tokens!494)))))

(assert (=> d!993161 (rulesInvariant!4409 thiss!18206 rules!2135)))

(assert (=> d!993161 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1066 thiss!18206 rules!2135 lt!1172172 (h!42515 tokens!494)) lt!1172434)))

(declare-fun b!3453055 () Bool)

(declare-fun res!1392586 () Bool)

(assert (=> b!3453055 (=> (not res!1392586) (not e!2138963))))

(assert (=> b!3453055 (= res!1392586 (matchR!4766 (regex!5423 (get!11862 (getRuleFromTag!1066 thiss!18206 rules!2135 (tag!6023 (rule!8005 (h!42515 tokens!494)))))) (list!13494 (charsOf!3437 (h!42515 tokens!494)))))))

(declare-fun b!3453056 () Bool)

(assert (=> b!3453056 (= e!2138963 (= (rule!8005 (h!42515 tokens!494)) (get!11862 (getRuleFromTag!1066 thiss!18206 rules!2135 (tag!6023 (rule!8005 (h!42515 tokens!494)))))))))

(assert (= (and d!993161 res!1392585) b!3453055))

(assert (= (and b!3453055 res!1392586) b!3453056))

(assert (=> d!993161 m!3850501))

(assert (=> d!993161 m!3850501))

(declare-fun m!3851409 () Bool)

(assert (=> d!993161 m!3851409))

(declare-fun m!3851411 () Bool)

(assert (=> d!993161 m!3851411))

(assert (=> d!993161 m!3850609))

(assert (=> b!3453055 m!3850501))

(declare-fun m!3851413 () Bool)

(assert (=> b!3453055 m!3851413))

(assert (=> b!3453055 m!3850559))

(declare-fun m!3851415 () Bool)

(assert (=> b!3453055 m!3851415))

(assert (=> b!3453055 m!3850557))

(assert (=> b!3453055 m!3850501))

(assert (=> b!3453055 m!3850557))

(assert (=> b!3453055 m!3850559))

(assert (=> b!3453056 m!3850501))

(assert (=> b!3453056 m!3850501))

(assert (=> b!3453056 m!3851413))

(assert (=> b!3452517 d!993161))

(declare-fun b!3453057 () Bool)

(declare-fun e!2138964 () Option!7493)

(assert (=> b!3453057 (= e!2138964 None!7492)))

(declare-fun b!3453058 () Bool)

(declare-fun e!2138967 () Option!7493)

(assert (=> b!3453058 (= e!2138967 (Some!7492 (h!42514 rules!2135)))))

(declare-fun d!993163 () Bool)

(declare-fun e!2138965 () Bool)

(assert (=> d!993163 e!2138965))

(declare-fun res!1392587 () Bool)

(assert (=> d!993163 (=> res!1392587 e!2138965)))

(declare-fun lt!1172437 () Option!7493)

(assert (=> d!993163 (= res!1392587 (isEmpty!21423 lt!1172437))))

(assert (=> d!993163 (= lt!1172437 e!2138967)))

(declare-fun c!591122 () Bool)

(assert (=> d!993163 (= c!591122 (and (is-Cons!37094 rules!2135) (= (tag!6023 (h!42514 rules!2135)) (tag!6023 (rule!8005 (h!42515 tokens!494))))))))

(assert (=> d!993163 (rulesInvariant!4409 thiss!18206 rules!2135)))

(assert (=> d!993163 (= (getRuleFromTag!1066 thiss!18206 rules!2135 (tag!6023 (rule!8005 (h!42515 tokens!494)))) lt!1172437)))

(declare-fun b!3453059 () Bool)

(declare-fun e!2138966 () Bool)

(assert (=> b!3453059 (= e!2138966 (= (tag!6023 (get!11862 lt!1172437)) (tag!6023 (rule!8005 (h!42515 tokens!494)))))))

(declare-fun b!3453060 () Bool)

(declare-fun lt!1172436 () Unit!52417)

(declare-fun lt!1172435 () Unit!52417)

(assert (=> b!3453060 (= lt!1172436 lt!1172435)))

(assert (=> b!3453060 (rulesInvariant!4409 thiss!18206 (t!272005 rules!2135))))

(assert (=> b!3453060 (= lt!1172435 (lemmaInvariantOnRulesThenOnTail!423 thiss!18206 (h!42514 rules!2135) (t!272005 rules!2135)))))

(assert (=> b!3453060 (= e!2138964 (getRuleFromTag!1066 thiss!18206 (t!272005 rules!2135) (tag!6023 (rule!8005 (h!42515 tokens!494)))))))

(declare-fun b!3453061 () Bool)

(assert (=> b!3453061 (= e!2138967 e!2138964)))

(declare-fun c!591121 () Bool)

(assert (=> b!3453061 (= c!591121 (and (is-Cons!37094 rules!2135) (not (= (tag!6023 (h!42514 rules!2135)) (tag!6023 (rule!8005 (h!42515 tokens!494)))))))))

(declare-fun b!3453062 () Bool)

(assert (=> b!3453062 (= e!2138965 e!2138966)))

(declare-fun res!1392588 () Bool)

(assert (=> b!3453062 (=> (not res!1392588) (not e!2138966))))

(assert (=> b!3453062 (= res!1392588 (contains!6851 rules!2135 (get!11862 lt!1172437)))))

(assert (= (and d!993163 c!591122) b!3453058))

(assert (= (and d!993163 (not c!591122)) b!3453061))

(assert (= (and b!3453061 c!591121) b!3453060))

(assert (= (and b!3453061 (not c!591121)) b!3453057))

(assert (= (and d!993163 (not res!1392587)) b!3453062))

(assert (= (and b!3453062 res!1392588) b!3453059))

(declare-fun m!3851417 () Bool)

(assert (=> d!993163 m!3851417))

(assert (=> d!993163 m!3850609))

(declare-fun m!3851419 () Bool)

(assert (=> b!3453059 m!3851419))

(assert (=> b!3453060 m!3851121))

(assert (=> b!3453060 m!3851123))

(declare-fun m!3851421 () Bool)

(assert (=> b!3453060 m!3851421))

(assert (=> b!3453062 m!3851419))

(assert (=> b!3453062 m!3851419))

(declare-fun m!3851423 () Bool)

(assert (=> b!3453062 m!3851423))

(assert (=> b!3452517 d!993163))

(declare-fun d!993165 () Bool)

(assert (=> d!993165 (= (isDefined!5777 lt!1172157) (not (isEmpty!21423 lt!1172157)))))

(declare-fun bs!559931 () Bool)

(assert (= bs!559931 d!993165))

(declare-fun m!3851425 () Bool)

(assert (=> bs!559931 m!3851425))

(assert (=> b!3452517 d!993165))

(declare-fun d!993167 () Bool)

(declare-fun e!2138968 () Bool)

(assert (=> d!993167 e!2138968))

(declare-fun res!1392589 () Bool)

(assert (=> d!993167 (=> (not res!1392589) (not e!2138968))))

(declare-fun lt!1172438 () BalanceConc!22058)

(assert (=> d!993167 (= res!1392589 (= (list!13497 lt!1172438) (Cons!37095 separatorToken!241 Nil!37095)))))

(assert (=> d!993167 (= lt!1172438 (singleton!1111 separatorToken!241))))

(assert (=> d!993167 (= (singletonSeq!2519 separatorToken!241) lt!1172438)))

(declare-fun b!3453063 () Bool)

(assert (=> b!3453063 (= e!2138968 (isBalanced!3404 (c!591041 lt!1172438)))))

(assert (= (and d!993167 res!1392589) b!3453063))

(declare-fun m!3851427 () Bool)

(assert (=> d!993167 m!3851427))

(declare-fun m!3851429 () Bool)

(assert (=> d!993167 m!3851429))

(declare-fun m!3851431 () Bool)

(assert (=> b!3453063 m!3851431))

(assert (=> b!3452517 d!993167))

(declare-fun d!993169 () Bool)

(declare-fun lt!1172439 () BalanceConc!22056)

(assert (=> d!993169 (= (list!13494 lt!1172439) (printList!1560 thiss!18206 (list!13497 lt!1172179)))))

(assert (=> d!993169 (= lt!1172439 (printTailRec!1507 thiss!18206 lt!1172179 0 (BalanceConc!22057 Empty!11221)))))

(assert (=> d!993169 (= (print!2077 thiss!18206 lt!1172179) lt!1172439)))

(declare-fun bs!559932 () Bool)

(assert (= bs!559932 d!993169))

(declare-fun m!3851433 () Bool)

(assert (=> bs!559932 m!3851433))

(assert (=> bs!559932 m!3851223))

(assert (=> bs!559932 m!3851223))

(declare-fun m!3851435 () Bool)

(assert (=> bs!559932 m!3851435))

(assert (=> bs!559932 m!3850503))

(assert (=> b!3452517 d!993169))

(declare-fun d!993171 () Bool)

(declare-fun lt!1172442 () Int)

(assert (=> d!993171 (>= lt!1172442 0)))

(declare-fun e!2138971 () Int)

(assert (=> d!993171 (= lt!1172442 e!2138971)))

(declare-fun c!591125 () Bool)

(assert (=> d!993171 (= c!591125 (is-Nil!37093 lt!1172172))))

(assert (=> d!993171 (= (size!28118 lt!1172172) lt!1172442)))

(declare-fun b!3453068 () Bool)

(assert (=> b!3453068 (= e!2138971 0)))

(declare-fun b!3453069 () Bool)

(assert (=> b!3453069 (= e!2138971 (+ 1 (size!28118 (t!272004 lt!1172172))))))

(assert (= (and d!993171 c!591125) b!3453068))

(assert (= (and d!993171 (not c!591125)) b!3453069))

(declare-fun m!3851437 () Bool)

(assert (=> b!3453069 m!3851437))

(assert (=> b!3452517 d!993171))

(declare-fun d!993173 () Bool)

(declare-fun e!2138972 () Bool)

(assert (=> d!993173 e!2138972))

(declare-fun res!1392590 () Bool)

(assert (=> d!993173 (=> (not res!1392590) (not e!2138972))))

(declare-fun lt!1172443 () BalanceConc!22058)

(assert (=> d!993173 (= res!1392590 (= (list!13497 lt!1172443) (Cons!37095 (h!42515 (t!272006 tokens!494)) Nil!37095)))))

(assert (=> d!993173 (= lt!1172443 (singleton!1111 (h!42515 (t!272006 tokens!494))))))

(assert (=> d!993173 (= (singletonSeq!2519 (h!42515 (t!272006 tokens!494))) lt!1172443)))

(declare-fun b!3453070 () Bool)

(assert (=> b!3453070 (= e!2138972 (isBalanced!3404 (c!591041 lt!1172443)))))

(assert (= (and d!993173 res!1392590) b!3453070))

(declare-fun m!3851439 () Bool)

(assert (=> d!993173 m!3851439))

(declare-fun m!3851441 () Bool)

(assert (=> d!993173 m!3851441))

(declare-fun m!3851443 () Bool)

(assert (=> b!3453070 m!3851443))

(assert (=> b!3452517 d!993173))

(declare-fun d!993175 () Bool)

(assert (=> d!993175 (= (maxPrefixOneRule!1719 thiss!18206 (rule!8005 (h!42515 tokens!494)) lt!1172172) (Some!7493 (tuple2!36787 (Token!10213 (apply!8700 (transformation!5423 (rule!8005 (h!42515 tokens!494))) (seqFromList!3899 lt!1172172)) (rule!8005 (h!42515 tokens!494)) (size!28118 lt!1172172) lt!1172172) Nil!37093)))))

(declare-fun lt!1172446 () Unit!52417)

(declare-fun choose!19943 (LexerInterface!5012 List!37218 List!37217 List!37217 List!37217 Rule!10646) Unit!52417)

(assert (=> d!993175 (= lt!1172446 (choose!19943 thiss!18206 rules!2135 lt!1172172 lt!1172172 Nil!37093 (rule!8005 (h!42515 tokens!494))))))

(assert (=> d!993175 (not (isEmpty!21416 rules!2135))))

(assert (=> d!993175 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!812 thiss!18206 rules!2135 lt!1172172 lt!1172172 Nil!37093 (rule!8005 (h!42515 tokens!494))) lt!1172446)))

(declare-fun bs!559933 () Bool)

(assert (= bs!559933 d!993175))

(assert (=> bs!559933 m!3850607))

(declare-fun m!3851445 () Bool)

(assert (=> bs!559933 m!3851445))

(assert (=> bs!559933 m!3850517))

(assert (=> bs!559933 m!3850481))

(assert (=> bs!559933 m!3850595))

(assert (=> bs!559933 m!3850607))

(declare-fun m!3851447 () Bool)

(assert (=> bs!559933 m!3851447))

(assert (=> b!3452517 d!993175))

(declare-fun d!993177 () Bool)

(declare-fun lt!1172451 () Int)

(declare-fun size!28124 (List!37219) Int)

(assert (=> d!993177 (= lt!1172451 (size!28124 (list!13497 (_1!21526 lt!1172181))))))

(declare-fun size!28125 (Conc!11222) Int)

(assert (=> d!993177 (= lt!1172451 (size!28125 (c!591041 (_1!21526 lt!1172181))))))

(assert (=> d!993177 (= (size!28117 (_1!21526 lt!1172181)) lt!1172451)))

(declare-fun bs!559934 () Bool)

(assert (= bs!559934 d!993177))

(assert (=> bs!559934 m!3850941))

(assert (=> bs!559934 m!3850941))

(declare-fun m!3851449 () Bool)

(assert (=> bs!559934 m!3851449))

(declare-fun m!3851451 () Bool)

(assert (=> bs!559934 m!3851451))

(assert (=> b!3452517 d!993177))

(declare-fun e!2139013 () Bool)

(declare-fun lt!1172472 () tuple2!36784)

(declare-fun b!3453130 () Bool)

(declare-datatypes ((tuple2!36796 0))(
  ( (tuple2!36797 (_1!21532 List!37219) (_2!21532 List!37217)) )
))
(declare-fun lexList!1440 (LexerInterface!5012 List!37218 List!37217) tuple2!36796)

(assert (=> b!3453130 (= e!2139013 (= (list!13494 (_2!21526 lt!1172472)) (_2!21532 (lexList!1440 thiss!18206 rules!2135 (list!13494 lt!1172173)))))))

(declare-fun b!3453131 () Bool)

(declare-fun res!1392628 () Bool)

(assert (=> b!3453131 (=> (not res!1392628) (not e!2139013))))

(assert (=> b!3453131 (= res!1392628 (= (list!13497 (_1!21526 lt!1172472)) (_1!21532 (lexList!1440 thiss!18206 rules!2135 (list!13494 lt!1172173)))))))

(declare-fun b!3453132 () Bool)

(declare-fun e!2139012 () Bool)

(declare-fun e!2139014 () Bool)

(assert (=> b!3453132 (= e!2139012 e!2139014)))

(declare-fun res!1392629 () Bool)

(assert (=> b!3453132 (= res!1392629 (< (size!28122 (_2!21526 lt!1172472)) (size!28122 lt!1172173)))))

(assert (=> b!3453132 (=> (not res!1392629) (not e!2139014))))

(declare-fun d!993179 () Bool)

(assert (=> d!993179 e!2139013))

(declare-fun res!1392630 () Bool)

(assert (=> d!993179 (=> (not res!1392630) (not e!2139013))))

(assert (=> d!993179 (= res!1392630 e!2139012)))

(declare-fun c!591137 () Bool)

(assert (=> d!993179 (= c!591137 (> (size!28117 (_1!21526 lt!1172472)) 0))))

(declare-fun lexTailRecV2!1048 (LexerInterface!5012 List!37218 BalanceConc!22056 BalanceConc!22056 BalanceConc!22056 BalanceConc!22058) tuple2!36784)

(assert (=> d!993179 (= lt!1172472 (lexTailRecV2!1048 thiss!18206 rules!2135 lt!1172173 (BalanceConc!22057 Empty!11221) lt!1172173 (BalanceConc!22059 Empty!11222)))))

(assert (=> d!993179 (= (lex!2338 thiss!18206 rules!2135 lt!1172173) lt!1172472)))

(declare-fun b!3453133 () Bool)

(assert (=> b!3453133 (= e!2139014 (not (isEmpty!21414 (_1!21526 lt!1172472))))))

(declare-fun b!3453134 () Bool)

(assert (=> b!3453134 (= e!2139012 (= (_2!21526 lt!1172472) lt!1172173))))

(assert (= (and d!993179 c!591137) b!3453132))

(assert (= (and d!993179 (not c!591137)) b!3453134))

(assert (= (and b!3453132 res!1392629) b!3453133))

(assert (= (and d!993179 res!1392630) b!3453131))

(assert (= (and b!3453131 res!1392628) b!3453130))

(declare-fun m!3851545 () Bool)

(assert (=> d!993179 m!3851545))

(declare-fun m!3851547 () Bool)

(assert (=> d!993179 m!3851547))

(declare-fun m!3851549 () Bool)

(assert (=> b!3453133 m!3851549))

(declare-fun m!3851551 () Bool)

(assert (=> b!3453131 m!3851551))

(declare-fun m!3851553 () Bool)

(assert (=> b!3453131 m!3851553))

(assert (=> b!3453131 m!3851553))

(declare-fun m!3851555 () Bool)

(assert (=> b!3453131 m!3851555))

(declare-fun m!3851557 () Bool)

(assert (=> b!3453132 m!3851557))

(declare-fun m!3851559 () Bool)

(assert (=> b!3453132 m!3851559))

(declare-fun m!3851561 () Bool)

(assert (=> b!3453130 m!3851561))

(assert (=> b!3453130 m!3851553))

(assert (=> b!3453130 m!3851553))

(assert (=> b!3453130 m!3851555))

(assert (=> b!3452517 d!993179))

(declare-fun d!993207 () Bool)

(declare-fun lt!1172473 () Int)

(assert (=> d!993207 (= lt!1172473 (size!28124 (list!13497 (_1!21526 lt!1172170))))))

(assert (=> d!993207 (= lt!1172473 (size!28125 (c!591041 (_1!21526 lt!1172170))))))

(assert (=> d!993207 (= (size!28117 (_1!21526 lt!1172170)) lt!1172473)))

(declare-fun bs!559938 () Bool)

(assert (= bs!559938 d!993207))

(assert (=> bs!559938 m!3850925))

(assert (=> bs!559938 m!3850925))

(declare-fun m!3851565 () Bool)

(assert (=> bs!559938 m!3851565))

(declare-fun m!3851567 () Bool)

(assert (=> bs!559938 m!3851567))

(assert (=> b!3452517 d!993207))

(declare-fun d!993209 () Bool)

(declare-fun lt!1172476 () Bool)

(declare-fun content!5168 (List!37218) (Set Rule!10646))

(assert (=> d!993209 (= lt!1172476 (set.member (rule!8005 separatorToken!241) (content!5168 rules!2135)))))

(declare-fun e!2139023 () Bool)

(assert (=> d!993209 (= lt!1172476 e!2139023)))

(declare-fun res!1392635 () Bool)

(assert (=> d!993209 (=> (not res!1392635) (not e!2139023))))

(assert (=> d!993209 (= res!1392635 (is-Cons!37094 rules!2135))))

(assert (=> d!993209 (= (contains!6851 rules!2135 (rule!8005 separatorToken!241)) lt!1172476)))

(declare-fun b!3453141 () Bool)

(declare-fun e!2139022 () Bool)

(assert (=> b!3453141 (= e!2139023 e!2139022)))

(declare-fun res!1392636 () Bool)

(assert (=> b!3453141 (=> res!1392636 e!2139022)))

(assert (=> b!3453141 (= res!1392636 (= (h!42514 rules!2135) (rule!8005 separatorToken!241)))))

(declare-fun b!3453142 () Bool)

(assert (=> b!3453142 (= e!2139022 (contains!6851 (t!272005 rules!2135) (rule!8005 separatorToken!241)))))

(assert (= (and d!993209 res!1392635) b!3453141))

(assert (= (and b!3453141 (not res!1392636)) b!3453142))

(declare-fun m!3851571 () Bool)

(assert (=> d!993209 m!3851571))

(declare-fun m!3851573 () Bool)

(assert (=> d!993209 m!3851573))

(declare-fun m!3851575 () Bool)

(assert (=> b!3453142 m!3851575))

(assert (=> b!3452517 d!993209))

(declare-fun b!3453162 () Bool)

(declare-fun e!2139037 () List!37217)

(assert (=> b!3453162 (= e!2139037 Nil!37093)))

(declare-fun b!3453163 () Bool)

(declare-fun e!2139036 () List!37217)

(declare-fun call!249214 () List!37217)

(assert (=> b!3453163 (= e!2139036 call!249214)))

(declare-fun b!3453164 () Bool)

(declare-fun e!2139035 () List!37217)

(declare-fun call!249216 () List!37217)

(assert (=> b!3453164 (= e!2139035 call!249216)))

(declare-fun b!3453165 () Bool)

(declare-fun e!2139038 () List!37217)

(assert (=> b!3453165 (= e!2139038 (Cons!37093 (c!591039 (regex!5423 (rule!8005 separatorToken!241))) Nil!37093))))

(declare-fun call!249213 () List!37217)

(declare-fun c!591146 () Bool)

(declare-fun call!249215 () List!37217)

(declare-fun bm!249208 () Bool)

(assert (=> bm!249208 (= call!249216 (++!9134 (ite c!591146 call!249215 call!249213) (ite c!591146 call!249213 call!249215)))))

(declare-fun b!3453166 () Bool)

(assert (=> b!3453166 (= e!2139037 e!2139038)))

(declare-fun c!591149 () Bool)

(assert (=> b!3453166 (= c!591149 (is-ElementMatch!10182 (regex!5423 (rule!8005 separatorToken!241))))))

(declare-fun d!993215 () Bool)

(declare-fun c!591147 () Bool)

(assert (=> d!993215 (= c!591147 (or (is-EmptyExpr!10182 (regex!5423 (rule!8005 separatorToken!241))) (is-EmptyLang!10182 (regex!5423 (rule!8005 separatorToken!241)))))))

(assert (=> d!993215 (= (usedCharacters!657 (regex!5423 (rule!8005 separatorToken!241))) e!2139037)))

(declare-fun bm!249209 () Bool)

(assert (=> bm!249209 (= call!249213 call!249214)))

(declare-fun c!591148 () Bool)

(declare-fun bm!249210 () Bool)

(assert (=> bm!249210 (= call!249214 (usedCharacters!657 (ite c!591148 (reg!10511 (regex!5423 (rule!8005 separatorToken!241))) (ite c!591146 (regTwo!20877 (regex!5423 (rule!8005 separatorToken!241))) (regOne!20876 (regex!5423 (rule!8005 separatorToken!241)))))))))

(declare-fun bm!249211 () Bool)

(assert (=> bm!249211 (= call!249215 (usedCharacters!657 (ite c!591146 (regOne!20877 (regex!5423 (rule!8005 separatorToken!241))) (regTwo!20876 (regex!5423 (rule!8005 separatorToken!241))))))))

(declare-fun b!3453167 () Bool)

(assert (=> b!3453167 (= e!2139036 e!2139035)))

(assert (=> b!3453167 (= c!591146 (is-Union!10182 (regex!5423 (rule!8005 separatorToken!241))))))

(declare-fun b!3453168 () Bool)

(assert (=> b!3453168 (= c!591148 (is-Star!10182 (regex!5423 (rule!8005 separatorToken!241))))))

(assert (=> b!3453168 (= e!2139038 e!2139036)))

(declare-fun b!3453169 () Bool)

(assert (=> b!3453169 (= e!2139035 call!249216)))

(assert (= (and d!993215 c!591147) b!3453162))

(assert (= (and d!993215 (not c!591147)) b!3453166))

(assert (= (and b!3453166 c!591149) b!3453165))

(assert (= (and b!3453166 (not c!591149)) b!3453168))

(assert (= (and b!3453168 c!591148) b!3453163))

(assert (= (and b!3453168 (not c!591148)) b!3453167))

(assert (= (and b!3453167 c!591146) b!3453169))

(assert (= (and b!3453167 (not c!591146)) b!3453164))

(assert (= (or b!3453169 b!3453164) bm!249209))

(assert (= (or b!3453169 b!3453164) bm!249211))

(assert (= (or b!3453169 b!3453164) bm!249208))

(assert (= (or b!3453163 bm!249209) bm!249210))

(declare-fun m!3851583 () Bool)

(assert (=> bm!249208 m!3851583))

(declare-fun m!3851585 () Bool)

(assert (=> bm!249210 m!3851585))

(declare-fun m!3851587 () Bool)

(assert (=> bm!249211 m!3851587))

(assert (=> b!3452517 d!993215))

(declare-fun b!3453170 () Bool)

(declare-fun lt!1172480 () tuple2!36784)

(declare-fun e!2139040 () Bool)

(assert (=> b!3453170 (= e!2139040 (= (list!13494 (_2!21526 lt!1172480)) (_2!21532 (lexList!1440 thiss!18206 rules!2135 (list!13494 lt!1172163)))))))

(declare-fun b!3453171 () Bool)

(declare-fun res!1392640 () Bool)

(assert (=> b!3453171 (=> (not res!1392640) (not e!2139040))))

(assert (=> b!3453171 (= res!1392640 (= (list!13497 (_1!21526 lt!1172480)) (_1!21532 (lexList!1440 thiss!18206 rules!2135 (list!13494 lt!1172163)))))))

(declare-fun b!3453172 () Bool)

(declare-fun e!2139039 () Bool)

(declare-fun e!2139041 () Bool)

(assert (=> b!3453172 (= e!2139039 e!2139041)))

(declare-fun res!1392641 () Bool)

(assert (=> b!3453172 (= res!1392641 (< (size!28122 (_2!21526 lt!1172480)) (size!28122 lt!1172163)))))

(assert (=> b!3453172 (=> (not res!1392641) (not e!2139041))))

(declare-fun d!993219 () Bool)

(assert (=> d!993219 e!2139040))

(declare-fun res!1392642 () Bool)

(assert (=> d!993219 (=> (not res!1392642) (not e!2139040))))

(assert (=> d!993219 (= res!1392642 e!2139039)))

(declare-fun c!591150 () Bool)

(assert (=> d!993219 (= c!591150 (> (size!28117 (_1!21526 lt!1172480)) 0))))

(assert (=> d!993219 (= lt!1172480 (lexTailRecV2!1048 thiss!18206 rules!2135 lt!1172163 (BalanceConc!22057 Empty!11221) lt!1172163 (BalanceConc!22059 Empty!11222)))))

(assert (=> d!993219 (= (lex!2338 thiss!18206 rules!2135 lt!1172163) lt!1172480)))

(declare-fun b!3453173 () Bool)

(assert (=> b!3453173 (= e!2139041 (not (isEmpty!21414 (_1!21526 lt!1172480))))))

(declare-fun b!3453174 () Bool)

(assert (=> b!3453174 (= e!2139039 (= (_2!21526 lt!1172480) lt!1172163))))

(assert (= (and d!993219 c!591150) b!3453172))

(assert (= (and d!993219 (not c!591150)) b!3453174))

(assert (= (and b!3453172 res!1392641) b!3453173))

(assert (= (and d!993219 res!1392642) b!3453171))

(assert (= (and b!3453171 res!1392640) b!3453170))

(declare-fun m!3851589 () Bool)

(assert (=> d!993219 m!3851589))

(declare-fun m!3851591 () Bool)

(assert (=> d!993219 m!3851591))

(declare-fun m!3851593 () Bool)

(assert (=> b!3453173 m!3851593))

(declare-fun m!3851595 () Bool)

(assert (=> b!3453171 m!3851595))

(declare-fun m!3851597 () Bool)

(assert (=> b!3453171 m!3851597))

(assert (=> b!3453171 m!3851597))

(declare-fun m!3851599 () Bool)

(assert (=> b!3453171 m!3851599))

(declare-fun m!3851601 () Bool)

(assert (=> b!3453172 m!3851601))

(declare-fun m!3851603 () Bool)

(assert (=> b!3453172 m!3851603))

(declare-fun m!3851605 () Bool)

(assert (=> b!3453170 m!3851605))

(assert (=> b!3453170 m!3851597))

(assert (=> b!3453170 m!3851597))

(assert (=> b!3453170 m!3851599))

(assert (=> b!3452517 d!993219))

(declare-fun d!993221 () Bool)

(assert (=> d!993221 (= (head!7294 lt!1172178) (h!42513 lt!1172178))))

(assert (=> b!3452517 d!993221))

(declare-fun bs!559941 () Bool)

(declare-fun d!993223 () Bool)

(assert (= bs!559941 (and d!993223 b!3452532)))

(declare-fun lambda!121612 () Int)

(assert (=> bs!559941 (not (= lambda!121612 lambda!121596))))

(declare-fun bs!559942 () Bool)

(assert (= bs!559942 (and d!993223 b!3452517)))

(assert (=> bs!559942 (= lambda!121612 lambda!121597)))

(declare-fun b!3453201 () Bool)

(declare-fun e!2139062 () Bool)

(assert (=> b!3453201 (= e!2139062 true)))

(declare-fun b!3453200 () Bool)

(declare-fun e!2139061 () Bool)

(assert (=> b!3453200 (= e!2139061 e!2139062)))

(declare-fun b!3453199 () Bool)

(declare-fun e!2139060 () Bool)

(assert (=> b!3453199 (= e!2139060 e!2139061)))

(assert (=> d!993223 e!2139060))

(assert (= b!3453200 b!3453201))

(assert (= b!3453199 b!3453200))

(assert (= (and d!993223 (is-Cons!37094 rules!2135)) b!3453199))

(assert (=> b!3453201 (< (dynLambda!15579 order!19695 (toValue!7647 (transformation!5423 (h!42514 rules!2135)))) (dynLambda!15580 order!19697 lambda!121612))))

(assert (=> b!3453201 (< (dynLambda!15581 order!19699 (toChars!7506 (transformation!5423 (h!42514 rules!2135)))) (dynLambda!15580 order!19697 lambda!121612))))

(assert (=> d!993223 true))

(declare-fun e!2139059 () Bool)

(assert (=> d!993223 e!2139059))

(declare-fun res!1392660 () Bool)

(assert (=> d!993223 (=> (not res!1392660) (not e!2139059))))

(declare-fun lt!1172516 () Bool)

(assert (=> d!993223 (= res!1392660 (= lt!1172516 (forall!7894 (list!13497 (seqFromList!3900 tokens!494)) lambda!121612)))))

(declare-fun forall!7896 (BalanceConc!22058 Int) Bool)

(assert (=> d!993223 (= lt!1172516 (forall!7896 (seqFromList!3900 tokens!494) lambda!121612))))

(assert (=> d!993223 (not (isEmpty!21416 rules!2135))))

(assert (=> d!993223 (= (rulesProduceEachTokenIndividually!1463 thiss!18206 rules!2135 (seqFromList!3900 tokens!494)) lt!1172516)))

(declare-fun b!3453198 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1846 (LexerInterface!5012 List!37218 List!37219) Bool)

(assert (=> b!3453198 (= e!2139059 (= lt!1172516 (rulesProduceEachTokenIndividuallyList!1846 thiss!18206 rules!2135 (list!13497 (seqFromList!3900 tokens!494)))))))

(assert (= (and d!993223 res!1392660) b!3453198))

(assert (=> d!993223 m!3850545))

(declare-fun m!3851667 () Bool)

(assert (=> d!993223 m!3851667))

(assert (=> d!993223 m!3851667))

(declare-fun m!3851669 () Bool)

(assert (=> d!993223 m!3851669))

(assert (=> d!993223 m!3850545))

(declare-fun m!3851671 () Bool)

(assert (=> d!993223 m!3851671))

(assert (=> d!993223 m!3850595))

(assert (=> b!3453198 m!3850545))

(assert (=> b!3453198 m!3851667))

(assert (=> b!3453198 m!3851667))

(declare-fun m!3851673 () Bool)

(assert (=> b!3453198 m!3851673))

(assert (=> b!3452538 d!993223))

(declare-fun d!993235 () Bool)

(declare-fun fromListB!1765 (List!37219) BalanceConc!22058)

(assert (=> d!993235 (= (seqFromList!3900 tokens!494) (fromListB!1765 tokens!494))))

(declare-fun bs!559943 () Bool)

(assert (= bs!559943 d!993235))

(declare-fun m!3851675 () Bool)

(assert (=> bs!559943 m!3851675))

(assert (=> b!3452538 d!993235))

(declare-fun b!3453202 () Bool)

(declare-fun res!1392661 () Bool)

(declare-fun e!2139065 () Bool)

(assert (=> b!3453202 (=> res!1392661 e!2139065)))

(assert (=> b!3453202 (= res!1392661 (not (is-IntegerValue!16961 (value!175017 (h!42515 tokens!494)))))))

(declare-fun e!2139064 () Bool)

(assert (=> b!3453202 (= e!2139064 e!2139065)))

(declare-fun b!3453203 () Bool)

(assert (=> b!3453203 (= e!2139065 (inv!15 (value!175017 (h!42515 tokens!494))))))

(declare-fun b!3453204 () Bool)

(declare-fun e!2139063 () Bool)

(assert (=> b!3453204 (= e!2139063 e!2139064)))

(declare-fun c!591155 () Bool)

(assert (=> b!3453204 (= c!591155 (is-IntegerValue!16960 (value!175017 (h!42515 tokens!494))))))

(declare-fun d!993237 () Bool)

(declare-fun c!591154 () Bool)

(assert (=> d!993237 (= c!591154 (is-IntegerValue!16959 (value!175017 (h!42515 tokens!494))))))

(assert (=> d!993237 (= (inv!21 (value!175017 (h!42515 tokens!494))) e!2139063)))

(declare-fun b!3453205 () Bool)

(assert (=> b!3453205 (= e!2139063 (inv!16 (value!175017 (h!42515 tokens!494))))))

(declare-fun b!3453206 () Bool)

(assert (=> b!3453206 (= e!2139064 (inv!17 (value!175017 (h!42515 tokens!494))))))

(assert (= (and d!993237 c!591154) b!3453205))

(assert (= (and d!993237 (not c!591154)) b!3453204))

(assert (= (and b!3453204 c!591155) b!3453206))

(assert (= (and b!3453204 (not c!591155)) b!3453202))

(assert (= (and b!3453202 (not res!1392661)) b!3453203))

(declare-fun m!3851677 () Bool)

(assert (=> b!3453203 m!3851677))

(declare-fun m!3851679 () Bool)

(assert (=> b!3453205 m!3851679))

(declare-fun m!3851681 () Bool)

(assert (=> b!3453206 m!3851681))

(assert (=> b!3452516 d!993237))

(declare-fun lt!1172519 () Bool)

(declare-fun d!993239 () Bool)

(declare-fun isEmpty!21428 (List!37219) Bool)

(assert (=> d!993239 (= lt!1172519 (isEmpty!21428 (list!13497 (_1!21526 (lex!2338 thiss!18206 rules!2135 lt!1172165)))))))

(declare-fun isEmpty!21429 (Conc!11222) Bool)

(assert (=> d!993239 (= lt!1172519 (isEmpty!21429 (c!591041 (_1!21526 (lex!2338 thiss!18206 rules!2135 lt!1172165)))))))

(assert (=> d!993239 (= (isEmpty!21414 (_1!21526 (lex!2338 thiss!18206 rules!2135 lt!1172165))) lt!1172519)))

(declare-fun bs!559944 () Bool)

(assert (= bs!559944 d!993239))

(declare-fun m!3851683 () Bool)

(assert (=> bs!559944 m!3851683))

(assert (=> bs!559944 m!3851683))

(declare-fun m!3851685 () Bool)

(assert (=> bs!559944 m!3851685))

(declare-fun m!3851687 () Bool)

(assert (=> bs!559944 m!3851687))

(assert (=> b!3452521 d!993239))

(declare-fun b!3453207 () Bool)

(declare-fun e!2139067 () Bool)

(declare-fun lt!1172520 () tuple2!36784)

(assert (=> b!3453207 (= e!2139067 (= (list!13494 (_2!21526 lt!1172520)) (_2!21532 (lexList!1440 thiss!18206 rules!2135 (list!13494 lt!1172165)))))))

(declare-fun b!3453208 () Bool)

(declare-fun res!1392662 () Bool)

(assert (=> b!3453208 (=> (not res!1392662) (not e!2139067))))

(assert (=> b!3453208 (= res!1392662 (= (list!13497 (_1!21526 lt!1172520)) (_1!21532 (lexList!1440 thiss!18206 rules!2135 (list!13494 lt!1172165)))))))

(declare-fun b!3453209 () Bool)

(declare-fun e!2139066 () Bool)

(declare-fun e!2139068 () Bool)

(assert (=> b!3453209 (= e!2139066 e!2139068)))

(declare-fun res!1392663 () Bool)

(assert (=> b!3453209 (= res!1392663 (< (size!28122 (_2!21526 lt!1172520)) (size!28122 lt!1172165)))))

(assert (=> b!3453209 (=> (not res!1392663) (not e!2139068))))

(declare-fun d!993241 () Bool)

(assert (=> d!993241 e!2139067))

(declare-fun res!1392664 () Bool)

(assert (=> d!993241 (=> (not res!1392664) (not e!2139067))))

(assert (=> d!993241 (= res!1392664 e!2139066)))

(declare-fun c!591156 () Bool)

(assert (=> d!993241 (= c!591156 (> (size!28117 (_1!21526 lt!1172520)) 0))))

(assert (=> d!993241 (= lt!1172520 (lexTailRecV2!1048 thiss!18206 rules!2135 lt!1172165 (BalanceConc!22057 Empty!11221) lt!1172165 (BalanceConc!22059 Empty!11222)))))

(assert (=> d!993241 (= (lex!2338 thiss!18206 rules!2135 lt!1172165) lt!1172520)))

(declare-fun b!3453210 () Bool)

(assert (=> b!3453210 (= e!2139068 (not (isEmpty!21414 (_1!21526 lt!1172520))))))

(declare-fun b!3453211 () Bool)

(assert (=> b!3453211 (= e!2139066 (= (_2!21526 lt!1172520) lt!1172165))))

(assert (= (and d!993241 c!591156) b!3453209))

(assert (= (and d!993241 (not c!591156)) b!3453211))

(assert (= (and b!3453209 res!1392663) b!3453210))

(assert (= (and d!993241 res!1392664) b!3453208))

(assert (= (and b!3453208 res!1392662) b!3453207))

(declare-fun m!3851689 () Bool)

(assert (=> d!993241 m!3851689))

(declare-fun m!3851691 () Bool)

(assert (=> d!993241 m!3851691))

(declare-fun m!3851693 () Bool)

(assert (=> b!3453210 m!3851693))

(declare-fun m!3851695 () Bool)

(assert (=> b!3453208 m!3851695))

(declare-fun m!3851697 () Bool)

(assert (=> b!3453208 m!3851697))

(assert (=> b!3453208 m!3851697))

(declare-fun m!3851699 () Bool)

(assert (=> b!3453208 m!3851699))

(declare-fun m!3851701 () Bool)

(assert (=> b!3453209 m!3851701))

(declare-fun m!3851703 () Bool)

(assert (=> b!3453209 m!3851703))

(declare-fun m!3851705 () Bool)

(assert (=> b!3453207 m!3851705))

(assert (=> b!3453207 m!3851697))

(assert (=> b!3453207 m!3851697))

(assert (=> b!3453207 m!3851699))

(assert (=> b!3452521 d!993241))

(declare-fun d!993243 () Bool)

(declare-fun fromListB!1766 (List!37217) BalanceConc!22056)

(assert (=> d!993243 (= (seqFromList!3899 lt!1172172) (fromListB!1766 lt!1172172))))

(declare-fun bs!559945 () Bool)

(assert (= bs!559945 d!993243))

(declare-fun m!3851707 () Bool)

(assert (=> bs!559945 m!3851707))

(assert (=> b!3452521 d!993243))

(declare-fun d!993245 () Bool)

(declare-fun e!2139074 () Bool)

(assert (=> d!993245 e!2139074))

(declare-fun c!591159 () Bool)

(assert (=> d!993245 (= c!591159 (is-EmptyExpr!10182 (regex!5423 lt!1172183)))))

(declare-fun lt!1172521 () Bool)

(declare-fun e!2139069 () Bool)

(assert (=> d!993245 (= lt!1172521 e!2139069)))

(declare-fun c!591157 () Bool)

(assert (=> d!993245 (= c!591157 (isEmpty!21420 lt!1172178))))

(assert (=> d!993245 (validRegex!4635 (regex!5423 lt!1172183))))

(assert (=> d!993245 (= (matchR!4766 (regex!5423 lt!1172183) lt!1172178) lt!1172521)))

(declare-fun b!3453212 () Bool)

(declare-fun e!2139075 () Bool)

(declare-fun e!2139073 () Bool)

(assert (=> b!3453212 (= e!2139075 e!2139073)))

(declare-fun res!1392672 () Bool)

(assert (=> b!3453212 (=> res!1392672 e!2139073)))

(declare-fun call!249217 () Bool)

(assert (=> b!3453212 (= res!1392672 call!249217)))

(declare-fun b!3453213 () Bool)

(declare-fun res!1392666 () Bool)

(declare-fun e!2139071 () Bool)

(assert (=> b!3453213 (=> res!1392666 e!2139071)))

(assert (=> b!3453213 (= res!1392666 (not (is-ElementMatch!10182 (regex!5423 lt!1172183))))))

(declare-fun e!2139070 () Bool)

(assert (=> b!3453213 (= e!2139070 e!2139071)))

(declare-fun b!3453214 () Bool)

(assert (=> b!3453214 (= e!2139069 (nullable!3479 (regex!5423 lt!1172183)))))

(declare-fun b!3453215 () Bool)

(declare-fun res!1392671 () Bool)

(assert (=> b!3453215 (=> res!1392671 e!2139073)))

(assert (=> b!3453215 (= res!1392671 (not (isEmpty!21420 (tail!5414 lt!1172178))))))

(declare-fun b!3453216 () Bool)

(assert (=> b!3453216 (= e!2139071 e!2139075)))

(declare-fun res!1392667 () Bool)

(assert (=> b!3453216 (=> (not res!1392667) (not e!2139075))))

(assert (=> b!3453216 (= res!1392667 (not lt!1172521))))

(declare-fun b!3453217 () Bool)

(declare-fun res!1392665 () Bool)

(declare-fun e!2139072 () Bool)

(assert (=> b!3453217 (=> (not res!1392665) (not e!2139072))))

(assert (=> b!3453217 (= res!1392665 (not call!249217))))

(declare-fun b!3453218 () Bool)

(assert (=> b!3453218 (= e!2139069 (matchR!4766 (derivativeStep!3032 (regex!5423 lt!1172183) (head!7294 lt!1172178)) (tail!5414 lt!1172178)))))

(declare-fun b!3453219 () Bool)

(assert (=> b!3453219 (= e!2139074 e!2139070)))

(declare-fun c!591158 () Bool)

(assert (=> b!3453219 (= c!591158 (is-EmptyLang!10182 (regex!5423 lt!1172183)))))

(declare-fun b!3453220 () Bool)

(declare-fun res!1392668 () Bool)

(assert (=> b!3453220 (=> (not res!1392668) (not e!2139072))))

(assert (=> b!3453220 (= res!1392668 (isEmpty!21420 (tail!5414 lt!1172178)))))

(declare-fun b!3453221 () Bool)

(assert (=> b!3453221 (= e!2139070 (not lt!1172521))))

(declare-fun bm!249212 () Bool)

(assert (=> bm!249212 (= call!249217 (isEmpty!21420 lt!1172178))))

(declare-fun b!3453222 () Bool)

(declare-fun res!1392670 () Bool)

(assert (=> b!3453222 (=> res!1392670 e!2139071)))

(assert (=> b!3453222 (= res!1392670 e!2139072)))

(declare-fun res!1392669 () Bool)

(assert (=> b!3453222 (=> (not res!1392669) (not e!2139072))))

(assert (=> b!3453222 (= res!1392669 lt!1172521)))

(declare-fun b!3453223 () Bool)

(assert (=> b!3453223 (= e!2139073 (not (= (head!7294 lt!1172178) (c!591039 (regex!5423 lt!1172183)))))))

(declare-fun b!3453224 () Bool)

(assert (=> b!3453224 (= e!2139072 (= (head!7294 lt!1172178) (c!591039 (regex!5423 lt!1172183))))))

(declare-fun b!3453225 () Bool)

(assert (=> b!3453225 (= e!2139074 (= lt!1172521 call!249217))))

(assert (= (and d!993245 c!591157) b!3453214))

(assert (= (and d!993245 (not c!591157)) b!3453218))

(assert (= (and d!993245 c!591159) b!3453225))

(assert (= (and d!993245 (not c!591159)) b!3453219))

(assert (= (and b!3453219 c!591158) b!3453221))

(assert (= (and b!3453219 (not c!591158)) b!3453213))

(assert (= (and b!3453213 (not res!1392666)) b!3453222))

(assert (= (and b!3453222 res!1392669) b!3453217))

(assert (= (and b!3453217 res!1392665) b!3453220))

(assert (= (and b!3453220 res!1392668) b!3453224))

(assert (= (and b!3453222 (not res!1392670)) b!3453216))

(assert (= (and b!3453216 res!1392667) b!3453212))

(assert (= (and b!3453212 (not res!1392672)) b!3453215))

(assert (= (and b!3453215 (not res!1392671)) b!3453223))

(assert (= (or b!3453225 b!3453212 b!3453217) bm!249212))

(assert (=> d!993245 m!3850951))

(declare-fun m!3851709 () Bool)

(assert (=> d!993245 m!3851709))

(assert (=> b!3453220 m!3850953))

(assert (=> b!3453220 m!3850953))

(assert (=> b!3453220 m!3850955))

(assert (=> b!3453218 m!3850505))

(assert (=> b!3453218 m!3850505))

(declare-fun m!3851711 () Bool)

(assert (=> b!3453218 m!3851711))

(assert (=> b!3453218 m!3850953))

(assert (=> b!3453218 m!3851711))

(assert (=> b!3453218 m!3850953))

(declare-fun m!3851713 () Bool)

(assert (=> b!3453218 m!3851713))

(declare-fun m!3851715 () Bool)

(assert (=> b!3453214 m!3851715))

(assert (=> b!3453224 m!3850505))

(assert (=> b!3453223 m!3850505))

(assert (=> b!3453215 m!3850953))

(assert (=> b!3453215 m!3850953))

(assert (=> b!3453215 m!3850955))

(assert (=> bm!249212 m!3850951))

(assert (=> b!3452542 d!993245))

(declare-fun d!993247 () Bool)

(assert (=> d!993247 (= (get!11862 lt!1172171) (v!36776 lt!1172171))))

(assert (=> b!3452542 d!993247))

(declare-fun d!993249 () Bool)

(declare-fun e!2139081 () Bool)

(assert (=> d!993249 e!2139081))

(declare-fun c!591162 () Bool)

(assert (=> d!993249 (= c!591162 (is-EmptyExpr!10182 (regex!5423 lt!1172158)))))

(declare-fun lt!1172522 () Bool)

(declare-fun e!2139076 () Bool)

(assert (=> d!993249 (= lt!1172522 e!2139076)))

(declare-fun c!591160 () Bool)

(assert (=> d!993249 (= c!591160 (isEmpty!21420 lt!1172172))))

(assert (=> d!993249 (validRegex!4635 (regex!5423 lt!1172158))))

(assert (=> d!993249 (= (matchR!4766 (regex!5423 lt!1172158) lt!1172172) lt!1172522)))

(declare-fun b!3453226 () Bool)

(declare-fun e!2139082 () Bool)

(declare-fun e!2139080 () Bool)

(assert (=> b!3453226 (= e!2139082 e!2139080)))

(declare-fun res!1392680 () Bool)

(assert (=> b!3453226 (=> res!1392680 e!2139080)))

(declare-fun call!249218 () Bool)

(assert (=> b!3453226 (= res!1392680 call!249218)))

(declare-fun b!3453227 () Bool)

(declare-fun res!1392674 () Bool)

(declare-fun e!2139078 () Bool)

(assert (=> b!3453227 (=> res!1392674 e!2139078)))

(assert (=> b!3453227 (= res!1392674 (not (is-ElementMatch!10182 (regex!5423 lt!1172158))))))

(declare-fun e!2139077 () Bool)

(assert (=> b!3453227 (= e!2139077 e!2139078)))

(declare-fun b!3453228 () Bool)

(assert (=> b!3453228 (= e!2139076 (nullable!3479 (regex!5423 lt!1172158)))))

(declare-fun b!3453229 () Bool)

(declare-fun res!1392679 () Bool)

(assert (=> b!3453229 (=> res!1392679 e!2139080)))

(assert (=> b!3453229 (= res!1392679 (not (isEmpty!21420 (tail!5414 lt!1172172))))))

(declare-fun b!3453230 () Bool)

(assert (=> b!3453230 (= e!2139078 e!2139082)))

(declare-fun res!1392675 () Bool)

(assert (=> b!3453230 (=> (not res!1392675) (not e!2139082))))

(assert (=> b!3453230 (= res!1392675 (not lt!1172522))))

(declare-fun b!3453231 () Bool)

(declare-fun res!1392673 () Bool)

(declare-fun e!2139079 () Bool)

(assert (=> b!3453231 (=> (not res!1392673) (not e!2139079))))

(assert (=> b!3453231 (= res!1392673 (not call!249218))))

(declare-fun b!3453232 () Bool)

(assert (=> b!3453232 (= e!2139076 (matchR!4766 (derivativeStep!3032 (regex!5423 lt!1172158) (head!7294 lt!1172172)) (tail!5414 lt!1172172)))))

(declare-fun b!3453233 () Bool)

(assert (=> b!3453233 (= e!2139081 e!2139077)))

(declare-fun c!591161 () Bool)

(assert (=> b!3453233 (= c!591161 (is-EmptyLang!10182 (regex!5423 lt!1172158)))))

(declare-fun b!3453234 () Bool)

(declare-fun res!1392676 () Bool)

(assert (=> b!3453234 (=> (not res!1392676) (not e!2139079))))

(assert (=> b!3453234 (= res!1392676 (isEmpty!21420 (tail!5414 lt!1172172)))))

(declare-fun b!3453235 () Bool)

(assert (=> b!3453235 (= e!2139077 (not lt!1172522))))

(declare-fun bm!249213 () Bool)

(assert (=> bm!249213 (= call!249218 (isEmpty!21420 lt!1172172))))

(declare-fun b!3453236 () Bool)

(declare-fun res!1392678 () Bool)

(assert (=> b!3453236 (=> res!1392678 e!2139078)))

(assert (=> b!3453236 (= res!1392678 e!2139079)))

(declare-fun res!1392677 () Bool)

(assert (=> b!3453236 (=> (not res!1392677) (not e!2139079))))

(assert (=> b!3453236 (= res!1392677 lt!1172522)))

(declare-fun b!3453237 () Bool)

(assert (=> b!3453237 (= e!2139080 (not (= (head!7294 lt!1172172) (c!591039 (regex!5423 lt!1172158)))))))

(declare-fun b!3453238 () Bool)

(assert (=> b!3453238 (= e!2139079 (= (head!7294 lt!1172172) (c!591039 (regex!5423 lt!1172158))))))

(declare-fun b!3453239 () Bool)

(assert (=> b!3453239 (= e!2139081 (= lt!1172522 call!249218))))

(assert (= (and d!993249 c!591160) b!3453228))

(assert (= (and d!993249 (not c!591160)) b!3453232))

(assert (= (and d!993249 c!591162) b!3453239))

(assert (= (and d!993249 (not c!591162)) b!3453233))

(assert (= (and b!3453233 c!591161) b!3453235))

(assert (= (and b!3453233 (not c!591161)) b!3453227))

(assert (= (and b!3453227 (not res!1392674)) b!3453236))

(assert (= (and b!3453236 res!1392677) b!3453231))

(assert (= (and b!3453231 res!1392673) b!3453234))

(assert (= (and b!3453234 res!1392676) b!3453238))

(assert (= (and b!3453236 (not res!1392678)) b!3453230))

(assert (= (and b!3453230 res!1392675) b!3453226))

(assert (= (and b!3453226 (not res!1392680)) b!3453229))

(assert (= (and b!3453229 (not res!1392679)) b!3453237))

(assert (= (or b!3453239 b!3453226 b!3453231) bm!249213))

(declare-fun m!3851717 () Bool)

(assert (=> d!993249 m!3851717))

(declare-fun m!3851719 () Bool)

(assert (=> d!993249 m!3851719))

(declare-fun m!3851721 () Bool)

(assert (=> b!3453234 m!3851721))

(assert (=> b!3453234 m!3851721))

(declare-fun m!3851723 () Bool)

(assert (=> b!3453234 m!3851723))

(declare-fun m!3851725 () Bool)

(assert (=> b!3453232 m!3851725))

(assert (=> b!3453232 m!3851725))

(declare-fun m!3851727 () Bool)

(assert (=> b!3453232 m!3851727))

(assert (=> b!3453232 m!3851721))

(assert (=> b!3453232 m!3851727))

(assert (=> b!3453232 m!3851721))

(declare-fun m!3851729 () Bool)

(assert (=> b!3453232 m!3851729))

(declare-fun m!3851731 () Bool)

(assert (=> b!3453228 m!3851731))

(assert (=> b!3453238 m!3851725))

(assert (=> b!3453237 m!3851725))

(assert (=> b!3453229 m!3851721))

(assert (=> b!3453229 m!3851721))

(assert (=> b!3453229 m!3851723))

(assert (=> bm!249213 m!3851717))

(assert (=> b!3452520 d!993249))

(declare-fun d!993251 () Bool)

(assert (=> d!993251 (= (get!11862 lt!1172157) (v!36776 lt!1172157))))

(assert (=> b!3452520 d!993251))

(declare-fun b!3453271 () Bool)

(declare-fun b_free!89637 () Bool)

(declare-fun b_next!90341 () Bool)

(assert (=> b!3453271 (= b_free!89637 (not b_next!90341))))

(declare-fun t!272076 () Bool)

(declare-fun tb!188007 () Bool)

(assert (=> (and b!3453271 (= (toValue!7647 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))) (toValue!7647 (transformation!5423 (rule!8005 (h!42515 tokens!494))))) t!272076) tb!188007))

(declare-fun result!231882 () Bool)

(assert (= result!231882 result!231852))

(assert (=> d!993111 t!272076))

(declare-fun tp!1076765 () Bool)

(declare-fun b_and!242641 () Bool)

(assert (=> b!3453271 (= tp!1076765 (and (=> t!272076 result!231882) b_and!242641))))

(declare-fun b_free!89639 () Bool)

(declare-fun b_next!90343 () Bool)

(assert (=> b!3453271 (= b_free!89639 (not b_next!90343))))

(declare-fun t!272078 () Bool)

(declare-fun tb!188009 () Bool)

(assert (=> (and b!3453271 (= (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494))))) t!272078) tb!188009))

(declare-fun result!231884 () Bool)

(assert (= result!231884 result!231838))

(assert (=> d!993039 t!272078))

(declare-fun tb!188011 () Bool)

(declare-fun t!272080 () Bool)

(assert (=> (and b!3453271 (= (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))) (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241)))) t!272080) tb!188011))

(declare-fun result!231886 () Bool)

(assert (= result!231886 result!231824))

(assert (=> d!993011 t!272080))

(assert (=> b!3452697 t!272080))

(declare-fun t!272082 () Bool)

(declare-fun tb!188013 () Bool)

(assert (=> (and b!3453271 (= (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494)))))) t!272082) tb!188013))

(declare-fun result!231888 () Bool)

(assert (= result!231888 result!231832))

(assert (=> d!993025 t!272082))

(assert (=> b!3452735 t!272078))

(declare-fun tp!1076767 () Bool)

(declare-fun b_and!242643 () Bool)

(assert (=> b!3453271 (= tp!1076767 (and (=> t!272082 result!231888) (=> t!272078 result!231884) (=> t!272080 result!231886) b_and!242643))))

(declare-fun e!2139105 () Bool)

(declare-fun b!3453268 () Bool)

(declare-fun e!2139106 () Bool)

(declare-fun tp!1076764 () Bool)

(assert (=> b!3453268 (= e!2139105 (and (inv!50261 (h!42515 (t!272006 tokens!494))) e!2139106 tp!1076764))))

(declare-fun b!3453270 () Bool)

(declare-fun e!2139104 () Bool)

(declare-fun tp!1076763 () Bool)

(declare-fun e!2139108 () Bool)

(assert (=> b!3453270 (= e!2139104 (and tp!1076763 (inv!50257 (tag!6023 (rule!8005 (h!42515 (t!272006 tokens!494))))) (inv!50260 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))) e!2139108))))

(assert (=> b!3453271 (= e!2139108 (and tp!1076765 tp!1076767))))

(assert (=> b!3452522 (= tp!1076692 e!2139105)))

(declare-fun b!3453269 () Bool)

(declare-fun tp!1076766 () Bool)

(assert (=> b!3453269 (= e!2139106 (and (inv!21 (value!175017 (h!42515 (t!272006 tokens!494)))) e!2139104 tp!1076766))))

(assert (= b!3453270 b!3453271))

(assert (= b!3453269 b!3453270))

(assert (= b!3453268 b!3453269))

(assert (= (and b!3452522 (is-Cons!37095 (t!272006 tokens!494))) b!3453268))

(declare-fun m!3851733 () Bool)

(assert (=> b!3453268 m!3851733))

(declare-fun m!3851735 () Bool)

(assert (=> b!3453270 m!3851735))

(declare-fun m!3851737 () Bool)

(assert (=> b!3453270 m!3851737))

(declare-fun m!3851739 () Bool)

(assert (=> b!3453269 m!3851739))

(declare-fun b!3453285 () Bool)

(declare-fun e!2139111 () Bool)

(declare-fun tp!1076781 () Bool)

(declare-fun tp!1076778 () Bool)

(assert (=> b!3453285 (= e!2139111 (and tp!1076781 tp!1076778))))

(declare-fun b!3453283 () Bool)

(declare-fun tp!1076782 () Bool)

(declare-fun tp!1076780 () Bool)

(assert (=> b!3453283 (= e!2139111 (and tp!1076782 tp!1076780))))

(declare-fun b!3453284 () Bool)

(declare-fun tp!1076779 () Bool)

(assert (=> b!3453284 (= e!2139111 tp!1076779)))

(assert (=> b!3452543 (= tp!1076700 e!2139111)))

(declare-fun b!3453282 () Bool)

(declare-fun tp_is_empty!17539 () Bool)

(assert (=> b!3453282 (= e!2139111 tp_is_empty!17539)))

(assert (= (and b!3452543 (is-ElementMatch!10182 (regex!5423 (rule!8005 separatorToken!241)))) b!3453282))

(assert (= (and b!3452543 (is-Concat!15835 (regex!5423 (rule!8005 separatorToken!241)))) b!3453283))

(assert (= (and b!3452543 (is-Star!10182 (regex!5423 (rule!8005 separatorToken!241)))) b!3453284))

(assert (= (and b!3452543 (is-Union!10182 (regex!5423 (rule!8005 separatorToken!241)))) b!3453285))

(declare-fun b!3453288 () Bool)

(declare-fun e!2139114 () Bool)

(assert (=> b!3453288 (= e!2139114 true)))

(declare-fun b!3453287 () Bool)

(declare-fun e!2139113 () Bool)

(assert (=> b!3453287 (= e!2139113 e!2139114)))

(declare-fun b!3453286 () Bool)

(declare-fun e!2139112 () Bool)

(assert (=> b!3453286 (= e!2139112 e!2139113)))

(assert (=> b!3452561 e!2139112))

(assert (= b!3453287 b!3453288))

(assert (= b!3453286 b!3453287))

(assert (= (and b!3452561 (is-Cons!37094 (t!272005 rules!2135))) b!3453286))

(assert (=> b!3453288 (< (dynLambda!15579 order!19695 (toValue!7647 (transformation!5423 (h!42514 (t!272005 rules!2135))))) (dynLambda!15580 order!19697 lambda!121597))))

(assert (=> b!3453288 (< (dynLambda!15581 order!19699 (toChars!7506 (transformation!5423 (h!42514 (t!272005 rules!2135))))) (dynLambda!15580 order!19697 lambda!121597))))

(declare-fun b!3453292 () Bool)

(declare-fun e!2139115 () Bool)

(declare-fun tp!1076786 () Bool)

(declare-fun tp!1076783 () Bool)

(assert (=> b!3453292 (= e!2139115 (and tp!1076786 tp!1076783))))

(declare-fun b!3453290 () Bool)

(declare-fun tp!1076787 () Bool)

(declare-fun tp!1076785 () Bool)

(assert (=> b!3453290 (= e!2139115 (and tp!1076787 tp!1076785))))

(declare-fun b!3453291 () Bool)

(declare-fun tp!1076784 () Bool)

(assert (=> b!3453291 (= e!2139115 tp!1076784)))

(assert (=> b!3452515 (= tp!1076697 e!2139115)))

(declare-fun b!3453289 () Bool)

(assert (=> b!3453289 (= e!2139115 tp_is_empty!17539)))

(assert (= (and b!3452515 (is-ElementMatch!10182 (regex!5423 (rule!8005 (h!42515 tokens!494))))) b!3453289))

(assert (= (and b!3452515 (is-Concat!15835 (regex!5423 (rule!8005 (h!42515 tokens!494))))) b!3453290))

(assert (= (and b!3452515 (is-Star!10182 (regex!5423 (rule!8005 (h!42515 tokens!494))))) b!3453291))

(assert (= (and b!3452515 (is-Union!10182 (regex!5423 (rule!8005 (h!42515 tokens!494))))) b!3453292))

(declare-fun b!3453296 () Bool)

(declare-fun e!2139116 () Bool)

(declare-fun tp!1076791 () Bool)

(declare-fun tp!1076788 () Bool)

(assert (=> b!3453296 (= e!2139116 (and tp!1076791 tp!1076788))))

(declare-fun b!3453294 () Bool)

(declare-fun tp!1076792 () Bool)

(declare-fun tp!1076790 () Bool)

(assert (=> b!3453294 (= e!2139116 (and tp!1076792 tp!1076790))))

(declare-fun b!3453295 () Bool)

(declare-fun tp!1076789 () Bool)

(assert (=> b!3453295 (= e!2139116 tp!1076789)))

(assert (=> b!3452536 (= tp!1076694 e!2139116)))

(declare-fun b!3453293 () Bool)

(assert (=> b!3453293 (= e!2139116 tp_is_empty!17539)))

(assert (= (and b!3452536 (is-ElementMatch!10182 (regex!5423 (h!42514 rules!2135)))) b!3453293))

(assert (= (and b!3452536 (is-Concat!15835 (regex!5423 (h!42514 rules!2135)))) b!3453294))

(assert (= (and b!3452536 (is-Star!10182 (regex!5423 (h!42514 rules!2135)))) b!3453295))

(assert (= (and b!3452536 (is-Union!10182 (regex!5423 (h!42514 rules!2135)))) b!3453296))

(declare-fun b!3453310 () Bool)

(declare-fun e!2139123 () Bool)

(declare-fun tp!1076795 () Bool)

(assert (=> b!3453310 (= e!2139123 (and tp_is_empty!17539 tp!1076795))))

(assert (=> b!3452550 (= tp!1076696 e!2139123)))

(assert (= (and b!3452550 (is-Cons!37093 (originalCharacters!6137 separatorToken!241))) b!3453310))

(declare-fun b!3453311 () Bool)

(declare-fun e!2139124 () Bool)

(declare-fun tp!1076796 () Bool)

(assert (=> b!3453311 (= e!2139124 (and tp_is_empty!17539 tp!1076796))))

(assert (=> b!3452516 (= tp!1076699 e!2139124)))

(assert (= (and b!3452516 (is-Cons!37093 (originalCharacters!6137 (h!42515 tokens!494)))) b!3453311))

(declare-fun b!3453322 () Bool)

(declare-fun b_free!89641 () Bool)

(declare-fun b_next!90345 () Bool)

(assert (=> b!3453322 (= b_free!89641 (not b_next!90345))))

(declare-fun tb!188015 () Bool)

(declare-fun t!272084 () Bool)

(assert (=> (and b!3453322 (= (toValue!7647 (transformation!5423 (h!42514 (t!272005 rules!2135)))) (toValue!7647 (transformation!5423 (rule!8005 (h!42515 tokens!494))))) t!272084) tb!188015))

(declare-fun result!231896 () Bool)

(assert (= result!231896 result!231852))

(assert (=> d!993111 t!272084))

(declare-fun tp!1076806 () Bool)

(declare-fun b_and!242645 () Bool)

(assert (=> b!3453322 (= tp!1076806 (and (=> t!272084 result!231896) b_and!242645))))

(declare-fun b_free!89643 () Bool)

(declare-fun b_next!90347 () Bool)

(assert (=> b!3453322 (= b_free!89643 (not b_next!90347))))

(declare-fun t!272086 () Bool)

(declare-fun tb!188017 () Bool)

(assert (=> (and b!3453322 (= (toChars!7506 (transformation!5423 (h!42514 (t!272005 rules!2135)))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494))))) t!272086) tb!188017))

(declare-fun result!231898 () Bool)

(assert (= result!231898 result!231838))

(assert (=> d!993039 t!272086))

(declare-fun tb!188019 () Bool)

(declare-fun t!272088 () Bool)

(assert (=> (and b!3453322 (= (toChars!7506 (transformation!5423 (h!42514 (t!272005 rules!2135)))) (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241)))) t!272088) tb!188019))

(declare-fun result!231900 () Bool)

(assert (= result!231900 result!231824))

(assert (=> d!993011 t!272088))

(assert (=> b!3452697 t!272088))

(declare-fun t!272090 () Bool)

(declare-fun tb!188021 () Bool)

(assert (=> (and b!3453322 (= (toChars!7506 (transformation!5423 (h!42514 (t!272005 rules!2135)))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494)))))) t!272090) tb!188021))

(declare-fun result!231902 () Bool)

(assert (= result!231902 result!231832))

(assert (=> d!993025 t!272090))

(assert (=> b!3452735 t!272086))

(declare-fun tp!1076807 () Bool)

(declare-fun b_and!242647 () Bool)

(assert (=> b!3453322 (= tp!1076807 (and (=> t!272086 result!231898) (=> t!272090 result!231902) (=> t!272088 result!231900) b_and!242647))))

(declare-fun e!2139134 () Bool)

(assert (=> b!3453322 (= e!2139134 (and tp!1076806 tp!1076807))))

(declare-fun b!3453321 () Bool)

(declare-fun tp!1076808 () Bool)

(declare-fun e!2139135 () Bool)

(assert (=> b!3453321 (= e!2139135 (and tp!1076808 (inv!50257 (tag!6023 (h!42514 (t!272005 rules!2135)))) (inv!50260 (transformation!5423 (h!42514 (t!272005 rules!2135)))) e!2139134))))

(declare-fun b!3453320 () Bool)

(declare-fun e!2139136 () Bool)

(declare-fun tp!1076805 () Bool)

(assert (=> b!3453320 (= e!2139136 (and e!2139135 tp!1076805))))

(assert (=> b!3452551 (= tp!1076702 e!2139136)))

(assert (= b!3453321 b!3453322))

(assert (= b!3453320 b!3453321))

(assert (= (and b!3452551 (is-Cons!37094 (t!272005 rules!2135))) b!3453320))

(declare-fun m!3851769 () Bool)

(assert (=> b!3453321 m!3851769))

(declare-fun m!3851771 () Bool)

(assert (=> b!3453321 m!3851771))

(declare-fun b_lambda!99187 () Bool)

(assert (= b_lambda!99165 (or b!3452532 b_lambda!99187)))

(declare-fun bs!559946 () Bool)

(declare-fun d!993253 () Bool)

(assert (= bs!559946 (and d!993253 b!3452532)))

(assert (=> bs!559946 (= (dynLambda!15586 lambda!121596 (h!42515 (t!272006 tokens!494))) (not (isSeparator!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))))))

(assert (=> d!993097 d!993253))

(declare-fun b_lambda!99189 () Bool)

(assert (= b_lambda!99163 (or b!3452532 b_lambda!99189)))

(declare-fun bs!559947 () Bool)

(declare-fun d!993255 () Bool)

(assert (= bs!559947 (and d!993255 b!3452532)))

(assert (=> bs!559947 (= (dynLambda!15586 lambda!121596 (h!42515 tokens!494)) (not (isSeparator!5423 (rule!8005 (h!42515 tokens!494)))))))

(assert (=> b!3452883 d!993255))

(declare-fun b_lambda!99191 () Bool)

(assert (= b_lambda!99157 (or (and b!3453322 b_free!89643 (= (toChars!7506 (transformation!5423 (h!42514 (t!272005 rules!2135)))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))))) (and b!3452523 b_free!89619 (= (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))))) (and b!3452540 b_free!89615) (and b!3452528 b_free!89623 (= (toChars!7506 (transformation!5423 (h!42514 rules!2135))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))))) (and b!3453271 b_free!89639 (= (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))))) b_lambda!99191)))

(declare-fun b_lambda!99193 () Bool)

(assert (= b_lambda!99167 (or b!3452532 b_lambda!99193)))

(assert (=> d!993099 d!993255))

(declare-fun b_lambda!99195 () Bool)

(assert (= b_lambda!99153 (or (and b!3452528 b_free!89623 (= (toChars!7506 (transformation!5423 (h!42514 rules!2135))) (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))))) (and b!3452523 b_free!89619) (and b!3453322 b_free!89643 (= (toChars!7506 (transformation!5423 (h!42514 (t!272005 rules!2135)))) (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))))) (and b!3453271 b_free!89639 (= (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))) (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))))) (and b!3452540 b_free!89615 (= (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))))) b_lambda!99195)))

(declare-fun b_lambda!99197 () Bool)

(assert (= b_lambda!99171 (or (and b!3453271 b_free!89637 (= (toValue!7647 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))) (toValue!7647 (transformation!5423 (rule!8005 (h!42515 tokens!494)))))) (and b!3452523 b_free!89617 (= (toValue!7647 (transformation!5423 (rule!8005 separatorToken!241))) (toValue!7647 (transformation!5423 (rule!8005 (h!42515 tokens!494)))))) (and b!3452540 b_free!89613) (and b!3452528 b_free!89621 (= (toValue!7647 (transformation!5423 (h!42514 rules!2135))) (toValue!7647 (transformation!5423 (rule!8005 (h!42515 tokens!494)))))) (and b!3453322 b_free!89641 (= (toValue!7647 (transformation!5423 (h!42514 (t!272005 rules!2135)))) (toValue!7647 (transformation!5423 (rule!8005 (h!42515 tokens!494)))))) b_lambda!99197)))

(declare-fun b_lambda!99199 () Bool)

(assert (= b_lambda!99151 (or (and b!3452528 b_free!89623 (= (toChars!7506 (transformation!5423 (h!42514 rules!2135))) (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))))) (and b!3452523 b_free!89619) (and b!3453322 b_free!89643 (= (toChars!7506 (transformation!5423 (h!42514 (t!272005 rules!2135)))) (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))))) (and b!3453271 b_free!89639 (= (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))) (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))))) (and b!3452540 b_free!89615 (= (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))))) b_lambda!99199)))

(declare-fun b_lambda!99201 () Bool)

(assert (= b_lambda!99155 (or (and b!3452540 b_free!89615 (= (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))))) (and b!3452523 b_free!89619 (= (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))))) (and b!3452528 b_free!89623 (= (toChars!7506 (transformation!5423 (h!42514 rules!2135))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))))) (and b!3453322 b_free!89643 (= (toChars!7506 (transformation!5423 (h!42514 (t!272005 rules!2135)))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))))) (and b!3453271 b_free!89639) b_lambda!99201)))

(declare-fun b_lambda!99203 () Bool)

(assert (= b_lambda!99159 (or (and b!3453322 b_free!89643 (= (toChars!7506 (transformation!5423 (h!42514 (t!272005 rules!2135)))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))))) (and b!3452523 b_free!89619 (= (toChars!7506 (transformation!5423 (rule!8005 separatorToken!241))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))))) (and b!3452540 b_free!89615) (and b!3452528 b_free!89623 (= (toChars!7506 (transformation!5423 (h!42514 rules!2135))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))))) (and b!3453271 b_free!89639 (= (toChars!7506 (transformation!5423 (rule!8005 (h!42515 (t!272006 tokens!494))))) (toChars!7506 (transformation!5423 (rule!8005 (h!42515 tokens!494)))))) b_lambda!99203)))

(declare-fun b_lambda!99205 () Bool)

(assert (= b_lambda!99169 (or b!3452517 b_lambda!99205)))

(declare-fun bs!559948 () Bool)

(declare-fun d!993259 () Bool)

(assert (= bs!559948 (and d!993259 b!3452517)))

(assert (=> bs!559948 (= (dynLambda!15586 lambda!121597 (h!42515 (t!272006 tokens!494))) (rulesProduceIndividualToken!2504 thiss!18206 rules!2135 (h!42515 (t!272006 tokens!494))))))

(assert (=> bs!559948 m!3850509))

(assert (=> d!993103 d!993259))

(push 1)

(assert (not b!3453130))

(assert (not d!993023))

(assert (not b!3453294))

(assert (not b!3453237))

(assert (not b!3452939))

(assert (not b_lambda!99191))

(assert (not b!3453142))

(assert (not b!3452748))

(assert (not b!3453199))

(assert (not b_next!90341))

(assert (not b!3453059))

(assert (not b!3453172))

(assert (not b!3453133))

(assert (not d!993005))

(assert (not b!3453043))

(assert (not b_lambda!99189))

(assert (not d!993113))

(assert (not b!3452720))

(assert (not b!3453270))

(assert (not b!3452838))

(assert (not b!3452735))

(assert (not b!3453296))

(assert (not d!993243))

(assert (not b!3452933))

(assert (not b!3452890))

(assert (not b!3452937))

(assert (not d!993041))

(assert (not d!993035))

(assert (not d!993223))

(assert (not d!993169))

(assert (not b!3452703))

(assert (not b!3452893))

(assert (not b!3452931))

(assert (not d!993175))

(assert (not d!993029))

(assert (not d!993075))

(assert (not b_next!90325))

(assert (not b_next!90319))

(assert (not b!3452891))

(assert b_and!242645)

(assert (not b!3453284))

(assert (not b!3453218))

(assert (not b!3452884))

(assert (not d!993083))

(assert (not bm!249208))

(assert (not b!3453292))

(assert (not b!3453052))

(assert (not b!3452878))

(assert (not b_next!90327))

(assert (not b!3453310))

(assert (not b!3452934))

(assert (not b!3453215))

(assert (not d!993021))

(assert (not b!3452892))

(assert (not b!3452910))

(assert (not b_lambda!99201))

(assert (not d!993161))

(assert (not b!3453283))

(assert (not d!993241))

(assert (not b!3453173))

(assert (not b!3452938))

(assert (not b!3453208))

(assert (not b!3452749))

(assert (not b!3453060))

(assert (not b!3452962))

(assert (not d!993173))

(assert (not b!3452698))

(assert (not d!993047))

(assert (not b_next!90343))

(assert (not d!993163))

(assert (not b!3452724))

(assert (not d!993167))

(assert (not b!3453070))

(assert (not bm!249212))

(assert (not b!3452820))

(assert (not d!993013))

(assert (not b!3452877))

(assert (not b!3452740))

(assert (not b!3453269))

(assert (not b!3452719))

(assert (not b!3452965))

(assert (not b!3452889))

(assert (not b!3452752))

(assert (not b!3452731))

(assert (not b!3453054))

(assert (not b!3452734))

(assert (not b!3452697))

(assert (not d!993097))

(assert (not b!3453234))

(assert (not b!3453203))

(assert (not b_next!90347))

(assert (not b!3453295))

(assert (not b!3452912))

(assert (not b!3452775))

(assert b_and!242647)

(assert (not d!993051))

(assert (not b_lambda!99199))

(assert (not bm!249211))

(assert (not b!3453044))

(assert (not b!3453210))

(assert (not b!3452871))

(assert (not b!3453223))

(assert (not b!3453132))

(assert (not d!993095))

(assert (not b!3452751))

(assert (not bs!559948))

(assert (not b!3452728))

(assert (not b_lambda!99187))

(assert (not b!3453198))

(assert (not b_lambda!99205))

(assert (not b!3452777))

(assert (not b_lambda!99193))

(assert (not d!993071))

(assert (not b!3453069))

(assert (not d!993157))

(assert (not b_lambda!99203))

(assert (not b!3452732))

(assert (not tb!187971))

(assert (not b!3452909))

(assert (not b!3453045))

(assert (not b!3453131))

(assert (not b_next!90323))

(assert (not b!3452763))

(assert (not b!3453220))

(assert (not b!3452755))

(assert (not b_lambda!99195))

(assert (not d!993091))

(assert (not b!3453291))

(assert (not b!3453321))

(assert (not tb!187959))

(assert (not d!993025))

(assert tp_is_empty!17539)

(assert (not d!993099))

(assert (not b!3453063))

(assert (not b!3452863))

(assert (not d!993059))

(assert (not d!993077))

(assert (not b!3452756))

(assert (not b!3453320))

(assert (not d!993033))

(assert (not b!3453290))

(assert (not d!993109))

(assert (not b!3452747))

(assert (not d!993209))

(assert (not d!993043))

(assert (not b!3453051))

(assert (not d!993153))

(assert (not b!3453238))

(assert (not b!3453268))

(assert (not d!993063))

(assert (not d!993055))

(assert (not b!3452885))

(assert b_and!242603)

(assert (not b!3453171))

(assert (not b!3452826))

(assert b_and!242641)

(assert (not b!3452736))

(assert (not b_next!90345))

(assert b_and!242611)

(assert (not b!3453214))

(assert (not d!993045))

(assert (not d!993235))

(assert (not d!993037))

(assert (not d!993249))

(assert (not b!3453206))

(assert (not d!993121))

(assert (not d!993155))

(assert (not d!993101))

(assert (not b!3452778))

(assert b_and!242599)

(assert (not b!3452708))

(assert (not d!993123))

(assert (not d!993053))

(assert (not b!3452861))

(assert (not b!3452821))

(assert b_and!242613)

(assert (not b!3452829))

(assert (not b!3452932))

(assert (not tb!187983))

(assert (not d!993085))

(assert (not b!3452936))

(assert (not b!3452886))

(assert (not b!3453286))

(assert (not bm!249210))

(assert (not b!3452726))

(assert (not d!993207))

(assert (not d!993245))

(assert (not b!3452760))

(assert (not b!3452830))

(assert (not b_lambda!99197))

(assert (not d!993107))

(assert (not b!3453229))

(assert (not tb!187965))

(assert (not bm!249213))

(assert (not b_next!90317))

(assert (not b!3453228))

(assert (not b!3452961))

(assert (not b!3453209))

(assert (not d!993103))

(assert (not b!3453224))

(assert (not b!3453062))

(assert (not b!3453311))

(assert (not bm!249196))

(assert (not b!3452779))

(assert (not d!993177))

(assert (not d!993011))

(assert (not d!993067))

(assert (not b!3453205))

(assert (not d!993165))

(assert (not d!993159))

(assert (not b!3452737))

(assert (not b!3453285))

(assert b_and!242615)

(assert (not b!3453056))

(assert (not d!993179))

(assert (not b!3453207))

(assert (not b!3452894))

(assert (not d!993105))

(assert (not b_next!90321))

(assert (not d!993019))

(assert (not b!3453232))

(assert (not d!993219))

(assert (not b!3452824))

(assert (not d!993039))

(assert (not b!3452963))

(assert b_and!242643)

(assert (not b!3452723))

(assert b_and!242601)

(assert (not d!993009))

(assert (not d!993239))

(assert (not b!3452866))

(assert (not b!3453055))

(assert (not b!3453170))

(assert (not b!3452839))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!90341))

(assert (not b_next!90327))

(assert (not b_next!90343))

(assert (not b_next!90323))

(assert b_and!242599)

(assert b_and!242613)

(assert (not b_next!90317))

(assert b_and!242615)

(assert (not b_next!90321))

(assert (not b_next!90325))

(assert (not b_next!90319))

(assert b_and!242645)

(assert b_and!242647)

(assert (not b_next!90347))

(assert b_and!242603)

(assert b_and!242641)

(assert (not b_next!90345))

(assert b_and!242611)

(assert b_and!242643)

(assert b_and!242601)

(check-sat)

(pop 1)

