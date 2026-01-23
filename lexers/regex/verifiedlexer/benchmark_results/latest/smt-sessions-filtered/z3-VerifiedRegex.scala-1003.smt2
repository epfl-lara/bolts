; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50084 () Bool)

(assert start!50084)

(declare-fun b!542399 () Bool)

(declare-fun b_free!15001 () Bool)

(declare-fun b_next!15017 () Bool)

(assert (=> b!542399 (= b_free!15001 (not b_next!15017))))

(declare-fun tp!172590 () Bool)

(declare-fun b_and!52971 () Bool)

(assert (=> b!542399 (= tp!172590 b_and!52971)))

(declare-fun b_free!15003 () Bool)

(declare-fun b_next!15019 () Bool)

(assert (=> b!542399 (= b_free!15003 (not b_next!15019))))

(declare-fun tp!172585 () Bool)

(declare-fun b_and!52973 () Bool)

(assert (=> b!542399 (= tp!172585 b_and!52973)))

(declare-fun b!542414 () Bool)

(declare-fun b_free!15005 () Bool)

(declare-fun b_next!15021 () Bool)

(assert (=> b!542414 (= b_free!15005 (not b_next!15021))))

(declare-fun tp!172582 () Bool)

(declare-fun b_and!52975 () Bool)

(assert (=> b!542414 (= tp!172582 b_and!52975)))

(declare-fun b_free!15007 () Bool)

(declare-fun b_next!15023 () Bool)

(assert (=> b!542414 (= b_free!15007 (not b_next!15023))))

(declare-fun tp!172589 () Bool)

(declare-fun b_and!52977 () Bool)

(assert (=> b!542414 (= tp!172589 b_and!52977)))

(declare-fun b!542377 () Bool)

(declare-fun e!327599 () Bool)

(declare-fun e!327589 () Bool)

(assert (=> b!542377 (= e!327599 e!327589)))

(declare-fun res!230991 () Bool)

(assert (=> b!542377 (=> (not res!230991) (not e!327589))))

(declare-datatypes ((C!3576 0))(
  ( (C!3577 (val!2014 Int)) )
))
(declare-datatypes ((Regex!1327 0))(
  ( (ElementMatch!1327 (c!102550 C!3576)) (Concat!2344 (regOne!3166 Regex!1327) (regTwo!3166 Regex!1327)) (EmptyExpr!1327) (Star!1327 (reg!1656 Regex!1327)) (EmptyLang!1327) (Union!1327 (regOne!3167 Regex!1327) (regTwo!3167 Regex!1327)) )
))
(declare-datatypes ((List!5323 0))(
  ( (Nil!5313) (Cons!5313 (h!10714 (_ BitVec 16)) (t!74480 List!5323)) )
))
(declare-datatypes ((String!6828 0))(
  ( (String!6829 (value!33141 String)) )
))
(declare-datatypes ((List!5324 0))(
  ( (Nil!5314) (Cons!5314 (h!10715 C!3576) (t!74481 List!5324)) )
))
(declare-datatypes ((IArray!3421 0))(
  ( (IArray!3422 (innerList!1768 List!5324)) )
))
(declare-datatypes ((Conc!1710 0))(
  ( (Node!1710 (left!4415 Conc!1710) (right!4745 Conc!1710) (csize!3650 Int) (cheight!1921 Int)) (Leaf!2714 (xs!4347 IArray!3421) (csize!3651 Int)) (Empty!1710) )
))
(declare-datatypes ((BalanceConc!3428 0))(
  ( (BalanceConc!3429 (c!102551 Conc!1710)) )
))
(declare-datatypes ((TokenValue!1017 0))(
  ( (FloatLiteralValue!2034 (text!7564 List!5323)) (TokenValueExt!1016 (__x!3932 Int)) (Broken!5085 (value!33142 List!5323)) (Object!1026) (End!1017) (Def!1017) (Underscore!1017) (Match!1017) (Else!1017) (Error!1017) (Case!1017) (If!1017) (Extends!1017) (Abstract!1017) (Class!1017) (Val!1017) (DelimiterValue!2034 (del!1077 List!5323)) (KeywordValue!1023 (value!33143 List!5323)) (CommentValue!2034 (value!33144 List!5323)) (WhitespaceValue!2034 (value!33145 List!5323)) (IndentationValue!1017 (value!33146 List!5323)) (String!6830) (Int32!1017) (Broken!5086 (value!33147 List!5323)) (Boolean!1018) (Unit!9288) (OperatorValue!1020 (op!1077 List!5323)) (IdentifierValue!2034 (value!33148 List!5323)) (IdentifierValue!2035 (value!33149 List!5323)) (WhitespaceValue!2035 (value!33150 List!5323)) (True!2034) (False!2034) (Broken!5087 (value!33151 List!5323)) (Broken!5088 (value!33152 List!5323)) (True!2035) (RightBrace!1017) (RightBracket!1017) (Colon!1017) (Null!1017) (Comma!1017) (LeftBracket!1017) (False!2035) (LeftBrace!1017) (ImaginaryLiteralValue!1017 (text!7565 List!5323)) (StringLiteralValue!3051 (value!33153 List!5323)) (EOFValue!1017 (value!33154 List!5323)) (IdentValue!1017 (value!33155 List!5323)) (DelimiterValue!2035 (value!33156 List!5323)) (DedentValue!1017 (value!33157 List!5323)) (NewLineValue!1017 (value!33158 List!5323)) (IntegerValue!3051 (value!33159 (_ BitVec 32)) (text!7566 List!5323)) (IntegerValue!3052 (value!33160 Int) (text!7567 List!5323)) (Times!1017) (Or!1017) (Equal!1017) (Minus!1017) (Broken!5089 (value!33161 List!5323)) (And!1017) (Div!1017) (LessEqual!1017) (Mod!1017) (Concat!2345) (Not!1017) (Plus!1017) (SpaceValue!1017 (value!33162 List!5323)) (IntegerValue!3053 (value!33163 Int) (text!7568 List!5323)) (StringLiteralValue!3052 (text!7569 List!5323)) (FloatLiteralValue!2035 (text!7570 List!5323)) (BytesLiteralValue!1017 (value!33164 List!5323)) (CommentValue!2035 (value!33165 List!5323)) (StringLiteralValue!3053 (value!33166 List!5323)) (ErrorTokenValue!1017 (msg!1078 List!5323)) )
))
(declare-datatypes ((TokenValueInjection!1802 0))(
  ( (TokenValueInjection!1803 (toValue!1840 Int) (toChars!1699 Int)) )
))
(declare-datatypes ((Rule!1786 0))(
  ( (Rule!1787 (regex!993 Regex!1327) (tag!1255 String!6828) (isSeparator!993 Bool) (transformation!993 TokenValueInjection!1802)) )
))
(declare-datatypes ((Token!1722 0))(
  ( (Token!1723 (value!33167 TokenValue!1017) (rule!1705 Rule!1786) (size!4266 Int) (originalCharacters!1032 List!5324)) )
))
(declare-datatypes ((tuple2!6364 0))(
  ( (tuple2!6365 (_1!3446 Token!1722) (_2!3446 List!5324)) )
))
(declare-datatypes ((Option!1343 0))(
  ( (None!1342) (Some!1342 (v!16155 tuple2!6364)) )
))
(declare-fun lt!226188 () Option!1343)

(declare-fun isDefined!1155 (Option!1343) Bool)

(assert (=> b!542377 (= res!230991 (isDefined!1155 lt!226188))))

(declare-fun b!542379 () Bool)

(declare-fun e!327580 () Bool)

(declare-fun e!327593 () Bool)

(assert (=> b!542379 (= e!327580 e!327593)))

(declare-fun res!230987 () Bool)

(assert (=> b!542379 (=> (not res!230987) (not e!327593))))

(declare-fun lt!226157 () Option!1343)

(assert (=> b!542379 (= res!230987 (isDefined!1155 lt!226157))))

(declare-datatypes ((List!5325 0))(
  ( (Nil!5315) (Cons!5315 (h!10716 Rule!1786) (t!74482 List!5325)) )
))
(declare-fun rules!3103 () List!5325)

(declare-datatypes ((LexerInterface!879 0))(
  ( (LexerInterfaceExt!876 (__x!3933 Int)) (Lexer!877) )
))
(declare-fun thiss!22590 () LexerInterface!879)

(declare-fun lt!226180 () List!5324)

(declare-fun maxPrefix!577 (LexerInterface!879 List!5325 List!5324) Option!1343)

(assert (=> b!542379 (= lt!226157 (maxPrefix!577 thiss!22590 rules!3103 lt!226180))))

(declare-fun input!2705 () List!5324)

(declare-fun suffix!1342 () List!5324)

(declare-fun ++!1481 (List!5324 List!5324) List!5324)

(assert (=> b!542379 (= lt!226180 (++!1481 input!2705 suffix!1342))))

(declare-fun lt!226177 () List!5324)

(declare-fun b!542380 () Bool)

(declare-fun lt!226161 () tuple2!6364)

(declare-fun e!327578 () Bool)

(declare-fun lt!226164 () List!5324)

(declare-fun lt!226184 () Int)

(declare-fun lt!226172 () TokenValue!1017)

(assert (=> b!542380 (= e!327578 (and (= (size!4266 (_1!3446 (v!16155 lt!226188))) lt!226184) (= (originalCharacters!1032 (_1!3446 (v!16155 lt!226188))) lt!226164) (= lt!226161 (tuple2!6365 (Token!1723 lt!226172 (rule!1705 (_1!3446 (v!16155 lt!226188))) lt!226184 lt!226164) lt!226177))))))

(declare-fun b!542381 () Bool)

(declare-fun e!327601 () Bool)

(assert (=> b!542381 (= e!327601 true)))

(declare-fun lt!226162 () Bool)

(declare-fun rulesValidInductive!346 (LexerInterface!879 List!5325) Bool)

(assert (=> b!542381 (= lt!226162 (rulesValidInductive!346 thiss!22590 rules!3103))))

(declare-fun b!542382 () Bool)

(declare-fun res!230978 () Bool)

(declare-fun e!327590 () Bool)

(assert (=> b!542382 (=> (not res!230978) (not e!327590))))

(declare-fun rulesInvariant!842 (LexerInterface!879 List!5325) Bool)

(assert (=> b!542382 (= res!230978 (rulesInvariant!842 thiss!22590 rules!3103))))

(declare-fun b!542383 () Bool)

(declare-fun e!327588 () Bool)

(declare-fun e!327583 () Bool)

(assert (=> b!542383 (= e!327588 e!327583)))

(declare-fun res!230986 () Bool)

(assert (=> b!542383 (=> res!230986 e!327583)))

(declare-fun lt!226171 () Int)

(assert (=> b!542383 (= res!230986 (>= lt!226184 lt!226171))))

(declare-fun e!327585 () Bool)

(assert (=> b!542383 e!327585))

(declare-fun res!230969 () Bool)

(assert (=> b!542383 (=> (not res!230969) (not e!327585))))

(declare-fun lt!226178 () TokenValue!1017)

(declare-fun token!491 () Token!1722)

(declare-fun lt!226167 () List!5324)

(declare-fun maxPrefixOneRule!292 (LexerInterface!879 Rule!1786 List!5324) Option!1343)

(assert (=> b!542383 (= res!230969 (= (maxPrefixOneRule!292 thiss!22590 (rule!1705 token!491) lt!226180) (Some!1342 (tuple2!6365 (Token!1723 lt!226178 (rule!1705 token!491) lt!226171 lt!226167) suffix!1342))))))

(declare-datatypes ((Unit!9289 0))(
  ( (Unit!9290) )
))
(declare-fun lt!226181 () Unit!9289)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!44 (LexerInterface!879 List!5325 List!5324 List!5324 List!5324 Rule!1786) Unit!9289)

(assert (=> b!542383 (= lt!226181 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!44 thiss!22590 rules!3103 lt!226167 lt!226180 suffix!1342 (rule!1705 token!491)))))

(declare-fun lt!226158 () Option!1343)

(declare-fun lt!226189 () Token!1722)

(assert (=> b!542383 (= lt!226158 (Some!1342 (tuple2!6365 lt!226189 (_2!3446 (v!16155 lt!226188)))))))

(assert (=> b!542383 (= lt!226158 (maxPrefixOneRule!292 thiss!22590 (rule!1705 (_1!3446 (v!16155 lt!226188))) input!2705))))

(declare-fun lt!226179 () Unit!9289)

(assert (=> b!542383 (= lt!226179 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!44 thiss!22590 rules!3103 lt!226164 input!2705 (_2!3446 (v!16155 lt!226188)) (rule!1705 (_1!3446 (v!16155 lt!226188)))))))

(declare-fun e!327584 () Bool)

(assert (=> b!542383 e!327584))

(declare-fun res!230980 () Bool)

(assert (=> b!542383 (=> (not res!230980) (not e!327584))))

(assert (=> b!542383 (= res!230980 (= (value!33167 token!491) lt!226178))))

(declare-fun apply!1268 (TokenValueInjection!1802 BalanceConc!3428) TokenValue!1017)

(declare-fun seqFromList!1191 (List!5324) BalanceConc!3428)

(assert (=> b!542383 (= lt!226178 (apply!1268 (transformation!993 (rule!1705 token!491)) (seqFromList!1191 lt!226167)))))

(declare-fun lt!226169 () List!5324)

(assert (=> b!542383 (= suffix!1342 lt!226169)))

(declare-fun lt!226156 () Unit!9289)

(declare-fun lemmaSamePrefixThenSameSuffix!362 (List!5324 List!5324 List!5324 List!5324 List!5324) Unit!9289)

(assert (=> b!542383 (= lt!226156 (lemmaSamePrefixThenSameSuffix!362 lt!226167 suffix!1342 lt!226167 lt!226169 lt!226180))))

(declare-fun getSuffix!158 (List!5324 List!5324) List!5324)

(assert (=> b!542383 (= lt!226169 (getSuffix!158 lt!226180 lt!226167))))

(declare-fun b!542384 () Bool)

(declare-fun res!230988 () Bool)

(assert (=> b!542384 (=> res!230988 e!327583)))

(declare-fun contains!1237 (List!5325 Rule!1786) Bool)

(assert (=> b!542384 (= res!230988 (not (contains!1237 rules!3103 (rule!1705 token!491))))))

(declare-fun b!542385 () Bool)

(declare-fun res!230974 () Bool)

(assert (=> b!542385 (=> res!230974 e!327583)))

(declare-fun lt!226185 () List!5324)

(assert (=> b!542385 (= res!230974 (not (= lt!226185 input!2705)))))

(declare-fun b!542386 () Bool)

(declare-fun e!327598 () Bool)

(assert (=> b!542386 (= e!327598 (not e!327588))))

(declare-fun res!230972 () Bool)

(assert (=> b!542386 (=> res!230972 e!327588)))

(declare-fun lt!226186 () List!5324)

(declare-fun isPrefix!635 (List!5324 List!5324) Bool)

(assert (=> b!542386 (= res!230972 (not (isPrefix!635 input!2705 lt!226186)))))

(assert (=> b!542386 (isPrefix!635 lt!226167 lt!226186)))

(declare-fun lt!226176 () Unit!9289)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!486 (List!5324 List!5324) Unit!9289)

(assert (=> b!542386 (= lt!226176 (lemmaConcatTwoListThenFirstIsPrefix!486 lt!226167 suffix!1342))))

(assert (=> b!542386 (isPrefix!635 input!2705 lt!226180)))

(declare-fun lt!226160 () Unit!9289)

(assert (=> b!542386 (= lt!226160 (lemmaConcatTwoListThenFirstIsPrefix!486 input!2705 suffix!1342))))

(assert (=> b!542386 (= lt!226189 (Token!1723 lt!226172 (rule!1705 (_1!3446 (v!16155 lt!226188))) lt!226184 lt!226164))))

(assert (=> b!542386 e!327578))

(declare-fun res!230993 () Bool)

(assert (=> b!542386 (=> (not res!230993) (not e!327578))))

(assert (=> b!542386 (= res!230993 (= (value!33167 (_1!3446 (v!16155 lt!226188))) lt!226172))))

(declare-fun lt!226175 () BalanceConc!3428)

(assert (=> b!542386 (= lt!226172 (apply!1268 (transformation!993 (rule!1705 (_1!3446 (v!16155 lt!226188)))) lt!226175))))

(assert (=> b!542386 (= lt!226175 (seqFromList!1191 lt!226164))))

(declare-fun lt!226190 () Unit!9289)

(declare-fun lemmaInv!141 (TokenValueInjection!1802) Unit!9289)

(assert (=> b!542386 (= lt!226190 (lemmaInv!141 (transformation!993 (rule!1705 token!491))))))

(declare-fun lt!226170 () Unit!9289)

(assert (=> b!542386 (= lt!226170 (lemmaInv!141 (transformation!993 (rule!1705 (_1!3446 (v!16155 lt!226188))))))))

(declare-fun ruleValid!213 (LexerInterface!879 Rule!1786) Bool)

(assert (=> b!542386 (ruleValid!213 thiss!22590 (rule!1705 token!491))))

(declare-fun lt!226159 () Unit!9289)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!72 (LexerInterface!879 Rule!1786 List!5325) Unit!9289)

(assert (=> b!542386 (= lt!226159 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!72 thiss!22590 (rule!1705 token!491) rules!3103))))

(assert (=> b!542386 (ruleValid!213 thiss!22590 (rule!1705 (_1!3446 (v!16155 lt!226188))))))

(declare-fun lt!226166 () Unit!9289)

(assert (=> b!542386 (= lt!226166 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!72 thiss!22590 (rule!1705 (_1!3446 (v!16155 lt!226188))) rules!3103))))

(assert (=> b!542386 (isPrefix!635 input!2705 input!2705)))

(declare-fun lt!226183 () Unit!9289)

(declare-fun lemmaIsPrefixRefl!375 (List!5324 List!5324) Unit!9289)

(assert (=> b!542386 (= lt!226183 (lemmaIsPrefixRefl!375 input!2705 input!2705))))

(assert (=> b!542386 (= (_2!3446 (v!16155 lt!226188)) lt!226177)))

(declare-fun lt!226182 () Unit!9289)

(assert (=> b!542386 (= lt!226182 (lemmaSamePrefixThenSameSuffix!362 lt!226164 (_2!3446 (v!16155 lt!226188)) lt!226164 lt!226177 input!2705))))

(assert (=> b!542386 (= lt!226177 (getSuffix!158 input!2705 lt!226164))))

(assert (=> b!542386 (isPrefix!635 lt!226164 lt!226185)))

(assert (=> b!542386 (= lt!226185 (++!1481 lt!226164 (_2!3446 (v!16155 lt!226188))))))

(declare-fun lt!226168 () Unit!9289)

(assert (=> b!542386 (= lt!226168 (lemmaConcatTwoListThenFirstIsPrefix!486 lt!226164 (_2!3446 (v!16155 lt!226188))))))

(declare-fun lt!226174 () Unit!9289)

(declare-fun lemmaCharactersSize!72 (Token!1722) Unit!9289)

(assert (=> b!542386 (= lt!226174 (lemmaCharactersSize!72 token!491))))

(declare-fun lt!226165 () Unit!9289)

(assert (=> b!542386 (= lt!226165 (lemmaCharactersSize!72 (_1!3446 (v!16155 lt!226188))))))

(declare-fun lt!226173 () Unit!9289)

(declare-fun e!327595 () Unit!9289)

(assert (=> b!542386 (= lt!226173 e!327595)))

(declare-fun c!102549 () Bool)

(assert (=> b!542386 (= c!102549 (> lt!226184 lt!226171))))

(declare-fun size!4267 (List!5324) Int)

(assert (=> b!542386 (= lt!226171 (size!4267 lt!226167))))

(assert (=> b!542386 (= lt!226184 (size!4267 lt!226164))))

(declare-fun list!2205 (BalanceConc!3428) List!5324)

(declare-fun charsOf!622 (Token!1722) BalanceConc!3428)

(assert (=> b!542386 (= lt!226164 (list!2205 (charsOf!622 (_1!3446 (v!16155 lt!226188)))))))

(assert (=> b!542386 (= lt!226188 (Some!1342 lt!226161))))

(assert (=> b!542386 (= lt!226161 (tuple2!6365 (_1!3446 (v!16155 lt!226188)) (_2!3446 (v!16155 lt!226188))))))

(declare-fun lt!226187 () Unit!9289)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!78 (List!5324 List!5324 List!5324 List!5324) Unit!9289)

(assert (=> b!542386 (= lt!226187 (lemmaConcatSameAndSameSizesThenSameLists!78 lt!226167 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!542387 () Bool)

(declare-fun res!230983 () Bool)

(assert (=> b!542387 (=> res!230983 e!327583)))

(assert (=> b!542387 (= res!230983 (not (= (++!1481 lt!226164 lt!226177) input!2705)))))

(declare-fun b!542388 () Bool)

(declare-fun res!230984 () Bool)

(assert (=> b!542388 (=> (not res!230984) (not e!327584))))

(assert (=> b!542388 (= res!230984 (= (size!4266 token!491) (size!4267 (originalCharacters!1032 token!491))))))

(declare-fun b!542389 () Bool)

(declare-fun e!327591 () Bool)

(assert (=> b!542389 (= e!327593 e!327591)))

(declare-fun res!230990 () Bool)

(assert (=> b!542389 (=> (not res!230990) (not e!327591))))

(declare-fun lt!226191 () tuple2!6364)

(assert (=> b!542389 (= res!230990 (and (= (_1!3446 lt!226191) token!491) (= (_2!3446 lt!226191) suffix!1342)))))

(declare-fun get!2004 (Option!1343) tuple2!6364)

(assert (=> b!542389 (= lt!226191 (get!2004 lt!226157))))

(declare-fun b!542390 () Bool)

(assert (=> b!542390 (= e!327585 e!327599)))

(declare-fun res!230968 () Bool)

(assert (=> b!542390 (=> res!230968 e!327599)))

(assert (=> b!542390 (= res!230968 (>= lt!226184 lt!226171))))

(declare-fun b!542391 () Bool)

(declare-fun res!230975 () Bool)

(declare-fun e!327597 () Bool)

(assert (=> b!542391 (=> res!230975 e!327597)))

(declare-fun matchR!486 (Regex!1327 List!5324) Bool)

(assert (=> b!542391 (= res!230975 (not (matchR!486 (regex!993 (rule!1705 (_1!3446 (v!16155 lt!226188)))) lt!226164)))))

(declare-fun res!230967 () Bool)

(assert (=> start!50084 (=> (not res!230967) (not e!327590))))

(get-info :version)

(assert (=> start!50084 (= res!230967 ((_ is Lexer!877) thiss!22590))))

(assert (=> start!50084 e!327590))

(declare-fun e!327600 () Bool)

(assert (=> start!50084 e!327600))

(declare-fun e!327581 () Bool)

(assert (=> start!50084 e!327581))

(declare-fun e!327579 () Bool)

(declare-fun inv!6667 (Token!1722) Bool)

(assert (=> start!50084 (and (inv!6667 token!491) e!327579)))

(assert (=> start!50084 true))

(declare-fun e!327596 () Bool)

(assert (=> start!50084 e!327596))

(declare-fun b!542378 () Bool)

(declare-fun res!230979 () Bool)

(assert (=> b!542378 (=> res!230979 e!327583)))

(assert (=> b!542378 (= res!230979 (not (isPrefix!635 lt!226167 input!2705)))))

(declare-fun b!542392 () Bool)

(declare-fun res!230992 () Bool)

(assert (=> b!542392 (=> (not res!230992) (not e!327590))))

(declare-fun isEmpty!3838 (List!5324) Bool)

(assert (=> b!542392 (= res!230992 (not (isEmpty!3838 input!2705)))))

(declare-fun b!542393 () Bool)

(declare-fun res!230970 () Bool)

(assert (=> b!542393 (=> res!230970 e!327583)))

(assert (=> b!542393 (= res!230970 (not (isPrefix!635 lt!226164 input!2705)))))

(declare-fun b!542394 () Bool)

(declare-fun e!327602 () Bool)

(assert (=> b!542394 (= e!327591 e!327602)))

(declare-fun res!230982 () Bool)

(assert (=> b!542394 (=> (not res!230982) (not e!327602))))

(assert (=> b!542394 (= res!230982 ((_ is Some!1342) lt!226188))))

(assert (=> b!542394 (= lt!226188 (maxPrefix!577 thiss!22590 rules!3103 input!2705))))

(declare-fun b!542395 () Bool)

(declare-fun tp_is_empty!3009 () Bool)

(declare-fun tp!172586 () Bool)

(assert (=> b!542395 (= e!327596 (and tp_is_empty!3009 tp!172586))))

(declare-fun b!542396 () Bool)

(declare-fun Unit!9291 () Unit!9289)

(assert (=> b!542396 (= e!327595 Unit!9291)))

(declare-fun b!542397 () Bool)

(assert (=> b!542397 (= e!327584 (and (= (size!4266 token!491) lt!226171) (= (originalCharacters!1032 token!491) lt!226167) (= (tuple2!6365 token!491 suffix!1342) (tuple2!6365 (Token!1723 lt!226178 (rule!1705 token!491) lt!226171 lt!226167) lt!226169))))))

(declare-fun b!542398 () Bool)

(assert (=> b!542398 (= e!327590 e!327580)))

(declare-fun res!230973 () Bool)

(assert (=> b!542398 (=> (not res!230973) (not e!327580))))

(assert (=> b!542398 (= res!230973 (= lt!226167 input!2705))))

(assert (=> b!542398 (= lt!226167 (list!2205 (charsOf!622 token!491)))))

(declare-fun e!327592 () Bool)

(assert (=> b!542399 (= e!327592 (and tp!172590 tp!172585))))

(declare-fun b!542400 () Bool)

(declare-fun res!230994 () Bool)

(assert (=> b!542400 (=> (not res!230994) (not e!327578))))

(assert (=> b!542400 (= res!230994 (= (size!4266 (_1!3446 (v!16155 lt!226188))) (size!4267 (originalCharacters!1032 (_1!3446 (v!16155 lt!226188))))))))

(declare-fun b!542401 () Bool)

(declare-fun e!327594 () Bool)

(declare-fun tp!172584 () Bool)

(declare-fun e!327576 () Bool)

(declare-fun inv!6664 (String!6828) Bool)

(declare-fun inv!6668 (TokenValueInjection!1802) Bool)

(assert (=> b!542401 (= e!327576 (and tp!172584 (inv!6664 (tag!1255 (rule!1705 token!491))) (inv!6668 (transformation!993 (rule!1705 token!491))) e!327594))))

(declare-fun b!542402 () Bool)

(declare-fun e!327586 () Bool)

(declare-fun tp!172581 () Bool)

(assert (=> b!542402 (= e!327581 (and e!327586 tp!172581))))

(declare-fun b!542403 () Bool)

(declare-fun res!230966 () Bool)

(assert (=> b!542403 (=> res!230966 e!327583)))

(assert (=> b!542403 (= res!230966 (not (= (getSuffix!158 input!2705 input!2705) Nil!5314)))))

(declare-fun b!542404 () Bool)

(assert (=> b!542404 (= e!327597 e!327601)))

(declare-fun res!230981 () Bool)

(assert (=> b!542404 (=> res!230981 e!327601)))

(assert (=> b!542404 (= res!230981 (not (= lt!226158 (Some!1342 (tuple2!6365 lt!226189 lt!226177)))))))

(declare-fun lt!226163 () Unit!9289)

(declare-fun lemmaSemiInverse!122 (TokenValueInjection!1802 BalanceConc!3428) Unit!9289)

(assert (=> b!542404 (= lt!226163 (lemmaSemiInverse!122 (transformation!993 (rule!1705 (_1!3446 (v!16155 lt!226188)))) lt!226175))))

(declare-fun b!542405 () Bool)

(declare-fun tp!172587 () Bool)

(assert (=> b!542405 (= e!327586 (and tp!172587 (inv!6664 (tag!1255 (h!10716 rules!3103))) (inv!6668 (transformation!993 (h!10716 rules!3103))) e!327592))))

(declare-fun b!542406 () Bool)

(declare-fun res!230977 () Bool)

(assert (=> b!542406 (=> res!230977 e!327583)))

(assert (=> b!542406 (= res!230977 (not (matchR!486 (regex!993 (rule!1705 token!491)) input!2705)))))

(declare-fun b!542407 () Bool)

(assert (=> b!542407 (= e!327583 e!327597)))

(declare-fun res!230976 () Bool)

(assert (=> b!542407 (=> res!230976 e!327597)))

(assert (=> b!542407 (= res!230976 (not (contains!1237 rules!3103 (rule!1705 (_1!3446 (v!16155 lt!226188))))))))

(assert (=> b!542407 (= lt!226177 (_2!3446 (v!16155 lt!226188)))))

(declare-fun b!542408 () Bool)

(declare-fun res!230989 () Bool)

(assert (=> b!542408 (=> (not res!230989) (not e!327590))))

(declare-fun isEmpty!3839 (List!5325) Bool)

(assert (=> b!542408 (= res!230989 (not (isEmpty!3839 rules!3103)))))

(declare-fun b!542409 () Bool)

(assert (=> b!542409 (= e!327589 (= (_1!3446 (get!2004 lt!226188)) (_1!3446 (v!16155 lt!226188))))))

(declare-fun b!542410 () Bool)

(declare-fun tp!172588 () Bool)

(assert (=> b!542410 (= e!327600 (and tp_is_empty!3009 tp!172588))))

(declare-fun b!542411 () Bool)

(declare-fun Unit!9292 () Unit!9289)

(assert (=> b!542411 (= e!327595 Unit!9292)))

(assert (=> b!542411 false))

(declare-fun b!542412 () Bool)

(assert (=> b!542412 (= e!327602 e!327598)))

(declare-fun res!230971 () Bool)

(assert (=> b!542412 (=> (not res!230971) (not e!327598))))

(assert (=> b!542412 (= res!230971 (= lt!226186 lt!226180))))

(assert (=> b!542412 (= lt!226186 (++!1481 lt!226167 suffix!1342))))

(declare-fun b!542413 () Bool)

(declare-fun tp!172583 () Bool)

(declare-fun inv!21 (TokenValue!1017) Bool)

(assert (=> b!542413 (= e!327579 (and (inv!21 (value!33167 token!491)) e!327576 tp!172583))))

(assert (=> b!542414 (= e!327594 (and tp!172582 tp!172589))))

(declare-fun b!542415 () Bool)

(declare-fun res!230985 () Bool)

(assert (=> b!542415 (=> res!230985 e!327601)))

(assert (=> b!542415 (= res!230985 (<= (size!4267 input!2705) lt!226184))))

(assert (= (and start!50084 res!230967) b!542408))

(assert (= (and b!542408 res!230989) b!542382))

(assert (= (and b!542382 res!230978) b!542392))

(assert (= (and b!542392 res!230992) b!542398))

(assert (= (and b!542398 res!230973) b!542379))

(assert (= (and b!542379 res!230987) b!542389))

(assert (= (and b!542389 res!230990) b!542394))

(assert (= (and b!542394 res!230982) b!542412))

(assert (= (and b!542412 res!230971) b!542386))

(assert (= (and b!542386 c!102549) b!542411))

(assert (= (and b!542386 (not c!102549)) b!542396))

(assert (= (and b!542386 res!230993) b!542400))

(assert (= (and b!542400 res!230994) b!542380))

(assert (= (and b!542386 (not res!230972)) b!542383))

(assert (= (and b!542383 res!230980) b!542388))

(assert (= (and b!542388 res!230984) b!542397))

(assert (= (and b!542383 res!230969) b!542390))

(assert (= (and b!542390 (not res!230968)) b!542377))

(assert (= (and b!542377 res!230991) b!542409))

(assert (= (and b!542383 (not res!230986)) b!542384))

(assert (= (and b!542384 (not res!230988)) b!542406))

(assert (= (and b!542406 (not res!230977)) b!542378))

(assert (= (and b!542378 (not res!230979)) b!542403))

(assert (= (and b!542403 (not res!230966)) b!542385))

(assert (= (and b!542385 (not res!230974)) b!542393))

(assert (= (and b!542393 (not res!230970)) b!542387))

(assert (= (and b!542387 (not res!230983)) b!542407))

(assert (= (and b!542407 (not res!230976)) b!542391))

(assert (= (and b!542391 (not res!230975)) b!542404))

(assert (= (and b!542404 (not res!230981)) b!542415))

(assert (= (and b!542415 (not res!230985)) b!542381))

(assert (= (and start!50084 ((_ is Cons!5314) suffix!1342)) b!542410))

(assert (= b!542405 b!542399))

(assert (= b!542402 b!542405))

(assert (= (and start!50084 ((_ is Cons!5315) rules!3103)) b!542402))

(assert (= b!542401 b!542414))

(assert (= b!542413 b!542401))

(assert (= start!50084 b!542413))

(assert (= (and start!50084 ((_ is Cons!5314) input!2705)) b!542395))

(declare-fun m!790269 () Bool)

(assert (=> b!542383 m!790269))

(assert (=> b!542383 m!790269))

(declare-fun m!790271 () Bool)

(assert (=> b!542383 m!790271))

(declare-fun m!790273 () Bool)

(assert (=> b!542383 m!790273))

(declare-fun m!790275 () Bool)

(assert (=> b!542383 m!790275))

(declare-fun m!790277 () Bool)

(assert (=> b!542383 m!790277))

(declare-fun m!790279 () Bool)

(assert (=> b!542383 m!790279))

(declare-fun m!790281 () Bool)

(assert (=> b!542383 m!790281))

(declare-fun m!790283 () Bool)

(assert (=> b!542383 m!790283))

(declare-fun m!790285 () Bool)

(assert (=> b!542406 m!790285))

(declare-fun m!790287 () Bool)

(assert (=> b!542382 m!790287))

(declare-fun m!790289 () Bool)

(assert (=> b!542404 m!790289))

(declare-fun m!790291 () Bool)

(assert (=> b!542401 m!790291))

(declare-fun m!790293 () Bool)

(assert (=> b!542401 m!790293))

(declare-fun m!790295 () Bool)

(assert (=> b!542393 m!790295))

(declare-fun m!790297 () Bool)

(assert (=> b!542388 m!790297))

(declare-fun m!790299 () Bool)

(assert (=> b!542386 m!790299))

(declare-fun m!790301 () Bool)

(assert (=> b!542386 m!790301))

(declare-fun m!790303 () Bool)

(assert (=> b!542386 m!790303))

(declare-fun m!790305 () Bool)

(assert (=> b!542386 m!790305))

(declare-fun m!790307 () Bool)

(assert (=> b!542386 m!790307))

(declare-fun m!790309 () Bool)

(assert (=> b!542386 m!790309))

(declare-fun m!790311 () Bool)

(assert (=> b!542386 m!790311))

(declare-fun m!790313 () Bool)

(assert (=> b!542386 m!790313))

(declare-fun m!790315 () Bool)

(assert (=> b!542386 m!790315))

(declare-fun m!790317 () Bool)

(assert (=> b!542386 m!790317))

(declare-fun m!790319 () Bool)

(assert (=> b!542386 m!790319))

(declare-fun m!790321 () Bool)

(assert (=> b!542386 m!790321))

(declare-fun m!790323 () Bool)

(assert (=> b!542386 m!790323))

(declare-fun m!790325 () Bool)

(assert (=> b!542386 m!790325))

(declare-fun m!790327 () Bool)

(assert (=> b!542386 m!790327))

(declare-fun m!790329 () Bool)

(assert (=> b!542386 m!790329))

(declare-fun m!790331 () Bool)

(assert (=> b!542386 m!790331))

(declare-fun m!790333 () Bool)

(assert (=> b!542386 m!790333))

(declare-fun m!790335 () Bool)

(assert (=> b!542386 m!790335))

(declare-fun m!790337 () Bool)

(assert (=> b!542386 m!790337))

(declare-fun m!790339 () Bool)

(assert (=> b!542386 m!790339))

(declare-fun m!790341 () Bool)

(assert (=> b!542386 m!790341))

(declare-fun m!790343 () Bool)

(assert (=> b!542386 m!790343))

(declare-fun m!790345 () Bool)

(assert (=> b!542386 m!790345))

(declare-fun m!790347 () Bool)

(assert (=> b!542386 m!790347))

(assert (=> b!542386 m!790311))

(declare-fun m!790349 () Bool)

(assert (=> b!542386 m!790349))

(declare-fun m!790351 () Bool)

(assert (=> b!542386 m!790351))

(declare-fun m!790353 () Bool)

(assert (=> b!542412 m!790353))

(declare-fun m!790355 () Bool)

(assert (=> b!542391 m!790355))

(declare-fun m!790357 () Bool)

(assert (=> b!542378 m!790357))

(declare-fun m!790359 () Bool)

(assert (=> b!542384 m!790359))

(declare-fun m!790361 () Bool)

(assert (=> b!542407 m!790361))

(declare-fun m!790363 () Bool)

(assert (=> b!542377 m!790363))

(declare-fun m!790365 () Bool)

(assert (=> b!542392 m!790365))

(declare-fun m!790367 () Bool)

(assert (=> b!542413 m!790367))

(declare-fun m!790369 () Bool)

(assert (=> b!542405 m!790369))

(declare-fun m!790371 () Bool)

(assert (=> b!542405 m!790371))

(declare-fun m!790373 () Bool)

(assert (=> b!542398 m!790373))

(assert (=> b!542398 m!790373))

(declare-fun m!790375 () Bool)

(assert (=> b!542398 m!790375))

(declare-fun m!790377 () Bool)

(assert (=> b!542415 m!790377))

(declare-fun m!790379 () Bool)

(assert (=> b!542403 m!790379))

(declare-fun m!790381 () Bool)

(assert (=> b!542394 m!790381))

(declare-fun m!790383 () Bool)

(assert (=> b!542389 m!790383))

(declare-fun m!790385 () Bool)

(assert (=> b!542408 m!790385))

(declare-fun m!790387 () Bool)

(assert (=> start!50084 m!790387))

(declare-fun m!790389 () Bool)

(assert (=> b!542400 m!790389))

(declare-fun m!790391 () Bool)

(assert (=> b!542387 m!790391))

(declare-fun m!790393 () Bool)

(assert (=> b!542381 m!790393))

(declare-fun m!790395 () Bool)

(assert (=> b!542379 m!790395))

(declare-fun m!790397 () Bool)

(assert (=> b!542379 m!790397))

(declare-fun m!790399 () Bool)

(assert (=> b!542379 m!790399))

(declare-fun m!790401 () Bool)

(assert (=> b!542409 m!790401))

(check-sat (not b!542406) (not b!542393) (not b!542410) (not b!542386) (not b!542405) (not b!542379) (not b!542387) (not b_next!15021) (not b!542413) (not b!542407) b_and!52971 (not b!542377) (not b!542395) (not b!542389) b_and!52977 (not b!542403) (not b!542388) (not b!542383) tp_is_empty!3009 b_and!52973 (not b!542412) (not b!542382) (not b!542415) (not b!542398) b_and!52975 (not b_next!15019) (not b!542402) (not start!50084) (not b!542391) (not b_next!15017) (not b!542404) (not b!542392) (not b!542381) (not b!542384) (not b!542394) (not b!542401) (not b!542378) (not b!542400) (not b!542408) (not b!542409) (not b_next!15023))
(check-sat b_and!52977 b_and!52973 (not b_next!15017) (not b_next!15021) (not b_next!15023) b_and!52971 (not b_next!15019) b_and!52975)
