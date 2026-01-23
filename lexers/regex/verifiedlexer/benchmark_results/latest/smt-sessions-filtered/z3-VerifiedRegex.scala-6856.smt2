; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!360304 () Bool)

(assert start!360304)

(declare-fun b!3847584 () Bool)

(declare-fun b_free!103045 () Bool)

(declare-fun b_next!103749 () Bool)

(assert (=> b!3847584 (= b_free!103045 (not b_next!103749))))

(declare-fun tp!1166261 () Bool)

(declare-fun b_and!287091 () Bool)

(assert (=> b!3847584 (= tp!1166261 b_and!287091)))

(declare-fun b_free!103047 () Bool)

(declare-fun b_next!103751 () Bool)

(assert (=> b!3847584 (= b_free!103047 (not b_next!103751))))

(declare-fun tp!1166267 () Bool)

(declare-fun b_and!287093 () Bool)

(assert (=> b!3847584 (= tp!1166267 b_and!287093)))

(declare-fun b!3847585 () Bool)

(declare-fun b_free!103049 () Bool)

(declare-fun b_next!103753 () Bool)

(assert (=> b!3847585 (= b_free!103049 (not b_next!103753))))

(declare-fun tp!1166274 () Bool)

(declare-fun b_and!287095 () Bool)

(assert (=> b!3847585 (= tp!1166274 b_and!287095)))

(declare-fun b_free!103051 () Bool)

(declare-fun b_next!103755 () Bool)

(assert (=> b!3847585 (= b_free!103051 (not b_next!103755))))

(declare-fun tp!1166262 () Bool)

(declare-fun b_and!287097 () Bool)

(assert (=> b!3847585 (= tp!1166262 b_and!287097)))

(declare-fun b!3847580 () Bool)

(declare-fun b_free!103053 () Bool)

(declare-fun b_next!103757 () Bool)

(assert (=> b!3847580 (= b_free!103053 (not b_next!103757))))

(declare-fun tp!1166259 () Bool)

(declare-fun b_and!287099 () Bool)

(assert (=> b!3847580 (= tp!1166259 b_and!287099)))

(declare-fun b_free!103055 () Bool)

(declare-fun b_next!103759 () Bool)

(assert (=> b!3847580 (= b_free!103055 (not b_next!103759))))

(declare-fun tp!1166264 () Bool)

(declare-fun b_and!287101 () Bool)

(assert (=> b!3847580 (= tp!1166264 b_and!287101)))

(declare-fun b!3847573 () Bool)

(declare-fun e!2378090 () Bool)

(declare-fun tp_is_empty!19381 () Bool)

(declare-fun tp!1166268 () Bool)

(assert (=> b!3847573 (= e!2378090 (and tp_is_empty!19381 tp!1166268))))

(declare-fun b!3847574 () Bool)

(declare-fun e!2378076 () Bool)

(declare-fun e!2378082 () Bool)

(assert (=> b!3847574 (= e!2378076 e!2378082)))

(declare-fun res!1557587 () Bool)

(assert (=> b!3847574 (=> (not res!1557587) (not e!2378082))))

(declare-datatypes ((C!22596 0))(
  ( (C!22597 (val!13392 Int)) )
))
(declare-datatypes ((List!40894 0))(
  ( (Nil!40770) (Cons!40770 (h!46190 C!22596) (t!311219 List!40894)) )
))
(declare-fun suffixResult!91 () List!40894)

(declare-datatypes ((List!40895 0))(
  ( (Nil!40771) (Cons!40771 (h!46191 (_ BitVec 16)) (t!311220 List!40895)) )
))
(declare-datatypes ((TokenValue!6530 0))(
  ( (FloatLiteralValue!13060 (text!46155 List!40895)) (TokenValueExt!6529 (__x!25277 Int)) (Broken!32650 (value!200158 List!40895)) (Object!6653) (End!6530) (Def!6530) (Underscore!6530) (Match!6530) (Else!6530) (Error!6530) (Case!6530) (If!6530) (Extends!6530) (Abstract!6530) (Class!6530) (Val!6530) (DelimiterValue!13060 (del!6590 List!40895)) (KeywordValue!6536 (value!200159 List!40895)) (CommentValue!13060 (value!200160 List!40895)) (WhitespaceValue!13060 (value!200161 List!40895)) (IndentationValue!6530 (value!200162 List!40895)) (String!46367) (Int32!6530) (Broken!32651 (value!200163 List!40895)) (Boolean!6531) (Unit!58445) (OperatorValue!6533 (op!6590 List!40895)) (IdentifierValue!13060 (value!200164 List!40895)) (IdentifierValue!13061 (value!200165 List!40895)) (WhitespaceValue!13061 (value!200166 List!40895)) (True!13060) (False!13060) (Broken!32652 (value!200167 List!40895)) (Broken!32653 (value!200168 List!40895)) (True!13061) (RightBrace!6530) (RightBracket!6530) (Colon!6530) (Null!6530) (Comma!6530) (LeftBracket!6530) (False!13061) (LeftBrace!6530) (ImaginaryLiteralValue!6530 (text!46156 List!40895)) (StringLiteralValue!19590 (value!200169 List!40895)) (EOFValue!6530 (value!200170 List!40895)) (IdentValue!6530 (value!200171 List!40895)) (DelimiterValue!13061 (value!200172 List!40895)) (DedentValue!6530 (value!200173 List!40895)) (NewLineValue!6530 (value!200174 List!40895)) (IntegerValue!19590 (value!200175 (_ BitVec 32)) (text!46157 List!40895)) (IntegerValue!19591 (value!200176 Int) (text!46158 List!40895)) (Times!6530) (Or!6530) (Equal!6530) (Minus!6530) (Broken!32654 (value!200177 List!40895)) (And!6530) (Div!6530) (LessEqual!6530) (Mod!6530) (Concat!17735) (Not!6530) (Plus!6530) (SpaceValue!6530 (value!200178 List!40895)) (IntegerValue!19592 (value!200179 Int) (text!46159 List!40895)) (StringLiteralValue!19591 (text!46160 List!40895)) (FloatLiteralValue!13061 (text!46161 List!40895)) (BytesLiteralValue!6530 (value!200180 List!40895)) (CommentValue!13061 (value!200181 List!40895)) (StringLiteralValue!19592 (value!200182 List!40895)) (ErrorTokenValue!6530 (msg!6591 List!40895)) )
))
(declare-datatypes ((Regex!11205 0))(
  ( (ElementMatch!11205 (c!670130 C!22596)) (Concat!17736 (regOne!22922 Regex!11205) (regTwo!22922 Regex!11205)) (EmptyExpr!11205) (Star!11205 (reg!11534 Regex!11205)) (EmptyLang!11205) (Union!11205 (regOne!22923 Regex!11205) (regTwo!22923 Regex!11205)) )
))
(declare-datatypes ((String!46368 0))(
  ( (String!46369 (value!200183 String)) )
))
(declare-datatypes ((IArray!25027 0))(
  ( (IArray!25028 (innerList!12571 List!40894)) )
))
(declare-datatypes ((Conc!12511 0))(
  ( (Node!12511 (left!31451 Conc!12511) (right!31781 Conc!12511) (csize!25252 Int) (cheight!12722 Int)) (Leaf!19368 (xs!15817 IArray!25027) (csize!25253 Int)) (Empty!12511) )
))
(declare-datatypes ((BalanceConc!24616 0))(
  ( (BalanceConc!24617 (c!670131 Conc!12511)) )
))
(declare-datatypes ((TokenValueInjection!12488 0))(
  ( (TokenValueInjection!12489 (toValue!8716 Int) (toChars!8575 Int)) )
))
(declare-datatypes ((Rule!12400 0))(
  ( (Rule!12401 (regex!6300 Regex!11205) (tag!7160 String!46368) (isSeparator!6300 Bool) (transformation!6300 TokenValueInjection!12488)) )
))
(declare-datatypes ((Token!11738 0))(
  ( (Token!11739 (value!200184 TokenValue!6530) (rule!9148 Rule!12400) (size!30667 Int) (originalCharacters!6900 List!40894)) )
))
(declare-datatypes ((List!40896 0))(
  ( (Nil!40772) (Cons!40772 (h!46192 Token!11738) (t!311221 List!40896)) )
))
(declare-datatypes ((tuple2!39954 0))(
  ( (tuple2!39955 (_1!23111 List!40896) (_2!23111 List!40894)) )
))
(declare-fun lt!1336195 () tuple2!39954)

(declare-fun lt!1336179 () List!40896)

(assert (=> b!3847574 (= res!1557587 (= lt!1336195 (tuple2!39955 lt!1336179 suffixResult!91)))))

(declare-datatypes ((List!40897 0))(
  ( (Nil!40773) (Cons!40773 (h!46193 Rule!12400) (t!311222 List!40897)) )
))
(declare-fun rules!2768 () List!40897)

(declare-fun lt!1336193 () List!40894)

(declare-datatypes ((LexerInterface!5889 0))(
  ( (LexerInterfaceExt!5886 (__x!25278 Int)) (Lexer!5887) )
))
(declare-fun thiss!20629 () LexerInterface!5889)

(declare-fun lexList!1657 (LexerInterface!5889 List!40897 List!40894) tuple2!39954)

(assert (=> b!3847574 (= lt!1336195 (lexList!1657 thiss!20629 rules!2768 lt!1336193))))

(declare-fun prefixTokens!80 () List!40896)

(declare-fun suffixTokens!72 () List!40896)

(declare-fun ++!10357 (List!40896 List!40896) List!40896)

(assert (=> b!3847574 (= lt!1336179 (++!10357 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!40894)

(declare-fun suffix!1176 () List!40894)

(declare-fun ++!10358 (List!40894 List!40894) List!40894)

(assert (=> b!3847574 (= lt!1336193 (++!10358 prefix!426 suffix!1176))))

(declare-fun b!3847575 () Bool)

(declare-fun res!1557584 () Bool)

(assert (=> b!3847575 (=> (not res!1557584) (not e!2378076))))

(declare-fun isEmpty!24122 (List!40894) Bool)

(assert (=> b!3847575 (= res!1557584 (not (isEmpty!24122 prefix!426)))))

(declare-fun b!3847576 () Bool)

(declare-fun res!1557585 () Bool)

(declare-fun e!2378102 () Bool)

(assert (=> b!3847576 (=> res!1557585 e!2378102)))

(declare-datatypes ((tuple2!39956 0))(
  ( (tuple2!39957 (_1!23112 Token!11738) (_2!23112 List!40894)) )
))
(declare-datatypes ((Option!8718 0))(
  ( (None!8717) (Some!8717 (v!39009 tuple2!39956)) )
))
(declare-fun lt!1336194 () Option!8718)

(declare-fun lt!1336180 () tuple2!39954)

(assert (=> b!3847576 (= res!1557585 (not (= lt!1336195 (tuple2!39955 (++!10357 (Cons!40772 (_1!23112 (v!39009 lt!1336194)) Nil!40772) (_1!23111 lt!1336180)) (_2!23111 lt!1336180)))))))

(declare-fun b!3847577 () Bool)

(declare-fun e!2378094 () Bool)

(assert (=> b!3847577 (= e!2378082 e!2378094)))

(declare-fun res!1557581 () Bool)

(assert (=> b!3847577 (=> (not res!1557581) (not e!2378094))))

(get-info :version)

(assert (=> b!3847577 (= res!1557581 ((_ is Some!8717) lt!1336194))))

(declare-fun maxPrefix!3193 (LexerInterface!5889 List!40897 List!40894) Option!8718)

(assert (=> b!3847577 (= lt!1336194 (maxPrefix!3193 thiss!20629 rules!2768 lt!1336193))))

(declare-fun b!3847578 () Bool)

(declare-fun e!2378089 () Bool)

(declare-fun e!2378101 () Bool)

(assert (=> b!3847578 (= e!2378089 e!2378101)))

(declare-fun res!1557574 () Bool)

(assert (=> b!3847578 (=> res!1557574 e!2378101)))

(declare-fun lt!1336191 () Int)

(declare-fun lt!1336187 () Int)

(declare-fun lt!1336185 () Int)

(assert (=> b!3847578 (= res!1557574 (not (= (+ lt!1336187 lt!1336185) lt!1336191)))))

(declare-fun size!30668 (List!40894) Int)

(assert (=> b!3847578 (= lt!1336191 (size!30668 lt!1336193))))

(declare-fun b!3847579 () Bool)

(assert (=> b!3847579 (= e!2378094 (not e!2378102))))

(declare-fun res!1557583 () Bool)

(assert (=> b!3847579 (=> res!1557583 e!2378102)))

(declare-fun lt!1336189 () List!40894)

(assert (=> b!3847579 (= res!1557583 (not (= lt!1336189 lt!1336193)))))

(assert (=> b!3847579 (= lt!1336180 (lexList!1657 thiss!20629 rules!2768 (_2!23112 (v!39009 lt!1336194))))))

(declare-fun lt!1336181 () List!40894)

(declare-fun lt!1336190 () List!40894)

(declare-fun lt!1336184 () TokenValue!6530)

(assert (=> b!3847579 (and (= (size!30667 (_1!23112 (v!39009 lt!1336194))) lt!1336187) (= (originalCharacters!6900 (_1!23112 (v!39009 lt!1336194))) lt!1336190) (= (v!39009 lt!1336194) (tuple2!39957 (Token!11739 lt!1336184 (rule!9148 (_1!23112 (v!39009 lt!1336194))) lt!1336187 lt!1336190) lt!1336181)))))

(assert (=> b!3847579 (= lt!1336187 (size!30668 lt!1336190))))

(declare-fun e!2378078 () Bool)

(assert (=> b!3847579 e!2378078))

(declare-fun res!1557577 () Bool)

(assert (=> b!3847579 (=> (not res!1557577) (not e!2378078))))

(assert (=> b!3847579 (= res!1557577 (= (value!200184 (_1!23112 (v!39009 lt!1336194))) lt!1336184))))

(declare-fun apply!9543 (TokenValueInjection!12488 BalanceConc!24616) TokenValue!6530)

(declare-fun seqFromList!4571 (List!40894) BalanceConc!24616)

(assert (=> b!3847579 (= lt!1336184 (apply!9543 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) (seqFromList!4571 lt!1336190)))))

(assert (=> b!3847579 (= (_2!23112 (v!39009 lt!1336194)) lt!1336181)))

(declare-datatypes ((Unit!58446 0))(
  ( (Unit!58447) )
))
(declare-fun lt!1336183 () Unit!58446)

(declare-fun lemmaSamePrefixThenSameSuffix!1620 (List!40894 List!40894 List!40894 List!40894 List!40894) Unit!58446)

(assert (=> b!3847579 (= lt!1336183 (lemmaSamePrefixThenSameSuffix!1620 lt!1336190 (_2!23112 (v!39009 lt!1336194)) lt!1336190 lt!1336181 lt!1336193))))

(declare-fun getSuffix!1854 (List!40894 List!40894) List!40894)

(assert (=> b!3847579 (= lt!1336181 (getSuffix!1854 lt!1336193 lt!1336190))))

(declare-fun isPrefix!3399 (List!40894 List!40894) Bool)

(assert (=> b!3847579 (isPrefix!3399 lt!1336190 lt!1336189)))

(assert (=> b!3847579 (= lt!1336189 (++!10358 lt!1336190 (_2!23112 (v!39009 lt!1336194))))))

(declare-fun lt!1336188 () Unit!58446)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2262 (List!40894 List!40894) Unit!58446)

(assert (=> b!3847579 (= lt!1336188 (lemmaConcatTwoListThenFirstIsPrefix!2262 lt!1336190 (_2!23112 (v!39009 lt!1336194))))))

(declare-fun list!15174 (BalanceConc!24616) List!40894)

(declare-fun charsOf!4128 (Token!11738) BalanceConc!24616)

(assert (=> b!3847579 (= lt!1336190 (list!15174 (charsOf!4128 (_1!23112 (v!39009 lt!1336194)))))))

(declare-fun ruleValid!2252 (LexerInterface!5889 Rule!12400) Bool)

(assert (=> b!3847579 (ruleValid!2252 thiss!20629 (rule!9148 (_1!23112 (v!39009 lt!1336194))))))

(declare-fun lt!1336186 () Unit!58446)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1332 (LexerInterface!5889 Rule!12400 List!40897) Unit!58446)

(assert (=> b!3847579 (= lt!1336186 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1332 thiss!20629 (rule!9148 (_1!23112 (v!39009 lt!1336194))) rules!2768))))

(declare-fun lt!1336196 () Unit!58446)

(declare-fun lemmaCharactersSize!961 (Token!11738) Unit!58446)

(assert (=> b!3847579 (= lt!1336196 (lemmaCharactersSize!961 (_1!23112 (v!39009 lt!1336194))))))

(declare-fun e!2378085 () Bool)

(assert (=> b!3847580 (= e!2378085 (and tp!1166259 tp!1166264))))

(declare-fun b!3847581 () Bool)

(declare-fun e!2378093 () Bool)

(declare-fun e!2378083 () Bool)

(assert (=> b!3847581 (= e!2378093 e!2378083)))

(declare-fun res!1557582 () Bool)

(assert (=> b!3847581 (=> res!1557582 e!2378083)))

(declare-fun matchR!5352 (Regex!11205 List!40894) Bool)

(assert (=> b!3847581 (= res!1557582 (not (matchR!5352 (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) lt!1336190)))))

(declare-fun maxPrefixOneRule!2275 (LexerInterface!5889 Rule!12400 List!40894) Option!8718)

(assert (=> b!3847581 (= (maxPrefixOneRule!2275 thiss!20629 (rule!9148 (_1!23112 (v!39009 lt!1336194))) lt!1336193) (Some!8717 (tuple2!39957 (Token!11739 lt!1336184 (rule!9148 (_1!23112 (v!39009 lt!1336194))) lt!1336187 lt!1336190) (_2!23112 (v!39009 lt!1336194)))))))

(declare-fun lt!1336182 () Unit!58446)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1173 (LexerInterface!5889 List!40897 List!40894 List!40894 List!40894 Rule!12400) Unit!58446)

(assert (=> b!3847581 (= lt!1336182 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1173 thiss!20629 rules!2768 lt!1336190 lt!1336193 (_2!23112 (v!39009 lt!1336194)) (rule!9148 (_1!23112 (v!39009 lt!1336194)))))))

(declare-fun b!3847582 () Bool)

(declare-fun e!2378086 () Bool)

(declare-fun tp!1166266 () Bool)

(assert (=> b!3847582 (= e!2378086 (and tp_is_empty!19381 tp!1166266))))

(declare-fun e!2378087 () Bool)

(declare-fun b!3847583 () Bool)

(declare-fun tp!1166271 () Bool)

(declare-fun e!2378088 () Bool)

(declare-fun inv!54910 (String!46368) Bool)

(declare-fun inv!54913 (TokenValueInjection!12488) Bool)

(assert (=> b!3847583 (= e!2378088 (and tp!1166271 (inv!54910 (tag!7160 (rule!9148 (h!46192 suffixTokens!72)))) (inv!54913 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))) e!2378087))))

(declare-fun e!2378099 () Bool)

(assert (=> b!3847584 (= e!2378099 (and tp!1166261 tp!1166267))))

(assert (=> b!3847585 (= e!2378087 (and tp!1166274 tp!1166262))))

(declare-fun b!3847586 () Bool)

(declare-fun res!1557579 () Bool)

(assert (=> b!3847586 (=> res!1557579 e!2378102)))

(assert (=> b!3847586 (= res!1557579 (or (not (= lt!1336180 (tuple2!39955 (_1!23111 lt!1336180) (_2!23111 lt!1336180)))) (= (_2!23112 (v!39009 lt!1336194)) suffix!1176)))))

(declare-fun res!1557589 () Bool)

(assert (=> start!360304 (=> (not res!1557589) (not e!2378076))))

(assert (=> start!360304 (= res!1557589 ((_ is Lexer!5887) thiss!20629))))

(assert (=> start!360304 e!2378076))

(assert (=> start!360304 e!2378086))

(assert (=> start!360304 true))

(declare-fun e!2378097 () Bool)

(assert (=> start!360304 e!2378097))

(declare-fun e!2378084 () Bool)

(assert (=> start!360304 e!2378084))

(declare-fun e!2378080 () Bool)

(assert (=> start!360304 e!2378080))

(declare-fun e!2378079 () Bool)

(assert (=> start!360304 e!2378079))

(assert (=> start!360304 e!2378090))

(declare-fun b!3847587 () Bool)

(declare-fun e!2378098 () Bool)

(declare-fun tp!1166270 () Bool)

(assert (=> b!3847587 (= e!2378084 (and e!2378098 tp!1166270))))

(declare-fun b!3847588 () Bool)

(declare-fun res!1557586 () Bool)

(assert (=> b!3847588 (=> (not res!1557586) (not e!2378082))))

(assert (=> b!3847588 (= res!1557586 (= (lexList!1657 thiss!20629 rules!2768 suffix!1176) (tuple2!39955 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3847589 () Bool)

(declare-fun res!1557588 () Bool)

(assert (=> b!3847589 (=> (not res!1557588) (not e!2378076))))

(declare-fun isEmpty!24123 (List!40897) Bool)

(assert (=> b!3847589 (= res!1557588 (not (isEmpty!24123 rules!2768)))))

(declare-fun b!3847590 () Bool)

(declare-fun e!2378077 () Bool)

(declare-fun tp!1166273 () Bool)

(assert (=> b!3847590 (= e!2378077 (and tp!1166273 (inv!54910 (tag!7160 (rule!9148 (h!46192 prefixTokens!80)))) (inv!54913 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))) e!2378085))))

(declare-fun b!3847591 () Bool)

(assert (=> b!3847591 (= e!2378101 e!2378093)))

(declare-fun res!1557576 () Bool)

(assert (=> b!3847591 (=> res!1557576 e!2378093)))

(declare-fun lt!1336197 () Int)

(declare-fun lt!1336192 () Int)

(assert (=> b!3847591 (= res!1557576 (or (not (= (+ lt!1336192 lt!1336197) lt!1336191)) (<= lt!1336187 lt!1336192)))))

(assert (=> b!3847591 (= lt!1336192 (size!30668 prefix!426))))

(declare-fun b!3847592 () Bool)

(declare-fun tp!1166269 () Bool)

(assert (=> b!3847592 (= e!2378098 (and tp!1166269 (inv!54910 (tag!7160 (h!46193 rules!2768))) (inv!54913 (transformation!6300 (h!46193 rules!2768))) e!2378099))))

(declare-fun b!3847593 () Bool)

(assert (=> b!3847593 (= e!2378102 e!2378089)))

(declare-fun res!1557575 () Bool)

(assert (=> b!3847593 (=> res!1557575 e!2378089)))

(assert (=> b!3847593 (= res!1557575 (>= lt!1336185 lt!1336197))))

(assert (=> b!3847593 (= lt!1336197 (size!30668 suffix!1176))))

(assert (=> b!3847593 (= lt!1336185 (size!30668 (_2!23112 (v!39009 lt!1336194))))))

(declare-fun b!3847594 () Bool)

(declare-fun rulesValidInductive!2234 (LexerInterface!5889 List!40897) Bool)

(assert (=> b!3847594 (= e!2378083 (rulesValidInductive!2234 thiss!20629 rules!2768))))

(declare-fun tp!1166263 () Bool)

(declare-fun b!3847595 () Bool)

(declare-fun e!2378100 () Bool)

(declare-fun inv!21 (TokenValue!6530) Bool)

(assert (=> b!3847595 (= e!2378100 (and (inv!21 (value!200184 (h!46192 prefixTokens!80))) e!2378077 tp!1166263))))

(declare-fun b!3847596 () Bool)

(declare-fun e!2378095 () Bool)

(declare-fun tp!1166265 () Bool)

(declare-fun inv!54914 (Token!11738) Bool)

(assert (=> b!3847596 (= e!2378079 (and (inv!54914 (h!46192 suffixTokens!72)) e!2378095 tp!1166265))))

(declare-fun b!3847597 () Bool)

(declare-fun tp!1166260 () Bool)

(assert (=> b!3847597 (= e!2378097 (and tp_is_empty!19381 tp!1166260))))

(declare-fun b!3847598 () Bool)

(declare-fun res!1557578 () Bool)

(assert (=> b!3847598 (=> (not res!1557578) (not e!2378076))))

(declare-fun isEmpty!24124 (List!40896) Bool)

(assert (=> b!3847598 (= res!1557578 (not (isEmpty!24124 prefixTokens!80)))))

(declare-fun b!3847599 () Bool)

(declare-fun res!1557580 () Bool)

(assert (=> b!3847599 (=> (not res!1557580) (not e!2378076))))

(declare-fun rulesInvariant!5232 (LexerInterface!5889 List!40897) Bool)

(assert (=> b!3847599 (= res!1557580 (rulesInvariant!5232 thiss!20629 rules!2768))))

(declare-fun b!3847600 () Bool)

(assert (=> b!3847600 (= e!2378078 (= (size!30667 (_1!23112 (v!39009 lt!1336194))) (size!30668 (originalCharacters!6900 (_1!23112 (v!39009 lt!1336194))))))))

(declare-fun tp!1166272 () Bool)

(declare-fun b!3847601 () Bool)

(assert (=> b!3847601 (= e!2378095 (and (inv!21 (value!200184 (h!46192 suffixTokens!72))) e!2378088 tp!1166272))))

(declare-fun b!3847602 () Bool)

(declare-fun tp!1166258 () Bool)

(assert (=> b!3847602 (= e!2378080 (and (inv!54914 (h!46192 prefixTokens!80)) e!2378100 tp!1166258))))

(assert (= (and start!360304 res!1557589) b!3847589))

(assert (= (and b!3847589 res!1557588) b!3847599))

(assert (= (and b!3847599 res!1557580) b!3847598))

(assert (= (and b!3847598 res!1557578) b!3847575))

(assert (= (and b!3847575 res!1557584) b!3847574))

(assert (= (and b!3847574 res!1557587) b!3847588))

(assert (= (and b!3847588 res!1557586) b!3847577))

(assert (= (and b!3847577 res!1557581) b!3847579))

(assert (= (and b!3847579 res!1557577) b!3847600))

(assert (= (and b!3847579 (not res!1557583)) b!3847576))

(assert (= (and b!3847576 (not res!1557585)) b!3847586))

(assert (= (and b!3847586 (not res!1557579)) b!3847593))

(assert (= (and b!3847593 (not res!1557575)) b!3847578))

(assert (= (and b!3847578 (not res!1557574)) b!3847591))

(assert (= (and b!3847591 (not res!1557576)) b!3847581))

(assert (= (and b!3847581 (not res!1557582)) b!3847594))

(assert (= (and start!360304 ((_ is Cons!40770) suffixResult!91)) b!3847582))

(assert (= (and start!360304 ((_ is Cons!40770) suffix!1176)) b!3847597))

(assert (= b!3847592 b!3847584))

(assert (= b!3847587 b!3847592))

(assert (= (and start!360304 ((_ is Cons!40773) rules!2768)) b!3847587))

(assert (= b!3847590 b!3847580))

(assert (= b!3847595 b!3847590))

(assert (= b!3847602 b!3847595))

(assert (= (and start!360304 ((_ is Cons!40772) prefixTokens!80)) b!3847602))

(assert (= b!3847583 b!3847585))

(assert (= b!3847601 b!3847583))

(assert (= b!3847596 b!3847601))

(assert (= (and start!360304 ((_ is Cons!40772) suffixTokens!72)) b!3847596))

(assert (= (and start!360304 ((_ is Cons!40770) prefix!426)) b!3847573))

(declare-fun m!4402279 () Bool)

(assert (=> b!3847598 m!4402279))

(declare-fun m!4402281 () Bool)

(assert (=> b!3847591 m!4402281))

(declare-fun m!4402283 () Bool)

(assert (=> b!3847576 m!4402283))

(declare-fun m!4402285 () Bool)

(assert (=> b!3847601 m!4402285))

(declare-fun m!4402287 () Bool)

(assert (=> b!3847583 m!4402287))

(declare-fun m!4402289 () Bool)

(assert (=> b!3847583 m!4402289))

(declare-fun m!4402291 () Bool)

(assert (=> b!3847595 m!4402291))

(declare-fun m!4402293 () Bool)

(assert (=> b!3847593 m!4402293))

(declare-fun m!4402295 () Bool)

(assert (=> b!3847593 m!4402295))

(declare-fun m!4402297 () Bool)

(assert (=> b!3847579 m!4402297))

(declare-fun m!4402299 () Bool)

(assert (=> b!3847579 m!4402299))

(declare-fun m!4402301 () Bool)

(assert (=> b!3847579 m!4402301))

(declare-fun m!4402303 () Bool)

(assert (=> b!3847579 m!4402303))

(declare-fun m!4402305 () Bool)

(assert (=> b!3847579 m!4402305))

(assert (=> b!3847579 m!4402297))

(declare-fun m!4402307 () Bool)

(assert (=> b!3847579 m!4402307))

(declare-fun m!4402309 () Bool)

(assert (=> b!3847579 m!4402309))

(declare-fun m!4402311 () Bool)

(assert (=> b!3847579 m!4402311))

(declare-fun m!4402313 () Bool)

(assert (=> b!3847579 m!4402313))

(assert (=> b!3847579 m!4402303))

(declare-fun m!4402315 () Bool)

(assert (=> b!3847579 m!4402315))

(declare-fun m!4402317 () Bool)

(assert (=> b!3847579 m!4402317))

(declare-fun m!4402319 () Bool)

(assert (=> b!3847579 m!4402319))

(declare-fun m!4402321 () Bool)

(assert (=> b!3847579 m!4402321))

(declare-fun m!4402323 () Bool)

(assert (=> b!3847579 m!4402323))

(declare-fun m!4402325 () Bool)

(assert (=> b!3847590 m!4402325))

(declare-fun m!4402327 () Bool)

(assert (=> b!3847590 m!4402327))

(declare-fun m!4402329 () Bool)

(assert (=> b!3847577 m!4402329))

(declare-fun m!4402331 () Bool)

(assert (=> b!3847589 m!4402331))

(declare-fun m!4402333 () Bool)

(assert (=> b!3847600 m!4402333))

(declare-fun m!4402335 () Bool)

(assert (=> b!3847575 m!4402335))

(declare-fun m!4402337 () Bool)

(assert (=> b!3847602 m!4402337))

(declare-fun m!4402339 () Bool)

(assert (=> b!3847592 m!4402339))

(declare-fun m!4402341 () Bool)

(assert (=> b!3847592 m!4402341))

(declare-fun m!4402343 () Bool)

(assert (=> b!3847596 m!4402343))

(declare-fun m!4402345 () Bool)

(assert (=> b!3847599 m!4402345))

(declare-fun m!4402347 () Bool)

(assert (=> b!3847574 m!4402347))

(declare-fun m!4402349 () Bool)

(assert (=> b!3847574 m!4402349))

(declare-fun m!4402351 () Bool)

(assert (=> b!3847574 m!4402351))

(declare-fun m!4402353 () Bool)

(assert (=> b!3847594 m!4402353))

(declare-fun m!4402355 () Bool)

(assert (=> b!3847588 m!4402355))

(declare-fun m!4402357 () Bool)

(assert (=> b!3847578 m!4402357))

(declare-fun m!4402359 () Bool)

(assert (=> b!3847581 m!4402359))

(declare-fun m!4402361 () Bool)

(assert (=> b!3847581 m!4402361))

(declare-fun m!4402363 () Bool)

(assert (=> b!3847581 m!4402363))

(check-sat (not b_next!103753) (not b!3847595) (not b!3847598) (not b_next!103757) (not b!3847579) b_and!287097 (not b!3847602) b_and!287099 b_and!287093 (not b!3847582) (not b_next!103751) (not b!3847592) (not b!3847596) (not b_next!103749) b_and!287095 (not b!3847575) (not b!3847588) b_and!287101 (not b!3847599) (not b!3847594) (not b!3847589) (not b!3847573) (not b!3847583) (not b!3847600) (not b!3847577) (not b!3847597) (not b!3847581) (not b_next!103759) (not b!3847578) (not b!3847591) (not b_next!103755) (not b!3847587) (not b!3847574) (not b!3847576) (not b!3847590) b_and!287091 (not b!3847601) tp_is_empty!19381 (not b!3847593))
(check-sat (not b_next!103753) (not b_next!103751) (not b_next!103757) b_and!287101 b_and!287097 (not b_next!103759) b_and!287099 (not b_next!103755) b_and!287091 b_and!287093 (not b_next!103749) b_and!287095)
(get-model)

(declare-fun d!1140685 () Bool)

(declare-fun lt!1336200 () Int)

(assert (=> d!1140685 (>= lt!1336200 0)))

(declare-fun e!2378105 () Int)

(assert (=> d!1140685 (= lt!1336200 e!2378105)))

(declare-fun c!670134 () Bool)

(assert (=> d!1140685 (= c!670134 ((_ is Nil!40770) lt!1336193))))

(assert (=> d!1140685 (= (size!30668 lt!1336193) lt!1336200)))

(declare-fun b!3847607 () Bool)

(assert (=> b!3847607 (= e!2378105 0)))

(declare-fun b!3847608 () Bool)

(assert (=> b!3847608 (= e!2378105 (+ 1 (size!30668 (t!311219 lt!1336193))))))

(assert (= (and d!1140685 c!670134) b!3847607))

(assert (= (and d!1140685 (not c!670134)) b!3847608))

(declare-fun m!4402365 () Bool)

(assert (=> b!3847608 m!4402365))

(assert (=> b!3847578 d!1140685))

(declare-fun d!1140687 () Bool)

(declare-fun res!1557594 () Bool)

(declare-fun e!2378108 () Bool)

(assert (=> d!1140687 (=> (not res!1557594) (not e!2378108))))

(declare-fun rulesValid!2431 (LexerInterface!5889 List!40897) Bool)

(assert (=> d!1140687 (= res!1557594 (rulesValid!2431 thiss!20629 rules!2768))))

(assert (=> d!1140687 (= (rulesInvariant!5232 thiss!20629 rules!2768) e!2378108)))

(declare-fun b!3847611 () Bool)

(declare-datatypes ((List!40898 0))(
  ( (Nil!40774) (Cons!40774 (h!46194 String!46368) (t!311319 List!40898)) )
))
(declare-fun noDuplicateTag!2432 (LexerInterface!5889 List!40897 List!40898) Bool)

(assert (=> b!3847611 (= e!2378108 (noDuplicateTag!2432 thiss!20629 rules!2768 Nil!40774))))

(assert (= (and d!1140687 res!1557594) b!3847611))

(declare-fun m!4402367 () Bool)

(assert (=> d!1140687 m!4402367))

(declare-fun m!4402369 () Bool)

(assert (=> b!3847611 m!4402369))

(assert (=> b!3847599 d!1140687))

(declare-fun b!3847622 () Bool)

(declare-fun e!2378116 () tuple2!39954)

(declare-fun lt!1336207 () Option!8718)

(declare-fun lt!1336209 () tuple2!39954)

(assert (=> b!3847622 (= e!2378116 (tuple2!39955 (Cons!40772 (_1!23112 (v!39009 lt!1336207)) (_1!23111 lt!1336209)) (_2!23111 lt!1336209)))))

(assert (=> b!3847622 (= lt!1336209 (lexList!1657 thiss!20629 rules!2768 (_2!23112 (v!39009 lt!1336207))))))

(declare-fun b!3847623 () Bool)

(assert (=> b!3847623 (= e!2378116 (tuple2!39955 Nil!40772 suffix!1176))))

(declare-fun b!3847624 () Bool)

(declare-fun e!2378117 () Bool)

(declare-fun e!2378115 () Bool)

(assert (=> b!3847624 (= e!2378117 e!2378115)))

(declare-fun res!1557600 () Bool)

(declare-fun lt!1336208 () tuple2!39954)

(assert (=> b!3847624 (= res!1557600 (< (size!30668 (_2!23111 lt!1336208)) (size!30668 suffix!1176)))))

(assert (=> b!3847624 (=> (not res!1557600) (not e!2378115))))

(declare-fun b!3847625 () Bool)

(assert (=> b!3847625 (= e!2378115 (not (isEmpty!24124 (_1!23111 lt!1336208))))))

(declare-fun b!3847626 () Bool)

(assert (=> b!3847626 (= e!2378117 (= (_2!23111 lt!1336208) suffix!1176))))

(declare-fun d!1140689 () Bool)

(assert (=> d!1140689 e!2378117))

(declare-fun c!670140 () Bool)

(declare-fun size!30670 (List!40896) Int)

(assert (=> d!1140689 (= c!670140 (> (size!30670 (_1!23111 lt!1336208)) 0))))

(assert (=> d!1140689 (= lt!1336208 e!2378116)))

(declare-fun c!670139 () Bool)

(assert (=> d!1140689 (= c!670139 ((_ is Some!8717) lt!1336207))))

(assert (=> d!1140689 (= lt!1336207 (maxPrefix!3193 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1140689 (= (lexList!1657 thiss!20629 rules!2768 suffix!1176) lt!1336208)))

(assert (= (and d!1140689 c!670139) b!3847622))

(assert (= (and d!1140689 (not c!670139)) b!3847623))

(assert (= (and d!1140689 c!670140) b!3847624))

(assert (= (and d!1140689 (not c!670140)) b!3847626))

(assert (= (and b!3847624 res!1557600) b!3847625))

(declare-fun m!4402371 () Bool)

(assert (=> b!3847622 m!4402371))

(declare-fun m!4402373 () Bool)

(assert (=> b!3847624 m!4402373))

(assert (=> b!3847624 m!4402293))

(declare-fun m!4402375 () Bool)

(assert (=> b!3847625 m!4402375))

(declare-fun m!4402377 () Bool)

(assert (=> d!1140689 m!4402377))

(declare-fun m!4402379 () Bool)

(assert (=> d!1140689 m!4402379))

(assert (=> b!3847588 d!1140689))

(declare-fun d!1140697 () Bool)

(declare-fun e!2378173 () Bool)

(assert (=> d!1140697 e!2378173))

(declare-fun res!1557651 () Bool)

(assert (=> d!1140697 (=> res!1557651 e!2378173)))

(declare-fun lt!1336260 () Option!8718)

(declare-fun isEmpty!24125 (Option!8718) Bool)

(assert (=> d!1140697 (= res!1557651 (isEmpty!24125 lt!1336260))))

(declare-fun e!2378172 () Option!8718)

(assert (=> d!1140697 (= lt!1336260 e!2378172)))

(declare-fun c!670161 () Bool)

(assert (=> d!1140697 (= c!670161 (and ((_ is Cons!40773) rules!2768) ((_ is Nil!40773) (t!311222 rules!2768))))))

(declare-fun lt!1336259 () Unit!58446)

(declare-fun lt!1336257 () Unit!58446)

(assert (=> d!1140697 (= lt!1336259 lt!1336257)))

(assert (=> d!1140697 (isPrefix!3399 lt!1336193 lt!1336193)))

(declare-fun lemmaIsPrefixRefl!2167 (List!40894 List!40894) Unit!58446)

(assert (=> d!1140697 (= lt!1336257 (lemmaIsPrefixRefl!2167 lt!1336193 lt!1336193))))

(assert (=> d!1140697 (rulesValidInductive!2234 thiss!20629 rules!2768)))

(assert (=> d!1140697 (= (maxPrefix!3193 thiss!20629 rules!2768 lt!1336193) lt!1336260)))

(declare-fun b!3847724 () Bool)

(declare-fun e!2378174 () Bool)

(assert (=> b!3847724 (= e!2378173 e!2378174)))

(declare-fun res!1557654 () Bool)

(assert (=> b!3847724 (=> (not res!1557654) (not e!2378174))))

(declare-fun isDefined!6844 (Option!8718) Bool)

(assert (=> b!3847724 (= res!1557654 (isDefined!6844 lt!1336260))))

(declare-fun b!3847725 () Bool)

(declare-fun res!1557653 () Bool)

(assert (=> b!3847725 (=> (not res!1557653) (not e!2378174))))

(declare-fun get!13491 (Option!8718) tuple2!39956)

(assert (=> b!3847725 (= res!1557653 (= (++!10358 (list!15174 (charsOf!4128 (_1!23112 (get!13491 lt!1336260)))) (_2!23112 (get!13491 lt!1336260))) lt!1336193))))

(declare-fun b!3847726 () Bool)

(declare-fun contains!8244 (List!40897 Rule!12400) Bool)

(assert (=> b!3847726 (= e!2378174 (contains!8244 rules!2768 (rule!9148 (_1!23112 (get!13491 lt!1336260)))))))

(declare-fun b!3847727 () Bool)

(declare-fun lt!1336256 () Option!8718)

(declare-fun lt!1336258 () Option!8718)

(assert (=> b!3847727 (= e!2378172 (ite (and ((_ is None!8717) lt!1336256) ((_ is None!8717) lt!1336258)) None!8717 (ite ((_ is None!8717) lt!1336258) lt!1336256 (ite ((_ is None!8717) lt!1336256) lt!1336258 (ite (>= (size!30667 (_1!23112 (v!39009 lt!1336256))) (size!30667 (_1!23112 (v!39009 lt!1336258)))) lt!1336256 lt!1336258)))))))

(declare-fun call!282099 () Option!8718)

(assert (=> b!3847727 (= lt!1336256 call!282099)))

(assert (=> b!3847727 (= lt!1336258 (maxPrefix!3193 thiss!20629 (t!311222 rules!2768) lt!1336193))))

(declare-fun b!3847728 () Bool)

(declare-fun res!1557655 () Bool)

(assert (=> b!3847728 (=> (not res!1557655) (not e!2378174))))

(assert (=> b!3847728 (= res!1557655 (< (size!30668 (_2!23112 (get!13491 lt!1336260))) (size!30668 lt!1336193)))))

(declare-fun b!3847729 () Bool)

(declare-fun res!1557657 () Bool)

(assert (=> b!3847729 (=> (not res!1557657) (not e!2378174))))

(assert (=> b!3847729 (= res!1557657 (matchR!5352 (regex!6300 (rule!9148 (_1!23112 (get!13491 lt!1336260)))) (list!15174 (charsOf!4128 (_1!23112 (get!13491 lt!1336260))))))))

(declare-fun bm!282094 () Bool)

(assert (=> bm!282094 (= call!282099 (maxPrefixOneRule!2275 thiss!20629 (h!46193 rules!2768) lt!1336193))))

(declare-fun b!3847730 () Bool)

(declare-fun res!1557652 () Bool)

(assert (=> b!3847730 (=> (not res!1557652) (not e!2378174))))

(assert (=> b!3847730 (= res!1557652 (= (list!15174 (charsOf!4128 (_1!23112 (get!13491 lt!1336260)))) (originalCharacters!6900 (_1!23112 (get!13491 lt!1336260)))))))

(declare-fun b!3847731 () Bool)

(declare-fun res!1557656 () Bool)

(assert (=> b!3847731 (=> (not res!1557656) (not e!2378174))))

(assert (=> b!3847731 (= res!1557656 (= (value!200184 (_1!23112 (get!13491 lt!1336260))) (apply!9543 (transformation!6300 (rule!9148 (_1!23112 (get!13491 lt!1336260)))) (seqFromList!4571 (originalCharacters!6900 (_1!23112 (get!13491 lt!1336260)))))))))

(declare-fun b!3847732 () Bool)

(assert (=> b!3847732 (= e!2378172 call!282099)))

(assert (= (and d!1140697 c!670161) b!3847732))

(assert (= (and d!1140697 (not c!670161)) b!3847727))

(assert (= (or b!3847732 b!3847727) bm!282094))

(assert (= (and d!1140697 (not res!1557651)) b!3847724))

(assert (= (and b!3847724 res!1557654) b!3847730))

(assert (= (and b!3847730 res!1557652) b!3847728))

(assert (= (and b!3847728 res!1557655) b!3847725))

(assert (= (and b!3847725 res!1557653) b!3847731))

(assert (= (and b!3847731 res!1557656) b!3847729))

(assert (= (and b!3847729 res!1557657) b!3847726))

(declare-fun m!4402471 () Bool)

(assert (=> b!3847726 m!4402471))

(declare-fun m!4402473 () Bool)

(assert (=> b!3847726 m!4402473))

(assert (=> b!3847730 m!4402471))

(declare-fun m!4402475 () Bool)

(assert (=> b!3847730 m!4402475))

(assert (=> b!3847730 m!4402475))

(declare-fun m!4402477 () Bool)

(assert (=> b!3847730 m!4402477))

(declare-fun m!4402479 () Bool)

(assert (=> bm!282094 m!4402479))

(assert (=> b!3847725 m!4402471))

(assert (=> b!3847725 m!4402475))

(assert (=> b!3847725 m!4402475))

(assert (=> b!3847725 m!4402477))

(assert (=> b!3847725 m!4402477))

(declare-fun m!4402481 () Bool)

(assert (=> b!3847725 m!4402481))

(assert (=> b!3847731 m!4402471))

(declare-fun m!4402483 () Bool)

(assert (=> b!3847731 m!4402483))

(assert (=> b!3847731 m!4402483))

(declare-fun m!4402485 () Bool)

(assert (=> b!3847731 m!4402485))

(declare-fun m!4402487 () Bool)

(assert (=> b!3847724 m!4402487))

(assert (=> b!3847729 m!4402471))

(assert (=> b!3847729 m!4402475))

(assert (=> b!3847729 m!4402475))

(assert (=> b!3847729 m!4402477))

(assert (=> b!3847729 m!4402477))

(declare-fun m!4402489 () Bool)

(assert (=> b!3847729 m!4402489))

(declare-fun m!4402491 () Bool)

(assert (=> d!1140697 m!4402491))

(declare-fun m!4402493 () Bool)

(assert (=> d!1140697 m!4402493))

(declare-fun m!4402495 () Bool)

(assert (=> d!1140697 m!4402495))

(assert (=> d!1140697 m!4402353))

(assert (=> b!3847728 m!4402471))

(declare-fun m!4402497 () Bool)

(assert (=> b!3847728 m!4402497))

(assert (=> b!3847728 m!4402357))

(declare-fun m!4402499 () Bool)

(assert (=> b!3847727 m!4402499))

(assert (=> b!3847577 d!1140697))

(declare-fun d!1140735 () Bool)

(assert (=> d!1140735 (= (inv!54910 (tag!7160 (rule!9148 (h!46192 prefixTokens!80)))) (= (mod (str.len (value!200183 (tag!7160 (rule!9148 (h!46192 prefixTokens!80))))) 2) 0))))

(assert (=> b!3847590 d!1140735))

(declare-fun d!1140737 () Bool)

(declare-fun res!1557674 () Bool)

(declare-fun e!2378183 () Bool)

(assert (=> d!1140737 (=> (not res!1557674) (not e!2378183))))

(declare-fun semiInverseModEq!2697 (Int Int) Bool)

(assert (=> d!1140737 (= res!1557674 (semiInverseModEq!2697 (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))) (toValue!8716 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80))))))))

(assert (=> d!1140737 (= (inv!54913 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))) e!2378183)))

(declare-fun b!3847753 () Bool)

(declare-fun equivClasses!2596 (Int Int) Bool)

(assert (=> b!3847753 (= e!2378183 (equivClasses!2596 (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))) (toValue!8716 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80))))))))

(assert (= (and d!1140737 res!1557674) b!3847753))

(declare-fun m!4402501 () Bool)

(assert (=> d!1140737 m!4402501))

(declare-fun m!4402503 () Bool)

(assert (=> b!3847753 m!4402503))

(assert (=> b!3847590 d!1140737))

(declare-fun d!1140739 () Bool)

(assert (=> d!1140739 (= (size!30667 (_1!23112 (v!39009 lt!1336194))) (size!30668 (originalCharacters!6900 (_1!23112 (v!39009 lt!1336194)))))))

(declare-fun Unit!58449 () Unit!58446)

(assert (=> d!1140739 (= (lemmaCharactersSize!961 (_1!23112 (v!39009 lt!1336194))) Unit!58449)))

(declare-fun bs!582743 () Bool)

(assert (= bs!582743 d!1140739))

(assert (=> bs!582743 m!4402333))

(assert (=> b!3847579 d!1140739))

(declare-fun d!1140741 () Bool)

(declare-fun lt!1336276 () Int)

(assert (=> d!1140741 (>= lt!1336276 0)))

(declare-fun e!2378187 () Int)

(assert (=> d!1140741 (= lt!1336276 e!2378187)))

(declare-fun c!670165 () Bool)

(assert (=> d!1140741 (= c!670165 ((_ is Nil!40770) lt!1336190))))

(assert (=> d!1140741 (= (size!30668 lt!1336190) lt!1336276)))

(declare-fun b!3847763 () Bool)

(assert (=> b!3847763 (= e!2378187 0)))

(declare-fun b!3847764 () Bool)

(assert (=> b!3847764 (= e!2378187 (+ 1 (size!30668 (t!311219 lt!1336190))))))

(assert (= (and d!1140741 c!670165) b!3847763))

(assert (= (and d!1140741 (not c!670165)) b!3847764))

(declare-fun m!4402531 () Bool)

(assert (=> b!3847764 m!4402531))

(assert (=> b!3847579 d!1140741))

(declare-fun b!3847784 () Bool)

(declare-fun e!2378199 () List!40894)

(assert (=> b!3847784 (= e!2378199 (Cons!40770 (h!46190 lt!1336190) (++!10358 (t!311219 lt!1336190) (_2!23112 (v!39009 lt!1336194)))))))

(declare-fun b!3847783 () Bool)

(assert (=> b!3847783 (= e!2378199 (_2!23112 (v!39009 lt!1336194)))))

(declare-fun lt!1336280 () List!40894)

(declare-fun b!3847786 () Bool)

(declare-fun e!2378198 () Bool)

(assert (=> b!3847786 (= e!2378198 (or (not (= (_2!23112 (v!39009 lt!1336194)) Nil!40770)) (= lt!1336280 lt!1336190)))))

(declare-fun b!3847785 () Bool)

(declare-fun res!1557693 () Bool)

(assert (=> b!3847785 (=> (not res!1557693) (not e!2378198))))

(assert (=> b!3847785 (= res!1557693 (= (size!30668 lt!1336280) (+ (size!30668 lt!1336190) (size!30668 (_2!23112 (v!39009 lt!1336194))))))))

(declare-fun d!1140743 () Bool)

(assert (=> d!1140743 e!2378198))

(declare-fun res!1557694 () Bool)

(assert (=> d!1140743 (=> (not res!1557694) (not e!2378198))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6059 (List!40894) (InoxSet C!22596))

(assert (=> d!1140743 (= res!1557694 (= (content!6059 lt!1336280) ((_ map or) (content!6059 lt!1336190) (content!6059 (_2!23112 (v!39009 lt!1336194))))))))

(assert (=> d!1140743 (= lt!1336280 e!2378199)))

(declare-fun c!670169 () Bool)

(assert (=> d!1140743 (= c!670169 ((_ is Nil!40770) lt!1336190))))

(assert (=> d!1140743 (= (++!10358 lt!1336190 (_2!23112 (v!39009 lt!1336194))) lt!1336280)))

(assert (= (and d!1140743 c!670169) b!3847783))

(assert (= (and d!1140743 (not c!670169)) b!3847784))

(assert (= (and d!1140743 res!1557694) b!3847785))

(assert (= (and b!3847785 res!1557693) b!3847786))

(declare-fun m!4402555 () Bool)

(assert (=> b!3847784 m!4402555))

(declare-fun m!4402557 () Bool)

(assert (=> b!3847785 m!4402557))

(assert (=> b!3847785 m!4402311))

(assert (=> b!3847785 m!4402295))

(declare-fun m!4402559 () Bool)

(assert (=> d!1140743 m!4402559))

(declare-fun m!4402561 () Bool)

(assert (=> d!1140743 m!4402561))

(declare-fun m!4402563 () Bool)

(assert (=> d!1140743 m!4402563))

(assert (=> b!3847579 d!1140743))

(declare-fun d!1140755 () Bool)

(assert (=> d!1140755 (= (_2!23112 (v!39009 lt!1336194)) lt!1336181)))

(declare-fun lt!1336285 () Unit!58446)

(declare-fun choose!22640 (List!40894 List!40894 List!40894 List!40894 List!40894) Unit!58446)

(assert (=> d!1140755 (= lt!1336285 (choose!22640 lt!1336190 (_2!23112 (v!39009 lt!1336194)) lt!1336190 lt!1336181 lt!1336193))))

(assert (=> d!1140755 (isPrefix!3399 lt!1336190 lt!1336193)))

(assert (=> d!1140755 (= (lemmaSamePrefixThenSameSuffix!1620 lt!1336190 (_2!23112 (v!39009 lt!1336194)) lt!1336190 lt!1336181 lt!1336193) lt!1336285)))

(declare-fun bs!582744 () Bool)

(assert (= bs!582744 d!1140755))

(declare-fun m!4402565 () Bool)

(assert (=> bs!582744 m!4402565))

(declare-fun m!4402567 () Bool)

(assert (=> bs!582744 m!4402567))

(assert (=> b!3847579 d!1140755))

(declare-fun d!1140757 () Bool)

(declare-fun res!1557723 () Bool)

(declare-fun e!2378223 () Bool)

(assert (=> d!1140757 (=> (not res!1557723) (not e!2378223))))

(declare-fun validRegex!5096 (Regex!11205) Bool)

(assert (=> d!1140757 (= res!1557723 (validRegex!5096 (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194))))))))

(assert (=> d!1140757 (= (ruleValid!2252 thiss!20629 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) e!2378223)))

(declare-fun b!3847833 () Bool)

(declare-fun res!1557724 () Bool)

(assert (=> b!3847833 (=> (not res!1557724) (not e!2378223))))

(declare-fun nullable!3897 (Regex!11205) Bool)

(assert (=> b!3847833 (= res!1557724 (not (nullable!3897 (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))))))

(declare-fun b!3847834 () Bool)

(assert (=> b!3847834 (= e!2378223 (not (= (tag!7160 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) (String!46369 ""))))))

(assert (= (and d!1140757 res!1557723) b!3847833))

(assert (= (and b!3847833 res!1557724) b!3847834))

(declare-fun m!4402577 () Bool)

(assert (=> d!1140757 m!4402577))

(declare-fun m!4402579 () Bool)

(assert (=> b!3847833 m!4402579))

(assert (=> b!3847579 d!1140757))

(declare-fun d!1140761 () Bool)

(declare-fun fromListB!2107 (List!40894) BalanceConc!24616)

(assert (=> d!1140761 (= (seqFromList!4571 lt!1336190) (fromListB!2107 lt!1336190))))

(declare-fun bs!582745 () Bool)

(assert (= bs!582745 d!1140761))

(declare-fun m!4402581 () Bool)

(assert (=> bs!582745 m!4402581))

(assert (=> b!3847579 d!1140761))

(declare-fun d!1140763 () Bool)

(assert (=> d!1140763 (isPrefix!3399 lt!1336190 (++!10358 lt!1336190 (_2!23112 (v!39009 lt!1336194))))))

(declare-fun lt!1336289 () Unit!58446)

(declare-fun choose!22641 (List!40894 List!40894) Unit!58446)

(assert (=> d!1140763 (= lt!1336289 (choose!22641 lt!1336190 (_2!23112 (v!39009 lt!1336194))))))

(assert (=> d!1140763 (= (lemmaConcatTwoListThenFirstIsPrefix!2262 lt!1336190 (_2!23112 (v!39009 lt!1336194))) lt!1336289)))

(declare-fun bs!582746 () Bool)

(assert (= bs!582746 d!1140763))

(assert (=> bs!582746 m!4402301))

(assert (=> bs!582746 m!4402301))

(declare-fun m!4402583 () Bool)

(assert (=> bs!582746 m!4402583))

(declare-fun m!4402585 () Bool)

(assert (=> bs!582746 m!4402585))

(assert (=> b!3847579 d!1140763))

(declare-fun d!1140765 () Bool)

(assert (=> d!1140765 (ruleValid!2252 thiss!20629 (rule!9148 (_1!23112 (v!39009 lt!1336194))))))

(declare-fun lt!1336292 () Unit!58446)

(declare-fun choose!22642 (LexerInterface!5889 Rule!12400 List!40897) Unit!58446)

(assert (=> d!1140765 (= lt!1336292 (choose!22642 thiss!20629 (rule!9148 (_1!23112 (v!39009 lt!1336194))) rules!2768))))

(assert (=> d!1140765 (contains!8244 rules!2768 (rule!9148 (_1!23112 (v!39009 lt!1336194))))))

(assert (=> d!1140765 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1332 thiss!20629 (rule!9148 (_1!23112 (v!39009 lt!1336194))) rules!2768) lt!1336292)))

(declare-fun bs!582747 () Bool)

(assert (= bs!582747 d!1140765))

(assert (=> bs!582747 m!4402323))

(declare-fun m!4402587 () Bool)

(assert (=> bs!582747 m!4402587))

(declare-fun m!4402589 () Bool)

(assert (=> bs!582747 m!4402589))

(assert (=> b!3847579 d!1140765))

(declare-fun d!1140767 () Bool)

(declare-fun list!15176 (Conc!12511) List!40894)

(assert (=> d!1140767 (= (list!15174 (charsOf!4128 (_1!23112 (v!39009 lt!1336194)))) (list!15176 (c!670131 (charsOf!4128 (_1!23112 (v!39009 lt!1336194))))))))

(declare-fun bs!582748 () Bool)

(assert (= bs!582748 d!1140767))

(declare-fun m!4402591 () Bool)

(assert (=> bs!582748 m!4402591))

(assert (=> b!3847579 d!1140767))

(declare-fun b!3847835 () Bool)

(declare-fun e!2378225 () tuple2!39954)

(declare-fun lt!1336293 () Option!8718)

(declare-fun lt!1336295 () tuple2!39954)

(assert (=> b!3847835 (= e!2378225 (tuple2!39955 (Cons!40772 (_1!23112 (v!39009 lt!1336293)) (_1!23111 lt!1336295)) (_2!23111 lt!1336295)))))

(assert (=> b!3847835 (= lt!1336295 (lexList!1657 thiss!20629 rules!2768 (_2!23112 (v!39009 lt!1336293))))))

(declare-fun b!3847836 () Bool)

(assert (=> b!3847836 (= e!2378225 (tuple2!39955 Nil!40772 (_2!23112 (v!39009 lt!1336194))))))

(declare-fun b!3847837 () Bool)

(declare-fun e!2378226 () Bool)

(declare-fun e!2378224 () Bool)

(assert (=> b!3847837 (= e!2378226 e!2378224)))

(declare-fun res!1557725 () Bool)

(declare-fun lt!1336294 () tuple2!39954)

(assert (=> b!3847837 (= res!1557725 (< (size!30668 (_2!23111 lt!1336294)) (size!30668 (_2!23112 (v!39009 lt!1336194)))))))

(assert (=> b!3847837 (=> (not res!1557725) (not e!2378224))))

(declare-fun b!3847838 () Bool)

(assert (=> b!3847838 (= e!2378224 (not (isEmpty!24124 (_1!23111 lt!1336294))))))

(declare-fun b!3847839 () Bool)

(assert (=> b!3847839 (= e!2378226 (= (_2!23111 lt!1336294) (_2!23112 (v!39009 lt!1336194))))))

(declare-fun d!1140769 () Bool)

(assert (=> d!1140769 e!2378226))

(declare-fun c!670180 () Bool)

(assert (=> d!1140769 (= c!670180 (> (size!30670 (_1!23111 lt!1336294)) 0))))

(assert (=> d!1140769 (= lt!1336294 e!2378225)))

(declare-fun c!670179 () Bool)

(assert (=> d!1140769 (= c!670179 ((_ is Some!8717) lt!1336293))))

(assert (=> d!1140769 (= lt!1336293 (maxPrefix!3193 thiss!20629 rules!2768 (_2!23112 (v!39009 lt!1336194))))))

(assert (=> d!1140769 (= (lexList!1657 thiss!20629 rules!2768 (_2!23112 (v!39009 lt!1336194))) lt!1336294)))

(assert (= (and d!1140769 c!670179) b!3847835))

(assert (= (and d!1140769 (not c!670179)) b!3847836))

(assert (= (and d!1140769 c!670180) b!3847837))

(assert (= (and d!1140769 (not c!670180)) b!3847839))

(assert (= (and b!3847837 res!1557725) b!3847838))

(declare-fun m!4402593 () Bool)

(assert (=> b!3847835 m!4402593))

(declare-fun m!4402595 () Bool)

(assert (=> b!3847837 m!4402595))

(assert (=> b!3847837 m!4402295))

(declare-fun m!4402597 () Bool)

(assert (=> b!3847838 m!4402597))

(declare-fun m!4402599 () Bool)

(assert (=> d!1140769 m!4402599))

(declare-fun m!4402601 () Bool)

(assert (=> d!1140769 m!4402601))

(assert (=> b!3847579 d!1140769))

(declare-fun d!1140771 () Bool)

(declare-fun e!2378235 () Bool)

(assert (=> d!1140771 e!2378235))

(declare-fun res!1557736 () Bool)

(assert (=> d!1140771 (=> res!1557736 e!2378235)))

(declare-fun lt!1336298 () Bool)

(assert (=> d!1140771 (= res!1557736 (not lt!1336298))))

(declare-fun e!2378233 () Bool)

(assert (=> d!1140771 (= lt!1336298 e!2378233)))

(declare-fun res!1557734 () Bool)

(assert (=> d!1140771 (=> res!1557734 e!2378233)))

(assert (=> d!1140771 (= res!1557734 ((_ is Nil!40770) lt!1336190))))

(assert (=> d!1140771 (= (isPrefix!3399 lt!1336190 lt!1336189) lt!1336298)))

(declare-fun b!3847848 () Bool)

(declare-fun e!2378234 () Bool)

(assert (=> b!3847848 (= e!2378233 e!2378234)))

(declare-fun res!1557737 () Bool)

(assert (=> b!3847848 (=> (not res!1557737) (not e!2378234))))

(assert (=> b!3847848 (= res!1557737 (not ((_ is Nil!40770) lt!1336189)))))

(declare-fun b!3847850 () Bool)

(declare-fun tail!5819 (List!40894) List!40894)

(assert (=> b!3847850 (= e!2378234 (isPrefix!3399 (tail!5819 lt!1336190) (tail!5819 lt!1336189)))))

(declare-fun b!3847851 () Bool)

(assert (=> b!3847851 (= e!2378235 (>= (size!30668 lt!1336189) (size!30668 lt!1336190)))))

(declare-fun b!3847849 () Bool)

(declare-fun res!1557735 () Bool)

(assert (=> b!3847849 (=> (not res!1557735) (not e!2378234))))

(declare-fun head!8092 (List!40894) C!22596)

(assert (=> b!3847849 (= res!1557735 (= (head!8092 lt!1336190) (head!8092 lt!1336189)))))

(assert (= (and d!1140771 (not res!1557734)) b!3847848))

(assert (= (and b!3847848 res!1557737) b!3847849))

(assert (= (and b!3847849 res!1557735) b!3847850))

(assert (= (and d!1140771 (not res!1557736)) b!3847851))

(declare-fun m!4402603 () Bool)

(assert (=> b!3847850 m!4402603))

(declare-fun m!4402605 () Bool)

(assert (=> b!3847850 m!4402605))

(assert (=> b!3847850 m!4402603))

(assert (=> b!3847850 m!4402605))

(declare-fun m!4402607 () Bool)

(assert (=> b!3847850 m!4402607))

(declare-fun m!4402609 () Bool)

(assert (=> b!3847851 m!4402609))

(assert (=> b!3847851 m!4402311))

(declare-fun m!4402611 () Bool)

(assert (=> b!3847849 m!4402611))

(declare-fun m!4402613 () Bool)

(assert (=> b!3847849 m!4402613))

(assert (=> b!3847579 d!1140771))

(declare-fun d!1140773 () Bool)

(declare-fun lt!1336301 () BalanceConc!24616)

(assert (=> d!1140773 (= (list!15174 lt!1336301) (originalCharacters!6900 (_1!23112 (v!39009 lt!1336194))))))

(declare-fun dynLambda!17593 (Int TokenValue!6530) BalanceConc!24616)

(assert (=> d!1140773 (= lt!1336301 (dynLambda!17593 (toChars!8575 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194))))) (value!200184 (_1!23112 (v!39009 lt!1336194)))))))

(assert (=> d!1140773 (= (charsOf!4128 (_1!23112 (v!39009 lt!1336194))) lt!1336301)))

(declare-fun b_lambda!112449 () Bool)

(assert (=> (not b_lambda!112449) (not d!1140773)))

(declare-fun tb!221651 () Bool)

(declare-fun t!311242 () Bool)

(assert (=> (and b!3847584 (= (toChars!8575 (transformation!6300 (h!46193 rules!2768))) (toChars!8575 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))) t!311242) tb!221651))

(declare-fun b!3847856 () Bool)

(declare-fun e!2378238 () Bool)

(declare-fun tp!1166281 () Bool)

(declare-fun inv!54917 (Conc!12511) Bool)

(assert (=> b!3847856 (= e!2378238 (and (inv!54917 (c!670131 (dynLambda!17593 (toChars!8575 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194))))) (value!200184 (_1!23112 (v!39009 lt!1336194)))))) tp!1166281))))

(declare-fun result!270116 () Bool)

(declare-fun inv!54918 (BalanceConc!24616) Bool)

(assert (=> tb!221651 (= result!270116 (and (inv!54918 (dynLambda!17593 (toChars!8575 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194))))) (value!200184 (_1!23112 (v!39009 lt!1336194))))) e!2378238))))

(assert (= tb!221651 b!3847856))

(declare-fun m!4402615 () Bool)

(assert (=> b!3847856 m!4402615))

(declare-fun m!4402617 () Bool)

(assert (=> tb!221651 m!4402617))

(assert (=> d!1140773 t!311242))

(declare-fun b_and!287121 () Bool)

(assert (= b_and!287093 (and (=> t!311242 result!270116) b_and!287121)))

(declare-fun t!311244 () Bool)

(declare-fun tb!221653 () Bool)

(assert (=> (and b!3847585 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))) (toChars!8575 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))) t!311244) tb!221653))

(declare-fun result!270120 () Bool)

(assert (= result!270120 result!270116))

(assert (=> d!1140773 t!311244))

(declare-fun b_and!287123 () Bool)

(assert (= b_and!287097 (and (=> t!311244 result!270120) b_and!287123)))

(declare-fun t!311246 () Bool)

(declare-fun tb!221655 () Bool)

(assert (=> (and b!3847580 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))) (toChars!8575 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))) t!311246) tb!221655))

(declare-fun result!270122 () Bool)

(assert (= result!270122 result!270116))

(assert (=> d!1140773 t!311246))

(declare-fun b_and!287125 () Bool)

(assert (= b_and!287101 (and (=> t!311246 result!270122) b_and!287125)))

(declare-fun m!4402619 () Bool)

(assert (=> d!1140773 m!4402619))

(declare-fun m!4402621 () Bool)

(assert (=> d!1140773 m!4402621))

(assert (=> b!3847579 d!1140773))

(declare-fun d!1140775 () Bool)

(declare-fun lt!1336304 () List!40894)

(assert (=> d!1140775 (= (++!10358 lt!1336190 lt!1336304) lt!1336193)))

(declare-fun e!2378241 () List!40894)

(assert (=> d!1140775 (= lt!1336304 e!2378241)))

(declare-fun c!670183 () Bool)

(assert (=> d!1140775 (= c!670183 ((_ is Cons!40770) lt!1336190))))

(assert (=> d!1140775 (>= (size!30668 lt!1336193) (size!30668 lt!1336190))))

(assert (=> d!1140775 (= (getSuffix!1854 lt!1336193 lt!1336190) lt!1336304)))

(declare-fun b!3847861 () Bool)

(assert (=> b!3847861 (= e!2378241 (getSuffix!1854 (tail!5819 lt!1336193) (t!311219 lt!1336190)))))

(declare-fun b!3847862 () Bool)

(assert (=> b!3847862 (= e!2378241 lt!1336193)))

(assert (= (and d!1140775 c!670183) b!3847861))

(assert (= (and d!1140775 (not c!670183)) b!3847862))

(declare-fun m!4402623 () Bool)

(assert (=> d!1140775 m!4402623))

(assert (=> d!1140775 m!4402357))

(assert (=> d!1140775 m!4402311))

(declare-fun m!4402625 () Bool)

(assert (=> b!3847861 m!4402625))

(assert (=> b!3847861 m!4402625))

(declare-fun m!4402627 () Bool)

(assert (=> b!3847861 m!4402627))

(assert (=> b!3847579 d!1140775))

(declare-fun d!1140777 () Bool)

(declare-fun dynLambda!17594 (Int BalanceConc!24616) TokenValue!6530)

(assert (=> d!1140777 (= (apply!9543 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) (seqFromList!4571 lt!1336190)) (dynLambda!17594 (toValue!8716 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194))))) (seqFromList!4571 lt!1336190)))))

(declare-fun b_lambda!112451 () Bool)

(assert (=> (not b_lambda!112451) (not d!1140777)))

(declare-fun tb!221657 () Bool)

(declare-fun t!311248 () Bool)

(assert (=> (and b!3847584 (= (toValue!8716 (transformation!6300 (h!46193 rules!2768))) (toValue!8716 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))) t!311248) tb!221657))

(declare-fun result!270124 () Bool)

(assert (=> tb!221657 (= result!270124 (inv!21 (dynLambda!17594 (toValue!8716 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194))))) (seqFromList!4571 lt!1336190))))))

(declare-fun m!4402629 () Bool)

(assert (=> tb!221657 m!4402629))

(assert (=> d!1140777 t!311248))

(declare-fun b_and!287127 () Bool)

(assert (= b_and!287091 (and (=> t!311248 result!270124) b_and!287127)))

(declare-fun t!311250 () Bool)

(declare-fun tb!221659 () Bool)

(assert (=> (and b!3847585 (= (toValue!8716 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))) (toValue!8716 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))) t!311250) tb!221659))

(declare-fun result!270128 () Bool)

(assert (= result!270128 result!270124))

(assert (=> d!1140777 t!311250))

(declare-fun b_and!287129 () Bool)

(assert (= b_and!287095 (and (=> t!311250 result!270128) b_and!287129)))

(declare-fun t!311252 () Bool)

(declare-fun tb!221661 () Bool)

(assert (=> (and b!3847580 (= (toValue!8716 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))) (toValue!8716 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))) t!311252) tb!221661))

(declare-fun result!270130 () Bool)

(assert (= result!270130 result!270124))

(assert (=> d!1140777 t!311252))

(declare-fun b_and!287131 () Bool)

(assert (= b_and!287099 (and (=> t!311252 result!270130) b_and!287131)))

(assert (=> d!1140777 m!4402303))

(declare-fun m!4402631 () Bool)

(assert (=> d!1140777 m!4402631))

(assert (=> b!3847579 d!1140777))

(declare-fun d!1140779 () Bool)

(declare-fun lt!1336305 () Int)

(assert (=> d!1140779 (>= lt!1336305 0)))

(declare-fun e!2378245 () Int)

(assert (=> d!1140779 (= lt!1336305 e!2378245)))

(declare-fun c!670184 () Bool)

(assert (=> d!1140779 (= c!670184 ((_ is Nil!40770) (originalCharacters!6900 (_1!23112 (v!39009 lt!1336194)))))))

(assert (=> d!1140779 (= (size!30668 (originalCharacters!6900 (_1!23112 (v!39009 lt!1336194)))) lt!1336305)))

(declare-fun b!3847865 () Bool)

(assert (=> b!3847865 (= e!2378245 0)))

(declare-fun b!3847866 () Bool)

(assert (=> b!3847866 (= e!2378245 (+ 1 (size!30668 (t!311219 (originalCharacters!6900 (_1!23112 (v!39009 lt!1336194)))))))))

(assert (= (and d!1140779 c!670184) b!3847865))

(assert (= (and d!1140779 (not c!670184)) b!3847866))

(declare-fun m!4402633 () Bool)

(assert (=> b!3847866 m!4402633))

(assert (=> b!3847600 d!1140779))

(declare-fun d!1140781 () Bool)

(assert (=> d!1140781 (= (isEmpty!24123 rules!2768) ((_ is Nil!40773) rules!2768))))

(assert (=> b!3847589 d!1140781))

(declare-fun d!1140783 () Bool)

(assert (=> d!1140783 (= (isEmpty!24122 prefix!426) ((_ is Nil!40770) prefix!426))))

(assert (=> b!3847575 d!1140783))

(declare-fun d!1140785 () Bool)

(declare-fun res!1557742 () Bool)

(declare-fun e!2378248 () Bool)

(assert (=> d!1140785 (=> (not res!1557742) (not e!2378248))))

(assert (=> d!1140785 (= res!1557742 (not (isEmpty!24122 (originalCharacters!6900 (h!46192 suffixTokens!72)))))))

(assert (=> d!1140785 (= (inv!54914 (h!46192 suffixTokens!72)) e!2378248)))

(declare-fun b!3847871 () Bool)

(declare-fun res!1557743 () Bool)

(assert (=> b!3847871 (=> (not res!1557743) (not e!2378248))))

(assert (=> b!3847871 (= res!1557743 (= (originalCharacters!6900 (h!46192 suffixTokens!72)) (list!15174 (dynLambda!17593 (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))) (value!200184 (h!46192 suffixTokens!72))))))))

(declare-fun b!3847872 () Bool)

(assert (=> b!3847872 (= e!2378248 (= (size!30667 (h!46192 suffixTokens!72)) (size!30668 (originalCharacters!6900 (h!46192 suffixTokens!72)))))))

(assert (= (and d!1140785 res!1557742) b!3847871))

(assert (= (and b!3847871 res!1557743) b!3847872))

(declare-fun b_lambda!112453 () Bool)

(assert (=> (not b_lambda!112453) (not b!3847871)))

(declare-fun tb!221663 () Bool)

(declare-fun t!311254 () Bool)

(assert (=> (and b!3847584 (= (toChars!8575 (transformation!6300 (h!46193 rules!2768))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72))))) t!311254) tb!221663))

(declare-fun b!3847873 () Bool)

(declare-fun e!2378249 () Bool)

(declare-fun tp!1166282 () Bool)

(assert (=> b!3847873 (= e!2378249 (and (inv!54917 (c!670131 (dynLambda!17593 (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))) (value!200184 (h!46192 suffixTokens!72))))) tp!1166282))))

(declare-fun result!270132 () Bool)

(assert (=> tb!221663 (= result!270132 (and (inv!54918 (dynLambda!17593 (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))) (value!200184 (h!46192 suffixTokens!72)))) e!2378249))))

(assert (= tb!221663 b!3847873))

(declare-fun m!4402635 () Bool)

(assert (=> b!3847873 m!4402635))

(declare-fun m!4402637 () Bool)

(assert (=> tb!221663 m!4402637))

(assert (=> b!3847871 t!311254))

(declare-fun b_and!287133 () Bool)

(assert (= b_and!287121 (and (=> t!311254 result!270132) b_and!287133)))

(declare-fun t!311256 () Bool)

(declare-fun tb!221665 () Bool)

(assert (=> (and b!3847585 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72))))) t!311256) tb!221665))

(declare-fun result!270134 () Bool)

(assert (= result!270134 result!270132))

(assert (=> b!3847871 t!311256))

(declare-fun b_and!287135 () Bool)

(assert (= b_and!287123 (and (=> t!311256 result!270134) b_and!287135)))

(declare-fun tb!221667 () Bool)

(declare-fun t!311258 () Bool)

(assert (=> (and b!3847580 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72))))) t!311258) tb!221667))

(declare-fun result!270136 () Bool)

(assert (= result!270136 result!270132))

(assert (=> b!3847871 t!311258))

(declare-fun b_and!287137 () Bool)

(assert (= b_and!287125 (and (=> t!311258 result!270136) b_and!287137)))

(declare-fun m!4402639 () Bool)

(assert (=> d!1140785 m!4402639))

(declare-fun m!4402641 () Bool)

(assert (=> b!3847871 m!4402641))

(assert (=> b!3847871 m!4402641))

(declare-fun m!4402643 () Bool)

(assert (=> b!3847871 m!4402643))

(declare-fun m!4402645 () Bool)

(assert (=> b!3847872 m!4402645))

(assert (=> b!3847596 d!1140785))

(declare-fun d!1140787 () Bool)

(assert (=> d!1140787 (= (isEmpty!24124 prefixTokens!80) ((_ is Nil!40772) prefixTokens!80))))

(assert (=> b!3847598 d!1140787))

(declare-fun b!3847890 () Bool)

(declare-fun res!1557751 () Bool)

(declare-fun e!2378259 () Bool)

(assert (=> b!3847890 (=> (not res!1557751) (not e!2378259))))

(declare-fun lt!1336318 () List!40896)

(assert (=> b!3847890 (= res!1557751 (= (size!30670 lt!1336318) (+ (size!30670 (Cons!40772 (_1!23112 (v!39009 lt!1336194)) Nil!40772)) (size!30670 (_1!23111 lt!1336180)))))))

(declare-fun d!1140789 () Bool)

(assert (=> d!1140789 e!2378259))

(declare-fun res!1557750 () Bool)

(assert (=> d!1140789 (=> (not res!1557750) (not e!2378259))))

(declare-fun content!6060 (List!40896) (InoxSet Token!11738))

(assert (=> d!1140789 (= res!1557750 (= (content!6060 lt!1336318) ((_ map or) (content!6060 (Cons!40772 (_1!23112 (v!39009 lt!1336194)) Nil!40772)) (content!6060 (_1!23111 lt!1336180)))))))

(declare-fun e!2378258 () List!40896)

(assert (=> d!1140789 (= lt!1336318 e!2378258)))

(declare-fun c!670189 () Bool)

(assert (=> d!1140789 (= c!670189 ((_ is Nil!40772) (Cons!40772 (_1!23112 (v!39009 lt!1336194)) Nil!40772)))))

(assert (=> d!1140789 (= (++!10357 (Cons!40772 (_1!23112 (v!39009 lt!1336194)) Nil!40772) (_1!23111 lt!1336180)) lt!1336318)))

(declare-fun b!3847891 () Bool)

(assert (=> b!3847891 (= e!2378259 (or (not (= (_1!23111 lt!1336180) Nil!40772)) (= lt!1336318 (Cons!40772 (_1!23112 (v!39009 lt!1336194)) Nil!40772))))))

(declare-fun b!3847888 () Bool)

(assert (=> b!3847888 (= e!2378258 (_1!23111 lt!1336180))))

(declare-fun b!3847889 () Bool)

(assert (=> b!3847889 (= e!2378258 (Cons!40772 (h!46192 (Cons!40772 (_1!23112 (v!39009 lt!1336194)) Nil!40772)) (++!10357 (t!311221 (Cons!40772 (_1!23112 (v!39009 lt!1336194)) Nil!40772)) (_1!23111 lt!1336180))))))

(assert (= (and d!1140789 c!670189) b!3847888))

(assert (= (and d!1140789 (not c!670189)) b!3847889))

(assert (= (and d!1140789 res!1557750) b!3847890))

(assert (= (and b!3847890 res!1557751) b!3847891))

(declare-fun m!4402647 () Bool)

(assert (=> b!3847890 m!4402647))

(declare-fun m!4402649 () Bool)

(assert (=> b!3847890 m!4402649))

(declare-fun m!4402651 () Bool)

(assert (=> b!3847890 m!4402651))

(declare-fun m!4402653 () Bool)

(assert (=> d!1140789 m!4402653))

(declare-fun m!4402655 () Bool)

(assert (=> d!1140789 m!4402655))

(declare-fun m!4402657 () Bool)

(assert (=> d!1140789 m!4402657))

(declare-fun m!4402659 () Bool)

(assert (=> b!3847889 m!4402659))

(assert (=> b!3847576 d!1140789))

(declare-fun d!1140791 () Bool)

(assert (=> d!1140791 true))

(declare-fun lt!1336331 () Bool)

(declare-fun lambda!126110 () Int)

(declare-fun forall!8285 (List!40897 Int) Bool)

(assert (=> d!1140791 (= lt!1336331 (forall!8285 rules!2768 lambda!126110))))

(declare-fun e!2378286 () Bool)

(assert (=> d!1140791 (= lt!1336331 e!2378286)))

(declare-fun res!1557783 () Bool)

(assert (=> d!1140791 (=> res!1557783 e!2378286)))

(assert (=> d!1140791 (= res!1557783 (not ((_ is Cons!40773) rules!2768)))))

(assert (=> d!1140791 (= (rulesValidInductive!2234 thiss!20629 rules!2768) lt!1336331)))

(declare-fun b!3847936 () Bool)

(declare-fun e!2378285 () Bool)

(assert (=> b!3847936 (= e!2378286 e!2378285)))

(declare-fun res!1557782 () Bool)

(assert (=> b!3847936 (=> (not res!1557782) (not e!2378285))))

(assert (=> b!3847936 (= res!1557782 (ruleValid!2252 thiss!20629 (h!46193 rules!2768)))))

(declare-fun b!3847937 () Bool)

(assert (=> b!3847937 (= e!2378285 (rulesValidInductive!2234 thiss!20629 (t!311222 rules!2768)))))

(assert (= (and d!1140791 (not res!1557783)) b!3847936))

(assert (= (and b!3847936 res!1557782) b!3847937))

(declare-fun m!4402711 () Bool)

(assert (=> d!1140791 m!4402711))

(declare-fun m!4402713 () Bool)

(assert (=> b!3847936 m!4402713))

(declare-fun m!4402715 () Bool)

(assert (=> b!3847937 m!4402715))

(assert (=> b!3847594 d!1140791))

(declare-fun d!1140799 () Bool)

(assert (=> d!1140799 (= (inv!54910 (tag!7160 (rule!9148 (h!46192 suffixTokens!72)))) (= (mod (str.len (value!200183 (tag!7160 (rule!9148 (h!46192 suffixTokens!72))))) 2) 0))))

(assert (=> b!3847583 d!1140799))

(declare-fun d!1140801 () Bool)

(declare-fun res!1557784 () Bool)

(declare-fun e!2378287 () Bool)

(assert (=> d!1140801 (=> (not res!1557784) (not e!2378287))))

(assert (=> d!1140801 (= res!1557784 (semiInverseModEq!2697 (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))) (toValue!8716 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72))))))))

(assert (=> d!1140801 (= (inv!54913 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))) e!2378287)))

(declare-fun b!3847940 () Bool)

(assert (=> b!3847940 (= e!2378287 (equivClasses!2596 (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))) (toValue!8716 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72))))))))

(assert (= (and d!1140801 res!1557784) b!3847940))

(declare-fun m!4402717 () Bool)

(assert (=> d!1140801 m!4402717))

(declare-fun m!4402719 () Bool)

(assert (=> b!3847940 m!4402719))

(assert (=> b!3847583 d!1140801))

(declare-fun d!1140803 () Bool)

(declare-fun lt!1336332 () Int)

(assert (=> d!1140803 (>= lt!1336332 0)))

(declare-fun e!2378288 () Int)

(assert (=> d!1140803 (= lt!1336332 e!2378288)))

(declare-fun c!670197 () Bool)

(assert (=> d!1140803 (= c!670197 ((_ is Nil!40770) suffix!1176))))

(assert (=> d!1140803 (= (size!30668 suffix!1176) lt!1336332)))

(declare-fun b!3847941 () Bool)

(assert (=> b!3847941 (= e!2378288 0)))

(declare-fun b!3847942 () Bool)

(assert (=> b!3847942 (= e!2378288 (+ 1 (size!30668 (t!311219 suffix!1176))))))

(assert (= (and d!1140803 c!670197) b!3847941))

(assert (= (and d!1140803 (not c!670197)) b!3847942))

(declare-fun m!4402721 () Bool)

(assert (=> b!3847942 m!4402721))

(assert (=> b!3847593 d!1140803))

(declare-fun d!1140805 () Bool)

(declare-fun lt!1336333 () Int)

(assert (=> d!1140805 (>= lt!1336333 0)))

(declare-fun e!2378289 () Int)

(assert (=> d!1140805 (= lt!1336333 e!2378289)))

(declare-fun c!670198 () Bool)

(assert (=> d!1140805 (= c!670198 ((_ is Nil!40770) (_2!23112 (v!39009 lt!1336194))))))

(assert (=> d!1140805 (= (size!30668 (_2!23112 (v!39009 lt!1336194))) lt!1336333)))

(declare-fun b!3847943 () Bool)

(assert (=> b!3847943 (= e!2378289 0)))

(declare-fun b!3847944 () Bool)

(assert (=> b!3847944 (= e!2378289 (+ 1 (size!30668 (t!311219 (_2!23112 (v!39009 lt!1336194))))))))

(assert (= (and d!1140805 c!670198) b!3847943))

(assert (= (and d!1140805 (not c!670198)) b!3847944))

(declare-fun m!4402723 () Bool)

(assert (=> b!3847944 m!4402723))

(assert (=> b!3847593 d!1140805))

(declare-fun b!3847945 () Bool)

(declare-fun e!2378291 () tuple2!39954)

(declare-fun lt!1336334 () Option!8718)

(declare-fun lt!1336336 () tuple2!39954)

(assert (=> b!3847945 (= e!2378291 (tuple2!39955 (Cons!40772 (_1!23112 (v!39009 lt!1336334)) (_1!23111 lt!1336336)) (_2!23111 lt!1336336)))))

(assert (=> b!3847945 (= lt!1336336 (lexList!1657 thiss!20629 rules!2768 (_2!23112 (v!39009 lt!1336334))))))

(declare-fun b!3847946 () Bool)

(assert (=> b!3847946 (= e!2378291 (tuple2!39955 Nil!40772 lt!1336193))))

(declare-fun b!3847947 () Bool)

(declare-fun e!2378292 () Bool)

(declare-fun e!2378290 () Bool)

(assert (=> b!3847947 (= e!2378292 e!2378290)))

(declare-fun res!1557785 () Bool)

(declare-fun lt!1336335 () tuple2!39954)

(assert (=> b!3847947 (= res!1557785 (< (size!30668 (_2!23111 lt!1336335)) (size!30668 lt!1336193)))))

(assert (=> b!3847947 (=> (not res!1557785) (not e!2378290))))

(declare-fun b!3847948 () Bool)

(assert (=> b!3847948 (= e!2378290 (not (isEmpty!24124 (_1!23111 lt!1336335))))))

(declare-fun b!3847949 () Bool)

(assert (=> b!3847949 (= e!2378292 (= (_2!23111 lt!1336335) lt!1336193))))

(declare-fun d!1140807 () Bool)

(assert (=> d!1140807 e!2378292))

(declare-fun c!670200 () Bool)

(assert (=> d!1140807 (= c!670200 (> (size!30670 (_1!23111 lt!1336335)) 0))))

(assert (=> d!1140807 (= lt!1336335 e!2378291)))

(declare-fun c!670199 () Bool)

(assert (=> d!1140807 (= c!670199 ((_ is Some!8717) lt!1336334))))

(assert (=> d!1140807 (= lt!1336334 (maxPrefix!3193 thiss!20629 rules!2768 lt!1336193))))

(assert (=> d!1140807 (= (lexList!1657 thiss!20629 rules!2768 lt!1336193) lt!1336335)))

(assert (= (and d!1140807 c!670199) b!3847945))

(assert (= (and d!1140807 (not c!670199)) b!3847946))

(assert (= (and d!1140807 c!670200) b!3847947))

(assert (= (and d!1140807 (not c!670200)) b!3847949))

(assert (= (and b!3847947 res!1557785) b!3847948))

(declare-fun m!4402725 () Bool)

(assert (=> b!3847945 m!4402725))

(declare-fun m!4402727 () Bool)

(assert (=> b!3847947 m!4402727))

(assert (=> b!3847947 m!4402357))

(declare-fun m!4402729 () Bool)

(assert (=> b!3847948 m!4402729))

(declare-fun m!4402731 () Bool)

(assert (=> d!1140807 m!4402731))

(assert (=> d!1140807 m!4402329))

(assert (=> b!3847574 d!1140807))

(declare-fun b!3847952 () Bool)

(declare-fun res!1557787 () Bool)

(declare-fun e!2378294 () Bool)

(assert (=> b!3847952 (=> (not res!1557787) (not e!2378294))))

(declare-fun lt!1336337 () List!40896)

(assert (=> b!3847952 (= res!1557787 (= (size!30670 lt!1336337) (+ (size!30670 prefixTokens!80) (size!30670 suffixTokens!72))))))

(declare-fun d!1140809 () Bool)

(assert (=> d!1140809 e!2378294))

(declare-fun res!1557786 () Bool)

(assert (=> d!1140809 (=> (not res!1557786) (not e!2378294))))

(assert (=> d!1140809 (= res!1557786 (= (content!6060 lt!1336337) ((_ map or) (content!6060 prefixTokens!80) (content!6060 suffixTokens!72))))))

(declare-fun e!2378293 () List!40896)

(assert (=> d!1140809 (= lt!1336337 e!2378293)))

(declare-fun c!670201 () Bool)

(assert (=> d!1140809 (= c!670201 ((_ is Nil!40772) prefixTokens!80))))

(assert (=> d!1140809 (= (++!10357 prefixTokens!80 suffixTokens!72) lt!1336337)))

(declare-fun b!3847953 () Bool)

(assert (=> b!3847953 (= e!2378294 (or (not (= suffixTokens!72 Nil!40772)) (= lt!1336337 prefixTokens!80)))))

(declare-fun b!3847950 () Bool)

(assert (=> b!3847950 (= e!2378293 suffixTokens!72)))

(declare-fun b!3847951 () Bool)

(assert (=> b!3847951 (= e!2378293 (Cons!40772 (h!46192 prefixTokens!80) (++!10357 (t!311221 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1140809 c!670201) b!3847950))

(assert (= (and d!1140809 (not c!670201)) b!3847951))

(assert (= (and d!1140809 res!1557786) b!3847952))

(assert (= (and b!3847952 res!1557787) b!3847953))

(declare-fun m!4402733 () Bool)

(assert (=> b!3847952 m!4402733))

(declare-fun m!4402735 () Bool)

(assert (=> b!3847952 m!4402735))

(declare-fun m!4402737 () Bool)

(assert (=> b!3847952 m!4402737))

(declare-fun m!4402739 () Bool)

(assert (=> d!1140809 m!4402739))

(declare-fun m!4402741 () Bool)

(assert (=> d!1140809 m!4402741))

(declare-fun m!4402743 () Bool)

(assert (=> d!1140809 m!4402743))

(declare-fun m!4402745 () Bool)

(assert (=> b!3847951 m!4402745))

(assert (=> b!3847574 d!1140809))

(declare-fun b!3847955 () Bool)

(declare-fun e!2378296 () List!40894)

(assert (=> b!3847955 (= e!2378296 (Cons!40770 (h!46190 prefix!426) (++!10358 (t!311219 prefix!426) suffix!1176)))))

(declare-fun b!3847954 () Bool)

(assert (=> b!3847954 (= e!2378296 suffix!1176)))

(declare-fun lt!1336338 () List!40894)

(declare-fun b!3847957 () Bool)

(declare-fun e!2378295 () Bool)

(assert (=> b!3847957 (= e!2378295 (or (not (= suffix!1176 Nil!40770)) (= lt!1336338 prefix!426)))))

(declare-fun b!3847956 () Bool)

(declare-fun res!1557788 () Bool)

(assert (=> b!3847956 (=> (not res!1557788) (not e!2378295))))

(assert (=> b!3847956 (= res!1557788 (= (size!30668 lt!1336338) (+ (size!30668 prefix!426) (size!30668 suffix!1176))))))

(declare-fun d!1140811 () Bool)

(assert (=> d!1140811 e!2378295))

(declare-fun res!1557789 () Bool)

(assert (=> d!1140811 (=> (not res!1557789) (not e!2378295))))

(assert (=> d!1140811 (= res!1557789 (= (content!6059 lt!1336338) ((_ map or) (content!6059 prefix!426) (content!6059 suffix!1176))))))

(assert (=> d!1140811 (= lt!1336338 e!2378296)))

(declare-fun c!670202 () Bool)

(assert (=> d!1140811 (= c!670202 ((_ is Nil!40770) prefix!426))))

(assert (=> d!1140811 (= (++!10358 prefix!426 suffix!1176) lt!1336338)))

(assert (= (and d!1140811 c!670202) b!3847954))

(assert (= (and d!1140811 (not c!670202)) b!3847955))

(assert (= (and d!1140811 res!1557789) b!3847956))

(assert (= (and b!3847956 res!1557788) b!3847957))

(declare-fun m!4402747 () Bool)

(assert (=> b!3847955 m!4402747))

(declare-fun m!4402749 () Bool)

(assert (=> b!3847956 m!4402749))

(assert (=> b!3847956 m!4402281))

(assert (=> b!3847956 m!4402293))

(declare-fun m!4402751 () Bool)

(assert (=> d!1140811 m!4402751))

(declare-fun m!4402753 () Bool)

(assert (=> d!1140811 m!4402753))

(declare-fun m!4402755 () Bool)

(assert (=> d!1140811 m!4402755))

(assert (=> b!3847574 d!1140811))

(declare-fun b!3847968 () Bool)

(declare-fun e!2378303 () Bool)

(declare-fun inv!17 (TokenValue!6530) Bool)

(assert (=> b!3847968 (= e!2378303 (inv!17 (value!200184 (h!46192 prefixTokens!80))))))

(declare-fun b!3847969 () Bool)

(declare-fun e!2378305 () Bool)

(declare-fun inv!15 (TokenValue!6530) Bool)

(assert (=> b!3847969 (= e!2378305 (inv!15 (value!200184 (h!46192 prefixTokens!80))))))

(declare-fun d!1140813 () Bool)

(declare-fun c!670208 () Bool)

(assert (=> d!1140813 (= c!670208 ((_ is IntegerValue!19590) (value!200184 (h!46192 prefixTokens!80))))))

(declare-fun e!2378304 () Bool)

(assert (=> d!1140813 (= (inv!21 (value!200184 (h!46192 prefixTokens!80))) e!2378304)))

(declare-fun b!3847970 () Bool)

(declare-fun res!1557792 () Bool)

(assert (=> b!3847970 (=> res!1557792 e!2378305)))

(assert (=> b!3847970 (= res!1557792 (not ((_ is IntegerValue!19592) (value!200184 (h!46192 prefixTokens!80)))))))

(assert (=> b!3847970 (= e!2378303 e!2378305)))

(declare-fun b!3847971 () Bool)

(assert (=> b!3847971 (= e!2378304 e!2378303)))

(declare-fun c!670207 () Bool)

(assert (=> b!3847971 (= c!670207 ((_ is IntegerValue!19591) (value!200184 (h!46192 prefixTokens!80))))))

(declare-fun b!3847972 () Bool)

(declare-fun inv!16 (TokenValue!6530) Bool)

(assert (=> b!3847972 (= e!2378304 (inv!16 (value!200184 (h!46192 prefixTokens!80))))))

(assert (= (and d!1140813 c!670208) b!3847972))

(assert (= (and d!1140813 (not c!670208)) b!3847971))

(assert (= (and b!3847971 c!670207) b!3847968))

(assert (= (and b!3847971 (not c!670207)) b!3847970))

(assert (= (and b!3847970 (not res!1557792)) b!3847969))

(declare-fun m!4402757 () Bool)

(assert (=> b!3847968 m!4402757))

(declare-fun m!4402759 () Bool)

(assert (=> b!3847969 m!4402759))

(declare-fun m!4402761 () Bool)

(assert (=> b!3847972 m!4402761))

(assert (=> b!3847595 d!1140813))

(declare-fun d!1140815 () Bool)

(declare-fun res!1557793 () Bool)

(declare-fun e!2378306 () Bool)

(assert (=> d!1140815 (=> (not res!1557793) (not e!2378306))))

(assert (=> d!1140815 (= res!1557793 (not (isEmpty!24122 (originalCharacters!6900 (h!46192 prefixTokens!80)))))))

(assert (=> d!1140815 (= (inv!54914 (h!46192 prefixTokens!80)) e!2378306)))

(declare-fun b!3847973 () Bool)

(declare-fun res!1557794 () Bool)

(assert (=> b!3847973 (=> (not res!1557794) (not e!2378306))))

(assert (=> b!3847973 (= res!1557794 (= (originalCharacters!6900 (h!46192 prefixTokens!80)) (list!15174 (dynLambda!17593 (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))) (value!200184 (h!46192 prefixTokens!80))))))))

(declare-fun b!3847974 () Bool)

(assert (=> b!3847974 (= e!2378306 (= (size!30667 (h!46192 prefixTokens!80)) (size!30668 (originalCharacters!6900 (h!46192 prefixTokens!80)))))))

(assert (= (and d!1140815 res!1557793) b!3847973))

(assert (= (and b!3847973 res!1557794) b!3847974))

(declare-fun b_lambda!112455 () Bool)

(assert (=> (not b_lambda!112455) (not b!3847973)))

(declare-fun tb!221669 () Bool)

(declare-fun t!311260 () Bool)

(assert (=> (and b!3847584 (= (toChars!8575 (transformation!6300 (h!46193 rules!2768))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80))))) t!311260) tb!221669))

(declare-fun b!3847975 () Bool)

(declare-fun e!2378307 () Bool)

(declare-fun tp!1166283 () Bool)

(assert (=> b!3847975 (= e!2378307 (and (inv!54917 (c!670131 (dynLambda!17593 (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))) (value!200184 (h!46192 prefixTokens!80))))) tp!1166283))))

(declare-fun result!270138 () Bool)

(assert (=> tb!221669 (= result!270138 (and (inv!54918 (dynLambda!17593 (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))) (value!200184 (h!46192 prefixTokens!80)))) e!2378307))))

(assert (= tb!221669 b!3847975))

(declare-fun m!4402763 () Bool)

(assert (=> b!3847975 m!4402763))

(declare-fun m!4402765 () Bool)

(assert (=> tb!221669 m!4402765))

(assert (=> b!3847973 t!311260))

(declare-fun b_and!287139 () Bool)

(assert (= b_and!287133 (and (=> t!311260 result!270138) b_and!287139)))

(declare-fun tb!221671 () Bool)

(declare-fun t!311262 () Bool)

(assert (=> (and b!3847585 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80))))) t!311262) tb!221671))

(declare-fun result!270140 () Bool)

(assert (= result!270140 result!270138))

(assert (=> b!3847973 t!311262))

(declare-fun b_and!287141 () Bool)

(assert (= b_and!287135 (and (=> t!311262 result!270140) b_and!287141)))

(declare-fun t!311264 () Bool)

(declare-fun tb!221673 () Bool)

(assert (=> (and b!3847580 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80))))) t!311264) tb!221673))

(declare-fun result!270142 () Bool)

(assert (= result!270142 result!270138))

(assert (=> b!3847973 t!311264))

(declare-fun b_and!287143 () Bool)

(assert (= b_and!287137 (and (=> t!311264 result!270142) b_and!287143)))

(declare-fun m!4402767 () Bool)

(assert (=> d!1140815 m!4402767))

(declare-fun m!4402769 () Bool)

(assert (=> b!3847973 m!4402769))

(assert (=> b!3847973 m!4402769))

(declare-fun m!4402771 () Bool)

(assert (=> b!3847973 m!4402771))

(declare-fun m!4402773 () Bool)

(assert (=> b!3847974 m!4402773))

(assert (=> b!3847602 d!1140815))

(declare-fun d!1140817 () Bool)

(declare-fun lt!1336339 () Int)

(assert (=> d!1140817 (>= lt!1336339 0)))

(declare-fun e!2378308 () Int)

(assert (=> d!1140817 (= lt!1336339 e!2378308)))

(declare-fun c!670209 () Bool)

(assert (=> d!1140817 (= c!670209 ((_ is Nil!40770) prefix!426))))

(assert (=> d!1140817 (= (size!30668 prefix!426) lt!1336339)))

(declare-fun b!3847976 () Bool)

(assert (=> b!3847976 (= e!2378308 0)))

(declare-fun b!3847977 () Bool)

(assert (=> b!3847977 (= e!2378308 (+ 1 (size!30668 (t!311219 prefix!426))))))

(assert (= (and d!1140817 c!670209) b!3847976))

(assert (= (and d!1140817 (not c!670209)) b!3847977))

(declare-fun m!4402775 () Bool)

(assert (=> b!3847977 m!4402775))

(assert (=> b!3847591 d!1140817))

(declare-fun b!3847978 () Bool)

(declare-fun e!2378309 () Bool)

(assert (=> b!3847978 (= e!2378309 (inv!17 (value!200184 (h!46192 suffixTokens!72))))))

(declare-fun b!3847979 () Bool)

(declare-fun e!2378311 () Bool)

(assert (=> b!3847979 (= e!2378311 (inv!15 (value!200184 (h!46192 suffixTokens!72))))))

(declare-fun d!1140819 () Bool)

(declare-fun c!670211 () Bool)

(assert (=> d!1140819 (= c!670211 ((_ is IntegerValue!19590) (value!200184 (h!46192 suffixTokens!72))))))

(declare-fun e!2378310 () Bool)

(assert (=> d!1140819 (= (inv!21 (value!200184 (h!46192 suffixTokens!72))) e!2378310)))

(declare-fun b!3847980 () Bool)

(declare-fun res!1557795 () Bool)

(assert (=> b!3847980 (=> res!1557795 e!2378311)))

(assert (=> b!3847980 (= res!1557795 (not ((_ is IntegerValue!19592) (value!200184 (h!46192 suffixTokens!72)))))))

(assert (=> b!3847980 (= e!2378309 e!2378311)))

(declare-fun b!3847981 () Bool)

(assert (=> b!3847981 (= e!2378310 e!2378309)))

(declare-fun c!670210 () Bool)

(assert (=> b!3847981 (= c!670210 ((_ is IntegerValue!19591) (value!200184 (h!46192 suffixTokens!72))))))

(declare-fun b!3847982 () Bool)

(assert (=> b!3847982 (= e!2378310 (inv!16 (value!200184 (h!46192 suffixTokens!72))))))

(assert (= (and d!1140819 c!670211) b!3847982))

(assert (= (and d!1140819 (not c!670211)) b!3847981))

(assert (= (and b!3847981 c!670210) b!3847978))

(assert (= (and b!3847981 (not c!670210)) b!3847980))

(assert (= (and b!3847980 (not res!1557795)) b!3847979))

(declare-fun m!4402777 () Bool)

(assert (=> b!3847978 m!4402777))

(declare-fun m!4402779 () Bool)

(assert (=> b!3847979 m!4402779))

(declare-fun m!4402781 () Bool)

(assert (=> b!3847982 m!4402781))

(assert (=> b!3847601 d!1140819))

(declare-fun d!1140821 () Bool)

(assert (=> d!1140821 (= (inv!54910 (tag!7160 (h!46193 rules!2768))) (= (mod (str.len (value!200183 (tag!7160 (h!46193 rules!2768)))) 2) 0))))

(assert (=> b!3847592 d!1140821))

(declare-fun d!1140823 () Bool)

(declare-fun res!1557796 () Bool)

(declare-fun e!2378312 () Bool)

(assert (=> d!1140823 (=> (not res!1557796) (not e!2378312))))

(assert (=> d!1140823 (= res!1557796 (semiInverseModEq!2697 (toChars!8575 (transformation!6300 (h!46193 rules!2768))) (toValue!8716 (transformation!6300 (h!46193 rules!2768)))))))

(assert (=> d!1140823 (= (inv!54913 (transformation!6300 (h!46193 rules!2768))) e!2378312)))

(declare-fun b!3847983 () Bool)

(assert (=> b!3847983 (= e!2378312 (equivClasses!2596 (toChars!8575 (transformation!6300 (h!46193 rules!2768))) (toValue!8716 (transformation!6300 (h!46193 rules!2768)))))))

(assert (= (and d!1140823 res!1557796) b!3847983))

(declare-fun m!4402783 () Bool)

(assert (=> d!1140823 m!4402783))

(declare-fun m!4402785 () Bool)

(assert (=> b!3847983 m!4402785))

(assert (=> b!3847592 d!1140823))

(declare-fun b!3848012 () Bool)

(declare-fun res!1557816 () Bool)

(declare-fun e!2378329 () Bool)

(assert (=> b!3848012 (=> res!1557816 e!2378329)))

(declare-fun e!2378327 () Bool)

(assert (=> b!3848012 (= res!1557816 e!2378327)))

(declare-fun res!1557817 () Bool)

(assert (=> b!3848012 (=> (not res!1557817) (not e!2378327))))

(declare-fun lt!1336342 () Bool)

(assert (=> b!3848012 (= res!1557817 lt!1336342)))

(declare-fun b!3848013 () Bool)

(declare-fun e!2378331 () Bool)

(declare-fun derivativeStep!3396 (Regex!11205 C!22596) Regex!11205)

(assert (=> b!3848013 (= e!2378331 (matchR!5352 (derivativeStep!3396 (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) (head!8092 lt!1336190)) (tail!5819 lt!1336190)))))

(declare-fun d!1140825 () Bool)

(declare-fun e!2378328 () Bool)

(assert (=> d!1140825 e!2378328))

(declare-fun c!670219 () Bool)

(assert (=> d!1140825 (= c!670219 ((_ is EmptyExpr!11205) (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194))))))))

(assert (=> d!1140825 (= lt!1336342 e!2378331)))

(declare-fun c!670218 () Bool)

(assert (=> d!1140825 (= c!670218 (isEmpty!24122 lt!1336190))))

(assert (=> d!1140825 (validRegex!5096 (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))))

(assert (=> d!1140825 (= (matchR!5352 (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) lt!1336190) lt!1336342)))

(declare-fun b!3848014 () Bool)

(declare-fun e!2378330 () Bool)

(assert (=> b!3848014 (= e!2378330 (not (= (head!8092 lt!1336190) (c!670130 (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194))))))))))

(declare-fun b!3848015 () Bool)

(declare-fun res!1557820 () Bool)

(assert (=> b!3848015 (=> res!1557820 e!2378330)))

(assert (=> b!3848015 (= res!1557820 (not (isEmpty!24122 (tail!5819 lt!1336190))))))

(declare-fun b!3848016 () Bool)

(declare-fun res!1557818 () Bool)

(assert (=> b!3848016 (=> res!1557818 e!2378329)))

(assert (=> b!3848016 (= res!1557818 (not ((_ is ElementMatch!11205) (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))))))

(declare-fun e!2378333 () Bool)

(assert (=> b!3848016 (= e!2378333 e!2378329)))

(declare-fun b!3848017 () Bool)

(declare-fun res!1557813 () Bool)

(assert (=> b!3848017 (=> (not res!1557813) (not e!2378327))))

(declare-fun call!282108 () Bool)

(assert (=> b!3848017 (= res!1557813 (not call!282108))))

(declare-fun b!3848018 () Bool)

(assert (=> b!3848018 (= e!2378328 (= lt!1336342 call!282108))))

(declare-fun b!3848019 () Bool)

(assert (=> b!3848019 (= e!2378328 e!2378333)))

(declare-fun c!670220 () Bool)

(assert (=> b!3848019 (= c!670220 ((_ is EmptyLang!11205) (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194))))))))

(declare-fun b!3848020 () Bool)

(assert (=> b!3848020 (= e!2378333 (not lt!1336342))))

(declare-fun b!3848021 () Bool)

(declare-fun e!2378332 () Bool)

(assert (=> b!3848021 (= e!2378332 e!2378330)))

(declare-fun res!1557815 () Bool)

(assert (=> b!3848021 (=> res!1557815 e!2378330)))

(assert (=> b!3848021 (= res!1557815 call!282108)))

(declare-fun b!3848022 () Bool)

(assert (=> b!3848022 (= e!2378329 e!2378332)))

(declare-fun res!1557819 () Bool)

(assert (=> b!3848022 (=> (not res!1557819) (not e!2378332))))

(assert (=> b!3848022 (= res!1557819 (not lt!1336342))))

(declare-fun bm!282103 () Bool)

(assert (=> bm!282103 (= call!282108 (isEmpty!24122 lt!1336190))))

(declare-fun b!3848023 () Bool)

(declare-fun res!1557814 () Bool)

(assert (=> b!3848023 (=> (not res!1557814) (not e!2378327))))

(assert (=> b!3848023 (= res!1557814 (isEmpty!24122 (tail!5819 lt!1336190)))))

(declare-fun b!3848024 () Bool)

(assert (=> b!3848024 (= e!2378327 (= (head!8092 lt!1336190) (c!670130 (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))))))

(declare-fun b!3848025 () Bool)

(assert (=> b!3848025 (= e!2378331 (nullable!3897 (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194))))))))

(assert (= (and d!1140825 c!670218) b!3848025))

(assert (= (and d!1140825 (not c!670218)) b!3848013))

(assert (= (and d!1140825 c!670219) b!3848018))

(assert (= (and d!1140825 (not c!670219)) b!3848019))

(assert (= (and b!3848019 c!670220) b!3848020))

(assert (= (and b!3848019 (not c!670220)) b!3848016))

(assert (= (and b!3848016 (not res!1557818)) b!3848012))

(assert (= (and b!3848012 res!1557817) b!3848017))

(assert (= (and b!3848017 res!1557813) b!3848023))

(assert (= (and b!3848023 res!1557814) b!3848024))

(assert (= (and b!3848012 (not res!1557816)) b!3848022))

(assert (= (and b!3848022 res!1557819) b!3848021))

(assert (= (and b!3848021 (not res!1557815)) b!3848015))

(assert (= (and b!3848015 (not res!1557820)) b!3848014))

(assert (= (or b!3848018 b!3848017 b!3848021) bm!282103))

(assert (=> b!3848014 m!4402611))

(assert (=> b!3848013 m!4402611))

(assert (=> b!3848013 m!4402611))

(declare-fun m!4402787 () Bool)

(assert (=> b!3848013 m!4402787))

(assert (=> b!3848013 m!4402603))

(assert (=> b!3848013 m!4402787))

(assert (=> b!3848013 m!4402603))

(declare-fun m!4402789 () Bool)

(assert (=> b!3848013 m!4402789))

(declare-fun m!4402791 () Bool)

(assert (=> d!1140825 m!4402791))

(assert (=> d!1140825 m!4402577))

(assert (=> b!3848024 m!4402611))

(assert (=> b!3848015 m!4402603))

(assert (=> b!3848015 m!4402603))

(declare-fun m!4402793 () Bool)

(assert (=> b!3848015 m!4402793))

(assert (=> bm!282103 m!4402791))

(assert (=> b!3848023 m!4402603))

(assert (=> b!3848023 m!4402603))

(assert (=> b!3848023 m!4402793))

(assert (=> b!3848025 m!4402579))

(assert (=> b!3847581 d!1140825))

(declare-fun b!3848146 () Bool)

(declare-fun e!2378415 () Bool)

(declare-fun lt!1336368 () Option!8718)

(assert (=> b!3848146 (= e!2378415 (= (size!30667 (_1!23112 (get!13491 lt!1336368))) (size!30668 (originalCharacters!6900 (_1!23112 (get!13491 lt!1336368))))))))

(declare-fun b!3848147 () Bool)

(declare-fun res!1557854 () Bool)

(assert (=> b!3848147 (=> (not res!1557854) (not e!2378415))))

(assert (=> b!3848147 (= res!1557854 (< (size!30668 (_2!23112 (get!13491 lt!1336368))) (size!30668 lt!1336193)))))

(declare-fun d!1140827 () Bool)

(declare-fun e!2378417 () Bool)

(assert (=> d!1140827 e!2378417))

(declare-fun res!1557851 () Bool)

(assert (=> d!1140827 (=> res!1557851 e!2378417)))

(assert (=> d!1140827 (= res!1557851 (isEmpty!24125 lt!1336368))))

(declare-fun e!2378418 () Option!8718)

(assert (=> d!1140827 (= lt!1336368 e!2378418)))

(declare-fun c!670235 () Bool)

(declare-datatypes ((tuple2!39960 0))(
  ( (tuple2!39961 (_1!23114 List!40894) (_2!23114 List!40894)) )
))
(declare-fun lt!1336366 () tuple2!39960)

(assert (=> d!1140827 (= c!670235 (isEmpty!24122 (_1!23114 lt!1336366)))))

(declare-fun findLongestMatch!1077 (Regex!11205 List!40894) tuple2!39960)

(assert (=> d!1140827 (= lt!1336366 (findLongestMatch!1077 (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) lt!1336193))))

(assert (=> d!1140827 (ruleValid!2252 thiss!20629 (rule!9148 (_1!23112 (v!39009 lt!1336194))))))

(assert (=> d!1140827 (= (maxPrefixOneRule!2275 thiss!20629 (rule!9148 (_1!23112 (v!39009 lt!1336194))) lt!1336193) lt!1336368)))

(declare-fun b!3848148 () Bool)

(declare-fun size!30672 (BalanceConc!24616) Int)

(assert (=> b!3848148 (= e!2378418 (Some!8717 (tuple2!39957 (Token!11739 (apply!9543 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) (seqFromList!4571 (_1!23114 lt!1336366))) (rule!9148 (_1!23112 (v!39009 lt!1336194))) (size!30672 (seqFromList!4571 (_1!23114 lt!1336366))) (_1!23114 lt!1336366)) (_2!23114 lt!1336366))))))

(declare-fun lt!1336367 () Unit!58446)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1137 (Regex!11205 List!40894) Unit!58446)

(assert (=> b!3848148 (= lt!1336367 (longestMatchIsAcceptedByMatchOrIsEmpty!1137 (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) lt!1336193))))

(declare-fun res!1557850 () Bool)

(declare-fun findLongestMatchInner!1164 (Regex!11205 List!40894 Int List!40894 List!40894 Int) tuple2!39960)

(assert (=> b!3848148 (= res!1557850 (isEmpty!24122 (_1!23114 (findLongestMatchInner!1164 (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) Nil!40770 (size!30668 Nil!40770) lt!1336193 lt!1336193 (size!30668 lt!1336193)))))))

(declare-fun e!2378416 () Bool)

(assert (=> b!3848148 (=> res!1557850 e!2378416)))

(assert (=> b!3848148 e!2378416))

(declare-fun lt!1336369 () Unit!58446)

(assert (=> b!3848148 (= lt!1336369 lt!1336367)))

(declare-fun lt!1336370 () Unit!58446)

(declare-fun lemmaSemiInverse!1670 (TokenValueInjection!12488 BalanceConc!24616) Unit!58446)

(assert (=> b!3848148 (= lt!1336370 (lemmaSemiInverse!1670 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) (seqFromList!4571 (_1!23114 lt!1336366))))))

(declare-fun b!3848149 () Bool)

(declare-fun res!1557856 () Bool)

(assert (=> b!3848149 (=> (not res!1557856) (not e!2378415))))

(assert (=> b!3848149 (= res!1557856 (= (value!200184 (_1!23112 (get!13491 lt!1336368))) (apply!9543 (transformation!6300 (rule!9148 (_1!23112 (get!13491 lt!1336368)))) (seqFromList!4571 (originalCharacters!6900 (_1!23112 (get!13491 lt!1336368)))))))))

(declare-fun b!3848150 () Bool)

(assert (=> b!3848150 (= e!2378416 (matchR!5352 (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) (_1!23114 (findLongestMatchInner!1164 (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) Nil!40770 (size!30668 Nil!40770) lt!1336193 lt!1336193 (size!30668 lt!1336193)))))))

(declare-fun b!3848151 () Bool)

(declare-fun res!1557855 () Bool)

(assert (=> b!3848151 (=> (not res!1557855) (not e!2378415))))

(assert (=> b!3848151 (= res!1557855 (= (rule!9148 (_1!23112 (get!13491 lt!1336368))) (rule!9148 (_1!23112 (v!39009 lt!1336194)))))))

(declare-fun b!3848152 () Bool)

(assert (=> b!3848152 (= e!2378418 None!8717)))

(declare-fun b!3848153 () Bool)

(assert (=> b!3848153 (= e!2378417 e!2378415)))

(declare-fun res!1557852 () Bool)

(assert (=> b!3848153 (=> (not res!1557852) (not e!2378415))))

(assert (=> b!3848153 (= res!1557852 (matchR!5352 (regex!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) (list!15174 (charsOf!4128 (_1!23112 (get!13491 lt!1336368))))))))

(declare-fun b!3848154 () Bool)

(declare-fun res!1557853 () Bool)

(assert (=> b!3848154 (=> (not res!1557853) (not e!2378415))))

(assert (=> b!3848154 (= res!1557853 (= (++!10358 (list!15174 (charsOf!4128 (_1!23112 (get!13491 lt!1336368)))) (_2!23112 (get!13491 lt!1336368))) lt!1336193))))

(assert (= (and d!1140827 c!670235) b!3848152))

(assert (= (and d!1140827 (not c!670235)) b!3848148))

(assert (= (and b!3848148 (not res!1557850)) b!3848150))

(assert (= (and d!1140827 (not res!1557851)) b!3848153))

(assert (= (and b!3848153 res!1557852) b!3848154))

(assert (= (and b!3848154 res!1557853) b!3848147))

(assert (= (and b!3848147 res!1557854) b!3848151))

(assert (= (and b!3848151 res!1557855) b!3848149))

(assert (= (and b!3848149 res!1557856) b!3848146))

(declare-fun m!4402897 () Bool)

(assert (=> b!3848147 m!4402897))

(declare-fun m!4402899 () Bool)

(assert (=> b!3848147 m!4402899))

(assert (=> b!3848147 m!4402357))

(declare-fun m!4402901 () Bool)

(assert (=> b!3848150 m!4402901))

(assert (=> b!3848150 m!4402357))

(assert (=> b!3848150 m!4402901))

(assert (=> b!3848150 m!4402357))

(declare-fun m!4402903 () Bool)

(assert (=> b!3848150 m!4402903))

(declare-fun m!4402905 () Bool)

(assert (=> b!3848150 m!4402905))

(assert (=> b!3848153 m!4402897))

(declare-fun m!4402907 () Bool)

(assert (=> b!3848153 m!4402907))

(assert (=> b!3848153 m!4402907))

(declare-fun m!4402909 () Bool)

(assert (=> b!3848153 m!4402909))

(assert (=> b!3848153 m!4402909))

(declare-fun m!4402911 () Bool)

(assert (=> b!3848153 m!4402911))

(declare-fun m!4402913 () Bool)

(assert (=> d!1140827 m!4402913))

(declare-fun m!4402915 () Bool)

(assert (=> d!1140827 m!4402915))

(declare-fun m!4402917 () Bool)

(assert (=> d!1140827 m!4402917))

(assert (=> d!1140827 m!4402323))

(assert (=> b!3848146 m!4402897))

(declare-fun m!4402919 () Bool)

(assert (=> b!3848146 m!4402919))

(assert (=> b!3848149 m!4402897))

(declare-fun m!4402921 () Bool)

(assert (=> b!3848149 m!4402921))

(assert (=> b!3848149 m!4402921))

(declare-fun m!4402923 () Bool)

(assert (=> b!3848149 m!4402923))

(assert (=> b!3848151 m!4402897))

(assert (=> b!3848148 m!4402357))

(declare-fun m!4402925 () Bool)

(assert (=> b!3848148 m!4402925))

(declare-fun m!4402927 () Bool)

(assert (=> b!3848148 m!4402927))

(declare-fun m!4402929 () Bool)

(assert (=> b!3848148 m!4402929))

(assert (=> b!3848148 m!4402925))

(declare-fun m!4402931 () Bool)

(assert (=> b!3848148 m!4402931))

(assert (=> b!3848148 m!4402901))

(assert (=> b!3848148 m!4402925))

(declare-fun m!4402933 () Bool)

(assert (=> b!3848148 m!4402933))

(declare-fun m!4402935 () Bool)

(assert (=> b!3848148 m!4402935))

(assert (=> b!3848148 m!4402925))

(assert (=> b!3848148 m!4402901))

(assert (=> b!3848148 m!4402357))

(assert (=> b!3848148 m!4402903))

(assert (=> b!3848154 m!4402897))

(assert (=> b!3848154 m!4402907))

(assert (=> b!3848154 m!4402907))

(assert (=> b!3848154 m!4402909))

(assert (=> b!3848154 m!4402909))

(declare-fun m!4402937 () Bool)

(assert (=> b!3848154 m!4402937))

(assert (=> b!3847581 d!1140827))

(declare-fun d!1140855 () Bool)

(assert (=> d!1140855 (= (maxPrefixOneRule!2275 thiss!20629 (rule!9148 (_1!23112 (v!39009 lt!1336194))) lt!1336193) (Some!8717 (tuple2!39957 (Token!11739 (apply!9543 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))) (seqFromList!4571 lt!1336190)) (rule!9148 (_1!23112 (v!39009 lt!1336194))) (size!30668 lt!1336190) lt!1336190) (_2!23112 (v!39009 lt!1336194)))))))

(declare-fun lt!1336373 () Unit!58446)

(declare-fun choose!22644 (LexerInterface!5889 List!40897 List!40894 List!40894 List!40894 Rule!12400) Unit!58446)

(assert (=> d!1140855 (= lt!1336373 (choose!22644 thiss!20629 rules!2768 lt!1336190 lt!1336193 (_2!23112 (v!39009 lt!1336194)) (rule!9148 (_1!23112 (v!39009 lt!1336194)))))))

(assert (=> d!1140855 (not (isEmpty!24123 rules!2768))))

(assert (=> d!1140855 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1173 thiss!20629 rules!2768 lt!1336190 lt!1336193 (_2!23112 (v!39009 lt!1336194)) (rule!9148 (_1!23112 (v!39009 lt!1336194)))) lt!1336373)))

(declare-fun bs!582750 () Bool)

(assert (= bs!582750 d!1140855))

(assert (=> bs!582750 m!4402303))

(assert (=> bs!582750 m!4402311))

(declare-fun m!4402939 () Bool)

(assert (=> bs!582750 m!4402939))

(assert (=> bs!582750 m!4402331))

(assert (=> bs!582750 m!4402361))

(assert (=> bs!582750 m!4402303))

(assert (=> bs!582750 m!4402305))

(assert (=> b!3847581 d!1140855))

(declare-fun b!3848166 () Bool)

(declare-fun e!2378421 () Bool)

(declare-fun tp!1166359 () Bool)

(declare-fun tp!1166360 () Bool)

(assert (=> b!3848166 (= e!2378421 (and tp!1166359 tp!1166360))))

(assert (=> b!3847590 (= tp!1166273 e!2378421)))

(declare-fun b!3848167 () Bool)

(declare-fun tp!1166361 () Bool)

(assert (=> b!3848167 (= e!2378421 tp!1166361)))

(declare-fun b!3848165 () Bool)

(assert (=> b!3848165 (= e!2378421 tp_is_empty!19381)))

(declare-fun b!3848168 () Bool)

(declare-fun tp!1166363 () Bool)

(declare-fun tp!1166362 () Bool)

(assert (=> b!3848168 (= e!2378421 (and tp!1166363 tp!1166362))))

(assert (= (and b!3847590 ((_ is ElementMatch!11205) (regex!6300 (rule!9148 (h!46192 prefixTokens!80))))) b!3848165))

(assert (= (and b!3847590 ((_ is Concat!17736) (regex!6300 (rule!9148 (h!46192 prefixTokens!80))))) b!3848166))

(assert (= (and b!3847590 ((_ is Star!11205) (regex!6300 (rule!9148 (h!46192 prefixTokens!80))))) b!3848167))

(assert (= (and b!3847590 ((_ is Union!11205) (regex!6300 (rule!9148 (h!46192 prefixTokens!80))))) b!3848168))

(declare-fun b!3848182 () Bool)

(declare-fun b_free!103069 () Bool)

(declare-fun b_next!103773 () Bool)

(assert (=> b!3848182 (= b_free!103069 (not b_next!103773))))

(declare-fun t!311296 () Bool)

(declare-fun tb!221705 () Bool)

(assert (=> (and b!3848182 (= (toValue!8716 (transformation!6300 (rule!9148 (h!46192 (t!311221 suffixTokens!72))))) (toValue!8716 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))) t!311296) tb!221705))

(declare-fun result!270186 () Bool)

(assert (= result!270186 result!270124))

(assert (=> d!1140777 t!311296))

(declare-fun b_and!287163 () Bool)

(declare-fun tp!1166378 () Bool)

(assert (=> b!3848182 (= tp!1166378 (and (=> t!311296 result!270186) b_and!287163))))

(declare-fun b_free!103071 () Bool)

(declare-fun b_next!103775 () Bool)

(assert (=> b!3848182 (= b_free!103071 (not b_next!103775))))

(declare-fun t!311298 () Bool)

(declare-fun tb!221707 () Bool)

(assert (=> (and b!3848182 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 (t!311221 suffixTokens!72))))) (toChars!8575 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))) t!311298) tb!221707))

(declare-fun result!270188 () Bool)

(assert (= result!270188 result!270116))

(assert (=> d!1140773 t!311298))

(declare-fun t!311300 () Bool)

(declare-fun tb!221709 () Bool)

(assert (=> (and b!3848182 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 (t!311221 suffixTokens!72))))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72))))) t!311300) tb!221709))

(declare-fun result!270190 () Bool)

(assert (= result!270190 result!270132))

(assert (=> b!3847871 t!311300))

(declare-fun tb!221711 () Bool)

(declare-fun t!311302 () Bool)

(assert (=> (and b!3848182 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 (t!311221 suffixTokens!72))))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80))))) t!311302) tb!221711))

(declare-fun result!270192 () Bool)

(assert (= result!270192 result!270138))

(assert (=> b!3847973 t!311302))

(declare-fun tp!1166377 () Bool)

(declare-fun b_and!287165 () Bool)

(assert (=> b!3848182 (= tp!1166377 (and (=> t!311298 result!270188) (=> t!311300 result!270190) (=> t!311302 result!270192) b_and!287165))))

(declare-fun e!2378435 () Bool)

(assert (=> b!3847596 (= tp!1166265 e!2378435)))

(declare-fun e!2378438 () Bool)

(declare-fun tp!1166376 () Bool)

(declare-fun b!3848181 () Bool)

(declare-fun e!2378436 () Bool)

(assert (=> b!3848181 (= e!2378436 (and tp!1166376 (inv!54910 (tag!7160 (rule!9148 (h!46192 (t!311221 suffixTokens!72))))) (inv!54913 (transformation!6300 (rule!9148 (h!46192 (t!311221 suffixTokens!72))))) e!2378438))))

(assert (=> b!3848182 (= e!2378438 (and tp!1166378 tp!1166377))))

(declare-fun b!3848179 () Bool)

(declare-fun tp!1166374 () Bool)

(declare-fun e!2378439 () Bool)

(assert (=> b!3848179 (= e!2378435 (and (inv!54914 (h!46192 (t!311221 suffixTokens!72))) e!2378439 tp!1166374))))

(declare-fun b!3848180 () Bool)

(declare-fun tp!1166375 () Bool)

(assert (=> b!3848180 (= e!2378439 (and (inv!21 (value!200184 (h!46192 (t!311221 suffixTokens!72)))) e!2378436 tp!1166375))))

(assert (= b!3848181 b!3848182))

(assert (= b!3848180 b!3848181))

(assert (= b!3848179 b!3848180))

(assert (= (and b!3847596 ((_ is Cons!40772) (t!311221 suffixTokens!72))) b!3848179))

(declare-fun m!4402941 () Bool)

(assert (=> b!3848181 m!4402941))

(declare-fun m!4402943 () Bool)

(assert (=> b!3848181 m!4402943))

(declare-fun m!4402945 () Bool)

(assert (=> b!3848179 m!4402945))

(declare-fun m!4402947 () Bool)

(assert (=> b!3848180 m!4402947))

(declare-fun b!3848193 () Bool)

(declare-fun b_free!103073 () Bool)

(declare-fun b_next!103777 () Bool)

(assert (=> b!3848193 (= b_free!103073 (not b_next!103777))))

(declare-fun tb!221713 () Bool)

(declare-fun t!311304 () Bool)

(assert (=> (and b!3848193 (= (toValue!8716 (transformation!6300 (h!46193 (t!311222 rules!2768)))) (toValue!8716 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))) t!311304) tb!221713))

(declare-fun result!270196 () Bool)

(assert (= result!270196 result!270124))

(assert (=> d!1140777 t!311304))

(declare-fun tp!1166387 () Bool)

(declare-fun b_and!287167 () Bool)

(assert (=> b!3848193 (= tp!1166387 (and (=> t!311304 result!270196) b_and!287167))))

(declare-fun b_free!103075 () Bool)

(declare-fun b_next!103779 () Bool)

(assert (=> b!3848193 (= b_free!103075 (not b_next!103779))))

(declare-fun t!311306 () Bool)

(declare-fun tb!221715 () Bool)

(assert (=> (and b!3848193 (= (toChars!8575 (transformation!6300 (h!46193 (t!311222 rules!2768)))) (toChars!8575 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))) t!311306) tb!221715))

(declare-fun result!270198 () Bool)

(assert (= result!270198 result!270116))

(assert (=> d!1140773 t!311306))

(declare-fun tb!221717 () Bool)

(declare-fun t!311308 () Bool)

(assert (=> (and b!3848193 (= (toChars!8575 (transformation!6300 (h!46193 (t!311222 rules!2768)))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72))))) t!311308) tb!221717))

(declare-fun result!270200 () Bool)

(assert (= result!270200 result!270132))

(assert (=> b!3847871 t!311308))

(declare-fun tb!221719 () Bool)

(declare-fun t!311310 () Bool)

(assert (=> (and b!3848193 (= (toChars!8575 (transformation!6300 (h!46193 (t!311222 rules!2768)))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80))))) t!311310) tb!221719))

(declare-fun result!270202 () Bool)

(assert (= result!270202 result!270138))

(assert (=> b!3847973 t!311310))

(declare-fun tp!1166390 () Bool)

(declare-fun b_and!287169 () Bool)

(assert (=> b!3848193 (= tp!1166390 (and (=> t!311306 result!270198) (=> t!311308 result!270200) (=> t!311310 result!270202) b_and!287169))))

(declare-fun e!2378451 () Bool)

(assert (=> b!3848193 (= e!2378451 (and tp!1166387 tp!1166390))))

(declare-fun e!2378450 () Bool)

(declare-fun b!3848192 () Bool)

(declare-fun tp!1166389 () Bool)

(assert (=> b!3848192 (= e!2378450 (and tp!1166389 (inv!54910 (tag!7160 (h!46193 (t!311222 rules!2768)))) (inv!54913 (transformation!6300 (h!46193 (t!311222 rules!2768)))) e!2378451))))

(declare-fun b!3848191 () Bool)

(declare-fun e!2378449 () Bool)

(declare-fun tp!1166388 () Bool)

(assert (=> b!3848191 (= e!2378449 (and e!2378450 tp!1166388))))

(assert (=> b!3847587 (= tp!1166270 e!2378449)))

(assert (= b!3848192 b!3848193))

(assert (= b!3848191 b!3848192))

(assert (= (and b!3847587 ((_ is Cons!40773) (t!311222 rules!2768))) b!3848191))

(declare-fun m!4402949 () Bool)

(assert (=> b!3848192 m!4402949))

(declare-fun m!4402951 () Bool)

(assert (=> b!3848192 m!4402951))

(declare-fun b!3848198 () Bool)

(declare-fun e!2378454 () Bool)

(declare-fun tp!1166393 () Bool)

(assert (=> b!3848198 (= e!2378454 (and tp_is_empty!19381 tp!1166393))))

(assert (=> b!3847597 (= tp!1166260 e!2378454)))

(assert (= (and b!3847597 ((_ is Cons!40770) (t!311219 suffix!1176))) b!3848198))

(declare-fun b!3848200 () Bool)

(declare-fun e!2378455 () Bool)

(declare-fun tp!1166394 () Bool)

(declare-fun tp!1166395 () Bool)

(assert (=> b!3848200 (= e!2378455 (and tp!1166394 tp!1166395))))

(assert (=> b!3847583 (= tp!1166271 e!2378455)))

(declare-fun b!3848201 () Bool)

(declare-fun tp!1166396 () Bool)

(assert (=> b!3848201 (= e!2378455 tp!1166396)))

(declare-fun b!3848199 () Bool)

(assert (=> b!3848199 (= e!2378455 tp_is_empty!19381)))

(declare-fun b!3848202 () Bool)

(declare-fun tp!1166398 () Bool)

(declare-fun tp!1166397 () Bool)

(assert (=> b!3848202 (= e!2378455 (and tp!1166398 tp!1166397))))

(assert (= (and b!3847583 ((_ is ElementMatch!11205) (regex!6300 (rule!9148 (h!46192 suffixTokens!72))))) b!3848199))

(assert (= (and b!3847583 ((_ is Concat!17736) (regex!6300 (rule!9148 (h!46192 suffixTokens!72))))) b!3848200))

(assert (= (and b!3847583 ((_ is Star!11205) (regex!6300 (rule!9148 (h!46192 suffixTokens!72))))) b!3848201))

(assert (= (and b!3847583 ((_ is Union!11205) (regex!6300 (rule!9148 (h!46192 suffixTokens!72))))) b!3848202))

(declare-fun b!3848203 () Bool)

(declare-fun e!2378456 () Bool)

(declare-fun tp!1166399 () Bool)

(assert (=> b!3848203 (= e!2378456 (and tp_is_empty!19381 tp!1166399))))

(assert (=> b!3847595 (= tp!1166263 e!2378456)))

(assert (= (and b!3847595 ((_ is Cons!40770) (originalCharacters!6900 (h!46192 prefixTokens!80)))) b!3848203))

(declare-fun b!3848204 () Bool)

(declare-fun e!2378457 () Bool)

(declare-fun tp!1166400 () Bool)

(assert (=> b!3848204 (= e!2378457 (and tp_is_empty!19381 tp!1166400))))

(assert (=> b!3847573 (= tp!1166268 e!2378457)))

(assert (= (and b!3847573 ((_ is Cons!40770) (t!311219 prefix!426))) b!3848204))

(declare-fun b!3848208 () Bool)

(declare-fun b_free!103077 () Bool)

(declare-fun b_next!103781 () Bool)

(assert (=> b!3848208 (= b_free!103077 (not b_next!103781))))

(declare-fun t!311312 () Bool)

(declare-fun tb!221721 () Bool)

(assert (=> (and b!3848208 (= (toValue!8716 (transformation!6300 (rule!9148 (h!46192 (t!311221 prefixTokens!80))))) (toValue!8716 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))) t!311312) tb!221721))

(declare-fun result!270206 () Bool)

(assert (= result!270206 result!270124))

(assert (=> d!1140777 t!311312))

(declare-fun tp!1166405 () Bool)

(declare-fun b_and!287171 () Bool)

(assert (=> b!3848208 (= tp!1166405 (and (=> t!311312 result!270206) b_and!287171))))

(declare-fun b_free!103079 () Bool)

(declare-fun b_next!103783 () Bool)

(assert (=> b!3848208 (= b_free!103079 (not b_next!103783))))

(declare-fun tb!221723 () Bool)

(declare-fun t!311314 () Bool)

(assert (=> (and b!3848208 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 (t!311221 prefixTokens!80))))) (toChars!8575 (transformation!6300 (rule!9148 (_1!23112 (v!39009 lt!1336194)))))) t!311314) tb!221723))

(declare-fun result!270208 () Bool)

(assert (= result!270208 result!270116))

(assert (=> d!1140773 t!311314))

(declare-fun tb!221725 () Bool)

(declare-fun t!311316 () Bool)

(assert (=> (and b!3848208 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 (t!311221 prefixTokens!80))))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72))))) t!311316) tb!221725))

(declare-fun result!270210 () Bool)

(assert (= result!270210 result!270132))

(assert (=> b!3847871 t!311316))

(declare-fun t!311318 () Bool)

(declare-fun tb!221727 () Bool)

(assert (=> (and b!3848208 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 (t!311221 prefixTokens!80))))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80))))) t!311318) tb!221727))

(declare-fun result!270212 () Bool)

(assert (= result!270212 result!270138))

(assert (=> b!3847973 t!311318))

(declare-fun b_and!287173 () Bool)

(declare-fun tp!1166404 () Bool)

(assert (=> b!3848208 (= tp!1166404 (and (=> t!311314 result!270208) (=> t!311316 result!270210) (=> t!311318 result!270212) b_and!287173))))

(declare-fun e!2378459 () Bool)

(assert (=> b!3847602 (= tp!1166258 e!2378459)))

(declare-fun tp!1166403 () Bool)

(declare-fun e!2378460 () Bool)

(declare-fun b!3848207 () Bool)

(declare-fun e!2378462 () Bool)

(assert (=> b!3848207 (= e!2378460 (and tp!1166403 (inv!54910 (tag!7160 (rule!9148 (h!46192 (t!311221 prefixTokens!80))))) (inv!54913 (transformation!6300 (rule!9148 (h!46192 (t!311221 prefixTokens!80))))) e!2378462))))

(assert (=> b!3848208 (= e!2378462 (and tp!1166405 tp!1166404))))

(declare-fun b!3848205 () Bool)

(declare-fun e!2378463 () Bool)

(declare-fun tp!1166401 () Bool)

(assert (=> b!3848205 (= e!2378459 (and (inv!54914 (h!46192 (t!311221 prefixTokens!80))) e!2378463 tp!1166401))))

(declare-fun b!3848206 () Bool)

(declare-fun tp!1166402 () Bool)

(assert (=> b!3848206 (= e!2378463 (and (inv!21 (value!200184 (h!46192 (t!311221 prefixTokens!80)))) e!2378460 tp!1166402))))

(assert (= b!3848207 b!3848208))

(assert (= b!3848206 b!3848207))

(assert (= b!3848205 b!3848206))

(assert (= (and b!3847602 ((_ is Cons!40772) (t!311221 prefixTokens!80))) b!3848205))

(declare-fun m!4402953 () Bool)

(assert (=> b!3848207 m!4402953))

(declare-fun m!4402955 () Bool)

(assert (=> b!3848207 m!4402955))

(declare-fun m!4402957 () Bool)

(assert (=> b!3848205 m!4402957))

(declare-fun m!4402959 () Bool)

(assert (=> b!3848206 m!4402959))

(declare-fun b!3848209 () Bool)

(declare-fun e!2378464 () Bool)

(declare-fun tp!1166406 () Bool)

(assert (=> b!3848209 (= e!2378464 (and tp_is_empty!19381 tp!1166406))))

(assert (=> b!3847601 (= tp!1166272 e!2378464)))

(assert (= (and b!3847601 ((_ is Cons!40770) (originalCharacters!6900 (h!46192 suffixTokens!72)))) b!3848209))

(declare-fun b!3848210 () Bool)

(declare-fun e!2378465 () Bool)

(declare-fun tp!1166407 () Bool)

(assert (=> b!3848210 (= e!2378465 (and tp_is_empty!19381 tp!1166407))))

(assert (=> b!3847582 (= tp!1166266 e!2378465)))

(assert (= (and b!3847582 ((_ is Cons!40770) (t!311219 suffixResult!91))) b!3848210))

(declare-fun b!3848212 () Bool)

(declare-fun e!2378466 () Bool)

(declare-fun tp!1166408 () Bool)

(declare-fun tp!1166409 () Bool)

(assert (=> b!3848212 (= e!2378466 (and tp!1166408 tp!1166409))))

(assert (=> b!3847592 (= tp!1166269 e!2378466)))

(declare-fun b!3848213 () Bool)

(declare-fun tp!1166410 () Bool)

(assert (=> b!3848213 (= e!2378466 tp!1166410)))

(declare-fun b!3848211 () Bool)

(assert (=> b!3848211 (= e!2378466 tp_is_empty!19381)))

(declare-fun b!3848214 () Bool)

(declare-fun tp!1166412 () Bool)

(declare-fun tp!1166411 () Bool)

(assert (=> b!3848214 (= e!2378466 (and tp!1166412 tp!1166411))))

(assert (= (and b!3847592 ((_ is ElementMatch!11205) (regex!6300 (h!46193 rules!2768)))) b!3848211))

(assert (= (and b!3847592 ((_ is Concat!17736) (regex!6300 (h!46193 rules!2768)))) b!3848212))

(assert (= (and b!3847592 ((_ is Star!11205) (regex!6300 (h!46193 rules!2768)))) b!3848213))

(assert (= (and b!3847592 ((_ is Union!11205) (regex!6300 (h!46193 rules!2768)))) b!3848214))

(declare-fun b_lambda!112463 () Bool)

(assert (= b_lambda!112455 (or (and b!3848193 b_free!103075 (= (toChars!8575 (transformation!6300 (h!46193 (t!311222 rules!2768)))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))))) (and b!3847580 b_free!103055) (and b!3848182 b_free!103071 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 (t!311221 suffixTokens!72))))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))))) (and b!3847584 b_free!103047 (= (toChars!8575 (transformation!6300 (h!46193 rules!2768))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))))) (and b!3848208 b_free!103079 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 (t!311221 prefixTokens!80))))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))))) (and b!3847585 b_free!103051 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))))) b_lambda!112463)))

(declare-fun b_lambda!112465 () Bool)

(assert (= b_lambda!112453 (or (and b!3847585 b_free!103051) (and b!3848182 b_free!103071 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 (t!311221 suffixTokens!72))))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))))) (and b!3847580 b_free!103055 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 prefixTokens!80)))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))))) (and b!3848208 b_free!103079 (= (toChars!8575 (transformation!6300 (rule!9148 (h!46192 (t!311221 prefixTokens!80))))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))))) (and b!3848193 b_free!103075 (= (toChars!8575 (transformation!6300 (h!46193 (t!311222 rules!2768)))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))))) (and b!3847584 b_free!103047 (= (toChars!8575 (transformation!6300 (h!46193 rules!2768))) (toChars!8575 (transformation!6300 (rule!9148 (h!46192 suffixTokens!72)))))) b_lambda!112465)))

(check-sat (not b!3847850) (not b!3847872) (not b!3848202) (not b_next!103753) (not bm!282103) (not b!3847945) (not d!1140807) (not b!3847835) (not b!3847726) (not d!1140791) (not b!3848201) (not b!3847974) (not b!3848205) (not b!3848180) (not d!1140687) (not b_next!103783) (not b!3847729) (not b!3847833) (not d!1140811) (not d!1140773) (not d!1140739) (not d!1140689) (not b!3848146) (not b!3848151) (not b!3847977) (not b!3848213) (not b!3848203) (not d!1140827) (not d!1140769) (not b_next!103751) (not b!3847955) (not d!1140801) (not b!3848015) (not b!3847730) (not d!1140823) (not d!1140815) (not b!3848166) (not b!3848198) (not b!3848212) (not b!3847956) (not b_lambda!112465) (not b!3848023) (not d!1140743) (not b!3848214) (not b!3847851) b_and!287165 (not d!1140737) b_and!287173 (not tb!221669) (not b!3847608) (not b_lambda!112451) (not b_next!103749) (not b!3847728) (not b!3848013) (not b!3847866) (not b!3847849) b_and!287163 (not b_next!103757) (not b!3847951) (not b!3848209) b_and!287131 (not b!3847753) (not b!3847979) (not b!3847889) (not b!3847942) (not b!3847731) b_and!287169 (not b!3847947) (not d!1140761) b_and!287141 (not b!3848167) (not b!3848024) (not d!1140765) (not b_lambda!112449) (not b!3847983) (not tb!221663) (not b!3847973) (not b!3847968) (not d!1140785) (not b!3848014) (not b!3847725) (not b!3848147) (not b!3848206) (not b!3847972) (not b!3847978) (not b!3847873) (not b!3847764) (not b!3848168) b_and!287129 (not b!3848154) (not d!1140775) (not b_lambda!112463) (not b!3848150) (not b!3848025) (not b!3847940) (not b!3847871) (not bm!282094) b_and!287127 (not b!3848149) (not b!3848204) (not d!1140755) (not b_next!103759) (not b!3848192) (not b!3847785) (not b!3847625) (not b!3848200) (not tb!221657) (not d!1140825) (not b!3848191) (not d!1140855) (not b!3847944) (not b!3847624) (not b!3847948) (not b!3847936) (not b_next!103775) (not b!3847611) (not b!3847784) (not b!3847856) (not b_next!103755) (not b!3848179) (not d!1140757) (not d!1140809) (not d!1140789) (not b_next!103779) (not b_next!103777) (not tb!221651) (not b!3847982) (not b!3847837) (not d!1140767) b_and!287167 (not b_next!103781) (not b!3847622) (not b!3847952) (not b!3848210) (not b!3847975) (not b!3847890) b_and!287171 (not b!3847861) b_and!287143 tp_is_empty!19381 (not b!3848148) (not b!3847724) (not b!3847937) (not d!1140697) (not b!3847969) (not b!3848181) (not b!3848153) (not b!3848207) (not b_next!103773) (not b!3847838) (not d!1140763) b_and!287139 (not b!3847727))
(check-sat (not b_next!103753) (not b_next!103783) (not b_next!103751) b_and!287165 b_and!287173 (not b_next!103749) b_and!287131 b_and!287169 b_and!287141 b_and!287129 b_and!287127 (not b_next!103759) b_and!287171 b_and!287139 b_and!287163 (not b_next!103757) (not b_next!103775) (not b_next!103755) (not b_next!103779) (not b_next!103777) b_and!287167 (not b_next!103781) b_and!287143 (not b_next!103773))
