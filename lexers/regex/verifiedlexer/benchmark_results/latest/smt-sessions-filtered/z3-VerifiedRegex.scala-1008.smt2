; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50104 () Bool)

(assert start!50104)

(declare-fun b!543470 () Bool)

(declare-fun b_free!15081 () Bool)

(declare-fun b_next!15097 () Bool)

(assert (=> b!543470 (= b_free!15081 (not b_next!15097))))

(declare-fun tp!172884 () Bool)

(declare-fun b_and!53051 () Bool)

(assert (=> b!543470 (= tp!172884 b_and!53051)))

(declare-fun b_free!15083 () Bool)

(declare-fun b_next!15099 () Bool)

(assert (=> b!543470 (= b_free!15083 (not b_next!15099))))

(declare-fun tp!172890 () Bool)

(declare-fun b_and!53053 () Bool)

(assert (=> b!543470 (= tp!172890 b_and!53053)))

(declare-fun b!543474 () Bool)

(declare-fun b_free!15085 () Bool)

(declare-fun b_next!15101 () Bool)

(assert (=> b!543474 (= b_free!15085 (not b_next!15101))))

(declare-fun tp!172886 () Bool)

(declare-fun b_and!53055 () Bool)

(assert (=> b!543474 (= tp!172886 b_and!53055)))

(declare-fun b_free!15087 () Bool)

(declare-fun b_next!15103 () Bool)

(assert (=> b!543474 (= b_free!15087 (not b_next!15103))))

(declare-fun tp!172885 () Bool)

(declare-fun b_and!53057 () Bool)

(assert (=> b!543474 (= tp!172885 b_and!53057)))

(declare-datatypes ((C!3596 0))(
  ( (C!3597 (val!2024 Int)) )
))
(declare-datatypes ((List!5353 0))(
  ( (Nil!5343) (Cons!5343 (h!10744 C!3596) (t!74510 List!5353)) )
))
(declare-fun suffix!1342 () List!5353)

(declare-fun lt!227299 () List!5353)

(declare-datatypes ((Regex!1337 0))(
  ( (ElementMatch!1337 (c!102634 C!3596)) (Concat!2364 (regOne!3186 Regex!1337) (regTwo!3186 Regex!1337)) (EmptyExpr!1337) (Star!1337 (reg!1666 Regex!1337)) (EmptyLang!1337) (Union!1337 (regOne!3187 Regex!1337) (regTwo!3187 Regex!1337)) )
))
(declare-datatypes ((List!5354 0))(
  ( (Nil!5344) (Cons!5344 (h!10745 (_ BitVec 16)) (t!74511 List!5354)) )
))
(declare-datatypes ((IArray!3441 0))(
  ( (IArray!3442 (innerList!1778 List!5353)) )
))
(declare-datatypes ((Conc!1720 0))(
  ( (Node!1720 (left!4430 Conc!1720) (right!4760 Conc!1720) (csize!3670 Int) (cheight!1931 Int)) (Leaf!2729 (xs!4357 IArray!3441) (csize!3671 Int)) (Empty!1720) )
))
(declare-datatypes ((BalanceConc!3448 0))(
  ( (BalanceConc!3449 (c!102635 Conc!1720)) )
))
(declare-datatypes ((TokenValue!1027 0))(
  ( (FloatLiteralValue!2054 (text!7634 List!5354)) (TokenValueExt!1026 (__x!3952 Int)) (Broken!5135 (value!33426 List!5354)) (Object!1036) (End!1027) (Def!1027) (Underscore!1027) (Match!1027) (Else!1027) (Error!1027) (Case!1027) (If!1027) (Extends!1027) (Abstract!1027) (Class!1027) (Val!1027) (DelimiterValue!2054 (del!1087 List!5354)) (KeywordValue!1033 (value!33427 List!5354)) (CommentValue!2054 (value!33428 List!5354)) (WhitespaceValue!2054 (value!33429 List!5354)) (IndentationValue!1027 (value!33430 List!5354)) (String!6878) (Int32!1027) (Broken!5136 (value!33431 List!5354)) (Boolean!1028) (Unit!9352) (OperatorValue!1030 (op!1087 List!5354)) (IdentifierValue!2054 (value!33432 List!5354)) (IdentifierValue!2055 (value!33433 List!5354)) (WhitespaceValue!2055 (value!33434 List!5354)) (True!2054) (False!2054) (Broken!5137 (value!33435 List!5354)) (Broken!5138 (value!33436 List!5354)) (True!2055) (RightBrace!1027) (RightBracket!1027) (Colon!1027) (Null!1027) (Comma!1027) (LeftBracket!1027) (False!2055) (LeftBrace!1027) (ImaginaryLiteralValue!1027 (text!7635 List!5354)) (StringLiteralValue!3081 (value!33437 List!5354)) (EOFValue!1027 (value!33438 List!5354)) (IdentValue!1027 (value!33439 List!5354)) (DelimiterValue!2055 (value!33440 List!5354)) (DedentValue!1027 (value!33441 List!5354)) (NewLineValue!1027 (value!33442 List!5354)) (IntegerValue!3081 (value!33443 (_ BitVec 32)) (text!7636 List!5354)) (IntegerValue!3082 (value!33444 Int) (text!7637 List!5354)) (Times!1027) (Or!1027) (Equal!1027) (Minus!1027) (Broken!5139 (value!33445 List!5354)) (And!1027) (Div!1027) (LessEqual!1027) (Mod!1027) (Concat!2365) (Not!1027) (Plus!1027) (SpaceValue!1027 (value!33446 List!5354)) (IntegerValue!3083 (value!33447 Int) (text!7638 List!5354)) (StringLiteralValue!3082 (text!7639 List!5354)) (FloatLiteralValue!2055 (text!7640 List!5354)) (BytesLiteralValue!1027 (value!33448 List!5354)) (CommentValue!2055 (value!33449 List!5354)) (StringLiteralValue!3083 (value!33450 List!5354)) (ErrorTokenValue!1027 (msg!1088 List!5354)) )
))
(declare-datatypes ((String!6879 0))(
  ( (String!6880 (value!33451 String)) )
))
(declare-datatypes ((TokenValueInjection!1822 0))(
  ( (TokenValueInjection!1823 (toValue!1850 Int) (toChars!1709 Int)) )
))
(declare-datatypes ((Rule!1806 0))(
  ( (Rule!1807 (regex!1003 Regex!1337) (tag!1265 String!6879) (isSeparator!1003 Bool) (transformation!1003 TokenValueInjection!1822)) )
))
(declare-datatypes ((Token!1742 0))(
  ( (Token!1743 (value!33452 TokenValue!1027) (rule!1715 Rule!1806) (size!4286 Int) (originalCharacters!1042 List!5353)) )
))
(declare-fun token!491 () Token!1742)

(declare-fun lt!227311 () List!5353)

(declare-fun b!543452 () Bool)

(declare-fun lt!227317 () TokenValue!1027)

(declare-fun lt!227308 () Int)

(declare-fun e!328388 () Bool)

(declare-datatypes ((tuple2!6384 0))(
  ( (tuple2!6385 (_1!3456 Token!1742) (_2!3456 List!5353)) )
))
(assert (=> b!543452 (= e!328388 (and (= (size!4286 token!491) lt!227308) (= (originalCharacters!1042 token!491) lt!227299) (= (tuple2!6385 token!491 suffix!1342) (tuple2!6385 (Token!1743 lt!227317 (rule!1715 token!491) lt!227308 lt!227299) lt!227311))))))

(declare-fun b!543453 () Bool)

(declare-fun e!328380 () Bool)

(declare-fun e!328384 () Bool)

(assert (=> b!543453 (= e!328380 e!328384)))

(declare-fun res!231720 () Bool)

(assert (=> b!543453 (=> (not res!231720) (not e!328384))))

(declare-datatypes ((Option!1353 0))(
  ( (None!1352) (Some!1352 (v!16165 tuple2!6384)) )
))
(declare-fun lt!227301 () Option!1353)

(declare-fun isDefined!1165 (Option!1353) Bool)

(assert (=> b!543453 (= res!231720 (isDefined!1165 lt!227301))))

(declare-datatypes ((List!5355 0))(
  ( (Nil!5345) (Cons!5345 (h!10746 Rule!1806) (t!74512 List!5355)) )
))
(declare-fun rules!3103 () List!5355)

(declare-datatypes ((LexerInterface!889 0))(
  ( (LexerInterfaceExt!886 (__x!3953 Int)) (Lexer!887) )
))
(declare-fun thiss!22590 () LexerInterface!889)

(declare-fun lt!227330 () List!5353)

(declare-fun maxPrefix!587 (LexerInterface!889 List!5355 List!5353) Option!1353)

(assert (=> b!543453 (= lt!227301 (maxPrefix!587 thiss!22590 rules!3103 lt!227330))))

(declare-fun input!2705 () List!5353)

(declare-fun ++!1491 (List!5353 List!5353) List!5353)

(assert (=> b!543453 (= lt!227330 (++!1491 input!2705 suffix!1342))))

(declare-fun b!543454 () Bool)

(declare-fun e!328400 () Bool)

(declare-fun rulesValidInductive!348 (LexerInterface!889 List!5355) Bool)

(assert (=> b!543454 (= e!328400 (rulesValidInductive!348 thiss!22590 rules!3103))))

(declare-fun tp!172888 () Bool)

(declare-fun e!328397 () Bool)

(declare-fun b!543455 () Bool)

(declare-fun e!328403 () Bool)

(declare-fun inv!6699 (String!6879) Bool)

(declare-fun inv!6702 (TokenValueInjection!1822) Bool)

(assert (=> b!543455 (= e!328403 (and tp!172888 (inv!6699 (tag!1265 (h!10746 rules!3103))) (inv!6702 (transformation!1003 (h!10746 rules!3103))) e!328397))))

(declare-fun b!543456 () Bool)

(declare-fun res!231703 () Bool)

(declare-fun e!328396 () Bool)

(assert (=> b!543456 (=> (not res!231703) (not e!328396))))

(declare-fun lt!227327 () Option!1353)

(declare-fun size!4287 (List!5353) Int)

(assert (=> b!543456 (= res!231703 (= (size!4286 (_1!3456 (v!16165 lt!227327))) (size!4287 (originalCharacters!1042 (_1!3456 (v!16165 lt!227327))))))))

(declare-fun b!543457 () Bool)

(declare-fun res!231696 () Bool)

(declare-fun e!328399 () Bool)

(assert (=> b!543457 (=> (not res!231696) (not e!328399))))

(declare-fun rulesInvariant!852 (LexerInterface!889 List!5355) Bool)

(assert (=> b!543457 (= res!231696 (rulesInvariant!852 thiss!22590 rules!3103))))

(declare-fun b!543458 () Bool)

(declare-fun e!328389 () Bool)

(declare-fun e!328383 () Bool)

(assert (=> b!543458 (= e!328389 e!328383)))

(declare-fun res!231717 () Bool)

(assert (=> b!543458 (=> (not res!231717) (not e!328383))))

(assert (=> b!543458 (= res!231717 (isDefined!1165 lt!227327))))

(declare-fun b!543459 () Bool)

(declare-fun res!231708 () Bool)

(assert (=> b!543459 (=> res!231708 e!328400)))

(declare-fun lt!227296 () List!5353)

(assert (=> b!543459 (= res!231708 (or (not (= lt!227296 lt!227299)) (not (= (originalCharacters!1042 (_1!3456 (v!16165 lt!227327))) (originalCharacters!1042 token!491)))))))

(declare-fun b!543460 () Bool)

(declare-fun res!231712 () Bool)

(assert (=> b!543460 (=> res!231712 e!328400)))

(declare-fun contains!1245 (List!5355 Rule!1806) Bool)

(assert (=> b!543460 (= res!231712 (not (contains!1245 rules!3103 (rule!1715 (_1!3456 (v!16165 lt!227327))))))))

(declare-fun b!543461 () Bool)

(declare-fun res!231715 () Bool)

(assert (=> b!543461 (=> (not res!231715) (not e!328399))))

(declare-fun isEmpty!3858 (List!5355) Bool)

(assert (=> b!543461 (= res!231715 (not (isEmpty!3858 rules!3103)))))

(declare-fun b!543462 () Bool)

(assert (=> b!543462 (= e!328399 e!328380)))

(declare-fun res!231704 () Bool)

(assert (=> b!543462 (=> (not res!231704) (not e!328380))))

(assert (=> b!543462 (= res!231704 (= lt!227299 input!2705))))

(declare-fun list!2215 (BalanceConc!3448) List!5353)

(declare-fun charsOf!632 (Token!1742) BalanceConc!3448)

(assert (=> b!543462 (= lt!227299 (list!2215 (charsOf!632 token!491)))))

(declare-fun b!543463 () Bool)

(declare-fun lt!227303 () List!5353)

(assert (=> b!543463 (= e!328383 (= lt!227303 (_2!3456 (v!16165 lt!227327))))))

(declare-fun b!543464 () Bool)

(declare-fun res!231711 () Bool)

(assert (=> b!543464 (=> (not res!231711) (not e!328383))))

(declare-fun get!2019 (Option!1353) tuple2!6384)

(assert (=> b!543464 (= res!231711 (= (_1!3456 (get!2019 lt!227327)) (_1!3456 (v!16165 lt!227327))))))

(declare-fun b!543465 () Bool)

(declare-fun res!231718 () Bool)

(assert (=> b!543465 (=> (not res!231718) (not e!328399))))

(declare-fun isEmpty!3859 (List!5353) Bool)

(assert (=> b!543465 (= res!231718 (not (isEmpty!3859 input!2705)))))

(declare-fun b!543466 () Bool)

(declare-fun e!328406 () Bool)

(declare-fun tp!172882 () Bool)

(assert (=> b!543466 (= e!328406 (and e!328403 tp!172882))))

(declare-fun b!543467 () Bool)

(declare-fun e!328385 () Bool)

(declare-fun tp_is_empty!3029 () Bool)

(declare-fun tp!172887 () Bool)

(assert (=> b!543467 (= e!328385 (and tp_is_empty!3029 tp!172887))))

(declare-fun b!543468 () Bool)

(declare-datatypes ((Unit!9353 0))(
  ( (Unit!9354) )
))
(declare-fun e!328398 () Unit!9353)

(declare-fun Unit!9355 () Unit!9353)

(assert (=> b!543468 (= e!328398 Unit!9355)))

(declare-fun b!543469 () Bool)

(declare-fun res!231698 () Bool)

(assert (=> b!543469 (=> res!231698 e!328400)))

(declare-fun getIndex!4 (List!5355 Rule!1806) Int)

(assert (=> b!543469 (= res!231698 (>= (getIndex!4 rules!3103 (rule!1715 (_1!3456 (v!16165 lt!227327)))) (getIndex!4 rules!3103 (rule!1715 token!491))))))

(assert (=> b!543470 (= e!328397 (and tp!172884 tp!172890))))

(declare-fun b!543471 () Bool)

(declare-fun Unit!9356 () Unit!9353)

(assert (=> b!543471 (= e!328398 Unit!9356)))

(declare-fun lt!227306 () Unit!9353)

(declare-fun lt!227322 () BalanceConc!3448)

(declare-fun lemmaSemiInverse!132 (TokenValueInjection!1822 BalanceConc!3448) Unit!9353)

(assert (=> b!543471 (= lt!227306 (lemmaSemiInverse!132 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))) lt!227322))))

(declare-fun lt!227307 () Unit!9353)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!8 (LexerInterface!889 List!5355 Rule!1806 List!5353 List!5353 List!5353 Rule!1806) Unit!9353)

(assert (=> b!543471 (= lt!227307 (lemmaMaxPrefixOutputsMaxPrefix!8 thiss!22590 rules!3103 (rule!1715 (_1!3456 (v!16165 lt!227327))) lt!227296 input!2705 input!2705 (rule!1715 token!491)))))

(declare-fun res!231713 () Bool)

(declare-fun matchR!496 (Regex!1337 List!5353) Bool)

(assert (=> b!543471 (= res!231713 (not (matchR!496 (regex!1003 (rule!1715 token!491)) input!2705)))))

(declare-fun e!328405 () Bool)

(assert (=> b!543471 (=> (not res!231713) (not e!328405))))

(assert (=> b!543471 e!328405))

(declare-fun b!543472 () Bool)

(declare-fun res!231714 () Bool)

(assert (=> b!543472 (=> res!231714 e!328400)))

(assert (=> b!543472 (= res!231714 (= (rule!1715 (_1!3456 (v!16165 lt!227327))) (rule!1715 token!491)))))

(declare-fun b!543473 () Bool)

(declare-fun res!231710 () Bool)

(assert (=> b!543473 (=> res!231710 e!328400)))

(assert (=> b!543473 (= res!231710 (not (contains!1245 rules!3103 (rule!1715 token!491))))))

(declare-fun e!328395 () Bool)

(assert (=> b!543474 (= e!328395 (and tp!172886 tp!172885))))

(declare-fun b!543475 () Bool)

(declare-fun tp!172883 () Bool)

(declare-fun e!328392 () Bool)

(declare-fun e!328401 () Bool)

(declare-fun inv!21 (TokenValue!1027) Bool)

(assert (=> b!543475 (= e!328401 (and (inv!21 (value!33452 token!491)) e!328392 tp!172883))))

(declare-fun b!543476 () Bool)

(declare-fun e!328391 () Bool)

(assert (=> b!543476 (= e!328384 e!328391)))

(declare-fun res!231705 () Bool)

(assert (=> b!543476 (=> (not res!231705) (not e!328391))))

(declare-fun lt!227298 () tuple2!6384)

(assert (=> b!543476 (= res!231705 (and (= (_1!3456 lt!227298) token!491) (= (_2!3456 lt!227298) suffix!1342)))))

(assert (=> b!543476 (= lt!227298 (get!2019 lt!227301))))

(declare-fun b!543477 () Bool)

(declare-fun res!231716 () Bool)

(assert (=> b!543477 (=> res!231716 e!328400)))

(assert (=> b!543477 (= res!231716 (not (isEmpty!3859 (_2!3456 (v!16165 lt!227327)))))))

(declare-fun b!543478 () Bool)

(declare-fun res!231697 () Bool)

(assert (=> b!543478 (=> (not res!231697) (not e!328388))))

(assert (=> b!543478 (= res!231697 (= (size!4286 token!491) (size!4287 (originalCharacters!1042 token!491))))))

(declare-fun lt!227309 () TokenValue!1027)

(declare-fun b!543479 () Bool)

(declare-fun lt!227295 () Int)

(declare-fun lt!227320 () tuple2!6384)

(assert (=> b!543479 (= e!328396 (and (= (size!4286 (_1!3456 (v!16165 lt!227327))) lt!227295) (= (originalCharacters!1042 (_1!3456 (v!16165 lt!227327))) lt!227296) (= lt!227320 (tuple2!6385 (Token!1743 lt!227309 (rule!1715 (_1!3456 (v!16165 lt!227327))) lt!227295 lt!227296) lt!227303))))))

(declare-fun b!543480 () Bool)

(declare-fun e!328393 () Bool)

(declare-fun tp!172889 () Bool)

(assert (=> b!543480 (= e!328393 (and tp_is_empty!3029 tp!172889))))

(declare-fun b!543481 () Bool)

(declare-fun e!328402 () Unit!9353)

(declare-fun Unit!9357 () Unit!9353)

(assert (=> b!543481 (= e!328402 Unit!9357)))

(declare-fun b!543482 () Bool)

(declare-fun e!328394 () Bool)

(assert (=> b!543482 (= e!328394 e!328400)))

(declare-fun res!231701 () Bool)

(assert (=> b!543482 (=> res!231701 e!328400)))

(declare-fun lt!227300 () List!5353)

(assert (=> b!543482 (= res!231701 (or (not (= lt!227295 lt!227308)) (not (= lt!227300 input!2705)) (not (= lt!227300 lt!227299))))))

(declare-fun lt!227310 () Unit!9353)

(declare-fun lt!227318 () BalanceConc!3448)

(assert (=> b!543482 (= lt!227310 (lemmaSemiInverse!132 (transformation!1003 (rule!1715 token!491)) lt!227318))))

(declare-fun lt!227297 () Unit!9353)

(assert (=> b!543482 (= lt!227297 (lemmaSemiInverse!132 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))) lt!227322))))

(declare-fun lt!227304 () Unit!9353)

(assert (=> b!543482 (= lt!227304 e!328398)))

(declare-fun c!102632 () Bool)

(assert (=> b!543482 (= c!102632 (< lt!227295 lt!227308))))

(declare-fun e!328382 () Bool)

(assert (=> b!543482 e!328382))

(declare-fun res!231702 () Bool)

(assert (=> b!543482 (=> (not res!231702) (not e!328382))))

(declare-fun maxPrefixOneRule!302 (LexerInterface!889 Rule!1806 List!5353) Option!1353)

(assert (=> b!543482 (= res!231702 (= (maxPrefixOneRule!302 thiss!22590 (rule!1715 token!491) lt!227330) (Some!1352 (tuple2!6385 (Token!1743 lt!227317 (rule!1715 token!491) lt!227308 lt!227299) suffix!1342))))))

(declare-fun lt!227326 () Unit!9353)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!54 (LexerInterface!889 List!5355 List!5353 List!5353 List!5353 Rule!1806) Unit!9353)

(assert (=> b!543482 (= lt!227326 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!54 thiss!22590 rules!3103 lt!227299 lt!227330 suffix!1342 (rule!1715 token!491)))))

(assert (=> b!543482 (= (maxPrefixOneRule!302 thiss!22590 (rule!1715 (_1!3456 (v!16165 lt!227327))) input!2705) (Some!1352 (tuple2!6385 (Token!1743 lt!227309 (rule!1715 (_1!3456 (v!16165 lt!227327))) lt!227295 lt!227296) (_2!3456 (v!16165 lt!227327)))))))

(declare-fun lt!227294 () Unit!9353)

(assert (=> b!543482 (= lt!227294 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!54 thiss!22590 rules!3103 lt!227296 input!2705 (_2!3456 (v!16165 lt!227327)) (rule!1715 (_1!3456 (v!16165 lt!227327)))))))

(assert (=> b!543482 e!328388))

(declare-fun res!231719 () Bool)

(assert (=> b!543482 (=> (not res!231719) (not e!328388))))

(assert (=> b!543482 (= res!231719 (= (value!33452 token!491) lt!227317))))

(declare-fun apply!1278 (TokenValueInjection!1822 BalanceConc!3448) TokenValue!1027)

(assert (=> b!543482 (= lt!227317 (apply!1278 (transformation!1003 (rule!1715 token!491)) lt!227318))))

(declare-fun seqFromList!1201 (List!5353) BalanceConc!3448)

(assert (=> b!543482 (= lt!227318 (seqFromList!1201 lt!227299))))

(assert (=> b!543482 (= suffix!1342 lt!227311)))

(declare-fun lt!227319 () Unit!9353)

(declare-fun lemmaSamePrefixThenSameSuffix!372 (List!5353 List!5353 List!5353 List!5353 List!5353) Unit!9353)

(assert (=> b!543482 (= lt!227319 (lemmaSamePrefixThenSameSuffix!372 lt!227299 suffix!1342 lt!227299 lt!227311 lt!227330))))

(declare-fun getSuffix!168 (List!5353 List!5353) List!5353)

(assert (=> b!543482 (= lt!227311 (getSuffix!168 lt!227330 lt!227299))))

(declare-fun b!543483 () Bool)

(declare-fun e!328381 () Bool)

(assert (=> b!543483 (= e!328381 (not e!328394))))

(declare-fun res!231709 () Bool)

(assert (=> b!543483 (=> res!231709 e!328394)))

(declare-fun lt!227329 () List!5353)

(declare-fun isPrefix!645 (List!5353 List!5353) Bool)

(assert (=> b!543483 (= res!231709 (not (isPrefix!645 input!2705 lt!227329)))))

(assert (=> b!543483 (isPrefix!645 lt!227299 lt!227329)))

(declare-fun lt!227328 () Unit!9353)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!496 (List!5353 List!5353) Unit!9353)

(assert (=> b!543483 (= lt!227328 (lemmaConcatTwoListThenFirstIsPrefix!496 lt!227299 suffix!1342))))

(assert (=> b!543483 (isPrefix!645 input!2705 lt!227330)))

(declare-fun lt!227305 () Unit!9353)

(assert (=> b!543483 (= lt!227305 (lemmaConcatTwoListThenFirstIsPrefix!496 input!2705 suffix!1342))))

(assert (=> b!543483 e!328396))

(declare-fun res!231700 () Bool)

(assert (=> b!543483 (=> (not res!231700) (not e!328396))))

(assert (=> b!543483 (= res!231700 (= (value!33452 (_1!3456 (v!16165 lt!227327))) lt!227309))))

(assert (=> b!543483 (= lt!227309 (apply!1278 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))) lt!227322))))

(assert (=> b!543483 (= lt!227322 (seqFromList!1201 lt!227296))))

(declare-fun lt!227313 () Unit!9353)

(declare-fun lemmaInv!151 (TokenValueInjection!1822) Unit!9353)

(assert (=> b!543483 (= lt!227313 (lemmaInv!151 (transformation!1003 (rule!1715 token!491))))))

(declare-fun lt!227314 () Unit!9353)

(assert (=> b!543483 (= lt!227314 (lemmaInv!151 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))))))

(declare-fun ruleValid!223 (LexerInterface!889 Rule!1806) Bool)

(assert (=> b!543483 (ruleValid!223 thiss!22590 (rule!1715 token!491))))

(declare-fun lt!227302 () Unit!9353)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!82 (LexerInterface!889 Rule!1806 List!5355) Unit!9353)

(assert (=> b!543483 (= lt!227302 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!82 thiss!22590 (rule!1715 token!491) rules!3103))))

(assert (=> b!543483 (ruleValid!223 thiss!22590 (rule!1715 (_1!3456 (v!16165 lt!227327))))))

(declare-fun lt!227315 () Unit!9353)

(assert (=> b!543483 (= lt!227315 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!82 thiss!22590 (rule!1715 (_1!3456 (v!16165 lt!227327))) rules!3103))))

(assert (=> b!543483 (isPrefix!645 input!2705 input!2705)))

(declare-fun lt!227321 () Unit!9353)

(declare-fun lemmaIsPrefixRefl!385 (List!5353 List!5353) Unit!9353)

(assert (=> b!543483 (= lt!227321 (lemmaIsPrefixRefl!385 input!2705 input!2705))))

(assert (=> b!543483 (= (_2!3456 (v!16165 lt!227327)) lt!227303)))

(declare-fun lt!227324 () Unit!9353)

(assert (=> b!543483 (= lt!227324 (lemmaSamePrefixThenSameSuffix!372 lt!227296 (_2!3456 (v!16165 lt!227327)) lt!227296 lt!227303 input!2705))))

(assert (=> b!543483 (= lt!227303 (getSuffix!168 input!2705 lt!227296))))

(assert (=> b!543483 (isPrefix!645 lt!227296 lt!227300)))

(assert (=> b!543483 (= lt!227300 (++!1491 lt!227296 (_2!3456 (v!16165 lt!227327))))))

(declare-fun lt!227312 () Unit!9353)

(assert (=> b!543483 (= lt!227312 (lemmaConcatTwoListThenFirstIsPrefix!496 lt!227296 (_2!3456 (v!16165 lt!227327))))))

(declare-fun lt!227323 () Unit!9353)

(declare-fun lemmaCharactersSize!82 (Token!1742) Unit!9353)

(assert (=> b!543483 (= lt!227323 (lemmaCharactersSize!82 token!491))))

(declare-fun lt!227325 () Unit!9353)

(assert (=> b!543483 (= lt!227325 (lemmaCharactersSize!82 (_1!3456 (v!16165 lt!227327))))))

(declare-fun lt!227331 () Unit!9353)

(assert (=> b!543483 (= lt!227331 e!328402)))

(declare-fun c!102633 () Bool)

(assert (=> b!543483 (= c!102633 (> lt!227295 lt!227308))))

(assert (=> b!543483 (= lt!227308 (size!4287 lt!227299))))

(assert (=> b!543483 (= lt!227295 (size!4287 lt!227296))))

(assert (=> b!543483 (= lt!227296 (list!2215 (charsOf!632 (_1!3456 (v!16165 lt!227327)))))))

(assert (=> b!543483 (= lt!227327 (Some!1352 lt!227320))))

(assert (=> b!543483 (= lt!227320 (tuple2!6385 (_1!3456 (v!16165 lt!227327)) (_2!3456 (v!16165 lt!227327))))))

(declare-fun lt!227316 () Unit!9353)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!88 (List!5353 List!5353 List!5353 List!5353) Unit!9353)

(assert (=> b!543483 (= lt!227316 (lemmaConcatSameAndSameSizesThenSameLists!88 lt!227299 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!543484 () Bool)

(declare-fun Unit!9358 () Unit!9353)

(assert (=> b!543484 (= e!328402 Unit!9358)))

(assert (=> b!543484 false))

(declare-fun b!543485 () Bool)

(assert (=> b!543485 (= e!328382 e!328389)))

(declare-fun res!231707 () Bool)

(assert (=> b!543485 (=> res!231707 e!328389)))

(assert (=> b!543485 (= res!231707 (>= lt!227295 lt!227308))))

(declare-fun b!543486 () Bool)

(declare-fun e!328404 () Bool)

(assert (=> b!543486 (= e!328391 e!328404)))

(declare-fun res!231695 () Bool)

(assert (=> b!543486 (=> (not res!231695) (not e!328404))))

(get-info :version)

(assert (=> b!543486 (= res!231695 ((_ is Some!1352) lt!227327))))

(assert (=> b!543486 (= lt!227327 (maxPrefix!587 thiss!22590 rules!3103 input!2705))))

(declare-fun b!543487 () Bool)

(declare-fun tp!172881 () Bool)

(assert (=> b!543487 (= e!328392 (and tp!172881 (inv!6699 (tag!1265 (rule!1715 token!491))) (inv!6702 (transformation!1003 (rule!1715 token!491))) e!328395))))

(declare-fun b!543488 () Bool)

(assert (=> b!543488 (= e!328405 false)))

(declare-fun b!543489 () Bool)

(assert (=> b!543489 (= e!328404 e!328381)))

(declare-fun res!231699 () Bool)

(assert (=> b!543489 (=> (not res!231699) (not e!328381))))

(assert (=> b!543489 (= res!231699 (= lt!227329 lt!227330))))

(assert (=> b!543489 (= lt!227329 (++!1491 lt!227299 suffix!1342))))

(declare-fun res!231706 () Bool)

(assert (=> start!50104 (=> (not res!231706) (not e!328399))))

(assert (=> start!50104 (= res!231706 ((_ is Lexer!887) thiss!22590))))

(assert (=> start!50104 e!328399))

(assert (=> start!50104 e!328385))

(assert (=> start!50104 e!328406))

(declare-fun inv!6703 (Token!1742) Bool)

(assert (=> start!50104 (and (inv!6703 token!491) e!328401)))

(assert (=> start!50104 true))

(assert (=> start!50104 e!328393))

(assert (= (and start!50104 res!231706) b!543461))

(assert (= (and b!543461 res!231715) b!543457))

(assert (= (and b!543457 res!231696) b!543465))

(assert (= (and b!543465 res!231718) b!543462))

(assert (= (and b!543462 res!231704) b!543453))

(assert (= (and b!543453 res!231720) b!543476))

(assert (= (and b!543476 res!231705) b!543486))

(assert (= (and b!543486 res!231695) b!543489))

(assert (= (and b!543489 res!231699) b!543483))

(assert (= (and b!543483 c!102633) b!543484))

(assert (= (and b!543483 (not c!102633)) b!543481))

(assert (= (and b!543483 res!231700) b!543456))

(assert (= (and b!543456 res!231703) b!543479))

(assert (= (and b!543483 (not res!231709)) b!543482))

(assert (= (and b!543482 res!231719) b!543478))

(assert (= (and b!543478 res!231697) b!543452))

(assert (= (and b!543482 res!231702) b!543485))

(assert (= (and b!543485 (not res!231707)) b!543458))

(assert (= (and b!543458 res!231717) b!543464))

(assert (= (and b!543464 res!231711) b!543463))

(assert (= (and b!543482 c!102632) b!543471))

(assert (= (and b!543482 (not c!102632)) b!543468))

(assert (= (and b!543471 res!231713) b!543488))

(assert (= (and b!543482 (not res!231701)) b!543477))

(assert (= (and b!543477 (not res!231716)) b!543459))

(assert (= (and b!543459 (not res!231708)) b!543460))

(assert (= (and b!543460 (not res!231712)) b!543473))

(assert (= (and b!543473 (not res!231710)) b!543472))

(assert (= (and b!543472 (not res!231714)) b!543469))

(assert (= (and b!543469 (not res!231698)) b!543454))

(assert (= (and start!50104 ((_ is Cons!5343) suffix!1342)) b!543467))

(assert (= b!543455 b!543470))

(assert (= b!543466 b!543455))

(assert (= (and start!50104 ((_ is Cons!5345) rules!3103)) b!543466))

(assert (= b!543487 b!543474))

(assert (= b!543475 b!543487))

(assert (= start!50104 b!543475))

(assert (= (and start!50104 ((_ is Cons!5343) input!2705)) b!543480))

(declare-fun m!791551 () Bool)

(assert (=> b!543460 m!791551))

(declare-fun m!791553 () Bool)

(assert (=> b!543476 m!791553))

(declare-fun m!791555 () Bool)

(assert (=> b!543482 m!791555))

(declare-fun m!791557 () Bool)

(assert (=> b!543482 m!791557))

(declare-fun m!791559 () Bool)

(assert (=> b!543482 m!791559))

(declare-fun m!791561 () Bool)

(assert (=> b!543482 m!791561))

(declare-fun m!791563 () Bool)

(assert (=> b!543482 m!791563))

(declare-fun m!791565 () Bool)

(assert (=> b!543482 m!791565))

(declare-fun m!791567 () Bool)

(assert (=> b!543482 m!791567))

(declare-fun m!791569 () Bool)

(assert (=> b!543482 m!791569))

(declare-fun m!791571 () Bool)

(assert (=> b!543482 m!791571))

(declare-fun m!791573 () Bool)

(assert (=> b!543482 m!791573))

(declare-fun m!791575 () Bool)

(assert (=> b!543477 m!791575))

(assert (=> b!543471 m!791565))

(declare-fun m!791577 () Bool)

(assert (=> b!543471 m!791577))

(declare-fun m!791579 () Bool)

(assert (=> b!543471 m!791579))

(declare-fun m!791581 () Bool)

(assert (=> start!50104 m!791581))

(declare-fun m!791583 () Bool)

(assert (=> b!543469 m!791583))

(declare-fun m!791585 () Bool)

(assert (=> b!543469 m!791585))

(declare-fun m!791587 () Bool)

(assert (=> b!543456 m!791587))

(declare-fun m!791589 () Bool)

(assert (=> b!543487 m!791589))

(declare-fun m!791591 () Bool)

(assert (=> b!543487 m!791591))

(declare-fun m!791593 () Bool)

(assert (=> b!543483 m!791593))

(declare-fun m!791595 () Bool)

(assert (=> b!543483 m!791595))

(declare-fun m!791597 () Bool)

(assert (=> b!543483 m!791597))

(declare-fun m!791599 () Bool)

(assert (=> b!543483 m!791599))

(declare-fun m!791601 () Bool)

(assert (=> b!543483 m!791601))

(declare-fun m!791603 () Bool)

(assert (=> b!543483 m!791603))

(declare-fun m!791605 () Bool)

(assert (=> b!543483 m!791605))

(declare-fun m!791607 () Bool)

(assert (=> b!543483 m!791607))

(declare-fun m!791609 () Bool)

(assert (=> b!543483 m!791609))

(declare-fun m!791611 () Bool)

(assert (=> b!543483 m!791611))

(assert (=> b!543483 m!791599))

(declare-fun m!791613 () Bool)

(assert (=> b!543483 m!791613))

(declare-fun m!791615 () Bool)

(assert (=> b!543483 m!791615))

(declare-fun m!791617 () Bool)

(assert (=> b!543483 m!791617))

(declare-fun m!791619 () Bool)

(assert (=> b!543483 m!791619))

(declare-fun m!791621 () Bool)

(assert (=> b!543483 m!791621))

(declare-fun m!791623 () Bool)

(assert (=> b!543483 m!791623))

(declare-fun m!791625 () Bool)

(assert (=> b!543483 m!791625))

(declare-fun m!791627 () Bool)

(assert (=> b!543483 m!791627))

(declare-fun m!791629 () Bool)

(assert (=> b!543483 m!791629))

(declare-fun m!791631 () Bool)

(assert (=> b!543483 m!791631))

(declare-fun m!791633 () Bool)

(assert (=> b!543483 m!791633))

(declare-fun m!791635 () Bool)

(assert (=> b!543483 m!791635))

(declare-fun m!791637 () Bool)

(assert (=> b!543483 m!791637))

(declare-fun m!791639 () Bool)

(assert (=> b!543483 m!791639))

(declare-fun m!791641 () Bool)

(assert (=> b!543483 m!791641))

(declare-fun m!791643 () Bool)

(assert (=> b!543483 m!791643))

(declare-fun m!791645 () Bool)

(assert (=> b!543483 m!791645))

(declare-fun m!791647 () Bool)

(assert (=> b!543462 m!791647))

(assert (=> b!543462 m!791647))

(declare-fun m!791649 () Bool)

(assert (=> b!543462 m!791649))

(declare-fun m!791651 () Bool)

(assert (=> b!543464 m!791651))

(declare-fun m!791653 () Bool)

(assert (=> b!543475 m!791653))

(declare-fun m!791655 () Bool)

(assert (=> b!543465 m!791655))

(declare-fun m!791657 () Bool)

(assert (=> b!543478 m!791657))

(declare-fun m!791659 () Bool)

(assert (=> b!543454 m!791659))

(declare-fun m!791661 () Bool)

(assert (=> b!543458 m!791661))

(declare-fun m!791663 () Bool)

(assert (=> b!543473 m!791663))

(declare-fun m!791665 () Bool)

(assert (=> b!543455 m!791665))

(declare-fun m!791667 () Bool)

(assert (=> b!543455 m!791667))

(declare-fun m!791669 () Bool)

(assert (=> b!543453 m!791669))

(declare-fun m!791671 () Bool)

(assert (=> b!543453 m!791671))

(declare-fun m!791673 () Bool)

(assert (=> b!543453 m!791673))

(declare-fun m!791675 () Bool)

(assert (=> b!543457 m!791675))

(declare-fun m!791677 () Bool)

(assert (=> b!543461 m!791677))

(declare-fun m!791679 () Bool)

(assert (=> b!543486 m!791679))

(declare-fun m!791681 () Bool)

(assert (=> b!543489 m!791681))

(check-sat (not b_next!15097) (not b!543477) b_and!53053 (not b!543464) (not b!543469) (not b!543453) (not b!543458) (not b!543473) tp_is_empty!3029 b_and!53051 (not b_next!15101) (not b!543466) (not b!543455) (not b!543480) (not b!543454) (not b!543482) (not b!543478) (not b!543456) (not b!543457) (not b!543462) b_and!53057 (not b!543460) (not b!543461) (not b!543467) (not b!543465) (not b!543487) (not b!543471) (not b!543489) (not b!543476) b_and!53055 (not b_next!15099) (not start!50104) (not b!543483) (not b!543486) (not b_next!15103) (not b!543475))
(check-sat (not b_next!15097) b_and!53053 b_and!53057 (not b_next!15103) b_and!53051 (not b_next!15101) b_and!53055 (not b_next!15099))
(get-model)

(declare-fun b!543501 () Bool)

(declare-fun e!328411 () Bool)

(declare-fun lt!227334 () List!5353)

(assert (=> b!543501 (= e!328411 (or (not (= suffix!1342 Nil!5343)) (= lt!227334 lt!227299)))))

(declare-fun b!543498 () Bool)

(declare-fun e!328412 () List!5353)

(assert (=> b!543498 (= e!328412 suffix!1342)))

(declare-fun b!543500 () Bool)

(declare-fun res!231730 () Bool)

(assert (=> b!543500 (=> (not res!231730) (not e!328411))))

(assert (=> b!543500 (= res!231730 (= (size!4287 lt!227334) (+ (size!4287 lt!227299) (size!4287 suffix!1342))))))

(declare-fun d!190669 () Bool)

(assert (=> d!190669 e!328411))

(declare-fun res!231729 () Bool)

(assert (=> d!190669 (=> (not res!231729) (not e!328411))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!928 (List!5353) (InoxSet C!3596))

(assert (=> d!190669 (= res!231729 (= (content!928 lt!227334) ((_ map or) (content!928 lt!227299) (content!928 suffix!1342))))))

(assert (=> d!190669 (= lt!227334 e!328412)))

(declare-fun c!102638 () Bool)

(assert (=> d!190669 (= c!102638 ((_ is Nil!5343) lt!227299))))

(assert (=> d!190669 (= (++!1491 lt!227299 suffix!1342) lt!227334)))

(declare-fun b!543499 () Bool)

(assert (=> b!543499 (= e!328412 (Cons!5343 (h!10744 lt!227299) (++!1491 (t!74510 lt!227299) suffix!1342)))))

(assert (= (and d!190669 c!102638) b!543498))

(assert (= (and d!190669 (not c!102638)) b!543499))

(assert (= (and d!190669 res!231729) b!543500))

(assert (= (and b!543500 res!231730) b!543501))

(declare-fun m!791683 () Bool)

(assert (=> b!543500 m!791683))

(assert (=> b!543500 m!791611))

(declare-fun m!791685 () Bool)

(assert (=> b!543500 m!791685))

(declare-fun m!791687 () Bool)

(assert (=> d!190669 m!791687))

(declare-fun m!791689 () Bool)

(assert (=> d!190669 m!791689))

(declare-fun m!791691 () Bool)

(assert (=> d!190669 m!791691))

(declare-fun m!791693 () Bool)

(assert (=> b!543499 m!791693))

(assert (=> b!543489 d!190669))

(declare-fun b!543517 () Bool)

(declare-fun e!328420 () Int)

(assert (=> b!543517 (= e!328420 (- 1))))

(declare-fun b!543516 () Bool)

(assert (=> b!543516 (= e!328420 (+ 1 (getIndex!4 (t!74512 rules!3103) (rule!1715 (_1!3456 (v!16165 lt!227327))))))))

(declare-fun b!543515 () Bool)

(declare-fun e!328421 () Int)

(assert (=> b!543515 (= e!328421 e!328420)))

(declare-fun c!102645 () Bool)

(assert (=> b!543515 (= c!102645 (and ((_ is Cons!5345) rules!3103) (not (= (h!10746 rules!3103) (rule!1715 (_1!3456 (v!16165 lt!227327)))))))))

(declare-fun b!543514 () Bool)

(assert (=> b!543514 (= e!328421 0)))

(declare-fun d!190671 () Bool)

(declare-fun lt!227339 () Int)

(assert (=> d!190671 (>= lt!227339 0)))

(assert (=> d!190671 (= lt!227339 e!328421)))

(declare-fun c!102646 () Bool)

(assert (=> d!190671 (= c!102646 (and ((_ is Cons!5345) rules!3103) (= (h!10746 rules!3103) (rule!1715 (_1!3456 (v!16165 lt!227327))))))))

(assert (=> d!190671 (contains!1245 rules!3103 (rule!1715 (_1!3456 (v!16165 lt!227327))))))

(assert (=> d!190671 (= (getIndex!4 rules!3103 (rule!1715 (_1!3456 (v!16165 lt!227327)))) lt!227339)))

(assert (= (and d!190671 c!102646) b!543514))

(assert (= (and d!190671 (not c!102646)) b!543515))

(assert (= (and b!543515 c!102645) b!543516))

(assert (= (and b!543515 (not c!102645)) b!543517))

(declare-fun m!791695 () Bool)

(assert (=> b!543516 m!791695))

(assert (=> d!190671 m!791551))

(assert (=> b!543469 d!190671))

(declare-fun b!543523 () Bool)

(declare-fun e!328423 () Int)

(assert (=> b!543523 (= e!328423 (- 1))))

(declare-fun b!543522 () Bool)

(assert (=> b!543522 (= e!328423 (+ 1 (getIndex!4 (t!74512 rules!3103) (rule!1715 token!491))))))

(declare-fun b!543521 () Bool)

(declare-fun e!328424 () Int)

(assert (=> b!543521 (= e!328424 e!328423)))

(declare-fun c!102648 () Bool)

(assert (=> b!543521 (= c!102648 (and ((_ is Cons!5345) rules!3103) (not (= (h!10746 rules!3103) (rule!1715 token!491)))))))

(declare-fun b!543520 () Bool)

(assert (=> b!543520 (= e!328424 0)))

(declare-fun d!190675 () Bool)

(declare-fun lt!227341 () Int)

(assert (=> d!190675 (>= lt!227341 0)))

(assert (=> d!190675 (= lt!227341 e!328424)))

(declare-fun c!102649 () Bool)

(assert (=> d!190675 (= c!102649 (and ((_ is Cons!5345) rules!3103) (= (h!10746 rules!3103) (rule!1715 token!491))))))

(assert (=> d!190675 (contains!1245 rules!3103 (rule!1715 token!491))))

(assert (=> d!190675 (= (getIndex!4 rules!3103 (rule!1715 token!491)) lt!227341)))

(assert (= (and d!190675 c!102649) b!543520))

(assert (= (and d!190675 (not c!102649)) b!543521))

(assert (= (and b!543521 c!102648) b!543522))

(assert (= (and b!543521 (not c!102648)) b!543523))

(declare-fun m!791699 () Bool)

(assert (=> b!543522 m!791699))

(assert (=> d!190675 m!791663))

(assert (=> b!543469 d!190675))

(declare-fun d!190679 () Bool)

(assert (=> d!190679 (= (isEmpty!3859 input!2705) ((_ is Nil!5343) input!2705))))

(assert (=> b!543465 d!190679))

(declare-fun b!543548 () Bool)

(declare-fun res!231759 () Bool)

(declare-fun e!328439 () Bool)

(assert (=> b!543548 (=> (not res!231759) (not e!328439))))

(declare-fun lt!227355 () Option!1353)

(assert (=> b!543548 (= res!231759 (= (++!1491 (list!2215 (charsOf!632 (_1!3456 (get!2019 lt!227355)))) (_2!3456 (get!2019 lt!227355))) input!2705))))

(declare-fun b!543549 () Bool)

(declare-fun res!231755 () Bool)

(assert (=> b!543549 (=> (not res!231755) (not e!328439))))

(assert (=> b!543549 (= res!231755 (< (size!4287 (_2!3456 (get!2019 lt!227355))) (size!4287 input!2705)))))

(declare-fun b!543550 () Bool)

(declare-fun res!231757 () Bool)

(assert (=> b!543550 (=> (not res!231757) (not e!328439))))

(assert (=> b!543550 (= res!231757 (matchR!496 (regex!1003 (rule!1715 (_1!3456 (get!2019 lt!227355)))) (list!2215 (charsOf!632 (_1!3456 (get!2019 lt!227355))))))))

(declare-fun d!190681 () Bool)

(declare-fun e!328437 () Bool)

(assert (=> d!190681 e!328437))

(declare-fun res!231760 () Bool)

(assert (=> d!190681 (=> res!231760 e!328437)))

(declare-fun isEmpty!3861 (Option!1353) Bool)

(assert (=> d!190681 (= res!231760 (isEmpty!3861 lt!227355))))

(declare-fun e!328438 () Option!1353)

(assert (=> d!190681 (= lt!227355 e!328438)))

(declare-fun c!102653 () Bool)

(assert (=> d!190681 (= c!102653 (and ((_ is Cons!5345) rules!3103) ((_ is Nil!5345) (t!74512 rules!3103))))))

(declare-fun lt!227357 () Unit!9353)

(declare-fun lt!227356 () Unit!9353)

(assert (=> d!190681 (= lt!227357 lt!227356)))

(assert (=> d!190681 (isPrefix!645 input!2705 input!2705)))

(assert (=> d!190681 (= lt!227356 (lemmaIsPrefixRefl!385 input!2705 input!2705))))

(assert (=> d!190681 (rulesValidInductive!348 thiss!22590 rules!3103)))

(assert (=> d!190681 (= (maxPrefix!587 thiss!22590 rules!3103 input!2705) lt!227355)))

(declare-fun b!543551 () Bool)

(assert (=> b!543551 (= e!328437 e!328439)))

(declare-fun res!231758 () Bool)

(assert (=> b!543551 (=> (not res!231758) (not e!328439))))

(assert (=> b!543551 (= res!231758 (isDefined!1165 lt!227355))))

(declare-fun b!543552 () Bool)

(declare-fun res!231756 () Bool)

(assert (=> b!543552 (=> (not res!231756) (not e!328439))))

(assert (=> b!543552 (= res!231756 (= (value!33452 (_1!3456 (get!2019 lt!227355))) (apply!1278 (transformation!1003 (rule!1715 (_1!3456 (get!2019 lt!227355)))) (seqFromList!1201 (originalCharacters!1042 (_1!3456 (get!2019 lt!227355)))))))))

(declare-fun b!543553 () Bool)

(declare-fun lt!227358 () Option!1353)

(declare-fun lt!227354 () Option!1353)

(assert (=> b!543553 (= e!328438 (ite (and ((_ is None!1352) lt!227358) ((_ is None!1352) lt!227354)) None!1352 (ite ((_ is None!1352) lt!227354) lt!227358 (ite ((_ is None!1352) lt!227358) lt!227354 (ite (>= (size!4286 (_1!3456 (v!16165 lt!227358))) (size!4286 (_1!3456 (v!16165 lt!227354)))) lt!227358 lt!227354)))))))

(declare-fun call!38296 () Option!1353)

(assert (=> b!543553 (= lt!227358 call!38296)))

(assert (=> b!543553 (= lt!227354 (maxPrefix!587 thiss!22590 (t!74512 rules!3103) input!2705))))

(declare-fun b!543554 () Bool)

(declare-fun res!231761 () Bool)

(assert (=> b!543554 (=> (not res!231761) (not e!328439))))

(assert (=> b!543554 (= res!231761 (= (list!2215 (charsOf!632 (_1!3456 (get!2019 lt!227355)))) (originalCharacters!1042 (_1!3456 (get!2019 lt!227355)))))))

(declare-fun bm!38291 () Bool)

(assert (=> bm!38291 (= call!38296 (maxPrefixOneRule!302 thiss!22590 (h!10746 rules!3103) input!2705))))

(declare-fun b!543555 () Bool)

(assert (=> b!543555 (= e!328438 call!38296)))

(declare-fun b!543556 () Bool)

(assert (=> b!543556 (= e!328439 (contains!1245 rules!3103 (rule!1715 (_1!3456 (get!2019 lt!227355)))))))

(assert (= (and d!190681 c!102653) b!543555))

(assert (= (and d!190681 (not c!102653)) b!543553))

(assert (= (or b!543555 b!543553) bm!38291))

(assert (= (and d!190681 (not res!231760)) b!543551))

(assert (= (and b!543551 res!231758) b!543554))

(assert (= (and b!543554 res!231761) b!543549))

(assert (= (and b!543549 res!231755) b!543548))

(assert (= (and b!543548 res!231759) b!543552))

(assert (= (and b!543552 res!231756) b!543550))

(assert (= (and b!543550 res!231757) b!543556))

(declare-fun m!791709 () Bool)

(assert (=> b!543551 m!791709))

(declare-fun m!791711 () Bool)

(assert (=> b!543554 m!791711))

(declare-fun m!791713 () Bool)

(assert (=> b!543554 m!791713))

(assert (=> b!543554 m!791713))

(declare-fun m!791715 () Bool)

(assert (=> b!543554 m!791715))

(assert (=> b!543552 m!791711))

(declare-fun m!791717 () Bool)

(assert (=> b!543552 m!791717))

(assert (=> b!543552 m!791717))

(declare-fun m!791719 () Bool)

(assert (=> b!543552 m!791719))

(assert (=> b!543549 m!791711))

(declare-fun m!791721 () Bool)

(assert (=> b!543549 m!791721))

(declare-fun m!791723 () Bool)

(assert (=> b!543549 m!791723))

(assert (=> b!543550 m!791711))

(assert (=> b!543550 m!791713))

(assert (=> b!543550 m!791713))

(assert (=> b!543550 m!791715))

(assert (=> b!543550 m!791715))

(declare-fun m!791725 () Bool)

(assert (=> b!543550 m!791725))

(assert (=> b!543548 m!791711))

(assert (=> b!543548 m!791713))

(assert (=> b!543548 m!791713))

(assert (=> b!543548 m!791715))

(assert (=> b!543548 m!791715))

(declare-fun m!791727 () Bool)

(assert (=> b!543548 m!791727))

(declare-fun m!791729 () Bool)

(assert (=> bm!38291 m!791729))

(assert (=> b!543556 m!791711))

(declare-fun m!791731 () Bool)

(assert (=> b!543556 m!791731))

(declare-fun m!791733 () Bool)

(assert (=> d!190681 m!791733))

(assert (=> d!190681 m!791621))

(assert (=> d!190681 m!791615))

(assert (=> d!190681 m!791659))

(declare-fun m!791735 () Bool)

(assert (=> b!543553 m!791735))

(assert (=> b!543486 d!190681))

(declare-fun d!190689 () Bool)

(assert (=> d!190689 (= (inv!6699 (tag!1265 (rule!1715 token!491))) (= (mod (str.len (value!33451 (tag!1265 (rule!1715 token!491)))) 2) 0))))

(assert (=> b!543487 d!190689))

(declare-fun d!190691 () Bool)

(declare-fun res!231764 () Bool)

(declare-fun e!328442 () Bool)

(assert (=> d!190691 (=> (not res!231764) (not e!328442))))

(declare-fun semiInverseModEq!387 (Int Int) Bool)

(assert (=> d!190691 (= res!231764 (semiInverseModEq!387 (toChars!1709 (transformation!1003 (rule!1715 token!491))) (toValue!1850 (transformation!1003 (rule!1715 token!491)))))))

(assert (=> d!190691 (= (inv!6702 (transformation!1003 (rule!1715 token!491))) e!328442)))

(declare-fun b!543559 () Bool)

(declare-fun equivClasses!370 (Int Int) Bool)

(assert (=> b!543559 (= e!328442 (equivClasses!370 (toChars!1709 (transformation!1003 (rule!1715 token!491))) (toValue!1850 (transformation!1003 (rule!1715 token!491)))))))

(assert (= (and d!190691 res!231764) b!543559))

(declare-fun m!791737 () Bool)

(assert (=> d!190691 m!791737))

(declare-fun m!791739 () Bool)

(assert (=> b!543559 m!791739))

(assert (=> b!543487 d!190691))

(declare-fun d!190693 () Bool)

(declare-fun lt!227361 () Bool)

(declare-fun content!929 (List!5355) (InoxSet Rule!1806))

(assert (=> d!190693 (= lt!227361 (select (content!929 rules!3103) (rule!1715 token!491)))))

(declare-fun e!328447 () Bool)

(assert (=> d!190693 (= lt!227361 e!328447)))

(declare-fun res!231769 () Bool)

(assert (=> d!190693 (=> (not res!231769) (not e!328447))))

(assert (=> d!190693 (= res!231769 ((_ is Cons!5345) rules!3103))))

(assert (=> d!190693 (= (contains!1245 rules!3103 (rule!1715 token!491)) lt!227361)))

(declare-fun b!543564 () Bool)

(declare-fun e!328448 () Bool)

(assert (=> b!543564 (= e!328447 e!328448)))

(declare-fun res!231770 () Bool)

(assert (=> b!543564 (=> res!231770 e!328448)))

(assert (=> b!543564 (= res!231770 (= (h!10746 rules!3103) (rule!1715 token!491)))))

(declare-fun b!543565 () Bool)

(assert (=> b!543565 (= e!328448 (contains!1245 (t!74512 rules!3103) (rule!1715 token!491)))))

(assert (= (and d!190693 res!231769) b!543564))

(assert (= (and b!543564 (not res!231770)) b!543565))

(declare-fun m!791741 () Bool)

(assert (=> d!190693 m!791741))

(declare-fun m!791743 () Bool)

(assert (=> d!190693 m!791743))

(declare-fun m!791745 () Bool)

(assert (=> b!543565 m!791745))

(assert (=> b!543473 d!190693))

(declare-fun d!190695 () Bool)

(assert (=> d!190695 (= (isDefined!1165 lt!227301) (not (isEmpty!3861 lt!227301)))))

(declare-fun bs!67560 () Bool)

(assert (= bs!67560 d!190695))

(declare-fun m!791747 () Bool)

(assert (=> bs!67560 m!791747))

(assert (=> b!543453 d!190695))

(declare-fun b!543566 () Bool)

(declare-fun res!231775 () Bool)

(declare-fun e!328451 () Bool)

(assert (=> b!543566 (=> (not res!231775) (not e!328451))))

(declare-fun lt!227363 () Option!1353)

(assert (=> b!543566 (= res!231775 (= (++!1491 (list!2215 (charsOf!632 (_1!3456 (get!2019 lt!227363)))) (_2!3456 (get!2019 lt!227363))) lt!227330))))

(declare-fun b!543567 () Bool)

(declare-fun res!231771 () Bool)

(assert (=> b!543567 (=> (not res!231771) (not e!328451))))

(assert (=> b!543567 (= res!231771 (< (size!4287 (_2!3456 (get!2019 lt!227363))) (size!4287 lt!227330)))))

(declare-fun b!543568 () Bool)

(declare-fun res!231773 () Bool)

(assert (=> b!543568 (=> (not res!231773) (not e!328451))))

(assert (=> b!543568 (= res!231773 (matchR!496 (regex!1003 (rule!1715 (_1!3456 (get!2019 lt!227363)))) (list!2215 (charsOf!632 (_1!3456 (get!2019 lt!227363))))))))

(declare-fun d!190697 () Bool)

(declare-fun e!328449 () Bool)

(assert (=> d!190697 e!328449))

(declare-fun res!231776 () Bool)

(assert (=> d!190697 (=> res!231776 e!328449)))

(assert (=> d!190697 (= res!231776 (isEmpty!3861 lt!227363))))

(declare-fun e!328450 () Option!1353)

(assert (=> d!190697 (= lt!227363 e!328450)))

(declare-fun c!102654 () Bool)

(assert (=> d!190697 (= c!102654 (and ((_ is Cons!5345) rules!3103) ((_ is Nil!5345) (t!74512 rules!3103))))))

(declare-fun lt!227365 () Unit!9353)

(declare-fun lt!227364 () Unit!9353)

(assert (=> d!190697 (= lt!227365 lt!227364)))

(assert (=> d!190697 (isPrefix!645 lt!227330 lt!227330)))

(assert (=> d!190697 (= lt!227364 (lemmaIsPrefixRefl!385 lt!227330 lt!227330))))

(assert (=> d!190697 (rulesValidInductive!348 thiss!22590 rules!3103)))

(assert (=> d!190697 (= (maxPrefix!587 thiss!22590 rules!3103 lt!227330) lt!227363)))

(declare-fun b!543569 () Bool)

(assert (=> b!543569 (= e!328449 e!328451)))

(declare-fun res!231774 () Bool)

(assert (=> b!543569 (=> (not res!231774) (not e!328451))))

(assert (=> b!543569 (= res!231774 (isDefined!1165 lt!227363))))

(declare-fun b!543570 () Bool)

(declare-fun res!231772 () Bool)

(assert (=> b!543570 (=> (not res!231772) (not e!328451))))

(assert (=> b!543570 (= res!231772 (= (value!33452 (_1!3456 (get!2019 lt!227363))) (apply!1278 (transformation!1003 (rule!1715 (_1!3456 (get!2019 lt!227363)))) (seqFromList!1201 (originalCharacters!1042 (_1!3456 (get!2019 lt!227363)))))))))

(declare-fun b!543571 () Bool)

(declare-fun lt!227366 () Option!1353)

(declare-fun lt!227362 () Option!1353)

(assert (=> b!543571 (= e!328450 (ite (and ((_ is None!1352) lt!227366) ((_ is None!1352) lt!227362)) None!1352 (ite ((_ is None!1352) lt!227362) lt!227366 (ite ((_ is None!1352) lt!227366) lt!227362 (ite (>= (size!4286 (_1!3456 (v!16165 lt!227366))) (size!4286 (_1!3456 (v!16165 lt!227362)))) lt!227366 lt!227362)))))))

(declare-fun call!38297 () Option!1353)

(assert (=> b!543571 (= lt!227366 call!38297)))

(assert (=> b!543571 (= lt!227362 (maxPrefix!587 thiss!22590 (t!74512 rules!3103) lt!227330))))

(declare-fun b!543572 () Bool)

(declare-fun res!231777 () Bool)

(assert (=> b!543572 (=> (not res!231777) (not e!328451))))

(assert (=> b!543572 (= res!231777 (= (list!2215 (charsOf!632 (_1!3456 (get!2019 lt!227363)))) (originalCharacters!1042 (_1!3456 (get!2019 lt!227363)))))))

(declare-fun bm!38292 () Bool)

(assert (=> bm!38292 (= call!38297 (maxPrefixOneRule!302 thiss!22590 (h!10746 rules!3103) lt!227330))))

(declare-fun b!543573 () Bool)

(assert (=> b!543573 (= e!328450 call!38297)))

(declare-fun b!543574 () Bool)

(assert (=> b!543574 (= e!328451 (contains!1245 rules!3103 (rule!1715 (_1!3456 (get!2019 lt!227363)))))))

(assert (= (and d!190697 c!102654) b!543573))

(assert (= (and d!190697 (not c!102654)) b!543571))

(assert (= (or b!543573 b!543571) bm!38292))

(assert (= (and d!190697 (not res!231776)) b!543569))

(assert (= (and b!543569 res!231774) b!543572))

(assert (= (and b!543572 res!231777) b!543567))

(assert (= (and b!543567 res!231771) b!543566))

(assert (= (and b!543566 res!231775) b!543570))

(assert (= (and b!543570 res!231772) b!543568))

(assert (= (and b!543568 res!231773) b!543574))

(declare-fun m!791749 () Bool)

(assert (=> b!543569 m!791749))

(declare-fun m!791751 () Bool)

(assert (=> b!543572 m!791751))

(declare-fun m!791753 () Bool)

(assert (=> b!543572 m!791753))

(assert (=> b!543572 m!791753))

(declare-fun m!791755 () Bool)

(assert (=> b!543572 m!791755))

(assert (=> b!543570 m!791751))

(declare-fun m!791757 () Bool)

(assert (=> b!543570 m!791757))

(assert (=> b!543570 m!791757))

(declare-fun m!791759 () Bool)

(assert (=> b!543570 m!791759))

(assert (=> b!543567 m!791751))

(declare-fun m!791761 () Bool)

(assert (=> b!543567 m!791761))

(declare-fun m!791763 () Bool)

(assert (=> b!543567 m!791763))

(assert (=> b!543568 m!791751))

(assert (=> b!543568 m!791753))

(assert (=> b!543568 m!791753))

(assert (=> b!543568 m!791755))

(assert (=> b!543568 m!791755))

(declare-fun m!791765 () Bool)

(assert (=> b!543568 m!791765))

(assert (=> b!543566 m!791751))

(assert (=> b!543566 m!791753))

(assert (=> b!543566 m!791753))

(assert (=> b!543566 m!791755))

(assert (=> b!543566 m!791755))

(declare-fun m!791767 () Bool)

(assert (=> b!543566 m!791767))

(declare-fun m!791769 () Bool)

(assert (=> bm!38292 m!791769))

(assert (=> b!543574 m!791751))

(declare-fun m!791771 () Bool)

(assert (=> b!543574 m!791771))

(declare-fun m!791773 () Bool)

(assert (=> d!190697 m!791773))

(declare-fun m!791775 () Bool)

(assert (=> d!190697 m!791775))

(declare-fun m!791777 () Bool)

(assert (=> d!190697 m!791777))

(assert (=> d!190697 m!791659))

(declare-fun m!791779 () Bool)

(assert (=> b!543571 m!791779))

(assert (=> b!543453 d!190697))

(declare-fun lt!227367 () List!5353)

(declare-fun b!543578 () Bool)

(declare-fun e!328452 () Bool)

(assert (=> b!543578 (= e!328452 (or (not (= suffix!1342 Nil!5343)) (= lt!227367 input!2705)))))

(declare-fun b!543575 () Bool)

(declare-fun e!328453 () List!5353)

(assert (=> b!543575 (= e!328453 suffix!1342)))

(declare-fun b!543577 () Bool)

(declare-fun res!231779 () Bool)

(assert (=> b!543577 (=> (not res!231779) (not e!328452))))

(assert (=> b!543577 (= res!231779 (= (size!4287 lt!227367) (+ (size!4287 input!2705) (size!4287 suffix!1342))))))

(declare-fun d!190699 () Bool)

(assert (=> d!190699 e!328452))

(declare-fun res!231778 () Bool)

(assert (=> d!190699 (=> (not res!231778) (not e!328452))))

(assert (=> d!190699 (= res!231778 (= (content!928 lt!227367) ((_ map or) (content!928 input!2705) (content!928 suffix!1342))))))

(assert (=> d!190699 (= lt!227367 e!328453)))

(declare-fun c!102655 () Bool)

(assert (=> d!190699 (= c!102655 ((_ is Nil!5343) input!2705))))

(assert (=> d!190699 (= (++!1491 input!2705 suffix!1342) lt!227367)))

(declare-fun b!543576 () Bool)

(assert (=> b!543576 (= e!328453 (Cons!5343 (h!10744 input!2705) (++!1491 (t!74510 input!2705) suffix!1342)))))

(assert (= (and d!190699 c!102655) b!543575))

(assert (= (and d!190699 (not c!102655)) b!543576))

(assert (= (and d!190699 res!231778) b!543577))

(assert (= (and b!543577 res!231779) b!543578))

(declare-fun m!791781 () Bool)

(assert (=> b!543577 m!791781))

(assert (=> b!543577 m!791723))

(assert (=> b!543577 m!791685))

(declare-fun m!791783 () Bool)

(assert (=> d!190699 m!791783))

(declare-fun m!791785 () Bool)

(assert (=> d!190699 m!791785))

(assert (=> d!190699 m!791691))

(declare-fun m!791787 () Bool)

(assert (=> b!543576 m!791787))

(assert (=> b!543453 d!190699))

(declare-fun b!543692 () Bool)

(declare-fun e!328518 () Bool)

(assert (=> b!543692 (= e!328518 true)))

(declare-fun d!190701 () Bool)

(assert (=> d!190701 e!328518))

(assert (= d!190701 b!543692))

(declare-fun order!4445 () Int)

(declare-fun lambda!15467 () Int)

(declare-fun order!4447 () Int)

(declare-fun dynLambda!3117 (Int Int) Int)

(declare-fun dynLambda!3118 (Int Int) Int)

(assert (=> b!543692 (< (dynLambda!3117 order!4445 (toValue!1850 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))))) (dynLambda!3118 order!4447 lambda!15467))))

(declare-fun order!4449 () Int)

(declare-fun dynLambda!3119 (Int Int) Int)

(assert (=> b!543692 (< (dynLambda!3119 order!4449 (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))))) (dynLambda!3118 order!4447 lambda!15467))))

(declare-fun dynLambda!3120 (Int TokenValue!1027) BalanceConc!3448)

(declare-fun dynLambda!3121 (Int BalanceConc!3448) TokenValue!1027)

(assert (=> d!190701 (= (list!2215 (dynLambda!3120 (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))) (dynLambda!3121 (toValue!1850 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))) lt!227322))) (list!2215 lt!227322))))

(declare-fun lt!227414 () Unit!9353)

(declare-fun ForallOf!82 (Int BalanceConc!3448) Unit!9353)

(assert (=> d!190701 (= lt!227414 (ForallOf!82 lambda!15467 lt!227322))))

(assert (=> d!190701 (= (lemmaSemiInverse!132 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))) lt!227322) lt!227414)))

(declare-fun b_lambda!20857 () Bool)

(assert (=> (not b_lambda!20857) (not d!190701)))

(declare-fun tb!47747 () Bool)

(declare-fun t!74534 () Bool)

(assert (=> (and b!543470 (= (toChars!1709 (transformation!1003 (h!10746 rules!3103))) (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))))) t!74534) tb!47747))

(declare-fun e!328521 () Bool)

(declare-fun tp!172898 () Bool)

(declare-fun b!543697 () Bool)

(declare-fun inv!6706 (Conc!1720) Bool)

(assert (=> b!543697 (= e!328521 (and (inv!6706 (c!102635 (dynLambda!3120 (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))) (dynLambda!3121 (toValue!1850 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))) lt!227322)))) tp!172898))))

(declare-fun result!53366 () Bool)

(declare-fun inv!6707 (BalanceConc!3448) Bool)

(assert (=> tb!47747 (= result!53366 (and (inv!6707 (dynLambda!3120 (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))) (dynLambda!3121 (toValue!1850 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))) lt!227322))) e!328521))))

(assert (= tb!47747 b!543697))

(declare-fun m!791921 () Bool)

(assert (=> b!543697 m!791921))

(declare-fun m!791923 () Bool)

(assert (=> tb!47747 m!791923))

(assert (=> d!190701 t!74534))

(declare-fun b_and!53079 () Bool)

(assert (= b_and!53053 (and (=> t!74534 result!53366) b_and!53079)))

(declare-fun tb!47749 () Bool)

(declare-fun t!74536 () Bool)

(assert (=> (and b!543474 (= (toChars!1709 (transformation!1003 (rule!1715 token!491))) (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))))) t!74536) tb!47749))

(declare-fun result!53370 () Bool)

(assert (= result!53370 result!53366))

(assert (=> d!190701 t!74536))

(declare-fun b_and!53081 () Bool)

(assert (= b_and!53057 (and (=> t!74536 result!53370) b_and!53081)))

(declare-fun b_lambda!20859 () Bool)

(assert (=> (not b_lambda!20859) (not d!190701)))

(declare-fun t!74538 () Bool)

(declare-fun tb!47751 () Bool)

(assert (=> (and b!543470 (= (toValue!1850 (transformation!1003 (h!10746 rules!3103))) (toValue!1850 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))))) t!74538) tb!47751))

(declare-fun result!53372 () Bool)

(assert (=> tb!47751 (= result!53372 (inv!21 (dynLambda!3121 (toValue!1850 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))) lt!227322)))))

(declare-fun m!791925 () Bool)

(assert (=> tb!47751 m!791925))

(assert (=> d!190701 t!74538))

(declare-fun b_and!53083 () Bool)

(assert (= b_and!53051 (and (=> t!74538 result!53372) b_and!53083)))

(declare-fun tb!47753 () Bool)

(declare-fun t!74540 () Bool)

(assert (=> (and b!543474 (= (toValue!1850 (transformation!1003 (rule!1715 token!491))) (toValue!1850 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))))) t!74540) tb!47753))

(declare-fun result!53376 () Bool)

(assert (= result!53376 result!53372))

(assert (=> d!190701 t!74540))

(declare-fun b_and!53085 () Bool)

(assert (= b_and!53055 (and (=> t!74540 result!53376) b_and!53085)))

(declare-fun m!791927 () Bool)

(assert (=> d!190701 m!791927))

(declare-fun m!791929 () Bool)

(assert (=> d!190701 m!791929))

(declare-fun m!791931 () Bool)

(assert (=> d!190701 m!791931))

(declare-fun m!791933 () Bool)

(assert (=> d!190701 m!791933))

(assert (=> d!190701 m!791933))

(declare-fun m!791935 () Bool)

(assert (=> d!190701 m!791935))

(assert (=> d!190701 m!791931))

(assert (=> b!543471 d!190701))

(declare-fun d!190743 () Bool)

(assert (=> d!190743 (not (matchR!496 (regex!1003 (rule!1715 token!491)) input!2705))))

(declare-fun lt!227427 () Unit!9353)

(declare-fun choose!3836 (LexerInterface!889 List!5355 Rule!1806 List!5353 List!5353 List!5353 Rule!1806) Unit!9353)

(assert (=> d!190743 (= lt!227427 (choose!3836 thiss!22590 rules!3103 (rule!1715 (_1!3456 (v!16165 lt!227327))) lt!227296 input!2705 input!2705 (rule!1715 token!491)))))

(assert (=> d!190743 (isPrefix!645 lt!227296 input!2705)))

(assert (=> d!190743 (= (lemmaMaxPrefixOutputsMaxPrefix!8 thiss!22590 rules!3103 (rule!1715 (_1!3456 (v!16165 lt!227327))) lt!227296 input!2705 input!2705 (rule!1715 token!491)) lt!227427)))

(declare-fun bs!67568 () Bool)

(assert (= bs!67568 d!190743))

(assert (=> bs!67568 m!791579))

(declare-fun m!791937 () Bool)

(assert (=> bs!67568 m!791937))

(declare-fun m!791939 () Bool)

(assert (=> bs!67568 m!791939))

(assert (=> b!543471 d!190743))

(declare-fun b!543764 () Bool)

(declare-fun res!231887 () Bool)

(declare-fun e!328560 () Bool)

(assert (=> b!543764 (=> res!231887 e!328560)))

(declare-fun e!328557 () Bool)

(assert (=> b!543764 (= res!231887 e!328557)))

(declare-fun res!231890 () Bool)

(assert (=> b!543764 (=> (not res!231890) (not e!328557))))

(declare-fun lt!227440 () Bool)

(assert (=> b!543764 (= res!231890 lt!227440)))

(declare-fun b!543765 () Bool)

(declare-fun e!328559 () Bool)

(declare-fun e!328556 () Bool)

(assert (=> b!543765 (= e!328559 e!328556)))

(declare-fun c!102685 () Bool)

(assert (=> b!543765 (= c!102685 ((_ is EmptyLang!1337) (regex!1003 (rule!1715 token!491))))))

(declare-fun b!543767 () Bool)

(declare-fun e!328561 () Bool)

(assert (=> b!543767 (= e!328560 e!328561)))

(declare-fun res!231885 () Bool)

(assert (=> b!543767 (=> (not res!231885) (not e!328561))))

(assert (=> b!543767 (= res!231885 (not lt!227440))))

(declare-fun b!543768 () Bool)

(declare-fun e!328558 () Bool)

(declare-fun derivativeStep!265 (Regex!1337 C!3596) Regex!1337)

(declare-fun head!1186 (List!5353) C!3596)

(declare-fun tail!715 (List!5353) List!5353)

(assert (=> b!543768 (= e!328558 (matchR!496 (derivativeStep!265 (regex!1003 (rule!1715 token!491)) (head!1186 input!2705)) (tail!715 input!2705)))))

(declare-fun b!543769 () Bool)

(declare-fun res!231884 () Bool)

(assert (=> b!543769 (=> res!231884 e!328560)))

(assert (=> b!543769 (= res!231884 (not ((_ is ElementMatch!1337) (regex!1003 (rule!1715 token!491)))))))

(assert (=> b!543769 (= e!328556 e!328560)))

(declare-fun b!543770 () Bool)

(declare-fun e!328555 () Bool)

(assert (=> b!543770 (= e!328555 (not (= (head!1186 input!2705) (c!102634 (regex!1003 (rule!1715 token!491))))))))

(declare-fun b!543771 () Bool)

(declare-fun call!38306 () Bool)

(assert (=> b!543771 (= e!328559 (= lt!227440 call!38306))))

(declare-fun b!543772 () Bool)

(declare-fun nullable!349 (Regex!1337) Bool)

(assert (=> b!543772 (= e!328558 (nullable!349 (regex!1003 (rule!1715 token!491))))))

(declare-fun b!543773 () Bool)

(declare-fun res!231889 () Bool)

(assert (=> b!543773 (=> (not res!231889) (not e!328557))))

(assert (=> b!543773 (= res!231889 (isEmpty!3859 (tail!715 input!2705)))))

(declare-fun b!543774 () Bool)

(assert (=> b!543774 (= e!328561 e!328555)))

(declare-fun res!231886 () Bool)

(assert (=> b!543774 (=> res!231886 e!328555)))

(assert (=> b!543774 (= res!231886 call!38306)))

(declare-fun bm!38301 () Bool)

(assert (=> bm!38301 (= call!38306 (isEmpty!3859 input!2705))))

(declare-fun b!543775 () Bool)

(assert (=> b!543775 (= e!328557 (= (head!1186 input!2705) (c!102634 (regex!1003 (rule!1715 token!491)))))))

(declare-fun b!543766 () Bool)

(declare-fun res!231891 () Bool)

(assert (=> b!543766 (=> res!231891 e!328555)))

(assert (=> b!543766 (= res!231891 (not (isEmpty!3859 (tail!715 input!2705))))))

(declare-fun d!190745 () Bool)

(assert (=> d!190745 e!328559))

(declare-fun c!102684 () Bool)

(assert (=> d!190745 (= c!102684 ((_ is EmptyExpr!1337) (regex!1003 (rule!1715 token!491))))))

(assert (=> d!190745 (= lt!227440 e!328558)))

(declare-fun c!102683 () Bool)

(assert (=> d!190745 (= c!102683 (isEmpty!3859 input!2705))))

(declare-fun validRegex!444 (Regex!1337) Bool)

(assert (=> d!190745 (validRegex!444 (regex!1003 (rule!1715 token!491)))))

(assert (=> d!190745 (= (matchR!496 (regex!1003 (rule!1715 token!491)) input!2705) lt!227440)))

(declare-fun b!543776 () Bool)

(assert (=> b!543776 (= e!328556 (not lt!227440))))

(declare-fun b!543777 () Bool)

(declare-fun res!231888 () Bool)

(assert (=> b!543777 (=> (not res!231888) (not e!328557))))

(assert (=> b!543777 (= res!231888 (not call!38306))))

(assert (= (and d!190745 c!102683) b!543772))

(assert (= (and d!190745 (not c!102683)) b!543768))

(assert (= (and d!190745 c!102684) b!543771))

(assert (= (and d!190745 (not c!102684)) b!543765))

(assert (= (and b!543765 c!102685) b!543776))

(assert (= (and b!543765 (not c!102685)) b!543769))

(assert (= (and b!543769 (not res!231884)) b!543764))

(assert (= (and b!543764 res!231890) b!543777))

(assert (= (and b!543777 res!231888) b!543773))

(assert (= (and b!543773 res!231889) b!543775))

(assert (= (and b!543764 (not res!231887)) b!543767))

(assert (= (and b!543767 res!231885) b!543774))

(assert (= (and b!543774 (not res!231886)) b!543766))

(assert (= (and b!543766 (not res!231891)) b!543770))

(assert (= (or b!543771 b!543774 b!543777) bm!38301))

(declare-fun m!792023 () Bool)

(assert (=> b!543770 m!792023))

(declare-fun m!792025 () Bool)

(assert (=> b!543772 m!792025))

(assert (=> bm!38301 m!791655))

(declare-fun m!792027 () Bool)

(assert (=> b!543773 m!792027))

(assert (=> b!543773 m!792027))

(declare-fun m!792029 () Bool)

(assert (=> b!543773 m!792029))

(assert (=> b!543766 m!792027))

(assert (=> b!543766 m!792027))

(assert (=> b!543766 m!792029))

(assert (=> b!543775 m!792023))

(assert (=> b!543768 m!792023))

(assert (=> b!543768 m!792023))

(declare-fun m!792031 () Bool)

(assert (=> b!543768 m!792031))

(assert (=> b!543768 m!792027))

(assert (=> b!543768 m!792031))

(assert (=> b!543768 m!792027))

(declare-fun m!792033 () Bool)

(assert (=> b!543768 m!792033))

(assert (=> d!190745 m!791655))

(declare-fun m!792035 () Bool)

(assert (=> d!190745 m!792035))

(assert (=> b!543471 d!190745))

(declare-fun d!190755 () Bool)

(declare-fun res!231901 () Bool)

(declare-fun e!328567 () Bool)

(assert (=> d!190755 (=> (not res!231901) (not e!328567))))

(declare-fun rulesValid!352 (LexerInterface!889 List!5355) Bool)

(assert (=> d!190755 (= res!231901 (rulesValid!352 thiss!22590 rules!3103))))

(assert (=> d!190755 (= (rulesInvariant!852 thiss!22590 rules!3103) e!328567)))

(declare-fun b!543789 () Bool)

(declare-datatypes ((List!5357 0))(
  ( (Nil!5347) (Cons!5347 (h!10748 String!6879) (t!74586 List!5357)) )
))
(declare-fun noDuplicateTag!352 (LexerInterface!889 List!5355 List!5357) Bool)

(assert (=> b!543789 (= e!328567 (noDuplicateTag!352 thiss!22590 rules!3103 Nil!5347))))

(assert (= (and d!190755 res!231901) b!543789))

(declare-fun m!792049 () Bool)

(assert (=> d!190755 m!792049))

(declare-fun m!792051 () Bool)

(assert (=> b!543789 m!792051))

(assert (=> b!543457 d!190755))

(declare-fun d!190759 () Bool)

(declare-fun lt!227448 () Int)

(assert (=> d!190759 (>= lt!227448 0)))

(declare-fun e!328570 () Int)

(assert (=> d!190759 (= lt!227448 e!328570)))

(declare-fun c!102689 () Bool)

(assert (=> d!190759 (= c!102689 ((_ is Nil!5343) (originalCharacters!1042 token!491)))))

(assert (=> d!190759 (= (size!4287 (originalCharacters!1042 token!491)) lt!227448)))

(declare-fun b!543794 () Bool)

(assert (=> b!543794 (= e!328570 0)))

(declare-fun b!543795 () Bool)

(assert (=> b!543795 (= e!328570 (+ 1 (size!4287 (t!74510 (originalCharacters!1042 token!491)))))))

(assert (= (and d!190759 c!102689) b!543794))

(assert (= (and d!190759 (not c!102689)) b!543795))

(declare-fun m!792073 () Bool)

(assert (=> b!543795 m!792073))

(assert (=> b!543478 d!190759))

(declare-fun d!190763 () Bool)

(assert (=> d!190763 (= (isDefined!1165 lt!227327) (not (isEmpty!3861 lt!227327)))))

(declare-fun bs!67570 () Bool)

(assert (= bs!67570 d!190763))

(declare-fun m!792075 () Bool)

(assert (=> bs!67570 m!792075))

(assert (=> b!543458 d!190763))

(declare-fun d!190765 () Bool)

(assert (=> d!190765 (= (get!2019 lt!227301) (v!16165 lt!227301))))

(assert (=> b!543476 d!190765))

(declare-fun d!190767 () Bool)

(assert (=> d!190767 true))

(declare-fun lt!227454 () Bool)

(declare-fun lambda!15470 () Int)

(declare-fun forall!1522 (List!5355 Int) Bool)

(assert (=> d!190767 (= lt!227454 (forall!1522 rules!3103 lambda!15470))))

(declare-fun e!328582 () Bool)

(assert (=> d!190767 (= lt!227454 e!328582)))

(declare-fun res!231912 () Bool)

(assert (=> d!190767 (=> res!231912 e!328582)))

(assert (=> d!190767 (= res!231912 (not ((_ is Cons!5345) rules!3103)))))

(assert (=> d!190767 (= (rulesValidInductive!348 thiss!22590 rules!3103) lt!227454)))

(declare-fun b!543812 () Bool)

(declare-fun e!328581 () Bool)

(assert (=> b!543812 (= e!328582 e!328581)))

(declare-fun res!231913 () Bool)

(assert (=> b!543812 (=> (not res!231913) (not e!328581))))

(assert (=> b!543812 (= res!231913 (ruleValid!223 thiss!22590 (h!10746 rules!3103)))))

(declare-fun b!543813 () Bool)

(assert (=> b!543813 (= e!328581 (rulesValidInductive!348 thiss!22590 (t!74512 rules!3103)))))

(assert (= (and d!190767 (not res!231912)) b!543812))

(assert (= (and b!543812 res!231913) b!543813))

(declare-fun m!792089 () Bool)

(assert (=> d!190767 m!792089))

(declare-fun m!792091 () Bool)

(assert (=> b!543812 m!792091))

(declare-fun m!792093 () Bool)

(assert (=> b!543813 m!792093))

(assert (=> b!543454 d!190767))

(declare-fun b!543826 () Bool)

(declare-fun e!328589 () Bool)

(declare-fun inv!15 (TokenValue!1027) Bool)

(assert (=> b!543826 (= e!328589 (inv!15 (value!33452 token!491)))))

(declare-fun b!543827 () Bool)

(declare-fun res!231916 () Bool)

(assert (=> b!543827 (=> res!231916 e!328589)))

(assert (=> b!543827 (= res!231916 (not ((_ is IntegerValue!3083) (value!33452 token!491))))))

(declare-fun e!328591 () Bool)

(assert (=> b!543827 (= e!328591 e!328589)))

(declare-fun b!543828 () Bool)

(declare-fun e!328590 () Bool)

(declare-fun inv!16 (TokenValue!1027) Bool)

(assert (=> b!543828 (= e!328590 (inv!16 (value!33452 token!491)))))

(declare-fun d!190771 () Bool)

(declare-fun c!102698 () Bool)

(assert (=> d!190771 (= c!102698 ((_ is IntegerValue!3081) (value!33452 token!491)))))

(assert (=> d!190771 (= (inv!21 (value!33452 token!491)) e!328590)))

(declare-fun b!543829 () Bool)

(assert (=> b!543829 (= e!328590 e!328591)))

(declare-fun c!102697 () Bool)

(assert (=> b!543829 (= c!102697 ((_ is IntegerValue!3082) (value!33452 token!491)))))

(declare-fun b!543830 () Bool)

(declare-fun inv!17 (TokenValue!1027) Bool)

(assert (=> b!543830 (= e!328591 (inv!17 (value!33452 token!491)))))

(assert (= (and d!190771 c!102698) b!543828))

(assert (= (and d!190771 (not c!102698)) b!543829))

(assert (= (and b!543829 c!102697) b!543830))

(assert (= (and b!543829 (not c!102697)) b!543827))

(assert (= (and b!543827 (not res!231916)) b!543826))

(declare-fun m!792099 () Bool)

(assert (=> b!543826 m!792099))

(declare-fun m!792101 () Bool)

(assert (=> b!543828 m!792101))

(declare-fun m!792103 () Bool)

(assert (=> b!543830 m!792103))

(assert (=> b!543475 d!190771))

(declare-fun d!190777 () Bool)

(declare-fun lt!227461 () Int)

(assert (=> d!190777 (>= lt!227461 0)))

(declare-fun e!328592 () Int)

(assert (=> d!190777 (= lt!227461 e!328592)))

(declare-fun c!102699 () Bool)

(assert (=> d!190777 (= c!102699 ((_ is Nil!5343) (originalCharacters!1042 (_1!3456 (v!16165 lt!227327)))))))

(assert (=> d!190777 (= (size!4287 (originalCharacters!1042 (_1!3456 (v!16165 lt!227327)))) lt!227461)))

(declare-fun b!543831 () Bool)

(assert (=> b!543831 (= e!328592 0)))

(declare-fun b!543832 () Bool)

(assert (=> b!543832 (= e!328592 (+ 1 (size!4287 (t!74510 (originalCharacters!1042 (_1!3456 (v!16165 lt!227327)))))))))

(assert (= (and d!190777 c!102699) b!543831))

(assert (= (and d!190777 (not c!102699)) b!543832))

(declare-fun m!792107 () Bool)

(assert (=> b!543832 m!792107))

(assert (=> b!543456 d!190777))

(declare-fun d!190781 () Bool)

(assert (=> d!190781 (= (isEmpty!3859 (_2!3456 (v!16165 lt!227327))) ((_ is Nil!5343) (_2!3456 (v!16165 lt!227327))))))

(assert (=> b!543477 d!190781))

(declare-fun d!190783 () Bool)

(assert (=> d!190783 (= (inv!6699 (tag!1265 (h!10746 rules!3103))) (= (mod (str.len (value!33451 (tag!1265 (h!10746 rules!3103)))) 2) 0))))

(assert (=> b!543455 d!190783))

(declare-fun d!190785 () Bool)

(declare-fun res!231917 () Bool)

(declare-fun e!328593 () Bool)

(assert (=> d!190785 (=> (not res!231917) (not e!328593))))

(assert (=> d!190785 (= res!231917 (semiInverseModEq!387 (toChars!1709 (transformation!1003 (h!10746 rules!3103))) (toValue!1850 (transformation!1003 (h!10746 rules!3103)))))))

(assert (=> d!190785 (= (inv!6702 (transformation!1003 (h!10746 rules!3103))) e!328593)))

(declare-fun b!543833 () Bool)

(assert (=> b!543833 (= e!328593 (equivClasses!370 (toChars!1709 (transformation!1003 (h!10746 rules!3103))) (toValue!1850 (transformation!1003 (h!10746 rules!3103)))))))

(assert (= (and d!190785 res!231917) b!543833))

(declare-fun m!792109 () Bool)

(assert (=> d!190785 m!792109))

(declare-fun m!792111 () Bool)

(assert (=> b!543833 m!792111))

(assert (=> b!543455 d!190785))

(declare-fun d!190787 () Bool)

(declare-fun list!2217 (Conc!1720) List!5353)

(assert (=> d!190787 (= (list!2215 (charsOf!632 token!491)) (list!2217 (c!102635 (charsOf!632 token!491))))))

(declare-fun bs!67574 () Bool)

(assert (= bs!67574 d!190787))

(declare-fun m!792113 () Bool)

(assert (=> bs!67574 m!792113))

(assert (=> b!543462 d!190787))

(declare-fun d!190789 () Bool)

(declare-fun lt!227466 () BalanceConc!3448)

(assert (=> d!190789 (= (list!2215 lt!227466) (originalCharacters!1042 token!491))))

(assert (=> d!190789 (= lt!227466 (dynLambda!3120 (toChars!1709 (transformation!1003 (rule!1715 token!491))) (value!33452 token!491)))))

(assert (=> d!190789 (= (charsOf!632 token!491) lt!227466)))

(declare-fun b_lambda!20863 () Bool)

(assert (=> (not b_lambda!20863) (not d!190789)))

(declare-fun t!74542 () Bool)

(declare-fun tb!47755 () Bool)

(assert (=> (and b!543470 (= (toChars!1709 (transformation!1003 (h!10746 rules!3103))) (toChars!1709 (transformation!1003 (rule!1715 token!491)))) t!74542) tb!47755))

(declare-fun b!543842 () Bool)

(declare-fun e!328600 () Bool)

(declare-fun tp!172899 () Bool)

(assert (=> b!543842 (= e!328600 (and (inv!6706 (c!102635 (dynLambda!3120 (toChars!1709 (transformation!1003 (rule!1715 token!491))) (value!33452 token!491)))) tp!172899))))

(declare-fun result!53378 () Bool)

(assert (=> tb!47755 (= result!53378 (and (inv!6707 (dynLambda!3120 (toChars!1709 (transformation!1003 (rule!1715 token!491))) (value!33452 token!491))) e!328600))))

(assert (= tb!47755 b!543842))

(declare-fun m!792115 () Bool)

(assert (=> b!543842 m!792115))

(declare-fun m!792117 () Bool)

(assert (=> tb!47755 m!792117))

(assert (=> d!190789 t!74542))

(declare-fun b_and!53091 () Bool)

(assert (= b_and!53079 (and (=> t!74542 result!53378) b_and!53091)))

(declare-fun t!74544 () Bool)

(declare-fun tb!47757 () Bool)

(assert (=> (and b!543474 (= (toChars!1709 (transformation!1003 (rule!1715 token!491))) (toChars!1709 (transformation!1003 (rule!1715 token!491)))) t!74544) tb!47757))

(declare-fun result!53380 () Bool)

(assert (= result!53380 result!53378))

(assert (=> d!190789 t!74544))

(declare-fun b_and!53093 () Bool)

(assert (= b_and!53081 (and (=> t!74544 result!53380) b_and!53093)))

(declare-fun m!792119 () Bool)

(assert (=> d!190789 m!792119))

(declare-fun m!792121 () Bool)

(assert (=> d!190789 m!792121))

(assert (=> b!543462 d!190789))

(declare-fun b!543862 () Bool)

(declare-fun res!231944 () Bool)

(declare-fun e!328614 () Bool)

(assert (=> b!543862 (=> (not res!231944) (not e!328614))))

(assert (=> b!543862 (= res!231944 (= (head!1186 input!2705) (head!1186 lt!227330)))))

(declare-fun b!543861 () Bool)

(declare-fun e!328615 () Bool)

(assert (=> b!543861 (= e!328615 e!328614)))

(declare-fun res!231942 () Bool)

(assert (=> b!543861 (=> (not res!231942) (not e!328614))))

(assert (=> b!543861 (= res!231942 (not ((_ is Nil!5343) lt!227330)))))

(declare-fun b!543864 () Bool)

(declare-fun e!328616 () Bool)

(assert (=> b!543864 (= e!328616 (>= (size!4287 lt!227330) (size!4287 input!2705)))))

(declare-fun b!543863 () Bool)

(assert (=> b!543863 (= e!328614 (isPrefix!645 (tail!715 input!2705) (tail!715 lt!227330)))))

(declare-fun d!190791 () Bool)

(assert (=> d!190791 e!328616))

(declare-fun res!231943 () Bool)

(assert (=> d!190791 (=> res!231943 e!328616)))

(declare-fun lt!227475 () Bool)

(assert (=> d!190791 (= res!231943 (not lt!227475))))

(assert (=> d!190791 (= lt!227475 e!328615)))

(declare-fun res!231945 () Bool)

(assert (=> d!190791 (=> res!231945 e!328615)))

(assert (=> d!190791 (= res!231945 ((_ is Nil!5343) input!2705))))

(assert (=> d!190791 (= (isPrefix!645 input!2705 lt!227330) lt!227475)))

(assert (= (and d!190791 (not res!231945)) b!543861))

(assert (= (and b!543861 res!231942) b!543862))

(assert (= (and b!543862 res!231944) b!543863))

(assert (= (and d!190791 (not res!231943)) b!543864))

(assert (=> b!543862 m!792023))

(declare-fun m!792141 () Bool)

(assert (=> b!543862 m!792141))

(assert (=> b!543864 m!791763))

(assert (=> b!543864 m!791723))

(assert (=> b!543863 m!792027))

(declare-fun m!792143 () Bool)

(assert (=> b!543863 m!792143))

(assert (=> b!543863 m!792027))

(assert (=> b!543863 m!792143))

(declare-fun m!792147 () Bool)

(assert (=> b!543863 m!792147))

(assert (=> b!543483 d!190791))

(declare-fun d!190809 () Bool)

(assert (=> d!190809 (= (size!4286 (_1!3456 (v!16165 lt!227327))) (size!4287 (originalCharacters!1042 (_1!3456 (v!16165 lt!227327)))))))

(declare-fun Unit!9359 () Unit!9353)

(assert (=> d!190809 (= (lemmaCharactersSize!82 (_1!3456 (v!16165 lt!227327))) Unit!9359)))

(declare-fun bs!67579 () Bool)

(assert (= bs!67579 d!190809))

(assert (=> bs!67579 m!791587))

(assert (=> b!543483 d!190809))

(declare-fun d!190813 () Bool)

(declare-fun res!231950 () Bool)

(declare-fun e!328620 () Bool)

(assert (=> d!190813 (=> (not res!231950) (not e!328620))))

(assert (=> d!190813 (= res!231950 (validRegex!444 (regex!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))))))

(assert (=> d!190813 (= (ruleValid!223 thiss!22590 (rule!1715 (_1!3456 (v!16165 lt!227327)))) e!328620)))

(declare-fun b!543871 () Bool)

(declare-fun res!231951 () Bool)

(assert (=> b!543871 (=> (not res!231951) (not e!328620))))

(assert (=> b!543871 (= res!231951 (not (nullable!349 (regex!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))))))))

(declare-fun b!543872 () Bool)

(assert (=> b!543872 (= e!328620 (not (= (tag!1265 (rule!1715 (_1!3456 (v!16165 lt!227327)))) (String!6880 ""))))))

(assert (= (and d!190813 res!231950) b!543871))

(assert (= (and b!543871 res!231951) b!543872))

(declare-fun m!792155 () Bool)

(assert (=> d!190813 m!792155))

(declare-fun m!792157 () Bool)

(assert (=> b!543871 m!792157))

(assert (=> b!543483 d!190813))

(declare-fun d!190817 () Bool)

(assert (=> d!190817 (isPrefix!645 lt!227299 (++!1491 lt!227299 suffix!1342))))

(declare-fun lt!227483 () Unit!9353)

(declare-fun choose!3840 (List!5353 List!5353) Unit!9353)

(assert (=> d!190817 (= lt!227483 (choose!3840 lt!227299 suffix!1342))))

(assert (=> d!190817 (= (lemmaConcatTwoListThenFirstIsPrefix!496 lt!227299 suffix!1342) lt!227483)))

(declare-fun bs!67581 () Bool)

(assert (= bs!67581 d!190817))

(assert (=> bs!67581 m!791681))

(assert (=> bs!67581 m!791681))

(declare-fun m!792175 () Bool)

(assert (=> bs!67581 m!792175))

(declare-fun m!792177 () Bool)

(assert (=> bs!67581 m!792177))

(assert (=> b!543483 d!190817))

(declare-fun b!543881 () Bool)

(declare-fun res!231961 () Bool)

(declare-fun e!328627 () Bool)

(assert (=> b!543881 (=> (not res!231961) (not e!328627))))

(assert (=> b!543881 (= res!231961 (= (head!1186 input!2705) (head!1186 lt!227329)))))

(declare-fun b!543880 () Bool)

(declare-fun e!328628 () Bool)

(assert (=> b!543880 (= e!328628 e!328627)))

(declare-fun res!231959 () Bool)

(assert (=> b!543880 (=> (not res!231959) (not e!328627))))

(assert (=> b!543880 (= res!231959 (not ((_ is Nil!5343) lt!227329)))))

(declare-fun b!543883 () Bool)

(declare-fun e!328629 () Bool)

(assert (=> b!543883 (= e!328629 (>= (size!4287 lt!227329) (size!4287 input!2705)))))

(declare-fun b!543882 () Bool)

(assert (=> b!543882 (= e!328627 (isPrefix!645 (tail!715 input!2705) (tail!715 lt!227329)))))

(declare-fun d!190823 () Bool)

(assert (=> d!190823 e!328629))

(declare-fun res!231960 () Bool)

(assert (=> d!190823 (=> res!231960 e!328629)))

(declare-fun lt!227485 () Bool)

(assert (=> d!190823 (= res!231960 (not lt!227485))))

(assert (=> d!190823 (= lt!227485 e!328628)))

(declare-fun res!231962 () Bool)

(assert (=> d!190823 (=> res!231962 e!328628)))

(assert (=> d!190823 (= res!231962 ((_ is Nil!5343) input!2705))))

(assert (=> d!190823 (= (isPrefix!645 input!2705 lt!227329) lt!227485)))

(assert (= (and d!190823 (not res!231962)) b!543880))

(assert (= (and b!543880 res!231959) b!543881))

(assert (= (and b!543881 res!231961) b!543882))

(assert (= (and d!190823 (not res!231960)) b!543883))

(assert (=> b!543881 m!792023))

(declare-fun m!792181 () Bool)

(assert (=> b!543881 m!792181))

(declare-fun m!792183 () Bool)

(assert (=> b!543883 m!792183))

(assert (=> b!543883 m!791723))

(assert (=> b!543882 m!792027))

(declare-fun m!792185 () Bool)

(assert (=> b!543882 m!792185))

(assert (=> b!543882 m!792027))

(assert (=> b!543882 m!792185))

(declare-fun m!792187 () Bool)

(assert (=> b!543882 m!792187))

(assert (=> b!543483 d!190823))

(declare-fun d!190827 () Bool)

(declare-fun lt!227487 () Int)

(assert (=> d!190827 (>= lt!227487 0)))

(declare-fun e!328633 () Int)

(assert (=> d!190827 (= lt!227487 e!328633)))

(declare-fun c!102702 () Bool)

(assert (=> d!190827 (= c!102702 ((_ is Nil!5343) lt!227296))))

(assert (=> d!190827 (= (size!4287 lt!227296) lt!227487)))

(declare-fun b!543888 () Bool)

(assert (=> b!543888 (= e!328633 0)))

(declare-fun b!543889 () Bool)

(assert (=> b!543889 (= e!328633 (+ 1 (size!4287 (t!74510 lt!227296))))))

(assert (= (and d!190827 c!102702) b!543888))

(assert (= (and d!190827 (not c!102702)) b!543889))

(declare-fun m!792191 () Bool)

(assert (=> b!543889 m!792191))

(assert (=> b!543483 d!190827))

(declare-fun d!190831 () Bool)

(assert (=> d!190831 (isPrefix!645 input!2705 input!2705)))

(declare-fun lt!227494 () Unit!9353)

(declare-fun choose!3842 (List!5353 List!5353) Unit!9353)

(assert (=> d!190831 (= lt!227494 (choose!3842 input!2705 input!2705))))

(assert (=> d!190831 (= (lemmaIsPrefixRefl!385 input!2705 input!2705) lt!227494)))

(declare-fun bs!67586 () Bool)

(assert (= bs!67586 d!190831))

(assert (=> bs!67586 m!791621))

(declare-fun m!792215 () Bool)

(assert (=> bs!67586 m!792215))

(assert (=> b!543483 d!190831))

(declare-fun b!543895 () Bool)

(declare-fun res!231971 () Bool)

(declare-fun e!328636 () Bool)

(assert (=> b!543895 (=> (not res!231971) (not e!328636))))

(assert (=> b!543895 (= res!231971 (= (head!1186 lt!227296) (head!1186 lt!227300)))))

(declare-fun b!543894 () Bool)

(declare-fun e!328637 () Bool)

(assert (=> b!543894 (= e!328637 e!328636)))

(declare-fun res!231969 () Bool)

(assert (=> b!543894 (=> (not res!231969) (not e!328636))))

(assert (=> b!543894 (= res!231969 (not ((_ is Nil!5343) lt!227300)))))

(declare-fun b!543897 () Bool)

(declare-fun e!328638 () Bool)

(assert (=> b!543897 (= e!328638 (>= (size!4287 lt!227300) (size!4287 lt!227296)))))

(declare-fun b!543896 () Bool)

(assert (=> b!543896 (= e!328636 (isPrefix!645 (tail!715 lt!227296) (tail!715 lt!227300)))))

(declare-fun d!190841 () Bool)

(assert (=> d!190841 e!328638))

(declare-fun res!231970 () Bool)

(assert (=> d!190841 (=> res!231970 e!328638)))

(declare-fun lt!227495 () Bool)

(assert (=> d!190841 (= res!231970 (not lt!227495))))

(assert (=> d!190841 (= lt!227495 e!328637)))

(declare-fun res!231972 () Bool)

(assert (=> d!190841 (=> res!231972 e!328637)))

(assert (=> d!190841 (= res!231972 ((_ is Nil!5343) lt!227296))))

(assert (=> d!190841 (= (isPrefix!645 lt!227296 lt!227300) lt!227495)))

(assert (= (and d!190841 (not res!231972)) b!543894))

(assert (= (and b!543894 res!231969) b!543895))

(assert (= (and b!543895 res!231971) b!543896))

(assert (= (and d!190841 (not res!231970)) b!543897))

(declare-fun m!792217 () Bool)

(assert (=> b!543895 m!792217))

(declare-fun m!792219 () Bool)

(assert (=> b!543895 m!792219))

(declare-fun m!792221 () Bool)

(assert (=> b!543897 m!792221))

(assert (=> b!543897 m!791605))

(declare-fun m!792223 () Bool)

(assert (=> b!543896 m!792223))

(declare-fun m!792225 () Bool)

(assert (=> b!543896 m!792225))

(assert (=> b!543896 m!792223))

(assert (=> b!543896 m!792225))

(declare-fun m!792227 () Bool)

(assert (=> b!543896 m!792227))

(assert (=> b!543483 d!190841))

(declare-fun d!190843 () Bool)

(assert (=> d!190843 (= (size!4286 token!491) (size!4287 (originalCharacters!1042 token!491)))))

(declare-fun Unit!9363 () Unit!9353)

(assert (=> d!190843 (= (lemmaCharactersSize!82 token!491) Unit!9363)))

(declare-fun bs!67587 () Bool)

(assert (= bs!67587 d!190843))

(assert (=> bs!67587 m!791657))

(assert (=> b!543483 d!190843))

(declare-fun d!190845 () Bool)

(declare-fun lt!227501 () List!5353)

(assert (=> d!190845 (= (++!1491 lt!227296 lt!227501) input!2705)))

(declare-fun e!328650 () List!5353)

(assert (=> d!190845 (= lt!227501 e!328650)))

(declare-fun c!102707 () Bool)

(assert (=> d!190845 (= c!102707 ((_ is Cons!5343) lt!227296))))

(assert (=> d!190845 (>= (size!4287 input!2705) (size!4287 lt!227296))))

(assert (=> d!190845 (= (getSuffix!168 input!2705 lt!227296) lt!227501)))

(declare-fun b!543917 () Bool)

(assert (=> b!543917 (= e!328650 (getSuffix!168 (tail!715 input!2705) (t!74510 lt!227296)))))

(declare-fun b!543918 () Bool)

(assert (=> b!543918 (= e!328650 input!2705)))

(assert (= (and d!190845 c!102707) b!543917))

(assert (= (and d!190845 (not c!102707)) b!543918))

(declare-fun m!792249 () Bool)

(assert (=> d!190845 m!792249))

(assert (=> d!190845 m!791723))

(assert (=> d!190845 m!791605))

(assert (=> b!543917 m!792027))

(assert (=> b!543917 m!792027))

(declare-fun m!792251 () Bool)

(assert (=> b!543917 m!792251))

(assert (=> b!543483 d!190845))

(declare-fun d!190859 () Bool)

(assert (=> d!190859 (= (apply!1278 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))) lt!227322) (dynLambda!3121 (toValue!1850 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))) lt!227322))))

(declare-fun b_lambda!20869 () Bool)

(assert (=> (not b_lambda!20869) (not d!190859)))

(assert (=> d!190859 t!74538))

(declare-fun b_and!53103 () Bool)

(assert (= b_and!53083 (and (=> t!74538 result!53372) b_and!53103)))

(assert (=> d!190859 t!74540))

(declare-fun b_and!53105 () Bool)

(assert (= b_and!53085 (and (=> t!74540 result!53376) b_and!53105)))

(assert (=> d!190859 m!791931))

(assert (=> b!543483 d!190859))

(declare-fun d!190861 () Bool)

(declare-fun e!328659 () Bool)

(assert (=> d!190861 e!328659))

(declare-fun res!231996 () Bool)

(assert (=> d!190861 (=> (not res!231996) (not e!328659))))

(assert (=> d!190861 (= res!231996 (semiInverseModEq!387 (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))) (toValue!1850 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))))))))

(declare-fun Unit!9364 () Unit!9353)

(assert (=> d!190861 (= (lemmaInv!151 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))) Unit!9364)))

(declare-fun b!543932 () Bool)

(assert (=> b!543932 (= e!328659 (equivClasses!370 (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))) (toValue!1850 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))))))))

(assert (= (and d!190861 res!231996) b!543932))

(declare-fun m!792257 () Bool)

(assert (=> d!190861 m!792257))

(declare-fun m!792259 () Bool)

(assert (=> b!543932 m!792259))

(assert (=> b!543483 d!190861))

(declare-fun d!190865 () Bool)

(declare-fun lt!227503 () Int)

(assert (=> d!190865 (>= lt!227503 0)))

(declare-fun e!328660 () Int)

(assert (=> d!190865 (= lt!227503 e!328660)))

(declare-fun c!102709 () Bool)

(assert (=> d!190865 (= c!102709 ((_ is Nil!5343) lt!227299))))

(assert (=> d!190865 (= (size!4287 lt!227299) lt!227503)))

(declare-fun b!543933 () Bool)

(assert (=> b!543933 (= e!328660 0)))

(declare-fun b!543934 () Bool)

(assert (=> b!543934 (= e!328660 (+ 1 (size!4287 (t!74510 lt!227299))))))

(assert (= (and d!190865 c!102709) b!543933))

(assert (= (and d!190865 (not c!102709)) b!543934))

(declare-fun m!792269 () Bool)

(assert (=> b!543934 m!792269))

(assert (=> b!543483 d!190865))

(declare-fun b!543936 () Bool)

(declare-fun res!231999 () Bool)

(declare-fun e!328661 () Bool)

(assert (=> b!543936 (=> (not res!231999) (not e!328661))))

(assert (=> b!543936 (= res!231999 (= (head!1186 lt!227299) (head!1186 lt!227329)))))

(declare-fun b!543935 () Bool)

(declare-fun e!328662 () Bool)

(assert (=> b!543935 (= e!328662 e!328661)))

(declare-fun res!231997 () Bool)

(assert (=> b!543935 (=> (not res!231997) (not e!328661))))

(assert (=> b!543935 (= res!231997 (not ((_ is Nil!5343) lt!227329)))))

(declare-fun b!543938 () Bool)

(declare-fun e!328663 () Bool)

(assert (=> b!543938 (= e!328663 (>= (size!4287 lt!227329) (size!4287 lt!227299)))))

(declare-fun b!543937 () Bool)

(assert (=> b!543937 (= e!328661 (isPrefix!645 (tail!715 lt!227299) (tail!715 lt!227329)))))

(declare-fun d!190869 () Bool)

(assert (=> d!190869 e!328663))

(declare-fun res!231998 () Bool)

(assert (=> d!190869 (=> res!231998 e!328663)))

(declare-fun lt!227504 () Bool)

(assert (=> d!190869 (= res!231998 (not lt!227504))))

(assert (=> d!190869 (= lt!227504 e!328662)))

(declare-fun res!232000 () Bool)

(assert (=> d!190869 (=> res!232000 e!328662)))

(assert (=> d!190869 (= res!232000 ((_ is Nil!5343) lt!227299))))

(assert (=> d!190869 (= (isPrefix!645 lt!227299 lt!227329) lt!227504)))

(assert (= (and d!190869 (not res!232000)) b!543935))

(assert (= (and b!543935 res!231997) b!543936))

(assert (= (and b!543936 res!231999) b!543937))

(assert (= (and d!190869 (not res!231998)) b!543938))

(declare-fun m!792271 () Bool)

(assert (=> b!543936 m!792271))

(assert (=> b!543936 m!792181))

(assert (=> b!543938 m!792183))

(assert (=> b!543938 m!791611))

(declare-fun m!792273 () Bool)

(assert (=> b!543937 m!792273))

(assert (=> b!543937 m!792185))

(assert (=> b!543937 m!792273))

(assert (=> b!543937 m!792185))

(declare-fun m!792275 () Bool)

(assert (=> b!543937 m!792275))

(assert (=> b!543483 d!190869))

(declare-fun b!543940 () Bool)

(declare-fun res!232003 () Bool)

(declare-fun e!328664 () Bool)

(assert (=> b!543940 (=> (not res!232003) (not e!328664))))

(assert (=> b!543940 (= res!232003 (= (head!1186 input!2705) (head!1186 input!2705)))))

(declare-fun b!543939 () Bool)

(declare-fun e!328665 () Bool)

(assert (=> b!543939 (= e!328665 e!328664)))

(declare-fun res!232001 () Bool)

(assert (=> b!543939 (=> (not res!232001) (not e!328664))))

(assert (=> b!543939 (= res!232001 (not ((_ is Nil!5343) input!2705)))))

(declare-fun b!543942 () Bool)

(declare-fun e!328666 () Bool)

(assert (=> b!543942 (= e!328666 (>= (size!4287 input!2705) (size!4287 input!2705)))))

(declare-fun b!543941 () Bool)

(assert (=> b!543941 (= e!328664 (isPrefix!645 (tail!715 input!2705) (tail!715 input!2705)))))

(declare-fun d!190871 () Bool)

(assert (=> d!190871 e!328666))

(declare-fun res!232002 () Bool)

(assert (=> d!190871 (=> res!232002 e!328666)))

(declare-fun lt!227505 () Bool)

(assert (=> d!190871 (= res!232002 (not lt!227505))))

(assert (=> d!190871 (= lt!227505 e!328665)))

(declare-fun res!232004 () Bool)

(assert (=> d!190871 (=> res!232004 e!328665)))

(assert (=> d!190871 (= res!232004 ((_ is Nil!5343) input!2705))))

(assert (=> d!190871 (= (isPrefix!645 input!2705 input!2705) lt!227505)))

(assert (= (and d!190871 (not res!232004)) b!543939))

(assert (= (and b!543939 res!232001) b!543940))

(assert (= (and b!543940 res!232003) b!543941))

(assert (= (and d!190871 (not res!232002)) b!543942))

(assert (=> b!543940 m!792023))

(assert (=> b!543940 m!792023))

(assert (=> b!543942 m!791723))

(assert (=> b!543942 m!791723))

(assert (=> b!543941 m!792027))

(assert (=> b!543941 m!792027))

(assert (=> b!543941 m!792027))

(assert (=> b!543941 m!792027))

(declare-fun m!792277 () Bool)

(assert (=> b!543941 m!792277))

(assert (=> b!543483 d!190871))

(declare-fun d!190873 () Bool)

(assert (=> d!190873 (ruleValid!223 thiss!22590 (rule!1715 (_1!3456 (v!16165 lt!227327))))))

(declare-fun lt!227510 () Unit!9353)

(declare-fun choose!3843 (LexerInterface!889 Rule!1806 List!5355) Unit!9353)

(assert (=> d!190873 (= lt!227510 (choose!3843 thiss!22590 (rule!1715 (_1!3456 (v!16165 lt!227327))) rules!3103))))

(assert (=> d!190873 (contains!1245 rules!3103 (rule!1715 (_1!3456 (v!16165 lt!227327))))))

(assert (=> d!190873 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!82 thiss!22590 (rule!1715 (_1!3456 (v!16165 lt!227327))) rules!3103) lt!227510)))

(declare-fun bs!67588 () Bool)

(assert (= bs!67588 d!190873))

(assert (=> bs!67588 m!791629))

(declare-fun m!792279 () Bool)

(assert (=> bs!67588 m!792279))

(assert (=> bs!67588 m!791551))

(assert (=> b!543483 d!190873))

(declare-fun d!190875 () Bool)

(assert (=> d!190875 (= (list!2215 (charsOf!632 (_1!3456 (v!16165 lt!227327)))) (list!2217 (c!102635 (charsOf!632 (_1!3456 (v!16165 lt!227327))))))))

(declare-fun bs!67589 () Bool)

(assert (= bs!67589 d!190875))

(declare-fun m!792281 () Bool)

(assert (=> bs!67589 m!792281))

(assert (=> b!543483 d!190875))

(declare-fun d!190877 () Bool)

(assert (=> d!190877 (ruleValid!223 thiss!22590 (rule!1715 token!491))))

(declare-fun lt!227511 () Unit!9353)

(assert (=> d!190877 (= lt!227511 (choose!3843 thiss!22590 (rule!1715 token!491) rules!3103))))

(assert (=> d!190877 (contains!1245 rules!3103 (rule!1715 token!491))))

(assert (=> d!190877 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!82 thiss!22590 (rule!1715 token!491) rules!3103) lt!227511)))

(declare-fun bs!67590 () Bool)

(assert (= bs!67590 d!190877))

(assert (=> bs!67590 m!791597))

(declare-fun m!792283 () Bool)

(assert (=> bs!67590 m!792283))

(assert (=> bs!67590 m!791663))

(assert (=> b!543483 d!190877))

(declare-fun d!190879 () Bool)

(assert (=> d!190879 (isPrefix!645 input!2705 (++!1491 input!2705 suffix!1342))))

(declare-fun lt!227512 () Unit!9353)

(assert (=> d!190879 (= lt!227512 (choose!3840 input!2705 suffix!1342))))

(assert (=> d!190879 (= (lemmaConcatTwoListThenFirstIsPrefix!496 input!2705 suffix!1342) lt!227512)))

(declare-fun bs!67591 () Bool)

(assert (= bs!67591 d!190879))

(assert (=> bs!67591 m!791673))

(assert (=> bs!67591 m!791673))

(declare-fun m!792285 () Bool)

(assert (=> bs!67591 m!792285))

(declare-fun m!792287 () Bool)

(assert (=> bs!67591 m!792287))

(assert (=> b!543483 d!190879))

(declare-fun d!190881 () Bool)

(declare-fun res!232005 () Bool)

(declare-fun e!328674 () Bool)

(assert (=> d!190881 (=> (not res!232005) (not e!328674))))

(assert (=> d!190881 (= res!232005 (validRegex!444 (regex!1003 (rule!1715 token!491))))))

(assert (=> d!190881 (= (ruleValid!223 thiss!22590 (rule!1715 token!491)) e!328674)))

(declare-fun b!543955 () Bool)

(declare-fun res!232006 () Bool)

(assert (=> b!543955 (=> (not res!232006) (not e!328674))))

(assert (=> b!543955 (= res!232006 (not (nullable!349 (regex!1003 (rule!1715 token!491)))))))

(declare-fun b!543956 () Bool)

(assert (=> b!543956 (= e!328674 (not (= (tag!1265 (rule!1715 token!491)) (String!6880 ""))))))

(assert (= (and d!190881 res!232005) b!543955))

(assert (= (and b!543955 res!232006) b!543956))

(assert (=> d!190881 m!792035))

(assert (=> b!543955 m!792025))

(assert (=> b!543483 d!190881))

(declare-fun d!190883 () Bool)

(declare-fun fromListB!523 (List!5353) BalanceConc!3448)

(assert (=> d!190883 (= (seqFromList!1201 lt!227296) (fromListB!523 lt!227296))))

(declare-fun bs!67593 () Bool)

(assert (= bs!67593 d!190883))

(declare-fun m!792295 () Bool)

(assert (=> bs!67593 m!792295))

(assert (=> b!543483 d!190883))

(declare-fun d!190895 () Bool)

(assert (=> d!190895 (= (_2!3456 (v!16165 lt!227327)) lt!227303)))

(declare-fun lt!227517 () Unit!9353)

(declare-fun choose!3844 (List!5353 List!5353 List!5353 List!5353 List!5353) Unit!9353)

(assert (=> d!190895 (= lt!227517 (choose!3844 lt!227296 (_2!3456 (v!16165 lt!227327)) lt!227296 lt!227303 input!2705))))

(assert (=> d!190895 (isPrefix!645 lt!227296 input!2705)))

(assert (=> d!190895 (= (lemmaSamePrefixThenSameSuffix!372 lt!227296 (_2!3456 (v!16165 lt!227327)) lt!227296 lt!227303 input!2705) lt!227517)))

(declare-fun bs!67594 () Bool)

(assert (= bs!67594 d!190895))

(declare-fun m!792297 () Bool)

(assert (=> bs!67594 m!792297))

(assert (=> bs!67594 m!791939))

(assert (=> b!543483 d!190895))

(declare-fun d!190897 () Bool)

(assert (=> d!190897 (and (= lt!227299 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!227520 () Unit!9353)

(declare-fun choose!3845 (List!5353 List!5353 List!5353 List!5353) Unit!9353)

(assert (=> d!190897 (= lt!227520 (choose!3845 lt!227299 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!190897 (= (++!1491 lt!227299 suffix!1342) (++!1491 input!2705 suffix!1342))))

(assert (=> d!190897 (= (lemmaConcatSameAndSameSizesThenSameLists!88 lt!227299 suffix!1342 input!2705 suffix!1342) lt!227520)))

(declare-fun bs!67595 () Bool)

(assert (= bs!67595 d!190897))

(declare-fun m!792305 () Bool)

(assert (=> bs!67595 m!792305))

(assert (=> bs!67595 m!791681))

(assert (=> bs!67595 m!791673))

(assert (=> b!543483 d!190897))

(declare-fun d!190899 () Bool)

(declare-fun lt!227521 () BalanceConc!3448)

(assert (=> d!190899 (= (list!2215 lt!227521) (originalCharacters!1042 (_1!3456 (v!16165 lt!227327))))))

(assert (=> d!190899 (= lt!227521 (dynLambda!3120 (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))) (value!33452 (_1!3456 (v!16165 lt!227327)))))))

(assert (=> d!190899 (= (charsOf!632 (_1!3456 (v!16165 lt!227327))) lt!227521)))

(declare-fun b_lambda!20873 () Bool)

(assert (=> (not b_lambda!20873) (not d!190899)))

(declare-fun tb!47763 () Bool)

(declare-fun t!74550 () Bool)

(assert (=> (and b!543470 (= (toChars!1709 (transformation!1003 (h!10746 rules!3103))) (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))))) t!74550) tb!47763))

(declare-fun b!543998 () Bool)

(declare-fun e!328697 () Bool)

(declare-fun tp!172924 () Bool)

(assert (=> b!543998 (= e!328697 (and (inv!6706 (c!102635 (dynLambda!3120 (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))) (value!33452 (_1!3456 (v!16165 lt!227327)))))) tp!172924))))

(declare-fun result!53390 () Bool)

(assert (=> tb!47763 (= result!53390 (and (inv!6707 (dynLambda!3120 (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))) (value!33452 (_1!3456 (v!16165 lt!227327))))) e!328697))))

(assert (= tb!47763 b!543998))

(declare-fun m!792307 () Bool)

(assert (=> b!543998 m!792307))

(declare-fun m!792309 () Bool)

(assert (=> tb!47763 m!792309))

(assert (=> d!190899 t!74550))

(declare-fun b_and!53111 () Bool)

(assert (= b_and!53091 (and (=> t!74550 result!53390) b_and!53111)))

(declare-fun tb!47765 () Bool)

(declare-fun t!74552 () Bool)

(assert (=> (and b!543474 (= (toChars!1709 (transformation!1003 (rule!1715 token!491))) (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))))) t!74552) tb!47765))

(declare-fun result!53392 () Bool)

(assert (= result!53392 result!53390))

(assert (=> d!190899 t!74552))

(declare-fun b_and!53113 () Bool)

(assert (= b_and!53093 (and (=> t!74552 result!53392) b_and!53113)))

(declare-fun m!792311 () Bool)

(assert (=> d!190899 m!792311))

(declare-fun m!792313 () Bool)

(assert (=> d!190899 m!792313))

(assert (=> b!543483 d!190899))

(declare-fun d!190901 () Bool)

(assert (=> d!190901 (isPrefix!645 lt!227296 (++!1491 lt!227296 (_2!3456 (v!16165 lt!227327))))))

(declare-fun lt!227522 () Unit!9353)

(assert (=> d!190901 (= lt!227522 (choose!3840 lt!227296 (_2!3456 (v!16165 lt!227327))))))

(assert (=> d!190901 (= (lemmaConcatTwoListThenFirstIsPrefix!496 lt!227296 (_2!3456 (v!16165 lt!227327))) lt!227522)))

(declare-fun bs!67596 () Bool)

(assert (= bs!67596 d!190901))

(assert (=> bs!67596 m!791631))

(assert (=> bs!67596 m!791631))

(declare-fun m!792315 () Bool)

(assert (=> bs!67596 m!792315))

(declare-fun m!792317 () Bool)

(assert (=> bs!67596 m!792317))

(assert (=> b!543483 d!190901))

(declare-fun lt!227523 () List!5353)

(declare-fun b!544005 () Bool)

(declare-fun e!328702 () Bool)

(assert (=> b!544005 (= e!328702 (or (not (= (_2!3456 (v!16165 lt!227327)) Nil!5343)) (= lt!227523 lt!227296)))))

(declare-fun b!544002 () Bool)

(declare-fun e!328703 () List!5353)

(assert (=> b!544002 (= e!328703 (_2!3456 (v!16165 lt!227327)))))

(declare-fun b!544004 () Bool)

(declare-fun res!232011 () Bool)

(assert (=> b!544004 (=> (not res!232011) (not e!328702))))

(assert (=> b!544004 (= res!232011 (= (size!4287 lt!227523) (+ (size!4287 lt!227296) (size!4287 (_2!3456 (v!16165 lt!227327))))))))

(declare-fun d!190903 () Bool)

(assert (=> d!190903 e!328702))

(declare-fun res!232010 () Bool)

(assert (=> d!190903 (=> (not res!232010) (not e!328702))))

(assert (=> d!190903 (= res!232010 (= (content!928 lt!227523) ((_ map or) (content!928 lt!227296) (content!928 (_2!3456 (v!16165 lt!227327))))))))

(assert (=> d!190903 (= lt!227523 e!328703)))

(declare-fun c!102724 () Bool)

(assert (=> d!190903 (= c!102724 ((_ is Nil!5343) lt!227296))))

(assert (=> d!190903 (= (++!1491 lt!227296 (_2!3456 (v!16165 lt!227327))) lt!227523)))

(declare-fun b!544003 () Bool)

(assert (=> b!544003 (= e!328703 (Cons!5343 (h!10744 lt!227296) (++!1491 (t!74510 lt!227296) (_2!3456 (v!16165 lt!227327)))))))

(assert (= (and d!190903 c!102724) b!544002))

(assert (= (and d!190903 (not c!102724)) b!544003))

(assert (= (and d!190903 res!232010) b!544004))

(assert (= (and b!544004 res!232011) b!544005))

(declare-fun m!792319 () Bool)

(assert (=> b!544004 m!792319))

(assert (=> b!544004 m!791605))

(declare-fun m!792321 () Bool)

(assert (=> b!544004 m!792321))

(declare-fun m!792323 () Bool)

(assert (=> d!190903 m!792323))

(declare-fun m!792325 () Bool)

(assert (=> d!190903 m!792325))

(declare-fun m!792327 () Bool)

(assert (=> d!190903 m!792327))

(declare-fun m!792329 () Bool)

(assert (=> b!544003 m!792329))

(assert (=> b!543483 d!190903))

(declare-fun d!190905 () Bool)

(declare-fun e!328704 () Bool)

(assert (=> d!190905 e!328704))

(declare-fun res!232012 () Bool)

(assert (=> d!190905 (=> (not res!232012) (not e!328704))))

(assert (=> d!190905 (= res!232012 (semiInverseModEq!387 (toChars!1709 (transformation!1003 (rule!1715 token!491))) (toValue!1850 (transformation!1003 (rule!1715 token!491)))))))

(declare-fun Unit!9366 () Unit!9353)

(assert (=> d!190905 (= (lemmaInv!151 (transformation!1003 (rule!1715 token!491))) Unit!9366)))

(declare-fun b!544006 () Bool)

(assert (=> b!544006 (= e!328704 (equivClasses!370 (toChars!1709 (transformation!1003 (rule!1715 token!491))) (toValue!1850 (transformation!1003 (rule!1715 token!491)))))))

(assert (= (and d!190905 res!232012) b!544006))

(assert (=> d!190905 m!791737))

(assert (=> b!544006 m!791739))

(assert (=> b!543483 d!190905))

(declare-fun d!190907 () Bool)

(assert (=> d!190907 (= (get!2019 lt!227327) (v!16165 lt!227327))))

(assert (=> b!543464 d!190907))

(declare-fun d!190909 () Bool)

(declare-fun lt!227524 () Bool)

(assert (=> d!190909 (= lt!227524 (select (content!929 rules!3103) (rule!1715 (_1!3456 (v!16165 lt!227327)))))))

(declare-fun e!328705 () Bool)

(assert (=> d!190909 (= lt!227524 e!328705)))

(declare-fun res!232013 () Bool)

(assert (=> d!190909 (=> (not res!232013) (not e!328705))))

(assert (=> d!190909 (= res!232013 ((_ is Cons!5345) rules!3103))))

(assert (=> d!190909 (= (contains!1245 rules!3103 (rule!1715 (_1!3456 (v!16165 lt!227327)))) lt!227524)))

(declare-fun b!544007 () Bool)

(declare-fun e!328706 () Bool)

(assert (=> b!544007 (= e!328705 e!328706)))

(declare-fun res!232014 () Bool)

(assert (=> b!544007 (=> res!232014 e!328706)))

(assert (=> b!544007 (= res!232014 (= (h!10746 rules!3103) (rule!1715 (_1!3456 (v!16165 lt!227327)))))))

(declare-fun b!544008 () Bool)

(assert (=> b!544008 (= e!328706 (contains!1245 (t!74512 rules!3103) (rule!1715 (_1!3456 (v!16165 lt!227327)))))))

(assert (= (and d!190909 res!232013) b!544007))

(assert (= (and b!544007 (not res!232014)) b!544008))

(assert (=> d!190909 m!791741))

(declare-fun m!792335 () Bool)

(assert (=> d!190909 m!792335))

(declare-fun m!792337 () Bool)

(assert (=> b!544008 m!792337))

(assert (=> b!543460 d!190909))

(declare-fun d!190911 () Bool)

(assert (=> d!190911 (= (isEmpty!3858 rules!3103) ((_ is Nil!5345) rules!3103))))

(assert (=> b!543461 d!190911))

(declare-fun b!544038 () Bool)

(declare-fun res!232033 () Bool)

(declare-fun e!328721 () Bool)

(assert (=> b!544038 (=> (not res!232033) (not e!328721))))

(declare-fun lt!227537 () Option!1353)

(assert (=> b!544038 (= res!232033 (< (size!4287 (_2!3456 (get!2019 lt!227537))) (size!4287 lt!227330)))))

(declare-fun b!544039 () Bool)

(declare-fun e!328724 () Bool)

(assert (=> b!544039 (= e!328724 e!328721)))

(declare-fun res!232031 () Bool)

(assert (=> b!544039 (=> (not res!232031) (not e!328721))))

(assert (=> b!544039 (= res!232031 (matchR!496 (regex!1003 (rule!1715 token!491)) (list!2215 (charsOf!632 (_1!3456 (get!2019 lt!227537))))))))

(declare-fun b!544040 () Bool)

(declare-fun res!232034 () Bool)

(assert (=> b!544040 (=> (not res!232034) (not e!328721))))

(assert (=> b!544040 (= res!232034 (= (++!1491 (list!2215 (charsOf!632 (_1!3456 (get!2019 lt!227537)))) (_2!3456 (get!2019 lt!227537))) lt!227330))))

(declare-fun b!544041 () Bool)

(declare-fun res!232029 () Bool)

(assert (=> b!544041 (=> (not res!232029) (not e!328721))))

(assert (=> b!544041 (= res!232029 (= (value!33452 (_1!3456 (get!2019 lt!227537))) (apply!1278 (transformation!1003 (rule!1715 (_1!3456 (get!2019 lt!227537)))) (seqFromList!1201 (originalCharacters!1042 (_1!3456 (get!2019 lt!227537)))))))))

(declare-fun d!190913 () Bool)

(assert (=> d!190913 e!328724))

(declare-fun res!232032 () Bool)

(assert (=> d!190913 (=> res!232032 e!328724)))

(assert (=> d!190913 (= res!232032 (isEmpty!3861 lt!227537))))

(declare-fun e!328722 () Option!1353)

(assert (=> d!190913 (= lt!227537 e!328722)))

(declare-fun c!102727 () Bool)

(declare-datatypes ((tuple2!6388 0))(
  ( (tuple2!6389 (_1!3458 List!5353) (_2!3458 List!5353)) )
))
(declare-fun lt!227538 () tuple2!6388)

(assert (=> d!190913 (= c!102727 (isEmpty!3859 (_1!3458 lt!227538)))))

(declare-fun findLongestMatch!112 (Regex!1337 List!5353) tuple2!6388)

(assert (=> d!190913 (= lt!227538 (findLongestMatch!112 (regex!1003 (rule!1715 token!491)) lt!227330))))

(assert (=> d!190913 (ruleValid!223 thiss!22590 (rule!1715 token!491))))

(assert (=> d!190913 (= (maxPrefixOneRule!302 thiss!22590 (rule!1715 token!491) lt!227330) lt!227537)))

(declare-fun b!544042 () Bool)

(declare-fun res!232030 () Bool)

(assert (=> b!544042 (=> (not res!232030) (not e!328721))))

(assert (=> b!544042 (= res!232030 (= (rule!1715 (_1!3456 (get!2019 lt!227537))) (rule!1715 token!491)))))

(declare-fun b!544043 () Bool)

(declare-fun size!4289 (BalanceConc!3448) Int)

(assert (=> b!544043 (= e!328722 (Some!1352 (tuple2!6385 (Token!1743 (apply!1278 (transformation!1003 (rule!1715 token!491)) (seqFromList!1201 (_1!3458 lt!227538))) (rule!1715 token!491) (size!4289 (seqFromList!1201 (_1!3458 lt!227538))) (_1!3458 lt!227538)) (_2!3458 lt!227538))))))

(declare-fun lt!227536 () Unit!9353)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!117 (Regex!1337 List!5353) Unit!9353)

(assert (=> b!544043 (= lt!227536 (longestMatchIsAcceptedByMatchOrIsEmpty!117 (regex!1003 (rule!1715 token!491)) lt!227330))))

(declare-fun res!232035 () Bool)

(declare-fun findLongestMatchInner!133 (Regex!1337 List!5353 Int List!5353 List!5353 Int) tuple2!6388)

(assert (=> b!544043 (= res!232035 (isEmpty!3859 (_1!3458 (findLongestMatchInner!133 (regex!1003 (rule!1715 token!491)) Nil!5343 (size!4287 Nil!5343) lt!227330 lt!227330 (size!4287 lt!227330)))))))

(declare-fun e!328723 () Bool)

(assert (=> b!544043 (=> res!232035 e!328723)))

(assert (=> b!544043 e!328723))

(declare-fun lt!227535 () Unit!9353)

(assert (=> b!544043 (= lt!227535 lt!227536)))

(declare-fun lt!227539 () Unit!9353)

(assert (=> b!544043 (= lt!227539 (lemmaSemiInverse!132 (transformation!1003 (rule!1715 token!491)) (seqFromList!1201 (_1!3458 lt!227538))))))

(declare-fun b!544044 () Bool)

(assert (=> b!544044 (= e!328723 (matchR!496 (regex!1003 (rule!1715 token!491)) (_1!3458 (findLongestMatchInner!133 (regex!1003 (rule!1715 token!491)) Nil!5343 (size!4287 Nil!5343) lt!227330 lt!227330 (size!4287 lt!227330)))))))

(declare-fun b!544045 () Bool)

(assert (=> b!544045 (= e!328722 None!1352)))

(declare-fun b!544046 () Bool)

(assert (=> b!544046 (= e!328721 (= (size!4286 (_1!3456 (get!2019 lt!227537))) (size!4287 (originalCharacters!1042 (_1!3456 (get!2019 lt!227537))))))))

(assert (= (and d!190913 c!102727) b!544045))

(assert (= (and d!190913 (not c!102727)) b!544043))

(assert (= (and b!544043 (not res!232035)) b!544044))

(assert (= (and d!190913 (not res!232032)) b!544039))

(assert (= (and b!544039 res!232031) b!544040))

(assert (= (and b!544040 res!232034) b!544038))

(assert (= (and b!544038 res!232033) b!544042))

(assert (= (and b!544042 res!232030) b!544041))

(assert (= (and b!544041 res!232029) b!544046))

(declare-fun m!792339 () Bool)

(assert (=> b!544041 m!792339))

(declare-fun m!792341 () Bool)

(assert (=> b!544041 m!792341))

(assert (=> b!544041 m!792341))

(declare-fun m!792343 () Bool)

(assert (=> b!544041 m!792343))

(declare-fun m!792345 () Bool)

(assert (=> d!190913 m!792345))

(declare-fun m!792347 () Bool)

(assert (=> d!190913 m!792347))

(declare-fun m!792349 () Bool)

(assert (=> d!190913 m!792349))

(assert (=> d!190913 m!791597))

(assert (=> b!544038 m!792339))

(declare-fun m!792351 () Bool)

(assert (=> b!544038 m!792351))

(assert (=> b!544038 m!791763))

(assert (=> b!544042 m!792339))

(assert (=> b!544046 m!792339))

(declare-fun m!792353 () Bool)

(assert (=> b!544046 m!792353))

(declare-fun m!792355 () Bool)

(assert (=> b!544043 m!792355))

(declare-fun m!792357 () Bool)

(assert (=> b!544043 m!792357))

(assert (=> b!544043 m!792357))

(declare-fun m!792359 () Bool)

(assert (=> b!544043 m!792359))

(assert (=> b!544043 m!791763))

(declare-fun m!792361 () Bool)

(assert (=> b!544043 m!792361))

(declare-fun m!792363 () Bool)

(assert (=> b!544043 m!792363))

(assert (=> b!544043 m!792357))

(declare-fun m!792365 () Bool)

(assert (=> b!544043 m!792365))

(assert (=> b!544043 m!792361))

(assert (=> b!544043 m!791763))

(declare-fun m!792367 () Bool)

(assert (=> b!544043 m!792367))

(assert (=> b!544043 m!792357))

(declare-fun m!792369 () Bool)

(assert (=> b!544043 m!792369))

(assert (=> b!544044 m!792361))

(assert (=> b!544044 m!791763))

(assert (=> b!544044 m!792361))

(assert (=> b!544044 m!791763))

(assert (=> b!544044 m!792367))

(declare-fun m!792371 () Bool)

(assert (=> b!544044 m!792371))

(assert (=> b!544040 m!792339))

(declare-fun m!792373 () Bool)

(assert (=> b!544040 m!792373))

(assert (=> b!544040 m!792373))

(declare-fun m!792375 () Bool)

(assert (=> b!544040 m!792375))

(assert (=> b!544040 m!792375))

(declare-fun m!792377 () Bool)

(assert (=> b!544040 m!792377))

(assert (=> b!544039 m!792339))

(assert (=> b!544039 m!792373))

(assert (=> b!544039 m!792373))

(assert (=> b!544039 m!792375))

(assert (=> b!544039 m!792375))

(declare-fun m!792379 () Bool)

(assert (=> b!544039 m!792379))

(assert (=> b!543482 d!190913))

(declare-fun d!190915 () Bool)

(assert (=> d!190915 (= (apply!1278 (transformation!1003 (rule!1715 token!491)) lt!227318) (dynLambda!3121 (toValue!1850 (transformation!1003 (rule!1715 token!491))) lt!227318))))

(declare-fun b_lambda!20885 () Bool)

(assert (=> (not b_lambda!20885) (not d!190915)))

(declare-fun t!74567 () Bool)

(declare-fun tb!47779 () Bool)

(assert (=> (and b!543470 (= (toValue!1850 (transformation!1003 (h!10746 rules!3103))) (toValue!1850 (transformation!1003 (rule!1715 token!491)))) t!74567) tb!47779))

(declare-fun result!53408 () Bool)

(assert (=> tb!47779 (= result!53408 (inv!21 (dynLambda!3121 (toValue!1850 (transformation!1003 (rule!1715 token!491))) lt!227318)))))

(declare-fun m!792381 () Bool)

(assert (=> tb!47779 m!792381))

(assert (=> d!190915 t!74567))

(declare-fun b_and!53119 () Bool)

(assert (= b_and!53103 (and (=> t!74567 result!53408) b_and!53119)))

(declare-fun t!74569 () Bool)

(declare-fun tb!47781 () Bool)

(assert (=> (and b!543474 (= (toValue!1850 (transformation!1003 (rule!1715 token!491))) (toValue!1850 (transformation!1003 (rule!1715 token!491)))) t!74569) tb!47781))

(declare-fun result!53410 () Bool)

(assert (= result!53410 result!53408))

(assert (=> d!190915 t!74569))

(declare-fun b_and!53121 () Bool)

(assert (= b_and!53105 (and (=> t!74569 result!53410) b_and!53121)))

(declare-fun m!792383 () Bool)

(assert (=> d!190915 m!792383))

(assert (=> b!543482 d!190915))

(declare-fun d!190917 () Bool)

(declare-fun lt!227540 () List!5353)

(assert (=> d!190917 (= (++!1491 lt!227299 lt!227540) lt!227330)))

(declare-fun e!328726 () List!5353)

(assert (=> d!190917 (= lt!227540 e!328726)))

(declare-fun c!102728 () Bool)

(assert (=> d!190917 (= c!102728 ((_ is Cons!5343) lt!227299))))

(assert (=> d!190917 (>= (size!4287 lt!227330) (size!4287 lt!227299))))

(assert (=> d!190917 (= (getSuffix!168 lt!227330 lt!227299) lt!227540)))

(declare-fun b!544047 () Bool)

(assert (=> b!544047 (= e!328726 (getSuffix!168 (tail!715 lt!227330) (t!74510 lt!227299)))))

(declare-fun b!544048 () Bool)

(assert (=> b!544048 (= e!328726 lt!227330)))

(assert (= (and d!190917 c!102728) b!544047))

(assert (= (and d!190917 (not c!102728)) b!544048))

(declare-fun m!792385 () Bool)

(assert (=> d!190917 m!792385))

(assert (=> d!190917 m!791763))

(assert (=> d!190917 m!791611))

(assert (=> b!544047 m!792143))

(assert (=> b!544047 m!792143))

(declare-fun m!792387 () Bool)

(assert (=> b!544047 m!792387))

(assert (=> b!543482 d!190917))

(declare-fun bs!67597 () Bool)

(declare-fun d!190919 () Bool)

(assert (= bs!67597 (and d!190919 d!190701)))

(declare-fun lambda!15471 () Int)

(assert (=> bs!67597 (= (and (= (toChars!1709 (transformation!1003 (rule!1715 token!491))) (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))))) (= (toValue!1850 (transformation!1003 (rule!1715 token!491))) (toValue!1850 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327))))))) (= lambda!15471 lambda!15467))))

(declare-fun b!544049 () Bool)

(declare-fun e!328727 () Bool)

(assert (=> b!544049 (= e!328727 true)))

(assert (=> d!190919 e!328727))

(assert (= d!190919 b!544049))

(assert (=> b!544049 (< (dynLambda!3117 order!4445 (toValue!1850 (transformation!1003 (rule!1715 token!491)))) (dynLambda!3118 order!4447 lambda!15471))))

(assert (=> b!544049 (< (dynLambda!3119 order!4449 (toChars!1709 (transformation!1003 (rule!1715 token!491)))) (dynLambda!3118 order!4447 lambda!15471))))

(assert (=> d!190919 (= (list!2215 (dynLambda!3120 (toChars!1709 (transformation!1003 (rule!1715 token!491))) (dynLambda!3121 (toValue!1850 (transformation!1003 (rule!1715 token!491))) lt!227318))) (list!2215 lt!227318))))

(declare-fun lt!227541 () Unit!9353)

(assert (=> d!190919 (= lt!227541 (ForallOf!82 lambda!15471 lt!227318))))

(assert (=> d!190919 (= (lemmaSemiInverse!132 (transformation!1003 (rule!1715 token!491)) lt!227318) lt!227541)))

(declare-fun b_lambda!20887 () Bool)

(assert (=> (not b_lambda!20887) (not d!190919)))

(declare-fun tb!47783 () Bool)

(declare-fun t!74571 () Bool)

(assert (=> (and b!543470 (= (toChars!1709 (transformation!1003 (h!10746 rules!3103))) (toChars!1709 (transformation!1003 (rule!1715 token!491)))) t!74571) tb!47783))

(declare-fun e!328728 () Bool)

(declare-fun b!544050 () Bool)

(declare-fun tp!172939 () Bool)

(assert (=> b!544050 (= e!328728 (and (inv!6706 (c!102635 (dynLambda!3120 (toChars!1709 (transformation!1003 (rule!1715 token!491))) (dynLambda!3121 (toValue!1850 (transformation!1003 (rule!1715 token!491))) lt!227318)))) tp!172939))))

(declare-fun result!53412 () Bool)

(assert (=> tb!47783 (= result!53412 (and (inv!6707 (dynLambda!3120 (toChars!1709 (transformation!1003 (rule!1715 token!491))) (dynLambda!3121 (toValue!1850 (transformation!1003 (rule!1715 token!491))) lt!227318))) e!328728))))

(assert (= tb!47783 b!544050))

(declare-fun m!792389 () Bool)

(assert (=> b!544050 m!792389))

(declare-fun m!792391 () Bool)

(assert (=> tb!47783 m!792391))

(assert (=> d!190919 t!74571))

(declare-fun b_and!53123 () Bool)

(assert (= b_and!53111 (and (=> t!74571 result!53412) b_and!53123)))

(declare-fun t!74573 () Bool)

(declare-fun tb!47785 () Bool)

(assert (=> (and b!543474 (= (toChars!1709 (transformation!1003 (rule!1715 token!491))) (toChars!1709 (transformation!1003 (rule!1715 token!491)))) t!74573) tb!47785))

(declare-fun result!53414 () Bool)

(assert (= result!53414 result!53412))

(assert (=> d!190919 t!74573))

(declare-fun b_and!53125 () Bool)

(assert (= b_and!53113 (and (=> t!74573 result!53414) b_and!53125)))

(declare-fun b_lambda!20889 () Bool)

(assert (=> (not b_lambda!20889) (not d!190919)))

(assert (=> d!190919 t!74567))

(declare-fun b_and!53127 () Bool)

(assert (= b_and!53119 (and (=> t!74567 result!53408) b_and!53127)))

(assert (=> d!190919 t!74569))

(declare-fun b_and!53129 () Bool)

(assert (= b_and!53121 (and (=> t!74569 result!53410) b_and!53129)))

(declare-fun m!792393 () Bool)

(assert (=> d!190919 m!792393))

(declare-fun m!792395 () Bool)

(assert (=> d!190919 m!792395))

(assert (=> d!190919 m!792383))

(declare-fun m!792397 () Bool)

(assert (=> d!190919 m!792397))

(assert (=> d!190919 m!792397))

(declare-fun m!792399 () Bool)

(assert (=> d!190919 m!792399))

(assert (=> d!190919 m!792383))

(assert (=> b!543482 d!190919))

(declare-fun d!190921 () Bool)

(assert (=> d!190921 (= (maxPrefixOneRule!302 thiss!22590 (rule!1715 (_1!3456 (v!16165 lt!227327))) input!2705) (Some!1352 (tuple2!6385 (Token!1743 (apply!1278 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))) (seqFromList!1201 lt!227296)) (rule!1715 (_1!3456 (v!16165 lt!227327))) (size!4287 lt!227296) lt!227296) (_2!3456 (v!16165 lt!227327)))))))

(declare-fun lt!227544 () Unit!9353)

(declare-fun choose!3846 (LexerInterface!889 List!5355 List!5353 List!5353 List!5353 Rule!1806) Unit!9353)

(assert (=> d!190921 (= lt!227544 (choose!3846 thiss!22590 rules!3103 lt!227296 input!2705 (_2!3456 (v!16165 lt!227327)) (rule!1715 (_1!3456 (v!16165 lt!227327)))))))

(assert (=> d!190921 (not (isEmpty!3858 rules!3103))))

(assert (=> d!190921 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!54 thiss!22590 rules!3103 lt!227296 input!2705 (_2!3456 (v!16165 lt!227327)) (rule!1715 (_1!3456 (v!16165 lt!227327)))) lt!227544)))

(declare-fun bs!67598 () Bool)

(assert (= bs!67598 d!190921))

(assert (=> bs!67598 m!791605))

(assert (=> bs!67598 m!791627))

(declare-fun m!792401 () Bool)

(assert (=> bs!67598 m!792401))

(assert (=> bs!67598 m!791677))

(declare-fun m!792403 () Bool)

(assert (=> bs!67598 m!792403))

(assert (=> bs!67598 m!791627))

(assert (=> bs!67598 m!791569))

(assert (=> b!543482 d!190921))

(declare-fun b!544051 () Bool)

(declare-fun res!232040 () Bool)

(declare-fun e!328729 () Bool)

(assert (=> b!544051 (=> (not res!232040) (not e!328729))))

(declare-fun lt!227547 () Option!1353)

(assert (=> b!544051 (= res!232040 (< (size!4287 (_2!3456 (get!2019 lt!227547))) (size!4287 input!2705)))))

(declare-fun b!544052 () Bool)

(declare-fun e!328732 () Bool)

(assert (=> b!544052 (= e!328732 e!328729)))

(declare-fun res!232038 () Bool)

(assert (=> b!544052 (=> (not res!232038) (not e!328729))))

(assert (=> b!544052 (= res!232038 (matchR!496 (regex!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))) (list!2215 (charsOf!632 (_1!3456 (get!2019 lt!227547))))))))

(declare-fun b!544053 () Bool)

(declare-fun res!232041 () Bool)

(assert (=> b!544053 (=> (not res!232041) (not e!328729))))

(assert (=> b!544053 (= res!232041 (= (++!1491 (list!2215 (charsOf!632 (_1!3456 (get!2019 lt!227547)))) (_2!3456 (get!2019 lt!227547))) input!2705))))

(declare-fun b!544054 () Bool)

(declare-fun res!232036 () Bool)

(assert (=> b!544054 (=> (not res!232036) (not e!328729))))

(assert (=> b!544054 (= res!232036 (= (value!33452 (_1!3456 (get!2019 lt!227547))) (apply!1278 (transformation!1003 (rule!1715 (_1!3456 (get!2019 lt!227547)))) (seqFromList!1201 (originalCharacters!1042 (_1!3456 (get!2019 lt!227547)))))))))

(declare-fun d!190923 () Bool)

(assert (=> d!190923 e!328732))

(declare-fun res!232039 () Bool)

(assert (=> d!190923 (=> res!232039 e!328732)))

(assert (=> d!190923 (= res!232039 (isEmpty!3861 lt!227547))))

(declare-fun e!328730 () Option!1353)

(assert (=> d!190923 (= lt!227547 e!328730)))

(declare-fun c!102729 () Bool)

(declare-fun lt!227548 () tuple2!6388)

(assert (=> d!190923 (= c!102729 (isEmpty!3859 (_1!3458 lt!227548)))))

(assert (=> d!190923 (= lt!227548 (findLongestMatch!112 (regex!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))) input!2705))))

(assert (=> d!190923 (ruleValid!223 thiss!22590 (rule!1715 (_1!3456 (v!16165 lt!227327))))))

(assert (=> d!190923 (= (maxPrefixOneRule!302 thiss!22590 (rule!1715 (_1!3456 (v!16165 lt!227327))) input!2705) lt!227547)))

(declare-fun b!544055 () Bool)

(declare-fun res!232037 () Bool)

(assert (=> b!544055 (=> (not res!232037) (not e!328729))))

(assert (=> b!544055 (= res!232037 (= (rule!1715 (_1!3456 (get!2019 lt!227547))) (rule!1715 (_1!3456 (v!16165 lt!227327)))))))

(declare-fun b!544056 () Bool)

(assert (=> b!544056 (= e!328730 (Some!1352 (tuple2!6385 (Token!1743 (apply!1278 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))) (seqFromList!1201 (_1!3458 lt!227548))) (rule!1715 (_1!3456 (v!16165 lt!227327))) (size!4289 (seqFromList!1201 (_1!3458 lt!227548))) (_1!3458 lt!227548)) (_2!3458 lt!227548))))))

(declare-fun lt!227546 () Unit!9353)

(assert (=> b!544056 (= lt!227546 (longestMatchIsAcceptedByMatchOrIsEmpty!117 (regex!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))) input!2705))))

(declare-fun res!232042 () Bool)

(assert (=> b!544056 (= res!232042 (isEmpty!3859 (_1!3458 (findLongestMatchInner!133 (regex!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))) Nil!5343 (size!4287 Nil!5343) input!2705 input!2705 (size!4287 input!2705)))))))

(declare-fun e!328731 () Bool)

(assert (=> b!544056 (=> res!232042 e!328731)))

(assert (=> b!544056 e!328731))

(declare-fun lt!227545 () Unit!9353)

(assert (=> b!544056 (= lt!227545 lt!227546)))

(declare-fun lt!227549 () Unit!9353)

(assert (=> b!544056 (= lt!227549 (lemmaSemiInverse!132 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))) (seqFromList!1201 (_1!3458 lt!227548))))))

(declare-fun b!544057 () Bool)

(assert (=> b!544057 (= e!328731 (matchR!496 (regex!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))) (_1!3458 (findLongestMatchInner!133 (regex!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))) Nil!5343 (size!4287 Nil!5343) input!2705 input!2705 (size!4287 input!2705)))))))

(declare-fun b!544058 () Bool)

(assert (=> b!544058 (= e!328730 None!1352)))

(declare-fun b!544059 () Bool)

(assert (=> b!544059 (= e!328729 (= (size!4286 (_1!3456 (get!2019 lt!227547))) (size!4287 (originalCharacters!1042 (_1!3456 (get!2019 lt!227547))))))))

(assert (= (and d!190923 c!102729) b!544058))

(assert (= (and d!190923 (not c!102729)) b!544056))

(assert (= (and b!544056 (not res!232042)) b!544057))

(assert (= (and d!190923 (not res!232039)) b!544052))

(assert (= (and b!544052 res!232038) b!544053))

(assert (= (and b!544053 res!232041) b!544051))

(assert (= (and b!544051 res!232040) b!544055))

(assert (= (and b!544055 res!232037) b!544054))

(assert (= (and b!544054 res!232036) b!544059))

(declare-fun m!792405 () Bool)

(assert (=> b!544054 m!792405))

(declare-fun m!792407 () Bool)

(assert (=> b!544054 m!792407))

(assert (=> b!544054 m!792407))

(declare-fun m!792409 () Bool)

(assert (=> b!544054 m!792409))

(declare-fun m!792411 () Bool)

(assert (=> d!190923 m!792411))

(declare-fun m!792413 () Bool)

(assert (=> d!190923 m!792413))

(declare-fun m!792415 () Bool)

(assert (=> d!190923 m!792415))

(assert (=> d!190923 m!791629))

(assert (=> b!544051 m!792405))

(declare-fun m!792417 () Bool)

(assert (=> b!544051 m!792417))

(assert (=> b!544051 m!791723))

(assert (=> b!544055 m!792405))

(assert (=> b!544059 m!792405))

(declare-fun m!792419 () Bool)

(assert (=> b!544059 m!792419))

(declare-fun m!792421 () Bool)

(assert (=> b!544056 m!792421))

(declare-fun m!792423 () Bool)

(assert (=> b!544056 m!792423))

(assert (=> b!544056 m!792423))

(declare-fun m!792425 () Bool)

(assert (=> b!544056 m!792425))

(assert (=> b!544056 m!791723))

(assert (=> b!544056 m!792361))

(declare-fun m!792427 () Bool)

(assert (=> b!544056 m!792427))

(assert (=> b!544056 m!792423))

(declare-fun m!792429 () Bool)

(assert (=> b!544056 m!792429))

(assert (=> b!544056 m!792361))

(assert (=> b!544056 m!791723))

(declare-fun m!792431 () Bool)

(assert (=> b!544056 m!792431))

(assert (=> b!544056 m!792423))

(declare-fun m!792433 () Bool)

(assert (=> b!544056 m!792433))

(assert (=> b!544057 m!792361))

(assert (=> b!544057 m!791723))

(assert (=> b!544057 m!792361))

(assert (=> b!544057 m!791723))

(assert (=> b!544057 m!792431))

(declare-fun m!792435 () Bool)

(assert (=> b!544057 m!792435))

(assert (=> b!544053 m!792405))

(declare-fun m!792437 () Bool)

(assert (=> b!544053 m!792437))

(assert (=> b!544053 m!792437))

(declare-fun m!792439 () Bool)

(assert (=> b!544053 m!792439))

(assert (=> b!544053 m!792439))

(declare-fun m!792441 () Bool)

(assert (=> b!544053 m!792441))

(assert (=> b!544052 m!792405))

(assert (=> b!544052 m!792437))

(assert (=> b!544052 m!792437))

(assert (=> b!544052 m!792439))

(assert (=> b!544052 m!792439))

(declare-fun m!792443 () Bool)

(assert (=> b!544052 m!792443))

(assert (=> b!543482 d!190923))

(declare-fun d!190925 () Bool)

(assert (=> d!190925 (= suffix!1342 lt!227311)))

(declare-fun lt!227550 () Unit!9353)

(assert (=> d!190925 (= lt!227550 (choose!3844 lt!227299 suffix!1342 lt!227299 lt!227311 lt!227330))))

(assert (=> d!190925 (isPrefix!645 lt!227299 lt!227330)))

(assert (=> d!190925 (= (lemmaSamePrefixThenSameSuffix!372 lt!227299 suffix!1342 lt!227299 lt!227311 lt!227330) lt!227550)))

(declare-fun bs!67599 () Bool)

(assert (= bs!67599 d!190925))

(declare-fun m!792445 () Bool)

(assert (=> bs!67599 m!792445))

(declare-fun m!792447 () Bool)

(assert (=> bs!67599 m!792447))

(assert (=> b!543482 d!190925))

(declare-fun d!190927 () Bool)

(assert (=> d!190927 (= (maxPrefixOneRule!302 thiss!22590 (rule!1715 token!491) lt!227330) (Some!1352 (tuple2!6385 (Token!1743 (apply!1278 (transformation!1003 (rule!1715 token!491)) (seqFromList!1201 lt!227299)) (rule!1715 token!491) (size!4287 lt!227299) lt!227299) suffix!1342)))))

(declare-fun lt!227551 () Unit!9353)

(assert (=> d!190927 (= lt!227551 (choose!3846 thiss!22590 rules!3103 lt!227299 lt!227330 suffix!1342 (rule!1715 token!491)))))

(assert (=> d!190927 (not (isEmpty!3858 rules!3103))))

(assert (=> d!190927 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!54 thiss!22590 rules!3103 lt!227299 lt!227330 suffix!1342 (rule!1715 token!491)) lt!227551)))

(declare-fun bs!67600 () Bool)

(assert (= bs!67600 d!190927))

(assert (=> bs!67600 m!791611))

(assert (=> bs!67600 m!791563))

(declare-fun m!792449 () Bool)

(assert (=> bs!67600 m!792449))

(assert (=> bs!67600 m!791677))

(declare-fun m!792451 () Bool)

(assert (=> bs!67600 m!792451))

(assert (=> bs!67600 m!791563))

(assert (=> bs!67600 m!791555))

(assert (=> b!543482 d!190927))

(assert (=> b!543482 d!190701))

(declare-fun d!190929 () Bool)

(assert (=> d!190929 (= (seqFromList!1201 lt!227299) (fromListB!523 lt!227299))))

(declare-fun bs!67601 () Bool)

(assert (= bs!67601 d!190929))

(declare-fun m!792453 () Bool)

(assert (=> bs!67601 m!792453))

(assert (=> b!543482 d!190929))

(declare-fun d!190931 () Bool)

(declare-fun res!232047 () Bool)

(declare-fun e!328735 () Bool)

(assert (=> d!190931 (=> (not res!232047) (not e!328735))))

(assert (=> d!190931 (= res!232047 (not (isEmpty!3859 (originalCharacters!1042 token!491))))))

(assert (=> d!190931 (= (inv!6703 token!491) e!328735)))

(declare-fun b!544064 () Bool)

(declare-fun res!232048 () Bool)

(assert (=> b!544064 (=> (not res!232048) (not e!328735))))

(assert (=> b!544064 (= res!232048 (= (originalCharacters!1042 token!491) (list!2215 (dynLambda!3120 (toChars!1709 (transformation!1003 (rule!1715 token!491))) (value!33452 token!491)))))))

(declare-fun b!544065 () Bool)

(assert (=> b!544065 (= e!328735 (= (size!4286 token!491) (size!4287 (originalCharacters!1042 token!491))))))

(assert (= (and d!190931 res!232047) b!544064))

(assert (= (and b!544064 res!232048) b!544065))

(declare-fun b_lambda!20891 () Bool)

(assert (=> (not b_lambda!20891) (not b!544064)))

(assert (=> b!544064 t!74542))

(declare-fun b_and!53131 () Bool)

(assert (= b_and!53123 (and (=> t!74542 result!53378) b_and!53131)))

(assert (=> b!544064 t!74544))

(declare-fun b_and!53133 () Bool)

(assert (= b_and!53125 (and (=> t!74544 result!53380) b_and!53133)))

(declare-fun m!792455 () Bool)

(assert (=> d!190931 m!792455))

(assert (=> b!544064 m!792121))

(assert (=> b!544064 m!792121))

(declare-fun m!792457 () Bool)

(assert (=> b!544064 m!792457))

(assert (=> b!544065 m!791657))

(assert (=> start!50104 d!190931))

(declare-fun b!544070 () Bool)

(declare-fun e!328738 () Bool)

(declare-fun tp!172942 () Bool)

(assert (=> b!544070 (= e!328738 (and tp_is_empty!3029 tp!172942))))

(assert (=> b!543467 (= tp!172887 e!328738)))

(assert (= (and b!543467 ((_ is Cons!5343) (t!74510 suffix!1342))) b!544070))

(declare-fun b!544071 () Bool)

(declare-fun e!328739 () Bool)

(declare-fun tp!172943 () Bool)

(assert (=> b!544071 (= e!328739 (and tp_is_empty!3029 tp!172943))))

(assert (=> b!543480 (= tp!172889 e!328739)))

(assert (= (and b!543480 ((_ is Cons!5343) (t!74510 input!2705))) b!544071))

(declare-fun b!544072 () Bool)

(declare-fun e!328740 () Bool)

(declare-fun tp!172944 () Bool)

(assert (=> b!544072 (= e!328740 (and tp_is_empty!3029 tp!172944))))

(assert (=> b!543475 (= tp!172883 e!328740)))

(assert (= (and b!543475 ((_ is Cons!5343) (originalCharacters!1042 token!491))) b!544072))

(declare-fun b!544083 () Bool)

(declare-fun b_free!15093 () Bool)

(declare-fun b_next!15109 () Bool)

(assert (=> b!544083 (= b_free!15093 (not b_next!15109))))

(declare-fun t!74575 () Bool)

(declare-fun tb!47787 () Bool)

(assert (=> (and b!544083 (= (toValue!1850 (transformation!1003 (h!10746 (t!74512 rules!3103)))) (toValue!1850 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))))) t!74575) tb!47787))

(declare-fun result!53420 () Bool)

(assert (= result!53420 result!53372))

(assert (=> d!190701 t!74575))

(assert (=> d!190859 t!74575))

(declare-fun t!74577 () Bool)

(declare-fun tb!47789 () Bool)

(assert (=> (and b!544083 (= (toValue!1850 (transformation!1003 (h!10746 (t!74512 rules!3103)))) (toValue!1850 (transformation!1003 (rule!1715 token!491)))) t!74577) tb!47789))

(declare-fun result!53422 () Bool)

(assert (= result!53422 result!53408))

(assert (=> d!190915 t!74577))

(assert (=> d!190919 t!74577))

(declare-fun tp!172954 () Bool)

(declare-fun b_and!53135 () Bool)

(assert (=> b!544083 (= tp!172954 (and (=> t!74575 result!53420) (=> t!74577 result!53422) b_and!53135))))

(declare-fun b_free!15095 () Bool)

(declare-fun b_next!15111 () Bool)

(assert (=> b!544083 (= b_free!15095 (not b_next!15111))))

(declare-fun tb!47791 () Bool)

(declare-fun t!74579 () Bool)

(assert (=> (and b!544083 (= (toChars!1709 (transformation!1003 (h!10746 (t!74512 rules!3103)))) (toChars!1709 (transformation!1003 (rule!1715 token!491)))) t!74579) tb!47791))

(declare-fun result!53424 () Bool)

(assert (= result!53424 result!53412))

(assert (=> d!190919 t!74579))

(declare-fun tb!47793 () Bool)

(declare-fun t!74581 () Bool)

(assert (=> (and b!544083 (= (toChars!1709 (transformation!1003 (h!10746 (t!74512 rules!3103)))) (toChars!1709 (transformation!1003 (rule!1715 token!491)))) t!74581) tb!47793))

(declare-fun result!53426 () Bool)

(assert (= result!53426 result!53378))

(assert (=> b!544064 t!74581))

(declare-fun tb!47795 () Bool)

(declare-fun t!74583 () Bool)

(assert (=> (and b!544083 (= (toChars!1709 (transformation!1003 (h!10746 (t!74512 rules!3103)))) (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))))) t!74583) tb!47795))

(declare-fun result!53428 () Bool)

(assert (= result!53428 result!53390))

(assert (=> d!190899 t!74583))

(assert (=> d!190789 t!74581))

(declare-fun tb!47797 () Bool)

(declare-fun t!74585 () Bool)

(assert (=> (and b!544083 (= (toChars!1709 (transformation!1003 (h!10746 (t!74512 rules!3103)))) (toChars!1709 (transformation!1003 (rule!1715 (_1!3456 (v!16165 lt!227327)))))) t!74585) tb!47797))

(declare-fun result!53430 () Bool)

(assert (= result!53430 result!53366))

(assert (=> d!190701 t!74585))

(declare-fun tp!172956 () Bool)

(declare-fun b_and!53137 () Bool)

(assert (=> b!544083 (= tp!172956 (and (=> t!74581 result!53426) (=> t!74585 result!53430) (=> t!74579 result!53424) (=> t!74583 result!53428) b_and!53137))))

(declare-fun e!328750 () Bool)

(assert (=> b!544083 (= e!328750 (and tp!172954 tp!172956))))

(declare-fun tp!172953 () Bool)

(declare-fun e!328752 () Bool)

(declare-fun b!544082 () Bool)

(assert (=> b!544082 (= e!328752 (and tp!172953 (inv!6699 (tag!1265 (h!10746 (t!74512 rules!3103)))) (inv!6702 (transformation!1003 (h!10746 (t!74512 rules!3103)))) e!328750))))

(declare-fun b!544081 () Bool)

(declare-fun e!328751 () Bool)

(declare-fun tp!172955 () Bool)

(assert (=> b!544081 (= e!328751 (and e!328752 tp!172955))))

(assert (=> b!543466 (= tp!172882 e!328751)))

(assert (= b!544082 b!544083))

(assert (= b!544081 b!544082))

(assert (= (and b!543466 ((_ is Cons!5345) (t!74512 rules!3103))) b!544081))

(declare-fun m!792459 () Bool)

(assert (=> b!544082 m!792459))

(declare-fun m!792461 () Bool)

(assert (=> b!544082 m!792461))

(declare-fun e!328755 () Bool)

(assert (=> b!543455 (= tp!172888 e!328755)))

(declare-fun b!544095 () Bool)

(declare-fun tp!172967 () Bool)

(declare-fun tp!172970 () Bool)

(assert (=> b!544095 (= e!328755 (and tp!172967 tp!172970))))

(declare-fun b!544094 () Bool)

(assert (=> b!544094 (= e!328755 tp_is_empty!3029)))

(declare-fun b!544096 () Bool)

(declare-fun tp!172969 () Bool)

(assert (=> b!544096 (= e!328755 tp!172969)))

(declare-fun b!544097 () Bool)

(declare-fun tp!172971 () Bool)

(declare-fun tp!172968 () Bool)

(assert (=> b!544097 (= e!328755 (and tp!172971 tp!172968))))

(assert (= (and b!543455 ((_ is ElementMatch!1337) (regex!1003 (h!10746 rules!3103)))) b!544094))

(assert (= (and b!543455 ((_ is Concat!2364) (regex!1003 (h!10746 rules!3103)))) b!544095))

(assert (= (and b!543455 ((_ is Star!1337) (regex!1003 (h!10746 rules!3103)))) b!544096))

(assert (= (and b!543455 ((_ is Union!1337) (regex!1003 (h!10746 rules!3103)))) b!544097))

(declare-fun e!328756 () Bool)

(assert (=> b!543487 (= tp!172881 e!328756)))

(declare-fun b!544099 () Bool)

(declare-fun tp!172972 () Bool)

(declare-fun tp!172975 () Bool)

(assert (=> b!544099 (= e!328756 (and tp!172972 tp!172975))))

(declare-fun b!544098 () Bool)

(assert (=> b!544098 (= e!328756 tp_is_empty!3029)))

(declare-fun b!544100 () Bool)

(declare-fun tp!172974 () Bool)

(assert (=> b!544100 (= e!328756 tp!172974)))

(declare-fun b!544101 () Bool)

(declare-fun tp!172976 () Bool)

(declare-fun tp!172973 () Bool)

(assert (=> b!544101 (= e!328756 (and tp!172976 tp!172973))))

(assert (= (and b!543487 ((_ is ElementMatch!1337) (regex!1003 (rule!1715 token!491)))) b!544098))

(assert (= (and b!543487 ((_ is Concat!2364) (regex!1003 (rule!1715 token!491)))) b!544099))

(assert (= (and b!543487 ((_ is Star!1337) (regex!1003 (rule!1715 token!491)))) b!544100))

(assert (= (and b!543487 ((_ is Union!1337) (regex!1003 (rule!1715 token!491)))) b!544101))

(declare-fun b_lambda!20893 () Bool)

(assert (= b_lambda!20863 (or (and b!543470 b_free!15083 (= (toChars!1709 (transformation!1003 (h!10746 rules!3103))) (toChars!1709 (transformation!1003 (rule!1715 token!491))))) (and b!543474 b_free!15087) (and b!544083 b_free!15095 (= (toChars!1709 (transformation!1003 (h!10746 (t!74512 rules!3103)))) (toChars!1709 (transformation!1003 (rule!1715 token!491))))) b_lambda!20893)))

(declare-fun b_lambda!20895 () Bool)

(assert (= b_lambda!20889 (or (and b!543470 b_free!15081 (= (toValue!1850 (transformation!1003 (h!10746 rules!3103))) (toValue!1850 (transformation!1003 (rule!1715 token!491))))) (and b!543474 b_free!15085) (and b!544083 b_free!15093 (= (toValue!1850 (transformation!1003 (h!10746 (t!74512 rules!3103)))) (toValue!1850 (transformation!1003 (rule!1715 token!491))))) b_lambda!20895)))

(declare-fun b_lambda!20897 () Bool)

(assert (= b_lambda!20891 (or (and b!543470 b_free!15083 (= (toChars!1709 (transformation!1003 (h!10746 rules!3103))) (toChars!1709 (transformation!1003 (rule!1715 token!491))))) (and b!543474 b_free!15087) (and b!544083 b_free!15095 (= (toChars!1709 (transformation!1003 (h!10746 (t!74512 rules!3103)))) (toChars!1709 (transformation!1003 (rule!1715 token!491))))) b_lambda!20897)))

(declare-fun b_lambda!20899 () Bool)

(assert (= b_lambda!20887 (or (and b!543470 b_free!15083 (= (toChars!1709 (transformation!1003 (h!10746 rules!3103))) (toChars!1709 (transformation!1003 (rule!1715 token!491))))) (and b!543474 b_free!15087) (and b!544083 b_free!15095 (= (toChars!1709 (transformation!1003 (h!10746 (t!74512 rules!3103)))) (toChars!1709 (transformation!1003 (rule!1715 token!491))))) b_lambda!20899)))

(declare-fun b_lambda!20901 () Bool)

(assert (= b_lambda!20885 (or (and b!543470 b_free!15081 (= (toValue!1850 (transformation!1003 (h!10746 rules!3103))) (toValue!1850 (transformation!1003 (rule!1715 token!491))))) (and b!543474 b_free!15085) (and b!544083 b_free!15093 (= (toValue!1850 (transformation!1003 (h!10746 (t!74512 rules!3103)))) (toValue!1850 (transformation!1003 (rule!1715 token!491))))) b_lambda!20901)))

(check-sat (not tb!47751) (not b!543862) (not b!543574) (not d!190923) (not b!544071) tp_is_empty!3029 (not d!190843) (not b_lambda!20895) (not b_lambda!20857) (not b!543937) (not b!544100) (not b!544057) (not b!544052) (not b!543548) (not b!543500) (not b!544050) (not b!544043) (not b!544059) (not b_next!15097) (not b_lambda!20899) (not tb!47783) (not b!543940) (not b!543554) (not b!543550) (not b!543571) (not b!543556) (not d!190789) (not b_next!15101) (not bm!38291) (not d!190813) (not b!543883) (not b!543569) (not d!190845) (not b!543768) (not b!544065) (not d!190873) b_and!53127 (not b!543889) (not b!543576) (not d!190675) (not tb!47755) (not d!190699) (not d!190875) (not d!190883) (not b!544081) (not b!543516) (not b!543770) (not b!543828) (not b!543896) (not d!190755) (not d!190903) (not b!544046) (not b!543938) (not b!543812) (not d!190929) (not d!190879) (not b!543864) (not b!543552) (not b!543697) (not b!543882) (not b!543789) (not b_next!15109) (not d!190697) (not b!543936) (not b!544097) (not b!543895) b_and!53137 (not d!190925) (not d!190861) b_and!53129 (not b!544101) (not d!190787) (not d!190695) (not b!543522) (not tb!47747) (not b!543775) (not b_lambda!20893) (not b!544072) (not d!190931) (not b!543568) (not d!190691) b_and!53131 (not d!190895) (not b!543553) (not b!543832) (not d!190763) (not d!190785) (not b!544006) (not b!543772) (not b!543567) (not b!543955) (not b!543577) (not d!190877) (not b!543830) (not d!190669) (not b!544053) (not b!543833) (not b!544051) (not d!190745) (not d!190921) (not b!543871) (not b_lambda!20901) (not d!190913) (not d!190909) (not b!543773) (not b!543566) (not b!544003) (not d!190899) (not b!543998) (not b!544004) (not d!190927) (not b!543565) (not b!544041) (not b!544047) (not d!190919) (not b!543549) (not b!544082) (not b!543559) (not b!543499) (not bm!38301) (not b_lambda!20873) (not d!190767) (not d!190917) (not b!544042) (not d!190831) b_and!53133 (not b_next!15099) (not b!543842) (not b!543766) (not tb!47779) (not d!190743) (not d!190817) (not d!190681) (not b!544008) (not d!190901) (not b_next!15103) (not b!543551) (not b!543881) (not tb!47763) (not d!190701) (not b!543826) (not b!544039) (not d!190905) (not b!544056) (not b!543934) (not b_lambda!20869) (not b!544064) (not b!543795) (not b!544070) (not b!544054) (not b!543917) (not b!543932) (not d!190671) (not b_next!15111) (not b!543572) (not d!190897) (not d!190809) (not b!543941) (not b!544096) (not b_lambda!20859) b_and!53135 (not b!543897) (not b!544099) (not b!543942) (not b!544038) (not b!543570) (not b!543863) (not d!190693) (not bm!38292) (not b!544040) (not b!544055) (not b_lambda!20897) (not b!544095) (not b!543813) (not d!190881) (not b!544044))
(check-sat (not b_next!15097) (not b_next!15101) b_and!53127 (not b_next!15109) b_and!53131 b_and!53133 (not b_next!15099) (not b_next!15103) (not b_next!15111) b_and!53135 b_and!53137 b_and!53129)
