; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52332 () Bool)

(assert start!52332)

(declare-fun b!567346 () Bool)

(declare-fun b_free!15813 () Bool)

(declare-fun b_next!15829 () Bool)

(assert (=> b!567346 (= b_free!15813 (not b_next!15829))))

(declare-fun tp!178762 () Bool)

(declare-fun b_and!55267 () Bool)

(assert (=> b!567346 (= tp!178762 b_and!55267)))

(declare-fun b_free!15815 () Bool)

(declare-fun b_next!15831 () Bool)

(assert (=> b!567346 (= b_free!15815 (not b_next!15831))))

(declare-fun tp!178768 () Bool)

(declare-fun b_and!55269 () Bool)

(assert (=> b!567346 (= tp!178768 b_and!55269)))

(declare-fun b!567313 () Bool)

(declare-fun b_free!15817 () Bool)

(declare-fun b_next!15833 () Bool)

(assert (=> b!567313 (= b_free!15817 (not b_next!15833))))

(declare-fun tp!178760 () Bool)

(declare-fun b_and!55271 () Bool)

(assert (=> b!567313 (= tp!178760 b_and!55271)))

(declare-fun b_free!15819 () Bool)

(declare-fun b_next!15835 () Bool)

(assert (=> b!567313 (= b_free!15819 (not b_next!15835))))

(declare-fun tp!178759 () Bool)

(declare-fun b_and!55273 () Bool)

(assert (=> b!567313 (= tp!178759 b_and!55273)))

(declare-fun b!567311 () Bool)

(declare-fun e!342840 () Bool)

(declare-fun e!342844 () Bool)

(assert (=> b!567311 (= e!342840 e!342844)))

(declare-fun res!243423 () Bool)

(assert (=> b!567311 (=> res!243423 e!342844)))

(declare-fun lt!239166 () Int)

(declare-fun lt!239192 () Int)

(assert (=> b!567311 (= res!243423 (>= lt!239166 lt!239192))))

(declare-fun b!567312 () Bool)

(declare-fun res!243427 () Bool)

(declare-fun e!342833 () Bool)

(assert (=> b!567312 (=> (not res!243427) (not e!342833))))

(declare-datatypes ((LexerInterface!963 0))(
  ( (LexerInterfaceExt!960 (__x!4100 Int)) (Lexer!961) )
))
(declare-fun thiss!22590 () LexerInterface!963)

(declare-datatypes ((C!3744 0))(
  ( (C!3745 (val!2098 Int)) )
))
(declare-datatypes ((Regex!1411 0))(
  ( (ElementMatch!1411 (c!106391 C!3744)) (Concat!2512 (regOne!3334 Regex!1411) (regTwo!3334 Regex!1411)) (EmptyExpr!1411) (Star!1411 (reg!1740 Regex!1411)) (EmptyLang!1411) (Union!1411 (regOne!3335 Regex!1411) (regTwo!3335 Regex!1411)) )
))
(declare-datatypes ((List!5602 0))(
  ( (Nil!5592) (Cons!5592 (h!10993 (_ BitVec 16)) (t!76381 List!5602)) )
))
(declare-datatypes ((List!5603 0))(
  ( (Nil!5593) (Cons!5593 (h!10994 C!3744) (t!76382 List!5603)) )
))
(declare-datatypes ((IArray!3589 0))(
  ( (IArray!3590 (innerList!1852 List!5603)) )
))
(declare-datatypes ((Conc!1794 0))(
  ( (Node!1794 (left!4577 Conc!1794) (right!4907 Conc!1794) (csize!3818 Int) (cheight!2005 Int)) (Leaf!2840 (xs!4431 IArray!3589) (csize!3819 Int)) (Empty!1794) )
))
(declare-datatypes ((BalanceConc!3596 0))(
  ( (BalanceConc!3597 (c!106392 Conc!1794)) )
))
(declare-datatypes ((TokenValue!1101 0))(
  ( (FloatLiteralValue!2202 (text!8152 List!5602)) (TokenValueExt!1100 (__x!4101 Int)) (Broken!5505 (value!35535 List!5602)) (Object!1110) (End!1101) (Def!1101) (Underscore!1101) (Match!1101) (Else!1101) (Error!1101) (Case!1101) (If!1101) (Extends!1101) (Abstract!1101) (Class!1101) (Val!1101) (DelimiterValue!2202 (del!1161 List!5602)) (KeywordValue!1107 (value!35536 List!5602)) (CommentValue!2202 (value!35537 List!5602)) (WhitespaceValue!2202 (value!35538 List!5602)) (IndentationValue!1101 (value!35539 List!5602)) (String!7248) (Int32!1101) (Broken!5506 (value!35540 List!5602)) (Boolean!1102) (Unit!10004) (OperatorValue!1104 (op!1161 List!5602)) (IdentifierValue!2202 (value!35541 List!5602)) (IdentifierValue!2203 (value!35542 List!5602)) (WhitespaceValue!2203 (value!35543 List!5602)) (True!2202) (False!2202) (Broken!5507 (value!35544 List!5602)) (Broken!5508 (value!35545 List!5602)) (True!2203) (RightBrace!1101) (RightBracket!1101) (Colon!1101) (Null!1101) (Comma!1101) (LeftBracket!1101) (False!2203) (LeftBrace!1101) (ImaginaryLiteralValue!1101 (text!8153 List!5602)) (StringLiteralValue!3303 (value!35546 List!5602)) (EOFValue!1101 (value!35547 List!5602)) (IdentValue!1101 (value!35548 List!5602)) (DelimiterValue!2203 (value!35549 List!5602)) (DedentValue!1101 (value!35550 List!5602)) (NewLineValue!1101 (value!35551 List!5602)) (IntegerValue!3303 (value!35552 (_ BitVec 32)) (text!8154 List!5602)) (IntegerValue!3304 (value!35553 Int) (text!8155 List!5602)) (Times!1101) (Or!1101) (Equal!1101) (Minus!1101) (Broken!5509 (value!35554 List!5602)) (And!1101) (Div!1101) (LessEqual!1101) (Mod!1101) (Concat!2513) (Not!1101) (Plus!1101) (SpaceValue!1101 (value!35555 List!5602)) (IntegerValue!3305 (value!35556 Int) (text!8156 List!5602)) (StringLiteralValue!3304 (text!8157 List!5602)) (FloatLiteralValue!2203 (text!8158 List!5602)) (BytesLiteralValue!1101 (value!35557 List!5602)) (CommentValue!2203 (value!35558 List!5602)) (StringLiteralValue!3305 (value!35559 List!5602)) (ErrorTokenValue!1101 (msg!1162 List!5602)) )
))
(declare-datatypes ((String!7249 0))(
  ( (String!7250 (value!35560 String)) )
))
(declare-datatypes ((TokenValueInjection!1970 0))(
  ( (TokenValueInjection!1971 (toValue!1932 Int) (toChars!1791 Int)) )
))
(declare-datatypes ((Rule!1954 0))(
  ( (Rule!1955 (regex!1077 Regex!1411) (tag!1339 String!7249) (isSeparator!1077 Bool) (transformation!1077 TokenValueInjection!1970)) )
))
(declare-datatypes ((List!5604 0))(
  ( (Nil!5594) (Cons!5594 (h!10995 Rule!1954) (t!76383 List!5604)) )
))
(declare-fun rules!3103 () List!5604)

(declare-fun rulesInvariant!926 (LexerInterface!963 List!5604) Bool)

(assert (=> b!567312 (= res!243427 (rulesInvariant!926 thiss!22590 rules!3103))))

(declare-fun e!342839 () Bool)

(assert (=> b!567313 (= e!342839 (and tp!178760 tp!178759))))

(declare-fun b!567314 () Bool)

(declare-fun e!342826 () Bool)

(declare-fun tp_is_empty!3177 () Bool)

(declare-fun tp!178765 () Bool)

(assert (=> b!567314 (= e!342826 (and tp_is_empty!3177 tp!178765))))

(declare-fun suffix!1342 () List!5603)

(declare-fun lt!239175 () TokenValue!1101)

(declare-datatypes ((Token!1890 0))(
  ( (Token!1891 (value!35561 TokenValue!1101) (rule!1817 Rule!1954) (size!4456 Int) (originalCharacters!1116 List!5603)) )
))
(declare-fun token!491 () Token!1890)

(declare-fun lt!239189 () List!5603)

(declare-fun lt!239194 () List!5603)

(declare-fun b!567315 () Bool)

(declare-fun e!342848 () Bool)

(declare-datatypes ((tuple2!6588 0))(
  ( (tuple2!6589 (_1!3558 Token!1890) (_2!3558 List!5603)) )
))
(assert (=> b!567315 (= e!342848 (and (= (size!4456 token!491) lt!239192) (= (originalCharacters!1116 token!491) lt!239194) (= (tuple2!6589 token!491 suffix!1342) (tuple2!6589 (Token!1891 lt!239175 (rule!1817 token!491) lt!239192 lt!239194) lt!239189))))))

(declare-fun b!567316 () Bool)

(declare-fun e!342843 () Bool)

(assert (=> b!567316 (= e!342844 e!342843)))

(declare-fun res!243442 () Bool)

(assert (=> b!567316 (=> (not res!243442) (not e!342843))))

(declare-datatypes ((Option!1428 0))(
  ( (None!1427) (Some!1427 (v!16276 tuple2!6588)) )
))
(declare-fun lt!239199 () Option!1428)

(declare-fun isDefined!1239 (Option!1428) Bool)

(assert (=> b!567316 (= res!243442 (isDefined!1239 lt!239199))))

(declare-fun b!567317 () Bool)

(declare-datatypes ((Unit!10005 0))(
  ( (Unit!10006) )
))
(declare-fun e!342841 () Unit!10005)

(declare-fun Unit!10007 () Unit!10005)

(assert (=> b!567317 (= e!342841 Unit!10007)))

(assert (=> b!567317 false))

(declare-fun b!567318 () Bool)

(declare-fun res!243425 () Bool)

(declare-fun e!342829 () Bool)

(assert (=> b!567318 (=> res!243425 e!342829)))

(declare-fun lt!239186 () List!5603)

(declare-fun matchR!558 (Regex!1411 List!5603) Bool)

(assert (=> b!567318 (= res!243425 (not (matchR!558 (regex!1077 (rule!1817 (_1!3558 (v!16276 lt!239199)))) lt!239186)))))

(declare-fun res!243431 () Bool)

(assert (=> start!52332 (=> (not res!243431) (not e!342833))))

(get-info :version)

(assert (=> start!52332 (= res!243431 ((_ is Lexer!961) thiss!22590))))

(assert (=> start!52332 e!342833))

(assert (=> start!52332 e!342826))

(declare-fun e!342838 () Bool)

(assert (=> start!52332 e!342838))

(declare-fun e!342834 () Bool)

(declare-fun inv!7029 (Token!1890) Bool)

(assert (=> start!52332 (and (inv!7029 token!491) e!342834)))

(assert (=> start!52332 true))

(declare-fun e!342849 () Bool)

(assert (=> start!52332 e!342849))

(declare-fun b!567319 () Bool)

(declare-fun e!342830 () Bool)

(declare-fun e!342846 () Bool)

(assert (=> b!567319 (= e!342830 (not e!342846))))

(declare-fun res!243432 () Bool)

(assert (=> b!567319 (=> res!243432 e!342846)))

(declare-fun input!2705 () List!5603)

(declare-fun lt!239200 () List!5603)

(declare-fun isPrefix!711 (List!5603 List!5603) Bool)

(assert (=> b!567319 (= res!243432 (not (isPrefix!711 input!2705 lt!239200)))))

(assert (=> b!567319 (isPrefix!711 lt!239194 lt!239200)))

(declare-fun lt!239173 () Unit!10005)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!558 (List!5603 List!5603) Unit!10005)

(assert (=> b!567319 (= lt!239173 (lemmaConcatTwoListThenFirstIsPrefix!558 lt!239194 suffix!1342))))

(declare-fun lt!239168 () List!5603)

(assert (=> b!567319 (isPrefix!711 input!2705 lt!239168)))

(declare-fun lt!239195 () Unit!10005)

(assert (=> b!567319 (= lt!239195 (lemmaConcatTwoListThenFirstIsPrefix!558 input!2705 suffix!1342))))

(declare-fun lt!239177 () TokenValue!1101)

(declare-fun lt!239197 () Token!1890)

(assert (=> b!567319 (= lt!239197 (Token!1891 lt!239177 (rule!1817 (_1!3558 (v!16276 lt!239199))) lt!239166 lt!239186))))

(declare-fun e!342850 () Bool)

(assert (=> b!567319 e!342850))

(declare-fun res!243443 () Bool)

(assert (=> b!567319 (=> (not res!243443) (not e!342850))))

(assert (=> b!567319 (= res!243443 (= (value!35561 (_1!3558 (v!16276 lt!239199))) lt!239177))))

(declare-fun lt!239167 () BalanceConc!3596)

(declare-fun apply!1342 (TokenValueInjection!1970 BalanceConc!3596) TokenValue!1101)

(assert (=> b!567319 (= lt!239177 (apply!1342 (transformation!1077 (rule!1817 (_1!3558 (v!16276 lt!239199)))) lt!239167))))

(declare-fun seqFromList!1265 (List!5603) BalanceConc!3596)

(assert (=> b!567319 (= lt!239167 (seqFromList!1265 lt!239186))))

(declare-fun lt!239184 () Unit!10005)

(declare-fun lemmaInv!213 (TokenValueInjection!1970) Unit!10005)

(assert (=> b!567319 (= lt!239184 (lemmaInv!213 (transformation!1077 (rule!1817 token!491))))))

(declare-fun lt!239182 () Unit!10005)

(assert (=> b!567319 (= lt!239182 (lemmaInv!213 (transformation!1077 (rule!1817 (_1!3558 (v!16276 lt!239199))))))))

(declare-fun ruleValid!287 (LexerInterface!963 Rule!1954) Bool)

(assert (=> b!567319 (ruleValid!287 thiss!22590 (rule!1817 token!491))))

(declare-fun lt!239169 () Unit!10005)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!144 (LexerInterface!963 Rule!1954 List!5604) Unit!10005)

(assert (=> b!567319 (= lt!239169 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!144 thiss!22590 (rule!1817 token!491) rules!3103))))

(assert (=> b!567319 (ruleValid!287 thiss!22590 (rule!1817 (_1!3558 (v!16276 lt!239199))))))

(declare-fun lt!239183 () Unit!10005)

(assert (=> b!567319 (= lt!239183 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!144 thiss!22590 (rule!1817 (_1!3558 (v!16276 lt!239199))) rules!3103))))

(assert (=> b!567319 (isPrefix!711 input!2705 input!2705)))

(declare-fun lt!239187 () Unit!10005)

(declare-fun lemmaIsPrefixRefl!449 (List!5603 List!5603) Unit!10005)

(assert (=> b!567319 (= lt!239187 (lemmaIsPrefixRefl!449 input!2705 input!2705))))

(declare-fun lt!239188 () List!5603)

(assert (=> b!567319 (= (_2!3558 (v!16276 lt!239199)) lt!239188)))

(declare-fun lt!239174 () Unit!10005)

(declare-fun lemmaSamePrefixThenSameSuffix!434 (List!5603 List!5603 List!5603 List!5603 List!5603) Unit!10005)

(assert (=> b!567319 (= lt!239174 (lemmaSamePrefixThenSameSuffix!434 lt!239186 (_2!3558 (v!16276 lt!239199)) lt!239186 lt!239188 input!2705))))

(declare-fun getSuffix!230 (List!5603 List!5603) List!5603)

(assert (=> b!567319 (= lt!239188 (getSuffix!230 input!2705 lt!239186))))

(declare-fun lt!239170 () List!5603)

(assert (=> b!567319 (isPrefix!711 lt!239186 lt!239170)))

(declare-fun ++!1565 (List!5603 List!5603) List!5603)

(assert (=> b!567319 (= lt!239170 (++!1565 lt!239186 (_2!3558 (v!16276 lt!239199))))))

(declare-fun lt!239176 () Unit!10005)

(assert (=> b!567319 (= lt!239176 (lemmaConcatTwoListThenFirstIsPrefix!558 lt!239186 (_2!3558 (v!16276 lt!239199))))))

(declare-fun lt!239172 () Unit!10005)

(declare-fun lemmaCharactersSize!144 (Token!1890) Unit!10005)

(assert (=> b!567319 (= lt!239172 (lemmaCharactersSize!144 token!491))))

(declare-fun lt!239193 () Unit!10005)

(assert (=> b!567319 (= lt!239193 (lemmaCharactersSize!144 (_1!3558 (v!16276 lt!239199))))))

(declare-fun lt!239190 () Unit!10005)

(assert (=> b!567319 (= lt!239190 e!342841)))

(declare-fun c!106390 () Bool)

(assert (=> b!567319 (= c!106390 (> lt!239166 lt!239192))))

(declare-fun size!4457 (List!5603) Int)

(assert (=> b!567319 (= lt!239192 (size!4457 lt!239194))))

(assert (=> b!567319 (= lt!239166 (size!4457 lt!239186))))

(declare-fun list!2321 (BalanceConc!3596) List!5603)

(declare-fun charsOf!706 (Token!1890) BalanceConc!3596)

(assert (=> b!567319 (= lt!239186 (list!2321 (charsOf!706 (_1!3558 (v!16276 lt!239199)))))))

(declare-fun lt!239181 () tuple2!6588)

(assert (=> b!567319 (= lt!239199 (Some!1427 lt!239181))))

(assert (=> b!567319 (= lt!239181 (tuple2!6589 (_1!3558 (v!16276 lt!239199)) (_2!3558 (v!16276 lt!239199))))))

(declare-fun lt!239185 () Unit!10005)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!154 (List!5603 List!5603 List!5603 List!5603) Unit!10005)

(assert (=> b!567319 (= lt!239185 (lemmaConcatSameAndSameSizesThenSameLists!154 lt!239194 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!567320 () Bool)

(declare-fun res!243445 () Bool)

(declare-fun e!342832 () Bool)

(assert (=> b!567320 (=> res!243445 e!342832)))

(assert (=> b!567320 (= res!243445 (not (matchR!558 (regex!1077 (rule!1817 token!491)) input!2705)))))

(declare-fun b!567321 () Bool)

(declare-fun res!243444 () Bool)

(assert (=> b!567321 (=> (not res!243444) (not e!342848))))

(assert (=> b!567321 (= res!243444 (= (size!4456 token!491) (size!4457 (originalCharacters!1116 token!491))))))

(declare-fun b!567322 () Bool)

(declare-fun res!243435 () Bool)

(assert (=> b!567322 (=> res!243435 e!342832)))

(assert (=> b!567322 (= res!243435 (not (= (++!1565 lt!239186 lt!239188) input!2705)))))

(declare-fun b!567323 () Bool)

(assert (=> b!567323 (= e!342846 e!342832)))

(declare-fun res!243429 () Bool)

(assert (=> b!567323 (=> res!243429 e!342832)))

(assert (=> b!567323 (= res!243429 (>= lt!239166 lt!239192))))

(assert (=> b!567323 e!342840))

(declare-fun res!243439 () Bool)

(assert (=> b!567323 (=> (not res!243439) (not e!342840))))

(declare-fun maxPrefixOneRule!362 (LexerInterface!963 Rule!1954 List!5603) Option!1428)

(assert (=> b!567323 (= res!243439 (= (maxPrefixOneRule!362 thiss!22590 (rule!1817 token!491) lt!239168) (Some!1427 (tuple2!6589 (Token!1891 lt!239175 (rule!1817 token!491) lt!239192 lt!239194) suffix!1342))))))

(declare-fun lt!239179 () Unit!10005)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!112 (LexerInterface!963 List!5604 List!5603 List!5603 List!5603 Rule!1954) Unit!10005)

(assert (=> b!567323 (= lt!239179 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!112 thiss!22590 rules!3103 lt!239194 lt!239168 suffix!1342 (rule!1817 token!491)))))

(declare-fun lt!239171 () Option!1428)

(assert (=> b!567323 (= lt!239171 (Some!1427 (tuple2!6589 lt!239197 (_2!3558 (v!16276 lt!239199)))))))

(assert (=> b!567323 (= lt!239171 (maxPrefixOneRule!362 thiss!22590 (rule!1817 (_1!3558 (v!16276 lt!239199))) input!2705))))

(declare-fun lt!239198 () Unit!10005)

(assert (=> b!567323 (= lt!239198 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!112 thiss!22590 rules!3103 lt!239186 input!2705 (_2!3558 (v!16276 lt!239199)) (rule!1817 (_1!3558 (v!16276 lt!239199)))))))

(assert (=> b!567323 e!342848))

(declare-fun res!243421 () Bool)

(assert (=> b!567323 (=> (not res!243421) (not e!342848))))

(assert (=> b!567323 (= res!243421 (= (value!35561 token!491) lt!239175))))

(assert (=> b!567323 (= lt!239175 (apply!1342 (transformation!1077 (rule!1817 token!491)) (seqFromList!1265 lt!239194)))))

(assert (=> b!567323 (= suffix!1342 lt!239189)))

(declare-fun lt!239196 () Unit!10005)

(assert (=> b!567323 (= lt!239196 (lemmaSamePrefixThenSameSuffix!434 lt!239194 suffix!1342 lt!239194 lt!239189 lt!239168))))

(assert (=> b!567323 (= lt!239189 (getSuffix!230 lt!239168 lt!239194))))

(declare-fun b!567324 () Bool)

(declare-fun e!342851 () Bool)

(declare-fun tp!178764 () Bool)

(assert (=> b!567324 (= e!342838 (and e!342851 tp!178764))))

(declare-fun b!567325 () Bool)

(declare-fun res!243441 () Bool)

(assert (=> b!567325 (=> (not res!243441) (not e!342850))))

(assert (=> b!567325 (= res!243441 (= (size!4456 (_1!3558 (v!16276 lt!239199))) (size!4457 (originalCharacters!1116 (_1!3558 (v!16276 lt!239199))))))))

(declare-fun b!567326 () Bool)

(declare-fun tp!178767 () Bool)

(declare-fun e!342827 () Bool)

(declare-fun inv!7026 (String!7249) Bool)

(declare-fun inv!7030 (TokenValueInjection!1970) Bool)

(assert (=> b!567326 (= e!342851 (and tp!178767 (inv!7026 (tag!1339 (h!10995 rules!3103))) (inv!7030 (transformation!1077 (h!10995 rules!3103))) e!342827))))

(declare-fun b!567327 () Bool)

(declare-fun res!243440 () Bool)

(assert (=> b!567327 (=> res!243440 e!342832)))

(assert (=> b!567327 (= res!243440 (not (= (getSuffix!230 input!2705 input!2705) Nil!5593)))))

(declare-fun b!567328 () Bool)

(declare-fun res!243430 () Bool)

(assert (=> b!567328 (=> (not res!243430) (not e!342833))))

(declare-fun isEmpty!4037 (List!5604) Bool)

(assert (=> b!567328 (= res!243430 (not (isEmpty!4037 rules!3103)))))

(declare-fun b!567329 () Bool)

(assert (=> b!567329 (= e!342850 (and (= (size!4456 (_1!3558 (v!16276 lt!239199))) lt!239166) (= (originalCharacters!1116 (_1!3558 (v!16276 lt!239199))) lt!239186) (= lt!239181 (tuple2!6589 (Token!1891 lt!239177 (rule!1817 (_1!3558 (v!16276 lt!239199))) lt!239166 lt!239186) lt!239188))))))

(declare-fun b!567330 () Bool)

(declare-fun res!243434 () Bool)

(assert (=> b!567330 (=> (not res!243434) (not e!342833))))

(declare-fun isEmpty!4038 (List!5603) Bool)

(assert (=> b!567330 (= res!243434 (not (isEmpty!4038 input!2705)))))

(declare-fun b!567331 () Bool)

(declare-fun tp!178761 () Bool)

(assert (=> b!567331 (= e!342849 (and tp_is_empty!3177 tp!178761))))

(declare-fun b!567332 () Bool)

(declare-fun res!243436 () Bool)

(assert (=> b!567332 (=> res!243436 e!342832)))

(assert (=> b!567332 (= res!243436 (not (isPrefix!711 lt!239186 input!2705)))))

(declare-fun b!567333 () Bool)

(declare-fun e!342831 () Bool)

(declare-fun e!342836 () Bool)

(assert (=> b!567333 (= e!342831 e!342836)))

(declare-fun res!243433 () Bool)

(assert (=> b!567333 (=> (not res!243433) (not e!342836))))

(assert (=> b!567333 (= res!243433 ((_ is Some!1427) lt!239199))))

(declare-fun maxPrefix!661 (LexerInterface!963 List!5604 List!5603) Option!1428)

(assert (=> b!567333 (= lt!239199 (maxPrefix!661 thiss!22590 rules!3103 input!2705))))

(declare-fun b!567334 () Bool)

(declare-fun Unit!10008 () Unit!10005)

(assert (=> b!567334 (= e!342841 Unit!10008)))

(declare-fun b!567335 () Bool)

(declare-fun e!342835 () Bool)

(assert (=> b!567335 (= e!342833 e!342835)))

(declare-fun res!243424 () Bool)

(assert (=> b!567335 (=> (not res!243424) (not e!342835))))

(assert (=> b!567335 (= res!243424 (= lt!239194 input!2705))))

(assert (=> b!567335 (= lt!239194 (list!2321 (charsOf!706 token!491)))))

(declare-fun b!567336 () Bool)

(declare-fun tp!178766 () Bool)

(declare-fun e!342845 () Bool)

(declare-fun inv!21 (TokenValue!1101) Bool)

(assert (=> b!567336 (= e!342834 (and (inv!21 (value!35561 token!491)) e!342845 tp!178766))))

(declare-fun b!567337 () Bool)

(declare-fun res!243422 () Bool)

(assert (=> b!567337 (=> res!243422 e!342832)))

(assert (=> b!567337 (= res!243422 (not (isPrefix!711 lt!239194 input!2705)))))

(declare-fun b!567338 () Bool)

(declare-fun get!2130 (Option!1428) tuple2!6588)

(assert (=> b!567338 (= e!342843 (= (_1!3558 (get!2130 lt!239199)) (_1!3558 (v!16276 lt!239199))))))

(declare-fun tp!178763 () Bool)

(declare-fun b!567339 () Bool)

(assert (=> b!567339 (= e!342845 (and tp!178763 (inv!7026 (tag!1339 (rule!1817 token!491))) (inv!7030 (transformation!1077 (rule!1817 token!491))) e!342839))))

(declare-fun b!567340 () Bool)

(declare-fun res!243428 () Bool)

(assert (=> b!567340 (=> res!243428 e!342832)))

(assert (=> b!567340 (= res!243428 (not (= lt!239170 input!2705)))))

(declare-fun b!567341 () Bool)

(assert (=> b!567341 (= e!342832 e!342829)))

(declare-fun res!243446 () Bool)

(assert (=> b!567341 (=> res!243446 e!342829)))

(declare-fun contains!1311 (List!5604 Rule!1954) Bool)

(assert (=> b!567341 (= res!243446 (not (contains!1311 rules!3103 (rule!1817 (_1!3558 (v!16276 lt!239199))))))))

(assert (=> b!567341 (= lt!239188 (_2!3558 (v!16276 lt!239199)))))

(declare-fun b!567342 () Bool)

(assert (=> b!567342 (= e!342836 e!342830)))

(declare-fun res!243438 () Bool)

(assert (=> b!567342 (=> (not res!243438) (not e!342830))))

(assert (=> b!567342 (= res!243438 (= lt!239200 lt!239168))))

(assert (=> b!567342 (= lt!239200 (++!1565 lt!239194 suffix!1342))))

(declare-fun b!567343 () Bool)

(declare-fun e!342842 () Bool)

(assert (=> b!567343 (= e!342835 e!342842)))

(declare-fun res!243420 () Bool)

(assert (=> b!567343 (=> (not res!243420) (not e!342842))))

(declare-fun lt!239191 () Option!1428)

(assert (=> b!567343 (= res!243420 (isDefined!1239 lt!239191))))

(assert (=> b!567343 (= lt!239191 (maxPrefix!661 thiss!22590 rules!3103 lt!239168))))

(assert (=> b!567343 (= lt!239168 (++!1565 input!2705 suffix!1342))))

(declare-fun b!567344 () Bool)

(declare-fun res!243437 () Bool)

(assert (=> b!567344 (=> res!243437 e!342832)))

(assert (=> b!567344 (= res!243437 (not (contains!1311 rules!3103 (rule!1817 token!491))))))

(declare-fun b!567345 () Bool)

(assert (=> b!567345 (= e!342829 (= lt!239171 (Some!1427 (tuple2!6589 lt!239197 lt!239188))))))

(declare-fun lt!239178 () Unit!10005)

(declare-fun lemmaSemiInverse!180 (TokenValueInjection!1970 BalanceConc!3596) Unit!10005)

(assert (=> b!567345 (= lt!239178 (lemmaSemiInverse!180 (transformation!1077 (rule!1817 (_1!3558 (v!16276 lt!239199)))) lt!239167))))

(assert (=> b!567346 (= e!342827 (and tp!178762 tp!178768))))

(declare-fun b!567347 () Bool)

(assert (=> b!567347 (= e!342842 e!342831)))

(declare-fun res!243426 () Bool)

(assert (=> b!567347 (=> (not res!243426) (not e!342831))))

(declare-fun lt!239180 () tuple2!6588)

(assert (=> b!567347 (= res!243426 (and (= (_1!3558 lt!239180) token!491) (= (_2!3558 lt!239180) suffix!1342)))))

(assert (=> b!567347 (= lt!239180 (get!2130 lt!239191))))

(assert (= (and start!52332 res!243431) b!567328))

(assert (= (and b!567328 res!243430) b!567312))

(assert (= (and b!567312 res!243427) b!567330))

(assert (= (and b!567330 res!243434) b!567335))

(assert (= (and b!567335 res!243424) b!567343))

(assert (= (and b!567343 res!243420) b!567347))

(assert (= (and b!567347 res!243426) b!567333))

(assert (= (and b!567333 res!243433) b!567342))

(assert (= (and b!567342 res!243438) b!567319))

(assert (= (and b!567319 c!106390) b!567317))

(assert (= (and b!567319 (not c!106390)) b!567334))

(assert (= (and b!567319 res!243443) b!567325))

(assert (= (and b!567325 res!243441) b!567329))

(assert (= (and b!567319 (not res!243432)) b!567323))

(assert (= (and b!567323 res!243421) b!567321))

(assert (= (and b!567321 res!243444) b!567315))

(assert (= (and b!567323 res!243439) b!567311))

(assert (= (and b!567311 (not res!243423)) b!567316))

(assert (= (and b!567316 res!243442) b!567338))

(assert (= (and b!567323 (not res!243429)) b!567344))

(assert (= (and b!567344 (not res!243437)) b!567320))

(assert (= (and b!567320 (not res!243445)) b!567337))

(assert (= (and b!567337 (not res!243422)) b!567327))

(assert (= (and b!567327 (not res!243440)) b!567340))

(assert (= (and b!567340 (not res!243428)) b!567332))

(assert (= (and b!567332 (not res!243436)) b!567322))

(assert (= (and b!567322 (not res!243435)) b!567341))

(assert (= (and b!567341 (not res!243446)) b!567318))

(assert (= (and b!567318 (not res!243425)) b!567345))

(assert (= (and start!52332 ((_ is Cons!5593) suffix!1342)) b!567314))

(assert (= b!567326 b!567346))

(assert (= b!567324 b!567326))

(assert (= (and start!52332 ((_ is Cons!5594) rules!3103)) b!567324))

(assert (= b!567339 b!567313))

(assert (= b!567336 b!567339))

(assert (= start!52332 b!567336))

(assert (= (and start!52332 ((_ is Cons!5593) input!2705)) b!567331))

(declare-fun m!821167 () Bool)

(assert (=> b!567321 m!821167))

(declare-fun m!821169 () Bool)

(assert (=> b!567328 m!821169))

(declare-fun m!821171 () Bool)

(assert (=> b!567318 m!821171))

(declare-fun m!821173 () Bool)

(assert (=> b!567319 m!821173))

(declare-fun m!821175 () Bool)

(assert (=> b!567319 m!821175))

(declare-fun m!821177 () Bool)

(assert (=> b!567319 m!821177))

(declare-fun m!821179 () Bool)

(assert (=> b!567319 m!821179))

(declare-fun m!821181 () Bool)

(assert (=> b!567319 m!821181))

(declare-fun m!821183 () Bool)

(assert (=> b!567319 m!821183))

(declare-fun m!821185 () Bool)

(assert (=> b!567319 m!821185))

(declare-fun m!821187 () Bool)

(assert (=> b!567319 m!821187))

(declare-fun m!821189 () Bool)

(assert (=> b!567319 m!821189))

(declare-fun m!821191 () Bool)

(assert (=> b!567319 m!821191))

(declare-fun m!821193 () Bool)

(assert (=> b!567319 m!821193))

(declare-fun m!821195 () Bool)

(assert (=> b!567319 m!821195))

(declare-fun m!821197 () Bool)

(assert (=> b!567319 m!821197))

(declare-fun m!821199 () Bool)

(assert (=> b!567319 m!821199))

(declare-fun m!821201 () Bool)

(assert (=> b!567319 m!821201))

(declare-fun m!821203 () Bool)

(assert (=> b!567319 m!821203))

(declare-fun m!821205 () Bool)

(assert (=> b!567319 m!821205))

(declare-fun m!821207 () Bool)

(assert (=> b!567319 m!821207))

(declare-fun m!821209 () Bool)

(assert (=> b!567319 m!821209))

(declare-fun m!821211 () Bool)

(assert (=> b!567319 m!821211))

(declare-fun m!821213 () Bool)

(assert (=> b!567319 m!821213))

(declare-fun m!821215 () Bool)

(assert (=> b!567319 m!821215))

(declare-fun m!821217 () Bool)

(assert (=> b!567319 m!821217))

(declare-fun m!821219 () Bool)

(assert (=> b!567319 m!821219))

(assert (=> b!567319 m!821173))

(declare-fun m!821221 () Bool)

(assert (=> b!567319 m!821221))

(declare-fun m!821223 () Bool)

(assert (=> b!567319 m!821223))

(declare-fun m!821225 () Bool)

(assert (=> b!567319 m!821225))

(declare-fun m!821227 () Bool)

(assert (=> b!567338 m!821227))

(declare-fun m!821229 () Bool)

(assert (=> b!567336 m!821229))

(declare-fun m!821231 () Bool)

(assert (=> start!52332 m!821231))

(declare-fun m!821233 () Bool)

(assert (=> b!567333 m!821233))

(declare-fun m!821235 () Bool)

(assert (=> b!567322 m!821235))

(declare-fun m!821237 () Bool)

(assert (=> b!567320 m!821237))

(declare-fun m!821239 () Bool)

(assert (=> b!567327 m!821239))

(declare-fun m!821241 () Bool)

(assert (=> b!567325 m!821241))

(declare-fun m!821243 () Bool)

(assert (=> b!567339 m!821243))

(declare-fun m!821245 () Bool)

(assert (=> b!567339 m!821245))

(declare-fun m!821247 () Bool)

(assert (=> b!567316 m!821247))

(declare-fun m!821249 () Bool)

(assert (=> b!567337 m!821249))

(declare-fun m!821251 () Bool)

(assert (=> b!567335 m!821251))

(assert (=> b!567335 m!821251))

(declare-fun m!821253 () Bool)

(assert (=> b!567335 m!821253))

(declare-fun m!821255 () Bool)

(assert (=> b!567326 m!821255))

(declare-fun m!821257 () Bool)

(assert (=> b!567326 m!821257))

(declare-fun m!821259 () Bool)

(assert (=> b!567312 m!821259))

(declare-fun m!821261 () Bool)

(assert (=> b!567341 m!821261))

(declare-fun m!821263 () Bool)

(assert (=> b!567323 m!821263))

(declare-fun m!821265 () Bool)

(assert (=> b!567323 m!821265))

(declare-fun m!821267 () Bool)

(assert (=> b!567323 m!821267))

(declare-fun m!821269 () Bool)

(assert (=> b!567323 m!821269))

(declare-fun m!821271 () Bool)

(assert (=> b!567323 m!821271))

(declare-fun m!821273 () Bool)

(assert (=> b!567323 m!821273))

(declare-fun m!821275 () Bool)

(assert (=> b!567323 m!821275))

(declare-fun m!821277 () Bool)

(assert (=> b!567323 m!821277))

(assert (=> b!567323 m!821263))

(declare-fun m!821279 () Bool)

(assert (=> b!567345 m!821279))

(declare-fun m!821281 () Bool)

(assert (=> b!567342 m!821281))

(declare-fun m!821283 () Bool)

(assert (=> b!567332 m!821283))

(declare-fun m!821285 () Bool)

(assert (=> b!567347 m!821285))

(declare-fun m!821287 () Bool)

(assert (=> b!567330 m!821287))

(declare-fun m!821289 () Bool)

(assert (=> b!567344 m!821289))

(declare-fun m!821291 () Bool)

(assert (=> b!567343 m!821291))

(declare-fun m!821293 () Bool)

(assert (=> b!567343 m!821293))

(declare-fun m!821295 () Bool)

(assert (=> b!567343 m!821295))

(check-sat (not b_next!15833) (not b!567332) (not b!567328) (not start!52332) (not b!567335) (not b!567343) (not b!567323) (not b!567318) (not b!567326) (not b!567341) (not b!567330) (not b!567342) (not b!567331) tp_is_empty!3177 (not b!567324) (not b!567344) b_and!55267 (not b!567338) (not b!567312) (not b!567345) (not b!567319) (not b!567327) (not b!567316) (not b_next!15831) (not b!567322) b_and!55269 (not b!567320) (not b!567333) (not b!567336) (not b!567347) (not b!567339) (not b!567337) (not b!567321) b_and!55271 b_and!55273 (not b_next!15829) (not b!567325) (not b!567314) (not b_next!15835))
(check-sat (not b_next!15833) b_and!55267 (not b_next!15831) b_and!55269 (not b_next!15829) (not b_next!15835) b_and!55271 b_and!55273)
