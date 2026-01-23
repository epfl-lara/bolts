; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52076 () Bool)

(assert start!52076)

(declare-fun b!565303 () Bool)

(declare-fun b_free!15733 () Bool)

(declare-fun b_next!15749 () Bool)

(assert (=> b!565303 (= b_free!15733 (not b_next!15749))))

(declare-fun tp!178362 () Bool)

(declare-fun b_and!55107 () Bool)

(assert (=> b!565303 (= tp!178362 b_and!55107)))

(declare-fun b_free!15735 () Bool)

(declare-fun b_next!15751 () Bool)

(assert (=> b!565303 (= b_free!15735 (not b_next!15751))))

(declare-fun tp!178359 () Bool)

(declare-fun b_and!55109 () Bool)

(assert (=> b!565303 (= tp!178359 b_and!55109)))

(declare-fun b!565283 () Bool)

(declare-fun b_free!15737 () Bool)

(declare-fun b_next!15753 () Bool)

(assert (=> b!565283 (= b_free!15737 (not b_next!15753))))

(declare-fun tp!178355 () Bool)

(declare-fun b_and!55111 () Bool)

(assert (=> b!565283 (= tp!178355 b_and!55111)))

(declare-fun b_free!15739 () Bool)

(declare-fun b_next!15755 () Bool)

(assert (=> b!565283 (= b_free!15739 (not b_next!15755))))

(declare-fun tp!178364 () Bool)

(declare-fun b_and!55113 () Bool)

(assert (=> b!565283 (= tp!178364 b_and!55113)))

(declare-fun b!565282 () Bool)

(declare-fun res!242140 () Bool)

(declare-fun e!341551 () Bool)

(assert (=> b!565282 (=> (not res!242140) (not e!341551))))

(declare-datatypes ((LexerInterface!955 0))(
  ( (LexerInterfaceExt!952 (__x!4084 Int)) (Lexer!953) )
))
(declare-fun thiss!22590 () LexerInterface!955)

(declare-datatypes ((C!3728 0))(
  ( (C!3729 (val!2090 Int)) )
))
(declare-datatypes ((Regex!1403 0))(
  ( (ElementMatch!1403 (c!106177 C!3728)) (Concat!2496 (regOne!3318 Regex!1403) (regTwo!3318 Regex!1403)) (EmptyExpr!1403) (Star!1403 (reg!1732 Regex!1403)) (EmptyLang!1403) (Union!1403 (regOne!3319 Regex!1403) (regTwo!3319 Regex!1403)) )
))
(declare-datatypes ((String!7208 0))(
  ( (String!7209 (value!35307 String)) )
))
(declare-datatypes ((List!5574 0))(
  ( (Nil!5564) (Cons!5564 (h!10965 (_ BitVec 16)) (t!76257 List!5574)) )
))
(declare-datatypes ((TokenValue!1093 0))(
  ( (FloatLiteralValue!2186 (text!8096 List!5574)) (TokenValueExt!1092 (__x!4085 Int)) (Broken!5465 (value!35308 List!5574)) (Object!1102) (End!1093) (Def!1093) (Underscore!1093) (Match!1093) (Else!1093) (Error!1093) (Case!1093) (If!1093) (Extends!1093) (Abstract!1093) (Class!1093) (Val!1093) (DelimiterValue!2186 (del!1153 List!5574)) (KeywordValue!1099 (value!35309 List!5574)) (CommentValue!2186 (value!35310 List!5574)) (WhitespaceValue!2186 (value!35311 List!5574)) (IndentationValue!1093 (value!35312 List!5574)) (String!7210) (Int32!1093) (Broken!5466 (value!35313 List!5574)) (Boolean!1094) (Unit!9948) (OperatorValue!1096 (op!1153 List!5574)) (IdentifierValue!2186 (value!35314 List!5574)) (IdentifierValue!2187 (value!35315 List!5574)) (WhitespaceValue!2187 (value!35316 List!5574)) (True!2186) (False!2186) (Broken!5467 (value!35317 List!5574)) (Broken!5468 (value!35318 List!5574)) (True!2187) (RightBrace!1093) (RightBracket!1093) (Colon!1093) (Null!1093) (Comma!1093) (LeftBracket!1093) (False!2187) (LeftBrace!1093) (ImaginaryLiteralValue!1093 (text!8097 List!5574)) (StringLiteralValue!3279 (value!35319 List!5574)) (EOFValue!1093 (value!35320 List!5574)) (IdentValue!1093 (value!35321 List!5574)) (DelimiterValue!2187 (value!35322 List!5574)) (DedentValue!1093 (value!35323 List!5574)) (NewLineValue!1093 (value!35324 List!5574)) (IntegerValue!3279 (value!35325 (_ BitVec 32)) (text!8098 List!5574)) (IntegerValue!3280 (value!35326 Int) (text!8099 List!5574)) (Times!1093) (Or!1093) (Equal!1093) (Minus!1093) (Broken!5469 (value!35327 List!5574)) (And!1093) (Div!1093) (LessEqual!1093) (Mod!1093) (Concat!2497) (Not!1093) (Plus!1093) (SpaceValue!1093 (value!35328 List!5574)) (IntegerValue!3281 (value!35329 Int) (text!8100 List!5574)) (StringLiteralValue!3280 (text!8101 List!5574)) (FloatLiteralValue!2187 (text!8102 List!5574)) (BytesLiteralValue!1093 (value!35330 List!5574)) (CommentValue!2187 (value!35331 List!5574)) (StringLiteralValue!3281 (value!35332 List!5574)) (ErrorTokenValue!1093 (msg!1154 List!5574)) )
))
(declare-datatypes ((List!5575 0))(
  ( (Nil!5565) (Cons!5565 (h!10966 C!3728) (t!76258 List!5575)) )
))
(declare-datatypes ((IArray!3573 0))(
  ( (IArray!3574 (innerList!1844 List!5575)) )
))
(declare-datatypes ((Conc!1786 0))(
  ( (Node!1786 (left!4565 Conc!1786) (right!4895 Conc!1786) (csize!3802 Int) (cheight!1997 Int)) (Leaf!2828 (xs!4423 IArray!3573) (csize!3803 Int)) (Empty!1786) )
))
(declare-datatypes ((BalanceConc!3580 0))(
  ( (BalanceConc!3581 (c!106178 Conc!1786)) )
))
(declare-datatypes ((TokenValueInjection!1954 0))(
  ( (TokenValueInjection!1955 (toValue!1924 Int) (toChars!1783 Int)) )
))
(declare-datatypes ((Rule!1938 0))(
  ( (Rule!1939 (regex!1069 Regex!1403) (tag!1331 String!7208) (isSeparator!1069 Bool) (transformation!1069 TokenValueInjection!1954)) )
))
(declare-datatypes ((List!5576 0))(
  ( (Nil!5566) (Cons!5566 (h!10967 Rule!1938) (t!76259 List!5576)) )
))
(declare-fun rules!3103 () List!5576)

(declare-fun rulesInvariant!918 (LexerInterface!955 List!5576) Bool)

(assert (=> b!565282 (= res!242140 (rulesInvariant!918 thiss!22590 rules!3103))))

(declare-fun e!341560 () Bool)

(assert (=> b!565283 (= e!341560 (and tp!178355 tp!178364))))

(declare-fun b!565284 () Bool)

(declare-fun e!341553 () Bool)

(declare-fun e!341557 () Bool)

(assert (=> b!565284 (= e!341553 e!341557)))

(declare-fun res!242146 () Bool)

(assert (=> b!565284 (=> (not res!242146) (not e!341557))))

(declare-datatypes ((Token!1874 0))(
  ( (Token!1875 (value!35333 TokenValue!1093) (rule!1805 Rule!1938) (size!4436 Int) (originalCharacters!1108 List!5575)) )
))
(declare-datatypes ((tuple2!6564 0))(
  ( (tuple2!6565 (_1!3546 Token!1874) (_2!3546 List!5575)) )
))
(declare-datatypes ((Option!1420 0))(
  ( (None!1419) (Some!1419 (v!16264 tuple2!6564)) )
))
(declare-fun lt!238010 () Option!1420)

(declare-fun isDefined!1231 (Option!1420) Bool)

(assert (=> b!565284 (= res!242146 (isDefined!1231 lt!238010))))

(declare-fun lt!238004 () List!5575)

(declare-fun maxPrefix!653 (LexerInterface!955 List!5576 List!5575) Option!1420)

(assert (=> b!565284 (= lt!238010 (maxPrefix!653 thiss!22590 rules!3103 lt!238004))))

(declare-fun input!2705 () List!5575)

(declare-fun suffix!1342 () List!5575)

(declare-fun ++!1557 (List!5575 List!5575) List!5575)

(assert (=> b!565284 (= lt!238004 (++!1557 input!2705 suffix!1342))))

(declare-fun e!341549 () Bool)

(declare-fun token!491 () Token!1874)

(declare-fun b!565285 () Bool)

(declare-fun tp!178356 () Bool)

(declare-fun inv!6990 (String!7208) Bool)

(declare-fun inv!6993 (TokenValueInjection!1954) Bool)

(assert (=> b!565285 (= e!341549 (and tp!178356 (inv!6990 (tag!1331 (rule!1805 token!491))) (inv!6993 (transformation!1069 (rule!1805 token!491))) e!341560))))

(declare-fun b!565286 () Bool)

(declare-fun tp!178363 () Bool)

(declare-fun e!341552 () Bool)

(declare-fun e!341568 () Bool)

(assert (=> b!565286 (= e!341552 (and tp!178363 (inv!6990 (tag!1331 (h!10967 rules!3103))) (inv!6993 (transformation!1069 (h!10967 rules!3103))) e!341568))))

(declare-fun b!565287 () Bool)

(declare-fun res!242143 () Bool)

(declare-fun e!341567 () Bool)

(assert (=> b!565287 (=> res!242143 e!341567)))

(declare-fun lt!238008 () List!5575)

(assert (=> b!565287 (= res!242143 (not (= lt!238008 input!2705)))))

(declare-fun b!565289 () Bool)

(declare-fun res!242137 () Bool)

(assert (=> b!565289 (=> res!242137 e!341567)))

(declare-fun lt!237999 () List!5575)

(declare-fun isPrefix!703 (List!5575 List!5575) Bool)

(assert (=> b!565289 (= res!242137 (not (isPrefix!703 lt!237999 input!2705)))))

(declare-fun b!565290 () Bool)

(assert (=> b!565290 (= e!341551 e!341553)))

(declare-fun res!242124 () Bool)

(assert (=> b!565290 (=> (not res!242124) (not e!341553))))

(assert (=> b!565290 (= res!242124 (= lt!237999 input!2705))))

(declare-fun list!2309 (BalanceConc!3580) List!5575)

(declare-fun charsOf!698 (Token!1874) BalanceConc!3580)

(assert (=> b!565290 (= lt!237999 (list!2309 (charsOf!698 token!491)))))

(declare-fun b!565291 () Bool)

(declare-fun e!341559 () Bool)

(declare-fun e!341565 () Bool)

(assert (=> b!565291 (= e!341559 (not e!341565))))

(declare-fun res!242125 () Bool)

(assert (=> b!565291 (=> res!242125 e!341565)))

(declare-fun lt!238021 () List!5575)

(assert (=> b!565291 (= res!242125 (not (isPrefix!703 input!2705 lt!238021)))))

(assert (=> b!565291 (isPrefix!703 lt!237999 lt!238021)))

(declare-datatypes ((Unit!9949 0))(
  ( (Unit!9950) )
))
(declare-fun lt!238022 () Unit!9949)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!550 (List!5575 List!5575) Unit!9949)

(assert (=> b!565291 (= lt!238022 (lemmaConcatTwoListThenFirstIsPrefix!550 lt!237999 suffix!1342))))

(assert (=> b!565291 (isPrefix!703 input!2705 lt!238004)))

(declare-fun lt!238018 () Unit!9949)

(assert (=> b!565291 (= lt!238018 (lemmaConcatTwoListThenFirstIsPrefix!550 input!2705 suffix!1342))))

(declare-fun e!341554 () Bool)

(assert (=> b!565291 e!341554))

(declare-fun res!242129 () Bool)

(assert (=> b!565291 (=> (not res!242129) (not e!341554))))

(declare-fun lt!238013 () Option!1420)

(declare-fun lt!238023 () TokenValue!1093)

(assert (=> b!565291 (= res!242129 (= (value!35333 (_1!3546 (v!16264 lt!238013))) lt!238023))))

(declare-fun lt!238017 () List!5575)

(declare-fun apply!1334 (TokenValueInjection!1954 BalanceConc!3580) TokenValue!1093)

(declare-fun seqFromList!1257 (List!5575) BalanceConc!3580)

(assert (=> b!565291 (= lt!238023 (apply!1334 (transformation!1069 (rule!1805 (_1!3546 (v!16264 lt!238013)))) (seqFromList!1257 lt!238017)))))

(declare-fun lt!238006 () Unit!9949)

(declare-fun lemmaInv!205 (TokenValueInjection!1954) Unit!9949)

(assert (=> b!565291 (= lt!238006 (lemmaInv!205 (transformation!1069 (rule!1805 token!491))))))

(declare-fun lt!238011 () Unit!9949)

(assert (=> b!565291 (= lt!238011 (lemmaInv!205 (transformation!1069 (rule!1805 (_1!3546 (v!16264 lt!238013))))))))

(declare-fun ruleValid!279 (LexerInterface!955 Rule!1938) Bool)

(assert (=> b!565291 (ruleValid!279 thiss!22590 (rule!1805 token!491))))

(declare-fun lt!237995 () Unit!9949)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!136 (LexerInterface!955 Rule!1938 List!5576) Unit!9949)

(assert (=> b!565291 (= lt!237995 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!136 thiss!22590 (rule!1805 token!491) rules!3103))))

(assert (=> b!565291 (ruleValid!279 thiss!22590 (rule!1805 (_1!3546 (v!16264 lt!238013))))))

(declare-fun lt!238000 () Unit!9949)

(assert (=> b!565291 (= lt!238000 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!136 thiss!22590 (rule!1805 (_1!3546 (v!16264 lt!238013))) rules!3103))))

(assert (=> b!565291 (isPrefix!703 input!2705 input!2705)))

(declare-fun lt!237998 () Unit!9949)

(declare-fun lemmaIsPrefixRefl!441 (List!5575 List!5575) Unit!9949)

(assert (=> b!565291 (= lt!237998 (lemmaIsPrefixRefl!441 input!2705 input!2705))))

(declare-fun lt!238016 () List!5575)

(assert (=> b!565291 (= (_2!3546 (v!16264 lt!238013)) lt!238016)))

(declare-fun lt!238024 () Unit!9949)

(declare-fun lemmaSamePrefixThenSameSuffix!426 (List!5575 List!5575 List!5575 List!5575 List!5575) Unit!9949)

(assert (=> b!565291 (= lt!238024 (lemmaSamePrefixThenSameSuffix!426 lt!238017 (_2!3546 (v!16264 lt!238013)) lt!238017 lt!238016 input!2705))))

(declare-fun getSuffix!222 (List!5575 List!5575) List!5575)

(assert (=> b!565291 (= lt!238016 (getSuffix!222 input!2705 lt!238017))))

(assert (=> b!565291 (isPrefix!703 lt!238017 lt!238008)))

(assert (=> b!565291 (= lt!238008 (++!1557 lt!238017 (_2!3546 (v!16264 lt!238013))))))

(declare-fun lt!238012 () Unit!9949)

(assert (=> b!565291 (= lt!238012 (lemmaConcatTwoListThenFirstIsPrefix!550 lt!238017 (_2!3546 (v!16264 lt!238013))))))

(declare-fun lt!238020 () Unit!9949)

(declare-fun lemmaCharactersSize!136 (Token!1874) Unit!9949)

(assert (=> b!565291 (= lt!238020 (lemmaCharactersSize!136 token!491))))

(declare-fun lt!238015 () Unit!9949)

(assert (=> b!565291 (= lt!238015 (lemmaCharactersSize!136 (_1!3546 (v!16264 lt!238013))))))

(declare-fun lt!238009 () Unit!9949)

(declare-fun e!341572 () Unit!9949)

(assert (=> b!565291 (= lt!238009 e!341572)))

(declare-fun c!106176 () Bool)

(declare-fun lt!238019 () Int)

(declare-fun lt!238003 () Int)

(assert (=> b!565291 (= c!106176 (> lt!238019 lt!238003))))

(declare-fun size!4437 (List!5575) Int)

(assert (=> b!565291 (= lt!238003 (size!4437 lt!237999))))

(assert (=> b!565291 (= lt!238019 (size!4437 lt!238017))))

(assert (=> b!565291 (= lt!238017 (list!2309 (charsOf!698 (_1!3546 (v!16264 lt!238013)))))))

(declare-fun lt!237996 () tuple2!6564)

(assert (=> b!565291 (= lt!238013 (Some!1419 lt!237996))))

(assert (=> b!565291 (= lt!237996 (tuple2!6565 (_1!3546 (v!16264 lt!238013)) (_2!3546 (v!16264 lt!238013))))))

(declare-fun lt!238002 () Unit!9949)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!146 (List!5575 List!5575 List!5575 List!5575) Unit!9949)

(assert (=> b!565291 (= lt!238002 (lemmaConcatSameAndSameSizesThenSameLists!146 lt!237999 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!565292 () Bool)

(declare-fun res!242126 () Bool)

(assert (=> b!565292 (=> res!242126 e!341567)))

(declare-fun matchR!550 (Regex!1403 List!5575) Bool)

(assert (=> b!565292 (= res!242126 (not (matchR!550 (regex!1069 (rule!1805 token!491)) input!2705)))))

(declare-fun b!565293 () Bool)

(assert (=> b!565293 (= e!341554 (and (= (size!4436 (_1!3546 (v!16264 lt!238013))) lt!238019) (= (originalCharacters!1108 (_1!3546 (v!16264 lt!238013))) lt!238017) (= lt!237996 (tuple2!6565 (Token!1875 lt!238023 (rule!1805 (_1!3546 (v!16264 lt!238013))) lt!238019 lt!238017) lt!238016))))))

(declare-fun b!565294 () Bool)

(declare-fun e!341550 () Bool)

(declare-fun tp_is_empty!3161 () Bool)

(declare-fun tp!178358 () Bool)

(assert (=> b!565294 (= e!341550 (and tp_is_empty!3161 tp!178358))))

(declare-fun b!565295 () Bool)

(declare-fun e!341570 () Bool)

(declare-fun e!341566 () Bool)

(assert (=> b!565295 (= e!341570 e!341566)))

(declare-fun res!242132 () Bool)

(assert (=> b!565295 (=> (not res!242132) (not e!341566))))

(get-info :version)

(assert (=> b!565295 (= res!242132 ((_ is Some!1419) lt!238013))))

(assert (=> b!565295 (= lt!238013 (maxPrefix!653 thiss!22590 rules!3103 input!2705))))

(declare-fun b!565296 () Bool)

(declare-fun e!341561 () Bool)

(declare-fun tp!178360 () Bool)

(assert (=> b!565296 (= e!341561 (and e!341552 tp!178360))))

(declare-fun b!565297 () Bool)

(declare-fun res!242131 () Bool)

(declare-fun e!341555 () Bool)

(assert (=> b!565297 (=> (not res!242131) (not e!341555))))

(assert (=> b!565297 (= res!242131 (= (size!4436 token!491) (size!4437 (originalCharacters!1108 token!491))))))

(declare-fun b!565298 () Bool)

(declare-fun e!341564 () Bool)

(declare-fun get!2118 (Option!1420) tuple2!6564)

(assert (=> b!565298 (= e!341564 (= (_1!3546 (get!2118 lt!238013)) (_1!3546 (v!16264 lt!238013))))))

(declare-fun b!565299 () Bool)

(declare-fun res!242138 () Bool)

(assert (=> b!565299 (=> res!242138 e!341567)))

(assert (=> b!565299 (= res!242138 (not (= (getSuffix!222 input!2705 input!2705) Nil!5565)))))

(declare-fun b!565300 () Bool)

(declare-fun res!242144 () Bool)

(assert (=> b!565300 (=> (not res!242144) (not e!341554))))

(assert (=> b!565300 (= res!242144 (= (size!4436 (_1!3546 (v!16264 lt!238013))) (size!4437 (originalCharacters!1108 (_1!3546 (v!16264 lt!238013))))))))

(declare-fun b!565301 () Bool)

(declare-fun res!242134 () Bool)

(assert (=> b!565301 (=> (not res!242134) (not e!341551))))

(declare-fun isEmpty!4017 (List!5575) Bool)

(assert (=> b!565301 (= res!242134 (not (isEmpty!4017 input!2705)))))

(declare-fun b!565302 () Bool)

(declare-fun res!242141 () Bool)

(assert (=> b!565302 (=> (not res!242141) (not e!341551))))

(declare-fun isEmpty!4018 (List!5576) Bool)

(assert (=> b!565302 (= res!242141 (not (isEmpty!4018 rules!3103)))))

(assert (=> b!565303 (= e!341568 (and tp!178362 tp!178359))))

(declare-fun res!242139 () Bool)

(assert (=> start!52076 (=> (not res!242139) (not e!341551))))

(assert (=> start!52076 (= res!242139 ((_ is Lexer!953) thiss!22590))))

(assert (=> start!52076 e!341551))

(declare-fun e!341563 () Bool)

(assert (=> start!52076 e!341563))

(assert (=> start!52076 e!341561))

(declare-fun e!341562 () Bool)

(declare-fun inv!6994 (Token!1874) Bool)

(assert (=> start!52076 (and (inv!6994 token!491) e!341562)))

(assert (=> start!52076 true))

(assert (=> start!52076 e!341550))

(declare-fun lt!238014 () TokenValue!1093)

(declare-fun b!565288 () Bool)

(declare-fun lt!238005 () List!5575)

(assert (=> b!565288 (= e!341555 (and (= (size!4436 token!491) lt!238003) (= (originalCharacters!1108 token!491) lt!237999) (= (tuple2!6565 token!491 suffix!1342) (tuple2!6565 (Token!1875 lt!238014 (rule!1805 token!491) lt!238003 lt!237999) lt!238005))))))

(declare-fun b!565304 () Bool)

(assert (=> b!565304 (= e!341565 e!341567)))

(declare-fun res!242135 () Bool)

(assert (=> b!565304 (=> res!242135 e!341567)))

(assert (=> b!565304 (= res!242135 (>= lt!238019 lt!238003))))

(declare-fun e!341573 () Bool)

(assert (=> b!565304 e!341573))

(declare-fun res!242142 () Bool)

(assert (=> b!565304 (=> (not res!242142) (not e!341573))))

(declare-fun maxPrefixOneRule!354 (LexerInterface!955 Rule!1938 List!5575) Option!1420)

(assert (=> b!565304 (= res!242142 (= (maxPrefixOneRule!354 thiss!22590 (rule!1805 token!491) lt!238004) (Some!1419 (tuple2!6565 (Token!1875 lt!238014 (rule!1805 token!491) lt!238003 lt!237999) suffix!1342))))))

(declare-fun lt!237997 () Unit!9949)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!104 (LexerInterface!955 List!5576 List!5575 List!5575 List!5575 Rule!1938) Unit!9949)

(assert (=> b!565304 (= lt!237997 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!104 thiss!22590 rules!3103 lt!237999 lt!238004 suffix!1342 (rule!1805 token!491)))))

(assert (=> b!565304 (= (maxPrefixOneRule!354 thiss!22590 (rule!1805 (_1!3546 (v!16264 lt!238013))) input!2705) (Some!1419 (tuple2!6565 (Token!1875 lt!238023 (rule!1805 (_1!3546 (v!16264 lt!238013))) lt!238019 lt!238017) (_2!3546 (v!16264 lt!238013)))))))

(declare-fun lt!237994 () Unit!9949)

(assert (=> b!565304 (= lt!237994 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!104 thiss!22590 rules!3103 lt!238017 input!2705 (_2!3546 (v!16264 lt!238013)) (rule!1805 (_1!3546 (v!16264 lt!238013)))))))

(assert (=> b!565304 e!341555))

(declare-fun res!242133 () Bool)

(assert (=> b!565304 (=> (not res!242133) (not e!341555))))

(assert (=> b!565304 (= res!242133 (= (value!35333 token!491) lt!238014))))

(assert (=> b!565304 (= lt!238014 (apply!1334 (transformation!1069 (rule!1805 token!491)) (seqFromList!1257 lt!237999)))))

(assert (=> b!565304 (= suffix!1342 lt!238005)))

(declare-fun lt!238001 () Unit!9949)

(assert (=> b!565304 (= lt!238001 (lemmaSamePrefixThenSameSuffix!426 lt!237999 suffix!1342 lt!237999 lt!238005 lt!238004))))

(assert (=> b!565304 (= lt!238005 (getSuffix!222 lt!238004 lt!237999))))

(declare-fun b!565305 () Bool)

(declare-fun res!242145 () Bool)

(assert (=> b!565305 (=> res!242145 e!341567)))

(declare-fun contains!1303 (List!5576 Rule!1938) Bool)

(assert (=> b!565305 (= res!242145 (not (contains!1303 rules!3103 (rule!1805 token!491))))))

(declare-fun b!565306 () Bool)

(assert (=> b!565306 (= e!341557 e!341570)))

(declare-fun res!242130 () Bool)

(assert (=> b!565306 (=> (not res!242130) (not e!341570))))

(declare-fun lt!238007 () tuple2!6564)

(assert (=> b!565306 (= res!242130 (and (= (_1!3546 lt!238007) token!491) (= (_2!3546 lt!238007) suffix!1342)))))

(assert (=> b!565306 (= lt!238007 (get!2118 lt!238010))))

(declare-fun b!565307 () Bool)

(declare-fun tp!178361 () Bool)

(declare-fun inv!21 (TokenValue!1093) Bool)

(assert (=> b!565307 (= e!341562 (and (inv!21 (value!35333 token!491)) e!341549 tp!178361))))

(declare-fun b!565308 () Bool)

(assert (=> b!565308 (= e!341567 (= (++!1557 lt!238017 lt!238016) input!2705))))

(declare-fun b!565309 () Bool)

(declare-fun Unit!9951 () Unit!9949)

(assert (=> b!565309 (= e!341572 Unit!9951)))

(declare-fun b!565310 () Bool)

(declare-fun tp!178357 () Bool)

(assert (=> b!565310 (= e!341563 (and tp_is_empty!3161 tp!178357))))

(declare-fun b!565311 () Bool)

(declare-fun e!341571 () Bool)

(assert (=> b!565311 (= e!341571 e!341564)))

(declare-fun res!242123 () Bool)

(assert (=> b!565311 (=> (not res!242123) (not e!341564))))

(assert (=> b!565311 (= res!242123 (isDefined!1231 lt!238013))))

(declare-fun b!565312 () Bool)

(declare-fun Unit!9952 () Unit!9949)

(assert (=> b!565312 (= e!341572 Unit!9952)))

(assert (=> b!565312 false))

(declare-fun b!565313 () Bool)

(declare-fun res!242127 () Bool)

(assert (=> b!565313 (=> res!242127 e!341567)))

(assert (=> b!565313 (= res!242127 (not (isPrefix!703 lt!238017 input!2705)))))

(declare-fun b!565314 () Bool)

(assert (=> b!565314 (= e!341566 e!341559)))

(declare-fun res!242136 () Bool)

(assert (=> b!565314 (=> (not res!242136) (not e!341559))))

(assert (=> b!565314 (= res!242136 (= lt!238021 lt!238004))))

(assert (=> b!565314 (= lt!238021 (++!1557 lt!237999 suffix!1342))))

(declare-fun b!565315 () Bool)

(assert (=> b!565315 (= e!341573 e!341571)))

(declare-fun res!242128 () Bool)

(assert (=> b!565315 (=> res!242128 e!341571)))

(assert (=> b!565315 (= res!242128 (>= lt!238019 lt!238003))))

(assert (= (and start!52076 res!242139) b!565302))

(assert (= (and b!565302 res!242141) b!565282))

(assert (= (and b!565282 res!242140) b!565301))

(assert (= (and b!565301 res!242134) b!565290))

(assert (= (and b!565290 res!242124) b!565284))

(assert (= (and b!565284 res!242146) b!565306))

(assert (= (and b!565306 res!242130) b!565295))

(assert (= (and b!565295 res!242132) b!565314))

(assert (= (and b!565314 res!242136) b!565291))

(assert (= (and b!565291 c!106176) b!565312))

(assert (= (and b!565291 (not c!106176)) b!565309))

(assert (= (and b!565291 res!242129) b!565300))

(assert (= (and b!565300 res!242144) b!565293))

(assert (= (and b!565291 (not res!242125)) b!565304))

(assert (= (and b!565304 res!242133) b!565297))

(assert (= (and b!565297 res!242131) b!565288))

(assert (= (and b!565304 res!242142) b!565315))

(assert (= (and b!565315 (not res!242128)) b!565311))

(assert (= (and b!565311 res!242123) b!565298))

(assert (= (and b!565304 (not res!242135)) b!565305))

(assert (= (and b!565305 (not res!242145)) b!565292))

(assert (= (and b!565292 (not res!242126)) b!565289))

(assert (= (and b!565289 (not res!242137)) b!565299))

(assert (= (and b!565299 (not res!242138)) b!565287))

(assert (= (and b!565287 (not res!242143)) b!565313))

(assert (= (and b!565313 (not res!242127)) b!565308))

(assert (= (and start!52076 ((_ is Cons!5565) suffix!1342)) b!565310))

(assert (= b!565286 b!565303))

(assert (= b!565296 b!565286))

(assert (= (and start!52076 ((_ is Cons!5566) rules!3103)) b!565296))

(assert (= b!565285 b!565283))

(assert (= b!565307 b!565285))

(assert (= start!52076 b!565307))

(assert (= (and start!52076 ((_ is Cons!5565) input!2705)) b!565294))

(declare-fun m!818669 () Bool)

(assert (=> b!565297 m!818669))

(declare-fun m!818671 () Bool)

(assert (=> b!565289 m!818671))

(declare-fun m!818673 () Bool)

(assert (=> b!565301 m!818673))

(declare-fun m!818675 () Bool)

(assert (=> b!565284 m!818675))

(declare-fun m!818677 () Bool)

(assert (=> b!565284 m!818677))

(declare-fun m!818679 () Bool)

(assert (=> b!565284 m!818679))

(declare-fun m!818681 () Bool)

(assert (=> b!565282 m!818681))

(declare-fun m!818683 () Bool)

(assert (=> b!565314 m!818683))

(declare-fun m!818685 () Bool)

(assert (=> b!565291 m!818685))

(declare-fun m!818687 () Bool)

(assert (=> b!565291 m!818687))

(declare-fun m!818689 () Bool)

(assert (=> b!565291 m!818689))

(declare-fun m!818691 () Bool)

(assert (=> b!565291 m!818691))

(declare-fun m!818693 () Bool)

(assert (=> b!565291 m!818693))

(assert (=> b!565291 m!818693))

(declare-fun m!818695 () Bool)

(assert (=> b!565291 m!818695))

(declare-fun m!818697 () Bool)

(assert (=> b!565291 m!818697))

(declare-fun m!818699 () Bool)

(assert (=> b!565291 m!818699))

(declare-fun m!818701 () Bool)

(assert (=> b!565291 m!818701))

(assert (=> b!565291 m!818697))

(declare-fun m!818703 () Bool)

(assert (=> b!565291 m!818703))

(declare-fun m!818705 () Bool)

(assert (=> b!565291 m!818705))

(declare-fun m!818707 () Bool)

(assert (=> b!565291 m!818707))

(declare-fun m!818709 () Bool)

(assert (=> b!565291 m!818709))

(declare-fun m!818711 () Bool)

(assert (=> b!565291 m!818711))

(declare-fun m!818713 () Bool)

(assert (=> b!565291 m!818713))

(declare-fun m!818715 () Bool)

(assert (=> b!565291 m!818715))

(declare-fun m!818717 () Bool)

(assert (=> b!565291 m!818717))

(declare-fun m!818719 () Bool)

(assert (=> b!565291 m!818719))

(declare-fun m!818721 () Bool)

(assert (=> b!565291 m!818721))

(declare-fun m!818723 () Bool)

(assert (=> b!565291 m!818723))

(declare-fun m!818725 () Bool)

(assert (=> b!565291 m!818725))

(declare-fun m!818727 () Bool)

(assert (=> b!565291 m!818727))

(declare-fun m!818729 () Bool)

(assert (=> b!565291 m!818729))

(declare-fun m!818731 () Bool)

(assert (=> b!565291 m!818731))

(declare-fun m!818733 () Bool)

(assert (=> b!565291 m!818733))

(declare-fun m!818735 () Bool)

(assert (=> b!565291 m!818735))

(declare-fun m!818737 () Bool)

(assert (=> b!565291 m!818737))

(declare-fun m!818739 () Bool)

(assert (=> b!565286 m!818739))

(declare-fun m!818741 () Bool)

(assert (=> b!565286 m!818741))

(declare-fun m!818743 () Bool)

(assert (=> b!565304 m!818743))

(declare-fun m!818745 () Bool)

(assert (=> b!565304 m!818745))

(declare-fun m!818747 () Bool)

(assert (=> b!565304 m!818747))

(declare-fun m!818749 () Bool)

(assert (=> b!565304 m!818749))

(declare-fun m!818751 () Bool)

(assert (=> b!565304 m!818751))

(assert (=> b!565304 m!818745))

(declare-fun m!818753 () Bool)

(assert (=> b!565304 m!818753))

(declare-fun m!818755 () Bool)

(assert (=> b!565304 m!818755))

(declare-fun m!818757 () Bool)

(assert (=> b!565304 m!818757))

(declare-fun m!818759 () Bool)

(assert (=> b!565298 m!818759))

(declare-fun m!818761 () Bool)

(assert (=> b!565308 m!818761))

(declare-fun m!818763 () Bool)

(assert (=> b!565299 m!818763))

(declare-fun m!818765 () Bool)

(assert (=> b!565295 m!818765))

(declare-fun m!818767 () Bool)

(assert (=> b!565300 m!818767))

(declare-fun m!818769 () Bool)

(assert (=> start!52076 m!818769))

(declare-fun m!818771 () Bool)

(assert (=> b!565285 m!818771))

(declare-fun m!818773 () Bool)

(assert (=> b!565285 m!818773))

(declare-fun m!818775 () Bool)

(assert (=> b!565311 m!818775))

(declare-fun m!818777 () Bool)

(assert (=> b!565306 m!818777))

(declare-fun m!818779 () Bool)

(assert (=> b!565307 m!818779))

(declare-fun m!818781 () Bool)

(assert (=> b!565305 m!818781))

(declare-fun m!818783 () Bool)

(assert (=> b!565313 m!818783))

(declare-fun m!818785 () Bool)

(assert (=> b!565302 m!818785))

(declare-fun m!818787 () Bool)

(assert (=> b!565290 m!818787))

(assert (=> b!565290 m!818787))

(declare-fun m!818789 () Bool)

(assert (=> b!565290 m!818789))

(declare-fun m!818791 () Bool)

(assert (=> b!565292 m!818791))

(check-sat (not b!565301) (not b_next!15753) (not b!565305) (not b!565289) (not b!565297) (not b!565314) (not start!52076) (not b_next!15751) (not b!565295) b_and!55111 (not b!565300) (not b!565306) (not b!565311) (not b!565294) (not b!565307) (not b!565310) (not b!565290) tp_is_empty!3161 b_and!55107 (not b!565286) (not b!565302) (not b_next!15755) (not b!565308) (not b!565292) b_and!55109 (not b!565313) (not b!565291) b_and!55113 (not b!565298) (not b!565296) (not b!565285) (not b_next!15749) (not b!565282) (not b!565299) (not b!565304) (not b!565284))
(check-sat (not b_next!15753) b_and!55107 (not b_next!15755) b_and!55109 (not b_next!15751) b_and!55113 (not b_next!15749) b_and!55111)
