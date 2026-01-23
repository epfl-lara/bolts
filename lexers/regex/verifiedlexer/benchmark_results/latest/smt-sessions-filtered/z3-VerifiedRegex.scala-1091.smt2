; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56136 () Bool)

(assert start!56136)

(declare-fun b!595341 () Bool)

(declare-fun b_free!16821 () Bool)

(declare-fun b_next!16837 () Bool)

(assert (=> b!595341 (= b_free!16821 (not b_next!16837))))

(declare-fun tp!185643 () Bool)

(declare-fun b_and!58723 () Bool)

(assert (=> b!595341 (= tp!185643 b_and!58723)))

(declare-fun b_free!16823 () Bool)

(declare-fun b_next!16839 () Bool)

(assert (=> b!595341 (= b_free!16823 (not b_next!16839))))

(declare-fun tp!185641 () Bool)

(declare-fun b_and!58725 () Bool)

(assert (=> b!595341 (= tp!185641 b_and!58725)))

(declare-fun b!595329 () Bool)

(declare-fun b_free!16825 () Bool)

(declare-fun b_next!16841 () Bool)

(assert (=> b!595329 (= b_free!16825 (not b_next!16841))))

(declare-fun tp!185638 () Bool)

(declare-fun b_and!58727 () Bool)

(assert (=> b!595329 (= tp!185638 b_and!58727)))

(declare-fun b_free!16827 () Bool)

(declare-fun b_next!16843 () Bool)

(assert (=> b!595329 (= b_free!16827 (not b_next!16843))))

(declare-fun tp!185646 () Bool)

(declare-fun b_and!58729 () Bool)

(assert (=> b!595329 (= tp!185646 b_and!58729)))

(declare-fun e!360285 () Bool)

(assert (=> b!595329 (= e!360285 (and tp!185638 tp!185646))))

(declare-fun b!595330 () Bool)

(declare-fun e!360276 () Bool)

(declare-fun e!360288 () Bool)

(assert (=> b!595330 (= e!360276 e!360288)))

(declare-fun res!256952 () Bool)

(assert (=> b!595330 (=> (not res!256952) (not e!360288))))

(declare-datatypes ((C!3928 0))(
  ( (C!3929 (val!2190 Int)) )
))
(declare-datatypes ((List!5926 0))(
  ( (Nil!5916) (Cons!5916 (h!11317 C!3928) (t!79363 List!5926)) )
))
(declare-fun lt!252760 () List!5926)

(declare-fun input!2705 () List!5926)

(assert (=> b!595330 (= res!256952 (= lt!252760 input!2705))))

(declare-datatypes ((Regex!1503 0))(
  ( (ElementMatch!1503 (c!110831 C!3928)) (Concat!2696 (regOne!3518 Regex!1503) (regTwo!3518 Regex!1503)) (EmptyExpr!1503) (Star!1503 (reg!1832 Regex!1503)) (EmptyLang!1503) (Union!1503 (regOne!3519 Regex!1503) (regTwo!3519 Regex!1503)) )
))
(declare-datatypes ((List!5927 0))(
  ( (Nil!5917) (Cons!5917 (h!11318 (_ BitVec 16)) (t!79364 List!5927)) )
))
(declare-datatypes ((TokenValue!1193 0))(
  ( (FloatLiteralValue!2386 (text!8796 List!5927)) (TokenValueExt!1192 (__x!4284 Int)) (Broken!5965 (value!38157 List!5927)) (Object!1202) (End!1193) (Def!1193) (Underscore!1193) (Match!1193) (Else!1193) (Error!1193) (Case!1193) (If!1193) (Extends!1193) (Abstract!1193) (Class!1193) (Val!1193) (DelimiterValue!2386 (del!1253 List!5927)) (KeywordValue!1199 (value!38158 List!5927)) (CommentValue!2386 (value!38159 List!5927)) (WhitespaceValue!2386 (value!38160 List!5927)) (IndentationValue!1193 (value!38161 List!5927)) (String!7708) (Int32!1193) (Broken!5966 (value!38162 List!5927)) (Boolean!1194) (Unit!10756) (OperatorValue!1196 (op!1253 List!5927)) (IdentifierValue!2386 (value!38163 List!5927)) (IdentifierValue!2387 (value!38164 List!5927)) (WhitespaceValue!2387 (value!38165 List!5927)) (True!2386) (False!2386) (Broken!5967 (value!38166 List!5927)) (Broken!5968 (value!38167 List!5927)) (True!2387) (RightBrace!1193) (RightBracket!1193) (Colon!1193) (Null!1193) (Comma!1193) (LeftBracket!1193) (False!2387) (LeftBrace!1193) (ImaginaryLiteralValue!1193 (text!8797 List!5927)) (StringLiteralValue!3579 (value!38168 List!5927)) (EOFValue!1193 (value!38169 List!5927)) (IdentValue!1193 (value!38170 List!5927)) (DelimiterValue!2387 (value!38171 List!5927)) (DedentValue!1193 (value!38172 List!5927)) (NewLineValue!1193 (value!38173 List!5927)) (IntegerValue!3579 (value!38174 (_ BitVec 32)) (text!8798 List!5927)) (IntegerValue!3580 (value!38175 Int) (text!8799 List!5927)) (Times!1193) (Or!1193) (Equal!1193) (Minus!1193) (Broken!5969 (value!38176 List!5927)) (And!1193) (Div!1193) (LessEqual!1193) (Mod!1193) (Concat!2697) (Not!1193) (Plus!1193) (SpaceValue!1193 (value!38177 List!5927)) (IntegerValue!3581 (value!38178 Int) (text!8800 List!5927)) (StringLiteralValue!3580 (text!8801 List!5927)) (FloatLiteralValue!2387 (text!8802 List!5927)) (BytesLiteralValue!1193 (value!38179 List!5927)) (CommentValue!2387 (value!38180 List!5927)) (StringLiteralValue!3581 (value!38181 List!5927)) (ErrorTokenValue!1193 (msg!1254 List!5927)) )
))
(declare-datatypes ((String!7709 0))(
  ( (String!7710 (value!38182 String)) )
))
(declare-datatypes ((IArray!3773 0))(
  ( (IArray!3774 (innerList!1944 List!5926)) )
))
(declare-datatypes ((Conc!1886 0))(
  ( (Node!1886 (left!4783 Conc!1886) (right!5113 Conc!1886) (csize!4002 Int) (cheight!2097 Int)) (Leaf!2978 (xs!4523 IArray!3773) (csize!4003 Int)) (Empty!1886) )
))
(declare-datatypes ((BalanceConc!3780 0))(
  ( (BalanceConc!3781 (c!110832 Conc!1886)) )
))
(declare-datatypes ((TokenValueInjection!2154 0))(
  ( (TokenValueInjection!2155 (toValue!2060 Int) (toChars!1919 Int)) )
))
(declare-datatypes ((Rule!2138 0))(
  ( (Rule!2139 (regex!1169 Regex!1503) (tag!1431 String!7709) (isSeparator!1169 Bool) (transformation!1169 TokenValueInjection!2154)) )
))
(declare-datatypes ((Token!2074 0))(
  ( (Token!2075 (value!38183 TokenValue!1193) (rule!1939 Rule!2138) (size!4672 Int) (originalCharacters!1208 List!5926)) )
))
(declare-fun token!491 () Token!2074)

(declare-fun list!2478 (BalanceConc!3780) List!5926)

(declare-fun charsOf!798 (Token!2074) BalanceConc!3780)

(assert (=> b!595330 (= lt!252760 (list!2478 (charsOf!798 token!491)))))

(declare-fun e!360294 () Bool)

(declare-fun tp!185642 () Bool)

(declare-fun b!595331 () Bool)

(declare-fun e!360282 () Bool)

(declare-fun inv!21 (TokenValue!1193) Bool)

(assert (=> b!595331 (= e!360294 (and (inv!21 (value!38183 token!491)) e!360282 tp!185642))))

(declare-fun b!595332 () Bool)

(declare-fun res!256950 () Bool)

(assert (=> b!595332 (=> (not res!256950) (not e!360276))))

(declare-datatypes ((List!5928 0))(
  ( (Nil!5918) (Cons!5918 (h!11319 Rule!2138) (t!79365 List!5928)) )
))
(declare-fun rules!3103 () List!5928)

(declare-fun isEmpty!4271 (List!5928) Bool)

(assert (=> b!595332 (= res!256950 (not (isEmpty!4271 rules!3103)))))

(declare-fun b!595333 () Bool)

(declare-datatypes ((Unit!10757 0))(
  ( (Unit!10758) )
))
(declare-fun e!360278 () Unit!10757)

(declare-fun Unit!10759 () Unit!10757)

(assert (=> b!595333 (= e!360278 Unit!10759)))

(declare-fun b!595334 () Bool)

(declare-fun e!360292 () Bool)

(declare-fun e!360295 () Bool)

(assert (=> b!595334 (= e!360292 (not e!360295))))

(declare-fun res!256944 () Bool)

(assert (=> b!595334 (=> res!256944 e!360295)))

(declare-fun lt!252776 () List!5926)

(declare-fun isPrefix!797 (List!5926 List!5926) Bool)

(assert (=> b!595334 (= res!256944 (not (isPrefix!797 input!2705 lt!252776)))))

(assert (=> b!595334 (isPrefix!797 lt!252760 lt!252776)))

(declare-fun lt!252758 () Unit!10757)

(declare-fun suffix!1342 () List!5926)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!642 (List!5926 List!5926) Unit!10757)

(assert (=> b!595334 (= lt!252758 (lemmaConcatTwoListThenFirstIsPrefix!642 lt!252760 suffix!1342))))

(declare-fun lt!252768 () List!5926)

(assert (=> b!595334 (isPrefix!797 input!2705 lt!252768)))

(declare-fun lt!252763 () Unit!10757)

(assert (=> b!595334 (= lt!252763 (lemmaConcatTwoListThenFirstIsPrefix!642 input!2705 suffix!1342))))

(declare-fun e!360283 () Bool)

(assert (=> b!595334 e!360283))

(declare-fun res!256953 () Bool)

(assert (=> b!595334 (=> (not res!256953) (not e!360283))))

(declare-datatypes ((tuple2!6832 0))(
  ( (tuple2!6833 (_1!3680 Token!2074) (_2!3680 List!5926)) )
))
(declare-datatypes ((Option!1520 0))(
  ( (None!1519) (Some!1519 (v!16406 tuple2!6832)) )
))
(declare-fun lt!252767 () Option!1520)

(declare-fun lt!252759 () TokenValue!1193)

(assert (=> b!595334 (= res!256953 (= (value!38183 (_1!3680 (v!16406 lt!252767))) lt!252759))))

(declare-fun lt!252756 () List!5926)

(declare-fun apply!1422 (TokenValueInjection!2154 BalanceConc!3780) TokenValue!1193)

(declare-fun seqFromList!1345 (List!5926) BalanceConc!3780)

(assert (=> b!595334 (= lt!252759 (apply!1422 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767)))) (seqFromList!1345 lt!252756)))))

(declare-fun lt!252764 () Unit!10757)

(declare-fun lemmaInv!277 (TokenValueInjection!2154) Unit!10757)

(assert (=> b!595334 (= lt!252764 (lemmaInv!277 (transformation!1169 (rule!1939 token!491))))))

(declare-fun lt!252766 () Unit!10757)

(assert (=> b!595334 (= lt!252766 (lemmaInv!277 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767))))))))

(declare-datatypes ((LexerInterface!1055 0))(
  ( (LexerInterfaceExt!1052 (__x!4285 Int)) (Lexer!1053) )
))
(declare-fun thiss!22590 () LexerInterface!1055)

(declare-fun ruleValid!367 (LexerInterface!1055 Rule!2138) Bool)

(assert (=> b!595334 (ruleValid!367 thiss!22590 (rule!1939 token!491))))

(declare-fun lt!252770 () Unit!10757)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!214 (LexerInterface!1055 Rule!2138 List!5928) Unit!10757)

(assert (=> b!595334 (= lt!252770 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!214 thiss!22590 (rule!1939 token!491) rules!3103))))

(assert (=> b!595334 (ruleValid!367 thiss!22590 (rule!1939 (_1!3680 (v!16406 lt!252767))))))

(declare-fun lt!252772 () Unit!10757)

(assert (=> b!595334 (= lt!252772 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!214 thiss!22590 (rule!1939 (_1!3680 (v!16406 lt!252767))) rules!3103))))

(assert (=> b!595334 (isPrefix!797 input!2705 input!2705)))

(declare-fun lt!252775 () Unit!10757)

(declare-fun lemmaIsPrefixRefl!533 (List!5926 List!5926) Unit!10757)

(assert (=> b!595334 (= lt!252775 (lemmaIsPrefixRefl!533 input!2705 input!2705))))

(declare-fun lt!252777 () List!5926)

(assert (=> b!595334 (= (_2!3680 (v!16406 lt!252767)) lt!252777)))

(declare-fun lt!252769 () Unit!10757)

(declare-fun lemmaSamePrefixThenSameSuffix!510 (List!5926 List!5926 List!5926 List!5926 List!5926) Unit!10757)

(assert (=> b!595334 (= lt!252769 (lemmaSamePrefixThenSameSuffix!510 lt!252756 (_2!3680 (v!16406 lt!252767)) lt!252756 lt!252777 input!2705))))

(declare-fun getSuffix!314 (List!5926 List!5926) List!5926)

(assert (=> b!595334 (= lt!252777 (getSuffix!314 input!2705 lt!252756))))

(declare-fun ++!1657 (List!5926 List!5926) List!5926)

(assert (=> b!595334 (isPrefix!797 lt!252756 (++!1657 lt!252756 (_2!3680 (v!16406 lt!252767))))))

(declare-fun lt!252774 () Unit!10757)

(assert (=> b!595334 (= lt!252774 (lemmaConcatTwoListThenFirstIsPrefix!642 lt!252756 (_2!3680 (v!16406 lt!252767))))))

(declare-fun lt!252773 () Unit!10757)

(declare-fun lemmaCharactersSize!228 (Token!2074) Unit!10757)

(assert (=> b!595334 (= lt!252773 (lemmaCharactersSize!228 token!491))))

(declare-fun lt!252762 () Unit!10757)

(assert (=> b!595334 (= lt!252762 (lemmaCharactersSize!228 (_1!3680 (v!16406 lt!252767))))))

(declare-fun lt!252755 () Unit!10757)

(assert (=> b!595334 (= lt!252755 e!360278)))

(declare-fun c!110830 () Bool)

(declare-fun lt!252771 () Int)

(declare-fun size!4673 (List!5926) Int)

(assert (=> b!595334 (= c!110830 (> lt!252771 (size!4673 lt!252760)))))

(assert (=> b!595334 (= lt!252771 (size!4673 lt!252756))))

(assert (=> b!595334 (= lt!252756 (list!2478 (charsOf!798 (_1!3680 (v!16406 lt!252767)))))))

(assert (=> b!595334 (= lt!252767 (Some!1519 (v!16406 lt!252767)))))

(declare-fun lt!252778 () Unit!10757)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!242 (List!5926 List!5926 List!5926 List!5926) Unit!10757)

(assert (=> b!595334 (= lt!252778 (lemmaConcatSameAndSameSizesThenSameLists!242 lt!252760 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!595335 () Bool)

(declare-fun tp!185637 () Bool)

(declare-fun inv!7495 (String!7709) Bool)

(declare-fun inv!7498 (TokenValueInjection!2154) Bool)

(assert (=> b!595335 (= e!360282 (and tp!185637 (inv!7495 (tag!1431 (rule!1939 token!491))) (inv!7498 (transformation!1169 (rule!1939 token!491))) e!360285))))

(declare-fun b!595336 () Bool)

(declare-fun e!360275 () Bool)

(declare-fun e!360293 () Bool)

(declare-fun tp!185645 () Bool)

(assert (=> b!595336 (= e!360275 (and e!360293 tp!185645))))

(declare-fun b!595337 () Bool)

(declare-fun e!360284 () Bool)

(declare-fun tp_is_empty!3361 () Bool)

(declare-fun tp!185640 () Bool)

(assert (=> b!595337 (= e!360284 (and tp_is_empty!3361 tp!185640))))

(declare-fun b!595338 () Bool)

(declare-fun res!256954 () Bool)

(assert (=> b!595338 (=> (not res!256954) (not e!360276))))

(declare-fun rulesInvariant!1018 (LexerInterface!1055 List!5928) Bool)

(assert (=> b!595338 (= res!256954 (rulesInvariant!1018 thiss!22590 rules!3103))))

(declare-fun b!595339 () Bool)

(declare-fun e!360286 () Bool)

(declare-fun e!360277 () Bool)

(assert (=> b!595339 (= e!360286 e!360277)))

(declare-fun res!256951 () Bool)

(assert (=> b!595339 (=> (not res!256951) (not e!360277))))

(declare-fun lt!252754 () tuple2!6832)

(assert (=> b!595339 (= res!256951 (and (= (_1!3680 lt!252754) token!491) (= (_2!3680 lt!252754) suffix!1342)))))

(declare-fun lt!252761 () Option!1520)

(declare-fun get!2268 (Option!1520) tuple2!6832)

(assert (=> b!595339 (= lt!252754 (get!2268 lt!252761))))

(declare-fun b!595340 () Bool)

(assert (=> b!595340 (= e!360295 (= (size!4672 token!491) (size!4673 (originalCharacters!1208 token!491))))))

(declare-fun e!360290 () Bool)

(assert (=> b!595340 e!360290))

(declare-fun res!256946 () Bool)

(assert (=> b!595340 (=> (not res!256946) (not e!360290))))

(declare-fun lt!252765 () List!5926)

(assert (=> b!595340 (= res!256946 (= suffix!1342 lt!252765))))

(declare-fun lt!252757 () Unit!10757)

(assert (=> b!595340 (= lt!252757 (lemmaSamePrefixThenSameSuffix!510 lt!252760 suffix!1342 lt!252760 lt!252765 lt!252768))))

(assert (=> b!595340 (= lt!252765 (getSuffix!314 lt!252768 lt!252760))))

(declare-fun e!360281 () Bool)

(assert (=> b!595341 (= e!360281 (and tp!185643 tp!185641))))

(declare-fun b!595342 () Bool)

(declare-fun res!256949 () Bool)

(assert (=> b!595342 (=> (not res!256949) (not e!360283))))

(assert (=> b!595342 (= res!256949 (= (size!4672 (_1!3680 (v!16406 lt!252767))) (size!4673 (originalCharacters!1208 (_1!3680 (v!16406 lt!252767))))))))

(declare-fun b!595343 () Bool)

(assert (=> b!595343 (= e!360288 e!360286)))

(declare-fun res!256945 () Bool)

(assert (=> b!595343 (=> (not res!256945) (not e!360286))))

(declare-fun isDefined!1331 (Option!1520) Bool)

(assert (=> b!595343 (= res!256945 (isDefined!1331 lt!252761))))

(declare-fun maxPrefix!753 (LexerInterface!1055 List!5928 List!5926) Option!1520)

(assert (=> b!595343 (= lt!252761 (maxPrefix!753 thiss!22590 rules!3103 lt!252768))))

(assert (=> b!595343 (= lt!252768 (++!1657 input!2705 suffix!1342))))

(declare-fun b!595344 () Bool)

(declare-fun e!360280 () Bool)

(declare-fun tp!185644 () Bool)

(assert (=> b!595344 (= e!360280 (and tp_is_empty!3361 tp!185644))))

(declare-fun b!595345 () Bool)

(assert (=> b!595345 (= e!360290 (= (value!38183 token!491) (apply!1422 (transformation!1169 (rule!1939 token!491)) (seqFromList!1345 lt!252760))))))

(declare-fun b!595346 () Bool)

(declare-fun e!360287 () Bool)

(assert (=> b!595346 (= e!360277 e!360287)))

(declare-fun res!256947 () Bool)

(assert (=> b!595346 (=> (not res!256947) (not e!360287))))

(get-info :version)

(assert (=> b!595346 (= res!256947 ((_ is Some!1519) lt!252767))))

(assert (=> b!595346 (= lt!252767 (maxPrefix!753 thiss!22590 rules!3103 input!2705))))

(declare-fun b!595347 () Bool)

(declare-fun res!256942 () Bool)

(assert (=> b!595347 (=> (not res!256942) (not e!360276))))

(declare-fun isEmpty!4272 (List!5926) Bool)

(assert (=> b!595347 (= res!256942 (not (isEmpty!4272 input!2705)))))

(declare-fun b!595348 () Bool)

(assert (=> b!595348 (= e!360283 (and (= (size!4672 (_1!3680 (v!16406 lt!252767))) lt!252771) (= (originalCharacters!1208 (_1!3680 (v!16406 lt!252767))) lt!252756) (= (v!16406 lt!252767) (tuple2!6833 (Token!2075 lt!252759 (rule!1939 (_1!3680 (v!16406 lt!252767))) lt!252771 lt!252756) lt!252777))))))

(declare-fun b!595349 () Bool)

(declare-fun Unit!10760 () Unit!10757)

(assert (=> b!595349 (= e!360278 Unit!10760)))

(assert (=> b!595349 false))

(declare-fun b!595350 () Bool)

(assert (=> b!595350 (= e!360287 e!360292)))

(declare-fun res!256948 () Bool)

(assert (=> b!595350 (=> (not res!256948) (not e!360292))))

(assert (=> b!595350 (= res!256948 (= lt!252776 lt!252768))))

(assert (=> b!595350 (= lt!252776 (++!1657 lt!252760 suffix!1342))))

(declare-fun tp!185639 () Bool)

(declare-fun b!595351 () Bool)

(assert (=> b!595351 (= e!360293 (and tp!185639 (inv!7495 (tag!1431 (h!11319 rules!3103))) (inv!7498 (transformation!1169 (h!11319 rules!3103))) e!360281))))

(declare-fun res!256943 () Bool)

(assert (=> start!56136 (=> (not res!256943) (not e!360276))))

(assert (=> start!56136 (= res!256943 ((_ is Lexer!1053) thiss!22590))))

(assert (=> start!56136 e!360276))

(assert (=> start!56136 e!360284))

(assert (=> start!56136 e!360275))

(declare-fun inv!7499 (Token!2074) Bool)

(assert (=> start!56136 (and (inv!7499 token!491) e!360294)))

(assert (=> start!56136 true))

(assert (=> start!56136 e!360280))

(assert (= (and start!56136 res!256943) b!595332))

(assert (= (and b!595332 res!256950) b!595338))

(assert (= (and b!595338 res!256954) b!595347))

(assert (= (and b!595347 res!256942) b!595330))

(assert (= (and b!595330 res!256952) b!595343))

(assert (= (and b!595343 res!256945) b!595339))

(assert (= (and b!595339 res!256951) b!595346))

(assert (= (and b!595346 res!256947) b!595350))

(assert (= (and b!595350 res!256948) b!595334))

(assert (= (and b!595334 c!110830) b!595349))

(assert (= (and b!595334 (not c!110830)) b!595333))

(assert (= (and b!595334 res!256953) b!595342))

(assert (= (and b!595342 res!256949) b!595348))

(assert (= (and b!595334 (not res!256944)) b!595340))

(assert (= (and b!595340 res!256946) b!595345))

(assert (= (and start!56136 ((_ is Cons!5916) suffix!1342)) b!595337))

(assert (= b!595351 b!595341))

(assert (= b!595336 b!595351))

(assert (= (and start!56136 ((_ is Cons!5918) rules!3103)) b!595336))

(assert (= b!595335 b!595329))

(assert (= b!595331 b!595335))

(assert (= start!56136 b!595331))

(assert (= (and start!56136 ((_ is Cons!5916) input!2705)) b!595344))

(declare-fun m!857797 () Bool)

(assert (=> b!595335 m!857797))

(declare-fun m!857799 () Bool)

(assert (=> b!595335 m!857799))

(declare-fun m!857801 () Bool)

(assert (=> b!595342 m!857801))

(declare-fun m!857803 () Bool)

(assert (=> b!595339 m!857803))

(declare-fun m!857805 () Bool)

(assert (=> b!595338 m!857805))

(declare-fun m!857807 () Bool)

(assert (=> b!595331 m!857807))

(declare-fun m!857809 () Bool)

(assert (=> b!595347 m!857809))

(declare-fun m!857811 () Bool)

(assert (=> b!595351 m!857811))

(declare-fun m!857813 () Bool)

(assert (=> b!595351 m!857813))

(declare-fun m!857815 () Bool)

(assert (=> b!595345 m!857815))

(assert (=> b!595345 m!857815))

(declare-fun m!857817 () Bool)

(assert (=> b!595345 m!857817))

(declare-fun m!857819 () Bool)

(assert (=> b!595343 m!857819))

(declare-fun m!857821 () Bool)

(assert (=> b!595343 m!857821))

(declare-fun m!857823 () Bool)

(assert (=> b!595343 m!857823))

(declare-fun m!857825 () Bool)

(assert (=> b!595334 m!857825))

(declare-fun m!857827 () Bool)

(assert (=> b!595334 m!857827))

(declare-fun m!857829 () Bool)

(assert (=> b!595334 m!857829))

(declare-fun m!857831 () Bool)

(assert (=> b!595334 m!857831))

(declare-fun m!857833 () Bool)

(assert (=> b!595334 m!857833))

(declare-fun m!857835 () Bool)

(assert (=> b!595334 m!857835))

(declare-fun m!857837 () Bool)

(assert (=> b!595334 m!857837))

(assert (=> b!595334 m!857825))

(declare-fun m!857839 () Bool)

(assert (=> b!595334 m!857839))

(declare-fun m!857841 () Bool)

(assert (=> b!595334 m!857841))

(declare-fun m!857843 () Bool)

(assert (=> b!595334 m!857843))

(declare-fun m!857845 () Bool)

(assert (=> b!595334 m!857845))

(declare-fun m!857847 () Bool)

(assert (=> b!595334 m!857847))

(declare-fun m!857849 () Bool)

(assert (=> b!595334 m!857849))

(declare-fun m!857851 () Bool)

(assert (=> b!595334 m!857851))

(declare-fun m!857853 () Bool)

(assert (=> b!595334 m!857853))

(declare-fun m!857855 () Bool)

(assert (=> b!595334 m!857855))

(declare-fun m!857857 () Bool)

(assert (=> b!595334 m!857857))

(declare-fun m!857859 () Bool)

(assert (=> b!595334 m!857859))

(declare-fun m!857861 () Bool)

(assert (=> b!595334 m!857861))

(declare-fun m!857863 () Bool)

(assert (=> b!595334 m!857863))

(declare-fun m!857865 () Bool)

(assert (=> b!595334 m!857865))

(assert (=> b!595334 m!857861))

(declare-fun m!857867 () Bool)

(assert (=> b!595334 m!857867))

(declare-fun m!857869 () Bool)

(assert (=> b!595334 m!857869))

(declare-fun m!857871 () Bool)

(assert (=> b!595334 m!857871))

(declare-fun m!857873 () Bool)

(assert (=> b!595334 m!857873))

(assert (=> b!595334 m!857831))

(declare-fun m!857875 () Bool)

(assert (=> b!595334 m!857875))

(declare-fun m!857877 () Bool)

(assert (=> b!595334 m!857877))

(declare-fun m!857879 () Bool)

(assert (=> b!595330 m!857879))

(assert (=> b!595330 m!857879))

(declare-fun m!857881 () Bool)

(assert (=> b!595330 m!857881))

(declare-fun m!857883 () Bool)

(assert (=> b!595346 m!857883))

(declare-fun m!857885 () Bool)

(assert (=> b!595340 m!857885))

(declare-fun m!857887 () Bool)

(assert (=> b!595340 m!857887))

(declare-fun m!857889 () Bool)

(assert (=> b!595340 m!857889))

(declare-fun m!857891 () Bool)

(assert (=> start!56136 m!857891))

(declare-fun m!857893 () Bool)

(assert (=> b!595350 m!857893))

(declare-fun m!857895 () Bool)

(assert (=> b!595332 m!857895))

(check-sat (not b!595336) (not b_next!16843) (not b_next!16841) (not b!595347) (not start!56136) b_and!58725 (not b!595345) (not b_next!16839) tp_is_empty!3361 (not b!595335) (not b!595332) (not b!595331) (not b!595337) (not b!595342) (not b!595344) b_and!58723 (not b!595330) (not b!595334) (not b!595351) (not b!595340) (not b!595339) (not b_next!16837) b_and!58727 (not b!595350) (not b!595338) b_and!58729 (not b!595343) (not b!595346))
(check-sat (not b_next!16843) (not b_next!16841) b_and!58723 (not b_next!16837) b_and!58727 b_and!58725 b_and!58729 (not b_next!16839))
(get-model)

(declare-fun d!209358 () Bool)

(assert (=> d!209358 (= (get!2268 lt!252761) (v!16406 lt!252761))))

(assert (=> b!595339 d!209358))

(declare-fun lt!252807 () List!5926)

(declare-fun e!360342 () Bool)

(declare-fun b!595424 () Bool)

(assert (=> b!595424 (= e!360342 (or (not (= suffix!1342 Nil!5916)) (= lt!252807 lt!252760)))))

(declare-fun b!595422 () Bool)

(declare-fun e!360341 () List!5926)

(assert (=> b!595422 (= e!360341 (Cons!5916 (h!11317 lt!252760) (++!1657 (t!79363 lt!252760) suffix!1342)))))

(declare-fun b!595423 () Bool)

(declare-fun res!257010 () Bool)

(assert (=> b!595423 (=> (not res!257010) (not e!360342))))

(assert (=> b!595423 (= res!257010 (= (size!4673 lt!252807) (+ (size!4673 lt!252760) (size!4673 suffix!1342))))))

(declare-fun d!209362 () Bool)

(assert (=> d!209362 e!360342))

(declare-fun res!257009 () Bool)

(assert (=> d!209362 (=> (not res!257009) (not e!360342))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1065 (List!5926) (InoxSet C!3928))

(assert (=> d!209362 (= res!257009 (= (content!1065 lt!252807) ((_ map or) (content!1065 lt!252760) (content!1065 suffix!1342))))))

(assert (=> d!209362 (= lt!252807 e!360341)))

(declare-fun c!110842 () Bool)

(assert (=> d!209362 (= c!110842 ((_ is Nil!5916) lt!252760))))

(assert (=> d!209362 (= (++!1657 lt!252760 suffix!1342) lt!252807)))

(declare-fun b!595421 () Bool)

(assert (=> b!595421 (= e!360341 suffix!1342)))

(assert (= (and d!209362 c!110842) b!595421))

(assert (= (and d!209362 (not c!110842)) b!595422))

(assert (= (and d!209362 res!257009) b!595423))

(assert (= (and b!595423 res!257010) b!595424))

(declare-fun m!857997 () Bool)

(assert (=> b!595422 m!857997))

(declare-fun m!857999 () Bool)

(assert (=> b!595423 m!857999))

(assert (=> b!595423 m!857849))

(declare-fun m!858001 () Bool)

(assert (=> b!595423 m!858001))

(declare-fun m!858003 () Bool)

(assert (=> d!209362 m!858003))

(declare-fun m!858005 () Bool)

(assert (=> d!209362 m!858005))

(declare-fun m!858007 () Bool)

(assert (=> d!209362 m!858007))

(assert (=> b!595350 d!209362))

(declare-fun d!209380 () Bool)

(declare-fun lt!252815 () Int)

(assert (=> d!209380 (>= lt!252815 0)))

(declare-fun e!360348 () Int)

(assert (=> d!209380 (= lt!252815 e!360348)))

(declare-fun c!110845 () Bool)

(assert (=> d!209380 (= c!110845 ((_ is Nil!5916) (originalCharacters!1208 token!491)))))

(assert (=> d!209380 (= (size!4673 (originalCharacters!1208 token!491)) lt!252815)))

(declare-fun b!595435 () Bool)

(assert (=> b!595435 (= e!360348 0)))

(declare-fun b!595436 () Bool)

(assert (=> b!595436 (= e!360348 (+ 1 (size!4673 (t!79363 (originalCharacters!1208 token!491)))))))

(assert (= (and d!209380 c!110845) b!595435))

(assert (= (and d!209380 (not c!110845)) b!595436))

(declare-fun m!858023 () Bool)

(assert (=> b!595436 m!858023))

(assert (=> b!595340 d!209380))

(declare-fun d!209392 () Bool)

(assert (=> d!209392 (= suffix!1342 lt!252765)))

(declare-fun lt!252824 () Unit!10757)

(declare-fun choose!4322 (List!5926 List!5926 List!5926 List!5926 List!5926) Unit!10757)

(assert (=> d!209392 (= lt!252824 (choose!4322 lt!252760 suffix!1342 lt!252760 lt!252765 lt!252768))))

(assert (=> d!209392 (isPrefix!797 lt!252760 lt!252768)))

(assert (=> d!209392 (= (lemmaSamePrefixThenSameSuffix!510 lt!252760 suffix!1342 lt!252760 lt!252765 lt!252768) lt!252824)))

(declare-fun bs!70591 () Bool)

(assert (= bs!70591 d!209392))

(declare-fun m!858033 () Bool)

(assert (=> bs!70591 m!858033))

(declare-fun m!858039 () Bool)

(assert (=> bs!70591 m!858039))

(assert (=> b!595340 d!209392))

(declare-fun d!209402 () Bool)

(declare-fun lt!252833 () List!5926)

(assert (=> d!209402 (= (++!1657 lt!252760 lt!252833) lt!252768)))

(declare-fun e!360366 () List!5926)

(assert (=> d!209402 (= lt!252833 e!360366)))

(declare-fun c!110854 () Bool)

(assert (=> d!209402 (= c!110854 ((_ is Cons!5916) lt!252760))))

(assert (=> d!209402 (>= (size!4673 lt!252768) (size!4673 lt!252760))))

(assert (=> d!209402 (= (getSuffix!314 lt!252768 lt!252760) lt!252833)))

(declare-fun b!595462 () Bool)

(declare-fun tail!791 (List!5926) List!5926)

(assert (=> b!595462 (= e!360366 (getSuffix!314 (tail!791 lt!252768) (t!79363 lt!252760)))))

(declare-fun b!595463 () Bool)

(assert (=> b!595463 (= e!360366 lt!252768)))

(assert (= (and d!209402 c!110854) b!595462))

(assert (= (and d!209402 (not c!110854)) b!595463))

(declare-fun m!858071 () Bool)

(assert (=> d!209402 m!858071))

(declare-fun m!858073 () Bool)

(assert (=> d!209402 m!858073))

(assert (=> d!209402 m!857849))

(declare-fun m!858075 () Bool)

(assert (=> b!595462 m!858075))

(assert (=> b!595462 m!858075))

(declare-fun m!858077 () Bool)

(assert (=> b!595462 m!858077))

(assert (=> b!595340 d!209402))

(declare-fun d!209426 () Bool)

(assert (=> d!209426 (= (inv!7495 (tag!1431 (h!11319 rules!3103))) (= (mod (str.len (value!38182 (tag!1431 (h!11319 rules!3103)))) 2) 0))))

(assert (=> b!595351 d!209426))

(declare-fun d!209428 () Bool)

(declare-fun res!257028 () Bool)

(declare-fun e!360378 () Bool)

(assert (=> d!209428 (=> (not res!257028) (not e!360378))))

(declare-fun semiInverseModEq!463 (Int Int) Bool)

(assert (=> d!209428 (= res!257028 (semiInverseModEq!463 (toChars!1919 (transformation!1169 (h!11319 rules!3103))) (toValue!2060 (transformation!1169 (h!11319 rules!3103)))))))

(assert (=> d!209428 (= (inv!7498 (transformation!1169 (h!11319 rules!3103))) e!360378)))

(declare-fun b!595481 () Bool)

(declare-fun equivClasses!446 (Int Int) Bool)

(assert (=> b!595481 (= e!360378 (equivClasses!446 (toChars!1919 (transformation!1169 (h!11319 rules!3103))) (toValue!2060 (transformation!1169 (h!11319 rules!3103)))))))

(assert (= (and d!209428 res!257028) b!595481))

(declare-fun m!858087 () Bool)

(assert (=> d!209428 m!858087))

(declare-fun m!858089 () Bool)

(assert (=> b!595481 m!858089))

(assert (=> b!595351 d!209428))

(declare-fun d!209434 () Bool)

(declare-fun list!2480 (Conc!1886) List!5926)

(assert (=> d!209434 (= (list!2478 (charsOf!798 token!491)) (list!2480 (c!110832 (charsOf!798 token!491))))))

(declare-fun bs!70596 () Bool)

(assert (= bs!70596 d!209434))

(declare-fun m!858091 () Bool)

(assert (=> bs!70596 m!858091))

(assert (=> b!595330 d!209434))

(declare-fun d!209436 () Bool)

(declare-fun lt!252836 () BalanceConc!3780)

(assert (=> d!209436 (= (list!2478 lt!252836) (originalCharacters!1208 token!491))))

(declare-fun dynLambda!3435 (Int TokenValue!1193) BalanceConc!3780)

(assert (=> d!209436 (= lt!252836 (dynLambda!3435 (toChars!1919 (transformation!1169 (rule!1939 token!491))) (value!38183 token!491)))))

(assert (=> d!209436 (= (charsOf!798 token!491) lt!252836)))

(declare-fun b_lambda!23455 () Bool)

(assert (=> (not b_lambda!23455) (not d!209436)))

(declare-fun tb!51987 () Bool)

(declare-fun t!79379 () Bool)

(assert (=> (and b!595341 (= (toChars!1919 (transformation!1169 (h!11319 rules!3103))) (toChars!1919 (transformation!1169 (rule!1939 token!491)))) t!79379) tb!51987))

(declare-fun b!595486 () Bool)

(declare-fun e!360381 () Bool)

(declare-fun tp!185653 () Bool)

(declare-fun inv!7502 (Conc!1886) Bool)

(assert (=> b!595486 (= e!360381 (and (inv!7502 (c!110832 (dynLambda!3435 (toChars!1919 (transformation!1169 (rule!1939 token!491))) (value!38183 token!491)))) tp!185653))))

(declare-fun result!58394 () Bool)

(declare-fun inv!7503 (BalanceConc!3780) Bool)

(assert (=> tb!51987 (= result!58394 (and (inv!7503 (dynLambda!3435 (toChars!1919 (transformation!1169 (rule!1939 token!491))) (value!38183 token!491))) e!360381))))

(assert (= tb!51987 b!595486))

(declare-fun m!858093 () Bool)

(assert (=> b!595486 m!858093))

(declare-fun m!858095 () Bool)

(assert (=> tb!51987 m!858095))

(assert (=> d!209436 t!79379))

(declare-fun b_and!58743 () Bool)

(assert (= b_and!58725 (and (=> t!79379 result!58394) b_and!58743)))

(declare-fun t!79381 () Bool)

(declare-fun tb!51989 () Bool)

(assert (=> (and b!595329 (= (toChars!1919 (transformation!1169 (rule!1939 token!491))) (toChars!1919 (transformation!1169 (rule!1939 token!491)))) t!79381) tb!51989))

(declare-fun result!58398 () Bool)

(assert (= result!58398 result!58394))

(assert (=> d!209436 t!79381))

(declare-fun b_and!58745 () Bool)

(assert (= b_and!58729 (and (=> t!79381 result!58398) b_and!58745)))

(declare-fun m!858097 () Bool)

(assert (=> d!209436 m!858097))

(declare-fun m!858099 () Bool)

(assert (=> d!209436 m!858099))

(assert (=> b!595330 d!209436))

(declare-fun d!209438 () Bool)

(assert (=> d!209438 (= (isEmpty!4272 input!2705) ((_ is Nil!5916) input!2705))))

(assert (=> b!595347 d!209438))

(declare-fun d!209440 () Bool)

(declare-fun res!257031 () Bool)

(declare-fun e!360384 () Bool)

(assert (=> d!209440 (=> (not res!257031) (not e!360384))))

(declare-fun rulesValid!427 (LexerInterface!1055 List!5928) Bool)

(assert (=> d!209440 (= res!257031 (rulesValid!427 thiss!22590 rules!3103))))

(assert (=> d!209440 (= (rulesInvariant!1018 thiss!22590 rules!3103) e!360384)))

(declare-fun b!595489 () Bool)

(declare-datatypes ((List!5930 0))(
  ( (Nil!5920) (Cons!5920 (h!11321 String!7709) (t!79415 List!5930)) )
))
(declare-fun noDuplicateTag!427 (LexerInterface!1055 List!5928 List!5930) Bool)

(assert (=> b!595489 (= e!360384 (noDuplicateTag!427 thiss!22590 rules!3103 Nil!5920))))

(assert (= (and d!209440 res!257031) b!595489))

(declare-fun m!858101 () Bool)

(assert (=> d!209440 m!858101))

(declare-fun m!858103 () Bool)

(assert (=> b!595489 m!858103))

(assert (=> b!595338 d!209440))

(declare-fun d!209442 () Bool)

(declare-fun lt!252837 () Int)

(assert (=> d!209442 (>= lt!252837 0)))

(declare-fun e!360385 () Int)

(assert (=> d!209442 (= lt!252837 e!360385)))

(declare-fun c!110861 () Bool)

(assert (=> d!209442 (= c!110861 ((_ is Nil!5916) lt!252756))))

(assert (=> d!209442 (= (size!4673 lt!252756) lt!252837)))

(declare-fun b!595490 () Bool)

(assert (=> b!595490 (= e!360385 0)))

(declare-fun b!595491 () Bool)

(assert (=> b!595491 (= e!360385 (+ 1 (size!4673 (t!79363 lt!252756))))))

(assert (= (and d!209442 c!110861) b!595490))

(assert (= (and d!209442 (not c!110861)) b!595491))

(declare-fun m!858105 () Bool)

(assert (=> b!595491 m!858105))

(assert (=> b!595334 d!209442))

(declare-fun d!209444 () Bool)

(declare-fun lt!252838 () Int)

(assert (=> d!209444 (>= lt!252838 0)))

(declare-fun e!360386 () Int)

(assert (=> d!209444 (= lt!252838 e!360386)))

(declare-fun c!110862 () Bool)

(assert (=> d!209444 (= c!110862 ((_ is Nil!5916) lt!252760))))

(assert (=> d!209444 (= (size!4673 lt!252760) lt!252838)))

(declare-fun b!595492 () Bool)

(assert (=> b!595492 (= e!360386 0)))

(declare-fun b!595493 () Bool)

(assert (=> b!595493 (= e!360386 (+ 1 (size!4673 (t!79363 lt!252760))))))

(assert (= (and d!209444 c!110862) b!595492))

(assert (= (and d!209444 (not c!110862)) b!595493))

(declare-fun m!858107 () Bool)

(assert (=> b!595493 m!858107))

(assert (=> b!595334 d!209444))

(declare-fun d!209446 () Bool)

(assert (=> d!209446 (ruleValid!367 thiss!22590 (rule!1939 (_1!3680 (v!16406 lt!252767))))))

(declare-fun lt!252847 () Unit!10757)

(declare-fun choose!4323 (LexerInterface!1055 Rule!2138 List!5928) Unit!10757)

(assert (=> d!209446 (= lt!252847 (choose!4323 thiss!22590 (rule!1939 (_1!3680 (v!16406 lt!252767))) rules!3103))))

(declare-fun contains!1389 (List!5928 Rule!2138) Bool)

(assert (=> d!209446 (contains!1389 rules!3103 (rule!1939 (_1!3680 (v!16406 lt!252767))))))

(assert (=> d!209446 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!214 thiss!22590 (rule!1939 (_1!3680 (v!16406 lt!252767))) rules!3103) lt!252847)))

(declare-fun bs!70597 () Bool)

(assert (= bs!70597 d!209446))

(assert (=> bs!70597 m!857833))

(declare-fun m!858109 () Bool)

(assert (=> bs!70597 m!858109))

(declare-fun m!858111 () Bool)

(assert (=> bs!70597 m!858111))

(assert (=> b!595334 d!209446))

(declare-fun d!209448 () Bool)

(declare-fun e!360404 () Bool)

(assert (=> d!209448 e!360404))

(declare-fun res!257063 () Bool)

(assert (=> d!209448 (=> res!257063 e!360404)))

(declare-fun lt!252859 () Bool)

(assert (=> d!209448 (= res!257063 (not lt!252859))))

(declare-fun e!360403 () Bool)

(assert (=> d!209448 (= lt!252859 e!360403)))

(declare-fun res!257062 () Bool)

(assert (=> d!209448 (=> res!257062 e!360403)))

(assert (=> d!209448 (= res!257062 ((_ is Nil!5916) lt!252756))))

(assert (=> d!209448 (= (isPrefix!797 lt!252756 (++!1657 lt!252756 (_2!3680 (v!16406 lt!252767)))) lt!252859)))

(declare-fun b!595532 () Bool)

(assert (=> b!595532 (= e!360404 (>= (size!4673 (++!1657 lt!252756 (_2!3680 (v!16406 lt!252767)))) (size!4673 lt!252756)))))

(declare-fun b!595529 () Bool)

(declare-fun e!360402 () Bool)

(assert (=> b!595529 (= e!360403 e!360402)))

(declare-fun res!257061 () Bool)

(assert (=> b!595529 (=> (not res!257061) (not e!360402))))

(assert (=> b!595529 (= res!257061 (not ((_ is Nil!5916) (++!1657 lt!252756 (_2!3680 (v!16406 lt!252767))))))))

(declare-fun b!595531 () Bool)

(assert (=> b!595531 (= e!360402 (isPrefix!797 (tail!791 lt!252756) (tail!791 (++!1657 lt!252756 (_2!3680 (v!16406 lt!252767))))))))

(declare-fun b!595530 () Bool)

(declare-fun res!257064 () Bool)

(assert (=> b!595530 (=> (not res!257064) (not e!360402))))

(declare-fun head!1262 (List!5926) C!3928)

(assert (=> b!595530 (= res!257064 (= (head!1262 lt!252756) (head!1262 (++!1657 lt!252756 (_2!3680 (v!16406 lt!252767))))))))

(assert (= (and d!209448 (not res!257062)) b!595529))

(assert (= (and b!595529 res!257061) b!595530))

(assert (= (and b!595530 res!257064) b!595531))

(assert (= (and d!209448 (not res!257063)) b!595532))

(assert (=> b!595532 m!857831))

(declare-fun m!858153 () Bool)

(assert (=> b!595532 m!858153))

(assert (=> b!595532 m!857865))

(declare-fun m!858155 () Bool)

(assert (=> b!595531 m!858155))

(assert (=> b!595531 m!857831))

(declare-fun m!858159 () Bool)

(assert (=> b!595531 m!858159))

(assert (=> b!595531 m!858155))

(assert (=> b!595531 m!858159))

(declare-fun m!858161 () Bool)

(assert (=> b!595531 m!858161))

(declare-fun m!858165 () Bool)

(assert (=> b!595530 m!858165))

(assert (=> b!595530 m!857831))

(declare-fun m!858169 () Bool)

(assert (=> b!595530 m!858169))

(assert (=> b!595334 d!209448))

(declare-fun d!209458 () Bool)

(declare-fun e!360418 () Bool)

(assert (=> d!209458 e!360418))

(declare-fun res!257083 () Bool)

(assert (=> d!209458 (=> (not res!257083) (not e!360418))))

(assert (=> d!209458 (= res!257083 (semiInverseModEq!463 (toChars!1919 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767))))) (toValue!2060 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767)))))))))

(declare-fun Unit!10765 () Unit!10757)

(assert (=> d!209458 (= (lemmaInv!277 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767))))) Unit!10765)))

(declare-fun b!595557 () Bool)

(assert (=> b!595557 (= e!360418 (equivClasses!446 (toChars!1919 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767))))) (toValue!2060 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767)))))))))

(assert (= (and d!209458 res!257083) b!595557))

(declare-fun m!858197 () Bool)

(assert (=> d!209458 m!858197))

(declare-fun m!858201 () Bool)

(assert (=> b!595557 m!858201))

(assert (=> b!595334 d!209458))

(declare-fun d!209470 () Bool)

(declare-fun dynLambda!3436 (Int BalanceConc!3780) TokenValue!1193)

(assert (=> d!209470 (= (apply!1422 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767)))) (seqFromList!1345 lt!252756)) (dynLambda!3436 (toValue!2060 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767))))) (seqFromList!1345 lt!252756)))))

(declare-fun b_lambda!23461 () Bool)

(assert (=> (not b_lambda!23461) (not d!209470)))

(declare-fun t!79387 () Bool)

(declare-fun tb!51995 () Bool)

(assert (=> (and b!595341 (= (toValue!2060 (transformation!1169 (h!11319 rules!3103))) (toValue!2060 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767)))))) t!79387) tb!51995))

(declare-fun result!58406 () Bool)

(assert (=> tb!51995 (= result!58406 (inv!21 (dynLambda!3436 (toValue!2060 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767))))) (seqFromList!1345 lt!252756))))))

(declare-fun m!858211 () Bool)

(assert (=> tb!51995 m!858211))

(assert (=> d!209470 t!79387))

(declare-fun b_and!58755 () Bool)

(assert (= b_and!58723 (and (=> t!79387 result!58406) b_and!58755)))

(declare-fun tb!51997 () Bool)

(declare-fun t!79389 () Bool)

(assert (=> (and b!595329 (= (toValue!2060 (transformation!1169 (rule!1939 token!491))) (toValue!2060 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767)))))) t!79389) tb!51997))

(declare-fun result!58412 () Bool)

(assert (= result!58412 result!58406))

(assert (=> d!209470 t!79389))

(declare-fun b_and!58757 () Bool)

(assert (= b_and!58727 (and (=> t!79389 result!58412) b_and!58757)))

(assert (=> d!209470 m!857825))

(declare-fun m!858213 () Bool)

(assert (=> d!209470 m!858213))

(assert (=> b!595334 d!209470))

(declare-fun e!360438 () Bool)

(declare-fun b!595579 () Bool)

(declare-fun lt!252867 () List!5926)

(assert (=> b!595579 (= e!360438 (or (not (= (_2!3680 (v!16406 lt!252767)) Nil!5916)) (= lt!252867 lt!252756)))))

(declare-fun b!595577 () Bool)

(declare-fun e!360437 () List!5926)

(assert (=> b!595577 (= e!360437 (Cons!5916 (h!11317 lt!252756) (++!1657 (t!79363 lt!252756) (_2!3680 (v!16406 lt!252767)))))))

(declare-fun b!595578 () Bool)

(declare-fun res!257085 () Bool)

(assert (=> b!595578 (=> (not res!257085) (not e!360438))))

(assert (=> b!595578 (= res!257085 (= (size!4673 lt!252867) (+ (size!4673 lt!252756) (size!4673 (_2!3680 (v!16406 lt!252767))))))))

(declare-fun d!209474 () Bool)

(assert (=> d!209474 e!360438))

(declare-fun res!257084 () Bool)

(assert (=> d!209474 (=> (not res!257084) (not e!360438))))

(assert (=> d!209474 (= res!257084 (= (content!1065 lt!252867) ((_ map or) (content!1065 lt!252756) (content!1065 (_2!3680 (v!16406 lt!252767))))))))

(assert (=> d!209474 (= lt!252867 e!360437)))

(declare-fun c!110869 () Bool)

(assert (=> d!209474 (= c!110869 ((_ is Nil!5916) lt!252756))))

(assert (=> d!209474 (= (++!1657 lt!252756 (_2!3680 (v!16406 lt!252767))) lt!252867)))

(declare-fun b!595576 () Bool)

(assert (=> b!595576 (= e!360437 (_2!3680 (v!16406 lt!252767)))))

(assert (= (and d!209474 c!110869) b!595576))

(assert (= (and d!209474 (not c!110869)) b!595577))

(assert (= (and d!209474 res!257084) b!595578))

(assert (= (and b!595578 res!257085) b!595579))

(declare-fun m!858219 () Bool)

(assert (=> b!595577 m!858219))

(declare-fun m!858221 () Bool)

(assert (=> b!595578 m!858221))

(assert (=> b!595578 m!857865))

(declare-fun m!858223 () Bool)

(assert (=> b!595578 m!858223))

(declare-fun m!858225 () Bool)

(assert (=> d!209474 m!858225))

(declare-fun m!858227 () Bool)

(assert (=> d!209474 m!858227))

(declare-fun m!858229 () Bool)

(assert (=> d!209474 m!858229))

(assert (=> b!595334 d!209474))

(declare-fun d!209476 () Bool)

(assert (=> d!209476 (= (_2!3680 (v!16406 lt!252767)) lt!252777)))

(declare-fun lt!252868 () Unit!10757)

(assert (=> d!209476 (= lt!252868 (choose!4322 lt!252756 (_2!3680 (v!16406 lt!252767)) lt!252756 lt!252777 input!2705))))

(assert (=> d!209476 (isPrefix!797 lt!252756 input!2705)))

(assert (=> d!209476 (= (lemmaSamePrefixThenSameSuffix!510 lt!252756 (_2!3680 (v!16406 lt!252767)) lt!252756 lt!252777 input!2705) lt!252868)))

(declare-fun bs!70599 () Bool)

(assert (= bs!70599 d!209476))

(declare-fun m!858231 () Bool)

(assert (=> bs!70599 m!858231))

(declare-fun m!858233 () Bool)

(assert (=> bs!70599 m!858233))

(assert (=> b!595334 d!209476))

(declare-fun d!209478 () Bool)

(assert (=> d!209478 (isPrefix!797 lt!252760 (++!1657 lt!252760 suffix!1342))))

(declare-fun lt!252871 () Unit!10757)

(declare-fun choose!4324 (List!5926 List!5926) Unit!10757)

(assert (=> d!209478 (= lt!252871 (choose!4324 lt!252760 suffix!1342))))

(assert (=> d!209478 (= (lemmaConcatTwoListThenFirstIsPrefix!642 lt!252760 suffix!1342) lt!252871)))

(declare-fun bs!70600 () Bool)

(assert (= bs!70600 d!209478))

(assert (=> bs!70600 m!857893))

(assert (=> bs!70600 m!857893))

(declare-fun m!858235 () Bool)

(assert (=> bs!70600 m!858235))

(declare-fun m!858237 () Bool)

(assert (=> bs!70600 m!858237))

(assert (=> b!595334 d!209478))

(declare-fun d!209480 () Bool)

(declare-fun lt!252872 () BalanceConc!3780)

(assert (=> d!209480 (= (list!2478 lt!252872) (originalCharacters!1208 (_1!3680 (v!16406 lt!252767))))))

(assert (=> d!209480 (= lt!252872 (dynLambda!3435 (toChars!1919 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767))))) (value!38183 (_1!3680 (v!16406 lt!252767)))))))

(assert (=> d!209480 (= (charsOf!798 (_1!3680 (v!16406 lt!252767))) lt!252872)))

(declare-fun b_lambda!23469 () Bool)

(assert (=> (not b_lambda!23469) (not d!209480)))

(declare-fun tb!52007 () Bool)

(declare-fun t!79400 () Bool)

(assert (=> (and b!595341 (= (toChars!1919 (transformation!1169 (h!11319 rules!3103))) (toChars!1919 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767)))))) t!79400) tb!52007))

(declare-fun b!595600 () Bool)

(declare-fun e!360445 () Bool)

(declare-fun tp!185691 () Bool)

(assert (=> b!595600 (= e!360445 (and (inv!7502 (c!110832 (dynLambda!3435 (toChars!1919 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767))))) (value!38183 (_1!3680 (v!16406 lt!252767)))))) tp!185691))))

(declare-fun result!58424 () Bool)

(assert (=> tb!52007 (= result!58424 (and (inv!7503 (dynLambda!3435 (toChars!1919 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767))))) (value!38183 (_1!3680 (v!16406 lt!252767))))) e!360445))))

(assert (= tb!52007 b!595600))

(declare-fun m!858239 () Bool)

(assert (=> b!595600 m!858239))

(declare-fun m!858241 () Bool)

(assert (=> tb!52007 m!858241))

(assert (=> d!209480 t!79400))

(declare-fun b_and!58763 () Bool)

(assert (= b_and!58743 (and (=> t!79400 result!58424) b_and!58763)))

(declare-fun tb!52009 () Bool)

(declare-fun t!79402 () Bool)

(assert (=> (and b!595329 (= (toChars!1919 (transformation!1169 (rule!1939 token!491))) (toChars!1919 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767)))))) t!79402) tb!52009))

(declare-fun result!58426 () Bool)

(assert (= result!58426 result!58424))

(assert (=> d!209480 t!79402))

(declare-fun b_and!58765 () Bool)

(assert (= b_and!58745 (and (=> t!79402 result!58426) b_and!58765)))

(declare-fun m!858243 () Bool)

(assert (=> d!209480 m!858243))

(declare-fun m!858245 () Bool)

(assert (=> d!209480 m!858245))

(assert (=> b!595334 d!209480))

(declare-fun d!209482 () Bool)

(assert (=> d!209482 (and (= lt!252760 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!252875 () Unit!10757)

(declare-fun choose!4325 (List!5926 List!5926 List!5926 List!5926) Unit!10757)

(assert (=> d!209482 (= lt!252875 (choose!4325 lt!252760 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!209482 (= (++!1657 lt!252760 suffix!1342) (++!1657 input!2705 suffix!1342))))

(assert (=> d!209482 (= (lemmaConcatSameAndSameSizesThenSameLists!242 lt!252760 suffix!1342 input!2705 suffix!1342) lt!252875)))

(declare-fun bs!70601 () Bool)

(assert (= bs!70601 d!209482))

(declare-fun m!858247 () Bool)

(assert (=> bs!70601 m!858247))

(assert (=> bs!70601 m!857893))

(assert (=> bs!70601 m!857823))

(assert (=> b!595334 d!209482))

(declare-fun d!209484 () Bool)

(assert (=> d!209484 (= (size!4672 token!491) (size!4673 (originalCharacters!1208 token!491)))))

(declare-fun Unit!10766 () Unit!10757)

(assert (=> d!209484 (= (lemmaCharactersSize!228 token!491) Unit!10766)))

(declare-fun bs!70602 () Bool)

(assert (= bs!70602 d!209484))

(assert (=> bs!70602 m!857885))

(assert (=> b!595334 d!209484))

(declare-fun d!209486 () Bool)

(assert (=> d!209486 (= (list!2478 (charsOf!798 (_1!3680 (v!16406 lt!252767)))) (list!2480 (c!110832 (charsOf!798 (_1!3680 (v!16406 lt!252767))))))))

(declare-fun bs!70603 () Bool)

(assert (= bs!70603 d!209486))

(declare-fun m!858249 () Bool)

(assert (=> bs!70603 m!858249))

(assert (=> b!595334 d!209486))

(declare-fun d!209488 () Bool)

(declare-fun e!360448 () Bool)

(assert (=> d!209488 e!360448))

(declare-fun res!257088 () Bool)

(assert (=> d!209488 (=> res!257088 e!360448)))

(declare-fun lt!252876 () Bool)

(assert (=> d!209488 (= res!257088 (not lt!252876))))

(declare-fun e!360447 () Bool)

(assert (=> d!209488 (= lt!252876 e!360447)))

(declare-fun res!257087 () Bool)

(assert (=> d!209488 (=> res!257087 e!360447)))

(assert (=> d!209488 (= res!257087 ((_ is Nil!5916) input!2705))))

(assert (=> d!209488 (= (isPrefix!797 input!2705 lt!252768) lt!252876)))

(declare-fun b!595604 () Bool)

(assert (=> b!595604 (= e!360448 (>= (size!4673 lt!252768) (size!4673 input!2705)))))

(declare-fun b!595601 () Bool)

(declare-fun e!360446 () Bool)

(assert (=> b!595601 (= e!360447 e!360446)))

(declare-fun res!257086 () Bool)

(assert (=> b!595601 (=> (not res!257086) (not e!360446))))

(assert (=> b!595601 (= res!257086 (not ((_ is Nil!5916) lt!252768)))))

(declare-fun b!595603 () Bool)

(assert (=> b!595603 (= e!360446 (isPrefix!797 (tail!791 input!2705) (tail!791 lt!252768)))))

(declare-fun b!595602 () Bool)

(declare-fun res!257089 () Bool)

(assert (=> b!595602 (=> (not res!257089) (not e!360446))))

(assert (=> b!595602 (= res!257089 (= (head!1262 input!2705) (head!1262 lt!252768)))))

(assert (= (and d!209488 (not res!257087)) b!595601))

(assert (= (and b!595601 res!257086) b!595602))

(assert (= (and b!595602 res!257089) b!595603))

(assert (= (and d!209488 (not res!257088)) b!595604))

(assert (=> b!595604 m!858073))

(declare-fun m!858251 () Bool)

(assert (=> b!595604 m!858251))

(declare-fun m!858253 () Bool)

(assert (=> b!595603 m!858253))

(assert (=> b!595603 m!858075))

(assert (=> b!595603 m!858253))

(assert (=> b!595603 m!858075))

(declare-fun m!858255 () Bool)

(assert (=> b!595603 m!858255))

(declare-fun m!858257 () Bool)

(assert (=> b!595602 m!858257))

(declare-fun m!858259 () Bool)

(assert (=> b!595602 m!858259))

(assert (=> b!595334 d!209488))

(declare-fun d!209490 () Bool)

(declare-fun e!360451 () Bool)

(assert (=> d!209490 e!360451))

(declare-fun res!257092 () Bool)

(assert (=> d!209490 (=> res!257092 e!360451)))

(declare-fun lt!252877 () Bool)

(assert (=> d!209490 (= res!257092 (not lt!252877))))

(declare-fun e!360450 () Bool)

(assert (=> d!209490 (= lt!252877 e!360450)))

(declare-fun res!257091 () Bool)

(assert (=> d!209490 (=> res!257091 e!360450)))

(assert (=> d!209490 (= res!257091 ((_ is Nil!5916) input!2705))))

(assert (=> d!209490 (= (isPrefix!797 input!2705 input!2705) lt!252877)))

(declare-fun b!595608 () Bool)

(assert (=> b!595608 (= e!360451 (>= (size!4673 input!2705) (size!4673 input!2705)))))

(declare-fun b!595605 () Bool)

(declare-fun e!360449 () Bool)

(assert (=> b!595605 (= e!360450 e!360449)))

(declare-fun res!257090 () Bool)

(assert (=> b!595605 (=> (not res!257090) (not e!360449))))

(assert (=> b!595605 (= res!257090 (not ((_ is Nil!5916) input!2705)))))

(declare-fun b!595607 () Bool)

(assert (=> b!595607 (= e!360449 (isPrefix!797 (tail!791 input!2705) (tail!791 input!2705)))))

(declare-fun b!595606 () Bool)

(declare-fun res!257093 () Bool)

(assert (=> b!595606 (=> (not res!257093) (not e!360449))))

(assert (=> b!595606 (= res!257093 (= (head!1262 input!2705) (head!1262 input!2705)))))

(assert (= (and d!209490 (not res!257091)) b!595605))

(assert (= (and b!595605 res!257090) b!595606))

(assert (= (and b!595606 res!257093) b!595607))

(assert (= (and d!209490 (not res!257092)) b!595608))

(assert (=> b!595608 m!858251))

(assert (=> b!595608 m!858251))

(assert (=> b!595607 m!858253))

(assert (=> b!595607 m!858253))

(assert (=> b!595607 m!858253))

(assert (=> b!595607 m!858253))

(declare-fun m!858261 () Bool)

(assert (=> b!595607 m!858261))

(assert (=> b!595606 m!858257))

(assert (=> b!595606 m!858257))

(assert (=> b!595334 d!209490))

(declare-fun d!209492 () Bool)

(assert (=> d!209492 (ruleValid!367 thiss!22590 (rule!1939 token!491))))

(declare-fun lt!252878 () Unit!10757)

(assert (=> d!209492 (= lt!252878 (choose!4323 thiss!22590 (rule!1939 token!491) rules!3103))))

(assert (=> d!209492 (contains!1389 rules!3103 (rule!1939 token!491))))

(assert (=> d!209492 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!214 thiss!22590 (rule!1939 token!491) rules!3103) lt!252878)))

(declare-fun bs!70604 () Bool)

(assert (= bs!70604 d!209492))

(assert (=> bs!70604 m!857853))

(declare-fun m!858263 () Bool)

(assert (=> bs!70604 m!858263))

(declare-fun m!858265 () Bool)

(assert (=> bs!70604 m!858265))

(assert (=> b!595334 d!209492))

(declare-fun d!209494 () Bool)

(assert (=> d!209494 (isPrefix!797 input!2705 (++!1657 input!2705 suffix!1342))))

(declare-fun lt!252879 () Unit!10757)

(assert (=> d!209494 (= lt!252879 (choose!4324 input!2705 suffix!1342))))

(assert (=> d!209494 (= (lemmaConcatTwoListThenFirstIsPrefix!642 input!2705 suffix!1342) lt!252879)))

(declare-fun bs!70605 () Bool)

(assert (= bs!70605 d!209494))

(assert (=> bs!70605 m!857823))

(assert (=> bs!70605 m!857823))

(declare-fun m!858267 () Bool)

(assert (=> bs!70605 m!858267))

(declare-fun m!858269 () Bool)

(assert (=> bs!70605 m!858269))

(assert (=> b!595334 d!209494))

(declare-fun d!209496 () Bool)

(assert (=> d!209496 (isPrefix!797 lt!252756 (++!1657 lt!252756 (_2!3680 (v!16406 lt!252767))))))

(declare-fun lt!252880 () Unit!10757)

(assert (=> d!209496 (= lt!252880 (choose!4324 lt!252756 (_2!3680 (v!16406 lt!252767))))))

(assert (=> d!209496 (= (lemmaConcatTwoListThenFirstIsPrefix!642 lt!252756 (_2!3680 (v!16406 lt!252767))) lt!252880)))

(declare-fun bs!70606 () Bool)

(assert (= bs!70606 d!209496))

(assert (=> bs!70606 m!857831))

(assert (=> bs!70606 m!857831))

(assert (=> bs!70606 m!857875))

(declare-fun m!858271 () Bool)

(assert (=> bs!70606 m!858271))

(assert (=> b!595334 d!209496))

(declare-fun d!209498 () Bool)

(declare-fun res!257098 () Bool)

(declare-fun e!360454 () Bool)

(assert (=> d!209498 (=> (not res!257098) (not e!360454))))

(declare-fun validRegex!516 (Regex!1503) Bool)

(assert (=> d!209498 (= res!257098 (validRegex!516 (regex!1169 (rule!1939 (_1!3680 (v!16406 lt!252767))))))))

(assert (=> d!209498 (= (ruleValid!367 thiss!22590 (rule!1939 (_1!3680 (v!16406 lt!252767)))) e!360454)))

(declare-fun b!595613 () Bool)

(declare-fun res!257099 () Bool)

(assert (=> b!595613 (=> (not res!257099) (not e!360454))))

(declare-fun nullable!421 (Regex!1503) Bool)

(assert (=> b!595613 (= res!257099 (not (nullable!421 (regex!1169 (rule!1939 (_1!3680 (v!16406 lt!252767)))))))))

(declare-fun b!595614 () Bool)

(assert (=> b!595614 (= e!360454 (not (= (tag!1431 (rule!1939 (_1!3680 (v!16406 lt!252767)))) (String!7710 ""))))))

(assert (= (and d!209498 res!257098) b!595613))

(assert (= (and b!595613 res!257099) b!595614))

(declare-fun m!858273 () Bool)

(assert (=> d!209498 m!858273))

(declare-fun m!858275 () Bool)

(assert (=> b!595613 m!858275))

(assert (=> b!595334 d!209498))

(declare-fun d!209500 () Bool)

(declare-fun res!257100 () Bool)

(declare-fun e!360455 () Bool)

(assert (=> d!209500 (=> (not res!257100) (not e!360455))))

(assert (=> d!209500 (= res!257100 (validRegex!516 (regex!1169 (rule!1939 token!491))))))

(assert (=> d!209500 (= (ruleValid!367 thiss!22590 (rule!1939 token!491)) e!360455)))

(declare-fun b!595615 () Bool)

(declare-fun res!257101 () Bool)

(assert (=> b!595615 (=> (not res!257101) (not e!360455))))

(assert (=> b!595615 (= res!257101 (not (nullable!421 (regex!1169 (rule!1939 token!491)))))))

(declare-fun b!595616 () Bool)

(assert (=> b!595616 (= e!360455 (not (= (tag!1431 (rule!1939 token!491)) (String!7710 ""))))))

(assert (= (and d!209500 res!257100) b!595615))

(assert (= (and b!595615 res!257101) b!595616))

(declare-fun m!858277 () Bool)

(assert (=> d!209500 m!858277))

(declare-fun m!858279 () Bool)

(assert (=> b!595615 m!858279))

(assert (=> b!595334 d!209500))

(declare-fun d!209502 () Bool)

(assert (=> d!209502 (= (size!4672 (_1!3680 (v!16406 lt!252767))) (size!4673 (originalCharacters!1208 (_1!3680 (v!16406 lt!252767)))))))

(declare-fun Unit!10767 () Unit!10757)

(assert (=> d!209502 (= (lemmaCharactersSize!228 (_1!3680 (v!16406 lt!252767))) Unit!10767)))

(declare-fun bs!70607 () Bool)

(assert (= bs!70607 d!209502))

(assert (=> bs!70607 m!857801))

(assert (=> b!595334 d!209502))

(declare-fun d!209504 () Bool)

(declare-fun fromListB!590 (List!5926) BalanceConc!3780)

(assert (=> d!209504 (= (seqFromList!1345 lt!252756) (fromListB!590 lt!252756))))

(declare-fun bs!70608 () Bool)

(assert (= bs!70608 d!209504))

(declare-fun m!858281 () Bool)

(assert (=> bs!70608 m!858281))

(assert (=> b!595334 d!209504))

(declare-fun d!209506 () Bool)

(declare-fun e!360458 () Bool)

(assert (=> d!209506 e!360458))

(declare-fun res!257104 () Bool)

(assert (=> d!209506 (=> res!257104 e!360458)))

(declare-fun lt!252881 () Bool)

(assert (=> d!209506 (= res!257104 (not lt!252881))))

(declare-fun e!360457 () Bool)

(assert (=> d!209506 (= lt!252881 e!360457)))

(declare-fun res!257103 () Bool)

(assert (=> d!209506 (=> res!257103 e!360457)))

(assert (=> d!209506 (= res!257103 ((_ is Nil!5916) input!2705))))

(assert (=> d!209506 (= (isPrefix!797 input!2705 lt!252776) lt!252881)))

(declare-fun b!595620 () Bool)

(assert (=> b!595620 (= e!360458 (>= (size!4673 lt!252776) (size!4673 input!2705)))))

(declare-fun b!595617 () Bool)

(declare-fun e!360456 () Bool)

(assert (=> b!595617 (= e!360457 e!360456)))

(declare-fun res!257102 () Bool)

(assert (=> b!595617 (=> (not res!257102) (not e!360456))))

(assert (=> b!595617 (= res!257102 (not ((_ is Nil!5916) lt!252776)))))

(declare-fun b!595619 () Bool)

(assert (=> b!595619 (= e!360456 (isPrefix!797 (tail!791 input!2705) (tail!791 lt!252776)))))

(declare-fun b!595618 () Bool)

(declare-fun res!257105 () Bool)

(assert (=> b!595618 (=> (not res!257105) (not e!360456))))

(assert (=> b!595618 (= res!257105 (= (head!1262 input!2705) (head!1262 lt!252776)))))

(assert (= (and d!209506 (not res!257103)) b!595617))

(assert (= (and b!595617 res!257102) b!595618))

(assert (= (and b!595618 res!257105) b!595619))

(assert (= (and d!209506 (not res!257104)) b!595620))

(declare-fun m!858283 () Bool)

(assert (=> b!595620 m!858283))

(assert (=> b!595620 m!858251))

(assert (=> b!595619 m!858253))

(declare-fun m!858285 () Bool)

(assert (=> b!595619 m!858285))

(assert (=> b!595619 m!858253))

(assert (=> b!595619 m!858285))

(declare-fun m!858287 () Bool)

(assert (=> b!595619 m!858287))

(assert (=> b!595618 m!858257))

(declare-fun m!858289 () Bool)

(assert (=> b!595618 m!858289))

(assert (=> b!595334 d!209506))

(declare-fun d!209508 () Bool)

(assert (=> d!209508 (isPrefix!797 input!2705 input!2705)))

(declare-fun lt!252884 () Unit!10757)

(declare-fun choose!4326 (List!5926 List!5926) Unit!10757)

(assert (=> d!209508 (= lt!252884 (choose!4326 input!2705 input!2705))))

(assert (=> d!209508 (= (lemmaIsPrefixRefl!533 input!2705 input!2705) lt!252884)))

(declare-fun bs!70609 () Bool)

(assert (= bs!70609 d!209508))

(assert (=> bs!70609 m!857843))

(declare-fun m!858291 () Bool)

(assert (=> bs!70609 m!858291))

(assert (=> b!595334 d!209508))

(declare-fun d!209510 () Bool)

(declare-fun e!360461 () Bool)

(assert (=> d!209510 e!360461))

(declare-fun res!257108 () Bool)

(assert (=> d!209510 (=> res!257108 e!360461)))

(declare-fun lt!252885 () Bool)

(assert (=> d!209510 (= res!257108 (not lt!252885))))

(declare-fun e!360460 () Bool)

(assert (=> d!209510 (= lt!252885 e!360460)))

(declare-fun res!257107 () Bool)

(assert (=> d!209510 (=> res!257107 e!360460)))

(assert (=> d!209510 (= res!257107 ((_ is Nil!5916) lt!252760))))

(assert (=> d!209510 (= (isPrefix!797 lt!252760 lt!252776) lt!252885)))

(declare-fun b!595624 () Bool)

(assert (=> b!595624 (= e!360461 (>= (size!4673 lt!252776) (size!4673 lt!252760)))))

(declare-fun b!595621 () Bool)

(declare-fun e!360459 () Bool)

(assert (=> b!595621 (= e!360460 e!360459)))

(declare-fun res!257106 () Bool)

(assert (=> b!595621 (=> (not res!257106) (not e!360459))))

(assert (=> b!595621 (= res!257106 (not ((_ is Nil!5916) lt!252776)))))

(declare-fun b!595623 () Bool)

(assert (=> b!595623 (= e!360459 (isPrefix!797 (tail!791 lt!252760) (tail!791 lt!252776)))))

(declare-fun b!595622 () Bool)

(declare-fun res!257109 () Bool)

(assert (=> b!595622 (=> (not res!257109) (not e!360459))))

(assert (=> b!595622 (= res!257109 (= (head!1262 lt!252760) (head!1262 lt!252776)))))

(assert (= (and d!209510 (not res!257107)) b!595621))

(assert (= (and b!595621 res!257106) b!595622))

(assert (= (and b!595622 res!257109) b!595623))

(assert (= (and d!209510 (not res!257108)) b!595624))

(assert (=> b!595624 m!858283))

(assert (=> b!595624 m!857849))

(declare-fun m!858293 () Bool)

(assert (=> b!595623 m!858293))

(assert (=> b!595623 m!858285))

(assert (=> b!595623 m!858293))

(assert (=> b!595623 m!858285))

(declare-fun m!858295 () Bool)

(assert (=> b!595623 m!858295))

(declare-fun m!858297 () Bool)

(assert (=> b!595622 m!858297))

(assert (=> b!595622 m!858289))

(assert (=> b!595334 d!209510))

(declare-fun d!209512 () Bool)

(declare-fun lt!252886 () List!5926)

(assert (=> d!209512 (= (++!1657 lt!252756 lt!252886) input!2705)))

(declare-fun e!360462 () List!5926)

(assert (=> d!209512 (= lt!252886 e!360462)))

(declare-fun c!110870 () Bool)

(assert (=> d!209512 (= c!110870 ((_ is Cons!5916) lt!252756))))

(assert (=> d!209512 (>= (size!4673 input!2705) (size!4673 lt!252756))))

(assert (=> d!209512 (= (getSuffix!314 input!2705 lt!252756) lt!252886)))

(declare-fun b!595625 () Bool)

(assert (=> b!595625 (= e!360462 (getSuffix!314 (tail!791 input!2705) (t!79363 lt!252756)))))

(declare-fun b!595626 () Bool)

(assert (=> b!595626 (= e!360462 input!2705)))

(assert (= (and d!209512 c!110870) b!595625))

(assert (= (and d!209512 (not c!110870)) b!595626))

(declare-fun m!858299 () Bool)

(assert (=> d!209512 m!858299))

(assert (=> d!209512 m!858251))

(assert (=> d!209512 m!857865))

(assert (=> b!595625 m!858253))

(assert (=> b!595625 m!858253))

(declare-fun m!858301 () Bool)

(assert (=> b!595625 m!858301))

(assert (=> b!595334 d!209512))

(declare-fun d!209514 () Bool)

(declare-fun e!360463 () Bool)

(assert (=> d!209514 e!360463))

(declare-fun res!257110 () Bool)

(assert (=> d!209514 (=> (not res!257110) (not e!360463))))

(assert (=> d!209514 (= res!257110 (semiInverseModEq!463 (toChars!1919 (transformation!1169 (rule!1939 token!491))) (toValue!2060 (transformation!1169 (rule!1939 token!491)))))))

(declare-fun Unit!10768 () Unit!10757)

(assert (=> d!209514 (= (lemmaInv!277 (transformation!1169 (rule!1939 token!491))) Unit!10768)))

(declare-fun b!595627 () Bool)

(assert (=> b!595627 (= e!360463 (equivClasses!446 (toChars!1919 (transformation!1169 (rule!1939 token!491))) (toValue!2060 (transformation!1169 (rule!1939 token!491)))))))

(assert (= (and d!209514 res!257110) b!595627))

(declare-fun m!858303 () Bool)

(assert (=> d!209514 m!858303))

(declare-fun m!858305 () Bool)

(assert (=> b!595627 m!858305))

(assert (=> b!595334 d!209514))

(declare-fun d!209516 () Bool)

(assert (=> d!209516 (= (apply!1422 (transformation!1169 (rule!1939 token!491)) (seqFromList!1345 lt!252760)) (dynLambda!3436 (toValue!2060 (transformation!1169 (rule!1939 token!491))) (seqFromList!1345 lt!252760)))))

(declare-fun b_lambda!23471 () Bool)

(assert (=> (not b_lambda!23471) (not d!209516)))

(declare-fun tb!52011 () Bool)

(declare-fun t!79404 () Bool)

(assert (=> (and b!595341 (= (toValue!2060 (transformation!1169 (h!11319 rules!3103))) (toValue!2060 (transformation!1169 (rule!1939 token!491)))) t!79404) tb!52011))

(declare-fun result!58428 () Bool)

(assert (=> tb!52011 (= result!58428 (inv!21 (dynLambda!3436 (toValue!2060 (transformation!1169 (rule!1939 token!491))) (seqFromList!1345 lt!252760))))))

(declare-fun m!858307 () Bool)

(assert (=> tb!52011 m!858307))

(assert (=> d!209516 t!79404))

(declare-fun b_and!58767 () Bool)

(assert (= b_and!58755 (and (=> t!79404 result!58428) b_and!58767)))

(declare-fun t!79406 () Bool)

(declare-fun tb!52013 () Bool)

(assert (=> (and b!595329 (= (toValue!2060 (transformation!1169 (rule!1939 token!491))) (toValue!2060 (transformation!1169 (rule!1939 token!491)))) t!79406) tb!52013))

(declare-fun result!58430 () Bool)

(assert (= result!58430 result!58428))

(assert (=> d!209516 t!79406))

(declare-fun b_and!58769 () Bool)

(assert (= b_and!58757 (and (=> t!79406 result!58430) b_and!58769)))

(assert (=> d!209516 m!857815))

(declare-fun m!858309 () Bool)

(assert (=> d!209516 m!858309))

(assert (=> b!595345 d!209516))

(declare-fun d!209518 () Bool)

(assert (=> d!209518 (= (seqFromList!1345 lt!252760) (fromListB!590 lt!252760))))

(declare-fun bs!70610 () Bool)

(assert (= bs!70610 d!209518))

(declare-fun m!858311 () Bool)

(assert (=> bs!70610 m!858311))

(assert (=> b!595345 d!209518))

(declare-fun d!209520 () Bool)

(assert (=> d!209520 (= (inv!7495 (tag!1431 (rule!1939 token!491))) (= (mod (str.len (value!38182 (tag!1431 (rule!1939 token!491)))) 2) 0))))

(assert (=> b!595335 d!209520))

(declare-fun d!209522 () Bool)

(declare-fun res!257111 () Bool)

(declare-fun e!360465 () Bool)

(assert (=> d!209522 (=> (not res!257111) (not e!360465))))

(assert (=> d!209522 (= res!257111 (semiInverseModEq!463 (toChars!1919 (transformation!1169 (rule!1939 token!491))) (toValue!2060 (transformation!1169 (rule!1939 token!491)))))))

(assert (=> d!209522 (= (inv!7498 (transformation!1169 (rule!1939 token!491))) e!360465)))

(declare-fun b!595628 () Bool)

(assert (=> b!595628 (= e!360465 (equivClasses!446 (toChars!1919 (transformation!1169 (rule!1939 token!491))) (toValue!2060 (transformation!1169 (rule!1939 token!491)))))))

(assert (= (and d!209522 res!257111) b!595628))

(assert (=> d!209522 m!858303))

(assert (=> b!595628 m!858305))

(assert (=> b!595335 d!209522))

(declare-fun b!595648 () Bool)

(declare-fun e!360472 () Option!1520)

(declare-fun lt!252901 () Option!1520)

(declare-fun lt!252898 () Option!1520)

(assert (=> b!595648 (= e!360472 (ite (and ((_ is None!1519) lt!252901) ((_ is None!1519) lt!252898)) None!1519 (ite ((_ is None!1519) lt!252898) lt!252901 (ite ((_ is None!1519) lt!252901) lt!252898 (ite (>= (size!4672 (_1!3680 (v!16406 lt!252901))) (size!4672 (_1!3680 (v!16406 lt!252898)))) lt!252901 lt!252898)))))))

(declare-fun call!40404 () Option!1520)

(assert (=> b!595648 (= lt!252901 call!40404)))

(assert (=> b!595648 (= lt!252898 (maxPrefix!753 thiss!22590 (t!79365 rules!3103) input!2705))))

(declare-fun b!595649 () Bool)

(declare-fun res!257129 () Bool)

(declare-fun e!360474 () Bool)

(assert (=> b!595649 (=> (not res!257129) (not e!360474))))

(declare-fun lt!252897 () Option!1520)

(assert (=> b!595649 (= res!257129 (< (size!4673 (_2!3680 (get!2268 lt!252897))) (size!4673 input!2705)))))

(declare-fun b!595650 () Bool)

(declare-fun res!257131 () Bool)

(assert (=> b!595650 (=> (not res!257131) (not e!360474))))

(assert (=> b!595650 (= res!257131 (= (value!38183 (_1!3680 (get!2268 lt!252897))) (apply!1422 (transformation!1169 (rule!1939 (_1!3680 (get!2268 lt!252897)))) (seqFromList!1345 (originalCharacters!1208 (_1!3680 (get!2268 lt!252897)))))))))

(declare-fun b!595651 () Bool)

(declare-fun e!360473 () Bool)

(assert (=> b!595651 (= e!360473 e!360474)))

(declare-fun res!257128 () Bool)

(assert (=> b!595651 (=> (not res!257128) (not e!360474))))

(assert (=> b!595651 (= res!257128 (isDefined!1331 lt!252897))))

(declare-fun b!595652 () Bool)

(assert (=> b!595652 (= e!360472 call!40404)))

(declare-fun b!595653 () Bool)

(declare-fun res!257127 () Bool)

(assert (=> b!595653 (=> (not res!257127) (not e!360474))))

(declare-fun matchR!624 (Regex!1503 List!5926) Bool)

(assert (=> b!595653 (= res!257127 (matchR!624 (regex!1169 (rule!1939 (_1!3680 (get!2268 lt!252897)))) (list!2478 (charsOf!798 (_1!3680 (get!2268 lt!252897))))))))

(declare-fun b!595654 () Bool)

(declare-fun res!257130 () Bool)

(assert (=> b!595654 (=> (not res!257130) (not e!360474))))

(assert (=> b!595654 (= res!257130 (= (list!2478 (charsOf!798 (_1!3680 (get!2268 lt!252897)))) (originalCharacters!1208 (_1!3680 (get!2268 lt!252897)))))))

(declare-fun bm!40399 () Bool)

(declare-fun maxPrefixOneRule!428 (LexerInterface!1055 Rule!2138 List!5926) Option!1520)

(assert (=> bm!40399 (= call!40404 (maxPrefixOneRule!428 thiss!22590 (h!11319 rules!3103) input!2705))))

(declare-fun b!595655 () Bool)

(declare-fun res!257132 () Bool)

(assert (=> b!595655 (=> (not res!257132) (not e!360474))))

(assert (=> b!595655 (= res!257132 (= (++!1657 (list!2478 (charsOf!798 (_1!3680 (get!2268 lt!252897)))) (_2!3680 (get!2268 lt!252897))) input!2705))))

(declare-fun d!209524 () Bool)

(assert (=> d!209524 e!360473))

(declare-fun res!257126 () Bool)

(assert (=> d!209524 (=> res!257126 e!360473)))

(declare-fun isEmpty!4274 (Option!1520) Bool)

(assert (=> d!209524 (= res!257126 (isEmpty!4274 lt!252897))))

(assert (=> d!209524 (= lt!252897 e!360472)))

(declare-fun c!110873 () Bool)

(assert (=> d!209524 (= c!110873 (and ((_ is Cons!5918) rules!3103) ((_ is Nil!5918) (t!79365 rules!3103))))))

(declare-fun lt!252899 () Unit!10757)

(declare-fun lt!252900 () Unit!10757)

(assert (=> d!209524 (= lt!252899 lt!252900)))

(assert (=> d!209524 (isPrefix!797 input!2705 input!2705)))

(assert (=> d!209524 (= lt!252900 (lemmaIsPrefixRefl!533 input!2705 input!2705))))

(declare-fun rulesValidInductive!432 (LexerInterface!1055 List!5928) Bool)

(assert (=> d!209524 (rulesValidInductive!432 thiss!22590 rules!3103)))

(assert (=> d!209524 (= (maxPrefix!753 thiss!22590 rules!3103 input!2705) lt!252897)))

(declare-fun b!595647 () Bool)

(assert (=> b!595647 (= e!360474 (contains!1389 rules!3103 (rule!1939 (_1!3680 (get!2268 lt!252897)))))))

(assert (= (and d!209524 c!110873) b!595652))

(assert (= (and d!209524 (not c!110873)) b!595648))

(assert (= (or b!595652 b!595648) bm!40399))

(assert (= (and d!209524 (not res!257126)) b!595651))

(assert (= (and b!595651 res!257128) b!595654))

(assert (= (and b!595654 res!257130) b!595649))

(assert (= (and b!595649 res!257129) b!595655))

(assert (= (and b!595655 res!257132) b!595650))

(assert (= (and b!595650 res!257131) b!595653))

(assert (= (and b!595653 res!257127) b!595647))

(declare-fun m!858313 () Bool)

(assert (=> b!595655 m!858313))

(declare-fun m!858315 () Bool)

(assert (=> b!595655 m!858315))

(assert (=> b!595655 m!858315))

(declare-fun m!858317 () Bool)

(assert (=> b!595655 m!858317))

(assert (=> b!595655 m!858317))

(declare-fun m!858319 () Bool)

(assert (=> b!595655 m!858319))

(declare-fun m!858321 () Bool)

(assert (=> bm!40399 m!858321))

(declare-fun m!858323 () Bool)

(assert (=> b!595648 m!858323))

(declare-fun m!858325 () Bool)

(assert (=> b!595651 m!858325))

(assert (=> b!595653 m!858313))

(assert (=> b!595653 m!858315))

(assert (=> b!595653 m!858315))

(assert (=> b!595653 m!858317))

(assert (=> b!595653 m!858317))

(declare-fun m!858327 () Bool)

(assert (=> b!595653 m!858327))

(declare-fun m!858329 () Bool)

(assert (=> d!209524 m!858329))

(assert (=> d!209524 m!857843))

(assert (=> d!209524 m!857873))

(declare-fun m!858331 () Bool)

(assert (=> d!209524 m!858331))

(assert (=> b!595649 m!858313))

(declare-fun m!858333 () Bool)

(assert (=> b!595649 m!858333))

(assert (=> b!595649 m!858251))

(assert (=> b!595654 m!858313))

(assert (=> b!595654 m!858315))

(assert (=> b!595654 m!858315))

(assert (=> b!595654 m!858317))

(assert (=> b!595647 m!858313))

(declare-fun m!858335 () Bool)

(assert (=> b!595647 m!858335))

(assert (=> b!595650 m!858313))

(declare-fun m!858337 () Bool)

(assert (=> b!595650 m!858337))

(assert (=> b!595650 m!858337))

(declare-fun m!858339 () Bool)

(assert (=> b!595650 m!858339))

(assert (=> b!595346 d!209524))

(declare-fun d!209526 () Bool)

(declare-fun res!257137 () Bool)

(declare-fun e!360477 () Bool)

(assert (=> d!209526 (=> (not res!257137) (not e!360477))))

(assert (=> d!209526 (= res!257137 (not (isEmpty!4272 (originalCharacters!1208 token!491))))))

(assert (=> d!209526 (= (inv!7499 token!491) e!360477)))

(declare-fun b!595660 () Bool)

(declare-fun res!257138 () Bool)

(assert (=> b!595660 (=> (not res!257138) (not e!360477))))

(assert (=> b!595660 (= res!257138 (= (originalCharacters!1208 token!491) (list!2478 (dynLambda!3435 (toChars!1919 (transformation!1169 (rule!1939 token!491))) (value!38183 token!491)))))))

(declare-fun b!595661 () Bool)

(assert (=> b!595661 (= e!360477 (= (size!4672 token!491) (size!4673 (originalCharacters!1208 token!491))))))

(assert (= (and d!209526 res!257137) b!595660))

(assert (= (and b!595660 res!257138) b!595661))

(declare-fun b_lambda!23473 () Bool)

(assert (=> (not b_lambda!23473) (not b!595660)))

(assert (=> b!595660 t!79379))

(declare-fun b_and!58771 () Bool)

(assert (= b_and!58763 (and (=> t!79379 result!58394) b_and!58771)))

(assert (=> b!595660 t!79381))

(declare-fun b_and!58773 () Bool)

(assert (= b_and!58765 (and (=> t!79381 result!58398) b_and!58773)))

(declare-fun m!858341 () Bool)

(assert (=> d!209526 m!858341))

(assert (=> b!595660 m!858099))

(assert (=> b!595660 m!858099))

(declare-fun m!858343 () Bool)

(assert (=> b!595660 m!858343))

(assert (=> b!595661 m!857885))

(assert (=> start!56136 d!209526))

(declare-fun b!595672 () Bool)

(declare-fun e!360485 () Bool)

(declare-fun e!360484 () Bool)

(assert (=> b!595672 (= e!360485 e!360484)))

(declare-fun c!110878 () Bool)

(assert (=> b!595672 (= c!110878 ((_ is IntegerValue!3580) (value!38183 token!491)))))

(declare-fun b!595673 () Bool)

(declare-fun inv!17 (TokenValue!1193) Bool)

(assert (=> b!595673 (= e!360484 (inv!17 (value!38183 token!491)))))

(declare-fun b!595674 () Bool)

(declare-fun inv!16 (TokenValue!1193) Bool)

(assert (=> b!595674 (= e!360485 (inv!16 (value!38183 token!491)))))

(declare-fun d!209528 () Bool)

(declare-fun c!110879 () Bool)

(assert (=> d!209528 (= c!110879 ((_ is IntegerValue!3579) (value!38183 token!491)))))

(assert (=> d!209528 (= (inv!21 (value!38183 token!491)) e!360485)))

(declare-fun b!595675 () Bool)

(declare-fun e!360486 () Bool)

(declare-fun inv!15 (TokenValue!1193) Bool)

(assert (=> b!595675 (= e!360486 (inv!15 (value!38183 token!491)))))

(declare-fun b!595676 () Bool)

(declare-fun res!257141 () Bool)

(assert (=> b!595676 (=> res!257141 e!360486)))

(assert (=> b!595676 (= res!257141 (not ((_ is IntegerValue!3581) (value!38183 token!491))))))

(assert (=> b!595676 (= e!360484 e!360486)))

(assert (= (and d!209528 c!110879) b!595674))

(assert (= (and d!209528 (not c!110879)) b!595672))

(assert (= (and b!595672 c!110878) b!595673))

(assert (= (and b!595672 (not c!110878)) b!595676))

(assert (= (and b!595676 (not res!257141)) b!595675))

(declare-fun m!858345 () Bool)

(assert (=> b!595673 m!858345))

(declare-fun m!858347 () Bool)

(assert (=> b!595674 m!858347))

(declare-fun m!858349 () Bool)

(assert (=> b!595675 m!858349))

(assert (=> b!595331 d!209528))

(declare-fun d!209530 () Bool)

(declare-fun lt!252902 () Int)

(assert (=> d!209530 (>= lt!252902 0)))

(declare-fun e!360487 () Int)

(assert (=> d!209530 (= lt!252902 e!360487)))

(declare-fun c!110880 () Bool)

(assert (=> d!209530 (= c!110880 ((_ is Nil!5916) (originalCharacters!1208 (_1!3680 (v!16406 lt!252767)))))))

(assert (=> d!209530 (= (size!4673 (originalCharacters!1208 (_1!3680 (v!16406 lt!252767)))) lt!252902)))

(declare-fun b!595677 () Bool)

(assert (=> b!595677 (= e!360487 0)))

(declare-fun b!595678 () Bool)

(assert (=> b!595678 (= e!360487 (+ 1 (size!4673 (t!79363 (originalCharacters!1208 (_1!3680 (v!16406 lt!252767)))))))))

(assert (= (and d!209530 c!110880) b!595677))

(assert (= (and d!209530 (not c!110880)) b!595678))

(declare-fun m!858351 () Bool)

(assert (=> b!595678 m!858351))

(assert (=> b!595342 d!209530))

(declare-fun d!209532 () Bool)

(assert (=> d!209532 (= (isEmpty!4271 rules!3103) ((_ is Nil!5918) rules!3103))))

(assert (=> b!595332 d!209532))

(declare-fun d!209534 () Bool)

(assert (=> d!209534 (= (isDefined!1331 lt!252761) (not (isEmpty!4274 lt!252761)))))

(declare-fun bs!70611 () Bool)

(assert (= bs!70611 d!209534))

(declare-fun m!858353 () Bool)

(assert (=> bs!70611 m!858353))

(assert (=> b!595343 d!209534))

(declare-fun b!595680 () Bool)

(declare-fun e!360488 () Option!1520)

(declare-fun lt!252907 () Option!1520)

(declare-fun lt!252904 () Option!1520)

(assert (=> b!595680 (= e!360488 (ite (and ((_ is None!1519) lt!252907) ((_ is None!1519) lt!252904)) None!1519 (ite ((_ is None!1519) lt!252904) lt!252907 (ite ((_ is None!1519) lt!252907) lt!252904 (ite (>= (size!4672 (_1!3680 (v!16406 lt!252907))) (size!4672 (_1!3680 (v!16406 lt!252904)))) lt!252907 lt!252904)))))))

(declare-fun call!40405 () Option!1520)

(assert (=> b!595680 (= lt!252907 call!40405)))

(assert (=> b!595680 (= lt!252904 (maxPrefix!753 thiss!22590 (t!79365 rules!3103) lt!252768))))

(declare-fun b!595681 () Bool)

(declare-fun res!257145 () Bool)

(declare-fun e!360490 () Bool)

(assert (=> b!595681 (=> (not res!257145) (not e!360490))))

(declare-fun lt!252903 () Option!1520)

(assert (=> b!595681 (= res!257145 (< (size!4673 (_2!3680 (get!2268 lt!252903))) (size!4673 lt!252768)))))

(declare-fun b!595682 () Bool)

(declare-fun res!257147 () Bool)

(assert (=> b!595682 (=> (not res!257147) (not e!360490))))

(assert (=> b!595682 (= res!257147 (= (value!38183 (_1!3680 (get!2268 lt!252903))) (apply!1422 (transformation!1169 (rule!1939 (_1!3680 (get!2268 lt!252903)))) (seqFromList!1345 (originalCharacters!1208 (_1!3680 (get!2268 lt!252903)))))))))

(declare-fun b!595683 () Bool)

(declare-fun e!360489 () Bool)

(assert (=> b!595683 (= e!360489 e!360490)))

(declare-fun res!257144 () Bool)

(assert (=> b!595683 (=> (not res!257144) (not e!360490))))

(assert (=> b!595683 (= res!257144 (isDefined!1331 lt!252903))))

(declare-fun b!595684 () Bool)

(assert (=> b!595684 (= e!360488 call!40405)))

(declare-fun b!595685 () Bool)

(declare-fun res!257143 () Bool)

(assert (=> b!595685 (=> (not res!257143) (not e!360490))))

(assert (=> b!595685 (= res!257143 (matchR!624 (regex!1169 (rule!1939 (_1!3680 (get!2268 lt!252903)))) (list!2478 (charsOf!798 (_1!3680 (get!2268 lt!252903))))))))

(declare-fun b!595686 () Bool)

(declare-fun res!257146 () Bool)

(assert (=> b!595686 (=> (not res!257146) (not e!360490))))

(assert (=> b!595686 (= res!257146 (= (list!2478 (charsOf!798 (_1!3680 (get!2268 lt!252903)))) (originalCharacters!1208 (_1!3680 (get!2268 lt!252903)))))))

(declare-fun bm!40400 () Bool)

(assert (=> bm!40400 (= call!40405 (maxPrefixOneRule!428 thiss!22590 (h!11319 rules!3103) lt!252768))))

(declare-fun b!595687 () Bool)

(declare-fun res!257148 () Bool)

(assert (=> b!595687 (=> (not res!257148) (not e!360490))))

(assert (=> b!595687 (= res!257148 (= (++!1657 (list!2478 (charsOf!798 (_1!3680 (get!2268 lt!252903)))) (_2!3680 (get!2268 lt!252903))) lt!252768))))

(declare-fun d!209536 () Bool)

(assert (=> d!209536 e!360489))

(declare-fun res!257142 () Bool)

(assert (=> d!209536 (=> res!257142 e!360489)))

(assert (=> d!209536 (= res!257142 (isEmpty!4274 lt!252903))))

(assert (=> d!209536 (= lt!252903 e!360488)))

(declare-fun c!110881 () Bool)

(assert (=> d!209536 (= c!110881 (and ((_ is Cons!5918) rules!3103) ((_ is Nil!5918) (t!79365 rules!3103))))))

(declare-fun lt!252905 () Unit!10757)

(declare-fun lt!252906 () Unit!10757)

(assert (=> d!209536 (= lt!252905 lt!252906)))

(assert (=> d!209536 (isPrefix!797 lt!252768 lt!252768)))

(assert (=> d!209536 (= lt!252906 (lemmaIsPrefixRefl!533 lt!252768 lt!252768))))

(assert (=> d!209536 (rulesValidInductive!432 thiss!22590 rules!3103)))

(assert (=> d!209536 (= (maxPrefix!753 thiss!22590 rules!3103 lt!252768) lt!252903)))

(declare-fun b!595679 () Bool)

(assert (=> b!595679 (= e!360490 (contains!1389 rules!3103 (rule!1939 (_1!3680 (get!2268 lt!252903)))))))

(assert (= (and d!209536 c!110881) b!595684))

(assert (= (and d!209536 (not c!110881)) b!595680))

(assert (= (or b!595684 b!595680) bm!40400))

(assert (= (and d!209536 (not res!257142)) b!595683))

(assert (= (and b!595683 res!257144) b!595686))

(assert (= (and b!595686 res!257146) b!595681))

(assert (= (and b!595681 res!257145) b!595687))

(assert (= (and b!595687 res!257148) b!595682))

(assert (= (and b!595682 res!257147) b!595685))

(assert (= (and b!595685 res!257143) b!595679))

(declare-fun m!858355 () Bool)

(assert (=> b!595687 m!858355))

(declare-fun m!858357 () Bool)

(assert (=> b!595687 m!858357))

(assert (=> b!595687 m!858357))

(declare-fun m!858359 () Bool)

(assert (=> b!595687 m!858359))

(assert (=> b!595687 m!858359))

(declare-fun m!858361 () Bool)

(assert (=> b!595687 m!858361))

(declare-fun m!858363 () Bool)

(assert (=> bm!40400 m!858363))

(declare-fun m!858365 () Bool)

(assert (=> b!595680 m!858365))

(declare-fun m!858367 () Bool)

(assert (=> b!595683 m!858367))

(assert (=> b!595685 m!858355))

(assert (=> b!595685 m!858357))

(assert (=> b!595685 m!858357))

(assert (=> b!595685 m!858359))

(assert (=> b!595685 m!858359))

(declare-fun m!858369 () Bool)

(assert (=> b!595685 m!858369))

(declare-fun m!858371 () Bool)

(assert (=> d!209536 m!858371))

(declare-fun m!858373 () Bool)

(assert (=> d!209536 m!858373))

(declare-fun m!858375 () Bool)

(assert (=> d!209536 m!858375))

(assert (=> d!209536 m!858331))

(assert (=> b!595681 m!858355))

(declare-fun m!858377 () Bool)

(assert (=> b!595681 m!858377))

(assert (=> b!595681 m!858073))

(assert (=> b!595686 m!858355))

(assert (=> b!595686 m!858357))

(assert (=> b!595686 m!858357))

(assert (=> b!595686 m!858359))

(assert (=> b!595679 m!858355))

(declare-fun m!858379 () Bool)

(assert (=> b!595679 m!858379))

(assert (=> b!595682 m!858355))

(declare-fun m!858381 () Bool)

(assert (=> b!595682 m!858381))

(assert (=> b!595682 m!858381))

(declare-fun m!858383 () Bool)

(assert (=> b!595682 m!858383))

(assert (=> b!595343 d!209536))

(declare-fun b!595691 () Bool)

(declare-fun e!360492 () Bool)

(declare-fun lt!252908 () List!5926)

(assert (=> b!595691 (= e!360492 (or (not (= suffix!1342 Nil!5916)) (= lt!252908 input!2705)))))

(declare-fun b!595689 () Bool)

(declare-fun e!360491 () List!5926)

(assert (=> b!595689 (= e!360491 (Cons!5916 (h!11317 input!2705) (++!1657 (t!79363 input!2705) suffix!1342)))))

(declare-fun b!595690 () Bool)

(declare-fun res!257150 () Bool)

(assert (=> b!595690 (=> (not res!257150) (not e!360492))))

(assert (=> b!595690 (= res!257150 (= (size!4673 lt!252908) (+ (size!4673 input!2705) (size!4673 suffix!1342))))))

(declare-fun d!209538 () Bool)

(assert (=> d!209538 e!360492))

(declare-fun res!257149 () Bool)

(assert (=> d!209538 (=> (not res!257149) (not e!360492))))

(assert (=> d!209538 (= res!257149 (= (content!1065 lt!252908) ((_ map or) (content!1065 input!2705) (content!1065 suffix!1342))))))

(assert (=> d!209538 (= lt!252908 e!360491)))

(declare-fun c!110882 () Bool)

(assert (=> d!209538 (= c!110882 ((_ is Nil!5916) input!2705))))

(assert (=> d!209538 (= (++!1657 input!2705 suffix!1342) lt!252908)))

(declare-fun b!595688 () Bool)

(assert (=> b!595688 (= e!360491 suffix!1342)))

(assert (= (and d!209538 c!110882) b!595688))

(assert (= (and d!209538 (not c!110882)) b!595689))

(assert (= (and d!209538 res!257149) b!595690))

(assert (= (and b!595690 res!257150) b!595691))

(declare-fun m!858385 () Bool)

(assert (=> b!595689 m!858385))

(declare-fun m!858387 () Bool)

(assert (=> b!595690 m!858387))

(assert (=> b!595690 m!858251))

(assert (=> b!595690 m!858001))

(declare-fun m!858389 () Bool)

(assert (=> d!209538 m!858389))

(declare-fun m!858391 () Bool)

(assert (=> d!209538 m!858391))

(assert (=> d!209538 m!858007))

(assert (=> b!595343 d!209538))

(declare-fun b!595696 () Bool)

(declare-fun e!360495 () Bool)

(declare-fun tp!185694 () Bool)

(assert (=> b!595696 (= e!360495 (and tp_is_empty!3361 tp!185694))))

(assert (=> b!595344 (= tp!185644 e!360495)))

(assert (= (and b!595344 ((_ is Cons!5916) (t!79363 input!2705))) b!595696))

(declare-fun b!595710 () Bool)

(declare-fun e!360498 () Bool)

(declare-fun tp!185708 () Bool)

(declare-fun tp!185706 () Bool)

(assert (=> b!595710 (= e!360498 (and tp!185708 tp!185706))))

(declare-fun b!595708 () Bool)

(declare-fun tp!185707 () Bool)

(declare-fun tp!185705 () Bool)

(assert (=> b!595708 (= e!360498 (and tp!185707 tp!185705))))

(assert (=> b!595335 (= tp!185637 e!360498)))

(declare-fun b!595707 () Bool)

(assert (=> b!595707 (= e!360498 tp_is_empty!3361)))

(declare-fun b!595709 () Bool)

(declare-fun tp!185709 () Bool)

(assert (=> b!595709 (= e!360498 tp!185709)))

(assert (= (and b!595335 ((_ is ElementMatch!1503) (regex!1169 (rule!1939 token!491)))) b!595707))

(assert (= (and b!595335 ((_ is Concat!2696) (regex!1169 (rule!1939 token!491)))) b!595708))

(assert (= (and b!595335 ((_ is Star!1503) (regex!1169 (rule!1939 token!491)))) b!595709))

(assert (= (and b!595335 ((_ is Union!1503) (regex!1169 (rule!1939 token!491)))) b!595710))

(declare-fun b!595714 () Bool)

(declare-fun e!360499 () Bool)

(declare-fun tp!185713 () Bool)

(declare-fun tp!185711 () Bool)

(assert (=> b!595714 (= e!360499 (and tp!185713 tp!185711))))

(declare-fun b!595712 () Bool)

(declare-fun tp!185712 () Bool)

(declare-fun tp!185710 () Bool)

(assert (=> b!595712 (= e!360499 (and tp!185712 tp!185710))))

(assert (=> b!595351 (= tp!185639 e!360499)))

(declare-fun b!595711 () Bool)

(assert (=> b!595711 (= e!360499 tp_is_empty!3361)))

(declare-fun b!595713 () Bool)

(declare-fun tp!185714 () Bool)

(assert (=> b!595713 (= e!360499 tp!185714)))

(assert (= (and b!595351 ((_ is ElementMatch!1503) (regex!1169 (h!11319 rules!3103)))) b!595711))

(assert (= (and b!595351 ((_ is Concat!2696) (regex!1169 (h!11319 rules!3103)))) b!595712))

(assert (= (and b!595351 ((_ is Star!1503) (regex!1169 (h!11319 rules!3103)))) b!595713))

(assert (= (and b!595351 ((_ is Union!1503) (regex!1169 (h!11319 rules!3103)))) b!595714))

(declare-fun b!595725 () Bool)

(declare-fun b_free!16833 () Bool)

(declare-fun b_next!16849 () Bool)

(assert (=> b!595725 (= b_free!16833 (not b_next!16849))))

(declare-fun tb!52015 () Bool)

(declare-fun t!79408 () Bool)

(assert (=> (and b!595725 (= (toValue!2060 (transformation!1169 (h!11319 (t!79365 rules!3103)))) (toValue!2060 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767)))))) t!79408) tb!52015))

(declare-fun result!58438 () Bool)

(assert (= result!58438 result!58406))

(assert (=> d!209470 t!79408))

(declare-fun tb!52017 () Bool)

(declare-fun t!79410 () Bool)

(assert (=> (and b!595725 (= (toValue!2060 (transformation!1169 (h!11319 (t!79365 rules!3103)))) (toValue!2060 (transformation!1169 (rule!1939 token!491)))) t!79410) tb!52017))

(declare-fun result!58440 () Bool)

(assert (= result!58440 result!58428))

(assert (=> d!209516 t!79410))

(declare-fun tp!185724 () Bool)

(declare-fun b_and!58775 () Bool)

(assert (=> b!595725 (= tp!185724 (and (=> t!79408 result!58438) (=> t!79410 result!58440) b_and!58775))))

(declare-fun b_free!16835 () Bool)

(declare-fun b_next!16851 () Bool)

(assert (=> b!595725 (= b_free!16835 (not b_next!16851))))

(declare-fun tb!52019 () Bool)

(declare-fun t!79412 () Bool)

(assert (=> (and b!595725 (= (toChars!1919 (transformation!1169 (h!11319 (t!79365 rules!3103)))) (toChars!1919 (transformation!1169 (rule!1939 token!491)))) t!79412) tb!52019))

(declare-fun result!58442 () Bool)

(assert (= result!58442 result!58394))

(assert (=> d!209436 t!79412))

(declare-fun t!79414 () Bool)

(declare-fun tb!52021 () Bool)

(assert (=> (and b!595725 (= (toChars!1919 (transformation!1169 (h!11319 (t!79365 rules!3103)))) (toChars!1919 (transformation!1169 (rule!1939 (_1!3680 (v!16406 lt!252767)))))) t!79414) tb!52021))

(declare-fun result!58444 () Bool)

(assert (= result!58444 result!58424))

(assert (=> d!209480 t!79414))

(assert (=> b!595660 t!79412))

(declare-fun b_and!58777 () Bool)

(declare-fun tp!185723 () Bool)

(assert (=> b!595725 (= tp!185723 (and (=> t!79412 result!58442) (=> t!79414 result!58444) b_and!58777))))

(declare-fun e!360511 () Bool)

(assert (=> b!595725 (= e!360511 (and tp!185724 tp!185723))))

(declare-fun e!360510 () Bool)

(declare-fun b!595724 () Bool)

(declare-fun tp!185725 () Bool)

(assert (=> b!595724 (= e!360510 (and tp!185725 (inv!7495 (tag!1431 (h!11319 (t!79365 rules!3103)))) (inv!7498 (transformation!1169 (h!11319 (t!79365 rules!3103)))) e!360511))))

(declare-fun b!595723 () Bool)

(declare-fun e!360508 () Bool)

(declare-fun tp!185726 () Bool)

(assert (=> b!595723 (= e!360508 (and e!360510 tp!185726))))

(assert (=> b!595336 (= tp!185645 e!360508)))

(assert (= b!595724 b!595725))

(assert (= b!595723 b!595724))

(assert (= (and b!595336 ((_ is Cons!5918) (t!79365 rules!3103))) b!595723))

(declare-fun m!858393 () Bool)

(assert (=> b!595724 m!858393))

(declare-fun m!858395 () Bool)

(assert (=> b!595724 m!858395))

(declare-fun b!595726 () Bool)

(declare-fun e!360512 () Bool)

(declare-fun tp!185727 () Bool)

(assert (=> b!595726 (= e!360512 (and tp_is_empty!3361 tp!185727))))

(assert (=> b!595331 (= tp!185642 e!360512)))

(assert (= (and b!595331 ((_ is Cons!5916) (originalCharacters!1208 token!491))) b!595726))

(declare-fun b!595727 () Bool)

(declare-fun e!360513 () Bool)

(declare-fun tp!185728 () Bool)

(assert (=> b!595727 (= e!360513 (and tp_is_empty!3361 tp!185728))))

(assert (=> b!595337 (= tp!185640 e!360513)))

(assert (= (and b!595337 ((_ is Cons!5916) (t!79363 suffix!1342))) b!595727))

(declare-fun b_lambda!23475 () Bool)

(assert (= b_lambda!23471 (or (and b!595341 b_free!16821 (= (toValue!2060 (transformation!1169 (h!11319 rules!3103))) (toValue!2060 (transformation!1169 (rule!1939 token!491))))) (and b!595329 b_free!16825) (and b!595725 b_free!16833 (= (toValue!2060 (transformation!1169 (h!11319 (t!79365 rules!3103)))) (toValue!2060 (transformation!1169 (rule!1939 token!491))))) b_lambda!23475)))

(declare-fun b_lambda!23477 () Bool)

(assert (= b_lambda!23473 (or (and b!595341 b_free!16823 (= (toChars!1919 (transformation!1169 (h!11319 rules!3103))) (toChars!1919 (transformation!1169 (rule!1939 token!491))))) (and b!595329 b_free!16827) (and b!595725 b_free!16835 (= (toChars!1919 (transformation!1169 (h!11319 (t!79365 rules!3103)))) (toChars!1919 (transformation!1169 (rule!1939 token!491))))) b_lambda!23477)))

(declare-fun b_lambda!23479 () Bool)

(assert (= b_lambda!23455 (or (and b!595341 b_free!16823 (= (toChars!1919 (transformation!1169 (h!11319 rules!3103))) (toChars!1919 (transformation!1169 (rule!1939 token!491))))) (and b!595329 b_free!16827) (and b!595725 b_free!16835 (= (toChars!1919 (transformation!1169 (h!11319 (t!79365 rules!3103)))) (toChars!1919 (transformation!1169 (rule!1939 token!491))))) b_lambda!23479)))

(check-sat (not b_next!16843) b_and!58773 (not b!595685) (not tb!51987) (not b!595530) (not b_lambda!23461) tp_is_empty!3361 (not d!209484) (not b!595649) (not b!595689) (not b!595489) (not b!595486) (not b!595627) (not b_next!16849) (not d!209536) (not b_next!16851) (not d!209486) (not d!209498) (not b!595679) (not b!595727) (not b!595681) (not b!595724) (not b_next!16841) (not b_lambda!23475) (not d!209496) (not d!209428) (not b!595624) (not b!595687) (not b!595654) (not b!595577) (not b!595604) b_and!58777 (not b!595603) (not tb!52007) (not b!595436) (not d!209512) (not b!595578) (not b!595648) (not b!595714) (not b!595618) (not d!209434) (not b!595481) (not d!209504) (not d!209476) (not d!209534) (not tb!51995) (not d!209482) (not b!595647) (not b!595680) (not d!209522) (not b!595613) (not b!595696) (not b!595491) b_and!58769 (not d!209494) (not b_lambda!23477) (not d!209392) (not d!209500) (not d!209478) (not d!209526) (not d!209538) (not d!209492) (not d!209446) (not b!595619) (not b!595557) (not b!595615) (not b_next!16837) (not b!595675) (not b!595625) b_and!58767 (not b!595462) (not b!595723) (not b!595622) (not d!209402) (not b!595602) (not b!595628) (not b!595653) (not d!209436) (not b!595423) (not b!595674) (not tb!52011) (not d!209518) (not b!595660) (not b!595607) (not b!595532) (not b!595712) (not bm!40400) (not b!595661) (not b!595606) b_and!58775 (not b!595623) (not b!595682) (not b!595608) b_and!58771 (not d!209502) (not b!595493) (not d!209524) (not b_lambda!23469) (not b!595690) (not b!595708) (not b!595600) (not b!595650) (not b!595673) (not d!209480) (not d!209458) (not b!595713) (not b_lambda!23479) (not b!595620) (not b!595686) (not d!209362) (not d!209514) (not b!595726) (not b!595422) (not b!595683) (not b!595678) (not b!595651) (not b!595655) (not bm!40399) (not b!595531) (not d!209474) (not b!595709) (not d!209440) (not b_next!16839) (not d!209508) (not b!595710))
(check-sat b_and!58773 (not b_next!16843) (not b_next!16841) b_and!58777 b_and!58769 (not b_next!16837) b_and!58767 b_and!58775 b_and!58771 (not b_next!16839) (not b_next!16849) (not b_next!16851))
