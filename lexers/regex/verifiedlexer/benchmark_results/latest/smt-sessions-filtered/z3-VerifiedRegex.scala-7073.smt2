; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374984 () Bool)

(assert start!374984)

(declare-fun b!3984422 () Bool)

(declare-fun b_free!110633 () Bool)

(declare-fun b_next!111337 () Bool)

(assert (=> b!3984422 (= b_free!110633 (not b_next!111337))))

(declare-fun tp!1214343 () Bool)

(declare-fun b_and!306223 () Bool)

(assert (=> b!3984422 (= tp!1214343 b_and!306223)))

(declare-fun b_free!110635 () Bool)

(declare-fun b_next!111339 () Bool)

(assert (=> b!3984422 (= b_free!110635 (not b_next!111339))))

(declare-fun tp!1214336 () Bool)

(declare-fun b_and!306225 () Bool)

(assert (=> b!3984422 (= tp!1214336 b_and!306225)))

(declare-fun b!3984446 () Bool)

(declare-fun b_free!110637 () Bool)

(declare-fun b_next!111341 () Bool)

(assert (=> b!3984446 (= b_free!110637 (not b_next!111341))))

(declare-fun tp!1214337 () Bool)

(declare-fun b_and!306227 () Bool)

(assert (=> b!3984446 (= tp!1214337 b_and!306227)))

(declare-fun b_free!110639 () Bool)

(declare-fun b_next!111343 () Bool)

(assert (=> b!3984446 (= b_free!110639 (not b_next!111343))))

(declare-fun tp!1214335 () Bool)

(declare-fun b_and!306229 () Bool)

(assert (=> b!3984446 (= tp!1214335 b_and!306229)))

(declare-fun b!3984407 () Bool)

(declare-fun res!1615601 () Bool)

(declare-fun e!2469527 () Bool)

(assert (=> b!3984407 (=> (not res!1615601) (not e!2469527))))

(declare-datatypes ((C!23464 0))(
  ( (C!23465 (val!13826 Int)) )
))
(declare-datatypes ((List!42732 0))(
  ( (Nil!42608) (Cons!42608 (h!48028 C!23464) (t!331483 List!42732)) )
))
(declare-datatypes ((IArray!25895 0))(
  ( (IArray!25896 (innerList!13005 List!42732)) )
))
(declare-datatypes ((Conc!12945 0))(
  ( (Node!12945 (left!32214 Conc!12945) (right!32544 Conc!12945) (csize!26120 Int) (cheight!13156 Int)) (Leaf!20019 (xs!16251 IArray!25895) (csize!26121 Int)) (Empty!12945) )
))
(declare-datatypes ((BalanceConc!25484 0))(
  ( (BalanceConc!25485 (c!689988 Conc!12945)) )
))
(declare-datatypes ((List!42733 0))(
  ( (Nil!42609) (Cons!42609 (h!48029 (_ BitVec 16)) (t!331484 List!42733)) )
))
(declare-datatypes ((TokenValue!6964 0))(
  ( (FloatLiteralValue!13928 (text!49193 List!42733)) (TokenValueExt!6963 (__x!26145 Int)) (Broken!34820 (value!212527 List!42733)) (Object!7087) (End!6964) (Def!6964) (Underscore!6964) (Match!6964) (Else!6964) (Error!6964) (Case!6964) (If!6964) (Extends!6964) (Abstract!6964) (Class!6964) (Val!6964) (DelimiterValue!13928 (del!7024 List!42733)) (KeywordValue!6970 (value!212528 List!42733)) (CommentValue!13928 (value!212529 List!42733)) (WhitespaceValue!13928 (value!212530 List!42733)) (IndentationValue!6964 (value!212531 List!42733)) (String!48537) (Int32!6964) (Broken!34821 (value!212532 List!42733)) (Boolean!6965) (Unit!61287) (OperatorValue!6967 (op!7024 List!42733)) (IdentifierValue!13928 (value!212533 List!42733)) (IdentifierValue!13929 (value!212534 List!42733)) (WhitespaceValue!13929 (value!212535 List!42733)) (True!13928) (False!13928) (Broken!34822 (value!212536 List!42733)) (Broken!34823 (value!212537 List!42733)) (True!13929) (RightBrace!6964) (RightBracket!6964) (Colon!6964) (Null!6964) (Comma!6964) (LeftBracket!6964) (False!13929) (LeftBrace!6964) (ImaginaryLiteralValue!6964 (text!49194 List!42733)) (StringLiteralValue!20892 (value!212538 List!42733)) (EOFValue!6964 (value!212539 List!42733)) (IdentValue!6964 (value!212540 List!42733)) (DelimiterValue!13929 (value!212541 List!42733)) (DedentValue!6964 (value!212542 List!42733)) (NewLineValue!6964 (value!212543 List!42733)) (IntegerValue!20892 (value!212544 (_ BitVec 32)) (text!49195 List!42733)) (IntegerValue!20893 (value!212545 Int) (text!49196 List!42733)) (Times!6964) (Or!6964) (Equal!6964) (Minus!6964) (Broken!34824 (value!212546 List!42733)) (And!6964) (Div!6964) (LessEqual!6964) (Mod!6964) (Concat!18603) (Not!6964) (Plus!6964) (SpaceValue!6964 (value!212547 List!42733)) (IntegerValue!20894 (value!212548 Int) (text!49197 List!42733)) (StringLiteralValue!20893 (text!49198 List!42733)) (FloatLiteralValue!13929 (text!49199 List!42733)) (BytesLiteralValue!6964 (value!212549 List!42733)) (CommentValue!13929 (value!212550 List!42733)) (StringLiteralValue!20894 (value!212551 List!42733)) (ErrorTokenValue!6964 (msg!7025 List!42733)) )
))
(declare-datatypes ((Regex!11639 0))(
  ( (ElementMatch!11639 (c!689989 C!23464)) (Concat!18604 (regOne!23790 Regex!11639) (regTwo!23790 Regex!11639)) (EmptyExpr!11639) (Star!11639 (reg!11968 Regex!11639)) (EmptyLang!11639) (Union!11639 (regOne!23791 Regex!11639) (regTwo!23791 Regex!11639)) )
))
(declare-datatypes ((String!48538 0))(
  ( (String!48539 (value!212552 String)) )
))
(declare-datatypes ((TokenValueInjection!13356 0))(
  ( (TokenValueInjection!13357 (toValue!9222 Int) (toChars!9081 Int)) )
))
(declare-datatypes ((Rule!13268 0))(
  ( (Rule!13269 (regex!6734 Regex!11639) (tag!7594 String!48538) (isSeparator!6734 Bool) (transformation!6734 TokenValueInjection!13356)) )
))
(declare-datatypes ((Token!12606 0))(
  ( (Token!12607 (value!212553 TokenValue!6964) (rule!9744 Rule!13268) (size!31870 Int) (originalCharacters!7334 List!42732)) )
))
(declare-fun token!484 () Token!12606)

(declare-fun size!31871 (List!42732) Int)

(assert (=> b!3984407 (= res!1615601 (= (size!31870 token!484) (size!31871 (originalCharacters!7334 token!484))))))

(declare-fun b!3984408 () Bool)

(declare-fun e!2469505 () Bool)

(declare-fun tp_is_empty!20249 () Bool)

(declare-fun tp!1214339 () Bool)

(assert (=> b!3984408 (= e!2469505 (and tp_is_empty!20249 tp!1214339))))

(declare-fun b!3984409 () Bool)

(declare-fun e!2469519 () Bool)

(declare-fun e!2469503 () Bool)

(assert (=> b!3984409 (= e!2469519 e!2469503)))

(declare-fun res!1615609 () Bool)

(assert (=> b!3984409 (=> res!1615609 e!2469503)))

(declare-fun lt!1401507 () List!42732)

(declare-fun lt!1401508 () List!42732)

(declare-fun isPrefix!3821 (List!42732 List!42732) Bool)

(assert (=> b!3984409 (= res!1615609 (not (isPrefix!3821 lt!1401507 lt!1401508)))))

(declare-fun prefix!494 () List!42732)

(assert (=> b!3984409 (isPrefix!3821 prefix!494 lt!1401508)))

(declare-datatypes ((Unit!61288 0))(
  ( (Unit!61289) )
))
(declare-fun lt!1401510 () Unit!61288)

(declare-fun suffix!1299 () List!42732)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2664 (List!42732 List!42732) Unit!61288)

(assert (=> b!3984409 (= lt!1401510 (lemmaConcatTwoListThenFirstIsPrefix!2664 prefix!494 suffix!1299))))

(declare-fun lt!1401484 () List!42732)

(assert (=> b!3984409 (isPrefix!3821 lt!1401507 lt!1401484)))

(declare-fun lt!1401514 () Unit!61288)

(declare-fun suffixResult!105 () List!42732)

(assert (=> b!3984409 (= lt!1401514 (lemmaConcatTwoListThenFirstIsPrefix!2664 lt!1401507 suffixResult!105))))

(declare-fun b!3984410 () Bool)

(declare-datatypes ((List!42734 0))(
  ( (Nil!42610) (Cons!42610 (h!48030 Rule!13268) (t!331485 List!42734)) )
))
(declare-fun rules!2999 () List!42734)

(declare-fun tp!1214334 () Bool)

(declare-fun e!2469496 () Bool)

(declare-fun e!2469518 () Bool)

(declare-fun inv!56913 (String!48538) Bool)

(declare-fun inv!56916 (TokenValueInjection!13356) Bool)

(assert (=> b!3984410 (= e!2469496 (and tp!1214334 (inv!56913 (tag!7594 (h!48030 rules!2999))) (inv!56916 (transformation!6734 (h!48030 rules!2999))) e!2469518))))

(declare-fun b!3984411 () Bool)

(declare-fun e!2469525 () Bool)

(declare-fun tp!1214346 () Bool)

(assert (=> b!3984411 (= e!2469525 (and e!2469496 tp!1214346))))

(declare-fun b!3984413 () Bool)

(declare-fun e!2469501 () Bool)

(declare-fun e!2469513 () Bool)

(assert (=> b!3984413 (= e!2469501 e!2469513)))

(declare-fun res!1615618 () Bool)

(assert (=> b!3984413 (=> res!1615618 e!2469513)))

(declare-datatypes ((tuple2!41824 0))(
  ( (tuple2!41825 (_1!24046 Token!12606) (_2!24046 List!42732)) )
))
(declare-datatypes ((Option!9148 0))(
  ( (None!9147) (Some!9147 (v!39497 tuple2!41824)) )
))
(declare-fun lt!1401509 () Option!9148)

(declare-fun lt!1401468 () Option!9148)

(assert (=> b!3984413 (= res!1615618 (not (= lt!1401509 lt!1401468)))))

(declare-fun lt!1401500 () Token!12606)

(assert (=> b!3984413 (= lt!1401509 (Some!9147 (tuple2!41825 lt!1401500 suffixResult!105)))))

(declare-datatypes ((LexerInterface!6323 0))(
  ( (LexerInterfaceExt!6320 (__x!26146 Int)) (Lexer!6321) )
))
(declare-fun thiss!21717 () LexerInterface!6323)

(declare-fun maxPrefixOneRule!2655 (LexerInterface!6323 Rule!13268 List!42732) Option!9148)

(assert (=> b!3984413 (= lt!1401509 (maxPrefixOneRule!2655 thiss!21717 (rule!9744 token!484) lt!1401508))))

(declare-fun lt!1401515 () Int)

(declare-fun lt!1401476 () TokenValue!6964)

(assert (=> b!3984413 (= lt!1401500 (Token!12607 lt!1401476 (rule!9744 token!484) lt!1401515 lt!1401507))))

(declare-fun apply!9945 (TokenValueInjection!13356 BalanceConc!25484) TokenValue!6964)

(declare-fun seqFromList!4973 (List!42732) BalanceConc!25484)

(assert (=> b!3984413 (= lt!1401476 (apply!9945 (transformation!6734 (rule!9744 token!484)) (seqFromList!4973 lt!1401507)))))

(declare-fun lt!1401483 () Unit!61288)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1477 (LexerInterface!6323 List!42734 List!42732 List!42732 List!42732 Rule!13268) Unit!61288)

(assert (=> b!3984413 (= lt!1401483 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1477 thiss!21717 rules!2999 lt!1401507 lt!1401508 suffixResult!105 (rule!9744 token!484)))))

(declare-fun lt!1401486 () List!42732)

(assert (=> b!3984413 (= lt!1401486 suffixResult!105)))

(declare-fun lt!1401491 () Unit!61288)

(declare-fun lemmaSamePrefixThenSameSuffix!2008 (List!42732 List!42732 List!42732 List!42732 List!42732) Unit!61288)

(assert (=> b!3984413 (= lt!1401491 (lemmaSamePrefixThenSameSuffix!2008 lt!1401507 lt!1401486 lt!1401507 suffixResult!105 lt!1401508))))

(declare-fun lt!1401496 () List!42732)

(assert (=> b!3984413 (isPrefix!3821 lt!1401507 lt!1401496)))

(declare-fun lt!1401461 () Unit!61288)

(assert (=> b!3984413 (= lt!1401461 (lemmaConcatTwoListThenFirstIsPrefix!2664 lt!1401507 lt!1401486))))

(declare-fun e!2469526 () Bool)

(declare-fun b!3984414 () Bool)

(declare-fun e!2469528 () Bool)

(declare-fun tp!1214338 () Bool)

(assert (=> b!3984414 (= e!2469528 (and tp!1214338 (inv!56913 (tag!7594 (rule!9744 token!484))) (inv!56916 (transformation!6734 (rule!9744 token!484))) e!2469526))))

(declare-fun b!3984415 () Bool)

(declare-fun res!1615596 () Bool)

(declare-fun e!2469500 () Bool)

(assert (=> b!3984415 (=> res!1615596 e!2469500)))

(declare-fun lt!1401495 () List!42732)

(declare-fun lt!1401470 () List!42732)

(assert (=> b!3984415 (= res!1615596 (not (= lt!1401495 lt!1401470)))))

(declare-fun b!3984416 () Bool)

(declare-fun e!2469498 () Bool)

(declare-fun tp!1214341 () Bool)

(assert (=> b!3984416 (= e!2469498 (and tp_is_empty!20249 tp!1214341))))

(declare-fun b!3984417 () Bool)

(declare-fun e!2469520 () Bool)

(declare-fun tp!1214342 () Bool)

(assert (=> b!3984417 (= e!2469520 (and tp_is_empty!20249 tp!1214342))))

(declare-fun b!3984418 () Bool)

(declare-fun res!1615622 () Bool)

(declare-fun e!2469516 () Bool)

(assert (=> b!3984418 (=> res!1615622 e!2469516)))

(declare-fun lt!1401497 () Option!9148)

(declare-fun contains!8479 (List!42734 Rule!13268) Bool)

(assert (=> b!3984418 (= res!1615622 (not (contains!8479 rules!2999 (rule!9744 (_1!24046 (v!39497 lt!1401497))))))))

(declare-fun b!3984419 () Bool)

(declare-fun e!2469509 () Bool)

(assert (=> b!3984419 (= e!2469500 e!2469509)))

(declare-fun res!1615602 () Bool)

(assert (=> b!3984419 (=> res!1615602 e!2469509)))

(declare-fun lt!1401471 () List!42732)

(assert (=> b!3984419 (= res!1615602 (not (= lt!1401471 lt!1401470)))))

(declare-fun lt!1401503 () List!42732)

(declare-fun lt!1401475 () List!42732)

(declare-fun ++!11136 (List!42732 List!42732) List!42732)

(assert (=> b!3984419 (= lt!1401471 (++!11136 lt!1401503 lt!1401475))))

(declare-fun getSuffix!2252 (List!42732 List!42732) List!42732)

(assert (=> b!3984419 (= lt!1401475 (getSuffix!2252 lt!1401470 lt!1401503))))

(declare-fun b!3984420 () Bool)

(declare-fun res!1615603 () Bool)

(declare-fun e!2469499 () Bool)

(assert (=> b!3984420 (=> (not res!1615603) (not e!2469499))))

(declare-fun newSuffix!27 () List!42732)

(assert (=> b!3984420 (= res!1615603 (isPrefix!3821 newSuffix!27 suffix!1299))))

(declare-fun b!3984421 () Bool)

(declare-fun res!1615615 () Bool)

(assert (=> b!3984421 (=> res!1615615 e!2469516)))

(assert (=> b!3984421 (= res!1615615 (not (contains!8479 rules!2999 (rule!9744 token!484))))))

(assert (=> b!3984422 (= e!2469526 (and tp!1214343 tp!1214336))))

(declare-fun b!3984423 () Bool)

(declare-fun e!2469524 () Bool)

(declare-fun e!2469523 () Bool)

(assert (=> b!3984423 (= e!2469524 e!2469523)))

(declare-fun res!1615620 () Bool)

(assert (=> b!3984423 (=> res!1615620 e!2469523)))

(declare-fun lt!1401492 () List!42732)

(assert (=> b!3984423 (= res!1615620 (not (= lt!1401492 lt!1401508)))))

(declare-fun lt!1401473 () List!42732)

(assert (=> b!3984423 (= lt!1401492 (++!11136 lt!1401507 lt!1401473))))

(assert (=> b!3984423 (= lt!1401473 (getSuffix!2252 lt!1401508 lt!1401507))))

(assert (=> b!3984423 e!2469527))

(declare-fun res!1615611 () Bool)

(assert (=> b!3984423 (=> (not res!1615611) (not e!2469527))))

(assert (=> b!3984423 (= res!1615611 (isPrefix!3821 lt!1401508 lt!1401508))))

(declare-fun lt!1401478 () Unit!61288)

(declare-fun lemmaIsPrefixRefl!2413 (List!42732 List!42732) Unit!61288)

(assert (=> b!3984423 (= lt!1401478 (lemmaIsPrefixRefl!2413 lt!1401508 lt!1401508))))

(declare-fun b!3984424 () Bool)

(assert (=> b!3984424 (= e!2469513 e!2469524)))

(declare-fun res!1615595 () Bool)

(assert (=> b!3984424 (=> res!1615595 e!2469524)))

(declare-fun matchR!5616 (Regex!11639 List!42732) Bool)

(assert (=> b!3984424 (= res!1615595 (not (matchR!5616 (regex!6734 (rule!9744 token!484)) lt!1401507)))))

(assert (=> b!3984424 (isPrefix!3821 lt!1401507 lt!1401470)))

(declare-fun lt!1401462 () Unit!61288)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!654 (List!42732 List!42732 List!42732) Unit!61288)

(assert (=> b!3984424 (= lt!1401462 (lemmaPrefixStaysPrefixWhenAddingToSuffix!654 lt!1401507 prefix!494 newSuffix!27))))

(declare-fun lt!1401466 () Unit!61288)

(assert (=> b!3984424 (= lt!1401466 (lemmaPrefixStaysPrefixWhenAddingToSuffix!654 lt!1401507 prefix!494 suffix!1299))))

(declare-fun b!3984425 () Bool)

(declare-fun e!2469497 () Bool)

(assert (=> b!3984425 (= e!2469497 e!2469500)))

(declare-fun res!1615621 () Bool)

(assert (=> b!3984425 (=> res!1615621 e!2469500)))

(assert (=> b!3984425 (= res!1615621 (not (isPrefix!3821 lt!1401503 lt!1401508)))))

(declare-fun lt!1401506 () List!42732)

(assert (=> b!3984425 (isPrefix!3821 lt!1401503 lt!1401506)))

(declare-fun lt!1401501 () Unit!61288)

(declare-fun lt!1401474 () List!42732)

(assert (=> b!3984425 (= lt!1401501 (lemmaPrefixStaysPrefixWhenAddingToSuffix!654 lt!1401503 lt!1401470 lt!1401474))))

(declare-fun b!3984426 () Bool)

(declare-fun e!2469521 () Bool)

(declare-fun e!2469508 () Bool)

(assert (=> b!3984426 (= e!2469521 e!2469508)))

(declare-fun res!1615612 () Bool)

(assert (=> b!3984426 (=> (not res!1615612) (not e!2469508))))

(declare-fun maxPrefix!3621 (LexerInterface!6323 List!42734 List!42732) Option!9148)

(assert (=> b!3984426 (= res!1615612 (= (maxPrefix!3621 thiss!21717 rules!2999 lt!1401508) lt!1401468))))

(declare-fun lt!1401463 () tuple2!41824)

(assert (=> b!3984426 (= lt!1401468 (Some!9147 lt!1401463))))

(assert (=> b!3984426 (= lt!1401463 (tuple2!41825 token!484 suffixResult!105))))

(assert (=> b!3984426 (= lt!1401508 (++!11136 prefix!494 suffix!1299))))

(declare-fun b!3984427 () Bool)

(assert (=> b!3984427 (= e!2469527 (and (= (size!31870 token!484) lt!1401515) (= (originalCharacters!7334 token!484) lt!1401507)))))

(declare-fun b!3984428 () Bool)

(assert (=> b!3984428 (= e!2469508 (not e!2469519))))

(declare-fun res!1615597 () Bool)

(assert (=> b!3984428 (=> res!1615597 e!2469519)))

(assert (=> b!3984428 (= res!1615597 (not (= lt!1401484 lt!1401508)))))

(assert (=> b!3984428 (= lt!1401484 (++!11136 lt!1401507 suffixResult!105))))

(declare-fun lt!1401480 () Unit!61288)

(declare-fun lemmaInv!949 (TokenValueInjection!13356) Unit!61288)

(assert (=> b!3984428 (= lt!1401480 (lemmaInv!949 (transformation!6734 (rule!9744 token!484))))))

(declare-fun ruleValid!2666 (LexerInterface!6323 Rule!13268) Bool)

(assert (=> b!3984428 (ruleValid!2666 thiss!21717 (rule!9744 token!484))))

(declare-fun lt!1401465 () Unit!61288)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1740 (LexerInterface!6323 Rule!13268 List!42734) Unit!61288)

(assert (=> b!3984428 (= lt!1401465 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1740 thiss!21717 (rule!9744 token!484) rules!2999))))

(declare-fun b!3984429 () Bool)

(declare-fun e!2469514 () Bool)

(assert (=> b!3984429 (= e!2469523 e!2469514)))

(declare-fun res!1615600 () Bool)

(assert (=> b!3984429 (=> res!1615600 e!2469514)))

(get-info :version)

(assert (=> b!3984429 (= res!1615600 (not ((_ is Some!9147) lt!1401497)))))

(assert (=> b!3984429 (= lt!1401497 (maxPrefix!3621 thiss!21717 rules!2999 lt!1401470))))

(assert (=> b!3984429 (and (= suffixResult!105 lt!1401473) (= lt!1401463 (tuple2!41825 lt!1401500 lt!1401473)))))

(declare-fun lt!1401494 () Unit!61288)

(assert (=> b!3984429 (= lt!1401494 (lemmaSamePrefixThenSameSuffix!2008 lt!1401507 suffixResult!105 lt!1401507 lt!1401473 lt!1401508))))

(assert (=> b!3984429 (isPrefix!3821 lt!1401507 lt!1401492)))

(declare-fun lt!1401469 () Unit!61288)

(assert (=> b!3984429 (= lt!1401469 (lemmaConcatTwoListThenFirstIsPrefix!2664 lt!1401507 lt!1401473))))

(declare-fun b!3984430 () Bool)

(declare-fun res!1615604 () Bool)

(assert (=> b!3984430 (=> res!1615604 e!2469516)))

(assert (=> b!3984430 (= res!1615604 (not (isPrefix!3821 lt!1401503 lt!1401470)))))

(declare-fun b!3984431 () Bool)

(declare-fun res!1615605 () Bool)

(assert (=> b!3984431 (=> (not res!1615605) (not e!2469499))))

(assert (=> b!3984431 (= res!1615605 (>= (size!31871 suffix!1299) (size!31871 newSuffix!27)))))

(declare-fun b!3984432 () Bool)

(declare-fun e!2469517 () Bool)

(declare-fun tp!1214345 () Bool)

(assert (=> b!3984432 (= e!2469517 (and tp_is_empty!20249 tp!1214345))))

(declare-fun b!3984412 () Bool)

(declare-fun e!2469515 () Bool)

(assert (=> b!3984412 (= e!2469499 e!2469515)))

(declare-fun res!1615594 () Bool)

(assert (=> b!3984412 (=> (not res!1615594) (not e!2469515))))

(declare-fun lt!1401477 () Int)

(assert (=> b!3984412 (= res!1615594 (>= lt!1401477 lt!1401515))))

(assert (=> b!3984412 (= lt!1401515 (size!31871 lt!1401507))))

(assert (=> b!3984412 (= lt!1401477 (size!31871 prefix!494))))

(declare-fun list!15816 (BalanceConc!25484) List!42732)

(declare-fun charsOf!4550 (Token!12606) BalanceConc!25484)

(assert (=> b!3984412 (= lt!1401507 (list!15816 (charsOf!4550 token!484)))))

(declare-fun res!1615598 () Bool)

(assert (=> start!374984 (=> (not res!1615598) (not e!2469499))))

(assert (=> start!374984 (= res!1615598 ((_ is Lexer!6321) thiss!21717))))

(assert (=> start!374984 e!2469499))

(assert (=> start!374984 e!2469498))

(declare-fun e!2469512 () Bool)

(declare-fun inv!56917 (Token!12606) Bool)

(assert (=> start!374984 (and (inv!56917 token!484) e!2469512)))

(assert (=> start!374984 e!2469517))

(assert (=> start!374984 e!2469520))

(declare-fun e!2469502 () Bool)

(assert (=> start!374984 e!2469502))

(assert (=> start!374984 true))

(assert (=> start!374984 e!2469525))

(assert (=> start!374984 e!2469505))

(declare-fun b!3984433 () Bool)

(assert (=> b!3984433 (= e!2469509 e!2469516)))

(declare-fun res!1615608 () Bool)

(assert (=> b!3984433 (=> res!1615608 e!2469516)))

(declare-fun lt!1401498 () Int)

(assert (=> b!3984433 (= res!1615608 (<= lt!1401498 lt!1401515))))

(assert (=> b!3984433 (= (_2!24046 (v!39497 lt!1401497)) lt!1401475)))

(declare-fun lt!1401488 () Unit!61288)

(assert (=> b!3984433 (= lt!1401488 (lemmaSamePrefixThenSameSuffix!2008 lt!1401503 (_2!24046 (v!39497 lt!1401497)) lt!1401503 lt!1401475 lt!1401470))))

(assert (=> b!3984433 (isPrefix!3821 lt!1401503 lt!1401471)))

(declare-fun lt!1401481 () Unit!61288)

(assert (=> b!3984433 (= lt!1401481 (lemmaConcatTwoListThenFirstIsPrefix!2664 lt!1401503 lt!1401475))))

(declare-fun b!3984434 () Bool)

(declare-fun res!1615610 () Bool)

(assert (=> b!3984434 (=> (not res!1615610) (not e!2469499))))

(declare-fun isEmpty!25470 (List!42734) Bool)

(assert (=> b!3984434 (= res!1615610 (not (isEmpty!25470 rules!2999)))))

(declare-fun b!3984435 () Bool)

(declare-fun e!2469507 () Bool)

(assert (=> b!3984435 (= e!2469503 e!2469507)))

(declare-fun res!1615616 () Bool)

(assert (=> b!3984435 (=> res!1615616 e!2469507)))

(declare-fun lt!1401502 () List!42732)

(assert (=> b!3984435 (= res!1615616 (not (= lt!1401502 prefix!494)))))

(declare-fun lt!1401467 () List!42732)

(assert (=> b!3984435 (= lt!1401502 (++!11136 lt!1401507 lt!1401467))))

(assert (=> b!3984435 (= lt!1401467 (getSuffix!2252 prefix!494 lt!1401507))))

(assert (=> b!3984435 (isPrefix!3821 lt!1401507 prefix!494)))

(declare-fun lt!1401485 () Unit!61288)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!399 (List!42732 List!42732 List!42732) Unit!61288)

(assert (=> b!3984435 (= lt!1401485 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!399 prefix!494 lt!1401507 lt!1401508))))

(declare-fun b!3984436 () Bool)

(assert (=> b!3984436 (= e!2469516 (>= (size!31871 lt!1401508) lt!1401515))))

(declare-fun tp!1214344 () Bool)

(declare-fun b!3984437 () Bool)

(declare-fun inv!21 (TokenValue!6964) Bool)

(assert (=> b!3984437 (= e!2469512 (and (inv!21 (value!212553 token!484)) e!2469528 tp!1214344))))

(declare-fun b!3984438 () Bool)

(declare-fun e!2469522 () Bool)

(assert (=> b!3984438 (= e!2469514 e!2469522)))

(declare-fun res!1615619 () Bool)

(assert (=> b!3984438 (=> res!1615619 e!2469522)))

(declare-fun lt!1401472 () Option!9148)

(assert (=> b!3984438 (= res!1615619 (not (= lt!1401472 (Some!9147 (v!39497 lt!1401497)))))))

(declare-fun newSuffixResult!27 () List!42732)

(assert (=> b!3984438 (isPrefix!3821 lt!1401503 (++!11136 lt!1401503 newSuffixResult!27))))

(declare-fun lt!1401504 () Unit!61288)

(assert (=> b!3984438 (= lt!1401504 (lemmaConcatTwoListThenFirstIsPrefix!2664 lt!1401503 newSuffixResult!27))))

(assert (=> b!3984438 (isPrefix!3821 lt!1401503 lt!1401495)))

(assert (=> b!3984438 (= lt!1401495 (++!11136 lt!1401503 (_2!24046 (v!39497 lt!1401497))))))

(declare-fun lt!1401513 () Unit!61288)

(assert (=> b!3984438 (= lt!1401513 (lemmaConcatTwoListThenFirstIsPrefix!2664 lt!1401503 (_2!24046 (v!39497 lt!1401497))))))

(declare-fun lt!1401493 () TokenValue!6964)

(assert (=> b!3984438 (= lt!1401472 (Some!9147 (tuple2!41825 (Token!12607 lt!1401493 (rule!9744 (_1!24046 (v!39497 lt!1401497))) lt!1401498 lt!1401503) (_2!24046 (v!39497 lt!1401497)))))))

(assert (=> b!3984438 (= lt!1401472 (maxPrefixOneRule!2655 thiss!21717 (rule!9744 (_1!24046 (v!39497 lt!1401497))) lt!1401470))))

(assert (=> b!3984438 (= lt!1401498 (size!31871 lt!1401503))))

(assert (=> b!3984438 (= lt!1401493 (apply!9945 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))) (seqFromList!4973 lt!1401503)))))

(declare-fun lt!1401505 () Unit!61288)

(assert (=> b!3984438 (= lt!1401505 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1477 thiss!21717 rules!2999 lt!1401503 lt!1401470 (_2!24046 (v!39497 lt!1401497)) (rule!9744 (_1!24046 (v!39497 lt!1401497)))))))

(assert (=> b!3984438 (= lt!1401503 (list!15816 (charsOf!4550 (_1!24046 (v!39497 lt!1401497)))))))

(declare-fun lt!1401512 () Unit!61288)

(assert (=> b!3984438 (= lt!1401512 (lemmaInv!949 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497))))))))

(assert (=> b!3984438 (ruleValid!2666 thiss!21717 (rule!9744 (_1!24046 (v!39497 lt!1401497))))))

(declare-fun lt!1401487 () Unit!61288)

(assert (=> b!3984438 (= lt!1401487 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1740 thiss!21717 (rule!9744 (_1!24046 (v!39497 lt!1401497))) rules!2999))))

(declare-fun lt!1401499 () Unit!61288)

(declare-fun lemmaCharactersSize!1329 (Token!12606) Unit!61288)

(assert (=> b!3984438 (= lt!1401499 (lemmaCharactersSize!1329 token!484))))

(declare-fun lt!1401482 () Unit!61288)

(assert (=> b!3984438 (= lt!1401482 (lemmaCharactersSize!1329 (_1!24046 (v!39497 lt!1401497))))))

(declare-fun b!3984439 () Bool)

(assert (=> b!3984439 (= e!2469515 e!2469521)))

(declare-fun res!1615617 () Bool)

(assert (=> b!3984439 (=> (not res!1615617) (not e!2469521))))

(declare-fun lt!1401511 () List!42732)

(assert (=> b!3984439 (= res!1615617 (= lt!1401511 lt!1401470))))

(assert (=> b!3984439 (= lt!1401470 (++!11136 prefix!494 newSuffix!27))))

(assert (=> b!3984439 (= lt!1401511 (++!11136 lt!1401507 newSuffixResult!27))))

(declare-fun b!3984440 () Bool)

(declare-fun res!1615599 () Bool)

(assert (=> b!3984440 (=> (not res!1615599) (not e!2469499))))

(declare-fun rulesInvariant!5666 (LexerInterface!6323 List!42734) Bool)

(assert (=> b!3984440 (= res!1615599 (rulesInvariant!5666 thiss!21717 rules!2999))))

(declare-fun b!3984441 () Bool)

(declare-fun e!2469511 () Bool)

(assert (=> b!3984441 (= e!2469511 e!2469497)))

(declare-fun res!1615614 () Bool)

(assert (=> b!3984441 (=> res!1615614 e!2469497)))

(assert (=> b!3984441 (= res!1615614 (not (= lt!1401506 lt!1401508)))))

(declare-fun lt!1401490 () List!42732)

(assert (=> b!3984441 (= lt!1401506 (++!11136 prefix!494 lt!1401490))))

(assert (=> b!3984441 (= lt!1401506 (++!11136 lt!1401470 lt!1401474))))

(declare-fun lt!1401489 () Unit!61288)

(declare-fun lemmaConcatAssociativity!2456 (List!42732 List!42732 List!42732) Unit!61288)

(assert (=> b!3984441 (= lt!1401489 (lemmaConcatAssociativity!2456 prefix!494 newSuffix!27 lt!1401474))))

(declare-fun b!3984442 () Bool)

(assert (=> b!3984442 (= e!2469522 e!2469511)))

(declare-fun res!1615607 () Bool)

(assert (=> b!3984442 (=> res!1615607 e!2469511)))

(assert (=> b!3984442 (= res!1615607 (not (= lt!1401490 suffix!1299)))))

(assert (=> b!3984442 (= lt!1401490 (++!11136 newSuffix!27 lt!1401474))))

(assert (=> b!3984442 (= lt!1401474 (getSuffix!2252 suffix!1299 newSuffix!27))))

(declare-fun b!3984443 () Bool)

(declare-fun tp!1214340 () Bool)

(assert (=> b!3984443 (= e!2469502 (and tp_is_empty!20249 tp!1214340))))

(declare-fun b!3984444 () Bool)

(declare-fun res!1615613 () Bool)

(assert (=> b!3984444 (=> (not res!1615613) (not e!2469527))))

(assert (=> b!3984444 (= res!1615613 (= (value!212553 token!484) lt!1401476))))

(declare-fun b!3984445 () Bool)

(assert (=> b!3984445 (= e!2469507 e!2469501)))

(declare-fun res!1615606 () Bool)

(assert (=> b!3984445 (=> res!1615606 e!2469501)))

(declare-fun lt!1401464 () List!42732)

(assert (=> b!3984445 (= res!1615606 (or (not (= lt!1401508 lt!1401464)) (not (= lt!1401508 lt!1401496))))))

(assert (=> b!3984445 (= lt!1401464 lt!1401496)))

(assert (=> b!3984445 (= lt!1401496 (++!11136 lt!1401507 lt!1401486))))

(assert (=> b!3984445 (= lt!1401464 (++!11136 lt!1401502 suffix!1299))))

(assert (=> b!3984445 (= lt!1401486 (++!11136 lt!1401467 suffix!1299))))

(declare-fun lt!1401479 () Unit!61288)

(assert (=> b!3984445 (= lt!1401479 (lemmaConcatAssociativity!2456 lt!1401507 lt!1401467 suffix!1299))))

(assert (=> b!3984446 (= e!2469518 (and tp!1214337 tp!1214335))))

(assert (= (and start!374984 res!1615598) b!3984434))

(assert (= (and b!3984434 res!1615610) b!3984440))

(assert (= (and b!3984440 res!1615599) b!3984431))

(assert (= (and b!3984431 res!1615605) b!3984420))

(assert (= (and b!3984420 res!1615603) b!3984412))

(assert (= (and b!3984412 res!1615594) b!3984439))

(assert (= (and b!3984439 res!1615617) b!3984426))

(assert (= (and b!3984426 res!1615612) b!3984428))

(assert (= (and b!3984428 (not res!1615597)) b!3984409))

(assert (= (and b!3984409 (not res!1615609)) b!3984435))

(assert (= (and b!3984435 (not res!1615616)) b!3984445))

(assert (= (and b!3984445 (not res!1615606)) b!3984413))

(assert (= (and b!3984413 (not res!1615618)) b!3984424))

(assert (= (and b!3984424 (not res!1615595)) b!3984423))

(assert (= (and b!3984423 res!1615611) b!3984444))

(assert (= (and b!3984444 res!1615613) b!3984407))

(assert (= (and b!3984407 res!1615601) b!3984427))

(assert (= (and b!3984423 (not res!1615620)) b!3984429))

(assert (= (and b!3984429 (not res!1615600)) b!3984438))

(assert (= (and b!3984438 (not res!1615619)) b!3984442))

(assert (= (and b!3984442 (not res!1615607)) b!3984441))

(assert (= (and b!3984441 (not res!1615614)) b!3984425))

(assert (= (and b!3984425 (not res!1615621)) b!3984415))

(assert (= (and b!3984415 (not res!1615596)) b!3984419))

(assert (= (and b!3984419 (not res!1615602)) b!3984433))

(assert (= (and b!3984433 (not res!1615608)) b!3984430))

(assert (= (and b!3984430 (not res!1615604)) b!3984421))

(assert (= (and b!3984421 (not res!1615615)) b!3984418))

(assert (= (and b!3984418 (not res!1615622)) b!3984436))

(assert (= (and start!374984 ((_ is Cons!42608) prefix!494)) b!3984416))

(assert (= b!3984414 b!3984422))

(assert (= b!3984437 b!3984414))

(assert (= start!374984 b!3984437))

(assert (= (and start!374984 ((_ is Cons!42608) suffixResult!105)) b!3984432))

(assert (= (and start!374984 ((_ is Cons!42608) suffix!1299)) b!3984417))

(assert (= (and start!374984 ((_ is Cons!42608) newSuffix!27)) b!3984443))

(assert (= b!3984410 b!3984446))

(assert (= b!3984411 b!3984410))

(assert (= (and start!374984 ((_ is Cons!42610) rules!2999)) b!3984411))

(assert (= (and start!374984 ((_ is Cons!42608) newSuffixResult!27)) b!3984408))

(declare-fun m!4559735 () Bool)

(assert (=> b!3984436 m!4559735))

(declare-fun m!4559737 () Bool)

(assert (=> b!3984413 m!4559737))

(declare-fun m!4559739 () Bool)

(assert (=> b!3984413 m!4559739))

(declare-fun m!4559741 () Bool)

(assert (=> b!3984413 m!4559741))

(declare-fun m!4559743 () Bool)

(assert (=> b!3984413 m!4559743))

(assert (=> b!3984413 m!4559739))

(declare-fun m!4559745 () Bool)

(assert (=> b!3984413 m!4559745))

(declare-fun m!4559747 () Bool)

(assert (=> b!3984413 m!4559747))

(declare-fun m!4559749 () Bool)

(assert (=> b!3984413 m!4559749))

(declare-fun m!4559751 () Bool)

(assert (=> b!3984414 m!4559751))

(declare-fun m!4559753 () Bool)

(assert (=> b!3984414 m!4559753))

(declare-fun m!4559755 () Bool)

(assert (=> b!3984425 m!4559755))

(declare-fun m!4559757 () Bool)

(assert (=> b!3984425 m!4559757))

(declare-fun m!4559759 () Bool)

(assert (=> b!3984425 m!4559759))

(declare-fun m!4559761 () Bool)

(assert (=> b!3984420 m!4559761))

(declare-fun m!4559763 () Bool)

(assert (=> b!3984424 m!4559763))

(declare-fun m!4559765 () Bool)

(assert (=> b!3984424 m!4559765))

(declare-fun m!4559767 () Bool)

(assert (=> b!3984424 m!4559767))

(declare-fun m!4559769 () Bool)

(assert (=> b!3984424 m!4559769))

(declare-fun m!4559771 () Bool)

(assert (=> b!3984435 m!4559771))

(declare-fun m!4559773 () Bool)

(assert (=> b!3984435 m!4559773))

(declare-fun m!4559775 () Bool)

(assert (=> b!3984435 m!4559775))

(declare-fun m!4559777 () Bool)

(assert (=> b!3984435 m!4559777))

(declare-fun m!4559779 () Bool)

(assert (=> b!3984431 m!4559779))

(declare-fun m!4559781 () Bool)

(assert (=> b!3984431 m!4559781))

(declare-fun m!4559783 () Bool)

(assert (=> b!3984429 m!4559783))

(declare-fun m!4559785 () Bool)

(assert (=> b!3984429 m!4559785))

(declare-fun m!4559787 () Bool)

(assert (=> b!3984429 m!4559787))

(declare-fun m!4559789 () Bool)

(assert (=> b!3984429 m!4559789))

(declare-fun m!4559791 () Bool)

(assert (=> b!3984407 m!4559791))

(declare-fun m!4559793 () Bool)

(assert (=> b!3984428 m!4559793))

(declare-fun m!4559795 () Bool)

(assert (=> b!3984428 m!4559795))

(declare-fun m!4559797 () Bool)

(assert (=> b!3984428 m!4559797))

(declare-fun m!4559799 () Bool)

(assert (=> b!3984428 m!4559799))

(declare-fun m!4559801 () Bool)

(assert (=> b!3984421 m!4559801))

(declare-fun m!4559803 () Bool)

(assert (=> b!3984410 m!4559803))

(declare-fun m!4559805 () Bool)

(assert (=> b!3984410 m!4559805))

(declare-fun m!4559807 () Bool)

(assert (=> b!3984434 m!4559807))

(declare-fun m!4559809 () Bool)

(assert (=> b!3984442 m!4559809))

(declare-fun m!4559811 () Bool)

(assert (=> b!3984442 m!4559811))

(declare-fun m!4559813 () Bool)

(assert (=> b!3984433 m!4559813))

(declare-fun m!4559815 () Bool)

(assert (=> b!3984433 m!4559815))

(declare-fun m!4559817 () Bool)

(assert (=> b!3984433 m!4559817))

(declare-fun m!4559819 () Bool)

(assert (=> b!3984409 m!4559819))

(declare-fun m!4559821 () Bool)

(assert (=> b!3984409 m!4559821))

(declare-fun m!4559823 () Bool)

(assert (=> b!3984409 m!4559823))

(declare-fun m!4559825 () Bool)

(assert (=> b!3984409 m!4559825))

(declare-fun m!4559827 () Bool)

(assert (=> b!3984409 m!4559827))

(declare-fun m!4559829 () Bool)

(assert (=> b!3984439 m!4559829))

(declare-fun m!4559831 () Bool)

(assert (=> b!3984439 m!4559831))

(declare-fun m!4559833 () Bool)

(assert (=> b!3984441 m!4559833))

(declare-fun m!4559835 () Bool)

(assert (=> b!3984441 m!4559835))

(declare-fun m!4559837 () Bool)

(assert (=> b!3984441 m!4559837))

(declare-fun m!4559839 () Bool)

(assert (=> b!3984423 m!4559839))

(declare-fun m!4559841 () Bool)

(assert (=> b!3984423 m!4559841))

(declare-fun m!4559843 () Bool)

(assert (=> b!3984423 m!4559843))

(declare-fun m!4559845 () Bool)

(assert (=> b!3984423 m!4559845))

(declare-fun m!4559847 () Bool)

(assert (=> b!3984418 m!4559847))

(declare-fun m!4559849 () Bool)

(assert (=> b!3984438 m!4559849))

(assert (=> b!3984438 m!4559849))

(declare-fun m!4559851 () Bool)

(assert (=> b!3984438 m!4559851))

(declare-fun m!4559853 () Bool)

(assert (=> b!3984438 m!4559853))

(declare-fun m!4559855 () Bool)

(assert (=> b!3984438 m!4559855))

(declare-fun m!4559857 () Bool)

(assert (=> b!3984438 m!4559857))

(declare-fun m!4559859 () Bool)

(assert (=> b!3984438 m!4559859))

(declare-fun m!4559861 () Bool)

(assert (=> b!3984438 m!4559861))

(declare-fun m!4559863 () Bool)

(assert (=> b!3984438 m!4559863))

(declare-fun m!4559865 () Bool)

(assert (=> b!3984438 m!4559865))

(assert (=> b!3984438 m!4559865))

(declare-fun m!4559867 () Bool)

(assert (=> b!3984438 m!4559867))

(declare-fun m!4559869 () Bool)

(assert (=> b!3984438 m!4559869))

(declare-fun m!4559871 () Bool)

(assert (=> b!3984438 m!4559871))

(declare-fun m!4559873 () Bool)

(assert (=> b!3984438 m!4559873))

(declare-fun m!4559875 () Bool)

(assert (=> b!3984438 m!4559875))

(declare-fun m!4559877 () Bool)

(assert (=> b!3984438 m!4559877))

(declare-fun m!4559879 () Bool)

(assert (=> b!3984438 m!4559879))

(declare-fun m!4559881 () Bool)

(assert (=> b!3984438 m!4559881))

(assert (=> b!3984438 m!4559879))

(declare-fun m!4559883 () Bool)

(assert (=> b!3984438 m!4559883))

(declare-fun m!4559885 () Bool)

(assert (=> b!3984440 m!4559885))

(declare-fun m!4559887 () Bool)

(assert (=> b!3984419 m!4559887))

(declare-fun m!4559889 () Bool)

(assert (=> b!3984419 m!4559889))

(declare-fun m!4559891 () Bool)

(assert (=> b!3984426 m!4559891))

(declare-fun m!4559893 () Bool)

(assert (=> b!3984426 m!4559893))

(declare-fun m!4559895 () Bool)

(assert (=> b!3984437 m!4559895))

(declare-fun m!4559897 () Bool)

(assert (=> start!374984 m!4559897))

(declare-fun m!4559899 () Bool)

(assert (=> b!3984412 m!4559899))

(declare-fun m!4559901 () Bool)

(assert (=> b!3984412 m!4559901))

(declare-fun m!4559903 () Bool)

(assert (=> b!3984412 m!4559903))

(assert (=> b!3984412 m!4559903))

(declare-fun m!4559905 () Bool)

(assert (=> b!3984412 m!4559905))

(declare-fun m!4559907 () Bool)

(assert (=> b!3984430 m!4559907))

(declare-fun m!4559909 () Bool)

(assert (=> b!3984445 m!4559909))

(declare-fun m!4559911 () Bool)

(assert (=> b!3984445 m!4559911))

(declare-fun m!4559913 () Bool)

(assert (=> b!3984445 m!4559913))

(declare-fun m!4559915 () Bool)

(assert (=> b!3984445 m!4559915))

(check-sat (not b!3984430) (not b!3984435) (not b_next!111343) (not b!3984416) (not b!3984438) tp_is_empty!20249 (not b!3984424) (not b!3984428) (not b!3984417) (not b!3984441) (not b!3984419) (not b!3984445) (not b!3984432) (not b!3984413) (not b!3984437) (not b!3984434) (not b_next!111339) (not b!3984442) (not b!3984439) (not b!3984411) b_and!306223 (not b!3984418) (not b_next!111337) (not b!3984443) (not b!3984414) (not b_next!111341) b_and!306225 (not b!3984407) (not b!3984425) (not b!3984433) (not b!3984431) (not b!3984409) (not b!3984420) b_and!306227 (not b!3984436) (not start!374984) b_and!306229 (not b!3984408) (not b!3984410) (not b!3984412) (not b!3984429) (not b!3984423) (not b!3984421) (not b!3984426) (not b!3984440))
(check-sat (not b_next!111339) b_and!306223 (not b_next!111337) (not b_next!111343) b_and!306227 b_and!306229 (not b_next!111341) b_and!306225)
(get-model)

(declare-fun d!1179288 () Bool)

(declare-fun fromListB!2283 (List!42732) BalanceConc!25484)

(assert (=> d!1179288 (= (seqFromList!4973 lt!1401507) (fromListB!2283 lt!1401507))))

(declare-fun bs!588095 () Bool)

(assert (= bs!588095 d!1179288))

(declare-fun m!4559981 () Bool)

(assert (=> bs!588095 m!4559981))

(assert (=> b!3984413 d!1179288))

(declare-fun d!1179290 () Bool)

(assert (=> d!1179290 (isPrefix!3821 lt!1401507 (++!11136 lt!1401507 lt!1401486))))

(declare-fun lt!1401557 () Unit!61288)

(declare-fun choose!23922 (List!42732 List!42732) Unit!61288)

(assert (=> d!1179290 (= lt!1401557 (choose!23922 lt!1401507 lt!1401486))))

(assert (=> d!1179290 (= (lemmaConcatTwoListThenFirstIsPrefix!2664 lt!1401507 lt!1401486) lt!1401557)))

(declare-fun bs!588097 () Bool)

(assert (= bs!588097 d!1179290))

(assert (=> bs!588097 m!4559909))

(assert (=> bs!588097 m!4559909))

(declare-fun m!4560017 () Bool)

(assert (=> bs!588097 m!4560017))

(declare-fun m!4560019 () Bool)

(assert (=> bs!588097 m!4560019))

(assert (=> b!3984413 d!1179290))

(declare-fun d!1179296 () Bool)

(declare-fun dynLambda!18115 (Int BalanceConc!25484) TokenValue!6964)

(assert (=> d!1179296 (= (apply!9945 (transformation!6734 (rule!9744 token!484)) (seqFromList!4973 lt!1401507)) (dynLambda!18115 (toValue!9222 (transformation!6734 (rule!9744 token!484))) (seqFromList!4973 lt!1401507)))))

(declare-fun b_lambda!116369 () Bool)

(assert (=> (not b_lambda!116369) (not d!1179296)))

(declare-fun t!331491 () Bool)

(declare-fun tb!240017 () Bool)

(assert (=> (and b!3984422 (= (toValue!9222 (transformation!6734 (rule!9744 token!484))) (toValue!9222 (transformation!6734 (rule!9744 token!484)))) t!331491) tb!240017))

(declare-fun result!290780 () Bool)

(assert (=> tb!240017 (= result!290780 (inv!21 (dynLambda!18115 (toValue!9222 (transformation!6734 (rule!9744 token!484))) (seqFromList!4973 lt!1401507))))))

(declare-fun m!4560033 () Bool)

(assert (=> tb!240017 m!4560033))

(assert (=> d!1179296 t!331491))

(declare-fun b_and!306235 () Bool)

(assert (= b_and!306223 (and (=> t!331491 result!290780) b_and!306235)))

(declare-fun tb!240019 () Bool)

(declare-fun t!331493 () Bool)

(assert (=> (and b!3984446 (= (toValue!9222 (transformation!6734 (h!48030 rules!2999))) (toValue!9222 (transformation!6734 (rule!9744 token!484)))) t!331493) tb!240019))

(declare-fun result!290784 () Bool)

(assert (= result!290784 result!290780))

(assert (=> d!1179296 t!331493))

(declare-fun b_and!306237 () Bool)

(assert (= b_and!306227 (and (=> t!331493 result!290784) b_and!306237)))

(assert (=> d!1179296 m!4559739))

(declare-fun m!4560035 () Bool)

(assert (=> d!1179296 m!4560035))

(assert (=> b!3984413 d!1179296))

(declare-fun b!3984578 () Bool)

(declare-fun res!1615715 () Bool)

(declare-fun e!2469604 () Bool)

(assert (=> b!3984578 (=> (not res!1615715) (not e!2469604))))

(declare-fun head!8483 (List!42732) C!23464)

(assert (=> b!3984578 (= res!1615715 (= (head!8483 lt!1401507) (head!8483 lt!1401496)))))

(declare-fun b!3984580 () Bool)

(declare-fun e!2469605 () Bool)

(assert (=> b!3984580 (= e!2469605 (>= (size!31871 lt!1401496) (size!31871 lt!1401507)))))

(declare-fun d!1179300 () Bool)

(assert (=> d!1179300 e!2469605))

(declare-fun res!1615713 () Bool)

(assert (=> d!1179300 (=> res!1615713 e!2469605)))

(declare-fun lt!1401579 () Bool)

(assert (=> d!1179300 (= res!1615713 (not lt!1401579))))

(declare-fun e!2469606 () Bool)

(assert (=> d!1179300 (= lt!1401579 e!2469606)))

(declare-fun res!1615712 () Bool)

(assert (=> d!1179300 (=> res!1615712 e!2469606)))

(assert (=> d!1179300 (= res!1615712 ((_ is Nil!42608) lt!1401507))))

(assert (=> d!1179300 (= (isPrefix!3821 lt!1401507 lt!1401496) lt!1401579)))

(declare-fun b!3984577 () Bool)

(assert (=> b!3984577 (= e!2469606 e!2469604)))

(declare-fun res!1615714 () Bool)

(assert (=> b!3984577 (=> (not res!1615714) (not e!2469604))))

(assert (=> b!3984577 (= res!1615714 (not ((_ is Nil!42608) lt!1401496)))))

(declare-fun b!3984579 () Bool)

(declare-fun tail!6215 (List!42732) List!42732)

(assert (=> b!3984579 (= e!2469604 (isPrefix!3821 (tail!6215 lt!1401507) (tail!6215 lt!1401496)))))

(assert (= (and d!1179300 (not res!1615712)) b!3984577))

(assert (= (and b!3984577 res!1615714) b!3984578))

(assert (= (and b!3984578 res!1615715) b!3984579))

(assert (= (and d!1179300 (not res!1615713)) b!3984580))

(declare-fun m!4560125 () Bool)

(assert (=> b!3984578 m!4560125))

(declare-fun m!4560127 () Bool)

(assert (=> b!3984578 m!4560127))

(declare-fun m!4560129 () Bool)

(assert (=> b!3984580 m!4560129))

(assert (=> b!3984580 m!4559899))

(declare-fun m!4560135 () Bool)

(assert (=> b!3984579 m!4560135))

(declare-fun m!4560139 () Bool)

(assert (=> b!3984579 m!4560139))

(assert (=> b!3984579 m!4560135))

(assert (=> b!3984579 m!4560139))

(declare-fun m!4560141 () Bool)

(assert (=> b!3984579 m!4560141))

(assert (=> b!3984413 d!1179300))

(declare-fun d!1179330 () Bool)

(declare-fun e!2469707 () Bool)

(assert (=> d!1179330 e!2469707))

(declare-fun res!1615833 () Bool)

(assert (=> d!1179330 (=> res!1615833 e!2469707)))

(declare-fun lt!1401655 () Option!9148)

(declare-fun isEmpty!25472 (Option!9148) Bool)

(assert (=> d!1179330 (= res!1615833 (isEmpty!25472 lt!1401655))))

(declare-fun e!2469708 () Option!9148)

(assert (=> d!1179330 (= lt!1401655 e!2469708)))

(declare-fun c!690034 () Bool)

(declare-datatypes ((tuple2!41826 0))(
  ( (tuple2!41827 (_1!24047 List!42732) (_2!24047 List!42732)) )
))
(declare-fun lt!1401656 () tuple2!41826)

(declare-fun isEmpty!25473 (List!42732) Bool)

(assert (=> d!1179330 (= c!690034 (isEmpty!25473 (_1!24047 lt!1401656)))))

(declare-fun findLongestMatch!1238 (Regex!11639 List!42732) tuple2!41826)

(assert (=> d!1179330 (= lt!1401656 (findLongestMatch!1238 (regex!6734 (rule!9744 token!484)) lt!1401508))))

(assert (=> d!1179330 (ruleValid!2666 thiss!21717 (rule!9744 token!484))))

(assert (=> d!1179330 (= (maxPrefixOneRule!2655 thiss!21717 (rule!9744 token!484) lt!1401508) lt!1401655)))

(declare-fun b!3984744 () Bool)

(declare-fun e!2469705 () Bool)

(declare-fun get!14025 (Option!9148) tuple2!41824)

(assert (=> b!3984744 (= e!2469705 (= (size!31870 (_1!24046 (get!14025 lt!1401655))) (size!31871 (originalCharacters!7334 (_1!24046 (get!14025 lt!1401655))))))))

(declare-fun b!3984745 () Bool)

(assert (=> b!3984745 (= e!2469708 None!9147)))

(declare-fun b!3984746 () Bool)

(declare-fun res!1615830 () Bool)

(assert (=> b!3984746 (=> (not res!1615830) (not e!2469705))))

(assert (=> b!3984746 (= res!1615830 (= (rule!9744 (_1!24046 (get!14025 lt!1401655))) (rule!9744 token!484)))))

(declare-fun b!3984747 () Bool)

(declare-fun res!1615831 () Bool)

(assert (=> b!3984747 (=> (not res!1615831) (not e!2469705))))

(assert (=> b!3984747 (= res!1615831 (< (size!31871 (_2!24046 (get!14025 lt!1401655))) (size!31871 lt!1401508)))))

(declare-fun b!3984748 () Bool)

(declare-fun res!1615836 () Bool)

(assert (=> b!3984748 (=> (not res!1615836) (not e!2469705))))

(assert (=> b!3984748 (= res!1615836 (= (value!212553 (_1!24046 (get!14025 lt!1401655))) (apply!9945 (transformation!6734 (rule!9744 (_1!24046 (get!14025 lt!1401655)))) (seqFromList!4973 (originalCharacters!7334 (_1!24046 (get!14025 lt!1401655)))))))))

(declare-fun b!3984749 () Bool)

(declare-fun size!31872 (BalanceConc!25484) Int)

(assert (=> b!3984749 (= e!2469708 (Some!9147 (tuple2!41825 (Token!12607 (apply!9945 (transformation!6734 (rule!9744 token!484)) (seqFromList!4973 (_1!24047 lt!1401656))) (rule!9744 token!484) (size!31872 (seqFromList!4973 (_1!24047 lt!1401656))) (_1!24047 lt!1401656)) (_2!24047 lt!1401656))))))

(declare-fun lt!1401653 () Unit!61288)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1298 (Regex!11639 List!42732) Unit!61288)

(assert (=> b!3984749 (= lt!1401653 (longestMatchIsAcceptedByMatchOrIsEmpty!1298 (regex!6734 (rule!9744 token!484)) lt!1401508))))

(declare-fun res!1615835 () Bool)

(declare-fun findLongestMatchInner!1325 (Regex!11639 List!42732 Int List!42732 List!42732 Int) tuple2!41826)

(assert (=> b!3984749 (= res!1615835 (isEmpty!25473 (_1!24047 (findLongestMatchInner!1325 (regex!6734 (rule!9744 token!484)) Nil!42608 (size!31871 Nil!42608) lt!1401508 lt!1401508 (size!31871 lt!1401508)))))))

(declare-fun e!2469706 () Bool)

(assert (=> b!3984749 (=> res!1615835 e!2469706)))

(assert (=> b!3984749 e!2469706))

(declare-fun lt!1401654 () Unit!61288)

(assert (=> b!3984749 (= lt!1401654 lt!1401653)))

(declare-fun lt!1401657 () Unit!61288)

(declare-fun lemmaSemiInverse!1837 (TokenValueInjection!13356 BalanceConc!25484) Unit!61288)

(assert (=> b!3984749 (= lt!1401657 (lemmaSemiInverse!1837 (transformation!6734 (rule!9744 token!484)) (seqFromList!4973 (_1!24047 lt!1401656))))))

(declare-fun b!3984750 () Bool)

(assert (=> b!3984750 (= e!2469706 (matchR!5616 (regex!6734 (rule!9744 token!484)) (_1!24047 (findLongestMatchInner!1325 (regex!6734 (rule!9744 token!484)) Nil!42608 (size!31871 Nil!42608) lt!1401508 lt!1401508 (size!31871 lt!1401508)))))))

(declare-fun b!3984751 () Bool)

(assert (=> b!3984751 (= e!2469707 e!2469705)))

(declare-fun res!1615832 () Bool)

(assert (=> b!3984751 (=> (not res!1615832) (not e!2469705))))

(assert (=> b!3984751 (= res!1615832 (matchR!5616 (regex!6734 (rule!9744 token!484)) (list!15816 (charsOf!4550 (_1!24046 (get!14025 lt!1401655))))))))

(declare-fun b!3984752 () Bool)

(declare-fun res!1615834 () Bool)

(assert (=> b!3984752 (=> (not res!1615834) (not e!2469705))))

(assert (=> b!3984752 (= res!1615834 (= (++!11136 (list!15816 (charsOf!4550 (_1!24046 (get!14025 lt!1401655)))) (_2!24046 (get!14025 lt!1401655))) lt!1401508))))

(assert (= (and d!1179330 c!690034) b!3984745))

(assert (= (and d!1179330 (not c!690034)) b!3984749))

(assert (= (and b!3984749 (not res!1615835)) b!3984750))

(assert (= (and d!1179330 (not res!1615833)) b!3984751))

(assert (= (and b!3984751 res!1615832) b!3984752))

(assert (= (and b!3984752 res!1615834) b!3984747))

(assert (= (and b!3984747 res!1615831) b!3984746))

(assert (= (and b!3984746 res!1615830) b!3984748))

(assert (= (and b!3984748 res!1615836) b!3984744))

(declare-fun m!4560425 () Bool)

(assert (=> b!3984747 m!4560425))

(declare-fun m!4560427 () Bool)

(assert (=> b!3984747 m!4560427))

(assert (=> b!3984747 m!4559735))

(declare-fun m!4560429 () Bool)

(assert (=> d!1179330 m!4560429))

(declare-fun m!4560431 () Bool)

(assert (=> d!1179330 m!4560431))

(declare-fun m!4560433 () Bool)

(assert (=> d!1179330 m!4560433))

(assert (=> d!1179330 m!4559797))

(assert (=> b!3984746 m!4560425))

(assert (=> b!3984744 m!4560425))

(declare-fun m!4560435 () Bool)

(assert (=> b!3984744 m!4560435))

(assert (=> b!3984749 m!4559735))

(declare-fun m!4560437 () Bool)

(assert (=> b!3984749 m!4560437))

(declare-fun m!4560439 () Bool)

(assert (=> b!3984749 m!4560439))

(assert (=> b!3984749 m!4559735))

(declare-fun m!4560441 () Bool)

(assert (=> b!3984749 m!4560441))

(declare-fun m!4560443 () Bool)

(assert (=> b!3984749 m!4560443))

(declare-fun m!4560445 () Bool)

(assert (=> b!3984749 m!4560445))

(assert (=> b!3984749 m!4560443))

(declare-fun m!4560447 () Bool)

(assert (=> b!3984749 m!4560447))

(assert (=> b!3984749 m!4560443))

(assert (=> b!3984749 m!4560439))

(assert (=> b!3984749 m!4560443))

(declare-fun m!4560449 () Bool)

(assert (=> b!3984749 m!4560449))

(declare-fun m!4560451 () Bool)

(assert (=> b!3984749 m!4560451))

(assert (=> b!3984752 m!4560425))

(declare-fun m!4560453 () Bool)

(assert (=> b!3984752 m!4560453))

(assert (=> b!3984752 m!4560453))

(declare-fun m!4560455 () Bool)

(assert (=> b!3984752 m!4560455))

(assert (=> b!3984752 m!4560455))

(declare-fun m!4560457 () Bool)

(assert (=> b!3984752 m!4560457))

(assert (=> b!3984748 m!4560425))

(declare-fun m!4560459 () Bool)

(assert (=> b!3984748 m!4560459))

(assert (=> b!3984748 m!4560459))

(declare-fun m!4560461 () Bool)

(assert (=> b!3984748 m!4560461))

(assert (=> b!3984751 m!4560425))

(assert (=> b!3984751 m!4560453))

(assert (=> b!3984751 m!4560453))

(assert (=> b!3984751 m!4560455))

(assert (=> b!3984751 m!4560455))

(declare-fun m!4560463 () Bool)

(assert (=> b!3984751 m!4560463))

(assert (=> b!3984750 m!4560439))

(assert (=> b!3984750 m!4559735))

(assert (=> b!3984750 m!4560439))

(assert (=> b!3984750 m!4559735))

(assert (=> b!3984750 m!4560441))

(declare-fun m!4560465 () Bool)

(assert (=> b!3984750 m!4560465))

(assert (=> b!3984413 d!1179330))

(declare-fun d!1179436 () Bool)

(assert (=> d!1179436 (= lt!1401486 suffixResult!105)))

(declare-fun lt!1401665 () Unit!61288)

(declare-fun choose!23925 (List!42732 List!42732 List!42732 List!42732 List!42732) Unit!61288)

(assert (=> d!1179436 (= lt!1401665 (choose!23925 lt!1401507 lt!1401486 lt!1401507 suffixResult!105 lt!1401508))))

(assert (=> d!1179436 (isPrefix!3821 lt!1401507 lt!1401508)))

(assert (=> d!1179436 (= (lemmaSamePrefixThenSameSuffix!2008 lt!1401507 lt!1401486 lt!1401507 suffixResult!105 lt!1401508) lt!1401665)))

(declare-fun bs!588120 () Bool)

(assert (= bs!588120 d!1179436))

(declare-fun m!4560477 () Bool)

(assert (=> bs!588120 m!4560477))

(assert (=> bs!588120 m!4559827))

(assert (=> b!3984413 d!1179436))

(declare-fun d!1179442 () Bool)

(assert (=> d!1179442 (= (maxPrefixOneRule!2655 thiss!21717 (rule!9744 token!484) lt!1401508) (Some!9147 (tuple2!41825 (Token!12607 (apply!9945 (transformation!6734 (rule!9744 token!484)) (seqFromList!4973 lt!1401507)) (rule!9744 token!484) (size!31871 lt!1401507) lt!1401507) suffixResult!105)))))

(declare-fun lt!1401679 () Unit!61288)

(declare-fun choose!23926 (LexerInterface!6323 List!42734 List!42732 List!42732 List!42732 Rule!13268) Unit!61288)

(assert (=> d!1179442 (= lt!1401679 (choose!23926 thiss!21717 rules!2999 lt!1401507 lt!1401508 suffixResult!105 (rule!9744 token!484)))))

(assert (=> d!1179442 (not (isEmpty!25470 rules!2999))))

(assert (=> d!1179442 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1477 thiss!21717 rules!2999 lt!1401507 lt!1401508 suffixResult!105 (rule!9744 token!484)) lt!1401679)))

(declare-fun bs!588123 () Bool)

(assert (= bs!588123 d!1179442))

(assert (=> bs!588123 m!4559807))

(assert (=> bs!588123 m!4559739))

(assert (=> bs!588123 m!4559749))

(declare-fun m!4560555 () Bool)

(assert (=> bs!588123 m!4560555))

(assert (=> bs!588123 m!4559899))

(assert (=> bs!588123 m!4559739))

(assert (=> bs!588123 m!4559745))

(assert (=> b!3984413 d!1179442))

(declare-fun d!1179458 () Bool)

(assert (=> d!1179458 (= (inv!56913 (tag!7594 (rule!9744 token!484))) (= (mod (str.len (value!212552 (tag!7594 (rule!9744 token!484)))) 2) 0))))

(assert (=> b!3984414 d!1179458))

(declare-fun d!1179460 () Bool)

(declare-fun res!1615884 () Bool)

(declare-fun e!2469771 () Bool)

(assert (=> d!1179460 (=> (not res!1615884) (not e!2469771))))

(declare-fun semiInverseModEq!2889 (Int Int) Bool)

(assert (=> d!1179460 (= res!1615884 (semiInverseModEq!2889 (toChars!9081 (transformation!6734 (rule!9744 token!484))) (toValue!9222 (transformation!6734 (rule!9744 token!484)))))))

(assert (=> d!1179460 (= (inv!56916 (transformation!6734 (rule!9744 token!484))) e!2469771)))

(declare-fun b!3984865 () Bool)

(declare-fun equivClasses!2788 (Int Int) Bool)

(assert (=> b!3984865 (= e!2469771 (equivClasses!2788 (toChars!9081 (transformation!6734 (rule!9744 token!484))) (toValue!9222 (transformation!6734 (rule!9744 token!484)))))))

(assert (= (and d!1179460 res!1615884) b!3984865))

(declare-fun m!4560557 () Bool)

(assert (=> d!1179460 m!4560557))

(declare-fun m!4560559 () Bool)

(assert (=> b!3984865 m!4560559))

(assert (=> b!3984414 d!1179460))

(declare-fun b!3984875 () Bool)

(declare-fun e!2469777 () List!42732)

(assert (=> b!3984875 (= e!2469777 (Cons!42608 (h!48028 lt!1401507) (++!11136 (t!331483 lt!1401507) lt!1401467)))))

(declare-fun b!3984874 () Bool)

(assert (=> b!3984874 (= e!2469777 lt!1401467)))

(declare-fun e!2469776 () Bool)

(declare-fun b!3984877 () Bool)

(declare-fun lt!1401682 () List!42732)

(assert (=> b!3984877 (= e!2469776 (or (not (= lt!1401467 Nil!42608)) (= lt!1401682 lt!1401507)))))

(declare-fun d!1179462 () Bool)

(assert (=> d!1179462 e!2469776))

(declare-fun res!1615890 () Bool)

(assert (=> d!1179462 (=> (not res!1615890) (not e!2469776))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6460 (List!42732) (InoxSet C!23464))

(assert (=> d!1179462 (= res!1615890 (= (content!6460 lt!1401682) ((_ map or) (content!6460 lt!1401507) (content!6460 lt!1401467))))))

(assert (=> d!1179462 (= lt!1401682 e!2469777)))

(declare-fun c!690050 () Bool)

(assert (=> d!1179462 (= c!690050 ((_ is Nil!42608) lt!1401507))))

(assert (=> d!1179462 (= (++!11136 lt!1401507 lt!1401467) lt!1401682)))

(declare-fun b!3984876 () Bool)

(declare-fun res!1615889 () Bool)

(assert (=> b!3984876 (=> (not res!1615889) (not e!2469776))))

(assert (=> b!3984876 (= res!1615889 (= (size!31871 lt!1401682) (+ (size!31871 lt!1401507) (size!31871 lt!1401467))))))

(assert (= (and d!1179462 c!690050) b!3984874))

(assert (= (and d!1179462 (not c!690050)) b!3984875))

(assert (= (and d!1179462 res!1615890) b!3984876))

(assert (= (and b!3984876 res!1615889) b!3984877))

(declare-fun m!4560561 () Bool)

(assert (=> b!3984875 m!4560561))

(declare-fun m!4560563 () Bool)

(assert (=> d!1179462 m!4560563))

(declare-fun m!4560565 () Bool)

(assert (=> d!1179462 m!4560565))

(declare-fun m!4560567 () Bool)

(assert (=> d!1179462 m!4560567))

(declare-fun m!4560569 () Bool)

(assert (=> b!3984876 m!4560569))

(assert (=> b!3984876 m!4559899))

(declare-fun m!4560571 () Bool)

(assert (=> b!3984876 m!4560571))

(assert (=> b!3984435 d!1179462))

(declare-fun d!1179464 () Bool)

(declare-fun lt!1401685 () List!42732)

(assert (=> d!1179464 (= (++!11136 lt!1401507 lt!1401685) prefix!494)))

(declare-fun e!2469780 () List!42732)

(assert (=> d!1179464 (= lt!1401685 e!2469780)))

(declare-fun c!690053 () Bool)

(assert (=> d!1179464 (= c!690053 ((_ is Cons!42608) lt!1401507))))

(assert (=> d!1179464 (>= (size!31871 prefix!494) (size!31871 lt!1401507))))

(assert (=> d!1179464 (= (getSuffix!2252 prefix!494 lt!1401507) lt!1401685)))

(declare-fun b!3984882 () Bool)

(assert (=> b!3984882 (= e!2469780 (getSuffix!2252 (tail!6215 prefix!494) (t!331483 lt!1401507)))))

(declare-fun b!3984883 () Bool)

(assert (=> b!3984883 (= e!2469780 prefix!494)))

(assert (= (and d!1179464 c!690053) b!3984882))

(assert (= (and d!1179464 (not c!690053)) b!3984883))

(declare-fun m!4560573 () Bool)

(assert (=> d!1179464 m!4560573))

(assert (=> d!1179464 m!4559901))

(assert (=> d!1179464 m!4559899))

(declare-fun m!4560575 () Bool)

(assert (=> b!3984882 m!4560575))

(assert (=> b!3984882 m!4560575))

(declare-fun m!4560577 () Bool)

(assert (=> b!3984882 m!4560577))

(assert (=> b!3984435 d!1179464))

(declare-fun b!3984885 () Bool)

(declare-fun res!1615894 () Bool)

(declare-fun e!2469781 () Bool)

(assert (=> b!3984885 (=> (not res!1615894) (not e!2469781))))

(assert (=> b!3984885 (= res!1615894 (= (head!8483 lt!1401507) (head!8483 prefix!494)))))

(declare-fun b!3984887 () Bool)

(declare-fun e!2469782 () Bool)

(assert (=> b!3984887 (= e!2469782 (>= (size!31871 prefix!494) (size!31871 lt!1401507)))))

(declare-fun d!1179466 () Bool)

(assert (=> d!1179466 e!2469782))

(declare-fun res!1615892 () Bool)

(assert (=> d!1179466 (=> res!1615892 e!2469782)))

(declare-fun lt!1401686 () Bool)

(assert (=> d!1179466 (= res!1615892 (not lt!1401686))))

(declare-fun e!2469783 () Bool)

(assert (=> d!1179466 (= lt!1401686 e!2469783)))

(declare-fun res!1615891 () Bool)

(assert (=> d!1179466 (=> res!1615891 e!2469783)))

(assert (=> d!1179466 (= res!1615891 ((_ is Nil!42608) lt!1401507))))

(assert (=> d!1179466 (= (isPrefix!3821 lt!1401507 prefix!494) lt!1401686)))

(declare-fun b!3984884 () Bool)

(assert (=> b!3984884 (= e!2469783 e!2469781)))

(declare-fun res!1615893 () Bool)

(assert (=> b!3984884 (=> (not res!1615893) (not e!2469781))))

(assert (=> b!3984884 (= res!1615893 (not ((_ is Nil!42608) prefix!494)))))

(declare-fun b!3984886 () Bool)

(assert (=> b!3984886 (= e!2469781 (isPrefix!3821 (tail!6215 lt!1401507) (tail!6215 prefix!494)))))

(assert (= (and d!1179466 (not res!1615891)) b!3984884))

(assert (= (and b!3984884 res!1615893) b!3984885))

(assert (= (and b!3984885 res!1615894) b!3984886))

(assert (= (and d!1179466 (not res!1615892)) b!3984887))

(assert (=> b!3984885 m!4560125))

(declare-fun m!4560579 () Bool)

(assert (=> b!3984885 m!4560579))

(assert (=> b!3984887 m!4559901))

(assert (=> b!3984887 m!4559899))

(assert (=> b!3984886 m!4560135))

(assert (=> b!3984886 m!4560575))

(assert (=> b!3984886 m!4560135))

(assert (=> b!3984886 m!4560575))

(declare-fun m!4560581 () Bool)

(assert (=> b!3984886 m!4560581))

(assert (=> b!3984435 d!1179466))

(declare-fun d!1179468 () Bool)

(assert (=> d!1179468 (isPrefix!3821 lt!1401507 prefix!494)))

(declare-fun lt!1401689 () Unit!61288)

(declare-fun choose!23927 (List!42732 List!42732 List!42732) Unit!61288)

(assert (=> d!1179468 (= lt!1401689 (choose!23927 prefix!494 lt!1401507 lt!1401508))))

(assert (=> d!1179468 (isPrefix!3821 prefix!494 lt!1401508)))

(assert (=> d!1179468 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!399 prefix!494 lt!1401507 lt!1401508) lt!1401689)))

(declare-fun bs!588124 () Bool)

(assert (= bs!588124 d!1179468))

(assert (=> bs!588124 m!4559775))

(declare-fun m!4560583 () Bool)

(assert (=> bs!588124 m!4560583))

(assert (=> bs!588124 m!4559823))

(assert (=> b!3984435 d!1179468))

(declare-fun d!1179470 () Bool)

(declare-fun lt!1401692 () Int)

(assert (=> d!1179470 (>= lt!1401692 0)))

(declare-fun e!2469786 () Int)

(assert (=> d!1179470 (= lt!1401692 e!2469786)))

(declare-fun c!690056 () Bool)

(assert (=> d!1179470 (= c!690056 ((_ is Nil!42608) lt!1401507))))

(assert (=> d!1179470 (= (size!31871 lt!1401507) lt!1401692)))

(declare-fun b!3984892 () Bool)

(assert (=> b!3984892 (= e!2469786 0)))

(declare-fun b!3984893 () Bool)

(assert (=> b!3984893 (= e!2469786 (+ 1 (size!31871 (t!331483 lt!1401507))))))

(assert (= (and d!1179470 c!690056) b!3984892))

(assert (= (and d!1179470 (not c!690056)) b!3984893))

(declare-fun m!4560585 () Bool)

(assert (=> b!3984893 m!4560585))

(assert (=> b!3984412 d!1179470))

(declare-fun d!1179472 () Bool)

(declare-fun lt!1401693 () Int)

(assert (=> d!1179472 (>= lt!1401693 0)))

(declare-fun e!2469787 () Int)

(assert (=> d!1179472 (= lt!1401693 e!2469787)))

(declare-fun c!690057 () Bool)

(assert (=> d!1179472 (= c!690057 ((_ is Nil!42608) prefix!494))))

(assert (=> d!1179472 (= (size!31871 prefix!494) lt!1401693)))

(declare-fun b!3984894 () Bool)

(assert (=> b!3984894 (= e!2469787 0)))

(declare-fun b!3984895 () Bool)

(assert (=> b!3984895 (= e!2469787 (+ 1 (size!31871 (t!331483 prefix!494))))))

(assert (= (and d!1179472 c!690057) b!3984894))

(assert (= (and d!1179472 (not c!690057)) b!3984895))

(declare-fun m!4560587 () Bool)

(assert (=> b!3984895 m!4560587))

(assert (=> b!3984412 d!1179472))

(declare-fun d!1179474 () Bool)

(declare-fun list!15818 (Conc!12945) List!42732)

(assert (=> d!1179474 (= (list!15816 (charsOf!4550 token!484)) (list!15818 (c!689988 (charsOf!4550 token!484))))))

(declare-fun bs!588125 () Bool)

(assert (= bs!588125 d!1179474))

(declare-fun m!4560589 () Bool)

(assert (=> bs!588125 m!4560589))

(assert (=> b!3984412 d!1179474))

(declare-fun d!1179476 () Bool)

(declare-fun lt!1401696 () BalanceConc!25484)

(assert (=> d!1179476 (= (list!15816 lt!1401696) (originalCharacters!7334 token!484))))

(declare-fun dynLambda!18116 (Int TokenValue!6964) BalanceConc!25484)

(assert (=> d!1179476 (= lt!1401696 (dynLambda!18116 (toChars!9081 (transformation!6734 (rule!9744 token!484))) (value!212553 token!484)))))

(assert (=> d!1179476 (= (charsOf!4550 token!484) lt!1401696)))

(declare-fun b_lambda!116385 () Bool)

(assert (=> (not b_lambda!116385) (not d!1179476)))

(declare-fun t!331515 () Bool)

(declare-fun tb!240041 () Bool)

(assert (=> (and b!3984422 (= (toChars!9081 (transformation!6734 (rule!9744 token!484))) (toChars!9081 (transformation!6734 (rule!9744 token!484)))) t!331515) tb!240041))

(declare-fun b!3984900 () Bool)

(declare-fun e!2469790 () Bool)

(declare-fun tp!1214393 () Bool)

(declare-fun inv!56920 (Conc!12945) Bool)

(assert (=> b!3984900 (= e!2469790 (and (inv!56920 (c!689988 (dynLambda!18116 (toChars!9081 (transformation!6734 (rule!9744 token!484))) (value!212553 token!484)))) tp!1214393))))

(declare-fun result!290814 () Bool)

(declare-fun inv!56921 (BalanceConc!25484) Bool)

(assert (=> tb!240041 (= result!290814 (and (inv!56921 (dynLambda!18116 (toChars!9081 (transformation!6734 (rule!9744 token!484))) (value!212553 token!484))) e!2469790))))

(assert (= tb!240041 b!3984900))

(declare-fun m!4560591 () Bool)

(assert (=> b!3984900 m!4560591))

(declare-fun m!4560593 () Bool)

(assert (=> tb!240041 m!4560593))

(assert (=> d!1179476 t!331515))

(declare-fun b_and!306259 () Bool)

(assert (= b_and!306225 (and (=> t!331515 result!290814) b_and!306259)))

(declare-fun t!331517 () Bool)

(declare-fun tb!240043 () Bool)

(assert (=> (and b!3984446 (= (toChars!9081 (transformation!6734 (h!48030 rules!2999))) (toChars!9081 (transformation!6734 (rule!9744 token!484)))) t!331517) tb!240043))

(declare-fun result!290818 () Bool)

(assert (= result!290818 result!290814))

(assert (=> d!1179476 t!331517))

(declare-fun b_and!306261 () Bool)

(assert (= b_and!306229 (and (=> t!331517 result!290818) b_and!306261)))

(declare-fun m!4560595 () Bool)

(assert (=> d!1179476 m!4560595))

(declare-fun m!4560597 () Bool)

(assert (=> d!1179476 m!4560597))

(assert (=> b!3984412 d!1179476))

(declare-fun d!1179478 () Bool)

(assert (=> d!1179478 (= (_2!24046 (v!39497 lt!1401497)) lt!1401475)))

(declare-fun lt!1401697 () Unit!61288)

(assert (=> d!1179478 (= lt!1401697 (choose!23925 lt!1401503 (_2!24046 (v!39497 lt!1401497)) lt!1401503 lt!1401475 lt!1401470))))

(assert (=> d!1179478 (isPrefix!3821 lt!1401503 lt!1401470)))

(assert (=> d!1179478 (= (lemmaSamePrefixThenSameSuffix!2008 lt!1401503 (_2!24046 (v!39497 lt!1401497)) lt!1401503 lt!1401475 lt!1401470) lt!1401697)))

(declare-fun bs!588126 () Bool)

(assert (= bs!588126 d!1179478))

(declare-fun m!4560599 () Bool)

(assert (=> bs!588126 m!4560599))

(assert (=> bs!588126 m!4559907))

(assert (=> b!3984433 d!1179478))

(declare-fun b!3984902 () Bool)

(declare-fun res!1615898 () Bool)

(declare-fun e!2469791 () Bool)

(assert (=> b!3984902 (=> (not res!1615898) (not e!2469791))))

(assert (=> b!3984902 (= res!1615898 (= (head!8483 lt!1401503) (head!8483 lt!1401471)))))

(declare-fun b!3984904 () Bool)

(declare-fun e!2469792 () Bool)

(assert (=> b!3984904 (= e!2469792 (>= (size!31871 lt!1401471) (size!31871 lt!1401503)))))

(declare-fun d!1179480 () Bool)

(assert (=> d!1179480 e!2469792))

(declare-fun res!1615896 () Bool)

(assert (=> d!1179480 (=> res!1615896 e!2469792)))

(declare-fun lt!1401698 () Bool)

(assert (=> d!1179480 (= res!1615896 (not lt!1401698))))

(declare-fun e!2469793 () Bool)

(assert (=> d!1179480 (= lt!1401698 e!2469793)))

(declare-fun res!1615895 () Bool)

(assert (=> d!1179480 (=> res!1615895 e!2469793)))

(assert (=> d!1179480 (= res!1615895 ((_ is Nil!42608) lt!1401503))))

(assert (=> d!1179480 (= (isPrefix!3821 lt!1401503 lt!1401471) lt!1401698)))

(declare-fun b!3984901 () Bool)

(assert (=> b!3984901 (= e!2469793 e!2469791)))

(declare-fun res!1615897 () Bool)

(assert (=> b!3984901 (=> (not res!1615897) (not e!2469791))))

(assert (=> b!3984901 (= res!1615897 (not ((_ is Nil!42608) lt!1401471)))))

(declare-fun b!3984903 () Bool)

(assert (=> b!3984903 (= e!2469791 (isPrefix!3821 (tail!6215 lt!1401503) (tail!6215 lt!1401471)))))

(assert (= (and d!1179480 (not res!1615895)) b!3984901))

(assert (= (and b!3984901 res!1615897) b!3984902))

(assert (= (and b!3984902 res!1615898) b!3984903))

(assert (= (and d!1179480 (not res!1615896)) b!3984904))

(declare-fun m!4560601 () Bool)

(assert (=> b!3984902 m!4560601))

(declare-fun m!4560603 () Bool)

(assert (=> b!3984902 m!4560603))

(declare-fun m!4560605 () Bool)

(assert (=> b!3984904 m!4560605))

(assert (=> b!3984904 m!4559863))

(declare-fun m!4560607 () Bool)

(assert (=> b!3984903 m!4560607))

(declare-fun m!4560609 () Bool)

(assert (=> b!3984903 m!4560609))

(assert (=> b!3984903 m!4560607))

(assert (=> b!3984903 m!4560609))

(declare-fun m!4560611 () Bool)

(assert (=> b!3984903 m!4560611))

(assert (=> b!3984433 d!1179480))

(declare-fun d!1179482 () Bool)

(assert (=> d!1179482 (isPrefix!3821 lt!1401503 (++!11136 lt!1401503 lt!1401475))))

(declare-fun lt!1401699 () Unit!61288)

(assert (=> d!1179482 (= lt!1401699 (choose!23922 lt!1401503 lt!1401475))))

(assert (=> d!1179482 (= (lemmaConcatTwoListThenFirstIsPrefix!2664 lt!1401503 lt!1401475) lt!1401699)))

(declare-fun bs!588127 () Bool)

(assert (= bs!588127 d!1179482))

(assert (=> bs!588127 m!4559887))

(assert (=> bs!588127 m!4559887))

(declare-fun m!4560613 () Bool)

(assert (=> bs!588127 m!4560613))

(declare-fun m!4560615 () Bool)

(assert (=> bs!588127 m!4560615))

(assert (=> b!3984433 d!1179482))

(declare-fun d!1179484 () Bool)

(assert (=> d!1179484 (= (isEmpty!25470 rules!2999) ((_ is Nil!42610) rules!2999))))

(assert (=> b!3984434 d!1179484))

(declare-fun b!3984915 () Bool)

(declare-fun e!2469801 () Bool)

(declare-fun inv!17 (TokenValue!6964) Bool)

(assert (=> b!3984915 (= e!2469801 (inv!17 (value!212553 token!484)))))

(declare-fun d!1179486 () Bool)

(declare-fun c!690062 () Bool)

(assert (=> d!1179486 (= c!690062 ((_ is IntegerValue!20892) (value!212553 token!484)))))

(declare-fun e!2469800 () Bool)

(assert (=> d!1179486 (= (inv!21 (value!212553 token!484)) e!2469800)))

(declare-fun b!3984916 () Bool)

(assert (=> b!3984916 (= e!2469800 e!2469801)))

(declare-fun c!690063 () Bool)

(assert (=> b!3984916 (= c!690063 ((_ is IntegerValue!20893) (value!212553 token!484)))))

(declare-fun b!3984917 () Bool)

(declare-fun inv!16 (TokenValue!6964) Bool)

(assert (=> b!3984917 (= e!2469800 (inv!16 (value!212553 token!484)))))

(declare-fun b!3984918 () Bool)

(declare-fun e!2469802 () Bool)

(declare-fun inv!15 (TokenValue!6964) Bool)

(assert (=> b!3984918 (= e!2469802 (inv!15 (value!212553 token!484)))))

(declare-fun b!3984919 () Bool)

(declare-fun res!1615901 () Bool)

(assert (=> b!3984919 (=> res!1615901 e!2469802)))

(assert (=> b!3984919 (= res!1615901 (not ((_ is IntegerValue!20894) (value!212553 token!484))))))

(assert (=> b!3984919 (= e!2469801 e!2469802)))

(assert (= (and d!1179486 c!690062) b!3984917))

(assert (= (and d!1179486 (not c!690062)) b!3984916))

(assert (= (and b!3984916 c!690063) b!3984915))

(assert (= (and b!3984916 (not c!690063)) b!3984919))

(assert (= (and b!3984919 (not res!1615901)) b!3984918))

(declare-fun m!4560617 () Bool)

(assert (=> b!3984915 m!4560617))

(declare-fun m!4560619 () Bool)

(assert (=> b!3984917 m!4560619))

(declare-fun m!4560621 () Bool)

(assert (=> b!3984918 m!4560621))

(assert (=> b!3984437 d!1179486))

(declare-fun d!1179488 () Bool)

(declare-fun e!2469805 () Bool)

(assert (=> d!1179488 e!2469805))

(declare-fun res!1615905 () Bool)

(assert (=> d!1179488 (=> res!1615905 e!2469805)))

(declare-fun lt!1401702 () Option!9148)

(assert (=> d!1179488 (= res!1615905 (isEmpty!25472 lt!1401702))))

(declare-fun e!2469806 () Option!9148)

(assert (=> d!1179488 (= lt!1401702 e!2469806)))

(declare-fun c!690064 () Bool)

(declare-fun lt!1401703 () tuple2!41826)

(assert (=> d!1179488 (= c!690064 (isEmpty!25473 (_1!24047 lt!1401703)))))

(assert (=> d!1179488 (= lt!1401703 (findLongestMatch!1238 (regex!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))) lt!1401470))))

(assert (=> d!1179488 (ruleValid!2666 thiss!21717 (rule!9744 (_1!24046 (v!39497 lt!1401497))))))

(assert (=> d!1179488 (= (maxPrefixOneRule!2655 thiss!21717 (rule!9744 (_1!24046 (v!39497 lt!1401497))) lt!1401470) lt!1401702)))

(declare-fun b!3984920 () Bool)

(declare-fun e!2469803 () Bool)

(assert (=> b!3984920 (= e!2469803 (= (size!31870 (_1!24046 (get!14025 lt!1401702))) (size!31871 (originalCharacters!7334 (_1!24046 (get!14025 lt!1401702))))))))

(declare-fun b!3984921 () Bool)

(assert (=> b!3984921 (= e!2469806 None!9147)))

(declare-fun b!3984922 () Bool)

(declare-fun res!1615902 () Bool)

(assert (=> b!3984922 (=> (not res!1615902) (not e!2469803))))

(assert (=> b!3984922 (= res!1615902 (= (rule!9744 (_1!24046 (get!14025 lt!1401702))) (rule!9744 (_1!24046 (v!39497 lt!1401497)))))))

(declare-fun b!3984923 () Bool)

(declare-fun res!1615903 () Bool)

(assert (=> b!3984923 (=> (not res!1615903) (not e!2469803))))

(assert (=> b!3984923 (= res!1615903 (< (size!31871 (_2!24046 (get!14025 lt!1401702))) (size!31871 lt!1401470)))))

(declare-fun b!3984924 () Bool)

(declare-fun res!1615908 () Bool)

(assert (=> b!3984924 (=> (not res!1615908) (not e!2469803))))

(assert (=> b!3984924 (= res!1615908 (= (value!212553 (_1!24046 (get!14025 lt!1401702))) (apply!9945 (transformation!6734 (rule!9744 (_1!24046 (get!14025 lt!1401702)))) (seqFromList!4973 (originalCharacters!7334 (_1!24046 (get!14025 lt!1401702)))))))))

(declare-fun b!3984925 () Bool)

(assert (=> b!3984925 (= e!2469806 (Some!9147 (tuple2!41825 (Token!12607 (apply!9945 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))) (seqFromList!4973 (_1!24047 lt!1401703))) (rule!9744 (_1!24046 (v!39497 lt!1401497))) (size!31872 (seqFromList!4973 (_1!24047 lt!1401703))) (_1!24047 lt!1401703)) (_2!24047 lt!1401703))))))

(declare-fun lt!1401700 () Unit!61288)

(assert (=> b!3984925 (= lt!1401700 (longestMatchIsAcceptedByMatchOrIsEmpty!1298 (regex!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))) lt!1401470))))

(declare-fun res!1615907 () Bool)

(assert (=> b!3984925 (= res!1615907 (isEmpty!25473 (_1!24047 (findLongestMatchInner!1325 (regex!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))) Nil!42608 (size!31871 Nil!42608) lt!1401470 lt!1401470 (size!31871 lt!1401470)))))))

(declare-fun e!2469804 () Bool)

(assert (=> b!3984925 (=> res!1615907 e!2469804)))

(assert (=> b!3984925 e!2469804))

(declare-fun lt!1401701 () Unit!61288)

(assert (=> b!3984925 (= lt!1401701 lt!1401700)))

(declare-fun lt!1401704 () Unit!61288)

(assert (=> b!3984925 (= lt!1401704 (lemmaSemiInverse!1837 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))) (seqFromList!4973 (_1!24047 lt!1401703))))))

(declare-fun b!3984926 () Bool)

(assert (=> b!3984926 (= e!2469804 (matchR!5616 (regex!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))) (_1!24047 (findLongestMatchInner!1325 (regex!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))) Nil!42608 (size!31871 Nil!42608) lt!1401470 lt!1401470 (size!31871 lt!1401470)))))))

(declare-fun b!3984927 () Bool)

(assert (=> b!3984927 (= e!2469805 e!2469803)))

(declare-fun res!1615904 () Bool)

(assert (=> b!3984927 (=> (not res!1615904) (not e!2469803))))

(assert (=> b!3984927 (= res!1615904 (matchR!5616 (regex!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))) (list!15816 (charsOf!4550 (_1!24046 (get!14025 lt!1401702))))))))

(declare-fun b!3984928 () Bool)

(declare-fun res!1615906 () Bool)

(assert (=> b!3984928 (=> (not res!1615906) (not e!2469803))))

(assert (=> b!3984928 (= res!1615906 (= (++!11136 (list!15816 (charsOf!4550 (_1!24046 (get!14025 lt!1401702)))) (_2!24046 (get!14025 lt!1401702))) lt!1401470))))

(assert (= (and d!1179488 c!690064) b!3984921))

(assert (= (and d!1179488 (not c!690064)) b!3984925))

(assert (= (and b!3984925 (not res!1615907)) b!3984926))

(assert (= (and d!1179488 (not res!1615905)) b!3984927))

(assert (= (and b!3984927 res!1615904) b!3984928))

(assert (= (and b!3984928 res!1615906) b!3984923))

(assert (= (and b!3984923 res!1615903) b!3984922))

(assert (= (and b!3984922 res!1615902) b!3984924))

(assert (= (and b!3984924 res!1615908) b!3984920))

(declare-fun m!4560623 () Bool)

(assert (=> b!3984923 m!4560623))

(declare-fun m!4560625 () Bool)

(assert (=> b!3984923 m!4560625))

(declare-fun m!4560627 () Bool)

(assert (=> b!3984923 m!4560627))

(declare-fun m!4560629 () Bool)

(assert (=> d!1179488 m!4560629))

(declare-fun m!4560631 () Bool)

(assert (=> d!1179488 m!4560631))

(declare-fun m!4560633 () Bool)

(assert (=> d!1179488 m!4560633))

(assert (=> d!1179488 m!4559873))

(assert (=> b!3984922 m!4560623))

(assert (=> b!3984920 m!4560623))

(declare-fun m!4560635 () Bool)

(assert (=> b!3984920 m!4560635))

(assert (=> b!3984925 m!4560627))

(declare-fun m!4560637 () Bool)

(assert (=> b!3984925 m!4560637))

(assert (=> b!3984925 m!4560439))

(assert (=> b!3984925 m!4560627))

(declare-fun m!4560639 () Bool)

(assert (=> b!3984925 m!4560639))

(declare-fun m!4560641 () Bool)

(assert (=> b!3984925 m!4560641))

(declare-fun m!4560643 () Bool)

(assert (=> b!3984925 m!4560643))

(assert (=> b!3984925 m!4560641))

(declare-fun m!4560645 () Bool)

(assert (=> b!3984925 m!4560645))

(assert (=> b!3984925 m!4560641))

(assert (=> b!3984925 m!4560439))

(assert (=> b!3984925 m!4560641))

(declare-fun m!4560647 () Bool)

(assert (=> b!3984925 m!4560647))

(declare-fun m!4560649 () Bool)

(assert (=> b!3984925 m!4560649))

(assert (=> b!3984928 m!4560623))

(declare-fun m!4560651 () Bool)

(assert (=> b!3984928 m!4560651))

(assert (=> b!3984928 m!4560651))

(declare-fun m!4560653 () Bool)

(assert (=> b!3984928 m!4560653))

(assert (=> b!3984928 m!4560653))

(declare-fun m!4560655 () Bool)

(assert (=> b!3984928 m!4560655))

(assert (=> b!3984924 m!4560623))

(declare-fun m!4560657 () Bool)

(assert (=> b!3984924 m!4560657))

(assert (=> b!3984924 m!4560657))

(declare-fun m!4560659 () Bool)

(assert (=> b!3984924 m!4560659))

(assert (=> b!3984927 m!4560623))

(assert (=> b!3984927 m!4560651))

(assert (=> b!3984927 m!4560651))

(assert (=> b!3984927 m!4560653))

(assert (=> b!3984927 m!4560653))

(declare-fun m!4560661 () Bool)

(assert (=> b!3984927 m!4560661))

(assert (=> b!3984926 m!4560439))

(assert (=> b!3984926 m!4560627))

(assert (=> b!3984926 m!4560439))

(assert (=> b!3984926 m!4560627))

(assert (=> b!3984926 m!4560639))

(declare-fun m!4560663 () Bool)

(assert (=> b!3984926 m!4560663))

(assert (=> b!3984438 d!1179488))

(declare-fun d!1179490 () Bool)

(declare-fun lt!1401705 () BalanceConc!25484)

(assert (=> d!1179490 (= (list!15816 lt!1401705) (originalCharacters!7334 (_1!24046 (v!39497 lt!1401497))))))

(assert (=> d!1179490 (= lt!1401705 (dynLambda!18116 (toChars!9081 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497))))) (value!212553 (_1!24046 (v!39497 lt!1401497)))))))

(assert (=> d!1179490 (= (charsOf!4550 (_1!24046 (v!39497 lt!1401497))) lt!1401705)))

(declare-fun b_lambda!116387 () Bool)

(assert (=> (not b_lambda!116387) (not d!1179490)))

(declare-fun tb!240045 () Bool)

(declare-fun t!331519 () Bool)

(assert (=> (and b!3984422 (= (toChars!9081 (transformation!6734 (rule!9744 token!484))) (toChars!9081 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))))) t!331519) tb!240045))

(declare-fun b!3984929 () Bool)

(declare-fun e!2469807 () Bool)

(declare-fun tp!1214394 () Bool)

(assert (=> b!3984929 (= e!2469807 (and (inv!56920 (c!689988 (dynLambda!18116 (toChars!9081 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497))))) (value!212553 (_1!24046 (v!39497 lt!1401497)))))) tp!1214394))))

(declare-fun result!290820 () Bool)

(assert (=> tb!240045 (= result!290820 (and (inv!56921 (dynLambda!18116 (toChars!9081 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497))))) (value!212553 (_1!24046 (v!39497 lt!1401497))))) e!2469807))))

(assert (= tb!240045 b!3984929))

(declare-fun m!4560665 () Bool)

(assert (=> b!3984929 m!4560665))

(declare-fun m!4560667 () Bool)

(assert (=> tb!240045 m!4560667))

(assert (=> d!1179490 t!331519))

(declare-fun b_and!306263 () Bool)

(assert (= b_and!306259 (and (=> t!331519 result!290820) b_and!306263)))

(declare-fun t!331521 () Bool)

(declare-fun tb!240047 () Bool)

(assert (=> (and b!3984446 (= (toChars!9081 (transformation!6734 (h!48030 rules!2999))) (toChars!9081 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))))) t!331521) tb!240047))

(declare-fun result!290822 () Bool)

(assert (= result!290822 result!290820))

(assert (=> d!1179490 t!331521))

(declare-fun b_and!306265 () Bool)

(assert (= b_and!306261 (and (=> t!331521 result!290822) b_and!306265)))

(declare-fun m!4560669 () Bool)

(assert (=> d!1179490 m!4560669))

(declare-fun m!4560671 () Bool)

(assert (=> d!1179490 m!4560671))

(assert (=> b!3984438 d!1179490))

(declare-fun d!1179492 () Bool)

(assert (=> d!1179492 (= (size!31870 token!484) (size!31871 (originalCharacters!7334 token!484)))))

(declare-fun Unit!61291 () Unit!61288)

(assert (=> d!1179492 (= (lemmaCharactersSize!1329 token!484) Unit!61291)))

(declare-fun bs!588128 () Bool)

(assert (= bs!588128 d!1179492))

(assert (=> bs!588128 m!4559791))

(assert (=> b!3984438 d!1179492))

(declare-fun d!1179494 () Bool)

(assert (=> d!1179494 (= (seqFromList!4973 lt!1401503) (fromListB!2283 lt!1401503))))

(declare-fun bs!588129 () Bool)

(assert (= bs!588129 d!1179494))

(declare-fun m!4560673 () Bool)

(assert (=> bs!588129 m!4560673))

(assert (=> b!3984438 d!1179494))

(declare-fun b!3984931 () Bool)

(declare-fun e!2469809 () List!42732)

(assert (=> b!3984931 (= e!2469809 (Cons!42608 (h!48028 lt!1401503) (++!11136 (t!331483 lt!1401503) (_2!24046 (v!39497 lt!1401497)))))))

(declare-fun b!3984930 () Bool)

(assert (=> b!3984930 (= e!2469809 (_2!24046 (v!39497 lt!1401497)))))

(declare-fun b!3984933 () Bool)

(declare-fun e!2469808 () Bool)

(declare-fun lt!1401706 () List!42732)

(assert (=> b!3984933 (= e!2469808 (or (not (= (_2!24046 (v!39497 lt!1401497)) Nil!42608)) (= lt!1401706 lt!1401503)))))

(declare-fun d!1179496 () Bool)

(assert (=> d!1179496 e!2469808))

(declare-fun res!1615910 () Bool)

(assert (=> d!1179496 (=> (not res!1615910) (not e!2469808))))

(assert (=> d!1179496 (= res!1615910 (= (content!6460 lt!1401706) ((_ map or) (content!6460 lt!1401503) (content!6460 (_2!24046 (v!39497 lt!1401497))))))))

(assert (=> d!1179496 (= lt!1401706 e!2469809)))

(declare-fun c!690065 () Bool)

(assert (=> d!1179496 (= c!690065 ((_ is Nil!42608) lt!1401503))))

(assert (=> d!1179496 (= (++!11136 lt!1401503 (_2!24046 (v!39497 lt!1401497))) lt!1401706)))

(declare-fun b!3984932 () Bool)

(declare-fun res!1615909 () Bool)

(assert (=> b!3984932 (=> (not res!1615909) (not e!2469808))))

(assert (=> b!3984932 (= res!1615909 (= (size!31871 lt!1401706) (+ (size!31871 lt!1401503) (size!31871 (_2!24046 (v!39497 lt!1401497))))))))

(assert (= (and d!1179496 c!690065) b!3984930))

(assert (= (and d!1179496 (not c!690065)) b!3984931))

(assert (= (and d!1179496 res!1615910) b!3984932))

(assert (= (and b!3984932 res!1615909) b!3984933))

(declare-fun m!4560675 () Bool)

(assert (=> b!3984931 m!4560675))

(declare-fun m!4560677 () Bool)

(assert (=> d!1179496 m!4560677))

(declare-fun m!4560679 () Bool)

(assert (=> d!1179496 m!4560679))

(declare-fun m!4560681 () Bool)

(assert (=> d!1179496 m!4560681))

(declare-fun m!4560683 () Bool)

(assert (=> b!3984932 m!4560683))

(assert (=> b!3984932 m!4559863))

(declare-fun m!4560685 () Bool)

(assert (=> b!3984932 m!4560685))

(assert (=> b!3984438 d!1179496))

(declare-fun d!1179498 () Bool)

(declare-fun res!1615915 () Bool)

(declare-fun e!2469812 () Bool)

(assert (=> d!1179498 (=> (not res!1615915) (not e!2469812))))

(declare-fun validRegex!5282 (Regex!11639) Bool)

(assert (=> d!1179498 (= res!1615915 (validRegex!5282 (regex!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497))))))))

(assert (=> d!1179498 (= (ruleValid!2666 thiss!21717 (rule!9744 (_1!24046 (v!39497 lt!1401497)))) e!2469812)))

(declare-fun b!3984938 () Bool)

(declare-fun res!1615916 () Bool)

(assert (=> b!3984938 (=> (not res!1615916) (not e!2469812))))

(declare-fun nullable!4082 (Regex!11639) Bool)

(assert (=> b!3984938 (= res!1615916 (not (nullable!4082 (regex!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))))))))

(declare-fun b!3984939 () Bool)

(assert (=> b!3984939 (= e!2469812 (not (= (tag!7594 (rule!9744 (_1!24046 (v!39497 lt!1401497)))) (String!48539 ""))))))

(assert (= (and d!1179498 res!1615915) b!3984938))

(assert (= (and b!3984938 res!1615916) b!3984939))

(declare-fun m!4560687 () Bool)

(assert (=> d!1179498 m!4560687))

(declare-fun m!4560689 () Bool)

(assert (=> b!3984938 m!4560689))

(assert (=> b!3984438 d!1179498))

(declare-fun b!3984941 () Bool)

(declare-fun res!1615920 () Bool)

(declare-fun e!2469813 () Bool)

(assert (=> b!3984941 (=> (not res!1615920) (not e!2469813))))

(assert (=> b!3984941 (= res!1615920 (= (head!8483 lt!1401503) (head!8483 lt!1401495)))))

(declare-fun b!3984943 () Bool)

(declare-fun e!2469814 () Bool)

(assert (=> b!3984943 (= e!2469814 (>= (size!31871 lt!1401495) (size!31871 lt!1401503)))))

(declare-fun d!1179500 () Bool)

(assert (=> d!1179500 e!2469814))

(declare-fun res!1615918 () Bool)

(assert (=> d!1179500 (=> res!1615918 e!2469814)))

(declare-fun lt!1401707 () Bool)

(assert (=> d!1179500 (= res!1615918 (not lt!1401707))))

(declare-fun e!2469815 () Bool)

(assert (=> d!1179500 (= lt!1401707 e!2469815)))

(declare-fun res!1615917 () Bool)

(assert (=> d!1179500 (=> res!1615917 e!2469815)))

(assert (=> d!1179500 (= res!1615917 ((_ is Nil!42608) lt!1401503))))

(assert (=> d!1179500 (= (isPrefix!3821 lt!1401503 lt!1401495) lt!1401707)))

(declare-fun b!3984940 () Bool)

(assert (=> b!3984940 (= e!2469815 e!2469813)))

(declare-fun res!1615919 () Bool)

(assert (=> b!3984940 (=> (not res!1615919) (not e!2469813))))

(assert (=> b!3984940 (= res!1615919 (not ((_ is Nil!42608) lt!1401495)))))

(declare-fun b!3984942 () Bool)

(assert (=> b!3984942 (= e!2469813 (isPrefix!3821 (tail!6215 lt!1401503) (tail!6215 lt!1401495)))))

(assert (= (and d!1179500 (not res!1615917)) b!3984940))

(assert (= (and b!3984940 res!1615919) b!3984941))

(assert (= (and b!3984941 res!1615920) b!3984942))

(assert (= (and d!1179500 (not res!1615918)) b!3984943))

(assert (=> b!3984941 m!4560601))

(declare-fun m!4560691 () Bool)

(assert (=> b!3984941 m!4560691))

(declare-fun m!4560693 () Bool)

(assert (=> b!3984943 m!4560693))

(assert (=> b!3984943 m!4559863))

(assert (=> b!3984942 m!4560607))

(declare-fun m!4560695 () Bool)

(assert (=> b!3984942 m!4560695))

(assert (=> b!3984942 m!4560607))

(assert (=> b!3984942 m!4560695))

(declare-fun m!4560697 () Bool)

(assert (=> b!3984942 m!4560697))

(assert (=> b!3984438 d!1179500))

(declare-fun d!1179502 () Bool)

(assert (=> d!1179502 (= (list!15816 (charsOf!4550 (_1!24046 (v!39497 lt!1401497)))) (list!15818 (c!689988 (charsOf!4550 (_1!24046 (v!39497 lt!1401497))))))))

(declare-fun bs!588130 () Bool)

(assert (= bs!588130 d!1179502))

(declare-fun m!4560699 () Bool)

(assert (=> bs!588130 m!4560699))

(assert (=> b!3984438 d!1179502))

(declare-fun d!1179504 () Bool)

(assert (=> d!1179504 (= (size!31870 (_1!24046 (v!39497 lt!1401497))) (size!31871 (originalCharacters!7334 (_1!24046 (v!39497 lt!1401497)))))))

(declare-fun Unit!61295 () Unit!61288)

(assert (=> d!1179504 (= (lemmaCharactersSize!1329 (_1!24046 (v!39497 lt!1401497))) Unit!61295)))

(declare-fun bs!588131 () Bool)

(assert (= bs!588131 d!1179504))

(declare-fun m!4560701 () Bool)

(assert (=> bs!588131 m!4560701))

(assert (=> b!3984438 d!1179504))

(declare-fun d!1179506 () Bool)

(assert (=> d!1179506 (isPrefix!3821 lt!1401503 (++!11136 lt!1401503 newSuffixResult!27))))

(declare-fun lt!1401708 () Unit!61288)

(assert (=> d!1179506 (= lt!1401708 (choose!23922 lt!1401503 newSuffixResult!27))))

(assert (=> d!1179506 (= (lemmaConcatTwoListThenFirstIsPrefix!2664 lt!1401503 newSuffixResult!27) lt!1401708)))

(declare-fun bs!588132 () Bool)

(assert (= bs!588132 d!1179506))

(assert (=> bs!588132 m!4559865))

(assert (=> bs!588132 m!4559865))

(assert (=> bs!588132 m!4559867))

(declare-fun m!4560703 () Bool)

(assert (=> bs!588132 m!4560703))

(assert (=> b!3984438 d!1179506))

(declare-fun d!1179508 () Bool)

(assert (=> d!1179508 (isPrefix!3821 lt!1401503 (++!11136 lt!1401503 (_2!24046 (v!39497 lt!1401497))))))

(declare-fun lt!1401709 () Unit!61288)

(assert (=> d!1179508 (= lt!1401709 (choose!23922 lt!1401503 (_2!24046 (v!39497 lt!1401497))))))

(assert (=> d!1179508 (= (lemmaConcatTwoListThenFirstIsPrefix!2664 lt!1401503 (_2!24046 (v!39497 lt!1401497))) lt!1401709)))

(declare-fun bs!588133 () Bool)

(assert (= bs!588133 d!1179508))

(assert (=> bs!588133 m!4559871))

(assert (=> bs!588133 m!4559871))

(declare-fun m!4560705 () Bool)

(assert (=> bs!588133 m!4560705))

(declare-fun m!4560707 () Bool)

(assert (=> bs!588133 m!4560707))

(assert (=> b!3984438 d!1179508))

(declare-fun d!1179510 () Bool)

(assert (=> d!1179510 (= (maxPrefixOneRule!2655 thiss!21717 (rule!9744 (_1!24046 (v!39497 lt!1401497))) lt!1401470) (Some!9147 (tuple2!41825 (Token!12607 (apply!9945 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))) (seqFromList!4973 lt!1401503)) (rule!9744 (_1!24046 (v!39497 lt!1401497))) (size!31871 lt!1401503) lt!1401503) (_2!24046 (v!39497 lt!1401497)))))))

(declare-fun lt!1401710 () Unit!61288)

(assert (=> d!1179510 (= lt!1401710 (choose!23926 thiss!21717 rules!2999 lt!1401503 lt!1401470 (_2!24046 (v!39497 lt!1401497)) (rule!9744 (_1!24046 (v!39497 lt!1401497)))))))

(assert (=> d!1179510 (not (isEmpty!25470 rules!2999))))

(assert (=> d!1179510 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1477 thiss!21717 rules!2999 lt!1401503 lt!1401470 (_2!24046 (v!39497 lt!1401497)) (rule!9744 (_1!24046 (v!39497 lt!1401497)))) lt!1401710)))

(declare-fun bs!588134 () Bool)

(assert (= bs!588134 d!1179510))

(assert (=> bs!588134 m!4559807))

(assert (=> bs!588134 m!4559879))

(assert (=> bs!588134 m!4559853))

(declare-fun m!4560709 () Bool)

(assert (=> bs!588134 m!4560709))

(assert (=> bs!588134 m!4559863))

(assert (=> bs!588134 m!4559879))

(assert (=> bs!588134 m!4559881))

(assert (=> b!3984438 d!1179510))

(declare-fun d!1179512 () Bool)

(assert (=> d!1179512 (= (apply!9945 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))) (seqFromList!4973 lt!1401503)) (dynLambda!18115 (toValue!9222 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497))))) (seqFromList!4973 lt!1401503)))))

(declare-fun b_lambda!116389 () Bool)

(assert (=> (not b_lambda!116389) (not d!1179512)))

(declare-fun tb!240049 () Bool)

(declare-fun t!331523 () Bool)

(assert (=> (and b!3984422 (= (toValue!9222 (transformation!6734 (rule!9744 token!484))) (toValue!9222 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))))) t!331523) tb!240049))

(declare-fun result!290824 () Bool)

(assert (=> tb!240049 (= result!290824 (inv!21 (dynLambda!18115 (toValue!9222 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497))))) (seqFromList!4973 lt!1401503))))))

(declare-fun m!4560711 () Bool)

(assert (=> tb!240049 m!4560711))

(assert (=> d!1179512 t!331523))

(declare-fun b_and!306267 () Bool)

(assert (= b_and!306235 (and (=> t!331523 result!290824) b_and!306267)))

(declare-fun tb!240051 () Bool)

(declare-fun t!331525 () Bool)

(assert (=> (and b!3984446 (= (toValue!9222 (transformation!6734 (h!48030 rules!2999))) (toValue!9222 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))))) t!331525) tb!240051))

(declare-fun result!290826 () Bool)

(assert (= result!290826 result!290824))

(assert (=> d!1179512 t!331525))

(declare-fun b_and!306269 () Bool)

(assert (= b_and!306237 (and (=> t!331525 result!290826) b_and!306269)))

(assert (=> d!1179512 m!4559879))

(declare-fun m!4560713 () Bool)

(assert (=> d!1179512 m!4560713))

(assert (=> b!3984438 d!1179512))

(declare-fun d!1179514 () Bool)

(declare-fun lt!1401711 () Int)

(assert (=> d!1179514 (>= lt!1401711 0)))

(declare-fun e!2469817 () Int)

(assert (=> d!1179514 (= lt!1401711 e!2469817)))

(declare-fun c!690066 () Bool)

(assert (=> d!1179514 (= c!690066 ((_ is Nil!42608) lt!1401503))))

(assert (=> d!1179514 (= (size!31871 lt!1401503) lt!1401711)))

(declare-fun b!3984944 () Bool)

(assert (=> b!3984944 (= e!2469817 0)))

(declare-fun b!3984945 () Bool)

(assert (=> b!3984945 (= e!2469817 (+ 1 (size!31871 (t!331483 lt!1401503))))))

(assert (= (and d!1179514 c!690066) b!3984944))

(assert (= (and d!1179514 (not c!690066)) b!3984945))

(declare-fun m!4560715 () Bool)

(assert (=> b!3984945 m!4560715))

(assert (=> b!3984438 d!1179514))

(declare-fun d!1179516 () Bool)

(assert (=> d!1179516 (ruleValid!2666 thiss!21717 (rule!9744 (_1!24046 (v!39497 lt!1401497))))))

(declare-fun lt!1401714 () Unit!61288)

(declare-fun choose!23928 (LexerInterface!6323 Rule!13268 List!42734) Unit!61288)

(assert (=> d!1179516 (= lt!1401714 (choose!23928 thiss!21717 (rule!9744 (_1!24046 (v!39497 lt!1401497))) rules!2999))))

(assert (=> d!1179516 (contains!8479 rules!2999 (rule!9744 (_1!24046 (v!39497 lt!1401497))))))

(assert (=> d!1179516 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1740 thiss!21717 (rule!9744 (_1!24046 (v!39497 lt!1401497))) rules!2999) lt!1401714)))

(declare-fun bs!588135 () Bool)

(assert (= bs!588135 d!1179516))

(assert (=> bs!588135 m!4559873))

(declare-fun m!4560717 () Bool)

(assert (=> bs!588135 m!4560717))

(assert (=> bs!588135 m!4559847))

(assert (=> b!3984438 d!1179516))

(declare-fun d!1179518 () Bool)

(declare-fun e!2469820 () Bool)

(assert (=> d!1179518 e!2469820))

(declare-fun res!1615923 () Bool)

(assert (=> d!1179518 (=> (not res!1615923) (not e!2469820))))

(assert (=> d!1179518 (= res!1615923 (semiInverseModEq!2889 (toChars!9081 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497))))) (toValue!9222 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))))))))

(declare-fun Unit!61296 () Unit!61288)

(assert (=> d!1179518 (= (lemmaInv!949 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497))))) Unit!61296)))

(declare-fun b!3984948 () Bool)

(assert (=> b!3984948 (= e!2469820 (equivClasses!2788 (toChars!9081 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497))))) (toValue!9222 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))))))))

(assert (= (and d!1179518 res!1615923) b!3984948))

(declare-fun m!4560719 () Bool)

(assert (=> d!1179518 m!4560719))

(declare-fun m!4560721 () Bool)

(assert (=> b!3984948 m!4560721))

(assert (=> b!3984438 d!1179518))

(declare-fun b!3984950 () Bool)

(declare-fun res!1615927 () Bool)

(declare-fun e!2469821 () Bool)

(assert (=> b!3984950 (=> (not res!1615927) (not e!2469821))))

(assert (=> b!3984950 (= res!1615927 (= (head!8483 lt!1401503) (head!8483 (++!11136 lt!1401503 newSuffixResult!27))))))

(declare-fun b!3984952 () Bool)

(declare-fun e!2469822 () Bool)

(assert (=> b!3984952 (= e!2469822 (>= (size!31871 (++!11136 lt!1401503 newSuffixResult!27)) (size!31871 lt!1401503)))))

(declare-fun d!1179520 () Bool)

(assert (=> d!1179520 e!2469822))

(declare-fun res!1615925 () Bool)

(assert (=> d!1179520 (=> res!1615925 e!2469822)))

(declare-fun lt!1401715 () Bool)

(assert (=> d!1179520 (= res!1615925 (not lt!1401715))))

(declare-fun e!2469823 () Bool)

(assert (=> d!1179520 (= lt!1401715 e!2469823)))

(declare-fun res!1615924 () Bool)

(assert (=> d!1179520 (=> res!1615924 e!2469823)))

(assert (=> d!1179520 (= res!1615924 ((_ is Nil!42608) lt!1401503))))

(assert (=> d!1179520 (= (isPrefix!3821 lt!1401503 (++!11136 lt!1401503 newSuffixResult!27)) lt!1401715)))

(declare-fun b!3984949 () Bool)

(assert (=> b!3984949 (= e!2469823 e!2469821)))

(declare-fun res!1615926 () Bool)

(assert (=> b!3984949 (=> (not res!1615926) (not e!2469821))))

(assert (=> b!3984949 (= res!1615926 (not ((_ is Nil!42608) (++!11136 lt!1401503 newSuffixResult!27))))))

(declare-fun b!3984951 () Bool)

(assert (=> b!3984951 (= e!2469821 (isPrefix!3821 (tail!6215 lt!1401503) (tail!6215 (++!11136 lt!1401503 newSuffixResult!27))))))

(assert (= (and d!1179520 (not res!1615924)) b!3984949))

(assert (= (and b!3984949 res!1615926) b!3984950))

(assert (= (and b!3984950 res!1615927) b!3984951))

(assert (= (and d!1179520 (not res!1615925)) b!3984952))

(assert (=> b!3984950 m!4560601))

(assert (=> b!3984950 m!4559865))

(declare-fun m!4560723 () Bool)

(assert (=> b!3984950 m!4560723))

(assert (=> b!3984952 m!4559865))

(declare-fun m!4560725 () Bool)

(assert (=> b!3984952 m!4560725))

(assert (=> b!3984952 m!4559863))

(assert (=> b!3984951 m!4560607))

(assert (=> b!3984951 m!4559865))

(declare-fun m!4560727 () Bool)

(assert (=> b!3984951 m!4560727))

(assert (=> b!3984951 m!4560607))

(assert (=> b!3984951 m!4560727))

(declare-fun m!4560729 () Bool)

(assert (=> b!3984951 m!4560729))

(assert (=> b!3984438 d!1179520))

(declare-fun b!3984954 () Bool)

(declare-fun e!2469825 () List!42732)

(assert (=> b!3984954 (= e!2469825 (Cons!42608 (h!48028 lt!1401503) (++!11136 (t!331483 lt!1401503) newSuffixResult!27)))))

(declare-fun b!3984953 () Bool)

(assert (=> b!3984953 (= e!2469825 newSuffixResult!27)))

(declare-fun e!2469824 () Bool)

(declare-fun lt!1401716 () List!42732)

(declare-fun b!3984956 () Bool)

(assert (=> b!3984956 (= e!2469824 (or (not (= newSuffixResult!27 Nil!42608)) (= lt!1401716 lt!1401503)))))

(declare-fun d!1179522 () Bool)

(assert (=> d!1179522 e!2469824))

(declare-fun res!1615929 () Bool)

(assert (=> d!1179522 (=> (not res!1615929) (not e!2469824))))

(assert (=> d!1179522 (= res!1615929 (= (content!6460 lt!1401716) ((_ map or) (content!6460 lt!1401503) (content!6460 newSuffixResult!27))))))

(assert (=> d!1179522 (= lt!1401716 e!2469825)))

(declare-fun c!690067 () Bool)

(assert (=> d!1179522 (= c!690067 ((_ is Nil!42608) lt!1401503))))

(assert (=> d!1179522 (= (++!11136 lt!1401503 newSuffixResult!27) lt!1401716)))

(declare-fun b!3984955 () Bool)

(declare-fun res!1615928 () Bool)

(assert (=> b!3984955 (=> (not res!1615928) (not e!2469824))))

(assert (=> b!3984955 (= res!1615928 (= (size!31871 lt!1401716) (+ (size!31871 lt!1401503) (size!31871 newSuffixResult!27))))))

(assert (= (and d!1179522 c!690067) b!3984953))

(assert (= (and d!1179522 (not c!690067)) b!3984954))

(assert (= (and d!1179522 res!1615929) b!3984955))

(assert (= (and b!3984955 res!1615928) b!3984956))

(declare-fun m!4560731 () Bool)

(assert (=> b!3984954 m!4560731))

(declare-fun m!4560733 () Bool)

(assert (=> d!1179522 m!4560733))

(assert (=> d!1179522 m!4560679))

(declare-fun m!4560735 () Bool)

(assert (=> d!1179522 m!4560735))

(declare-fun m!4560737 () Bool)

(assert (=> b!3984955 m!4560737))

(assert (=> b!3984955 m!4559863))

(declare-fun m!4560739 () Bool)

(assert (=> b!3984955 m!4560739))

(assert (=> b!3984438 d!1179522))

(declare-fun d!1179524 () Bool)

(declare-fun lt!1401717 () Int)

(assert (=> d!1179524 (>= lt!1401717 0)))

(declare-fun e!2469826 () Int)

(assert (=> d!1179524 (= lt!1401717 e!2469826)))

(declare-fun c!690068 () Bool)

(assert (=> d!1179524 (= c!690068 ((_ is Nil!42608) lt!1401508))))

(assert (=> d!1179524 (= (size!31871 lt!1401508) lt!1401717)))

(declare-fun b!3984957 () Bool)

(assert (=> b!3984957 (= e!2469826 0)))

(declare-fun b!3984958 () Bool)

(assert (=> b!3984958 (= e!2469826 (+ 1 (size!31871 (t!331483 lt!1401508))))))

(assert (= (and d!1179524 c!690068) b!3984957))

(assert (= (and d!1179524 (not c!690068)) b!3984958))

(declare-fun m!4560741 () Bool)

(assert (=> b!3984958 m!4560741))

(assert (=> b!3984436 d!1179524))

(declare-fun bm!285759 () Bool)

(declare-fun call!285764 () Option!9148)

(assert (=> bm!285759 (= call!285764 (maxPrefixOneRule!2655 thiss!21717 (h!48030 rules!2999) lt!1401470))))

(declare-fun b!3984977 () Bool)

(declare-fun e!2469834 () Option!9148)

(declare-fun lt!1401732 () Option!9148)

(declare-fun lt!1401728 () Option!9148)

(assert (=> b!3984977 (= e!2469834 (ite (and ((_ is None!9147) lt!1401732) ((_ is None!9147) lt!1401728)) None!9147 (ite ((_ is None!9147) lt!1401728) lt!1401732 (ite ((_ is None!9147) lt!1401732) lt!1401728 (ite (>= (size!31870 (_1!24046 (v!39497 lt!1401732))) (size!31870 (_1!24046 (v!39497 lt!1401728)))) lt!1401732 lt!1401728)))))))

(assert (=> b!3984977 (= lt!1401732 call!285764)))

(assert (=> b!3984977 (= lt!1401728 (maxPrefix!3621 thiss!21717 (t!331485 rules!2999) lt!1401470))))

(declare-fun b!3984978 () Bool)

(declare-fun e!2469833 () Bool)

(declare-fun e!2469835 () Bool)

(assert (=> b!3984978 (= e!2469833 e!2469835)))

(declare-fun res!1615947 () Bool)

(assert (=> b!3984978 (=> (not res!1615947) (not e!2469835))))

(declare-fun lt!1401730 () Option!9148)

(declare-fun isDefined!7034 (Option!9148) Bool)

(assert (=> b!3984978 (= res!1615947 (isDefined!7034 lt!1401730))))

(declare-fun b!3984979 () Bool)

(declare-fun res!1615948 () Bool)

(assert (=> b!3984979 (=> (not res!1615948) (not e!2469835))))

(assert (=> b!3984979 (= res!1615948 (= (value!212553 (_1!24046 (get!14025 lt!1401730))) (apply!9945 (transformation!6734 (rule!9744 (_1!24046 (get!14025 lt!1401730)))) (seqFromList!4973 (originalCharacters!7334 (_1!24046 (get!14025 lt!1401730)))))))))

(declare-fun b!3984980 () Bool)

(declare-fun res!1615945 () Bool)

(assert (=> b!3984980 (=> (not res!1615945) (not e!2469835))))

(assert (=> b!3984980 (= res!1615945 (= (list!15816 (charsOf!4550 (_1!24046 (get!14025 lt!1401730)))) (originalCharacters!7334 (_1!24046 (get!14025 lt!1401730)))))))

(declare-fun b!3984981 () Bool)

(assert (=> b!3984981 (= e!2469834 call!285764)))

(declare-fun d!1179526 () Bool)

(assert (=> d!1179526 e!2469833))

(declare-fun res!1615950 () Bool)

(assert (=> d!1179526 (=> res!1615950 e!2469833)))

(assert (=> d!1179526 (= res!1615950 (isEmpty!25472 lt!1401730))))

(assert (=> d!1179526 (= lt!1401730 e!2469834)))

(declare-fun c!690071 () Bool)

(assert (=> d!1179526 (= c!690071 (and ((_ is Cons!42610) rules!2999) ((_ is Nil!42610) (t!331485 rules!2999))))))

(declare-fun lt!1401729 () Unit!61288)

(declare-fun lt!1401731 () Unit!61288)

(assert (=> d!1179526 (= lt!1401729 lt!1401731)))

(assert (=> d!1179526 (isPrefix!3821 lt!1401470 lt!1401470)))

(assert (=> d!1179526 (= lt!1401731 (lemmaIsPrefixRefl!2413 lt!1401470 lt!1401470))))

(declare-fun rulesValidInductive!2447 (LexerInterface!6323 List!42734) Bool)

(assert (=> d!1179526 (rulesValidInductive!2447 thiss!21717 rules!2999)))

(assert (=> d!1179526 (= (maxPrefix!3621 thiss!21717 rules!2999 lt!1401470) lt!1401730)))

(declare-fun b!3984982 () Bool)

(declare-fun res!1615949 () Bool)

(assert (=> b!3984982 (=> (not res!1615949) (not e!2469835))))

(assert (=> b!3984982 (= res!1615949 (matchR!5616 (regex!6734 (rule!9744 (_1!24046 (get!14025 lt!1401730)))) (list!15816 (charsOf!4550 (_1!24046 (get!14025 lt!1401730))))))))

(declare-fun b!3984983 () Bool)

(declare-fun res!1615946 () Bool)

(assert (=> b!3984983 (=> (not res!1615946) (not e!2469835))))

(assert (=> b!3984983 (= res!1615946 (= (++!11136 (list!15816 (charsOf!4550 (_1!24046 (get!14025 lt!1401730)))) (_2!24046 (get!14025 lt!1401730))) lt!1401470))))

(declare-fun b!3984984 () Bool)

(declare-fun res!1615944 () Bool)

(assert (=> b!3984984 (=> (not res!1615944) (not e!2469835))))

(assert (=> b!3984984 (= res!1615944 (< (size!31871 (_2!24046 (get!14025 lt!1401730))) (size!31871 lt!1401470)))))

(declare-fun b!3984985 () Bool)

(assert (=> b!3984985 (= e!2469835 (contains!8479 rules!2999 (rule!9744 (_1!24046 (get!14025 lt!1401730)))))))

(assert (= (and d!1179526 c!690071) b!3984981))

(assert (= (and d!1179526 (not c!690071)) b!3984977))

(assert (= (or b!3984981 b!3984977) bm!285759))

(assert (= (and d!1179526 (not res!1615950)) b!3984978))

(assert (= (and b!3984978 res!1615947) b!3984980))

(assert (= (and b!3984980 res!1615945) b!3984984))

(assert (= (and b!3984984 res!1615944) b!3984983))

(assert (= (and b!3984983 res!1615946) b!3984979))

(assert (= (and b!3984979 res!1615948) b!3984982))

(assert (= (and b!3984982 res!1615949) b!3984985))

(declare-fun m!4560743 () Bool)

(assert (=> b!3984982 m!4560743))

(declare-fun m!4560745 () Bool)

(assert (=> b!3984982 m!4560745))

(assert (=> b!3984982 m!4560745))

(declare-fun m!4560747 () Bool)

(assert (=> b!3984982 m!4560747))

(assert (=> b!3984982 m!4560747))

(declare-fun m!4560749 () Bool)

(assert (=> b!3984982 m!4560749))

(assert (=> b!3984984 m!4560743))

(declare-fun m!4560751 () Bool)

(assert (=> b!3984984 m!4560751))

(assert (=> b!3984984 m!4560627))

(declare-fun m!4560753 () Bool)

(assert (=> d!1179526 m!4560753))

(declare-fun m!4560755 () Bool)

(assert (=> d!1179526 m!4560755))

(declare-fun m!4560757 () Bool)

(assert (=> d!1179526 m!4560757))

(declare-fun m!4560759 () Bool)

(assert (=> d!1179526 m!4560759))

(assert (=> b!3984983 m!4560743))

(assert (=> b!3984983 m!4560745))

(assert (=> b!3984983 m!4560745))

(assert (=> b!3984983 m!4560747))

(assert (=> b!3984983 m!4560747))

(declare-fun m!4560761 () Bool)

(assert (=> b!3984983 m!4560761))

(declare-fun m!4560763 () Bool)

(assert (=> b!3984977 m!4560763))

(assert (=> b!3984979 m!4560743))

(declare-fun m!4560765 () Bool)

(assert (=> b!3984979 m!4560765))

(assert (=> b!3984979 m!4560765))

(declare-fun m!4560767 () Bool)

(assert (=> b!3984979 m!4560767))

(assert (=> b!3984980 m!4560743))

(assert (=> b!3984980 m!4560745))

(assert (=> b!3984980 m!4560745))

(assert (=> b!3984980 m!4560747))

(declare-fun m!4560769 () Bool)

(assert (=> b!3984978 m!4560769))

(declare-fun m!4560771 () Bool)

(assert (=> bm!285759 m!4560771))

(assert (=> b!3984985 m!4560743))

(declare-fun m!4560773 () Bool)

(assert (=> b!3984985 m!4560773))

(assert (=> b!3984429 d!1179526))

(declare-fun d!1179528 () Bool)

(assert (=> d!1179528 (= suffixResult!105 lt!1401473)))

(declare-fun lt!1401733 () Unit!61288)

(assert (=> d!1179528 (= lt!1401733 (choose!23925 lt!1401507 suffixResult!105 lt!1401507 lt!1401473 lt!1401508))))

(assert (=> d!1179528 (isPrefix!3821 lt!1401507 lt!1401508)))

(assert (=> d!1179528 (= (lemmaSamePrefixThenSameSuffix!2008 lt!1401507 suffixResult!105 lt!1401507 lt!1401473 lt!1401508) lt!1401733)))

(declare-fun bs!588136 () Bool)

(assert (= bs!588136 d!1179528))

(declare-fun m!4560775 () Bool)

(assert (=> bs!588136 m!4560775))

(assert (=> bs!588136 m!4559827))

(assert (=> b!3984429 d!1179528))

(declare-fun b!3984987 () Bool)

(declare-fun res!1615954 () Bool)

(declare-fun e!2469836 () Bool)

(assert (=> b!3984987 (=> (not res!1615954) (not e!2469836))))

(assert (=> b!3984987 (= res!1615954 (= (head!8483 lt!1401507) (head!8483 lt!1401492)))))

(declare-fun b!3984989 () Bool)

(declare-fun e!2469837 () Bool)

(assert (=> b!3984989 (= e!2469837 (>= (size!31871 lt!1401492) (size!31871 lt!1401507)))))

(declare-fun d!1179530 () Bool)

(assert (=> d!1179530 e!2469837))

(declare-fun res!1615952 () Bool)

(assert (=> d!1179530 (=> res!1615952 e!2469837)))

(declare-fun lt!1401734 () Bool)

(assert (=> d!1179530 (= res!1615952 (not lt!1401734))))

(declare-fun e!2469838 () Bool)

(assert (=> d!1179530 (= lt!1401734 e!2469838)))

(declare-fun res!1615951 () Bool)

(assert (=> d!1179530 (=> res!1615951 e!2469838)))

(assert (=> d!1179530 (= res!1615951 ((_ is Nil!42608) lt!1401507))))

(assert (=> d!1179530 (= (isPrefix!3821 lt!1401507 lt!1401492) lt!1401734)))

(declare-fun b!3984986 () Bool)

(assert (=> b!3984986 (= e!2469838 e!2469836)))

(declare-fun res!1615953 () Bool)

(assert (=> b!3984986 (=> (not res!1615953) (not e!2469836))))

(assert (=> b!3984986 (= res!1615953 (not ((_ is Nil!42608) lt!1401492)))))

(declare-fun b!3984988 () Bool)

(assert (=> b!3984988 (= e!2469836 (isPrefix!3821 (tail!6215 lt!1401507) (tail!6215 lt!1401492)))))

(assert (= (and d!1179530 (not res!1615951)) b!3984986))

(assert (= (and b!3984986 res!1615953) b!3984987))

(assert (= (and b!3984987 res!1615954) b!3984988))

(assert (= (and d!1179530 (not res!1615952)) b!3984989))

(assert (=> b!3984987 m!4560125))

(declare-fun m!4560777 () Bool)

(assert (=> b!3984987 m!4560777))

(declare-fun m!4560779 () Bool)

(assert (=> b!3984989 m!4560779))

(assert (=> b!3984989 m!4559899))

(assert (=> b!3984988 m!4560135))

(declare-fun m!4560781 () Bool)

(assert (=> b!3984988 m!4560781))

(assert (=> b!3984988 m!4560135))

(assert (=> b!3984988 m!4560781))

(declare-fun m!4560783 () Bool)

(assert (=> b!3984988 m!4560783))

(assert (=> b!3984429 d!1179530))

(declare-fun d!1179532 () Bool)

(assert (=> d!1179532 (isPrefix!3821 lt!1401507 (++!11136 lt!1401507 lt!1401473))))

(declare-fun lt!1401735 () Unit!61288)

(assert (=> d!1179532 (= lt!1401735 (choose!23922 lt!1401507 lt!1401473))))

(assert (=> d!1179532 (= (lemmaConcatTwoListThenFirstIsPrefix!2664 lt!1401507 lt!1401473) lt!1401735)))

(declare-fun bs!588137 () Bool)

(assert (= bs!588137 d!1179532))

(assert (=> bs!588137 m!4559839))

(assert (=> bs!588137 m!4559839))

(declare-fun m!4560785 () Bool)

(assert (=> bs!588137 m!4560785))

(declare-fun m!4560787 () Bool)

(assert (=> bs!588137 m!4560787))

(assert (=> b!3984429 d!1179532))

(declare-fun b!3984991 () Bool)

(declare-fun res!1615958 () Bool)

(declare-fun e!2469839 () Bool)

(assert (=> b!3984991 (=> (not res!1615958) (not e!2469839))))

(assert (=> b!3984991 (= res!1615958 (= (head!8483 lt!1401503) (head!8483 lt!1401470)))))

(declare-fun b!3984993 () Bool)

(declare-fun e!2469840 () Bool)

(assert (=> b!3984993 (= e!2469840 (>= (size!31871 lt!1401470) (size!31871 lt!1401503)))))

(declare-fun d!1179534 () Bool)

(assert (=> d!1179534 e!2469840))

(declare-fun res!1615956 () Bool)

(assert (=> d!1179534 (=> res!1615956 e!2469840)))

(declare-fun lt!1401736 () Bool)

(assert (=> d!1179534 (= res!1615956 (not lt!1401736))))

(declare-fun e!2469841 () Bool)

(assert (=> d!1179534 (= lt!1401736 e!2469841)))

(declare-fun res!1615955 () Bool)

(assert (=> d!1179534 (=> res!1615955 e!2469841)))

(assert (=> d!1179534 (= res!1615955 ((_ is Nil!42608) lt!1401503))))

(assert (=> d!1179534 (= (isPrefix!3821 lt!1401503 lt!1401470) lt!1401736)))

(declare-fun b!3984990 () Bool)

(assert (=> b!3984990 (= e!2469841 e!2469839)))

(declare-fun res!1615957 () Bool)

(assert (=> b!3984990 (=> (not res!1615957) (not e!2469839))))

(assert (=> b!3984990 (= res!1615957 (not ((_ is Nil!42608) lt!1401470)))))

(declare-fun b!3984992 () Bool)

(assert (=> b!3984992 (= e!2469839 (isPrefix!3821 (tail!6215 lt!1401503) (tail!6215 lt!1401470)))))

(assert (= (and d!1179534 (not res!1615955)) b!3984990))

(assert (= (and b!3984990 res!1615957) b!3984991))

(assert (= (and b!3984991 res!1615958) b!3984992))

(assert (= (and d!1179534 (not res!1615956)) b!3984993))

(assert (=> b!3984991 m!4560601))

(declare-fun m!4560789 () Bool)

(assert (=> b!3984991 m!4560789))

(assert (=> b!3984993 m!4560627))

(assert (=> b!3984993 m!4559863))

(assert (=> b!3984992 m!4560607))

(declare-fun m!4560791 () Bool)

(assert (=> b!3984992 m!4560791))

(assert (=> b!3984992 m!4560607))

(assert (=> b!3984992 m!4560791))

(declare-fun m!4560793 () Bool)

(assert (=> b!3984992 m!4560793))

(assert (=> b!3984430 d!1179534))

(declare-fun b!3984995 () Bool)

(declare-fun e!2469843 () List!42732)

(assert (=> b!3984995 (= e!2469843 (Cons!42608 (h!48028 lt!1401507) (++!11136 (t!331483 lt!1401507) suffixResult!105)))))

(declare-fun b!3984994 () Bool)

(assert (=> b!3984994 (= e!2469843 suffixResult!105)))

(declare-fun e!2469842 () Bool)

(declare-fun b!3984997 () Bool)

(declare-fun lt!1401737 () List!42732)

(assert (=> b!3984997 (= e!2469842 (or (not (= suffixResult!105 Nil!42608)) (= lt!1401737 lt!1401507)))))

(declare-fun d!1179536 () Bool)

(assert (=> d!1179536 e!2469842))

(declare-fun res!1615960 () Bool)

(assert (=> d!1179536 (=> (not res!1615960) (not e!2469842))))

(assert (=> d!1179536 (= res!1615960 (= (content!6460 lt!1401737) ((_ map or) (content!6460 lt!1401507) (content!6460 suffixResult!105))))))

(assert (=> d!1179536 (= lt!1401737 e!2469843)))

(declare-fun c!690072 () Bool)

(assert (=> d!1179536 (= c!690072 ((_ is Nil!42608) lt!1401507))))

(assert (=> d!1179536 (= (++!11136 lt!1401507 suffixResult!105) lt!1401737)))

(declare-fun b!3984996 () Bool)

(declare-fun res!1615959 () Bool)

(assert (=> b!3984996 (=> (not res!1615959) (not e!2469842))))

(assert (=> b!3984996 (= res!1615959 (= (size!31871 lt!1401737) (+ (size!31871 lt!1401507) (size!31871 suffixResult!105))))))

(assert (= (and d!1179536 c!690072) b!3984994))

(assert (= (and d!1179536 (not c!690072)) b!3984995))

(assert (= (and d!1179536 res!1615960) b!3984996))

(assert (= (and b!3984996 res!1615959) b!3984997))

(declare-fun m!4560795 () Bool)

(assert (=> b!3984995 m!4560795))

(declare-fun m!4560797 () Bool)

(assert (=> d!1179536 m!4560797))

(assert (=> d!1179536 m!4560565))

(declare-fun m!4560799 () Bool)

(assert (=> d!1179536 m!4560799))

(declare-fun m!4560801 () Bool)

(assert (=> b!3984996 m!4560801))

(assert (=> b!3984996 m!4559899))

(declare-fun m!4560803 () Bool)

(assert (=> b!3984996 m!4560803))

(assert (=> b!3984428 d!1179536))

(declare-fun d!1179538 () Bool)

(declare-fun e!2469844 () Bool)

(assert (=> d!1179538 e!2469844))

(declare-fun res!1615961 () Bool)

(assert (=> d!1179538 (=> (not res!1615961) (not e!2469844))))

(assert (=> d!1179538 (= res!1615961 (semiInverseModEq!2889 (toChars!9081 (transformation!6734 (rule!9744 token!484))) (toValue!9222 (transformation!6734 (rule!9744 token!484)))))))

(declare-fun Unit!61297 () Unit!61288)

(assert (=> d!1179538 (= (lemmaInv!949 (transformation!6734 (rule!9744 token!484))) Unit!61297)))

(declare-fun b!3984998 () Bool)

(assert (=> b!3984998 (= e!2469844 (equivClasses!2788 (toChars!9081 (transformation!6734 (rule!9744 token!484))) (toValue!9222 (transformation!6734 (rule!9744 token!484)))))))

(assert (= (and d!1179538 res!1615961) b!3984998))

(assert (=> d!1179538 m!4560557))

(assert (=> b!3984998 m!4560559))

(assert (=> b!3984428 d!1179538))

(declare-fun d!1179540 () Bool)

(declare-fun res!1615962 () Bool)

(declare-fun e!2469845 () Bool)

(assert (=> d!1179540 (=> (not res!1615962) (not e!2469845))))

(assert (=> d!1179540 (= res!1615962 (validRegex!5282 (regex!6734 (rule!9744 token!484))))))

(assert (=> d!1179540 (= (ruleValid!2666 thiss!21717 (rule!9744 token!484)) e!2469845)))

(declare-fun b!3984999 () Bool)

(declare-fun res!1615963 () Bool)

(assert (=> b!3984999 (=> (not res!1615963) (not e!2469845))))

(assert (=> b!3984999 (= res!1615963 (not (nullable!4082 (regex!6734 (rule!9744 token!484)))))))

(declare-fun b!3985000 () Bool)

(assert (=> b!3985000 (= e!2469845 (not (= (tag!7594 (rule!9744 token!484)) (String!48539 ""))))))

(assert (= (and d!1179540 res!1615962) b!3984999))

(assert (= (and b!3984999 res!1615963) b!3985000))

(declare-fun m!4560805 () Bool)

(assert (=> d!1179540 m!4560805))

(declare-fun m!4560807 () Bool)

(assert (=> b!3984999 m!4560807))

(assert (=> b!3984428 d!1179540))

(declare-fun d!1179542 () Bool)

(assert (=> d!1179542 (ruleValid!2666 thiss!21717 (rule!9744 token!484))))

(declare-fun lt!1401738 () Unit!61288)

(assert (=> d!1179542 (= lt!1401738 (choose!23928 thiss!21717 (rule!9744 token!484) rules!2999))))

(assert (=> d!1179542 (contains!8479 rules!2999 (rule!9744 token!484))))

(assert (=> d!1179542 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1740 thiss!21717 (rule!9744 token!484) rules!2999) lt!1401738)))

(declare-fun bs!588138 () Bool)

(assert (= bs!588138 d!1179542))

(assert (=> bs!588138 m!4559797))

(declare-fun m!4560809 () Bool)

(assert (=> bs!588138 m!4560809))

(assert (=> bs!588138 m!4559801))

(assert (=> b!3984428 d!1179542))

(declare-fun d!1179544 () Bool)

(declare-fun lt!1401739 () Int)

(assert (=> d!1179544 (>= lt!1401739 0)))

(declare-fun e!2469846 () Int)

(assert (=> d!1179544 (= lt!1401739 e!2469846)))

(declare-fun c!690073 () Bool)

(assert (=> d!1179544 (= c!690073 ((_ is Nil!42608) (originalCharacters!7334 token!484)))))

(assert (=> d!1179544 (= (size!31871 (originalCharacters!7334 token!484)) lt!1401739)))

(declare-fun b!3985001 () Bool)

(assert (=> b!3985001 (= e!2469846 0)))

(declare-fun b!3985002 () Bool)

(assert (=> b!3985002 (= e!2469846 (+ 1 (size!31871 (t!331483 (originalCharacters!7334 token!484)))))))

(assert (= (and d!1179544 c!690073) b!3985001))

(assert (= (and d!1179544 (not c!690073)) b!3985002))

(declare-fun m!4560811 () Bool)

(assert (=> b!3985002 m!4560811))

(assert (=> b!3984407 d!1179544))

(declare-fun b!3985004 () Bool)

(declare-fun res!1615967 () Bool)

(declare-fun e!2469847 () Bool)

(assert (=> b!3985004 (=> (not res!1615967) (not e!2469847))))

(assert (=> b!3985004 (= res!1615967 (= (head!8483 lt!1401507) (head!8483 lt!1401484)))))

(declare-fun b!3985006 () Bool)

(declare-fun e!2469848 () Bool)

(assert (=> b!3985006 (= e!2469848 (>= (size!31871 lt!1401484) (size!31871 lt!1401507)))))

(declare-fun d!1179546 () Bool)

(assert (=> d!1179546 e!2469848))

(declare-fun res!1615965 () Bool)

(assert (=> d!1179546 (=> res!1615965 e!2469848)))

(declare-fun lt!1401740 () Bool)

(assert (=> d!1179546 (= res!1615965 (not lt!1401740))))

(declare-fun e!2469849 () Bool)

(assert (=> d!1179546 (= lt!1401740 e!2469849)))

(declare-fun res!1615964 () Bool)

(assert (=> d!1179546 (=> res!1615964 e!2469849)))

(assert (=> d!1179546 (= res!1615964 ((_ is Nil!42608) lt!1401507))))

(assert (=> d!1179546 (= (isPrefix!3821 lt!1401507 lt!1401484) lt!1401740)))

(declare-fun b!3985003 () Bool)

(assert (=> b!3985003 (= e!2469849 e!2469847)))

(declare-fun res!1615966 () Bool)

(assert (=> b!3985003 (=> (not res!1615966) (not e!2469847))))

(assert (=> b!3985003 (= res!1615966 (not ((_ is Nil!42608) lt!1401484)))))

(declare-fun b!3985005 () Bool)

(assert (=> b!3985005 (= e!2469847 (isPrefix!3821 (tail!6215 lt!1401507) (tail!6215 lt!1401484)))))

(assert (= (and d!1179546 (not res!1615964)) b!3985003))

(assert (= (and b!3985003 res!1615966) b!3985004))

(assert (= (and b!3985004 res!1615967) b!3985005))

(assert (= (and d!1179546 (not res!1615965)) b!3985006))

(assert (=> b!3985004 m!4560125))

(declare-fun m!4560813 () Bool)

(assert (=> b!3985004 m!4560813))

(declare-fun m!4560815 () Bool)

(assert (=> b!3985006 m!4560815))

(assert (=> b!3985006 m!4559899))

(assert (=> b!3985005 m!4560135))

(declare-fun m!4560817 () Bool)

(assert (=> b!3985005 m!4560817))

(assert (=> b!3985005 m!4560135))

(assert (=> b!3985005 m!4560817))

(declare-fun m!4560819 () Bool)

(assert (=> b!3985005 m!4560819))

(assert (=> b!3984409 d!1179546))

(declare-fun b!3985008 () Bool)

(declare-fun res!1615971 () Bool)

(declare-fun e!2469850 () Bool)

(assert (=> b!3985008 (=> (not res!1615971) (not e!2469850))))

(assert (=> b!3985008 (= res!1615971 (= (head!8483 prefix!494) (head!8483 lt!1401508)))))

(declare-fun b!3985010 () Bool)

(declare-fun e!2469851 () Bool)

(assert (=> b!3985010 (= e!2469851 (>= (size!31871 lt!1401508) (size!31871 prefix!494)))))

(declare-fun d!1179548 () Bool)

(assert (=> d!1179548 e!2469851))

(declare-fun res!1615969 () Bool)

(assert (=> d!1179548 (=> res!1615969 e!2469851)))

(declare-fun lt!1401741 () Bool)

(assert (=> d!1179548 (= res!1615969 (not lt!1401741))))

(declare-fun e!2469852 () Bool)

(assert (=> d!1179548 (= lt!1401741 e!2469852)))

(declare-fun res!1615968 () Bool)

(assert (=> d!1179548 (=> res!1615968 e!2469852)))

(assert (=> d!1179548 (= res!1615968 ((_ is Nil!42608) prefix!494))))

(assert (=> d!1179548 (= (isPrefix!3821 prefix!494 lt!1401508) lt!1401741)))

(declare-fun b!3985007 () Bool)

(assert (=> b!3985007 (= e!2469852 e!2469850)))

(declare-fun res!1615970 () Bool)

(assert (=> b!3985007 (=> (not res!1615970) (not e!2469850))))

(assert (=> b!3985007 (= res!1615970 (not ((_ is Nil!42608) lt!1401508)))))

(declare-fun b!3985009 () Bool)

(assert (=> b!3985009 (= e!2469850 (isPrefix!3821 (tail!6215 prefix!494) (tail!6215 lt!1401508)))))

(assert (= (and d!1179548 (not res!1615968)) b!3985007))

(assert (= (and b!3985007 res!1615970) b!3985008))

(assert (= (and b!3985008 res!1615971) b!3985009))

(assert (= (and d!1179548 (not res!1615969)) b!3985010))

(assert (=> b!3985008 m!4560579))

(declare-fun m!4560821 () Bool)

(assert (=> b!3985008 m!4560821))

(assert (=> b!3985010 m!4559735))

(assert (=> b!3985010 m!4559901))

(assert (=> b!3985009 m!4560575))

(declare-fun m!4560823 () Bool)

(assert (=> b!3985009 m!4560823))

(assert (=> b!3985009 m!4560575))

(assert (=> b!3985009 m!4560823))

(declare-fun m!4560825 () Bool)

(assert (=> b!3985009 m!4560825))

(assert (=> b!3984409 d!1179548))

(declare-fun d!1179550 () Bool)

(assert (=> d!1179550 (isPrefix!3821 lt!1401507 (++!11136 lt!1401507 suffixResult!105))))

(declare-fun lt!1401742 () Unit!61288)

(assert (=> d!1179550 (= lt!1401742 (choose!23922 lt!1401507 suffixResult!105))))

(assert (=> d!1179550 (= (lemmaConcatTwoListThenFirstIsPrefix!2664 lt!1401507 suffixResult!105) lt!1401742)))

(declare-fun bs!588139 () Bool)

(assert (= bs!588139 d!1179550))

(assert (=> bs!588139 m!4559793))

(assert (=> bs!588139 m!4559793))

(declare-fun m!4560827 () Bool)

(assert (=> bs!588139 m!4560827))

(declare-fun m!4560829 () Bool)

(assert (=> bs!588139 m!4560829))

(assert (=> b!3984409 d!1179550))

(declare-fun b!3985012 () Bool)

(declare-fun res!1615975 () Bool)

(declare-fun e!2469853 () Bool)

(assert (=> b!3985012 (=> (not res!1615975) (not e!2469853))))

(assert (=> b!3985012 (= res!1615975 (= (head!8483 lt!1401507) (head!8483 lt!1401508)))))

(declare-fun b!3985014 () Bool)

(declare-fun e!2469854 () Bool)

(assert (=> b!3985014 (= e!2469854 (>= (size!31871 lt!1401508) (size!31871 lt!1401507)))))

(declare-fun d!1179552 () Bool)

(assert (=> d!1179552 e!2469854))

(declare-fun res!1615973 () Bool)

(assert (=> d!1179552 (=> res!1615973 e!2469854)))

(declare-fun lt!1401743 () Bool)

(assert (=> d!1179552 (= res!1615973 (not lt!1401743))))

(declare-fun e!2469855 () Bool)

(assert (=> d!1179552 (= lt!1401743 e!2469855)))

(declare-fun res!1615972 () Bool)

(assert (=> d!1179552 (=> res!1615972 e!2469855)))

(assert (=> d!1179552 (= res!1615972 ((_ is Nil!42608) lt!1401507))))

(assert (=> d!1179552 (= (isPrefix!3821 lt!1401507 lt!1401508) lt!1401743)))

(declare-fun b!3985011 () Bool)

(assert (=> b!3985011 (= e!2469855 e!2469853)))

(declare-fun res!1615974 () Bool)

(assert (=> b!3985011 (=> (not res!1615974) (not e!2469853))))

(assert (=> b!3985011 (= res!1615974 (not ((_ is Nil!42608) lt!1401508)))))

(declare-fun b!3985013 () Bool)

(assert (=> b!3985013 (= e!2469853 (isPrefix!3821 (tail!6215 lt!1401507) (tail!6215 lt!1401508)))))

(assert (= (and d!1179552 (not res!1615972)) b!3985011))

(assert (= (and b!3985011 res!1615974) b!3985012))

(assert (= (and b!3985012 res!1615975) b!3985013))

(assert (= (and d!1179552 (not res!1615973)) b!3985014))

(assert (=> b!3985012 m!4560125))

(assert (=> b!3985012 m!4560821))

(assert (=> b!3985014 m!4559735))

(assert (=> b!3985014 m!4559899))

(assert (=> b!3985013 m!4560135))

(assert (=> b!3985013 m!4560823))

(assert (=> b!3985013 m!4560135))

(assert (=> b!3985013 m!4560823))

(declare-fun m!4560831 () Bool)

(assert (=> b!3985013 m!4560831))

(assert (=> b!3984409 d!1179552))

(declare-fun d!1179554 () Bool)

(assert (=> d!1179554 (isPrefix!3821 prefix!494 (++!11136 prefix!494 suffix!1299))))

(declare-fun lt!1401744 () Unit!61288)

(assert (=> d!1179554 (= lt!1401744 (choose!23922 prefix!494 suffix!1299))))

(assert (=> d!1179554 (= (lemmaConcatTwoListThenFirstIsPrefix!2664 prefix!494 suffix!1299) lt!1401744)))

(declare-fun bs!588140 () Bool)

(assert (= bs!588140 d!1179554))

(assert (=> bs!588140 m!4559893))

(assert (=> bs!588140 m!4559893))

(declare-fun m!4560833 () Bool)

(assert (=> bs!588140 m!4560833))

(declare-fun m!4560835 () Bool)

(assert (=> bs!588140 m!4560835))

(assert (=> b!3984409 d!1179554))

(declare-fun d!1179556 () Bool)

(assert (=> d!1179556 (= (inv!56913 (tag!7594 (h!48030 rules!2999))) (= (mod (str.len (value!212552 (tag!7594 (h!48030 rules!2999)))) 2) 0))))

(assert (=> b!3984410 d!1179556))

(declare-fun d!1179558 () Bool)

(declare-fun res!1615976 () Bool)

(declare-fun e!2469856 () Bool)

(assert (=> d!1179558 (=> (not res!1615976) (not e!2469856))))

(assert (=> d!1179558 (= res!1615976 (semiInverseModEq!2889 (toChars!9081 (transformation!6734 (h!48030 rules!2999))) (toValue!9222 (transformation!6734 (h!48030 rules!2999)))))))

(assert (=> d!1179558 (= (inv!56916 (transformation!6734 (h!48030 rules!2999))) e!2469856)))

(declare-fun b!3985015 () Bool)

(assert (=> b!3985015 (= e!2469856 (equivClasses!2788 (toChars!9081 (transformation!6734 (h!48030 rules!2999))) (toValue!9222 (transformation!6734 (h!48030 rules!2999)))))))

(assert (= (and d!1179558 res!1615976) b!3985015))

(declare-fun m!4560837 () Bool)

(assert (=> d!1179558 m!4560837))

(declare-fun m!4560839 () Bool)

(assert (=> b!3985015 m!4560839))

(assert (=> b!3984410 d!1179558))

(declare-fun d!1179560 () Bool)

(declare-fun lt!1401745 () Int)

(assert (=> d!1179560 (>= lt!1401745 0)))

(declare-fun e!2469857 () Int)

(assert (=> d!1179560 (= lt!1401745 e!2469857)))

(declare-fun c!690074 () Bool)

(assert (=> d!1179560 (= c!690074 ((_ is Nil!42608) suffix!1299))))

(assert (=> d!1179560 (= (size!31871 suffix!1299) lt!1401745)))

(declare-fun b!3985016 () Bool)

(assert (=> b!3985016 (= e!2469857 0)))

(declare-fun b!3985017 () Bool)

(assert (=> b!3985017 (= e!2469857 (+ 1 (size!31871 (t!331483 suffix!1299))))))

(assert (= (and d!1179560 c!690074) b!3985016))

(assert (= (and d!1179560 (not c!690074)) b!3985017))

(declare-fun m!4560841 () Bool)

(assert (=> b!3985017 m!4560841))

(assert (=> b!3984431 d!1179560))

(declare-fun d!1179562 () Bool)

(declare-fun lt!1401746 () Int)

(assert (=> d!1179562 (>= lt!1401746 0)))

(declare-fun e!2469858 () Int)

(assert (=> d!1179562 (= lt!1401746 e!2469858)))

(declare-fun c!690075 () Bool)

(assert (=> d!1179562 (= c!690075 ((_ is Nil!42608) newSuffix!27))))

(assert (=> d!1179562 (= (size!31871 newSuffix!27) lt!1401746)))

(declare-fun b!3985018 () Bool)

(assert (=> b!3985018 (= e!2469858 0)))

(declare-fun b!3985019 () Bool)

(assert (=> b!3985019 (= e!2469858 (+ 1 (size!31871 (t!331483 newSuffix!27))))))

(assert (= (and d!1179562 c!690075) b!3985018))

(assert (= (and d!1179562 (not c!690075)) b!3985019))

(declare-fun m!4560843 () Bool)

(assert (=> b!3985019 m!4560843))

(assert (=> b!3984431 d!1179562))

(declare-fun d!1179564 () Bool)

(declare-fun e!2469878 () Bool)

(assert (=> d!1179564 e!2469878))

(declare-fun c!690083 () Bool)

(assert (=> d!1179564 (= c!690083 ((_ is EmptyExpr!11639) (regex!6734 (rule!9744 token!484))))))

(declare-fun lt!1401749 () Bool)

(declare-fun e!2469875 () Bool)

(assert (=> d!1179564 (= lt!1401749 e!2469875)))

(declare-fun c!690084 () Bool)

(assert (=> d!1179564 (= c!690084 (isEmpty!25473 lt!1401507))))

(assert (=> d!1179564 (validRegex!5282 (regex!6734 (rule!9744 token!484)))))

(assert (=> d!1179564 (= (matchR!5616 (regex!6734 (rule!9744 token!484)) lt!1401507) lt!1401749)))

(declare-fun b!3985048 () Bool)

(declare-fun res!1615997 () Bool)

(declare-fun e!2469879 () Bool)

(assert (=> b!3985048 (=> (not res!1615997) (not e!2469879))))

(declare-fun call!285767 () Bool)

(assert (=> b!3985048 (= res!1615997 (not call!285767))))

(declare-fun b!3985049 () Bool)

(assert (=> b!3985049 (= e!2469875 (nullable!4082 (regex!6734 (rule!9744 token!484))))))

(declare-fun b!3985050 () Bool)

(declare-fun e!2469874 () Bool)

(declare-fun e!2469877 () Bool)

(assert (=> b!3985050 (= e!2469874 e!2469877)))

(declare-fun res!1615996 () Bool)

(assert (=> b!3985050 (=> res!1615996 e!2469877)))

(assert (=> b!3985050 (= res!1615996 call!285767)))

(declare-fun b!3985051 () Bool)

(declare-fun res!1616000 () Bool)

(declare-fun e!2469873 () Bool)

(assert (=> b!3985051 (=> res!1616000 e!2469873)))

(assert (=> b!3985051 (= res!1616000 (not ((_ is ElementMatch!11639) (regex!6734 (rule!9744 token!484)))))))

(declare-fun e!2469876 () Bool)

(assert (=> b!3985051 (= e!2469876 e!2469873)))

(declare-fun bm!285762 () Bool)

(assert (=> bm!285762 (= call!285767 (isEmpty!25473 lt!1401507))))

(declare-fun b!3985052 () Bool)

(assert (=> b!3985052 (= e!2469873 e!2469874)))

(declare-fun res!1615995 () Bool)

(assert (=> b!3985052 (=> (not res!1615995) (not e!2469874))))

(assert (=> b!3985052 (= res!1615995 (not lt!1401749))))

(declare-fun b!3985053 () Bool)

(assert (=> b!3985053 (= e!2469877 (not (= (head!8483 lt!1401507) (c!689989 (regex!6734 (rule!9744 token!484))))))))

(declare-fun b!3985054 () Bool)

(assert (=> b!3985054 (= e!2469876 (not lt!1401749))))

(declare-fun b!3985055 () Bool)

(assert (=> b!3985055 (= e!2469879 (= (head!8483 lt!1401507) (c!689989 (regex!6734 (rule!9744 token!484)))))))

(declare-fun b!3985056 () Bool)

(declare-fun res!1615999 () Bool)

(assert (=> b!3985056 (=> res!1615999 e!2469873)))

(assert (=> b!3985056 (= res!1615999 e!2469879)))

(declare-fun res!1615994 () Bool)

(assert (=> b!3985056 (=> (not res!1615994) (not e!2469879))))

(assert (=> b!3985056 (= res!1615994 lt!1401749)))

(declare-fun b!3985057 () Bool)

(declare-fun res!1615993 () Bool)

(assert (=> b!3985057 (=> res!1615993 e!2469877)))

(assert (=> b!3985057 (= res!1615993 (not (isEmpty!25473 (tail!6215 lt!1401507))))))

(declare-fun b!3985058 () Bool)

(assert (=> b!3985058 (= e!2469878 (= lt!1401749 call!285767))))

(declare-fun b!3985059 () Bool)

(declare-fun res!1615998 () Bool)

(assert (=> b!3985059 (=> (not res!1615998) (not e!2469879))))

(assert (=> b!3985059 (= res!1615998 (isEmpty!25473 (tail!6215 lt!1401507)))))

(declare-fun b!3985060 () Bool)

(declare-fun derivativeStep!3493 (Regex!11639 C!23464) Regex!11639)

(assert (=> b!3985060 (= e!2469875 (matchR!5616 (derivativeStep!3493 (regex!6734 (rule!9744 token!484)) (head!8483 lt!1401507)) (tail!6215 lt!1401507)))))

(declare-fun b!3985061 () Bool)

(assert (=> b!3985061 (= e!2469878 e!2469876)))

(declare-fun c!690082 () Bool)

(assert (=> b!3985061 (= c!690082 ((_ is EmptyLang!11639) (regex!6734 (rule!9744 token!484))))))

(assert (= (and d!1179564 c!690084) b!3985049))

(assert (= (and d!1179564 (not c!690084)) b!3985060))

(assert (= (and d!1179564 c!690083) b!3985058))

(assert (= (and d!1179564 (not c!690083)) b!3985061))

(assert (= (and b!3985061 c!690082) b!3985054))

(assert (= (and b!3985061 (not c!690082)) b!3985051))

(assert (= (and b!3985051 (not res!1616000)) b!3985056))

(assert (= (and b!3985056 res!1615994) b!3985048))

(assert (= (and b!3985048 res!1615997) b!3985059))

(assert (= (and b!3985059 res!1615998) b!3985055))

(assert (= (and b!3985056 (not res!1615999)) b!3985052))

(assert (= (and b!3985052 res!1615995) b!3985050))

(assert (= (and b!3985050 (not res!1615996)) b!3985057))

(assert (= (and b!3985057 (not res!1615993)) b!3985053))

(assert (= (or b!3985058 b!3985048 b!3985050) bm!285762))

(assert (=> b!3985053 m!4560125))

(assert (=> b!3985060 m!4560125))

(assert (=> b!3985060 m!4560125))

(declare-fun m!4560845 () Bool)

(assert (=> b!3985060 m!4560845))

(assert (=> b!3985060 m!4560135))

(assert (=> b!3985060 m!4560845))

(assert (=> b!3985060 m!4560135))

(declare-fun m!4560847 () Bool)

(assert (=> b!3985060 m!4560847))

(declare-fun m!4560849 () Bool)

(assert (=> d!1179564 m!4560849))

(assert (=> d!1179564 m!4560805))

(assert (=> b!3985049 m!4560807))

(assert (=> b!3985055 m!4560125))

(assert (=> bm!285762 m!4560849))

(assert (=> b!3985059 m!4560135))

(assert (=> b!3985059 m!4560135))

(declare-fun m!4560851 () Bool)

(assert (=> b!3985059 m!4560851))

(assert (=> b!3985057 m!4560135))

(assert (=> b!3985057 m!4560135))

(assert (=> b!3985057 m!4560851))

(assert (=> b!3984424 d!1179564))

(declare-fun b!3985063 () Bool)

(declare-fun res!1616004 () Bool)

(declare-fun e!2469880 () Bool)

(assert (=> b!3985063 (=> (not res!1616004) (not e!2469880))))

(assert (=> b!3985063 (= res!1616004 (= (head!8483 lt!1401507) (head!8483 lt!1401470)))))

(declare-fun b!3985065 () Bool)

(declare-fun e!2469881 () Bool)

(assert (=> b!3985065 (= e!2469881 (>= (size!31871 lt!1401470) (size!31871 lt!1401507)))))

(declare-fun d!1179566 () Bool)

(assert (=> d!1179566 e!2469881))

(declare-fun res!1616002 () Bool)

(assert (=> d!1179566 (=> res!1616002 e!2469881)))

(declare-fun lt!1401750 () Bool)

(assert (=> d!1179566 (= res!1616002 (not lt!1401750))))

(declare-fun e!2469882 () Bool)

(assert (=> d!1179566 (= lt!1401750 e!2469882)))

(declare-fun res!1616001 () Bool)

(assert (=> d!1179566 (=> res!1616001 e!2469882)))

(assert (=> d!1179566 (= res!1616001 ((_ is Nil!42608) lt!1401507))))

(assert (=> d!1179566 (= (isPrefix!3821 lt!1401507 lt!1401470) lt!1401750)))

(declare-fun b!3985062 () Bool)

(assert (=> b!3985062 (= e!2469882 e!2469880)))

(declare-fun res!1616003 () Bool)

(assert (=> b!3985062 (=> (not res!1616003) (not e!2469880))))

(assert (=> b!3985062 (= res!1616003 (not ((_ is Nil!42608) lt!1401470)))))

(declare-fun b!3985064 () Bool)

(assert (=> b!3985064 (= e!2469880 (isPrefix!3821 (tail!6215 lt!1401507) (tail!6215 lt!1401470)))))

(assert (= (and d!1179566 (not res!1616001)) b!3985062))

(assert (= (and b!3985062 res!1616003) b!3985063))

(assert (= (and b!3985063 res!1616004) b!3985064))

(assert (= (and d!1179566 (not res!1616002)) b!3985065))

(assert (=> b!3985063 m!4560125))

(assert (=> b!3985063 m!4560789))

(assert (=> b!3985065 m!4560627))

(assert (=> b!3985065 m!4559899))

(assert (=> b!3985064 m!4560135))

(assert (=> b!3985064 m!4560791))

(assert (=> b!3985064 m!4560135))

(assert (=> b!3985064 m!4560791))

(declare-fun m!4560853 () Bool)

(assert (=> b!3985064 m!4560853))

(assert (=> b!3984424 d!1179566))

(declare-fun d!1179568 () Bool)

(assert (=> d!1179568 (isPrefix!3821 lt!1401507 (++!11136 prefix!494 newSuffix!27))))

(declare-fun lt!1401753 () Unit!61288)

(declare-fun choose!23930 (List!42732 List!42732 List!42732) Unit!61288)

(assert (=> d!1179568 (= lt!1401753 (choose!23930 lt!1401507 prefix!494 newSuffix!27))))

(assert (=> d!1179568 (isPrefix!3821 lt!1401507 prefix!494)))

(assert (=> d!1179568 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!654 lt!1401507 prefix!494 newSuffix!27) lt!1401753)))

(declare-fun bs!588141 () Bool)

(assert (= bs!588141 d!1179568))

(assert (=> bs!588141 m!4559829))

(assert (=> bs!588141 m!4559829))

(declare-fun m!4560855 () Bool)

(assert (=> bs!588141 m!4560855))

(declare-fun m!4560857 () Bool)

(assert (=> bs!588141 m!4560857))

(assert (=> bs!588141 m!4559775))

(assert (=> b!3984424 d!1179568))

(declare-fun d!1179570 () Bool)

(assert (=> d!1179570 (isPrefix!3821 lt!1401507 (++!11136 prefix!494 suffix!1299))))

(declare-fun lt!1401754 () Unit!61288)

(assert (=> d!1179570 (= lt!1401754 (choose!23930 lt!1401507 prefix!494 suffix!1299))))

(assert (=> d!1179570 (isPrefix!3821 lt!1401507 prefix!494)))

(assert (=> d!1179570 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!654 lt!1401507 prefix!494 suffix!1299) lt!1401754)))

(declare-fun bs!588142 () Bool)

(assert (= bs!588142 d!1179570))

(assert (=> bs!588142 m!4559893))

(assert (=> bs!588142 m!4559893))

(declare-fun m!4560859 () Bool)

(assert (=> bs!588142 m!4560859))

(declare-fun m!4560861 () Bool)

(assert (=> bs!588142 m!4560861))

(assert (=> bs!588142 m!4559775))

(assert (=> b!3984424 d!1179570))

(declare-fun b!3985067 () Bool)

(declare-fun e!2469884 () List!42732)

(assert (=> b!3985067 (= e!2469884 (Cons!42608 (h!48028 lt!1401507) (++!11136 (t!331483 lt!1401507) lt!1401486)))))

(declare-fun b!3985066 () Bool)

(assert (=> b!3985066 (= e!2469884 lt!1401486)))

(declare-fun e!2469883 () Bool)

(declare-fun lt!1401755 () List!42732)

(declare-fun b!3985069 () Bool)

(assert (=> b!3985069 (= e!2469883 (or (not (= lt!1401486 Nil!42608)) (= lt!1401755 lt!1401507)))))

(declare-fun d!1179572 () Bool)

(assert (=> d!1179572 e!2469883))

(declare-fun res!1616006 () Bool)

(assert (=> d!1179572 (=> (not res!1616006) (not e!2469883))))

(assert (=> d!1179572 (= res!1616006 (= (content!6460 lt!1401755) ((_ map or) (content!6460 lt!1401507) (content!6460 lt!1401486))))))

(assert (=> d!1179572 (= lt!1401755 e!2469884)))

(declare-fun c!690085 () Bool)

(assert (=> d!1179572 (= c!690085 ((_ is Nil!42608) lt!1401507))))

(assert (=> d!1179572 (= (++!11136 lt!1401507 lt!1401486) lt!1401755)))

(declare-fun b!3985068 () Bool)

(declare-fun res!1616005 () Bool)

(assert (=> b!3985068 (=> (not res!1616005) (not e!2469883))))

(assert (=> b!3985068 (= res!1616005 (= (size!31871 lt!1401755) (+ (size!31871 lt!1401507) (size!31871 lt!1401486))))))

(assert (= (and d!1179572 c!690085) b!3985066))

(assert (= (and d!1179572 (not c!690085)) b!3985067))

(assert (= (and d!1179572 res!1616006) b!3985068))

(assert (= (and b!3985068 res!1616005) b!3985069))

(declare-fun m!4560863 () Bool)

(assert (=> b!3985067 m!4560863))

(declare-fun m!4560865 () Bool)

(assert (=> d!1179572 m!4560865))

(assert (=> d!1179572 m!4560565))

(declare-fun m!4560867 () Bool)

(assert (=> d!1179572 m!4560867))

(declare-fun m!4560869 () Bool)

(assert (=> b!3985068 m!4560869))

(assert (=> b!3985068 m!4559899))

(declare-fun m!4560871 () Bool)

(assert (=> b!3985068 m!4560871))

(assert (=> b!3984445 d!1179572))

(declare-fun b!3985071 () Bool)

(declare-fun e!2469886 () List!42732)

(assert (=> b!3985071 (= e!2469886 (Cons!42608 (h!48028 lt!1401502) (++!11136 (t!331483 lt!1401502) suffix!1299)))))

(declare-fun b!3985070 () Bool)

(assert (=> b!3985070 (= e!2469886 suffix!1299)))

(declare-fun e!2469885 () Bool)

(declare-fun b!3985073 () Bool)

(declare-fun lt!1401756 () List!42732)

(assert (=> b!3985073 (= e!2469885 (or (not (= suffix!1299 Nil!42608)) (= lt!1401756 lt!1401502)))))

(declare-fun d!1179574 () Bool)

(assert (=> d!1179574 e!2469885))

(declare-fun res!1616008 () Bool)

(assert (=> d!1179574 (=> (not res!1616008) (not e!2469885))))

(assert (=> d!1179574 (= res!1616008 (= (content!6460 lt!1401756) ((_ map or) (content!6460 lt!1401502) (content!6460 suffix!1299))))))

(assert (=> d!1179574 (= lt!1401756 e!2469886)))

(declare-fun c!690086 () Bool)

(assert (=> d!1179574 (= c!690086 ((_ is Nil!42608) lt!1401502))))

(assert (=> d!1179574 (= (++!11136 lt!1401502 suffix!1299) lt!1401756)))

(declare-fun b!3985072 () Bool)

(declare-fun res!1616007 () Bool)

(assert (=> b!3985072 (=> (not res!1616007) (not e!2469885))))

(assert (=> b!3985072 (= res!1616007 (= (size!31871 lt!1401756) (+ (size!31871 lt!1401502) (size!31871 suffix!1299))))))

(assert (= (and d!1179574 c!690086) b!3985070))

(assert (= (and d!1179574 (not c!690086)) b!3985071))

(assert (= (and d!1179574 res!1616008) b!3985072))

(assert (= (and b!3985072 res!1616007) b!3985073))

(declare-fun m!4560873 () Bool)

(assert (=> b!3985071 m!4560873))

(declare-fun m!4560875 () Bool)

(assert (=> d!1179574 m!4560875))

(declare-fun m!4560877 () Bool)

(assert (=> d!1179574 m!4560877))

(declare-fun m!4560879 () Bool)

(assert (=> d!1179574 m!4560879))

(declare-fun m!4560881 () Bool)

(assert (=> b!3985072 m!4560881))

(declare-fun m!4560883 () Bool)

(assert (=> b!3985072 m!4560883))

(assert (=> b!3985072 m!4559779))

(assert (=> b!3984445 d!1179574))

(declare-fun b!3985075 () Bool)

(declare-fun e!2469888 () List!42732)

(assert (=> b!3985075 (= e!2469888 (Cons!42608 (h!48028 lt!1401467) (++!11136 (t!331483 lt!1401467) suffix!1299)))))

(declare-fun b!3985074 () Bool)

(assert (=> b!3985074 (= e!2469888 suffix!1299)))

(declare-fun b!3985077 () Bool)

(declare-fun lt!1401757 () List!42732)

(declare-fun e!2469887 () Bool)

(assert (=> b!3985077 (= e!2469887 (or (not (= suffix!1299 Nil!42608)) (= lt!1401757 lt!1401467)))))

(declare-fun d!1179576 () Bool)

(assert (=> d!1179576 e!2469887))

(declare-fun res!1616010 () Bool)

(assert (=> d!1179576 (=> (not res!1616010) (not e!2469887))))

(assert (=> d!1179576 (= res!1616010 (= (content!6460 lt!1401757) ((_ map or) (content!6460 lt!1401467) (content!6460 suffix!1299))))))

(assert (=> d!1179576 (= lt!1401757 e!2469888)))

(declare-fun c!690087 () Bool)

(assert (=> d!1179576 (= c!690087 ((_ is Nil!42608) lt!1401467))))

(assert (=> d!1179576 (= (++!11136 lt!1401467 suffix!1299) lt!1401757)))

(declare-fun b!3985076 () Bool)

(declare-fun res!1616009 () Bool)

(assert (=> b!3985076 (=> (not res!1616009) (not e!2469887))))

(assert (=> b!3985076 (= res!1616009 (= (size!31871 lt!1401757) (+ (size!31871 lt!1401467) (size!31871 suffix!1299))))))

(assert (= (and d!1179576 c!690087) b!3985074))

(assert (= (and d!1179576 (not c!690087)) b!3985075))

(assert (= (and d!1179576 res!1616010) b!3985076))

(assert (= (and b!3985076 res!1616009) b!3985077))

(declare-fun m!4560885 () Bool)

(assert (=> b!3985075 m!4560885))

(declare-fun m!4560887 () Bool)

(assert (=> d!1179576 m!4560887))

(assert (=> d!1179576 m!4560567))

(assert (=> d!1179576 m!4560879))

(declare-fun m!4560889 () Bool)

(assert (=> b!3985076 m!4560889))

(assert (=> b!3985076 m!4560571))

(assert (=> b!3985076 m!4559779))

(assert (=> b!3984445 d!1179576))

(declare-fun d!1179578 () Bool)

(assert (=> d!1179578 (= (++!11136 (++!11136 lt!1401507 lt!1401467) suffix!1299) (++!11136 lt!1401507 (++!11136 lt!1401467 suffix!1299)))))

(declare-fun lt!1401760 () Unit!61288)

(declare-fun choose!23931 (List!42732 List!42732 List!42732) Unit!61288)

(assert (=> d!1179578 (= lt!1401760 (choose!23931 lt!1401507 lt!1401467 suffix!1299))))

(assert (=> d!1179578 (= (lemmaConcatAssociativity!2456 lt!1401507 lt!1401467 suffix!1299) lt!1401760)))

(declare-fun bs!588143 () Bool)

(assert (= bs!588143 d!1179578))

(assert (=> bs!588143 m!4559913))

(assert (=> bs!588143 m!4559771))

(assert (=> bs!588143 m!4559913))

(declare-fun m!4560891 () Bool)

(assert (=> bs!588143 m!4560891))

(assert (=> bs!588143 m!4559771))

(declare-fun m!4560893 () Bool)

(assert (=> bs!588143 m!4560893))

(declare-fun m!4560895 () Bool)

(assert (=> bs!588143 m!4560895))

(assert (=> b!3984445 d!1179578))

(declare-fun d!1179580 () Bool)

(declare-fun res!1616015 () Bool)

(declare-fun e!2469891 () Bool)

(assert (=> d!1179580 (=> (not res!1616015) (not e!2469891))))

(assert (=> d!1179580 (= res!1616015 (not (isEmpty!25473 (originalCharacters!7334 token!484))))))

(assert (=> d!1179580 (= (inv!56917 token!484) e!2469891)))

(declare-fun b!3985082 () Bool)

(declare-fun res!1616016 () Bool)

(assert (=> b!3985082 (=> (not res!1616016) (not e!2469891))))

(assert (=> b!3985082 (= res!1616016 (= (originalCharacters!7334 token!484) (list!15816 (dynLambda!18116 (toChars!9081 (transformation!6734 (rule!9744 token!484))) (value!212553 token!484)))))))

(declare-fun b!3985083 () Bool)

(assert (=> b!3985083 (= e!2469891 (= (size!31870 token!484) (size!31871 (originalCharacters!7334 token!484))))))

(assert (= (and d!1179580 res!1616015) b!3985082))

(assert (= (and b!3985082 res!1616016) b!3985083))

(declare-fun b_lambda!116391 () Bool)

(assert (=> (not b_lambda!116391) (not b!3985082)))

(assert (=> b!3985082 t!331515))

(declare-fun b_and!306271 () Bool)

(assert (= b_and!306263 (and (=> t!331515 result!290814) b_and!306271)))

(assert (=> b!3985082 t!331517))

(declare-fun b_and!306273 () Bool)

(assert (= b_and!306265 (and (=> t!331517 result!290818) b_and!306273)))

(declare-fun m!4560897 () Bool)

(assert (=> d!1179580 m!4560897))

(assert (=> b!3985082 m!4560597))

(assert (=> b!3985082 m!4560597))

(declare-fun m!4560899 () Bool)

(assert (=> b!3985082 m!4560899))

(assert (=> b!3985083 m!4559791))

(assert (=> start!374984 d!1179580))

(declare-fun b!3985085 () Bool)

(declare-fun e!2469893 () List!42732)

(assert (=> b!3985085 (= e!2469893 (Cons!42608 (h!48028 lt!1401507) (++!11136 (t!331483 lt!1401507) lt!1401473)))))

(declare-fun b!3985084 () Bool)

(assert (=> b!3985084 (= e!2469893 lt!1401473)))

(declare-fun lt!1401761 () List!42732)

(declare-fun b!3985087 () Bool)

(declare-fun e!2469892 () Bool)

(assert (=> b!3985087 (= e!2469892 (or (not (= lt!1401473 Nil!42608)) (= lt!1401761 lt!1401507)))))

(declare-fun d!1179582 () Bool)

(assert (=> d!1179582 e!2469892))

(declare-fun res!1616018 () Bool)

(assert (=> d!1179582 (=> (not res!1616018) (not e!2469892))))

(assert (=> d!1179582 (= res!1616018 (= (content!6460 lt!1401761) ((_ map or) (content!6460 lt!1401507) (content!6460 lt!1401473))))))

(assert (=> d!1179582 (= lt!1401761 e!2469893)))

(declare-fun c!690088 () Bool)

(assert (=> d!1179582 (= c!690088 ((_ is Nil!42608) lt!1401507))))

(assert (=> d!1179582 (= (++!11136 lt!1401507 lt!1401473) lt!1401761)))

(declare-fun b!3985086 () Bool)

(declare-fun res!1616017 () Bool)

(assert (=> b!3985086 (=> (not res!1616017) (not e!2469892))))

(assert (=> b!3985086 (= res!1616017 (= (size!31871 lt!1401761) (+ (size!31871 lt!1401507) (size!31871 lt!1401473))))))

(assert (= (and d!1179582 c!690088) b!3985084))

(assert (= (and d!1179582 (not c!690088)) b!3985085))

(assert (= (and d!1179582 res!1616018) b!3985086))

(assert (= (and b!3985086 res!1616017) b!3985087))

(declare-fun m!4560901 () Bool)

(assert (=> b!3985085 m!4560901))

(declare-fun m!4560903 () Bool)

(assert (=> d!1179582 m!4560903))

(assert (=> d!1179582 m!4560565))

(declare-fun m!4560905 () Bool)

(assert (=> d!1179582 m!4560905))

(declare-fun m!4560907 () Bool)

(assert (=> b!3985086 m!4560907))

(assert (=> b!3985086 m!4559899))

(declare-fun m!4560909 () Bool)

(assert (=> b!3985086 m!4560909))

(assert (=> b!3984423 d!1179582))

(declare-fun d!1179584 () Bool)

(declare-fun lt!1401762 () List!42732)

(assert (=> d!1179584 (= (++!11136 lt!1401507 lt!1401762) lt!1401508)))

(declare-fun e!2469894 () List!42732)

(assert (=> d!1179584 (= lt!1401762 e!2469894)))

(declare-fun c!690089 () Bool)

(assert (=> d!1179584 (= c!690089 ((_ is Cons!42608) lt!1401507))))

(assert (=> d!1179584 (>= (size!31871 lt!1401508) (size!31871 lt!1401507))))

(assert (=> d!1179584 (= (getSuffix!2252 lt!1401508 lt!1401507) lt!1401762)))

(declare-fun b!3985088 () Bool)

(assert (=> b!3985088 (= e!2469894 (getSuffix!2252 (tail!6215 lt!1401508) (t!331483 lt!1401507)))))

(declare-fun b!3985089 () Bool)

(assert (=> b!3985089 (= e!2469894 lt!1401508)))

(assert (= (and d!1179584 c!690089) b!3985088))

(assert (= (and d!1179584 (not c!690089)) b!3985089))

(declare-fun m!4560911 () Bool)

(assert (=> d!1179584 m!4560911))

(assert (=> d!1179584 m!4559735))

(assert (=> d!1179584 m!4559899))

(assert (=> b!3985088 m!4560823))

(assert (=> b!3985088 m!4560823))

(declare-fun m!4560913 () Bool)

(assert (=> b!3985088 m!4560913))

(assert (=> b!3984423 d!1179584))

(declare-fun b!3985091 () Bool)

(declare-fun res!1616022 () Bool)

(declare-fun e!2469895 () Bool)

(assert (=> b!3985091 (=> (not res!1616022) (not e!2469895))))

(assert (=> b!3985091 (= res!1616022 (= (head!8483 lt!1401508) (head!8483 lt!1401508)))))

(declare-fun b!3985093 () Bool)

(declare-fun e!2469896 () Bool)

(assert (=> b!3985093 (= e!2469896 (>= (size!31871 lt!1401508) (size!31871 lt!1401508)))))

(declare-fun d!1179586 () Bool)

(assert (=> d!1179586 e!2469896))

(declare-fun res!1616020 () Bool)

(assert (=> d!1179586 (=> res!1616020 e!2469896)))

(declare-fun lt!1401763 () Bool)

(assert (=> d!1179586 (= res!1616020 (not lt!1401763))))

(declare-fun e!2469897 () Bool)

(assert (=> d!1179586 (= lt!1401763 e!2469897)))

(declare-fun res!1616019 () Bool)

(assert (=> d!1179586 (=> res!1616019 e!2469897)))

(assert (=> d!1179586 (= res!1616019 ((_ is Nil!42608) lt!1401508))))

(assert (=> d!1179586 (= (isPrefix!3821 lt!1401508 lt!1401508) lt!1401763)))

(declare-fun b!3985090 () Bool)

(assert (=> b!3985090 (= e!2469897 e!2469895)))

(declare-fun res!1616021 () Bool)

(assert (=> b!3985090 (=> (not res!1616021) (not e!2469895))))

(assert (=> b!3985090 (= res!1616021 (not ((_ is Nil!42608) lt!1401508)))))

(declare-fun b!3985092 () Bool)

(assert (=> b!3985092 (= e!2469895 (isPrefix!3821 (tail!6215 lt!1401508) (tail!6215 lt!1401508)))))

(assert (= (and d!1179586 (not res!1616019)) b!3985090))

(assert (= (and b!3985090 res!1616021) b!3985091))

(assert (= (and b!3985091 res!1616022) b!3985092))

(assert (= (and d!1179586 (not res!1616020)) b!3985093))

(assert (=> b!3985091 m!4560821))

(assert (=> b!3985091 m!4560821))

(assert (=> b!3985093 m!4559735))

(assert (=> b!3985093 m!4559735))

(assert (=> b!3985092 m!4560823))

(assert (=> b!3985092 m!4560823))

(assert (=> b!3985092 m!4560823))

(assert (=> b!3985092 m!4560823))

(declare-fun m!4560915 () Bool)

(assert (=> b!3985092 m!4560915))

(assert (=> b!3984423 d!1179586))

(declare-fun d!1179588 () Bool)

(assert (=> d!1179588 (isPrefix!3821 lt!1401508 lt!1401508)))

(declare-fun lt!1401766 () Unit!61288)

(declare-fun choose!23932 (List!42732 List!42732) Unit!61288)

(assert (=> d!1179588 (= lt!1401766 (choose!23932 lt!1401508 lt!1401508))))

(assert (=> d!1179588 (= (lemmaIsPrefixRefl!2413 lt!1401508 lt!1401508) lt!1401766)))

(declare-fun bs!588144 () Bool)

(assert (= bs!588144 d!1179588))

(assert (=> bs!588144 m!4559843))

(declare-fun m!4560917 () Bool)

(assert (=> bs!588144 m!4560917))

(assert (=> b!3984423 d!1179588))

(declare-fun b!3985095 () Bool)

(declare-fun res!1616026 () Bool)

(declare-fun e!2469898 () Bool)

(assert (=> b!3985095 (=> (not res!1616026) (not e!2469898))))

(assert (=> b!3985095 (= res!1616026 (= (head!8483 lt!1401503) (head!8483 lt!1401508)))))

(declare-fun b!3985097 () Bool)

(declare-fun e!2469899 () Bool)

(assert (=> b!3985097 (= e!2469899 (>= (size!31871 lt!1401508) (size!31871 lt!1401503)))))

(declare-fun d!1179590 () Bool)

(assert (=> d!1179590 e!2469899))

(declare-fun res!1616024 () Bool)

(assert (=> d!1179590 (=> res!1616024 e!2469899)))

(declare-fun lt!1401767 () Bool)

(assert (=> d!1179590 (= res!1616024 (not lt!1401767))))

(declare-fun e!2469900 () Bool)

(assert (=> d!1179590 (= lt!1401767 e!2469900)))

(declare-fun res!1616023 () Bool)

(assert (=> d!1179590 (=> res!1616023 e!2469900)))

(assert (=> d!1179590 (= res!1616023 ((_ is Nil!42608) lt!1401503))))

(assert (=> d!1179590 (= (isPrefix!3821 lt!1401503 lt!1401508) lt!1401767)))

(declare-fun b!3985094 () Bool)

(assert (=> b!3985094 (= e!2469900 e!2469898)))

(declare-fun res!1616025 () Bool)

(assert (=> b!3985094 (=> (not res!1616025) (not e!2469898))))

(assert (=> b!3985094 (= res!1616025 (not ((_ is Nil!42608) lt!1401508)))))

(declare-fun b!3985096 () Bool)

(assert (=> b!3985096 (= e!2469898 (isPrefix!3821 (tail!6215 lt!1401503) (tail!6215 lt!1401508)))))

(assert (= (and d!1179590 (not res!1616023)) b!3985094))

(assert (= (and b!3985094 res!1616025) b!3985095))

(assert (= (and b!3985095 res!1616026) b!3985096))

(assert (= (and d!1179590 (not res!1616024)) b!3985097))

(assert (=> b!3985095 m!4560601))

(assert (=> b!3985095 m!4560821))

(assert (=> b!3985097 m!4559735))

(assert (=> b!3985097 m!4559863))

(assert (=> b!3985096 m!4560607))

(assert (=> b!3985096 m!4560823))

(assert (=> b!3985096 m!4560607))

(assert (=> b!3985096 m!4560823))

(declare-fun m!4560919 () Bool)

(assert (=> b!3985096 m!4560919))

(assert (=> b!3984425 d!1179590))

(declare-fun b!3985099 () Bool)

(declare-fun res!1616030 () Bool)

(declare-fun e!2469901 () Bool)

(assert (=> b!3985099 (=> (not res!1616030) (not e!2469901))))

(assert (=> b!3985099 (= res!1616030 (= (head!8483 lt!1401503) (head!8483 lt!1401506)))))

(declare-fun b!3985101 () Bool)

(declare-fun e!2469902 () Bool)

(assert (=> b!3985101 (= e!2469902 (>= (size!31871 lt!1401506) (size!31871 lt!1401503)))))

(declare-fun d!1179592 () Bool)

(assert (=> d!1179592 e!2469902))

(declare-fun res!1616028 () Bool)

(assert (=> d!1179592 (=> res!1616028 e!2469902)))

(declare-fun lt!1401768 () Bool)

(assert (=> d!1179592 (= res!1616028 (not lt!1401768))))

(declare-fun e!2469903 () Bool)

(assert (=> d!1179592 (= lt!1401768 e!2469903)))

(declare-fun res!1616027 () Bool)

(assert (=> d!1179592 (=> res!1616027 e!2469903)))

(assert (=> d!1179592 (= res!1616027 ((_ is Nil!42608) lt!1401503))))

(assert (=> d!1179592 (= (isPrefix!3821 lt!1401503 lt!1401506) lt!1401768)))

(declare-fun b!3985098 () Bool)

(assert (=> b!3985098 (= e!2469903 e!2469901)))

(declare-fun res!1616029 () Bool)

(assert (=> b!3985098 (=> (not res!1616029) (not e!2469901))))

(assert (=> b!3985098 (= res!1616029 (not ((_ is Nil!42608) lt!1401506)))))

(declare-fun b!3985100 () Bool)

(assert (=> b!3985100 (= e!2469901 (isPrefix!3821 (tail!6215 lt!1401503) (tail!6215 lt!1401506)))))

(assert (= (and d!1179592 (not res!1616027)) b!3985098))

(assert (= (and b!3985098 res!1616029) b!3985099))

(assert (= (and b!3985099 res!1616030) b!3985100))

(assert (= (and d!1179592 (not res!1616028)) b!3985101))

(assert (=> b!3985099 m!4560601))

(declare-fun m!4560921 () Bool)

(assert (=> b!3985099 m!4560921))

(declare-fun m!4560923 () Bool)

(assert (=> b!3985101 m!4560923))

(assert (=> b!3985101 m!4559863))

(assert (=> b!3985100 m!4560607))

(declare-fun m!4560925 () Bool)

(assert (=> b!3985100 m!4560925))

(assert (=> b!3985100 m!4560607))

(assert (=> b!3985100 m!4560925))

(declare-fun m!4560927 () Bool)

(assert (=> b!3985100 m!4560927))

(assert (=> b!3984425 d!1179592))

(declare-fun d!1179594 () Bool)

(assert (=> d!1179594 (isPrefix!3821 lt!1401503 (++!11136 lt!1401470 lt!1401474))))

(declare-fun lt!1401769 () Unit!61288)

(assert (=> d!1179594 (= lt!1401769 (choose!23930 lt!1401503 lt!1401470 lt!1401474))))

(assert (=> d!1179594 (isPrefix!3821 lt!1401503 lt!1401470)))

(assert (=> d!1179594 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!654 lt!1401503 lt!1401470 lt!1401474) lt!1401769)))

(declare-fun bs!588145 () Bool)

(assert (= bs!588145 d!1179594))

(assert (=> bs!588145 m!4559835))

(assert (=> bs!588145 m!4559835))

(declare-fun m!4560929 () Bool)

(assert (=> bs!588145 m!4560929))

(declare-fun m!4560931 () Bool)

(assert (=> bs!588145 m!4560931))

(assert (=> bs!588145 m!4559907))

(assert (=> b!3984425 d!1179594))

(declare-fun call!285768 () Option!9148)

(declare-fun bm!285763 () Bool)

(assert (=> bm!285763 (= call!285768 (maxPrefixOneRule!2655 thiss!21717 (h!48030 rules!2999) lt!1401508))))

(declare-fun b!3985102 () Bool)

(declare-fun e!2469905 () Option!9148)

(declare-fun lt!1401774 () Option!9148)

(declare-fun lt!1401770 () Option!9148)

(assert (=> b!3985102 (= e!2469905 (ite (and ((_ is None!9147) lt!1401774) ((_ is None!9147) lt!1401770)) None!9147 (ite ((_ is None!9147) lt!1401770) lt!1401774 (ite ((_ is None!9147) lt!1401774) lt!1401770 (ite (>= (size!31870 (_1!24046 (v!39497 lt!1401774))) (size!31870 (_1!24046 (v!39497 lt!1401770)))) lt!1401774 lt!1401770)))))))

(assert (=> b!3985102 (= lt!1401774 call!285768)))

(assert (=> b!3985102 (= lt!1401770 (maxPrefix!3621 thiss!21717 (t!331485 rules!2999) lt!1401508))))

(declare-fun b!3985103 () Bool)

(declare-fun e!2469904 () Bool)

(declare-fun e!2469906 () Bool)

(assert (=> b!3985103 (= e!2469904 e!2469906)))

(declare-fun res!1616034 () Bool)

(assert (=> b!3985103 (=> (not res!1616034) (not e!2469906))))

(declare-fun lt!1401772 () Option!9148)

(assert (=> b!3985103 (= res!1616034 (isDefined!7034 lt!1401772))))

(declare-fun b!3985104 () Bool)

(declare-fun res!1616035 () Bool)

(assert (=> b!3985104 (=> (not res!1616035) (not e!2469906))))

(assert (=> b!3985104 (= res!1616035 (= (value!212553 (_1!24046 (get!14025 lt!1401772))) (apply!9945 (transformation!6734 (rule!9744 (_1!24046 (get!14025 lt!1401772)))) (seqFromList!4973 (originalCharacters!7334 (_1!24046 (get!14025 lt!1401772)))))))))

(declare-fun b!3985105 () Bool)

(declare-fun res!1616032 () Bool)

(assert (=> b!3985105 (=> (not res!1616032) (not e!2469906))))

(assert (=> b!3985105 (= res!1616032 (= (list!15816 (charsOf!4550 (_1!24046 (get!14025 lt!1401772)))) (originalCharacters!7334 (_1!24046 (get!14025 lt!1401772)))))))

(declare-fun b!3985106 () Bool)

(assert (=> b!3985106 (= e!2469905 call!285768)))

(declare-fun d!1179596 () Bool)

(assert (=> d!1179596 e!2469904))

(declare-fun res!1616037 () Bool)

(assert (=> d!1179596 (=> res!1616037 e!2469904)))

(assert (=> d!1179596 (= res!1616037 (isEmpty!25472 lt!1401772))))

(assert (=> d!1179596 (= lt!1401772 e!2469905)))

(declare-fun c!690090 () Bool)

(assert (=> d!1179596 (= c!690090 (and ((_ is Cons!42610) rules!2999) ((_ is Nil!42610) (t!331485 rules!2999))))))

(declare-fun lt!1401771 () Unit!61288)

(declare-fun lt!1401773 () Unit!61288)

(assert (=> d!1179596 (= lt!1401771 lt!1401773)))

(assert (=> d!1179596 (isPrefix!3821 lt!1401508 lt!1401508)))

(assert (=> d!1179596 (= lt!1401773 (lemmaIsPrefixRefl!2413 lt!1401508 lt!1401508))))

(assert (=> d!1179596 (rulesValidInductive!2447 thiss!21717 rules!2999)))

(assert (=> d!1179596 (= (maxPrefix!3621 thiss!21717 rules!2999 lt!1401508) lt!1401772)))

(declare-fun b!3985107 () Bool)

(declare-fun res!1616036 () Bool)

(assert (=> b!3985107 (=> (not res!1616036) (not e!2469906))))

(assert (=> b!3985107 (= res!1616036 (matchR!5616 (regex!6734 (rule!9744 (_1!24046 (get!14025 lt!1401772)))) (list!15816 (charsOf!4550 (_1!24046 (get!14025 lt!1401772))))))))

(declare-fun b!3985108 () Bool)

(declare-fun res!1616033 () Bool)

(assert (=> b!3985108 (=> (not res!1616033) (not e!2469906))))

(assert (=> b!3985108 (= res!1616033 (= (++!11136 (list!15816 (charsOf!4550 (_1!24046 (get!14025 lt!1401772)))) (_2!24046 (get!14025 lt!1401772))) lt!1401508))))

(declare-fun b!3985109 () Bool)

(declare-fun res!1616031 () Bool)

(assert (=> b!3985109 (=> (not res!1616031) (not e!2469906))))

(assert (=> b!3985109 (= res!1616031 (< (size!31871 (_2!24046 (get!14025 lt!1401772))) (size!31871 lt!1401508)))))

(declare-fun b!3985110 () Bool)

(assert (=> b!3985110 (= e!2469906 (contains!8479 rules!2999 (rule!9744 (_1!24046 (get!14025 lt!1401772)))))))

(assert (= (and d!1179596 c!690090) b!3985106))

(assert (= (and d!1179596 (not c!690090)) b!3985102))

(assert (= (or b!3985106 b!3985102) bm!285763))

(assert (= (and d!1179596 (not res!1616037)) b!3985103))

(assert (= (and b!3985103 res!1616034) b!3985105))

(assert (= (and b!3985105 res!1616032) b!3985109))

(assert (= (and b!3985109 res!1616031) b!3985108))

(assert (= (and b!3985108 res!1616033) b!3985104))

(assert (= (and b!3985104 res!1616035) b!3985107))

(assert (= (and b!3985107 res!1616036) b!3985110))

(declare-fun m!4560933 () Bool)

(assert (=> b!3985107 m!4560933))

(declare-fun m!4560935 () Bool)

(assert (=> b!3985107 m!4560935))

(assert (=> b!3985107 m!4560935))

(declare-fun m!4560937 () Bool)

(assert (=> b!3985107 m!4560937))

(assert (=> b!3985107 m!4560937))

(declare-fun m!4560939 () Bool)

(assert (=> b!3985107 m!4560939))

(assert (=> b!3985109 m!4560933))

(declare-fun m!4560941 () Bool)

(assert (=> b!3985109 m!4560941))

(assert (=> b!3985109 m!4559735))

(declare-fun m!4560943 () Bool)

(assert (=> d!1179596 m!4560943))

(assert (=> d!1179596 m!4559843))

(assert (=> d!1179596 m!4559845))

(assert (=> d!1179596 m!4560759))

(assert (=> b!3985108 m!4560933))

(assert (=> b!3985108 m!4560935))

(assert (=> b!3985108 m!4560935))

(assert (=> b!3985108 m!4560937))

(assert (=> b!3985108 m!4560937))

(declare-fun m!4560945 () Bool)

(assert (=> b!3985108 m!4560945))

(declare-fun m!4560947 () Bool)

(assert (=> b!3985102 m!4560947))

(assert (=> b!3985104 m!4560933))

(declare-fun m!4560949 () Bool)

(assert (=> b!3985104 m!4560949))

(assert (=> b!3985104 m!4560949))

(declare-fun m!4560951 () Bool)

(assert (=> b!3985104 m!4560951))

(assert (=> b!3985105 m!4560933))

(assert (=> b!3985105 m!4560935))

(assert (=> b!3985105 m!4560935))

(assert (=> b!3985105 m!4560937))

(declare-fun m!4560953 () Bool)

(assert (=> b!3985103 m!4560953))

(declare-fun m!4560955 () Bool)

(assert (=> bm!285763 m!4560955))

(assert (=> b!3985110 m!4560933))

(declare-fun m!4560957 () Bool)

(assert (=> b!3985110 m!4560957))

(assert (=> b!3984426 d!1179596))

(declare-fun b!3985112 () Bool)

(declare-fun e!2469908 () List!42732)

(assert (=> b!3985112 (= e!2469908 (Cons!42608 (h!48028 prefix!494) (++!11136 (t!331483 prefix!494) suffix!1299)))))

(declare-fun b!3985111 () Bool)

(assert (=> b!3985111 (= e!2469908 suffix!1299)))

(declare-fun b!3985114 () Bool)

(declare-fun lt!1401775 () List!42732)

(declare-fun e!2469907 () Bool)

(assert (=> b!3985114 (= e!2469907 (or (not (= suffix!1299 Nil!42608)) (= lt!1401775 prefix!494)))))

(declare-fun d!1179598 () Bool)

(assert (=> d!1179598 e!2469907))

(declare-fun res!1616039 () Bool)

(assert (=> d!1179598 (=> (not res!1616039) (not e!2469907))))

(assert (=> d!1179598 (= res!1616039 (= (content!6460 lt!1401775) ((_ map or) (content!6460 prefix!494) (content!6460 suffix!1299))))))

(assert (=> d!1179598 (= lt!1401775 e!2469908)))

(declare-fun c!690091 () Bool)

(assert (=> d!1179598 (= c!690091 ((_ is Nil!42608) prefix!494))))

(assert (=> d!1179598 (= (++!11136 prefix!494 suffix!1299) lt!1401775)))

(declare-fun b!3985113 () Bool)

(declare-fun res!1616038 () Bool)

(assert (=> b!3985113 (=> (not res!1616038) (not e!2469907))))

(assert (=> b!3985113 (= res!1616038 (= (size!31871 lt!1401775) (+ (size!31871 prefix!494) (size!31871 suffix!1299))))))

(assert (= (and d!1179598 c!690091) b!3985111))

(assert (= (and d!1179598 (not c!690091)) b!3985112))

(assert (= (and d!1179598 res!1616039) b!3985113))

(assert (= (and b!3985113 res!1616038) b!3985114))

(declare-fun m!4560959 () Bool)

(assert (=> b!3985112 m!4560959))

(declare-fun m!4560961 () Bool)

(assert (=> d!1179598 m!4560961))

(declare-fun m!4560963 () Bool)

(assert (=> d!1179598 m!4560963))

(assert (=> d!1179598 m!4560879))

(declare-fun m!4560965 () Bool)

(assert (=> b!3985113 m!4560965))

(assert (=> b!3985113 m!4559901))

(assert (=> b!3985113 m!4559779))

(assert (=> b!3984426 d!1179598))

(declare-fun d!1179600 () Bool)

(declare-fun res!1616042 () Bool)

(declare-fun e!2469911 () Bool)

(assert (=> d!1179600 (=> (not res!1616042) (not e!2469911))))

(declare-fun rulesValid!2623 (LexerInterface!6323 List!42734) Bool)

(assert (=> d!1179600 (= res!1616042 (rulesValid!2623 thiss!21717 rules!2999))))

(assert (=> d!1179600 (= (rulesInvariant!5666 thiss!21717 rules!2999) e!2469911)))

(declare-fun b!3985117 () Bool)

(declare-datatypes ((List!42736 0))(
  ( (Nil!42612) (Cons!42612 (h!48032 String!48538) (t!331535 List!42736)) )
))
(declare-fun noDuplicateTag!2624 (LexerInterface!6323 List!42734 List!42736) Bool)

(assert (=> b!3985117 (= e!2469911 (noDuplicateTag!2624 thiss!21717 rules!2999 Nil!42612))))

(assert (= (and d!1179600 res!1616042) b!3985117))

(declare-fun m!4560967 () Bool)

(assert (=> d!1179600 m!4560967))

(declare-fun m!4560969 () Bool)

(assert (=> b!3985117 m!4560969))

(assert (=> b!3984440 d!1179600))

(declare-fun b!3985119 () Bool)

(declare-fun e!2469913 () List!42732)

(assert (=> b!3985119 (= e!2469913 (Cons!42608 (h!48028 lt!1401503) (++!11136 (t!331483 lt!1401503) lt!1401475)))))

(declare-fun b!3985118 () Bool)

(assert (=> b!3985118 (= e!2469913 lt!1401475)))

(declare-fun e!2469912 () Bool)

(declare-fun lt!1401776 () List!42732)

(declare-fun b!3985121 () Bool)

(assert (=> b!3985121 (= e!2469912 (or (not (= lt!1401475 Nil!42608)) (= lt!1401776 lt!1401503)))))

(declare-fun d!1179602 () Bool)

(assert (=> d!1179602 e!2469912))

(declare-fun res!1616044 () Bool)

(assert (=> d!1179602 (=> (not res!1616044) (not e!2469912))))

(assert (=> d!1179602 (= res!1616044 (= (content!6460 lt!1401776) ((_ map or) (content!6460 lt!1401503) (content!6460 lt!1401475))))))

(assert (=> d!1179602 (= lt!1401776 e!2469913)))

(declare-fun c!690092 () Bool)

(assert (=> d!1179602 (= c!690092 ((_ is Nil!42608) lt!1401503))))

(assert (=> d!1179602 (= (++!11136 lt!1401503 lt!1401475) lt!1401776)))

(declare-fun b!3985120 () Bool)

(declare-fun res!1616043 () Bool)

(assert (=> b!3985120 (=> (not res!1616043) (not e!2469912))))

(assert (=> b!3985120 (= res!1616043 (= (size!31871 lt!1401776) (+ (size!31871 lt!1401503) (size!31871 lt!1401475))))))

(assert (= (and d!1179602 c!690092) b!3985118))

(assert (= (and d!1179602 (not c!690092)) b!3985119))

(assert (= (and d!1179602 res!1616044) b!3985120))

(assert (= (and b!3985120 res!1616043) b!3985121))

(declare-fun m!4560971 () Bool)

(assert (=> b!3985119 m!4560971))

(declare-fun m!4560973 () Bool)

(assert (=> d!1179602 m!4560973))

(assert (=> d!1179602 m!4560679))

(declare-fun m!4560975 () Bool)

(assert (=> d!1179602 m!4560975))

(declare-fun m!4560977 () Bool)

(assert (=> b!3985120 m!4560977))

(assert (=> b!3985120 m!4559863))

(declare-fun m!4560979 () Bool)

(assert (=> b!3985120 m!4560979))

(assert (=> b!3984419 d!1179602))

(declare-fun d!1179604 () Bool)

(declare-fun lt!1401777 () List!42732)

(assert (=> d!1179604 (= (++!11136 lt!1401503 lt!1401777) lt!1401470)))

(declare-fun e!2469914 () List!42732)

(assert (=> d!1179604 (= lt!1401777 e!2469914)))

(declare-fun c!690093 () Bool)

(assert (=> d!1179604 (= c!690093 ((_ is Cons!42608) lt!1401503))))

(assert (=> d!1179604 (>= (size!31871 lt!1401470) (size!31871 lt!1401503))))

(assert (=> d!1179604 (= (getSuffix!2252 lt!1401470 lt!1401503) lt!1401777)))

(declare-fun b!3985122 () Bool)

(assert (=> b!3985122 (= e!2469914 (getSuffix!2252 (tail!6215 lt!1401470) (t!331483 lt!1401503)))))

(declare-fun b!3985123 () Bool)

(assert (=> b!3985123 (= e!2469914 lt!1401470)))

(assert (= (and d!1179604 c!690093) b!3985122))

(assert (= (and d!1179604 (not c!690093)) b!3985123))

(declare-fun m!4560981 () Bool)

(assert (=> d!1179604 m!4560981))

(assert (=> d!1179604 m!4560627))

(assert (=> d!1179604 m!4559863))

(assert (=> b!3985122 m!4560791))

(assert (=> b!3985122 m!4560791))

(declare-fun m!4560983 () Bool)

(assert (=> b!3985122 m!4560983))

(assert (=> b!3984419 d!1179604))

(declare-fun d!1179606 () Bool)

(declare-fun lt!1401780 () Bool)

(declare-fun content!6461 (List!42734) (InoxSet Rule!13268))

(assert (=> d!1179606 (= lt!1401780 (select (content!6461 rules!2999) (rule!9744 (_1!24046 (v!39497 lt!1401497)))))))

(declare-fun e!2469919 () Bool)

(assert (=> d!1179606 (= lt!1401780 e!2469919)))

(declare-fun res!1616050 () Bool)

(assert (=> d!1179606 (=> (not res!1616050) (not e!2469919))))

(assert (=> d!1179606 (= res!1616050 ((_ is Cons!42610) rules!2999))))

(assert (=> d!1179606 (= (contains!8479 rules!2999 (rule!9744 (_1!24046 (v!39497 lt!1401497)))) lt!1401780)))

(declare-fun b!3985128 () Bool)

(declare-fun e!2469920 () Bool)

(assert (=> b!3985128 (= e!2469919 e!2469920)))

(declare-fun res!1616049 () Bool)

(assert (=> b!3985128 (=> res!1616049 e!2469920)))

(assert (=> b!3985128 (= res!1616049 (= (h!48030 rules!2999) (rule!9744 (_1!24046 (v!39497 lt!1401497)))))))

(declare-fun b!3985129 () Bool)

(assert (=> b!3985129 (= e!2469920 (contains!8479 (t!331485 rules!2999) (rule!9744 (_1!24046 (v!39497 lt!1401497)))))))

(assert (= (and d!1179606 res!1616050) b!3985128))

(assert (= (and b!3985128 (not res!1616049)) b!3985129))

(declare-fun m!4560985 () Bool)

(assert (=> d!1179606 m!4560985))

(declare-fun m!4560987 () Bool)

(assert (=> d!1179606 m!4560987))

(declare-fun m!4560989 () Bool)

(assert (=> b!3985129 m!4560989))

(assert (=> b!3984418 d!1179606))

(declare-fun b!3985131 () Bool)

(declare-fun e!2469922 () List!42732)

(assert (=> b!3985131 (= e!2469922 (Cons!42608 (h!48028 prefix!494) (++!11136 (t!331483 prefix!494) newSuffix!27)))))

(declare-fun b!3985130 () Bool)

(assert (=> b!3985130 (= e!2469922 newSuffix!27)))

(declare-fun b!3985133 () Bool)

(declare-fun e!2469921 () Bool)

(declare-fun lt!1401781 () List!42732)

(assert (=> b!3985133 (= e!2469921 (or (not (= newSuffix!27 Nil!42608)) (= lt!1401781 prefix!494)))))

(declare-fun d!1179608 () Bool)

(assert (=> d!1179608 e!2469921))

(declare-fun res!1616052 () Bool)

(assert (=> d!1179608 (=> (not res!1616052) (not e!2469921))))

(assert (=> d!1179608 (= res!1616052 (= (content!6460 lt!1401781) ((_ map or) (content!6460 prefix!494) (content!6460 newSuffix!27))))))

(assert (=> d!1179608 (= lt!1401781 e!2469922)))

(declare-fun c!690094 () Bool)

(assert (=> d!1179608 (= c!690094 ((_ is Nil!42608) prefix!494))))

(assert (=> d!1179608 (= (++!11136 prefix!494 newSuffix!27) lt!1401781)))

(declare-fun b!3985132 () Bool)

(declare-fun res!1616051 () Bool)

(assert (=> b!3985132 (=> (not res!1616051) (not e!2469921))))

(assert (=> b!3985132 (= res!1616051 (= (size!31871 lt!1401781) (+ (size!31871 prefix!494) (size!31871 newSuffix!27))))))

(assert (= (and d!1179608 c!690094) b!3985130))

(assert (= (and d!1179608 (not c!690094)) b!3985131))

(assert (= (and d!1179608 res!1616052) b!3985132))

(assert (= (and b!3985132 res!1616051) b!3985133))

(declare-fun m!4560991 () Bool)

(assert (=> b!3985131 m!4560991))

(declare-fun m!4560993 () Bool)

(assert (=> d!1179608 m!4560993))

(assert (=> d!1179608 m!4560963))

(declare-fun m!4560995 () Bool)

(assert (=> d!1179608 m!4560995))

(declare-fun m!4560997 () Bool)

(assert (=> b!3985132 m!4560997))

(assert (=> b!3985132 m!4559901))

(assert (=> b!3985132 m!4559781))

(assert (=> b!3984439 d!1179608))

(declare-fun b!3985135 () Bool)

(declare-fun e!2469924 () List!42732)

(assert (=> b!3985135 (= e!2469924 (Cons!42608 (h!48028 lt!1401507) (++!11136 (t!331483 lt!1401507) newSuffixResult!27)))))

(declare-fun b!3985134 () Bool)

(assert (=> b!3985134 (= e!2469924 newSuffixResult!27)))

(declare-fun e!2469923 () Bool)

(declare-fun lt!1401782 () List!42732)

(declare-fun b!3985137 () Bool)

(assert (=> b!3985137 (= e!2469923 (or (not (= newSuffixResult!27 Nil!42608)) (= lt!1401782 lt!1401507)))))

(declare-fun d!1179610 () Bool)

(assert (=> d!1179610 e!2469923))

(declare-fun res!1616054 () Bool)

(assert (=> d!1179610 (=> (not res!1616054) (not e!2469923))))

(assert (=> d!1179610 (= res!1616054 (= (content!6460 lt!1401782) ((_ map or) (content!6460 lt!1401507) (content!6460 newSuffixResult!27))))))

(assert (=> d!1179610 (= lt!1401782 e!2469924)))

(declare-fun c!690095 () Bool)

(assert (=> d!1179610 (= c!690095 ((_ is Nil!42608) lt!1401507))))

(assert (=> d!1179610 (= (++!11136 lt!1401507 newSuffixResult!27) lt!1401782)))

(declare-fun b!3985136 () Bool)

(declare-fun res!1616053 () Bool)

(assert (=> b!3985136 (=> (not res!1616053) (not e!2469923))))

(assert (=> b!3985136 (= res!1616053 (= (size!31871 lt!1401782) (+ (size!31871 lt!1401507) (size!31871 newSuffixResult!27))))))

(assert (= (and d!1179610 c!690095) b!3985134))

(assert (= (and d!1179610 (not c!690095)) b!3985135))

(assert (= (and d!1179610 res!1616054) b!3985136))

(assert (= (and b!3985136 res!1616053) b!3985137))

(declare-fun m!4560999 () Bool)

(assert (=> b!3985135 m!4560999))

(declare-fun m!4561001 () Bool)

(assert (=> d!1179610 m!4561001))

(assert (=> d!1179610 m!4560565))

(assert (=> d!1179610 m!4560735))

(declare-fun m!4561003 () Bool)

(assert (=> b!3985136 m!4561003))

(assert (=> b!3985136 m!4559899))

(assert (=> b!3985136 m!4560739))

(assert (=> b!3984439 d!1179610))

(declare-fun d!1179612 () Bool)

(declare-fun lt!1401783 () Bool)

(assert (=> d!1179612 (= lt!1401783 (select (content!6461 rules!2999) (rule!9744 token!484)))))

(declare-fun e!2469925 () Bool)

(assert (=> d!1179612 (= lt!1401783 e!2469925)))

(declare-fun res!1616056 () Bool)

(assert (=> d!1179612 (=> (not res!1616056) (not e!2469925))))

(assert (=> d!1179612 (= res!1616056 ((_ is Cons!42610) rules!2999))))

(assert (=> d!1179612 (= (contains!8479 rules!2999 (rule!9744 token!484)) lt!1401783)))

(declare-fun b!3985138 () Bool)

(declare-fun e!2469926 () Bool)

(assert (=> b!3985138 (= e!2469925 e!2469926)))

(declare-fun res!1616055 () Bool)

(assert (=> b!3985138 (=> res!1616055 e!2469926)))

(assert (=> b!3985138 (= res!1616055 (= (h!48030 rules!2999) (rule!9744 token!484)))))

(declare-fun b!3985139 () Bool)

(assert (=> b!3985139 (= e!2469926 (contains!8479 (t!331485 rules!2999) (rule!9744 token!484)))))

(assert (= (and d!1179612 res!1616056) b!3985138))

(assert (= (and b!3985138 (not res!1616055)) b!3985139))

(assert (=> d!1179612 m!4560985))

(declare-fun m!4561005 () Bool)

(assert (=> d!1179612 m!4561005))

(declare-fun m!4561007 () Bool)

(assert (=> b!3985139 m!4561007))

(assert (=> b!3984421 d!1179612))

(declare-fun b!3985141 () Bool)

(declare-fun res!1616060 () Bool)

(declare-fun e!2469927 () Bool)

(assert (=> b!3985141 (=> (not res!1616060) (not e!2469927))))

(assert (=> b!3985141 (= res!1616060 (= (head!8483 newSuffix!27) (head!8483 suffix!1299)))))

(declare-fun b!3985143 () Bool)

(declare-fun e!2469928 () Bool)

(assert (=> b!3985143 (= e!2469928 (>= (size!31871 suffix!1299) (size!31871 newSuffix!27)))))

(declare-fun d!1179614 () Bool)

(assert (=> d!1179614 e!2469928))

(declare-fun res!1616058 () Bool)

(assert (=> d!1179614 (=> res!1616058 e!2469928)))

(declare-fun lt!1401784 () Bool)

(assert (=> d!1179614 (= res!1616058 (not lt!1401784))))

(declare-fun e!2469929 () Bool)

(assert (=> d!1179614 (= lt!1401784 e!2469929)))

(declare-fun res!1616057 () Bool)

(assert (=> d!1179614 (=> res!1616057 e!2469929)))

(assert (=> d!1179614 (= res!1616057 ((_ is Nil!42608) newSuffix!27))))

(assert (=> d!1179614 (= (isPrefix!3821 newSuffix!27 suffix!1299) lt!1401784)))

(declare-fun b!3985140 () Bool)

(assert (=> b!3985140 (= e!2469929 e!2469927)))

(declare-fun res!1616059 () Bool)

(assert (=> b!3985140 (=> (not res!1616059) (not e!2469927))))

(assert (=> b!3985140 (= res!1616059 (not ((_ is Nil!42608) suffix!1299)))))

(declare-fun b!3985142 () Bool)

(assert (=> b!3985142 (= e!2469927 (isPrefix!3821 (tail!6215 newSuffix!27) (tail!6215 suffix!1299)))))

(assert (= (and d!1179614 (not res!1616057)) b!3985140))

(assert (= (and b!3985140 res!1616059) b!3985141))

(assert (= (and b!3985141 res!1616060) b!3985142))

(assert (= (and d!1179614 (not res!1616058)) b!3985143))

(declare-fun m!4561009 () Bool)

(assert (=> b!3985141 m!4561009))

(declare-fun m!4561011 () Bool)

(assert (=> b!3985141 m!4561011))

(assert (=> b!3985143 m!4559779))

(assert (=> b!3985143 m!4559781))

(declare-fun m!4561013 () Bool)

(assert (=> b!3985142 m!4561013))

(declare-fun m!4561015 () Bool)

(assert (=> b!3985142 m!4561015))

(assert (=> b!3985142 m!4561013))

(assert (=> b!3985142 m!4561015))

(declare-fun m!4561017 () Bool)

(assert (=> b!3985142 m!4561017))

(assert (=> b!3984420 d!1179614))

(declare-fun b!3985145 () Bool)

(declare-fun e!2469931 () List!42732)

(assert (=> b!3985145 (= e!2469931 (Cons!42608 (h!48028 prefix!494) (++!11136 (t!331483 prefix!494) lt!1401490)))))

(declare-fun b!3985144 () Bool)

(assert (=> b!3985144 (= e!2469931 lt!1401490)))

(declare-fun e!2469930 () Bool)

(declare-fun b!3985147 () Bool)

(declare-fun lt!1401785 () List!42732)

(assert (=> b!3985147 (= e!2469930 (or (not (= lt!1401490 Nil!42608)) (= lt!1401785 prefix!494)))))

(declare-fun d!1179616 () Bool)

(assert (=> d!1179616 e!2469930))

(declare-fun res!1616062 () Bool)

(assert (=> d!1179616 (=> (not res!1616062) (not e!2469930))))

(assert (=> d!1179616 (= res!1616062 (= (content!6460 lt!1401785) ((_ map or) (content!6460 prefix!494) (content!6460 lt!1401490))))))

(assert (=> d!1179616 (= lt!1401785 e!2469931)))

(declare-fun c!690096 () Bool)

(assert (=> d!1179616 (= c!690096 ((_ is Nil!42608) prefix!494))))

(assert (=> d!1179616 (= (++!11136 prefix!494 lt!1401490) lt!1401785)))

(declare-fun b!3985146 () Bool)

(declare-fun res!1616061 () Bool)

(assert (=> b!3985146 (=> (not res!1616061) (not e!2469930))))

(assert (=> b!3985146 (= res!1616061 (= (size!31871 lt!1401785) (+ (size!31871 prefix!494) (size!31871 lt!1401490))))))

(assert (= (and d!1179616 c!690096) b!3985144))

(assert (= (and d!1179616 (not c!690096)) b!3985145))

(assert (= (and d!1179616 res!1616062) b!3985146))

(assert (= (and b!3985146 res!1616061) b!3985147))

(declare-fun m!4561019 () Bool)

(assert (=> b!3985145 m!4561019))

(declare-fun m!4561021 () Bool)

(assert (=> d!1179616 m!4561021))

(assert (=> d!1179616 m!4560963))

(declare-fun m!4561023 () Bool)

(assert (=> d!1179616 m!4561023))

(declare-fun m!4561025 () Bool)

(assert (=> b!3985146 m!4561025))

(assert (=> b!3985146 m!4559901))

(declare-fun m!4561027 () Bool)

(assert (=> b!3985146 m!4561027))

(assert (=> b!3984441 d!1179616))

(declare-fun b!3985149 () Bool)

(declare-fun e!2469933 () List!42732)

(assert (=> b!3985149 (= e!2469933 (Cons!42608 (h!48028 lt!1401470) (++!11136 (t!331483 lt!1401470) lt!1401474)))))

(declare-fun b!3985148 () Bool)

(assert (=> b!3985148 (= e!2469933 lt!1401474)))

(declare-fun e!2469932 () Bool)

(declare-fun lt!1401786 () List!42732)

(declare-fun b!3985151 () Bool)

(assert (=> b!3985151 (= e!2469932 (or (not (= lt!1401474 Nil!42608)) (= lt!1401786 lt!1401470)))))

(declare-fun d!1179618 () Bool)

(assert (=> d!1179618 e!2469932))

(declare-fun res!1616064 () Bool)

(assert (=> d!1179618 (=> (not res!1616064) (not e!2469932))))

(assert (=> d!1179618 (= res!1616064 (= (content!6460 lt!1401786) ((_ map or) (content!6460 lt!1401470) (content!6460 lt!1401474))))))

(assert (=> d!1179618 (= lt!1401786 e!2469933)))

(declare-fun c!690097 () Bool)

(assert (=> d!1179618 (= c!690097 ((_ is Nil!42608) lt!1401470))))

(assert (=> d!1179618 (= (++!11136 lt!1401470 lt!1401474) lt!1401786)))

(declare-fun b!3985150 () Bool)

(declare-fun res!1616063 () Bool)

(assert (=> b!3985150 (=> (not res!1616063) (not e!2469932))))

(assert (=> b!3985150 (= res!1616063 (= (size!31871 lt!1401786) (+ (size!31871 lt!1401470) (size!31871 lt!1401474))))))

(assert (= (and d!1179618 c!690097) b!3985148))

(assert (= (and d!1179618 (not c!690097)) b!3985149))

(assert (= (and d!1179618 res!1616064) b!3985150))

(assert (= (and b!3985150 res!1616063) b!3985151))

(declare-fun m!4561029 () Bool)

(assert (=> b!3985149 m!4561029))

(declare-fun m!4561031 () Bool)

(assert (=> d!1179618 m!4561031))

(declare-fun m!4561033 () Bool)

(assert (=> d!1179618 m!4561033))

(declare-fun m!4561035 () Bool)

(assert (=> d!1179618 m!4561035))

(declare-fun m!4561037 () Bool)

(assert (=> b!3985150 m!4561037))

(assert (=> b!3985150 m!4560627))

(declare-fun m!4561039 () Bool)

(assert (=> b!3985150 m!4561039))

(assert (=> b!3984441 d!1179618))

(declare-fun d!1179620 () Bool)

(assert (=> d!1179620 (= (++!11136 (++!11136 prefix!494 newSuffix!27) lt!1401474) (++!11136 prefix!494 (++!11136 newSuffix!27 lt!1401474)))))

(declare-fun lt!1401787 () Unit!61288)

(assert (=> d!1179620 (= lt!1401787 (choose!23931 prefix!494 newSuffix!27 lt!1401474))))

(assert (=> d!1179620 (= (lemmaConcatAssociativity!2456 prefix!494 newSuffix!27 lt!1401474) lt!1401787)))

(declare-fun bs!588146 () Bool)

(assert (= bs!588146 d!1179620))

(assert (=> bs!588146 m!4559809))

(assert (=> bs!588146 m!4559829))

(assert (=> bs!588146 m!4559809))

(declare-fun m!4561041 () Bool)

(assert (=> bs!588146 m!4561041))

(assert (=> bs!588146 m!4559829))

(declare-fun m!4561043 () Bool)

(assert (=> bs!588146 m!4561043))

(declare-fun m!4561045 () Bool)

(assert (=> bs!588146 m!4561045))

(assert (=> b!3984441 d!1179620))

(declare-fun b!3985153 () Bool)

(declare-fun e!2469935 () List!42732)

(assert (=> b!3985153 (= e!2469935 (Cons!42608 (h!48028 newSuffix!27) (++!11136 (t!331483 newSuffix!27) lt!1401474)))))

(declare-fun b!3985152 () Bool)

(assert (=> b!3985152 (= e!2469935 lt!1401474)))

(declare-fun b!3985155 () Bool)

(declare-fun lt!1401788 () List!42732)

(declare-fun e!2469934 () Bool)

(assert (=> b!3985155 (= e!2469934 (or (not (= lt!1401474 Nil!42608)) (= lt!1401788 newSuffix!27)))))

(declare-fun d!1179622 () Bool)

(assert (=> d!1179622 e!2469934))

(declare-fun res!1616066 () Bool)

(assert (=> d!1179622 (=> (not res!1616066) (not e!2469934))))

(assert (=> d!1179622 (= res!1616066 (= (content!6460 lt!1401788) ((_ map or) (content!6460 newSuffix!27) (content!6460 lt!1401474))))))

(assert (=> d!1179622 (= lt!1401788 e!2469935)))

(declare-fun c!690098 () Bool)

(assert (=> d!1179622 (= c!690098 ((_ is Nil!42608) newSuffix!27))))

(assert (=> d!1179622 (= (++!11136 newSuffix!27 lt!1401474) lt!1401788)))

(declare-fun b!3985154 () Bool)

(declare-fun res!1616065 () Bool)

(assert (=> b!3985154 (=> (not res!1616065) (not e!2469934))))

(assert (=> b!3985154 (= res!1616065 (= (size!31871 lt!1401788) (+ (size!31871 newSuffix!27) (size!31871 lt!1401474))))))

(assert (= (and d!1179622 c!690098) b!3985152))

(assert (= (and d!1179622 (not c!690098)) b!3985153))

(assert (= (and d!1179622 res!1616066) b!3985154))

(assert (= (and b!3985154 res!1616065) b!3985155))

(declare-fun m!4561047 () Bool)

(assert (=> b!3985153 m!4561047))

(declare-fun m!4561049 () Bool)

(assert (=> d!1179622 m!4561049))

(assert (=> d!1179622 m!4560995))

(assert (=> d!1179622 m!4561035))

(declare-fun m!4561051 () Bool)

(assert (=> b!3985154 m!4561051))

(assert (=> b!3985154 m!4559781))

(assert (=> b!3985154 m!4561039))

(assert (=> b!3984442 d!1179622))

(declare-fun d!1179624 () Bool)

(declare-fun lt!1401789 () List!42732)

(assert (=> d!1179624 (= (++!11136 newSuffix!27 lt!1401789) suffix!1299)))

(declare-fun e!2469936 () List!42732)

(assert (=> d!1179624 (= lt!1401789 e!2469936)))

(declare-fun c!690099 () Bool)

(assert (=> d!1179624 (= c!690099 ((_ is Cons!42608) newSuffix!27))))

(assert (=> d!1179624 (>= (size!31871 suffix!1299) (size!31871 newSuffix!27))))

(assert (=> d!1179624 (= (getSuffix!2252 suffix!1299 newSuffix!27) lt!1401789)))

(declare-fun b!3985156 () Bool)

(assert (=> b!3985156 (= e!2469936 (getSuffix!2252 (tail!6215 suffix!1299) (t!331483 newSuffix!27)))))

(declare-fun b!3985157 () Bool)

(assert (=> b!3985157 (= e!2469936 suffix!1299)))

(assert (= (and d!1179624 c!690099) b!3985156))

(assert (= (and d!1179624 (not c!690099)) b!3985157))

(declare-fun m!4561053 () Bool)

(assert (=> d!1179624 m!4561053))

(assert (=> d!1179624 m!4559779))

(assert (=> d!1179624 m!4559781))

(assert (=> b!3985156 m!4561015))

(assert (=> b!3985156 m!4561015))

(declare-fun m!4561055 () Bool)

(assert (=> b!3985156 m!4561055))

(assert (=> b!3984442 d!1179624))

(declare-fun b!3985162 () Bool)

(declare-fun e!2469939 () Bool)

(declare-fun tp!1214397 () Bool)

(assert (=> b!3985162 (= e!2469939 (and tp_is_empty!20249 tp!1214397))))

(assert (=> b!3984408 (= tp!1214339 e!2469939)))

(assert (= (and b!3984408 ((_ is Cons!42608) (t!331483 newSuffixResult!27))) b!3985162))

(declare-fun b!3985173 () Bool)

(declare-fun e!2469942 () Bool)

(assert (=> b!3985173 (= e!2469942 tp_is_empty!20249)))

(declare-fun b!3985175 () Bool)

(declare-fun tp!1214410 () Bool)

(assert (=> b!3985175 (= e!2469942 tp!1214410)))

(declare-fun b!3985174 () Bool)

(declare-fun tp!1214408 () Bool)

(declare-fun tp!1214411 () Bool)

(assert (=> b!3985174 (= e!2469942 (and tp!1214408 tp!1214411))))

(declare-fun b!3985176 () Bool)

(declare-fun tp!1214409 () Bool)

(declare-fun tp!1214412 () Bool)

(assert (=> b!3985176 (= e!2469942 (and tp!1214409 tp!1214412))))

(assert (=> b!3984414 (= tp!1214338 e!2469942)))

(assert (= (and b!3984414 ((_ is ElementMatch!11639) (regex!6734 (rule!9744 token!484)))) b!3985173))

(assert (= (and b!3984414 ((_ is Concat!18604) (regex!6734 (rule!9744 token!484)))) b!3985174))

(assert (= (and b!3984414 ((_ is Star!11639) (regex!6734 (rule!9744 token!484)))) b!3985175))

(assert (= (and b!3984414 ((_ is Union!11639) (regex!6734 (rule!9744 token!484)))) b!3985176))

(declare-fun b!3985177 () Bool)

(declare-fun e!2469943 () Bool)

(declare-fun tp!1214413 () Bool)

(assert (=> b!3985177 (= e!2469943 (and tp_is_empty!20249 tp!1214413))))

(assert (=> b!3984417 (= tp!1214342 e!2469943)))

(assert (= (and b!3984417 ((_ is Cons!42608) (t!331483 suffix!1299))) b!3985177))

(declare-fun b!3985178 () Bool)

(declare-fun e!2469944 () Bool)

(declare-fun tp!1214414 () Bool)

(assert (=> b!3985178 (= e!2469944 (and tp_is_empty!20249 tp!1214414))))

(assert (=> b!3984432 (= tp!1214345 e!2469944)))

(assert (= (and b!3984432 ((_ is Cons!42608) (t!331483 suffixResult!105))) b!3985178))

(declare-fun b!3985179 () Bool)

(declare-fun e!2469945 () Bool)

(declare-fun tp!1214415 () Bool)

(assert (=> b!3985179 (= e!2469945 (and tp_is_empty!20249 tp!1214415))))

(assert (=> b!3984416 (= tp!1214341 e!2469945)))

(assert (= (and b!3984416 ((_ is Cons!42608) (t!331483 prefix!494))) b!3985179))

(declare-fun b!3985180 () Bool)

(declare-fun e!2469946 () Bool)

(declare-fun tp!1214416 () Bool)

(assert (=> b!3985180 (= e!2469946 (and tp_is_empty!20249 tp!1214416))))

(assert (=> b!3984437 (= tp!1214344 e!2469946)))

(assert (= (and b!3984437 ((_ is Cons!42608) (originalCharacters!7334 token!484))) b!3985180))

(declare-fun b!3985191 () Bool)

(declare-fun b_free!110645 () Bool)

(declare-fun b_next!111349 () Bool)

(assert (=> b!3985191 (= b_free!110645 (not b_next!111349))))

(declare-fun tb!240053 () Bool)

(declare-fun t!331527 () Bool)

(assert (=> (and b!3985191 (= (toValue!9222 (transformation!6734 (h!48030 (t!331485 rules!2999)))) (toValue!9222 (transformation!6734 (rule!9744 token!484)))) t!331527) tb!240053))

(declare-fun result!290834 () Bool)

(assert (= result!290834 result!290780))

(assert (=> d!1179296 t!331527))

(declare-fun t!331529 () Bool)

(declare-fun tb!240055 () Bool)

(assert (=> (and b!3985191 (= (toValue!9222 (transformation!6734 (h!48030 (t!331485 rules!2999)))) (toValue!9222 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))))) t!331529) tb!240055))

(declare-fun result!290836 () Bool)

(assert (= result!290836 result!290824))

(assert (=> d!1179512 t!331529))

(declare-fun b_and!306275 () Bool)

(declare-fun tp!1214425 () Bool)

(assert (=> b!3985191 (= tp!1214425 (and (=> t!331527 result!290834) (=> t!331529 result!290836) b_and!306275))))

(declare-fun b_free!110647 () Bool)

(declare-fun b_next!111351 () Bool)

(assert (=> b!3985191 (= b_free!110647 (not b_next!111351))))

(declare-fun tb!240057 () Bool)

(declare-fun t!331531 () Bool)

(assert (=> (and b!3985191 (= (toChars!9081 (transformation!6734 (h!48030 (t!331485 rules!2999)))) (toChars!9081 (transformation!6734 (rule!9744 token!484)))) t!331531) tb!240057))

(declare-fun result!290838 () Bool)

(assert (= result!290838 result!290814))

(assert (=> d!1179476 t!331531))

(declare-fun t!331533 () Bool)

(declare-fun tb!240059 () Bool)

(assert (=> (and b!3985191 (= (toChars!9081 (transformation!6734 (h!48030 (t!331485 rules!2999)))) (toChars!9081 (transformation!6734 (rule!9744 (_1!24046 (v!39497 lt!1401497)))))) t!331533) tb!240059))

(declare-fun result!290840 () Bool)

(assert (= result!290840 result!290820))

(assert (=> d!1179490 t!331533))

(assert (=> b!3985082 t!331531))

(declare-fun b_and!306277 () Bool)

(declare-fun tp!1214428 () Bool)

(assert (=> b!3985191 (= tp!1214428 (and (=> t!331531 result!290838) (=> t!331533 result!290840) b_and!306277))))

(declare-fun e!2469956 () Bool)

(assert (=> b!3985191 (= e!2469956 (and tp!1214425 tp!1214428))))

(declare-fun e!2469957 () Bool)

(declare-fun b!3985190 () Bool)

(declare-fun tp!1214426 () Bool)

(assert (=> b!3985190 (= e!2469957 (and tp!1214426 (inv!56913 (tag!7594 (h!48030 (t!331485 rules!2999)))) (inv!56916 (transformation!6734 (h!48030 (t!331485 rules!2999)))) e!2469956))))

(declare-fun b!3985189 () Bool)

(declare-fun e!2469955 () Bool)

(declare-fun tp!1214427 () Bool)

(assert (=> b!3985189 (= e!2469955 (and e!2469957 tp!1214427))))

(assert (=> b!3984411 (= tp!1214346 e!2469955)))

(assert (= b!3985190 b!3985191))

(assert (= b!3985189 b!3985190))

(assert (= (and b!3984411 ((_ is Cons!42610) (t!331485 rules!2999))) b!3985189))

(declare-fun m!4561057 () Bool)

(assert (=> b!3985190 m!4561057))

(declare-fun m!4561059 () Bool)

(assert (=> b!3985190 m!4561059))

(declare-fun b!3985192 () Bool)

(declare-fun e!2469959 () Bool)

(declare-fun tp!1214429 () Bool)

(assert (=> b!3985192 (= e!2469959 (and tp_is_empty!20249 tp!1214429))))

(assert (=> b!3984443 (= tp!1214340 e!2469959)))

(assert (= (and b!3984443 ((_ is Cons!42608) (t!331483 newSuffix!27))) b!3985192))

(declare-fun b!3985193 () Bool)

(declare-fun e!2469960 () Bool)

(assert (=> b!3985193 (= e!2469960 tp_is_empty!20249)))

(declare-fun b!3985195 () Bool)

(declare-fun tp!1214432 () Bool)

(assert (=> b!3985195 (= e!2469960 tp!1214432)))

(declare-fun b!3985194 () Bool)

(declare-fun tp!1214430 () Bool)

(declare-fun tp!1214433 () Bool)

(assert (=> b!3985194 (= e!2469960 (and tp!1214430 tp!1214433))))

(declare-fun b!3985196 () Bool)

(declare-fun tp!1214431 () Bool)

(declare-fun tp!1214434 () Bool)

(assert (=> b!3985196 (= e!2469960 (and tp!1214431 tp!1214434))))

(assert (=> b!3984410 (= tp!1214334 e!2469960)))

(assert (= (and b!3984410 ((_ is ElementMatch!11639) (regex!6734 (h!48030 rules!2999)))) b!3985193))

(assert (= (and b!3984410 ((_ is Concat!18604) (regex!6734 (h!48030 rules!2999)))) b!3985194))

(assert (= (and b!3984410 ((_ is Star!11639) (regex!6734 (h!48030 rules!2999)))) b!3985195))

(assert (= (and b!3984410 ((_ is Union!11639) (regex!6734 (h!48030 rules!2999)))) b!3985196))

(declare-fun b_lambda!116393 () Bool)

(assert (= b_lambda!116385 (or (and b!3984422 b_free!110635) (and b!3984446 b_free!110639 (= (toChars!9081 (transformation!6734 (h!48030 rules!2999))) (toChars!9081 (transformation!6734 (rule!9744 token!484))))) (and b!3985191 b_free!110647 (= (toChars!9081 (transformation!6734 (h!48030 (t!331485 rules!2999)))) (toChars!9081 (transformation!6734 (rule!9744 token!484))))) b_lambda!116393)))

(declare-fun b_lambda!116395 () Bool)

(assert (= b_lambda!116391 (or (and b!3984422 b_free!110635) (and b!3984446 b_free!110639 (= (toChars!9081 (transformation!6734 (h!48030 rules!2999))) (toChars!9081 (transformation!6734 (rule!9744 token!484))))) (and b!3985191 b_free!110647 (= (toChars!9081 (transformation!6734 (h!48030 (t!331485 rules!2999)))) (toChars!9081 (transformation!6734 (rule!9744 token!484))))) b_lambda!116395)))

(declare-fun b_lambda!116397 () Bool)

(assert (= b_lambda!116369 (or (and b!3984422 b_free!110633) (and b!3984446 b_free!110637 (= (toValue!9222 (transformation!6734 (h!48030 rules!2999))) (toValue!9222 (transformation!6734 (rule!9744 token!484))))) (and b!3985191 b_free!110645 (= (toValue!9222 (transformation!6734 (h!48030 (t!331485 rules!2999)))) (toValue!9222 (transformation!6734 (rule!9744 token!484))))) b_lambda!116397)))

(check-sat (not b!3984875) tp_is_empty!20249 (not b!3985067) (not d!1179476) (not d!1179542) (not b_lambda!116395) (not d!1179580) (not d!1179612) (not b!3984932) (not d!1179462) (not b!3984929) (not b!3984928) (not d!1179464) (not b!3985177) (not b!3984885) (not b!3984989) (not b!3984747) (not b!3985092) (not b!3984580) (not d!1179478) (not d!1179572) (not b!3985049) (not d!1179510) (not b!3984954) (not b!3985156) (not d!1179598) (not b!3985113) (not d!1179596) (not d!1179460) (not d!1179588) (not b!3985009) (not b!3985131) (not b!3985059) (not d!1179570) (not b!3985093) (not d!1179604) (not b!3984918) (not b!3985176) (not b!3985196) (not b!3984865) (not d!1179482) (not b!3985132) (not b!3985153) (not b!3985002) (not b!3984886) (not d!1179536) (not d!1179506) (not b!3984958) (not d!1179558) b_and!306267 (not b!3984895) (not b!3985109) (not b!3985095) (not b!3985019) (not b!3984578) (not b!3985060) (not b!3985146) (not b!3985008) (not b_next!111351) (not b!3985178) (not d!1179290) (not d!1179622) (not d!1179442) (not b!3985017) (not b!3984943) (not b!3985119) (not b_next!111339) (not b!3984991) (not b!3985055) (not b!3985088) (not b!3984904) (not b!3984927) (not d!1179516) (not b!3984983) (not b!3985014) (not b!3984744) (not d!1179288) (not b!3984955) (not d!1179436) (not tb!240049) (not bm!285759) (not d!1179568) (not b!3984882) (not b!3984995) (not b!3985057) (not b!3985175) (not b!3985122) (not b!3984980) (not b!3985082) (not d!1179576) (not b!3985195) (not b!3985013) (not b!3985174) (not b!3984887) (not d!1179618) (not b!3984893) (not tb!240017) (not b!3985012) (not b_lambda!116387) (not b!3985083) (not b!3985139) (not b!3984999) (not b!3984751) (not d!1179488) (not b!3985189) (not b!3985100) (not b!3984987) (not b!3985145) (not b_next!111337) (not d!1179574) (not b!3985063) (not d!1179600) (not b!3985142) (not d!1179582) (not b_lambda!116389) (not d!1179584) (not d!1179508) (not b!3985117) (not d!1179550) (not b!3984748) (not d!1179498) (not b!3985102) (not b!3985190) (not b!3985141) (not b!3985104) (not b_next!111343) (not b!3984984) (not b!3984979) (not b_next!111349) (not b!3984945) (not d!1179502) (not b!3985107) (not b!3984925) (not b!3985135) (not b!3985110) (not b!3984922) (not b!3985075) (not b!3985112) (not b!3984749) (not bm!285762) (not b!3985129) (not b!3985068) (not b!3985162) (not d!1179526) (not b_next!111341) (not b_lambda!116397) b_and!306277 (not b!3984993) (not d!1179474) (not d!1179504) (not b!3984902) (not b!3984950) (not b!3984992) (not b!3985091) (not d!1179620) (not d!1179624) (not b!3984941) (not d!1179606) (not b!3984952) (not b!3985072) (not bm!285763) (not b!3985154) (not b!3984917) (not b!3985099) (not b!3984938) (not b_lambda!116393) (not b!3984985) (not d!1179522) (not b!3984903) (not b!3984931) (not b!3985085) (not d!1179330) (not d!1179468) (not d!1179540) (not b!3985071) (not b!3984876) (not d!1179554) (not b!3985194) (not b!3985105) (not b!3985065) (not d!1179494) (not b!3985004) (not d!1179578) (not b!3985180) (not b!3985192) (not d!1179594) (not b!3985015) (not b!3985006) (not d!1179564) b_and!306269 (not b!3985108) (not b!3984998) (not d!1179492) (not d!1179528) (not b!3985096) (not d!1179532) (not b!3984988) (not b!3985053) (not b!3984915) (not b!3985086) (not b!3985097) (not d!1179538) (not b!3984923) (not b!3985010) (not tb!240045) (not b!3984977) b_and!306271 (not b!3984750) (not d!1179490) (not b!3985064) (not b!3984996) (not b!3984900) (not b!3985120) (not b!3984951) (not b!3985143) (not b!3985076) (not d!1179602) (not tb!240041) (not b!3985150) (not b!3985103) (not b!3985136) (not b!3985179) (not b!3985149) (not d!1179608) (not d!1179496) (not d!1179610) (not b!3984746) (not b!3984579) (not b!3984942) (not d!1179518) (not b!3985005) (not b!3984982) (not b!3984752) (not b!3984924) (not b!3985101) (not b!3984920) b_and!306273 (not b!3984978) (not d!1179616) b_and!306275 (not b!3984926) (not b!3984948))
(check-sat b_and!306267 (not b_next!111351) (not b_next!111339) (not b_next!111337) (not b_next!111341) b_and!306277 b_and!306269 b_and!306271 b_and!306273 b_and!306275 (not b_next!111343) (not b_next!111349))
