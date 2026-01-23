; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!331562 () Bool)

(assert start!331562)

(declare-fun b!3577594 () Bool)

(declare-fun b_free!91593 () Bool)

(declare-fun b_next!92297 () Bool)

(assert (=> b!3577594 (= b_free!91593 (not b_next!92297))))

(declare-fun tp!1094644 () Bool)

(declare-fun b_and!257779 () Bool)

(assert (=> b!3577594 (= tp!1094644 b_and!257779)))

(declare-fun b_free!91595 () Bool)

(declare-fun b_next!92299 () Bool)

(assert (=> b!3577594 (= b_free!91595 (not b_next!92299))))

(declare-fun tp!1094648 () Bool)

(declare-fun b_and!257781 () Bool)

(assert (=> b!3577594 (= tp!1094648 b_and!257781)))

(declare-fun b!3577577 () Bool)

(declare-fun b_free!91597 () Bool)

(declare-fun b_next!92301 () Bool)

(assert (=> b!3577577 (= b_free!91597 (not b_next!92301))))

(declare-fun tp!1094649 () Bool)

(declare-fun b_and!257783 () Bool)

(assert (=> b!3577577 (= tp!1094649 b_and!257783)))

(declare-fun b_free!91599 () Bool)

(declare-fun b_next!92303 () Bool)

(assert (=> b!3577577 (= b_free!91599 (not b_next!92303))))

(declare-fun tp!1094655 () Bool)

(declare-fun b_and!257785 () Bool)

(assert (=> b!3577577 (= tp!1094655 b_and!257785)))

(declare-fun b!3577582 () Bool)

(declare-fun b_free!91601 () Bool)

(declare-fun b_next!92305 () Bool)

(assert (=> b!3577582 (= b_free!91601 (not b_next!92305))))

(declare-fun tp!1094647 () Bool)

(declare-fun b_and!257787 () Bool)

(assert (=> b!3577582 (= tp!1094647 b_and!257787)))

(declare-fun b_free!91603 () Bool)

(declare-fun b_next!92307 () Bool)

(assert (=> b!3577582 (= b_free!91603 (not b_next!92307))))

(declare-fun tp!1094651 () Bool)

(declare-fun b_and!257789 () Bool)

(assert (=> b!3577582 (= tp!1094651 b_and!257789)))

(declare-fun bs!569707 () Bool)

(declare-fun b!3577620 () Bool)

(declare-fun b!3577599 () Bool)

(assert (= bs!569707 (and b!3577620 b!3577599)))

(declare-fun lambda!123641 () Int)

(declare-fun lambda!123640 () Int)

(assert (=> bs!569707 (not (= lambda!123641 lambda!123640))))

(declare-fun b!3577632 () Bool)

(declare-fun e!2213268 () Bool)

(assert (=> b!3577632 (= e!2213268 true)))

(declare-fun b!3577631 () Bool)

(declare-fun e!2213267 () Bool)

(assert (=> b!3577631 (= e!2213267 e!2213268)))

(declare-fun b!3577630 () Bool)

(declare-fun e!2213266 () Bool)

(assert (=> b!3577630 (= e!2213266 e!2213267)))

(assert (=> b!3577620 e!2213266))

(assert (= b!3577631 b!3577632))

(assert (= b!3577630 b!3577631))

(declare-datatypes ((C!20744 0))(
  ( (C!20745 (val!12420 Int)) )
))
(declare-datatypes ((Regex!10279 0))(
  ( (ElementMatch!10279 (c!620122 C!20744)) (Concat!16029 (regOne!21070 Regex!10279) (regTwo!21070 Regex!10279)) (EmptyExpr!10279) (Star!10279 (reg!10608 Regex!10279)) (EmptyLang!10279) (Union!10279 (regOne!21071 Regex!10279) (regTwo!21071 Regex!10279)) )
))
(declare-datatypes ((List!37668 0))(
  ( (Nil!37544) (Cons!37544 (h!42964 (_ BitVec 16)) (t!290027 List!37668)) )
))
(declare-datatypes ((TokenValue!5750 0))(
  ( (FloatLiteralValue!11500 (text!40695 List!37668)) (TokenValueExt!5749 (__x!23717 Int)) (Broken!28750 (value!177754 List!37668)) (Object!5873) (End!5750) (Def!5750) (Underscore!5750) (Match!5750) (Else!5750) (Error!5750) (Case!5750) (If!5750) (Extends!5750) (Abstract!5750) (Class!5750) (Val!5750) (DelimiterValue!11500 (del!5810 List!37668)) (KeywordValue!5756 (value!177755 List!37668)) (CommentValue!11500 (value!177756 List!37668)) (WhitespaceValue!11500 (value!177757 List!37668)) (IndentationValue!5750 (value!177758 List!37668)) (String!42083) (Int32!5750) (Broken!28751 (value!177759 List!37668)) (Boolean!5751) (Unit!53576) (OperatorValue!5753 (op!5810 List!37668)) (IdentifierValue!11500 (value!177760 List!37668)) (IdentifierValue!11501 (value!177761 List!37668)) (WhitespaceValue!11501 (value!177762 List!37668)) (True!11500) (False!11500) (Broken!28752 (value!177763 List!37668)) (Broken!28753 (value!177764 List!37668)) (True!11501) (RightBrace!5750) (RightBracket!5750) (Colon!5750) (Null!5750) (Comma!5750) (LeftBracket!5750) (False!11501) (LeftBrace!5750) (ImaginaryLiteralValue!5750 (text!40696 List!37668)) (StringLiteralValue!17250 (value!177765 List!37668)) (EOFValue!5750 (value!177766 List!37668)) (IdentValue!5750 (value!177767 List!37668)) (DelimiterValue!11501 (value!177768 List!37668)) (DedentValue!5750 (value!177769 List!37668)) (NewLineValue!5750 (value!177770 List!37668)) (IntegerValue!17250 (value!177771 (_ BitVec 32)) (text!40697 List!37668)) (IntegerValue!17251 (value!177772 Int) (text!40698 List!37668)) (Times!5750) (Or!5750) (Equal!5750) (Minus!5750) (Broken!28754 (value!177773 List!37668)) (And!5750) (Div!5750) (LessEqual!5750) (Mod!5750) (Concat!16030) (Not!5750) (Plus!5750) (SpaceValue!5750 (value!177774 List!37668)) (IntegerValue!17252 (value!177775 Int) (text!40699 List!37668)) (StringLiteralValue!17251 (text!40700 List!37668)) (FloatLiteralValue!11501 (text!40701 List!37668)) (BytesLiteralValue!5750 (value!177776 List!37668)) (CommentValue!11501 (value!177777 List!37668)) (StringLiteralValue!17252 (value!177778 List!37668)) (ErrorTokenValue!5750 (msg!5811 List!37668)) )
))
(declare-datatypes ((List!37669 0))(
  ( (Nil!37545) (Cons!37545 (h!42965 C!20744) (t!290028 List!37669)) )
))
(declare-datatypes ((IArray!22835 0))(
  ( (IArray!22836 (innerList!11475 List!37669)) )
))
(declare-datatypes ((Conc!11415 0))(
  ( (Node!11415 (left!29365 Conc!11415) (right!29695 Conc!11415) (csize!23060 Int) (cheight!11626 Int)) (Leaf!17786 (xs!14617 IArray!22835) (csize!23061 Int)) (Empty!11415) )
))
(declare-datatypes ((BalanceConc!22444 0))(
  ( (BalanceConc!22445 (c!620123 Conc!11415)) )
))
(declare-datatypes ((String!42084 0))(
  ( (String!42085 (value!177779 String)) )
))
(declare-datatypes ((TokenValueInjection!10928 0))(
  ( (TokenValueInjection!10929 (toValue!7792 Int) (toChars!7651 Int)) )
))
(declare-datatypes ((Rule!10840 0))(
  ( (Rule!10841 (regex!5520 Regex!10279) (tag!6184 String!42084) (isSeparator!5520 Bool) (transformation!5520 TokenValueInjection!10928)) )
))
(declare-datatypes ((List!37670 0))(
  ( (Nil!37546) (Cons!37546 (h!42966 Rule!10840) (t!290029 List!37670)) )
))
(declare-fun rules!2135 () List!37670)

(get-info :version)

(assert (= (and b!3577620 ((_ is Cons!37546) rules!2135)) b!3577630))

(declare-fun order!20401 () Int)

(declare-fun order!20403 () Int)

(declare-fun dynLambda!16151 (Int Int) Int)

(declare-fun dynLambda!16152 (Int Int) Int)

(assert (=> b!3577632 (< (dynLambda!16151 order!20401 (toValue!7792 (transformation!5520 (h!42966 rules!2135)))) (dynLambda!16152 order!20403 lambda!123641))))

(declare-fun order!20405 () Int)

(declare-fun dynLambda!16153 (Int Int) Int)

(assert (=> b!3577632 (< (dynLambda!16153 order!20405 (toChars!7651 (transformation!5520 (h!42966 rules!2135)))) (dynLambda!16152 order!20403 lambda!123641))))

(assert (=> b!3577620 true))

(declare-fun e!2213255 () Bool)

(assert (=> b!3577577 (= e!2213255 (and tp!1094649 tp!1094655))))

(declare-fun b!3577578 () Bool)

(declare-fun res!1443272 () Bool)

(declare-fun e!2213234 () Bool)

(assert (=> b!3577578 (=> (not res!1443272) (not e!2213234))))

(declare-datatypes ((LexerInterface!5109 0))(
  ( (LexerInterfaceExt!5106 (__x!23718 Int)) (Lexer!5107) )
))
(declare-fun thiss!18206 () LexerInterface!5109)

(declare-fun rulesInvariant!4506 (LexerInterface!5109 List!37670) Bool)

(assert (=> b!3577578 (= res!1443272 (rulesInvariant!4506 thiss!18206 rules!2135))))

(declare-fun b!3577579 () Bool)

(declare-fun res!1443248 () Bool)

(assert (=> b!3577579 (=> (not res!1443248) (not e!2213234))))

(declare-datatypes ((Token!10406 0))(
  ( (Token!10407 (value!177780 TokenValue!5750) (rule!8228 Rule!10840) (size!28638 Int) (originalCharacters!6234 List!37669)) )
))
(declare-datatypes ((List!37671 0))(
  ( (Nil!37547) (Cons!37547 (h!42967 Token!10406) (t!290030 List!37671)) )
))
(declare-fun tokens!494 () List!37671)

(declare-datatypes ((IArray!22837 0))(
  ( (IArray!22838 (innerList!11476 List!37671)) )
))
(declare-datatypes ((Conc!11416 0))(
  ( (Node!11416 (left!29366 Conc!11416) (right!29696 Conc!11416) (csize!23062 Int) (cheight!11627 Int)) (Leaf!17787 (xs!14618 IArray!22837) (csize!23063 Int)) (Empty!11416) )
))
(declare-datatypes ((BalanceConc!22446 0))(
  ( (BalanceConc!22447 (c!620124 Conc!11416)) )
))
(declare-fun rulesProduceEachTokenIndividually!1560 (LexerInterface!5109 List!37670 BalanceConc!22446) Bool)

(declare-fun seqFromList!4093 (List!37671) BalanceConc!22446)

(assert (=> b!3577579 (= res!1443248 (rulesProduceEachTokenIndividually!1560 thiss!18206 rules!2135 (seqFromList!4093 tokens!494)))))

(declare-fun b!3577580 () Bool)

(declare-fun res!1443262 () Bool)

(assert (=> b!3577580 (=> (not res!1443262) (not e!2213234))))

(declare-fun separatorToken!241 () Token!10406)

(declare-fun rulesProduceIndividualToken!2601 (LexerInterface!5109 List!37670 Token!10406) Bool)

(assert (=> b!3577580 (= res!1443262 (rulesProduceIndividualToken!2601 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3577581 () Bool)

(declare-fun e!2213253 () Bool)

(declare-fun size!28639 (List!37671) Int)

(assert (=> b!3577581 (= e!2213253 (< (size!28639 (t!290030 tokens!494)) (size!28639 tokens!494)))))

(declare-fun e!2213248 () Bool)

(assert (=> b!3577582 (= e!2213248 (and tp!1094647 tp!1094651))))

(declare-fun b!3577583 () Bool)

(declare-fun e!2213245 () Bool)

(declare-fun e!2213250 () Bool)

(assert (=> b!3577583 (= e!2213245 e!2213250)))

(declare-fun res!1443245 () Bool)

(assert (=> b!3577583 (=> (not res!1443245) (not e!2213250))))

(declare-fun lt!1227609 () Rule!10840)

(declare-fun lt!1227587 () List!37669)

(declare-fun matchR!4863 (Regex!10279 List!37669) Bool)

(assert (=> b!3577583 (= res!1443245 (matchR!4863 (regex!5520 lt!1227609) lt!1227587))))

(declare-datatypes ((Option!7711 0))(
  ( (None!7710) (Some!7710 (v!37340 Rule!10840)) )
))
(declare-fun lt!1227573 () Option!7711)

(declare-fun get!12089 (Option!7711) Rule!10840)

(assert (=> b!3577583 (= lt!1227609 (get!12089 lt!1227573))))

(declare-fun b!3577584 () Bool)

(declare-fun e!2213243 () Bool)

(declare-datatypes ((tuple2!37476 0))(
  ( (tuple2!37477 (_1!21872 BalanceConc!22446) (_2!21872 BalanceConc!22444)) )
))
(declare-fun lt!1227582 () tuple2!37476)

(declare-fun isEmpty!22095 (BalanceConc!22444) Bool)

(assert (=> b!3577584 (= e!2213243 (not (isEmpty!22095 (_2!21872 lt!1227582))))))

(declare-fun b!3577585 () Bool)

(declare-fun e!2213242 () Bool)

(declare-fun e!2213226 () Bool)

(assert (=> b!3577585 (= e!2213242 e!2213226)))

(declare-fun res!1443243 () Bool)

(assert (=> b!3577585 (=> res!1443243 e!2213226)))

(declare-fun lt!1227593 () List!37669)

(declare-fun lt!1227568 () List!37669)

(declare-fun ++!9343 (List!37669 List!37669) List!37669)

(declare-fun printWithSeparatorTokenList!396 (LexerInterface!5109 List!37671 Token!10406) List!37669)

(assert (=> b!3577585 (= res!1443243 (not (= lt!1227593 (++!9343 (++!9343 lt!1227568 lt!1227587) (printWithSeparatorTokenList!396 thiss!18206 (t!290030 (t!290030 tokens!494)) separatorToken!241)))))))

(declare-fun list!13781 (BalanceConc!22444) List!37669)

(declare-fun charsOf!3534 (Token!10406) BalanceConc!22444)

(assert (=> b!3577585 (= lt!1227568 (list!13781 (charsOf!3534 (h!42967 (t!290030 tokens!494)))))))

(declare-fun lt!1227603 () List!37669)

(assert (=> b!3577585 (= lt!1227603 (++!9343 lt!1227587 lt!1227593))))

(assert (=> b!3577585 (= lt!1227587 (list!13781 (charsOf!3534 separatorToken!241)))))

(assert (=> b!3577585 (= lt!1227593 (printWithSeparatorTokenList!396 thiss!18206 (t!290030 tokens!494) separatorToken!241))))

(declare-fun lt!1227576 () List!37669)

(assert (=> b!3577585 (= lt!1227576 (printWithSeparatorTokenList!396 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3577586 () Bool)

(declare-fun e!2213230 () Bool)

(declare-fun lt!1227586 () Rule!10840)

(assert (=> b!3577586 (= e!2213230 (= (rule!8228 (h!42967 (t!290030 tokens!494))) lt!1227586))))

(declare-fun b!3577587 () Bool)

(declare-fun res!1443263 () Bool)

(declare-fun e!2213241 () Bool)

(assert (=> b!3577587 (=> (not res!1443263) (not e!2213241))))

(declare-fun lt!1227571 () tuple2!37476)

(declare-fun apply!9046 (BalanceConc!22446 Int) Token!10406)

(assert (=> b!3577587 (= res!1443263 (= (apply!9046 (_1!21872 lt!1227571) 0) separatorToken!241))))

(declare-fun b!3577588 () Bool)

(assert (=> b!3577588 (= e!2213250 (= (rule!8228 separatorToken!241) lt!1227609))))

(declare-fun b!3577589 () Bool)

(declare-datatypes ((Unit!53577 0))(
  ( (Unit!53578) )
))
(declare-fun e!2213239 () Unit!53577)

(declare-fun Unit!53579 () Unit!53577)

(assert (=> b!3577589 (= e!2213239 Unit!53579)))

(declare-fun lt!1227610 () Unit!53577)

(declare-fun lt!1227595 () C!20744)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!578 (Regex!10279 List!37669 C!20744) Unit!53577)

(assert (=> b!3577589 (= lt!1227610 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!578 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) lt!1227568 lt!1227595))))

(declare-fun res!1443267 () Bool)

(assert (=> b!3577589 (= res!1443267 (not (matchR!4863 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) lt!1227568)))))

(declare-fun e!2213251 () Bool)

(assert (=> b!3577589 (=> (not res!1443267) (not e!2213251))))

(assert (=> b!3577589 e!2213251))

(declare-fun b!3577590 () Bool)

(declare-fun e!2213235 () Bool)

(assert (=> b!3577590 (= e!2213235 e!2213242)))

(declare-fun res!1443249 () Bool)

(assert (=> b!3577590 (=> res!1443249 e!2213242)))

(assert (=> b!3577590 (= res!1443249 (or (isSeparator!5520 (rule!8228 (h!42967 tokens!494))) (isSeparator!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))))

(declare-fun lt!1227615 () Unit!53577)

(declare-fun forallContained!1467 (List!37671 Int Token!10406) Unit!53577)

(assert (=> b!3577590 (= lt!1227615 (forallContained!1467 tokens!494 lambda!123640 (h!42967 (t!290030 tokens!494))))))

(declare-fun lt!1227574 () Unit!53577)

(assert (=> b!3577590 (= lt!1227574 (forallContained!1467 tokens!494 lambda!123640 (h!42967 tokens!494)))))

(declare-fun b!3577591 () Bool)

(declare-fun res!1443247 () Bool)

(assert (=> b!3577591 (=> (not res!1443247) (not e!2213234))))

(assert (=> b!3577591 (= res!1443247 (isSeparator!5520 (rule!8228 separatorToken!241)))))

(declare-fun tp!1094653 () Bool)

(declare-fun e!2213231 () Bool)

(declare-fun b!3577592 () Bool)

(declare-fun inv!50822 (String!42084) Bool)

(declare-fun inv!50825 (TokenValueInjection!10928) Bool)

(assert (=> b!3577592 (= e!2213231 (and tp!1094653 (inv!50822 (tag!6184 (rule!8228 (h!42967 tokens!494)))) (inv!50825 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) e!2213255))))

(declare-fun b!3577593 () Bool)

(declare-fun res!1443260 () Bool)

(assert (=> b!3577593 (=> (not res!1443260) (not e!2213234))))

(declare-fun isEmpty!22096 (List!37670) Bool)

(assert (=> b!3577593 (= res!1443260 (not (isEmpty!22096 rules!2135)))))

(declare-fun e!2213249 () Bool)

(assert (=> b!3577594 (= e!2213249 (and tp!1094644 tp!1094648))))

(declare-fun res!1443271 () Bool)

(assert (=> start!331562 (=> (not res!1443271) (not e!2213234))))

(assert (=> start!331562 (= res!1443271 ((_ is Lexer!5107) thiss!18206))))

(assert (=> start!331562 e!2213234))

(assert (=> start!331562 true))

(declare-fun e!2213259 () Bool)

(assert (=> start!331562 e!2213259))

(declare-fun e!2213229 () Bool)

(assert (=> start!331562 e!2213229))

(declare-fun e!2213252 () Bool)

(declare-fun inv!50826 (Token!10406) Bool)

(assert (=> start!331562 (and (inv!50826 separatorToken!241) e!2213252)))

(declare-fun b!3577595 () Bool)

(assert (=> b!3577595 (= e!2213251 false)))

(declare-fun b!3577596 () Bool)

(declare-fun res!1443258 () Bool)

(assert (=> b!3577596 (=> res!1443258 e!2213253)))

(declare-fun forall!8130 (List!37671 Int) Bool)

(assert (=> b!3577596 (= res!1443258 (not (forall!8130 (t!290030 tokens!494) lambda!123640)))))

(declare-fun b!3577597 () Bool)

(declare-fun e!2213236 () Unit!53577)

(declare-fun Unit!53580 () Unit!53577)

(assert (=> b!3577597 (= e!2213236 Unit!53580)))

(declare-fun tp!1094646 () Bool)

(declare-fun b!3577598 () Bool)

(declare-fun e!2213227 () Bool)

(declare-fun inv!21 (TokenValue!5750) Bool)

(assert (=> b!3577598 (= e!2213252 (and (inv!21 (value!177780 separatorToken!241)) e!2213227 tp!1094646))))

(declare-fun res!1443257 () Bool)

(assert (=> b!3577599 (=> (not res!1443257) (not e!2213234))))

(assert (=> b!3577599 (= res!1443257 (forall!8130 tokens!494 lambda!123640))))

(declare-fun b!3577600 () Bool)

(declare-fun e!2213232 () Bool)

(assert (=> b!3577600 (= e!2213232 false)))

(declare-fun tp!1094656 () Bool)

(declare-fun e!2213257 () Bool)

(declare-fun b!3577601 () Bool)

(assert (=> b!3577601 (= e!2213257 (and (inv!21 (value!177780 (h!42967 tokens!494))) e!2213231 tp!1094656))))

(declare-fun tp!1094645 () Bool)

(declare-fun b!3577602 () Bool)

(assert (=> b!3577602 (= e!2213227 (and tp!1094645 (inv!50822 (tag!6184 (rule!8228 separatorToken!241))) (inv!50825 (transformation!5520 (rule!8228 separatorToken!241))) e!2213249))))

(declare-fun b!3577603 () Bool)

(declare-fun e!2213254 () Bool)

(declare-fun lt!1227611 () Rule!10840)

(assert (=> b!3577603 (= e!2213254 (= (rule!8228 (h!42967 tokens!494)) lt!1227611))))

(declare-fun b!3577604 () Bool)

(declare-fun e!2213224 () Bool)

(assert (=> b!3577604 (= e!2213224 e!2213254)))

(declare-fun res!1443246 () Bool)

(assert (=> b!3577604 (=> (not res!1443246) (not e!2213254))))

(declare-fun lt!1227614 () List!37669)

(assert (=> b!3577604 (= res!1443246 (matchR!4863 (regex!5520 lt!1227611) lt!1227614))))

(declare-fun lt!1227599 () Option!7711)

(assert (=> b!3577604 (= lt!1227611 (get!12089 lt!1227599))))

(declare-fun b!3577605 () Bool)

(declare-fun tp!1094654 () Bool)

(assert (=> b!3577605 (= e!2213229 (and (inv!50826 (h!42967 tokens!494)) e!2213257 tp!1094654))))

(declare-fun b!3577606 () Bool)

(declare-fun Unit!53581 () Unit!53577)

(assert (=> b!3577606 (= e!2213239 Unit!53581)))

(declare-fun b!3577607 () Bool)

(declare-fun e!2213240 () Bool)

(assert (=> b!3577607 (= e!2213240 e!2213235)))

(declare-fun res!1443264 () Bool)

(assert (=> b!3577607 (=> res!1443264 e!2213235)))

(declare-fun lt!1227596 () BalanceConc!22444)

(declare-fun isEmpty!22097 (BalanceConc!22446) Bool)

(declare-fun lex!2435 (LexerInterface!5109 List!37670 BalanceConc!22444) tuple2!37476)

(assert (=> b!3577607 (= res!1443264 (isEmpty!22097 (_1!21872 (lex!2435 thiss!18206 rules!2135 lt!1227596))))))

(declare-fun seqFromList!4094 (List!37669) BalanceConc!22444)

(assert (=> b!3577607 (= lt!1227596 (seqFromList!4094 lt!1227614))))

(declare-fun b!3577608 () Bool)

(declare-fun Unit!53582 () Unit!53577)

(assert (=> b!3577608 (= e!2213236 Unit!53582)))

(declare-fun lt!1227592 () C!20744)

(declare-fun lt!1227616 () Unit!53577)

(assert (=> b!3577608 (= lt!1227616 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!578 (regex!5520 (rule!8228 separatorToken!241)) lt!1227587 lt!1227592))))

(declare-fun res!1443254 () Bool)

(assert (=> b!3577608 (= res!1443254 (not (matchR!4863 (regex!5520 (rule!8228 separatorToken!241)) lt!1227587)))))

(assert (=> b!3577608 (=> (not res!1443254) (not e!2213232))))

(assert (=> b!3577608 e!2213232))

(declare-fun b!3577609 () Bool)

(declare-fun res!1443250 () Bool)

(assert (=> b!3577609 (=> res!1443250 e!2213243)))

(assert (=> b!3577609 (= res!1443250 (not (= (apply!9046 (_1!21872 lt!1227582) 0) (h!42967 (t!290030 tokens!494)))))))

(declare-fun b!3577610 () Bool)

(assert (=> b!3577610 (= e!2213241 (isEmpty!22095 (_2!21872 lt!1227571)))))

(declare-fun b!3577611 () Bool)

(declare-fun res!1443266 () Bool)

(assert (=> b!3577611 (=> (not res!1443266) (not e!2213234))))

(assert (=> b!3577611 (= res!1443266 (and (not ((_ is Nil!37547) tokens!494)) (not ((_ is Nil!37547) (t!290030 tokens!494)))))))

(declare-fun b!3577612 () Bool)

(declare-fun e!2213228 () Bool)

(assert (=> b!3577612 (= e!2213234 (not e!2213228))))

(declare-fun res!1443259 () Bool)

(assert (=> b!3577612 (=> res!1443259 e!2213228)))

(declare-fun lt!1227584 () List!37669)

(declare-fun lt!1227569 () List!37669)

(assert (=> b!3577612 (= res!1443259 (not (= lt!1227584 lt!1227569)))))

(declare-fun printList!1657 (LexerInterface!5109 List!37671) List!37669)

(assert (=> b!3577612 (= lt!1227569 (printList!1657 thiss!18206 (Cons!37547 (h!42967 tokens!494) Nil!37547)))))

(declare-fun lt!1227607 () BalanceConc!22444)

(assert (=> b!3577612 (= lt!1227584 (list!13781 lt!1227607))))

(declare-fun lt!1227608 () BalanceConc!22446)

(declare-fun printTailRec!1604 (LexerInterface!5109 BalanceConc!22446 Int BalanceConc!22444) BalanceConc!22444)

(assert (=> b!3577612 (= lt!1227607 (printTailRec!1604 thiss!18206 lt!1227608 0 (BalanceConc!22445 Empty!11415)))))

(declare-fun print!2174 (LexerInterface!5109 BalanceConc!22446) BalanceConc!22444)

(assert (=> b!3577612 (= lt!1227607 (print!2174 thiss!18206 lt!1227608))))

(declare-fun singletonSeq!2616 (Token!10406) BalanceConc!22446)

(assert (=> b!3577612 (= lt!1227608 (singletonSeq!2616 (h!42967 tokens!494)))))

(declare-fun b!3577613 () Bool)

(declare-fun e!2213225 () Bool)

(declare-fun e!2213244 () Bool)

(assert (=> b!3577613 (= e!2213225 e!2213244)))

(declare-fun res!1443255 () Bool)

(assert (=> b!3577613 (=> res!1443255 e!2213244)))

(declare-fun lt!1227598 () List!37669)

(assert (=> b!3577613 (= res!1443255 (not (= lt!1227576 lt!1227598)))))

(declare-fun lt!1227585 () List!37669)

(assert (=> b!3577613 (= lt!1227585 lt!1227598)))

(assert (=> b!3577613 (= lt!1227598 (++!9343 lt!1227614 lt!1227603))))

(declare-fun lt!1227591 () Unit!53577)

(declare-fun lemmaConcatAssociativity!2062 (List!37669 List!37669 List!37669) Unit!53577)

(assert (=> b!3577613 (= lt!1227591 (lemmaConcatAssociativity!2062 lt!1227614 lt!1227587 lt!1227593))))

(declare-fun b!3577614 () Bool)

(declare-fun e!2213256 () Bool)

(assert (=> b!3577614 (= e!2213256 e!2213230)))

(declare-fun res!1443268 () Bool)

(assert (=> b!3577614 (=> (not res!1443268) (not e!2213230))))

(assert (=> b!3577614 (= res!1443268 (matchR!4863 (regex!5520 lt!1227586) lt!1227568))))

(declare-fun lt!1227606 () Option!7711)

(assert (=> b!3577614 (= lt!1227586 (get!12089 lt!1227606))))

(declare-fun b!3577615 () Bool)

(assert (=> b!3577615 (= e!2213226 e!2213225)))

(declare-fun res!1443251 () Bool)

(assert (=> b!3577615 (=> res!1443251 e!2213225)))

(assert (=> b!3577615 (= res!1443251 (not (= lt!1227576 lt!1227585)))))

(assert (=> b!3577615 (= lt!1227585 (++!9343 (++!9343 lt!1227614 lt!1227587) lt!1227593))))

(declare-fun b!3577616 () Bool)

(declare-fun e!2213258 () Bool)

(declare-fun tp!1094652 () Bool)

(assert (=> b!3577616 (= e!2213258 (and tp!1094652 (inv!50822 (tag!6184 (h!42966 rules!2135))) (inv!50825 (transformation!5520 (h!42966 rules!2135))) e!2213248))))

(declare-fun b!3577617 () Bool)

(declare-fun res!1443269 () Bool)

(assert (=> b!3577617 (=> (not res!1443269) (not e!2213234))))

(declare-fun sepAndNonSepRulesDisjointChars!1714 (List!37670 List!37670) Bool)

(assert (=> b!3577617 (= res!1443269 (sepAndNonSepRulesDisjointChars!1714 rules!2135 rules!2135))))

(declare-fun b!3577618 () Bool)

(declare-fun res!1443244 () Bool)

(assert (=> b!3577618 (=> res!1443244 e!2213240)))

(assert (=> b!3577618 (= res!1443244 (not (rulesProduceIndividualToken!2601 thiss!18206 rules!2135 (h!42967 tokens!494))))))

(declare-fun b!3577619 () Bool)

(declare-fun tp!1094650 () Bool)

(assert (=> b!3577619 (= e!2213259 (and e!2213258 tp!1094650))))

(assert (=> b!3577620 (= e!2213244 e!2213253)))

(declare-fun res!1443261 () Bool)

(assert (=> b!3577620 (=> res!1443261 e!2213253)))

(assert (=> b!3577620 (= res!1443261 (not (rulesProduceEachTokenIndividually!1560 thiss!18206 rules!2135 (seqFromList!4093 (t!290030 tokens!494)))))))

(declare-datatypes ((tuple2!37478 0))(
  ( (tuple2!37479 (_1!21873 Token!10406) (_2!21873 List!37669)) )
))
(declare-datatypes ((Option!7712 0))(
  ( (None!7711) (Some!7711 (v!37341 tuple2!37478)) )
))
(declare-fun maxPrefix!2649 (LexerInterface!5109 List!37670 List!37669) Option!7712)

(assert (=> b!3577620 (= (maxPrefix!2649 thiss!18206 rules!2135 lt!1227603) (Some!7711 (tuple2!37479 separatorToken!241 lt!1227593)))))

(declare-fun lt!1227613 () Unit!53577)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!276 (LexerInterface!5109 List!37670 Token!10406 Rule!10840 List!37669 Rule!10840) Unit!53577)

(assert (=> b!3577620 (= lt!1227613 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!276 thiss!18206 rules!2135 separatorToken!241 (rule!8228 separatorToken!241) lt!1227593 (rule!8228 (h!42967 (t!290030 tokens!494)))))))

(declare-fun lt!1227580 () List!37669)

(declare-fun contains!7118 (List!37669 C!20744) Bool)

(assert (=> b!3577620 (not (contains!7118 lt!1227580 lt!1227595))))

(declare-fun lt!1227572 () Unit!53577)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!202 (LexerInterface!5109 List!37670 List!37670 Rule!10840 Rule!10840 C!20744) Unit!53577)

(assert (=> b!3577620 (= lt!1227572 (lemmaSepRuleNotContainsCharContainedInANonSepRule!202 thiss!18206 rules!2135 rules!2135 (rule!8228 (h!42967 (t!290030 tokens!494))) (rule!8228 separatorToken!241) lt!1227595))))

(declare-fun lt!1227583 () Unit!53577)

(assert (=> b!3577620 (= lt!1227583 e!2213239)))

(declare-fun c!620121 () Bool)

(declare-fun usedCharacters!754 (Regex!10279) List!37669)

(assert (=> b!3577620 (= c!620121 (not (contains!7118 (usedCharacters!754 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) lt!1227595)))))

(declare-fun head!7455 (List!37669) C!20744)

(assert (=> b!3577620 (= lt!1227595 (head!7455 lt!1227568))))

(declare-fun maxPrefixOneRule!1816 (LexerInterface!5109 Rule!10840 List!37669) Option!7712)

(declare-fun apply!9047 (TokenValueInjection!10928 BalanceConc!22444) TokenValue!5750)

(declare-fun size!28640 (List!37669) Int)

(assert (=> b!3577620 (= (maxPrefixOneRule!1816 thiss!18206 (rule!8228 (h!42967 (t!290030 tokens!494))) lt!1227568) (Some!7711 (tuple2!37479 (Token!10407 (apply!9047 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) (seqFromList!4094 lt!1227568)) (rule!8228 (h!42967 (t!290030 tokens!494))) (size!28640 lt!1227568) lt!1227568) Nil!37545)))))

(declare-fun lt!1227581 () Unit!53577)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!909 (LexerInterface!5109 List!37670 List!37669 List!37669 List!37669 Rule!10840) Unit!53577)

(assert (=> b!3577620 (= lt!1227581 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!909 thiss!18206 rules!2135 lt!1227568 lt!1227568 Nil!37545 (rule!8228 (h!42967 (t!290030 tokens!494)))))))

(assert (=> b!3577620 e!2213256))

(declare-fun res!1443242 () Bool)

(assert (=> b!3577620 (=> (not res!1443242) (not e!2213256))))

(declare-fun isDefined!5948 (Option!7711) Bool)

(assert (=> b!3577620 (= res!1443242 (isDefined!5948 lt!1227606))))

(declare-fun getRuleFromTag!1163 (LexerInterface!5109 List!37670 String!42084) Option!7711)

(assert (=> b!3577620 (= lt!1227606 (getRuleFromTag!1163 thiss!18206 rules!2135 (tag!6184 (rule!8228 (h!42967 (t!290030 tokens!494))))))))

(declare-fun lt!1227590 () Unit!53577)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1163 (LexerInterface!5109 List!37670 List!37669 Token!10406) Unit!53577)

(assert (=> b!3577620 (= lt!1227590 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1163 thiss!18206 rules!2135 lt!1227568 (h!42967 (t!290030 tokens!494))))))

(declare-fun lt!1227570 () Bool)

(assert (=> b!3577620 lt!1227570))

(declare-fun lt!1227597 () Unit!53577)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1098 (LexerInterface!5109 List!37670 List!37671 Token!10406) Unit!53577)

(assert (=> b!3577620 (= lt!1227597 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1098 thiss!18206 rules!2135 tokens!494 (h!42967 (t!290030 tokens!494))))))

(assert (=> b!3577620 (= (maxPrefix!2649 thiss!18206 rules!2135 lt!1227598) (Some!7711 (tuple2!37479 (h!42967 tokens!494) lt!1227603)))))

(declare-fun lt!1227578 () Unit!53577)

(assert (=> b!3577620 (= lt!1227578 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!276 thiss!18206 rules!2135 (h!42967 tokens!494) (rule!8228 (h!42967 tokens!494)) lt!1227603 (rule!8228 separatorToken!241)))))

(assert (=> b!3577620 (not (contains!7118 (usedCharacters!754 (regex!5520 (rule!8228 (h!42967 tokens!494)))) lt!1227592))))

(declare-fun lt!1227601 () Unit!53577)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!320 (LexerInterface!5109 List!37670 List!37670 Rule!10840 Rule!10840 C!20744) Unit!53577)

(assert (=> b!3577620 (= lt!1227601 (lemmaNonSepRuleNotContainsCharContainedInASepRule!320 thiss!18206 rules!2135 rules!2135 (rule!8228 (h!42967 tokens!494)) (rule!8228 separatorToken!241) lt!1227592))))

(declare-fun lt!1227579 () Unit!53577)

(assert (=> b!3577620 (= lt!1227579 (forallContained!1467 tokens!494 lambda!123641 (h!42967 (t!290030 tokens!494))))))

(declare-fun lt!1227604 () Bool)

(assert (=> b!3577620 (= lt!1227570 (not lt!1227604))))

(assert (=> b!3577620 (= lt!1227570 (rulesProduceIndividualToken!2601 thiss!18206 rules!2135 (h!42967 (t!290030 tokens!494))))))

(assert (=> b!3577620 (= lt!1227604 e!2213243)))

(declare-fun res!1443253 () Bool)

(assert (=> b!3577620 (=> res!1443253 e!2213243)))

(declare-fun size!28641 (BalanceConc!22446) Int)

(assert (=> b!3577620 (= res!1443253 (not (= (size!28641 (_1!21872 lt!1227582)) 1)))))

(declare-fun lt!1227588 () BalanceConc!22444)

(assert (=> b!3577620 (= lt!1227582 (lex!2435 thiss!18206 rules!2135 lt!1227588))))

(declare-fun lt!1227577 () BalanceConc!22446)

(assert (=> b!3577620 (= lt!1227588 (printTailRec!1604 thiss!18206 lt!1227577 0 (BalanceConc!22445 Empty!11415)))))

(assert (=> b!3577620 (= lt!1227588 (print!2174 thiss!18206 lt!1227577))))

(assert (=> b!3577620 (= lt!1227577 (singletonSeq!2616 (h!42967 (t!290030 tokens!494))))))

(assert (=> b!3577620 e!2213241))

(declare-fun res!1443265 () Bool)

(assert (=> b!3577620 (=> (not res!1443265) (not e!2213241))))

(assert (=> b!3577620 (= res!1443265 (= (size!28641 (_1!21872 lt!1227571)) 1))))

(declare-fun lt!1227600 () BalanceConc!22444)

(assert (=> b!3577620 (= lt!1227571 (lex!2435 thiss!18206 rules!2135 lt!1227600))))

(declare-fun lt!1227605 () BalanceConc!22446)

(assert (=> b!3577620 (= lt!1227600 (printTailRec!1604 thiss!18206 lt!1227605 0 (BalanceConc!22445 Empty!11415)))))

(assert (=> b!3577620 (= lt!1227600 (print!2174 thiss!18206 lt!1227605))))

(assert (=> b!3577620 (= lt!1227605 (singletonSeq!2616 separatorToken!241))))

(declare-fun lt!1227612 () Unit!53577)

(assert (=> b!3577620 (= lt!1227612 e!2213236)))

(declare-fun c!620120 () Bool)

(assert (=> b!3577620 (= c!620120 (not (contains!7118 lt!1227580 lt!1227592)))))

(assert (=> b!3577620 (= lt!1227592 (head!7455 lt!1227587))))

(assert (=> b!3577620 (= lt!1227580 (usedCharacters!754 (regex!5520 (rule!8228 separatorToken!241))))))

(assert (=> b!3577620 e!2213245))

(declare-fun res!1443256 () Bool)

(assert (=> b!3577620 (=> (not res!1443256) (not e!2213245))))

(assert (=> b!3577620 (= res!1443256 (isDefined!5948 lt!1227573))))

(assert (=> b!3577620 (= lt!1227573 (getRuleFromTag!1163 thiss!18206 rules!2135 (tag!6184 (rule!8228 separatorToken!241))))))

(declare-fun lt!1227602 () Unit!53577)

(assert (=> b!3577620 (= lt!1227602 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1163 thiss!18206 rules!2135 lt!1227587 separatorToken!241))))

(assert (=> b!3577620 (= (maxPrefixOneRule!1816 thiss!18206 (rule!8228 (h!42967 tokens!494)) lt!1227614) (Some!7711 (tuple2!37479 (Token!10407 (apply!9047 (transformation!5520 (rule!8228 (h!42967 tokens!494))) lt!1227596) (rule!8228 (h!42967 tokens!494)) (size!28640 lt!1227614) lt!1227614) Nil!37545)))))

(declare-fun lt!1227589 () Unit!53577)

(assert (=> b!3577620 (= lt!1227589 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!909 thiss!18206 rules!2135 lt!1227614 lt!1227614 Nil!37545 (rule!8228 (h!42967 tokens!494))))))

(assert (=> b!3577620 e!2213224))

(declare-fun res!1443252 () Bool)

(assert (=> b!3577620 (=> (not res!1443252) (not e!2213224))))

(assert (=> b!3577620 (= res!1443252 (isDefined!5948 lt!1227599))))

(assert (=> b!3577620 (= lt!1227599 (getRuleFromTag!1163 thiss!18206 rules!2135 (tag!6184 (rule!8228 (h!42967 tokens!494)))))))

(declare-fun lt!1227594 () Unit!53577)

(assert (=> b!3577620 (= lt!1227594 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1163 thiss!18206 rules!2135 lt!1227614 (h!42967 tokens!494)))))

(declare-fun lt!1227575 () Unit!53577)

(assert (=> b!3577620 (= lt!1227575 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1098 thiss!18206 rules!2135 tokens!494 (h!42967 tokens!494)))))

(declare-fun b!3577621 () Bool)

(assert (=> b!3577621 (= e!2213228 e!2213240)))

(declare-fun res!1443270 () Bool)

(assert (=> b!3577621 (=> res!1443270 e!2213240)))

(assert (=> b!3577621 (= res!1443270 (or (not (= lt!1227569 lt!1227614)) (not (= lt!1227584 lt!1227614))))))

(assert (=> b!3577621 (= lt!1227614 (list!13781 (charsOf!3534 (h!42967 tokens!494))))))

(assert (= (and start!331562 res!1443271) b!3577593))

(assert (= (and b!3577593 res!1443260) b!3577578))

(assert (= (and b!3577578 res!1443272) b!3577579))

(assert (= (and b!3577579 res!1443248) b!3577580))

(assert (= (and b!3577580 res!1443262) b!3577591))

(assert (= (and b!3577591 res!1443247) b!3577599))

(assert (= (and b!3577599 res!1443257) b!3577617))

(assert (= (and b!3577617 res!1443269) b!3577611))

(assert (= (and b!3577611 res!1443266) b!3577612))

(assert (= (and b!3577612 (not res!1443259)) b!3577621))

(assert (= (and b!3577621 (not res!1443270)) b!3577618))

(assert (= (and b!3577618 (not res!1443244)) b!3577607))

(assert (= (and b!3577607 (not res!1443264)) b!3577590))

(assert (= (and b!3577590 (not res!1443249)) b!3577585))

(assert (= (and b!3577585 (not res!1443243)) b!3577615))

(assert (= (and b!3577615 (not res!1443251)) b!3577613))

(assert (= (and b!3577613 (not res!1443255)) b!3577620))

(assert (= (and b!3577620 res!1443252) b!3577604))

(assert (= (and b!3577604 res!1443246) b!3577603))

(assert (= (and b!3577620 res!1443256) b!3577583))

(assert (= (and b!3577583 res!1443245) b!3577588))

(assert (= (and b!3577620 c!620120) b!3577608))

(assert (= (and b!3577620 (not c!620120)) b!3577597))

(assert (= (and b!3577608 res!1443254) b!3577600))

(assert (= (and b!3577620 res!1443265) b!3577587))

(assert (= (and b!3577587 res!1443263) b!3577610))

(assert (= (and b!3577620 (not res!1443253)) b!3577609))

(assert (= (and b!3577609 (not res!1443250)) b!3577584))

(assert (= (and b!3577620 res!1443242) b!3577614))

(assert (= (and b!3577614 res!1443268) b!3577586))

(assert (= (and b!3577620 c!620121) b!3577589))

(assert (= (and b!3577620 (not c!620121)) b!3577606))

(assert (= (and b!3577589 res!1443267) b!3577595))

(assert (= (and b!3577620 (not res!1443261)) b!3577596))

(assert (= (and b!3577596 (not res!1443258)) b!3577581))

(assert (= b!3577616 b!3577582))

(assert (= b!3577619 b!3577616))

(assert (= (and start!331562 ((_ is Cons!37546) rules!2135)) b!3577619))

(assert (= b!3577592 b!3577577))

(assert (= b!3577601 b!3577592))

(assert (= b!3577605 b!3577601))

(assert (= (and start!331562 ((_ is Cons!37547) tokens!494)) b!3577605))

(assert (= b!3577602 b!3577594))

(assert (= b!3577598 b!3577602))

(assert (= start!331562 b!3577598))

(declare-fun m!4071001 () Bool)

(assert (=> b!3577618 m!4071001))

(declare-fun m!4071003 () Bool)

(assert (=> b!3577602 m!4071003))

(declare-fun m!4071005 () Bool)

(assert (=> b!3577602 m!4071005))

(declare-fun m!4071007 () Bool)

(assert (=> b!3577608 m!4071007))

(declare-fun m!4071009 () Bool)

(assert (=> b!3577608 m!4071009))

(declare-fun m!4071011 () Bool)

(assert (=> b!3577605 m!4071011))

(declare-fun m!4071013 () Bool)

(assert (=> b!3577589 m!4071013))

(declare-fun m!4071015 () Bool)

(assert (=> b!3577589 m!4071015))

(declare-fun m!4071017 () Bool)

(assert (=> b!3577610 m!4071017))

(declare-fun m!4071019 () Bool)

(assert (=> b!3577601 m!4071019))

(declare-fun m!4071021 () Bool)

(assert (=> b!3577613 m!4071021))

(declare-fun m!4071023 () Bool)

(assert (=> b!3577613 m!4071023))

(declare-fun m!4071025 () Bool)

(assert (=> b!3577604 m!4071025))

(declare-fun m!4071027 () Bool)

(assert (=> b!3577604 m!4071027))

(declare-fun m!4071029 () Bool)

(assert (=> b!3577616 m!4071029))

(declare-fun m!4071031 () Bool)

(assert (=> b!3577616 m!4071031))

(declare-fun m!4071033 () Bool)

(assert (=> b!3577593 m!4071033))

(declare-fun m!4071035 () Bool)

(assert (=> b!3577617 m!4071035))

(declare-fun m!4071037 () Bool)

(assert (=> start!331562 m!4071037))

(declare-fun m!4071039 () Bool)

(assert (=> b!3577578 m!4071039))

(declare-fun m!4071041 () Bool)

(assert (=> b!3577615 m!4071041))

(assert (=> b!3577615 m!4071041))

(declare-fun m!4071043 () Bool)

(assert (=> b!3577615 m!4071043))

(declare-fun m!4071045 () Bool)

(assert (=> b!3577612 m!4071045))

(declare-fun m!4071047 () Bool)

(assert (=> b!3577612 m!4071047))

(declare-fun m!4071049 () Bool)

(assert (=> b!3577612 m!4071049))

(declare-fun m!4071051 () Bool)

(assert (=> b!3577612 m!4071051))

(declare-fun m!4071053 () Bool)

(assert (=> b!3577612 m!4071053))

(declare-fun m!4071055 () Bool)

(assert (=> b!3577584 m!4071055))

(declare-fun m!4071057 () Bool)

(assert (=> b!3577598 m!4071057))

(declare-fun m!4071059 () Bool)

(assert (=> b!3577607 m!4071059))

(declare-fun m!4071061 () Bool)

(assert (=> b!3577607 m!4071061))

(declare-fun m!4071063 () Bool)

(assert (=> b!3577607 m!4071063))

(declare-fun m!4071065 () Bool)

(assert (=> b!3577579 m!4071065))

(assert (=> b!3577579 m!4071065))

(declare-fun m!4071067 () Bool)

(assert (=> b!3577579 m!4071067))

(declare-fun m!4071069 () Bool)

(assert (=> b!3577614 m!4071069))

(declare-fun m!4071071 () Bool)

(assert (=> b!3577614 m!4071071))

(declare-fun m!4071073 () Bool)

(assert (=> b!3577596 m!4071073))

(declare-fun m!4071075 () Bool)

(assert (=> b!3577592 m!4071075))

(declare-fun m!4071077 () Bool)

(assert (=> b!3577592 m!4071077))

(declare-fun m!4071079 () Bool)

(assert (=> b!3577599 m!4071079))

(declare-fun m!4071081 () Bool)

(assert (=> b!3577620 m!4071081))

(declare-fun m!4071083 () Bool)

(assert (=> b!3577620 m!4071083))

(declare-fun m!4071085 () Bool)

(assert (=> b!3577620 m!4071085))

(declare-fun m!4071087 () Bool)

(assert (=> b!3577620 m!4071087))

(declare-fun m!4071089 () Bool)

(assert (=> b!3577620 m!4071089))

(declare-fun m!4071091 () Bool)

(assert (=> b!3577620 m!4071091))

(declare-fun m!4071093 () Bool)

(assert (=> b!3577620 m!4071093))

(declare-fun m!4071095 () Bool)

(assert (=> b!3577620 m!4071095))

(declare-fun m!4071097 () Bool)

(assert (=> b!3577620 m!4071097))

(declare-fun m!4071099 () Bool)

(assert (=> b!3577620 m!4071099))

(declare-fun m!4071101 () Bool)

(assert (=> b!3577620 m!4071101))

(declare-fun m!4071103 () Bool)

(assert (=> b!3577620 m!4071103))

(declare-fun m!4071105 () Bool)

(assert (=> b!3577620 m!4071105))

(declare-fun m!4071107 () Bool)

(assert (=> b!3577620 m!4071107))

(declare-fun m!4071109 () Bool)

(assert (=> b!3577620 m!4071109))

(declare-fun m!4071111 () Bool)

(assert (=> b!3577620 m!4071111))

(declare-fun m!4071113 () Bool)

(assert (=> b!3577620 m!4071113))

(declare-fun m!4071115 () Bool)

(assert (=> b!3577620 m!4071115))

(declare-fun m!4071117 () Bool)

(assert (=> b!3577620 m!4071117))

(declare-fun m!4071119 () Bool)

(assert (=> b!3577620 m!4071119))

(assert (=> b!3577620 m!4071111))

(declare-fun m!4071121 () Bool)

(assert (=> b!3577620 m!4071121))

(declare-fun m!4071123 () Bool)

(assert (=> b!3577620 m!4071123))

(declare-fun m!4071125 () Bool)

(assert (=> b!3577620 m!4071125))

(declare-fun m!4071127 () Bool)

(assert (=> b!3577620 m!4071127))

(declare-fun m!4071129 () Bool)

(assert (=> b!3577620 m!4071129))

(declare-fun m!4071131 () Bool)

(assert (=> b!3577620 m!4071131))

(declare-fun m!4071133 () Bool)

(assert (=> b!3577620 m!4071133))

(declare-fun m!4071135 () Bool)

(assert (=> b!3577620 m!4071135))

(assert (=> b!3577620 m!4071131))

(declare-fun m!4071137 () Bool)

(assert (=> b!3577620 m!4071137))

(declare-fun m!4071139 () Bool)

(assert (=> b!3577620 m!4071139))

(declare-fun m!4071141 () Bool)

(assert (=> b!3577620 m!4071141))

(declare-fun m!4071143 () Bool)

(assert (=> b!3577620 m!4071143))

(declare-fun m!4071145 () Bool)

(assert (=> b!3577620 m!4071145))

(assert (=> b!3577620 m!4071099))

(declare-fun m!4071147 () Bool)

(assert (=> b!3577620 m!4071147))

(declare-fun m!4071149 () Bool)

(assert (=> b!3577620 m!4071149))

(declare-fun m!4071151 () Bool)

(assert (=> b!3577620 m!4071151))

(declare-fun m!4071153 () Bool)

(assert (=> b!3577620 m!4071153))

(assert (=> b!3577620 m!4071105))

(declare-fun m!4071155 () Bool)

(assert (=> b!3577620 m!4071155))

(declare-fun m!4071157 () Bool)

(assert (=> b!3577620 m!4071157))

(declare-fun m!4071159 () Bool)

(assert (=> b!3577620 m!4071159))

(declare-fun m!4071161 () Bool)

(assert (=> b!3577620 m!4071161))

(declare-fun m!4071163 () Bool)

(assert (=> b!3577620 m!4071163))

(declare-fun m!4071165 () Bool)

(assert (=> b!3577620 m!4071165))

(declare-fun m!4071167 () Bool)

(assert (=> b!3577620 m!4071167))

(declare-fun m!4071169 () Bool)

(assert (=> b!3577620 m!4071169))

(declare-fun m!4071171 () Bool)

(assert (=> b!3577620 m!4071171))

(declare-fun m!4071173 () Bool)

(assert (=> b!3577620 m!4071173))

(declare-fun m!4071175 () Bool)

(assert (=> b!3577620 m!4071175))

(declare-fun m!4071177 () Bool)

(assert (=> b!3577620 m!4071177))

(declare-fun m!4071179 () Bool)

(assert (=> b!3577583 m!4071179))

(declare-fun m!4071181 () Bool)

(assert (=> b!3577583 m!4071181))

(declare-fun m!4071183 () Bool)

(assert (=> b!3577621 m!4071183))

(assert (=> b!3577621 m!4071183))

(declare-fun m!4071185 () Bool)

(assert (=> b!3577621 m!4071185))

(declare-fun m!4071187 () Bool)

(assert (=> b!3577581 m!4071187))

(declare-fun m!4071189 () Bool)

(assert (=> b!3577581 m!4071189))

(declare-fun m!4071191 () Bool)

(assert (=> b!3577585 m!4071191))

(declare-fun m!4071193 () Bool)

(assert (=> b!3577585 m!4071193))

(declare-fun m!4071195 () Bool)

(assert (=> b!3577585 m!4071195))

(declare-fun m!4071197 () Bool)

(assert (=> b!3577585 m!4071197))

(assert (=> b!3577585 m!4071191))

(declare-fun m!4071199 () Bool)

(assert (=> b!3577585 m!4071199))

(declare-fun m!4071201 () Bool)

(assert (=> b!3577585 m!4071201))

(declare-fun m!4071203 () Bool)

(assert (=> b!3577585 m!4071203))

(declare-fun m!4071205 () Bool)

(assert (=> b!3577585 m!4071205))

(assert (=> b!3577585 m!4071203))

(declare-fun m!4071207 () Bool)

(assert (=> b!3577585 m!4071207))

(assert (=> b!3577585 m!4071193))

(declare-fun m!4071209 () Bool)

(assert (=> b!3577585 m!4071209))

(assert (=> b!3577585 m!4071205))

(declare-fun m!4071211 () Bool)

(assert (=> b!3577587 m!4071211))

(declare-fun m!4071213 () Bool)

(assert (=> b!3577580 m!4071213))

(declare-fun m!4071215 () Bool)

(assert (=> b!3577609 m!4071215))

(declare-fun m!4071217 () Bool)

(assert (=> b!3577590 m!4071217))

(declare-fun m!4071219 () Bool)

(assert (=> b!3577590 m!4071219))

(check-sat (not b!3577592) (not b!3577630) (not start!331562) b_and!257789 (not b!3577607) b_and!257785 (not b!3577581) b_and!257787 (not b!3577619) (not b!3577602) (not b!3577604) (not b!3577587) (not b!3577610) (not b_next!92303) (not b!3577612) (not b!3577620) (not b!3577618) (not b_next!92307) (not b!3577613) (not b!3577580) (not b!3577617) (not b!3577593) (not b!3577605) (not b!3577615) (not b!3577601) b_and!257783 (not b!3577579) (not b!3577598) (not b!3577609) (not b!3577608) b_and!257781 (not b!3577616) (not b!3577585) b_and!257779 (not b_next!92299) (not b!3577621) (not b_next!92297) (not b_next!92305) (not b!3577614) (not b!3577590) (not b!3577599) (not b!3577589) (not b_next!92301) (not b!3577583) (not b!3577578) (not b!3577596) (not b!3577584))
(check-sat (not b_next!92303) (not b_next!92307) b_and!257783 b_and!257789 b_and!257781 b_and!257785 (not b_next!92305) b_and!257787 (not b_next!92301) b_and!257779 (not b_next!92299) (not b_next!92297))
(get-model)

(declare-fun d!1055279 () Bool)

(declare-fun lt!1227628 () Bool)

(declare-fun isEmpty!22099 (List!37669) Bool)

(assert (=> d!1055279 (= lt!1227628 (isEmpty!22099 (list!13781 (_2!21872 lt!1227582))))))

(declare-fun isEmpty!22100 (Conc!11415) Bool)

(assert (=> d!1055279 (= lt!1227628 (isEmpty!22100 (c!620123 (_2!21872 lt!1227582))))))

(assert (=> d!1055279 (= (isEmpty!22095 (_2!21872 lt!1227582)) lt!1227628)))

(declare-fun bs!569710 () Bool)

(assert (= bs!569710 d!1055279))

(declare-fun m!4071295 () Bool)

(assert (=> bs!569710 m!4071295))

(assert (=> bs!569710 m!4071295))

(declare-fun m!4071297 () Bool)

(assert (=> bs!569710 m!4071297))

(declare-fun m!4071299 () Bool)

(assert (=> bs!569710 m!4071299))

(assert (=> b!3577584 d!1055279))

(declare-fun b!3577680 () Bool)

(declare-fun e!2213293 () List!37669)

(assert (=> b!3577680 (= e!2213293 (Cons!37545 (h!42965 lt!1227568) (++!9343 (t!290028 lt!1227568) lt!1227587)))))

(declare-fun b!3577679 () Bool)

(assert (=> b!3577679 (= e!2213293 lt!1227587)))

(declare-fun b!3577681 () Bool)

(declare-fun res!1443301 () Bool)

(declare-fun e!2213292 () Bool)

(assert (=> b!3577681 (=> (not res!1443301) (not e!2213292))))

(declare-fun lt!1227631 () List!37669)

(assert (=> b!3577681 (= res!1443301 (= (size!28640 lt!1227631) (+ (size!28640 lt!1227568) (size!28640 lt!1227587))))))

(declare-fun b!3577682 () Bool)

(assert (=> b!3577682 (= e!2213292 (or (not (= lt!1227587 Nil!37545)) (= lt!1227631 lt!1227568)))))

(declare-fun d!1055281 () Bool)

(assert (=> d!1055281 e!2213292))

(declare-fun res!1443300 () Bool)

(assert (=> d!1055281 (=> (not res!1443300) (not e!2213292))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5328 (List!37669) (InoxSet C!20744))

(assert (=> d!1055281 (= res!1443300 (= (content!5328 lt!1227631) ((_ map or) (content!5328 lt!1227568) (content!5328 lt!1227587))))))

(assert (=> d!1055281 (= lt!1227631 e!2213293)))

(declare-fun c!620137 () Bool)

(assert (=> d!1055281 (= c!620137 ((_ is Nil!37545) lt!1227568))))

(assert (=> d!1055281 (= (++!9343 lt!1227568 lt!1227587) lt!1227631)))

(assert (= (and d!1055281 c!620137) b!3577679))

(assert (= (and d!1055281 (not c!620137)) b!3577680))

(assert (= (and d!1055281 res!1443300) b!3577681))

(assert (= (and b!3577681 res!1443301) b!3577682))

(declare-fun m!4071301 () Bool)

(assert (=> b!3577680 m!4071301))

(declare-fun m!4071303 () Bool)

(assert (=> b!3577681 m!4071303))

(assert (=> b!3577681 m!4071087))

(declare-fun m!4071305 () Bool)

(assert (=> b!3577681 m!4071305))

(declare-fun m!4071307 () Bool)

(assert (=> d!1055281 m!4071307))

(declare-fun m!4071309 () Bool)

(assert (=> d!1055281 m!4071309))

(declare-fun m!4071311 () Bool)

(assert (=> d!1055281 m!4071311))

(assert (=> b!3577585 d!1055281))

(declare-fun d!1055283 () Bool)

(declare-fun c!620140 () Bool)

(assert (=> d!1055283 (= c!620140 ((_ is Cons!37547) tokens!494))))

(declare-fun e!2213296 () List!37669)

(assert (=> d!1055283 (= (printWithSeparatorTokenList!396 thiss!18206 tokens!494 separatorToken!241) e!2213296)))

(declare-fun b!3577687 () Bool)

(assert (=> b!3577687 (= e!2213296 (++!9343 (++!9343 (list!13781 (charsOf!3534 (h!42967 tokens!494))) (list!13781 (charsOf!3534 separatorToken!241))) (printWithSeparatorTokenList!396 thiss!18206 (t!290030 tokens!494) separatorToken!241)))))

(declare-fun b!3577688 () Bool)

(assert (=> b!3577688 (= e!2213296 Nil!37545)))

(assert (= (and d!1055283 c!620140) b!3577687))

(assert (= (and d!1055283 (not c!620140)) b!3577688))

(assert (=> b!3577687 m!4071183))

(assert (=> b!3577687 m!4071197))

(assert (=> b!3577687 m!4071185))

(assert (=> b!3577687 m!4071209))

(declare-fun m!4071313 () Bool)

(assert (=> b!3577687 m!4071313))

(assert (=> b!3577687 m!4071193))

(assert (=> b!3577687 m!4071209))

(assert (=> b!3577687 m!4071193))

(assert (=> b!3577687 m!4071313))

(assert (=> b!3577687 m!4071197))

(declare-fun m!4071315 () Bool)

(assert (=> b!3577687 m!4071315))

(assert (=> b!3577687 m!4071183))

(assert (=> b!3577687 m!4071185))

(assert (=> b!3577585 d!1055283))

(declare-fun b!3577690 () Bool)

(declare-fun e!2213298 () List!37669)

(assert (=> b!3577690 (= e!2213298 (Cons!37545 (h!42965 (++!9343 lt!1227568 lt!1227587)) (++!9343 (t!290028 (++!9343 lt!1227568 lt!1227587)) (printWithSeparatorTokenList!396 thiss!18206 (t!290030 (t!290030 tokens!494)) separatorToken!241))))))

(declare-fun b!3577689 () Bool)

(assert (=> b!3577689 (= e!2213298 (printWithSeparatorTokenList!396 thiss!18206 (t!290030 (t!290030 tokens!494)) separatorToken!241))))

(declare-fun b!3577691 () Bool)

(declare-fun res!1443303 () Bool)

(declare-fun e!2213297 () Bool)

(assert (=> b!3577691 (=> (not res!1443303) (not e!2213297))))

(declare-fun lt!1227632 () List!37669)

(assert (=> b!3577691 (= res!1443303 (= (size!28640 lt!1227632) (+ (size!28640 (++!9343 lt!1227568 lt!1227587)) (size!28640 (printWithSeparatorTokenList!396 thiss!18206 (t!290030 (t!290030 tokens!494)) separatorToken!241)))))))

(declare-fun b!3577692 () Bool)

(assert (=> b!3577692 (= e!2213297 (or (not (= (printWithSeparatorTokenList!396 thiss!18206 (t!290030 (t!290030 tokens!494)) separatorToken!241) Nil!37545)) (= lt!1227632 (++!9343 lt!1227568 lt!1227587))))))

(declare-fun d!1055285 () Bool)

(assert (=> d!1055285 e!2213297))

(declare-fun res!1443302 () Bool)

(assert (=> d!1055285 (=> (not res!1443302) (not e!2213297))))

(assert (=> d!1055285 (= res!1443302 (= (content!5328 lt!1227632) ((_ map or) (content!5328 (++!9343 lt!1227568 lt!1227587)) (content!5328 (printWithSeparatorTokenList!396 thiss!18206 (t!290030 (t!290030 tokens!494)) separatorToken!241)))))))

(assert (=> d!1055285 (= lt!1227632 e!2213298)))

(declare-fun c!620141 () Bool)

(assert (=> d!1055285 (= c!620141 ((_ is Nil!37545) (++!9343 lt!1227568 lt!1227587)))))

(assert (=> d!1055285 (= (++!9343 (++!9343 lt!1227568 lt!1227587) (printWithSeparatorTokenList!396 thiss!18206 (t!290030 (t!290030 tokens!494)) separatorToken!241)) lt!1227632)))

(assert (= (and d!1055285 c!620141) b!3577689))

(assert (= (and d!1055285 (not c!620141)) b!3577690))

(assert (= (and d!1055285 res!1443302) b!3577691))

(assert (= (and b!3577691 res!1443303) b!3577692))

(assert (=> b!3577690 m!4071203))

(declare-fun m!4071317 () Bool)

(assert (=> b!3577690 m!4071317))

(declare-fun m!4071319 () Bool)

(assert (=> b!3577691 m!4071319))

(assert (=> b!3577691 m!4071205))

(declare-fun m!4071321 () Bool)

(assert (=> b!3577691 m!4071321))

(assert (=> b!3577691 m!4071203))

(declare-fun m!4071323 () Bool)

(assert (=> b!3577691 m!4071323))

(declare-fun m!4071325 () Bool)

(assert (=> d!1055285 m!4071325))

(assert (=> d!1055285 m!4071205))

(declare-fun m!4071327 () Bool)

(assert (=> d!1055285 m!4071327))

(assert (=> d!1055285 m!4071203))

(declare-fun m!4071329 () Bool)

(assert (=> d!1055285 m!4071329))

(assert (=> b!3577585 d!1055285))

(declare-fun d!1055287 () Bool)

(declare-fun lt!1227635 () BalanceConc!22444)

(assert (=> d!1055287 (= (list!13781 lt!1227635) (originalCharacters!6234 separatorToken!241))))

(declare-fun dynLambda!16155 (Int TokenValue!5750) BalanceConc!22444)

(assert (=> d!1055287 (= lt!1227635 (dynLambda!16155 (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))) (value!177780 separatorToken!241)))))

(assert (=> d!1055287 (= (charsOf!3534 separatorToken!241) lt!1227635)))

(declare-fun b_lambda!105679 () Bool)

(assert (=> (not b_lambda!105679) (not d!1055287)))

(declare-fun t!290044 () Bool)

(declare-fun tb!204171 () Bool)

(assert (=> (and b!3577594 (= (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))) (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241)))) t!290044) tb!204171))

(declare-fun b!3577703 () Bool)

(declare-fun e!2213305 () Bool)

(declare-fun tp!1094663 () Bool)

(declare-fun inv!50829 (Conc!11415) Bool)

(assert (=> b!3577703 (= e!2213305 (and (inv!50829 (c!620123 (dynLambda!16155 (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))) (value!177780 separatorToken!241)))) tp!1094663))))

(declare-fun result!248854 () Bool)

(declare-fun inv!50830 (BalanceConc!22444) Bool)

(assert (=> tb!204171 (= result!248854 (and (inv!50830 (dynLambda!16155 (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))) (value!177780 separatorToken!241))) e!2213305))))

(assert (= tb!204171 b!3577703))

(declare-fun m!4071331 () Bool)

(assert (=> b!3577703 m!4071331))

(declare-fun m!4071333 () Bool)

(assert (=> tb!204171 m!4071333))

(assert (=> d!1055287 t!290044))

(declare-fun b_and!257803 () Bool)

(assert (= b_and!257781 (and (=> t!290044 result!248854) b_and!257803)))

(declare-fun t!290047 () Bool)

(declare-fun tb!204173 () Bool)

(assert (=> (and b!3577577 (= (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241)))) t!290047) tb!204173))

(declare-fun result!248858 () Bool)

(assert (= result!248858 result!248854))

(assert (=> d!1055287 t!290047))

(declare-fun b_and!257805 () Bool)

(assert (= b_and!257785 (and (=> t!290047 result!248858) b_and!257805)))

(declare-fun tb!204175 () Bool)

(declare-fun t!290049 () Bool)

(assert (=> (and b!3577582 (= (toChars!7651 (transformation!5520 (h!42966 rules!2135))) (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241)))) t!290049) tb!204175))

(declare-fun result!248860 () Bool)

(assert (= result!248860 result!248854))

(assert (=> d!1055287 t!290049))

(declare-fun b_and!257807 () Bool)

(assert (= b_and!257789 (and (=> t!290049 result!248860) b_and!257807)))

(declare-fun m!4071335 () Bool)

(assert (=> d!1055287 m!4071335))

(declare-fun m!4071337 () Bool)

(assert (=> d!1055287 m!4071337))

(assert (=> b!3577585 d!1055287))

(declare-fun d!1055289 () Bool)

(declare-fun list!13784 (Conc!11415) List!37669)

(assert (=> d!1055289 (= (list!13781 (charsOf!3534 (h!42967 (t!290030 tokens!494)))) (list!13784 (c!620123 (charsOf!3534 (h!42967 (t!290030 tokens!494))))))))

(declare-fun bs!569711 () Bool)

(assert (= bs!569711 d!1055289))

(declare-fun m!4071339 () Bool)

(assert (=> bs!569711 m!4071339))

(assert (=> b!3577585 d!1055289))

(declare-fun d!1055291 () Bool)

(declare-fun c!620142 () Bool)

(assert (=> d!1055291 (= c!620142 ((_ is Cons!37547) (t!290030 (t!290030 tokens!494))))))

(declare-fun e!2213308 () List!37669)

(assert (=> d!1055291 (= (printWithSeparatorTokenList!396 thiss!18206 (t!290030 (t!290030 tokens!494)) separatorToken!241) e!2213308)))

(declare-fun b!3577707 () Bool)

(assert (=> b!3577707 (= e!2213308 (++!9343 (++!9343 (list!13781 (charsOf!3534 (h!42967 (t!290030 (t!290030 tokens!494))))) (list!13781 (charsOf!3534 separatorToken!241))) (printWithSeparatorTokenList!396 thiss!18206 (t!290030 (t!290030 (t!290030 tokens!494))) separatorToken!241)))))

(declare-fun b!3577708 () Bool)

(assert (=> b!3577708 (= e!2213308 Nil!37545)))

(assert (= (and d!1055291 c!620142) b!3577707))

(assert (= (and d!1055291 (not c!620142)) b!3577708))

(declare-fun m!4071357 () Bool)

(assert (=> b!3577707 m!4071357))

(declare-fun m!4071359 () Bool)

(assert (=> b!3577707 m!4071359))

(declare-fun m!4071361 () Bool)

(assert (=> b!3577707 m!4071361))

(assert (=> b!3577707 m!4071209))

(declare-fun m!4071363 () Bool)

(assert (=> b!3577707 m!4071363))

(assert (=> b!3577707 m!4071193))

(assert (=> b!3577707 m!4071209))

(assert (=> b!3577707 m!4071193))

(assert (=> b!3577707 m!4071363))

(assert (=> b!3577707 m!4071359))

(declare-fun m!4071365 () Bool)

(assert (=> b!3577707 m!4071365))

(assert (=> b!3577707 m!4071357))

(assert (=> b!3577707 m!4071361))

(assert (=> b!3577585 d!1055291))

(declare-fun d!1055295 () Bool)

(declare-fun c!620143 () Bool)

(assert (=> d!1055295 (= c!620143 ((_ is Cons!37547) (t!290030 tokens!494)))))

(declare-fun e!2213309 () List!37669)

(assert (=> d!1055295 (= (printWithSeparatorTokenList!396 thiss!18206 (t!290030 tokens!494) separatorToken!241) e!2213309)))

(declare-fun b!3577709 () Bool)

(assert (=> b!3577709 (= e!2213309 (++!9343 (++!9343 (list!13781 (charsOf!3534 (h!42967 (t!290030 tokens!494)))) (list!13781 (charsOf!3534 separatorToken!241))) (printWithSeparatorTokenList!396 thiss!18206 (t!290030 (t!290030 tokens!494)) separatorToken!241)))))

(declare-fun b!3577710 () Bool)

(assert (=> b!3577710 (= e!2213309 Nil!37545)))

(assert (= (and d!1055295 c!620143) b!3577709))

(assert (= (and d!1055295 (not c!620143)) b!3577710))

(assert (=> b!3577709 m!4071191))

(assert (=> b!3577709 m!4071203))

(assert (=> b!3577709 m!4071199))

(assert (=> b!3577709 m!4071209))

(declare-fun m!4071367 () Bool)

(assert (=> b!3577709 m!4071367))

(assert (=> b!3577709 m!4071193))

(assert (=> b!3577709 m!4071209))

(assert (=> b!3577709 m!4071193))

(assert (=> b!3577709 m!4071367))

(assert (=> b!3577709 m!4071203))

(declare-fun m!4071369 () Bool)

(assert (=> b!3577709 m!4071369))

(assert (=> b!3577709 m!4071191))

(assert (=> b!3577709 m!4071199))

(assert (=> b!3577585 d!1055295))

(declare-fun b!3577712 () Bool)

(declare-fun e!2213311 () List!37669)

(assert (=> b!3577712 (= e!2213311 (Cons!37545 (h!42965 lt!1227587) (++!9343 (t!290028 lt!1227587) lt!1227593)))))

(declare-fun b!3577711 () Bool)

(assert (=> b!3577711 (= e!2213311 lt!1227593)))

(declare-fun b!3577713 () Bool)

(declare-fun res!1443314 () Bool)

(declare-fun e!2213310 () Bool)

(assert (=> b!3577713 (=> (not res!1443314) (not e!2213310))))

(declare-fun lt!1227644 () List!37669)

(assert (=> b!3577713 (= res!1443314 (= (size!28640 lt!1227644) (+ (size!28640 lt!1227587) (size!28640 lt!1227593))))))

(declare-fun b!3577714 () Bool)

(assert (=> b!3577714 (= e!2213310 (or (not (= lt!1227593 Nil!37545)) (= lt!1227644 lt!1227587)))))

(declare-fun d!1055297 () Bool)

(assert (=> d!1055297 e!2213310))

(declare-fun res!1443313 () Bool)

(assert (=> d!1055297 (=> (not res!1443313) (not e!2213310))))

(assert (=> d!1055297 (= res!1443313 (= (content!5328 lt!1227644) ((_ map or) (content!5328 lt!1227587) (content!5328 lt!1227593))))))

(assert (=> d!1055297 (= lt!1227644 e!2213311)))

(declare-fun c!620145 () Bool)

(assert (=> d!1055297 (= c!620145 ((_ is Nil!37545) lt!1227587))))

(assert (=> d!1055297 (= (++!9343 lt!1227587 lt!1227593) lt!1227644)))

(assert (= (and d!1055297 c!620145) b!3577711))

(assert (= (and d!1055297 (not c!620145)) b!3577712))

(assert (= (and d!1055297 res!1443313) b!3577713))

(assert (= (and b!3577713 res!1443314) b!3577714))

(declare-fun m!4071371 () Bool)

(assert (=> b!3577712 m!4071371))

(declare-fun m!4071373 () Bool)

(assert (=> b!3577713 m!4071373))

(assert (=> b!3577713 m!4071305))

(declare-fun m!4071375 () Bool)

(assert (=> b!3577713 m!4071375))

(declare-fun m!4071379 () Bool)

(assert (=> d!1055297 m!4071379))

(assert (=> d!1055297 m!4071311))

(declare-fun m!4071383 () Bool)

(assert (=> d!1055297 m!4071383))

(assert (=> b!3577585 d!1055297))

(declare-fun d!1055301 () Bool)

(assert (=> d!1055301 (= (list!13781 (charsOf!3534 separatorToken!241)) (list!13784 (c!620123 (charsOf!3534 separatorToken!241))))))

(declare-fun bs!569713 () Bool)

(assert (= bs!569713 d!1055301))

(declare-fun m!4071385 () Bool)

(assert (=> bs!569713 m!4071385))

(assert (=> b!3577585 d!1055301))

(declare-fun d!1055303 () Bool)

(declare-fun lt!1227646 () BalanceConc!22444)

(assert (=> d!1055303 (= (list!13781 lt!1227646) (originalCharacters!6234 (h!42967 (t!290030 tokens!494))))))

(assert (=> d!1055303 (= lt!1227646 (dynLambda!16155 (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (value!177780 (h!42967 (t!290030 tokens!494)))))))

(assert (=> d!1055303 (= (charsOf!3534 (h!42967 (t!290030 tokens!494))) lt!1227646)))

(declare-fun b_lambda!105681 () Bool)

(assert (=> (not b_lambda!105681) (not d!1055303)))

(declare-fun t!290051 () Bool)

(declare-fun tb!204177 () Bool)

(assert (=> (and b!3577594 (= (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))) t!290051) tb!204177))

(declare-fun b!3577715 () Bool)

(declare-fun e!2213312 () Bool)

(declare-fun tp!1094664 () Bool)

(assert (=> b!3577715 (= e!2213312 (and (inv!50829 (c!620123 (dynLambda!16155 (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (value!177780 (h!42967 (t!290030 tokens!494)))))) tp!1094664))))

(declare-fun result!248862 () Bool)

(assert (=> tb!204177 (= result!248862 (and (inv!50830 (dynLambda!16155 (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (value!177780 (h!42967 (t!290030 tokens!494))))) e!2213312))))

(assert (= tb!204177 b!3577715))

(declare-fun m!4071387 () Bool)

(assert (=> b!3577715 m!4071387))

(declare-fun m!4071389 () Bool)

(assert (=> tb!204177 m!4071389))

(assert (=> d!1055303 t!290051))

(declare-fun b_and!257809 () Bool)

(assert (= b_and!257803 (and (=> t!290051 result!248862) b_and!257809)))

(declare-fun t!290053 () Bool)

(declare-fun tb!204179 () Bool)

(assert (=> (and b!3577577 (= (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))) t!290053) tb!204179))

(declare-fun result!248864 () Bool)

(assert (= result!248864 result!248862))

(assert (=> d!1055303 t!290053))

(declare-fun b_and!257811 () Bool)

(assert (= b_and!257805 (and (=> t!290053 result!248864) b_and!257811)))

(declare-fun tb!204181 () Bool)

(declare-fun t!290055 () Bool)

(assert (=> (and b!3577582 (= (toChars!7651 (transformation!5520 (h!42966 rules!2135))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))) t!290055) tb!204181))

(declare-fun result!248866 () Bool)

(assert (= result!248866 result!248862))

(assert (=> d!1055303 t!290055))

(declare-fun b_and!257813 () Bool)

(assert (= b_and!257807 (and (=> t!290055 result!248866) b_and!257813)))

(declare-fun m!4071391 () Bool)

(assert (=> d!1055303 m!4071391))

(declare-fun m!4071393 () Bool)

(assert (=> d!1055303 m!4071393))

(assert (=> b!3577585 d!1055303))

(declare-fun lt!1227649 () Bool)

(declare-fun d!1055305 () Bool)

(declare-fun isEmpty!22102 (List!37671) Bool)

(declare-fun list!13785 (BalanceConc!22446) List!37671)

(assert (=> d!1055305 (= lt!1227649 (isEmpty!22102 (list!13785 (_1!21872 (lex!2435 thiss!18206 rules!2135 lt!1227596)))))))

(declare-fun isEmpty!22103 (Conc!11416) Bool)

(assert (=> d!1055305 (= lt!1227649 (isEmpty!22103 (c!620124 (_1!21872 (lex!2435 thiss!18206 rules!2135 lt!1227596)))))))

(assert (=> d!1055305 (= (isEmpty!22097 (_1!21872 (lex!2435 thiss!18206 rules!2135 lt!1227596))) lt!1227649)))

(declare-fun bs!569714 () Bool)

(assert (= bs!569714 d!1055305))

(declare-fun m!4071395 () Bool)

(assert (=> bs!569714 m!4071395))

(assert (=> bs!569714 m!4071395))

(declare-fun m!4071397 () Bool)

(assert (=> bs!569714 m!4071397))

(declare-fun m!4071399 () Bool)

(assert (=> bs!569714 m!4071399))

(assert (=> b!3577607 d!1055305))

(declare-fun b!3577805 () Bool)

(declare-fun e!2213364 () Bool)

(declare-fun e!2213366 () Bool)

(assert (=> b!3577805 (= e!2213364 e!2213366)))

(declare-fun res!1443362 () Bool)

(declare-fun lt!1227663 () tuple2!37476)

(declare-fun size!28643 (BalanceConc!22444) Int)

(assert (=> b!3577805 (= res!1443362 (< (size!28643 (_2!21872 lt!1227663)) (size!28643 lt!1227596)))))

(assert (=> b!3577805 (=> (not res!1443362) (not e!2213366))))

(declare-fun b!3577806 () Bool)

(declare-fun e!2213365 () Bool)

(declare-datatypes ((tuple2!37482 0))(
  ( (tuple2!37483 (_1!21875 List!37671) (_2!21875 List!37669)) )
))
(declare-fun lexList!1503 (LexerInterface!5109 List!37670 List!37669) tuple2!37482)

(assert (=> b!3577806 (= e!2213365 (= (list!13781 (_2!21872 lt!1227663)) (_2!21875 (lexList!1503 thiss!18206 rules!2135 (list!13781 lt!1227596)))))))

(declare-fun b!3577807 () Bool)

(assert (=> b!3577807 (= e!2213366 (not (isEmpty!22097 (_1!21872 lt!1227663))))))

(declare-fun d!1055307 () Bool)

(assert (=> d!1055307 e!2213365))

(declare-fun res!1443363 () Bool)

(assert (=> d!1055307 (=> (not res!1443363) (not e!2213365))))

(assert (=> d!1055307 (= res!1443363 e!2213364)))

(declare-fun c!620167 () Bool)

(assert (=> d!1055307 (= c!620167 (> (size!28641 (_1!21872 lt!1227663)) 0))))

(declare-fun lexTailRecV2!1111 (LexerInterface!5109 List!37670 BalanceConc!22444 BalanceConc!22444 BalanceConc!22444 BalanceConc!22446) tuple2!37476)

(assert (=> d!1055307 (= lt!1227663 (lexTailRecV2!1111 thiss!18206 rules!2135 lt!1227596 (BalanceConc!22445 Empty!11415) lt!1227596 (BalanceConc!22447 Empty!11416)))))

(assert (=> d!1055307 (= (lex!2435 thiss!18206 rules!2135 lt!1227596) lt!1227663)))

(declare-fun b!3577808 () Bool)

(assert (=> b!3577808 (= e!2213364 (= (_2!21872 lt!1227663) lt!1227596))))

(declare-fun b!3577809 () Bool)

(declare-fun res!1443361 () Bool)

(assert (=> b!3577809 (=> (not res!1443361) (not e!2213365))))

(assert (=> b!3577809 (= res!1443361 (= (list!13785 (_1!21872 lt!1227663)) (_1!21875 (lexList!1503 thiss!18206 rules!2135 (list!13781 lt!1227596)))))))

(assert (= (and d!1055307 c!620167) b!3577805))

(assert (= (and d!1055307 (not c!620167)) b!3577808))

(assert (= (and b!3577805 res!1443362) b!3577807))

(assert (= (and d!1055307 res!1443363) b!3577809))

(assert (= (and b!3577809 res!1443361) b!3577806))

(declare-fun m!4071449 () Bool)

(assert (=> b!3577807 m!4071449))

(declare-fun m!4071451 () Bool)

(assert (=> b!3577805 m!4071451))

(declare-fun m!4071453 () Bool)

(assert (=> b!3577805 m!4071453))

(declare-fun m!4071455 () Bool)

(assert (=> b!3577806 m!4071455))

(declare-fun m!4071457 () Bool)

(assert (=> b!3577806 m!4071457))

(assert (=> b!3577806 m!4071457))

(declare-fun m!4071459 () Bool)

(assert (=> b!3577806 m!4071459))

(declare-fun m!4071461 () Bool)

(assert (=> d!1055307 m!4071461))

(declare-fun m!4071463 () Bool)

(assert (=> d!1055307 m!4071463))

(declare-fun m!4071465 () Bool)

(assert (=> b!3577809 m!4071465))

(assert (=> b!3577809 m!4071457))

(assert (=> b!3577809 m!4071457))

(assert (=> b!3577809 m!4071459))

(assert (=> b!3577607 d!1055307))

(declare-fun d!1055327 () Bool)

(declare-fun fromListB!1893 (List!37669) BalanceConc!22444)

(assert (=> d!1055327 (= (seqFromList!4094 lt!1227614) (fromListB!1893 lt!1227614))))

(declare-fun bs!569715 () Bool)

(assert (= bs!569715 d!1055327))

(declare-fun m!4071467 () Bool)

(assert (=> bs!569715 m!4071467))

(assert (=> b!3577607 d!1055327))

(declare-fun b!3577838 () Bool)

(declare-fun e!2213383 () Bool)

(assert (=> b!3577838 (= e!2213383 (not (= (head!7455 lt!1227614) (c!620122 (regex!5520 lt!1227611)))))))

(declare-fun b!3577839 () Bool)

(declare-fun res!1443383 () Bool)

(assert (=> b!3577839 (=> res!1443383 e!2213383)))

(declare-fun tail!5544 (List!37669) List!37669)

(assert (=> b!3577839 (= res!1443383 (not (isEmpty!22099 (tail!5544 lt!1227614))))))

(declare-fun b!3577840 () Bool)

(declare-fun e!2213386 () Bool)

(declare-fun e!2213381 () Bool)

(assert (=> b!3577840 (= e!2213386 e!2213381)))

(declare-fun c!620174 () Bool)

(assert (=> b!3577840 (= c!620174 ((_ is EmptyLang!10279) (regex!5520 lt!1227611)))))

(declare-fun b!3577841 () Bool)

(declare-fun lt!1227668 () Bool)

(declare-fun call!259222 () Bool)

(assert (=> b!3577841 (= e!2213386 (= lt!1227668 call!259222))))

(declare-fun b!3577842 () Bool)

(declare-fun res!1443382 () Bool)

(declare-fun e!2213384 () Bool)

(assert (=> b!3577842 (=> (not res!1443382) (not e!2213384))))

(assert (=> b!3577842 (= res!1443382 (isEmpty!22099 (tail!5544 lt!1227614)))))

(declare-fun b!3577844 () Bool)

(declare-fun res!1443386 () Bool)

(declare-fun e!2213387 () Bool)

(assert (=> b!3577844 (=> res!1443386 e!2213387)))

(assert (=> b!3577844 (= res!1443386 (not ((_ is ElementMatch!10279) (regex!5520 lt!1227611))))))

(assert (=> b!3577844 (= e!2213381 e!2213387)))

(declare-fun b!3577845 () Bool)

(declare-fun res!1443384 () Bool)

(assert (=> b!3577845 (=> (not res!1443384) (not e!2213384))))

(assert (=> b!3577845 (= res!1443384 (not call!259222))))

(declare-fun b!3577846 () Bool)

(declare-fun e!2213382 () Bool)

(declare-fun derivativeStep!3097 (Regex!10279 C!20744) Regex!10279)

(assert (=> b!3577846 (= e!2213382 (matchR!4863 (derivativeStep!3097 (regex!5520 lt!1227611) (head!7455 lt!1227614)) (tail!5544 lt!1227614)))))

(declare-fun bm!259217 () Bool)

(assert (=> bm!259217 (= call!259222 (isEmpty!22099 lt!1227614))))

(declare-fun b!3577847 () Bool)

(declare-fun res!1443387 () Bool)

(assert (=> b!3577847 (=> res!1443387 e!2213387)))

(assert (=> b!3577847 (= res!1443387 e!2213384)))

(declare-fun res!1443380 () Bool)

(assert (=> b!3577847 (=> (not res!1443380) (not e!2213384))))

(assert (=> b!3577847 (= res!1443380 lt!1227668)))

(declare-fun b!3577848 () Bool)

(declare-fun e!2213385 () Bool)

(assert (=> b!3577848 (= e!2213387 e!2213385)))

(declare-fun res!1443381 () Bool)

(assert (=> b!3577848 (=> (not res!1443381) (not e!2213385))))

(assert (=> b!3577848 (= res!1443381 (not lt!1227668))))

(declare-fun b!3577849 () Bool)

(assert (=> b!3577849 (= e!2213384 (= (head!7455 lt!1227614) (c!620122 (regex!5520 lt!1227611))))))

(declare-fun b!3577850 () Bool)

(declare-fun nullable!3544 (Regex!10279) Bool)

(assert (=> b!3577850 (= e!2213382 (nullable!3544 (regex!5520 lt!1227611)))))

(declare-fun b!3577851 () Bool)

(assert (=> b!3577851 (= e!2213381 (not lt!1227668))))

(declare-fun d!1055329 () Bool)

(assert (=> d!1055329 e!2213386))

(declare-fun c!620175 () Bool)

(assert (=> d!1055329 (= c!620175 ((_ is EmptyExpr!10279) (regex!5520 lt!1227611)))))

(assert (=> d!1055329 (= lt!1227668 e!2213382)))

(declare-fun c!620176 () Bool)

(assert (=> d!1055329 (= c!620176 (isEmpty!22099 lt!1227614))))

(declare-fun validRegex!4700 (Regex!10279) Bool)

(assert (=> d!1055329 (validRegex!4700 (regex!5520 lt!1227611))))

(assert (=> d!1055329 (= (matchR!4863 (regex!5520 lt!1227611) lt!1227614) lt!1227668)))

(declare-fun b!3577843 () Bool)

(assert (=> b!3577843 (= e!2213385 e!2213383)))

(declare-fun res!1443385 () Bool)

(assert (=> b!3577843 (=> res!1443385 e!2213383)))

(assert (=> b!3577843 (= res!1443385 call!259222)))

(assert (= (and d!1055329 c!620176) b!3577850))

(assert (= (and d!1055329 (not c!620176)) b!3577846))

(assert (= (and d!1055329 c!620175) b!3577841))

(assert (= (and d!1055329 (not c!620175)) b!3577840))

(assert (= (and b!3577840 c!620174) b!3577851))

(assert (= (and b!3577840 (not c!620174)) b!3577844))

(assert (= (and b!3577844 (not res!1443386)) b!3577847))

(assert (= (and b!3577847 res!1443380) b!3577845))

(assert (= (and b!3577845 res!1443384) b!3577842))

(assert (= (and b!3577842 res!1443382) b!3577849))

(assert (= (and b!3577847 (not res!1443387)) b!3577848))

(assert (= (and b!3577848 res!1443381) b!3577843))

(assert (= (and b!3577843 (not res!1443385)) b!3577839))

(assert (= (and b!3577839 (not res!1443383)) b!3577838))

(assert (= (or b!3577841 b!3577843 b!3577845) bm!259217))

(declare-fun m!4071469 () Bool)

(assert (=> b!3577842 m!4071469))

(assert (=> b!3577842 m!4071469))

(declare-fun m!4071471 () Bool)

(assert (=> b!3577842 m!4071471))

(declare-fun m!4071473 () Bool)

(assert (=> b!3577846 m!4071473))

(assert (=> b!3577846 m!4071473))

(declare-fun m!4071475 () Bool)

(assert (=> b!3577846 m!4071475))

(assert (=> b!3577846 m!4071469))

(assert (=> b!3577846 m!4071475))

(assert (=> b!3577846 m!4071469))

(declare-fun m!4071477 () Bool)

(assert (=> b!3577846 m!4071477))

(assert (=> b!3577849 m!4071473))

(declare-fun m!4071479 () Bool)

(assert (=> bm!259217 m!4071479))

(assert (=> b!3577839 m!4071469))

(assert (=> b!3577839 m!4071469))

(assert (=> b!3577839 m!4071471))

(declare-fun m!4071481 () Bool)

(assert (=> b!3577850 m!4071481))

(assert (=> b!3577838 m!4071473))

(assert (=> d!1055329 m!4071479))

(declare-fun m!4071483 () Bool)

(assert (=> d!1055329 m!4071483))

(assert (=> b!3577604 d!1055329))

(declare-fun d!1055331 () Bool)

(assert (=> d!1055331 (= (get!12089 lt!1227599) (v!37340 lt!1227599))))

(assert (=> b!3577604 d!1055331))

(declare-fun b!3577852 () Bool)

(declare-fun e!2213392 () Bool)

(assert (=> b!3577852 (= e!2213392 (not (= (head!7455 lt!1227587) (c!620122 (regex!5520 lt!1227609)))))))

(declare-fun b!3577853 () Bool)

(declare-fun res!1443393 () Bool)

(assert (=> b!3577853 (=> res!1443393 e!2213392)))

(assert (=> b!3577853 (= res!1443393 (not (isEmpty!22099 (tail!5544 lt!1227587))))))

(declare-fun b!3577854 () Bool)

(declare-fun e!2213395 () Bool)

(declare-fun e!2213390 () Bool)

(assert (=> b!3577854 (= e!2213395 e!2213390)))

(declare-fun c!620177 () Bool)

(assert (=> b!3577854 (= c!620177 ((_ is EmptyLang!10279) (regex!5520 lt!1227609)))))

(declare-fun b!3577855 () Bool)

(declare-fun lt!1227669 () Bool)

(declare-fun call!259223 () Bool)

(assert (=> b!3577855 (= e!2213395 (= lt!1227669 call!259223))))

(declare-fun b!3577856 () Bool)

(declare-fun res!1443392 () Bool)

(declare-fun e!2213393 () Bool)

(assert (=> b!3577856 (=> (not res!1443392) (not e!2213393))))

(assert (=> b!3577856 (= res!1443392 (isEmpty!22099 (tail!5544 lt!1227587)))))

(declare-fun b!3577858 () Bool)

(declare-fun res!1443396 () Bool)

(declare-fun e!2213396 () Bool)

(assert (=> b!3577858 (=> res!1443396 e!2213396)))

(assert (=> b!3577858 (= res!1443396 (not ((_ is ElementMatch!10279) (regex!5520 lt!1227609))))))

(assert (=> b!3577858 (= e!2213390 e!2213396)))

(declare-fun b!3577859 () Bool)

(declare-fun res!1443394 () Bool)

(assert (=> b!3577859 (=> (not res!1443394) (not e!2213393))))

(assert (=> b!3577859 (= res!1443394 (not call!259223))))

(declare-fun b!3577860 () Bool)

(declare-fun e!2213391 () Bool)

(assert (=> b!3577860 (= e!2213391 (matchR!4863 (derivativeStep!3097 (regex!5520 lt!1227609) (head!7455 lt!1227587)) (tail!5544 lt!1227587)))))

(declare-fun bm!259218 () Bool)

(assert (=> bm!259218 (= call!259223 (isEmpty!22099 lt!1227587))))

(declare-fun b!3577861 () Bool)

(declare-fun res!1443397 () Bool)

(assert (=> b!3577861 (=> res!1443397 e!2213396)))

(assert (=> b!3577861 (= res!1443397 e!2213393)))

(declare-fun res!1443390 () Bool)

(assert (=> b!3577861 (=> (not res!1443390) (not e!2213393))))

(assert (=> b!3577861 (= res!1443390 lt!1227669)))

(declare-fun b!3577862 () Bool)

(declare-fun e!2213394 () Bool)

(assert (=> b!3577862 (= e!2213396 e!2213394)))

(declare-fun res!1443391 () Bool)

(assert (=> b!3577862 (=> (not res!1443391) (not e!2213394))))

(assert (=> b!3577862 (= res!1443391 (not lt!1227669))))

(declare-fun b!3577863 () Bool)

(assert (=> b!3577863 (= e!2213393 (= (head!7455 lt!1227587) (c!620122 (regex!5520 lt!1227609))))))

(declare-fun b!3577864 () Bool)

(assert (=> b!3577864 (= e!2213391 (nullable!3544 (regex!5520 lt!1227609)))))

(declare-fun b!3577865 () Bool)

(assert (=> b!3577865 (= e!2213390 (not lt!1227669))))

(declare-fun d!1055333 () Bool)

(assert (=> d!1055333 e!2213395))

(declare-fun c!620178 () Bool)

(assert (=> d!1055333 (= c!620178 ((_ is EmptyExpr!10279) (regex!5520 lt!1227609)))))

(assert (=> d!1055333 (= lt!1227669 e!2213391)))

(declare-fun c!620179 () Bool)

(assert (=> d!1055333 (= c!620179 (isEmpty!22099 lt!1227587))))

(assert (=> d!1055333 (validRegex!4700 (regex!5520 lt!1227609))))

(assert (=> d!1055333 (= (matchR!4863 (regex!5520 lt!1227609) lt!1227587) lt!1227669)))

(declare-fun b!3577857 () Bool)

(assert (=> b!3577857 (= e!2213394 e!2213392)))

(declare-fun res!1443395 () Bool)

(assert (=> b!3577857 (=> res!1443395 e!2213392)))

(assert (=> b!3577857 (= res!1443395 call!259223)))

(assert (= (and d!1055333 c!620179) b!3577864))

(assert (= (and d!1055333 (not c!620179)) b!3577860))

(assert (= (and d!1055333 c!620178) b!3577855))

(assert (= (and d!1055333 (not c!620178)) b!3577854))

(assert (= (and b!3577854 c!620177) b!3577865))

(assert (= (and b!3577854 (not c!620177)) b!3577858))

(assert (= (and b!3577858 (not res!1443396)) b!3577861))

(assert (= (and b!3577861 res!1443390) b!3577859))

(assert (= (and b!3577859 res!1443394) b!3577856))

(assert (= (and b!3577856 res!1443392) b!3577863))

(assert (= (and b!3577861 (not res!1443397)) b!3577862))

(assert (= (and b!3577862 res!1443391) b!3577857))

(assert (= (and b!3577857 (not res!1443395)) b!3577853))

(assert (= (and b!3577853 (not res!1443393)) b!3577852))

(assert (= (or b!3577855 b!3577857 b!3577859) bm!259218))

(declare-fun m!4071485 () Bool)

(assert (=> b!3577856 m!4071485))

(assert (=> b!3577856 m!4071485))

(declare-fun m!4071487 () Bool)

(assert (=> b!3577856 m!4071487))

(assert (=> b!3577860 m!4071083))

(assert (=> b!3577860 m!4071083))

(declare-fun m!4071489 () Bool)

(assert (=> b!3577860 m!4071489))

(assert (=> b!3577860 m!4071485))

(assert (=> b!3577860 m!4071489))

(assert (=> b!3577860 m!4071485))

(declare-fun m!4071491 () Bool)

(assert (=> b!3577860 m!4071491))

(assert (=> b!3577863 m!4071083))

(declare-fun m!4071493 () Bool)

(assert (=> bm!259218 m!4071493))

(assert (=> b!3577853 m!4071485))

(assert (=> b!3577853 m!4071485))

(assert (=> b!3577853 m!4071487))

(declare-fun m!4071495 () Bool)

(assert (=> b!3577864 m!4071495))

(assert (=> b!3577852 m!4071083))

(assert (=> d!1055333 m!4071493))

(declare-fun m!4071497 () Bool)

(assert (=> d!1055333 m!4071497))

(assert (=> b!3577583 d!1055333))

(declare-fun d!1055335 () Bool)

(assert (=> d!1055335 (= (get!12089 lt!1227573) (v!37340 lt!1227573))))

(assert (=> b!3577583 d!1055335))

(declare-fun d!1055337 () Bool)

(declare-fun res!1443403 () Bool)

(declare-fun e!2213403 () Bool)

(assert (=> d!1055337 (=> (not res!1443403) (not e!2213403))))

(assert (=> d!1055337 (= res!1443403 (not (isEmpty!22099 (originalCharacters!6234 (h!42967 tokens!494)))))))

(assert (=> d!1055337 (= (inv!50826 (h!42967 tokens!494)) e!2213403)))

(declare-fun b!3577876 () Bool)

(declare-fun res!1443404 () Bool)

(assert (=> b!3577876 (=> (not res!1443404) (not e!2213403))))

(assert (=> b!3577876 (= res!1443404 (= (originalCharacters!6234 (h!42967 tokens!494)) (list!13781 (dynLambda!16155 (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) (value!177780 (h!42967 tokens!494))))))))

(declare-fun b!3577877 () Bool)

(assert (=> b!3577877 (= e!2213403 (= (size!28638 (h!42967 tokens!494)) (size!28640 (originalCharacters!6234 (h!42967 tokens!494)))))))

(assert (= (and d!1055337 res!1443403) b!3577876))

(assert (= (and b!3577876 res!1443404) b!3577877))

(declare-fun b_lambda!105685 () Bool)

(assert (=> (not b_lambda!105685) (not b!3577876)))

(declare-fun t!290067 () Bool)

(declare-fun tb!204189 () Bool)

(assert (=> (and b!3577594 (= (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494))))) t!290067) tb!204189))

(declare-fun b!3577878 () Bool)

(declare-fun e!2213404 () Bool)

(declare-fun tp!1094666 () Bool)

(assert (=> b!3577878 (= e!2213404 (and (inv!50829 (c!620123 (dynLambda!16155 (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) (value!177780 (h!42967 tokens!494))))) tp!1094666))))

(declare-fun result!248874 () Bool)

(assert (=> tb!204189 (= result!248874 (and (inv!50830 (dynLambda!16155 (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) (value!177780 (h!42967 tokens!494)))) e!2213404))))

(assert (= tb!204189 b!3577878))

(declare-fun m!4071507 () Bool)

(assert (=> b!3577878 m!4071507))

(declare-fun m!4071509 () Bool)

(assert (=> tb!204189 m!4071509))

(assert (=> b!3577876 t!290067))

(declare-fun b_and!257821 () Bool)

(assert (= b_and!257809 (and (=> t!290067 result!248874) b_and!257821)))

(declare-fun t!290069 () Bool)

(declare-fun tb!204191 () Bool)

(assert (=> (and b!3577577 (= (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494))))) t!290069) tb!204191))

(declare-fun result!248876 () Bool)

(assert (= result!248876 result!248874))

(assert (=> b!3577876 t!290069))

(declare-fun b_and!257823 () Bool)

(assert (= b_and!257811 (and (=> t!290069 result!248876) b_and!257823)))

(declare-fun tb!204193 () Bool)

(declare-fun t!290071 () Bool)

(assert (=> (and b!3577582 (= (toChars!7651 (transformation!5520 (h!42966 rules!2135))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494))))) t!290071) tb!204193))

(declare-fun result!248878 () Bool)

(assert (= result!248878 result!248874))

(assert (=> b!3577876 t!290071))

(declare-fun b_and!257825 () Bool)

(assert (= b_and!257813 (and (=> t!290071 result!248878) b_and!257825)))

(declare-fun m!4071513 () Bool)

(assert (=> d!1055337 m!4071513))

(declare-fun m!4071515 () Bool)

(assert (=> b!3577876 m!4071515))

(assert (=> b!3577876 m!4071515))

(declare-fun m!4071517 () Bool)

(assert (=> b!3577876 m!4071517))

(declare-fun m!4071519 () Bool)

(assert (=> b!3577877 m!4071519))

(assert (=> b!3577605 d!1055337))

(declare-fun bs!569720 () Bool)

(declare-fun d!1055343 () Bool)

(assert (= bs!569720 (and d!1055343 b!3577599)))

(declare-fun lambda!123651 () Int)

(assert (=> bs!569720 (not (= lambda!123651 lambda!123640))))

(declare-fun bs!569721 () Bool)

(assert (= bs!569721 (and d!1055343 b!3577620)))

(assert (=> bs!569721 (= lambda!123651 lambda!123641)))

(declare-fun b!3577900 () Bool)

(declare-fun e!2213418 () Bool)

(assert (=> b!3577900 (= e!2213418 true)))

(declare-fun b!3577899 () Bool)

(declare-fun e!2213417 () Bool)

(assert (=> b!3577899 (= e!2213417 e!2213418)))

(declare-fun b!3577898 () Bool)

(declare-fun e!2213416 () Bool)

(assert (=> b!3577898 (= e!2213416 e!2213417)))

(assert (=> d!1055343 e!2213416))

(assert (= b!3577899 b!3577900))

(assert (= b!3577898 b!3577899))

(assert (= (and d!1055343 ((_ is Cons!37546) rules!2135)) b!3577898))

(assert (=> b!3577900 (< (dynLambda!16151 order!20401 (toValue!7792 (transformation!5520 (h!42966 rules!2135)))) (dynLambda!16152 order!20403 lambda!123651))))

(assert (=> b!3577900 (< (dynLambda!16153 order!20405 (toChars!7651 (transformation!5520 (h!42966 rules!2135)))) (dynLambda!16152 order!20403 lambda!123651))))

(assert (=> d!1055343 true))

(declare-fun e!2213415 () Bool)

(assert (=> d!1055343 e!2213415))

(declare-fun res!1443411 () Bool)

(assert (=> d!1055343 (=> (not res!1443411) (not e!2213415))))

(declare-fun lt!1227684 () Bool)

(assert (=> d!1055343 (= res!1443411 (= lt!1227684 (forall!8130 (list!13785 (seqFromList!4093 tokens!494)) lambda!123651)))))

(declare-fun forall!8132 (BalanceConc!22446 Int) Bool)

(assert (=> d!1055343 (= lt!1227684 (forall!8132 (seqFromList!4093 tokens!494) lambda!123651))))

(assert (=> d!1055343 (not (isEmpty!22096 rules!2135))))

(assert (=> d!1055343 (= (rulesProduceEachTokenIndividually!1560 thiss!18206 rules!2135 (seqFromList!4093 tokens!494)) lt!1227684)))

(declare-fun b!3577897 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1911 (LexerInterface!5109 List!37670 List!37671) Bool)

(assert (=> b!3577897 (= e!2213415 (= lt!1227684 (rulesProduceEachTokenIndividuallyList!1911 thiss!18206 rules!2135 (list!13785 (seqFromList!4093 tokens!494)))))))

(assert (= (and d!1055343 res!1443411) b!3577897))

(assert (=> d!1055343 m!4071065))

(declare-fun m!4071541 () Bool)

(assert (=> d!1055343 m!4071541))

(assert (=> d!1055343 m!4071541))

(declare-fun m!4071543 () Bool)

(assert (=> d!1055343 m!4071543))

(assert (=> d!1055343 m!4071065))

(declare-fun m!4071545 () Bool)

(assert (=> d!1055343 m!4071545))

(assert (=> d!1055343 m!4071033))

(assert (=> b!3577897 m!4071065))

(assert (=> b!3577897 m!4071541))

(assert (=> b!3577897 m!4071541))

(declare-fun m!4071547 () Bool)

(assert (=> b!3577897 m!4071547))

(assert (=> b!3577579 d!1055343))

(declare-fun d!1055351 () Bool)

(declare-fun fromListB!1894 (List!37671) BalanceConc!22446)

(assert (=> d!1055351 (= (seqFromList!4093 tokens!494) (fromListB!1894 tokens!494))))

(declare-fun bs!569722 () Bool)

(assert (= bs!569722 d!1055351))

(declare-fun m!4071549 () Bool)

(assert (=> bs!569722 m!4071549))

(assert (=> b!3577579 d!1055351))

(declare-fun b!3577927 () Bool)

(declare-fun e!2213440 () Bool)

(declare-fun inv!17 (TokenValue!5750) Bool)

(assert (=> b!3577927 (= e!2213440 (inv!17 (value!177780 (h!42967 tokens!494))))))

(declare-fun b!3577929 () Bool)

(declare-fun e!2213439 () Bool)

(declare-fun inv!15 (TokenValue!5750) Bool)

(assert (=> b!3577929 (= e!2213439 (inv!15 (value!177780 (h!42967 tokens!494))))))

(declare-fun b!3577930 () Bool)

(declare-fun e!2213441 () Bool)

(declare-fun inv!16 (TokenValue!5750) Bool)

(assert (=> b!3577930 (= e!2213441 (inv!16 (value!177780 (h!42967 tokens!494))))))

(declare-fun b!3577931 () Bool)

(assert (=> b!3577931 (= e!2213441 e!2213440)))

(declare-fun c!620193 () Bool)

(assert (=> b!3577931 (= c!620193 ((_ is IntegerValue!17251) (value!177780 (h!42967 tokens!494))))))

(declare-fun d!1055353 () Bool)

(declare-fun c!620192 () Bool)

(assert (=> d!1055353 (= c!620192 ((_ is IntegerValue!17250) (value!177780 (h!42967 tokens!494))))))

(assert (=> d!1055353 (= (inv!21 (value!177780 (h!42967 tokens!494))) e!2213441)))

(declare-fun b!3577928 () Bool)

(declare-fun res!1443426 () Bool)

(assert (=> b!3577928 (=> res!1443426 e!2213439)))

(assert (=> b!3577928 (= res!1443426 (not ((_ is IntegerValue!17252) (value!177780 (h!42967 tokens!494)))))))

(assert (=> b!3577928 (= e!2213440 e!2213439)))

(assert (= (and d!1055353 c!620192) b!3577930))

(assert (= (and d!1055353 (not c!620192)) b!3577931))

(assert (= (and b!3577931 c!620193) b!3577927))

(assert (= (and b!3577931 (not c!620193)) b!3577928))

(assert (= (and b!3577928 (not res!1443426)) b!3577929))

(declare-fun m!4071569 () Bool)

(assert (=> b!3577927 m!4071569))

(declare-fun m!4071571 () Bool)

(assert (=> b!3577929 m!4071571))

(declare-fun m!4071573 () Bool)

(assert (=> b!3577930 m!4071573))

(assert (=> b!3577601 d!1055353))

(declare-fun d!1055359 () Bool)

(declare-fun lt!1227730 () Bool)

(declare-fun e!2213464 () Bool)

(assert (=> d!1055359 (= lt!1227730 e!2213464)))

(declare-fun res!1443448 () Bool)

(assert (=> d!1055359 (=> (not res!1443448) (not e!2213464))))

(assert (=> d!1055359 (= res!1443448 (= (list!13785 (_1!21872 (lex!2435 thiss!18206 rules!2135 (print!2174 thiss!18206 (singletonSeq!2616 separatorToken!241))))) (list!13785 (singletonSeq!2616 separatorToken!241))))))

(declare-fun e!2213463 () Bool)

(assert (=> d!1055359 (= lt!1227730 e!2213463)))

(declare-fun res!1443449 () Bool)

(assert (=> d!1055359 (=> (not res!1443449) (not e!2213463))))

(declare-fun lt!1227729 () tuple2!37476)

(assert (=> d!1055359 (= res!1443449 (= (size!28641 (_1!21872 lt!1227729)) 1))))

(assert (=> d!1055359 (= lt!1227729 (lex!2435 thiss!18206 rules!2135 (print!2174 thiss!18206 (singletonSeq!2616 separatorToken!241))))))

(assert (=> d!1055359 (not (isEmpty!22096 rules!2135))))

(assert (=> d!1055359 (= (rulesProduceIndividualToken!2601 thiss!18206 rules!2135 separatorToken!241) lt!1227730)))

(declare-fun b!3577965 () Bool)

(declare-fun res!1443450 () Bool)

(assert (=> b!3577965 (=> (not res!1443450) (not e!2213463))))

(assert (=> b!3577965 (= res!1443450 (= (apply!9046 (_1!21872 lt!1227729) 0) separatorToken!241))))

(declare-fun b!3577966 () Bool)

(assert (=> b!3577966 (= e!2213463 (isEmpty!22095 (_2!21872 lt!1227729)))))

(declare-fun b!3577967 () Bool)

(assert (=> b!3577967 (= e!2213464 (isEmpty!22095 (_2!21872 (lex!2435 thiss!18206 rules!2135 (print!2174 thiss!18206 (singletonSeq!2616 separatorToken!241))))))))

(assert (= (and d!1055359 res!1443449) b!3577965))

(assert (= (and b!3577965 res!1443450) b!3577966))

(assert (= (and d!1055359 res!1443448) b!3577967))

(assert (=> d!1055359 m!4071127))

(declare-fun m!4071617 () Bool)

(assert (=> d!1055359 m!4071617))

(declare-fun m!4071619 () Bool)

(assert (=> d!1055359 m!4071619))

(declare-fun m!4071621 () Bool)

(assert (=> d!1055359 m!4071621))

(assert (=> d!1055359 m!4071033))

(declare-fun m!4071623 () Bool)

(assert (=> d!1055359 m!4071623))

(assert (=> d!1055359 m!4071127))

(assert (=> d!1055359 m!4071617))

(assert (=> d!1055359 m!4071127))

(declare-fun m!4071625 () Bool)

(assert (=> d!1055359 m!4071625))

(declare-fun m!4071627 () Bool)

(assert (=> b!3577965 m!4071627))

(declare-fun m!4071629 () Bool)

(assert (=> b!3577966 m!4071629))

(assert (=> b!3577967 m!4071127))

(assert (=> b!3577967 m!4071127))

(assert (=> b!3577967 m!4071617))

(assert (=> b!3577967 m!4071617))

(assert (=> b!3577967 m!4071619))

(declare-fun m!4071631 () Bool)

(assert (=> b!3577967 m!4071631))

(assert (=> b!3577580 d!1055359))

(declare-fun d!1055367 () Bool)

(assert (=> d!1055367 (= (inv!50822 (tag!6184 (rule!8228 separatorToken!241))) (= (mod (str.len (value!177779 (tag!6184 (rule!8228 separatorToken!241)))) 2) 0))))

(assert (=> b!3577602 d!1055367))

(declare-fun d!1055369 () Bool)

(declare-fun res!1443455 () Bool)

(declare-fun e!2213467 () Bool)

(assert (=> d!1055369 (=> (not res!1443455) (not e!2213467))))

(declare-fun semiInverseModEq!2339 (Int Int) Bool)

(assert (=> d!1055369 (= res!1443455 (semiInverseModEq!2339 (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))) (toValue!7792 (transformation!5520 (rule!8228 separatorToken!241)))))))

(assert (=> d!1055369 (= (inv!50825 (transformation!5520 (rule!8228 separatorToken!241))) e!2213467)))

(declare-fun b!3577972 () Bool)

(declare-fun equivClasses!2238 (Int Int) Bool)

(assert (=> b!3577972 (= e!2213467 (equivClasses!2238 (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))) (toValue!7792 (transformation!5520 (rule!8228 separatorToken!241)))))))

(assert (= (and d!1055369 res!1443455) b!3577972))

(declare-fun m!4071633 () Bool)

(assert (=> d!1055369 m!4071633))

(declare-fun m!4071635 () Bool)

(assert (=> b!3577972 m!4071635))

(assert (=> b!3577602 d!1055369))

(declare-fun d!1055371 () Bool)

(declare-fun lt!1227738 () Int)

(assert (=> d!1055371 (>= lt!1227738 0)))

(declare-fun e!2213474 () Int)

(assert (=> d!1055371 (= lt!1227738 e!2213474)))

(declare-fun c!620203 () Bool)

(assert (=> d!1055371 (= c!620203 ((_ is Nil!37547) (t!290030 tokens!494)))))

(assert (=> d!1055371 (= (size!28639 (t!290030 tokens!494)) lt!1227738)))

(declare-fun b!3577986 () Bool)

(assert (=> b!3577986 (= e!2213474 0)))

(declare-fun b!3577987 () Bool)

(assert (=> b!3577987 (= e!2213474 (+ 1 (size!28639 (t!290030 (t!290030 tokens!494)))))))

(assert (= (and d!1055371 c!620203) b!3577986))

(assert (= (and d!1055371 (not c!620203)) b!3577987))

(declare-fun m!4071637 () Bool)

(assert (=> b!3577987 m!4071637))

(assert (=> b!3577581 d!1055371))

(declare-fun d!1055373 () Bool)

(declare-fun lt!1227739 () Int)

(assert (=> d!1055373 (>= lt!1227739 0)))

(declare-fun e!2213475 () Int)

(assert (=> d!1055373 (= lt!1227739 e!2213475)))

(declare-fun c!620204 () Bool)

(assert (=> d!1055373 (= c!620204 ((_ is Nil!37547) tokens!494))))

(assert (=> d!1055373 (= (size!28639 tokens!494) lt!1227739)))

(declare-fun b!3577988 () Bool)

(assert (=> b!3577988 (= e!2213475 0)))

(declare-fun b!3577989 () Bool)

(assert (=> b!3577989 (= e!2213475 (+ 1 (size!28639 (t!290030 tokens!494))))))

(assert (= (and d!1055373 c!620204) b!3577988))

(assert (= (and d!1055373 (not c!620204)) b!3577989))

(assert (=> b!3577989 m!4071187))

(assert (=> b!3577581 d!1055373))

(declare-fun b!3577990 () Bool)

(declare-fun e!2213477 () Bool)

(assert (=> b!3577990 (= e!2213477 (inv!17 (value!177780 separatorToken!241)))))

(declare-fun b!3577992 () Bool)

(declare-fun e!2213476 () Bool)

(assert (=> b!3577992 (= e!2213476 (inv!15 (value!177780 separatorToken!241)))))

(declare-fun b!3577993 () Bool)

(declare-fun e!2213478 () Bool)

(assert (=> b!3577993 (= e!2213478 (inv!16 (value!177780 separatorToken!241)))))

(declare-fun b!3577994 () Bool)

(assert (=> b!3577994 (= e!2213478 e!2213477)))

(declare-fun c!620206 () Bool)

(assert (=> b!3577994 (= c!620206 ((_ is IntegerValue!17251) (value!177780 separatorToken!241)))))

(declare-fun d!1055375 () Bool)

(declare-fun c!620205 () Bool)

(assert (=> d!1055375 (= c!620205 ((_ is IntegerValue!17250) (value!177780 separatorToken!241)))))

(assert (=> d!1055375 (= (inv!21 (value!177780 separatorToken!241)) e!2213478)))

(declare-fun b!3577991 () Bool)

(declare-fun res!1443463 () Bool)

(assert (=> b!3577991 (=> res!1443463 e!2213476)))

(assert (=> b!3577991 (= res!1443463 (not ((_ is IntegerValue!17252) (value!177780 separatorToken!241))))))

(assert (=> b!3577991 (= e!2213477 e!2213476)))

(assert (= (and d!1055375 c!620205) b!3577993))

(assert (= (and d!1055375 (not c!620205)) b!3577994))

(assert (= (and b!3577994 c!620206) b!3577990))

(assert (= (and b!3577994 (not c!620206)) b!3577991))

(assert (= (and b!3577991 (not res!1443463)) b!3577992))

(declare-fun m!4071639 () Bool)

(assert (=> b!3577990 m!4071639))

(declare-fun m!4071641 () Bool)

(assert (=> b!3577992 m!4071641))

(declare-fun m!4071643 () Bool)

(assert (=> b!3577993 m!4071643))

(assert (=> b!3577598 d!1055375))

(declare-fun d!1055377 () Bool)

(declare-fun lt!1227742 () Bool)

(assert (=> d!1055377 (= lt!1227742 (select (content!5328 lt!1227580) lt!1227595))))

(declare-fun e!2213484 () Bool)

(assert (=> d!1055377 (= lt!1227742 e!2213484)))

(declare-fun res!1443468 () Bool)

(assert (=> d!1055377 (=> (not res!1443468) (not e!2213484))))

(assert (=> d!1055377 (= res!1443468 ((_ is Cons!37545) lt!1227580))))

(assert (=> d!1055377 (= (contains!7118 lt!1227580 lt!1227595) lt!1227742)))

(declare-fun b!3577999 () Bool)

(declare-fun e!2213483 () Bool)

(assert (=> b!3577999 (= e!2213484 e!2213483)))

(declare-fun res!1443469 () Bool)

(assert (=> b!3577999 (=> res!1443469 e!2213483)))

(assert (=> b!3577999 (= res!1443469 (= (h!42965 lt!1227580) lt!1227595))))

(declare-fun b!3578000 () Bool)

(assert (=> b!3578000 (= e!2213483 (contains!7118 (t!290028 lt!1227580) lt!1227595))))

(assert (= (and d!1055377 res!1443468) b!3577999))

(assert (= (and b!3577999 (not res!1443469)) b!3578000))

(declare-fun m!4071689 () Bool)

(assert (=> d!1055377 m!4071689))

(declare-fun m!4071691 () Bool)

(assert (=> d!1055377 m!4071691))

(declare-fun m!4071693 () Bool)

(assert (=> b!3578000 m!4071693))

(assert (=> b!3577620 d!1055377))

(declare-fun d!1055381 () Bool)

(declare-fun dynLambda!16158 (Int Token!10406) Bool)

(assert (=> d!1055381 (dynLambda!16158 lambda!123641 (h!42967 (t!290030 tokens!494)))))

(declare-fun lt!1227745 () Unit!53577)

(declare-fun choose!20828 (List!37671 Int Token!10406) Unit!53577)

(assert (=> d!1055381 (= lt!1227745 (choose!20828 tokens!494 lambda!123641 (h!42967 (t!290030 tokens!494))))))

(declare-fun e!2213487 () Bool)

(assert (=> d!1055381 e!2213487))

(declare-fun res!1443472 () Bool)

(assert (=> d!1055381 (=> (not res!1443472) (not e!2213487))))

(assert (=> d!1055381 (= res!1443472 (forall!8130 tokens!494 lambda!123641))))

(assert (=> d!1055381 (= (forallContained!1467 tokens!494 lambda!123641 (h!42967 (t!290030 tokens!494))) lt!1227745)))

(declare-fun b!3578003 () Bool)

(declare-fun contains!7121 (List!37671 Token!10406) Bool)

(assert (=> b!3578003 (= e!2213487 (contains!7121 tokens!494 (h!42967 (t!290030 tokens!494))))))

(assert (= (and d!1055381 res!1443472) b!3578003))

(declare-fun b_lambda!105689 () Bool)

(assert (=> (not b_lambda!105689) (not d!1055381)))

(declare-fun m!4071697 () Bool)

(assert (=> d!1055381 m!4071697))

(declare-fun m!4071699 () Bool)

(assert (=> d!1055381 m!4071699))

(declare-fun m!4071701 () Bool)

(assert (=> d!1055381 m!4071701))

(declare-fun m!4071703 () Bool)

(assert (=> b!3578003 m!4071703))

(assert (=> b!3577620 d!1055381))

(declare-fun d!1055385 () Bool)

(declare-fun lt!1227748 () BalanceConc!22444)

(assert (=> d!1055385 (= (list!13781 lt!1227748) (printList!1657 thiss!18206 (list!13785 lt!1227605)))))

(assert (=> d!1055385 (= lt!1227748 (printTailRec!1604 thiss!18206 lt!1227605 0 (BalanceConc!22445 Empty!11415)))))

(assert (=> d!1055385 (= (print!2174 thiss!18206 lt!1227605) lt!1227748)))

(declare-fun bs!569725 () Bool)

(assert (= bs!569725 d!1055385))

(declare-fun m!4071705 () Bool)

(assert (=> bs!569725 m!4071705))

(declare-fun m!4071707 () Bool)

(assert (=> bs!569725 m!4071707))

(assert (=> bs!569725 m!4071707))

(declare-fun m!4071709 () Bool)

(assert (=> bs!569725 m!4071709))

(assert (=> bs!569725 m!4071117))

(assert (=> b!3577620 d!1055385))

(declare-fun b!3578016 () Bool)

(declare-fun e!2213498 () Option!7711)

(declare-fun e!2213499 () Option!7711)

(assert (=> b!3578016 (= e!2213498 e!2213499)))

(declare-fun c!620212 () Bool)

(assert (=> b!3578016 (= c!620212 (and ((_ is Cons!37546) rules!2135) (not (= (tag!6184 (h!42966 rules!2135)) (tag!6184 (rule!8228 separatorToken!241))))))))

(declare-fun b!3578017 () Bool)

(declare-fun lt!1227755 () Unit!53577)

(declare-fun lt!1227757 () Unit!53577)

(assert (=> b!3578017 (= lt!1227755 lt!1227757)))

(assert (=> b!3578017 (rulesInvariant!4506 thiss!18206 (t!290029 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!488 (LexerInterface!5109 Rule!10840 List!37670) Unit!53577)

(assert (=> b!3578017 (= lt!1227757 (lemmaInvariantOnRulesThenOnTail!488 thiss!18206 (h!42966 rules!2135) (t!290029 rules!2135)))))

(assert (=> b!3578017 (= e!2213499 (getRuleFromTag!1163 thiss!18206 (t!290029 rules!2135) (tag!6184 (rule!8228 separatorToken!241))))))

(declare-fun b!3578018 () Bool)

(assert (=> b!3578018 (= e!2213499 None!7710)))

(declare-fun b!3578019 () Bool)

(declare-fun e!2213497 () Bool)

(declare-fun lt!1227756 () Option!7711)

(assert (=> b!3578019 (= e!2213497 (= (tag!6184 (get!12089 lt!1227756)) (tag!6184 (rule!8228 separatorToken!241))))))

(declare-fun b!3578020 () Bool)

(assert (=> b!3578020 (= e!2213498 (Some!7710 (h!42966 rules!2135)))))

(declare-fun b!3578021 () Bool)

(declare-fun e!2213496 () Bool)

(assert (=> b!3578021 (= e!2213496 e!2213497)))

(declare-fun res!1443477 () Bool)

(assert (=> b!3578021 (=> (not res!1443477) (not e!2213497))))

(declare-fun contains!7122 (List!37670 Rule!10840) Bool)

(assert (=> b!3578021 (= res!1443477 (contains!7122 rules!2135 (get!12089 lt!1227756)))))

(declare-fun d!1055387 () Bool)

(assert (=> d!1055387 e!2213496))

(declare-fun res!1443478 () Bool)

(assert (=> d!1055387 (=> res!1443478 e!2213496)))

(declare-fun isEmpty!22105 (Option!7711) Bool)

(assert (=> d!1055387 (= res!1443478 (isEmpty!22105 lt!1227756))))

(assert (=> d!1055387 (= lt!1227756 e!2213498)))

(declare-fun c!620211 () Bool)

(assert (=> d!1055387 (= c!620211 (and ((_ is Cons!37546) rules!2135) (= (tag!6184 (h!42966 rules!2135)) (tag!6184 (rule!8228 separatorToken!241)))))))

(assert (=> d!1055387 (rulesInvariant!4506 thiss!18206 rules!2135)))

(assert (=> d!1055387 (= (getRuleFromTag!1163 thiss!18206 rules!2135 (tag!6184 (rule!8228 separatorToken!241))) lt!1227756)))

(assert (= (and d!1055387 c!620211) b!3578020))

(assert (= (and d!1055387 (not c!620211)) b!3578016))

(assert (= (and b!3578016 c!620212) b!3578017))

(assert (= (and b!3578016 (not c!620212)) b!3578018))

(assert (= (and d!1055387 (not res!1443478)) b!3578021))

(assert (= (and b!3578021 res!1443477) b!3578019))

(declare-fun m!4071711 () Bool)

(assert (=> b!3578017 m!4071711))

(declare-fun m!4071713 () Bool)

(assert (=> b!3578017 m!4071713))

(declare-fun m!4071715 () Bool)

(assert (=> b!3578017 m!4071715))

(declare-fun m!4071717 () Bool)

(assert (=> b!3578019 m!4071717))

(assert (=> b!3578021 m!4071717))

(assert (=> b!3578021 m!4071717))

(declare-fun m!4071719 () Bool)

(assert (=> b!3578021 m!4071719))

(declare-fun m!4071721 () Bool)

(assert (=> d!1055387 m!4071721))

(assert (=> d!1055387 m!4071039))

(assert (=> b!3577620 d!1055387))

(declare-fun d!1055389 () Bool)

(assert (=> d!1055389 (= (isDefined!5948 lt!1227599) (not (isEmpty!22105 lt!1227599)))))

(declare-fun bs!569726 () Bool)

(assert (= bs!569726 d!1055389))

(declare-fun m!4071723 () Bool)

(assert (=> bs!569726 m!4071723))

(assert (=> b!3577620 d!1055389))

(declare-fun b!3578022 () Bool)

(declare-fun e!2213500 () Bool)

(declare-fun e!2213502 () Bool)

(assert (=> b!3578022 (= e!2213500 e!2213502)))

(declare-fun res!1443480 () Bool)

(declare-fun lt!1227758 () tuple2!37476)

(assert (=> b!3578022 (= res!1443480 (< (size!28643 (_2!21872 lt!1227758)) (size!28643 lt!1227600)))))

(assert (=> b!3578022 (=> (not res!1443480) (not e!2213502))))

(declare-fun b!3578023 () Bool)

(declare-fun e!2213501 () Bool)

(assert (=> b!3578023 (= e!2213501 (= (list!13781 (_2!21872 lt!1227758)) (_2!21875 (lexList!1503 thiss!18206 rules!2135 (list!13781 lt!1227600)))))))

(declare-fun b!3578024 () Bool)

(assert (=> b!3578024 (= e!2213502 (not (isEmpty!22097 (_1!21872 lt!1227758))))))

(declare-fun d!1055391 () Bool)

(assert (=> d!1055391 e!2213501))

(declare-fun res!1443481 () Bool)

(assert (=> d!1055391 (=> (not res!1443481) (not e!2213501))))

(assert (=> d!1055391 (= res!1443481 e!2213500)))

(declare-fun c!620213 () Bool)

(assert (=> d!1055391 (= c!620213 (> (size!28641 (_1!21872 lt!1227758)) 0))))

(assert (=> d!1055391 (= lt!1227758 (lexTailRecV2!1111 thiss!18206 rules!2135 lt!1227600 (BalanceConc!22445 Empty!11415) lt!1227600 (BalanceConc!22447 Empty!11416)))))

(assert (=> d!1055391 (= (lex!2435 thiss!18206 rules!2135 lt!1227600) lt!1227758)))

(declare-fun b!3578025 () Bool)

(assert (=> b!3578025 (= e!2213500 (= (_2!21872 lt!1227758) lt!1227600))))

(declare-fun b!3578026 () Bool)

(declare-fun res!1443479 () Bool)

(assert (=> b!3578026 (=> (not res!1443479) (not e!2213501))))

(assert (=> b!3578026 (= res!1443479 (= (list!13785 (_1!21872 lt!1227758)) (_1!21875 (lexList!1503 thiss!18206 rules!2135 (list!13781 lt!1227600)))))))

(assert (= (and d!1055391 c!620213) b!3578022))

(assert (= (and d!1055391 (not c!620213)) b!3578025))

(assert (= (and b!3578022 res!1443480) b!3578024))

(assert (= (and d!1055391 res!1443481) b!3578026))

(assert (= (and b!3578026 res!1443479) b!3578023))

(declare-fun m!4071725 () Bool)

(assert (=> b!3578024 m!4071725))

(declare-fun m!4071727 () Bool)

(assert (=> b!3578022 m!4071727))

(declare-fun m!4071729 () Bool)

(assert (=> b!3578022 m!4071729))

(declare-fun m!4071731 () Bool)

(assert (=> b!3578023 m!4071731))

(declare-fun m!4071733 () Bool)

(assert (=> b!3578023 m!4071733))

(assert (=> b!3578023 m!4071733))

(declare-fun m!4071735 () Bool)

(assert (=> b!3578023 m!4071735))

(declare-fun m!4071737 () Bool)

(assert (=> d!1055391 m!4071737))

(declare-fun m!4071739 () Bool)

(assert (=> d!1055391 m!4071739))

(declare-fun m!4071741 () Bool)

(assert (=> b!3578026 m!4071741))

(assert (=> b!3578026 m!4071733))

(assert (=> b!3578026 m!4071733))

(assert (=> b!3578026 m!4071735))

(assert (=> b!3577620 d!1055391))

(declare-fun d!1055393 () Bool)

(assert (=> d!1055393 (= (head!7455 lt!1227587) (h!42965 lt!1227587))))

(assert (=> b!3577620 d!1055393))

(declare-fun d!1055395 () Bool)

(declare-fun lt!1227759 () Bool)

(assert (=> d!1055395 (= lt!1227759 (select (content!5328 lt!1227580) lt!1227592))))

(declare-fun e!2213504 () Bool)

(assert (=> d!1055395 (= lt!1227759 e!2213504)))

(declare-fun res!1443482 () Bool)

(assert (=> d!1055395 (=> (not res!1443482) (not e!2213504))))

(assert (=> d!1055395 (= res!1443482 ((_ is Cons!37545) lt!1227580))))

(assert (=> d!1055395 (= (contains!7118 lt!1227580 lt!1227592) lt!1227759)))

(declare-fun b!3578027 () Bool)

(declare-fun e!2213503 () Bool)

(assert (=> b!3578027 (= e!2213504 e!2213503)))

(declare-fun res!1443483 () Bool)

(assert (=> b!3578027 (=> res!1443483 e!2213503)))

(assert (=> b!3578027 (= res!1443483 (= (h!42965 lt!1227580) lt!1227592))))

(declare-fun b!3578028 () Bool)

(assert (=> b!3578028 (= e!2213503 (contains!7118 (t!290028 lt!1227580) lt!1227592))))

(assert (= (and d!1055395 res!1443482) b!3578027))

(assert (= (and b!3578027 (not res!1443483)) b!3578028))

(assert (=> d!1055395 m!4071689))

(declare-fun m!4071743 () Bool)

(assert (=> d!1055395 m!4071743))

(declare-fun m!4071745 () Bool)

(assert (=> b!3578028 m!4071745))

(assert (=> b!3577620 d!1055395))

(declare-fun d!1055397 () Bool)

(assert (=> d!1055397 (= (maxPrefixOneRule!1816 thiss!18206 (rule!8228 (h!42967 tokens!494)) lt!1227614) (Some!7711 (tuple2!37479 (Token!10407 (apply!9047 (transformation!5520 (rule!8228 (h!42967 tokens!494))) (seqFromList!4094 lt!1227614)) (rule!8228 (h!42967 tokens!494)) (size!28640 lt!1227614) lt!1227614) Nil!37545)))))

(declare-fun lt!1227762 () Unit!53577)

(declare-fun choose!20829 (LexerInterface!5109 List!37670 List!37669 List!37669 List!37669 Rule!10840) Unit!53577)

(assert (=> d!1055397 (= lt!1227762 (choose!20829 thiss!18206 rules!2135 lt!1227614 lt!1227614 Nil!37545 (rule!8228 (h!42967 tokens!494))))))

(assert (=> d!1055397 (not (isEmpty!22096 rules!2135))))

(assert (=> d!1055397 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!909 thiss!18206 rules!2135 lt!1227614 lt!1227614 Nil!37545 (rule!8228 (h!42967 tokens!494))) lt!1227762)))

(declare-fun bs!569727 () Bool)

(assert (= bs!569727 d!1055397))

(assert (=> bs!569727 m!4071103))

(assert (=> bs!569727 m!4071033))

(assert (=> bs!569727 m!4071093))

(assert (=> bs!569727 m!4071063))

(declare-fun m!4071747 () Bool)

(assert (=> bs!569727 m!4071747))

(declare-fun m!4071749 () Bool)

(assert (=> bs!569727 m!4071749))

(assert (=> bs!569727 m!4071063))

(assert (=> b!3577620 d!1055397))

(declare-fun d!1055399 () Bool)

(assert (=> d!1055399 (= (maxPrefixOneRule!1816 thiss!18206 (rule!8228 (h!42967 (t!290030 tokens!494))) lt!1227568) (Some!7711 (tuple2!37479 (Token!10407 (apply!9047 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) (seqFromList!4094 lt!1227568)) (rule!8228 (h!42967 (t!290030 tokens!494))) (size!28640 lt!1227568) lt!1227568) Nil!37545)))))

(declare-fun lt!1227763 () Unit!53577)

(assert (=> d!1055399 (= lt!1227763 (choose!20829 thiss!18206 rules!2135 lt!1227568 lt!1227568 Nil!37545 (rule!8228 (h!42967 (t!290030 tokens!494)))))))

(assert (=> d!1055399 (not (isEmpty!22096 rules!2135))))

(assert (=> d!1055399 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!909 thiss!18206 rules!2135 lt!1227568 lt!1227568 Nil!37545 (rule!8228 (h!42967 (t!290030 tokens!494)))) lt!1227763)))

(declare-fun bs!569728 () Bool)

(assert (= bs!569728 d!1055399))

(assert (=> bs!569728 m!4071087))

(assert (=> bs!569728 m!4071033))

(assert (=> bs!569728 m!4071109))

(assert (=> bs!569728 m!4071105))

(assert (=> bs!569728 m!4071107))

(declare-fun m!4071751 () Bool)

(assert (=> bs!569728 m!4071751))

(assert (=> bs!569728 m!4071105))

(assert (=> b!3577620 d!1055399))

(declare-fun d!1055401 () Bool)

(assert (=> d!1055401 (= (seqFromList!4093 (t!290030 tokens!494)) (fromListB!1894 (t!290030 tokens!494)))))

(declare-fun bs!569729 () Bool)

(assert (= bs!569729 d!1055401))

(declare-fun m!4071753 () Bool)

(assert (=> bs!569729 m!4071753))

(assert (=> b!3577620 d!1055401))

(declare-fun b!3578045 () Bool)

(declare-fun e!2213513 () List!37669)

(declare-fun call!259233 () List!37669)

(assert (=> b!3578045 (= e!2213513 call!259233)))

(declare-fun bm!259227 () Bool)

(declare-fun call!259235 () List!37669)

(declare-fun call!259232 () List!37669)

(assert (=> bm!259227 (= call!259235 call!259232)))

(declare-fun b!3578046 () Bool)

(declare-fun e!2213515 () List!37669)

(assert (=> b!3578046 (= e!2213515 call!259232)))

(declare-fun b!3578047 () Bool)

(assert (=> b!3578047 (= e!2213513 call!259233)))

(declare-fun call!259234 () List!37669)

(declare-fun bm!259228 () Bool)

(declare-fun c!620223 () Bool)

(assert (=> bm!259228 (= call!259233 (++!9343 (ite c!620223 call!259235 call!259234) (ite c!620223 call!259234 call!259235)))))

(declare-fun b!3578048 () Bool)

(declare-fun e!2213514 () List!37669)

(assert (=> b!3578048 (= e!2213514 Nil!37545)))

(declare-fun b!3578049 () Bool)

(assert (=> b!3578049 (= e!2213515 e!2213513)))

(assert (=> b!3578049 (= c!620223 ((_ is Union!10279) (regex!5520 (rule!8228 (h!42967 tokens!494)))))))

(declare-fun b!3578050 () Bool)

(declare-fun e!2213516 () List!37669)

(assert (=> b!3578050 (= e!2213516 (Cons!37545 (c!620122 (regex!5520 (rule!8228 (h!42967 tokens!494)))) Nil!37545))))

(declare-fun d!1055403 () Bool)

(declare-fun c!620225 () Bool)

(assert (=> d!1055403 (= c!620225 (or ((_ is EmptyExpr!10279) (regex!5520 (rule!8228 (h!42967 tokens!494)))) ((_ is EmptyLang!10279) (regex!5520 (rule!8228 (h!42967 tokens!494))))))))

(assert (=> d!1055403 (= (usedCharacters!754 (regex!5520 (rule!8228 (h!42967 tokens!494)))) e!2213514)))

(declare-fun b!3578051 () Bool)

(assert (=> b!3578051 (= e!2213514 e!2213516)))

(declare-fun c!620222 () Bool)

(assert (=> b!3578051 (= c!620222 ((_ is ElementMatch!10279) (regex!5520 (rule!8228 (h!42967 tokens!494)))))))

(declare-fun bm!259229 () Bool)

(assert (=> bm!259229 (= call!259234 (usedCharacters!754 (ite c!620223 (regTwo!21071 (regex!5520 (rule!8228 (h!42967 tokens!494)))) (regOne!21070 (regex!5520 (rule!8228 (h!42967 tokens!494)))))))))

(declare-fun b!3578052 () Bool)

(declare-fun c!620224 () Bool)

(assert (=> b!3578052 (= c!620224 ((_ is Star!10279) (regex!5520 (rule!8228 (h!42967 tokens!494)))))))

(assert (=> b!3578052 (= e!2213516 e!2213515)))

(declare-fun bm!259230 () Bool)

(assert (=> bm!259230 (= call!259232 (usedCharacters!754 (ite c!620224 (reg!10608 (regex!5520 (rule!8228 (h!42967 tokens!494)))) (ite c!620223 (regOne!21071 (regex!5520 (rule!8228 (h!42967 tokens!494)))) (regTwo!21070 (regex!5520 (rule!8228 (h!42967 tokens!494))))))))))

(assert (= (and d!1055403 c!620225) b!3578048))

(assert (= (and d!1055403 (not c!620225)) b!3578051))

(assert (= (and b!3578051 c!620222) b!3578050))

(assert (= (and b!3578051 (not c!620222)) b!3578052))

(assert (= (and b!3578052 c!620224) b!3578046))

(assert (= (and b!3578052 (not c!620224)) b!3578049))

(assert (= (and b!3578049 c!620223) b!3578045))

(assert (= (and b!3578049 (not c!620223)) b!3578047))

(assert (= (or b!3578045 b!3578047) bm!259229))

(assert (= (or b!3578045 b!3578047) bm!259227))

(assert (= (or b!3578045 b!3578047) bm!259228))

(assert (= (or b!3578046 bm!259227) bm!259230))

(declare-fun m!4071755 () Bool)

(assert (=> bm!259228 m!4071755))

(declare-fun m!4071757 () Bool)

(assert (=> bm!259229 m!4071757))

(declare-fun m!4071759 () Bool)

(assert (=> bm!259230 m!4071759))

(assert (=> b!3577620 d!1055403))

(declare-fun d!1055405 () Bool)

(assert (=> d!1055405 (rulesProduceIndividualToken!2601 thiss!18206 rules!2135 (h!42967 tokens!494))))

(declare-fun lt!1227790 () Unit!53577)

(declare-fun choose!20830 (LexerInterface!5109 List!37670 List!37671 Token!10406) Unit!53577)

(assert (=> d!1055405 (= lt!1227790 (choose!20830 thiss!18206 rules!2135 tokens!494 (h!42967 tokens!494)))))

(assert (=> d!1055405 (not (isEmpty!22096 rules!2135))))

(assert (=> d!1055405 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1098 thiss!18206 rules!2135 tokens!494 (h!42967 tokens!494)) lt!1227790)))

(declare-fun bs!569734 () Bool)

(assert (= bs!569734 d!1055405))

(assert (=> bs!569734 m!4071001))

(declare-fun m!4071827 () Bool)

(assert (=> bs!569734 m!4071827))

(assert (=> bs!569734 m!4071033))

(assert (=> b!3577620 d!1055405))

(declare-fun d!1055419 () Bool)

(assert (=> d!1055419 (not (contains!7118 (usedCharacters!754 (regex!5520 (rule!8228 (h!42967 tokens!494)))) lt!1227592))))

(declare-fun lt!1227795 () Unit!53577)

(declare-fun choose!20831 (LexerInterface!5109 List!37670 List!37670 Rule!10840 Rule!10840 C!20744) Unit!53577)

(assert (=> d!1055419 (= lt!1227795 (choose!20831 thiss!18206 rules!2135 rules!2135 (rule!8228 (h!42967 tokens!494)) (rule!8228 separatorToken!241) lt!1227592))))

(assert (=> d!1055419 (rulesInvariant!4506 thiss!18206 rules!2135)))

(assert (=> d!1055419 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!320 thiss!18206 rules!2135 rules!2135 (rule!8228 (h!42967 tokens!494)) (rule!8228 separatorToken!241) lt!1227592) lt!1227795)))

(declare-fun bs!569735 () Bool)

(assert (= bs!569735 d!1055419))

(assert (=> bs!569735 m!4071099))

(assert (=> bs!569735 m!4071099))

(assert (=> bs!569735 m!4071147))

(declare-fun m!4071835 () Bool)

(assert (=> bs!569735 m!4071835))

(assert (=> bs!569735 m!4071039))

(assert (=> b!3577620 d!1055419))

(declare-fun d!1055423 () Bool)

(declare-fun lt!1227802 () Int)

(assert (=> d!1055423 (= lt!1227802 (size!28639 (list!13785 (_1!21872 lt!1227571))))))

(declare-fun size!28645 (Conc!11416) Int)

(assert (=> d!1055423 (= lt!1227802 (size!28645 (c!620124 (_1!21872 lt!1227571))))))

(assert (=> d!1055423 (= (size!28641 (_1!21872 lt!1227571)) lt!1227802)))

(declare-fun bs!569737 () Bool)

(assert (= bs!569737 d!1055423))

(declare-fun m!4071855 () Bool)

(assert (=> bs!569737 m!4071855))

(assert (=> bs!569737 m!4071855))

(declare-fun m!4071857 () Bool)

(assert (=> bs!569737 m!4071857))

(declare-fun m!4071859 () Bool)

(assert (=> bs!569737 m!4071859))

(assert (=> b!3577620 d!1055423))

(declare-fun d!1055429 () Bool)

(declare-fun lt!1227804 () Bool)

(declare-fun e!2213553 () Bool)

(assert (=> d!1055429 (= lt!1227804 e!2213553)))

(declare-fun res!1443517 () Bool)

(assert (=> d!1055429 (=> (not res!1443517) (not e!2213553))))

(assert (=> d!1055429 (= res!1443517 (= (list!13785 (_1!21872 (lex!2435 thiss!18206 rules!2135 (print!2174 thiss!18206 (singletonSeq!2616 (h!42967 (t!290030 tokens!494))))))) (list!13785 (singletonSeq!2616 (h!42967 (t!290030 tokens!494))))))))

(declare-fun e!2213552 () Bool)

(assert (=> d!1055429 (= lt!1227804 e!2213552)))

(declare-fun res!1443518 () Bool)

(assert (=> d!1055429 (=> (not res!1443518) (not e!2213552))))

(declare-fun lt!1227803 () tuple2!37476)

(assert (=> d!1055429 (= res!1443518 (= (size!28641 (_1!21872 lt!1227803)) 1))))

(assert (=> d!1055429 (= lt!1227803 (lex!2435 thiss!18206 rules!2135 (print!2174 thiss!18206 (singletonSeq!2616 (h!42967 (t!290030 tokens!494))))))))

(assert (=> d!1055429 (not (isEmpty!22096 rules!2135))))

(assert (=> d!1055429 (= (rulesProduceIndividualToken!2601 thiss!18206 rules!2135 (h!42967 (t!290030 tokens!494))) lt!1227804)))

(declare-fun b!3578128 () Bool)

(declare-fun res!1443519 () Bool)

(assert (=> b!3578128 (=> (not res!1443519) (not e!2213552))))

(assert (=> b!3578128 (= res!1443519 (= (apply!9046 (_1!21872 lt!1227803) 0) (h!42967 (t!290030 tokens!494))))))

(declare-fun b!3578129 () Bool)

(assert (=> b!3578129 (= e!2213552 (isEmpty!22095 (_2!21872 lt!1227803)))))

(declare-fun b!3578130 () Bool)

(assert (=> b!3578130 (= e!2213553 (isEmpty!22095 (_2!21872 (lex!2435 thiss!18206 rules!2135 (print!2174 thiss!18206 (singletonSeq!2616 (h!42967 (t!290030 tokens!494))))))))))

(assert (= (and d!1055429 res!1443518) b!3578128))

(assert (= (and b!3578128 res!1443519) b!3578129))

(assert (= (and d!1055429 res!1443517) b!3578130))

(assert (=> d!1055429 m!4071167))

(declare-fun m!4071863 () Bool)

(assert (=> d!1055429 m!4071863))

(declare-fun m!4071865 () Bool)

(assert (=> d!1055429 m!4071865))

(declare-fun m!4071867 () Bool)

(assert (=> d!1055429 m!4071867))

(assert (=> d!1055429 m!4071033))

(declare-fun m!4071869 () Bool)

(assert (=> d!1055429 m!4071869))

(assert (=> d!1055429 m!4071167))

(assert (=> d!1055429 m!4071863))

(assert (=> d!1055429 m!4071167))

(declare-fun m!4071871 () Bool)

(assert (=> d!1055429 m!4071871))

(declare-fun m!4071873 () Bool)

(assert (=> b!3578128 m!4071873))

(declare-fun m!4071875 () Bool)

(assert (=> b!3578129 m!4071875))

(assert (=> b!3578130 m!4071167))

(assert (=> b!3578130 m!4071167))

(assert (=> b!3578130 m!4071863))

(assert (=> b!3578130 m!4071863))

(assert (=> b!3578130 m!4071865))

(declare-fun m!4071877 () Bool)

(assert (=> b!3578130 m!4071877))

(assert (=> b!3577620 d!1055429))

(declare-fun b!3578182 () Bool)

(declare-fun e!2213584 () Option!7712)

(declare-fun call!259254 () Option!7712)

(assert (=> b!3578182 (= e!2213584 call!259254)))

(declare-fun b!3578183 () Bool)

(declare-fun lt!1227834 () Option!7712)

(declare-fun lt!1227836 () Option!7712)

(assert (=> b!3578183 (= e!2213584 (ite (and ((_ is None!7711) lt!1227834) ((_ is None!7711) lt!1227836)) None!7711 (ite ((_ is None!7711) lt!1227836) lt!1227834 (ite ((_ is None!7711) lt!1227834) lt!1227836 (ite (>= (size!28638 (_1!21873 (v!37341 lt!1227834))) (size!28638 (_1!21873 (v!37341 lt!1227836)))) lt!1227834 lt!1227836)))))))

(assert (=> b!3578183 (= lt!1227834 call!259254)))

(assert (=> b!3578183 (= lt!1227836 (maxPrefix!2649 thiss!18206 (t!290029 rules!2135) lt!1227598))))

(declare-fun b!3578184 () Bool)

(declare-fun res!1443558 () Bool)

(declare-fun e!2213583 () Bool)

(assert (=> b!3578184 (=> (not res!1443558) (not e!2213583))))

(declare-fun lt!1227835 () Option!7712)

(declare-fun get!12091 (Option!7712) tuple2!37478)

(assert (=> b!3578184 (= res!1443558 (= (++!9343 (list!13781 (charsOf!3534 (_1!21873 (get!12091 lt!1227835)))) (_2!21873 (get!12091 lt!1227835))) lt!1227598))))

(declare-fun b!3578185 () Bool)

(declare-fun res!1443559 () Bool)

(assert (=> b!3578185 (=> (not res!1443559) (not e!2213583))))

(assert (=> b!3578185 (= res!1443559 (= (list!13781 (charsOf!3534 (_1!21873 (get!12091 lt!1227835)))) (originalCharacters!6234 (_1!21873 (get!12091 lt!1227835)))))))

(declare-fun b!3578187 () Bool)

(declare-fun res!1443556 () Bool)

(assert (=> b!3578187 (=> (not res!1443556) (not e!2213583))))

(assert (=> b!3578187 (= res!1443556 (= (value!177780 (_1!21873 (get!12091 lt!1227835))) (apply!9047 (transformation!5520 (rule!8228 (_1!21873 (get!12091 lt!1227835)))) (seqFromList!4094 (originalCharacters!6234 (_1!21873 (get!12091 lt!1227835)))))))))

(declare-fun b!3578188 () Bool)

(declare-fun e!2213585 () Bool)

(assert (=> b!3578188 (= e!2213585 e!2213583)))

(declare-fun res!1443561 () Bool)

(assert (=> b!3578188 (=> (not res!1443561) (not e!2213583))))

(declare-fun isDefined!5950 (Option!7712) Bool)

(assert (=> b!3578188 (= res!1443561 (isDefined!5950 lt!1227835))))

(declare-fun b!3578189 () Bool)

(declare-fun res!1443560 () Bool)

(assert (=> b!3578189 (=> (not res!1443560) (not e!2213583))))

(assert (=> b!3578189 (= res!1443560 (< (size!28640 (_2!21873 (get!12091 lt!1227835))) (size!28640 lt!1227598)))))

(declare-fun bm!259249 () Bool)

(assert (=> bm!259249 (= call!259254 (maxPrefixOneRule!1816 thiss!18206 (h!42966 rules!2135) lt!1227598))))

(declare-fun b!3578190 () Bool)

(declare-fun res!1443557 () Bool)

(assert (=> b!3578190 (=> (not res!1443557) (not e!2213583))))

(assert (=> b!3578190 (= res!1443557 (matchR!4863 (regex!5520 (rule!8228 (_1!21873 (get!12091 lt!1227835)))) (list!13781 (charsOf!3534 (_1!21873 (get!12091 lt!1227835))))))))

(declare-fun b!3578186 () Bool)

(assert (=> b!3578186 (= e!2213583 (contains!7122 rules!2135 (rule!8228 (_1!21873 (get!12091 lt!1227835)))))))

(declare-fun d!1055435 () Bool)

(assert (=> d!1055435 e!2213585))

(declare-fun res!1443562 () Bool)

(assert (=> d!1055435 (=> res!1443562 e!2213585)))

(declare-fun isEmpty!22106 (Option!7712) Bool)

(assert (=> d!1055435 (= res!1443562 (isEmpty!22106 lt!1227835))))

(assert (=> d!1055435 (= lt!1227835 e!2213584)))

(declare-fun c!620254 () Bool)

(assert (=> d!1055435 (= c!620254 (and ((_ is Cons!37546) rules!2135) ((_ is Nil!37546) (t!290029 rules!2135))))))

(declare-fun lt!1227837 () Unit!53577)

(declare-fun lt!1227838 () Unit!53577)

(assert (=> d!1055435 (= lt!1227837 lt!1227838)))

(declare-fun isPrefix!2900 (List!37669 List!37669) Bool)

(assert (=> d!1055435 (isPrefix!2900 lt!1227598 lt!1227598)))

(declare-fun lemmaIsPrefixRefl!1859 (List!37669 List!37669) Unit!53577)

(assert (=> d!1055435 (= lt!1227838 (lemmaIsPrefixRefl!1859 lt!1227598 lt!1227598))))

(declare-fun rulesValidInductive!1909 (LexerInterface!5109 List!37670) Bool)

(assert (=> d!1055435 (rulesValidInductive!1909 thiss!18206 rules!2135)))

(assert (=> d!1055435 (= (maxPrefix!2649 thiss!18206 rules!2135 lt!1227598) lt!1227835)))

(assert (= (and d!1055435 c!620254) b!3578182))

(assert (= (and d!1055435 (not c!620254)) b!3578183))

(assert (= (or b!3578182 b!3578183) bm!259249))

(assert (= (and d!1055435 (not res!1443562)) b!3578188))

(assert (= (and b!3578188 res!1443561) b!3578185))

(assert (= (and b!3578185 res!1443559) b!3578189))

(assert (= (and b!3578189 res!1443560) b!3578184))

(assert (= (and b!3578184 res!1443558) b!3578187))

(assert (= (and b!3578187 res!1443556) b!3578190))

(assert (= (and b!3578190 res!1443557) b!3578186))

(declare-fun m!4071975 () Bool)

(assert (=> d!1055435 m!4071975))

(declare-fun m!4071977 () Bool)

(assert (=> d!1055435 m!4071977))

(declare-fun m!4071979 () Bool)

(assert (=> d!1055435 m!4071979))

(declare-fun m!4071981 () Bool)

(assert (=> d!1055435 m!4071981))

(declare-fun m!4071983 () Bool)

(assert (=> b!3578187 m!4071983))

(declare-fun m!4071985 () Bool)

(assert (=> b!3578187 m!4071985))

(assert (=> b!3578187 m!4071985))

(declare-fun m!4071987 () Bool)

(assert (=> b!3578187 m!4071987))

(declare-fun m!4071989 () Bool)

(assert (=> bm!259249 m!4071989))

(assert (=> b!3578186 m!4071983))

(declare-fun m!4071991 () Bool)

(assert (=> b!3578186 m!4071991))

(assert (=> b!3578184 m!4071983))

(declare-fun m!4071993 () Bool)

(assert (=> b!3578184 m!4071993))

(assert (=> b!3578184 m!4071993))

(declare-fun m!4071995 () Bool)

(assert (=> b!3578184 m!4071995))

(assert (=> b!3578184 m!4071995))

(declare-fun m!4071997 () Bool)

(assert (=> b!3578184 m!4071997))

(assert (=> b!3578190 m!4071983))

(assert (=> b!3578190 m!4071993))

(assert (=> b!3578190 m!4071993))

(assert (=> b!3578190 m!4071995))

(assert (=> b!3578190 m!4071995))

(declare-fun m!4071999 () Bool)

(assert (=> b!3578190 m!4071999))

(declare-fun m!4072001 () Bool)

(assert (=> b!3578183 m!4072001))

(assert (=> b!3578185 m!4071983))

(assert (=> b!3578185 m!4071993))

(assert (=> b!3578185 m!4071993))

(assert (=> b!3578185 m!4071995))

(assert (=> b!3578189 m!4071983))

(declare-fun m!4072003 () Bool)

(assert (=> b!3578189 m!4072003))

(declare-fun m!4072005 () Bool)

(assert (=> b!3578189 m!4072005))

(declare-fun m!4072007 () Bool)

(assert (=> b!3578188 m!4072007))

(assert (=> b!3577620 d!1055435))

(declare-fun d!1055455 () Bool)

(declare-fun dynLambda!16159 (Int BalanceConc!22444) TokenValue!5750)

(assert (=> d!1055455 (= (apply!9047 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) (seqFromList!4094 lt!1227568)) (dynLambda!16159 (toValue!7792 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (seqFromList!4094 lt!1227568)))))

(declare-fun b_lambda!105693 () Bool)

(assert (=> (not b_lambda!105693) (not d!1055455)))

(declare-fun tb!204201 () Bool)

(declare-fun t!290086 () Bool)

(assert (=> (and b!3577594 (= (toValue!7792 (transformation!5520 (rule!8228 separatorToken!241))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))) t!290086) tb!204201))

(declare-fun result!248888 () Bool)

(assert (=> tb!204201 (= result!248888 (inv!21 (dynLambda!16159 (toValue!7792 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (seqFromList!4094 lt!1227568))))))

(declare-fun m!4072009 () Bool)

(assert (=> tb!204201 m!4072009))

(assert (=> d!1055455 t!290086))

(declare-fun b_and!257833 () Bool)

(assert (= b_and!257779 (and (=> t!290086 result!248888) b_and!257833)))

(declare-fun t!290088 () Bool)

(declare-fun tb!204203 () Bool)

(assert (=> (and b!3577577 (= (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))) t!290088) tb!204203))

(declare-fun result!248892 () Bool)

(assert (= result!248892 result!248888))

(assert (=> d!1055455 t!290088))

(declare-fun b_and!257835 () Bool)

(assert (= b_and!257783 (and (=> t!290088 result!248892) b_and!257835)))

(declare-fun t!290090 () Bool)

(declare-fun tb!204205 () Bool)

(assert (=> (and b!3577582 (= (toValue!7792 (transformation!5520 (h!42966 rules!2135))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))) t!290090) tb!204205))

(declare-fun result!248894 () Bool)

(assert (= result!248894 result!248888))

(assert (=> d!1055455 t!290090))

(declare-fun b_and!257837 () Bool)

(assert (= b_and!257787 (and (=> t!290090 result!248894) b_and!257837)))

(assert (=> d!1055455 m!4071105))

(declare-fun m!4072011 () Bool)

(assert (=> d!1055455 m!4072011))

(assert (=> b!3577620 d!1055455))

(declare-fun d!1055457 () Bool)

(assert (=> d!1055457 (= (apply!9047 (transformation!5520 (rule!8228 (h!42967 tokens!494))) lt!1227596) (dynLambda!16159 (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) lt!1227596))))

(declare-fun b_lambda!105695 () Bool)

(assert (=> (not b_lambda!105695) (not d!1055457)))

(declare-fun t!290092 () Bool)

(declare-fun tb!204207 () Bool)

(assert (=> (and b!3577594 (= (toValue!7792 (transformation!5520 (rule!8228 separatorToken!241))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494))))) t!290092) tb!204207))

(declare-fun result!248896 () Bool)

(assert (=> tb!204207 (= result!248896 (inv!21 (dynLambda!16159 (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) lt!1227596)))))

(declare-fun m!4072013 () Bool)

(assert (=> tb!204207 m!4072013))

(assert (=> d!1055457 t!290092))

(declare-fun b_and!257839 () Bool)

(assert (= b_and!257833 (and (=> t!290092 result!248896) b_and!257839)))

(declare-fun t!290094 () Bool)

(declare-fun tb!204209 () Bool)

(assert (=> (and b!3577577 (= (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494))))) t!290094) tb!204209))

(declare-fun result!248898 () Bool)

(assert (= result!248898 result!248896))

(assert (=> d!1055457 t!290094))

(declare-fun b_and!257841 () Bool)

(assert (= b_and!257835 (and (=> t!290094 result!248898) b_and!257841)))

(declare-fun t!290096 () Bool)

(declare-fun tb!204211 () Bool)

(assert (=> (and b!3577582 (= (toValue!7792 (transformation!5520 (h!42966 rules!2135))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494))))) t!290096) tb!204211))

(declare-fun result!248900 () Bool)

(assert (= result!248900 result!248896))

(assert (=> d!1055457 t!290096))

(declare-fun b_and!257843 () Bool)

(assert (= b_and!257837 (and (=> t!290096 result!248900) b_and!257843)))

(declare-fun m!4072015 () Bool)

(assert (=> d!1055457 m!4072015))

(assert (=> b!3577620 d!1055457))

(declare-fun d!1055459 () Bool)

(declare-fun e!2213595 () Bool)

(assert (=> d!1055459 e!2213595))

(declare-fun res!1443570 () Bool)

(assert (=> d!1055459 (=> (not res!1443570) (not e!2213595))))

(assert (=> d!1055459 (= res!1443570 (isDefined!5948 (getRuleFromTag!1163 thiss!18206 rules!2135 (tag!6184 (rule!8228 (h!42967 (t!290030 tokens!494)))))))))

(declare-fun lt!1227847 () Unit!53577)

(declare-fun choose!20835 (LexerInterface!5109 List!37670 List!37669 Token!10406) Unit!53577)

(assert (=> d!1055459 (= lt!1227847 (choose!20835 thiss!18206 rules!2135 lt!1227568 (h!42967 (t!290030 tokens!494))))))

(assert (=> d!1055459 (rulesInvariant!4506 thiss!18206 rules!2135)))

(assert (=> d!1055459 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1163 thiss!18206 rules!2135 lt!1227568 (h!42967 (t!290030 tokens!494))) lt!1227847)))

(declare-fun b!3578200 () Bool)

(declare-fun res!1443571 () Bool)

(assert (=> b!3578200 (=> (not res!1443571) (not e!2213595))))

(assert (=> b!3578200 (= res!1443571 (matchR!4863 (regex!5520 (get!12089 (getRuleFromTag!1163 thiss!18206 rules!2135 (tag!6184 (rule!8228 (h!42967 (t!290030 tokens!494))))))) (list!13781 (charsOf!3534 (h!42967 (t!290030 tokens!494))))))))

(declare-fun b!3578201 () Bool)

(assert (=> b!3578201 (= e!2213595 (= (rule!8228 (h!42967 (t!290030 tokens!494))) (get!12089 (getRuleFromTag!1163 thiss!18206 rules!2135 (tag!6184 (rule!8228 (h!42967 (t!290030 tokens!494))))))))))

(assert (= (and d!1055459 res!1443570) b!3578200))

(assert (= (and b!3578200 res!1443571) b!3578201))

(assert (=> d!1055459 m!4071145))

(assert (=> d!1055459 m!4071145))

(declare-fun m!4072025 () Bool)

(assert (=> d!1055459 m!4072025))

(declare-fun m!4072027 () Bool)

(assert (=> d!1055459 m!4072027))

(assert (=> d!1055459 m!4071039))

(assert (=> b!3578200 m!4071145))

(assert (=> b!3578200 m!4071191))

(assert (=> b!3578200 m!4071191))

(assert (=> b!3578200 m!4071199))

(assert (=> b!3578200 m!4071145))

(declare-fun m!4072029 () Bool)

(assert (=> b!3578200 m!4072029))

(assert (=> b!3578200 m!4071199))

(declare-fun m!4072031 () Bool)

(assert (=> b!3578200 m!4072031))

(assert (=> b!3578201 m!4071145))

(assert (=> b!3578201 m!4071145))

(assert (=> b!3578201 m!4072029))

(assert (=> b!3577620 d!1055459))

(declare-fun d!1055465 () Bool)

(assert (=> d!1055465 (rulesProduceIndividualToken!2601 thiss!18206 rules!2135 (h!42967 (t!290030 tokens!494)))))

(declare-fun lt!1227848 () Unit!53577)

(assert (=> d!1055465 (= lt!1227848 (choose!20830 thiss!18206 rules!2135 tokens!494 (h!42967 (t!290030 tokens!494))))))

(assert (=> d!1055465 (not (isEmpty!22096 rules!2135))))

(assert (=> d!1055465 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1098 thiss!18206 rules!2135 tokens!494 (h!42967 (t!290030 tokens!494))) lt!1227848)))

(declare-fun bs!569743 () Bool)

(assert (= bs!569743 d!1055465))

(assert (=> bs!569743 m!4071135))

(declare-fun m!4072033 () Bool)

(assert (=> bs!569743 m!4072033))

(assert (=> bs!569743 m!4071033))

(assert (=> b!3577620 d!1055465))

(declare-fun d!1055467 () Bool)

(assert (=> d!1055467 (= (isDefined!5948 lt!1227606) (not (isEmpty!22105 lt!1227606)))))

(declare-fun bs!569744 () Bool)

(assert (= bs!569744 d!1055467))

(declare-fun m!4072035 () Bool)

(assert (=> bs!569744 m!4072035))

(assert (=> b!3577620 d!1055467))

(declare-fun d!1055469 () Bool)

(assert (=> d!1055469 (= (maxPrefix!2649 thiss!18206 rules!2135 (++!9343 (list!13781 (charsOf!3534 separatorToken!241)) lt!1227593)) (Some!7711 (tuple2!37479 separatorToken!241 lt!1227593)))))

(declare-fun lt!1227866 () Unit!53577)

(declare-fun choose!20836 (LexerInterface!5109 List!37670 Token!10406 Rule!10840 List!37669 Rule!10840) Unit!53577)

(assert (=> d!1055469 (= lt!1227866 (choose!20836 thiss!18206 rules!2135 separatorToken!241 (rule!8228 separatorToken!241) lt!1227593 (rule!8228 (h!42967 (t!290030 tokens!494)))))))

(assert (=> d!1055469 (not (isEmpty!22096 rules!2135))))

(assert (=> d!1055469 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!276 thiss!18206 rules!2135 separatorToken!241 (rule!8228 separatorToken!241) lt!1227593 (rule!8228 (h!42967 (t!290030 tokens!494)))) lt!1227866)))

(declare-fun bs!569749 () Bool)

(assert (= bs!569749 d!1055469))

(assert (=> bs!569749 m!4071193))

(declare-fun m!4072091 () Bool)

(assert (=> bs!569749 m!4072091))

(declare-fun m!4072093 () Bool)

(assert (=> bs!569749 m!4072093))

(declare-fun m!4072095 () Bool)

(assert (=> bs!569749 m!4072095))

(assert (=> bs!569749 m!4071209))

(assert (=> bs!569749 m!4072093))

(assert (=> bs!569749 m!4071033))

(assert (=> bs!569749 m!4071193))

(assert (=> bs!569749 m!4071209))

(assert (=> b!3577620 d!1055469))

(declare-fun d!1055485 () Bool)

(declare-fun lt!1227911 () BalanceConc!22444)

(declare-fun printListTailRec!744 (LexerInterface!5109 List!37671 List!37669) List!37669)

(declare-fun dropList!1261 (BalanceConc!22446 Int) List!37671)

(assert (=> d!1055485 (= (list!13781 lt!1227911) (printListTailRec!744 thiss!18206 (dropList!1261 lt!1227605 0) (list!13781 (BalanceConc!22445 Empty!11415))))))

(declare-fun e!2213647 () BalanceConc!22444)

(assert (=> d!1055485 (= lt!1227911 e!2213647)))

(declare-fun c!620277 () Bool)

(assert (=> d!1055485 (= c!620277 (>= 0 (size!28641 lt!1227605)))))

(declare-fun e!2213648 () Bool)

(assert (=> d!1055485 e!2213648))

(declare-fun res!1443614 () Bool)

(assert (=> d!1055485 (=> (not res!1443614) (not e!2213648))))

(assert (=> d!1055485 (= res!1443614 (>= 0 0))))

(assert (=> d!1055485 (= (printTailRec!1604 thiss!18206 lt!1227605 0 (BalanceConc!22445 Empty!11415)) lt!1227911)))

(declare-fun b!3578286 () Bool)

(assert (=> b!3578286 (= e!2213648 (<= 0 (size!28641 lt!1227605)))))

(declare-fun b!3578287 () Bool)

(assert (=> b!3578287 (= e!2213647 (BalanceConc!22445 Empty!11415))))

(declare-fun b!3578288 () Bool)

(declare-fun ++!9345 (BalanceConc!22444 BalanceConc!22444) BalanceConc!22444)

(assert (=> b!3578288 (= e!2213647 (printTailRec!1604 thiss!18206 lt!1227605 (+ 0 1) (++!9345 (BalanceConc!22445 Empty!11415) (charsOf!3534 (apply!9046 lt!1227605 0)))))))

(declare-fun lt!1227910 () List!37671)

(assert (=> b!3578288 (= lt!1227910 (list!13785 lt!1227605))))

(declare-fun lt!1227916 () Unit!53577)

(declare-fun lemmaDropApply!1219 (List!37671 Int) Unit!53577)

(assert (=> b!3578288 (= lt!1227916 (lemmaDropApply!1219 lt!1227910 0))))

(declare-fun head!7457 (List!37671) Token!10406)

(declare-fun drop!2081 (List!37671 Int) List!37671)

(declare-fun apply!9050 (List!37671 Int) Token!10406)

(assert (=> b!3578288 (= (head!7457 (drop!2081 lt!1227910 0)) (apply!9050 lt!1227910 0))))

(declare-fun lt!1227912 () Unit!53577)

(assert (=> b!3578288 (= lt!1227912 lt!1227916)))

(declare-fun lt!1227913 () List!37671)

(assert (=> b!3578288 (= lt!1227913 (list!13785 lt!1227605))))

(declare-fun lt!1227915 () Unit!53577)

(declare-fun lemmaDropTail!1103 (List!37671 Int) Unit!53577)

(assert (=> b!3578288 (= lt!1227915 (lemmaDropTail!1103 lt!1227913 0))))

(declare-fun tail!5545 (List!37671) List!37671)

(assert (=> b!3578288 (= (tail!5545 (drop!2081 lt!1227913 0)) (drop!2081 lt!1227913 (+ 0 1)))))

(declare-fun lt!1227914 () Unit!53577)

(assert (=> b!3578288 (= lt!1227914 lt!1227915)))

(assert (= (and d!1055485 res!1443614) b!3578286))

(assert (= (and d!1055485 c!620277) b!3578287))

(assert (= (and d!1055485 (not c!620277)) b!3578288))

(declare-fun m!4072287 () Bool)

(assert (=> d!1055485 m!4072287))

(declare-fun m!4072289 () Bool)

(assert (=> d!1055485 m!4072289))

(declare-fun m!4072291 () Bool)

(assert (=> d!1055485 m!4072291))

(declare-fun m!4072293 () Bool)

(assert (=> d!1055485 m!4072293))

(declare-fun m!4072295 () Bool)

(assert (=> d!1055485 m!4072295))

(assert (=> d!1055485 m!4072289))

(assert (=> d!1055485 m!4072291))

(assert (=> b!3578286 m!4072295))

(declare-fun m!4072297 () Bool)

(assert (=> b!3578288 m!4072297))

(declare-fun m!4072299 () Bool)

(assert (=> b!3578288 m!4072299))

(declare-fun m!4072301 () Bool)

(assert (=> b!3578288 m!4072301))

(declare-fun m!4072303 () Bool)

(assert (=> b!3578288 m!4072303))

(declare-fun m!4072305 () Bool)

(assert (=> b!3578288 m!4072305))

(declare-fun m!4072309 () Bool)

(assert (=> b!3578288 m!4072309))

(assert (=> b!3578288 m!4072297))

(assert (=> b!3578288 m!4072303))

(declare-fun m!4072315 () Bool)

(assert (=> b!3578288 m!4072315))

(declare-fun m!4072317 () Bool)

(assert (=> b!3578288 m!4072317))

(declare-fun m!4072319 () Bool)

(assert (=> b!3578288 m!4072319))

(declare-fun m!4072321 () Bool)

(assert (=> b!3578288 m!4072321))

(assert (=> b!3578288 m!4072309))

(assert (=> b!3578288 m!4072321))

(declare-fun m!4072323 () Bool)

(assert (=> b!3578288 m!4072323))

(assert (=> b!3578288 m!4071707))

(assert (=> b!3578288 m!4072317))

(declare-fun m!4072325 () Bool)

(assert (=> b!3578288 m!4072325))

(assert (=> b!3577620 d!1055485))

(declare-fun d!1055541 () Bool)

(assert (=> d!1055541 (= (isDefined!5948 lt!1227573) (not (isEmpty!22105 lt!1227573)))))

(declare-fun bs!569757 () Bool)

(assert (= bs!569757 d!1055541))

(declare-fun m!4072327 () Bool)

(assert (=> bs!569757 m!4072327))

(assert (=> b!3577620 d!1055541))

(declare-fun b!3578290 () Bool)

(declare-fun e!2213652 () Option!7711)

(declare-fun e!2213653 () Option!7711)

(assert (=> b!3578290 (= e!2213652 e!2213653)))

(declare-fun c!620279 () Bool)

(assert (=> b!3578290 (= c!620279 (and ((_ is Cons!37546) rules!2135) (not (= (tag!6184 (h!42966 rules!2135)) (tag!6184 (rule!8228 (h!42967 tokens!494)))))))))

(declare-fun b!3578291 () Bool)

(declare-fun lt!1227918 () Unit!53577)

(declare-fun lt!1227920 () Unit!53577)

(assert (=> b!3578291 (= lt!1227918 lt!1227920)))

(assert (=> b!3578291 (rulesInvariant!4506 thiss!18206 (t!290029 rules!2135))))

(assert (=> b!3578291 (= lt!1227920 (lemmaInvariantOnRulesThenOnTail!488 thiss!18206 (h!42966 rules!2135) (t!290029 rules!2135)))))

(assert (=> b!3578291 (= e!2213653 (getRuleFromTag!1163 thiss!18206 (t!290029 rules!2135) (tag!6184 (rule!8228 (h!42967 tokens!494)))))))

(declare-fun b!3578292 () Bool)

(assert (=> b!3578292 (= e!2213653 None!7710)))

(declare-fun b!3578293 () Bool)

(declare-fun e!2213651 () Bool)

(declare-fun lt!1227919 () Option!7711)

(assert (=> b!3578293 (= e!2213651 (= (tag!6184 (get!12089 lt!1227919)) (tag!6184 (rule!8228 (h!42967 tokens!494)))))))

(declare-fun b!3578294 () Bool)

(assert (=> b!3578294 (= e!2213652 (Some!7710 (h!42966 rules!2135)))))

(declare-fun b!3578295 () Bool)

(declare-fun e!2213650 () Bool)

(assert (=> b!3578295 (= e!2213650 e!2213651)))

(declare-fun res!1443616 () Bool)

(assert (=> b!3578295 (=> (not res!1443616) (not e!2213651))))

(assert (=> b!3578295 (= res!1443616 (contains!7122 rules!2135 (get!12089 lt!1227919)))))

(declare-fun d!1055543 () Bool)

(assert (=> d!1055543 e!2213650))

(declare-fun res!1443617 () Bool)

(assert (=> d!1055543 (=> res!1443617 e!2213650)))

(assert (=> d!1055543 (= res!1443617 (isEmpty!22105 lt!1227919))))

(assert (=> d!1055543 (= lt!1227919 e!2213652)))

(declare-fun c!620278 () Bool)

(assert (=> d!1055543 (= c!620278 (and ((_ is Cons!37546) rules!2135) (= (tag!6184 (h!42966 rules!2135)) (tag!6184 (rule!8228 (h!42967 tokens!494))))))))

(assert (=> d!1055543 (rulesInvariant!4506 thiss!18206 rules!2135)))

(assert (=> d!1055543 (= (getRuleFromTag!1163 thiss!18206 rules!2135 (tag!6184 (rule!8228 (h!42967 tokens!494)))) lt!1227919)))

(assert (= (and d!1055543 c!620278) b!3578294))

(assert (= (and d!1055543 (not c!620278)) b!3578290))

(assert (= (and b!3578290 c!620279) b!3578291))

(assert (= (and b!3578290 (not c!620279)) b!3578292))

(assert (= (and d!1055543 (not res!1443617)) b!3578295))

(assert (= (and b!3578295 res!1443616) b!3578293))

(assert (=> b!3578291 m!4071711))

(assert (=> b!3578291 m!4071713))

(declare-fun m!4072329 () Bool)

(assert (=> b!3578291 m!4072329))

(declare-fun m!4072331 () Bool)

(assert (=> b!3578293 m!4072331))

(assert (=> b!3578295 m!4072331))

(assert (=> b!3578295 m!4072331))

(declare-fun m!4072333 () Bool)

(assert (=> b!3578295 m!4072333))

(declare-fun m!4072335 () Bool)

(assert (=> d!1055543 m!4072335))

(assert (=> d!1055543 m!4071039))

(assert (=> b!3577620 d!1055543))

(declare-fun bs!569758 () Bool)

(declare-fun d!1055545 () Bool)

(assert (= bs!569758 (and d!1055545 b!3577599)))

(declare-fun lambda!123653 () Int)

(assert (=> bs!569758 (not (= lambda!123653 lambda!123640))))

(declare-fun bs!569759 () Bool)

(assert (= bs!569759 (and d!1055545 b!3577620)))

(assert (=> bs!569759 (= lambda!123653 lambda!123641)))

(declare-fun bs!569760 () Bool)

(assert (= bs!569760 (and d!1055545 d!1055343)))

(assert (=> bs!569760 (= lambda!123653 lambda!123651)))

(declare-fun b!3578303 () Bool)

(declare-fun e!2213659 () Bool)

(assert (=> b!3578303 (= e!2213659 true)))

(declare-fun b!3578302 () Bool)

(declare-fun e!2213658 () Bool)

(assert (=> b!3578302 (= e!2213658 e!2213659)))

(declare-fun b!3578301 () Bool)

(declare-fun e!2213657 () Bool)

(assert (=> b!3578301 (= e!2213657 e!2213658)))

(assert (=> d!1055545 e!2213657))

(assert (= b!3578302 b!3578303))

(assert (= b!3578301 b!3578302))

(assert (= (and d!1055545 ((_ is Cons!37546) rules!2135)) b!3578301))

(assert (=> b!3578303 (< (dynLambda!16151 order!20401 (toValue!7792 (transformation!5520 (h!42966 rules!2135)))) (dynLambda!16152 order!20403 lambda!123653))))

(assert (=> b!3578303 (< (dynLambda!16153 order!20405 (toChars!7651 (transformation!5520 (h!42966 rules!2135)))) (dynLambda!16152 order!20403 lambda!123653))))

(assert (=> d!1055545 true))

(declare-fun e!2213656 () Bool)

(assert (=> d!1055545 e!2213656))

(declare-fun res!1443618 () Bool)

(assert (=> d!1055545 (=> (not res!1443618) (not e!2213656))))

(declare-fun lt!1227921 () Bool)

(assert (=> d!1055545 (= res!1443618 (= lt!1227921 (forall!8130 (list!13785 (seqFromList!4093 (t!290030 tokens!494))) lambda!123653)))))

(assert (=> d!1055545 (= lt!1227921 (forall!8132 (seqFromList!4093 (t!290030 tokens!494)) lambda!123653))))

(assert (=> d!1055545 (not (isEmpty!22096 rules!2135))))

(assert (=> d!1055545 (= (rulesProduceEachTokenIndividually!1560 thiss!18206 rules!2135 (seqFromList!4093 (t!290030 tokens!494))) lt!1227921)))

(declare-fun b!3578300 () Bool)

(assert (=> b!3578300 (= e!2213656 (= lt!1227921 (rulesProduceEachTokenIndividuallyList!1911 thiss!18206 rules!2135 (list!13785 (seqFromList!4093 (t!290030 tokens!494))))))))

(assert (= (and d!1055545 res!1443618) b!3578300))

(assert (=> d!1055545 m!4071111))

(declare-fun m!4072345 () Bool)

(assert (=> d!1055545 m!4072345))

(assert (=> d!1055545 m!4072345))

(declare-fun m!4072347 () Bool)

(assert (=> d!1055545 m!4072347))

(assert (=> d!1055545 m!4071111))

(declare-fun m!4072349 () Bool)

(assert (=> d!1055545 m!4072349))

(assert (=> d!1055545 m!4071033))

(assert (=> b!3578300 m!4071111))

(assert (=> b!3578300 m!4072345))

(assert (=> b!3578300 m!4072345))

(declare-fun m!4072357 () Bool)

(assert (=> b!3578300 m!4072357))

(assert (=> b!3577620 d!1055545))

(declare-fun d!1055551 () Bool)

(declare-fun e!2213663 () Bool)

(assert (=> d!1055551 e!2213663))

(declare-fun res!1443621 () Bool)

(assert (=> d!1055551 (=> (not res!1443621) (not e!2213663))))

(assert (=> d!1055551 (= res!1443621 (isDefined!5948 (getRuleFromTag!1163 thiss!18206 rules!2135 (tag!6184 (rule!8228 (h!42967 tokens!494))))))))

(declare-fun lt!1227924 () Unit!53577)

(assert (=> d!1055551 (= lt!1227924 (choose!20835 thiss!18206 rules!2135 lt!1227614 (h!42967 tokens!494)))))

(assert (=> d!1055551 (rulesInvariant!4506 thiss!18206 rules!2135)))

(assert (=> d!1055551 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1163 thiss!18206 rules!2135 lt!1227614 (h!42967 tokens!494)) lt!1227924)))

(declare-fun b!3578310 () Bool)

(declare-fun res!1443622 () Bool)

(assert (=> b!3578310 (=> (not res!1443622) (not e!2213663))))

(assert (=> b!3578310 (= res!1443622 (matchR!4863 (regex!5520 (get!12089 (getRuleFromTag!1163 thiss!18206 rules!2135 (tag!6184 (rule!8228 (h!42967 tokens!494)))))) (list!13781 (charsOf!3534 (h!42967 tokens!494)))))))

(declare-fun b!3578311 () Bool)

(assert (=> b!3578311 (= e!2213663 (= (rule!8228 (h!42967 tokens!494)) (get!12089 (getRuleFromTag!1163 thiss!18206 rules!2135 (tag!6184 (rule!8228 (h!42967 tokens!494)))))))))

(assert (= (and d!1055551 res!1443621) b!3578310))

(assert (= (and b!3578310 res!1443622) b!3578311))

(assert (=> d!1055551 m!4071125))

(assert (=> d!1055551 m!4071125))

(declare-fun m!4072367 () Bool)

(assert (=> d!1055551 m!4072367))

(declare-fun m!4072369 () Bool)

(assert (=> d!1055551 m!4072369))

(assert (=> d!1055551 m!4071039))

(assert (=> b!3578310 m!4071125))

(assert (=> b!3578310 m!4071183))

(assert (=> b!3578310 m!4071183))

(assert (=> b!3578310 m!4071185))

(assert (=> b!3578310 m!4071125))

(declare-fun m!4072371 () Bool)

(assert (=> b!3578310 m!4072371))

(assert (=> b!3578310 m!4071185))

(declare-fun m!4072373 () Bool)

(assert (=> b!3578310 m!4072373))

(assert (=> b!3578311 m!4071125))

(assert (=> b!3578311 m!4071125))

(assert (=> b!3578311 m!4072371))

(assert (=> b!3577620 d!1055551))

(declare-fun d!1055555 () Bool)

(declare-fun e!2213673 () Bool)

(assert (=> d!1055555 e!2213673))

(declare-fun res!1443633 () Bool)

(assert (=> d!1055555 (=> (not res!1443633) (not e!2213673))))

(declare-fun lt!1227932 () BalanceConc!22446)

(assert (=> d!1055555 (= res!1443633 (= (list!13785 lt!1227932) (Cons!37547 separatorToken!241 Nil!37547)))))

(declare-fun singleton!1176 (Token!10406) BalanceConc!22446)

(assert (=> d!1055555 (= lt!1227932 (singleton!1176 separatorToken!241))))

(assert (=> d!1055555 (= (singletonSeq!2616 separatorToken!241) lt!1227932)))

(declare-fun b!3578328 () Bool)

(declare-fun isBalanced!3493 (Conc!11416) Bool)

(assert (=> b!3578328 (= e!2213673 (isBalanced!3493 (c!620124 lt!1227932)))))

(assert (= (and d!1055555 res!1443633) b!3578328))

(declare-fun m!4072385 () Bool)

(assert (=> d!1055555 m!4072385))

(declare-fun m!4072387 () Bool)

(assert (=> d!1055555 m!4072387))

(declare-fun m!4072389 () Bool)

(assert (=> b!3578328 m!4072389))

(assert (=> b!3577620 d!1055555))

(declare-fun d!1055563 () Bool)

(declare-fun lt!1227933 () BalanceConc!22444)

(assert (=> d!1055563 (= (list!13781 lt!1227933) (printList!1657 thiss!18206 (list!13785 lt!1227577)))))

(assert (=> d!1055563 (= lt!1227933 (printTailRec!1604 thiss!18206 lt!1227577 0 (BalanceConc!22445 Empty!11415)))))

(assert (=> d!1055563 (= (print!2174 thiss!18206 lt!1227577) lt!1227933)))

(declare-fun bs!569764 () Bool)

(assert (= bs!569764 d!1055563))

(declare-fun m!4072395 () Bool)

(assert (=> bs!569764 m!4072395))

(declare-fun m!4072397 () Bool)

(assert (=> bs!569764 m!4072397))

(assert (=> bs!569764 m!4072397))

(declare-fun m!4072399 () Bool)

(assert (=> bs!569764 m!4072399))

(assert (=> bs!569764 m!4071149))

(assert (=> b!3577620 d!1055563))

(declare-fun b!3578329 () Bool)

(declare-fun e!2213675 () Option!7712)

(declare-fun call!259265 () Option!7712)

(assert (=> b!3578329 (= e!2213675 call!259265)))

(declare-fun b!3578330 () Bool)

(declare-fun lt!1227934 () Option!7712)

(declare-fun lt!1227936 () Option!7712)

(assert (=> b!3578330 (= e!2213675 (ite (and ((_ is None!7711) lt!1227934) ((_ is None!7711) lt!1227936)) None!7711 (ite ((_ is None!7711) lt!1227936) lt!1227934 (ite ((_ is None!7711) lt!1227934) lt!1227936 (ite (>= (size!28638 (_1!21873 (v!37341 lt!1227934))) (size!28638 (_1!21873 (v!37341 lt!1227936)))) lt!1227934 lt!1227936)))))))

(assert (=> b!3578330 (= lt!1227934 call!259265)))

(assert (=> b!3578330 (= lt!1227936 (maxPrefix!2649 thiss!18206 (t!290029 rules!2135) lt!1227603))))

(declare-fun b!3578331 () Bool)

(declare-fun res!1443636 () Bool)

(declare-fun e!2213674 () Bool)

(assert (=> b!3578331 (=> (not res!1443636) (not e!2213674))))

(declare-fun lt!1227935 () Option!7712)

(assert (=> b!3578331 (= res!1443636 (= (++!9343 (list!13781 (charsOf!3534 (_1!21873 (get!12091 lt!1227935)))) (_2!21873 (get!12091 lt!1227935))) lt!1227603))))

(declare-fun b!3578332 () Bool)

(declare-fun res!1443637 () Bool)

(assert (=> b!3578332 (=> (not res!1443637) (not e!2213674))))

(assert (=> b!3578332 (= res!1443637 (= (list!13781 (charsOf!3534 (_1!21873 (get!12091 lt!1227935)))) (originalCharacters!6234 (_1!21873 (get!12091 lt!1227935)))))))

(declare-fun b!3578334 () Bool)

(declare-fun res!1443634 () Bool)

(assert (=> b!3578334 (=> (not res!1443634) (not e!2213674))))

(assert (=> b!3578334 (= res!1443634 (= (value!177780 (_1!21873 (get!12091 lt!1227935))) (apply!9047 (transformation!5520 (rule!8228 (_1!21873 (get!12091 lt!1227935)))) (seqFromList!4094 (originalCharacters!6234 (_1!21873 (get!12091 lt!1227935)))))))))

(declare-fun b!3578335 () Bool)

(declare-fun e!2213676 () Bool)

(assert (=> b!3578335 (= e!2213676 e!2213674)))

(declare-fun res!1443639 () Bool)

(assert (=> b!3578335 (=> (not res!1443639) (not e!2213674))))

(assert (=> b!3578335 (= res!1443639 (isDefined!5950 lt!1227935))))

(declare-fun b!3578336 () Bool)

(declare-fun res!1443638 () Bool)

(assert (=> b!3578336 (=> (not res!1443638) (not e!2213674))))

(assert (=> b!3578336 (= res!1443638 (< (size!28640 (_2!21873 (get!12091 lt!1227935))) (size!28640 lt!1227603)))))

(declare-fun bm!259260 () Bool)

(assert (=> bm!259260 (= call!259265 (maxPrefixOneRule!1816 thiss!18206 (h!42966 rules!2135) lt!1227603))))

(declare-fun b!3578337 () Bool)

(declare-fun res!1443635 () Bool)

(assert (=> b!3578337 (=> (not res!1443635) (not e!2213674))))

(assert (=> b!3578337 (= res!1443635 (matchR!4863 (regex!5520 (rule!8228 (_1!21873 (get!12091 lt!1227935)))) (list!13781 (charsOf!3534 (_1!21873 (get!12091 lt!1227935))))))))

(declare-fun b!3578333 () Bool)

(assert (=> b!3578333 (= e!2213674 (contains!7122 rules!2135 (rule!8228 (_1!21873 (get!12091 lt!1227935)))))))

(declare-fun d!1055567 () Bool)

(assert (=> d!1055567 e!2213676))

(declare-fun res!1443640 () Bool)

(assert (=> d!1055567 (=> res!1443640 e!2213676)))

(assert (=> d!1055567 (= res!1443640 (isEmpty!22106 lt!1227935))))

(assert (=> d!1055567 (= lt!1227935 e!2213675)))

(declare-fun c!620287 () Bool)

(assert (=> d!1055567 (= c!620287 (and ((_ is Cons!37546) rules!2135) ((_ is Nil!37546) (t!290029 rules!2135))))))

(declare-fun lt!1227937 () Unit!53577)

(declare-fun lt!1227938 () Unit!53577)

(assert (=> d!1055567 (= lt!1227937 lt!1227938)))

(assert (=> d!1055567 (isPrefix!2900 lt!1227603 lt!1227603)))

(assert (=> d!1055567 (= lt!1227938 (lemmaIsPrefixRefl!1859 lt!1227603 lt!1227603))))

(assert (=> d!1055567 (rulesValidInductive!1909 thiss!18206 rules!2135)))

(assert (=> d!1055567 (= (maxPrefix!2649 thiss!18206 rules!2135 lt!1227603) lt!1227935)))

(assert (= (and d!1055567 c!620287) b!3578329))

(assert (= (and d!1055567 (not c!620287)) b!3578330))

(assert (= (or b!3578329 b!3578330) bm!259260))

(assert (= (and d!1055567 (not res!1443640)) b!3578335))

(assert (= (and b!3578335 res!1443639) b!3578332))

(assert (= (and b!3578332 res!1443637) b!3578336))

(assert (= (and b!3578336 res!1443638) b!3578331))

(assert (= (and b!3578331 res!1443636) b!3578334))

(assert (= (and b!3578334 res!1443634) b!3578337))

(assert (= (and b!3578337 res!1443635) b!3578333))

(declare-fun m!4072401 () Bool)

(assert (=> d!1055567 m!4072401))

(declare-fun m!4072403 () Bool)

(assert (=> d!1055567 m!4072403))

(declare-fun m!4072405 () Bool)

(assert (=> d!1055567 m!4072405))

(assert (=> d!1055567 m!4071981))

(declare-fun m!4072407 () Bool)

(assert (=> b!3578334 m!4072407))

(declare-fun m!4072409 () Bool)

(assert (=> b!3578334 m!4072409))

(assert (=> b!3578334 m!4072409))

(declare-fun m!4072411 () Bool)

(assert (=> b!3578334 m!4072411))

(declare-fun m!4072413 () Bool)

(assert (=> bm!259260 m!4072413))

(assert (=> b!3578333 m!4072407))

(declare-fun m!4072415 () Bool)

(assert (=> b!3578333 m!4072415))

(assert (=> b!3578331 m!4072407))

(declare-fun m!4072419 () Bool)

(assert (=> b!3578331 m!4072419))

(assert (=> b!3578331 m!4072419))

(declare-fun m!4072421 () Bool)

(assert (=> b!3578331 m!4072421))

(assert (=> b!3578331 m!4072421))

(declare-fun m!4072423 () Bool)

(assert (=> b!3578331 m!4072423))

(assert (=> b!3578337 m!4072407))

(assert (=> b!3578337 m!4072419))

(assert (=> b!3578337 m!4072419))

(assert (=> b!3578337 m!4072421))

(assert (=> b!3578337 m!4072421))

(declare-fun m!4072425 () Bool)

(assert (=> b!3578337 m!4072425))

(declare-fun m!4072427 () Bool)

(assert (=> b!3578330 m!4072427))

(assert (=> b!3578332 m!4072407))

(assert (=> b!3578332 m!4072419))

(assert (=> b!3578332 m!4072419))

(assert (=> b!3578332 m!4072421))

(assert (=> b!3578336 m!4072407))

(declare-fun m!4072429 () Bool)

(assert (=> b!3578336 m!4072429))

(declare-fun m!4072431 () Bool)

(assert (=> b!3578336 m!4072431))

(declare-fun m!4072433 () Bool)

(assert (=> b!3578335 m!4072433))

(assert (=> b!3577620 d!1055567))

(declare-fun b!3578344 () Bool)

(declare-fun e!2213683 () List!37669)

(declare-fun call!259267 () List!37669)

(assert (=> b!3578344 (= e!2213683 call!259267)))

(declare-fun bm!259261 () Bool)

(declare-fun call!259269 () List!37669)

(declare-fun call!259266 () List!37669)

(assert (=> bm!259261 (= call!259269 call!259266)))

(declare-fun b!3578345 () Bool)

(declare-fun e!2213685 () List!37669)

(assert (=> b!3578345 (= e!2213685 call!259266)))

(declare-fun b!3578346 () Bool)

(assert (=> b!3578346 (= e!2213683 call!259267)))

(declare-fun call!259268 () List!37669)

(declare-fun bm!259262 () Bool)

(declare-fun c!620289 () Bool)

(assert (=> bm!259262 (= call!259267 (++!9343 (ite c!620289 call!259269 call!259268) (ite c!620289 call!259268 call!259269)))))

(declare-fun b!3578347 () Bool)

(declare-fun e!2213684 () List!37669)

(assert (=> b!3578347 (= e!2213684 Nil!37545)))

(declare-fun b!3578348 () Bool)

(assert (=> b!3578348 (= e!2213685 e!2213683)))

(assert (=> b!3578348 (= c!620289 ((_ is Union!10279) (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))))

(declare-fun b!3578349 () Bool)

(declare-fun e!2213686 () List!37669)

(assert (=> b!3578349 (= e!2213686 (Cons!37545 (c!620122 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) Nil!37545))))

(declare-fun d!1055571 () Bool)

(declare-fun c!620291 () Bool)

(assert (=> d!1055571 (= c!620291 (or ((_ is EmptyExpr!10279) (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) ((_ is EmptyLang!10279) (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))))))

(assert (=> d!1055571 (= (usedCharacters!754 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) e!2213684)))

(declare-fun b!3578350 () Bool)

(assert (=> b!3578350 (= e!2213684 e!2213686)))

(declare-fun c!620288 () Bool)

(assert (=> b!3578350 (= c!620288 ((_ is ElementMatch!10279) (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))))

(declare-fun bm!259263 () Bool)

(assert (=> bm!259263 (= call!259268 (usedCharacters!754 (ite c!620289 (regTwo!21071 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (regOne!21070 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))))))

(declare-fun b!3578351 () Bool)

(declare-fun c!620290 () Bool)

(assert (=> b!3578351 (= c!620290 ((_ is Star!10279) (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))))

(assert (=> b!3578351 (= e!2213686 e!2213685)))

(declare-fun bm!259264 () Bool)

(assert (=> bm!259264 (= call!259266 (usedCharacters!754 (ite c!620290 (reg!10608 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (ite c!620289 (regOne!21071 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (regTwo!21070 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))))))))

(assert (= (and d!1055571 c!620291) b!3578347))

(assert (= (and d!1055571 (not c!620291)) b!3578350))

(assert (= (and b!3578350 c!620288) b!3578349))

(assert (= (and b!3578350 (not c!620288)) b!3578351))

(assert (= (and b!3578351 c!620290) b!3578345))

(assert (= (and b!3578351 (not c!620290)) b!3578348))

(assert (= (and b!3578348 c!620289) b!3578344))

(assert (= (and b!3578348 (not c!620289)) b!3578346))

(assert (= (or b!3578344 b!3578346) bm!259263))

(assert (= (or b!3578344 b!3578346) bm!259261))

(assert (= (or b!3578344 b!3578346) bm!259262))

(assert (= (or b!3578345 bm!259261) bm!259264))

(declare-fun m!4072435 () Bool)

(assert (=> bm!259262 m!4072435))

(declare-fun m!4072437 () Bool)

(assert (=> bm!259263 m!4072437))

(declare-fun m!4072439 () Bool)

(assert (=> bm!259264 m!4072439))

(assert (=> b!3577620 d!1055571))

(declare-fun d!1055573 () Bool)

(assert (=> d!1055573 (= (seqFromList!4094 lt!1227568) (fromListB!1893 lt!1227568))))

(declare-fun bs!569765 () Bool)

(assert (= bs!569765 d!1055573))

(declare-fun m!4072441 () Bool)

(assert (=> bs!569765 m!4072441))

(assert (=> b!3577620 d!1055573))

(declare-fun b!3578470 () Bool)

(declare-fun e!2213764 () Bool)

(declare-fun e!2213766 () Bool)

(assert (=> b!3578470 (= e!2213764 e!2213766)))

(declare-fun res!1443694 () Bool)

(assert (=> b!3578470 (=> (not res!1443694) (not e!2213766))))

(declare-fun lt!1227961 () Option!7712)

(assert (=> b!3578470 (= res!1443694 (matchR!4863 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) (list!13781 (charsOf!3534 (_1!21873 (get!12091 lt!1227961))))))))

(declare-fun b!3578471 () Bool)

(declare-fun e!2213763 () Bool)

(declare-datatypes ((tuple2!37486 0))(
  ( (tuple2!37487 (_1!21877 List!37669) (_2!21877 List!37669)) )
))
(declare-fun findLongestMatchInner!965 (Regex!10279 List!37669 Int List!37669 List!37669 Int) tuple2!37486)

(assert (=> b!3578471 (= e!2213763 (matchR!4863 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) (_1!21877 (findLongestMatchInner!965 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) Nil!37545 (size!28640 Nil!37545) lt!1227568 lt!1227568 (size!28640 lt!1227568)))))))

(declare-fun b!3578472 () Bool)

(declare-fun e!2213765 () Option!7712)

(declare-fun lt!1227958 () tuple2!37486)

(assert (=> b!3578472 (= e!2213765 (Some!7711 (tuple2!37479 (Token!10407 (apply!9047 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) (seqFromList!4094 (_1!21877 lt!1227958))) (rule!8228 (h!42967 (t!290030 tokens!494))) (size!28643 (seqFromList!4094 (_1!21877 lt!1227958))) (_1!21877 lt!1227958)) (_2!21877 lt!1227958))))))

(declare-fun lt!1227960 () Unit!53577)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!938 (Regex!10279 List!37669) Unit!53577)

(assert (=> b!3578472 (= lt!1227960 (longestMatchIsAcceptedByMatchOrIsEmpty!938 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) lt!1227568))))

(declare-fun res!1443692 () Bool)

(assert (=> b!3578472 (= res!1443692 (isEmpty!22099 (_1!21877 (findLongestMatchInner!965 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) Nil!37545 (size!28640 Nil!37545) lt!1227568 lt!1227568 (size!28640 lt!1227568)))))))

(assert (=> b!3578472 (=> res!1443692 e!2213763)))

(assert (=> b!3578472 e!2213763))

(declare-fun lt!1227959 () Unit!53577)

(assert (=> b!3578472 (= lt!1227959 lt!1227960)))

(declare-fun lt!1227957 () Unit!53577)

(declare-fun lemmaSemiInverse!1317 (TokenValueInjection!10928 BalanceConc!22444) Unit!53577)

(assert (=> b!3578472 (= lt!1227957 (lemmaSemiInverse!1317 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) (seqFromList!4094 (_1!21877 lt!1227958))))))

(declare-fun b!3578473 () Bool)

(declare-fun res!1443691 () Bool)

(assert (=> b!3578473 (=> (not res!1443691) (not e!2213766))))

(assert (=> b!3578473 (= res!1443691 (= (value!177780 (_1!21873 (get!12091 lt!1227961))) (apply!9047 (transformation!5520 (rule!8228 (_1!21873 (get!12091 lt!1227961)))) (seqFromList!4094 (originalCharacters!6234 (_1!21873 (get!12091 lt!1227961)))))))))

(declare-fun b!3578474 () Bool)

(declare-fun res!1443696 () Bool)

(assert (=> b!3578474 (=> (not res!1443696) (not e!2213766))))

(assert (=> b!3578474 (= res!1443696 (= (rule!8228 (_1!21873 (get!12091 lt!1227961))) (rule!8228 (h!42967 (t!290030 tokens!494)))))))

(declare-fun b!3578475 () Bool)

(assert (=> b!3578475 (= e!2213765 None!7711)))

(declare-fun b!3578476 () Bool)

(declare-fun res!1443693 () Bool)

(assert (=> b!3578476 (=> (not res!1443693) (not e!2213766))))

(assert (=> b!3578476 (= res!1443693 (< (size!28640 (_2!21873 (get!12091 lt!1227961))) (size!28640 lt!1227568)))))

(declare-fun d!1055575 () Bool)

(assert (=> d!1055575 e!2213764))

(declare-fun res!1443695 () Bool)

(assert (=> d!1055575 (=> res!1443695 e!2213764)))

(assert (=> d!1055575 (= res!1443695 (isEmpty!22106 lt!1227961))))

(assert (=> d!1055575 (= lt!1227961 e!2213765)))

(declare-fun c!620301 () Bool)

(assert (=> d!1055575 (= c!620301 (isEmpty!22099 (_1!21877 lt!1227958)))))

(declare-fun findLongestMatch!880 (Regex!10279 List!37669) tuple2!37486)

(assert (=> d!1055575 (= lt!1227958 (findLongestMatch!880 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) lt!1227568))))

(declare-fun ruleValid!1800 (LexerInterface!5109 Rule!10840) Bool)

(assert (=> d!1055575 (ruleValid!1800 thiss!18206 (rule!8228 (h!42967 (t!290030 tokens!494))))))

(assert (=> d!1055575 (= (maxPrefixOneRule!1816 thiss!18206 (rule!8228 (h!42967 (t!290030 tokens!494))) lt!1227568) lt!1227961)))

(declare-fun b!3578477 () Bool)

(assert (=> b!3578477 (= e!2213766 (= (size!28638 (_1!21873 (get!12091 lt!1227961))) (size!28640 (originalCharacters!6234 (_1!21873 (get!12091 lt!1227961))))))))

(declare-fun b!3578478 () Bool)

(declare-fun res!1443697 () Bool)

(assert (=> b!3578478 (=> (not res!1443697) (not e!2213766))))

(assert (=> b!3578478 (= res!1443697 (= (++!9343 (list!13781 (charsOf!3534 (_1!21873 (get!12091 lt!1227961)))) (_2!21873 (get!12091 lt!1227961))) lt!1227568))))

(assert (= (and d!1055575 c!620301) b!3578475))

(assert (= (and d!1055575 (not c!620301)) b!3578472))

(assert (= (and b!3578472 (not res!1443692)) b!3578471))

(assert (= (and d!1055575 (not res!1443695)) b!3578470))

(assert (= (and b!3578470 res!1443694) b!3578478))

(assert (= (and b!3578478 res!1443697) b!3578476))

(assert (= (and b!3578476 res!1443693) b!3578474))

(assert (= (and b!3578474 res!1443696) b!3578473))

(assert (= (and b!3578473 res!1443691) b!3578477))

(declare-fun m!4072535 () Bool)

(assert (=> b!3578474 m!4072535))

(declare-fun m!4072537 () Bool)

(assert (=> b!3578471 m!4072537))

(assert (=> b!3578471 m!4071087))

(assert (=> b!3578471 m!4072537))

(assert (=> b!3578471 m!4071087))

(declare-fun m!4072539 () Bool)

(assert (=> b!3578471 m!4072539))

(declare-fun m!4072541 () Bool)

(assert (=> b!3578471 m!4072541))

(declare-fun m!4072543 () Bool)

(assert (=> b!3578472 m!4072543))

(declare-fun m!4072545 () Bool)

(assert (=> b!3578472 m!4072545))

(declare-fun m!4072547 () Bool)

(assert (=> b!3578472 m!4072547))

(assert (=> b!3578472 m!4072545))

(declare-fun m!4072549 () Bool)

(assert (=> b!3578472 m!4072549))

(assert (=> b!3578472 m!4072545))

(declare-fun m!4072551 () Bool)

(assert (=> b!3578472 m!4072551))

(assert (=> b!3578472 m!4072537))

(assert (=> b!3578472 m!4072545))

(assert (=> b!3578472 m!4071087))

(assert (=> b!3578472 m!4072537))

(assert (=> b!3578472 m!4071087))

(assert (=> b!3578472 m!4072539))

(declare-fun m!4072553 () Bool)

(assert (=> b!3578472 m!4072553))

(assert (=> b!3578476 m!4072535))

(declare-fun m!4072555 () Bool)

(assert (=> b!3578476 m!4072555))

(assert (=> b!3578476 m!4071087))

(assert (=> b!3578470 m!4072535))

(declare-fun m!4072557 () Bool)

(assert (=> b!3578470 m!4072557))

(assert (=> b!3578470 m!4072557))

(declare-fun m!4072559 () Bool)

(assert (=> b!3578470 m!4072559))

(assert (=> b!3578470 m!4072559))

(declare-fun m!4072561 () Bool)

(assert (=> b!3578470 m!4072561))

(declare-fun m!4072563 () Bool)

(assert (=> d!1055575 m!4072563))

(declare-fun m!4072565 () Bool)

(assert (=> d!1055575 m!4072565))

(declare-fun m!4072567 () Bool)

(assert (=> d!1055575 m!4072567))

(declare-fun m!4072569 () Bool)

(assert (=> d!1055575 m!4072569))

(assert (=> b!3578477 m!4072535))

(declare-fun m!4072571 () Bool)

(assert (=> b!3578477 m!4072571))

(assert (=> b!3578478 m!4072535))

(assert (=> b!3578478 m!4072557))

(assert (=> b!3578478 m!4072557))

(assert (=> b!3578478 m!4072559))

(assert (=> b!3578478 m!4072559))

(declare-fun m!4072573 () Bool)

(assert (=> b!3578478 m!4072573))

(assert (=> b!3578473 m!4072535))

(declare-fun m!4072575 () Bool)

(assert (=> b!3578473 m!4072575))

(assert (=> b!3578473 m!4072575))

(declare-fun m!4072577 () Bool)

(assert (=> b!3578473 m!4072577))

(assert (=> b!3577620 d!1055575))

(declare-fun d!1055607 () Bool)

(declare-fun lt!1227962 () Bool)

(assert (=> d!1055607 (= lt!1227962 (select (content!5328 (usedCharacters!754 (regex!5520 (rule!8228 (h!42967 tokens!494))))) lt!1227592))))

(declare-fun e!2213768 () Bool)

(assert (=> d!1055607 (= lt!1227962 e!2213768)))

(declare-fun res!1443698 () Bool)

(assert (=> d!1055607 (=> (not res!1443698) (not e!2213768))))

(assert (=> d!1055607 (= res!1443698 ((_ is Cons!37545) (usedCharacters!754 (regex!5520 (rule!8228 (h!42967 tokens!494))))))))

(assert (=> d!1055607 (= (contains!7118 (usedCharacters!754 (regex!5520 (rule!8228 (h!42967 tokens!494)))) lt!1227592) lt!1227962)))

(declare-fun b!3578479 () Bool)

(declare-fun e!2213767 () Bool)

(assert (=> b!3578479 (= e!2213768 e!2213767)))

(declare-fun res!1443699 () Bool)

(assert (=> b!3578479 (=> res!1443699 e!2213767)))

(assert (=> b!3578479 (= res!1443699 (= (h!42965 (usedCharacters!754 (regex!5520 (rule!8228 (h!42967 tokens!494))))) lt!1227592))))

(declare-fun b!3578480 () Bool)

(assert (=> b!3578480 (= e!2213767 (contains!7118 (t!290028 (usedCharacters!754 (regex!5520 (rule!8228 (h!42967 tokens!494))))) lt!1227592))))

(assert (= (and d!1055607 res!1443698) b!3578479))

(assert (= (and b!3578479 (not res!1443699)) b!3578480))

(assert (=> d!1055607 m!4071099))

(declare-fun m!4072579 () Bool)

(assert (=> d!1055607 m!4072579))

(declare-fun m!4072581 () Bool)

(assert (=> d!1055607 m!4072581))

(declare-fun m!4072583 () Bool)

(assert (=> b!3578480 m!4072583))

(assert (=> b!3577620 d!1055607))

(declare-fun d!1055609 () Bool)

(declare-fun e!2213769 () Bool)

(assert (=> d!1055609 e!2213769))

(declare-fun res!1443700 () Bool)

(assert (=> d!1055609 (=> (not res!1443700) (not e!2213769))))

(declare-fun lt!1227963 () BalanceConc!22446)

(assert (=> d!1055609 (= res!1443700 (= (list!13785 lt!1227963) (Cons!37547 (h!42967 (t!290030 tokens!494)) Nil!37547)))))

(assert (=> d!1055609 (= lt!1227963 (singleton!1176 (h!42967 (t!290030 tokens!494))))))

(assert (=> d!1055609 (= (singletonSeq!2616 (h!42967 (t!290030 tokens!494))) lt!1227963)))

(declare-fun b!3578481 () Bool)

(assert (=> b!3578481 (= e!2213769 (isBalanced!3493 (c!620124 lt!1227963)))))

(assert (= (and d!1055609 res!1443700) b!3578481))

(declare-fun m!4072585 () Bool)

(assert (=> d!1055609 m!4072585))

(declare-fun m!4072587 () Bool)

(assert (=> d!1055609 m!4072587))

(declare-fun m!4072589 () Bool)

(assert (=> b!3578481 m!4072589))

(assert (=> b!3577620 d!1055609))

(declare-fun b!3578482 () Bool)

(declare-fun e!2213770 () Bool)

(declare-fun e!2213772 () Bool)

(assert (=> b!3578482 (= e!2213770 e!2213772)))

(declare-fun res!1443702 () Bool)

(declare-fun lt!1227964 () tuple2!37476)

(assert (=> b!3578482 (= res!1443702 (< (size!28643 (_2!21872 lt!1227964)) (size!28643 lt!1227588)))))

(assert (=> b!3578482 (=> (not res!1443702) (not e!2213772))))

(declare-fun b!3578483 () Bool)

(declare-fun e!2213771 () Bool)

(assert (=> b!3578483 (= e!2213771 (= (list!13781 (_2!21872 lt!1227964)) (_2!21875 (lexList!1503 thiss!18206 rules!2135 (list!13781 lt!1227588)))))))

(declare-fun b!3578484 () Bool)

(assert (=> b!3578484 (= e!2213772 (not (isEmpty!22097 (_1!21872 lt!1227964))))))

(declare-fun d!1055611 () Bool)

(assert (=> d!1055611 e!2213771))

(declare-fun res!1443703 () Bool)

(assert (=> d!1055611 (=> (not res!1443703) (not e!2213771))))

(assert (=> d!1055611 (= res!1443703 e!2213770)))

(declare-fun c!620302 () Bool)

(assert (=> d!1055611 (= c!620302 (> (size!28641 (_1!21872 lt!1227964)) 0))))

(assert (=> d!1055611 (= lt!1227964 (lexTailRecV2!1111 thiss!18206 rules!2135 lt!1227588 (BalanceConc!22445 Empty!11415) lt!1227588 (BalanceConc!22447 Empty!11416)))))

(assert (=> d!1055611 (= (lex!2435 thiss!18206 rules!2135 lt!1227588) lt!1227964)))

(declare-fun b!3578485 () Bool)

(assert (=> b!3578485 (= e!2213770 (= (_2!21872 lt!1227964) lt!1227588))))

(declare-fun b!3578486 () Bool)

(declare-fun res!1443701 () Bool)

(assert (=> b!3578486 (=> (not res!1443701) (not e!2213771))))

(assert (=> b!3578486 (= res!1443701 (= (list!13785 (_1!21872 lt!1227964)) (_1!21875 (lexList!1503 thiss!18206 rules!2135 (list!13781 lt!1227588)))))))

(assert (= (and d!1055611 c!620302) b!3578482))

(assert (= (and d!1055611 (not c!620302)) b!3578485))

(assert (= (and b!3578482 res!1443702) b!3578484))

(assert (= (and d!1055611 res!1443703) b!3578486))

(assert (= (and b!3578486 res!1443701) b!3578483))

(declare-fun m!4072591 () Bool)

(assert (=> b!3578484 m!4072591))

(declare-fun m!4072593 () Bool)

(assert (=> b!3578482 m!4072593))

(declare-fun m!4072595 () Bool)

(assert (=> b!3578482 m!4072595))

(declare-fun m!4072597 () Bool)

(assert (=> b!3578483 m!4072597))

(declare-fun m!4072599 () Bool)

(assert (=> b!3578483 m!4072599))

(assert (=> b!3578483 m!4072599))

(declare-fun m!4072601 () Bool)

(assert (=> b!3578483 m!4072601))

(declare-fun m!4072603 () Bool)

(assert (=> d!1055611 m!4072603))

(declare-fun m!4072605 () Bool)

(assert (=> d!1055611 m!4072605))

(declare-fun m!4072607 () Bool)

(assert (=> b!3578486 m!4072607))

(assert (=> b!3578486 m!4072599))

(assert (=> b!3578486 m!4072599))

(assert (=> b!3578486 m!4072601))

(assert (=> b!3577620 d!1055611))

(declare-fun d!1055613 () Bool)

(assert (=> d!1055613 (= (maxPrefix!2649 thiss!18206 rules!2135 (++!9343 (list!13781 (charsOf!3534 (h!42967 tokens!494))) lt!1227603)) (Some!7711 (tuple2!37479 (h!42967 tokens!494) lt!1227603)))))

(declare-fun lt!1227965 () Unit!53577)

(assert (=> d!1055613 (= lt!1227965 (choose!20836 thiss!18206 rules!2135 (h!42967 tokens!494) (rule!8228 (h!42967 tokens!494)) lt!1227603 (rule!8228 separatorToken!241)))))

(assert (=> d!1055613 (not (isEmpty!22096 rules!2135))))

(assert (=> d!1055613 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!276 thiss!18206 rules!2135 (h!42967 tokens!494) (rule!8228 (h!42967 tokens!494)) lt!1227603 (rule!8228 separatorToken!241)) lt!1227965)))

(declare-fun bs!569771 () Bool)

(assert (= bs!569771 d!1055613))

(assert (=> bs!569771 m!4071183))

(declare-fun m!4072609 () Bool)

(assert (=> bs!569771 m!4072609))

(declare-fun m!4072611 () Bool)

(assert (=> bs!569771 m!4072611))

(declare-fun m!4072613 () Bool)

(assert (=> bs!569771 m!4072613))

(assert (=> bs!569771 m!4071185))

(assert (=> bs!569771 m!4072611))

(assert (=> bs!569771 m!4071033))

(assert (=> bs!569771 m!4071183))

(assert (=> bs!569771 m!4071185))

(assert (=> b!3577620 d!1055613))

(declare-fun d!1055615 () Bool)

(declare-fun e!2213773 () Bool)

(assert (=> d!1055615 e!2213773))

(declare-fun res!1443704 () Bool)

(assert (=> d!1055615 (=> (not res!1443704) (not e!2213773))))

(assert (=> d!1055615 (= res!1443704 (isDefined!5948 (getRuleFromTag!1163 thiss!18206 rules!2135 (tag!6184 (rule!8228 separatorToken!241)))))))

(declare-fun lt!1227966 () Unit!53577)

(assert (=> d!1055615 (= lt!1227966 (choose!20835 thiss!18206 rules!2135 lt!1227587 separatorToken!241))))

(assert (=> d!1055615 (rulesInvariant!4506 thiss!18206 rules!2135)))

(assert (=> d!1055615 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1163 thiss!18206 rules!2135 lt!1227587 separatorToken!241) lt!1227966)))

(declare-fun b!3578487 () Bool)

(declare-fun res!1443705 () Bool)

(assert (=> b!3578487 (=> (not res!1443705) (not e!2213773))))

(assert (=> b!3578487 (= res!1443705 (matchR!4863 (regex!5520 (get!12089 (getRuleFromTag!1163 thiss!18206 rules!2135 (tag!6184 (rule!8228 separatorToken!241))))) (list!13781 (charsOf!3534 separatorToken!241))))))

(declare-fun b!3578488 () Bool)

(assert (=> b!3578488 (= e!2213773 (= (rule!8228 separatorToken!241) (get!12089 (getRuleFromTag!1163 thiss!18206 rules!2135 (tag!6184 (rule!8228 separatorToken!241))))))))

(assert (= (and d!1055615 res!1443704) b!3578487))

(assert (= (and b!3578487 res!1443705) b!3578488))

(assert (=> d!1055615 m!4071161))

(assert (=> d!1055615 m!4071161))

(declare-fun m!4072615 () Bool)

(assert (=> d!1055615 m!4072615))

(declare-fun m!4072617 () Bool)

(assert (=> d!1055615 m!4072617))

(assert (=> d!1055615 m!4071039))

(assert (=> b!3578487 m!4071161))

(assert (=> b!3578487 m!4071193))

(assert (=> b!3578487 m!4071193))

(assert (=> b!3578487 m!4071209))

(assert (=> b!3578487 m!4071161))

(declare-fun m!4072619 () Bool)

(assert (=> b!3578487 m!4072619))

(assert (=> b!3578487 m!4071209))

(declare-fun m!4072621 () Bool)

(assert (=> b!3578487 m!4072621))

(assert (=> b!3578488 m!4071161))

(assert (=> b!3578488 m!4071161))

(assert (=> b!3578488 m!4072619))

(assert (=> b!3577620 d!1055615))

(declare-fun d!1055617 () Bool)

(declare-fun lt!1227969 () Int)

(assert (=> d!1055617 (>= lt!1227969 0)))

(declare-fun e!2213776 () Int)

(assert (=> d!1055617 (= lt!1227969 e!2213776)))

(declare-fun c!620305 () Bool)

(assert (=> d!1055617 (= c!620305 ((_ is Nil!37545) lt!1227568))))

(assert (=> d!1055617 (= (size!28640 lt!1227568) lt!1227969)))

(declare-fun b!3578493 () Bool)

(assert (=> b!3578493 (= e!2213776 0)))

(declare-fun b!3578494 () Bool)

(assert (=> b!3578494 (= e!2213776 (+ 1 (size!28640 (t!290028 lt!1227568))))))

(assert (= (and d!1055617 c!620305) b!3578493))

(assert (= (and d!1055617 (not c!620305)) b!3578494))

(declare-fun m!4072623 () Bool)

(assert (=> b!3578494 m!4072623))

(assert (=> b!3577620 d!1055617))

(declare-fun d!1055619 () Bool)

(declare-fun lt!1227970 () Int)

(assert (=> d!1055619 (>= lt!1227970 0)))

(declare-fun e!2213777 () Int)

(assert (=> d!1055619 (= lt!1227970 e!2213777)))

(declare-fun c!620306 () Bool)

(assert (=> d!1055619 (= c!620306 ((_ is Nil!37545) lt!1227614))))

(assert (=> d!1055619 (= (size!28640 lt!1227614) lt!1227970)))

(declare-fun b!3578495 () Bool)

(assert (=> b!3578495 (= e!2213777 0)))

(declare-fun b!3578496 () Bool)

(assert (=> b!3578496 (= e!2213777 (+ 1 (size!28640 (t!290028 lt!1227614))))))

(assert (= (and d!1055619 c!620306) b!3578495))

(assert (= (and d!1055619 (not c!620306)) b!3578496))

(declare-fun m!4072625 () Bool)

(assert (=> b!3578496 m!4072625))

(assert (=> b!3577620 d!1055619))

(declare-fun d!1055621 () Bool)

(assert (=> d!1055621 (= (head!7455 lt!1227568) (h!42965 lt!1227568))))

(assert (=> b!3577620 d!1055621))

(declare-fun d!1055623 () Bool)

(declare-fun lt!1227972 () BalanceConc!22444)

(assert (=> d!1055623 (= (list!13781 lt!1227972) (printListTailRec!744 thiss!18206 (dropList!1261 lt!1227577 0) (list!13781 (BalanceConc!22445 Empty!11415))))))

(declare-fun e!2213778 () BalanceConc!22444)

(assert (=> d!1055623 (= lt!1227972 e!2213778)))

(declare-fun c!620307 () Bool)

(assert (=> d!1055623 (= c!620307 (>= 0 (size!28641 lt!1227577)))))

(declare-fun e!2213779 () Bool)

(assert (=> d!1055623 e!2213779))

(declare-fun res!1443706 () Bool)

(assert (=> d!1055623 (=> (not res!1443706) (not e!2213779))))

(assert (=> d!1055623 (= res!1443706 (>= 0 0))))

(assert (=> d!1055623 (= (printTailRec!1604 thiss!18206 lt!1227577 0 (BalanceConc!22445 Empty!11415)) lt!1227972)))

(declare-fun b!3578497 () Bool)

(assert (=> b!3578497 (= e!2213779 (<= 0 (size!28641 lt!1227577)))))

(declare-fun b!3578498 () Bool)

(assert (=> b!3578498 (= e!2213778 (BalanceConc!22445 Empty!11415))))

(declare-fun b!3578499 () Bool)

(assert (=> b!3578499 (= e!2213778 (printTailRec!1604 thiss!18206 lt!1227577 (+ 0 1) (++!9345 (BalanceConc!22445 Empty!11415) (charsOf!3534 (apply!9046 lt!1227577 0)))))))

(declare-fun lt!1227971 () List!37671)

(assert (=> b!3578499 (= lt!1227971 (list!13785 lt!1227577))))

(declare-fun lt!1227977 () Unit!53577)

(assert (=> b!3578499 (= lt!1227977 (lemmaDropApply!1219 lt!1227971 0))))

(assert (=> b!3578499 (= (head!7457 (drop!2081 lt!1227971 0)) (apply!9050 lt!1227971 0))))

(declare-fun lt!1227973 () Unit!53577)

(assert (=> b!3578499 (= lt!1227973 lt!1227977)))

(declare-fun lt!1227974 () List!37671)

(assert (=> b!3578499 (= lt!1227974 (list!13785 lt!1227577))))

(declare-fun lt!1227976 () Unit!53577)

(assert (=> b!3578499 (= lt!1227976 (lemmaDropTail!1103 lt!1227974 0))))

(assert (=> b!3578499 (= (tail!5545 (drop!2081 lt!1227974 0)) (drop!2081 lt!1227974 (+ 0 1)))))

(declare-fun lt!1227975 () Unit!53577)

(assert (=> b!3578499 (= lt!1227975 lt!1227976)))

(assert (= (and d!1055623 res!1443706) b!3578497))

(assert (= (and d!1055623 c!620307) b!3578498))

(assert (= (and d!1055623 (not c!620307)) b!3578499))

(declare-fun m!4072627 () Bool)

(assert (=> d!1055623 m!4072627))

(declare-fun m!4072629 () Bool)

(assert (=> d!1055623 m!4072629))

(assert (=> d!1055623 m!4072291))

(declare-fun m!4072631 () Bool)

(assert (=> d!1055623 m!4072631))

(declare-fun m!4072633 () Bool)

(assert (=> d!1055623 m!4072633))

(assert (=> d!1055623 m!4072629))

(assert (=> d!1055623 m!4072291))

(assert (=> b!3578497 m!4072633))

(declare-fun m!4072635 () Bool)

(assert (=> b!3578499 m!4072635))

(declare-fun m!4072637 () Bool)

(assert (=> b!3578499 m!4072637))

(declare-fun m!4072639 () Bool)

(assert (=> b!3578499 m!4072639))

(declare-fun m!4072641 () Bool)

(assert (=> b!3578499 m!4072641))

(declare-fun m!4072643 () Bool)

(assert (=> b!3578499 m!4072643))

(declare-fun m!4072645 () Bool)

(assert (=> b!3578499 m!4072645))

(assert (=> b!3578499 m!4072635))

(assert (=> b!3578499 m!4072641))

(declare-fun m!4072647 () Bool)

(assert (=> b!3578499 m!4072647))

(declare-fun m!4072649 () Bool)

(assert (=> b!3578499 m!4072649))

(declare-fun m!4072651 () Bool)

(assert (=> b!3578499 m!4072651))

(declare-fun m!4072653 () Bool)

(assert (=> b!3578499 m!4072653))

(assert (=> b!3578499 m!4072645))

(assert (=> b!3578499 m!4072653))

(declare-fun m!4072655 () Bool)

(assert (=> b!3578499 m!4072655))

(assert (=> b!3578499 m!4072397))

(assert (=> b!3578499 m!4072649))

(declare-fun m!4072657 () Bool)

(assert (=> b!3578499 m!4072657))

(assert (=> b!3577620 d!1055623))

(declare-fun b!3578500 () Bool)

(declare-fun e!2213780 () List!37669)

(declare-fun call!259273 () List!37669)

(assert (=> b!3578500 (= e!2213780 call!259273)))

(declare-fun bm!259267 () Bool)

(declare-fun call!259275 () List!37669)

(declare-fun call!259272 () List!37669)

(assert (=> bm!259267 (= call!259275 call!259272)))

(declare-fun b!3578501 () Bool)

(declare-fun e!2213782 () List!37669)

(assert (=> b!3578501 (= e!2213782 call!259272)))

(declare-fun b!3578502 () Bool)

(assert (=> b!3578502 (= e!2213780 call!259273)))

(declare-fun call!259274 () List!37669)

(declare-fun bm!259268 () Bool)

(declare-fun c!620309 () Bool)

(assert (=> bm!259268 (= call!259273 (++!9343 (ite c!620309 call!259275 call!259274) (ite c!620309 call!259274 call!259275)))))

(declare-fun b!3578503 () Bool)

(declare-fun e!2213781 () List!37669)

(assert (=> b!3578503 (= e!2213781 Nil!37545)))

(declare-fun b!3578504 () Bool)

(assert (=> b!3578504 (= e!2213782 e!2213780)))

(assert (=> b!3578504 (= c!620309 ((_ is Union!10279) (regex!5520 (rule!8228 separatorToken!241))))))

(declare-fun b!3578505 () Bool)

(declare-fun e!2213783 () List!37669)

(assert (=> b!3578505 (= e!2213783 (Cons!37545 (c!620122 (regex!5520 (rule!8228 separatorToken!241))) Nil!37545))))

(declare-fun d!1055625 () Bool)

(declare-fun c!620311 () Bool)

(assert (=> d!1055625 (= c!620311 (or ((_ is EmptyExpr!10279) (regex!5520 (rule!8228 separatorToken!241))) ((_ is EmptyLang!10279) (regex!5520 (rule!8228 separatorToken!241)))))))

(assert (=> d!1055625 (= (usedCharacters!754 (regex!5520 (rule!8228 separatorToken!241))) e!2213781)))

(declare-fun b!3578506 () Bool)

(assert (=> b!3578506 (= e!2213781 e!2213783)))

(declare-fun c!620308 () Bool)

(assert (=> b!3578506 (= c!620308 ((_ is ElementMatch!10279) (regex!5520 (rule!8228 separatorToken!241))))))

(declare-fun bm!259269 () Bool)

(assert (=> bm!259269 (= call!259274 (usedCharacters!754 (ite c!620309 (regTwo!21071 (regex!5520 (rule!8228 separatorToken!241))) (regOne!21070 (regex!5520 (rule!8228 separatorToken!241))))))))

(declare-fun b!3578507 () Bool)

(declare-fun c!620310 () Bool)

(assert (=> b!3578507 (= c!620310 ((_ is Star!10279) (regex!5520 (rule!8228 separatorToken!241))))))

(assert (=> b!3578507 (= e!2213783 e!2213782)))

(declare-fun bm!259270 () Bool)

(assert (=> bm!259270 (= call!259272 (usedCharacters!754 (ite c!620310 (reg!10608 (regex!5520 (rule!8228 separatorToken!241))) (ite c!620309 (regOne!21071 (regex!5520 (rule!8228 separatorToken!241))) (regTwo!21070 (regex!5520 (rule!8228 separatorToken!241)))))))))

(assert (= (and d!1055625 c!620311) b!3578503))

(assert (= (and d!1055625 (not c!620311)) b!3578506))

(assert (= (and b!3578506 c!620308) b!3578505))

(assert (= (and b!3578506 (not c!620308)) b!3578507))

(assert (= (and b!3578507 c!620310) b!3578501))

(assert (= (and b!3578507 (not c!620310)) b!3578504))

(assert (= (and b!3578504 c!620309) b!3578500))

(assert (= (and b!3578504 (not c!620309)) b!3578502))

(assert (= (or b!3578500 b!3578502) bm!259269))

(assert (= (or b!3578500 b!3578502) bm!259267))

(assert (= (or b!3578500 b!3578502) bm!259268))

(assert (= (or b!3578501 bm!259267) bm!259270))

(declare-fun m!4072659 () Bool)

(assert (=> bm!259268 m!4072659))

(declare-fun m!4072661 () Bool)

(assert (=> bm!259269 m!4072661))

(declare-fun m!4072663 () Bool)

(assert (=> bm!259270 m!4072663))

(assert (=> b!3577620 d!1055625))

(declare-fun d!1055627 () Bool)

(declare-fun lt!1227978 () Int)

(assert (=> d!1055627 (= lt!1227978 (size!28639 (list!13785 (_1!21872 lt!1227582))))))

(assert (=> d!1055627 (= lt!1227978 (size!28645 (c!620124 (_1!21872 lt!1227582))))))

(assert (=> d!1055627 (= (size!28641 (_1!21872 lt!1227582)) lt!1227978)))

(declare-fun bs!569772 () Bool)

(assert (= bs!569772 d!1055627))

(declare-fun m!4072665 () Bool)

(assert (=> bs!569772 m!4072665))

(assert (=> bs!569772 m!4072665))

(declare-fun m!4072667 () Bool)

(assert (=> bs!569772 m!4072667))

(declare-fun m!4072669 () Bool)

(assert (=> bs!569772 m!4072669))

(assert (=> b!3577620 d!1055627))

(declare-fun d!1055629 () Bool)

(declare-fun lt!1227979 () Bool)

(assert (=> d!1055629 (= lt!1227979 (select (content!5328 (usedCharacters!754 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))) lt!1227595))))

(declare-fun e!2213785 () Bool)

(assert (=> d!1055629 (= lt!1227979 e!2213785)))

(declare-fun res!1443707 () Bool)

(assert (=> d!1055629 (=> (not res!1443707) (not e!2213785))))

(assert (=> d!1055629 (= res!1443707 ((_ is Cons!37545) (usedCharacters!754 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))))))

(assert (=> d!1055629 (= (contains!7118 (usedCharacters!754 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) lt!1227595) lt!1227979)))

(declare-fun b!3578508 () Bool)

(declare-fun e!2213784 () Bool)

(assert (=> b!3578508 (= e!2213785 e!2213784)))

(declare-fun res!1443708 () Bool)

(assert (=> b!3578508 (=> res!1443708 e!2213784)))

(assert (=> b!3578508 (= res!1443708 (= (h!42965 (usedCharacters!754 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))) lt!1227595))))

(declare-fun b!3578509 () Bool)

(assert (=> b!3578509 (= e!2213784 (contains!7118 (t!290028 (usedCharacters!754 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))) lt!1227595))))

(assert (= (and d!1055629 res!1443707) b!3578508))

(assert (= (and b!3578508 (not res!1443708)) b!3578509))

(assert (=> d!1055629 m!4071131))

(declare-fun m!4072671 () Bool)

(assert (=> d!1055629 m!4072671))

(declare-fun m!4072673 () Bool)

(assert (=> d!1055629 m!4072673))

(declare-fun m!4072675 () Bool)

(assert (=> b!3578509 m!4072675))

(assert (=> b!3577620 d!1055629))

(declare-fun d!1055631 () Bool)

(assert (=> d!1055631 (not (contains!7118 (usedCharacters!754 (regex!5520 (rule!8228 separatorToken!241))) lt!1227595))))

(declare-fun lt!1227982 () Unit!53577)

(declare-fun choose!20837 (LexerInterface!5109 List!37670 List!37670 Rule!10840 Rule!10840 C!20744) Unit!53577)

(assert (=> d!1055631 (= lt!1227982 (choose!20837 thiss!18206 rules!2135 rules!2135 (rule!8228 (h!42967 (t!290030 tokens!494))) (rule!8228 separatorToken!241) lt!1227595))))

(assert (=> d!1055631 (rulesInvariant!4506 thiss!18206 rules!2135)))

(assert (=> d!1055631 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!202 thiss!18206 rules!2135 rules!2135 (rule!8228 (h!42967 (t!290030 tokens!494))) (rule!8228 separatorToken!241) lt!1227595) lt!1227982)))

(declare-fun bs!569773 () Bool)

(assert (= bs!569773 d!1055631))

(assert (=> bs!569773 m!4071113))

(assert (=> bs!569773 m!4071113))

(declare-fun m!4072677 () Bool)

(assert (=> bs!569773 m!4072677))

(declare-fun m!4072679 () Bool)

(assert (=> bs!569773 m!4072679))

(assert (=> bs!569773 m!4071039))

(assert (=> b!3577620 d!1055631))

(declare-fun b!3578510 () Bool)

(declare-fun e!2213788 () Option!7711)

(declare-fun e!2213789 () Option!7711)

(assert (=> b!3578510 (= e!2213788 e!2213789)))

(declare-fun c!620314 () Bool)

(assert (=> b!3578510 (= c!620314 (and ((_ is Cons!37546) rules!2135) (not (= (tag!6184 (h!42966 rules!2135)) (tag!6184 (rule!8228 (h!42967 (t!290030 tokens!494))))))))))

(declare-fun b!3578511 () Bool)

(declare-fun lt!1227983 () Unit!53577)

(declare-fun lt!1227985 () Unit!53577)

(assert (=> b!3578511 (= lt!1227983 lt!1227985)))

(assert (=> b!3578511 (rulesInvariant!4506 thiss!18206 (t!290029 rules!2135))))

(assert (=> b!3578511 (= lt!1227985 (lemmaInvariantOnRulesThenOnTail!488 thiss!18206 (h!42966 rules!2135) (t!290029 rules!2135)))))

(assert (=> b!3578511 (= e!2213789 (getRuleFromTag!1163 thiss!18206 (t!290029 rules!2135) (tag!6184 (rule!8228 (h!42967 (t!290030 tokens!494))))))))

(declare-fun b!3578512 () Bool)

(assert (=> b!3578512 (= e!2213789 None!7710)))

(declare-fun b!3578513 () Bool)

(declare-fun e!2213787 () Bool)

(declare-fun lt!1227984 () Option!7711)

(assert (=> b!3578513 (= e!2213787 (= (tag!6184 (get!12089 lt!1227984)) (tag!6184 (rule!8228 (h!42967 (t!290030 tokens!494))))))))

(declare-fun b!3578514 () Bool)

(assert (=> b!3578514 (= e!2213788 (Some!7710 (h!42966 rules!2135)))))

(declare-fun b!3578515 () Bool)

(declare-fun e!2213786 () Bool)

(assert (=> b!3578515 (= e!2213786 e!2213787)))

(declare-fun res!1443709 () Bool)

(assert (=> b!3578515 (=> (not res!1443709) (not e!2213787))))

(assert (=> b!3578515 (= res!1443709 (contains!7122 rules!2135 (get!12089 lt!1227984)))))

(declare-fun d!1055633 () Bool)

(assert (=> d!1055633 e!2213786))

(declare-fun res!1443710 () Bool)

(assert (=> d!1055633 (=> res!1443710 e!2213786)))

(assert (=> d!1055633 (= res!1443710 (isEmpty!22105 lt!1227984))))

(assert (=> d!1055633 (= lt!1227984 e!2213788)))

(declare-fun c!620313 () Bool)

(assert (=> d!1055633 (= c!620313 (and ((_ is Cons!37546) rules!2135) (= (tag!6184 (h!42966 rules!2135)) (tag!6184 (rule!8228 (h!42967 (t!290030 tokens!494)))))))))

(assert (=> d!1055633 (rulesInvariant!4506 thiss!18206 rules!2135)))

(assert (=> d!1055633 (= (getRuleFromTag!1163 thiss!18206 rules!2135 (tag!6184 (rule!8228 (h!42967 (t!290030 tokens!494))))) lt!1227984)))

(assert (= (and d!1055633 c!620313) b!3578514))

(assert (= (and d!1055633 (not c!620313)) b!3578510))

(assert (= (and b!3578510 c!620314) b!3578511))

(assert (= (and b!3578510 (not c!620314)) b!3578512))

(assert (= (and d!1055633 (not res!1443710)) b!3578515))

(assert (= (and b!3578515 res!1443709) b!3578513))

(assert (=> b!3578511 m!4071711))

(assert (=> b!3578511 m!4071713))

(declare-fun m!4072681 () Bool)

(assert (=> b!3578511 m!4072681))

(declare-fun m!4072683 () Bool)

(assert (=> b!3578513 m!4072683))

(assert (=> b!3578515 m!4072683))

(assert (=> b!3578515 m!4072683))

(declare-fun m!4072685 () Bool)

(assert (=> b!3578515 m!4072685))

(declare-fun m!4072687 () Bool)

(assert (=> d!1055633 m!4072687))

(assert (=> d!1055633 m!4071039))

(assert (=> b!3577620 d!1055633))

(declare-fun b!3578516 () Bool)

(declare-fun e!2213791 () Bool)

(declare-fun e!2213793 () Bool)

(assert (=> b!3578516 (= e!2213791 e!2213793)))

(declare-fun res!1443714 () Bool)

(assert (=> b!3578516 (=> (not res!1443714) (not e!2213793))))

(declare-fun lt!1227990 () Option!7712)

(assert (=> b!3578516 (= res!1443714 (matchR!4863 (regex!5520 (rule!8228 (h!42967 tokens!494))) (list!13781 (charsOf!3534 (_1!21873 (get!12091 lt!1227990))))))))

(declare-fun b!3578517 () Bool)

(declare-fun e!2213790 () Bool)

(assert (=> b!3578517 (= e!2213790 (matchR!4863 (regex!5520 (rule!8228 (h!42967 tokens!494))) (_1!21877 (findLongestMatchInner!965 (regex!5520 (rule!8228 (h!42967 tokens!494))) Nil!37545 (size!28640 Nil!37545) lt!1227614 lt!1227614 (size!28640 lt!1227614)))))))

(declare-fun b!3578518 () Bool)

(declare-fun e!2213792 () Option!7712)

(declare-fun lt!1227987 () tuple2!37486)

(assert (=> b!3578518 (= e!2213792 (Some!7711 (tuple2!37479 (Token!10407 (apply!9047 (transformation!5520 (rule!8228 (h!42967 tokens!494))) (seqFromList!4094 (_1!21877 lt!1227987))) (rule!8228 (h!42967 tokens!494)) (size!28643 (seqFromList!4094 (_1!21877 lt!1227987))) (_1!21877 lt!1227987)) (_2!21877 lt!1227987))))))

(declare-fun lt!1227989 () Unit!53577)

(assert (=> b!3578518 (= lt!1227989 (longestMatchIsAcceptedByMatchOrIsEmpty!938 (regex!5520 (rule!8228 (h!42967 tokens!494))) lt!1227614))))

(declare-fun res!1443712 () Bool)

(assert (=> b!3578518 (= res!1443712 (isEmpty!22099 (_1!21877 (findLongestMatchInner!965 (regex!5520 (rule!8228 (h!42967 tokens!494))) Nil!37545 (size!28640 Nil!37545) lt!1227614 lt!1227614 (size!28640 lt!1227614)))))))

(assert (=> b!3578518 (=> res!1443712 e!2213790)))

(assert (=> b!3578518 e!2213790))

(declare-fun lt!1227988 () Unit!53577)

(assert (=> b!3578518 (= lt!1227988 lt!1227989)))

(declare-fun lt!1227986 () Unit!53577)

(assert (=> b!3578518 (= lt!1227986 (lemmaSemiInverse!1317 (transformation!5520 (rule!8228 (h!42967 tokens!494))) (seqFromList!4094 (_1!21877 lt!1227987))))))

(declare-fun b!3578519 () Bool)

(declare-fun res!1443711 () Bool)

(assert (=> b!3578519 (=> (not res!1443711) (not e!2213793))))

(assert (=> b!3578519 (= res!1443711 (= (value!177780 (_1!21873 (get!12091 lt!1227990))) (apply!9047 (transformation!5520 (rule!8228 (_1!21873 (get!12091 lt!1227990)))) (seqFromList!4094 (originalCharacters!6234 (_1!21873 (get!12091 lt!1227990)))))))))

(declare-fun b!3578520 () Bool)

(declare-fun res!1443716 () Bool)

(assert (=> b!3578520 (=> (not res!1443716) (not e!2213793))))

(assert (=> b!3578520 (= res!1443716 (= (rule!8228 (_1!21873 (get!12091 lt!1227990))) (rule!8228 (h!42967 tokens!494))))))

(declare-fun b!3578521 () Bool)

(assert (=> b!3578521 (= e!2213792 None!7711)))

(declare-fun b!3578522 () Bool)

(declare-fun res!1443713 () Bool)

(assert (=> b!3578522 (=> (not res!1443713) (not e!2213793))))

(assert (=> b!3578522 (= res!1443713 (< (size!28640 (_2!21873 (get!12091 lt!1227990))) (size!28640 lt!1227614)))))

(declare-fun d!1055635 () Bool)

(assert (=> d!1055635 e!2213791))

(declare-fun res!1443715 () Bool)

(assert (=> d!1055635 (=> res!1443715 e!2213791)))

(assert (=> d!1055635 (= res!1443715 (isEmpty!22106 lt!1227990))))

(assert (=> d!1055635 (= lt!1227990 e!2213792)))

(declare-fun c!620315 () Bool)

(assert (=> d!1055635 (= c!620315 (isEmpty!22099 (_1!21877 lt!1227987)))))

(assert (=> d!1055635 (= lt!1227987 (findLongestMatch!880 (regex!5520 (rule!8228 (h!42967 tokens!494))) lt!1227614))))

(assert (=> d!1055635 (ruleValid!1800 thiss!18206 (rule!8228 (h!42967 tokens!494)))))

(assert (=> d!1055635 (= (maxPrefixOneRule!1816 thiss!18206 (rule!8228 (h!42967 tokens!494)) lt!1227614) lt!1227990)))

(declare-fun b!3578523 () Bool)

(assert (=> b!3578523 (= e!2213793 (= (size!28638 (_1!21873 (get!12091 lt!1227990))) (size!28640 (originalCharacters!6234 (_1!21873 (get!12091 lt!1227990))))))))

(declare-fun b!3578524 () Bool)

(declare-fun res!1443717 () Bool)

(assert (=> b!3578524 (=> (not res!1443717) (not e!2213793))))

(assert (=> b!3578524 (= res!1443717 (= (++!9343 (list!13781 (charsOf!3534 (_1!21873 (get!12091 lt!1227990)))) (_2!21873 (get!12091 lt!1227990))) lt!1227614))))

(assert (= (and d!1055635 c!620315) b!3578521))

(assert (= (and d!1055635 (not c!620315)) b!3578518))

(assert (= (and b!3578518 (not res!1443712)) b!3578517))

(assert (= (and d!1055635 (not res!1443715)) b!3578516))

(assert (= (and b!3578516 res!1443714) b!3578524))

(assert (= (and b!3578524 res!1443717) b!3578522))

(assert (= (and b!3578522 res!1443713) b!3578520))

(assert (= (and b!3578520 res!1443716) b!3578519))

(assert (= (and b!3578519 res!1443711) b!3578523))

(declare-fun m!4072689 () Bool)

(assert (=> b!3578520 m!4072689))

(assert (=> b!3578517 m!4072537))

(assert (=> b!3578517 m!4071103))

(assert (=> b!3578517 m!4072537))

(assert (=> b!3578517 m!4071103))

(declare-fun m!4072691 () Bool)

(assert (=> b!3578517 m!4072691))

(declare-fun m!4072693 () Bool)

(assert (=> b!3578517 m!4072693))

(declare-fun m!4072695 () Bool)

(assert (=> b!3578518 m!4072695))

(declare-fun m!4072697 () Bool)

(assert (=> b!3578518 m!4072697))

(declare-fun m!4072699 () Bool)

(assert (=> b!3578518 m!4072699))

(assert (=> b!3578518 m!4072697))

(declare-fun m!4072701 () Bool)

(assert (=> b!3578518 m!4072701))

(assert (=> b!3578518 m!4072697))

(declare-fun m!4072703 () Bool)

(assert (=> b!3578518 m!4072703))

(assert (=> b!3578518 m!4072537))

(assert (=> b!3578518 m!4072697))

(assert (=> b!3578518 m!4071103))

(assert (=> b!3578518 m!4072537))

(assert (=> b!3578518 m!4071103))

(assert (=> b!3578518 m!4072691))

(declare-fun m!4072705 () Bool)

(assert (=> b!3578518 m!4072705))

(assert (=> b!3578522 m!4072689))

(declare-fun m!4072707 () Bool)

(assert (=> b!3578522 m!4072707))

(assert (=> b!3578522 m!4071103))

(assert (=> b!3578516 m!4072689))

(declare-fun m!4072709 () Bool)

(assert (=> b!3578516 m!4072709))

(assert (=> b!3578516 m!4072709))

(declare-fun m!4072711 () Bool)

(assert (=> b!3578516 m!4072711))

(assert (=> b!3578516 m!4072711))

(declare-fun m!4072713 () Bool)

(assert (=> b!3578516 m!4072713))

(declare-fun m!4072715 () Bool)

(assert (=> d!1055635 m!4072715))

(declare-fun m!4072717 () Bool)

(assert (=> d!1055635 m!4072717))

(declare-fun m!4072719 () Bool)

(assert (=> d!1055635 m!4072719))

(declare-fun m!4072721 () Bool)

(assert (=> d!1055635 m!4072721))

(assert (=> b!3578523 m!4072689))

(declare-fun m!4072723 () Bool)

(assert (=> b!3578523 m!4072723))

(assert (=> b!3578524 m!4072689))

(assert (=> b!3578524 m!4072709))

(assert (=> b!3578524 m!4072709))

(assert (=> b!3578524 m!4072711))

(assert (=> b!3578524 m!4072711))

(declare-fun m!4072725 () Bool)

(assert (=> b!3578524 m!4072725))

(assert (=> b!3578519 m!4072689))

(declare-fun m!4072727 () Bool)

(assert (=> b!3578519 m!4072727))

(assert (=> b!3578519 m!4072727))

(declare-fun m!4072729 () Bool)

(assert (=> b!3578519 m!4072729))

(assert (=> b!3577620 d!1055635))

(declare-fun d!1055637 () Bool)

(declare-fun res!1443722 () Bool)

(declare-fun e!2213798 () Bool)

(assert (=> d!1055637 (=> res!1443722 e!2213798)))

(assert (=> d!1055637 (= res!1443722 ((_ is Nil!37547) tokens!494))))

(assert (=> d!1055637 (= (forall!8130 tokens!494 lambda!123640) e!2213798)))

(declare-fun b!3578529 () Bool)

(declare-fun e!2213799 () Bool)

(assert (=> b!3578529 (= e!2213798 e!2213799)))

(declare-fun res!1443723 () Bool)

(assert (=> b!3578529 (=> (not res!1443723) (not e!2213799))))

(assert (=> b!3578529 (= res!1443723 (dynLambda!16158 lambda!123640 (h!42967 tokens!494)))))

(declare-fun b!3578530 () Bool)

(assert (=> b!3578530 (= e!2213799 (forall!8130 (t!290030 tokens!494) lambda!123640))))

(assert (= (and d!1055637 (not res!1443722)) b!3578529))

(assert (= (and b!3578529 res!1443723) b!3578530))

(declare-fun b_lambda!105735 () Bool)

(assert (=> (not b_lambda!105735) (not b!3578529)))

(declare-fun m!4072731 () Bool)

(assert (=> b!3578529 m!4072731))

(assert (=> b!3578530 m!4071073))

(assert (=> b!3577599 d!1055637))

(declare-fun d!1055639 () Bool)

(declare-fun res!1443726 () Bool)

(declare-fun e!2213802 () Bool)

(assert (=> d!1055639 (=> (not res!1443726) (not e!2213802))))

(declare-fun rulesValid!2098 (LexerInterface!5109 List!37670) Bool)

(assert (=> d!1055639 (= res!1443726 (rulesValid!2098 thiss!18206 rules!2135))))

(assert (=> d!1055639 (= (rulesInvariant!4506 thiss!18206 rules!2135) e!2213802)))

(declare-fun b!3578533 () Bool)

(declare-datatypes ((List!37672 0))(
  ( (Nil!37548) (Cons!37548 (h!42968 String!42084) (t!290145 List!37672)) )
))
(declare-fun noDuplicateTag!2094 (LexerInterface!5109 List!37670 List!37672) Bool)

(assert (=> b!3578533 (= e!2213802 (noDuplicateTag!2094 thiss!18206 rules!2135 Nil!37548))))

(assert (= (and d!1055639 res!1443726) b!3578533))

(declare-fun m!4072733 () Bool)

(assert (=> d!1055639 m!4072733))

(declare-fun m!4072735 () Bool)

(assert (=> b!3578533 m!4072735))

(assert (=> b!3577578 d!1055639))

(declare-fun d!1055641 () Bool)

(assert (=> d!1055641 (= (list!13781 (charsOf!3534 (h!42967 tokens!494))) (list!13784 (c!620123 (charsOf!3534 (h!42967 tokens!494)))))))

(declare-fun bs!569774 () Bool)

(assert (= bs!569774 d!1055641))

(declare-fun m!4072737 () Bool)

(assert (=> bs!569774 m!4072737))

(assert (=> b!3577621 d!1055641))

(declare-fun d!1055643 () Bool)

(declare-fun lt!1227991 () BalanceConc!22444)

(assert (=> d!1055643 (= (list!13781 lt!1227991) (originalCharacters!6234 (h!42967 tokens!494)))))

(assert (=> d!1055643 (= lt!1227991 (dynLambda!16155 (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) (value!177780 (h!42967 tokens!494))))))

(assert (=> d!1055643 (= (charsOf!3534 (h!42967 tokens!494)) lt!1227991)))

(declare-fun b_lambda!105737 () Bool)

(assert (=> (not b_lambda!105737) (not d!1055643)))

(assert (=> d!1055643 t!290067))

(declare-fun b_and!257871 () Bool)

(assert (= b_and!257821 (and (=> t!290067 result!248874) b_and!257871)))

(assert (=> d!1055643 t!290069))

(declare-fun b_and!257873 () Bool)

(assert (= b_and!257823 (and (=> t!290069 result!248876) b_and!257873)))

(assert (=> d!1055643 t!290071))

(declare-fun b_and!257875 () Bool)

(assert (= b_and!257825 (and (=> t!290071 result!248878) b_and!257875)))

(declare-fun m!4072739 () Bool)

(assert (=> d!1055643 m!4072739))

(assert (=> d!1055643 m!4071515))

(assert (=> b!3577621 d!1055643))

(declare-fun d!1055645 () Bool)

(assert (=> d!1055645 (= (inv!50822 (tag!6184 (h!42966 rules!2135))) (= (mod (str.len (value!177779 (tag!6184 (h!42966 rules!2135)))) 2) 0))))

(assert (=> b!3577616 d!1055645))

(declare-fun d!1055647 () Bool)

(declare-fun res!1443727 () Bool)

(declare-fun e!2213803 () Bool)

(assert (=> d!1055647 (=> (not res!1443727) (not e!2213803))))

(assert (=> d!1055647 (= res!1443727 (semiInverseModEq!2339 (toChars!7651 (transformation!5520 (h!42966 rules!2135))) (toValue!7792 (transformation!5520 (h!42966 rules!2135)))))))

(assert (=> d!1055647 (= (inv!50825 (transformation!5520 (h!42966 rules!2135))) e!2213803)))

(declare-fun b!3578534 () Bool)

(assert (=> b!3578534 (= e!2213803 (equivClasses!2238 (toChars!7651 (transformation!5520 (h!42966 rules!2135))) (toValue!7792 (transformation!5520 (h!42966 rules!2135)))))))

(assert (= (and d!1055647 res!1443727) b!3578534))

(declare-fun m!4072741 () Bool)

(assert (=> d!1055647 m!4072741))

(declare-fun m!4072743 () Bool)

(assert (=> b!3578534 m!4072743))

(assert (=> b!3577616 d!1055647))

(declare-fun d!1055649 () Bool)

(declare-fun res!1443732 () Bool)

(declare-fun e!2213808 () Bool)

(assert (=> d!1055649 (=> res!1443732 e!2213808)))

(assert (=> d!1055649 (= res!1443732 (not ((_ is Cons!37546) rules!2135)))))

(assert (=> d!1055649 (= (sepAndNonSepRulesDisjointChars!1714 rules!2135 rules!2135) e!2213808)))

(declare-fun b!3578539 () Bool)

(declare-fun e!2213809 () Bool)

(assert (=> b!3578539 (= e!2213808 e!2213809)))

(declare-fun res!1443733 () Bool)

(assert (=> b!3578539 (=> (not res!1443733) (not e!2213809))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!775 (Rule!10840 List!37670) Bool)

(assert (=> b!3578539 (= res!1443733 (ruleDisjointCharsFromAllFromOtherType!775 (h!42966 rules!2135) rules!2135))))

(declare-fun b!3578540 () Bool)

(assert (=> b!3578540 (= e!2213809 (sepAndNonSepRulesDisjointChars!1714 rules!2135 (t!290029 rules!2135)))))

(assert (= (and d!1055649 (not res!1443732)) b!3578539))

(assert (= (and b!3578539 res!1443733) b!3578540))

(declare-fun m!4072745 () Bool)

(assert (=> b!3578539 m!4072745))

(declare-fun m!4072747 () Bool)

(assert (=> b!3578540 m!4072747))

(assert (=> b!3577617 d!1055649))

(declare-fun d!1055651 () Bool)

(declare-fun res!1443734 () Bool)

(declare-fun e!2213810 () Bool)

(assert (=> d!1055651 (=> res!1443734 e!2213810)))

(assert (=> d!1055651 (= res!1443734 ((_ is Nil!37547) (t!290030 tokens!494)))))

(assert (=> d!1055651 (= (forall!8130 (t!290030 tokens!494) lambda!123640) e!2213810)))

(declare-fun b!3578541 () Bool)

(declare-fun e!2213811 () Bool)

(assert (=> b!3578541 (= e!2213810 e!2213811)))

(declare-fun res!1443735 () Bool)

(assert (=> b!3578541 (=> (not res!1443735) (not e!2213811))))

(assert (=> b!3578541 (= res!1443735 (dynLambda!16158 lambda!123640 (h!42967 (t!290030 tokens!494))))))

(declare-fun b!3578542 () Bool)

(assert (=> b!3578542 (= e!2213811 (forall!8130 (t!290030 (t!290030 tokens!494)) lambda!123640))))

(assert (= (and d!1055651 (not res!1443734)) b!3578541))

(assert (= (and b!3578541 res!1443735) b!3578542))

(declare-fun b_lambda!105739 () Bool)

(assert (=> (not b_lambda!105739) (not b!3578541)))

(declare-fun m!4072749 () Bool)

(assert (=> b!3578541 m!4072749))

(declare-fun m!4072751 () Bool)

(assert (=> b!3578542 m!4072751))

(assert (=> b!3577596 d!1055651))

(declare-fun d!1055653 () Bool)

(declare-fun lt!1227993 () Bool)

(declare-fun e!2213813 () Bool)

(assert (=> d!1055653 (= lt!1227993 e!2213813)))

(declare-fun res!1443736 () Bool)

(assert (=> d!1055653 (=> (not res!1443736) (not e!2213813))))

(assert (=> d!1055653 (= res!1443736 (= (list!13785 (_1!21872 (lex!2435 thiss!18206 rules!2135 (print!2174 thiss!18206 (singletonSeq!2616 (h!42967 tokens!494)))))) (list!13785 (singletonSeq!2616 (h!42967 tokens!494)))))))

(declare-fun e!2213812 () Bool)

(assert (=> d!1055653 (= lt!1227993 e!2213812)))

(declare-fun res!1443737 () Bool)

(assert (=> d!1055653 (=> (not res!1443737) (not e!2213812))))

(declare-fun lt!1227992 () tuple2!37476)

(assert (=> d!1055653 (= res!1443737 (= (size!28641 (_1!21872 lt!1227992)) 1))))

(assert (=> d!1055653 (= lt!1227992 (lex!2435 thiss!18206 rules!2135 (print!2174 thiss!18206 (singletonSeq!2616 (h!42967 tokens!494)))))))

(assert (=> d!1055653 (not (isEmpty!22096 rules!2135))))

(assert (=> d!1055653 (= (rulesProduceIndividualToken!2601 thiss!18206 rules!2135 (h!42967 tokens!494)) lt!1227993)))

(declare-fun b!3578543 () Bool)

(declare-fun res!1443738 () Bool)

(assert (=> b!3578543 (=> (not res!1443738) (not e!2213812))))

(assert (=> b!3578543 (= res!1443738 (= (apply!9046 (_1!21872 lt!1227992) 0) (h!42967 tokens!494)))))

(declare-fun b!3578544 () Bool)

(assert (=> b!3578544 (= e!2213812 (isEmpty!22095 (_2!21872 lt!1227992)))))

(declare-fun b!3578545 () Bool)

(assert (=> b!3578545 (= e!2213813 (isEmpty!22095 (_2!21872 (lex!2435 thiss!18206 rules!2135 (print!2174 thiss!18206 (singletonSeq!2616 (h!42967 tokens!494)))))))))

(assert (= (and d!1055653 res!1443737) b!3578543))

(assert (= (and b!3578543 res!1443738) b!3578544))

(assert (= (and d!1055653 res!1443736) b!3578545))

(assert (=> d!1055653 m!4071045))

(declare-fun m!4072753 () Bool)

(assert (=> d!1055653 m!4072753))

(declare-fun m!4072755 () Bool)

(assert (=> d!1055653 m!4072755))

(declare-fun m!4072757 () Bool)

(assert (=> d!1055653 m!4072757))

(assert (=> d!1055653 m!4071033))

(declare-fun m!4072759 () Bool)

(assert (=> d!1055653 m!4072759))

(assert (=> d!1055653 m!4071045))

(assert (=> d!1055653 m!4072753))

(assert (=> d!1055653 m!4071045))

(declare-fun m!4072761 () Bool)

(assert (=> d!1055653 m!4072761))

(declare-fun m!4072763 () Bool)

(assert (=> b!3578543 m!4072763))

(declare-fun m!4072765 () Bool)

(assert (=> b!3578544 m!4072765))

(assert (=> b!3578545 m!4071045))

(assert (=> b!3578545 m!4071045))

(assert (=> b!3578545 m!4072753))

(assert (=> b!3578545 m!4072753))

(assert (=> b!3578545 m!4072755))

(declare-fun m!4072767 () Bool)

(assert (=> b!3578545 m!4072767))

(assert (=> b!3577618 d!1055653))

(declare-fun d!1055655 () Bool)

(assert (=> d!1055655 (= (inv!50822 (tag!6184 (rule!8228 (h!42967 tokens!494)))) (= (mod (str.len (value!177779 (tag!6184 (rule!8228 (h!42967 tokens!494))))) 2) 0))))

(assert (=> b!3577592 d!1055655))

(declare-fun d!1055657 () Bool)

(declare-fun res!1443739 () Bool)

(declare-fun e!2213814 () Bool)

(assert (=> d!1055657 (=> (not res!1443739) (not e!2213814))))

(assert (=> d!1055657 (= res!1443739 (semiInverseModEq!2339 (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494))))))))

(assert (=> d!1055657 (= (inv!50825 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) e!2213814)))

(declare-fun b!3578546 () Bool)

(assert (=> b!3578546 (= e!2213814 (equivClasses!2238 (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494))))))))

(assert (= (and d!1055657 res!1443739) b!3578546))

(declare-fun m!4072769 () Bool)

(assert (=> d!1055657 m!4072769))

(declare-fun m!4072771 () Bool)

(assert (=> b!3578546 m!4072771))

(assert (=> b!3577592 d!1055657))

(declare-fun b!3578547 () Bool)

(declare-fun e!2213817 () Bool)

(assert (=> b!3578547 (= e!2213817 (not (= (head!7455 lt!1227568) (c!620122 (regex!5520 lt!1227586)))))))

(declare-fun b!3578548 () Bool)

(declare-fun res!1443743 () Bool)

(assert (=> b!3578548 (=> res!1443743 e!2213817)))

(assert (=> b!3578548 (= res!1443743 (not (isEmpty!22099 (tail!5544 lt!1227568))))))

(declare-fun b!3578549 () Bool)

(declare-fun e!2213820 () Bool)

(declare-fun e!2213815 () Bool)

(assert (=> b!3578549 (= e!2213820 e!2213815)))

(declare-fun c!620316 () Bool)

(assert (=> b!3578549 (= c!620316 ((_ is EmptyLang!10279) (regex!5520 lt!1227586)))))

(declare-fun b!3578550 () Bool)

(declare-fun lt!1227994 () Bool)

(declare-fun call!259276 () Bool)

(assert (=> b!3578550 (= e!2213820 (= lt!1227994 call!259276))))

(declare-fun b!3578551 () Bool)

(declare-fun res!1443742 () Bool)

(declare-fun e!2213818 () Bool)

(assert (=> b!3578551 (=> (not res!1443742) (not e!2213818))))

(assert (=> b!3578551 (= res!1443742 (isEmpty!22099 (tail!5544 lt!1227568)))))

(declare-fun b!3578553 () Bool)

(declare-fun res!1443746 () Bool)

(declare-fun e!2213821 () Bool)

(assert (=> b!3578553 (=> res!1443746 e!2213821)))

(assert (=> b!3578553 (= res!1443746 (not ((_ is ElementMatch!10279) (regex!5520 lt!1227586))))))

(assert (=> b!3578553 (= e!2213815 e!2213821)))

(declare-fun b!3578554 () Bool)

(declare-fun res!1443744 () Bool)

(assert (=> b!3578554 (=> (not res!1443744) (not e!2213818))))

(assert (=> b!3578554 (= res!1443744 (not call!259276))))

(declare-fun b!3578555 () Bool)

(declare-fun e!2213816 () Bool)

(assert (=> b!3578555 (= e!2213816 (matchR!4863 (derivativeStep!3097 (regex!5520 lt!1227586) (head!7455 lt!1227568)) (tail!5544 lt!1227568)))))

(declare-fun bm!259271 () Bool)

(assert (=> bm!259271 (= call!259276 (isEmpty!22099 lt!1227568))))

(declare-fun b!3578556 () Bool)

(declare-fun res!1443747 () Bool)

(assert (=> b!3578556 (=> res!1443747 e!2213821)))

(assert (=> b!3578556 (= res!1443747 e!2213818)))

(declare-fun res!1443740 () Bool)

(assert (=> b!3578556 (=> (not res!1443740) (not e!2213818))))

(assert (=> b!3578556 (= res!1443740 lt!1227994)))

(declare-fun b!3578557 () Bool)

(declare-fun e!2213819 () Bool)

(assert (=> b!3578557 (= e!2213821 e!2213819)))

(declare-fun res!1443741 () Bool)

(assert (=> b!3578557 (=> (not res!1443741) (not e!2213819))))

(assert (=> b!3578557 (= res!1443741 (not lt!1227994))))

(declare-fun b!3578558 () Bool)

(assert (=> b!3578558 (= e!2213818 (= (head!7455 lt!1227568) (c!620122 (regex!5520 lt!1227586))))))

(declare-fun b!3578559 () Bool)

(assert (=> b!3578559 (= e!2213816 (nullable!3544 (regex!5520 lt!1227586)))))

(declare-fun b!3578560 () Bool)

(assert (=> b!3578560 (= e!2213815 (not lt!1227994))))

(declare-fun d!1055659 () Bool)

(assert (=> d!1055659 e!2213820))

(declare-fun c!620317 () Bool)

(assert (=> d!1055659 (= c!620317 ((_ is EmptyExpr!10279) (regex!5520 lt!1227586)))))

(assert (=> d!1055659 (= lt!1227994 e!2213816)))

(declare-fun c!620318 () Bool)

(assert (=> d!1055659 (= c!620318 (isEmpty!22099 lt!1227568))))

(assert (=> d!1055659 (validRegex!4700 (regex!5520 lt!1227586))))

(assert (=> d!1055659 (= (matchR!4863 (regex!5520 lt!1227586) lt!1227568) lt!1227994)))

(declare-fun b!3578552 () Bool)

(assert (=> b!3578552 (= e!2213819 e!2213817)))

(declare-fun res!1443745 () Bool)

(assert (=> b!3578552 (=> res!1443745 e!2213817)))

(assert (=> b!3578552 (= res!1443745 call!259276)))

(assert (= (and d!1055659 c!620318) b!3578559))

(assert (= (and d!1055659 (not c!620318)) b!3578555))

(assert (= (and d!1055659 c!620317) b!3578550))

(assert (= (and d!1055659 (not c!620317)) b!3578549))

(assert (= (and b!3578549 c!620316) b!3578560))

(assert (= (and b!3578549 (not c!620316)) b!3578553))

(assert (= (and b!3578553 (not res!1443746)) b!3578556))

(assert (= (and b!3578556 res!1443740) b!3578554))

(assert (= (and b!3578554 res!1443744) b!3578551))

(assert (= (and b!3578551 res!1443742) b!3578558))

(assert (= (and b!3578556 (not res!1443747)) b!3578557))

(assert (= (and b!3578557 res!1443741) b!3578552))

(assert (= (and b!3578552 (not res!1443745)) b!3578548))

(assert (= (and b!3578548 (not res!1443743)) b!3578547))

(assert (= (or b!3578550 b!3578552 b!3578554) bm!259271))

(declare-fun m!4072773 () Bool)

(assert (=> b!3578551 m!4072773))

(assert (=> b!3578551 m!4072773))

(declare-fun m!4072775 () Bool)

(assert (=> b!3578551 m!4072775))

(assert (=> b!3578555 m!4071123))

(assert (=> b!3578555 m!4071123))

(declare-fun m!4072777 () Bool)

(assert (=> b!3578555 m!4072777))

(assert (=> b!3578555 m!4072773))

(assert (=> b!3578555 m!4072777))

(assert (=> b!3578555 m!4072773))

(declare-fun m!4072779 () Bool)

(assert (=> b!3578555 m!4072779))

(assert (=> b!3578558 m!4071123))

(declare-fun m!4072781 () Bool)

(assert (=> bm!259271 m!4072781))

(assert (=> b!3578548 m!4072773))

(assert (=> b!3578548 m!4072773))

(assert (=> b!3578548 m!4072775))

(declare-fun m!4072783 () Bool)

(assert (=> b!3578559 m!4072783))

(assert (=> b!3578547 m!4071123))

(assert (=> d!1055659 m!4072781))

(declare-fun m!4072785 () Bool)

(assert (=> d!1055659 m!4072785))

(assert (=> b!3577614 d!1055659))

(declare-fun d!1055661 () Bool)

(assert (=> d!1055661 (= (get!12089 lt!1227606) (v!37340 lt!1227606))))

(assert (=> b!3577614 d!1055661))

(declare-fun d!1055663 () Bool)

(assert (=> d!1055663 (= (isEmpty!22096 rules!2135) ((_ is Nil!37546) rules!2135))))

(assert (=> b!3577593 d!1055663))

(declare-fun d!1055665 () Bool)

(declare-fun res!1443748 () Bool)

(declare-fun e!2213822 () Bool)

(assert (=> d!1055665 (=> (not res!1443748) (not e!2213822))))

(assert (=> d!1055665 (= res!1443748 (not (isEmpty!22099 (originalCharacters!6234 separatorToken!241))))))

(assert (=> d!1055665 (= (inv!50826 separatorToken!241) e!2213822)))

(declare-fun b!3578561 () Bool)

(declare-fun res!1443749 () Bool)

(assert (=> b!3578561 (=> (not res!1443749) (not e!2213822))))

(assert (=> b!3578561 (= res!1443749 (= (originalCharacters!6234 separatorToken!241) (list!13781 (dynLambda!16155 (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))) (value!177780 separatorToken!241)))))))

(declare-fun b!3578562 () Bool)

(assert (=> b!3578562 (= e!2213822 (= (size!28638 separatorToken!241) (size!28640 (originalCharacters!6234 separatorToken!241))))))

(assert (= (and d!1055665 res!1443748) b!3578561))

(assert (= (and b!3578561 res!1443749) b!3578562))

(declare-fun b_lambda!105741 () Bool)

(assert (=> (not b_lambda!105741) (not b!3578561)))

(assert (=> b!3578561 t!290044))

(declare-fun b_and!257877 () Bool)

(assert (= b_and!257871 (and (=> t!290044 result!248854) b_and!257877)))

(assert (=> b!3578561 t!290047))

(declare-fun b_and!257879 () Bool)

(assert (= b_and!257873 (and (=> t!290047 result!248858) b_and!257879)))

(assert (=> b!3578561 t!290049))

(declare-fun b_and!257881 () Bool)

(assert (= b_and!257875 (and (=> t!290049 result!248860) b_and!257881)))

(declare-fun m!4072787 () Bool)

(assert (=> d!1055665 m!4072787))

(assert (=> b!3578561 m!4071337))

(assert (=> b!3578561 m!4071337))

(declare-fun m!4072789 () Bool)

(assert (=> b!3578561 m!4072789))

(declare-fun m!4072791 () Bool)

(assert (=> b!3578562 m!4072791))

(assert (=> start!331562 d!1055665))

(declare-fun e!2213824 () List!37669)

(declare-fun b!3578564 () Bool)

(assert (=> b!3578564 (= e!2213824 (Cons!37545 (h!42965 (++!9343 lt!1227614 lt!1227587)) (++!9343 (t!290028 (++!9343 lt!1227614 lt!1227587)) lt!1227593)))))

(declare-fun b!3578563 () Bool)

(assert (=> b!3578563 (= e!2213824 lt!1227593)))

(declare-fun b!3578565 () Bool)

(declare-fun res!1443751 () Bool)

(declare-fun e!2213823 () Bool)

(assert (=> b!3578565 (=> (not res!1443751) (not e!2213823))))

(declare-fun lt!1227995 () List!37669)

(assert (=> b!3578565 (= res!1443751 (= (size!28640 lt!1227995) (+ (size!28640 (++!9343 lt!1227614 lt!1227587)) (size!28640 lt!1227593))))))

(declare-fun b!3578566 () Bool)

(assert (=> b!3578566 (= e!2213823 (or (not (= lt!1227593 Nil!37545)) (= lt!1227995 (++!9343 lt!1227614 lt!1227587))))))

(declare-fun d!1055667 () Bool)

(assert (=> d!1055667 e!2213823))

(declare-fun res!1443750 () Bool)

(assert (=> d!1055667 (=> (not res!1443750) (not e!2213823))))

(assert (=> d!1055667 (= res!1443750 (= (content!5328 lt!1227995) ((_ map or) (content!5328 (++!9343 lt!1227614 lt!1227587)) (content!5328 lt!1227593))))))

(assert (=> d!1055667 (= lt!1227995 e!2213824)))

(declare-fun c!620319 () Bool)

(assert (=> d!1055667 (= c!620319 ((_ is Nil!37545) (++!9343 lt!1227614 lt!1227587)))))

(assert (=> d!1055667 (= (++!9343 (++!9343 lt!1227614 lt!1227587) lt!1227593) lt!1227995)))

(assert (= (and d!1055667 c!620319) b!3578563))

(assert (= (and d!1055667 (not c!620319)) b!3578564))

(assert (= (and d!1055667 res!1443750) b!3578565))

(assert (= (and b!3578565 res!1443751) b!3578566))

(declare-fun m!4072793 () Bool)

(assert (=> b!3578564 m!4072793))

(declare-fun m!4072795 () Bool)

(assert (=> b!3578565 m!4072795))

(assert (=> b!3578565 m!4071041))

(declare-fun m!4072797 () Bool)

(assert (=> b!3578565 m!4072797))

(assert (=> b!3578565 m!4071375))

(declare-fun m!4072799 () Bool)

(assert (=> d!1055667 m!4072799))

(assert (=> d!1055667 m!4071041))

(declare-fun m!4072801 () Bool)

(assert (=> d!1055667 m!4072801))

(assert (=> d!1055667 m!4071383))

(assert (=> b!3577615 d!1055667))

(declare-fun b!3578568 () Bool)

(declare-fun e!2213826 () List!37669)

(assert (=> b!3578568 (= e!2213826 (Cons!37545 (h!42965 lt!1227614) (++!9343 (t!290028 lt!1227614) lt!1227587)))))

(declare-fun b!3578567 () Bool)

(assert (=> b!3578567 (= e!2213826 lt!1227587)))

(declare-fun b!3578569 () Bool)

(declare-fun res!1443753 () Bool)

(declare-fun e!2213825 () Bool)

(assert (=> b!3578569 (=> (not res!1443753) (not e!2213825))))

(declare-fun lt!1227996 () List!37669)

(assert (=> b!3578569 (= res!1443753 (= (size!28640 lt!1227996) (+ (size!28640 lt!1227614) (size!28640 lt!1227587))))))

(declare-fun b!3578570 () Bool)

(assert (=> b!3578570 (= e!2213825 (or (not (= lt!1227587 Nil!37545)) (= lt!1227996 lt!1227614)))))

(declare-fun d!1055669 () Bool)

(assert (=> d!1055669 e!2213825))

(declare-fun res!1443752 () Bool)

(assert (=> d!1055669 (=> (not res!1443752) (not e!2213825))))

(assert (=> d!1055669 (= res!1443752 (= (content!5328 lt!1227996) ((_ map or) (content!5328 lt!1227614) (content!5328 lt!1227587))))))

(assert (=> d!1055669 (= lt!1227996 e!2213826)))

(declare-fun c!620320 () Bool)

(assert (=> d!1055669 (= c!620320 ((_ is Nil!37545) lt!1227614))))

(assert (=> d!1055669 (= (++!9343 lt!1227614 lt!1227587) lt!1227996)))

(assert (= (and d!1055669 c!620320) b!3578567))

(assert (= (and d!1055669 (not c!620320)) b!3578568))

(assert (= (and d!1055669 res!1443752) b!3578569))

(assert (= (and b!3578569 res!1443753) b!3578570))

(declare-fun m!4072803 () Bool)

(assert (=> b!3578568 m!4072803))

(declare-fun m!4072805 () Bool)

(assert (=> b!3578569 m!4072805))

(assert (=> b!3578569 m!4071103))

(assert (=> b!3578569 m!4071305))

(declare-fun m!4072807 () Bool)

(assert (=> d!1055669 m!4072807))

(declare-fun m!4072809 () Bool)

(assert (=> d!1055669 m!4072809))

(assert (=> d!1055669 m!4071311))

(assert (=> b!3577615 d!1055669))

(declare-fun d!1055671 () Bool)

(assert (=> d!1055671 (dynLambda!16158 lambda!123640 (h!42967 (t!290030 tokens!494)))))

(declare-fun lt!1227997 () Unit!53577)

(assert (=> d!1055671 (= lt!1227997 (choose!20828 tokens!494 lambda!123640 (h!42967 (t!290030 tokens!494))))))

(declare-fun e!2213827 () Bool)

(assert (=> d!1055671 e!2213827))

(declare-fun res!1443754 () Bool)

(assert (=> d!1055671 (=> (not res!1443754) (not e!2213827))))

(assert (=> d!1055671 (= res!1443754 (forall!8130 tokens!494 lambda!123640))))

(assert (=> d!1055671 (= (forallContained!1467 tokens!494 lambda!123640 (h!42967 (t!290030 tokens!494))) lt!1227997)))

(declare-fun b!3578571 () Bool)

(assert (=> b!3578571 (= e!2213827 (contains!7121 tokens!494 (h!42967 (t!290030 tokens!494))))))

(assert (= (and d!1055671 res!1443754) b!3578571))

(declare-fun b_lambda!105743 () Bool)

(assert (=> (not b_lambda!105743) (not d!1055671)))

(assert (=> d!1055671 m!4072749))

(declare-fun m!4072811 () Bool)

(assert (=> d!1055671 m!4072811))

(assert (=> d!1055671 m!4071079))

(assert (=> b!3578571 m!4071703))

(assert (=> b!3577590 d!1055671))

(declare-fun d!1055673 () Bool)

(assert (=> d!1055673 (dynLambda!16158 lambda!123640 (h!42967 tokens!494))))

(declare-fun lt!1227998 () Unit!53577)

(assert (=> d!1055673 (= lt!1227998 (choose!20828 tokens!494 lambda!123640 (h!42967 tokens!494)))))

(declare-fun e!2213828 () Bool)

(assert (=> d!1055673 e!2213828))

(declare-fun res!1443755 () Bool)

(assert (=> d!1055673 (=> (not res!1443755) (not e!2213828))))

(assert (=> d!1055673 (= res!1443755 (forall!8130 tokens!494 lambda!123640))))

(assert (=> d!1055673 (= (forallContained!1467 tokens!494 lambda!123640 (h!42967 tokens!494)) lt!1227998)))

(declare-fun b!3578572 () Bool)

(assert (=> b!3578572 (= e!2213828 (contains!7121 tokens!494 (h!42967 tokens!494)))))

(assert (= (and d!1055673 res!1443755) b!3578572))

(declare-fun b_lambda!105745 () Bool)

(assert (=> (not b_lambda!105745) (not d!1055673)))

(assert (=> d!1055673 m!4072731))

(declare-fun m!4072813 () Bool)

(assert (=> d!1055673 m!4072813))

(assert (=> d!1055673 m!4071079))

(declare-fun m!4072815 () Bool)

(assert (=> b!3578572 m!4072815))

(assert (=> b!3577590 d!1055673))

(declare-fun d!1055675 () Bool)

(declare-fun lt!1228000 () BalanceConc!22444)

(assert (=> d!1055675 (= (list!13781 lt!1228000) (printListTailRec!744 thiss!18206 (dropList!1261 lt!1227608 0) (list!13781 (BalanceConc!22445 Empty!11415))))))

(declare-fun e!2213829 () BalanceConc!22444)

(assert (=> d!1055675 (= lt!1228000 e!2213829)))

(declare-fun c!620321 () Bool)

(assert (=> d!1055675 (= c!620321 (>= 0 (size!28641 lt!1227608)))))

(declare-fun e!2213830 () Bool)

(assert (=> d!1055675 e!2213830))

(declare-fun res!1443756 () Bool)

(assert (=> d!1055675 (=> (not res!1443756) (not e!2213830))))

(assert (=> d!1055675 (= res!1443756 (>= 0 0))))

(assert (=> d!1055675 (= (printTailRec!1604 thiss!18206 lt!1227608 0 (BalanceConc!22445 Empty!11415)) lt!1228000)))

(declare-fun b!3578573 () Bool)

(assert (=> b!3578573 (= e!2213830 (<= 0 (size!28641 lt!1227608)))))

(declare-fun b!3578574 () Bool)

(assert (=> b!3578574 (= e!2213829 (BalanceConc!22445 Empty!11415))))

(declare-fun b!3578575 () Bool)

(assert (=> b!3578575 (= e!2213829 (printTailRec!1604 thiss!18206 lt!1227608 (+ 0 1) (++!9345 (BalanceConc!22445 Empty!11415) (charsOf!3534 (apply!9046 lt!1227608 0)))))))

(declare-fun lt!1227999 () List!37671)

(assert (=> b!3578575 (= lt!1227999 (list!13785 lt!1227608))))

(declare-fun lt!1228005 () Unit!53577)

(assert (=> b!3578575 (= lt!1228005 (lemmaDropApply!1219 lt!1227999 0))))

(assert (=> b!3578575 (= (head!7457 (drop!2081 lt!1227999 0)) (apply!9050 lt!1227999 0))))

(declare-fun lt!1228001 () Unit!53577)

(assert (=> b!3578575 (= lt!1228001 lt!1228005)))

(declare-fun lt!1228002 () List!37671)

(assert (=> b!3578575 (= lt!1228002 (list!13785 lt!1227608))))

(declare-fun lt!1228004 () Unit!53577)

(assert (=> b!3578575 (= lt!1228004 (lemmaDropTail!1103 lt!1228002 0))))

(assert (=> b!3578575 (= (tail!5545 (drop!2081 lt!1228002 0)) (drop!2081 lt!1228002 (+ 0 1)))))

(declare-fun lt!1228003 () Unit!53577)

(assert (=> b!3578575 (= lt!1228003 lt!1228004)))

(assert (= (and d!1055675 res!1443756) b!3578573))

(assert (= (and d!1055675 c!620321) b!3578574))

(assert (= (and d!1055675 (not c!620321)) b!3578575))

(declare-fun m!4072817 () Bool)

(assert (=> d!1055675 m!4072817))

(declare-fun m!4072819 () Bool)

(assert (=> d!1055675 m!4072819))

(assert (=> d!1055675 m!4072291))

(declare-fun m!4072821 () Bool)

(assert (=> d!1055675 m!4072821))

(declare-fun m!4072823 () Bool)

(assert (=> d!1055675 m!4072823))

(assert (=> d!1055675 m!4072819))

(assert (=> d!1055675 m!4072291))

(assert (=> b!3578573 m!4072823))

(declare-fun m!4072825 () Bool)

(assert (=> b!3578575 m!4072825))

(declare-fun m!4072827 () Bool)

(assert (=> b!3578575 m!4072827))

(declare-fun m!4072829 () Bool)

(assert (=> b!3578575 m!4072829))

(declare-fun m!4072831 () Bool)

(assert (=> b!3578575 m!4072831))

(declare-fun m!4072833 () Bool)

(assert (=> b!3578575 m!4072833))

(declare-fun m!4072835 () Bool)

(assert (=> b!3578575 m!4072835))

(assert (=> b!3578575 m!4072825))

(assert (=> b!3578575 m!4072831))

(declare-fun m!4072837 () Bool)

(assert (=> b!3578575 m!4072837))

(declare-fun m!4072839 () Bool)

(assert (=> b!3578575 m!4072839))

(declare-fun m!4072841 () Bool)

(assert (=> b!3578575 m!4072841))

(declare-fun m!4072843 () Bool)

(assert (=> b!3578575 m!4072843))

(assert (=> b!3578575 m!4072835))

(assert (=> b!3578575 m!4072843))

(declare-fun m!4072845 () Bool)

(assert (=> b!3578575 m!4072845))

(declare-fun m!4072847 () Bool)

(assert (=> b!3578575 m!4072847))

(assert (=> b!3578575 m!4072839))

(declare-fun m!4072849 () Bool)

(assert (=> b!3578575 m!4072849))

(assert (=> b!3577612 d!1055675))

(declare-fun d!1055677 () Bool)

(declare-fun lt!1228006 () BalanceConc!22444)

(assert (=> d!1055677 (= (list!13781 lt!1228006) (printList!1657 thiss!18206 (list!13785 lt!1227608)))))

(assert (=> d!1055677 (= lt!1228006 (printTailRec!1604 thiss!18206 lt!1227608 0 (BalanceConc!22445 Empty!11415)))))

(assert (=> d!1055677 (= (print!2174 thiss!18206 lt!1227608) lt!1228006)))

(declare-fun bs!569775 () Bool)

(assert (= bs!569775 d!1055677))

(declare-fun m!4072851 () Bool)

(assert (=> bs!569775 m!4072851))

(assert (=> bs!569775 m!4072847))

(assert (=> bs!569775 m!4072847))

(declare-fun m!4072853 () Bool)

(assert (=> bs!569775 m!4072853))

(assert (=> bs!569775 m!4071051))

(assert (=> b!3577612 d!1055677))

(declare-fun d!1055679 () Bool)

(assert (=> d!1055679 (= (list!13781 lt!1227607) (list!13784 (c!620123 lt!1227607)))))

(declare-fun bs!569776 () Bool)

(assert (= bs!569776 d!1055679))

(declare-fun m!4072855 () Bool)

(assert (=> bs!569776 m!4072855))

(assert (=> b!3577612 d!1055679))

(declare-fun d!1055681 () Bool)

(declare-fun e!2213831 () Bool)

(assert (=> d!1055681 e!2213831))

(declare-fun res!1443757 () Bool)

(assert (=> d!1055681 (=> (not res!1443757) (not e!2213831))))

(declare-fun lt!1228007 () BalanceConc!22446)

(assert (=> d!1055681 (= res!1443757 (= (list!13785 lt!1228007) (Cons!37547 (h!42967 tokens!494) Nil!37547)))))

(assert (=> d!1055681 (= lt!1228007 (singleton!1176 (h!42967 tokens!494)))))

(assert (=> d!1055681 (= (singletonSeq!2616 (h!42967 tokens!494)) lt!1228007)))

(declare-fun b!3578576 () Bool)

(assert (=> b!3578576 (= e!2213831 (isBalanced!3493 (c!620124 lt!1228007)))))

(assert (= (and d!1055681 res!1443757) b!3578576))

(declare-fun m!4072857 () Bool)

(assert (=> d!1055681 m!4072857))

(declare-fun m!4072859 () Bool)

(assert (=> d!1055681 m!4072859))

(declare-fun m!4072861 () Bool)

(assert (=> b!3578576 m!4072861))

(assert (=> b!3577612 d!1055681))

(declare-fun d!1055683 () Bool)

(declare-fun c!620324 () Bool)

(assert (=> d!1055683 (= c!620324 ((_ is Cons!37547) (Cons!37547 (h!42967 tokens!494) Nil!37547)))))

(declare-fun e!2213834 () List!37669)

(assert (=> d!1055683 (= (printList!1657 thiss!18206 (Cons!37547 (h!42967 tokens!494) Nil!37547)) e!2213834)))

(declare-fun b!3578581 () Bool)

(assert (=> b!3578581 (= e!2213834 (++!9343 (list!13781 (charsOf!3534 (h!42967 (Cons!37547 (h!42967 tokens!494) Nil!37547)))) (printList!1657 thiss!18206 (t!290030 (Cons!37547 (h!42967 tokens!494) Nil!37547)))))))

(declare-fun b!3578582 () Bool)

(assert (=> b!3578582 (= e!2213834 Nil!37545)))

(assert (= (and d!1055683 c!620324) b!3578581))

(assert (= (and d!1055683 (not c!620324)) b!3578582))

(declare-fun m!4072863 () Bool)

(assert (=> b!3578581 m!4072863))

(assert (=> b!3578581 m!4072863))

(declare-fun m!4072865 () Bool)

(assert (=> b!3578581 m!4072865))

(declare-fun m!4072867 () Bool)

(assert (=> b!3578581 m!4072867))

(assert (=> b!3578581 m!4072865))

(assert (=> b!3578581 m!4072867))

(declare-fun m!4072869 () Bool)

(assert (=> b!3578581 m!4072869))

(assert (=> b!3577612 d!1055683))

(declare-fun b!3578584 () Bool)

(declare-fun e!2213836 () List!37669)

(assert (=> b!3578584 (= e!2213836 (Cons!37545 (h!42965 lt!1227614) (++!9343 (t!290028 lt!1227614) lt!1227603)))))

(declare-fun b!3578583 () Bool)

(assert (=> b!3578583 (= e!2213836 lt!1227603)))

(declare-fun b!3578585 () Bool)

(declare-fun res!1443759 () Bool)

(declare-fun e!2213835 () Bool)

(assert (=> b!3578585 (=> (not res!1443759) (not e!2213835))))

(declare-fun lt!1228008 () List!37669)

(assert (=> b!3578585 (= res!1443759 (= (size!28640 lt!1228008) (+ (size!28640 lt!1227614) (size!28640 lt!1227603))))))

(declare-fun b!3578586 () Bool)

(assert (=> b!3578586 (= e!2213835 (or (not (= lt!1227603 Nil!37545)) (= lt!1228008 lt!1227614)))))

(declare-fun d!1055685 () Bool)

(assert (=> d!1055685 e!2213835))

(declare-fun res!1443758 () Bool)

(assert (=> d!1055685 (=> (not res!1443758) (not e!2213835))))

(assert (=> d!1055685 (= res!1443758 (= (content!5328 lt!1228008) ((_ map or) (content!5328 lt!1227614) (content!5328 lt!1227603))))))

(assert (=> d!1055685 (= lt!1228008 e!2213836)))

(declare-fun c!620325 () Bool)

(assert (=> d!1055685 (= c!620325 ((_ is Nil!37545) lt!1227614))))

(assert (=> d!1055685 (= (++!9343 lt!1227614 lt!1227603) lt!1228008)))

(assert (= (and d!1055685 c!620325) b!3578583))

(assert (= (and d!1055685 (not c!620325)) b!3578584))

(assert (= (and d!1055685 res!1443758) b!3578585))

(assert (= (and b!3578585 res!1443759) b!3578586))

(declare-fun m!4072871 () Bool)

(assert (=> b!3578584 m!4072871))

(declare-fun m!4072873 () Bool)

(assert (=> b!3578585 m!4072873))

(assert (=> b!3578585 m!4071103))

(assert (=> b!3578585 m!4072431))

(declare-fun m!4072875 () Bool)

(assert (=> d!1055685 m!4072875))

(assert (=> d!1055685 m!4072809))

(declare-fun m!4072877 () Bool)

(assert (=> d!1055685 m!4072877))

(assert (=> b!3577613 d!1055685))

(declare-fun d!1055687 () Bool)

(assert (=> d!1055687 (= (++!9343 (++!9343 lt!1227614 lt!1227587) lt!1227593) (++!9343 lt!1227614 (++!9343 lt!1227587 lt!1227593)))))

(declare-fun lt!1228011 () Unit!53577)

(declare-fun choose!20839 (List!37669 List!37669 List!37669) Unit!53577)

(assert (=> d!1055687 (= lt!1228011 (choose!20839 lt!1227614 lt!1227587 lt!1227593))))

(assert (=> d!1055687 (= (lemmaConcatAssociativity!2062 lt!1227614 lt!1227587 lt!1227593) lt!1228011)))

(declare-fun bs!569777 () Bool)

(assert (= bs!569777 d!1055687))

(declare-fun m!4072879 () Bool)

(assert (=> bs!569777 m!4072879))

(assert (=> bs!569777 m!4071201))

(assert (=> bs!569777 m!4071201))

(declare-fun m!4072881 () Bool)

(assert (=> bs!569777 m!4072881))

(assert (=> bs!569777 m!4071041))

(assert (=> bs!569777 m!4071041))

(assert (=> bs!569777 m!4071043))

(assert (=> b!3577613 d!1055687))

(declare-fun d!1055689 () Bool)

(assert (=> d!1055689 (not (matchR!4863 (regex!5520 (rule!8228 separatorToken!241)) lt!1227587))))

(declare-fun lt!1228014 () Unit!53577)

(declare-fun choose!20840 (Regex!10279 List!37669 C!20744) Unit!53577)

(assert (=> d!1055689 (= lt!1228014 (choose!20840 (regex!5520 (rule!8228 separatorToken!241)) lt!1227587 lt!1227592))))

(assert (=> d!1055689 (validRegex!4700 (regex!5520 (rule!8228 separatorToken!241)))))

(assert (=> d!1055689 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!578 (regex!5520 (rule!8228 separatorToken!241)) lt!1227587 lt!1227592) lt!1228014)))

(declare-fun bs!569778 () Bool)

(assert (= bs!569778 d!1055689))

(assert (=> bs!569778 m!4071009))

(declare-fun m!4072883 () Bool)

(assert (=> bs!569778 m!4072883))

(declare-fun m!4072885 () Bool)

(assert (=> bs!569778 m!4072885))

(assert (=> b!3577608 d!1055689))

(declare-fun b!3578587 () Bool)

(declare-fun e!2213839 () Bool)

(assert (=> b!3578587 (= e!2213839 (not (= (head!7455 lt!1227587) (c!620122 (regex!5520 (rule!8228 separatorToken!241))))))))

(declare-fun b!3578588 () Bool)

(declare-fun res!1443763 () Bool)

(assert (=> b!3578588 (=> res!1443763 e!2213839)))

(assert (=> b!3578588 (= res!1443763 (not (isEmpty!22099 (tail!5544 lt!1227587))))))

(declare-fun b!3578589 () Bool)

(declare-fun e!2213842 () Bool)

(declare-fun e!2213837 () Bool)

(assert (=> b!3578589 (= e!2213842 e!2213837)))

(declare-fun c!620327 () Bool)

(assert (=> b!3578589 (= c!620327 ((_ is EmptyLang!10279) (regex!5520 (rule!8228 separatorToken!241))))))

(declare-fun b!3578590 () Bool)

(declare-fun lt!1228015 () Bool)

(declare-fun call!259277 () Bool)

(assert (=> b!3578590 (= e!2213842 (= lt!1228015 call!259277))))

(declare-fun b!3578591 () Bool)

(declare-fun res!1443762 () Bool)

(declare-fun e!2213840 () Bool)

(assert (=> b!3578591 (=> (not res!1443762) (not e!2213840))))

(assert (=> b!3578591 (= res!1443762 (isEmpty!22099 (tail!5544 lt!1227587)))))

(declare-fun b!3578593 () Bool)

(declare-fun res!1443766 () Bool)

(declare-fun e!2213843 () Bool)

(assert (=> b!3578593 (=> res!1443766 e!2213843)))

(assert (=> b!3578593 (= res!1443766 (not ((_ is ElementMatch!10279) (regex!5520 (rule!8228 separatorToken!241)))))))

(assert (=> b!3578593 (= e!2213837 e!2213843)))

(declare-fun b!3578594 () Bool)

(declare-fun res!1443764 () Bool)

(assert (=> b!3578594 (=> (not res!1443764) (not e!2213840))))

(assert (=> b!3578594 (= res!1443764 (not call!259277))))

(declare-fun b!3578595 () Bool)

(declare-fun e!2213838 () Bool)

(assert (=> b!3578595 (= e!2213838 (matchR!4863 (derivativeStep!3097 (regex!5520 (rule!8228 separatorToken!241)) (head!7455 lt!1227587)) (tail!5544 lt!1227587)))))

(declare-fun bm!259272 () Bool)

(assert (=> bm!259272 (= call!259277 (isEmpty!22099 lt!1227587))))

(declare-fun b!3578596 () Bool)

(declare-fun res!1443767 () Bool)

(assert (=> b!3578596 (=> res!1443767 e!2213843)))

(assert (=> b!3578596 (= res!1443767 e!2213840)))

(declare-fun res!1443760 () Bool)

(assert (=> b!3578596 (=> (not res!1443760) (not e!2213840))))

(assert (=> b!3578596 (= res!1443760 lt!1228015)))

(declare-fun b!3578597 () Bool)

(declare-fun e!2213841 () Bool)

(assert (=> b!3578597 (= e!2213843 e!2213841)))

(declare-fun res!1443761 () Bool)

(assert (=> b!3578597 (=> (not res!1443761) (not e!2213841))))

(assert (=> b!3578597 (= res!1443761 (not lt!1228015))))

(declare-fun b!3578598 () Bool)

(assert (=> b!3578598 (= e!2213840 (= (head!7455 lt!1227587) (c!620122 (regex!5520 (rule!8228 separatorToken!241)))))))

(declare-fun b!3578599 () Bool)

(assert (=> b!3578599 (= e!2213838 (nullable!3544 (regex!5520 (rule!8228 separatorToken!241))))))

(declare-fun b!3578600 () Bool)

(assert (=> b!3578600 (= e!2213837 (not lt!1228015))))

(declare-fun d!1055691 () Bool)

(assert (=> d!1055691 e!2213842))

(declare-fun c!620328 () Bool)

(assert (=> d!1055691 (= c!620328 ((_ is EmptyExpr!10279) (regex!5520 (rule!8228 separatorToken!241))))))

(assert (=> d!1055691 (= lt!1228015 e!2213838)))

(declare-fun c!620329 () Bool)

(assert (=> d!1055691 (= c!620329 (isEmpty!22099 lt!1227587))))

(assert (=> d!1055691 (validRegex!4700 (regex!5520 (rule!8228 separatorToken!241)))))

(assert (=> d!1055691 (= (matchR!4863 (regex!5520 (rule!8228 separatorToken!241)) lt!1227587) lt!1228015)))

(declare-fun b!3578592 () Bool)

(assert (=> b!3578592 (= e!2213841 e!2213839)))

(declare-fun res!1443765 () Bool)

(assert (=> b!3578592 (=> res!1443765 e!2213839)))

(assert (=> b!3578592 (= res!1443765 call!259277)))

(assert (= (and d!1055691 c!620329) b!3578599))

(assert (= (and d!1055691 (not c!620329)) b!3578595))

(assert (= (and d!1055691 c!620328) b!3578590))

(assert (= (and d!1055691 (not c!620328)) b!3578589))

(assert (= (and b!3578589 c!620327) b!3578600))

(assert (= (and b!3578589 (not c!620327)) b!3578593))

(assert (= (and b!3578593 (not res!1443766)) b!3578596))

(assert (= (and b!3578596 res!1443760) b!3578594))

(assert (= (and b!3578594 res!1443764) b!3578591))

(assert (= (and b!3578591 res!1443762) b!3578598))

(assert (= (and b!3578596 (not res!1443767)) b!3578597))

(assert (= (and b!3578597 res!1443761) b!3578592))

(assert (= (and b!3578592 (not res!1443765)) b!3578588))

(assert (= (and b!3578588 (not res!1443763)) b!3578587))

(assert (= (or b!3578590 b!3578592 b!3578594) bm!259272))

(assert (=> b!3578591 m!4071485))

(assert (=> b!3578591 m!4071485))

(assert (=> b!3578591 m!4071487))

(assert (=> b!3578595 m!4071083))

(assert (=> b!3578595 m!4071083))

(declare-fun m!4072887 () Bool)

(assert (=> b!3578595 m!4072887))

(assert (=> b!3578595 m!4071485))

(assert (=> b!3578595 m!4072887))

(assert (=> b!3578595 m!4071485))

(declare-fun m!4072889 () Bool)

(assert (=> b!3578595 m!4072889))

(assert (=> b!3578598 m!4071083))

(assert (=> bm!259272 m!4071493))

(assert (=> b!3578588 m!4071485))

(assert (=> b!3578588 m!4071485))

(assert (=> b!3578588 m!4071487))

(declare-fun m!4072891 () Bool)

(assert (=> b!3578599 m!4072891))

(assert (=> b!3578587 m!4071083))

(assert (=> d!1055691 m!4071493))

(assert (=> d!1055691 m!4072885))

(assert (=> b!3577608 d!1055691))

(declare-fun d!1055693 () Bool)

(declare-fun lt!1228018 () Token!10406)

(assert (=> d!1055693 (= lt!1228018 (apply!9050 (list!13785 (_1!21872 lt!1227571)) 0))))

(declare-fun apply!9051 (Conc!11416 Int) Token!10406)

(assert (=> d!1055693 (= lt!1228018 (apply!9051 (c!620124 (_1!21872 lt!1227571)) 0))))

(declare-fun e!2213846 () Bool)

(assert (=> d!1055693 e!2213846))

(declare-fun res!1443770 () Bool)

(assert (=> d!1055693 (=> (not res!1443770) (not e!2213846))))

(assert (=> d!1055693 (= res!1443770 (<= 0 0))))

(assert (=> d!1055693 (= (apply!9046 (_1!21872 lt!1227571) 0) lt!1228018)))

(declare-fun b!3578603 () Bool)

(assert (=> b!3578603 (= e!2213846 (< 0 (size!28641 (_1!21872 lt!1227571))))))

(assert (= (and d!1055693 res!1443770) b!3578603))

(assert (=> d!1055693 m!4071855))

(assert (=> d!1055693 m!4071855))

(declare-fun m!4072893 () Bool)

(assert (=> d!1055693 m!4072893))

(declare-fun m!4072895 () Bool)

(assert (=> d!1055693 m!4072895))

(assert (=> b!3578603 m!4071115))

(assert (=> b!3577587 d!1055693))

(declare-fun d!1055695 () Bool)

(declare-fun lt!1228019 () Token!10406)

(assert (=> d!1055695 (= lt!1228019 (apply!9050 (list!13785 (_1!21872 lt!1227582)) 0))))

(assert (=> d!1055695 (= lt!1228019 (apply!9051 (c!620124 (_1!21872 lt!1227582)) 0))))

(declare-fun e!2213847 () Bool)

(assert (=> d!1055695 e!2213847))

(declare-fun res!1443771 () Bool)

(assert (=> d!1055695 (=> (not res!1443771) (not e!2213847))))

(assert (=> d!1055695 (= res!1443771 (<= 0 0))))

(assert (=> d!1055695 (= (apply!9046 (_1!21872 lt!1227582) 0) lt!1228019)))

(declare-fun b!3578604 () Bool)

(assert (=> b!3578604 (= e!2213847 (< 0 (size!28641 (_1!21872 lt!1227582))))))

(assert (= (and d!1055695 res!1443771) b!3578604))

(assert (=> d!1055695 m!4072665))

(assert (=> d!1055695 m!4072665))

(declare-fun m!4072897 () Bool)

(assert (=> d!1055695 m!4072897))

(declare-fun m!4072899 () Bool)

(assert (=> d!1055695 m!4072899))

(assert (=> b!3578604 m!4071139))

(assert (=> b!3577609 d!1055695))

(declare-fun d!1055697 () Bool)

(declare-fun lt!1228020 () Bool)

(assert (=> d!1055697 (= lt!1228020 (isEmpty!22099 (list!13781 (_2!21872 lt!1227571))))))

(assert (=> d!1055697 (= lt!1228020 (isEmpty!22100 (c!620123 (_2!21872 lt!1227571))))))

(assert (=> d!1055697 (= (isEmpty!22095 (_2!21872 lt!1227571)) lt!1228020)))

(declare-fun bs!569779 () Bool)

(assert (= bs!569779 d!1055697))

(declare-fun m!4072901 () Bool)

(assert (=> bs!569779 m!4072901))

(assert (=> bs!569779 m!4072901))

(declare-fun m!4072903 () Bool)

(assert (=> bs!569779 m!4072903))

(declare-fun m!4072905 () Bool)

(assert (=> bs!569779 m!4072905))

(assert (=> b!3577610 d!1055697))

(declare-fun d!1055699 () Bool)

(assert (=> d!1055699 (not (matchR!4863 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) lt!1227568))))

(declare-fun lt!1228021 () Unit!53577)

(assert (=> d!1055699 (= lt!1228021 (choose!20840 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) lt!1227568 lt!1227595))))

(assert (=> d!1055699 (validRegex!4700 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))))

(assert (=> d!1055699 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!578 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) lt!1227568 lt!1227595) lt!1228021)))

(declare-fun bs!569780 () Bool)

(assert (= bs!569780 d!1055699))

(assert (=> bs!569780 m!4071015))

(declare-fun m!4072907 () Bool)

(assert (=> bs!569780 m!4072907))

(declare-fun m!4072909 () Bool)

(assert (=> bs!569780 m!4072909))

(assert (=> b!3577589 d!1055699))

(declare-fun b!3578605 () Bool)

(declare-fun e!2213850 () Bool)

(assert (=> b!3578605 (= e!2213850 (not (= (head!7455 lt!1227568) (c!620122 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))))))

(declare-fun b!3578606 () Bool)

(declare-fun res!1443775 () Bool)

(assert (=> b!3578606 (=> res!1443775 e!2213850)))

(assert (=> b!3578606 (= res!1443775 (not (isEmpty!22099 (tail!5544 lt!1227568))))))

(declare-fun b!3578607 () Bool)

(declare-fun e!2213853 () Bool)

(declare-fun e!2213848 () Bool)

(assert (=> b!3578607 (= e!2213853 e!2213848)))

(declare-fun c!620330 () Bool)

(assert (=> b!3578607 (= c!620330 ((_ is EmptyLang!10279) (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))))

(declare-fun b!3578608 () Bool)

(declare-fun lt!1228022 () Bool)

(declare-fun call!259278 () Bool)

(assert (=> b!3578608 (= e!2213853 (= lt!1228022 call!259278))))

(declare-fun b!3578609 () Bool)

(declare-fun res!1443774 () Bool)

(declare-fun e!2213851 () Bool)

(assert (=> b!3578609 (=> (not res!1443774) (not e!2213851))))

(assert (=> b!3578609 (= res!1443774 (isEmpty!22099 (tail!5544 lt!1227568)))))

(declare-fun b!3578611 () Bool)

(declare-fun res!1443778 () Bool)

(declare-fun e!2213854 () Bool)

(assert (=> b!3578611 (=> res!1443778 e!2213854)))

(assert (=> b!3578611 (= res!1443778 (not ((_ is ElementMatch!10279) (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))))))

(assert (=> b!3578611 (= e!2213848 e!2213854)))

(declare-fun b!3578612 () Bool)

(declare-fun res!1443776 () Bool)

(assert (=> b!3578612 (=> (not res!1443776) (not e!2213851))))

(assert (=> b!3578612 (= res!1443776 (not call!259278))))

(declare-fun b!3578613 () Bool)

(declare-fun e!2213849 () Bool)

(assert (=> b!3578613 (= e!2213849 (matchR!4863 (derivativeStep!3097 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) (head!7455 lt!1227568)) (tail!5544 lt!1227568)))))

(declare-fun bm!259273 () Bool)

(assert (=> bm!259273 (= call!259278 (isEmpty!22099 lt!1227568))))

(declare-fun b!3578614 () Bool)

(declare-fun res!1443779 () Bool)

(assert (=> b!3578614 (=> res!1443779 e!2213854)))

(assert (=> b!3578614 (= res!1443779 e!2213851)))

(declare-fun res!1443772 () Bool)

(assert (=> b!3578614 (=> (not res!1443772) (not e!2213851))))

(assert (=> b!3578614 (= res!1443772 lt!1228022)))

(declare-fun b!3578615 () Bool)

(declare-fun e!2213852 () Bool)

(assert (=> b!3578615 (= e!2213854 e!2213852)))

(declare-fun res!1443773 () Bool)

(assert (=> b!3578615 (=> (not res!1443773) (not e!2213852))))

(assert (=> b!3578615 (= res!1443773 (not lt!1228022))))

(declare-fun b!3578616 () Bool)

(assert (=> b!3578616 (= e!2213851 (= (head!7455 lt!1227568) (c!620122 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))))))

(declare-fun b!3578617 () Bool)

(assert (=> b!3578617 (= e!2213849 (nullable!3544 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))))

(declare-fun b!3578618 () Bool)

(assert (=> b!3578618 (= e!2213848 (not lt!1228022))))

(declare-fun d!1055701 () Bool)

(assert (=> d!1055701 e!2213853))

(declare-fun c!620331 () Bool)

(assert (=> d!1055701 (= c!620331 ((_ is EmptyExpr!10279) (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))))

(assert (=> d!1055701 (= lt!1228022 e!2213849)))

(declare-fun c!620332 () Bool)

(assert (=> d!1055701 (= c!620332 (isEmpty!22099 lt!1227568))))

(assert (=> d!1055701 (validRegex!4700 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))))

(assert (=> d!1055701 (= (matchR!4863 (regex!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))) lt!1227568) lt!1228022)))

(declare-fun b!3578610 () Bool)

(assert (=> b!3578610 (= e!2213852 e!2213850)))

(declare-fun res!1443777 () Bool)

(assert (=> b!3578610 (=> res!1443777 e!2213850)))

(assert (=> b!3578610 (= res!1443777 call!259278)))

(assert (= (and d!1055701 c!620332) b!3578617))

(assert (= (and d!1055701 (not c!620332)) b!3578613))

(assert (= (and d!1055701 c!620331) b!3578608))

(assert (= (and d!1055701 (not c!620331)) b!3578607))

(assert (= (and b!3578607 c!620330) b!3578618))

(assert (= (and b!3578607 (not c!620330)) b!3578611))

(assert (= (and b!3578611 (not res!1443778)) b!3578614))

(assert (= (and b!3578614 res!1443772) b!3578612))

(assert (= (and b!3578612 res!1443776) b!3578609))

(assert (= (and b!3578609 res!1443774) b!3578616))

(assert (= (and b!3578614 (not res!1443779)) b!3578615))

(assert (= (and b!3578615 res!1443773) b!3578610))

(assert (= (and b!3578610 (not res!1443777)) b!3578606))

(assert (= (and b!3578606 (not res!1443775)) b!3578605))

(assert (= (or b!3578608 b!3578610 b!3578612) bm!259273))

(assert (=> b!3578609 m!4072773))

(assert (=> b!3578609 m!4072773))

(assert (=> b!3578609 m!4072775))

(assert (=> b!3578613 m!4071123))

(assert (=> b!3578613 m!4071123))

(declare-fun m!4072911 () Bool)

(assert (=> b!3578613 m!4072911))

(assert (=> b!3578613 m!4072773))

(assert (=> b!3578613 m!4072911))

(assert (=> b!3578613 m!4072773))

(declare-fun m!4072913 () Bool)

(assert (=> b!3578613 m!4072913))

(assert (=> b!3578616 m!4071123))

(assert (=> bm!259273 m!4072781))

(assert (=> b!3578606 m!4072773))

(assert (=> b!3578606 m!4072773))

(assert (=> b!3578606 m!4072775))

(declare-fun m!4072915 () Bool)

(assert (=> b!3578617 m!4072915))

(assert (=> b!3578605 m!4071123))

(assert (=> d!1055701 m!4072781))

(assert (=> d!1055701 m!4072909))

(assert (=> b!3577589 d!1055701))

(declare-fun e!2213857 () Bool)

(assert (=> b!3577616 (= tp!1094652 e!2213857)))

(declare-fun b!3578629 () Bool)

(declare-fun tp_is_empty!17669 () Bool)

(assert (=> b!3578629 (= e!2213857 tp_is_empty!17669)))

(declare-fun b!3578630 () Bool)

(declare-fun tp!1094736 () Bool)

(declare-fun tp!1094737 () Bool)

(assert (=> b!3578630 (= e!2213857 (and tp!1094736 tp!1094737))))

(declare-fun b!3578632 () Bool)

(declare-fun tp!1094735 () Bool)

(declare-fun tp!1094734 () Bool)

(assert (=> b!3578632 (= e!2213857 (and tp!1094735 tp!1094734))))

(declare-fun b!3578631 () Bool)

(declare-fun tp!1094733 () Bool)

(assert (=> b!3578631 (= e!2213857 tp!1094733)))

(assert (= (and b!3577616 ((_ is ElementMatch!10279) (regex!5520 (h!42966 rules!2135)))) b!3578629))

(assert (= (and b!3577616 ((_ is Concat!16029) (regex!5520 (h!42966 rules!2135)))) b!3578630))

(assert (= (and b!3577616 ((_ is Star!10279) (regex!5520 (h!42966 rules!2135)))) b!3578631))

(assert (= (and b!3577616 ((_ is Union!10279) (regex!5520 (h!42966 rules!2135)))) b!3578632))

(declare-fun e!2213858 () Bool)

(assert (=> b!3577592 (= tp!1094653 e!2213858)))

(declare-fun b!3578633 () Bool)

(assert (=> b!3578633 (= e!2213858 tp_is_empty!17669)))

(declare-fun b!3578634 () Bool)

(declare-fun tp!1094741 () Bool)

(declare-fun tp!1094742 () Bool)

(assert (=> b!3578634 (= e!2213858 (and tp!1094741 tp!1094742))))

(declare-fun b!3578636 () Bool)

(declare-fun tp!1094740 () Bool)

(declare-fun tp!1094739 () Bool)

(assert (=> b!3578636 (= e!2213858 (and tp!1094740 tp!1094739))))

(declare-fun b!3578635 () Bool)

(declare-fun tp!1094738 () Bool)

(assert (=> b!3578635 (= e!2213858 tp!1094738)))

(assert (= (and b!3577592 ((_ is ElementMatch!10279) (regex!5520 (rule!8228 (h!42967 tokens!494))))) b!3578633))

(assert (= (and b!3577592 ((_ is Concat!16029) (regex!5520 (rule!8228 (h!42967 tokens!494))))) b!3578634))

(assert (= (and b!3577592 ((_ is Star!10279) (regex!5520 (rule!8228 (h!42967 tokens!494))))) b!3578635))

(assert (= (and b!3577592 ((_ is Union!10279) (regex!5520 (rule!8228 (h!42967 tokens!494))))) b!3578636))

(declare-fun b!3578650 () Bool)

(declare-fun b_free!91613 () Bool)

(declare-fun b_next!92317 () Bool)

(assert (=> b!3578650 (= b_free!91613 (not b_next!92317))))

(declare-fun t!290126 () Bool)

(declare-fun tb!204239 () Bool)

(assert (=> (and b!3578650 (= (toValue!7792 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))) t!290126) tb!204239))

(declare-fun result!248940 () Bool)

(assert (= result!248940 result!248888))

(assert (=> d!1055455 t!290126))

(declare-fun t!290128 () Bool)

(declare-fun tb!204241 () Bool)

(assert (=> (and b!3578650 (= (toValue!7792 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494))))) t!290128) tb!204241))

(declare-fun result!248942 () Bool)

(assert (= result!248942 result!248896))

(assert (=> d!1055457 t!290128))

(declare-fun b_and!257883 () Bool)

(declare-fun tp!1094755 () Bool)

(assert (=> b!3578650 (= tp!1094755 (and (=> t!290126 result!248940) (=> t!290128 result!248942) b_and!257883))))

(declare-fun b_free!91615 () Bool)

(declare-fun b_next!92319 () Bool)

(assert (=> b!3578650 (= b_free!91615 (not b_next!92319))))

(declare-fun tb!204243 () Bool)

(declare-fun t!290130 () Bool)

(assert (=> (and b!3578650 (= (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241)))) t!290130) tb!204243))

(declare-fun result!248944 () Bool)

(assert (= result!248944 result!248854))

(assert (=> d!1055287 t!290130))

(assert (=> b!3578561 t!290130))

(declare-fun t!290132 () Bool)

(declare-fun tb!204245 () Bool)

(assert (=> (and b!3578650 (= (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494))))) t!290132) tb!204245))

(declare-fun result!248946 () Bool)

(assert (= result!248946 result!248874))

(assert (=> b!3577876 t!290132))

(assert (=> d!1055643 t!290132))

(declare-fun t!290134 () Bool)

(declare-fun tb!204247 () Bool)

(assert (=> (and b!3578650 (= (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))) t!290134) tb!204247))

(declare-fun result!248948 () Bool)

(assert (= result!248948 result!248862))

(assert (=> d!1055303 t!290134))

(declare-fun b_and!257885 () Bool)

(declare-fun tp!1094757 () Bool)

(assert (=> b!3578650 (= tp!1094757 (and (=> t!290132 result!248946) (=> t!290134 result!248948) (=> t!290130 result!248944) b_and!257885))))

(declare-fun e!2213871 () Bool)

(declare-fun tp!1094753 () Bool)

(declare-fun b!3578647 () Bool)

(declare-fun e!2213874 () Bool)

(assert (=> b!3578647 (= e!2213874 (and (inv!50826 (h!42967 (t!290030 tokens!494))) e!2213871 tp!1094753))))

(declare-fun b!3578649 () Bool)

(declare-fun e!2213875 () Bool)

(declare-fun e!2213876 () Bool)

(declare-fun tp!1094754 () Bool)

(assert (=> b!3578649 (= e!2213876 (and tp!1094754 (inv!50822 (tag!6184 (rule!8228 (h!42967 (t!290030 tokens!494))))) (inv!50825 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) e!2213875))))

(declare-fun tp!1094756 () Bool)

(declare-fun b!3578648 () Bool)

(assert (=> b!3578648 (= e!2213871 (and (inv!21 (value!177780 (h!42967 (t!290030 tokens!494)))) e!2213876 tp!1094756))))

(assert (=> b!3578650 (= e!2213875 (and tp!1094755 tp!1094757))))

(assert (=> b!3577605 (= tp!1094654 e!2213874)))

(assert (= b!3578649 b!3578650))

(assert (= b!3578648 b!3578649))

(assert (= b!3578647 b!3578648))

(assert (= (and b!3577605 ((_ is Cons!37547) (t!290030 tokens!494))) b!3578647))

(declare-fun m!4072917 () Bool)

(assert (=> b!3578647 m!4072917))

(declare-fun m!4072919 () Bool)

(assert (=> b!3578649 m!4072919))

(declare-fun m!4072921 () Bool)

(assert (=> b!3578649 m!4072921))

(declare-fun m!4072923 () Bool)

(assert (=> b!3578648 m!4072923))

(declare-fun b!3578653 () Bool)

(declare-fun e!2213879 () Bool)

(assert (=> b!3578653 (= e!2213879 true)))

(declare-fun b!3578652 () Bool)

(declare-fun e!2213878 () Bool)

(assert (=> b!3578652 (= e!2213878 e!2213879)))

(declare-fun b!3578651 () Bool)

(declare-fun e!2213877 () Bool)

(assert (=> b!3578651 (= e!2213877 e!2213878)))

(assert (=> b!3577630 e!2213877))

(assert (= b!3578652 b!3578653))

(assert (= b!3578651 b!3578652))

(assert (= (and b!3577630 ((_ is Cons!37546) (t!290029 rules!2135))) b!3578651))

(assert (=> b!3578653 (< (dynLambda!16151 order!20401 (toValue!7792 (transformation!5520 (h!42966 (t!290029 rules!2135))))) (dynLambda!16152 order!20403 lambda!123641))))

(assert (=> b!3578653 (< (dynLambda!16153 order!20405 (toChars!7651 (transformation!5520 (h!42966 (t!290029 rules!2135))))) (dynLambda!16152 order!20403 lambda!123641))))

(declare-fun b!3578658 () Bool)

(declare-fun e!2213882 () Bool)

(declare-fun tp!1094760 () Bool)

(assert (=> b!3578658 (= e!2213882 (and tp_is_empty!17669 tp!1094760))))

(assert (=> b!3577601 (= tp!1094656 e!2213882)))

(assert (= (and b!3577601 ((_ is Cons!37545) (originalCharacters!6234 (h!42967 tokens!494)))) b!3578658))

(declare-fun e!2213883 () Bool)

(assert (=> b!3577602 (= tp!1094645 e!2213883)))

(declare-fun b!3578659 () Bool)

(assert (=> b!3578659 (= e!2213883 tp_is_empty!17669)))

(declare-fun b!3578660 () Bool)

(declare-fun tp!1094764 () Bool)

(declare-fun tp!1094765 () Bool)

(assert (=> b!3578660 (= e!2213883 (and tp!1094764 tp!1094765))))

(declare-fun b!3578662 () Bool)

(declare-fun tp!1094763 () Bool)

(declare-fun tp!1094762 () Bool)

(assert (=> b!3578662 (= e!2213883 (and tp!1094763 tp!1094762))))

(declare-fun b!3578661 () Bool)

(declare-fun tp!1094761 () Bool)

(assert (=> b!3578661 (= e!2213883 tp!1094761)))

(assert (= (and b!3577602 ((_ is ElementMatch!10279) (regex!5520 (rule!8228 separatorToken!241)))) b!3578659))

(assert (= (and b!3577602 ((_ is Concat!16029) (regex!5520 (rule!8228 separatorToken!241)))) b!3578660))

(assert (= (and b!3577602 ((_ is Star!10279) (regex!5520 (rule!8228 separatorToken!241)))) b!3578661))

(assert (= (and b!3577602 ((_ is Union!10279) (regex!5520 (rule!8228 separatorToken!241)))) b!3578662))

(declare-fun b!3578673 () Bool)

(declare-fun b_free!91617 () Bool)

(declare-fun b_next!92321 () Bool)

(assert (=> b!3578673 (= b_free!91617 (not b_next!92321))))

(declare-fun t!290136 () Bool)

(declare-fun tb!204249 () Bool)

(assert (=> (and b!3578673 (= (toValue!7792 (transformation!5520 (h!42966 (t!290029 rules!2135)))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))) t!290136) tb!204249))

(declare-fun result!248954 () Bool)

(assert (= result!248954 result!248888))

(assert (=> d!1055455 t!290136))

(declare-fun tb!204251 () Bool)

(declare-fun t!290138 () Bool)

(assert (=> (and b!3578673 (= (toValue!7792 (transformation!5520 (h!42966 (t!290029 rules!2135)))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494))))) t!290138) tb!204251))

(declare-fun result!248956 () Bool)

(assert (= result!248956 result!248896))

(assert (=> d!1055457 t!290138))

(declare-fun b_and!257887 () Bool)

(declare-fun tp!1094776 () Bool)

(assert (=> b!3578673 (= tp!1094776 (and (=> t!290136 result!248954) (=> t!290138 result!248956) b_and!257887))))

(declare-fun b_free!91619 () Bool)

(declare-fun b_next!92323 () Bool)

(assert (=> b!3578673 (= b_free!91619 (not b_next!92323))))

(declare-fun t!290140 () Bool)

(declare-fun tb!204253 () Bool)

(assert (=> (and b!3578673 (= (toChars!7651 (transformation!5520 (h!42966 (t!290029 rules!2135)))) (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241)))) t!290140) tb!204253))

(declare-fun result!248958 () Bool)

(assert (= result!248958 result!248854))

(assert (=> d!1055287 t!290140))

(assert (=> b!3578561 t!290140))

(declare-fun tb!204255 () Bool)

(declare-fun t!290142 () Bool)

(assert (=> (and b!3578673 (= (toChars!7651 (transformation!5520 (h!42966 (t!290029 rules!2135)))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494))))) t!290142) tb!204255))

(declare-fun result!248960 () Bool)

(assert (= result!248960 result!248874))

(assert (=> b!3577876 t!290142))

(assert (=> d!1055643 t!290142))

(declare-fun t!290144 () Bool)

(declare-fun tb!204257 () Bool)

(assert (=> (and b!3578673 (= (toChars!7651 (transformation!5520 (h!42966 (t!290029 rules!2135)))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494)))))) t!290144) tb!204257))

(declare-fun result!248962 () Bool)

(assert (= result!248962 result!248862))

(assert (=> d!1055303 t!290144))

(declare-fun tp!1094775 () Bool)

(declare-fun b_and!257889 () Bool)

(assert (=> b!3578673 (= tp!1094775 (and (=> t!290144 result!248962) (=> t!290142 result!248960) (=> t!290140 result!248958) b_and!257889))))

(declare-fun e!2213894 () Bool)

(assert (=> b!3578673 (= e!2213894 (and tp!1094776 tp!1094775))))

(declare-fun tp!1094777 () Bool)

(declare-fun b!3578672 () Bool)

(declare-fun e!2213895 () Bool)

(assert (=> b!3578672 (= e!2213895 (and tp!1094777 (inv!50822 (tag!6184 (h!42966 (t!290029 rules!2135)))) (inv!50825 (transformation!5520 (h!42966 (t!290029 rules!2135)))) e!2213894))))

(declare-fun b!3578671 () Bool)

(declare-fun e!2213893 () Bool)

(declare-fun tp!1094774 () Bool)

(assert (=> b!3578671 (= e!2213893 (and e!2213895 tp!1094774))))

(assert (=> b!3577619 (= tp!1094650 e!2213893)))

(assert (= b!3578672 b!3578673))

(assert (= b!3578671 b!3578672))

(assert (= (and b!3577619 ((_ is Cons!37546) (t!290029 rules!2135))) b!3578671))

(declare-fun m!4072925 () Bool)

(assert (=> b!3578672 m!4072925))

(declare-fun m!4072927 () Bool)

(assert (=> b!3578672 m!4072927))

(declare-fun b!3578674 () Bool)

(declare-fun e!2213896 () Bool)

(declare-fun tp!1094778 () Bool)

(assert (=> b!3578674 (= e!2213896 (and tp_is_empty!17669 tp!1094778))))

(assert (=> b!3577598 (= tp!1094646 e!2213896)))

(assert (= (and b!3577598 ((_ is Cons!37545) (originalCharacters!6234 separatorToken!241))) b!3578674))

(declare-fun b_lambda!105747 () Bool)

(assert (= b_lambda!105737 (or (and b!3578650 b_free!91615 (= (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))))) (and b!3577577 b_free!91599) (and b!3577582 b_free!91603 (= (toChars!7651 (transformation!5520 (h!42966 rules!2135))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))))) (and b!3578673 b_free!91619 (= (toChars!7651 (transformation!5520 (h!42966 (t!290029 rules!2135)))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))))) (and b!3577594 b_free!91595 (= (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))))) b_lambda!105747)))

(declare-fun b_lambda!105749 () Bool)

(assert (= b_lambda!105741 (or (and b!3577582 b_free!91603 (= (toChars!7651 (transformation!5520 (h!42966 rules!2135))) (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))))) (and b!3577594 b_free!91595) (and b!3578650 b_free!91615 (= (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))))) (and b!3577577 b_free!91599 (= (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))))) (and b!3578673 b_free!91619 (= (toChars!7651 (transformation!5520 (h!42966 (t!290029 rules!2135)))) (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))))) b_lambda!105749)))

(declare-fun b_lambda!105751 () Bool)

(assert (= b_lambda!105695 (or (and b!3578650 b_free!91613 (= (toValue!7792 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494)))))) (and b!3578673 b_free!91617 (= (toValue!7792 (transformation!5520 (h!42966 (t!290029 rules!2135)))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494)))))) (and b!3577594 b_free!91593 (= (toValue!7792 (transformation!5520 (rule!8228 separatorToken!241))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494)))))) (and b!3577582 b_free!91601 (= (toValue!7792 (transformation!5520 (h!42966 rules!2135))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494)))))) (and b!3577577 b_free!91597) b_lambda!105751)))

(declare-fun b_lambda!105753 () Bool)

(assert (= b_lambda!105739 (or b!3577599 b_lambda!105753)))

(declare-fun bs!569781 () Bool)

(declare-fun d!1055703 () Bool)

(assert (= bs!569781 (and d!1055703 b!3577599)))

(assert (=> bs!569781 (= (dynLambda!16158 lambda!123640 (h!42967 (t!290030 tokens!494))) (not (isSeparator!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))))

(assert (=> b!3578541 d!1055703))

(declare-fun b_lambda!105755 () Bool)

(assert (= b_lambda!105685 (or (and b!3578650 b_free!91615 (= (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))))) (and b!3577577 b_free!91599) (and b!3577582 b_free!91603 (= (toChars!7651 (transformation!5520 (h!42966 rules!2135))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))))) (and b!3578673 b_free!91619 (= (toChars!7651 (transformation!5520 (h!42966 (t!290029 rules!2135)))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))))) (and b!3577594 b_free!91595 (= (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))))) b_lambda!105755)))

(declare-fun b_lambda!105757 () Bool)

(assert (= b_lambda!105689 (or b!3577620 b_lambda!105757)))

(declare-fun bs!569782 () Bool)

(declare-fun d!1055705 () Bool)

(assert (= bs!569782 (and d!1055705 b!3577620)))

(assert (=> bs!569782 (= (dynLambda!16158 lambda!123641 (h!42967 (t!290030 tokens!494))) (rulesProduceIndividualToken!2601 thiss!18206 rules!2135 (h!42967 (t!290030 tokens!494))))))

(assert (=> bs!569782 m!4071135))

(assert (=> d!1055381 d!1055705))

(declare-fun b_lambda!105759 () Bool)

(assert (= b_lambda!105693 (or (and b!3578673 b_free!91617 (= (toValue!7792 (transformation!5520 (h!42966 (t!290029 rules!2135)))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))) (and b!3577594 b_free!91593 (= (toValue!7792 (transformation!5520 (rule!8228 separatorToken!241))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))) (and b!3577577 b_free!91597 (= (toValue!7792 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))) (and b!3577582 b_free!91601 (= (toValue!7792 (transformation!5520 (h!42966 rules!2135))) (toValue!7792 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))) (and b!3578650 b_free!91613) b_lambda!105759)))

(declare-fun b_lambda!105761 () Bool)

(assert (= b_lambda!105681 (or (and b!3577594 b_free!91595 (= (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))) (and b!3577582 b_free!91603 (= (toChars!7651 (transformation!5520 (h!42966 rules!2135))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))) (and b!3578650 b_free!91615) (and b!3577577 b_free!91599 (= (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))) (and b!3578673 b_free!91619 (= (toChars!7651 (transformation!5520 (h!42966 (t!290029 rules!2135)))) (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))))) b_lambda!105761)))

(declare-fun b_lambda!105763 () Bool)

(assert (= b_lambda!105745 (or b!3577599 b_lambda!105763)))

(declare-fun bs!569783 () Bool)

(declare-fun d!1055707 () Bool)

(assert (= bs!569783 (and d!1055707 b!3577599)))

(assert (=> bs!569783 (= (dynLambda!16158 lambda!123640 (h!42967 tokens!494)) (not (isSeparator!5520 (rule!8228 (h!42967 tokens!494)))))))

(assert (=> d!1055673 d!1055707))

(declare-fun b_lambda!105765 () Bool)

(assert (= b_lambda!105679 (or (and b!3577582 b_free!91603 (= (toChars!7651 (transformation!5520 (h!42966 rules!2135))) (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))))) (and b!3577594 b_free!91595) (and b!3578650 b_free!91615 (= (toChars!7651 (transformation!5520 (rule!8228 (h!42967 (t!290030 tokens!494))))) (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))))) (and b!3577577 b_free!91599 (= (toChars!7651 (transformation!5520 (rule!8228 (h!42967 tokens!494)))) (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))))) (and b!3578673 b_free!91619 (= (toChars!7651 (transformation!5520 (h!42966 (t!290029 rules!2135)))) (toChars!7651 (transformation!5520 (rule!8228 separatorToken!241))))) b_lambda!105765)))

(declare-fun b_lambda!105767 () Bool)

(assert (= b_lambda!105743 (or b!3577599 b_lambda!105767)))

(assert (=> d!1055671 d!1055703))

(declare-fun b_lambda!105769 () Bool)

(assert (= b_lambda!105735 (or b!3577599 b_lambda!105769)))

(assert (=> b!3578529 d!1055707))

(check-sat (not b!3578337) (not d!1055399) (not b!3577687) (not b!3578573) (not b!3577863) (not d!1055609) (not b!3578631) (not b_next!92319) (not d!1055343) (not b!3578651) (not b!3578482) (not b!3578542) (not b!3578330) (not b!3577989) (not b_lambda!105751) (not b_lambda!105749) (not b!3578286) (not b!3578534) (not d!1055693) (not d!1055303) (not bm!259249) (not d!1055545) (not b_lambda!105761) (not b!3577709) (not b_next!92303) (not b!3577849) (not b!3578019) (not b!3578630) (not d!1055397) (not d!1055677) (not d!1055697) (not b!3578516) (not b!3578591) (not b!3578636) (not b!3577842) (not bm!259269) (not d!1055639) (not d!1055699) (not b!3577707) (not b_next!92323) (not d!1055401) (not b!3578562) (not bm!259262) (not b!3578024) (not b_lambda!105769) (not b_lambda!105765) (not b_next!92307) b_and!257877 (not b!3578477) (not b!3578185) (not bm!259260) (not b!3578662) (not b!3578565) (not b!3577715) (not b!3578300) (not d!1055279) (not b!3578543) (not b!3578605) (not bm!259218) (not b!3578585) (not bm!259228) (not b!3577691) (not d!1055385) (not d!1055281) (not b!3578311) (not d!1055429) (not d!1055337) (not b_lambda!105757) (not b!3577680) (not d!1055301) (not b!3578334) (not b!3578499) (not b!3578569) (not b!3578648) (not d!1055633) (not b!3577993) (not d!1055543) (not d!1055289) (not b!3578509) (not b!3578184) (not d!1055351) (not b!3577987) (not b!3578632) (not d!1055423) (not b!3578201) (not b_next!92321) (not b_lambda!105753) (not b!3577807) (not b!3578494) (not bs!569782) (not b!3578333) (not b!3578571) (not b!3578497) b_and!257883 (not b!3577681) (not d!1055369) (not b_next!92317) (not b!3578023) (not d!1055575) (not b_lambda!105759) (not b!3578517) (not b!3578539) (not b!3578558) (not b!3578551) (not b!3577850) (not b!3578022) (not bm!259264) (not b!3578288) (not b!3578599) (not d!1055381) (not d!1055405) (not bm!259230) (not d!1055653) (not b!3578561) (not b!3578028) (not b!3578544) (not b!3578559) (not b!3578604) (not b!3578520) b_and!257887 (not d!1055307) b_and!257841 (not d!1055465) (not d!1055641) (not d!1055285) (not b!3577809) (not b!3578581) (not d!1055629) (not b!3578660) (not b!3578522) (not bm!259272) (not d!1055687) (not tb!204189) (not d!1055669) (not b_lambda!105763) (not bm!259268) (not d!1055689) (not d!1055377) (not b!3578496) (not d!1055647) (not b!3577898) (not d!1055665) (not b!3577713) (not b!3578575) (not b!3578474) (not d!1055643) (not d!1055679) (not b!3578513) (not b_lambda!105747) (not b!3578335) (not b!3578021) (not b!3577839) (not b!3577856) (not bm!259263) (not b!3578555) (not d!1055635) (not b!3577690) (not tb!204177) (not d!1055573) (not d!1055333) (not b!3578547) (not d!1055297) (not d!1055701) (not b!3578545) (not b!3578588) (not bm!259217) (not b!3577712) b_and!257839 (not d!1055459) (not b!3578481) (not b!3577990) (not b!3577805) (not b!3578634) (not b!3578476) (not d!1055555) (not b!3577806) (not d!1055685) (not b!3577965) (not b!3577966) (not d!1055541) (not b!3578519) (not d!1055485) (not b!3577877) (not b!3578471) (not b_lambda!105767) (not b!3578130) (not d!1055613) (not tb!204201) (not d!1055671) (not d!1055327) b_and!257879 (not d!1055305) (not bm!259273) (not b!3578649) (not b!3578336) (not b!3578183) (not b!3578000) (not b!3577846) (not d!1055287) (not b!3578603) (not b_lambda!105755) (not b!3578587) (not b!3578190) (not b!3578331) (not d!1055657) (not b!3578478) (not b_next!92297) (not b!3578598) (not b_next!92299) (not b!3578533) (not b!3578524) (not bm!259270) (not d!1055675) (not d!1055395) (not b!3578480) b_and!257881 (not tb!204171) (not b!3578661) (not d!1055673) (not b!3578200) (not b!3578568) (not b!3578511) (not b!3578609) (not d!1055435) (not b_next!92305) (not b!3578548) (not d!1055467) (not d!1055659) (not d!1055329) (not b!3578003) (not b!3578515) (not b!3578189) (not b!3577703) (not b!3578613) (not b!3578301) (not d!1055623) (not b!3578484) (not b!3578129) (not b!3578635) (not b!3577930) (not b!3578518) (not b!3578595) (not d!1055389) (not b!3578470) (not b!3578576) (not b!3577967) (not b!3578674) (not b!3578572) (not b!3578617) (not bm!259229) (not d!1055359) (not tb!204207) (not d!1055681) (not b!3578540) (not b!3578332) (not b!3577929) (not b!3578564) (not d!1055667) (not b!3578473) (not b!3577852) (not b!3578647) (not b!3578295) (not b!3578488) (not d!1055695) (not b!3578672) b_and!257889 (not b!3578616) (not b!3578017) (not b!3578523) (not b!3578658) (not b!3577878) (not b!3577927) (not d!1055607) (not b!3577838) (not d!1055469) (not d!1055563) (not d!1055615) (not b!3578546) (not b!3578472) (not b_next!92301) (not b!3578187) (not b!3578487) (not b!3578483) (not b!3578128) (not b!3578606) (not b!3578310) (not d!1055627) (not b!3578328) (not bm!259271) (not b!3578026) tp_is_empty!17669 (not b!3577992) (not d!1055391) (not b!3578584) (not b!3578530) (not d!1055551) (not b!3577897) (not b!3578186) b_and!257885 (not d!1055611) (not b!3578671) (not b!3577853) (not b!3577876) (not b!3577972) (not d!1055691) (not b!3577860) (not b!3577864) (not d!1055567) (not b!3578188) (not d!1055419) b_and!257843 (not b!3578293) (not d!1055387) (not b!3578291) (not b!3578486) (not d!1055631))
(check-sat (not b_next!92319) (not b_next!92303) (not b_next!92323) (not b_next!92321) b_and!257887 b_and!257841 b_and!257839 b_and!257879 b_and!257889 (not b_next!92301) b_and!257885 b_and!257843 b_and!257877 (not b_next!92307) b_and!257883 (not b_next!92317) (not b_next!92299) (not b_next!92297) b_and!257881 (not b_next!92305))
