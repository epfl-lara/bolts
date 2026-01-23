; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371596 () Bool)

(assert start!371596)

(declare-fun b!3952594 () Bool)

(declare-fun b_free!108729 () Bool)

(declare-fun b_next!109433 () Bool)

(assert (=> b!3952594 (= b_free!108729 (not b_next!109433))))

(declare-fun tp!1204307 () Bool)

(declare-fun b_and!302971 () Bool)

(assert (=> b!3952594 (= tp!1204307 b_and!302971)))

(declare-fun b_free!108731 () Bool)

(declare-fun b_next!109435 () Bool)

(assert (=> b!3952594 (= b_free!108731 (not b_next!109435))))

(declare-fun tp!1204295 () Bool)

(declare-fun b_and!302973 () Bool)

(assert (=> b!3952594 (= tp!1204295 b_and!302973)))

(declare-fun b!3952606 () Bool)

(declare-fun b_free!108733 () Bool)

(declare-fun b_next!109437 () Bool)

(assert (=> b!3952606 (= b_free!108733 (not b_next!109437))))

(declare-fun tp!1204298 () Bool)

(declare-fun b_and!302975 () Bool)

(assert (=> b!3952606 (= tp!1204298 b_and!302975)))

(declare-fun b_free!108735 () Bool)

(declare-fun b_next!109439 () Bool)

(assert (=> b!3952606 (= b_free!108735 (not b_next!109439))))

(declare-fun tp!1204287 () Bool)

(declare-fun b_and!302977 () Bool)

(assert (=> b!3952606 (= tp!1204287 b_and!302977)))

(declare-fun b!3952581 () Bool)

(declare-fun b_free!108737 () Bool)

(declare-fun b_next!109441 () Bool)

(assert (=> b!3952581 (= b_free!108737 (not b_next!109441))))

(declare-fun tp!1204290 () Bool)

(declare-fun b_and!302979 () Bool)

(assert (=> b!3952581 (= tp!1204290 b_and!302979)))

(declare-fun b_free!108739 () Bool)

(declare-fun b_next!109443 () Bool)

(assert (=> b!3952581 (= b_free!108739 (not b_next!109443))))

(declare-fun tp!1204293 () Bool)

(declare-fun b_and!302981 () Bool)

(assert (=> b!3952581 (= tp!1204293 b_and!302981)))

(declare-fun b!3952604 () Bool)

(declare-fun b_free!108741 () Bool)

(declare-fun b_next!109445 () Bool)

(assert (=> b!3952604 (= b_free!108741 (not b_next!109445))))

(declare-fun tp!1204305 () Bool)

(declare-fun b_and!302983 () Bool)

(assert (=> b!3952604 (= tp!1204305 b_and!302983)))

(declare-fun b_free!108743 () Bool)

(declare-fun b_next!109447 () Bool)

(assert (=> b!3952604 (= b_free!108743 (not b_next!109447))))

(declare-fun tp!1204292 () Bool)

(declare-fun b_and!302985 () Bool)

(assert (=> b!3952604 (= tp!1204292 b_and!302985)))

(declare-fun tp!1204289 () Bool)

(declare-datatypes ((List!42171 0))(
  ( (Nil!42047) (Cons!42047 (h!47467 (_ BitVec 16)) (t!328812 List!42171)) )
))
(declare-datatypes ((TokenValue!6814 0))(
  ( (FloatLiteralValue!13628 (text!48143 List!42171)) (TokenValueExt!6813 (__x!25845 Int)) (Broken!34070 (value!208252 List!42171)) (Object!6937) (End!6814) (Def!6814) (Underscore!6814) (Match!6814) (Else!6814) (Error!6814) (Case!6814) (If!6814) (Extends!6814) (Abstract!6814) (Class!6814) (Val!6814) (DelimiterValue!13628 (del!6874 List!42171)) (KeywordValue!6820 (value!208253 List!42171)) (CommentValue!13628 (value!208254 List!42171)) (WhitespaceValue!13628 (value!208255 List!42171)) (IndentationValue!6814 (value!208256 List!42171)) (String!47787) (Int32!6814) (Broken!34071 (value!208257 List!42171)) (Boolean!6815) (Unit!60553) (OperatorValue!6817 (op!6874 List!42171)) (IdentifierValue!13628 (value!208258 List!42171)) (IdentifierValue!13629 (value!208259 List!42171)) (WhitespaceValue!13629 (value!208260 List!42171)) (True!13628) (False!13628) (Broken!34072 (value!208261 List!42171)) (Broken!34073 (value!208262 List!42171)) (True!13629) (RightBrace!6814) (RightBracket!6814) (Colon!6814) (Null!6814) (Comma!6814) (LeftBracket!6814) (False!13629) (LeftBrace!6814) (ImaginaryLiteralValue!6814 (text!48144 List!42171)) (StringLiteralValue!20442 (value!208263 List!42171)) (EOFValue!6814 (value!208264 List!42171)) (IdentValue!6814 (value!208265 List!42171)) (DelimiterValue!13629 (value!208266 List!42171)) (DedentValue!6814 (value!208267 List!42171)) (NewLineValue!6814 (value!208268 List!42171)) (IntegerValue!20442 (value!208269 (_ BitVec 32)) (text!48145 List!42171)) (IntegerValue!20443 (value!208270 Int) (text!48146 List!42171)) (Times!6814) (Or!6814) (Equal!6814) (Minus!6814) (Broken!34074 (value!208271 List!42171)) (And!6814) (Div!6814) (LessEqual!6814) (Mod!6814) (Concat!18303) (Not!6814) (Plus!6814) (SpaceValue!6814 (value!208272 List!42171)) (IntegerValue!20444 (value!208273 Int) (text!48147 List!42171)) (StringLiteralValue!20443 (text!48148 List!42171)) (FloatLiteralValue!13629 (text!48149 List!42171)) (BytesLiteralValue!6814 (value!208274 List!42171)) (CommentValue!13629 (value!208275 List!42171)) (StringLiteralValue!20444 (value!208276 List!42171)) (ErrorTokenValue!6814 (msg!6875 List!42171)) )
))
(declare-datatypes ((C!23164 0))(
  ( (C!23165 (val!13676 Int)) )
))
(declare-datatypes ((Regex!11489 0))(
  ( (ElementMatch!11489 (c!686204 C!23164)) (Concat!18304 (regOne!23490 Regex!11489) (regTwo!23490 Regex!11489)) (EmptyExpr!11489) (Star!11489 (reg!11818 Regex!11489)) (EmptyLang!11489) (Union!11489 (regOne!23491 Regex!11489) (regTwo!23491 Regex!11489)) )
))
(declare-datatypes ((String!47788 0))(
  ( (String!47789 (value!208277 String)) )
))
(declare-datatypes ((List!42172 0))(
  ( (Nil!42048) (Cons!42048 (h!47468 C!23164) (t!328813 List!42172)) )
))
(declare-datatypes ((IArray!25595 0))(
  ( (IArray!25596 (innerList!12855 List!42172)) )
))
(declare-datatypes ((Conc!12795 0))(
  ( (Node!12795 (left!31965 Conc!12795) (right!32295 Conc!12795) (csize!25820 Int) (cheight!13006 Int)) (Leaf!19794 (xs!16101 IArray!25595) (csize!25821 Int)) (Empty!12795) )
))
(declare-datatypes ((BalanceConc!25184 0))(
  ( (BalanceConc!25185 (c!686205 Conc!12795)) )
))
(declare-datatypes ((TokenValueInjection!13056 0))(
  ( (TokenValueInjection!13057 (toValue!9060 Int) (toChars!8919 Int)) )
))
(declare-datatypes ((Rule!12968 0))(
  ( (Rule!12969 (regex!6584 Regex!11489) (tag!7444 String!47788) (isSeparator!6584 Bool) (transformation!6584 TokenValueInjection!13056)) )
))
(declare-datatypes ((Token!12306 0))(
  ( (Token!12307 (value!208278 TokenValue!6814) (rule!9554 Rule!12968) (size!31506 Int) (originalCharacters!7184 List!42172)) )
))
(declare-datatypes ((List!42173 0))(
  ( (Nil!42049) (Cons!42049 (h!47469 Token!12306) (t!328814 List!42173)) )
))
(declare-fun suffixTokens!72 () List!42173)

(declare-fun e!2446740 () Bool)

(declare-fun e!2446747 () Bool)

(declare-fun b!3952577 () Bool)

(declare-fun inv!56274 (Token!12306) Bool)

(assert (=> b!3952577 (= e!2446740 (and (inv!56274 (h!47469 suffixTokens!72)) e!2446747 tp!1204289))))

(declare-fun b!3952578 () Bool)

(declare-fun res!1599330 () Bool)

(declare-fun e!2446728 () Bool)

(assert (=> b!3952578 (=> (not res!1599330) (not e!2446728))))

(declare-datatypes ((List!42174 0))(
  ( (Nil!42050) (Cons!42050 (h!47470 Rule!12968) (t!328815 List!42174)) )
))
(declare-fun rules!2768 () List!42174)

(declare-fun isEmpty!25120 (List!42174) Bool)

(assert (=> b!3952578 (= res!1599330 (not (isEmpty!25120 rules!2768)))))

(declare-fun b!3952579 () Bool)

(declare-fun e!2446738 () Bool)

(declare-fun e!2446726 () Bool)

(assert (=> b!3952579 (= e!2446738 e!2446726)))

(declare-fun res!1599329 () Bool)

(assert (=> b!3952579 (=> (not res!1599329) (not e!2446726))))

(declare-datatypes ((tuple2!41334 0))(
  ( (tuple2!41335 (_1!23801 Token!12306) (_2!23801 List!42172)) )
))
(declare-datatypes ((Option!9004 0))(
  ( (None!9003) (Some!9003 (v!39343 tuple2!41334)) )
))
(declare-fun lt!1381847 () Option!9004)

(get-info :version)

(assert (=> b!3952579 (= res!1599329 ((_ is Some!9003) lt!1381847))))

(declare-datatypes ((LexerInterface!6173 0))(
  ( (LexerInterfaceExt!6170 (__x!25846 Int)) (Lexer!6171) )
))
(declare-fun thiss!20629 () LexerInterface!6173)

(declare-fun lt!1381849 () List!42172)

(declare-fun maxPrefix!3477 (LexerInterface!6173 List!42174 List!42172) Option!9004)

(assert (=> b!3952579 (= lt!1381847 (maxPrefix!3477 thiss!20629 rules!2768 lt!1381849))))

(declare-fun b!3952580 () Bool)

(declare-fun res!1599327 () Bool)

(assert (=> b!3952580 (=> (not res!1599327) (not e!2446728))))

(declare-fun prefix!426 () List!42172)

(declare-fun isEmpty!25121 (List!42172) Bool)

(assert (=> b!3952580 (= res!1599327 (not (isEmpty!25121 prefix!426)))))

(declare-fun e!2446727 () Bool)

(assert (=> b!3952581 (= e!2446727 (and tp!1204290 tp!1204293))))

(declare-fun e!2446741 () Bool)

(declare-fun b!3952582 () Bool)

(declare-fun e!2446725 () Bool)

(declare-fun tp!1204308 () Bool)

(declare-fun inv!56271 (String!47788) Bool)

(declare-fun inv!56275 (TokenValueInjection!13056) Bool)

(assert (=> b!3952582 (= e!2446725 (and tp!1204308 (inv!56271 (tag!7444 (rule!9554 (h!47469 suffixTokens!72)))) (inv!56275 (transformation!6584 (rule!9554 (h!47469 suffixTokens!72)))) e!2446741))))

(declare-fun b!3952583 () Bool)

(declare-fun e!2446756 () Bool)

(declare-fun e!2446735 () Bool)

(assert (=> b!3952583 (= e!2446756 e!2446735)))

(declare-fun res!1599324 () Bool)

(assert (=> b!3952583 (=> res!1599324 e!2446735)))

(declare-fun suffix!1176 () List!42172)

(declare-datatypes ((tuple2!41336 0))(
  ( (tuple2!41337 (_1!23802 List!42173) (_2!23802 List!42172)) )
))
(declare-fun lt!1381852 () tuple2!41336)

(declare-fun lt!1381850 () tuple2!41336)

(declare-fun lt!1381861 () List!42173)

(assert (=> b!3952583 (= res!1599324 (or (not (= lt!1381852 (tuple2!41337 lt!1381861 (_2!23802 lt!1381850)))) (not (= lt!1381850 (tuple2!41337 (_1!23802 lt!1381850) (_2!23802 lt!1381850)))) (not (= (_2!23801 (v!39343 lt!1381847)) suffix!1176))))))

(declare-fun lt!1381851 () List!42173)

(declare-fun ++!10925 (List!42173 List!42173) List!42173)

(assert (=> b!3952583 (= lt!1381861 (++!10925 lt!1381851 (_1!23802 lt!1381850)))))

(assert (=> b!3952583 (= lt!1381851 (Cons!42049 (_1!23801 (v!39343 lt!1381847)) Nil!42049))))

(declare-fun b!3952584 () Bool)

(declare-fun res!1599316 () Bool)

(assert (=> b!3952584 (=> (not res!1599316) (not e!2446738))))

(declare-fun suffixResult!91 () List!42172)

(declare-fun lexList!1941 (LexerInterface!6173 List!42174 List!42172) tuple2!41336)

(assert (=> b!3952584 (= res!1599316 (= (lexList!1941 thiss!20629 rules!2768 suffix!1176) (tuple2!41337 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3952585 () Bool)

(declare-fun e!2446753 () Bool)

(declare-fun tp_is_empty!19949 () Bool)

(declare-fun tp!1204303 () Bool)

(assert (=> b!3952585 (= e!2446753 (and tp_is_empty!19949 tp!1204303))))

(declare-fun b!3952586 () Bool)

(declare-fun e!2446739 () Bool)

(declare-fun tp!1204299 () Bool)

(assert (=> b!3952586 (= e!2446739 (and tp_is_empty!19949 tp!1204299))))

(declare-fun e!2446737 () Bool)

(declare-fun b!3952587 () Bool)

(declare-fun tp!1204296 () Bool)

(declare-fun prefixTokens!80 () List!42173)

(declare-fun e!2446733 () Bool)

(declare-fun inv!21 (TokenValue!6814) Bool)

(assert (=> b!3952587 (= e!2446737 (and (inv!21 (value!208278 (h!47469 prefixTokens!80))) e!2446733 tp!1204296))))

(declare-fun b!3952589 () Bool)

(declare-fun res!1599332 () Bool)

(declare-fun e!2446754 () Bool)

(assert (=> b!3952589 (=> res!1599332 e!2446754)))

(declare-fun lt!1381846 () Int)

(declare-fun size!31507 (List!42172) Int)

(assert (=> b!3952589 (= res!1599332 (< (size!31507 prefix!426) lt!1381846))))

(declare-fun b!3952590 () Bool)

(declare-fun e!2446758 () Bool)

(declare-fun tp!1204297 () Bool)

(assert (=> b!3952590 (= e!2446758 (and (inv!56274 (h!47469 prefixTokens!80)) e!2446737 tp!1204297))))

(declare-fun b!3952591 () Bool)

(declare-fun tp!1204304 () Bool)

(declare-fun e!2446729 () Bool)

(assert (=> b!3952591 (= e!2446733 (and tp!1204304 (inv!56271 (tag!7444 (rule!9554 (h!47469 prefixTokens!80)))) (inv!56275 (transformation!6584 (rule!9554 (h!47469 prefixTokens!80)))) e!2446729))))

(declare-fun b!3952592 () Bool)

(declare-fun e!2446746 () Bool)

(declare-fun e!2446750 () Option!9004)

(assert (=> b!3952592 (= e!2446746 (= lt!1381847 e!2446750))))

(declare-fun c!686202 () Bool)

(assert (=> b!3952592 (= c!686202 (and ((_ is Cons!42050) rules!2768) ((_ is Nil!42050) (t!328815 rules!2768))))))

(declare-fun b!3952593 () Bool)

(declare-fun res!1599318 () Bool)

(assert (=> b!3952593 (=> res!1599318 e!2446754)))

(assert (=> b!3952593 (= res!1599318 (< (size!31507 suffix!1176) (size!31507 Nil!42048)))))

(assert (=> b!3952594 (= e!2446729 (and tp!1204307 tp!1204295))))

(declare-fun b!3952595 () Bool)

(declare-fun res!1599315 () Bool)

(assert (=> b!3952595 (=> (not res!1599315) (not e!2446728))))

(declare-fun isEmpty!25122 (List!42173) Bool)

(assert (=> b!3952595 (= res!1599315 (not (isEmpty!25122 prefixTokens!80)))))

(declare-fun b!3952596 () Bool)

(assert (=> b!3952596 (= e!2446726 (not e!2446756))))

(declare-fun res!1599321 () Bool)

(assert (=> b!3952596 (=> res!1599321 e!2446756)))

(declare-fun lt!1381855 () List!42172)

(assert (=> b!3952596 (= res!1599321 (not (= lt!1381855 lt!1381849)))))

(assert (=> b!3952596 (= lt!1381850 (lexList!1941 thiss!20629 rules!2768 (_2!23801 (v!39343 lt!1381847))))))

(declare-fun lt!1381858 () TokenValue!6814)

(declare-fun lt!1381856 () List!42172)

(declare-fun lt!1381863 () List!42172)

(assert (=> b!3952596 (and (= (size!31506 (_1!23801 (v!39343 lt!1381847))) lt!1381846) (= (originalCharacters!7184 (_1!23801 (v!39343 lt!1381847))) lt!1381856) (= (tuple2!41335 (_1!23801 (v!39343 lt!1381847)) (_2!23801 (v!39343 lt!1381847))) (tuple2!41335 (Token!12307 lt!1381858 (rule!9554 (_1!23801 (v!39343 lt!1381847))) lt!1381846 lt!1381856) lt!1381863)))))

(assert (=> b!3952596 (= lt!1381846 (size!31507 lt!1381856))))

(declare-fun e!2446736 () Bool)

(assert (=> b!3952596 e!2446736))

(declare-fun res!1599322 () Bool)

(assert (=> b!3952596 (=> (not res!1599322) (not e!2446736))))

(assert (=> b!3952596 (= res!1599322 (= (value!208278 (_1!23801 (v!39343 lt!1381847))) lt!1381858))))

(declare-fun apply!9815 (TokenValueInjection!13056 BalanceConc!25184) TokenValue!6814)

(declare-fun seqFromList!4843 (List!42172) BalanceConc!25184)

(assert (=> b!3952596 (= lt!1381858 (apply!9815 (transformation!6584 (rule!9554 (_1!23801 (v!39343 lt!1381847)))) (seqFromList!4843 lt!1381856)))))

(assert (=> b!3952596 (= (_2!23801 (v!39343 lt!1381847)) lt!1381863)))

(declare-datatypes ((Unit!60554 0))(
  ( (Unit!60555) )
))
(declare-fun lt!1381845 () Unit!60554)

(declare-fun lemmaSamePrefixThenSameSuffix!1882 (List!42172 List!42172 List!42172 List!42172 List!42172) Unit!60554)

(assert (=> b!3952596 (= lt!1381845 (lemmaSamePrefixThenSameSuffix!1882 lt!1381856 (_2!23801 (v!39343 lt!1381847)) lt!1381856 lt!1381863 lt!1381849))))

(declare-fun getSuffix!2124 (List!42172 List!42172) List!42172)

(assert (=> b!3952596 (= lt!1381863 (getSuffix!2124 lt!1381849 lt!1381856))))

(declare-fun isPrefix!3673 (List!42172 List!42172) Bool)

(assert (=> b!3952596 (isPrefix!3673 lt!1381856 lt!1381855)))

(declare-fun ++!10926 (List!42172 List!42172) List!42172)

(assert (=> b!3952596 (= lt!1381855 (++!10926 lt!1381856 (_2!23801 (v!39343 lt!1381847))))))

(declare-fun lt!1381848 () Unit!60554)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2532 (List!42172 List!42172) Unit!60554)

(assert (=> b!3952596 (= lt!1381848 (lemmaConcatTwoListThenFirstIsPrefix!2532 lt!1381856 (_2!23801 (v!39343 lt!1381847))))))

(declare-fun list!15614 (BalanceConc!25184) List!42172)

(declare-fun charsOf!4402 (Token!12306) BalanceConc!25184)

(assert (=> b!3952596 (= lt!1381856 (list!15614 (charsOf!4402 (_1!23801 (v!39343 lt!1381847)))))))

(declare-fun ruleValid!2526 (LexerInterface!6173 Rule!12968) Bool)

(assert (=> b!3952596 (ruleValid!2526 thiss!20629 (rule!9554 (_1!23801 (v!39343 lt!1381847))))))

(declare-fun lt!1381854 () Unit!60554)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1602 (LexerInterface!6173 Rule!12968 List!42174) Unit!60554)

(assert (=> b!3952596 (= lt!1381854 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1602 thiss!20629 (rule!9554 (_1!23801 (v!39343 lt!1381847))) rules!2768))))

(declare-fun lt!1381860 () Unit!60554)

(declare-fun lemmaCharactersSize!1237 (Token!12306) Unit!60554)

(assert (=> b!3952596 (= lt!1381860 (lemmaCharactersSize!1237 (_1!23801 (v!39343 lt!1381847))))))

(declare-fun b!3952597 () Bool)

(assert (=> b!3952597 (= e!2446736 (= (size!31506 (_1!23801 (v!39343 lt!1381847))) (size!31507 (originalCharacters!7184 (_1!23801 (v!39343 lt!1381847))))))))

(declare-fun tp!1204288 () Bool)

(declare-fun b!3952598 () Bool)

(assert (=> b!3952598 (= e!2446747 (and (inv!21 (value!208278 (h!47469 suffixTokens!72))) e!2446725 tp!1204288))))

(declare-fun b!3952599 () Bool)

(declare-fun e!2446748 () Bool)

(declare-fun tp!1204302 () Bool)

(assert (=> b!3952599 (= e!2446748 (and tp_is_empty!19949 tp!1204302))))

(declare-fun b!3952600 () Bool)

(assert (=> b!3952600 true))

(declare-fun e!2446749 () Bool)

(assert (=> b!3952600 e!2446749))

(declare-fun e!2446751 () Option!9004)

(declare-fun err!4465 () Option!9004)

(assert (=> b!3952600 (= e!2446751 err!4465)))

(declare-fun b!3952601 () Bool)

(assert (=> b!3952601 (= e!2446728 e!2446738)))

(declare-fun res!1599320 () Bool)

(assert (=> b!3952601 (=> (not res!1599320) (not e!2446738))))

(declare-fun lt!1381844 () List!42173)

(assert (=> b!3952601 (= res!1599320 (= lt!1381852 (tuple2!41337 lt!1381844 suffixResult!91)))))

(assert (=> b!3952601 (= lt!1381852 (lexList!1941 thiss!20629 rules!2768 lt!1381849))))

(assert (=> b!3952601 (= lt!1381844 (++!10925 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3952601 (= lt!1381849 (++!10926 prefix!426 suffix!1176))))

(declare-fun b!3952602 () Bool)

(declare-fun res!1599323 () Bool)

(assert (=> b!3952602 (=> res!1599323 e!2446754)))

(assert (=> b!3952602 (= res!1599323 (not (= (++!10926 lt!1381856 Nil!42048) (++!10926 prefix!426 Nil!42048))))))

(declare-fun b!3952603 () Bool)

(assert (=> b!3952603 (= e!2446754 (= lt!1381847 (Some!9003 (tuple2!41335 (_1!23801 (v!39343 lt!1381847)) suffix!1176))))))

(assert (=> b!3952604 (= e!2446741 (and tp!1204305 tp!1204292))))

(declare-fun e!2446734 () Bool)

(declare-fun tp!1204306 () Bool)

(declare-fun e!2446757 () Bool)

(declare-fun b!3952605 () Bool)

(assert (=> b!3952605 (= e!2446757 (and tp!1204306 (inv!56271 (tag!7444 (h!47470 rules!2768))) (inv!56275 (transformation!6584 (h!47470 rules!2768))) e!2446734))))

(assert (=> b!3952606 (= e!2446734 (and tp!1204298 tp!1204287))))

(declare-fun b!3952607 () Bool)

(declare-fun call!285258 () Option!9004)

(assert (=> b!3952607 (= e!2446750 call!285258)))

(declare-fun e!2446745 () Bool)

(declare-fun tp!1204300 () Bool)

(declare-fun b!3952608 () Bool)

(assert (=> b!3952608 (= e!2446749 (and (inv!56274 (_1!23801 (v!39343 err!4465))) e!2446745 tp!1204300))))

(declare-fun b!3952609 () Bool)

(declare-fun e!2446742 () Bool)

(declare-fun tp!1204291 () Bool)

(assert (=> b!3952609 (= e!2446742 (and e!2446757 tp!1204291))))

(declare-fun b!3952610 () Bool)

(declare-fun e!2446731 () Bool)

(assert (=> b!3952610 (= e!2446735 e!2446731)))

(declare-fun res!1599319 () Bool)

(assert (=> b!3952610 (=> res!1599319 e!2446731)))

(assert (=> b!3952610 (= res!1599319 (not (= lt!1381847 (Some!9003 (tuple2!41335 (_1!23801 (v!39343 lt!1381847)) (_2!23801 (v!39343 lt!1381847)))))))))

(assert (=> b!3952610 e!2446746))

(declare-fun res!1599328 () Bool)

(assert (=> b!3952610 (=> (not res!1599328) (not e!2446746))))

(assert (=> b!3952610 (= res!1599328 (isPrefix!3673 lt!1381849 lt!1381849))))

(declare-fun lt!1381862 () Unit!60554)

(declare-fun lemmaIsPrefixRefl!2324 (List!42172 List!42172) Unit!60554)

(assert (=> b!3952610 (= lt!1381862 (lemmaIsPrefixRefl!2324 lt!1381849 lt!1381849))))

(assert (=> b!3952610 (= lt!1381852 (tuple2!41337 (Cons!42049 (_1!23801 (v!39343 lt!1381847)) (_1!23802 lt!1381850)) (_2!23802 lt!1381850)))))

(declare-fun res!1599326 () Bool)

(assert (=> start!371596 (=> (not res!1599326) (not e!2446728))))

(assert (=> start!371596 (= res!1599326 ((_ is Lexer!6171) thiss!20629))))

(assert (=> start!371596 e!2446728))

(assert (=> start!371596 e!2446753))

(assert (=> start!371596 true))

(assert (=> start!371596 e!2446748))

(assert (=> start!371596 e!2446742))

(assert (=> start!371596 e!2446758))

(assert (=> start!371596 e!2446740))

(assert (=> start!371596 e!2446739))

(declare-fun b!3952588 () Bool)

(declare-fun res!1599325 () Bool)

(assert (=> b!3952588 (=> res!1599325 e!2446754)))

(assert (=> b!3952588 (= res!1599325 (not (isPrefix!3673 Nil!42048 suffix!1176)))))

(declare-fun bm!285253 () Bool)

(declare-fun maxPrefixOneRule!2531 (LexerInterface!6173 Rule!12968 List!42172) Option!9004)

(assert (=> bm!285253 (= call!285258 (maxPrefixOneRule!2531 thiss!20629 (h!47470 rules!2768) lt!1381849))))

(declare-fun lt!1381857 () Option!9004)

(declare-fun b!3952611 () Bool)

(assert (=> b!3952611 (= lt!1381857 (maxPrefix!3477 thiss!20629 (t!328815 rules!2768) lt!1381849))))

(declare-fun lt!1381853 () Option!9004)

(assert (=> b!3952611 (= lt!1381853 call!285258)))

(assert (=> b!3952611 (= e!2446751 (ite (and ((_ is None!9003) lt!1381853) ((_ is None!9003) lt!1381857)) None!9003 (ite ((_ is None!9003) lt!1381857) lt!1381853 (ite ((_ is None!9003) lt!1381853) lt!1381857 (ite (>= (size!31506 (_1!23801 (v!39343 lt!1381853))) (size!31506 (_1!23801 (v!39343 lt!1381857)))) (Some!9003 (v!39343 lt!1381853)) lt!1381857)))))))

(declare-fun tp!1204294 () Bool)

(declare-fun b!3952612 () Bool)

(declare-fun e!2446759 () Bool)

(assert (=> b!3952612 (= e!2446745 (and (inv!21 (value!208278 (_1!23801 (v!39343 err!4465)))) e!2446759 tp!1204294))))

(declare-fun b!3952613 () Bool)

(declare-fun res!1599331 () Bool)

(assert (=> b!3952613 (=> (not res!1599331) (not e!2446728))))

(declare-fun rulesInvariant!5516 (LexerInterface!6173 List!42174) Bool)

(assert (=> b!3952613 (= res!1599331 (rulesInvariant!5516 thiss!20629 rules!2768))))

(declare-fun b!3952614 () Bool)

(assert (=> b!3952614 (= e!2446750 e!2446751)))

(declare-fun c!686203 () Bool)

(assert (=> b!3952614 (= c!686203 ((_ is Cons!42050) rules!2768))))

(declare-fun tp!1204301 () Bool)

(declare-fun b!3952615 () Bool)

(assert (=> b!3952615 (= e!2446759 (and tp!1204301 (inv!56271 (tag!7444 (rule!9554 (_1!23801 (v!39343 err!4465))))) (inv!56275 (transformation!6584 (rule!9554 (_1!23801 (v!39343 err!4465))))) e!2446727))))

(declare-fun b!3952616 () Bool)

(assert (=> b!3952616 (= e!2446731 e!2446754)))

(declare-fun res!1599317 () Bool)

(assert (=> b!3952616 (=> res!1599317 e!2446754)))

(assert (=> b!3952616 (= res!1599317 (or (not (= lt!1381844 (_1!23802 lt!1381852))) (not (= lt!1381844 lt!1381861)) (not (= prefixTokens!80 lt!1381851)) (not (= prefix!426 lt!1381856))))))

(assert (=> b!3952616 (= lt!1381856 prefix!426)))

(declare-fun lt!1381859 () Unit!60554)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!594 (List!42172 List!42172 List!42172 List!42172) Unit!60554)

(assert (=> b!3952616 (= lt!1381859 (lemmaConcatSameAndSameSizesThenSameLists!594 lt!1381856 (_2!23801 (v!39343 lt!1381847)) prefix!426 suffix!1176))))

(assert (= (and start!371596 res!1599326) b!3952578))

(assert (= (and b!3952578 res!1599330) b!3952613))

(assert (= (and b!3952613 res!1599331) b!3952595))

(assert (= (and b!3952595 res!1599315) b!3952580))

(assert (= (and b!3952580 res!1599327) b!3952601))

(assert (= (and b!3952601 res!1599320) b!3952584))

(assert (= (and b!3952584 res!1599316) b!3952579))

(assert (= (and b!3952579 res!1599329) b!3952596))

(assert (= (and b!3952596 res!1599322) b!3952597))

(assert (= (and b!3952596 (not res!1599321)) b!3952583))

(assert (= (and b!3952583 (not res!1599324)) b!3952610))

(assert (= (and b!3952610 res!1599328) b!3952592))

(assert (= (and b!3952592 c!686202) b!3952607))

(assert (= (and b!3952592 (not c!686202)) b!3952614))

(assert (= (and b!3952614 c!686203) b!3952611))

(assert (= (and b!3952614 (not c!686203)) b!3952600))

(assert (= b!3952615 b!3952581))

(assert (= b!3952612 b!3952615))

(assert (= b!3952608 b!3952612))

(assert (= (and b!3952600 ((_ is Some!9003) err!4465)) b!3952608))

(assert (= (or b!3952607 b!3952611) bm!285253))

(assert (= (and b!3952610 (not res!1599319)) b!3952616))

(assert (= (and b!3952616 (not res!1599317)) b!3952588))

(assert (= (and b!3952588 (not res!1599325)) b!3952593))

(assert (= (and b!3952593 (not res!1599318)) b!3952589))

(assert (= (and b!3952589 (not res!1599332)) b!3952602))

(assert (= (and b!3952602 (not res!1599323)) b!3952603))

(assert (= (and start!371596 ((_ is Cons!42048) suffixResult!91)) b!3952585))

(assert (= (and start!371596 ((_ is Cons!42048) suffix!1176)) b!3952599))

(assert (= b!3952605 b!3952606))

(assert (= b!3952609 b!3952605))

(assert (= (and start!371596 ((_ is Cons!42050) rules!2768)) b!3952609))

(assert (= b!3952591 b!3952594))

(assert (= b!3952587 b!3952591))

(assert (= b!3952590 b!3952587))

(assert (= (and start!371596 ((_ is Cons!42049) prefixTokens!80)) b!3952590))

(assert (= b!3952582 b!3952604))

(assert (= b!3952598 b!3952582))

(assert (= b!3952577 b!3952598))

(assert (= (and start!371596 ((_ is Cons!42049) suffixTokens!72)) b!3952577))

(assert (= (and start!371596 ((_ is Cons!42048) prefix!426)) b!3952586))

(declare-fun m!4521377 () Bool)

(assert (=> bm!285253 m!4521377))

(declare-fun m!4521379 () Bool)

(assert (=> b!3952596 m!4521379))

(declare-fun m!4521381 () Bool)

(assert (=> b!3952596 m!4521381))

(declare-fun m!4521383 () Bool)

(assert (=> b!3952596 m!4521383))

(declare-fun m!4521385 () Bool)

(assert (=> b!3952596 m!4521385))

(declare-fun m!4521387 () Bool)

(assert (=> b!3952596 m!4521387))

(declare-fun m!4521389 () Bool)

(assert (=> b!3952596 m!4521389))

(declare-fun m!4521391 () Bool)

(assert (=> b!3952596 m!4521391))

(declare-fun m!4521393 () Bool)

(assert (=> b!3952596 m!4521393))

(assert (=> b!3952596 m!4521389))

(declare-fun m!4521395 () Bool)

(assert (=> b!3952596 m!4521395))

(declare-fun m!4521397 () Bool)

(assert (=> b!3952596 m!4521397))

(assert (=> b!3952596 m!4521379))

(declare-fun m!4521399 () Bool)

(assert (=> b!3952596 m!4521399))

(declare-fun m!4521401 () Bool)

(assert (=> b!3952596 m!4521401))

(declare-fun m!4521403 () Bool)

(assert (=> b!3952596 m!4521403))

(declare-fun m!4521405 () Bool)

(assert (=> b!3952596 m!4521405))

(declare-fun m!4521407 () Bool)

(assert (=> b!3952579 m!4521407))

(declare-fun m!4521409 () Bool)

(assert (=> b!3952602 m!4521409))

(declare-fun m!4521411 () Bool)

(assert (=> b!3952602 m!4521411))

(declare-fun m!4521413 () Bool)

(assert (=> b!3952605 m!4521413))

(declare-fun m!4521415 () Bool)

(assert (=> b!3952605 m!4521415))

(declare-fun m!4521417 () Bool)

(assert (=> b!3952588 m!4521417))

(declare-fun m!4521419 () Bool)

(assert (=> b!3952610 m!4521419))

(declare-fun m!4521421 () Bool)

(assert (=> b!3952610 m!4521421))

(declare-fun m!4521423 () Bool)

(assert (=> b!3952598 m!4521423))

(declare-fun m!4521425 () Bool)

(assert (=> b!3952589 m!4521425))

(declare-fun m!4521427 () Bool)

(assert (=> b!3952595 m!4521427))

(declare-fun m!4521429 () Bool)

(assert (=> b!3952584 m!4521429))

(declare-fun m!4521431 () Bool)

(assert (=> b!3952580 m!4521431))

(declare-fun m!4521433 () Bool)

(assert (=> b!3952597 m!4521433))

(declare-fun m!4521435 () Bool)

(assert (=> b!3952582 m!4521435))

(declare-fun m!4521437 () Bool)

(assert (=> b!3952582 m!4521437))

(declare-fun m!4521439 () Bool)

(assert (=> b!3952587 m!4521439))

(declare-fun m!4521441 () Bool)

(assert (=> b!3952577 m!4521441))

(declare-fun m!4521443 () Bool)

(assert (=> b!3952591 m!4521443))

(declare-fun m!4521445 () Bool)

(assert (=> b!3952591 m!4521445))

(declare-fun m!4521447 () Bool)

(assert (=> b!3952611 m!4521447))

(declare-fun m!4521449 () Bool)

(assert (=> b!3952593 m!4521449))

(declare-fun m!4521451 () Bool)

(assert (=> b!3952593 m!4521451))

(declare-fun m!4521453 () Bool)

(assert (=> b!3952616 m!4521453))

(declare-fun m!4521455 () Bool)

(assert (=> b!3952613 m!4521455))

(declare-fun m!4521457 () Bool)

(assert (=> b!3952590 m!4521457))

(declare-fun m!4521459 () Bool)

(assert (=> b!3952608 m!4521459))

(declare-fun m!4521461 () Bool)

(assert (=> b!3952601 m!4521461))

(declare-fun m!4521463 () Bool)

(assert (=> b!3952601 m!4521463))

(declare-fun m!4521465 () Bool)

(assert (=> b!3952601 m!4521465))

(declare-fun m!4521467 () Bool)

(assert (=> b!3952578 m!4521467))

(declare-fun m!4521469 () Bool)

(assert (=> b!3952615 m!4521469))

(declare-fun m!4521471 () Bool)

(assert (=> b!3952615 m!4521471))

(declare-fun m!4521473 () Bool)

(assert (=> b!3952612 m!4521473))

(declare-fun m!4521475 () Bool)

(assert (=> b!3952583 m!4521475))

(check-sat (not b!3952588) (not b!3952590) (not b_next!109441) (not b!3952577) (not b!3952615) (not b!3952587) (not b_next!109443) (not b!3952613) (not b_next!109433) b_and!302971 (not b!3952580) (not b!3952616) (not b!3952610) b_and!302985 (not b!3952584) (not b_next!109445) b_and!302981 (not b!3952605) (not b_next!109439) (not b!3952586) (not b!3952596) b_and!302973 (not bm!285253) b_and!302977 (not b!3952578) (not b_next!109437) (not b!3952593) (not b!3952599) b_and!302975 (not b!3952589) (not b!3952582) (not b!3952598) (not b_next!109447) (not b!3952579) b_and!302983 (not b!3952601) (not b!3952608) tp_is_empty!19949 (not b_next!109435) (not b!3952612) (not b!3952609) (not b!3952611) (not b!3952585) (not b!3952595) (not b!3952602) (not b!3952597) (not b!3952583) (not b!3952591) b_and!302979)
(check-sat b_and!302971 b_and!302985 (not b_next!109445) (not b_next!109441) b_and!302981 (not b_next!109439) b_and!302973 (not b_next!109443) b_and!302975 (not b_next!109447) b_and!302983 (not b_next!109435) b_and!302979 (not b_next!109433) b_and!302977 (not b_next!109437))
