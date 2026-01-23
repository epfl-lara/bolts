; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!156134 () Bool)

(assert start!156134)

(declare-fun b!1636078 () Bool)

(declare-fun b_free!44231 () Bool)

(declare-fun b_next!44935 () Bool)

(assert (=> b!1636078 (= b_free!44231 (not b_next!44935))))

(declare-fun tp!474448 () Bool)

(declare-fun b_and!115973 () Bool)

(assert (=> b!1636078 (= tp!474448 b_and!115973)))

(declare-fun b_free!44233 () Bool)

(declare-fun b_next!44937 () Bool)

(assert (=> b!1636078 (= b_free!44233 (not b_next!44937))))

(declare-fun tp!474446 () Bool)

(declare-fun b_and!115975 () Bool)

(assert (=> b!1636078 (= tp!474446 b_and!115975)))

(declare-fun b!1636060 () Bool)

(declare-fun b_free!44235 () Bool)

(declare-fun b_next!44939 () Bool)

(assert (=> b!1636060 (= b_free!44235 (not b_next!44939))))

(declare-fun tp!474449 () Bool)

(declare-fun b_and!115977 () Bool)

(assert (=> b!1636060 (= tp!474449 b_and!115977)))

(declare-fun b_free!44237 () Bool)

(declare-fun b_next!44941 () Bool)

(assert (=> b!1636060 (= b_free!44237 (not b_next!44941))))

(declare-fun tp!474454 () Bool)

(declare-fun b_and!115979 () Bool)

(assert (=> b!1636060 (= tp!474454 b_and!115979)))

(declare-fun b!1636050 () Bool)

(declare-fun e!1049227 () Bool)

(declare-fun e!1049233 () Bool)

(assert (=> b!1636050 (= e!1049227 e!1049233)))

(declare-fun res!732600 () Bool)

(assert (=> b!1636050 (=> res!732600 e!1049233)))

(declare-datatypes ((List!18063 0))(
  ( (Nil!17993) (Cons!17993 (h!23394 (_ BitVec 16)) (t!149730 List!18063)) )
))
(declare-datatypes ((TokenValue!3261 0))(
  ( (FloatLiteralValue!6522 (text!23272 List!18063)) (TokenValueExt!3260 (__x!11824 Int)) (Broken!16305 (value!100020 List!18063)) (Object!3330) (End!3261) (Def!3261) (Underscore!3261) (Match!3261) (Else!3261) (Error!3261) (Case!3261) (If!3261) (Extends!3261) (Abstract!3261) (Class!3261) (Val!3261) (DelimiterValue!6522 (del!3321 List!18063)) (KeywordValue!3267 (value!100021 List!18063)) (CommentValue!6522 (value!100022 List!18063)) (WhitespaceValue!6522 (value!100023 List!18063)) (IndentationValue!3261 (value!100024 List!18063)) (String!20636) (Int32!3261) (Broken!16306 (value!100025 List!18063)) (Boolean!3262) (Unit!29429) (OperatorValue!3264 (op!3321 List!18063)) (IdentifierValue!6522 (value!100026 List!18063)) (IdentifierValue!6523 (value!100027 List!18063)) (WhitespaceValue!6523 (value!100028 List!18063)) (True!6522) (False!6522) (Broken!16307 (value!100029 List!18063)) (Broken!16308 (value!100030 List!18063)) (True!6523) (RightBrace!3261) (RightBracket!3261) (Colon!3261) (Null!3261) (Comma!3261) (LeftBracket!3261) (False!6523) (LeftBrace!3261) (ImaginaryLiteralValue!3261 (text!23273 List!18063)) (StringLiteralValue!9783 (value!100031 List!18063)) (EOFValue!3261 (value!100032 List!18063)) (IdentValue!3261 (value!100033 List!18063)) (DelimiterValue!6523 (value!100034 List!18063)) (DedentValue!3261 (value!100035 List!18063)) (NewLineValue!3261 (value!100036 List!18063)) (IntegerValue!9783 (value!100037 (_ BitVec 32)) (text!23274 List!18063)) (IntegerValue!9784 (value!100038 Int) (text!23275 List!18063)) (Times!3261) (Or!3261) (Equal!3261) (Minus!3261) (Broken!16309 (value!100039 List!18063)) (And!3261) (Div!3261) (LessEqual!3261) (Mod!3261) (Concat!7760) (Not!3261) (Plus!3261) (SpaceValue!3261 (value!100040 List!18063)) (IntegerValue!9785 (value!100041 Int) (text!23276 List!18063)) (StringLiteralValue!9784 (text!23277 List!18063)) (FloatLiteralValue!6523 (text!23278 List!18063)) (BytesLiteralValue!3261 (value!100042 List!18063)) (CommentValue!6523 (value!100043 List!18063)) (StringLiteralValue!9785 (value!100044 List!18063)) (ErrorTokenValue!3261 (msg!3322 List!18063)) )
))
(declare-datatypes ((C!9172 0))(
  ( (C!9173 (val!5182 Int)) )
))
(declare-datatypes ((List!18064 0))(
  ( (Nil!17994) (Cons!17994 (h!23395 C!9172) (t!149731 List!18064)) )
))
(declare-datatypes ((IArray!11985 0))(
  ( (IArray!11986 (innerList!6050 List!18064)) )
))
(declare-datatypes ((Conc!5990 0))(
  ( (Node!5990 (left!14437 Conc!5990) (right!14767 Conc!5990) (csize!12210 Int) (cheight!6201 Int)) (Leaf!8796 (xs!8826 IArray!11985) (csize!12211 Int)) (Empty!5990) )
))
(declare-datatypes ((BalanceConc!11924 0))(
  ( (BalanceConc!11925 (c!266195 Conc!5990)) )
))
(declare-datatypes ((Regex!4499 0))(
  ( (ElementMatch!4499 (c!266196 C!9172)) (Concat!7761 (regOne!9510 Regex!4499) (regTwo!9510 Regex!4499)) (EmptyExpr!4499) (Star!4499 (reg!4828 Regex!4499)) (EmptyLang!4499) (Union!4499 (regOne!9511 Regex!4499) (regTwo!9511 Regex!4499)) )
))
(declare-datatypes ((String!20637 0))(
  ( (String!20638 (value!100045 String)) )
))
(declare-datatypes ((TokenValueInjection!6182 0))(
  ( (TokenValueInjection!6183 (toValue!4602 Int) (toChars!4461 Int)) )
))
(declare-datatypes ((Rule!6142 0))(
  ( (Rule!6143 (regex!3171 Regex!4499) (tag!3451 String!20637) (isSeparator!3171 Bool) (transformation!3171 TokenValueInjection!6182)) )
))
(declare-datatypes ((List!18065 0))(
  ( (Nil!17995) (Cons!17995 (h!23396 Rule!6142) (t!149732 List!18065)) )
))
(declare-fun rules!1846 () List!18065)

(declare-datatypes ((Token!5908 0))(
  ( (Token!5909 (value!100046 TokenValue!3261) (rule!5013 Rule!6142) (size!14350 Int) (originalCharacters!3985 List!18064)) )
))
(declare-datatypes ((List!18066 0))(
  ( (Nil!17996) (Cons!17996 (h!23397 Token!5908) (t!149733 List!18066)) )
))
(declare-fun tokens!457 () List!18066)

(declare-datatypes ((LexerInterface!2800 0))(
  ( (LexerInterfaceExt!2797 (__x!11825 Int)) (Lexer!2798) )
))
(declare-fun thiss!17113 () LexerInterface!2800)

(declare-datatypes ((tuple2!17618 0))(
  ( (tuple2!17619 (_1!10211 Token!5908) (_2!10211 BalanceConc!11924)) )
))
(declare-datatypes ((Option!3379 0))(
  ( (None!3378) (Some!3378 (v!24461 tuple2!17618)) )
))
(declare-fun isDefined!2746 (Option!3379) Bool)

(declare-fun maxPrefixZipperSequence!695 (LexerInterface!2800 List!18065 BalanceConc!11924) Option!3379)

(declare-fun seqFromList!2091 (List!18064) BalanceConc!11924)

(assert (=> b!1636050 (= res!732600 (not (isDefined!2746 (maxPrefixZipperSequence!695 thiss!17113 rules!1846 (seqFromList!2091 (originalCharacters!3985 (h!23397 tokens!457)))))))))

(declare-fun lt!597927 () List!18064)

(declare-fun lt!597924 () List!18064)

(assert (=> b!1636050 (= lt!597927 lt!597924)))

(declare-fun lt!597928 () BalanceConc!11924)

(declare-fun head!3526 (BalanceConc!11924) C!9172)

(assert (=> b!1636050 (= lt!597924 (Cons!17994 (head!3526 lt!597928) Nil!17994))))

(declare-fun e!1049213 () Bool)

(assert (=> b!1636050 e!1049213))

(declare-fun res!732618 () Bool)

(assert (=> b!1636050 (=> (not res!732618) (not e!1049213))))

(declare-fun lt!597936 () List!18064)

(assert (=> b!1636050 (= res!732618 (= lt!597936 (originalCharacters!3985 (h!23397 tokens!457))))))

(declare-fun b!1636051 () Bool)

(declare-fun e!1049222 () Bool)

(declare-fun tp!474451 () Bool)

(declare-fun e!1049231 () Bool)

(declare-fun inv!23346 (String!20637) Bool)

(declare-fun inv!23349 (TokenValueInjection!6182) Bool)

(assert (=> b!1636051 (= e!1049231 (and tp!474451 (inv!23346 (tag!3451 (h!23396 rules!1846))) (inv!23349 (transformation!3171 (h!23396 rules!1846))) e!1049222))))

(declare-fun e!1049228 () Bool)

(declare-fun tp!474453 () Bool)

(declare-fun b!1636052 () Bool)

(declare-fun e!1049217 () Bool)

(declare-fun inv!21 (TokenValue!3261) Bool)

(assert (=> b!1636052 (= e!1049228 (and (inv!21 (value!100046 (h!23397 tokens!457))) e!1049217 tp!474453))))

(declare-fun b!1636053 () Bool)

(declare-fun res!732622 () Bool)

(declare-fun e!1049214 () Bool)

(assert (=> b!1636053 (=> res!732622 e!1049214)))

(declare-fun lt!597926 () Regex!4499)

(declare-fun prefixMatch!434 (Regex!4499 List!18064) Bool)

(declare-fun ++!4819 (List!18064 List!18064) List!18064)

(assert (=> b!1636053 (= res!732622 (prefixMatch!434 lt!597926 (++!4819 lt!597936 lt!597924)))))

(declare-fun b!1636054 () Bool)

(declare-fun tp!474452 () Bool)

(declare-fun e!1049235 () Bool)

(declare-fun inv!23350 (Token!5908) Bool)

(assert (=> b!1636054 (= e!1049235 (and (inv!23350 (h!23397 tokens!457)) e!1049228 tp!474452))))

(declare-fun b!1636055 () Bool)

(declare-fun res!732603 () Bool)

(declare-fun e!1049225 () Bool)

(assert (=> b!1636055 (=> (not res!732603) (not e!1049225))))

(declare-fun rulesInvariant!2469 (LexerInterface!2800 List!18065) Bool)

(assert (=> b!1636055 (= res!732603 (rulesInvariant!2469 thiss!17113 rules!1846))))

(declare-fun b!1636056 () Bool)

(declare-fun e!1049223 () Bool)

(declare-fun lt!597937 () Option!3379)

(assert (=> b!1636056 (= e!1049223 (isDefined!2746 lt!597937))))

(declare-fun b!1636057 () Bool)

(declare-fun e!1049230 () Bool)

(declare-fun e!1049232 () Bool)

(assert (=> b!1636057 (= e!1049230 e!1049232)))

(declare-fun res!732607 () Bool)

(assert (=> b!1636057 (=> res!732607 e!1049232)))

(declare-fun lt!597931 () List!18066)

(declare-fun lt!597943 () List!18066)

(declare-fun lt!597921 () List!18066)

(assert (=> b!1636057 (= res!732607 (or (not (= lt!597921 lt!597943)) (not (= lt!597943 lt!597931))))))

(declare-datatypes ((IArray!11987 0))(
  ( (IArray!11988 (innerList!6051 List!18066)) )
))
(declare-datatypes ((Conc!5991 0))(
  ( (Node!5991 (left!14438 Conc!5991) (right!14768 Conc!5991) (csize!12212 Int) (cheight!6202 Int)) (Leaf!8797 (xs!8827 IArray!11987) (csize!12213 Int)) (Empty!5991) )
))
(declare-datatypes ((BalanceConc!11926 0))(
  ( (BalanceConc!11927 (c!266197 Conc!5991)) )
))
(declare-fun lt!597940 () BalanceConc!11926)

(declare-fun list!7091 (BalanceConc!11926) List!18066)

(assert (=> b!1636057 (= lt!597943 (list!7091 lt!597940))))

(assert (=> b!1636057 (= lt!597921 lt!597931)))

(declare-fun prepend!711 (BalanceConc!11926 Token!5908) BalanceConc!11926)

(declare-fun seqFromList!2092 (List!18066) BalanceConc!11926)

(assert (=> b!1636057 (= lt!597931 (list!7091 (prepend!711 (seqFromList!2092 (t!149733 (t!149733 tokens!457))) (h!23397 (t!149733 tokens!457)))))))

(declare-datatypes ((Unit!29430 0))(
  ( (Unit!29431) )
))
(declare-fun lt!597919 () Unit!29430)

(declare-datatypes ((tuple2!17620 0))(
  ( (tuple2!17621 (_1!10212 BalanceConc!11926) (_2!10212 BalanceConc!11924)) )
))
(declare-fun lt!597939 () tuple2!17620)

(declare-fun seqFromListBHdTlConstructive!248 (Token!5908 List!18066 BalanceConc!11926) Unit!29430)

(assert (=> b!1636057 (= lt!597919 (seqFromListBHdTlConstructive!248 (h!23397 (t!149733 tokens!457)) (t!149733 (t!149733 tokens!457)) (_1!10212 lt!597939)))))

(declare-fun b!1636058 () Bool)

(declare-fun e!1049221 () Bool)

(declare-fun tp!474450 () Bool)

(assert (=> b!1636058 (= e!1049221 (and e!1049231 tp!474450))))

(declare-fun b!1636059 () Bool)

(declare-fun e!1049224 () Bool)

(declare-fun e!1049216 () Bool)

(assert (=> b!1636059 (= e!1049224 e!1049216)))

(declare-fun res!732609 () Bool)

(assert (=> b!1636059 (=> res!732609 e!1049216)))

(declare-datatypes ((tuple2!17622 0))(
  ( (tuple2!17623 (_1!10213 Token!5908) (_2!10213 List!18064)) )
))
(declare-datatypes ((Option!3380 0))(
  ( (None!3379) (Some!3379 (v!24462 tuple2!17622)) )
))
(declare-fun lt!597946 () Option!3380)

(declare-fun isDefined!2747 (Option!3380) Bool)

(assert (=> b!1636059 (= res!732609 (not (isDefined!2747 lt!597946)))))

(declare-fun lt!597925 () List!18064)

(declare-fun lt!597938 () Unit!29430)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!374 (LexerInterface!2800 List!18065 List!18064 List!18064) Unit!29430)

(assert (=> b!1636059 (= lt!597938 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!374 thiss!17113 rules!1846 lt!597936 lt!597925))))

(assert (=> b!1636060 (= e!1049222 (and tp!474449 tp!474454))))

(declare-fun b!1636061 () Bool)

(declare-fun e!1049219 () Bool)

(assert (=> b!1636061 (= e!1049214 e!1049219)))

(declare-fun res!732598 () Bool)

(assert (=> b!1636061 (=> res!732598 e!1049219)))

(declare-fun lt!597935 () tuple2!17622)

(assert (=> b!1636061 (= res!732598 (or (not (= (_1!10213 lt!597935) (h!23397 tokens!457))) (not (= (_2!10213 lt!597935) lt!597925))))))

(declare-fun get!5216 (Option!3380) tuple2!17622)

(assert (=> b!1636061 (= lt!597935 (get!5216 lt!597946))))

(declare-fun lt!597933 () Unit!29430)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!136 (LexerInterface!2800 List!18065 Token!5908 Rule!6142 List!18064) Unit!29430)

(assert (=> b!1636061 (= lt!597933 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!136 thiss!17113 rules!1846 (h!23397 tokens!457) (rule!5013 (h!23397 tokens!457)) lt!597925))))

(declare-fun b!1636062 () Bool)

(declare-fun head!3527 (List!18064) C!9172)

(assert (=> b!1636062 (= e!1049213 (= lt!597927 (Cons!17994 (head!3527 lt!597925) Nil!17994)))))

(declare-fun b!1636063 () Bool)

(declare-fun e!1049226 () Bool)

(assert (=> b!1636063 (= e!1049216 e!1049226)))

(declare-fun res!732606 () Bool)

(assert (=> b!1636063 (=> res!732606 e!1049226)))

(declare-fun lt!597932 () BalanceConc!11924)

(declare-fun lt!597942 () BalanceConc!11924)

(declare-fun prefixMatchZipperSequence!573 (Regex!4499 BalanceConc!11924) Bool)

(declare-fun ++!4820 (BalanceConc!11924 BalanceConc!11924) BalanceConc!11924)

(assert (=> b!1636063 (= res!732606 (prefixMatchZipperSequence!573 lt!597926 (++!4820 lt!597942 lt!597932)))))

(declare-fun singletonSeq!1620 (C!9172) BalanceConc!11924)

(declare-fun apply!4656 (BalanceConc!11924 Int) C!9172)

(declare-fun charsOf!1820 (Token!5908) BalanceConc!11924)

(assert (=> b!1636063 (= lt!597932 (singletonSeq!1620 (apply!4656 (charsOf!1820 (h!23397 (t!149733 tokens!457))) 0)))))

(declare-fun rulesRegex!561 (LexerInterface!2800 List!18065) Regex!4499)

(assert (=> b!1636063 (= lt!597926 (rulesRegex!561 thiss!17113 rules!1846))))

(declare-fun b!1636064 () Bool)

(declare-fun res!732617 () Bool)

(assert (=> b!1636064 (=> (not res!732617) (not e!1049225))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!493 (LexerInterface!2800 List!18066 List!18065) Bool)

(assert (=> b!1636064 (= res!732617 (tokensListTwoByTwoPredicateSeparableList!493 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1636065 () Bool)

(assert (=> b!1636065 (= e!1049233 e!1049214)))

(declare-fun res!732613 () Bool)

(assert (=> b!1636065 (=> res!732613 e!1049214)))

(assert (=> b!1636065 (= res!732613 (prefixMatch!434 lt!597926 (++!4819 (originalCharacters!3985 (h!23397 tokens!457)) lt!597924)))))

(declare-fun e!1049234 () Bool)

(assert (=> b!1636065 e!1049234))

(declare-fun res!732621 () Bool)

(assert (=> b!1636065 (=> (not res!732621) (not e!1049234))))

(declare-fun lt!597920 () tuple2!17622)

(assert (=> b!1636065 (= res!732621 (= (_1!10213 lt!597920) (h!23397 tokens!457)))))

(declare-fun lt!597930 () Option!3380)

(assert (=> b!1636065 (= lt!597920 (get!5216 lt!597930))))

(assert (=> b!1636065 (isDefined!2747 lt!597930)))

(declare-fun maxPrefix!1364 (LexerInterface!2800 List!18065 List!18064) Option!3380)

(assert (=> b!1636065 (= lt!597930 (maxPrefix!1364 thiss!17113 rules!1846 lt!597936))))

(assert (=> b!1636065 (isDefined!2747 (maxPrefix!1364 thiss!17113 rules!1846 (originalCharacters!3985 (h!23397 tokens!457))))))

(declare-fun b!1636066 () Bool)

(declare-fun res!732619 () Bool)

(assert (=> b!1636066 (=> res!732619 e!1049224)))

(declare-fun isEmpty!11025 (BalanceConc!11926) Bool)

(declare-fun lex!1284 (LexerInterface!2800 List!18065 BalanceConc!11924) tuple2!17620)

(assert (=> b!1636066 (= res!732619 (isEmpty!11025 (_1!10212 (lex!1284 thiss!17113 rules!1846 (seqFromList!2091 lt!597936)))))))

(declare-fun b!1636067 () Bool)

(declare-fun res!732611 () Bool)

(assert (=> b!1636067 (=> (not res!732611) (not e!1049225))))

(get-info :version)

(assert (=> b!1636067 (= res!732611 (and (not ((_ is Nil!17996) tokens!457)) (not ((_ is Nil!17996) (t!149733 tokens!457)))))))

(declare-fun b!1636068 () Bool)

(assert (=> b!1636068 (= e!1049219 e!1049223)))

(declare-fun res!732620 () Bool)

(assert (=> b!1636068 (=> res!732620 e!1049223)))

(declare-fun get!5217 (Option!3379) tuple2!17618)

(assert (=> b!1636068 (= res!732620 (not (= (h!23397 tokens!457) (_1!10211 (get!5217 lt!597937)))))))

(declare-fun lt!597923 () BalanceConc!11924)

(assert (=> b!1636068 (= lt!597937 (maxPrefixZipperSequence!695 thiss!17113 rules!1846 lt!597923))))

(declare-fun b!1636069 () Bool)

(declare-fun res!732601 () Bool)

(assert (=> b!1636069 (=> (not res!732601) (not e!1049225))))

(declare-fun isEmpty!11026 (List!18065) Bool)

(assert (=> b!1636069 (= res!732601 (not (isEmpty!11026 rules!1846)))))

(declare-fun b!1636070 () Bool)

(declare-fun e!1049229 () Bool)

(assert (=> b!1636070 (= e!1049225 e!1049229)))

(declare-fun res!732608 () Bool)

(assert (=> b!1636070 (=> (not res!732608) (not e!1049229))))

(declare-fun lt!597948 () List!18064)

(declare-fun lt!597945 () List!18064)

(assert (=> b!1636070 (= res!732608 (= lt!597948 lt!597945))))

(assert (=> b!1636070 (= lt!597945 (++!4819 lt!597936 lt!597925))))

(declare-fun list!7092 (BalanceConc!11924) List!18064)

(assert (=> b!1636070 (= lt!597948 (list!7092 lt!597923))))

(assert (=> b!1636070 (= lt!597925 (list!7092 lt!597928))))

(assert (=> b!1636070 (= lt!597936 (list!7092 lt!597942))))

(assert (=> b!1636070 (= lt!597942 (charsOf!1820 (h!23397 tokens!457)))))

(assert (=> b!1636070 (= lt!597939 (lex!1284 thiss!17113 rules!1846 lt!597928))))

(declare-fun print!1331 (LexerInterface!2800 BalanceConc!11926) BalanceConc!11924)

(assert (=> b!1636070 (= lt!597928 (print!1331 thiss!17113 lt!597940))))

(assert (=> b!1636070 (= lt!597940 (seqFromList!2092 (t!149733 tokens!457)))))

(assert (=> b!1636070 (= lt!597923 (print!1331 thiss!17113 (seqFromList!2092 tokens!457)))))

(declare-fun b!1636071 () Bool)

(declare-fun res!732623 () Bool)

(assert (=> b!1636071 (=> res!732623 e!1049232)))

(declare-fun separableTokensPredicate!742 (LexerInterface!2800 Token!5908 Token!5908 List!18065) Bool)

(assert (=> b!1636071 (= res!732623 (not (separableTokensPredicate!742 thiss!17113 (h!23397 tokens!457) (h!23397 (t!149733 tokens!457)) rules!1846)))))

(declare-fun b!1636072 () Bool)

(declare-fun res!732599 () Bool)

(assert (=> b!1636072 (=> (not res!732599) (not e!1049225))))

(declare-fun rulesProduceEachTokenIndividuallyList!1002 (LexerInterface!2800 List!18065 List!18066) Bool)

(assert (=> b!1636072 (= res!732599 (rulesProduceEachTokenIndividuallyList!1002 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1636073 () Bool)

(declare-fun res!732610 () Bool)

(assert (=> b!1636073 (=> res!732610 e!1049219)))

(declare-fun maxPrefixZipper!328 (LexerInterface!2800 List!18065 List!18064) Option!3380)

(assert (=> b!1636073 (= res!732610 (not (= (h!23397 tokens!457) (_1!10213 (get!5216 (maxPrefixZipper!328 thiss!17113 rules!1846 lt!597948))))))))

(declare-fun res!732612 () Bool)

(assert (=> start!156134 (=> (not res!732612) (not e!1049225))))

(assert (=> start!156134 (= res!732612 ((_ is Lexer!2798) thiss!17113))))

(assert (=> start!156134 e!1049225))

(assert (=> start!156134 true))

(assert (=> start!156134 e!1049221))

(assert (=> start!156134 e!1049235))

(declare-fun tp!474447 () Bool)

(declare-fun e!1049215 () Bool)

(declare-fun b!1636074 () Bool)

(assert (=> b!1636074 (= e!1049217 (and tp!474447 (inv!23346 (tag!3451 (rule!5013 (h!23397 tokens!457)))) (inv!23349 (transformation!3171 (rule!5013 (h!23397 tokens!457)))) e!1049215))))

(declare-fun b!1636075 () Bool)

(declare-fun res!732616 () Bool)

(assert (=> b!1636075 (=> res!732616 e!1049224)))

(declare-fun rulesProduceIndividualToken!1452 (LexerInterface!2800 List!18065 Token!5908) Bool)

(assert (=> b!1636075 (= res!732616 (not (rulesProduceIndividualToken!1452 thiss!17113 rules!1846 (h!23397 tokens!457))))))

(declare-fun b!1636076 () Bool)

(assert (=> b!1636076 (= e!1049232 e!1049224)))

(declare-fun res!732615 () Bool)

(assert (=> b!1636076 (=> res!732615 e!1049224)))

(declare-fun lt!597947 () List!18064)

(declare-fun lt!597934 () List!18064)

(assert (=> b!1636076 (= res!732615 (or (not (= lt!597947 lt!597934)) (not (= lt!597934 lt!597936)) (not (= lt!597947 lt!597936))))))

(declare-fun printList!915 (LexerInterface!2800 List!18066) List!18064)

(assert (=> b!1636076 (= lt!597934 (printList!915 thiss!17113 (Cons!17996 (h!23397 tokens!457) Nil!17996)))))

(declare-fun lt!597941 () BalanceConc!11924)

(assert (=> b!1636076 (= lt!597947 (list!7092 lt!597941))))

(declare-fun lt!597944 () BalanceConc!11926)

(declare-fun printTailRec!853 (LexerInterface!2800 BalanceConc!11926 Int BalanceConc!11924) BalanceConc!11924)

(assert (=> b!1636076 (= lt!597941 (printTailRec!853 thiss!17113 lt!597944 0 (BalanceConc!11925 Empty!5990)))))

(assert (=> b!1636076 (= lt!597941 (print!1331 thiss!17113 lt!597944))))

(declare-fun singletonSeq!1621 (Token!5908) BalanceConc!11926)

(assert (=> b!1636076 (= lt!597944 (singletonSeq!1621 (h!23397 tokens!457)))))

(assert (=> b!1636076 (= lt!597946 (maxPrefix!1364 thiss!17113 rules!1846 lt!597948))))

(declare-fun b!1636077 () Bool)

(assert (=> b!1636077 (= e!1049229 (not e!1049230))))

(declare-fun res!732602 () Bool)

(assert (=> b!1636077 (=> res!732602 e!1049230)))

(assert (=> b!1636077 (= res!732602 (not (= lt!597921 (t!149733 tokens!457))))))

(assert (=> b!1636077 (= lt!597921 (list!7091 (_1!10212 lt!597939)))))

(declare-fun lt!597922 () Unit!29430)

(declare-fun theoremInvertabilityWhenTokenListSeparable!245 (LexerInterface!2800 List!18065 List!18066) Unit!29430)

(assert (=> b!1636077 (= lt!597922 (theoremInvertabilityWhenTokenListSeparable!245 thiss!17113 rules!1846 (t!149733 tokens!457)))))

(declare-fun isPrefix!1431 (List!18064 List!18064) Bool)

(assert (=> b!1636077 (isPrefix!1431 lt!597936 lt!597945)))

(declare-fun lt!597929 () Unit!29430)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!956 (List!18064 List!18064) Unit!29430)

(assert (=> b!1636077 (= lt!597929 (lemmaConcatTwoListThenFirstIsPrefix!956 lt!597936 lt!597925))))

(assert (=> b!1636078 (= e!1049215 (and tp!474448 tp!474446))))

(declare-fun b!1636079 () Bool)

(declare-fun matchR!1998 (Regex!4499 List!18064) Bool)

(assert (=> b!1636079 (= e!1049234 (matchR!1998 (regex!3171 (rule!5013 (h!23397 tokens!457))) lt!597936))))

(declare-fun b!1636080 () Bool)

(declare-fun res!732614 () Bool)

(assert (=> b!1636080 (=> (not res!732614) (not e!1049213))))

(assert (=> b!1636080 (= res!732614 (= lt!597927 (Cons!17994 (head!3527 (originalCharacters!3985 (h!23397 (t!149733 tokens!457)))) Nil!17994)))))

(declare-fun b!1636081 () Bool)

(declare-fun res!732604 () Bool)

(assert (=> b!1636081 (=> (not res!732604) (not e!1049234))))

(declare-fun isEmpty!11027 (List!18064) Bool)

(assert (=> b!1636081 (= res!732604 (isEmpty!11027 (_2!10213 lt!597920)))))

(declare-fun b!1636082 () Bool)

(assert (=> b!1636082 (= e!1049226 e!1049227)))

(declare-fun res!732605 () Bool)

(assert (=> b!1636082 (=> res!732605 e!1049227)))

(assert (=> b!1636082 (= res!732605 (prefixMatch!434 lt!597926 (++!4819 lt!597936 lt!597927)))))

(assert (=> b!1636082 (= lt!597927 (list!7092 lt!597932))))

(assert (= (and start!156134 res!732612) b!1636069))

(assert (= (and b!1636069 res!732601) b!1636055))

(assert (= (and b!1636055 res!732603) b!1636072))

(assert (= (and b!1636072 res!732599) b!1636064))

(assert (= (and b!1636064 res!732617) b!1636067))

(assert (= (and b!1636067 res!732611) b!1636070))

(assert (= (and b!1636070 res!732608) b!1636077))

(assert (= (and b!1636077 (not res!732602)) b!1636057))

(assert (= (and b!1636057 (not res!732607)) b!1636071))

(assert (= (and b!1636071 (not res!732623)) b!1636076))

(assert (= (and b!1636076 (not res!732615)) b!1636075))

(assert (= (and b!1636075 (not res!732616)) b!1636066))

(assert (= (and b!1636066 (not res!732619)) b!1636059))

(assert (= (and b!1636059 (not res!732609)) b!1636063))

(assert (= (and b!1636063 (not res!732606)) b!1636082))

(assert (= (and b!1636082 (not res!732605)) b!1636050))

(assert (= (and b!1636050 res!732618) b!1636080))

(assert (= (and b!1636080 res!732614) b!1636062))

(assert (= (and b!1636050 (not res!732600)) b!1636065))

(assert (= (and b!1636065 res!732621) b!1636081))

(assert (= (and b!1636081 res!732604) b!1636079))

(assert (= (and b!1636065 (not res!732613)) b!1636053))

(assert (= (and b!1636053 (not res!732622)) b!1636061))

(assert (= (and b!1636061 (not res!732598)) b!1636073))

(assert (= (and b!1636073 (not res!732610)) b!1636068))

(assert (= (and b!1636068 (not res!732620)) b!1636056))

(assert (= b!1636051 b!1636060))

(assert (= b!1636058 b!1636051))

(assert (= (and start!156134 ((_ is Cons!17995) rules!1846)) b!1636058))

(assert (= b!1636074 b!1636078))

(assert (= b!1636052 b!1636074))

(assert (= b!1636054 b!1636052))

(assert (= (and start!156134 ((_ is Cons!17996) tokens!457)) b!1636054))

(declare-fun m!1972911 () Bool)

(assert (=> b!1636056 m!1972911))

(declare-fun m!1972913 () Bool)

(assert (=> b!1636082 m!1972913))

(assert (=> b!1636082 m!1972913))

(declare-fun m!1972915 () Bool)

(assert (=> b!1636082 m!1972915))

(declare-fun m!1972917 () Bool)

(assert (=> b!1636082 m!1972917))

(declare-fun m!1972919 () Bool)

(assert (=> b!1636063 m!1972919))

(declare-fun m!1972921 () Bool)

(assert (=> b!1636063 m!1972921))

(declare-fun m!1972923 () Bool)

(assert (=> b!1636063 m!1972923))

(declare-fun m!1972925 () Bool)

(assert (=> b!1636063 m!1972925))

(declare-fun m!1972927 () Bool)

(assert (=> b!1636063 m!1972927))

(declare-fun m!1972929 () Bool)

(assert (=> b!1636063 m!1972929))

(assert (=> b!1636063 m!1972921))

(assert (=> b!1636063 m!1972929))

(assert (=> b!1636063 m!1972925))

(declare-fun m!1972931 () Bool)

(assert (=> b!1636073 m!1972931))

(assert (=> b!1636073 m!1972931))

(declare-fun m!1972933 () Bool)

(assert (=> b!1636073 m!1972933))

(declare-fun m!1972935 () Bool)

(assert (=> b!1636053 m!1972935))

(assert (=> b!1636053 m!1972935))

(declare-fun m!1972937 () Bool)

(assert (=> b!1636053 m!1972937))

(declare-fun m!1972939 () Bool)

(assert (=> b!1636076 m!1972939))

(declare-fun m!1972941 () Bool)

(assert (=> b!1636076 m!1972941))

(declare-fun m!1972943 () Bool)

(assert (=> b!1636076 m!1972943))

(declare-fun m!1972945 () Bool)

(assert (=> b!1636076 m!1972945))

(declare-fun m!1972947 () Bool)

(assert (=> b!1636076 m!1972947))

(declare-fun m!1972949 () Bool)

(assert (=> b!1636076 m!1972949))

(declare-fun m!1972951 () Bool)

(assert (=> b!1636064 m!1972951))

(declare-fun m!1972953 () Bool)

(assert (=> b!1636079 m!1972953))

(declare-fun m!1972955 () Bool)

(assert (=> b!1636080 m!1972955))

(declare-fun m!1972957 () Bool)

(assert (=> b!1636075 m!1972957))

(declare-fun m!1972959 () Bool)

(assert (=> b!1636065 m!1972959))

(declare-fun m!1972961 () Bool)

(assert (=> b!1636065 m!1972961))

(declare-fun m!1972963 () Bool)

(assert (=> b!1636065 m!1972963))

(declare-fun m!1972965 () Bool)

(assert (=> b!1636065 m!1972965))

(declare-fun m!1972967 () Bool)

(assert (=> b!1636065 m!1972967))

(declare-fun m!1972969 () Bool)

(assert (=> b!1636065 m!1972969))

(assert (=> b!1636065 m!1972969))

(declare-fun m!1972971 () Bool)

(assert (=> b!1636065 m!1972971))

(assert (=> b!1636065 m!1972963))

(declare-fun m!1972973 () Bool)

(assert (=> b!1636059 m!1972973))

(declare-fun m!1972975 () Bool)

(assert (=> b!1636059 m!1972975))

(declare-fun m!1972977 () Bool)

(assert (=> b!1636057 m!1972977))

(declare-fun m!1972979 () Bool)

(assert (=> b!1636057 m!1972979))

(declare-fun m!1972981 () Bool)

(assert (=> b!1636057 m!1972981))

(declare-fun m!1972983 () Bool)

(assert (=> b!1636057 m!1972983))

(declare-fun m!1972985 () Bool)

(assert (=> b!1636057 m!1972985))

(assert (=> b!1636057 m!1972981))

(assert (=> b!1636057 m!1972983))

(declare-fun m!1972987 () Bool)

(assert (=> b!1636074 m!1972987))

(declare-fun m!1972989 () Bool)

(assert (=> b!1636074 m!1972989))

(declare-fun m!1972991 () Bool)

(assert (=> b!1636062 m!1972991))

(declare-fun m!1972993 () Bool)

(assert (=> b!1636050 m!1972993))

(assert (=> b!1636050 m!1972993))

(declare-fun m!1972995 () Bool)

(assert (=> b!1636050 m!1972995))

(assert (=> b!1636050 m!1972995))

(declare-fun m!1972997 () Bool)

(assert (=> b!1636050 m!1972997))

(declare-fun m!1972999 () Bool)

(assert (=> b!1636050 m!1972999))

(declare-fun m!1973001 () Bool)

(assert (=> b!1636071 m!1973001))

(declare-fun m!1973003 () Bool)

(assert (=> b!1636077 m!1973003))

(declare-fun m!1973005 () Bool)

(assert (=> b!1636077 m!1973005))

(declare-fun m!1973007 () Bool)

(assert (=> b!1636077 m!1973007))

(declare-fun m!1973009 () Bool)

(assert (=> b!1636077 m!1973009))

(declare-fun m!1973011 () Bool)

(assert (=> b!1636070 m!1973011))

(declare-fun m!1973013 () Bool)

(assert (=> b!1636070 m!1973013))

(declare-fun m!1973015 () Bool)

(assert (=> b!1636070 m!1973015))

(declare-fun m!1973017 () Bool)

(assert (=> b!1636070 m!1973017))

(declare-fun m!1973019 () Bool)

(assert (=> b!1636070 m!1973019))

(declare-fun m!1973021 () Bool)

(assert (=> b!1636070 m!1973021))

(declare-fun m!1973023 () Bool)

(assert (=> b!1636070 m!1973023))

(declare-fun m!1973025 () Bool)

(assert (=> b!1636070 m!1973025))

(declare-fun m!1973027 () Bool)

(assert (=> b!1636070 m!1973027))

(declare-fun m!1973029 () Bool)

(assert (=> b!1636070 m!1973029))

(assert (=> b!1636070 m!1973025))

(declare-fun m!1973031 () Bool)

(assert (=> b!1636061 m!1973031))

(declare-fun m!1973033 () Bool)

(assert (=> b!1636061 m!1973033))

(declare-fun m!1973035 () Bool)

(assert (=> b!1636066 m!1973035))

(assert (=> b!1636066 m!1973035))

(declare-fun m!1973037 () Bool)

(assert (=> b!1636066 m!1973037))

(declare-fun m!1973039 () Bool)

(assert (=> b!1636066 m!1973039))

(declare-fun m!1973041 () Bool)

(assert (=> b!1636081 m!1973041))

(declare-fun m!1973043 () Bool)

(assert (=> b!1636072 m!1973043))

(declare-fun m!1973045 () Bool)

(assert (=> b!1636054 m!1973045))

(declare-fun m!1973047 () Bool)

(assert (=> b!1636051 m!1973047))

(declare-fun m!1973049 () Bool)

(assert (=> b!1636051 m!1973049))

(declare-fun m!1973051 () Bool)

(assert (=> b!1636069 m!1973051))

(declare-fun m!1973053 () Bool)

(assert (=> b!1636052 m!1973053))

(declare-fun m!1973055 () Bool)

(assert (=> b!1636055 m!1973055))

(declare-fun m!1973057 () Bool)

(assert (=> b!1636068 m!1973057))

(declare-fun m!1973059 () Bool)

(assert (=> b!1636068 m!1973059))

(check-sat (not b!1636061) (not b!1636066) (not b!1636064) b_and!115975 (not b!1636059) (not b!1636074) (not b!1636072) (not b_next!44935) (not b!1636050) (not b_next!44941) b_and!115979 (not b!1636071) b_and!115973 (not b!1636054) b_and!115977 (not b!1636069) (not b!1636057) (not b!1636055) (not b!1636082) (not b!1636077) (not b!1636062) (not b!1636073) (not b_next!44939) (not b!1636056) (not b!1636068) (not b!1636079) (not b!1636075) (not b!1636053) (not b!1636051) (not b!1636058) (not b_next!44937) (not b!1636065) (not b!1636052) (not b!1636063) (not b!1636081) (not b!1636070) (not b!1636076) (not b!1636080))
(check-sat b_and!115973 b_and!115977 b_and!115975 (not b_next!44939) (not b_next!44937) (not b_next!44935) (not b_next!44941) b_and!115979)
(get-model)

(declare-fun d!492628 () Bool)

(assert (=> d!492628 (= (get!5217 lt!597937) (v!24461 lt!597937))))

(assert (=> b!1636068 d!492628))

(declare-fun b!1636154 () Bool)

(declare-fun e!1049273 () Bool)

(declare-fun e!1049274 () Bool)

(assert (=> b!1636154 (= e!1049273 e!1049274)))

(declare-fun res!732679 () Bool)

(assert (=> b!1636154 (=> (not res!732679) (not e!1049274))))

(declare-fun lt!597989 () Option!3379)

(assert (=> b!1636154 (= res!732679 (= (_1!10211 (get!5217 lt!597989)) (_1!10213 (get!5216 (maxPrefixZipper!328 thiss!17113 rules!1846 (list!7092 lt!597923))))))))

(declare-fun b!1636155 () Bool)

(declare-fun e!1049272 () Option!3379)

(declare-fun call!105643 () Option!3379)

(assert (=> b!1636155 (= e!1049272 call!105643)))

(declare-fun b!1636156 () Bool)

(assert (=> b!1636156 (= e!1049274 (= (list!7092 (_2!10211 (get!5217 lt!597989))) (_2!10213 (get!5216 (maxPrefixZipper!328 thiss!17113 rules!1846 (list!7092 lt!597923))))))))

(declare-fun b!1636157 () Bool)

(declare-fun e!1049275 () Bool)

(declare-fun e!1049271 () Bool)

(assert (=> b!1636157 (= e!1049275 e!1049271)))

(declare-fun res!732682 () Bool)

(assert (=> b!1636157 (=> (not res!732682) (not e!1049271))))

(assert (=> b!1636157 (= res!732682 (= (_1!10211 (get!5217 lt!597989)) (_1!10213 (get!5216 (maxPrefix!1364 thiss!17113 rules!1846 (list!7092 lt!597923))))))))

(declare-fun b!1636158 () Bool)

(declare-fun lt!597988 () Option!3379)

(declare-fun lt!597986 () Option!3379)

(assert (=> b!1636158 (= e!1049272 (ite (and ((_ is None!3378) lt!597988) ((_ is None!3378) lt!597986)) None!3378 (ite ((_ is None!3378) lt!597986) lt!597988 (ite ((_ is None!3378) lt!597988) lt!597986 (ite (>= (size!14350 (_1!10211 (v!24461 lt!597988))) (size!14350 (_1!10211 (v!24461 lt!597986)))) lt!597988 lt!597986)))))))

(assert (=> b!1636158 (= lt!597988 call!105643)))

(assert (=> b!1636158 (= lt!597986 (maxPrefixZipperSequence!695 thiss!17113 (t!149732 rules!1846) lt!597923))))

(declare-fun b!1636159 () Bool)

(declare-fun e!1049270 () Bool)

(assert (=> b!1636159 (= e!1049270 e!1049275)))

(declare-fun res!732684 () Bool)

(assert (=> b!1636159 (=> res!732684 e!1049275)))

(assert (=> b!1636159 (= res!732684 (not (isDefined!2746 lt!597989)))))

(declare-fun b!1636153 () Bool)

(assert (=> b!1636153 (= e!1049271 (= (list!7092 (_2!10211 (get!5217 lt!597989))) (_2!10213 (get!5216 (maxPrefix!1364 thiss!17113 rules!1846 (list!7092 lt!597923))))))))

(declare-fun d!492630 () Bool)

(assert (=> d!492630 e!1049270))

(declare-fun res!732683 () Bool)

(assert (=> d!492630 (=> (not res!732683) (not e!1049270))))

(assert (=> d!492630 (= res!732683 (= (isDefined!2746 lt!597989) (isDefined!2747 (maxPrefixZipper!328 thiss!17113 rules!1846 (list!7092 lt!597923)))))))

(assert (=> d!492630 (= lt!597989 e!1049272)))

(declare-fun c!266210 () Bool)

(assert (=> d!492630 (= c!266210 (and ((_ is Cons!17995) rules!1846) ((_ is Nil!17995) (t!149732 rules!1846))))))

(declare-fun lt!597991 () Unit!29430)

(declare-fun lt!597990 () Unit!29430)

(assert (=> d!492630 (= lt!597991 lt!597990)))

(declare-fun lt!597987 () List!18064)

(declare-fun lt!597992 () List!18064)

(assert (=> d!492630 (isPrefix!1431 lt!597987 lt!597992)))

(declare-fun lemmaIsPrefixRefl!974 (List!18064 List!18064) Unit!29430)

(assert (=> d!492630 (= lt!597990 (lemmaIsPrefixRefl!974 lt!597987 lt!597992))))

(assert (=> d!492630 (= lt!597992 (list!7092 lt!597923))))

(assert (=> d!492630 (= lt!597987 (list!7092 lt!597923))))

(declare-fun rulesValidInductive!992 (LexerInterface!2800 List!18065) Bool)

(assert (=> d!492630 (rulesValidInductive!992 thiss!17113 rules!1846)))

(assert (=> d!492630 (= (maxPrefixZipperSequence!695 thiss!17113 rules!1846 lt!597923) lt!597989)))

(declare-fun bm!105638 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!329 (LexerInterface!2800 Rule!6142 BalanceConc!11924) Option!3379)

(assert (=> bm!105638 (= call!105643 (maxPrefixOneRuleZipperSequence!329 thiss!17113 (h!23396 rules!1846) lt!597923))))

(declare-fun b!1636160 () Bool)

(declare-fun res!732681 () Bool)

(assert (=> b!1636160 (=> (not res!732681) (not e!1049270))))

(assert (=> b!1636160 (= res!732681 e!1049273)))

(declare-fun res!732680 () Bool)

(assert (=> b!1636160 (=> res!732680 e!1049273)))

(assert (=> b!1636160 (= res!732680 (not (isDefined!2746 lt!597989)))))

(assert (= (and d!492630 c!266210) b!1636155))

(assert (= (and d!492630 (not c!266210)) b!1636158))

(assert (= (or b!1636155 b!1636158) bm!105638))

(assert (= (and d!492630 res!732683) b!1636160))

(assert (= (and b!1636160 (not res!732680)) b!1636154))

(assert (= (and b!1636154 res!732679) b!1636156))

(assert (= (and b!1636160 res!732681) b!1636159))

(assert (= (and b!1636159 (not res!732684)) b!1636157))

(assert (= (and b!1636157 res!732682) b!1636153))

(declare-fun m!1973159 () Bool)

(assert (=> d!492630 m!1973159))

(assert (=> d!492630 m!1973011))

(declare-fun m!1973161 () Bool)

(assert (=> d!492630 m!1973161))

(declare-fun m!1973163 () Bool)

(assert (=> d!492630 m!1973163))

(declare-fun m!1973165 () Bool)

(assert (=> d!492630 m!1973165))

(declare-fun m!1973167 () Bool)

(assert (=> d!492630 m!1973167))

(declare-fun m!1973169 () Bool)

(assert (=> d!492630 m!1973169))

(assert (=> d!492630 m!1973011))

(assert (=> d!492630 m!1973161))

(declare-fun m!1973171 () Bool)

(assert (=> b!1636156 m!1973171))

(assert (=> b!1636156 m!1973011))

(assert (=> b!1636156 m!1973161))

(declare-fun m!1973173 () Bool)

(assert (=> b!1636156 m!1973173))

(declare-fun m!1973175 () Bool)

(assert (=> b!1636156 m!1973175))

(assert (=> b!1636156 m!1973011))

(assert (=> b!1636156 m!1973161))

(declare-fun m!1973177 () Bool)

(assert (=> b!1636158 m!1973177))

(assert (=> b!1636153 m!1973171))

(assert (=> b!1636153 m!1973011))

(assert (=> b!1636153 m!1973175))

(assert (=> b!1636153 m!1973011))

(declare-fun m!1973179 () Bool)

(assert (=> b!1636153 m!1973179))

(assert (=> b!1636153 m!1973179))

(declare-fun m!1973181 () Bool)

(assert (=> b!1636153 m!1973181))

(assert (=> b!1636160 m!1973159))

(assert (=> b!1636157 m!1973175))

(assert (=> b!1636157 m!1973011))

(assert (=> b!1636157 m!1973011))

(assert (=> b!1636157 m!1973179))

(assert (=> b!1636157 m!1973179))

(assert (=> b!1636157 m!1973181))

(assert (=> b!1636159 m!1973159))

(declare-fun m!1973183 () Bool)

(assert (=> bm!105638 m!1973183))

(assert (=> b!1636154 m!1973175))

(assert (=> b!1636154 m!1973011))

(assert (=> b!1636154 m!1973011))

(assert (=> b!1636154 m!1973161))

(assert (=> b!1636154 m!1973161))

(assert (=> b!1636154 m!1973173))

(assert (=> b!1636068 d!492630))

(declare-fun lt!597995 () Bool)

(declare-fun d!492632 () Bool)

(declare-fun isEmpty!11031 (List!18066) Bool)

(assert (=> d!492632 (= lt!597995 (isEmpty!11031 (list!7091 (_1!10212 (lex!1284 thiss!17113 rules!1846 (seqFromList!2091 lt!597936))))))))

(declare-fun isEmpty!11032 (Conc!5991) Bool)

(assert (=> d!492632 (= lt!597995 (isEmpty!11032 (c!266197 (_1!10212 (lex!1284 thiss!17113 rules!1846 (seqFromList!2091 lt!597936))))))))

(assert (=> d!492632 (= (isEmpty!11025 (_1!10212 (lex!1284 thiss!17113 rules!1846 (seqFromList!2091 lt!597936)))) lt!597995)))

(declare-fun bs!395392 () Bool)

(assert (= bs!395392 d!492632))

(declare-fun m!1973185 () Bool)

(assert (=> bs!395392 m!1973185))

(assert (=> bs!395392 m!1973185))

(declare-fun m!1973187 () Bool)

(assert (=> bs!395392 m!1973187))

(declare-fun m!1973189 () Bool)

(assert (=> bs!395392 m!1973189))

(assert (=> b!1636066 d!492632))

(declare-fun b!1636206 () Bool)

(declare-fun res!732716 () Bool)

(declare-fun e!1049306 () Bool)

(assert (=> b!1636206 (=> (not res!732716) (not e!1049306))))

(declare-fun lt!598087 () tuple2!17620)

(declare-datatypes ((tuple2!17624 0))(
  ( (tuple2!17625 (_1!10214 List!18066) (_2!10214 List!18064)) )
))
(declare-fun lexList!842 (LexerInterface!2800 List!18065 List!18064) tuple2!17624)

(assert (=> b!1636206 (= res!732716 (= (list!7091 (_1!10212 lt!598087)) (_1!10214 (lexList!842 thiss!17113 rules!1846 (list!7092 (seqFromList!2091 lt!597936))))))))

(declare-fun b!1636207 () Bool)

(declare-fun e!1049308 () Bool)

(assert (=> b!1636207 (= e!1049308 (not (isEmpty!11025 (_1!10212 lt!598087))))))

(declare-fun b!1636208 () Bool)

(assert (=> b!1636208 (= e!1049306 (= (list!7092 (_2!10212 lt!598087)) (_2!10214 (lexList!842 thiss!17113 rules!1846 (list!7092 (seqFromList!2091 lt!597936))))))))

(declare-fun b!1636209 () Bool)

(declare-fun e!1049307 () Bool)

(assert (=> b!1636209 (= e!1049307 (= (_2!10212 lt!598087) (seqFromList!2091 lt!597936)))))

(declare-fun d!492634 () Bool)

(assert (=> d!492634 e!1049306))

(declare-fun res!732715 () Bool)

(assert (=> d!492634 (=> (not res!732715) (not e!1049306))))

(assert (=> d!492634 (= res!732715 e!1049307)))

(declare-fun c!266217 () Bool)

(declare-fun size!14354 (BalanceConc!11926) Int)

(assert (=> d!492634 (= c!266217 (> (size!14354 (_1!10212 lt!598087)) 0))))

(declare-fun lexTailRecV2!565 (LexerInterface!2800 List!18065 BalanceConc!11924 BalanceConc!11924 BalanceConc!11924 BalanceConc!11926) tuple2!17620)

(assert (=> d!492634 (= lt!598087 (lexTailRecV2!565 thiss!17113 rules!1846 (seqFromList!2091 lt!597936) (BalanceConc!11925 Empty!5990) (seqFromList!2091 lt!597936) (BalanceConc!11927 Empty!5991)))))

(assert (=> d!492634 (= (lex!1284 thiss!17113 rules!1846 (seqFromList!2091 lt!597936)) lt!598087)))

(declare-fun b!1636210 () Bool)

(assert (=> b!1636210 (= e!1049307 e!1049308)))

(declare-fun res!732717 () Bool)

(declare-fun size!14355 (BalanceConc!11924) Int)

(assert (=> b!1636210 (= res!732717 (< (size!14355 (_2!10212 lt!598087)) (size!14355 (seqFromList!2091 lt!597936))))))

(assert (=> b!1636210 (=> (not res!732717) (not e!1049308))))

(assert (= (and d!492634 c!266217) b!1636210))

(assert (= (and d!492634 (not c!266217)) b!1636209))

(assert (= (and b!1636210 res!732717) b!1636207))

(assert (= (and d!492634 res!732715) b!1636206))

(assert (= (and b!1636206 res!732716) b!1636208))

(declare-fun m!1973315 () Bool)

(assert (=> d!492634 m!1973315))

(assert (=> d!492634 m!1973035))

(assert (=> d!492634 m!1973035))

(declare-fun m!1973317 () Bool)

(assert (=> d!492634 m!1973317))

(declare-fun m!1973319 () Bool)

(assert (=> b!1636210 m!1973319))

(assert (=> b!1636210 m!1973035))

(declare-fun m!1973321 () Bool)

(assert (=> b!1636210 m!1973321))

(declare-fun m!1973323 () Bool)

(assert (=> b!1636208 m!1973323))

(assert (=> b!1636208 m!1973035))

(declare-fun m!1973325 () Bool)

(assert (=> b!1636208 m!1973325))

(assert (=> b!1636208 m!1973325))

(declare-fun m!1973327 () Bool)

(assert (=> b!1636208 m!1973327))

(declare-fun m!1973329 () Bool)

(assert (=> b!1636207 m!1973329))

(declare-fun m!1973331 () Bool)

(assert (=> b!1636206 m!1973331))

(assert (=> b!1636206 m!1973035))

(assert (=> b!1636206 m!1973325))

(assert (=> b!1636206 m!1973325))

(assert (=> b!1636206 m!1973327))

(assert (=> b!1636066 d!492634))

(declare-fun d!492656 () Bool)

(declare-fun fromListB!921 (List!18064) BalanceConc!11924)

(assert (=> d!492656 (= (seqFromList!2091 lt!597936) (fromListB!921 lt!597936))))

(declare-fun bs!395398 () Bool)

(assert (= bs!395398 d!492656))

(declare-fun m!1973333 () Bool)

(assert (=> bs!395398 m!1973333))

(assert (=> b!1636066 d!492656))

(declare-fun d!492658 () Bool)

(assert (=> d!492658 (= (separableTokensPredicate!742 thiss!17113 (h!23397 tokens!457) (h!23397 (t!149733 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!573 (rulesRegex!561 thiss!17113 rules!1846) (++!4820 (charsOf!1820 (h!23397 tokens!457)) (singletonSeq!1620 (apply!4656 (charsOf!1820 (h!23397 (t!149733 tokens!457))) 0))))))))

(declare-fun bs!395401 () Bool)

(assert (= bs!395401 d!492658))

(assert (=> bs!395401 m!1973013))

(assert (=> bs!395401 m!1973013))

(assert (=> bs!395401 m!1972923))

(declare-fun m!1973381 () Bool)

(assert (=> bs!395401 m!1973381))

(assert (=> bs!395401 m!1972919))

(assert (=> bs!395401 m!1972929))

(assert (=> bs!395401 m!1972921))

(assert (=> bs!395401 m!1972929))

(assert (=> bs!395401 m!1972921))

(assert (=> bs!395401 m!1972923))

(assert (=> bs!395401 m!1972919))

(assert (=> bs!395401 m!1973381))

(declare-fun m!1973383 () Bool)

(assert (=> bs!395401 m!1973383))

(assert (=> b!1636071 d!492658))

(declare-fun d!492668 () Bool)

(declare-fun lt!598102 () BalanceConc!11924)

(assert (=> d!492668 (= (list!7092 lt!598102) (printList!915 thiss!17113 (list!7091 (seqFromList!2092 tokens!457))))))

(assert (=> d!492668 (= lt!598102 (printTailRec!853 thiss!17113 (seqFromList!2092 tokens!457) 0 (BalanceConc!11925 Empty!5990)))))

(assert (=> d!492668 (= (print!1331 thiss!17113 (seqFromList!2092 tokens!457)) lt!598102)))

(declare-fun bs!395402 () Bool)

(assert (= bs!395402 d!492668))

(declare-fun m!1973399 () Bool)

(assert (=> bs!395402 m!1973399))

(assert (=> bs!395402 m!1973025))

(declare-fun m!1973401 () Bool)

(assert (=> bs!395402 m!1973401))

(assert (=> bs!395402 m!1973401))

(declare-fun m!1973403 () Bool)

(assert (=> bs!395402 m!1973403))

(assert (=> bs!395402 m!1973025))

(declare-fun m!1973405 () Bool)

(assert (=> bs!395402 m!1973405))

(assert (=> b!1636070 d!492668))

(declare-fun d!492674 () Bool)

(declare-fun list!7095 (Conc!5990) List!18064)

(assert (=> d!492674 (= (list!7092 lt!597942) (list!7095 (c!266195 lt!597942)))))

(declare-fun bs!395403 () Bool)

(assert (= bs!395403 d!492674))

(declare-fun m!1973407 () Bool)

(assert (=> bs!395403 m!1973407))

(assert (=> b!1636070 d!492674))

(declare-fun d!492676 () Bool)

(declare-fun e!1049332 () Bool)

(assert (=> d!492676 e!1049332))

(declare-fun res!732735 () Bool)

(assert (=> d!492676 (=> (not res!732735) (not e!1049332))))

(declare-fun lt!598105 () List!18064)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2493 (List!18064) (InoxSet C!9172))

(assert (=> d!492676 (= res!732735 (= (content!2493 lt!598105) ((_ map or) (content!2493 lt!597936) (content!2493 lt!597925))))))

(declare-fun e!1049331 () List!18064)

(assert (=> d!492676 (= lt!598105 e!1049331)))

(declare-fun c!266230 () Bool)

(assert (=> d!492676 (= c!266230 ((_ is Nil!17994) lt!597936))))

(assert (=> d!492676 (= (++!4819 lt!597936 lt!597925) lt!598105)))

(declare-fun b!1636253 () Bool)

(assert (=> b!1636253 (= e!1049331 (Cons!17994 (h!23395 lt!597936) (++!4819 (t!149731 lt!597936) lt!597925)))))

(declare-fun b!1636255 () Bool)

(assert (=> b!1636255 (= e!1049332 (or (not (= lt!597925 Nil!17994)) (= lt!598105 lt!597936)))))

(declare-fun b!1636252 () Bool)

(assert (=> b!1636252 (= e!1049331 lt!597925)))

(declare-fun b!1636254 () Bool)

(declare-fun res!732736 () Bool)

(assert (=> b!1636254 (=> (not res!732736) (not e!1049332))))

(declare-fun size!14356 (List!18064) Int)

(assert (=> b!1636254 (= res!732736 (= (size!14356 lt!598105) (+ (size!14356 lt!597936) (size!14356 lt!597925))))))

(assert (= (and d!492676 c!266230) b!1636252))

(assert (= (and d!492676 (not c!266230)) b!1636253))

(assert (= (and d!492676 res!732735) b!1636254))

(assert (= (and b!1636254 res!732736) b!1636255))

(declare-fun m!1973409 () Bool)

(assert (=> d!492676 m!1973409))

(declare-fun m!1973411 () Bool)

(assert (=> d!492676 m!1973411))

(declare-fun m!1973413 () Bool)

(assert (=> d!492676 m!1973413))

(declare-fun m!1973415 () Bool)

(assert (=> b!1636253 m!1973415))

(declare-fun m!1973417 () Bool)

(assert (=> b!1636254 m!1973417))

(declare-fun m!1973419 () Bool)

(assert (=> b!1636254 m!1973419))

(declare-fun m!1973421 () Bool)

(assert (=> b!1636254 m!1973421))

(assert (=> b!1636070 d!492676))

(declare-fun d!492678 () Bool)

(assert (=> d!492678 (= (list!7092 lt!597928) (list!7095 (c!266195 lt!597928)))))

(declare-fun bs!395404 () Bool)

(assert (= bs!395404 d!492678))

(declare-fun m!1973423 () Bool)

(assert (=> bs!395404 m!1973423))

(assert (=> b!1636070 d!492678))

(declare-fun d!492680 () Bool)

(assert (=> d!492680 (= (list!7092 lt!597923) (list!7095 (c!266195 lt!597923)))))

(declare-fun bs!395405 () Bool)

(assert (= bs!395405 d!492680))

(declare-fun m!1973425 () Bool)

(assert (=> bs!395405 m!1973425))

(assert (=> b!1636070 d!492680))

(declare-fun b!1636256 () Bool)

(declare-fun res!732738 () Bool)

(declare-fun e!1049333 () Bool)

(assert (=> b!1636256 (=> (not res!732738) (not e!1049333))))

(declare-fun lt!598106 () tuple2!17620)

(assert (=> b!1636256 (= res!732738 (= (list!7091 (_1!10212 lt!598106)) (_1!10214 (lexList!842 thiss!17113 rules!1846 (list!7092 lt!597928)))))))

(declare-fun b!1636257 () Bool)

(declare-fun e!1049335 () Bool)

(assert (=> b!1636257 (= e!1049335 (not (isEmpty!11025 (_1!10212 lt!598106))))))

(declare-fun b!1636258 () Bool)

(assert (=> b!1636258 (= e!1049333 (= (list!7092 (_2!10212 lt!598106)) (_2!10214 (lexList!842 thiss!17113 rules!1846 (list!7092 lt!597928)))))))

(declare-fun b!1636259 () Bool)

(declare-fun e!1049334 () Bool)

(assert (=> b!1636259 (= e!1049334 (= (_2!10212 lt!598106) lt!597928))))

(declare-fun d!492682 () Bool)

(assert (=> d!492682 e!1049333))

(declare-fun res!732737 () Bool)

(assert (=> d!492682 (=> (not res!732737) (not e!1049333))))

(assert (=> d!492682 (= res!732737 e!1049334)))

(declare-fun c!266231 () Bool)

(assert (=> d!492682 (= c!266231 (> (size!14354 (_1!10212 lt!598106)) 0))))

(assert (=> d!492682 (= lt!598106 (lexTailRecV2!565 thiss!17113 rules!1846 lt!597928 (BalanceConc!11925 Empty!5990) lt!597928 (BalanceConc!11927 Empty!5991)))))

(assert (=> d!492682 (= (lex!1284 thiss!17113 rules!1846 lt!597928) lt!598106)))

(declare-fun b!1636260 () Bool)

(assert (=> b!1636260 (= e!1049334 e!1049335)))

(declare-fun res!732739 () Bool)

(assert (=> b!1636260 (= res!732739 (< (size!14355 (_2!10212 lt!598106)) (size!14355 lt!597928)))))

(assert (=> b!1636260 (=> (not res!732739) (not e!1049335))))

(assert (= (and d!492682 c!266231) b!1636260))

(assert (= (and d!492682 (not c!266231)) b!1636259))

(assert (= (and b!1636260 res!732739) b!1636257))

(assert (= (and d!492682 res!732737) b!1636256))

(assert (= (and b!1636256 res!732738) b!1636258))

(declare-fun m!1973427 () Bool)

(assert (=> d!492682 m!1973427))

(declare-fun m!1973429 () Bool)

(assert (=> d!492682 m!1973429))

(declare-fun m!1973431 () Bool)

(assert (=> b!1636260 m!1973431))

(declare-fun m!1973433 () Bool)

(assert (=> b!1636260 m!1973433))

(declare-fun m!1973435 () Bool)

(assert (=> b!1636258 m!1973435))

(assert (=> b!1636258 m!1973023))

(assert (=> b!1636258 m!1973023))

(declare-fun m!1973437 () Bool)

(assert (=> b!1636258 m!1973437))

(declare-fun m!1973439 () Bool)

(assert (=> b!1636257 m!1973439))

(declare-fun m!1973441 () Bool)

(assert (=> b!1636256 m!1973441))

(assert (=> b!1636256 m!1973023))

(assert (=> b!1636256 m!1973023))

(assert (=> b!1636256 m!1973437))

(assert (=> b!1636070 d!492682))

(declare-fun d!492684 () Bool)

(declare-fun fromListB!923 (List!18066) BalanceConc!11926)

(assert (=> d!492684 (= (seqFromList!2092 tokens!457) (fromListB!923 tokens!457))))

(declare-fun bs!395406 () Bool)

(assert (= bs!395406 d!492684))

(declare-fun m!1973443 () Bool)

(assert (=> bs!395406 m!1973443))

(assert (=> b!1636070 d!492684))

(declare-fun d!492686 () Bool)

(declare-fun lt!598109 () BalanceConc!11924)

(assert (=> d!492686 (= (list!7092 lt!598109) (originalCharacters!3985 (h!23397 tokens!457)))))

(declare-fun dynLambda!8019 (Int TokenValue!3261) BalanceConc!11924)

(assert (=> d!492686 (= lt!598109 (dynLambda!8019 (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457)))) (value!100046 (h!23397 tokens!457))))))

(assert (=> d!492686 (= (charsOf!1820 (h!23397 tokens!457)) lt!598109)))

(declare-fun b_lambda!51439 () Bool)

(assert (=> (not b_lambda!51439) (not d!492686)))

(declare-fun t!149740 () Bool)

(declare-fun tb!93787 () Bool)

(assert (=> (and b!1636078 (= (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457)))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457))))) t!149740) tb!93787))

(declare-fun b!1636265 () Bool)

(declare-fun e!1049338 () Bool)

(declare-fun tp!474460 () Bool)

(declare-fun inv!23353 (Conc!5990) Bool)

(assert (=> b!1636265 (= e!1049338 (and (inv!23353 (c!266195 (dynLambda!8019 (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457)))) (value!100046 (h!23397 tokens!457))))) tp!474460))))

(declare-fun result!113156 () Bool)

(declare-fun inv!23354 (BalanceConc!11924) Bool)

(assert (=> tb!93787 (= result!113156 (and (inv!23354 (dynLambda!8019 (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457)))) (value!100046 (h!23397 tokens!457)))) e!1049338))))

(assert (= tb!93787 b!1636265))

(declare-fun m!1973445 () Bool)

(assert (=> b!1636265 m!1973445))

(declare-fun m!1973447 () Bool)

(assert (=> tb!93787 m!1973447))

(assert (=> d!492686 t!149740))

(declare-fun b_and!115985 () Bool)

(assert (= b_and!115975 (and (=> t!149740 result!113156) b_and!115985)))

(declare-fun tb!93789 () Bool)

(declare-fun t!149742 () Bool)

(assert (=> (and b!1636060 (= (toChars!4461 (transformation!3171 (h!23396 rules!1846))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457))))) t!149742) tb!93789))

(declare-fun result!113160 () Bool)

(assert (= result!113160 result!113156))

(assert (=> d!492686 t!149742))

(declare-fun b_and!115987 () Bool)

(assert (= b_and!115979 (and (=> t!149742 result!113160) b_and!115987)))

(declare-fun m!1973449 () Bool)

(assert (=> d!492686 m!1973449))

(declare-fun m!1973451 () Bool)

(assert (=> d!492686 m!1973451))

(assert (=> b!1636070 d!492686))

(declare-fun d!492688 () Bool)

(assert (=> d!492688 (= (seqFromList!2092 (t!149733 tokens!457)) (fromListB!923 (t!149733 tokens!457)))))

(declare-fun bs!395407 () Bool)

(assert (= bs!395407 d!492688))

(declare-fun m!1973453 () Bool)

(assert (=> bs!395407 m!1973453))

(assert (=> b!1636070 d!492688))

(declare-fun d!492690 () Bool)

(declare-fun lt!598110 () BalanceConc!11924)

(assert (=> d!492690 (= (list!7092 lt!598110) (printList!915 thiss!17113 (list!7091 lt!597940)))))

(assert (=> d!492690 (= lt!598110 (printTailRec!853 thiss!17113 lt!597940 0 (BalanceConc!11925 Empty!5990)))))

(assert (=> d!492690 (= (print!1331 thiss!17113 lt!597940) lt!598110)))

(declare-fun bs!395408 () Bool)

(assert (= bs!395408 d!492690))

(declare-fun m!1973455 () Bool)

(assert (=> bs!395408 m!1973455))

(assert (=> bs!395408 m!1972979))

(assert (=> bs!395408 m!1972979))

(declare-fun m!1973457 () Bool)

(assert (=> bs!395408 m!1973457))

(declare-fun m!1973459 () Bool)

(assert (=> bs!395408 m!1973459))

(assert (=> b!1636070 d!492690))

(declare-fun d!492692 () Bool)

(assert (=> d!492692 (= (isEmpty!11026 rules!1846) ((_ is Nil!17995) rules!1846))))

(assert (=> b!1636069 d!492692))

(declare-fun b!1636285 () Bool)

(declare-fun e!1049352 () Bool)

(declare-fun inv!17 (TokenValue!3261) Bool)

(assert (=> b!1636285 (= e!1049352 (inv!17 (value!100046 (h!23397 tokens!457))))))

(declare-fun b!1636286 () Bool)

(declare-fun e!1049353 () Bool)

(declare-fun inv!16 (TokenValue!3261) Bool)

(assert (=> b!1636286 (= e!1049353 (inv!16 (value!100046 (h!23397 tokens!457))))))

(declare-fun d!492694 () Bool)

(declare-fun c!266239 () Bool)

(assert (=> d!492694 (= c!266239 ((_ is IntegerValue!9783) (value!100046 (h!23397 tokens!457))))))

(assert (=> d!492694 (= (inv!21 (value!100046 (h!23397 tokens!457))) e!1049353)))

(declare-fun b!1636287 () Bool)

(assert (=> b!1636287 (= e!1049353 e!1049352)))

(declare-fun c!266240 () Bool)

(assert (=> b!1636287 (= c!266240 ((_ is IntegerValue!9784) (value!100046 (h!23397 tokens!457))))))

(declare-fun b!1636288 () Bool)

(declare-fun e!1049351 () Bool)

(declare-fun inv!15 (TokenValue!3261) Bool)

(assert (=> b!1636288 (= e!1049351 (inv!15 (value!100046 (h!23397 tokens!457))))))

(declare-fun b!1636289 () Bool)

(declare-fun res!732745 () Bool)

(assert (=> b!1636289 (=> res!732745 e!1049351)))

(assert (=> b!1636289 (= res!732745 (not ((_ is IntegerValue!9785) (value!100046 (h!23397 tokens!457)))))))

(assert (=> b!1636289 (= e!1049352 e!1049351)))

(assert (= (and d!492694 c!266239) b!1636286))

(assert (= (and d!492694 (not c!266239)) b!1636287))

(assert (= (and b!1636287 c!266240) b!1636285))

(assert (= (and b!1636287 (not c!266240)) b!1636289))

(assert (= (and b!1636289 (not res!732745)) b!1636288))

(declare-fun m!1973461 () Bool)

(assert (=> b!1636285 m!1973461))

(declare-fun m!1973463 () Bool)

(assert (=> b!1636286 m!1973463))

(declare-fun m!1973465 () Bool)

(assert (=> b!1636288 m!1973465))

(assert (=> b!1636052 d!492694))

(declare-fun d!492696 () Bool)

(assert (=> d!492696 (= (get!5216 (maxPrefixZipper!328 thiss!17113 rules!1846 lt!597948)) (v!24462 (maxPrefixZipper!328 thiss!17113 rules!1846 lt!597948)))))

(assert (=> b!1636073 d!492696))

(declare-fun d!492698 () Bool)

(declare-fun lt!598147 () Option!3380)

(assert (=> d!492698 (= lt!598147 (maxPrefix!1364 thiss!17113 rules!1846 lt!597948))))

(declare-fun e!1049359 () Option!3380)

(assert (=> d!492698 (= lt!598147 e!1049359)))

(declare-fun c!266245 () Bool)

(assert (=> d!492698 (= c!266245 (and ((_ is Cons!17995) rules!1846) ((_ is Nil!17995) (t!149732 rules!1846))))))

(declare-fun lt!598150 () Unit!29430)

(declare-fun lt!598148 () Unit!29430)

(assert (=> d!492698 (= lt!598150 lt!598148)))

(assert (=> d!492698 (isPrefix!1431 lt!597948 lt!597948)))

(assert (=> d!492698 (= lt!598148 (lemmaIsPrefixRefl!974 lt!597948 lt!597948))))

(assert (=> d!492698 (rulesValidInductive!992 thiss!17113 rules!1846)))

(assert (=> d!492698 (= (maxPrefixZipper!328 thiss!17113 rules!1846 lt!597948) lt!598147)))

(declare-fun bm!105642 () Bool)

(declare-fun call!105647 () Option!3380)

(declare-fun maxPrefixOneRuleZipper!117 (LexerInterface!2800 Rule!6142 List!18064) Option!3380)

(assert (=> bm!105642 (= call!105647 (maxPrefixOneRuleZipper!117 thiss!17113 (h!23396 rules!1846) lt!597948))))

(declare-fun b!1636300 () Bool)

(assert (=> b!1636300 (= e!1049359 call!105647)))

(declare-fun b!1636301 () Bool)

(declare-fun lt!598146 () Option!3380)

(declare-fun lt!598149 () Option!3380)

(assert (=> b!1636301 (= e!1049359 (ite (and ((_ is None!3379) lt!598146) ((_ is None!3379) lt!598149)) None!3379 (ite ((_ is None!3379) lt!598149) lt!598146 (ite ((_ is None!3379) lt!598146) lt!598149 (ite (>= (size!14350 (_1!10213 (v!24462 lt!598146))) (size!14350 (_1!10213 (v!24462 lt!598149)))) lt!598146 lt!598149)))))))

(assert (=> b!1636301 (= lt!598146 call!105647)))

(assert (=> b!1636301 (= lt!598149 (maxPrefixZipper!328 thiss!17113 (t!149732 rules!1846) lt!597948))))

(assert (= (and d!492698 c!266245) b!1636300))

(assert (= (and d!492698 (not c!266245)) b!1636301))

(assert (= (or b!1636300 b!1636301) bm!105642))

(assert (=> d!492698 m!1972939))

(declare-fun m!1973525 () Bool)

(assert (=> d!492698 m!1973525))

(declare-fun m!1973527 () Bool)

(assert (=> d!492698 m!1973527))

(assert (=> d!492698 m!1973169))

(declare-fun m!1973529 () Bool)

(assert (=> bm!105642 m!1973529))

(declare-fun m!1973531 () Bool)

(assert (=> b!1636301 m!1973531))

(assert (=> b!1636073 d!492698))

(declare-fun b!1636372 () Bool)

(declare-fun e!1049413 () Bool)

(assert (=> b!1636372 (= e!1049413 true)))

(declare-fun b!1636371 () Bool)

(declare-fun e!1049412 () Bool)

(assert (=> b!1636371 (= e!1049412 e!1049413)))

(declare-fun b!1636370 () Bool)

(declare-fun e!1049411 () Bool)

(assert (=> b!1636370 (= e!1049411 e!1049412)))

(declare-fun d!492710 () Bool)

(assert (=> d!492710 e!1049411))

(assert (= b!1636371 b!1636372))

(assert (= b!1636370 b!1636371))

(assert (= (and d!492710 ((_ is Cons!17995) rules!1846)) b!1636370))

(declare-fun order!10665 () Int)

(declare-fun order!10667 () Int)

(declare-fun lambda!67415 () Int)

(declare-fun dynLambda!8023 (Int Int) Int)

(declare-fun dynLambda!8024 (Int Int) Int)

(assert (=> b!1636372 (< (dynLambda!8023 order!10665 (toValue!4602 (transformation!3171 (h!23396 rules!1846)))) (dynLambda!8024 order!10667 lambda!67415))))

(declare-fun order!10669 () Int)

(declare-fun dynLambda!8025 (Int Int) Int)

(assert (=> b!1636372 (< (dynLambda!8025 order!10669 (toChars!4461 (transformation!3171 (h!23396 rules!1846)))) (dynLambda!8024 order!10667 lambda!67415))))

(assert (=> d!492710 true))

(declare-fun lt!598213 () Bool)

(declare-fun forall!4108 (List!18066 Int) Bool)

(assert (=> d!492710 (= lt!598213 (forall!4108 tokens!457 lambda!67415))))

(declare-fun e!1049404 () Bool)

(assert (=> d!492710 (= lt!598213 e!1049404)))

(declare-fun res!732789 () Bool)

(assert (=> d!492710 (=> res!732789 e!1049404)))

(assert (=> d!492710 (= res!732789 (not ((_ is Cons!17996) tokens!457)))))

(assert (=> d!492710 (not (isEmpty!11026 rules!1846))))

(assert (=> d!492710 (= (rulesProduceEachTokenIndividuallyList!1002 thiss!17113 rules!1846 tokens!457) lt!598213)))

(declare-fun b!1636360 () Bool)

(declare-fun e!1049403 () Bool)

(assert (=> b!1636360 (= e!1049404 e!1049403)))

(declare-fun res!732788 () Bool)

(assert (=> b!1636360 (=> (not res!732788) (not e!1049403))))

(assert (=> b!1636360 (= res!732788 (rulesProduceIndividualToken!1452 thiss!17113 rules!1846 (h!23397 tokens!457)))))

(declare-fun b!1636361 () Bool)

(assert (=> b!1636361 (= e!1049403 (rulesProduceEachTokenIndividuallyList!1002 thiss!17113 rules!1846 (t!149733 tokens!457)))))

(assert (= (and d!492710 (not res!732789)) b!1636360))

(assert (= (and b!1636360 res!732788) b!1636361))

(declare-fun m!1973595 () Bool)

(assert (=> d!492710 m!1973595))

(assert (=> d!492710 m!1973051))

(assert (=> b!1636360 m!1972957))

(declare-fun m!1973597 () Bool)

(assert (=> b!1636361 m!1973597))

(assert (=> b!1636072 d!492710))

(declare-fun d!492732 () Bool)

(assert (=> d!492732 (= (inv!23346 (tag!3451 (h!23396 rules!1846))) (= (mod (str.len (value!100045 (tag!3451 (h!23396 rules!1846)))) 2) 0))))

(assert (=> b!1636051 d!492732))

(declare-fun d!492734 () Bool)

(declare-fun res!732792 () Bool)

(declare-fun e!1049416 () Bool)

(assert (=> d!492734 (=> (not res!732792) (not e!1049416))))

(declare-fun semiInverseModEq!1214 (Int Int) Bool)

(assert (=> d!492734 (= res!732792 (semiInverseModEq!1214 (toChars!4461 (transformation!3171 (h!23396 rules!1846))) (toValue!4602 (transformation!3171 (h!23396 rules!1846)))))))

(assert (=> d!492734 (= (inv!23349 (transformation!3171 (h!23396 rules!1846))) e!1049416)))

(declare-fun b!1636377 () Bool)

(declare-fun equivClasses!1155 (Int Int) Bool)

(assert (=> b!1636377 (= e!1049416 (equivClasses!1155 (toChars!4461 (transformation!3171 (h!23396 rules!1846))) (toValue!4602 (transformation!3171 (h!23396 rules!1846)))))))

(assert (= (and d!492734 res!732792) b!1636377))

(declare-fun m!1973599 () Bool)

(assert (=> d!492734 m!1973599))

(declare-fun m!1973601 () Bool)

(assert (=> b!1636377 m!1973601))

(assert (=> b!1636051 d!492734))

(declare-fun d!492736 () Bool)

(declare-fun isEmpty!11035 (Option!3379) Bool)

(assert (=> d!492736 (= (isDefined!2746 (maxPrefixZipperSequence!695 thiss!17113 rules!1846 (seqFromList!2091 (originalCharacters!3985 (h!23397 tokens!457))))) (not (isEmpty!11035 (maxPrefixZipperSequence!695 thiss!17113 rules!1846 (seqFromList!2091 (originalCharacters!3985 (h!23397 tokens!457)))))))))

(declare-fun bs!395411 () Bool)

(assert (= bs!395411 d!492736))

(assert (=> bs!395411 m!1972995))

(declare-fun m!1973603 () Bool)

(assert (=> bs!395411 m!1973603))

(assert (=> b!1636050 d!492736))

(declare-fun b!1636379 () Bool)

(declare-fun e!1049420 () Bool)

(declare-fun e!1049421 () Bool)

(assert (=> b!1636379 (= e!1049420 e!1049421)))

(declare-fun res!732793 () Bool)

(assert (=> b!1636379 (=> (not res!732793) (not e!1049421))))

(declare-fun lt!598217 () Option!3379)

(assert (=> b!1636379 (= res!732793 (= (_1!10211 (get!5217 lt!598217)) (_1!10213 (get!5216 (maxPrefixZipper!328 thiss!17113 rules!1846 (list!7092 (seqFromList!2091 (originalCharacters!3985 (h!23397 tokens!457)))))))))))

(declare-fun b!1636380 () Bool)

(declare-fun e!1049419 () Option!3379)

(declare-fun call!105654 () Option!3379)

(assert (=> b!1636380 (= e!1049419 call!105654)))

(declare-fun b!1636381 () Bool)

(assert (=> b!1636381 (= e!1049421 (= (list!7092 (_2!10211 (get!5217 lt!598217))) (_2!10213 (get!5216 (maxPrefixZipper!328 thiss!17113 rules!1846 (list!7092 (seqFromList!2091 (originalCharacters!3985 (h!23397 tokens!457)))))))))))

(declare-fun b!1636382 () Bool)

(declare-fun e!1049422 () Bool)

(declare-fun e!1049418 () Bool)

(assert (=> b!1636382 (= e!1049422 e!1049418)))

(declare-fun res!732796 () Bool)

(assert (=> b!1636382 (=> (not res!732796) (not e!1049418))))

(assert (=> b!1636382 (= res!732796 (= (_1!10211 (get!5217 lt!598217)) (_1!10213 (get!5216 (maxPrefix!1364 thiss!17113 rules!1846 (list!7092 (seqFromList!2091 (originalCharacters!3985 (h!23397 tokens!457)))))))))))

(declare-fun b!1636383 () Bool)

(declare-fun lt!598216 () Option!3379)

(declare-fun lt!598214 () Option!3379)

(assert (=> b!1636383 (= e!1049419 (ite (and ((_ is None!3378) lt!598216) ((_ is None!3378) lt!598214)) None!3378 (ite ((_ is None!3378) lt!598214) lt!598216 (ite ((_ is None!3378) lt!598216) lt!598214 (ite (>= (size!14350 (_1!10211 (v!24461 lt!598216))) (size!14350 (_1!10211 (v!24461 lt!598214)))) lt!598216 lt!598214)))))))

(assert (=> b!1636383 (= lt!598216 call!105654)))

(assert (=> b!1636383 (= lt!598214 (maxPrefixZipperSequence!695 thiss!17113 (t!149732 rules!1846) (seqFromList!2091 (originalCharacters!3985 (h!23397 tokens!457)))))))

(declare-fun b!1636384 () Bool)

(declare-fun e!1049417 () Bool)

(assert (=> b!1636384 (= e!1049417 e!1049422)))

(declare-fun res!732798 () Bool)

(assert (=> b!1636384 (=> res!732798 e!1049422)))

(assert (=> b!1636384 (= res!732798 (not (isDefined!2746 lt!598217)))))

(declare-fun b!1636378 () Bool)

(assert (=> b!1636378 (= e!1049418 (= (list!7092 (_2!10211 (get!5217 lt!598217))) (_2!10213 (get!5216 (maxPrefix!1364 thiss!17113 rules!1846 (list!7092 (seqFromList!2091 (originalCharacters!3985 (h!23397 tokens!457)))))))))))

(declare-fun d!492738 () Bool)

(assert (=> d!492738 e!1049417))

(declare-fun res!732797 () Bool)

(assert (=> d!492738 (=> (not res!732797) (not e!1049417))))

(assert (=> d!492738 (= res!732797 (= (isDefined!2746 lt!598217) (isDefined!2747 (maxPrefixZipper!328 thiss!17113 rules!1846 (list!7092 (seqFromList!2091 (originalCharacters!3985 (h!23397 tokens!457))))))))))

(assert (=> d!492738 (= lt!598217 e!1049419)))

(declare-fun c!266255 () Bool)

(assert (=> d!492738 (= c!266255 (and ((_ is Cons!17995) rules!1846) ((_ is Nil!17995) (t!149732 rules!1846))))))

(declare-fun lt!598219 () Unit!29430)

(declare-fun lt!598218 () Unit!29430)

(assert (=> d!492738 (= lt!598219 lt!598218)))

(declare-fun lt!598215 () List!18064)

(declare-fun lt!598220 () List!18064)

(assert (=> d!492738 (isPrefix!1431 lt!598215 lt!598220)))

(assert (=> d!492738 (= lt!598218 (lemmaIsPrefixRefl!974 lt!598215 lt!598220))))

(assert (=> d!492738 (= lt!598220 (list!7092 (seqFromList!2091 (originalCharacters!3985 (h!23397 tokens!457)))))))

(assert (=> d!492738 (= lt!598215 (list!7092 (seqFromList!2091 (originalCharacters!3985 (h!23397 tokens!457)))))))

(assert (=> d!492738 (rulesValidInductive!992 thiss!17113 rules!1846)))

(assert (=> d!492738 (= (maxPrefixZipperSequence!695 thiss!17113 rules!1846 (seqFromList!2091 (originalCharacters!3985 (h!23397 tokens!457)))) lt!598217)))

(declare-fun bm!105649 () Bool)

(assert (=> bm!105649 (= call!105654 (maxPrefixOneRuleZipperSequence!329 thiss!17113 (h!23396 rules!1846) (seqFromList!2091 (originalCharacters!3985 (h!23397 tokens!457)))))))

(declare-fun b!1636385 () Bool)

(declare-fun res!732795 () Bool)

(assert (=> b!1636385 (=> (not res!732795) (not e!1049417))))

(assert (=> b!1636385 (= res!732795 e!1049420)))

(declare-fun res!732794 () Bool)

(assert (=> b!1636385 (=> res!732794 e!1049420)))

(assert (=> b!1636385 (= res!732794 (not (isDefined!2746 lt!598217)))))

(assert (= (and d!492738 c!266255) b!1636380))

(assert (= (and d!492738 (not c!266255)) b!1636383))

(assert (= (or b!1636380 b!1636383) bm!105649))

(assert (= (and d!492738 res!732797) b!1636385))

(assert (= (and b!1636385 (not res!732794)) b!1636379))

(assert (= (and b!1636379 res!732793) b!1636381))

(assert (= (and b!1636385 res!732795) b!1636384))

(assert (= (and b!1636384 (not res!732798)) b!1636382))

(assert (= (and b!1636382 res!732796) b!1636378))

(declare-fun m!1973605 () Bool)

(assert (=> d!492738 m!1973605))

(assert (=> d!492738 m!1972993))

(declare-fun m!1973607 () Bool)

(assert (=> d!492738 m!1973607))

(declare-fun m!1973609 () Bool)

(assert (=> d!492738 m!1973609))

(declare-fun m!1973611 () Bool)

(assert (=> d!492738 m!1973611))

(declare-fun m!1973613 () Bool)

(assert (=> d!492738 m!1973613))

(declare-fun m!1973615 () Bool)

(assert (=> d!492738 m!1973615))

(assert (=> d!492738 m!1973169))

(assert (=> d!492738 m!1973607))

(assert (=> d!492738 m!1973609))

(declare-fun m!1973617 () Bool)

(assert (=> b!1636381 m!1973617))

(assert (=> b!1636381 m!1972993))

(assert (=> b!1636381 m!1973607))

(assert (=> b!1636381 m!1973609))

(declare-fun m!1973619 () Bool)

(assert (=> b!1636381 m!1973619))

(declare-fun m!1973621 () Bool)

(assert (=> b!1636381 m!1973621))

(assert (=> b!1636381 m!1973607))

(assert (=> b!1636381 m!1973609))

(assert (=> b!1636383 m!1972993))

(declare-fun m!1973623 () Bool)

(assert (=> b!1636383 m!1973623))

(assert (=> b!1636378 m!1973617))

(assert (=> b!1636378 m!1972993))

(assert (=> b!1636378 m!1973607))

(assert (=> b!1636378 m!1973621))

(assert (=> b!1636378 m!1973607))

(declare-fun m!1973625 () Bool)

(assert (=> b!1636378 m!1973625))

(assert (=> b!1636378 m!1973625))

(declare-fun m!1973627 () Bool)

(assert (=> b!1636378 m!1973627))

(assert (=> b!1636385 m!1973605))

(assert (=> b!1636382 m!1973621))

(assert (=> b!1636382 m!1972993))

(assert (=> b!1636382 m!1973607))

(assert (=> b!1636382 m!1973607))

(assert (=> b!1636382 m!1973625))

(assert (=> b!1636382 m!1973625))

(assert (=> b!1636382 m!1973627))

(assert (=> b!1636384 m!1973605))

(assert (=> bm!105649 m!1972993))

(declare-fun m!1973629 () Bool)

(assert (=> bm!105649 m!1973629))

(assert (=> b!1636379 m!1973621))

(assert (=> b!1636379 m!1972993))

(assert (=> b!1636379 m!1973607))

(assert (=> b!1636379 m!1973607))

(assert (=> b!1636379 m!1973609))

(assert (=> b!1636379 m!1973609))

(assert (=> b!1636379 m!1973619))

(assert (=> b!1636050 d!492738))

(declare-fun d!492740 () Bool)

(assert (=> d!492740 (= (seqFromList!2091 (originalCharacters!3985 (h!23397 tokens!457))) (fromListB!921 (originalCharacters!3985 (h!23397 tokens!457))))))

(declare-fun bs!395412 () Bool)

(assert (= bs!395412 d!492740))

(declare-fun m!1973631 () Bool)

(assert (=> bs!395412 m!1973631))

(assert (=> b!1636050 d!492740))

(declare-fun d!492742 () Bool)

(declare-fun lt!598225 () C!9172)

(assert (=> d!492742 (= lt!598225 (head!3527 (list!7092 lt!597928)))))

(declare-fun head!3529 (Conc!5990) C!9172)

(assert (=> d!492742 (= lt!598225 (head!3529 (c!266195 lt!597928)))))

(declare-fun isEmpty!11036 (BalanceConc!11924) Bool)

(assert (=> d!492742 (not (isEmpty!11036 lt!597928))))

(assert (=> d!492742 (= (head!3526 lt!597928) lt!598225)))

(declare-fun bs!395413 () Bool)

(assert (= bs!395413 d!492742))

(assert (=> bs!395413 m!1973023))

(assert (=> bs!395413 m!1973023))

(declare-fun m!1973633 () Bool)

(assert (=> bs!395413 m!1973633))

(declare-fun m!1973635 () Bool)

(assert (=> bs!395413 m!1973635))

(declare-fun m!1973637 () Bool)

(assert (=> bs!395413 m!1973637))

(assert (=> b!1636050 d!492742))

(declare-fun d!492744 () Bool)

(declare-fun lt!598226 () BalanceConc!11924)

(assert (=> d!492744 (= (list!7092 lt!598226) (printList!915 thiss!17113 (list!7091 lt!597944)))))

(assert (=> d!492744 (= lt!598226 (printTailRec!853 thiss!17113 lt!597944 0 (BalanceConc!11925 Empty!5990)))))

(assert (=> d!492744 (= (print!1331 thiss!17113 lt!597944) lt!598226)))

(declare-fun bs!395414 () Bool)

(assert (= bs!395414 d!492744))

(declare-fun m!1973639 () Bool)

(assert (=> bs!395414 m!1973639))

(declare-fun m!1973641 () Bool)

(assert (=> bs!395414 m!1973641))

(assert (=> bs!395414 m!1973641))

(declare-fun m!1973643 () Bool)

(assert (=> bs!395414 m!1973643))

(assert (=> bs!395414 m!1972947))

(assert (=> b!1636076 d!492744))

(declare-fun b!1636408 () Bool)

(declare-fun res!732820 () Bool)

(declare-fun e!1049434 () Bool)

(assert (=> b!1636408 (=> (not res!732820) (not e!1049434))))

(declare-fun lt!598240 () Option!3380)

(assert (=> b!1636408 (= res!732820 (= (++!4819 (list!7092 (charsOf!1820 (_1!10213 (get!5216 lt!598240)))) (_2!10213 (get!5216 lt!598240))) lt!597948))))

(declare-fun d!492746 () Bool)

(declare-fun e!1049433 () Bool)

(assert (=> d!492746 e!1049433))

(declare-fun res!732822 () Bool)

(assert (=> d!492746 (=> res!732822 e!1049433)))

(declare-fun isEmpty!11037 (Option!3380) Bool)

(assert (=> d!492746 (= res!732822 (isEmpty!11037 lt!598240))))

(declare-fun e!1049435 () Option!3380)

(assert (=> d!492746 (= lt!598240 e!1049435)))

(declare-fun c!266258 () Bool)

(assert (=> d!492746 (= c!266258 (and ((_ is Cons!17995) rules!1846) ((_ is Nil!17995) (t!149732 rules!1846))))))

(declare-fun lt!598241 () Unit!29430)

(declare-fun lt!598239 () Unit!29430)

(assert (=> d!492746 (= lt!598241 lt!598239)))

(assert (=> d!492746 (isPrefix!1431 lt!597948 lt!597948)))

(assert (=> d!492746 (= lt!598239 (lemmaIsPrefixRefl!974 lt!597948 lt!597948))))

(assert (=> d!492746 (rulesValidInductive!992 thiss!17113 rules!1846)))

(assert (=> d!492746 (= (maxPrefix!1364 thiss!17113 rules!1846 lt!597948) lt!598240)))

(declare-fun b!1636409 () Bool)

(assert (=> b!1636409 (= e!1049433 e!1049434)))

(declare-fun res!732818 () Bool)

(assert (=> b!1636409 (=> (not res!732818) (not e!1049434))))

(assert (=> b!1636409 (= res!732818 (isDefined!2747 lt!598240))))

(declare-fun b!1636410 () Bool)

(declare-fun res!732817 () Bool)

(assert (=> b!1636410 (=> (not res!732817) (not e!1049434))))

(assert (=> b!1636410 (= res!732817 (< (size!14356 (_2!10213 (get!5216 lt!598240))) (size!14356 lt!597948)))))

(declare-fun b!1636411 () Bool)

(declare-fun lt!598237 () Option!3380)

(declare-fun lt!598238 () Option!3380)

(assert (=> b!1636411 (= e!1049435 (ite (and ((_ is None!3379) lt!598237) ((_ is None!3379) lt!598238)) None!3379 (ite ((_ is None!3379) lt!598238) lt!598237 (ite ((_ is None!3379) lt!598237) lt!598238 (ite (>= (size!14350 (_1!10213 (v!24462 lt!598237))) (size!14350 (_1!10213 (v!24462 lt!598238)))) lt!598237 lt!598238)))))))

(declare-fun call!105657 () Option!3380)

(assert (=> b!1636411 (= lt!598237 call!105657)))

(assert (=> b!1636411 (= lt!598238 (maxPrefix!1364 thiss!17113 (t!149732 rules!1846) lt!597948))))

(declare-fun b!1636412 () Bool)

(declare-fun res!732819 () Bool)

(assert (=> b!1636412 (=> (not res!732819) (not e!1049434))))

(declare-fun apply!4660 (TokenValueInjection!6182 BalanceConc!11924) TokenValue!3261)

(assert (=> b!1636412 (= res!732819 (= (value!100046 (_1!10213 (get!5216 lt!598240))) (apply!4660 (transformation!3171 (rule!5013 (_1!10213 (get!5216 lt!598240)))) (seqFromList!2091 (originalCharacters!3985 (_1!10213 (get!5216 lt!598240)))))))))

(declare-fun b!1636413 () Bool)

(assert (=> b!1636413 (= e!1049435 call!105657)))

(declare-fun b!1636414 () Bool)

(declare-fun contains!3140 (List!18065 Rule!6142) Bool)

(assert (=> b!1636414 (= e!1049434 (contains!3140 rules!1846 (rule!5013 (_1!10213 (get!5216 lt!598240)))))))

(declare-fun b!1636415 () Bool)

(declare-fun res!732821 () Bool)

(assert (=> b!1636415 (=> (not res!732821) (not e!1049434))))

(assert (=> b!1636415 (= res!732821 (= (list!7092 (charsOf!1820 (_1!10213 (get!5216 lt!598240)))) (originalCharacters!3985 (_1!10213 (get!5216 lt!598240)))))))

(declare-fun b!1636416 () Bool)

(declare-fun res!732823 () Bool)

(assert (=> b!1636416 (=> (not res!732823) (not e!1049434))))

(assert (=> b!1636416 (= res!732823 (matchR!1998 (regex!3171 (rule!5013 (_1!10213 (get!5216 lt!598240)))) (list!7092 (charsOf!1820 (_1!10213 (get!5216 lt!598240))))))))

(declare-fun bm!105652 () Bool)

(declare-fun maxPrefixOneRule!789 (LexerInterface!2800 Rule!6142 List!18064) Option!3380)

(assert (=> bm!105652 (= call!105657 (maxPrefixOneRule!789 thiss!17113 (h!23396 rules!1846) lt!597948))))

(assert (= (and d!492746 c!266258) b!1636413))

(assert (= (and d!492746 (not c!266258)) b!1636411))

(assert (= (or b!1636413 b!1636411) bm!105652))

(assert (= (and d!492746 (not res!732822)) b!1636409))

(assert (= (and b!1636409 res!732818) b!1636415))

(assert (= (and b!1636415 res!732821) b!1636410))

(assert (= (and b!1636410 res!732817) b!1636408))

(assert (= (and b!1636408 res!732820) b!1636412))

(assert (= (and b!1636412 res!732819) b!1636416))

(assert (= (and b!1636416 res!732823) b!1636414))

(declare-fun m!1973645 () Bool)

(assert (=> b!1636411 m!1973645))

(declare-fun m!1973647 () Bool)

(assert (=> b!1636414 m!1973647))

(declare-fun m!1973649 () Bool)

(assert (=> b!1636414 m!1973649))

(assert (=> b!1636416 m!1973647))

(declare-fun m!1973651 () Bool)

(assert (=> b!1636416 m!1973651))

(assert (=> b!1636416 m!1973651))

(declare-fun m!1973653 () Bool)

(assert (=> b!1636416 m!1973653))

(assert (=> b!1636416 m!1973653))

(declare-fun m!1973655 () Bool)

(assert (=> b!1636416 m!1973655))

(assert (=> b!1636408 m!1973647))

(assert (=> b!1636408 m!1973651))

(assert (=> b!1636408 m!1973651))

(assert (=> b!1636408 m!1973653))

(assert (=> b!1636408 m!1973653))

(declare-fun m!1973657 () Bool)

(assert (=> b!1636408 m!1973657))

(declare-fun m!1973659 () Bool)

(assert (=> bm!105652 m!1973659))

(assert (=> b!1636410 m!1973647))

(declare-fun m!1973661 () Bool)

(assert (=> b!1636410 m!1973661))

(declare-fun m!1973663 () Bool)

(assert (=> b!1636410 m!1973663))

(declare-fun m!1973665 () Bool)

(assert (=> b!1636409 m!1973665))

(assert (=> b!1636415 m!1973647))

(assert (=> b!1636415 m!1973651))

(assert (=> b!1636415 m!1973651))

(assert (=> b!1636415 m!1973653))

(declare-fun m!1973667 () Bool)

(assert (=> d!492746 m!1973667))

(assert (=> d!492746 m!1973525))

(assert (=> d!492746 m!1973527))

(assert (=> d!492746 m!1973169))

(assert (=> b!1636412 m!1973647))

(declare-fun m!1973669 () Bool)

(assert (=> b!1636412 m!1973669))

(assert (=> b!1636412 m!1973669))

(declare-fun m!1973671 () Bool)

(assert (=> b!1636412 m!1973671))

(assert (=> b!1636076 d!492746))

(declare-fun d!492748 () Bool)

(assert (=> d!492748 (= (list!7092 lt!597941) (list!7095 (c!266195 lt!597941)))))

(declare-fun bs!395415 () Bool)

(assert (= bs!395415 d!492748))

(declare-fun m!1973673 () Bool)

(assert (=> bs!395415 m!1973673))

(assert (=> b!1636076 d!492748))

(declare-fun d!492750 () Bool)

(declare-fun c!266261 () Bool)

(assert (=> d!492750 (= c!266261 ((_ is Cons!17996) (Cons!17996 (h!23397 tokens!457) Nil!17996)))))

(declare-fun e!1049438 () List!18064)

(assert (=> d!492750 (= (printList!915 thiss!17113 (Cons!17996 (h!23397 tokens!457) Nil!17996)) e!1049438)))

(declare-fun b!1636421 () Bool)

(assert (=> b!1636421 (= e!1049438 (++!4819 (list!7092 (charsOf!1820 (h!23397 (Cons!17996 (h!23397 tokens!457) Nil!17996)))) (printList!915 thiss!17113 (t!149733 (Cons!17996 (h!23397 tokens!457) Nil!17996)))))))

(declare-fun b!1636422 () Bool)

(assert (=> b!1636422 (= e!1049438 Nil!17994)))

(assert (= (and d!492750 c!266261) b!1636421))

(assert (= (and d!492750 (not c!266261)) b!1636422))

(declare-fun m!1973675 () Bool)

(assert (=> b!1636421 m!1973675))

(assert (=> b!1636421 m!1973675))

(declare-fun m!1973677 () Bool)

(assert (=> b!1636421 m!1973677))

(declare-fun m!1973679 () Bool)

(assert (=> b!1636421 m!1973679))

(assert (=> b!1636421 m!1973677))

(assert (=> b!1636421 m!1973679))

(declare-fun m!1973681 () Bool)

(assert (=> b!1636421 m!1973681))

(assert (=> b!1636076 d!492750))

(declare-fun d!492752 () Bool)

(declare-fun lt!598256 () BalanceConc!11924)

(declare-fun printListTailRec!369 (LexerInterface!2800 List!18066 List!18064) List!18064)

(declare-fun dropList!634 (BalanceConc!11926 Int) List!18066)

(assert (=> d!492752 (= (list!7092 lt!598256) (printListTailRec!369 thiss!17113 (dropList!634 lt!597944 0) (list!7092 (BalanceConc!11925 Empty!5990))))))

(declare-fun e!1049443 () BalanceConc!11924)

(assert (=> d!492752 (= lt!598256 e!1049443)))

(declare-fun c!266264 () Bool)

(assert (=> d!492752 (= c!266264 (>= 0 (size!14354 lt!597944)))))

(declare-fun e!1049444 () Bool)

(assert (=> d!492752 e!1049444))

(declare-fun res!732826 () Bool)

(assert (=> d!492752 (=> (not res!732826) (not e!1049444))))

(assert (=> d!492752 (= res!732826 (>= 0 0))))

(assert (=> d!492752 (= (printTailRec!853 thiss!17113 lt!597944 0 (BalanceConc!11925 Empty!5990)) lt!598256)))

(declare-fun b!1636429 () Bool)

(assert (=> b!1636429 (= e!1049444 (<= 0 (size!14354 lt!597944)))))

(declare-fun b!1636430 () Bool)

(assert (=> b!1636430 (= e!1049443 (BalanceConc!11925 Empty!5990))))

(declare-fun b!1636431 () Bool)

(declare-fun apply!4661 (BalanceConc!11926 Int) Token!5908)

(assert (=> b!1636431 (= e!1049443 (printTailRec!853 thiss!17113 lt!597944 (+ 0 1) (++!4820 (BalanceConc!11925 Empty!5990) (charsOf!1820 (apply!4661 lt!597944 0)))))))

(declare-fun lt!598259 () List!18066)

(assert (=> b!1636431 (= lt!598259 (list!7091 lt!597944))))

(declare-fun lt!598258 () Unit!29430)

(declare-fun lemmaDropApply!576 (List!18066 Int) Unit!29430)

(assert (=> b!1636431 (= lt!598258 (lemmaDropApply!576 lt!598259 0))))

(declare-fun head!3530 (List!18066) Token!5908)

(declare-fun drop!888 (List!18066 Int) List!18066)

(declare-fun apply!4662 (List!18066 Int) Token!5908)

(assert (=> b!1636431 (= (head!3530 (drop!888 lt!598259 0)) (apply!4662 lt!598259 0))))

(declare-fun lt!598260 () Unit!29430)

(assert (=> b!1636431 (= lt!598260 lt!598258)))

(declare-fun lt!598261 () List!18066)

(assert (=> b!1636431 (= lt!598261 (list!7091 lt!597944))))

(declare-fun lt!598262 () Unit!29430)

(declare-fun lemmaDropTail!556 (List!18066 Int) Unit!29430)

(assert (=> b!1636431 (= lt!598262 (lemmaDropTail!556 lt!598261 0))))

(declare-fun tail!2393 (List!18066) List!18066)

(assert (=> b!1636431 (= (tail!2393 (drop!888 lt!598261 0)) (drop!888 lt!598261 (+ 0 1)))))

(declare-fun lt!598257 () Unit!29430)

(assert (=> b!1636431 (= lt!598257 lt!598262)))

(assert (= (and d!492752 res!732826) b!1636429))

(assert (= (and d!492752 c!266264) b!1636430))

(assert (= (and d!492752 (not c!266264)) b!1636431))

(declare-fun m!1973683 () Bool)

(assert (=> d!492752 m!1973683))

(assert (=> d!492752 m!1973683))

(declare-fun m!1973685 () Bool)

(assert (=> d!492752 m!1973685))

(declare-fun m!1973687 () Bool)

(assert (=> d!492752 m!1973687))

(declare-fun m!1973689 () Bool)

(assert (=> d!492752 m!1973689))

(declare-fun m!1973691 () Bool)

(assert (=> d!492752 m!1973691))

(assert (=> d!492752 m!1973685))

(assert (=> b!1636429 m!1973691))

(declare-fun m!1973693 () Bool)

(assert (=> b!1636431 m!1973693))

(declare-fun m!1973695 () Bool)

(assert (=> b!1636431 m!1973695))

(declare-fun m!1973697 () Bool)

(assert (=> b!1636431 m!1973697))

(declare-fun m!1973699 () Bool)

(assert (=> b!1636431 m!1973699))

(declare-fun m!1973701 () Bool)

(assert (=> b!1636431 m!1973701))

(assert (=> b!1636431 m!1973701))

(declare-fun m!1973703 () Bool)

(assert (=> b!1636431 m!1973703))

(declare-fun m!1973705 () Bool)

(assert (=> b!1636431 m!1973705))

(declare-fun m!1973707 () Bool)

(assert (=> b!1636431 m!1973707))

(declare-fun m!1973709 () Bool)

(assert (=> b!1636431 m!1973709))

(declare-fun m!1973711 () Bool)

(assert (=> b!1636431 m!1973711))

(assert (=> b!1636431 m!1973711))

(assert (=> b!1636431 m!1973699))

(assert (=> b!1636431 m!1973641))

(declare-fun m!1973713 () Bool)

(assert (=> b!1636431 m!1973713))

(assert (=> b!1636431 m!1973713))

(declare-fun m!1973715 () Bool)

(assert (=> b!1636431 m!1973715))

(assert (=> b!1636431 m!1973693))

(assert (=> b!1636076 d!492752))

(declare-fun d!492754 () Bool)

(declare-fun e!1049447 () Bool)

(assert (=> d!492754 e!1049447))

(declare-fun res!732829 () Bool)

(assert (=> d!492754 (=> (not res!732829) (not e!1049447))))

(declare-fun lt!598265 () BalanceConc!11926)

(assert (=> d!492754 (= res!732829 (= (list!7091 lt!598265) (Cons!17996 (h!23397 tokens!457) Nil!17996)))))

(declare-fun singleton!696 (Token!5908) BalanceConc!11926)

(assert (=> d!492754 (= lt!598265 (singleton!696 (h!23397 tokens!457)))))

(assert (=> d!492754 (= (singletonSeq!1621 (h!23397 tokens!457)) lt!598265)))

(declare-fun b!1636434 () Bool)

(declare-fun isBalanced!1816 (Conc!5991) Bool)

(assert (=> b!1636434 (= e!1049447 (isBalanced!1816 (c!266197 lt!598265)))))

(assert (= (and d!492754 res!732829) b!1636434))

(declare-fun m!1973717 () Bool)

(assert (=> d!492754 m!1973717))

(declare-fun m!1973719 () Bool)

(assert (=> d!492754 m!1973719))

(declare-fun m!1973721 () Bool)

(assert (=> b!1636434 m!1973721))

(assert (=> b!1636076 d!492754))

(declare-fun d!492756 () Bool)

(declare-fun res!732832 () Bool)

(declare-fun e!1049450 () Bool)

(assert (=> d!492756 (=> (not res!732832) (not e!1049450))))

(declare-fun rulesValid!1142 (LexerInterface!2800 List!18065) Bool)

(assert (=> d!492756 (= res!732832 (rulesValid!1142 thiss!17113 rules!1846))))

(assert (=> d!492756 (= (rulesInvariant!2469 thiss!17113 rules!1846) e!1049450)))

(declare-fun b!1636437 () Bool)

(declare-datatypes ((List!18068 0))(
  ( (Nil!17998) (Cons!17998 (h!23399 String!20637) (t!149777 List!18068)) )
))
(declare-fun noDuplicateTag!1142 (LexerInterface!2800 List!18065 List!18068) Bool)

(assert (=> b!1636437 (= e!1049450 (noDuplicateTag!1142 thiss!17113 rules!1846 Nil!17998))))

(assert (= (and d!492756 res!732832) b!1636437))

(declare-fun m!1973723 () Bool)

(assert (=> d!492756 m!1973723))

(declare-fun m!1973725 () Bool)

(assert (=> b!1636437 m!1973725))

(assert (=> b!1636055 d!492756))

(declare-fun d!492758 () Bool)

(declare-fun res!732837 () Bool)

(declare-fun e!1049453 () Bool)

(assert (=> d!492758 (=> (not res!732837) (not e!1049453))))

(assert (=> d!492758 (= res!732837 (not (isEmpty!11027 (originalCharacters!3985 (h!23397 tokens!457)))))))

(assert (=> d!492758 (= (inv!23350 (h!23397 tokens!457)) e!1049453)))

(declare-fun b!1636442 () Bool)

(declare-fun res!732838 () Bool)

(assert (=> b!1636442 (=> (not res!732838) (not e!1049453))))

(assert (=> b!1636442 (= res!732838 (= (originalCharacters!3985 (h!23397 tokens!457)) (list!7092 (dynLambda!8019 (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457)))) (value!100046 (h!23397 tokens!457))))))))

(declare-fun b!1636443 () Bool)

(assert (=> b!1636443 (= e!1049453 (= (size!14350 (h!23397 tokens!457)) (size!14356 (originalCharacters!3985 (h!23397 tokens!457)))))))

(assert (= (and d!492758 res!732837) b!1636442))

(assert (= (and b!1636442 res!732838) b!1636443))

(declare-fun b_lambda!51441 () Bool)

(assert (=> (not b_lambda!51441) (not b!1636442)))

(assert (=> b!1636442 t!149740))

(declare-fun b_and!115989 () Bool)

(assert (= b_and!115985 (and (=> t!149740 result!113156) b_and!115989)))

(assert (=> b!1636442 t!149742))

(declare-fun b_and!115991 () Bool)

(assert (= b_and!115987 (and (=> t!149742 result!113160) b_and!115991)))

(declare-fun m!1973727 () Bool)

(assert (=> d!492758 m!1973727))

(assert (=> b!1636442 m!1973451))

(assert (=> b!1636442 m!1973451))

(declare-fun m!1973729 () Bool)

(assert (=> b!1636442 m!1973729))

(declare-fun m!1973731 () Bool)

(assert (=> b!1636443 m!1973731))

(assert (=> b!1636054 d!492758))

(declare-fun d!492760 () Bool)

(declare-fun lt!598270 () Bool)

(declare-fun e!1049459 () Bool)

(assert (=> d!492760 (= lt!598270 e!1049459)))

(declare-fun res!732847 () Bool)

(assert (=> d!492760 (=> (not res!732847) (not e!1049459))))

(assert (=> d!492760 (= res!732847 (= (list!7091 (_1!10212 (lex!1284 thiss!17113 rules!1846 (print!1331 thiss!17113 (singletonSeq!1621 (h!23397 tokens!457)))))) (list!7091 (singletonSeq!1621 (h!23397 tokens!457)))))))

(declare-fun e!1049458 () Bool)

(assert (=> d!492760 (= lt!598270 e!1049458)))

(declare-fun res!732845 () Bool)

(assert (=> d!492760 (=> (not res!732845) (not e!1049458))))

(declare-fun lt!598271 () tuple2!17620)

(assert (=> d!492760 (= res!732845 (= (size!14354 (_1!10212 lt!598271)) 1))))

(assert (=> d!492760 (= lt!598271 (lex!1284 thiss!17113 rules!1846 (print!1331 thiss!17113 (singletonSeq!1621 (h!23397 tokens!457)))))))

(assert (=> d!492760 (not (isEmpty!11026 rules!1846))))

(assert (=> d!492760 (= (rulesProduceIndividualToken!1452 thiss!17113 rules!1846 (h!23397 tokens!457)) lt!598270)))

(declare-fun b!1636450 () Bool)

(declare-fun res!732846 () Bool)

(assert (=> b!1636450 (=> (not res!732846) (not e!1049458))))

(assert (=> b!1636450 (= res!732846 (= (apply!4661 (_1!10212 lt!598271) 0) (h!23397 tokens!457)))))

(declare-fun b!1636451 () Bool)

(assert (=> b!1636451 (= e!1049458 (isEmpty!11036 (_2!10212 lt!598271)))))

(declare-fun b!1636452 () Bool)

(assert (=> b!1636452 (= e!1049459 (isEmpty!11036 (_2!10212 (lex!1284 thiss!17113 rules!1846 (print!1331 thiss!17113 (singletonSeq!1621 (h!23397 tokens!457)))))))))

(assert (= (and d!492760 res!732845) b!1636450))

(assert (= (and b!1636450 res!732846) b!1636451))

(assert (= (and d!492760 res!732847) b!1636452))

(declare-fun m!1973733 () Bool)

(assert (=> d!492760 m!1973733))

(declare-fun m!1973735 () Bool)

(assert (=> d!492760 m!1973735))

(assert (=> d!492760 m!1973051))

(declare-fun m!1973737 () Bool)

(assert (=> d!492760 m!1973737))

(declare-fun m!1973739 () Bool)

(assert (=> d!492760 m!1973739))

(assert (=> d!492760 m!1972943))

(declare-fun m!1973741 () Bool)

(assert (=> d!492760 m!1973741))

(assert (=> d!492760 m!1972943))

(assert (=> d!492760 m!1973737))

(assert (=> d!492760 m!1972943))

(declare-fun m!1973743 () Bool)

(assert (=> b!1636450 m!1973743))

(declare-fun m!1973745 () Bool)

(assert (=> b!1636451 m!1973745))

(assert (=> b!1636452 m!1972943))

(assert (=> b!1636452 m!1972943))

(assert (=> b!1636452 m!1973737))

(assert (=> b!1636452 m!1973737))

(assert (=> b!1636452 m!1973739))

(declare-fun m!1973747 () Bool)

(assert (=> b!1636452 m!1973747))

(assert (=> b!1636075 d!492760))

(declare-fun d!492762 () Bool)

(assert (=> d!492762 (= (inv!23346 (tag!3451 (rule!5013 (h!23397 tokens!457)))) (= (mod (str.len (value!100045 (tag!3451 (rule!5013 (h!23397 tokens!457))))) 2) 0))))

(assert (=> b!1636074 d!492762))

(declare-fun d!492764 () Bool)

(declare-fun res!732848 () Bool)

(declare-fun e!1049460 () Bool)

(assert (=> d!492764 (=> (not res!732848) (not e!1049460))))

(assert (=> d!492764 (= res!732848 (semiInverseModEq!1214 (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457)))) (toValue!4602 (transformation!3171 (rule!5013 (h!23397 tokens!457))))))))

(assert (=> d!492764 (= (inv!23349 (transformation!3171 (rule!5013 (h!23397 tokens!457)))) e!1049460)))

(declare-fun b!1636453 () Bool)

(assert (=> b!1636453 (= e!1049460 (equivClasses!1155 (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457)))) (toValue!4602 (transformation!3171 (rule!5013 (h!23397 tokens!457))))))))

(assert (= (and d!492764 res!732848) b!1636453))

(declare-fun m!1973749 () Bool)

(assert (=> d!492764 m!1973749))

(declare-fun m!1973751 () Bool)

(assert (=> b!1636453 m!1973751))

(assert (=> b!1636074 d!492764))

(declare-fun d!492766 () Bool)

(declare-fun c!266267 () Bool)

(assert (=> d!492766 (= c!266267 (isEmpty!11027 (++!4819 lt!597936 lt!597924)))))

(declare-fun e!1049463 () Bool)

(assert (=> d!492766 (= (prefixMatch!434 lt!597926 (++!4819 lt!597936 lt!597924)) e!1049463)))

(declare-fun b!1636458 () Bool)

(declare-fun lostCause!452 (Regex!4499) Bool)

(assert (=> b!1636458 (= e!1049463 (not (lostCause!452 lt!597926)))))

(declare-fun b!1636459 () Bool)

(declare-fun derivativeStep!1096 (Regex!4499 C!9172) Regex!4499)

(declare-fun tail!2394 (List!18064) List!18064)

(assert (=> b!1636459 (= e!1049463 (prefixMatch!434 (derivativeStep!1096 lt!597926 (head!3527 (++!4819 lt!597936 lt!597924))) (tail!2394 (++!4819 lt!597936 lt!597924))))))

(assert (= (and d!492766 c!266267) b!1636458))

(assert (= (and d!492766 (not c!266267)) b!1636459))

(assert (=> d!492766 m!1972935))

(declare-fun m!1973753 () Bool)

(assert (=> d!492766 m!1973753))

(declare-fun m!1973755 () Bool)

(assert (=> b!1636458 m!1973755))

(assert (=> b!1636459 m!1972935))

(declare-fun m!1973757 () Bool)

(assert (=> b!1636459 m!1973757))

(assert (=> b!1636459 m!1973757))

(declare-fun m!1973759 () Bool)

(assert (=> b!1636459 m!1973759))

(assert (=> b!1636459 m!1972935))

(declare-fun m!1973761 () Bool)

(assert (=> b!1636459 m!1973761))

(assert (=> b!1636459 m!1973759))

(assert (=> b!1636459 m!1973761))

(declare-fun m!1973763 () Bool)

(assert (=> b!1636459 m!1973763))

(assert (=> b!1636053 d!492766))

(declare-fun d!492768 () Bool)

(declare-fun e!1049465 () Bool)

(assert (=> d!492768 e!1049465))

(declare-fun res!732849 () Bool)

(assert (=> d!492768 (=> (not res!732849) (not e!1049465))))

(declare-fun lt!598272 () List!18064)

(assert (=> d!492768 (= res!732849 (= (content!2493 lt!598272) ((_ map or) (content!2493 lt!597936) (content!2493 lt!597924))))))

(declare-fun e!1049464 () List!18064)

(assert (=> d!492768 (= lt!598272 e!1049464)))

(declare-fun c!266268 () Bool)

(assert (=> d!492768 (= c!266268 ((_ is Nil!17994) lt!597936))))

(assert (=> d!492768 (= (++!4819 lt!597936 lt!597924) lt!598272)))

(declare-fun b!1636461 () Bool)

(assert (=> b!1636461 (= e!1049464 (Cons!17994 (h!23395 lt!597936) (++!4819 (t!149731 lt!597936) lt!597924)))))

(declare-fun b!1636463 () Bool)

(assert (=> b!1636463 (= e!1049465 (or (not (= lt!597924 Nil!17994)) (= lt!598272 lt!597936)))))

(declare-fun b!1636460 () Bool)

(assert (=> b!1636460 (= e!1049464 lt!597924)))

(declare-fun b!1636462 () Bool)

(declare-fun res!732850 () Bool)

(assert (=> b!1636462 (=> (not res!732850) (not e!1049465))))

(assert (=> b!1636462 (= res!732850 (= (size!14356 lt!598272) (+ (size!14356 lt!597936) (size!14356 lt!597924))))))

(assert (= (and d!492768 c!266268) b!1636460))

(assert (= (and d!492768 (not c!266268)) b!1636461))

(assert (= (and d!492768 res!732849) b!1636462))

(assert (= (and b!1636462 res!732850) b!1636463))

(declare-fun m!1973765 () Bool)

(assert (=> d!492768 m!1973765))

(assert (=> d!492768 m!1973411))

(declare-fun m!1973767 () Bool)

(assert (=> d!492768 m!1973767))

(declare-fun m!1973769 () Bool)

(assert (=> b!1636461 m!1973769))

(declare-fun m!1973771 () Bool)

(assert (=> b!1636462 m!1973771))

(assert (=> b!1636462 m!1973419))

(declare-fun m!1973773 () Bool)

(assert (=> b!1636462 m!1973773))

(assert (=> b!1636053 d!492768))

(declare-fun b!1636492 () Bool)

(declare-fun e!1049482 () Bool)

(assert (=> b!1636492 (= e!1049482 (matchR!1998 (derivativeStep!1096 (regex!3171 (rule!5013 (h!23397 tokens!457))) (head!3527 lt!597936)) (tail!2394 lt!597936)))))

(declare-fun b!1636493 () Bool)

(declare-fun e!1049486 () Bool)

(assert (=> b!1636493 (= e!1049486 (= (head!3527 lt!597936) (c!266196 (regex!3171 (rule!5013 (h!23397 tokens!457))))))))

(declare-fun bm!105655 () Bool)

(declare-fun call!105660 () Bool)

(assert (=> bm!105655 (= call!105660 (isEmpty!11027 lt!597936))))

(declare-fun b!1636494 () Bool)

(declare-fun e!1049485 () Bool)

(declare-fun e!1049480 () Bool)

(assert (=> b!1636494 (= e!1049485 e!1049480)))

(declare-fun res!732871 () Bool)

(assert (=> b!1636494 (=> res!732871 e!1049480)))

(assert (=> b!1636494 (= res!732871 call!105660)))

(declare-fun b!1636495 () Bool)

(declare-fun res!732872 () Bool)

(declare-fun e!1049481 () Bool)

(assert (=> b!1636495 (=> res!732872 e!1049481)))

(assert (=> b!1636495 (= res!732872 (not ((_ is ElementMatch!4499) (regex!3171 (rule!5013 (h!23397 tokens!457))))))))

(declare-fun e!1049484 () Bool)

(assert (=> b!1636495 (= e!1049484 e!1049481)))

(declare-fun b!1636496 () Bool)

(declare-fun e!1049483 () Bool)

(assert (=> b!1636496 (= e!1049483 e!1049484)))

(declare-fun c!266277 () Bool)

(assert (=> b!1636496 (= c!266277 ((_ is EmptyLang!4499) (regex!3171 (rule!5013 (h!23397 tokens!457)))))))

(declare-fun b!1636497 () Bool)

(assert (=> b!1636497 (= e!1049481 e!1049485)))

(declare-fun res!732874 () Bool)

(assert (=> b!1636497 (=> (not res!732874) (not e!1049485))))

(declare-fun lt!598275 () Bool)

(assert (=> b!1636497 (= res!732874 (not lt!598275))))

(declare-fun b!1636498 () Bool)

(declare-fun res!732870 () Bool)

(assert (=> b!1636498 (=> res!732870 e!1049481)))

(assert (=> b!1636498 (= res!732870 e!1049486)))

(declare-fun res!732867 () Bool)

(assert (=> b!1636498 (=> (not res!732867) (not e!1049486))))

(assert (=> b!1636498 (= res!732867 lt!598275)))

(declare-fun b!1636500 () Bool)

(declare-fun res!732873 () Bool)

(assert (=> b!1636500 (=> res!732873 e!1049480)))

(assert (=> b!1636500 (= res!732873 (not (isEmpty!11027 (tail!2394 lt!597936))))))

(declare-fun b!1636501 () Bool)

(assert (=> b!1636501 (= e!1049483 (= lt!598275 call!105660))))

(declare-fun b!1636502 () Bool)

(assert (=> b!1636502 (= e!1049480 (not (= (head!3527 lt!597936) (c!266196 (regex!3171 (rule!5013 (h!23397 tokens!457)))))))))

(declare-fun b!1636503 () Bool)

(assert (=> b!1636503 (= e!1049484 (not lt!598275))))

(declare-fun b!1636504 () Bool)

(declare-fun nullable!1331 (Regex!4499) Bool)

(assert (=> b!1636504 (= e!1049482 (nullable!1331 (regex!3171 (rule!5013 (h!23397 tokens!457)))))))

(declare-fun b!1636505 () Bool)

(declare-fun res!732869 () Bool)

(assert (=> b!1636505 (=> (not res!732869) (not e!1049486))))

(assert (=> b!1636505 (= res!732869 (not call!105660))))

(declare-fun d!492770 () Bool)

(assert (=> d!492770 e!1049483))

(declare-fun c!266275 () Bool)

(assert (=> d!492770 (= c!266275 ((_ is EmptyExpr!4499) (regex!3171 (rule!5013 (h!23397 tokens!457)))))))

(assert (=> d!492770 (= lt!598275 e!1049482)))

(declare-fun c!266276 () Bool)

(assert (=> d!492770 (= c!266276 (isEmpty!11027 lt!597936))))

(declare-fun validRegex!1792 (Regex!4499) Bool)

(assert (=> d!492770 (validRegex!1792 (regex!3171 (rule!5013 (h!23397 tokens!457))))))

(assert (=> d!492770 (= (matchR!1998 (regex!3171 (rule!5013 (h!23397 tokens!457))) lt!597936) lt!598275)))

(declare-fun b!1636499 () Bool)

(declare-fun res!732868 () Bool)

(assert (=> b!1636499 (=> (not res!732868) (not e!1049486))))

(assert (=> b!1636499 (= res!732868 (isEmpty!11027 (tail!2394 lt!597936)))))

(assert (= (and d!492770 c!266276) b!1636504))

(assert (= (and d!492770 (not c!266276)) b!1636492))

(assert (= (and d!492770 c!266275) b!1636501))

(assert (= (and d!492770 (not c!266275)) b!1636496))

(assert (= (and b!1636496 c!266277) b!1636503))

(assert (= (and b!1636496 (not c!266277)) b!1636495))

(assert (= (and b!1636495 (not res!732872)) b!1636498))

(assert (= (and b!1636498 res!732867) b!1636505))

(assert (= (and b!1636505 res!732869) b!1636499))

(assert (= (and b!1636499 res!732868) b!1636493))

(assert (= (and b!1636498 (not res!732870)) b!1636497))

(assert (= (and b!1636497 res!732874) b!1636494))

(assert (= (and b!1636494 (not res!732871)) b!1636500))

(assert (= (and b!1636500 (not res!732873)) b!1636502))

(assert (= (or b!1636501 b!1636494 b!1636505) bm!105655))

(declare-fun m!1973775 () Bool)

(assert (=> b!1636500 m!1973775))

(assert (=> b!1636500 m!1973775))

(declare-fun m!1973777 () Bool)

(assert (=> b!1636500 m!1973777))

(declare-fun m!1973779 () Bool)

(assert (=> bm!105655 m!1973779))

(declare-fun m!1973781 () Bool)

(assert (=> b!1636493 m!1973781))

(declare-fun m!1973783 () Bool)

(assert (=> b!1636504 m!1973783))

(assert (=> b!1636502 m!1973781))

(assert (=> d!492770 m!1973779))

(declare-fun m!1973785 () Bool)

(assert (=> d!492770 m!1973785))

(assert (=> b!1636492 m!1973781))

(assert (=> b!1636492 m!1973781))

(declare-fun m!1973787 () Bool)

(assert (=> b!1636492 m!1973787))

(assert (=> b!1636492 m!1973775))

(assert (=> b!1636492 m!1973787))

(assert (=> b!1636492 m!1973775))

(declare-fun m!1973789 () Bool)

(assert (=> b!1636492 m!1973789))

(assert (=> b!1636499 m!1973775))

(assert (=> b!1636499 m!1973775))

(assert (=> b!1636499 m!1973777))

(assert (=> b!1636079 d!492770))

(declare-fun d!492772 () Bool)

(declare-fun e!1049489 () Bool)

(assert (=> d!492772 e!1049489))

(declare-fun res!732877 () Bool)

(assert (=> d!492772 (=> (not res!732877) (not e!1049489))))

(declare-fun prepend!713 (Conc!5991 Token!5908) Conc!5991)

(assert (=> d!492772 (= res!732877 (isBalanced!1816 (prepend!713 (c!266197 (seqFromList!2092 (t!149733 (t!149733 tokens!457)))) (h!23397 (t!149733 tokens!457)))))))

(declare-fun lt!598278 () BalanceConc!11926)

(assert (=> d!492772 (= lt!598278 (BalanceConc!11927 (prepend!713 (c!266197 (seqFromList!2092 (t!149733 (t!149733 tokens!457)))) (h!23397 (t!149733 tokens!457)))))))

(assert (=> d!492772 (= (prepend!711 (seqFromList!2092 (t!149733 (t!149733 tokens!457))) (h!23397 (t!149733 tokens!457))) lt!598278)))

(declare-fun b!1636508 () Bool)

(assert (=> b!1636508 (= e!1049489 (= (list!7091 lt!598278) (Cons!17996 (h!23397 (t!149733 tokens!457)) (list!7091 (seqFromList!2092 (t!149733 (t!149733 tokens!457)))))))))

(assert (= (and d!492772 res!732877) b!1636508))

(declare-fun m!1973791 () Bool)

(assert (=> d!492772 m!1973791))

(assert (=> d!492772 m!1973791))

(declare-fun m!1973793 () Bool)

(assert (=> d!492772 m!1973793))

(declare-fun m!1973795 () Bool)

(assert (=> b!1636508 m!1973795))

(assert (=> b!1636508 m!1972981))

(declare-fun m!1973797 () Bool)

(assert (=> b!1636508 m!1973797))

(assert (=> b!1636057 d!492772))

(declare-fun d!492774 () Bool)

(declare-fun list!7096 (Conc!5991) List!18066)

(assert (=> d!492774 (= (list!7091 (prepend!711 (seqFromList!2092 (t!149733 (t!149733 tokens!457))) (h!23397 (t!149733 tokens!457)))) (list!7096 (c!266197 (prepend!711 (seqFromList!2092 (t!149733 (t!149733 tokens!457))) (h!23397 (t!149733 tokens!457))))))))

(declare-fun bs!395416 () Bool)

(assert (= bs!395416 d!492774))

(declare-fun m!1973799 () Bool)

(assert (=> bs!395416 m!1973799))

(assert (=> b!1636057 d!492774))

(declare-fun d!492776 () Bool)

(assert (=> d!492776 (= (seqFromList!2092 (t!149733 (t!149733 tokens!457))) (fromListB!923 (t!149733 (t!149733 tokens!457))))))

(declare-fun bs!395417 () Bool)

(assert (= bs!395417 d!492776))

(declare-fun m!1973801 () Bool)

(assert (=> bs!395417 m!1973801))

(assert (=> b!1636057 d!492776))

(declare-fun d!492778 () Bool)

(assert (=> d!492778 (= (list!7091 (_1!10212 lt!597939)) (list!7091 (prepend!711 (seqFromList!2092 (t!149733 (t!149733 tokens!457))) (h!23397 (t!149733 tokens!457)))))))

(declare-fun lt!598281 () Unit!29430)

(declare-fun choose!9831 (Token!5908 List!18066 BalanceConc!11926) Unit!29430)

(assert (=> d!492778 (= lt!598281 (choose!9831 (h!23397 (t!149733 tokens!457)) (t!149733 (t!149733 tokens!457)) (_1!10212 lt!597939)))))

(declare-fun $colon$colon!345 (List!18066 Token!5908) List!18066)

(assert (=> d!492778 (= (list!7091 (_1!10212 lt!597939)) (list!7091 (seqFromList!2092 ($colon$colon!345 (t!149733 (t!149733 tokens!457)) (h!23397 (t!149733 tokens!457))))))))

(assert (=> d!492778 (= (seqFromListBHdTlConstructive!248 (h!23397 (t!149733 tokens!457)) (t!149733 (t!149733 tokens!457)) (_1!10212 lt!597939)) lt!598281)))

(declare-fun bs!395418 () Bool)

(assert (= bs!395418 d!492778))

(declare-fun m!1973803 () Bool)

(assert (=> bs!395418 m!1973803))

(assert (=> bs!395418 m!1973003))

(assert (=> bs!395418 m!1972983))

(assert (=> bs!395418 m!1972985))

(declare-fun m!1973805 () Bool)

(assert (=> bs!395418 m!1973805))

(declare-fun m!1973807 () Bool)

(assert (=> bs!395418 m!1973807))

(declare-fun m!1973809 () Bool)

(assert (=> bs!395418 m!1973809))

(assert (=> bs!395418 m!1973803))

(assert (=> bs!395418 m!1973805))

(assert (=> bs!395418 m!1972981))

(assert (=> bs!395418 m!1972983))

(assert (=> bs!395418 m!1972981))

(assert (=> b!1636057 d!492778))

(declare-fun d!492780 () Bool)

(assert (=> d!492780 (= (list!7091 lt!597940) (list!7096 (c!266197 lt!597940)))))

(declare-fun bs!395419 () Bool)

(assert (= bs!395419 d!492780))

(declare-fun m!1973811 () Bool)

(assert (=> bs!395419 m!1973811))

(assert (=> b!1636057 d!492780))

(declare-fun d!492782 () Bool)

(assert (=> d!492782 (= (isDefined!2746 lt!597937) (not (isEmpty!11035 lt!597937)))))

(declare-fun bs!395420 () Bool)

(assert (= bs!395420 d!492782))

(declare-fun m!1973813 () Bool)

(assert (=> bs!395420 m!1973813))

(assert (=> b!1636056 d!492782))

(declare-fun d!492784 () Bool)

(assert (=> d!492784 (= (list!7091 (_1!10212 lt!597939)) (list!7096 (c!266197 (_1!10212 lt!597939))))))

(declare-fun bs!395421 () Bool)

(assert (= bs!395421 d!492784))

(declare-fun m!1973815 () Bool)

(assert (=> bs!395421 m!1973815))

(assert (=> b!1636077 d!492784))

(declare-fun d!492786 () Bool)

(declare-fun e!1049553 () Bool)

(assert (=> d!492786 e!1049553))

(declare-fun res!732943 () Bool)

(assert (=> d!492786 (=> (not res!732943) (not e!1049553))))

(assert (=> d!492786 (= res!732943 (= (list!7091 (_1!10212 (lex!1284 thiss!17113 rules!1846 (print!1331 thiss!17113 (seqFromList!2092 (t!149733 tokens!457)))))) (t!149733 tokens!457)))))

(declare-fun lt!598415 () Unit!29430)

(declare-fun e!1049554 () Unit!29430)

(assert (=> d!492786 (= lt!598415 e!1049554)))

(declare-fun c!266297 () Bool)

(assert (=> d!492786 (= c!266297 (or ((_ is Nil!17996) (t!149733 tokens!457)) ((_ is Nil!17996) (t!149733 (t!149733 tokens!457)))))))

(assert (=> d!492786 (not (isEmpty!11026 rules!1846))))

(assert (=> d!492786 (= (theoremInvertabilityWhenTokenListSeparable!245 thiss!17113 rules!1846 (t!149733 tokens!457)) lt!598415)))

(declare-fun b!1636618 () Bool)

(declare-fun Unit!29451 () Unit!29430)

(assert (=> b!1636618 (= e!1049554 Unit!29451)))

(declare-fun b!1636619 () Bool)

(declare-fun Unit!29452 () Unit!29430)

(assert (=> b!1636619 (= e!1049554 Unit!29452)))

(declare-fun lt!598414 () BalanceConc!11924)

(assert (=> b!1636619 (= lt!598414 (print!1331 thiss!17113 (seqFromList!2092 (t!149733 tokens!457))))))

(declare-fun lt!598408 () BalanceConc!11924)

(assert (=> b!1636619 (= lt!598408 (print!1331 thiss!17113 (seqFromList!2092 (t!149733 (t!149733 tokens!457)))))))

(declare-fun lt!598411 () tuple2!17620)

(assert (=> b!1636619 (= lt!598411 (lex!1284 thiss!17113 rules!1846 lt!598408))))

(declare-fun lt!598420 () List!18064)

(assert (=> b!1636619 (= lt!598420 (list!7092 (charsOf!1820 (h!23397 (t!149733 tokens!457)))))))

(declare-fun lt!598398 () List!18064)

(assert (=> b!1636619 (= lt!598398 (list!7092 lt!598408))))

(declare-fun lt!598409 () Unit!29430)

(assert (=> b!1636619 (= lt!598409 (lemmaConcatTwoListThenFirstIsPrefix!956 lt!598420 lt!598398))))

(assert (=> b!1636619 (isPrefix!1431 lt!598420 (++!4819 lt!598420 lt!598398))))

(declare-fun lt!598418 () Unit!29430)

(assert (=> b!1636619 (= lt!598418 lt!598409)))

(declare-fun lt!598395 () Unit!29430)

(assert (=> b!1636619 (= lt!598395 (theoremInvertabilityWhenTokenListSeparable!245 thiss!17113 rules!1846 (t!149733 (t!149733 tokens!457))))))

(declare-fun lt!598417 () Unit!29430)

(assert (=> b!1636619 (= lt!598417 (seqFromListBHdTlConstructive!248 (h!23397 (t!149733 (t!149733 tokens!457))) (t!149733 (t!149733 (t!149733 tokens!457))) (_1!10212 lt!598411)))))

(assert (=> b!1636619 (= (list!7091 (_1!10212 lt!598411)) (list!7091 (prepend!711 (seqFromList!2092 (t!149733 (t!149733 (t!149733 tokens!457)))) (h!23397 (t!149733 (t!149733 tokens!457))))))))

(declare-fun lt!598412 () Unit!29430)

(assert (=> b!1636619 (= lt!598412 lt!598417)))

(declare-fun lt!598400 () Option!3380)

(assert (=> b!1636619 (= lt!598400 (maxPrefix!1364 thiss!17113 rules!1846 (list!7092 lt!598414)))))

(assert (=> b!1636619 (= (print!1331 thiss!17113 (singletonSeq!1621 (h!23397 (t!149733 tokens!457)))) (printTailRec!853 thiss!17113 (singletonSeq!1621 (h!23397 (t!149733 tokens!457))) 0 (BalanceConc!11925 Empty!5990)))))

(declare-fun lt!598397 () Unit!29430)

(declare-fun Unit!29453 () Unit!29430)

(assert (=> b!1636619 (= lt!598397 Unit!29453)))

(declare-fun lt!598396 () Unit!29430)

(assert (=> b!1636619 (= lt!598396 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!374 thiss!17113 rules!1846 (list!7092 (charsOf!1820 (h!23397 (t!149733 tokens!457)))) (list!7092 lt!598408)))))

(assert (=> b!1636619 (= (list!7092 (charsOf!1820 (h!23397 (t!149733 tokens!457)))) (originalCharacters!3985 (h!23397 (t!149733 tokens!457))))))

(declare-fun lt!598403 () Unit!29430)

(declare-fun Unit!29454 () Unit!29430)

(assert (=> b!1636619 (= lt!598403 Unit!29454)))

(assert (=> b!1636619 (= (list!7092 (singletonSeq!1620 (apply!4656 (charsOf!1820 (h!23397 (t!149733 (t!149733 tokens!457)))) 0))) (Cons!17994 (head!3527 (originalCharacters!3985 (h!23397 (t!149733 (t!149733 tokens!457))))) Nil!17994))))

(declare-fun lt!598407 () Unit!29430)

(declare-fun Unit!29455 () Unit!29430)

(assert (=> b!1636619 (= lt!598407 Unit!29455)))

(assert (=> b!1636619 (= (list!7092 (singletonSeq!1620 (apply!4656 (charsOf!1820 (h!23397 (t!149733 (t!149733 tokens!457)))) 0))) (Cons!17994 (head!3527 (list!7092 lt!598408)) Nil!17994))))

(declare-fun lt!598401 () Unit!29430)

(declare-fun Unit!29456 () Unit!29430)

(assert (=> b!1636619 (= lt!598401 Unit!29456)))

(assert (=> b!1636619 (= (list!7092 (singletonSeq!1620 (apply!4656 (charsOf!1820 (h!23397 (t!149733 (t!149733 tokens!457)))) 0))) (Cons!17994 (head!3526 lt!598408) Nil!17994))))

(declare-fun lt!598413 () Unit!29430)

(declare-fun Unit!29457 () Unit!29430)

(assert (=> b!1636619 (= lt!598413 Unit!29457)))

(assert (=> b!1636619 (isDefined!2747 (maxPrefix!1364 thiss!17113 rules!1846 (originalCharacters!3985 (h!23397 (t!149733 tokens!457)))))))

(declare-fun lt!598405 () Unit!29430)

(declare-fun Unit!29458 () Unit!29430)

(assert (=> b!1636619 (= lt!598405 Unit!29458)))

(assert (=> b!1636619 (isDefined!2747 (maxPrefix!1364 thiss!17113 rules!1846 (list!7092 (charsOf!1820 (h!23397 (t!149733 tokens!457))))))))

(declare-fun lt!598410 () Unit!29430)

(declare-fun Unit!29459 () Unit!29430)

(assert (=> b!1636619 (= lt!598410 Unit!29459)))

(declare-fun lt!598399 () Unit!29430)

(declare-fun Unit!29460 () Unit!29430)

(assert (=> b!1636619 (= lt!598399 Unit!29460)))

(assert (=> b!1636619 (= (_1!10213 (get!5216 (maxPrefix!1364 thiss!17113 rules!1846 (list!7092 (charsOf!1820 (h!23397 (t!149733 tokens!457))))))) (h!23397 (t!149733 tokens!457)))))

(declare-fun lt!598404 () Unit!29430)

(declare-fun Unit!29461 () Unit!29430)

(assert (=> b!1636619 (= lt!598404 Unit!29461)))

(assert (=> b!1636619 (isEmpty!11027 (_2!10213 (get!5216 (maxPrefix!1364 thiss!17113 rules!1846 (list!7092 (charsOf!1820 (h!23397 (t!149733 tokens!457))))))))))

(declare-fun lt!598406 () Unit!29430)

(declare-fun Unit!29462 () Unit!29430)

(assert (=> b!1636619 (= lt!598406 Unit!29462)))

(assert (=> b!1636619 (matchR!1998 (regex!3171 (rule!5013 (h!23397 (t!149733 tokens!457)))) (list!7092 (charsOf!1820 (h!23397 (t!149733 tokens!457)))))))

(declare-fun lt!598419 () Unit!29430)

(declare-fun Unit!29463 () Unit!29430)

(assert (=> b!1636619 (= lt!598419 Unit!29463)))

(assert (=> b!1636619 (= (rule!5013 (h!23397 (t!149733 tokens!457))) (rule!5013 (h!23397 (t!149733 tokens!457))))))

(declare-fun lt!598416 () Unit!29430)

(declare-fun Unit!29464 () Unit!29430)

(assert (=> b!1636619 (= lt!598416 Unit!29464)))

(declare-fun lt!598402 () Unit!29430)

(assert (=> b!1636619 (= lt!598402 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!136 thiss!17113 rules!1846 (h!23397 (t!149733 tokens!457)) (rule!5013 (h!23397 (t!149733 tokens!457))) (list!7092 lt!598408)))))

(declare-fun b!1636620 () Bool)

(assert (=> b!1636620 (= e!1049553 (isEmpty!11036 (_2!10212 (lex!1284 thiss!17113 rules!1846 (print!1331 thiss!17113 (seqFromList!2092 (t!149733 tokens!457)))))))))

(assert (= (and d!492786 c!266297) b!1636618))

(assert (= (and d!492786 (not c!266297)) b!1636619))

(assert (= (and d!492786 res!732943) b!1636620))

(declare-fun m!1974001 () Bool)

(assert (=> d!492786 m!1974001))

(assert (=> d!492786 m!1973021))

(declare-fun m!1974003 () Bool)

(assert (=> d!492786 m!1974003))

(assert (=> d!492786 m!1973051))

(assert (=> d!492786 m!1974003))

(declare-fun m!1974005 () Bool)

(assert (=> d!492786 m!1974005))

(assert (=> d!492786 m!1973021))

(declare-fun m!1974007 () Bool)

(assert (=> b!1636619 m!1974007))

(declare-fun m!1974009 () Bool)

(assert (=> b!1636619 m!1974009))

(declare-fun m!1974011 () Bool)

(assert (=> b!1636619 m!1974011))

(declare-fun m!1974013 () Bool)

(assert (=> b!1636619 m!1974013))

(declare-fun m!1974015 () Bool)

(assert (=> b!1636619 m!1974015))

(declare-fun m!1974017 () Bool)

(assert (=> b!1636619 m!1974017))

(declare-fun m!1974019 () Bool)

(assert (=> b!1636619 m!1974019))

(declare-fun m!1974021 () Bool)

(assert (=> b!1636619 m!1974021))

(assert (=> b!1636619 m!1974017))

(declare-fun m!1974023 () Bool)

(assert (=> b!1636619 m!1974023))

(declare-fun m!1974025 () Bool)

(assert (=> b!1636619 m!1974025))

(declare-fun m!1974027 () Bool)

(assert (=> b!1636619 m!1974027))

(declare-fun m!1974029 () Bool)

(assert (=> b!1636619 m!1974029))

(declare-fun m!1974031 () Bool)

(assert (=> b!1636619 m!1974031))

(declare-fun m!1974033 () Bool)

(assert (=> b!1636619 m!1974033))

(declare-fun m!1974035 () Bool)

(assert (=> b!1636619 m!1974035))

(assert (=> b!1636619 m!1974027))

(declare-fun m!1974037 () Bool)

(assert (=> b!1636619 m!1974037))

(assert (=> b!1636619 m!1974007))

(declare-fun m!1974039 () Bool)

(assert (=> b!1636619 m!1974039))

(assert (=> b!1636619 m!1974007))

(declare-fun m!1974041 () Bool)

(assert (=> b!1636619 m!1974041))

(declare-fun m!1974043 () Bool)

(assert (=> b!1636619 m!1974043))

(assert (=> b!1636619 m!1974007))

(declare-fun m!1974045 () Bool)

(assert (=> b!1636619 m!1974045))

(declare-fun m!1974047 () Bool)

(assert (=> b!1636619 m!1974047))

(declare-fun m!1974049 () Bool)

(assert (=> b!1636619 m!1974049))

(assert (=> b!1636619 m!1972981))

(declare-fun m!1974051 () Bool)

(assert (=> b!1636619 m!1974051))

(declare-fun m!1974053 () Bool)

(assert (=> b!1636619 m!1974053))

(declare-fun m!1974055 () Bool)

(assert (=> b!1636619 m!1974055))

(assert (=> b!1636619 m!1972981))

(assert (=> b!1636619 m!1974013))

(declare-fun m!1974057 () Bool)

(assert (=> b!1636619 m!1974057))

(assert (=> b!1636619 m!1974053))

(assert (=> b!1636619 m!1974025))

(assert (=> b!1636619 m!1974015))

(assert (=> b!1636619 m!1974011))

(assert (=> b!1636619 m!1974047))

(declare-fun m!1974059 () Bool)

(assert (=> b!1636619 m!1974059))

(declare-fun m!1974061 () Bool)

(assert (=> b!1636619 m!1974061))

(declare-fun m!1974063 () Bool)

(assert (=> b!1636619 m!1974063))

(assert (=> b!1636619 m!1974061))

(assert (=> b!1636619 m!1972929))

(assert (=> b!1636619 m!1973021))

(assert (=> b!1636619 m!1974003))

(declare-fun m!1974065 () Bool)

(assert (=> b!1636619 m!1974065))

(declare-fun m!1974067 () Bool)

(assert (=> b!1636619 m!1974067))

(assert (=> b!1636619 m!1974039))

(assert (=> b!1636619 m!1974027))

(assert (=> b!1636619 m!1974065))

(declare-fun m!1974069 () Bool)

(assert (=> b!1636619 m!1974069))

(assert (=> b!1636619 m!1973021))

(assert (=> b!1636619 m!1974039))

(declare-fun m!1974071 () Bool)

(assert (=> b!1636619 m!1974071))

(assert (=> b!1636619 m!1974065))

(assert (=> b!1636619 m!1972929))

(assert (=> b!1636619 m!1974039))

(declare-fun m!1974073 () Bool)

(assert (=> b!1636619 m!1974073))

(assert (=> b!1636620 m!1973021))

(assert (=> b!1636620 m!1973021))

(assert (=> b!1636620 m!1974003))

(assert (=> b!1636620 m!1974003))

(assert (=> b!1636620 m!1974005))

(declare-fun m!1974075 () Bool)

(assert (=> b!1636620 m!1974075))

(assert (=> b!1636077 d!492786))

(declare-fun b!1636630 () Bool)

(declare-fun res!732955 () Bool)

(declare-fun e!1049563 () Bool)

(assert (=> b!1636630 (=> (not res!732955) (not e!1049563))))

(assert (=> b!1636630 (= res!732955 (= (head!3527 lt!597936) (head!3527 lt!597945)))))

(declare-fun d!492838 () Bool)

(declare-fun e!1049561 () Bool)

(assert (=> d!492838 e!1049561))

(declare-fun res!732952 () Bool)

(assert (=> d!492838 (=> res!732952 e!1049561)))

(declare-fun lt!598423 () Bool)

(assert (=> d!492838 (= res!732952 (not lt!598423))))

(declare-fun e!1049562 () Bool)

(assert (=> d!492838 (= lt!598423 e!1049562)))

(declare-fun res!732953 () Bool)

(assert (=> d!492838 (=> res!732953 e!1049562)))

(assert (=> d!492838 (= res!732953 ((_ is Nil!17994) lt!597936))))

(assert (=> d!492838 (= (isPrefix!1431 lt!597936 lt!597945) lt!598423)))

(declare-fun b!1636632 () Bool)

(assert (=> b!1636632 (= e!1049561 (>= (size!14356 lt!597945) (size!14356 lt!597936)))))

(declare-fun b!1636629 () Bool)

(assert (=> b!1636629 (= e!1049562 e!1049563)))

(declare-fun res!732954 () Bool)

(assert (=> b!1636629 (=> (not res!732954) (not e!1049563))))

(assert (=> b!1636629 (= res!732954 (not ((_ is Nil!17994) lt!597945)))))

(declare-fun b!1636631 () Bool)

(assert (=> b!1636631 (= e!1049563 (isPrefix!1431 (tail!2394 lt!597936) (tail!2394 lt!597945)))))

(assert (= (and d!492838 (not res!732953)) b!1636629))

(assert (= (and b!1636629 res!732954) b!1636630))

(assert (= (and b!1636630 res!732955) b!1636631))

(assert (= (and d!492838 (not res!732952)) b!1636632))

(assert (=> b!1636630 m!1973781))

(declare-fun m!1974077 () Bool)

(assert (=> b!1636630 m!1974077))

(declare-fun m!1974079 () Bool)

(assert (=> b!1636632 m!1974079))

(assert (=> b!1636632 m!1973419))

(assert (=> b!1636631 m!1973775))

(declare-fun m!1974081 () Bool)

(assert (=> b!1636631 m!1974081))

(assert (=> b!1636631 m!1973775))

(assert (=> b!1636631 m!1974081))

(declare-fun m!1974083 () Bool)

(assert (=> b!1636631 m!1974083))

(assert (=> b!1636077 d!492838))

(declare-fun d!492840 () Bool)

(assert (=> d!492840 (isPrefix!1431 lt!597936 (++!4819 lt!597936 lt!597925))))

(declare-fun lt!598426 () Unit!29430)

(declare-fun choose!9832 (List!18064 List!18064) Unit!29430)

(assert (=> d!492840 (= lt!598426 (choose!9832 lt!597936 lt!597925))))

(assert (=> d!492840 (= (lemmaConcatTwoListThenFirstIsPrefix!956 lt!597936 lt!597925) lt!598426)))

(declare-fun bs!395434 () Bool)

(assert (= bs!395434 d!492840))

(assert (=> bs!395434 m!1973019))

(assert (=> bs!395434 m!1973019))

(declare-fun m!1974085 () Bool)

(assert (=> bs!395434 m!1974085))

(declare-fun m!1974087 () Bool)

(assert (=> bs!395434 m!1974087))

(assert (=> b!1636077 d!492840))

(declare-fun d!492842 () Bool)

(assert (=> d!492842 (= (isEmpty!11027 (_2!10213 lt!597920)) ((_ is Nil!17994) (_2!10213 lt!597920)))))

(assert (=> b!1636081 d!492842))

(declare-fun d!492844 () Bool)

(assert (=> d!492844 (= (head!3527 (originalCharacters!3985 (h!23397 (t!149733 tokens!457)))) (h!23395 (originalCharacters!3985 (h!23397 (t!149733 tokens!457)))))))

(assert (=> b!1636080 d!492844))

(declare-fun d!492846 () Bool)

(assert (=> d!492846 (= (isDefined!2747 lt!597946) (not (isEmpty!11037 lt!597946)))))

(declare-fun bs!395435 () Bool)

(assert (= bs!395435 d!492846))

(declare-fun m!1974089 () Bool)

(assert (=> bs!395435 m!1974089))

(assert (=> b!1636059 d!492846))

(declare-fun b!1636663 () Bool)

(declare-fun e!1049581 () Unit!29430)

(declare-fun Unit!29466 () Unit!29430)

(assert (=> b!1636663 (= e!1049581 Unit!29466)))

(declare-fun lt!598537 () List!18064)

(assert (=> b!1636663 (= lt!598537 (++!4819 lt!597936 lt!597925))))

(declare-fun lt!598536 () Token!5908)

(declare-fun lt!598532 () Unit!29430)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!192 (LexerInterface!2800 Rule!6142 List!18065 List!18064) Unit!29430)

(assert (=> b!1636663 (= lt!598532 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!192 thiss!17113 (rule!5013 lt!598536) rules!1846 lt!598537))))

(assert (=> b!1636663 (isEmpty!11037 (maxPrefixOneRule!789 thiss!17113 (rule!5013 lt!598536) lt!598537))))

(declare-fun lt!598524 () Unit!29430)

(assert (=> b!1636663 (= lt!598524 lt!598532)))

(declare-fun lt!598534 () List!18064)

(assert (=> b!1636663 (= lt!598534 (list!7092 (charsOf!1820 lt!598536)))))

(declare-fun lt!598529 () Unit!29430)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!188 (LexerInterface!2800 Rule!6142 List!18064 List!18064) Unit!29430)

(assert (=> b!1636663 (= lt!598529 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!188 thiss!17113 (rule!5013 lt!598536) lt!598534 (++!4819 lt!597936 lt!597925)))))

(assert (=> b!1636663 (not (matchR!1998 (regex!3171 (rule!5013 lt!598536)) lt!598534))))

(declare-fun lt!598533 () Unit!29430)

(assert (=> b!1636663 (= lt!598533 lt!598529)))

(assert (=> b!1636663 false))

(declare-fun b!1636664 () Bool)

(declare-fun Unit!29467 () Unit!29430)

(assert (=> b!1636664 (= e!1049581 Unit!29467)))

(declare-fun e!1049580 () Bool)

(declare-fun b!1636662 () Bool)

(declare-datatypes ((Option!3382 0))(
  ( (None!3381) (Some!3381 (v!24470 Rule!6142)) )
))
(declare-fun get!5219 (Option!3382) Rule!6142)

(declare-fun getRuleFromTag!298 (LexerInterface!2800 List!18065 String!20637) Option!3382)

(assert (=> b!1636662 (= e!1049580 (= (rule!5013 lt!598536) (get!5219 (getRuleFromTag!298 thiss!17113 rules!1846 (tag!3451 (rule!5013 lt!598536))))))))

(declare-fun d!492848 () Bool)

(assert (=> d!492848 (isDefined!2747 (maxPrefix!1364 thiss!17113 rules!1846 (++!4819 lt!597936 lt!597925)))))

(declare-fun lt!598522 () Unit!29430)

(assert (=> d!492848 (= lt!598522 e!1049581)))

(declare-fun c!266304 () Bool)

(assert (=> d!492848 (= c!266304 (isEmpty!11037 (maxPrefix!1364 thiss!17113 rules!1846 (++!4819 lt!597936 lt!597925))))))

(declare-fun lt!598530 () Unit!29430)

(declare-fun lt!598528 () Unit!29430)

(assert (=> d!492848 (= lt!598530 lt!598528)))

(assert (=> d!492848 e!1049580))

(declare-fun res!732972 () Bool)

(assert (=> d!492848 (=> (not res!732972) (not e!1049580))))

(declare-fun isDefined!2749 (Option!3382) Bool)

(assert (=> d!492848 (= res!732972 (isDefined!2749 (getRuleFromTag!298 thiss!17113 rules!1846 (tag!3451 (rule!5013 lt!598536)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!298 (LexerInterface!2800 List!18065 List!18064 Token!5908) Unit!29430)

(assert (=> d!492848 (= lt!598528 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!298 thiss!17113 rules!1846 lt!597936 lt!598536))))

(declare-fun lt!598531 () Unit!29430)

(declare-fun lt!598525 () Unit!29430)

(assert (=> d!492848 (= lt!598531 lt!598525)))

(declare-fun lt!598535 () List!18064)

(assert (=> d!492848 (isPrefix!1431 lt!598535 (++!4819 lt!597936 lt!597925))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!184 (List!18064 List!18064 List!18064) Unit!29430)

(assert (=> d!492848 (= lt!598525 (lemmaPrefixStaysPrefixWhenAddingToSuffix!184 lt!598535 lt!597936 lt!597925))))

(assert (=> d!492848 (= lt!598535 (list!7092 (charsOf!1820 lt!598536)))))

(declare-fun lt!598526 () Unit!29430)

(declare-fun lt!598527 () Unit!29430)

(assert (=> d!492848 (= lt!598526 lt!598527)))

(declare-fun lt!598538 () List!18064)

(declare-fun lt!598523 () List!18064)

(assert (=> d!492848 (isPrefix!1431 lt!598538 (++!4819 lt!598538 lt!598523))))

(assert (=> d!492848 (= lt!598527 (lemmaConcatTwoListThenFirstIsPrefix!956 lt!598538 lt!598523))))

(assert (=> d!492848 (= lt!598523 (_2!10213 (get!5216 (maxPrefix!1364 thiss!17113 rules!1846 lt!597936))))))

(assert (=> d!492848 (= lt!598538 (list!7092 (charsOf!1820 lt!598536)))))

(assert (=> d!492848 (= lt!598536 (head!3530 (list!7091 (_1!10212 (lex!1284 thiss!17113 rules!1846 (seqFromList!2091 lt!597936))))))))

(assert (=> d!492848 (not (isEmpty!11026 rules!1846))))

(assert (=> d!492848 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!374 thiss!17113 rules!1846 lt!597936 lt!597925) lt!598522)))

(declare-fun b!1636661 () Bool)

(declare-fun res!732973 () Bool)

(assert (=> b!1636661 (=> (not res!732973) (not e!1049580))))

(assert (=> b!1636661 (= res!732973 (matchR!1998 (regex!3171 (get!5219 (getRuleFromTag!298 thiss!17113 rules!1846 (tag!3451 (rule!5013 lt!598536))))) (list!7092 (charsOf!1820 lt!598536))))))

(assert (= (and d!492848 res!732972) b!1636661))

(assert (= (and b!1636661 res!732973) b!1636662))

(assert (= (and d!492848 c!266304) b!1636663))

(assert (= (and d!492848 (not c!266304)) b!1636664))

(assert (=> b!1636663 m!1973019))

(declare-fun m!1974171 () Bool)

(assert (=> b!1636663 m!1974171))

(declare-fun m!1974173 () Bool)

(assert (=> b!1636663 m!1974173))

(declare-fun m!1974175 () Bool)

(assert (=> b!1636663 m!1974175))

(declare-fun m!1974177 () Bool)

(assert (=> b!1636663 m!1974177))

(declare-fun m!1974179 () Bool)

(assert (=> b!1636663 m!1974179))

(assert (=> b!1636663 m!1974173))

(declare-fun m!1974181 () Bool)

(assert (=> b!1636663 m!1974181))

(assert (=> b!1636663 m!1974177))

(declare-fun m!1974183 () Bool)

(assert (=> b!1636663 m!1974183))

(assert (=> b!1636663 m!1973019))

(declare-fun m!1974185 () Bool)

(assert (=> b!1636662 m!1974185))

(assert (=> b!1636662 m!1974185))

(declare-fun m!1974187 () Bool)

(assert (=> b!1636662 m!1974187))

(assert (=> d!492848 m!1973019))

(declare-fun m!1974189 () Bool)

(assert (=> d!492848 m!1974189))

(assert (=> d!492848 m!1973185))

(declare-fun m!1974191 () Bool)

(assert (=> d!492848 m!1974191))

(assert (=> d!492848 m!1972961))

(declare-fun m!1974193 () Bool)

(assert (=> d!492848 m!1974193))

(declare-fun m!1974195 () Bool)

(assert (=> d!492848 m!1974195))

(declare-fun m!1974197 () Bool)

(assert (=> d!492848 m!1974197))

(assert (=> d!492848 m!1973051))

(declare-fun m!1974199 () Bool)

(assert (=> d!492848 m!1974199))

(declare-fun m!1974201 () Bool)

(assert (=> d!492848 m!1974201))

(assert (=> d!492848 m!1974185))

(assert (=> d!492848 m!1973035))

(assert (=> d!492848 m!1973037))

(assert (=> d!492848 m!1973185))

(declare-fun m!1974203 () Bool)

(assert (=> d!492848 m!1974203))

(assert (=> d!492848 m!1974185))

(declare-fun m!1974205 () Bool)

(assert (=> d!492848 m!1974205))

(assert (=> d!492848 m!1972961))

(declare-fun m!1974207 () Bool)

(assert (=> d!492848 m!1974207))

(assert (=> d!492848 m!1973019))

(assert (=> d!492848 m!1974195))

(assert (=> d!492848 m!1974177))

(assert (=> d!492848 m!1973019))

(assert (=> d!492848 m!1974177))

(assert (=> d!492848 m!1974179))

(assert (=> d!492848 m!1973035))

(assert (=> d!492848 m!1974195))

(declare-fun m!1974209 () Bool)

(assert (=> d!492848 m!1974209))

(assert (=> d!492848 m!1974199))

(declare-fun m!1974211 () Bool)

(assert (=> d!492848 m!1974211))

(assert (=> b!1636661 m!1974179))

(declare-fun m!1974213 () Bool)

(assert (=> b!1636661 m!1974213))

(assert (=> b!1636661 m!1974185))

(assert (=> b!1636661 m!1974187))

(assert (=> b!1636661 m!1974177))

(assert (=> b!1636661 m!1974177))

(assert (=> b!1636661 m!1974179))

(assert (=> b!1636661 m!1974185))

(assert (=> b!1636059 d!492848))

(declare-fun d!492862 () Bool)

(declare-fun e!1049584 () Bool)

(assert (=> d!492862 e!1049584))

(declare-fun res!732976 () Bool)

(assert (=> d!492862 (=> (not res!732976) (not e!1049584))))

(declare-fun lt!598541 () BalanceConc!11924)

(assert (=> d!492862 (= res!732976 (= (list!7092 lt!598541) (Cons!17994 (apply!4656 (charsOf!1820 (h!23397 (t!149733 tokens!457))) 0) Nil!17994)))))

(declare-fun singleton!698 (C!9172) BalanceConc!11924)

(assert (=> d!492862 (= lt!598541 (singleton!698 (apply!4656 (charsOf!1820 (h!23397 (t!149733 tokens!457))) 0)))))

(assert (=> d!492862 (= (singletonSeq!1620 (apply!4656 (charsOf!1820 (h!23397 (t!149733 tokens!457))) 0)) lt!598541)))

(declare-fun b!1636667 () Bool)

(declare-fun isBalanced!1818 (Conc!5990) Bool)

(assert (=> b!1636667 (= e!1049584 (isBalanced!1818 (c!266195 lt!598541)))))

(assert (= (and d!492862 res!732976) b!1636667))

(declare-fun m!1974215 () Bool)

(assert (=> d!492862 m!1974215))

(assert (=> d!492862 m!1972921))

(declare-fun m!1974217 () Bool)

(assert (=> d!492862 m!1974217))

(declare-fun m!1974219 () Bool)

(assert (=> b!1636667 m!1974219))

(assert (=> b!1636063 d!492862))

(declare-fun lt!598563 () Bool)

(declare-fun d!492864 () Bool)

(assert (=> d!492864 (= lt!598563 (prefixMatch!434 lt!597926 (list!7092 (++!4820 lt!597942 lt!597932))))))

(declare-datatypes ((List!18071 0))(
  ( (Nil!18001) (Cons!18001 (h!23402 Regex!4499) (t!149780 List!18071)) )
))
(declare-datatypes ((Context!1762 0))(
  ( (Context!1763 (exprs!1381 List!18071)) )
))
(declare-fun prefixMatchZipperSequence!575 ((InoxSet Context!1762) BalanceConc!11924 Int) Bool)

(declare-fun focus!187 (Regex!4499) (InoxSet Context!1762))

(assert (=> d!492864 (= lt!598563 (prefixMatchZipperSequence!575 (focus!187 lt!597926) (++!4820 lt!597942 lt!597932) 0))))

(declare-fun lt!598567 () Unit!29430)

(declare-fun lt!598562 () Unit!29430)

(assert (=> d!492864 (= lt!598567 lt!598562)))

(declare-fun lt!598569 () List!18064)

(declare-fun lt!598571 () (InoxSet Context!1762))

(declare-fun prefixMatchZipper!166 ((InoxSet Context!1762) List!18064) Bool)

(assert (=> d!492864 (= (prefixMatch!434 lt!597926 lt!598569) (prefixMatchZipper!166 lt!598571 lt!598569))))

(declare-datatypes ((List!18072 0))(
  ( (Nil!18002) (Cons!18002 (h!23403 Context!1762) (t!149781 List!18072)) )
))
(declare-fun lt!598570 () List!18072)

(declare-fun prefixMatchZipperRegexEquiv!166 ((InoxSet Context!1762) List!18072 Regex!4499 List!18064) Unit!29430)

(assert (=> d!492864 (= lt!598562 (prefixMatchZipperRegexEquiv!166 lt!598571 lt!598570 lt!597926 lt!598569))))

(assert (=> d!492864 (= lt!598569 (list!7092 (++!4820 lt!597942 lt!597932)))))

(declare-fun toList!927 ((InoxSet Context!1762)) List!18072)

(assert (=> d!492864 (= lt!598570 (toList!927 (focus!187 lt!597926)))))

(assert (=> d!492864 (= lt!598571 (focus!187 lt!597926))))

(declare-fun lt!598564 () Unit!29430)

(declare-fun lt!598566 () Unit!29430)

(assert (=> d!492864 (= lt!598564 lt!598566)))

(declare-fun lt!598568 () (InoxSet Context!1762))

(declare-fun lt!598565 () Int)

(declare-fun dropList!636 (BalanceConc!11924 Int) List!18064)

(assert (=> d!492864 (= (prefixMatchZipper!166 lt!598568 (dropList!636 (++!4820 lt!597942 lt!597932) lt!598565)) (prefixMatchZipperSequence!575 lt!598568 (++!4820 lt!597942 lt!597932) lt!598565))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!166 ((InoxSet Context!1762) BalanceConc!11924 Int) Unit!29430)

(assert (=> d!492864 (= lt!598566 (lemmaprefixMatchZipperSequenceEquivalent!166 lt!598568 (++!4820 lt!597942 lt!597932) lt!598565))))

(assert (=> d!492864 (= lt!598565 0)))

(assert (=> d!492864 (= lt!598568 (focus!187 lt!597926))))

(assert (=> d!492864 (validRegex!1792 lt!597926)))

(assert (=> d!492864 (= (prefixMatchZipperSequence!573 lt!597926 (++!4820 lt!597942 lt!597932)) lt!598563)))

(declare-fun bs!395439 () Bool)

(assert (= bs!395439 d!492864))

(declare-fun m!1974221 () Bool)

(assert (=> bs!395439 m!1974221))

(declare-fun m!1974223 () Bool)

(assert (=> bs!395439 m!1974223))

(declare-fun m!1974225 () Bool)

(assert (=> bs!395439 m!1974225))

(declare-fun m!1974227 () Bool)

(assert (=> bs!395439 m!1974227))

(declare-fun m!1974229 () Bool)

(assert (=> bs!395439 m!1974229))

(assert (=> bs!395439 m!1972925))

(declare-fun m!1974231 () Bool)

(assert (=> bs!395439 m!1974231))

(assert (=> bs!395439 m!1974221))

(declare-fun m!1974233 () Bool)

(assert (=> bs!395439 m!1974233))

(assert (=> bs!395439 m!1972925))

(assert (=> bs!395439 m!1974225))

(assert (=> bs!395439 m!1972925))

(declare-fun m!1974235 () Bool)

(assert (=> bs!395439 m!1974235))

(assert (=> bs!395439 m!1974235))

(declare-fun m!1974237 () Bool)

(assert (=> bs!395439 m!1974237))

(assert (=> bs!395439 m!1974221))

(assert (=> bs!395439 m!1972925))

(declare-fun m!1974239 () Bool)

(assert (=> bs!395439 m!1974239))

(declare-fun m!1974241 () Bool)

(assert (=> bs!395439 m!1974241))

(assert (=> bs!395439 m!1972925))

(declare-fun m!1974243 () Bool)

(assert (=> bs!395439 m!1974243))

(declare-fun m!1974245 () Bool)

(assert (=> bs!395439 m!1974245))

(assert (=> b!1636063 d!492864))

(declare-fun b!1636678 () Bool)

(declare-fun res!732988 () Bool)

(declare-fun e!1049587 () Bool)

(assert (=> b!1636678 (=> (not res!732988) (not e!1049587))))

(declare-fun height!921 (Conc!5990) Int)

(declare-fun ++!4822 (Conc!5990 Conc!5990) Conc!5990)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1636678 (= res!732988 (>= (height!921 (++!4822 (c!266195 lt!597942) (c!266195 lt!597932))) (max!0 (height!921 (c!266195 lt!597942)) (height!921 (c!266195 lt!597932)))))))

(declare-fun b!1636676 () Bool)

(declare-fun res!732987 () Bool)

(assert (=> b!1636676 (=> (not res!732987) (not e!1049587))))

(assert (=> b!1636676 (= res!732987 (isBalanced!1818 (++!4822 (c!266195 lt!597942) (c!266195 lt!597932))))))

(declare-fun b!1636677 () Bool)

(declare-fun res!732985 () Bool)

(assert (=> b!1636677 (=> (not res!732985) (not e!1049587))))

(assert (=> b!1636677 (= res!732985 (<= (height!921 (++!4822 (c!266195 lt!597942) (c!266195 lt!597932))) (+ (max!0 (height!921 (c!266195 lt!597942)) (height!921 (c!266195 lt!597932))) 1)))))

(declare-fun d!492866 () Bool)

(assert (=> d!492866 e!1049587))

(declare-fun res!732986 () Bool)

(assert (=> d!492866 (=> (not res!732986) (not e!1049587))))

(declare-fun appendAssocInst!449 (Conc!5990 Conc!5990) Bool)

(assert (=> d!492866 (= res!732986 (appendAssocInst!449 (c!266195 lt!597942) (c!266195 lt!597932)))))

(declare-fun lt!598574 () BalanceConc!11924)

(assert (=> d!492866 (= lt!598574 (BalanceConc!11925 (++!4822 (c!266195 lt!597942) (c!266195 lt!597932))))))

(assert (=> d!492866 (= (++!4820 lt!597942 lt!597932) lt!598574)))

(declare-fun b!1636679 () Bool)

(assert (=> b!1636679 (= e!1049587 (= (list!7092 lt!598574) (++!4819 (list!7092 lt!597942) (list!7092 lt!597932))))))

(assert (= (and d!492866 res!732986) b!1636676))

(assert (= (and b!1636676 res!732987) b!1636677))

(assert (= (and b!1636677 res!732985) b!1636678))

(assert (= (and b!1636678 res!732988) b!1636679))

(declare-fun m!1974247 () Bool)

(assert (=> b!1636678 m!1974247))

(declare-fun m!1974249 () Bool)

(assert (=> b!1636678 m!1974249))

(assert (=> b!1636678 m!1974247))

(declare-fun m!1974251 () Bool)

(assert (=> b!1636678 m!1974251))

(declare-fun m!1974253 () Bool)

(assert (=> b!1636678 m!1974253))

(assert (=> b!1636678 m!1974249))

(declare-fun m!1974255 () Bool)

(assert (=> b!1636678 m!1974255))

(assert (=> b!1636678 m!1974253))

(declare-fun m!1974257 () Bool)

(assert (=> b!1636679 m!1974257))

(assert (=> b!1636679 m!1973015))

(assert (=> b!1636679 m!1972917))

(assert (=> b!1636679 m!1973015))

(assert (=> b!1636679 m!1972917))

(declare-fun m!1974259 () Bool)

(assert (=> b!1636679 m!1974259))

(assert (=> b!1636676 m!1974247))

(assert (=> b!1636676 m!1974247))

(declare-fun m!1974261 () Bool)

(assert (=> b!1636676 m!1974261))

(declare-fun m!1974263 () Bool)

(assert (=> d!492866 m!1974263))

(assert (=> d!492866 m!1974247))

(assert (=> b!1636677 m!1974247))

(assert (=> b!1636677 m!1974249))

(assert (=> b!1636677 m!1974247))

(assert (=> b!1636677 m!1974251))

(assert (=> b!1636677 m!1974253))

(assert (=> b!1636677 m!1974249))

(assert (=> b!1636677 m!1974255))

(assert (=> b!1636677 m!1974253))

(assert (=> b!1636063 d!492866))

(declare-fun d!492868 () Bool)

(declare-fun lt!598577 () C!9172)

(declare-fun apply!4665 (List!18064 Int) C!9172)

(assert (=> d!492868 (= lt!598577 (apply!4665 (list!7092 (charsOf!1820 (h!23397 (t!149733 tokens!457)))) 0))))

(declare-fun apply!4666 (Conc!5990 Int) C!9172)

(assert (=> d!492868 (= lt!598577 (apply!4666 (c!266195 (charsOf!1820 (h!23397 (t!149733 tokens!457)))) 0))))

(declare-fun e!1049590 () Bool)

(assert (=> d!492868 e!1049590))

(declare-fun res!732991 () Bool)

(assert (=> d!492868 (=> (not res!732991) (not e!1049590))))

(assert (=> d!492868 (= res!732991 (<= 0 0))))

(assert (=> d!492868 (= (apply!4656 (charsOf!1820 (h!23397 (t!149733 tokens!457))) 0) lt!598577)))

(declare-fun b!1636682 () Bool)

(assert (=> b!1636682 (= e!1049590 (< 0 (size!14355 (charsOf!1820 (h!23397 (t!149733 tokens!457))))))))

(assert (= (and d!492868 res!732991) b!1636682))

(assert (=> d!492868 m!1972929))

(assert (=> d!492868 m!1974039))

(assert (=> d!492868 m!1974039))

(declare-fun m!1974265 () Bool)

(assert (=> d!492868 m!1974265))

(declare-fun m!1974267 () Bool)

(assert (=> d!492868 m!1974267))

(assert (=> b!1636682 m!1972929))

(declare-fun m!1974269 () Bool)

(assert (=> b!1636682 m!1974269))

(assert (=> b!1636063 d!492868))

(declare-fun d!492870 () Bool)

(declare-fun lt!598580 () Unit!29430)

(declare-fun lemma!252 (List!18065 LexerInterface!2800 List!18065) Unit!29430)

(assert (=> d!492870 (= lt!598580 (lemma!252 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67424 () Int)

(declare-fun generalisedUnion!260 (List!18071) Regex!4499)

(declare-fun map!3717 (List!18065 Int) List!18071)

(assert (=> d!492870 (= (rulesRegex!561 thiss!17113 rules!1846) (generalisedUnion!260 (map!3717 rules!1846 lambda!67424)))))

(declare-fun bs!395440 () Bool)

(assert (= bs!395440 d!492870))

(declare-fun m!1974271 () Bool)

(assert (=> bs!395440 m!1974271))

(declare-fun m!1974273 () Bool)

(assert (=> bs!395440 m!1974273))

(assert (=> bs!395440 m!1974273))

(declare-fun m!1974275 () Bool)

(assert (=> bs!395440 m!1974275))

(assert (=> b!1636063 d!492870))

(declare-fun d!492872 () Bool)

(declare-fun lt!598581 () BalanceConc!11924)

(assert (=> d!492872 (= (list!7092 lt!598581) (originalCharacters!3985 (h!23397 (t!149733 tokens!457))))))

(assert (=> d!492872 (= lt!598581 (dynLambda!8019 (toChars!4461 (transformation!3171 (rule!5013 (h!23397 (t!149733 tokens!457))))) (value!100046 (h!23397 (t!149733 tokens!457)))))))

(assert (=> d!492872 (= (charsOf!1820 (h!23397 (t!149733 tokens!457))) lt!598581)))

(declare-fun b_lambda!51447 () Bool)

(assert (=> (not b_lambda!51447) (not d!492872)))

(declare-fun t!149757 () Bool)

(declare-fun tb!93795 () Bool)

(assert (=> (and b!1636078 (= (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457)))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 (t!149733 tokens!457)))))) t!149757) tb!93795))

(declare-fun b!1636683 () Bool)

(declare-fun e!1049591 () Bool)

(declare-fun tp!474462 () Bool)

(assert (=> b!1636683 (= e!1049591 (and (inv!23353 (c!266195 (dynLambda!8019 (toChars!4461 (transformation!3171 (rule!5013 (h!23397 (t!149733 tokens!457))))) (value!100046 (h!23397 (t!149733 tokens!457)))))) tp!474462))))

(declare-fun result!113166 () Bool)

(assert (=> tb!93795 (= result!113166 (and (inv!23354 (dynLambda!8019 (toChars!4461 (transformation!3171 (rule!5013 (h!23397 (t!149733 tokens!457))))) (value!100046 (h!23397 (t!149733 tokens!457))))) e!1049591))))

(assert (= tb!93795 b!1636683))

(declare-fun m!1974277 () Bool)

(assert (=> b!1636683 m!1974277))

(declare-fun m!1974279 () Bool)

(assert (=> tb!93795 m!1974279))

(assert (=> d!492872 t!149757))

(declare-fun b_and!116001 () Bool)

(assert (= b_and!115989 (and (=> t!149757 result!113166) b_and!116001)))

(declare-fun tb!93797 () Bool)

(declare-fun t!149759 () Bool)

(assert (=> (and b!1636060 (= (toChars!4461 (transformation!3171 (h!23396 rules!1846))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 (t!149733 tokens!457)))))) t!149759) tb!93797))

(declare-fun result!113168 () Bool)

(assert (= result!113168 result!113166))

(assert (=> d!492872 t!149759))

(declare-fun b_and!116003 () Bool)

(assert (= b_and!115991 (and (=> t!149759 result!113168) b_and!116003)))

(declare-fun m!1974281 () Bool)

(assert (=> d!492872 m!1974281))

(declare-fun m!1974283 () Bool)

(assert (=> d!492872 m!1974283))

(assert (=> b!1636063 d!492872))

(declare-fun d!492874 () Bool)

(assert (=> d!492874 (= (head!3527 lt!597925) (h!23395 lt!597925))))

(assert (=> b!1636062 d!492874))

(declare-fun d!492876 () Bool)

(declare-fun c!266308 () Bool)

(assert (=> d!492876 (= c!266308 (isEmpty!11027 (++!4819 lt!597936 lt!597927)))))

(declare-fun e!1049592 () Bool)

(assert (=> d!492876 (= (prefixMatch!434 lt!597926 (++!4819 lt!597936 lt!597927)) e!1049592)))

(declare-fun b!1636684 () Bool)

(assert (=> b!1636684 (= e!1049592 (not (lostCause!452 lt!597926)))))

(declare-fun b!1636685 () Bool)

(assert (=> b!1636685 (= e!1049592 (prefixMatch!434 (derivativeStep!1096 lt!597926 (head!3527 (++!4819 lt!597936 lt!597927))) (tail!2394 (++!4819 lt!597936 lt!597927))))))

(assert (= (and d!492876 c!266308) b!1636684))

(assert (= (and d!492876 (not c!266308)) b!1636685))

(assert (=> d!492876 m!1972913))

(declare-fun m!1974285 () Bool)

(assert (=> d!492876 m!1974285))

(assert (=> b!1636684 m!1973755))

(assert (=> b!1636685 m!1972913))

(declare-fun m!1974287 () Bool)

(assert (=> b!1636685 m!1974287))

(assert (=> b!1636685 m!1974287))

(declare-fun m!1974289 () Bool)

(assert (=> b!1636685 m!1974289))

(assert (=> b!1636685 m!1972913))

(declare-fun m!1974291 () Bool)

(assert (=> b!1636685 m!1974291))

(assert (=> b!1636685 m!1974289))

(assert (=> b!1636685 m!1974291))

(declare-fun m!1974293 () Bool)

(assert (=> b!1636685 m!1974293))

(assert (=> b!1636082 d!492876))

(declare-fun d!492878 () Bool)

(declare-fun e!1049594 () Bool)

(assert (=> d!492878 e!1049594))

(declare-fun res!732992 () Bool)

(assert (=> d!492878 (=> (not res!732992) (not e!1049594))))

(declare-fun lt!598582 () List!18064)

(assert (=> d!492878 (= res!732992 (= (content!2493 lt!598582) ((_ map or) (content!2493 lt!597936) (content!2493 lt!597927))))))

(declare-fun e!1049593 () List!18064)

(assert (=> d!492878 (= lt!598582 e!1049593)))

(declare-fun c!266309 () Bool)

(assert (=> d!492878 (= c!266309 ((_ is Nil!17994) lt!597936))))

(assert (=> d!492878 (= (++!4819 lt!597936 lt!597927) lt!598582)))

(declare-fun b!1636687 () Bool)

(assert (=> b!1636687 (= e!1049593 (Cons!17994 (h!23395 lt!597936) (++!4819 (t!149731 lt!597936) lt!597927)))))

(declare-fun b!1636689 () Bool)

(assert (=> b!1636689 (= e!1049594 (or (not (= lt!597927 Nil!17994)) (= lt!598582 lt!597936)))))

(declare-fun b!1636686 () Bool)

(assert (=> b!1636686 (= e!1049593 lt!597927)))

(declare-fun b!1636688 () Bool)

(declare-fun res!732993 () Bool)

(assert (=> b!1636688 (=> (not res!732993) (not e!1049594))))

(assert (=> b!1636688 (= res!732993 (= (size!14356 lt!598582) (+ (size!14356 lt!597936) (size!14356 lt!597927))))))

(assert (= (and d!492878 c!266309) b!1636686))

(assert (= (and d!492878 (not c!266309)) b!1636687))

(assert (= (and d!492878 res!732992) b!1636688))

(assert (= (and b!1636688 res!732993) b!1636689))

(declare-fun m!1974295 () Bool)

(assert (=> d!492878 m!1974295))

(assert (=> d!492878 m!1973411))

(declare-fun m!1974297 () Bool)

(assert (=> d!492878 m!1974297))

(declare-fun m!1974299 () Bool)

(assert (=> b!1636687 m!1974299))

(declare-fun m!1974301 () Bool)

(assert (=> b!1636688 m!1974301))

(assert (=> b!1636688 m!1973419))

(declare-fun m!1974303 () Bool)

(assert (=> b!1636688 m!1974303))

(assert (=> b!1636082 d!492878))

(declare-fun d!492880 () Bool)

(assert (=> d!492880 (= (list!7092 lt!597932) (list!7095 (c!266195 lt!597932)))))

(declare-fun bs!395441 () Bool)

(assert (= bs!395441 d!492880))

(declare-fun m!1974305 () Bool)

(assert (=> bs!395441 m!1974305))

(assert (=> b!1636082 d!492880))

(declare-fun d!492882 () Bool)

(assert (=> d!492882 (= (get!5216 lt!597946) (v!24462 lt!597946))))

(assert (=> b!1636061 d!492882))

(declare-fun b!1636809 () Bool)

(declare-fun res!733006 () Bool)

(declare-fun e!1049668 () Bool)

(assert (=> b!1636809 (=> (not res!733006) (not e!1049668))))

(declare-fun lt!598974 () Token!5908)

(assert (=> b!1636809 (= res!733006 (matchR!1998 (regex!3171 (get!5219 (getRuleFromTag!298 thiss!17113 rules!1846 (tag!3451 (rule!5013 lt!598974))))) (list!7092 (charsOf!1820 lt!598974))))))

(declare-fun d!492884 () Bool)

(assert (=> d!492884 (= (maxPrefix!1364 thiss!17113 rules!1846 (++!4819 (list!7092 (charsOf!1820 (h!23397 tokens!457))) lt!597925)) (Some!3379 (tuple2!17623 (h!23397 tokens!457) lt!597925)))))

(declare-fun lt!598965 () Unit!29430)

(declare-fun Unit!29480 () Unit!29430)

(assert (=> d!492884 (= lt!598965 Unit!29480)))

(declare-fun lt!598968 () Unit!29430)

(declare-fun e!1049673 () Unit!29430)

(assert (=> d!492884 (= lt!598968 e!1049673)))

(declare-fun c!266345 () Bool)

(assert (=> d!492884 (= c!266345 (not (= (rule!5013 lt!598974) (rule!5013 (h!23397 tokens!457)))))))

(declare-fun lt!598996 () Unit!29430)

(declare-fun lt!598946 () Unit!29430)

(assert (=> d!492884 (= lt!598996 lt!598946)))

(declare-fun lt!598970 () List!18064)

(assert (=> d!492884 (= lt!597925 lt!598970)))

(declare-fun lt!598980 () List!18064)

(declare-fun lemmaSamePrefixThenSameSuffix!664 (List!18064 List!18064 List!18064 List!18064 List!18064) Unit!29430)

(assert (=> d!492884 (= lt!598946 (lemmaSamePrefixThenSameSuffix!664 (list!7092 (charsOf!1820 (h!23397 tokens!457))) lt!597925 (list!7092 (charsOf!1820 (h!23397 tokens!457))) lt!598970 lt!598980))))

(declare-fun lt!598956 () Unit!29430)

(declare-fun lt!599007 () Unit!29430)

(assert (=> d!492884 (= lt!598956 lt!599007)))

(declare-fun lt!598954 () List!18064)

(declare-fun lt!598978 () List!18064)

(assert (=> d!492884 (= lt!598954 lt!598978)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!165 (List!18064 List!18064 List!18064) Unit!29430)

(assert (=> d!492884 (= lt!599007 (lemmaIsPrefixSameLengthThenSameList!165 lt!598954 lt!598978 lt!598980))))

(assert (=> d!492884 (= lt!598978 (list!7092 (charsOf!1820 (h!23397 tokens!457))))))

(assert (=> d!492884 (= lt!598954 (list!7092 (charsOf!1820 lt!598974)))))

(declare-fun lt!598948 () Unit!29430)

(declare-fun e!1049672 () Unit!29430)

(assert (=> d!492884 (= lt!598948 e!1049672)))

(declare-fun c!266343 () Bool)

(assert (=> d!492884 (= c!266343 (< (size!14355 (charsOf!1820 lt!598974)) (size!14355 (charsOf!1820 (h!23397 tokens!457)))))))

(declare-fun lt!598951 () Unit!29430)

(declare-fun e!1049674 () Unit!29430)

(assert (=> d!492884 (= lt!598951 e!1049674)))

(declare-fun c!266342 () Bool)

(assert (=> d!492884 (= c!266342 (> (size!14355 (charsOf!1820 lt!598974)) (size!14355 (charsOf!1820 (h!23397 tokens!457)))))))

(declare-fun lt!598973 () Unit!29430)

(declare-fun lt!598975 () Unit!29430)

(assert (=> d!492884 (= lt!598973 lt!598975)))

(assert (=> d!492884 (matchR!1998 (rulesRegex!561 thiss!17113 rules!1846) (list!7092 (charsOf!1820 (h!23397 tokens!457))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!42 (LexerInterface!2800 List!18065 List!18064 Token!5908 Rule!6142 List!18064) Unit!29430)

(assert (=> d!492884 (= lt!598975 (lemmaMaxPrefixThenMatchesRulesRegex!42 thiss!17113 rules!1846 (list!7092 (charsOf!1820 (h!23397 tokens!457))) (h!23397 tokens!457) (rule!5013 (h!23397 tokens!457)) Nil!17994))))

(declare-fun lt!598982 () Unit!29430)

(declare-fun lt!598966 () Unit!29430)

(assert (=> d!492884 (= lt!598982 lt!598966)))

(declare-fun lt!598941 () List!18064)

(assert (=> d!492884 (= lt!598970 lt!598941)))

(declare-fun lt!598985 () List!18064)

(declare-fun lt!598939 () List!18064)

(assert (=> d!492884 (= lt!598966 (lemmaSamePrefixThenSameSuffix!664 lt!598985 lt!598970 lt!598939 lt!598941 lt!598980))))

(declare-fun getSuffix!712 (List!18064 List!18064) List!18064)

(assert (=> d!492884 (= lt!598941 (getSuffix!712 lt!598980 (list!7092 (charsOf!1820 lt!598974))))))

(assert (=> d!492884 (= lt!598939 (list!7092 (charsOf!1820 lt!598974)))))

(assert (=> d!492884 (= lt!598985 (list!7092 (charsOf!1820 lt!598974)))))

(declare-fun lt!598986 () Unit!29430)

(declare-fun lt!598940 () Unit!29430)

(assert (=> d!492884 (= lt!598986 lt!598940)))

(declare-fun lt!598949 () List!18064)

(assert (=> d!492884 (= (maxPrefixOneRule!789 thiss!17113 (rule!5013 lt!598974) lt!598980) (Some!3379 (tuple2!17623 (Token!5909 (apply!4660 (transformation!3171 (rule!5013 lt!598974)) (seqFromList!2091 lt!598949)) (rule!5013 lt!598974) (size!14356 lt!598949) lt!598949) lt!598970)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!231 (LexerInterface!2800 List!18065 List!18064 List!18064 List!18064 Rule!6142) Unit!29430)

(assert (=> d!492884 (= lt!598940 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!231 thiss!17113 rules!1846 lt!598949 lt!598980 lt!598970 (rule!5013 lt!598974)))))

(assert (=> d!492884 (= lt!598949 (list!7092 (charsOf!1820 lt!598974)))))

(declare-fun lt!598990 () Unit!29430)

(declare-fun lemmaCharactersSize!337 (Token!5908) Unit!29430)

(assert (=> d!492884 (= lt!598990 (lemmaCharactersSize!337 lt!598974))))

(declare-fun lt!598944 () Unit!29430)

(declare-fun lemmaEqSameImage!190 (TokenValueInjection!6182 BalanceConc!11924 BalanceConc!11924) Unit!29430)

(assert (=> d!492884 (= lt!598944 (lemmaEqSameImage!190 (transformation!3171 (rule!5013 lt!598974)) (charsOf!1820 lt!598974) (seqFromList!2091 (originalCharacters!3985 lt!598974))))))

(declare-fun lt!598958 () Unit!29430)

(declare-fun lemmaSemiInverse!405 (TokenValueInjection!6182 BalanceConc!11924) Unit!29430)

(assert (=> d!492884 (= lt!598958 (lemmaSemiInverse!405 (transformation!3171 (rule!5013 lt!598974)) (charsOf!1820 lt!598974)))))

(declare-fun lt!598993 () Unit!29430)

(declare-fun lemmaInv!470 (TokenValueInjection!6182) Unit!29430)

(assert (=> d!492884 (= lt!598993 (lemmaInv!470 (transformation!3171 (rule!5013 lt!598974))))))

(declare-fun lt!598971 () Unit!29430)

(declare-fun lt!598952 () Unit!29430)

(assert (=> d!492884 (= lt!598971 lt!598952)))

(declare-fun lt!598976 () List!18064)

(assert (=> d!492884 (isPrefix!1431 lt!598976 (++!4819 lt!598976 lt!598970))))

(assert (=> d!492884 (= lt!598952 (lemmaConcatTwoListThenFirstIsPrefix!956 lt!598976 lt!598970))))

(assert (=> d!492884 (= lt!598976 (list!7092 (charsOf!1820 lt!598974)))))

(declare-fun lt!598979 () Unit!29430)

(declare-fun lt!599001 () Unit!29430)

(assert (=> d!492884 (= lt!598979 lt!599001)))

(assert (=> d!492884 e!1049668))

(declare-fun res!733005 () Bool)

(assert (=> d!492884 (=> (not res!733005) (not e!1049668))))

(assert (=> d!492884 (= res!733005 (isDefined!2749 (getRuleFromTag!298 thiss!17113 rules!1846 (tag!3451 (rule!5013 lt!598974)))))))

(assert (=> d!492884 (= lt!599001 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!298 thiss!17113 rules!1846 lt!598980 lt!598974))))

(declare-fun lt!598972 () Option!3380)

(assert (=> d!492884 (= lt!598970 (_2!10213 (get!5216 lt!598972)))))

(assert (=> d!492884 (= lt!598974 (_1!10213 (get!5216 lt!598972)))))

(declare-fun lt!598988 () Unit!29430)

(assert (=> d!492884 (= lt!598988 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!374 thiss!17113 rules!1846 (list!7092 (charsOf!1820 (h!23397 tokens!457))) lt!597925))))

(assert (=> d!492884 (= lt!598972 (maxPrefix!1364 thiss!17113 rules!1846 lt!598980))))

(declare-fun lt!598950 () Unit!29430)

(declare-fun lt!599006 () Unit!29430)

(assert (=> d!492884 (= lt!598950 lt!599006)))

(declare-fun lt!598997 () List!18064)

(assert (=> d!492884 (isPrefix!1431 lt!598997 (++!4819 lt!598997 lt!597925))))

(assert (=> d!492884 (= lt!599006 (lemmaConcatTwoListThenFirstIsPrefix!956 lt!598997 lt!597925))))

(assert (=> d!492884 (= lt!598997 (list!7092 (charsOf!1820 (h!23397 tokens!457))))))

(assert (=> d!492884 (= lt!598980 (++!4819 (list!7092 (charsOf!1820 (h!23397 tokens!457))) lt!597925))))

(assert (=> d!492884 (not (isEmpty!11026 rules!1846))))

(assert (=> d!492884 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!136 thiss!17113 rules!1846 (h!23397 tokens!457) (rule!5013 (h!23397 tokens!457)) lt!597925) lt!598965)))

(declare-fun b!1636810 () Bool)

(declare-fun e!1049670 () Unit!29430)

(declare-fun Unit!29481 () Unit!29430)

(assert (=> b!1636810 (= e!1049670 Unit!29481)))

(declare-fun b!1636811 () Bool)

(declare-fun Unit!29482 () Unit!29430)

(assert (=> b!1636811 (= e!1049674 Unit!29482)))

(declare-fun lt!598995 () Unit!29430)

(assert (=> b!1636811 (= lt!598995 (lemmaMaxPrefixThenMatchesRulesRegex!42 thiss!17113 rules!1846 lt!598980 lt!598974 (rule!5013 lt!598974) lt!598970))))

(assert (=> b!1636811 (matchR!1998 (rulesRegex!561 thiss!17113 rules!1846) (list!7092 (charsOf!1820 lt!598974)))))

(declare-fun lt!599003 () Unit!29430)

(assert (=> b!1636811 (= lt!599003 lt!598995)))

(declare-fun lt!598981 () List!18064)

(assert (=> b!1636811 (= lt!598981 (list!7092 (charsOf!1820 (h!23397 tokens!457))))))

(declare-fun lt!598945 () List!18064)

(assert (=> b!1636811 (= lt!598945 (list!7092 (charsOf!1820 (h!23397 tokens!457))))))

(declare-fun lt!598942 () List!18064)

(assert (=> b!1636811 (= lt!598942 (getSuffix!712 lt!598980 (list!7092 (charsOf!1820 (h!23397 tokens!457)))))))

(declare-fun lt!598967 () Unit!29430)

(assert (=> b!1636811 (= lt!598967 (lemmaSamePrefixThenSameSuffix!664 lt!598981 lt!597925 lt!598945 lt!598942 lt!598980))))

(assert (=> b!1636811 (= lt!597925 lt!598942)))

(declare-fun lt!598960 () Unit!29430)

(assert (=> b!1636811 (= lt!598960 lt!598967)))

(declare-fun lt!598961 () List!18064)

(assert (=> b!1636811 (= lt!598961 (list!7092 (charsOf!1820 (h!23397 tokens!457))))))

(declare-fun lt!598977 () Unit!29430)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!155 (List!18064 List!18064) Unit!29430)

(assert (=> b!1636811 (= lt!598977 (lemmaAddHeadSuffixToPrefixStillPrefix!155 lt!598961 lt!598980))))

(assert (=> b!1636811 (isPrefix!1431 (++!4819 lt!598961 (Cons!17994 (head!3527 (getSuffix!712 lt!598980 lt!598961)) Nil!17994)) lt!598980)))

(declare-fun lt!599008 () Unit!29430)

(assert (=> b!1636811 (= lt!599008 lt!598977)))

(declare-fun lt!598969 () List!18064)

(assert (=> b!1636811 (= lt!598969 (list!7092 (charsOf!1820 lt!598974)))))

(declare-fun lt!598984 () List!18064)

(assert (=> b!1636811 (= lt!598984 (++!4819 (list!7092 (charsOf!1820 (h!23397 tokens!457))) (Cons!17994 (head!3527 lt!597925) Nil!17994)))))

(declare-fun lt!598947 () Unit!29430)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!41 (List!18064 List!18064 List!18064) Unit!29430)

(assert (=> b!1636811 (= lt!598947 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!41 lt!598969 lt!598984 lt!598980))))

(assert (=> b!1636811 (isPrefix!1431 lt!598984 lt!598969)))

(declare-fun lt!598953 () Unit!29430)

(assert (=> b!1636811 (= lt!598953 lt!598947)))

(declare-fun lt!598987 () Regex!4499)

(assert (=> b!1636811 (= lt!598987 (rulesRegex!561 thiss!17113 rules!1846))))

(declare-fun lt!598938 () List!18064)

(assert (=> b!1636811 (= lt!598938 (++!4819 (list!7092 (charsOf!1820 (h!23397 tokens!457))) (Cons!17994 (head!3527 lt!597925) Nil!17994)))))

(declare-fun lt!599005 () List!18064)

(assert (=> b!1636811 (= lt!599005 (list!7092 (charsOf!1820 lt!598974)))))

(declare-fun lt!598992 () Unit!29430)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!42 (Regex!4499 List!18064 List!18064) Unit!29430)

(assert (=> b!1636811 (= lt!598992 (lemmaNotPrefixMatchThenCannotMatchLonger!42 lt!598987 lt!598938 lt!599005))))

(assert (=> b!1636811 (not (matchR!1998 lt!598987 lt!599005))))

(declare-fun lt!598962 () Unit!29430)

(assert (=> b!1636811 (= lt!598962 lt!598992)))

(assert (=> b!1636811 false))

(declare-fun b!1636812 () Bool)

(declare-fun Unit!29483 () Unit!29430)

(assert (=> b!1636812 (= e!1049672 Unit!29483)))

(declare-fun b!1636813 () Bool)

(declare-fun Unit!29484 () Unit!29430)

(assert (=> b!1636813 (= e!1049674 Unit!29484)))

(declare-fun b!1636814 () Bool)

(assert (=> b!1636814 (= e!1049668 (= (rule!5013 lt!598974) (get!5219 (getRuleFromTag!298 thiss!17113 rules!1846 (tag!3451 (rule!5013 lt!598974))))))))

(declare-fun b!1636815 () Bool)

(assert (=> b!1636815 false))

(declare-fun lt!598943 () Unit!29430)

(declare-fun lt!598989 () Unit!29430)

(assert (=> b!1636815 (= lt!598943 lt!598989)))

(declare-fun lt!598955 () List!18064)

(assert (=> b!1636815 (not (matchR!1998 (regex!3171 (rule!5013 (h!23397 tokens!457))) lt!598955))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!82 (LexerInterface!2800 List!18065 Rule!6142 List!18064 List!18064 Rule!6142) Unit!29430)

(assert (=> b!1636815 (= lt!598989 (lemmaMaxPrefNoSmallerRuleMatches!82 thiss!17113 rules!1846 (rule!5013 lt!598974) lt!598955 lt!598980 (rule!5013 (h!23397 tokens!457))))))

(assert (=> b!1636815 (= lt!598955 (list!7092 (charsOf!1820 lt!598974)))))

(declare-fun e!1049669 () Unit!29430)

(declare-fun Unit!29485 () Unit!29430)

(assert (=> b!1636815 (= e!1049669 Unit!29485)))

(declare-fun b!1636816 () Bool)

(declare-fun Unit!29486 () Unit!29430)

(assert (=> b!1636816 (= e!1049673 Unit!29486)))

(declare-fun b!1636817 () Bool)

(assert (=> b!1636817 false))

(declare-fun lt!598959 () Unit!29430)

(declare-fun lt!599004 () Unit!29430)

(assert (=> b!1636817 (= lt!598959 lt!599004)))

(declare-fun lt!598998 () List!18064)

(assert (=> b!1636817 (not (matchR!1998 (regex!3171 (rule!5013 lt!598974)) lt!598998))))

(assert (=> b!1636817 (= lt!599004 (lemmaMaxPrefNoSmallerRuleMatches!82 thiss!17113 rules!1846 (rule!5013 (h!23397 tokens!457)) lt!598998 (list!7092 (charsOf!1820 (h!23397 tokens!457))) (rule!5013 lt!598974)))))

(assert (=> b!1636817 (= lt!598998 (list!7092 (charsOf!1820 (h!23397 tokens!457))))))

(declare-fun Unit!29487 () Unit!29430)

(assert (=> b!1636817 (= e!1049670 Unit!29487)))

(declare-fun b!1636818 () Bool)

(declare-fun e!1049671 () Unit!29430)

(declare-fun Unit!29488 () Unit!29430)

(assert (=> b!1636818 (= e!1049671 Unit!29488)))

(declare-fun b!1636819 () Bool)

(declare-fun Unit!29489 () Unit!29430)

(assert (=> b!1636819 (= e!1049669 Unit!29489)))

(declare-fun b!1636820 () Bool)

(assert (=> b!1636820 false))

(declare-fun lt!599002 () Unit!29430)

(declare-fun lt!598983 () Unit!29430)

(assert (=> b!1636820 (= lt!599002 lt!598983)))

(assert (=> b!1636820 (= (rule!5013 lt!598974) (rule!5013 (h!23397 tokens!457)))))

(declare-fun lemmaSameIndexThenSameElement!58 (List!18065 Rule!6142 Rule!6142) Unit!29430)

(assert (=> b!1636820 (= lt!598983 (lemmaSameIndexThenSameElement!58 rules!1846 (rule!5013 lt!598974) (rule!5013 (h!23397 tokens!457))))))

(declare-fun Unit!29490 () Unit!29430)

(assert (=> b!1636820 (= e!1049671 Unit!29490)))

(declare-fun b!1636821 () Bool)

(declare-fun Unit!29491 () Unit!29430)

(assert (=> b!1636821 (= e!1049672 Unit!29491)))

(declare-fun lt!598957 () List!18064)

(assert (=> b!1636821 (= lt!598957 (list!7092 (charsOf!1820 lt!598974)))))

(declare-fun lt!598964 () List!18064)

(assert (=> b!1636821 (= lt!598964 (list!7092 (charsOf!1820 (h!23397 tokens!457))))))

(declare-fun lt!599000 () Unit!29430)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!132 (LexerInterface!2800 List!18065 Rule!6142 List!18064 List!18064 List!18064 Rule!6142) Unit!29430)

(assert (=> b!1636821 (= lt!599000 (lemmaMaxPrefixOutputsMaxPrefix!132 thiss!17113 rules!1846 (rule!5013 lt!598974) lt!598957 lt!598980 lt!598964 (rule!5013 (h!23397 tokens!457))))))

(assert (=> b!1636821 (not (matchR!1998 (regex!3171 (rule!5013 (h!23397 tokens!457))) lt!598964))))

(declare-fun lt!598999 () Unit!29430)

(assert (=> b!1636821 (= lt!598999 lt!599000)))

(assert (=> b!1636821 false))

(declare-fun b!1636822 () Bool)

(declare-fun Unit!29492 () Unit!29430)

(assert (=> b!1636822 (= e!1049673 Unit!29492)))

(declare-fun c!266344 () Bool)

(declare-fun getIndex!110 (List!18065 Rule!6142) Int)

(assert (=> b!1636822 (= c!266344 (< (getIndex!110 rules!1846 (rule!5013 (h!23397 tokens!457))) (getIndex!110 rules!1846 (rule!5013 lt!598974))))))

(declare-fun lt!598994 () Unit!29430)

(assert (=> b!1636822 (= lt!598994 e!1049669)))

(declare-fun c!266341 () Bool)

(assert (=> b!1636822 (= c!266341 (< (getIndex!110 rules!1846 (rule!5013 lt!598974)) (getIndex!110 rules!1846 (rule!5013 (h!23397 tokens!457)))))))

(declare-fun lt!598963 () Unit!29430)

(assert (=> b!1636822 (= lt!598963 e!1049670)))

(declare-fun c!266340 () Bool)

(assert (=> b!1636822 (= c!266340 (= (getIndex!110 rules!1846 (rule!5013 lt!598974)) (getIndex!110 rules!1846 (rule!5013 (h!23397 tokens!457)))))))

(declare-fun lt!598991 () Unit!29430)

(assert (=> b!1636822 (= lt!598991 e!1049671)))

(assert (=> b!1636822 false))

(assert (= (and d!492884 res!733005) b!1636809))

(assert (= (and b!1636809 res!733006) b!1636814))

(assert (= (and d!492884 c!266342) b!1636811))

(assert (= (and d!492884 (not c!266342)) b!1636813))

(assert (= (and d!492884 c!266343) b!1636821))

(assert (= (and d!492884 (not c!266343)) b!1636812))

(assert (= (and d!492884 c!266345) b!1636822))

(assert (= (and d!492884 (not c!266345)) b!1636816))

(assert (= (and b!1636822 c!266344) b!1636815))

(assert (= (and b!1636822 (not c!266344)) b!1636819))

(assert (= (and b!1636822 c!266341) b!1636817))

(assert (= (and b!1636822 (not c!266341)) b!1636810))

(assert (= (and b!1636822 c!266340) b!1636820))

(assert (= (and b!1636822 (not c!266340)) b!1636818))

(declare-fun m!1974443 () Bool)

(assert (=> b!1636814 m!1974443))

(assert (=> b!1636814 m!1974443))

(declare-fun m!1974445 () Bool)

(assert (=> b!1636814 m!1974445))

(declare-fun m!1974447 () Bool)

(assert (=> b!1636815 m!1974447))

(declare-fun m!1974449 () Bool)

(assert (=> b!1636815 m!1974449))

(declare-fun m!1974451 () Bool)

(assert (=> b!1636815 m!1974451))

(assert (=> b!1636815 m!1974451))

(declare-fun m!1974453 () Bool)

(assert (=> b!1636815 m!1974453))

(declare-fun m!1974455 () Bool)

(assert (=> b!1636817 m!1974455))

(assert (=> b!1636817 m!1973013))

(assert (=> b!1636817 m!1973013))

(declare-fun m!1974457 () Bool)

(assert (=> b!1636817 m!1974457))

(assert (=> b!1636817 m!1974457))

(declare-fun m!1974459 () Bool)

(assert (=> b!1636817 m!1974459))

(declare-fun m!1974461 () Bool)

(assert (=> b!1636822 m!1974461))

(declare-fun m!1974463 () Bool)

(assert (=> b!1636822 m!1974463))

(assert (=> b!1636809 m!1974443))

(assert (=> b!1636809 m!1974443))

(assert (=> b!1636809 m!1974445))

(assert (=> b!1636809 m!1974451))

(assert (=> b!1636809 m!1974453))

(assert (=> b!1636809 m!1974453))

(declare-fun m!1974465 () Bool)

(assert (=> b!1636809 m!1974465))

(assert (=> b!1636809 m!1974451))

(declare-fun m!1974467 () Bool)

(assert (=> b!1636820 m!1974467))

(assert (=> d!492884 m!1974457))

(assert (=> d!492884 m!1974457))

(declare-fun m!1974469 () Bool)

(assert (=> d!492884 m!1974469))

(assert (=> d!492884 m!1973013))

(declare-fun m!1974471 () Bool)

(assert (=> d!492884 m!1974471))

(assert (=> d!492884 m!1974457))

(declare-fun m!1974473 () Bool)

(assert (=> d!492884 m!1974473))

(assert (=> d!492884 m!1974451))

(assert (=> d!492884 m!1974453))

(assert (=> d!492884 m!1973051))

(assert (=> d!492884 m!1972919))

(declare-fun m!1974475 () Bool)

(assert (=> d!492884 m!1974475))

(assert (=> d!492884 m!1973013))

(declare-fun m!1974477 () Bool)

(assert (=> d!492884 m!1974477))

(declare-fun m!1974479 () Bool)

(assert (=> d!492884 m!1974479))

(declare-fun m!1974481 () Bool)

(assert (=> d!492884 m!1974481))

(declare-fun m!1974483 () Bool)

(assert (=> d!492884 m!1974483))

(declare-fun m!1974485 () Bool)

(assert (=> d!492884 m!1974485))

(declare-fun m!1974487 () Bool)

(assert (=> d!492884 m!1974487))

(assert (=> d!492884 m!1974443))

(declare-fun m!1974489 () Bool)

(assert (=> d!492884 m!1974489))

(declare-fun m!1974491 () Bool)

(assert (=> d!492884 m!1974491))

(declare-fun m!1974493 () Bool)

(assert (=> d!492884 m!1974493))

(assert (=> d!492884 m!1973013))

(assert (=> d!492884 m!1974457))

(declare-fun m!1974495 () Bool)

(assert (=> d!492884 m!1974495))

(assert (=> d!492884 m!1974451))

(declare-fun m!1974497 () Bool)

(assert (=> d!492884 m!1974497))

(assert (=> d!492884 m!1974481))

(declare-fun m!1974499 () Bool)

(assert (=> d!492884 m!1974499))

(assert (=> d!492884 m!1974451))

(assert (=> d!492884 m!1974477))

(declare-fun m!1974501 () Bool)

(assert (=> d!492884 m!1974501))

(declare-fun m!1974503 () Bool)

(assert (=> d!492884 m!1974503))

(assert (=> d!492884 m!1974487))

(declare-fun m!1974505 () Bool)

(assert (=> d!492884 m!1974505))

(assert (=> d!492884 m!1974451))

(declare-fun m!1974507 () Bool)

(assert (=> d!492884 m!1974507))

(assert (=> d!492884 m!1972919))

(assert (=> d!492884 m!1974457))

(declare-fun m!1974509 () Bool)

(assert (=> d!492884 m!1974509))

(declare-fun m!1974511 () Bool)

(assert (=> d!492884 m!1974511))

(declare-fun m!1974513 () Bool)

(assert (=> d!492884 m!1974513))

(assert (=> d!492884 m!1974451))

(declare-fun m!1974515 () Bool)

(assert (=> d!492884 m!1974515))

(declare-fun m!1974517 () Bool)

(assert (=> d!492884 m!1974517))

(assert (=> d!492884 m!1974457))

(assert (=> d!492884 m!1974489))

(assert (=> d!492884 m!1974475))

(declare-fun m!1974519 () Bool)

(assert (=> d!492884 m!1974519))

(declare-fun m!1974521 () Bool)

(assert (=> d!492884 m!1974521))

(assert (=> d!492884 m!1974443))

(declare-fun m!1974523 () Bool)

(assert (=> d!492884 m!1974523))

(assert (=> d!492884 m!1974457))

(declare-fun m!1974525 () Bool)

(assert (=> d!492884 m!1974525))

(assert (=> d!492884 m!1974453))

(declare-fun m!1974527 () Bool)

(assert (=> d!492884 m!1974527))

(declare-fun m!1974529 () Bool)

(assert (=> d!492884 m!1974529))

(declare-fun m!1974531 () Bool)

(assert (=> b!1636811 m!1974531))

(assert (=> b!1636811 m!1973013))

(assert (=> b!1636811 m!1974457))

(declare-fun m!1974533 () Bool)

(assert (=> b!1636811 m!1974533))

(declare-fun m!1974535 () Bool)

(assert (=> b!1636811 m!1974535))

(declare-fun m!1974537 () Bool)

(assert (=> b!1636811 m!1974537))

(assert (=> b!1636811 m!1972919))

(assert (=> b!1636811 m!1974453))

(declare-fun m!1974539 () Bool)

(assert (=> b!1636811 m!1974539))

(assert (=> b!1636811 m!1974457))

(declare-fun m!1974541 () Bool)

(assert (=> b!1636811 m!1974541))

(assert (=> b!1636811 m!1974533))

(declare-fun m!1974543 () Bool)

(assert (=> b!1636811 m!1974543))

(declare-fun m!1974545 () Bool)

(assert (=> b!1636811 m!1974545))

(assert (=> b!1636811 m!1972991))

(assert (=> b!1636811 m!1974451))

(assert (=> b!1636811 m!1974545))

(declare-fun m!1974547 () Bool)

(assert (=> b!1636811 m!1974547))

(declare-fun m!1974549 () Bool)

(assert (=> b!1636811 m!1974549))

(assert (=> b!1636811 m!1974457))

(declare-fun m!1974551 () Bool)

(assert (=> b!1636811 m!1974551))

(declare-fun m!1974553 () Bool)

(assert (=> b!1636811 m!1974553))

(assert (=> b!1636811 m!1974451))

(assert (=> b!1636811 m!1974453))

(declare-fun m!1974555 () Bool)

(assert (=> b!1636811 m!1974555))

(assert (=> b!1636811 m!1972919))

(declare-fun m!1974557 () Bool)

(assert (=> b!1636811 m!1974557))

(assert (=> b!1636811 m!1973013))

(assert (=> b!1636821 m!1973013))

(assert (=> b!1636821 m!1974457))

(declare-fun m!1974559 () Bool)

(assert (=> b!1636821 m!1974559))

(assert (=> b!1636821 m!1974451))

(assert (=> b!1636821 m!1974453))

(declare-fun m!1974561 () Bool)

(assert (=> b!1636821 m!1974561))

(assert (=> b!1636821 m!1973013))

(assert (=> b!1636821 m!1974451))

(assert (=> b!1636061 d!492884))

(declare-fun b!1636823 () Bool)

(declare-fun res!733010 () Bool)

(declare-fun e!1049676 () Bool)

(assert (=> b!1636823 (=> (not res!733010) (not e!1049676))))

(declare-fun lt!599012 () Option!3380)

(assert (=> b!1636823 (= res!733010 (= (++!4819 (list!7092 (charsOf!1820 (_1!10213 (get!5216 lt!599012)))) (_2!10213 (get!5216 lt!599012))) (originalCharacters!3985 (h!23397 tokens!457))))))

(declare-fun d!492892 () Bool)

(declare-fun e!1049675 () Bool)

(assert (=> d!492892 e!1049675))

(declare-fun res!733012 () Bool)

(assert (=> d!492892 (=> res!733012 e!1049675)))

(assert (=> d!492892 (= res!733012 (isEmpty!11037 lt!599012))))

(declare-fun e!1049677 () Option!3380)

(assert (=> d!492892 (= lt!599012 e!1049677)))

(declare-fun c!266346 () Bool)

(assert (=> d!492892 (= c!266346 (and ((_ is Cons!17995) rules!1846) ((_ is Nil!17995) (t!149732 rules!1846))))))

(declare-fun lt!599013 () Unit!29430)

(declare-fun lt!599011 () Unit!29430)

(assert (=> d!492892 (= lt!599013 lt!599011)))

(assert (=> d!492892 (isPrefix!1431 (originalCharacters!3985 (h!23397 tokens!457)) (originalCharacters!3985 (h!23397 tokens!457)))))

(assert (=> d!492892 (= lt!599011 (lemmaIsPrefixRefl!974 (originalCharacters!3985 (h!23397 tokens!457)) (originalCharacters!3985 (h!23397 tokens!457))))))

(assert (=> d!492892 (rulesValidInductive!992 thiss!17113 rules!1846)))

(assert (=> d!492892 (= (maxPrefix!1364 thiss!17113 rules!1846 (originalCharacters!3985 (h!23397 tokens!457))) lt!599012)))

(declare-fun b!1636824 () Bool)

(assert (=> b!1636824 (= e!1049675 e!1049676)))

(declare-fun res!733008 () Bool)

(assert (=> b!1636824 (=> (not res!733008) (not e!1049676))))

(assert (=> b!1636824 (= res!733008 (isDefined!2747 lt!599012))))

(declare-fun b!1636825 () Bool)

(declare-fun res!733007 () Bool)

(assert (=> b!1636825 (=> (not res!733007) (not e!1049676))))

(assert (=> b!1636825 (= res!733007 (< (size!14356 (_2!10213 (get!5216 lt!599012))) (size!14356 (originalCharacters!3985 (h!23397 tokens!457)))))))

(declare-fun b!1636826 () Bool)

(declare-fun lt!599009 () Option!3380)

(declare-fun lt!599010 () Option!3380)

(assert (=> b!1636826 (= e!1049677 (ite (and ((_ is None!3379) lt!599009) ((_ is None!3379) lt!599010)) None!3379 (ite ((_ is None!3379) lt!599010) lt!599009 (ite ((_ is None!3379) lt!599009) lt!599010 (ite (>= (size!14350 (_1!10213 (v!24462 lt!599009))) (size!14350 (_1!10213 (v!24462 lt!599010)))) lt!599009 lt!599010)))))))

(declare-fun call!105665 () Option!3380)

(assert (=> b!1636826 (= lt!599009 call!105665)))

(assert (=> b!1636826 (= lt!599010 (maxPrefix!1364 thiss!17113 (t!149732 rules!1846) (originalCharacters!3985 (h!23397 tokens!457))))))

(declare-fun b!1636827 () Bool)

(declare-fun res!733009 () Bool)

(assert (=> b!1636827 (=> (not res!733009) (not e!1049676))))

(assert (=> b!1636827 (= res!733009 (= (value!100046 (_1!10213 (get!5216 lt!599012))) (apply!4660 (transformation!3171 (rule!5013 (_1!10213 (get!5216 lt!599012)))) (seqFromList!2091 (originalCharacters!3985 (_1!10213 (get!5216 lt!599012)))))))))

(declare-fun b!1636828 () Bool)

(assert (=> b!1636828 (= e!1049677 call!105665)))

(declare-fun b!1636829 () Bool)

(assert (=> b!1636829 (= e!1049676 (contains!3140 rules!1846 (rule!5013 (_1!10213 (get!5216 lt!599012)))))))

(declare-fun b!1636830 () Bool)

(declare-fun res!733011 () Bool)

(assert (=> b!1636830 (=> (not res!733011) (not e!1049676))))

(assert (=> b!1636830 (= res!733011 (= (list!7092 (charsOf!1820 (_1!10213 (get!5216 lt!599012)))) (originalCharacters!3985 (_1!10213 (get!5216 lt!599012)))))))

(declare-fun b!1636831 () Bool)

(declare-fun res!733013 () Bool)

(assert (=> b!1636831 (=> (not res!733013) (not e!1049676))))

(assert (=> b!1636831 (= res!733013 (matchR!1998 (regex!3171 (rule!5013 (_1!10213 (get!5216 lt!599012)))) (list!7092 (charsOf!1820 (_1!10213 (get!5216 lt!599012))))))))

(declare-fun bm!105660 () Bool)

(assert (=> bm!105660 (= call!105665 (maxPrefixOneRule!789 thiss!17113 (h!23396 rules!1846) (originalCharacters!3985 (h!23397 tokens!457))))))

(assert (= (and d!492892 c!266346) b!1636828))

(assert (= (and d!492892 (not c!266346)) b!1636826))

(assert (= (or b!1636828 b!1636826) bm!105660))

(assert (= (and d!492892 (not res!733012)) b!1636824))

(assert (= (and b!1636824 res!733008) b!1636830))

(assert (= (and b!1636830 res!733011) b!1636825))

(assert (= (and b!1636825 res!733007) b!1636823))

(assert (= (and b!1636823 res!733010) b!1636827))

(assert (= (and b!1636827 res!733009) b!1636831))

(assert (= (and b!1636831 res!733013) b!1636829))

(declare-fun m!1974563 () Bool)

(assert (=> b!1636826 m!1974563))

(declare-fun m!1974565 () Bool)

(assert (=> b!1636829 m!1974565))

(declare-fun m!1974567 () Bool)

(assert (=> b!1636829 m!1974567))

(assert (=> b!1636831 m!1974565))

(declare-fun m!1974569 () Bool)

(assert (=> b!1636831 m!1974569))

(assert (=> b!1636831 m!1974569))

(declare-fun m!1974571 () Bool)

(assert (=> b!1636831 m!1974571))

(assert (=> b!1636831 m!1974571))

(declare-fun m!1974573 () Bool)

(assert (=> b!1636831 m!1974573))

(assert (=> b!1636823 m!1974565))

(assert (=> b!1636823 m!1974569))

(assert (=> b!1636823 m!1974569))

(assert (=> b!1636823 m!1974571))

(assert (=> b!1636823 m!1974571))

(declare-fun m!1974575 () Bool)

(assert (=> b!1636823 m!1974575))

(declare-fun m!1974577 () Bool)

(assert (=> bm!105660 m!1974577))

(assert (=> b!1636825 m!1974565))

(declare-fun m!1974579 () Bool)

(assert (=> b!1636825 m!1974579))

(assert (=> b!1636825 m!1973731))

(declare-fun m!1974581 () Bool)

(assert (=> b!1636824 m!1974581))

(assert (=> b!1636830 m!1974565))

(assert (=> b!1636830 m!1974569))

(assert (=> b!1636830 m!1974569))

(assert (=> b!1636830 m!1974571))

(declare-fun m!1974583 () Bool)

(assert (=> d!492892 m!1974583))

(declare-fun m!1974585 () Bool)

(assert (=> d!492892 m!1974585))

(declare-fun m!1974587 () Bool)

(assert (=> d!492892 m!1974587))

(assert (=> d!492892 m!1973169))

(assert (=> b!1636827 m!1974565))

(declare-fun m!1974589 () Bool)

(assert (=> b!1636827 m!1974589))

(assert (=> b!1636827 m!1974589))

(declare-fun m!1974591 () Bool)

(assert (=> b!1636827 m!1974591))

(assert (=> b!1636065 d!492892))

(declare-fun b!1636832 () Bool)

(declare-fun res!733017 () Bool)

(declare-fun e!1049679 () Bool)

(assert (=> b!1636832 (=> (not res!733017) (not e!1049679))))

(declare-fun lt!599017 () Option!3380)

(assert (=> b!1636832 (= res!733017 (= (++!4819 (list!7092 (charsOf!1820 (_1!10213 (get!5216 lt!599017)))) (_2!10213 (get!5216 lt!599017))) lt!597936))))

(declare-fun d!492894 () Bool)

(declare-fun e!1049678 () Bool)

(assert (=> d!492894 e!1049678))

(declare-fun res!733019 () Bool)

(assert (=> d!492894 (=> res!733019 e!1049678)))

(assert (=> d!492894 (= res!733019 (isEmpty!11037 lt!599017))))

(declare-fun e!1049680 () Option!3380)

(assert (=> d!492894 (= lt!599017 e!1049680)))

(declare-fun c!266347 () Bool)

(assert (=> d!492894 (= c!266347 (and ((_ is Cons!17995) rules!1846) ((_ is Nil!17995) (t!149732 rules!1846))))))

(declare-fun lt!599018 () Unit!29430)

(declare-fun lt!599016 () Unit!29430)

(assert (=> d!492894 (= lt!599018 lt!599016)))

(assert (=> d!492894 (isPrefix!1431 lt!597936 lt!597936)))

(assert (=> d!492894 (= lt!599016 (lemmaIsPrefixRefl!974 lt!597936 lt!597936))))

(assert (=> d!492894 (rulesValidInductive!992 thiss!17113 rules!1846)))

(assert (=> d!492894 (= (maxPrefix!1364 thiss!17113 rules!1846 lt!597936) lt!599017)))

(declare-fun b!1636833 () Bool)

(assert (=> b!1636833 (= e!1049678 e!1049679)))

(declare-fun res!733015 () Bool)

(assert (=> b!1636833 (=> (not res!733015) (not e!1049679))))

(assert (=> b!1636833 (= res!733015 (isDefined!2747 lt!599017))))

(declare-fun b!1636834 () Bool)

(declare-fun res!733014 () Bool)

(assert (=> b!1636834 (=> (not res!733014) (not e!1049679))))

(assert (=> b!1636834 (= res!733014 (< (size!14356 (_2!10213 (get!5216 lt!599017))) (size!14356 lt!597936)))))

(declare-fun b!1636835 () Bool)

(declare-fun lt!599014 () Option!3380)

(declare-fun lt!599015 () Option!3380)

(assert (=> b!1636835 (= e!1049680 (ite (and ((_ is None!3379) lt!599014) ((_ is None!3379) lt!599015)) None!3379 (ite ((_ is None!3379) lt!599015) lt!599014 (ite ((_ is None!3379) lt!599014) lt!599015 (ite (>= (size!14350 (_1!10213 (v!24462 lt!599014))) (size!14350 (_1!10213 (v!24462 lt!599015)))) lt!599014 lt!599015)))))))

(declare-fun call!105666 () Option!3380)

(assert (=> b!1636835 (= lt!599014 call!105666)))

(assert (=> b!1636835 (= lt!599015 (maxPrefix!1364 thiss!17113 (t!149732 rules!1846) lt!597936))))

(declare-fun b!1636836 () Bool)

(declare-fun res!733016 () Bool)

(assert (=> b!1636836 (=> (not res!733016) (not e!1049679))))

(assert (=> b!1636836 (= res!733016 (= (value!100046 (_1!10213 (get!5216 lt!599017))) (apply!4660 (transformation!3171 (rule!5013 (_1!10213 (get!5216 lt!599017)))) (seqFromList!2091 (originalCharacters!3985 (_1!10213 (get!5216 lt!599017)))))))))

(declare-fun b!1636837 () Bool)

(assert (=> b!1636837 (= e!1049680 call!105666)))

(declare-fun b!1636838 () Bool)

(assert (=> b!1636838 (= e!1049679 (contains!3140 rules!1846 (rule!5013 (_1!10213 (get!5216 lt!599017)))))))

(declare-fun b!1636839 () Bool)

(declare-fun res!733018 () Bool)

(assert (=> b!1636839 (=> (not res!733018) (not e!1049679))))

(assert (=> b!1636839 (= res!733018 (= (list!7092 (charsOf!1820 (_1!10213 (get!5216 lt!599017)))) (originalCharacters!3985 (_1!10213 (get!5216 lt!599017)))))))

(declare-fun b!1636840 () Bool)

(declare-fun res!733020 () Bool)

(assert (=> b!1636840 (=> (not res!733020) (not e!1049679))))

(assert (=> b!1636840 (= res!733020 (matchR!1998 (regex!3171 (rule!5013 (_1!10213 (get!5216 lt!599017)))) (list!7092 (charsOf!1820 (_1!10213 (get!5216 lt!599017))))))))

(declare-fun bm!105661 () Bool)

(assert (=> bm!105661 (= call!105666 (maxPrefixOneRule!789 thiss!17113 (h!23396 rules!1846) lt!597936))))

(assert (= (and d!492894 c!266347) b!1636837))

(assert (= (and d!492894 (not c!266347)) b!1636835))

(assert (= (or b!1636837 b!1636835) bm!105661))

(assert (= (and d!492894 (not res!733019)) b!1636833))

(assert (= (and b!1636833 res!733015) b!1636839))

(assert (= (and b!1636839 res!733018) b!1636834))

(assert (= (and b!1636834 res!733014) b!1636832))

(assert (= (and b!1636832 res!733017) b!1636836))

(assert (= (and b!1636836 res!733016) b!1636840))

(assert (= (and b!1636840 res!733020) b!1636838))

(declare-fun m!1974593 () Bool)

(assert (=> b!1636835 m!1974593))

(declare-fun m!1974595 () Bool)

(assert (=> b!1636838 m!1974595))

(declare-fun m!1974597 () Bool)

(assert (=> b!1636838 m!1974597))

(assert (=> b!1636840 m!1974595))

(declare-fun m!1974599 () Bool)

(assert (=> b!1636840 m!1974599))

(assert (=> b!1636840 m!1974599))

(declare-fun m!1974601 () Bool)

(assert (=> b!1636840 m!1974601))

(assert (=> b!1636840 m!1974601))

(declare-fun m!1974603 () Bool)

(assert (=> b!1636840 m!1974603))

(assert (=> b!1636832 m!1974595))

(assert (=> b!1636832 m!1974599))

(assert (=> b!1636832 m!1974599))

(assert (=> b!1636832 m!1974601))

(assert (=> b!1636832 m!1974601))

(declare-fun m!1974605 () Bool)

(assert (=> b!1636832 m!1974605))

(declare-fun m!1974607 () Bool)

(assert (=> bm!105661 m!1974607))

(assert (=> b!1636834 m!1974595))

(declare-fun m!1974609 () Bool)

(assert (=> b!1636834 m!1974609))

(assert (=> b!1636834 m!1973419))

(declare-fun m!1974611 () Bool)

(assert (=> b!1636833 m!1974611))

(assert (=> b!1636839 m!1974595))

(assert (=> b!1636839 m!1974599))

(assert (=> b!1636839 m!1974599))

(assert (=> b!1636839 m!1974601))

(declare-fun m!1974613 () Bool)

(assert (=> d!492894 m!1974613))

(declare-fun m!1974615 () Bool)

(assert (=> d!492894 m!1974615))

(declare-fun m!1974617 () Bool)

(assert (=> d!492894 m!1974617))

(assert (=> d!492894 m!1973169))

(assert (=> b!1636836 m!1974595))

(declare-fun m!1974619 () Bool)

(assert (=> b!1636836 m!1974619))

(assert (=> b!1636836 m!1974619))

(declare-fun m!1974621 () Bool)

(assert (=> b!1636836 m!1974621))

(assert (=> b!1636065 d!492894))

(declare-fun d!492896 () Bool)

(declare-fun e!1049682 () Bool)

(assert (=> d!492896 e!1049682))

(declare-fun res!733021 () Bool)

(assert (=> d!492896 (=> (not res!733021) (not e!1049682))))

(declare-fun lt!599019 () List!18064)

(assert (=> d!492896 (= res!733021 (= (content!2493 lt!599019) ((_ map or) (content!2493 (originalCharacters!3985 (h!23397 tokens!457))) (content!2493 lt!597924))))))

(declare-fun e!1049681 () List!18064)

(assert (=> d!492896 (= lt!599019 e!1049681)))

(declare-fun c!266348 () Bool)

(assert (=> d!492896 (= c!266348 ((_ is Nil!17994) (originalCharacters!3985 (h!23397 tokens!457))))))

(assert (=> d!492896 (= (++!4819 (originalCharacters!3985 (h!23397 tokens!457)) lt!597924) lt!599019)))

(declare-fun b!1636842 () Bool)

(assert (=> b!1636842 (= e!1049681 (Cons!17994 (h!23395 (originalCharacters!3985 (h!23397 tokens!457))) (++!4819 (t!149731 (originalCharacters!3985 (h!23397 tokens!457))) lt!597924)))))

(declare-fun b!1636844 () Bool)

(assert (=> b!1636844 (= e!1049682 (or (not (= lt!597924 Nil!17994)) (= lt!599019 (originalCharacters!3985 (h!23397 tokens!457)))))))

(declare-fun b!1636841 () Bool)

(assert (=> b!1636841 (= e!1049681 lt!597924)))

(declare-fun b!1636843 () Bool)

(declare-fun res!733022 () Bool)

(assert (=> b!1636843 (=> (not res!733022) (not e!1049682))))

(assert (=> b!1636843 (= res!733022 (= (size!14356 lt!599019) (+ (size!14356 (originalCharacters!3985 (h!23397 tokens!457))) (size!14356 lt!597924))))))

(assert (= (and d!492896 c!266348) b!1636841))

(assert (= (and d!492896 (not c!266348)) b!1636842))

(assert (= (and d!492896 res!733021) b!1636843))

(assert (= (and b!1636843 res!733022) b!1636844))

(declare-fun m!1974623 () Bool)

(assert (=> d!492896 m!1974623))

(declare-fun m!1974625 () Bool)

(assert (=> d!492896 m!1974625))

(assert (=> d!492896 m!1973767))

(declare-fun m!1974627 () Bool)

(assert (=> b!1636842 m!1974627))

(declare-fun m!1974629 () Bool)

(assert (=> b!1636843 m!1974629))

(assert (=> b!1636843 m!1973731))

(assert (=> b!1636843 m!1973773))

(assert (=> b!1636065 d!492896))

(declare-fun d!492898 () Bool)

(assert (=> d!492898 (= (isDefined!2747 (maxPrefix!1364 thiss!17113 rules!1846 (originalCharacters!3985 (h!23397 tokens!457)))) (not (isEmpty!11037 (maxPrefix!1364 thiss!17113 rules!1846 (originalCharacters!3985 (h!23397 tokens!457))))))))

(declare-fun bs!395442 () Bool)

(assert (= bs!395442 d!492898))

(assert (=> bs!395442 m!1972963))

(declare-fun m!1974631 () Bool)

(assert (=> bs!395442 m!1974631))

(assert (=> b!1636065 d!492898))

(declare-fun d!492900 () Bool)

(assert (=> d!492900 (= (isDefined!2747 lt!597930) (not (isEmpty!11037 lt!597930)))))

(declare-fun bs!395443 () Bool)

(assert (= bs!395443 d!492900))

(declare-fun m!1974633 () Bool)

(assert (=> bs!395443 m!1974633))

(assert (=> b!1636065 d!492900))

(declare-fun d!492902 () Bool)

(declare-fun c!266349 () Bool)

(assert (=> d!492902 (= c!266349 (isEmpty!11027 (++!4819 (originalCharacters!3985 (h!23397 tokens!457)) lt!597924)))))

(declare-fun e!1049683 () Bool)

(assert (=> d!492902 (= (prefixMatch!434 lt!597926 (++!4819 (originalCharacters!3985 (h!23397 tokens!457)) lt!597924)) e!1049683)))

(declare-fun b!1636845 () Bool)

(assert (=> b!1636845 (= e!1049683 (not (lostCause!452 lt!597926)))))

(declare-fun b!1636846 () Bool)

(assert (=> b!1636846 (= e!1049683 (prefixMatch!434 (derivativeStep!1096 lt!597926 (head!3527 (++!4819 (originalCharacters!3985 (h!23397 tokens!457)) lt!597924))) (tail!2394 (++!4819 (originalCharacters!3985 (h!23397 tokens!457)) lt!597924))))))

(assert (= (and d!492902 c!266349) b!1636845))

(assert (= (and d!492902 (not c!266349)) b!1636846))

(assert (=> d!492902 m!1972969))

(declare-fun m!1974635 () Bool)

(assert (=> d!492902 m!1974635))

(assert (=> b!1636845 m!1973755))

(assert (=> b!1636846 m!1972969))

(declare-fun m!1974637 () Bool)

(assert (=> b!1636846 m!1974637))

(assert (=> b!1636846 m!1974637))

(declare-fun m!1974639 () Bool)

(assert (=> b!1636846 m!1974639))

(assert (=> b!1636846 m!1972969))

(declare-fun m!1974641 () Bool)

(assert (=> b!1636846 m!1974641))

(assert (=> b!1636846 m!1974639))

(assert (=> b!1636846 m!1974641))

(declare-fun m!1974643 () Bool)

(assert (=> b!1636846 m!1974643))

(assert (=> b!1636065 d!492902))

(declare-fun d!492904 () Bool)

(assert (=> d!492904 (= (get!5216 lt!597930) (v!24462 lt!597930))))

(assert (=> b!1636065 d!492904))

(declare-fun d!492906 () Bool)

(declare-fun res!733027 () Bool)

(declare-fun e!1049688 () Bool)

(assert (=> d!492906 (=> res!733027 e!1049688)))

(assert (=> d!492906 (= res!733027 (or (not ((_ is Cons!17996) tokens!457)) (not ((_ is Cons!17996) (t!149733 tokens!457)))))))

(assert (=> d!492906 (= (tokensListTwoByTwoPredicateSeparableList!493 thiss!17113 tokens!457 rules!1846) e!1049688)))

(declare-fun b!1636851 () Bool)

(declare-fun e!1049689 () Bool)

(assert (=> b!1636851 (= e!1049688 e!1049689)))

(declare-fun res!733028 () Bool)

(assert (=> b!1636851 (=> (not res!733028) (not e!1049689))))

(assert (=> b!1636851 (= res!733028 (separableTokensPredicate!742 thiss!17113 (h!23397 tokens!457) (h!23397 (t!149733 tokens!457)) rules!1846))))

(declare-fun lt!599036 () Unit!29430)

(declare-fun Unit!29493 () Unit!29430)

(assert (=> b!1636851 (= lt!599036 Unit!29493)))

(assert (=> b!1636851 (> (size!14355 (charsOf!1820 (h!23397 (t!149733 tokens!457)))) 0)))

(declare-fun lt!599034 () Unit!29430)

(declare-fun Unit!29494 () Unit!29430)

(assert (=> b!1636851 (= lt!599034 Unit!29494)))

(assert (=> b!1636851 (rulesProduceIndividualToken!1452 thiss!17113 rules!1846 (h!23397 (t!149733 tokens!457)))))

(declare-fun lt!599040 () Unit!29430)

(declare-fun Unit!29495 () Unit!29430)

(assert (=> b!1636851 (= lt!599040 Unit!29495)))

(assert (=> b!1636851 (rulesProduceIndividualToken!1452 thiss!17113 rules!1846 (h!23397 tokens!457))))

(declare-fun lt!599039 () Unit!29430)

(declare-fun lt!599037 () Unit!29430)

(assert (=> b!1636851 (= lt!599039 lt!599037)))

(assert (=> b!1636851 (rulesProduceIndividualToken!1452 thiss!17113 rules!1846 (h!23397 (t!149733 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!579 (LexerInterface!2800 List!18065 List!18066 Token!5908) Unit!29430)

(assert (=> b!1636851 (= lt!599037 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!579 thiss!17113 rules!1846 tokens!457 (h!23397 (t!149733 tokens!457))))))

(declare-fun lt!599038 () Unit!29430)

(declare-fun lt!599035 () Unit!29430)

(assert (=> b!1636851 (= lt!599038 lt!599035)))

(assert (=> b!1636851 (rulesProduceIndividualToken!1452 thiss!17113 rules!1846 (h!23397 tokens!457))))

(assert (=> b!1636851 (= lt!599035 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!579 thiss!17113 rules!1846 tokens!457 (h!23397 tokens!457)))))

(declare-fun b!1636852 () Bool)

(assert (=> b!1636852 (= e!1049689 (tokensListTwoByTwoPredicateSeparableList!493 thiss!17113 (Cons!17996 (h!23397 (t!149733 tokens!457)) (t!149733 (t!149733 tokens!457))) rules!1846))))

(assert (= (and d!492906 (not res!733027)) b!1636851))

(assert (= (and b!1636851 res!733028) b!1636852))

(declare-fun m!1974645 () Bool)

(assert (=> b!1636851 m!1974645))

(assert (=> b!1636851 m!1973001))

(declare-fun m!1974647 () Bool)

(assert (=> b!1636851 m!1974647))

(assert (=> b!1636851 m!1972929))

(assert (=> b!1636851 m!1974269))

(declare-fun m!1974649 () Bool)

(assert (=> b!1636851 m!1974649))

(assert (=> b!1636851 m!1972957))

(assert (=> b!1636851 m!1972929))

(declare-fun m!1974651 () Bool)

(assert (=> b!1636852 m!1974651))

(assert (=> b!1636064 d!492906))

(declare-fun b!1636857 () Bool)

(declare-fun e!1049692 () Bool)

(declare-fun tp_is_empty!7309 () Bool)

(declare-fun tp!474515 () Bool)

(assert (=> b!1636857 (= e!1049692 (and tp_is_empty!7309 tp!474515))))

(assert (=> b!1636052 (= tp!474453 e!1049692)))

(assert (= (and b!1636052 ((_ is Cons!17994) (originalCharacters!3985 (h!23397 tokens!457)))) b!1636857))

(declare-fun b!1636869 () Bool)

(declare-fun e!1049695 () Bool)

(declare-fun tp!474527 () Bool)

(declare-fun tp!474528 () Bool)

(assert (=> b!1636869 (= e!1049695 (and tp!474527 tp!474528))))

(declare-fun b!1636870 () Bool)

(declare-fun tp!474530 () Bool)

(assert (=> b!1636870 (= e!1049695 tp!474530)))

(declare-fun b!1636868 () Bool)

(assert (=> b!1636868 (= e!1049695 tp_is_empty!7309)))

(assert (=> b!1636051 (= tp!474451 e!1049695)))

(declare-fun b!1636871 () Bool)

(declare-fun tp!474529 () Bool)

(declare-fun tp!474526 () Bool)

(assert (=> b!1636871 (= e!1049695 (and tp!474529 tp!474526))))

(assert (= (and b!1636051 ((_ is ElementMatch!4499) (regex!3171 (h!23396 rules!1846)))) b!1636868))

(assert (= (and b!1636051 ((_ is Concat!7761) (regex!3171 (h!23396 rules!1846)))) b!1636869))

(assert (= (and b!1636051 ((_ is Star!4499) (regex!3171 (h!23396 rules!1846)))) b!1636870))

(assert (= (and b!1636051 ((_ is Union!4499) (regex!3171 (h!23396 rules!1846)))) b!1636871))

(declare-fun b!1636885 () Bool)

(declare-fun b_free!44247 () Bool)

(declare-fun b_next!44951 () Bool)

(assert (=> b!1636885 (= b_free!44247 (not b_next!44951))))

(declare-fun tp!474545 () Bool)

(declare-fun b_and!116013 () Bool)

(assert (=> b!1636885 (= tp!474545 b_and!116013)))

(declare-fun b_free!44249 () Bool)

(declare-fun b_next!44953 () Bool)

(assert (=> b!1636885 (= b_free!44249 (not b_next!44953))))

(declare-fun t!149769 () Bool)

(declare-fun tb!93807 () Bool)

(assert (=> (and b!1636885 (= (toChars!4461 (transformation!3171 (rule!5013 (h!23397 (t!149733 tokens!457))))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457))))) t!149769) tb!93807))

(declare-fun result!113192 () Bool)

(assert (= result!113192 result!113156))

(assert (=> d!492686 t!149769))

(assert (=> b!1636442 t!149769))

(declare-fun t!149771 () Bool)

(declare-fun tb!93809 () Bool)

(assert (=> (and b!1636885 (= (toChars!4461 (transformation!3171 (rule!5013 (h!23397 (t!149733 tokens!457))))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 (t!149733 tokens!457)))))) t!149771) tb!93809))

(declare-fun result!113194 () Bool)

(assert (= result!113194 result!113166))

(assert (=> d!492872 t!149771))

(declare-fun tp!474544 () Bool)

(declare-fun b_and!116015 () Bool)

(assert (=> b!1636885 (= tp!474544 (and (=> t!149769 result!113192) (=> t!149771 result!113194) b_and!116015))))

(declare-fun e!1049712 () Bool)

(assert (=> b!1636885 (= e!1049712 (and tp!474545 tp!474544))))

(declare-fun b!1636884 () Bool)

(declare-fun tp!474541 () Bool)

(declare-fun e!1049708 () Bool)

(assert (=> b!1636884 (= e!1049708 (and tp!474541 (inv!23346 (tag!3451 (rule!5013 (h!23397 (t!149733 tokens!457))))) (inv!23349 (transformation!3171 (rule!5013 (h!23397 (t!149733 tokens!457))))) e!1049712))))

(declare-fun b!1636882 () Bool)

(declare-fun tp!474542 () Bool)

(declare-fun e!1049711 () Bool)

(declare-fun e!1049713 () Bool)

(assert (=> b!1636882 (= e!1049711 (and (inv!23350 (h!23397 (t!149733 tokens!457))) e!1049713 tp!474542))))

(assert (=> b!1636054 (= tp!474452 e!1049711)))

(declare-fun b!1636883 () Bool)

(declare-fun tp!474543 () Bool)

(assert (=> b!1636883 (= e!1049713 (and (inv!21 (value!100046 (h!23397 (t!149733 tokens!457)))) e!1049708 tp!474543))))

(assert (= b!1636884 b!1636885))

(assert (= b!1636883 b!1636884))

(assert (= b!1636882 b!1636883))

(assert (= (and b!1636054 ((_ is Cons!17996) (t!149733 tokens!457))) b!1636882))

(declare-fun m!1974653 () Bool)

(assert (=> b!1636884 m!1974653))

(declare-fun m!1974655 () Bool)

(assert (=> b!1636884 m!1974655))

(declare-fun m!1974657 () Bool)

(assert (=> b!1636882 m!1974657))

(declare-fun m!1974659 () Bool)

(assert (=> b!1636883 m!1974659))

(declare-fun b!1636896 () Bool)

(declare-fun b_free!44251 () Bool)

(declare-fun b_next!44955 () Bool)

(assert (=> b!1636896 (= b_free!44251 (not b_next!44955))))

(declare-fun tp!474554 () Bool)

(declare-fun b_and!116017 () Bool)

(assert (=> b!1636896 (= tp!474554 b_and!116017)))

(declare-fun b_free!44253 () Bool)

(declare-fun b_next!44957 () Bool)

(assert (=> b!1636896 (= b_free!44253 (not b_next!44957))))

(declare-fun tb!93811 () Bool)

(declare-fun t!149773 () Bool)

(assert (=> (and b!1636896 (= (toChars!4461 (transformation!3171 (h!23396 (t!149732 rules!1846)))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457))))) t!149773) tb!93811))

(declare-fun result!113198 () Bool)

(assert (= result!113198 result!113156))

(assert (=> d!492686 t!149773))

(assert (=> b!1636442 t!149773))

(declare-fun tb!93813 () Bool)

(declare-fun t!149775 () Bool)

(assert (=> (and b!1636896 (= (toChars!4461 (transformation!3171 (h!23396 (t!149732 rules!1846)))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 (t!149733 tokens!457)))))) t!149775) tb!93813))

(declare-fun result!113200 () Bool)

(assert (= result!113200 result!113166))

(assert (=> d!492872 t!149775))

(declare-fun b_and!116019 () Bool)

(declare-fun tp!474556 () Bool)

(assert (=> b!1636896 (= tp!474556 (and (=> t!149773 result!113198) (=> t!149775 result!113200) b_and!116019))))

(declare-fun e!1049723 () Bool)

(assert (=> b!1636896 (= e!1049723 (and tp!474554 tp!474556))))

(declare-fun b!1636895 () Bool)

(declare-fun e!1049722 () Bool)

(declare-fun tp!474555 () Bool)

(assert (=> b!1636895 (= e!1049722 (and tp!474555 (inv!23346 (tag!3451 (h!23396 (t!149732 rules!1846)))) (inv!23349 (transformation!3171 (h!23396 (t!149732 rules!1846)))) e!1049723))))

(declare-fun b!1636894 () Bool)

(declare-fun e!1049724 () Bool)

(declare-fun tp!474557 () Bool)

(assert (=> b!1636894 (= e!1049724 (and e!1049722 tp!474557))))

(assert (=> b!1636058 (= tp!474450 e!1049724)))

(assert (= b!1636895 b!1636896))

(assert (= b!1636894 b!1636895))

(assert (= (and b!1636058 ((_ is Cons!17995) (t!149732 rules!1846))) b!1636894))

(declare-fun m!1974661 () Bool)

(assert (=> b!1636895 m!1974661))

(declare-fun m!1974663 () Bool)

(assert (=> b!1636895 m!1974663))

(declare-fun b!1636898 () Bool)

(declare-fun e!1049726 () Bool)

(declare-fun tp!474559 () Bool)

(declare-fun tp!474560 () Bool)

(assert (=> b!1636898 (= e!1049726 (and tp!474559 tp!474560))))

(declare-fun b!1636899 () Bool)

(declare-fun tp!474562 () Bool)

(assert (=> b!1636899 (= e!1049726 tp!474562)))

(declare-fun b!1636897 () Bool)

(assert (=> b!1636897 (= e!1049726 tp_is_empty!7309)))

(assert (=> b!1636074 (= tp!474447 e!1049726)))

(declare-fun b!1636900 () Bool)

(declare-fun tp!474561 () Bool)

(declare-fun tp!474558 () Bool)

(assert (=> b!1636900 (= e!1049726 (and tp!474561 tp!474558))))

(assert (= (and b!1636074 ((_ is ElementMatch!4499) (regex!3171 (rule!5013 (h!23397 tokens!457))))) b!1636897))

(assert (= (and b!1636074 ((_ is Concat!7761) (regex!3171 (rule!5013 (h!23397 tokens!457))))) b!1636898))

(assert (= (and b!1636074 ((_ is Star!4499) (regex!3171 (rule!5013 (h!23397 tokens!457))))) b!1636899))

(assert (= (and b!1636074 ((_ is Union!4499) (regex!3171 (rule!5013 (h!23397 tokens!457))))) b!1636900))

(declare-fun b_lambda!51455 () Bool)

(assert (= b_lambda!51439 (or (and b!1636078 b_free!44233) (and b!1636060 b_free!44237 (= (toChars!4461 (transformation!3171 (h!23396 rules!1846))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457)))))) (and b!1636885 b_free!44249 (= (toChars!4461 (transformation!3171 (rule!5013 (h!23397 (t!149733 tokens!457))))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457)))))) (and b!1636896 b_free!44253 (= (toChars!4461 (transformation!3171 (h!23396 (t!149732 rules!1846)))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457)))))) b_lambda!51455)))

(declare-fun b_lambda!51457 () Bool)

(assert (= b_lambda!51447 (or (and b!1636078 b_free!44233 (= (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457)))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 (t!149733 tokens!457))))))) (and b!1636060 b_free!44237 (= (toChars!4461 (transformation!3171 (h!23396 rules!1846))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 (t!149733 tokens!457))))))) (and b!1636885 b_free!44249) (and b!1636896 b_free!44253 (= (toChars!4461 (transformation!3171 (h!23396 (t!149732 rules!1846)))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 (t!149733 tokens!457))))))) b_lambda!51457)))

(declare-fun b_lambda!51459 () Bool)

(assert (= b_lambda!51441 (or (and b!1636078 b_free!44233) (and b!1636060 b_free!44237 (= (toChars!4461 (transformation!3171 (h!23396 rules!1846))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457)))))) (and b!1636885 b_free!44249 (= (toChars!4461 (transformation!3171 (rule!5013 (h!23397 (t!149733 tokens!457))))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457)))))) (and b!1636896 b_free!44253 (= (toChars!4461 (transformation!3171 (h!23396 (t!149732 rules!1846)))) (toChars!4461 (transformation!3171 (rule!5013 (h!23397 tokens!457)))))) b_lambda!51459)))

(check-sat (not d!492878) (not b!1636869) (not b!1636688) (not b!1636256) (not b!1636285) (not d!492774) (not b!1636381) (not b!1636871) (not b!1636900) (not d!492736) (not b!1636253) (not b!1636408) (not d!492770) (not b!1636845) (not d!492896) (not b!1636898) (not b!1636254) b_and!116017 b_and!115973 (not b!1636160) (not b!1636437) (not b!1636821) (not b!1636361) (not b!1636461) (not bm!105642) (not d!492848) (not d!492742) (not b!1636832) (not b!1636377) (not b!1636158) (not b!1636458) (not bm!105660) (not b!1636846) (not d!492756) (not b!1636817) (not b!1636154) (not d!492900) (not d!492862) (not d!492782) (not b!1636156) (not b!1636462) (not d!492876) b_and!116019 (not b!1636409) (not d!492710) b_and!115977 (not b!1636895) (not b!1636265) (not b!1636379) (not b!1636452) (not d!492868) (not b!1636685) (not b!1636838) (not b!1636360) (not b!1636843) (not d!492892) (not b!1636826) (not b!1636820) (not b!1636830) (not b!1636834) b_and!116003 (not d!492884) (not b!1636829) (not b!1636857) (not d!492740) (not b!1636415) (not d!492870) (not b!1636630) b_and!116001 (not b_lambda!51459) (not bm!105638) (not b_next!44957) (not b!1636687) (not b!1636683) (not d!492684) (not bm!105649) (not b!1636206) (not b!1636502) (not b!1636411) (not d!492632) (not b!1636210) (not b!1636678) (not b!1636811) (not d!492676) (not d!492764) (not b!1636421) (not b!1636492) (not b!1636851) (not d!492734) (not b_next!44939) (not b!1636684) b_and!116013 (not b_lambda!51457) (not d!492780) (not d!492746) (not d!492866) (not b_next!44953) (not d!492778) (not d!492748) (not d!492784) (not bm!105655) (not d!492738) (not d!492668) (not b!1636504) (not b!1636382) (not b!1636500) (not b!1636257) (not b!1636682) (not b_next!44955) (not d!492894) (not b!1636831) (not d!492682) (not b!1636286) (not d!492680) (not b!1636814) (not d!492786) (not b!1636839) (not d!492658) (not tb!93787) (not b!1636661) (not b!1636159) (not b!1636301) (not d!492758) (not d!492776) (not b_next!44937) (not b!1636459) (not b_next!44935) (not b!1636840) (not b!1636833) (not b!1636631) (not d!492752) (not b!1636429) (not b!1636157) (not b!1636619) (not b_next!44951) (not b!1636815) (not b!1636370) (not d!492768) (not b!1636899) (not b!1636662) (not d!492678) (not b!1636823) (not b!1636378) (not b!1636884) (not b!1636620) (not b!1636809) (not b!1636842) (not d!492846) (not b!1636882) (not bm!105661) (not d!492872) (not b!1636852) b_and!116015 (not b!1636431) (not b!1636412) (not b!1636508) (not d!492688) (not d!492630) (not b!1636153) (not d!492698) (not b!1636383) (not d!492880) tp_is_empty!7309 (not b!1636443) (not b!1636385) (not d!492772) (not b!1636679) (not b_next!44941) (not b!1636442) (not d!492686) (not b!1636663) (not b!1636434) (not b!1636894) (not b!1636824) (not b!1636667) (not b!1636384) (not b_lambda!51455) (not b!1636288) (not tb!93795) (not b!1636835) (not bm!105652) (not d!492902) (not d!492744) (not b!1636207) (not b!1636208) (not d!492760) (not b!1636260) (not d!492690) (not b!1636836) (not d!492674) (not b!1636450) (not b!1636827) (not d!492898) (not b!1636499) (not d!492864) (not b!1636676) (not d!492840) (not b!1636453) (not d!492656) (not b!1636416) (not d!492754) (not b!1636825) (not b!1636451) (not b!1636258) (not b!1636870) (not b!1636822) (not d!492634) (not b!1636410) (not b!1636677) (not b!1636414) (not b!1636883) (not b!1636493) (not b!1636632) (not d!492766))
(check-sat b_and!116019 b_and!115977 b_and!116003 (not b_next!44953) (not b_next!44955) (not b_next!44937) (not b_next!44935) (not b_next!44951) b_and!116015 (not b_next!44941) b_and!116017 b_and!115973 b_and!116001 (not b_next!44957) (not b_next!44939) b_and!116013)
