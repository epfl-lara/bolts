; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!146962 () Bool)

(assert start!146962)

(declare-fun b!1574467 () Bool)

(declare-fun b_free!42295 () Bool)

(declare-fun b_next!42999 () Bool)

(assert (=> b!1574467 (= b_free!42295 (not b_next!42999))))

(declare-fun tp!463397 () Bool)

(declare-fun b_and!110133 () Bool)

(assert (=> b!1574467 (= tp!463397 b_and!110133)))

(declare-fun b_free!42297 () Bool)

(declare-fun b_next!43001 () Bool)

(assert (=> b!1574467 (= b_free!42297 (not b_next!43001))))

(declare-fun tp!463394 () Bool)

(declare-fun b_and!110135 () Bool)

(assert (=> b!1574467 (= tp!463394 b_and!110135)))

(declare-fun b!1574465 () Bool)

(declare-fun b_free!42299 () Bool)

(declare-fun b_next!43003 () Bool)

(assert (=> b!1574465 (= b_free!42299 (not b_next!43003))))

(declare-fun tp!463393 () Bool)

(declare-fun b_and!110137 () Bool)

(assert (=> b!1574465 (= tp!463393 b_and!110137)))

(declare-fun b_free!42301 () Bool)

(declare-fun b_next!43005 () Bool)

(assert (=> b!1574465 (= b_free!42301 (not b_next!43005))))

(declare-fun tp!463392 () Bool)

(declare-fun b_and!110139 () Bool)

(assert (=> b!1574465 (= tp!463392 b_and!110139)))

(declare-fun b!1574459 () Bool)

(declare-fun res!701707 () Bool)

(declare-fun e!1011212 () Bool)

(assert (=> b!1574459 (=> (not res!701707) (not e!1011212))))

(declare-datatypes ((List!17283 0))(
  ( (Nil!17213) (Cons!17213 (h!22614 (_ BitVec 16)) (t!143226 List!17283)) )
))
(declare-datatypes ((TokenValue!3115 0))(
  ( (FloatLiteralValue!6230 (text!22250 List!17283)) (TokenValueExt!3114 (__x!11532 Int)) (Broken!15575 (value!95859 List!17283)) (Object!3184) (End!3115) (Def!3115) (Underscore!3115) (Match!3115) (Else!3115) (Error!3115) (Case!3115) (If!3115) (Extends!3115) (Abstract!3115) (Class!3115) (Val!3115) (DelimiterValue!6230 (del!3175 List!17283)) (KeywordValue!3121 (value!95860 List!17283)) (CommentValue!6230 (value!95861 List!17283)) (WhitespaceValue!6230 (value!95862 List!17283)) (IndentationValue!3115 (value!95863 List!17283)) (String!19906) (Int32!3115) (Broken!15576 (value!95864 List!17283)) (Boolean!3116) (Unit!26596) (OperatorValue!3118 (op!3175 List!17283)) (IdentifierValue!6230 (value!95865 List!17283)) (IdentifierValue!6231 (value!95866 List!17283)) (WhitespaceValue!6231 (value!95867 List!17283)) (True!6230) (False!6230) (Broken!15577 (value!95868 List!17283)) (Broken!15578 (value!95869 List!17283)) (True!6231) (RightBrace!3115) (RightBracket!3115) (Colon!3115) (Null!3115) (Comma!3115) (LeftBracket!3115) (False!6231) (LeftBrace!3115) (ImaginaryLiteralValue!3115 (text!22251 List!17283)) (StringLiteralValue!9345 (value!95870 List!17283)) (EOFValue!3115 (value!95871 List!17283)) (IdentValue!3115 (value!95872 List!17283)) (DelimiterValue!6231 (value!95873 List!17283)) (DedentValue!3115 (value!95874 List!17283)) (NewLineValue!3115 (value!95875 List!17283)) (IntegerValue!9345 (value!95876 (_ BitVec 32)) (text!22252 List!17283)) (IntegerValue!9346 (value!95877 Int) (text!22253 List!17283)) (Times!3115) (Or!3115) (Equal!3115) (Minus!3115) (Broken!15579 (value!95878 List!17283)) (And!3115) (Div!3115) (LessEqual!3115) (Mod!3115) (Concat!7468) (Not!3115) (Plus!3115) (SpaceValue!3115 (value!95879 List!17283)) (IntegerValue!9347 (value!95880 Int) (text!22254 List!17283)) (StringLiteralValue!9346 (text!22255 List!17283)) (FloatLiteralValue!6231 (text!22256 List!17283)) (BytesLiteralValue!3115 (value!95881 List!17283)) (CommentValue!6231 (value!95882 List!17283)) (StringLiteralValue!9347 (value!95883 List!17283)) (ErrorTokenValue!3115 (msg!3176 List!17283)) )
))
(declare-datatypes ((C!8880 0))(
  ( (C!8881 (val!5036 Int)) )
))
(declare-datatypes ((List!17284 0))(
  ( (Nil!17214) (Cons!17214 (h!22615 C!8880) (t!143227 List!17284)) )
))
(declare-datatypes ((IArray!11401 0))(
  ( (IArray!11402 (innerList!5758 List!17284)) )
))
(declare-datatypes ((Conc!5698 0))(
  ( (Node!5698 (left!13924 Conc!5698) (right!14254 Conc!5698) (csize!11626 Int) (cheight!5909 Int)) (Leaf!8431 (xs!8502 IArray!11401) (csize!11627 Int)) (Empty!5698) )
))
(declare-datatypes ((BalanceConc!11340 0))(
  ( (BalanceConc!11341 (c!255271 Conc!5698)) )
))
(declare-datatypes ((Regex!4353 0))(
  ( (ElementMatch!4353 (c!255272 C!8880)) (Concat!7469 (regOne!9218 Regex!4353) (regTwo!9218 Regex!4353)) (EmptyExpr!4353) (Star!4353 (reg!4682 Regex!4353)) (EmptyLang!4353) (Union!4353 (regOne!9219 Regex!4353) (regTwo!9219 Regex!4353)) )
))
(declare-datatypes ((String!19907 0))(
  ( (String!19908 (value!95884 String)) )
))
(declare-datatypes ((TokenValueInjection!5890 0))(
  ( (TokenValueInjection!5891 (toValue!4420 Int) (toChars!4279 Int)) )
))
(declare-datatypes ((Rule!5850 0))(
  ( (Rule!5851 (regex!3025 Regex!4353) (tag!3291 String!19907) (isSeparator!3025 Bool) (transformation!3025 TokenValueInjection!5890)) )
))
(declare-datatypes ((List!17285 0))(
  ( (Nil!17215) (Cons!17215 (h!22616 Rule!5850) (t!143228 List!17285)) )
))
(declare-fun rules!1846 () List!17285)

(declare-datatypes ((LexerInterface!2654 0))(
  ( (LexerInterfaceExt!2651 (__x!11533 Int)) (Lexer!2652) )
))
(declare-fun thiss!17113 () LexerInterface!2654)

(declare-datatypes ((Token!5616 0))(
  ( (Token!5617 (value!95885 TokenValue!3115) (rule!4817 Rule!5850) (size!13890 Int) (originalCharacters!3839 List!17284)) )
))
(declare-datatypes ((List!17286 0))(
  ( (Nil!17216) (Cons!17216 (h!22617 Token!5616) (t!143229 List!17286)) )
))
(declare-fun tokens!457 () List!17286)

(declare-fun tokensListTwoByTwoPredicateSeparableList!347 (LexerInterface!2654 List!17286 List!17285) Bool)

(assert (=> b!1574459 (= res!701707 (tokensListTwoByTwoPredicateSeparableList!347 thiss!17113 tokens!457 rules!1846))))

(declare-fun tp!463395 () Bool)

(declare-fun b!1574460 () Bool)

(declare-fun e!1011213 () Bool)

(declare-fun e!1011211 () Bool)

(declare-fun inv!21 (TokenValue!3115) Bool)

(assert (=> b!1574460 (= e!1011211 (and (inv!21 (value!95885 (h!22617 tokens!457))) e!1011213 tp!463395))))

(declare-fun e!1011217 () Bool)

(declare-fun e!1011219 () Bool)

(declare-fun b!1574461 () Bool)

(declare-fun tp!463391 () Bool)

(declare-fun inv!22623 (String!19907) Bool)

(declare-fun inv!22626 (TokenValueInjection!5890) Bool)

(assert (=> b!1574461 (= e!1011219 (and tp!463391 (inv!22623 (tag!3291 (h!22616 rules!1846))) (inv!22626 (transformation!3025 (h!22616 rules!1846))) e!1011217))))

(declare-fun b!1574462 () Bool)

(declare-fun e!1011210 () Bool)

(assert (=> b!1574462 (= e!1011212 e!1011210)))

(declare-fun res!701705 () Bool)

(assert (=> b!1574462 (=> (not res!701705) (not e!1011210))))

(declare-fun lt!547319 () List!17284)

(declare-fun lt!547324 () List!17284)

(assert (=> b!1574462 (= res!701705 (= lt!547319 lt!547324))))

(declare-fun lt!547323 () List!17284)

(declare-fun lt!547316 () List!17284)

(declare-fun ++!4461 (List!17284 List!17284) List!17284)

(assert (=> b!1574462 (= lt!547324 (++!4461 lt!547323 lt!547316))))

(declare-fun lt!547318 () BalanceConc!11340)

(declare-fun list!6616 (BalanceConc!11340) List!17284)

(assert (=> b!1574462 (= lt!547319 (list!6616 lt!547318))))

(declare-fun lt!547317 () BalanceConc!11340)

(assert (=> b!1574462 (= lt!547316 (list!6616 lt!547317))))

(declare-fun charsOf!1674 (Token!5616) BalanceConc!11340)

(assert (=> b!1574462 (= lt!547323 (list!6616 (charsOf!1674 (h!22617 tokens!457))))))

(declare-datatypes ((IArray!11403 0))(
  ( (IArray!11404 (innerList!5759 List!17286)) )
))
(declare-datatypes ((Conc!5699 0))(
  ( (Node!5699 (left!13925 Conc!5699) (right!14255 Conc!5699) (csize!11628 Int) (cheight!5910 Int)) (Leaf!8432 (xs!8503 IArray!11403) (csize!11629 Int)) (Empty!5699) )
))
(declare-datatypes ((BalanceConc!11342 0))(
  ( (BalanceConc!11343 (c!255273 Conc!5699)) )
))
(declare-datatypes ((tuple2!16694 0))(
  ( (tuple2!16695 (_1!9749 BalanceConc!11342) (_2!9749 BalanceConc!11340)) )
))
(declare-fun lt!547320 () tuple2!16694)

(declare-fun lex!1138 (LexerInterface!2654 List!17285 BalanceConc!11340) tuple2!16694)

(assert (=> b!1574462 (= lt!547320 (lex!1138 thiss!17113 rules!1846 lt!547317))))

(declare-fun print!1185 (LexerInterface!2654 BalanceConc!11342) BalanceConc!11340)

(declare-fun seqFromList!1822 (List!17286) BalanceConc!11342)

(assert (=> b!1574462 (= lt!547317 (print!1185 thiss!17113 (seqFromList!1822 (t!143229 tokens!457))))))

(assert (=> b!1574462 (= lt!547318 (print!1185 thiss!17113 (seqFromList!1822 tokens!457)))))

(declare-fun b!1574464 () Bool)

(declare-fun res!701703 () Bool)

(assert (=> b!1574464 (=> (not res!701703) (not e!1011212))))

(declare-fun isEmpty!10283 (List!17285) Bool)

(assert (=> b!1574464 (= res!701703 (not (isEmpty!10283 rules!1846)))))

(declare-fun e!1011218 () Bool)

(assert (=> b!1574465 (= e!1011218 (and tp!463393 tp!463392))))

(declare-fun b!1574466 () Bool)

(assert (=> b!1574466 (= e!1011210 (not true))))

(declare-datatypes ((Unit!26597 0))(
  ( (Unit!26598) )
))
(declare-fun lt!547321 () Unit!26597)

(declare-fun theoremInvertabilityWhenTokenListSeparable!99 (LexerInterface!2654 List!17285 List!17286) Unit!26597)

(assert (=> b!1574466 (= lt!547321 (theoremInvertabilityWhenTokenListSeparable!99 thiss!17113 rules!1846 (t!143229 tokens!457)))))

(declare-fun isPrefix!1285 (List!17284 List!17284) Bool)

(assert (=> b!1574466 (isPrefix!1285 lt!547323 lt!547324)))

(declare-fun lt!547322 () Unit!26597)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!810 (List!17284 List!17284) Unit!26597)

(assert (=> b!1574466 (= lt!547322 (lemmaConcatTwoListThenFirstIsPrefix!810 lt!547323 lt!547316))))

(assert (=> b!1574467 (= e!1011217 (and tp!463397 tp!463394))))

(declare-fun b!1574468 () Bool)

(declare-fun res!701706 () Bool)

(assert (=> b!1574468 (=> (not res!701706) (not e!1011212))))

(declare-fun rulesProduceEachTokenIndividuallyList!856 (LexerInterface!2654 List!17285 List!17286) Bool)

(assert (=> b!1574468 (= res!701706 (rulesProduceEachTokenIndividuallyList!856 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1574469 () Bool)

(declare-fun e!1011209 () Bool)

(declare-fun tp!463396 () Bool)

(assert (=> b!1574469 (= e!1011209 (and e!1011219 tp!463396))))

(declare-fun tp!463398 () Bool)

(declare-fun b!1574470 () Bool)

(assert (=> b!1574470 (= e!1011213 (and tp!463398 (inv!22623 (tag!3291 (rule!4817 (h!22617 tokens!457)))) (inv!22626 (transformation!3025 (rule!4817 (h!22617 tokens!457)))) e!1011218))))

(declare-fun b!1574471 () Bool)

(declare-fun res!701702 () Bool)

(assert (=> b!1574471 (=> (not res!701702) (not e!1011212))))

(get-info :version)

(assert (=> b!1574471 (= res!701702 (and (not ((_ is Nil!17216) tokens!457)) (not ((_ is Nil!17216) (t!143229 tokens!457)))))))

(declare-fun b!1574472 () Bool)

(declare-fun res!701708 () Bool)

(assert (=> b!1574472 (=> (not res!701708) (not e!1011212))))

(declare-fun rulesInvariant!2323 (LexerInterface!2654 List!17285) Bool)

(assert (=> b!1574472 (= res!701708 (rulesInvariant!2323 thiss!17113 rules!1846))))

(declare-fun res!701704 () Bool)

(assert (=> start!146962 (=> (not res!701704) (not e!1011212))))

(assert (=> start!146962 (= res!701704 ((_ is Lexer!2652) thiss!17113))))

(assert (=> start!146962 e!1011212))

(assert (=> start!146962 true))

(assert (=> start!146962 e!1011209))

(declare-fun e!1011220 () Bool)

(assert (=> start!146962 e!1011220))

(declare-fun b!1574463 () Bool)

(declare-fun tp!463390 () Bool)

(declare-fun inv!22627 (Token!5616) Bool)

(assert (=> b!1574463 (= e!1011220 (and (inv!22627 (h!22617 tokens!457)) e!1011211 tp!463390))))

(assert (= (and start!146962 res!701704) b!1574464))

(assert (= (and b!1574464 res!701703) b!1574472))

(assert (= (and b!1574472 res!701708) b!1574468))

(assert (= (and b!1574468 res!701706) b!1574459))

(assert (= (and b!1574459 res!701707) b!1574471))

(assert (= (and b!1574471 res!701702) b!1574462))

(assert (= (and b!1574462 res!701705) b!1574466))

(assert (= b!1574461 b!1574467))

(assert (= b!1574469 b!1574461))

(assert (= (and start!146962 ((_ is Cons!17215) rules!1846)) b!1574469))

(assert (= b!1574470 b!1574465))

(assert (= b!1574460 b!1574470))

(assert (= b!1574463 b!1574460))

(assert (= (and start!146962 ((_ is Cons!17216) tokens!457)) b!1574463))

(declare-fun m!1853371 () Bool)

(assert (=> b!1574461 m!1853371))

(declare-fun m!1853373 () Bool)

(assert (=> b!1574461 m!1853373))

(declare-fun m!1853375 () Bool)

(assert (=> b!1574472 m!1853375))

(declare-fun m!1853377 () Bool)

(assert (=> b!1574459 m!1853377))

(declare-fun m!1853379 () Bool)

(assert (=> b!1574468 m!1853379))

(declare-fun m!1853381 () Bool)

(assert (=> b!1574460 m!1853381))

(declare-fun m!1853383 () Bool)

(assert (=> b!1574466 m!1853383))

(declare-fun m!1853385 () Bool)

(assert (=> b!1574466 m!1853385))

(declare-fun m!1853387 () Bool)

(assert (=> b!1574466 m!1853387))

(declare-fun m!1853389 () Bool)

(assert (=> b!1574463 m!1853389))

(declare-fun m!1853391 () Bool)

(assert (=> b!1574470 m!1853391))

(declare-fun m!1853393 () Bool)

(assert (=> b!1574470 m!1853393))

(declare-fun m!1853395 () Bool)

(assert (=> b!1574462 m!1853395))

(declare-fun m!1853397 () Bool)

(assert (=> b!1574462 m!1853397))

(declare-fun m!1853399 () Bool)

(assert (=> b!1574462 m!1853399))

(declare-fun m!1853401 () Bool)

(assert (=> b!1574462 m!1853401))

(declare-fun m!1853403 () Bool)

(assert (=> b!1574462 m!1853403))

(assert (=> b!1574462 m!1853397))

(declare-fun m!1853405 () Bool)

(assert (=> b!1574462 m!1853405))

(declare-fun m!1853407 () Bool)

(assert (=> b!1574462 m!1853407))

(assert (=> b!1574462 m!1853399))

(declare-fun m!1853409 () Bool)

(assert (=> b!1574462 m!1853409))

(declare-fun m!1853411 () Bool)

(assert (=> b!1574462 m!1853411))

(declare-fun m!1853413 () Bool)

(assert (=> b!1574462 m!1853413))

(assert (=> b!1574462 m!1853411))

(declare-fun m!1853415 () Bool)

(assert (=> b!1574464 m!1853415))

(check-sat (not b_next!42999) (not b_next!43001) b_and!110139 b_and!110137 (not b_next!43005) (not b!1574462) (not b!1574466) (not b!1574469) (not b!1574472) (not b!1574468) b_and!110133 (not b!1574463) b_and!110135 (not b!1574461) (not b_next!43003) (not b!1574464) (not b!1574470) (not b!1574460) (not b!1574459))
(check-sat (not b_next!42999) (not b_next!43003) (not b_next!43001) b_and!110139 b_and!110137 (not b_next!43005) b_and!110133 b_and!110135)
