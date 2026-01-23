; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373616 () Bool)

(assert start!373616)

(declare-fun b!3970291 () Bool)

(declare-fun b_free!109937 () Bool)

(declare-fun b_next!110641 () Bool)

(assert (=> b!3970291 (= b_free!109937 (not b_next!110641))))

(declare-fun tp!1210425 () Bool)

(declare-fun b_and!305183 () Bool)

(assert (=> b!3970291 (= tp!1210425 b_and!305183)))

(declare-fun b_free!109939 () Bool)

(declare-fun b_next!110643 () Bool)

(assert (=> b!3970291 (= b_free!109939 (not b_next!110643))))

(declare-fun tp!1210415 () Bool)

(declare-fun b_and!305185 () Bool)

(assert (=> b!3970291 (= tp!1210415 b_and!305185)))

(declare-fun b!3970295 () Bool)

(declare-fun b_free!109941 () Bool)

(declare-fun b_next!110645 () Bool)

(assert (=> b!3970295 (= b_free!109941 (not b_next!110645))))

(declare-fun tp!1210426 () Bool)

(declare-fun b_and!305187 () Bool)

(assert (=> b!3970295 (= tp!1210426 b_and!305187)))

(declare-fun b_free!109943 () Bool)

(declare-fun b_next!110647 () Bool)

(assert (=> b!3970295 (= b_free!109943 (not b_next!110647))))

(declare-fun tp!1210423 () Bool)

(declare-fun b_and!305189 () Bool)

(assert (=> b!3970295 (= tp!1210423 b_and!305189)))

(declare-fun b!3970288 () Bool)

(declare-fun res!1607069 () Bool)

(declare-fun e!2459250 () Bool)

(assert (=> b!3970288 (=> (not res!1607069) (not e!2459250))))

(declare-datatypes ((C!23312 0))(
  ( (C!23313 (val!13750 Int)) )
))
(declare-datatypes ((List!42482 0))(
  ( (Nil!42358) (Cons!42358 (h!47778 C!23312) (t!330849 List!42482)) )
))
(declare-fun newSuffix!27 () List!42482)

(declare-fun suffix!1299 () List!42482)

(declare-fun isPrefix!3745 (List!42482 List!42482) Bool)

(assert (=> b!3970288 (= res!1607069 (isPrefix!3745 newSuffix!27 suffix!1299))))

(declare-datatypes ((IArray!25743 0))(
  ( (IArray!25744 (innerList!12929 List!42482)) )
))
(declare-datatypes ((Conc!12869 0))(
  ( (Node!12869 (left!32092 Conc!12869) (right!32422 Conc!12869) (csize!25968 Int) (cheight!13080 Int)) (Leaf!19905 (xs!16175 IArray!25743) (csize!25969 Int)) (Empty!12869) )
))
(declare-datatypes ((BalanceConc!25332 0))(
  ( (BalanceConc!25333 (c!688708 Conc!12869)) )
))
(declare-datatypes ((List!42483 0))(
  ( (Nil!42359) (Cons!42359 (h!47779 (_ BitVec 16)) (t!330850 List!42483)) )
))
(declare-datatypes ((TokenValue!6888 0))(
  ( (FloatLiteralValue!13776 (text!48661 List!42483)) (TokenValueExt!6887 (__x!25993 Int)) (Broken!34440 (value!210361 List!42483)) (Object!7011) (End!6888) (Def!6888) (Underscore!6888) (Match!6888) (Else!6888) (Error!6888) (Case!6888) (If!6888) (Extends!6888) (Abstract!6888) (Class!6888) (Val!6888) (DelimiterValue!13776 (del!6948 List!42483)) (KeywordValue!6894 (value!210362 List!42483)) (CommentValue!13776 (value!210363 List!42483)) (WhitespaceValue!13776 (value!210364 List!42483)) (IndentationValue!6888 (value!210365 List!42483)) (String!48157) (Int32!6888) (Broken!34441 (value!210366 List!42483)) (Boolean!6889) (Unit!61009) (OperatorValue!6891 (op!6948 List!42483)) (IdentifierValue!13776 (value!210367 List!42483)) (IdentifierValue!13777 (value!210368 List!42483)) (WhitespaceValue!13777 (value!210369 List!42483)) (True!13776) (False!13776) (Broken!34442 (value!210370 List!42483)) (Broken!34443 (value!210371 List!42483)) (True!13777) (RightBrace!6888) (RightBracket!6888) (Colon!6888) (Null!6888) (Comma!6888) (LeftBracket!6888) (False!13777) (LeftBrace!6888) (ImaginaryLiteralValue!6888 (text!48662 List!42483)) (StringLiteralValue!20664 (value!210372 List!42483)) (EOFValue!6888 (value!210373 List!42483)) (IdentValue!6888 (value!210374 List!42483)) (DelimiterValue!13777 (value!210375 List!42483)) (DedentValue!6888 (value!210376 List!42483)) (NewLineValue!6888 (value!210377 List!42483)) (IntegerValue!20664 (value!210378 (_ BitVec 32)) (text!48663 List!42483)) (IntegerValue!20665 (value!210379 Int) (text!48664 List!42483)) (Times!6888) (Or!6888) (Equal!6888) (Minus!6888) (Broken!34444 (value!210380 List!42483)) (And!6888) (Div!6888) (LessEqual!6888) (Mod!6888) (Concat!18451) (Not!6888) (Plus!6888) (SpaceValue!6888 (value!210381 List!42483)) (IntegerValue!20666 (value!210382 Int) (text!48665 List!42483)) (StringLiteralValue!20665 (text!48666 List!42483)) (FloatLiteralValue!13777 (text!48667 List!42483)) (BytesLiteralValue!6888 (value!210383 List!42483)) (CommentValue!13777 (value!210384 List!42483)) (StringLiteralValue!20666 (value!210385 List!42483)) (ErrorTokenValue!6888 (msg!6949 List!42483)) )
))
(declare-datatypes ((Regex!11563 0))(
  ( (ElementMatch!11563 (c!688709 C!23312)) (Concat!18452 (regOne!23638 Regex!11563) (regTwo!23638 Regex!11563)) (EmptyExpr!11563) (Star!11563 (reg!11892 Regex!11563)) (EmptyLang!11563) (Union!11563 (regOne!23639 Regex!11563) (regTwo!23639 Regex!11563)) )
))
(declare-datatypes ((String!48158 0))(
  ( (String!48159 (value!210386 String)) )
))
(declare-datatypes ((TokenValueInjection!13204 0))(
  ( (TokenValueInjection!13205 (toValue!9146 Int) (toChars!9005 Int)) )
))
(declare-datatypes ((Rule!13116 0))(
  ( (Rule!13117 (regex!6658 Regex!11563) (tag!7518 String!48158) (isSeparator!6658 Bool) (transformation!6658 TokenValueInjection!13204)) )
))
(declare-datatypes ((Token!12454 0))(
  ( (Token!12455 (value!210387 TokenValue!6888) (rule!9646 Rule!13116) (size!31696 Int) (originalCharacters!7258 List!42482)) )
))
(declare-fun token!484 () Token!12454)

(declare-fun e!2459242 () Bool)

(declare-fun tp!1210417 () Bool)

(declare-fun b!3970289 () Bool)

(declare-fun e!2459243 () Bool)

(declare-fun inv!21 (TokenValue!6888) Bool)

(assert (=> b!3970289 (= e!2459243 (and (inv!21 (value!210387 token!484)) e!2459242 tp!1210417))))

(declare-fun res!1607076 () Bool)

(assert (=> start!373616 (=> (not res!1607076) (not e!2459250))))

(declare-datatypes ((LexerInterface!6247 0))(
  ( (LexerInterfaceExt!6244 (__x!25994 Int)) (Lexer!6245) )
))
(declare-fun thiss!21717 () LexerInterface!6247)

(get-info :version)

(assert (=> start!373616 (= res!1607076 ((_ is Lexer!6245) thiss!21717))))

(assert (=> start!373616 e!2459250))

(declare-fun e!2459245 () Bool)

(assert (=> start!373616 e!2459245))

(declare-fun inv!56606 (Token!12454) Bool)

(assert (=> start!373616 (and (inv!56606 token!484) e!2459243)))

(declare-fun e!2459251 () Bool)

(assert (=> start!373616 e!2459251))

(declare-fun e!2459248 () Bool)

(assert (=> start!373616 e!2459248))

(declare-fun e!2459256 () Bool)

(assert (=> start!373616 e!2459256))

(assert (=> start!373616 true))

(declare-fun e!2459246 () Bool)

(assert (=> start!373616 e!2459246))

(declare-fun e!2459244 () Bool)

(assert (=> start!373616 e!2459244))

(declare-fun b!3970290 () Bool)

(declare-fun res!1607073 () Bool)

(assert (=> b!3970290 (=> (not res!1607073) (not e!2459250))))

(declare-datatypes ((List!42484 0))(
  ( (Nil!42360) (Cons!42360 (h!47780 Rule!13116) (t!330851 List!42484)) )
))
(declare-fun rules!2999 () List!42484)

(declare-fun rulesInvariant!5590 (LexerInterface!6247 List!42484) Bool)

(assert (=> b!3970290 (= res!1607073 (rulesInvariant!5590 thiss!21717 rules!2999))))

(declare-fun e!2459241 () Bool)

(assert (=> b!3970291 (= e!2459241 (and tp!1210425 tp!1210415))))

(declare-fun b!3970292 () Bool)

(declare-fun res!1607071 () Bool)

(assert (=> b!3970292 (=> (not res!1607071) (not e!2459250))))

(declare-fun isEmpty!25346 (List!42484) Bool)

(assert (=> b!3970292 (= res!1607071 (not (isEmpty!25346 rules!2999)))))

(declare-fun b!3970293 () Bool)

(declare-fun tp_is_empty!20097 () Bool)

(declare-fun tp!1210420 () Bool)

(assert (=> b!3970293 (= e!2459245 (and tp_is_empty!20097 tp!1210420))))

(declare-fun e!2459255 () Bool)

(declare-fun e!2459252 () Bool)

(declare-fun tp!1210419 () Bool)

(declare-fun b!3970294 () Bool)

(declare-fun inv!56603 (String!48158) Bool)

(declare-fun inv!56607 (TokenValueInjection!13204) Bool)

(assert (=> b!3970294 (= e!2459255 (and tp!1210419 (inv!56603 (tag!7518 (h!47780 rules!2999))) (inv!56607 (transformation!6658 (h!47780 rules!2999))) e!2459252))))

(assert (=> b!3970295 (= e!2459252 (and tp!1210426 tp!1210423))))

(declare-fun b!3970296 () Bool)

(declare-fun res!1607070 () Bool)

(declare-fun e!2459254 () Bool)

(assert (=> b!3970296 (=> (not res!1607070) (not e!2459254))))

(declare-fun prefix!494 () List!42482)

(declare-fun lt!1390424 () List!42482)

(declare-fun newSuffixResult!27 () List!42482)

(declare-fun ++!11060 (List!42482 List!42482) List!42482)

(assert (=> b!3970296 (= res!1607070 (= (++!11060 lt!1390424 newSuffixResult!27) (++!11060 prefix!494 newSuffix!27)))))

(declare-fun b!3970297 () Bool)

(declare-fun res!1607074 () Bool)

(assert (=> b!3970297 (=> (not res!1607074) (not e!2459254))))

(declare-fun suffixResult!105 () List!42482)

(declare-datatypes ((tuple2!41628 0))(
  ( (tuple2!41629 (_1!23948 Token!12454) (_2!23948 List!42482)) )
))
(declare-datatypes ((Option!9072 0))(
  ( (None!9071) (Some!9071 (v!39419 tuple2!41628)) )
))
(declare-fun maxPrefix!3545 (LexerInterface!6247 List!42484 List!42482) Option!9072)

(assert (=> b!3970297 (= res!1607074 (= (maxPrefix!3545 thiss!21717 rules!2999 (++!11060 prefix!494 suffix!1299)) (Some!9071 (tuple2!41629 token!484 suffixResult!105))))))

(declare-fun b!3970298 () Bool)

(declare-fun tp!1210422 () Bool)

(assert (=> b!3970298 (= e!2459256 (and tp_is_empty!20097 tp!1210422))))

(declare-fun tp!1210414 () Bool)

(declare-fun b!3970299 () Bool)

(assert (=> b!3970299 (= e!2459242 (and tp!1210414 (inv!56603 (tag!7518 (rule!9646 token!484))) (inv!56607 (transformation!6658 (rule!9646 token!484))) e!2459241))))

(declare-fun b!3970300 () Bool)

(declare-fun tp!1210416 () Bool)

(assert (=> b!3970300 (= e!2459244 (and tp_is_empty!20097 tp!1210416))))

(declare-fun b!3970301 () Bool)

(assert (=> b!3970301 (= e!2459254 (not true))))

(declare-fun lt!1390423 () Bool)

(declare-fun rulesValidInductive!2418 (LexerInterface!6247 List!42484) Bool)

(assert (=> b!3970301 (= lt!1390423 (rulesValidInductive!2418 thiss!21717 rules!2999))))

(declare-datatypes ((Unit!61010 0))(
  ( (Unit!61011) )
))
(declare-fun lt!1390425 () Unit!61010)

(declare-fun lemmaInv!873 (TokenValueInjection!13204) Unit!61010)

(assert (=> b!3970301 (= lt!1390425 (lemmaInv!873 (transformation!6658 (rule!9646 token!484))))))

(declare-fun ruleValid!2590 (LexerInterface!6247 Rule!13116) Bool)

(assert (=> b!3970301 (ruleValid!2590 thiss!21717 (rule!9646 token!484))))

(declare-fun lt!1390422 () Unit!61010)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1664 (LexerInterface!6247 Rule!13116 List!42484) Unit!61010)

(assert (=> b!3970301 (= lt!1390422 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1664 thiss!21717 (rule!9646 token!484) rules!2999))))

(declare-fun b!3970302 () Bool)

(assert (=> b!3970302 (= e!2459250 e!2459254)))

(declare-fun res!1607072 () Bool)

(assert (=> b!3970302 (=> (not res!1607072) (not e!2459254))))

(declare-fun size!31697 (List!42482) Int)

(assert (=> b!3970302 (= res!1607072 (>= (size!31697 prefix!494) (size!31697 lt!1390424)))))

(declare-fun list!15718 (BalanceConc!25332) List!42482)

(declare-fun charsOf!4474 (Token!12454) BalanceConc!25332)

(assert (=> b!3970302 (= lt!1390424 (list!15718 (charsOf!4474 token!484)))))

(declare-fun b!3970303 () Bool)

(declare-fun res!1607075 () Bool)

(assert (=> b!3970303 (=> (not res!1607075) (not e!2459250))))

(assert (=> b!3970303 (= res!1607075 (>= (size!31697 suffix!1299) (size!31697 newSuffix!27)))))

(declare-fun b!3970304 () Bool)

(declare-fun tp!1210418 () Bool)

(assert (=> b!3970304 (= e!2459248 (and tp_is_empty!20097 tp!1210418))))

(declare-fun b!3970305 () Bool)

(declare-fun tp!1210421 () Bool)

(assert (=> b!3970305 (= e!2459251 (and tp_is_empty!20097 tp!1210421))))

(declare-fun b!3970306 () Bool)

(declare-fun tp!1210424 () Bool)

(assert (=> b!3970306 (= e!2459246 (and e!2459255 tp!1210424))))

(assert (= (and start!373616 res!1607076) b!3970292))

(assert (= (and b!3970292 res!1607071) b!3970290))

(assert (= (and b!3970290 res!1607073) b!3970303))

(assert (= (and b!3970303 res!1607075) b!3970288))

(assert (= (and b!3970288 res!1607069) b!3970302))

(assert (= (and b!3970302 res!1607072) b!3970296))

(assert (= (and b!3970296 res!1607070) b!3970297))

(assert (= (and b!3970297 res!1607074) b!3970301))

(assert (= (and start!373616 ((_ is Cons!42358) prefix!494)) b!3970293))

(assert (= b!3970299 b!3970291))

(assert (= b!3970289 b!3970299))

(assert (= start!373616 b!3970289))

(assert (= (and start!373616 ((_ is Cons!42358) suffixResult!105)) b!3970305))

(assert (= (and start!373616 ((_ is Cons!42358) suffix!1299)) b!3970304))

(assert (= (and start!373616 ((_ is Cons!42358) newSuffix!27)) b!3970298))

(assert (= b!3970294 b!3970295))

(assert (= b!3970306 b!3970294))

(assert (= (and start!373616 ((_ is Cons!42360) rules!2999)) b!3970306))

(assert (= (and start!373616 ((_ is Cons!42358) newSuffixResult!27)) b!3970300))

(declare-fun m!4540447 () Bool)

(assert (=> b!3970290 m!4540447))

(declare-fun m!4540449 () Bool)

(assert (=> b!3970301 m!4540449))

(declare-fun m!4540451 () Bool)

(assert (=> b!3970301 m!4540451))

(declare-fun m!4540453 () Bool)

(assert (=> b!3970301 m!4540453))

(declare-fun m!4540455 () Bool)

(assert (=> b!3970301 m!4540455))

(declare-fun m!4540457 () Bool)

(assert (=> b!3970297 m!4540457))

(assert (=> b!3970297 m!4540457))

(declare-fun m!4540459 () Bool)

(assert (=> b!3970297 m!4540459))

(declare-fun m!4540461 () Bool)

(assert (=> b!3970302 m!4540461))

(declare-fun m!4540463 () Bool)

(assert (=> b!3970302 m!4540463))

(declare-fun m!4540465 () Bool)

(assert (=> b!3970302 m!4540465))

(assert (=> b!3970302 m!4540465))

(declare-fun m!4540467 () Bool)

(assert (=> b!3970302 m!4540467))

(declare-fun m!4540469 () Bool)

(assert (=> b!3970294 m!4540469))

(declare-fun m!4540471 () Bool)

(assert (=> b!3970294 m!4540471))

(declare-fun m!4540473 () Bool)

(assert (=> start!373616 m!4540473))

(declare-fun m!4540475 () Bool)

(assert (=> b!3970292 m!4540475))

(declare-fun m!4540477 () Bool)

(assert (=> b!3970303 m!4540477))

(declare-fun m!4540479 () Bool)

(assert (=> b!3970303 m!4540479))

(declare-fun m!4540481 () Bool)

(assert (=> b!3970296 m!4540481))

(declare-fun m!4540483 () Bool)

(assert (=> b!3970296 m!4540483))

(declare-fun m!4540485 () Bool)

(assert (=> b!3970299 m!4540485))

(declare-fun m!4540487 () Bool)

(assert (=> b!3970299 m!4540487))

(declare-fun m!4540489 () Bool)

(assert (=> b!3970289 m!4540489))

(declare-fun m!4540491 () Bool)

(assert (=> b!3970288 m!4540491))

(check-sat (not b!3970290) (not b!3970298) (not b!3970304) b_and!305187 (not b_next!110647) (not b!3970296) (not b!3970293) (not b!3970289) (not b_next!110645) (not b!3970288) (not start!373616) tp_is_empty!20097 (not b_next!110643) (not b!3970301) b_and!305189 (not b!3970305) (not b_next!110641) (not b!3970297) b_and!305185 (not b!3970306) (not b!3970302) (not b!3970292) b_and!305183 (not b!3970300) (not b!3970299) (not b!3970303) (not b!3970294))
(check-sat b_and!305187 (not b_next!110643) b_and!305189 (not b_next!110641) b_and!305185 b_and!305183 (not b_next!110647) (not b_next!110645))
