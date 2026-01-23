; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!146966 () Bool)

(assert start!146966)

(declare-fun b!1574554 () Bool)

(declare-fun b_free!42311 () Bool)

(declare-fun b_next!43015 () Bool)

(assert (=> b!1574554 (= b_free!42311 (not b_next!43015))))

(declare-fun tp!463444 () Bool)

(declare-fun b_and!110149 () Bool)

(assert (=> b!1574554 (= tp!463444 b_and!110149)))

(declare-fun b_free!42313 () Bool)

(declare-fun b_next!43017 () Bool)

(assert (=> b!1574554 (= b_free!42313 (not b_next!43017))))

(declare-fun tp!463451 () Bool)

(declare-fun b_and!110151 () Bool)

(assert (=> b!1574554 (= tp!463451 b_and!110151)))

(declare-fun b!1574548 () Bool)

(declare-fun b_free!42315 () Bool)

(declare-fun b_next!43019 () Bool)

(assert (=> b!1574548 (= b_free!42315 (not b_next!43019))))

(declare-fun tp!463446 () Bool)

(declare-fun b_and!110153 () Bool)

(assert (=> b!1574548 (= tp!463446 b_and!110153)))

(declare-fun b_free!42317 () Bool)

(declare-fun b_next!43021 () Bool)

(assert (=> b!1574548 (= b_free!42317 (not b_next!43021))))

(declare-fun tp!463450 () Bool)

(declare-fun b_and!110155 () Bool)

(assert (=> b!1574548 (= tp!463450 b_and!110155)))

(declare-fun b!1574543 () Bool)

(declare-fun e!1011282 () Bool)

(assert (=> b!1574543 (= e!1011282 (not true))))

(declare-datatypes ((List!17291 0))(
  ( (Nil!17221) (Cons!17221 (h!22622 (_ BitVec 16)) (t!143234 List!17291)) )
))
(declare-datatypes ((TokenValue!3117 0))(
  ( (FloatLiteralValue!6234 (text!22264 List!17291)) (TokenValueExt!3116 (__x!11536 Int)) (Broken!15585 (value!95916 List!17291)) (Object!3186) (End!3117) (Def!3117) (Underscore!3117) (Match!3117) (Else!3117) (Error!3117) (Case!3117) (If!3117) (Extends!3117) (Abstract!3117) (Class!3117) (Val!3117) (DelimiterValue!6234 (del!3177 List!17291)) (KeywordValue!3123 (value!95917 List!17291)) (CommentValue!6234 (value!95918 List!17291)) (WhitespaceValue!6234 (value!95919 List!17291)) (IndentationValue!3117 (value!95920 List!17291)) (String!19916) (Int32!3117) (Broken!15586 (value!95921 List!17291)) (Boolean!3118) (Unit!26602) (OperatorValue!3120 (op!3177 List!17291)) (IdentifierValue!6234 (value!95922 List!17291)) (IdentifierValue!6235 (value!95923 List!17291)) (WhitespaceValue!6235 (value!95924 List!17291)) (True!6234) (False!6234) (Broken!15587 (value!95925 List!17291)) (Broken!15588 (value!95926 List!17291)) (True!6235) (RightBrace!3117) (RightBracket!3117) (Colon!3117) (Null!3117) (Comma!3117) (LeftBracket!3117) (False!6235) (LeftBrace!3117) (ImaginaryLiteralValue!3117 (text!22265 List!17291)) (StringLiteralValue!9351 (value!95927 List!17291)) (EOFValue!3117 (value!95928 List!17291)) (IdentValue!3117 (value!95929 List!17291)) (DelimiterValue!6235 (value!95930 List!17291)) (DedentValue!3117 (value!95931 List!17291)) (NewLineValue!3117 (value!95932 List!17291)) (IntegerValue!9351 (value!95933 (_ BitVec 32)) (text!22266 List!17291)) (IntegerValue!9352 (value!95934 Int) (text!22267 List!17291)) (Times!3117) (Or!3117) (Equal!3117) (Minus!3117) (Broken!15589 (value!95935 List!17291)) (And!3117) (Div!3117) (LessEqual!3117) (Mod!3117) (Concat!7472) (Not!3117) (Plus!3117) (SpaceValue!3117 (value!95936 List!17291)) (IntegerValue!9353 (value!95937 Int) (text!22268 List!17291)) (StringLiteralValue!9352 (text!22269 List!17291)) (FloatLiteralValue!6235 (text!22270 List!17291)) (BytesLiteralValue!3117 (value!95938 List!17291)) (CommentValue!6235 (value!95939 List!17291)) (StringLiteralValue!9353 (value!95940 List!17291)) (ErrorTokenValue!3117 (msg!3178 List!17291)) )
))
(declare-datatypes ((C!8884 0))(
  ( (C!8885 (val!5038 Int)) )
))
(declare-datatypes ((Regex!4355 0))(
  ( (ElementMatch!4355 (c!255279 C!8884)) (Concat!7473 (regOne!9222 Regex!4355) (regTwo!9222 Regex!4355)) (EmptyExpr!4355) (Star!4355 (reg!4684 Regex!4355)) (EmptyLang!4355) (Union!4355 (regOne!9223 Regex!4355) (regTwo!9223 Regex!4355)) )
))
(declare-datatypes ((String!19917 0))(
  ( (String!19918 (value!95941 String)) )
))
(declare-datatypes ((List!17292 0))(
  ( (Nil!17222) (Cons!17222 (h!22623 C!8884) (t!143235 List!17292)) )
))
(declare-datatypes ((IArray!11409 0))(
  ( (IArray!11410 (innerList!5762 List!17292)) )
))
(declare-datatypes ((Conc!5702 0))(
  ( (Node!5702 (left!13929 Conc!5702) (right!14259 Conc!5702) (csize!11634 Int) (cheight!5913 Int)) (Leaf!8436 (xs!8506 IArray!11409) (csize!11635 Int)) (Empty!5702) )
))
(declare-datatypes ((BalanceConc!11348 0))(
  ( (BalanceConc!11349 (c!255280 Conc!5702)) )
))
(declare-datatypes ((TokenValueInjection!5894 0))(
  ( (TokenValueInjection!5895 (toValue!4422 Int) (toChars!4281 Int)) )
))
(declare-datatypes ((Rule!5854 0))(
  ( (Rule!5855 (regex!3027 Regex!4355) (tag!3293 String!19917) (isSeparator!3027 Bool) (transformation!3027 TokenValueInjection!5894)) )
))
(declare-datatypes ((Token!5620 0))(
  ( (Token!5621 (value!95942 TokenValue!3117) (rule!4819 Rule!5854) (size!13892 Int) (originalCharacters!3841 List!17292)) )
))
(declare-datatypes ((List!17293 0))(
  ( (Nil!17223) (Cons!17223 (h!22624 Token!5620) (t!143236 List!17293)) )
))
(declare-fun lt!547379 () List!17293)

(declare-datatypes ((IArray!11411 0))(
  ( (IArray!11412 (innerList!5763 List!17293)) )
))
(declare-datatypes ((Conc!5703 0))(
  ( (Node!5703 (left!13930 Conc!5703) (right!14260 Conc!5703) (csize!11636 Int) (cheight!5914 Int)) (Leaf!8437 (xs!8507 IArray!11411) (csize!11637 Int)) (Empty!5703) )
))
(declare-datatypes ((BalanceConc!11350 0))(
  ( (BalanceConc!11351 (c!255281 Conc!5703)) )
))
(declare-datatypes ((tuple2!16698 0))(
  ( (tuple2!16699 (_1!9751 BalanceConc!11350) (_2!9751 BalanceConc!11348)) )
))
(declare-fun lt!547375 () tuple2!16698)

(declare-fun list!6619 (BalanceConc!11350) List!17293)

(assert (=> b!1574543 (= lt!547379 (list!6619 (_1!9751 lt!547375)))))

(declare-datatypes ((List!17294 0))(
  ( (Nil!17224) (Cons!17224 (h!22625 Rule!5854) (t!143237 List!17294)) )
))
(declare-fun rules!1846 () List!17294)

(declare-datatypes ((Unit!26603 0))(
  ( (Unit!26604) )
))
(declare-fun lt!547381 () Unit!26603)

(declare-datatypes ((LexerInterface!2656 0))(
  ( (LexerInterfaceExt!2653 (__x!11537 Int)) (Lexer!2654) )
))
(declare-fun thiss!17113 () LexerInterface!2656)

(declare-fun tokens!457 () List!17293)

(declare-fun theoremInvertabilityWhenTokenListSeparable!101 (LexerInterface!2656 List!17294 List!17293) Unit!26603)

(assert (=> b!1574543 (= lt!547381 (theoremInvertabilityWhenTokenListSeparable!101 thiss!17113 rules!1846 (t!143236 tokens!457)))))

(declare-fun lt!547383 () List!17292)

(declare-fun lt!547376 () List!17292)

(declare-fun isPrefix!1287 (List!17292 List!17292) Bool)

(assert (=> b!1574543 (isPrefix!1287 lt!547383 lt!547376)))

(declare-fun lt!547377 () Unit!26603)

(declare-fun lt!547378 () List!17292)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!812 (List!17292 List!17292) Unit!26603)

(assert (=> b!1574543 (= lt!547377 (lemmaConcatTwoListThenFirstIsPrefix!812 lt!547383 lt!547378))))

(declare-fun b!1574544 () Bool)

(declare-fun res!701745 () Bool)

(declare-fun e!1011289 () Bool)

(assert (=> b!1574544 (=> (not res!701745) (not e!1011289))))

(get-info :version)

(assert (=> b!1574544 (= res!701745 (and (not ((_ is Nil!17223) tokens!457)) (not ((_ is Nil!17223) (t!143236 tokens!457)))))))

(declare-fun b!1574545 () Bool)

(declare-fun res!701748 () Bool)

(assert (=> b!1574545 (=> (not res!701748) (not e!1011289))))

(declare-fun rulesProduceEachTokenIndividuallyList!858 (LexerInterface!2656 List!17294 List!17293) Bool)

(assert (=> b!1574545 (= res!701748 (rulesProduceEachTokenIndividuallyList!858 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1574546 () Bool)

(declare-fun res!701747 () Bool)

(assert (=> b!1574546 (=> (not res!701747) (not e!1011289))))

(declare-fun isEmpty!10285 (List!17294) Bool)

(assert (=> b!1574546 (= res!701747 (not (isEmpty!10285 rules!1846)))))

(declare-fun b!1574547 () Bool)

(declare-fun res!701750 () Bool)

(assert (=> b!1574547 (=> (not res!701750) (not e!1011289))))

(declare-fun rulesInvariant!2325 (LexerInterface!2656 List!17294) Bool)

(assert (=> b!1574547 (= res!701750 (rulesInvariant!2325 thiss!17113 rules!1846))))

(declare-fun e!1011290 () Bool)

(assert (=> b!1574548 (= e!1011290 (and tp!463446 tp!463450))))

(declare-fun e!1011285 () Bool)

(declare-fun e!1011287 () Bool)

(declare-fun tp!463445 () Bool)

(declare-fun b!1574549 () Bool)

(declare-fun inv!22633 (Token!5620) Bool)

(assert (=> b!1574549 (= e!1011285 (and (inv!22633 (h!22624 tokens!457)) e!1011287 tp!463445))))

(declare-fun b!1574550 () Bool)

(declare-fun tp!463447 () Bool)

(declare-fun e!1011292 () Bool)

(declare-fun inv!21 (TokenValue!3117) Bool)

(assert (=> b!1574550 (= e!1011287 (and (inv!21 (value!95942 (h!22624 tokens!457))) e!1011292 tp!463447))))

(declare-fun b!1574551 () Bool)

(assert (=> b!1574551 (= e!1011289 e!1011282)))

(declare-fun res!701744 () Bool)

(assert (=> b!1574551 (=> (not res!701744) (not e!1011282))))

(declare-fun lt!547384 () List!17292)

(assert (=> b!1574551 (= res!701744 (= lt!547384 lt!547376))))

(declare-fun ++!4463 (List!17292 List!17292) List!17292)

(assert (=> b!1574551 (= lt!547376 (++!4463 lt!547383 lt!547378))))

(declare-fun lt!547382 () BalanceConc!11348)

(declare-fun list!6620 (BalanceConc!11348) List!17292)

(assert (=> b!1574551 (= lt!547384 (list!6620 lt!547382))))

(declare-fun lt!547380 () BalanceConc!11348)

(assert (=> b!1574551 (= lt!547378 (list!6620 lt!547380))))

(declare-fun charsOf!1676 (Token!5620) BalanceConc!11348)

(assert (=> b!1574551 (= lt!547383 (list!6620 (charsOf!1676 (h!22624 tokens!457))))))

(declare-fun lex!1140 (LexerInterface!2656 List!17294 BalanceConc!11348) tuple2!16698)

(assert (=> b!1574551 (= lt!547375 (lex!1140 thiss!17113 rules!1846 lt!547380))))

(declare-fun print!1187 (LexerInterface!2656 BalanceConc!11350) BalanceConc!11348)

(declare-fun seqFromList!1824 (List!17293) BalanceConc!11350)

(assert (=> b!1574551 (= lt!547380 (print!1187 thiss!17113 (seqFromList!1824 (t!143236 tokens!457))))))

(assert (=> b!1574551 (= lt!547382 (print!1187 thiss!17113 (seqFromList!1824 tokens!457)))))

(declare-fun b!1574552 () Bool)

(declare-fun e!1011283 () Bool)

(declare-fun e!1011291 () Bool)

(declare-fun tp!463448 () Bool)

(declare-fun inv!22630 (String!19917) Bool)

(declare-fun inv!22634 (TokenValueInjection!5894) Bool)

(assert (=> b!1574552 (= e!1011283 (and tp!463448 (inv!22630 (tag!3293 (h!22625 rules!1846))) (inv!22634 (transformation!3027 (h!22625 rules!1846))) e!1011291))))

(declare-fun b!1574553 () Bool)

(declare-fun e!1011286 () Bool)

(declare-fun tp!463449 () Bool)

(assert (=> b!1574553 (= e!1011286 (and e!1011283 tp!463449))))

(declare-fun res!701749 () Bool)

(assert (=> start!146966 (=> (not res!701749) (not e!1011289))))

(assert (=> start!146966 (= res!701749 ((_ is Lexer!2654) thiss!17113))))

(assert (=> start!146966 e!1011289))

(assert (=> start!146966 true))

(assert (=> start!146966 e!1011286))

(assert (=> start!146966 e!1011285))

(assert (=> b!1574554 (= e!1011291 (and tp!463444 tp!463451))))

(declare-fun tp!463452 () Bool)

(declare-fun b!1574555 () Bool)

(assert (=> b!1574555 (= e!1011292 (and tp!463452 (inv!22630 (tag!3293 (rule!4819 (h!22624 tokens!457)))) (inv!22634 (transformation!3027 (rule!4819 (h!22624 tokens!457)))) e!1011290))))

(declare-fun b!1574556 () Bool)

(declare-fun res!701746 () Bool)

(assert (=> b!1574556 (=> (not res!701746) (not e!1011289))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!349 (LexerInterface!2656 List!17293 List!17294) Bool)

(assert (=> b!1574556 (= res!701746 (tokensListTwoByTwoPredicateSeparableList!349 thiss!17113 tokens!457 rules!1846))))

(assert (= (and start!146966 res!701749) b!1574546))

(assert (= (and b!1574546 res!701747) b!1574547))

(assert (= (and b!1574547 res!701750) b!1574545))

(assert (= (and b!1574545 res!701748) b!1574556))

(assert (= (and b!1574556 res!701746) b!1574544))

(assert (= (and b!1574544 res!701745) b!1574551))

(assert (= (and b!1574551 res!701744) b!1574543))

(assert (= b!1574552 b!1574554))

(assert (= b!1574553 b!1574552))

(assert (= (and start!146966 ((_ is Cons!17224) rules!1846)) b!1574553))

(assert (= b!1574555 b!1574548))

(assert (= b!1574550 b!1574555))

(assert (= b!1574549 b!1574550))

(assert (= (and start!146966 ((_ is Cons!17223) tokens!457)) b!1574549))

(declare-fun m!1853465 () Bool)

(assert (=> b!1574545 m!1853465))

(declare-fun m!1853467 () Bool)

(assert (=> b!1574551 m!1853467))

(declare-fun m!1853469 () Bool)

(assert (=> b!1574551 m!1853469))

(declare-fun m!1853471 () Bool)

(assert (=> b!1574551 m!1853471))

(declare-fun m!1853473 () Bool)

(assert (=> b!1574551 m!1853473))

(declare-fun m!1853475 () Bool)

(assert (=> b!1574551 m!1853475))

(declare-fun m!1853477 () Bool)

(assert (=> b!1574551 m!1853477))

(assert (=> b!1574551 m!1853473))

(declare-fun m!1853479 () Bool)

(assert (=> b!1574551 m!1853479))

(declare-fun m!1853481 () Bool)

(assert (=> b!1574551 m!1853481))

(declare-fun m!1853483 () Bool)

(assert (=> b!1574551 m!1853483))

(assert (=> b!1574551 m!1853481))

(assert (=> b!1574551 m!1853475))

(declare-fun m!1853485 () Bool)

(assert (=> b!1574551 m!1853485))

(declare-fun m!1853487 () Bool)

(assert (=> b!1574547 m!1853487))

(declare-fun m!1853489 () Bool)

(assert (=> b!1574549 m!1853489))

(declare-fun m!1853491 () Bool)

(assert (=> b!1574543 m!1853491))

(declare-fun m!1853493 () Bool)

(assert (=> b!1574543 m!1853493))

(declare-fun m!1853495 () Bool)

(assert (=> b!1574543 m!1853495))

(declare-fun m!1853497 () Bool)

(assert (=> b!1574543 m!1853497))

(declare-fun m!1853499 () Bool)

(assert (=> b!1574546 m!1853499))

(declare-fun m!1853501 () Bool)

(assert (=> b!1574552 m!1853501))

(declare-fun m!1853503 () Bool)

(assert (=> b!1574552 m!1853503))

(declare-fun m!1853505 () Bool)

(assert (=> b!1574550 m!1853505))

(declare-fun m!1853507 () Bool)

(assert (=> b!1574556 m!1853507))

(declare-fun m!1853509 () Bool)

(assert (=> b!1574555 m!1853509))

(declare-fun m!1853511 () Bool)

(assert (=> b!1574555 m!1853511))

(check-sat (not b!1574547) (not b!1574552) (not b!1574550) (not b!1574546) b_and!110153 (not b_next!43019) (not b!1574553) (not b!1574549) (not b_next!43015) (not b!1574543) b_and!110149 (not b_next!43017) (not b_next!43021) b_and!110151 (not b!1574545) (not b!1574551) (not b!1574555) b_and!110155 (not b!1574556))
(check-sat b_and!110151 b_and!110153 (not b_next!43019) (not b_next!43015) b_and!110155 b_and!110149 (not b_next!43017) (not b_next!43021))
