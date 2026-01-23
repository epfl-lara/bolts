; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49784 () Bool)

(assert start!49784)

(declare-fun b!538524 () Bool)

(declare-fun b_free!14793 () Bool)

(declare-fun b_next!14809 () Bool)

(assert (=> b!538524 (= b_free!14793 (not b_next!14809))))

(declare-fun tp!171698 () Bool)

(declare-fun b_and!52667 () Bool)

(assert (=> b!538524 (= tp!171698 b_and!52667)))

(declare-fun b_free!14795 () Bool)

(declare-fun b_next!14811 () Bool)

(assert (=> b!538524 (= b_free!14795 (not b_next!14811))))

(declare-fun tp!171699 () Bool)

(declare-fun b_and!52669 () Bool)

(assert (=> b!538524 (= tp!171699 b_and!52669)))

(declare-fun b!538497 () Bool)

(declare-fun b_free!14797 () Bool)

(declare-fun b_next!14813 () Bool)

(assert (=> b!538497 (= b_free!14797 (not b_next!14813))))

(declare-fun tp!171702 () Bool)

(declare-fun b_and!52671 () Bool)

(assert (=> b!538497 (= tp!171702 b_and!52671)))

(declare-fun b_free!14799 () Bool)

(declare-fun b_next!14815 () Bool)

(assert (=> b!538497 (= b_free!14799 (not b_next!14815))))

(declare-fun tp!171704 () Bool)

(declare-fun b_and!52673 () Bool)

(assert (=> b!538497 (= tp!171704 b_and!52673)))

(declare-fun b!538494 () Bool)

(declare-fun e!324993 () Bool)

(declare-fun e!324999 () Bool)

(declare-fun tp!171703 () Bool)

(assert (=> b!538494 (= e!324993 (and e!324999 tp!171703))))

(declare-fun b!538495 () Bool)

(declare-fun e!325002 () Bool)

(declare-fun e!325010 () Bool)

(assert (=> b!538495 (= e!325002 e!325010)))

(declare-fun res!228356 () Bool)

(assert (=> b!538495 (=> res!228356 e!325010)))

(declare-fun lt!223394 () Int)

(declare-fun lt!223378 () Int)

(assert (=> b!538495 (= res!228356 (>= lt!223394 lt!223378))))

(declare-fun e!325008 () Bool)

(assert (=> b!538495 e!325008))

(declare-fun res!228360 () Bool)

(assert (=> b!538495 (=> (not res!228360) (not e!325008))))

(declare-datatypes ((C!3528 0))(
  ( (C!3529 (val!1990 Int)) )
))
(declare-datatypes ((List!5247 0))(
  ( (Nil!5237) (Cons!5237 (h!10638 C!3528) (t!74296 List!5247)) )
))
(declare-fun suffix!1342 () List!5247)

(declare-datatypes ((Regex!1303 0))(
  ( (ElementMatch!1303 (c!102224 C!3528)) (Concat!2296 (regOne!3118 Regex!1303) (regTwo!3118 Regex!1303)) (EmptyExpr!1303) (Star!1303 (reg!1632 Regex!1303)) (EmptyLang!1303) (Union!1303 (regOne!3119 Regex!1303) (regTwo!3119 Regex!1303)) )
))
(declare-datatypes ((List!5248 0))(
  ( (Nil!5238) (Cons!5238 (h!10639 (_ BitVec 16)) (t!74297 List!5248)) )
))
(declare-datatypes ((TokenValue!993 0))(
  ( (FloatLiteralValue!1986 (text!7396 List!5248)) (TokenValueExt!992 (__x!3884 Int)) (Broken!4965 (value!32457 List!5248)) (Object!1002) (End!993) (Def!993) (Underscore!993) (Match!993) (Else!993) (Error!993) (Case!993) (If!993) (Extends!993) (Abstract!993) (Class!993) (Val!993) (DelimiterValue!1986 (del!1053 List!5248)) (KeywordValue!999 (value!32458 List!5248)) (CommentValue!1986 (value!32459 List!5248)) (WhitespaceValue!1986 (value!32460 List!5248)) (IndentationValue!993 (value!32461 List!5248)) (String!6708) (Int32!993) (Broken!4966 (value!32462 List!5248)) (Boolean!994) (Unit!9152) (OperatorValue!996 (op!1053 List!5248)) (IdentifierValue!1986 (value!32463 List!5248)) (IdentifierValue!1987 (value!32464 List!5248)) (WhitespaceValue!1987 (value!32465 List!5248)) (True!1986) (False!1986) (Broken!4967 (value!32466 List!5248)) (Broken!4968 (value!32467 List!5248)) (True!1987) (RightBrace!993) (RightBracket!993) (Colon!993) (Null!993) (Comma!993) (LeftBracket!993) (False!1987) (LeftBrace!993) (ImaginaryLiteralValue!993 (text!7397 List!5248)) (StringLiteralValue!2979 (value!32468 List!5248)) (EOFValue!993 (value!32469 List!5248)) (IdentValue!993 (value!32470 List!5248)) (DelimiterValue!1987 (value!32471 List!5248)) (DedentValue!993 (value!32472 List!5248)) (NewLineValue!993 (value!32473 List!5248)) (IntegerValue!2979 (value!32474 (_ BitVec 32)) (text!7398 List!5248)) (IntegerValue!2980 (value!32475 Int) (text!7399 List!5248)) (Times!993) (Or!993) (Equal!993) (Minus!993) (Broken!4969 (value!32476 List!5248)) (And!993) (Div!993) (LessEqual!993) (Mod!993) (Concat!2297) (Not!993) (Plus!993) (SpaceValue!993 (value!32477 List!5248)) (IntegerValue!2981 (value!32478 Int) (text!7400 List!5248)) (StringLiteralValue!2980 (text!7401 List!5248)) (FloatLiteralValue!1987 (text!7402 List!5248)) (BytesLiteralValue!993 (value!32479 List!5248)) (CommentValue!1987 (value!32480 List!5248)) (StringLiteralValue!2981 (value!32481 List!5248)) (ErrorTokenValue!993 (msg!1054 List!5248)) )
))
(declare-datatypes ((String!6709 0))(
  ( (String!6710 (value!32482 String)) )
))
(declare-datatypes ((IArray!3373 0))(
  ( (IArray!3374 (innerList!1744 List!5247)) )
))
(declare-datatypes ((Conc!1686 0))(
  ( (Node!1686 (left!4375 Conc!1686) (right!4705 Conc!1686) (csize!3602 Int) (cheight!1897 Int)) (Leaf!2678 (xs!4323 IArray!3373) (csize!3603 Int)) (Empty!1686) )
))
(declare-datatypes ((BalanceConc!3380 0))(
  ( (BalanceConc!3381 (c!102225 Conc!1686)) )
))
(declare-datatypes ((TokenValueInjection!1754 0))(
  ( (TokenValueInjection!1755 (toValue!1816 Int) (toChars!1675 Int)) )
))
(declare-datatypes ((Rule!1738 0))(
  ( (Rule!1739 (regex!969 Regex!1303) (tag!1231 String!6709) (isSeparator!969 Bool) (transformation!969 TokenValueInjection!1754)) )
))
(declare-datatypes ((Token!1674 0))(
  ( (Token!1675 (value!32483 TokenValue!993) (rule!1677 Rule!1738) (size!4214 Int) (originalCharacters!1008 List!5247)) )
))
(declare-fun token!491 () Token!1674)

(declare-datatypes ((LexerInterface!855 0))(
  ( (LexerInterfaceExt!852 (__x!3885 Int)) (Lexer!853) )
))
(declare-fun thiss!22590 () LexerInterface!855)

(declare-fun lt!223380 () List!5247)

(declare-fun lt!223387 () List!5247)

(declare-fun lt!223372 () TokenValue!993)

(declare-datatypes ((tuple2!6308 0))(
  ( (tuple2!6309 (_1!3418 Token!1674) (_2!3418 List!5247)) )
))
(declare-datatypes ((Option!1319 0))(
  ( (None!1318) (Some!1318 (v!16127 tuple2!6308)) )
))
(declare-fun maxPrefixOneRule!268 (LexerInterface!855 Rule!1738 List!5247) Option!1319)

(assert (=> b!538495 (= res!228360 (= (maxPrefixOneRule!268 thiss!22590 (rule!1677 token!491) lt!223387) (Some!1318 (tuple2!6309 (Token!1675 lt!223372 (rule!1677 token!491) lt!223378 lt!223380) suffix!1342))))))

(declare-datatypes ((List!5249 0))(
  ( (Nil!5239) (Cons!5239 (h!10640 Rule!1738) (t!74298 List!5249)) )
))
(declare-fun rules!3103 () List!5249)

(declare-datatypes ((Unit!9153 0))(
  ( (Unit!9154) )
))
(declare-fun lt!223374 () Unit!9153)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!20 (LexerInterface!855 List!5249 List!5247 List!5247 List!5247 Rule!1738) Unit!9153)

(assert (=> b!538495 (= lt!223374 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!20 thiss!22590 rules!3103 lt!223380 lt!223387 suffix!1342 (rule!1677 token!491)))))

(declare-fun lt!223384 () List!5247)

(declare-fun input!2705 () List!5247)

(declare-fun lt!223386 () Option!1319)

(declare-fun lt!223395 () TokenValue!993)

(assert (=> b!538495 (= (maxPrefixOneRule!268 thiss!22590 (rule!1677 (_1!3418 (v!16127 lt!223386))) input!2705) (Some!1318 (tuple2!6309 (Token!1675 lt!223395 (rule!1677 (_1!3418 (v!16127 lt!223386))) lt!223394 lt!223384) (_2!3418 (v!16127 lt!223386)))))))

(declare-fun lt!223398 () Unit!9153)

(assert (=> b!538495 (= lt!223398 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!20 thiss!22590 rules!3103 lt!223384 input!2705 (_2!3418 (v!16127 lt!223386)) (rule!1677 (_1!3418 (v!16127 lt!223386)))))))

(declare-fun e!325004 () Bool)

(assert (=> b!538495 e!325004))

(declare-fun res!228348 () Bool)

(assert (=> b!538495 (=> (not res!228348) (not e!325004))))

(assert (=> b!538495 (= res!228348 (= (value!32483 token!491) lt!223372))))

(declare-fun apply!1244 (TokenValueInjection!1754 BalanceConc!3380) TokenValue!993)

(declare-fun seqFromList!1167 (List!5247) BalanceConc!3380)

(assert (=> b!538495 (= lt!223372 (apply!1244 (transformation!969 (rule!1677 token!491)) (seqFromList!1167 lt!223380)))))

(declare-fun lt!223371 () List!5247)

(assert (=> b!538495 (= suffix!1342 lt!223371)))

(declare-fun lt!223396 () Unit!9153)

(declare-fun lemmaSamePrefixThenSameSuffix!338 (List!5247 List!5247 List!5247 List!5247 List!5247) Unit!9153)

(assert (=> b!538495 (= lt!223396 (lemmaSamePrefixThenSameSuffix!338 lt!223380 suffix!1342 lt!223380 lt!223371 lt!223387))))

(declare-fun getSuffix!134 (List!5247 List!5247) List!5247)

(assert (=> b!538495 (= lt!223371 (getSuffix!134 lt!223387 lt!223380))))

(declare-fun e!324990 () Bool)

(assert (=> b!538497 (= e!324990 (and tp!171702 tp!171704))))

(declare-fun b!538498 () Bool)

(declare-fun e!324994 () Bool)

(declare-fun tp_is_empty!2961 () Bool)

(declare-fun tp!171695 () Bool)

(assert (=> b!538498 (= e!324994 (and tp_is_empty!2961 tp!171695))))

(declare-fun b!538499 () Bool)

(declare-fun e!325012 () Bool)

(declare-fun e!325005 () Bool)

(assert (=> b!538499 (= e!325012 e!325005)))

(declare-fun res!228341 () Bool)

(assert (=> b!538499 (=> (not res!228341) (not e!325005))))

(declare-fun lt!223381 () tuple2!6308)

(assert (=> b!538499 (= res!228341 (and (= (_1!3418 lt!223381) token!491) (= (_2!3418 lt!223381) suffix!1342)))))

(declare-fun lt!223379 () Option!1319)

(declare-fun get!1968 (Option!1319) tuple2!6308)

(assert (=> b!538499 (= lt!223381 (get!1968 lt!223379))))

(declare-fun b!538500 () Bool)

(declare-fun res!228357 () Bool)

(assert (=> b!538500 (=> res!228357 e!325010)))

(declare-fun isPrefix!611 (List!5247 List!5247) Bool)

(assert (=> b!538500 (= res!228357 (not (isPrefix!611 lt!223380 input!2705)))))

(declare-fun b!538501 () Bool)

(declare-fun e!324996 () Bool)

(assert (=> b!538501 (= e!324996 (not e!325002))))

(declare-fun res!228353 () Bool)

(assert (=> b!538501 (=> res!228353 e!325002)))

(declare-fun lt!223377 () List!5247)

(assert (=> b!538501 (= res!228353 (not (isPrefix!611 input!2705 lt!223377)))))

(assert (=> b!538501 (isPrefix!611 lt!223380 lt!223377)))

(declare-fun lt!223390 () Unit!9153)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!462 (List!5247 List!5247) Unit!9153)

(assert (=> b!538501 (= lt!223390 (lemmaConcatTwoListThenFirstIsPrefix!462 lt!223380 suffix!1342))))

(assert (=> b!538501 (isPrefix!611 input!2705 lt!223387)))

(declare-fun lt!223397 () Unit!9153)

(assert (=> b!538501 (= lt!223397 (lemmaConcatTwoListThenFirstIsPrefix!462 input!2705 suffix!1342))))

(declare-fun e!324989 () Bool)

(assert (=> b!538501 e!324989))

(declare-fun res!228362 () Bool)

(assert (=> b!538501 (=> (not res!228362) (not e!324989))))

(assert (=> b!538501 (= res!228362 (= (value!32483 (_1!3418 (v!16127 lt!223386))) lt!223395))))

(assert (=> b!538501 (= lt!223395 (apply!1244 (transformation!969 (rule!1677 (_1!3418 (v!16127 lt!223386)))) (seqFromList!1167 lt!223384)))))

(declare-fun lt!223399 () Unit!9153)

(declare-fun lemmaInv!117 (TokenValueInjection!1754) Unit!9153)

(assert (=> b!538501 (= lt!223399 (lemmaInv!117 (transformation!969 (rule!1677 token!491))))))

(declare-fun lt!223370 () Unit!9153)

(assert (=> b!538501 (= lt!223370 (lemmaInv!117 (transformation!969 (rule!1677 (_1!3418 (v!16127 lt!223386))))))))

(declare-fun ruleValid!189 (LexerInterface!855 Rule!1738) Bool)

(assert (=> b!538501 (ruleValid!189 thiss!22590 (rule!1677 token!491))))

(declare-fun lt!223369 () Unit!9153)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!48 (LexerInterface!855 Rule!1738 List!5249) Unit!9153)

(assert (=> b!538501 (= lt!223369 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!48 thiss!22590 (rule!1677 token!491) rules!3103))))

(assert (=> b!538501 (ruleValid!189 thiss!22590 (rule!1677 (_1!3418 (v!16127 lt!223386))))))

(declare-fun lt!223375 () Unit!9153)

(assert (=> b!538501 (= lt!223375 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!48 thiss!22590 (rule!1677 (_1!3418 (v!16127 lt!223386))) rules!3103))))

(assert (=> b!538501 (isPrefix!611 input!2705 input!2705)))

(declare-fun lt!223391 () Unit!9153)

(declare-fun lemmaIsPrefixRefl!351 (List!5247 List!5247) Unit!9153)

(assert (=> b!538501 (= lt!223391 (lemmaIsPrefixRefl!351 input!2705 input!2705))))

(declare-fun lt!223376 () List!5247)

(assert (=> b!538501 (= (_2!3418 (v!16127 lt!223386)) lt!223376)))

(declare-fun lt!223373 () Unit!9153)

(assert (=> b!538501 (= lt!223373 (lemmaSamePrefixThenSameSuffix!338 lt!223384 (_2!3418 (v!16127 lt!223386)) lt!223384 lt!223376 input!2705))))

(assert (=> b!538501 (= lt!223376 (getSuffix!134 input!2705 lt!223384))))

(declare-fun lt!223393 () List!5247)

(assert (=> b!538501 (isPrefix!611 lt!223384 lt!223393)))

(declare-fun ++!1457 (List!5247 List!5247) List!5247)

(assert (=> b!538501 (= lt!223393 (++!1457 lt!223384 (_2!3418 (v!16127 lt!223386))))))

(declare-fun lt!223382 () Unit!9153)

(assert (=> b!538501 (= lt!223382 (lemmaConcatTwoListThenFirstIsPrefix!462 lt!223384 (_2!3418 (v!16127 lt!223386))))))

(declare-fun lt!223383 () Unit!9153)

(declare-fun lemmaCharactersSize!48 (Token!1674) Unit!9153)

(assert (=> b!538501 (= lt!223383 (lemmaCharactersSize!48 token!491))))

(declare-fun lt!223392 () Unit!9153)

(assert (=> b!538501 (= lt!223392 (lemmaCharactersSize!48 (_1!3418 (v!16127 lt!223386))))))

(declare-fun lt!223388 () Unit!9153)

(declare-fun e!325007 () Unit!9153)

(assert (=> b!538501 (= lt!223388 e!325007)))

(declare-fun c!102223 () Bool)

(assert (=> b!538501 (= c!102223 (> lt!223394 lt!223378))))

(declare-fun size!4215 (List!5247) Int)

(assert (=> b!538501 (= lt!223378 (size!4215 lt!223380))))

(assert (=> b!538501 (= lt!223394 (size!4215 lt!223384))))

(declare-fun list!2177 (BalanceConc!3380) List!5247)

(declare-fun charsOf!598 (Token!1674) BalanceConc!3380)

(assert (=> b!538501 (= lt!223384 (list!2177 (charsOf!598 (_1!3418 (v!16127 lt!223386)))))))

(declare-fun lt!223389 () tuple2!6308)

(assert (=> b!538501 (= lt!223386 (Some!1318 lt!223389))))

(assert (=> b!538501 (= lt!223389 (tuple2!6309 (_1!3418 (v!16127 lt!223386)) (_2!3418 (v!16127 lt!223386))))))

(declare-fun lt!223385 () Unit!9153)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!54 (List!5247 List!5247 List!5247 List!5247) Unit!9153)

(assert (=> b!538501 (= lt!223385 (lemmaConcatSameAndSameSizesThenSameLists!54 lt!223380 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!538502 () Bool)

(declare-fun res!228343 () Bool)

(assert (=> b!538502 (=> res!228343 e!325010)))

(declare-fun contains!1213 (List!5249 Rule!1738) Bool)

(assert (=> b!538502 (= res!228343 (not (contains!1213 rules!3103 (rule!1677 token!491))))))

(declare-fun b!538503 () Bool)

(declare-fun res!228340 () Bool)

(assert (=> b!538503 (=> (not res!228340) (not e!325004))))

(assert (=> b!538503 (= res!228340 (= (size!4214 token!491) (size!4215 (originalCharacters!1008 token!491))))))

(declare-fun b!538504 () Bool)

(assert (=> b!538504 (= e!325004 (and (= (size!4214 token!491) lt!223378) (= (originalCharacters!1008 token!491) lt!223380) (= (tuple2!6309 token!491 suffix!1342) (tuple2!6309 (Token!1675 lt!223372 (rule!1677 token!491) lt!223378 lt!223380) lt!223371))))))

(declare-fun b!538505 () Bool)

(declare-fun res!228345 () Bool)

(declare-fun e!325006 () Bool)

(assert (=> b!538505 (=> (not res!228345) (not e!325006))))

(declare-fun isEmpty!3786 (List!5247) Bool)

(assert (=> b!538505 (= res!228345 (not (isEmpty!3786 input!2705)))))

(declare-fun b!538506 () Bool)

(declare-fun e!325000 () Bool)

(declare-fun tp!171701 () Bool)

(assert (=> b!538506 (= e!325000 (and tp_is_empty!2961 tp!171701))))

(declare-fun res!228344 () Bool)

(assert (=> start!49784 (=> (not res!228344) (not e!325006))))

(get-info :version)

(assert (=> start!49784 (= res!228344 ((_ is Lexer!853) thiss!22590))))

(assert (=> start!49784 e!325006))

(assert (=> start!49784 e!325000))

(assert (=> start!49784 e!324993))

(declare-fun e!324988 () Bool)

(declare-fun inv!6575 (Token!1674) Bool)

(assert (=> start!49784 (and (inv!6575 token!491) e!324988)))

(assert (=> start!49784 true))

(assert (=> start!49784 e!324994))

(declare-fun tp!171700 () Bool)

(declare-fun e!325011 () Bool)

(declare-fun b!538496 () Bool)

(declare-fun inv!21 (TokenValue!993) Bool)

(assert (=> b!538496 (= e!324988 (and (inv!21 (value!32483 token!491)) e!325011 tp!171700))))

(declare-fun b!538507 () Bool)

(declare-fun e!325009 () Bool)

(declare-fun e!324992 () Bool)

(assert (=> b!538507 (= e!325009 e!324992)))

(declare-fun res!228354 () Bool)

(assert (=> b!538507 (=> (not res!228354) (not e!324992))))

(declare-fun isDefined!1131 (Option!1319) Bool)

(assert (=> b!538507 (= res!228354 (isDefined!1131 lt!223386))))

(declare-fun b!538508 () Bool)

(declare-fun e!324991 () Bool)

(assert (=> b!538508 (= e!324991 e!325012)))

(declare-fun res!228339 () Bool)

(assert (=> b!538508 (=> (not res!228339) (not e!325012))))

(assert (=> b!538508 (= res!228339 (isDefined!1131 lt!223379))))

(declare-fun maxPrefix!553 (LexerInterface!855 List!5249 List!5247) Option!1319)

(assert (=> b!538508 (= lt!223379 (maxPrefix!553 thiss!22590 rules!3103 lt!223387))))

(assert (=> b!538508 (= lt!223387 (++!1457 input!2705 suffix!1342))))

(declare-fun b!538509 () Bool)

(assert (=> b!538509 (= e!325010 (>= (size!4215 input!2705) lt!223394))))

(declare-fun b!538510 () Bool)

(declare-fun res!228349 () Bool)

(assert (=> b!538510 (=> (not res!228349) (not e!325006))))

(declare-fun isEmpty!3787 (List!5249) Bool)

(assert (=> b!538510 (= res!228349 (not (isEmpty!3787 rules!3103)))))

(declare-fun b!538511 () Bool)

(assert (=> b!538511 (= e!324992 (= (_1!3418 (get!1968 lt!223386)) (_1!3418 (v!16127 lt!223386))))))

(declare-fun b!538512 () Bool)

(assert (=> b!538512 (= e!325006 e!324991)))

(declare-fun res!228342 () Bool)

(assert (=> b!538512 (=> (not res!228342) (not e!324991))))

(assert (=> b!538512 (= res!228342 (= lt!223380 input!2705))))

(assert (=> b!538512 (= lt!223380 (list!2177 (charsOf!598 token!491)))))

(declare-fun b!538513 () Bool)

(declare-fun res!228351 () Bool)

(assert (=> b!538513 (=> res!228351 e!325010)))

(assert (=> b!538513 (= res!228351 (not (isPrefix!611 lt!223384 input!2705)))))

(declare-fun b!538514 () Bool)

(declare-fun res!228346 () Bool)

(assert (=> b!538514 (=> (not res!228346) (not e!325006))))

(declare-fun rulesInvariant!818 (LexerInterface!855 List!5249) Bool)

(assert (=> b!538514 (= res!228346 (rulesInvariant!818 thiss!22590 rules!3103))))

(declare-fun e!324997 () Bool)

(declare-fun tp!171697 () Bool)

(declare-fun b!538515 () Bool)

(declare-fun inv!6572 (String!6709) Bool)

(declare-fun inv!6576 (TokenValueInjection!1754) Bool)

(assert (=> b!538515 (= e!324999 (and tp!171697 (inv!6572 (tag!1231 (h!10640 rules!3103))) (inv!6576 (transformation!969 (h!10640 rules!3103))) e!324997))))

(declare-fun b!538516 () Bool)

(assert (=> b!538516 (= e!324989 (and (= (size!4214 (_1!3418 (v!16127 lt!223386))) lt!223394) (= (originalCharacters!1008 (_1!3418 (v!16127 lt!223386))) lt!223384) (= lt!223389 (tuple2!6309 (Token!1675 lt!223395 (rule!1677 (_1!3418 (v!16127 lt!223386))) lt!223394 lt!223384) lt!223376))))))

(declare-fun b!538517 () Bool)

(declare-fun e!324995 () Bool)

(assert (=> b!538517 (= e!325005 e!324995)))

(declare-fun res!228359 () Bool)

(assert (=> b!538517 (=> (not res!228359) (not e!324995))))

(assert (=> b!538517 (= res!228359 ((_ is Some!1318) lt!223386))))

(assert (=> b!538517 (= lt!223386 (maxPrefix!553 thiss!22590 rules!3103 input!2705))))

(declare-fun b!538518 () Bool)

(declare-fun Unit!9155 () Unit!9153)

(assert (=> b!538518 (= e!325007 Unit!9155)))

(declare-fun b!538519 () Bool)

(declare-fun res!228355 () Bool)

(assert (=> b!538519 (=> res!228355 e!325010)))

(assert (=> b!538519 (= res!228355 (not (= (getSuffix!134 input!2705 input!2705) Nil!5237)))))

(declare-fun b!538520 () Bool)

(assert (=> b!538520 (= e!324995 e!324996)))

(declare-fun res!228361 () Bool)

(assert (=> b!538520 (=> (not res!228361) (not e!324996))))

(assert (=> b!538520 (= res!228361 (= lt!223377 lt!223387))))

(assert (=> b!538520 (= lt!223377 (++!1457 lt!223380 suffix!1342))))

(declare-fun b!538521 () Bool)

(declare-fun res!228347 () Bool)

(assert (=> b!538521 (=> (not res!228347) (not e!324989))))

(assert (=> b!538521 (= res!228347 (= (size!4214 (_1!3418 (v!16127 lt!223386))) (size!4215 (originalCharacters!1008 (_1!3418 (v!16127 lt!223386))))))))

(declare-fun b!538522 () Bool)

(declare-fun tp!171696 () Bool)

(assert (=> b!538522 (= e!325011 (and tp!171696 (inv!6572 (tag!1231 (rule!1677 token!491))) (inv!6576 (transformation!969 (rule!1677 token!491))) e!324990))))

(declare-fun b!538523 () Bool)

(declare-fun res!228352 () Bool)

(assert (=> b!538523 (=> res!228352 e!325010)))

(assert (=> b!538523 (= res!228352 (not (= lt!223393 input!2705)))))

(assert (=> b!538524 (= e!324997 (and tp!171698 tp!171699))))

(declare-fun b!538525 () Bool)

(assert (=> b!538525 (= e!325008 e!325009)))

(declare-fun res!228350 () Bool)

(assert (=> b!538525 (=> res!228350 e!325009)))

(assert (=> b!538525 (= res!228350 (>= lt!223394 lt!223378))))

(declare-fun b!538526 () Bool)

(declare-fun Unit!9156 () Unit!9153)

(assert (=> b!538526 (= e!325007 Unit!9156)))

(assert (=> b!538526 false))

(declare-fun b!538527 () Bool)

(declare-fun res!228358 () Bool)

(assert (=> b!538527 (=> res!228358 e!325010)))

(declare-fun matchR!462 (Regex!1303 List!5247) Bool)

(assert (=> b!538527 (= res!228358 (not (matchR!462 (regex!969 (rule!1677 token!491)) input!2705)))))

(assert (= (and start!49784 res!228344) b!538510))

(assert (= (and b!538510 res!228349) b!538514))

(assert (= (and b!538514 res!228346) b!538505))

(assert (= (and b!538505 res!228345) b!538512))

(assert (= (and b!538512 res!228342) b!538508))

(assert (= (and b!538508 res!228339) b!538499))

(assert (= (and b!538499 res!228341) b!538517))

(assert (= (and b!538517 res!228359) b!538520))

(assert (= (and b!538520 res!228361) b!538501))

(assert (= (and b!538501 c!102223) b!538526))

(assert (= (and b!538501 (not c!102223)) b!538518))

(assert (= (and b!538501 res!228362) b!538521))

(assert (= (and b!538521 res!228347) b!538516))

(assert (= (and b!538501 (not res!228353)) b!538495))

(assert (= (and b!538495 res!228348) b!538503))

(assert (= (and b!538503 res!228340) b!538504))

(assert (= (and b!538495 res!228360) b!538525))

(assert (= (and b!538525 (not res!228350)) b!538507))

(assert (= (and b!538507 res!228354) b!538511))

(assert (= (and b!538495 (not res!228356)) b!538502))

(assert (= (and b!538502 (not res!228343)) b!538527))

(assert (= (and b!538527 (not res!228358)) b!538500))

(assert (= (and b!538500 (not res!228357)) b!538519))

(assert (= (and b!538519 (not res!228355)) b!538523))

(assert (= (and b!538523 (not res!228352)) b!538513))

(assert (= (and b!538513 (not res!228351)) b!538509))

(assert (= (and start!49784 ((_ is Cons!5237) suffix!1342)) b!538506))

(assert (= b!538515 b!538524))

(assert (= b!538494 b!538515))

(assert (= (and start!49784 ((_ is Cons!5239) rules!3103)) b!538494))

(assert (= b!538522 b!538497))

(assert (= b!538496 b!538522))

(assert (= start!49784 b!538496))

(assert (= (and start!49784 ((_ is Cons!5237) input!2705)) b!538498))

(declare-fun m!785651 () Bool)

(assert (=> b!538519 m!785651))

(declare-fun m!785653 () Bool)

(assert (=> b!538513 m!785653))

(declare-fun m!785655 () Bool)

(assert (=> b!538508 m!785655))

(declare-fun m!785657 () Bool)

(assert (=> b!538508 m!785657))

(declare-fun m!785659 () Bool)

(assert (=> b!538508 m!785659))

(declare-fun m!785661 () Bool)

(assert (=> b!538495 m!785661))

(declare-fun m!785663 () Bool)

(assert (=> b!538495 m!785663))

(assert (=> b!538495 m!785663))

(declare-fun m!785665 () Bool)

(assert (=> b!538495 m!785665))

(declare-fun m!785667 () Bool)

(assert (=> b!538495 m!785667))

(declare-fun m!785669 () Bool)

(assert (=> b!538495 m!785669))

(declare-fun m!785671 () Bool)

(assert (=> b!538495 m!785671))

(declare-fun m!785673 () Bool)

(assert (=> b!538495 m!785673))

(declare-fun m!785675 () Bool)

(assert (=> b!538495 m!785675))

(declare-fun m!785677 () Bool)

(assert (=> b!538499 m!785677))

(declare-fun m!785679 () Bool)

(assert (=> b!538512 m!785679))

(assert (=> b!538512 m!785679))

(declare-fun m!785681 () Bool)

(assert (=> b!538512 m!785681))

(declare-fun m!785683 () Bool)

(assert (=> b!538515 m!785683))

(declare-fun m!785685 () Bool)

(assert (=> b!538515 m!785685))

(declare-fun m!785687 () Bool)

(assert (=> b!538502 m!785687))

(declare-fun m!785689 () Bool)

(assert (=> start!49784 m!785689))

(declare-fun m!785691 () Bool)

(assert (=> b!538522 m!785691))

(declare-fun m!785693 () Bool)

(assert (=> b!538522 m!785693))

(declare-fun m!785695 () Bool)

(assert (=> b!538505 m!785695))

(declare-fun m!785697 () Bool)

(assert (=> b!538496 m!785697))

(declare-fun m!785699 () Bool)

(assert (=> b!538521 m!785699))

(declare-fun m!785701 () Bool)

(assert (=> b!538507 m!785701))

(declare-fun m!785703 () Bool)

(assert (=> b!538503 m!785703))

(declare-fun m!785705 () Bool)

(assert (=> b!538517 m!785705))

(declare-fun m!785707 () Bool)

(assert (=> b!538509 m!785707))

(declare-fun m!785709 () Bool)

(assert (=> b!538511 m!785709))

(declare-fun m!785711 () Bool)

(assert (=> b!538520 m!785711))

(declare-fun m!785713 () Bool)

(assert (=> b!538500 m!785713))

(declare-fun m!785715 () Bool)

(assert (=> b!538527 m!785715))

(declare-fun m!785717 () Bool)

(assert (=> b!538510 m!785717))

(declare-fun m!785719 () Bool)

(assert (=> b!538501 m!785719))

(declare-fun m!785721 () Bool)

(assert (=> b!538501 m!785721))

(declare-fun m!785723 () Bool)

(assert (=> b!538501 m!785723))

(declare-fun m!785725 () Bool)

(assert (=> b!538501 m!785725))

(declare-fun m!785727 () Bool)

(assert (=> b!538501 m!785727))

(declare-fun m!785729 () Bool)

(assert (=> b!538501 m!785729))

(declare-fun m!785731 () Bool)

(assert (=> b!538501 m!785731))

(declare-fun m!785733 () Bool)

(assert (=> b!538501 m!785733))

(declare-fun m!785735 () Bool)

(assert (=> b!538501 m!785735))

(declare-fun m!785737 () Bool)

(assert (=> b!538501 m!785737))

(declare-fun m!785739 () Bool)

(assert (=> b!538501 m!785739))

(declare-fun m!785741 () Bool)

(assert (=> b!538501 m!785741))

(declare-fun m!785743 () Bool)

(assert (=> b!538501 m!785743))

(declare-fun m!785745 () Bool)

(assert (=> b!538501 m!785745))

(declare-fun m!785747 () Bool)

(assert (=> b!538501 m!785747))

(declare-fun m!785749 () Bool)

(assert (=> b!538501 m!785749))

(declare-fun m!785751 () Bool)

(assert (=> b!538501 m!785751))

(declare-fun m!785753 () Bool)

(assert (=> b!538501 m!785753))

(declare-fun m!785755 () Bool)

(assert (=> b!538501 m!785755))

(declare-fun m!785757 () Bool)

(assert (=> b!538501 m!785757))

(assert (=> b!538501 m!785743))

(declare-fun m!785759 () Bool)

(assert (=> b!538501 m!785759))

(declare-fun m!785761 () Bool)

(assert (=> b!538501 m!785761))

(declare-fun m!785763 () Bool)

(assert (=> b!538501 m!785763))

(declare-fun m!785765 () Bool)

(assert (=> b!538501 m!785765))

(assert (=> b!538501 m!785741))

(declare-fun m!785767 () Bool)

(assert (=> b!538501 m!785767))

(declare-fun m!785769 () Bool)

(assert (=> b!538501 m!785769))

(declare-fun m!785771 () Bool)

(assert (=> b!538501 m!785771))

(declare-fun m!785773 () Bool)

(assert (=> b!538514 m!785773))

(check-sat (not b!538495) (not b!538521) (not b!538505) (not b!538500) b_and!52667 (not b_next!14815) (not b!538512) (not b!538515) (not b!538520) (not b!538510) (not b!538509) b_and!52669 tp_is_empty!2961 (not b!538506) (not b!538519) (not start!49784) (not b!538494) (not b!538499) (not b!538496) b_and!52673 (not b!538507) (not b!538514) (not b!538517) (not b!538503) (not b!538501) (not b!538527) (not b!538513) (not b!538508) (not b_next!14813) (not b!538502) (not b!538522) b_and!52671 (not b_next!14811) (not b_next!14809) (not b!538511) (not b!538498))
(check-sat b_and!52669 b_and!52667 (not b_next!14815) b_and!52673 (not b_next!14813) b_and!52671 (not b_next!14811) (not b_next!14809))
