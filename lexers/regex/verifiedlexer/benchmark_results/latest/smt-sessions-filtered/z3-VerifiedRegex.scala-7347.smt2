; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390334 () Bool)

(assert start!390334)

(declare-fun b!4118371 () Bool)

(declare-fun b_free!116339 () Bool)

(declare-fun b_next!117043 () Bool)

(assert (=> b!4118371 (= b_free!116339 (not b_next!117043))))

(declare-fun tp!1255026 () Bool)

(declare-fun b_and!318421 () Bool)

(assert (=> b!4118371 (= tp!1255026 b_and!318421)))

(declare-fun b_free!116341 () Bool)

(declare-fun b_next!117045 () Bool)

(assert (=> b!4118371 (= b_free!116341 (not b_next!117045))))

(declare-fun tp!1255022 () Bool)

(declare-fun b_and!318423 () Bool)

(assert (=> b!4118371 (= tp!1255022 b_and!318423)))

(declare-fun b!4118369 () Bool)

(declare-fun b_free!116343 () Bool)

(declare-fun b_next!117047 () Bool)

(assert (=> b!4118369 (= b_free!116343 (not b_next!117047))))

(declare-fun tp!1255025 () Bool)

(declare-fun b_and!318425 () Bool)

(assert (=> b!4118369 (= tp!1255025 b_and!318425)))

(declare-fun b_free!116345 () Bool)

(declare-fun b_next!117049 () Bool)

(assert (=> b!4118369 (= b_free!116345 (not b_next!117049))))

(declare-fun tp!1255021 () Bool)

(declare-fun b_and!318427 () Bool)

(assert (=> b!4118369 (= tp!1255021 b_and!318427)))

(declare-fun b!4118386 () Bool)

(declare-fun b_free!116347 () Bool)

(declare-fun b_next!117051 () Bool)

(assert (=> b!4118386 (= b_free!116347 (not b_next!117051))))

(declare-fun tp!1255019 () Bool)

(declare-fun b_and!318429 () Bool)

(assert (=> b!4118386 (= tp!1255019 b_and!318429)))

(declare-fun b_free!116349 () Bool)

(declare-fun b_next!117053 () Bool)

(assert (=> b!4118386 (= b_free!116349 (not b_next!117053))))

(declare-fun tp!1255023 () Bool)

(declare-fun b_and!318431 () Bool)

(assert (=> b!4118386 (= tp!1255023 b_and!318431)))

(declare-fun b!4118368 () Bool)

(declare-fun e!2555457 () Bool)

(declare-datatypes ((List!44641 0))(
  ( (Nil!44517) (Cons!44517 (h!49937 (_ BitVec 16)) (t!340544 List!44641)) )
))
(declare-datatypes ((TokenValue!7496 0))(
  ( (FloatLiteralValue!14992 (text!52917 List!44641)) (TokenValueExt!7495 (__x!27209 Int)) (Broken!37480 (value!227609 List!44641)) (Object!7619) (End!7496) (Def!7496) (Underscore!7496) (Match!7496) (Else!7496) (Error!7496) (Case!7496) (If!7496) (Extends!7496) (Abstract!7496) (Class!7496) (Val!7496) (DelimiterValue!14992 (del!7556 List!44641)) (KeywordValue!7502 (value!227610 List!44641)) (CommentValue!14992 (value!227611 List!44641)) (WhitespaceValue!14992 (value!227612 List!44641)) (IndentationValue!7496 (value!227613 List!44641)) (String!51229) (Int32!7496) (Broken!37481 (value!227614 List!44641)) (Boolean!7497) (Unit!63874) (OperatorValue!7499 (op!7556 List!44641)) (IdentifierValue!14992 (value!227615 List!44641)) (IdentifierValue!14993 (value!227616 List!44641)) (WhitespaceValue!14993 (value!227617 List!44641)) (True!14992) (False!14992) (Broken!37482 (value!227618 List!44641)) (Broken!37483 (value!227619 List!44641)) (True!14993) (RightBrace!7496) (RightBracket!7496) (Colon!7496) (Null!7496) (Comma!7496) (LeftBracket!7496) (False!14993) (LeftBrace!7496) (ImaginaryLiteralValue!7496 (text!52918 List!44641)) (StringLiteralValue!22488 (value!227620 List!44641)) (EOFValue!7496 (value!227621 List!44641)) (IdentValue!7496 (value!227622 List!44641)) (DelimiterValue!14993 (value!227623 List!44641)) (DedentValue!7496 (value!227624 List!44641)) (NewLineValue!7496 (value!227625 List!44641)) (IntegerValue!22488 (value!227626 (_ BitVec 32)) (text!52919 List!44641)) (IntegerValue!22489 (value!227627 Int) (text!52920 List!44641)) (Times!7496) (Or!7496) (Equal!7496) (Minus!7496) (Broken!37484 (value!227628 List!44641)) (And!7496) (Div!7496) (LessEqual!7496) (Mod!7496) (Concat!19667) (Not!7496) (Plus!7496) (SpaceValue!7496 (value!227629 List!44641)) (IntegerValue!22490 (value!227630 Int) (text!52921 List!44641)) (StringLiteralValue!22489 (text!52922 List!44641)) (FloatLiteralValue!14993 (text!52923 List!44641)) (BytesLiteralValue!7496 (value!227631 List!44641)) (CommentValue!14993 (value!227632 List!44641)) (StringLiteralValue!22490 (value!227633 List!44641)) (ErrorTokenValue!7496 (msg!7557 List!44641)) )
))
(declare-datatypes ((C!24528 0))(
  ( (C!24529 (val!14374 Int)) )
))
(declare-datatypes ((List!44642 0))(
  ( (Nil!44518) (Cons!44518 (h!49938 C!24528) (t!340545 List!44642)) )
))
(declare-datatypes ((IArray!26959 0))(
  ( (IArray!26960 (innerList!13537 List!44642)) )
))
(declare-datatypes ((Conc!13477 0))(
  ( (Node!13477 (left!33344 Conc!13477) (right!33674 Conc!13477) (csize!27184 Int) (cheight!13688 Int)) (Leaf!20825 (xs!16783 IArray!26959) (csize!27185 Int)) (Empty!13477) )
))
(declare-datatypes ((BalanceConc!26548 0))(
  ( (BalanceConc!26549 (c!707308 Conc!13477)) )
))
(declare-datatypes ((Regex!12171 0))(
  ( (ElementMatch!12171 (c!707309 C!24528)) (Concat!19668 (regOne!24854 Regex!12171) (regTwo!24854 Regex!12171)) (EmptyExpr!12171) (Star!12171 (reg!12500 Regex!12171)) (EmptyLang!12171) (Union!12171 (regOne!24855 Regex!12171) (regTwo!24855 Regex!12171)) )
))
(declare-datatypes ((String!51230 0))(
  ( (String!51231 (value!227634 String)) )
))
(declare-datatypes ((TokenValueInjection!14420 0))(
  ( (TokenValueInjection!14421 (toValue!9918 Int) (toChars!9777 Int)) )
))
(declare-datatypes ((Rule!14332 0))(
  ( (Rule!14333 (regex!7266 Regex!12171) (tag!8126 String!51230) (isSeparator!7266 Bool) (transformation!7266 TokenValueInjection!14420)) )
))
(declare-fun rBis!149 () Rule!14332)

(declare-fun validRegex!5466 (Regex!12171) Bool)

(assert (=> b!4118368 (= e!2555457 (validRegex!5466 (regex!7266 rBis!149)))))

(declare-fun p!2912 () List!44642)

(declare-fun matchR!6002 (Regex!12171 List!44642) Bool)

(assert (=> b!4118368 (not (matchR!6002 (regex!7266 rBis!149) p!2912))))

(declare-datatypes ((Unit!63875 0))(
  ( (Unit!63876) )
))
(declare-fun lt!1469266 () Unit!63875)

(declare-datatypes ((LexerInterface!6855 0))(
  ( (LexerInterfaceExt!6852 (__x!27210 Int)) (Lexer!6853) )
))
(declare-fun thiss!25645 () LexerInterface!6855)

(declare-fun input!3238 () List!44642)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!580 (LexerInterface!6855 Rule!14332 List!44642 List!44642) Unit!63875)

(assert (=> b!4118368 (= lt!1469266 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!580 thiss!25645 rBis!149 p!2912 input!3238))))

(declare-fun e!2555460 () Bool)

(assert (=> b!4118369 (= e!2555460 (and tp!1255025 tp!1255021))))

(declare-fun b!4118370 () Bool)

(declare-fun res!1682246 () Bool)

(declare-fun e!2555452 () Bool)

(assert (=> b!4118370 (=> (not res!1682246) (not e!2555452))))

(declare-datatypes ((List!44643 0))(
  ( (Nil!44519) (Cons!44519 (h!49939 Rule!14332) (t!340546 List!44643)) )
))
(declare-fun rules!3756 () List!44643)

(declare-fun r!4008 () Rule!14332)

(declare-fun getIndex!614 (List!44643 Rule!14332) Int)

(assert (=> b!4118370 (= res!1682246 (< (getIndex!614 rules!3756 rBis!149) (getIndex!614 rules!3756 r!4008)))))

(declare-fun e!2555466 () Bool)

(assert (=> b!4118371 (= e!2555466 (and tp!1255026 tp!1255022))))

(declare-fun b!4118373 () Bool)

(declare-fun res!1682247 () Bool)

(declare-fun e!2555451 () Bool)

(assert (=> b!4118373 (=> (not res!1682247) (not e!2555451))))

(declare-fun contains!8938 (List!44643 Rule!14332) Bool)

(assert (=> b!4118373 (= res!1682247 (contains!8938 rules!3756 rBis!149))))

(declare-fun b!4118374 () Bool)

(assert (=> b!4118374 (= e!2555451 e!2555452)))

(declare-fun res!1682255 () Bool)

(assert (=> b!4118374 (=> (not res!1682255) (not e!2555452))))

(declare-fun lt!1469264 () BalanceConc!26548)

(declare-datatypes ((Token!13462 0))(
  ( (Token!13463 (value!227635 TokenValue!7496) (rule!10332 Rule!14332) (size!32941 Int) (originalCharacters!7762 List!44642)) )
))
(declare-datatypes ((tuple2!42990 0))(
  ( (tuple2!42991 (_1!24629 Token!13462) (_2!24629 List!44642)) )
))
(declare-datatypes ((Option!9574 0))(
  ( (None!9573) (Some!9573 (v!40151 tuple2!42990)) )
))
(declare-fun maxPrefix!4047 (LexerInterface!6855 List!44643 List!44642) Option!9574)

(declare-fun apply!10339 (TokenValueInjection!14420 BalanceConc!26548) TokenValue!7496)

(declare-fun size!32942 (List!44642) Int)

(declare-fun getSuffix!2530 (List!44642 List!44642) List!44642)

(assert (=> b!4118374 (= res!1682255 (= (maxPrefix!4047 thiss!25645 rules!3756 input!3238) (Some!9573 (tuple2!42991 (Token!13463 (apply!10339 (transformation!7266 r!4008) lt!1469264) r!4008 (size!32942 p!2912) p!2912) (getSuffix!2530 input!3238 p!2912)))))))

(declare-fun lt!1469265 () Unit!63875)

(declare-fun lemmaSemiInverse!2124 (TokenValueInjection!14420 BalanceConc!26548) Unit!63875)

(assert (=> b!4118374 (= lt!1469265 (lemmaSemiInverse!2124 (transformation!7266 r!4008) lt!1469264))))

(declare-fun seqFromList!5383 (List!44642) BalanceConc!26548)

(assert (=> b!4118374 (= lt!1469264 (seqFromList!5383 p!2912))))

(declare-fun b!4118375 () Bool)

(declare-fun res!1682253 () Bool)

(assert (=> b!4118375 (=> (not res!1682253) (not e!2555451))))

(assert (=> b!4118375 (= res!1682253 (contains!8938 rules!3756 r!4008))))

(declare-fun b!4118376 () Bool)

(declare-fun res!1682252 () Bool)

(assert (=> b!4118376 (=> (not res!1682252) (not e!2555452))))

(declare-fun ruleValid!3074 (LexerInterface!6855 Rule!14332) Bool)

(assert (=> b!4118376 (= res!1682252 (ruleValid!3074 thiss!25645 r!4008))))

(declare-fun b!4118377 () Bool)

(declare-fun res!1682251 () Bool)

(assert (=> b!4118377 (=> (not res!1682251) (not e!2555451))))

(declare-fun isEmpty!26472 (List!44643) Bool)

(assert (=> b!4118377 (= res!1682251 (not (isEmpty!26472 rules!3756)))))

(declare-fun b!4118378 () Bool)

(declare-fun res!1682248 () Bool)

(assert (=> b!4118378 (=> (not res!1682248) (not e!2555452))))

(assert (=> b!4118378 (= res!1682248 (matchR!6002 (regex!7266 r!4008) p!2912))))

(declare-fun tp!1255024 () Bool)

(declare-fun e!2555463 () Bool)

(declare-fun b!4118379 () Bool)

(declare-fun inv!59098 (String!51230) Bool)

(declare-fun inv!59100 (TokenValueInjection!14420) Bool)

(assert (=> b!4118379 (= e!2555463 (and tp!1255024 (inv!59098 (tag!8126 r!4008)) (inv!59100 (transformation!7266 r!4008)) e!2555460))))

(declare-fun res!1682257 () Bool)

(assert (=> start!390334 (=> (not res!1682257) (not e!2555451))))

(get-info :version)

(assert (=> start!390334 (= res!1682257 ((_ is Lexer!6853) thiss!25645))))

(assert (=> start!390334 e!2555451))

(declare-fun e!2555459 () Bool)

(assert (=> start!390334 e!2555459))

(declare-fun e!2555455 () Bool)

(assert (=> start!390334 e!2555455))

(assert (=> start!390334 true))

(assert (=> start!390334 e!2555463))

(declare-fun e!2555461 () Bool)

(assert (=> start!390334 e!2555461))

(declare-fun e!2555456 () Bool)

(assert (=> start!390334 e!2555456))

(declare-fun b!4118372 () Bool)

(declare-fun e!2555465 () Bool)

(declare-fun tp!1255017 () Bool)

(assert (=> b!4118372 (= e!2555465 (and tp!1255017 (inv!59098 (tag!8126 (h!49939 rules!3756))) (inv!59100 (transformation!7266 (h!49939 rules!3756))) e!2555466))))

(declare-fun b!4118380 () Bool)

(declare-fun tp!1255020 () Bool)

(assert (=> b!4118380 (= e!2555459 (and e!2555465 tp!1255020))))

(declare-fun b!4118381 () Bool)

(declare-fun e!2555462 () Bool)

(assert (=> b!4118381 (= e!2555452 (not e!2555462))))

(declare-fun res!1682249 () Bool)

(assert (=> b!4118381 (=> res!1682249 e!2555462)))

(assert (=> b!4118381 (= res!1682249 (or (not ((_ is Cons!44519) rules!3756)) (not (= (h!49939 rules!3756) rBis!149))))))

(declare-fun lt!1469268 () Unit!63875)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2118 (LexerInterface!6855 Rule!14332 List!44643) Unit!63875)

(assert (=> b!4118381 (= lt!1469268 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2118 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4118381 (ruleValid!3074 thiss!25645 rBis!149)))

(declare-fun lt!1469261 () Unit!63875)

(assert (=> b!4118381 (= lt!1469261 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2118 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4118382 () Bool)

(declare-fun res!1682256 () Bool)

(assert (=> b!4118382 (=> (not res!1682256) (not e!2555451))))

(declare-fun isEmpty!26473 (List!44642) Bool)

(assert (=> b!4118382 (= res!1682256 (not (isEmpty!26473 p!2912)))))

(declare-fun b!4118383 () Bool)

(declare-fun res!1682245 () Bool)

(assert (=> b!4118383 (=> (not res!1682245) (not e!2555451))))

(declare-fun isPrefix!4201 (List!44642 List!44642) Bool)

(assert (=> b!4118383 (= res!1682245 (isPrefix!4201 p!2912 input!3238))))

(declare-fun b!4118384 () Bool)

(declare-fun tp_is_empty!21265 () Bool)

(declare-fun tp!1255027 () Bool)

(assert (=> b!4118384 (= e!2555461 (and tp_is_empty!21265 tp!1255027))))

(declare-fun b!4118385 () Bool)

(assert (=> b!4118385 (= e!2555462 e!2555457)))

(declare-fun res!1682250 () Bool)

(assert (=> b!4118385 (=> res!1682250 e!2555457)))

(declare-fun lt!1469262 () Option!9574)

(declare-fun isEmpty!26474 (Option!9574) Bool)

(assert (=> b!4118385 (= res!1682250 (not (isEmpty!26474 lt!1469262)))))

(declare-fun maxPrefixOneRule!2997 (LexerInterface!6855 Rule!14332 List!44642) Option!9574)

(assert (=> b!4118385 (= lt!1469262 (maxPrefixOneRule!2997 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4118385 (not (= rBis!149 r!4008))))

(declare-fun lt!1469263 () Unit!63875)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!6 (LexerInterface!6855 List!44643 Rule!14332 Rule!14332) Unit!63875)

(assert (=> b!4118385 (= lt!1469263 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!6 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6415 (List!44643) List!44643)

(assert (=> b!4118385 (contains!8938 (tail!6415 rules!3756) r!4008)))

(declare-fun lt!1469267 () Unit!63875)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!8 (List!44643 Rule!14332 Rule!14332) Unit!63875)

(assert (=> b!4118385 (= lt!1469267 (lemmaGetIndexBiggerAndHeadEqThenTailContains!8 rules!3756 rBis!149 r!4008))))

(declare-fun e!2555458 () Bool)

(assert (=> b!4118386 (= e!2555458 (and tp!1255019 tp!1255023))))

(declare-fun b!4118387 () Bool)

(declare-fun res!1682244 () Bool)

(assert (=> b!4118387 (=> res!1682244 e!2555457)))

(assert (=> b!4118387 (= res!1682244 (not (= lt!1469262 None!9573)))))

(declare-fun tp!1255028 () Bool)

(declare-fun b!4118388 () Bool)

(assert (=> b!4118388 (= e!2555456 (and tp!1255028 (inv!59098 (tag!8126 rBis!149)) (inv!59100 (transformation!7266 rBis!149)) e!2555458))))

(declare-fun b!4118389 () Bool)

(declare-fun res!1682254 () Bool)

(assert (=> b!4118389 (=> (not res!1682254) (not e!2555451))))

(declare-fun rulesInvariant!6152 (LexerInterface!6855 List!44643) Bool)

(assert (=> b!4118389 (= res!1682254 (rulesInvariant!6152 thiss!25645 rules!3756))))

(declare-fun b!4118390 () Bool)

(declare-fun tp!1255018 () Bool)

(assert (=> b!4118390 (= e!2555455 (and tp_is_empty!21265 tp!1255018))))

(assert (= (and start!390334 res!1682257) b!4118383))

(assert (= (and b!4118383 res!1682245) b!4118377))

(assert (= (and b!4118377 res!1682251) b!4118389))

(assert (= (and b!4118389 res!1682254) b!4118375))

(assert (= (and b!4118375 res!1682253) b!4118373))

(assert (= (and b!4118373 res!1682247) b!4118382))

(assert (= (and b!4118382 res!1682256) b!4118374))

(assert (= (and b!4118374 res!1682255) b!4118378))

(assert (= (and b!4118378 res!1682248) b!4118370))

(assert (= (and b!4118370 res!1682246) b!4118376))

(assert (= (and b!4118376 res!1682252) b!4118381))

(assert (= (and b!4118381 (not res!1682249)) b!4118385))

(assert (= (and b!4118385 (not res!1682250)) b!4118387))

(assert (= (and b!4118387 (not res!1682244)) b!4118368))

(assert (= b!4118372 b!4118371))

(assert (= b!4118380 b!4118372))

(assert (= (and start!390334 ((_ is Cons!44519) rules!3756)) b!4118380))

(assert (= (and start!390334 ((_ is Cons!44518) p!2912)) b!4118390))

(assert (= b!4118379 b!4118369))

(assert (= start!390334 b!4118379))

(assert (= (and start!390334 ((_ is Cons!44518) input!3238)) b!4118384))

(assert (= b!4118388 b!4118386))

(assert (= start!390334 b!4118388))

(declare-fun m!4717865 () Bool)

(assert (=> b!4118370 m!4717865))

(declare-fun m!4717867 () Bool)

(assert (=> b!4118370 m!4717867))

(declare-fun m!4717869 () Bool)

(assert (=> b!4118373 m!4717869))

(declare-fun m!4717871 () Bool)

(assert (=> b!4118381 m!4717871))

(declare-fun m!4717873 () Bool)

(assert (=> b!4118381 m!4717873))

(declare-fun m!4717875 () Bool)

(assert (=> b!4118381 m!4717875))

(declare-fun m!4717877 () Bool)

(assert (=> b!4118389 m!4717877))

(declare-fun m!4717879 () Bool)

(assert (=> b!4118377 m!4717879))

(declare-fun m!4717881 () Bool)

(assert (=> b!4118372 m!4717881))

(declare-fun m!4717883 () Bool)

(assert (=> b!4118372 m!4717883))

(declare-fun m!4717885 () Bool)

(assert (=> b!4118378 m!4717885))

(declare-fun m!4717887 () Bool)

(assert (=> b!4118383 m!4717887))

(declare-fun m!4717889 () Bool)

(assert (=> b!4118376 m!4717889))

(declare-fun m!4717891 () Bool)

(assert (=> b!4118388 m!4717891))

(declare-fun m!4717893 () Bool)

(assert (=> b!4118388 m!4717893))

(declare-fun m!4717895 () Bool)

(assert (=> b!4118368 m!4717895))

(declare-fun m!4717897 () Bool)

(assert (=> b!4118368 m!4717897))

(declare-fun m!4717899 () Bool)

(assert (=> b!4118368 m!4717899))

(declare-fun m!4717901 () Bool)

(assert (=> b!4118379 m!4717901))

(declare-fun m!4717903 () Bool)

(assert (=> b!4118379 m!4717903))

(declare-fun m!4717905 () Bool)

(assert (=> b!4118375 m!4717905))

(declare-fun m!4717907 () Bool)

(assert (=> b!4118385 m!4717907))

(declare-fun m!4717909 () Bool)

(assert (=> b!4118385 m!4717909))

(declare-fun m!4717911 () Bool)

(assert (=> b!4118385 m!4717911))

(assert (=> b!4118385 m!4717907))

(declare-fun m!4717913 () Bool)

(assert (=> b!4118385 m!4717913))

(declare-fun m!4717915 () Bool)

(assert (=> b!4118385 m!4717915))

(declare-fun m!4717917 () Bool)

(assert (=> b!4118385 m!4717917))

(declare-fun m!4717919 () Bool)

(assert (=> b!4118382 m!4717919))

(declare-fun m!4717921 () Bool)

(assert (=> b!4118374 m!4717921))

(declare-fun m!4717923 () Bool)

(assert (=> b!4118374 m!4717923))

(declare-fun m!4717925 () Bool)

(assert (=> b!4118374 m!4717925))

(declare-fun m!4717927 () Bool)

(assert (=> b!4118374 m!4717927))

(declare-fun m!4717929 () Bool)

(assert (=> b!4118374 m!4717929))

(declare-fun m!4717931 () Bool)

(assert (=> b!4118374 m!4717931))

(check-sat tp_is_empty!21265 b_and!318425 (not b!4118381) (not b!4118373) (not b!4118374) (not b_next!117053) (not b!4118384) (not b!4118376) b_and!318421 (not b!4118372) (not b!4118375) (not b!4118388) (not b!4118390) (not b!4118370) (not b!4118380) b_and!318423 b_and!318429 (not b!4118385) (not b!4118378) (not b_next!117049) (not b_next!117045) (not b!4118377) (not b_next!117047) (not b!4118368) (not b_next!117051) (not b!4118389) b_and!318431 b_and!318427 (not b!4118382) (not b!4118383) (not b_next!117043) (not b!4118379))
(check-sat b_and!318425 b_and!318423 b_and!318429 (not b_next!117049) (not b_next!117053) b_and!318421 (not b_next!117051) b_and!318431 b_and!318427 (not b_next!117043) (not b_next!117045) (not b_next!117047))
(get-model)

(declare-fun d!1221148 () Bool)

(declare-fun lt!1469271 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6861 (List!44643) (InoxSet Rule!14332))

(assert (=> d!1221148 (= lt!1469271 (select (content!6861 rules!3756) rBis!149))))

(declare-fun e!2555471 () Bool)

(assert (=> d!1221148 (= lt!1469271 e!2555471)))

(declare-fun res!1682267 () Bool)

(assert (=> d!1221148 (=> (not res!1682267) (not e!2555471))))

(assert (=> d!1221148 (= res!1682267 ((_ is Cons!44519) rules!3756))))

(assert (=> d!1221148 (= (contains!8938 rules!3756 rBis!149) lt!1469271)))

(declare-fun b!4118395 () Bool)

(declare-fun e!2555472 () Bool)

(assert (=> b!4118395 (= e!2555471 e!2555472)))

(declare-fun res!1682266 () Bool)

(assert (=> b!4118395 (=> res!1682266 e!2555472)))

(assert (=> b!4118395 (= res!1682266 (= (h!49939 rules!3756) rBis!149))))

(declare-fun b!4118396 () Bool)

(assert (=> b!4118396 (= e!2555472 (contains!8938 (t!340546 rules!3756) rBis!149))))

(assert (= (and d!1221148 res!1682267) b!4118395))

(assert (= (and b!4118395 (not res!1682266)) b!4118396))

(declare-fun m!4717933 () Bool)

(assert (=> d!1221148 m!4717933))

(declare-fun m!4717935 () Bool)

(assert (=> d!1221148 m!4717935))

(declare-fun m!4717937 () Bool)

(assert (=> b!4118396 m!4717937))

(assert (=> b!4118373 d!1221148))

(declare-fun b!4118408 () Bool)

(declare-fun e!2555480 () Bool)

(assert (=> b!4118408 (= e!2555480 (>= (size!32942 input!3238) (size!32942 p!2912)))))

(declare-fun b!4118406 () Bool)

(declare-fun res!1682278 () Bool)

(declare-fun e!2555479 () Bool)

(assert (=> b!4118406 (=> (not res!1682278) (not e!2555479))))

(declare-fun head!8673 (List!44642) C!24528)

(assert (=> b!4118406 (= res!1682278 (= (head!8673 p!2912) (head!8673 input!3238)))))

(declare-fun d!1221150 () Bool)

(assert (=> d!1221150 e!2555480))

(declare-fun res!1682279 () Bool)

(assert (=> d!1221150 (=> res!1682279 e!2555480)))

(declare-fun lt!1469274 () Bool)

(assert (=> d!1221150 (= res!1682279 (not lt!1469274))))

(declare-fun e!2555481 () Bool)

(assert (=> d!1221150 (= lt!1469274 e!2555481)))

(declare-fun res!1682276 () Bool)

(assert (=> d!1221150 (=> res!1682276 e!2555481)))

(assert (=> d!1221150 (= res!1682276 ((_ is Nil!44518) p!2912))))

(assert (=> d!1221150 (= (isPrefix!4201 p!2912 input!3238) lt!1469274)))

(declare-fun b!4118405 () Bool)

(assert (=> b!4118405 (= e!2555481 e!2555479)))

(declare-fun res!1682277 () Bool)

(assert (=> b!4118405 (=> (not res!1682277) (not e!2555479))))

(assert (=> b!4118405 (= res!1682277 (not ((_ is Nil!44518) input!3238)))))

(declare-fun b!4118407 () Bool)

(declare-fun tail!6416 (List!44642) List!44642)

(assert (=> b!4118407 (= e!2555479 (isPrefix!4201 (tail!6416 p!2912) (tail!6416 input!3238)))))

(assert (= (and d!1221150 (not res!1682276)) b!4118405))

(assert (= (and b!4118405 res!1682277) b!4118406))

(assert (= (and b!4118406 res!1682278) b!4118407))

(assert (= (and d!1221150 (not res!1682279)) b!4118408))

(declare-fun m!4717939 () Bool)

(assert (=> b!4118408 m!4717939))

(assert (=> b!4118408 m!4717929))

(declare-fun m!4717941 () Bool)

(assert (=> b!4118406 m!4717941))

(declare-fun m!4717943 () Bool)

(assert (=> b!4118406 m!4717943))

(declare-fun m!4717945 () Bool)

(assert (=> b!4118407 m!4717945))

(declare-fun m!4717947 () Bool)

(assert (=> b!4118407 m!4717947))

(assert (=> b!4118407 m!4717945))

(assert (=> b!4118407 m!4717947))

(declare-fun m!4717949 () Bool)

(assert (=> b!4118407 m!4717949))

(assert (=> b!4118383 d!1221150))

(declare-fun d!1221152 () Bool)

(assert (=> d!1221152 (= (inv!59098 (tag!8126 (h!49939 rules!3756))) (= (mod (str.len (value!227634 (tag!8126 (h!49939 rules!3756)))) 2) 0))))

(assert (=> b!4118372 d!1221152))

(declare-fun d!1221154 () Bool)

(declare-fun res!1682283 () Bool)

(declare-fun e!2555484 () Bool)

(assert (=> d!1221154 (=> (not res!1682283) (not e!2555484))))

(declare-fun semiInverseModEq!3127 (Int Int) Bool)

(assert (=> d!1221154 (= res!1682283 (semiInverseModEq!3127 (toChars!9777 (transformation!7266 (h!49939 rules!3756))) (toValue!9918 (transformation!7266 (h!49939 rules!3756)))))))

(assert (=> d!1221154 (= (inv!59100 (transformation!7266 (h!49939 rules!3756))) e!2555484)))

(declare-fun b!4118411 () Bool)

(declare-fun equivClasses!3026 (Int Int) Bool)

(assert (=> b!4118411 (= e!2555484 (equivClasses!3026 (toChars!9777 (transformation!7266 (h!49939 rules!3756))) (toValue!9918 (transformation!7266 (h!49939 rules!3756)))))))

(assert (= (and d!1221154 res!1682283) b!4118411))

(declare-fun m!4717951 () Bool)

(assert (=> d!1221154 m!4717951))

(declare-fun m!4717953 () Bool)

(assert (=> b!4118411 m!4717953))

(assert (=> b!4118372 d!1221154))

(declare-fun d!1221156 () Bool)

(assert (=> d!1221156 (= (isEmpty!26473 p!2912) ((_ is Nil!44518) p!2912))))

(assert (=> b!4118382 d!1221156))

(declare-fun d!1221158 () Bool)

(declare-fun res!1682290 () Bool)

(declare-fun e!2555487 () Bool)

(assert (=> d!1221158 (=> (not res!1682290) (not e!2555487))))

(assert (=> d!1221158 (= res!1682290 (validRegex!5466 (regex!7266 r!4008)))))

(assert (=> d!1221158 (= (ruleValid!3074 thiss!25645 r!4008) e!2555487)))

(declare-fun b!4118416 () Bool)

(declare-fun res!1682291 () Bool)

(assert (=> b!4118416 (=> (not res!1682291) (not e!2555487))))

(declare-fun nullable!4265 (Regex!12171) Bool)

(assert (=> b!4118416 (= res!1682291 (not (nullable!4265 (regex!7266 r!4008))))))

(declare-fun b!4118417 () Bool)

(assert (=> b!4118417 (= e!2555487 (not (= (tag!8126 r!4008) (String!51231 ""))))))

(assert (= (and d!1221158 res!1682290) b!4118416))

(assert (= (and b!4118416 res!1682291) b!4118417))

(declare-fun m!4717955 () Bool)

(assert (=> d!1221158 m!4717955))

(declare-fun m!4717957 () Bool)

(assert (=> b!4118416 m!4717957))

(assert (=> b!4118376 d!1221158))

(declare-fun d!1221160 () Bool)

(declare-fun lt!1469275 () Bool)

(assert (=> d!1221160 (= lt!1469275 (select (content!6861 rules!3756) r!4008))))

(declare-fun e!2555488 () Bool)

(assert (=> d!1221160 (= lt!1469275 e!2555488)))

(declare-fun res!1682293 () Bool)

(assert (=> d!1221160 (=> (not res!1682293) (not e!2555488))))

(assert (=> d!1221160 (= res!1682293 ((_ is Cons!44519) rules!3756))))

(assert (=> d!1221160 (= (contains!8938 rules!3756 r!4008) lt!1469275)))

(declare-fun b!4118418 () Bool)

(declare-fun e!2555489 () Bool)

(assert (=> b!4118418 (= e!2555488 e!2555489)))

(declare-fun res!1682292 () Bool)

(assert (=> b!4118418 (=> res!1682292 e!2555489)))

(assert (=> b!4118418 (= res!1682292 (= (h!49939 rules!3756) r!4008))))

(declare-fun b!4118419 () Bool)

(assert (=> b!4118419 (= e!2555489 (contains!8938 (t!340546 rules!3756) r!4008))))

(assert (= (and d!1221160 res!1682293) b!4118418))

(assert (= (and b!4118418 (not res!1682292)) b!4118419))

(assert (=> d!1221160 m!4717933))

(declare-fun m!4717959 () Bool)

(assert (=> d!1221160 m!4717959))

(declare-fun m!4717961 () Bool)

(assert (=> b!4118419 m!4717961))

(assert (=> b!4118375 d!1221160))

(declare-fun d!1221162 () Bool)

(declare-fun lt!1469276 () Bool)

(assert (=> d!1221162 (= lt!1469276 (select (content!6861 (tail!6415 rules!3756)) r!4008))))

(declare-fun e!2555490 () Bool)

(assert (=> d!1221162 (= lt!1469276 e!2555490)))

(declare-fun res!1682295 () Bool)

(assert (=> d!1221162 (=> (not res!1682295) (not e!2555490))))

(assert (=> d!1221162 (= res!1682295 ((_ is Cons!44519) (tail!6415 rules!3756)))))

(assert (=> d!1221162 (= (contains!8938 (tail!6415 rules!3756) r!4008) lt!1469276)))

(declare-fun b!4118420 () Bool)

(declare-fun e!2555491 () Bool)

(assert (=> b!4118420 (= e!2555490 e!2555491)))

(declare-fun res!1682294 () Bool)

(assert (=> b!4118420 (=> res!1682294 e!2555491)))

(assert (=> b!4118420 (= res!1682294 (= (h!49939 (tail!6415 rules!3756)) r!4008))))

(declare-fun b!4118421 () Bool)

(assert (=> b!4118421 (= e!2555491 (contains!8938 (t!340546 (tail!6415 rules!3756)) r!4008))))

(assert (= (and d!1221162 res!1682295) b!4118420))

(assert (= (and b!4118420 (not res!1682294)) b!4118421))

(assert (=> d!1221162 m!4717907))

(declare-fun m!4717963 () Bool)

(assert (=> d!1221162 m!4717963))

(declare-fun m!4717965 () Bool)

(assert (=> d!1221162 m!4717965))

(declare-fun m!4717967 () Bool)

(assert (=> b!4118421 m!4717967))

(assert (=> b!4118385 d!1221162))

(declare-fun d!1221164 () Bool)

(assert (=> d!1221164 (= (tail!6415 rules!3756) (t!340546 rules!3756))))

(assert (=> b!4118385 d!1221164))

(declare-fun b!4118514 () Bool)

(declare-fun e!2555545 () Bool)

(declare-fun e!2555546 () Bool)

(assert (=> b!4118514 (= e!2555545 e!2555546)))

(declare-fun res!1682353 () Bool)

(assert (=> b!4118514 (=> (not res!1682353) (not e!2555546))))

(declare-fun lt!1469294 () Option!9574)

(declare-fun list!16338 (BalanceConc!26548) List!44642)

(declare-fun charsOf!4887 (Token!13462) BalanceConc!26548)

(declare-fun get!14516 (Option!9574) tuple2!42990)

(assert (=> b!4118514 (= res!1682353 (matchR!6002 (regex!7266 rBis!149) (list!16338 (charsOf!4887 (_1!24629 (get!14516 lt!1469294))))))))

(declare-fun b!4118515 () Bool)

(declare-fun res!1682358 () Bool)

(assert (=> b!4118515 (=> (not res!1682358) (not e!2555546))))

(assert (=> b!4118515 (= res!1682358 (= (value!227635 (_1!24629 (get!14516 lt!1469294))) (apply!10339 (transformation!7266 (rule!10332 (_1!24629 (get!14516 lt!1469294)))) (seqFromList!5383 (originalCharacters!7762 (_1!24629 (get!14516 lt!1469294)))))))))

(declare-fun b!4118516 () Bool)

(declare-fun res!1682356 () Bool)

(assert (=> b!4118516 (=> (not res!1682356) (not e!2555546))))

(assert (=> b!4118516 (= res!1682356 (= (rule!10332 (_1!24629 (get!14516 lt!1469294))) rBis!149))))

(declare-fun b!4118513 () Bool)

(declare-fun res!1682359 () Bool)

(assert (=> b!4118513 (=> (not res!1682359) (not e!2555546))))

(assert (=> b!4118513 (= res!1682359 (< (size!32942 (_2!24629 (get!14516 lt!1469294))) (size!32942 input!3238)))))

(declare-fun d!1221166 () Bool)

(assert (=> d!1221166 e!2555545))

(declare-fun res!1682354 () Bool)

(assert (=> d!1221166 (=> res!1682354 e!2555545)))

(assert (=> d!1221166 (= res!1682354 (isEmpty!26474 lt!1469294))))

(declare-fun e!2555544 () Option!9574)

(assert (=> d!1221166 (= lt!1469294 e!2555544)))

(declare-fun c!707327 () Bool)

(declare-datatypes ((tuple2!42992 0))(
  ( (tuple2!42993 (_1!24630 List!44642) (_2!24630 List!44642)) )
))
(declare-fun lt!1469295 () tuple2!42992)

(assert (=> d!1221166 (= c!707327 (isEmpty!26473 (_1!24630 lt!1469295)))))

(declare-fun findLongestMatch!1395 (Regex!12171 List!44642) tuple2!42992)

(assert (=> d!1221166 (= lt!1469295 (findLongestMatch!1395 (regex!7266 rBis!149) input!3238))))

(assert (=> d!1221166 (ruleValid!3074 thiss!25645 rBis!149)))

(assert (=> d!1221166 (= (maxPrefixOneRule!2997 thiss!25645 rBis!149 input!3238) lt!1469294)))

(declare-fun b!4118517 () Bool)

(assert (=> b!4118517 (= e!2555546 (= (size!32941 (_1!24629 (get!14516 lt!1469294))) (size!32942 (originalCharacters!7762 (_1!24629 (get!14516 lt!1469294))))))))

(declare-fun b!4118518 () Bool)

(declare-fun e!2555547 () Bool)

(declare-fun findLongestMatchInner!1482 (Regex!12171 List!44642 Int List!44642 List!44642 Int) tuple2!42992)

(assert (=> b!4118518 (= e!2555547 (matchR!6002 (regex!7266 rBis!149) (_1!24630 (findLongestMatchInner!1482 (regex!7266 rBis!149) Nil!44518 (size!32942 Nil!44518) input!3238 input!3238 (size!32942 input!3238)))))))

(declare-fun b!4118519 () Bool)

(declare-fun size!32943 (BalanceConc!26548) Int)

(assert (=> b!4118519 (= e!2555544 (Some!9573 (tuple2!42991 (Token!13463 (apply!10339 (transformation!7266 rBis!149) (seqFromList!5383 (_1!24630 lt!1469295))) rBis!149 (size!32943 (seqFromList!5383 (_1!24630 lt!1469295))) (_1!24630 lt!1469295)) (_2!24630 lt!1469295))))))

(declare-fun lt!1469296 () Unit!63875)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1455 (Regex!12171 List!44642) Unit!63875)

(assert (=> b!4118519 (= lt!1469296 (longestMatchIsAcceptedByMatchOrIsEmpty!1455 (regex!7266 rBis!149) input!3238))))

(declare-fun res!1682357 () Bool)

(assert (=> b!4118519 (= res!1682357 (isEmpty!26473 (_1!24630 (findLongestMatchInner!1482 (regex!7266 rBis!149) Nil!44518 (size!32942 Nil!44518) input!3238 input!3238 (size!32942 input!3238)))))))

(assert (=> b!4118519 (=> res!1682357 e!2555547)))

(assert (=> b!4118519 e!2555547))

(declare-fun lt!1469293 () Unit!63875)

(assert (=> b!4118519 (= lt!1469293 lt!1469296)))

(declare-fun lt!1469297 () Unit!63875)

(assert (=> b!4118519 (= lt!1469297 (lemmaSemiInverse!2124 (transformation!7266 rBis!149) (seqFromList!5383 (_1!24630 lt!1469295))))))

(declare-fun b!4118520 () Bool)

(declare-fun res!1682355 () Bool)

(assert (=> b!4118520 (=> (not res!1682355) (not e!2555546))))

(declare-fun ++!11543 (List!44642 List!44642) List!44642)

(assert (=> b!4118520 (= res!1682355 (= (++!11543 (list!16338 (charsOf!4887 (_1!24629 (get!14516 lt!1469294)))) (_2!24629 (get!14516 lt!1469294))) input!3238))))

(declare-fun b!4118521 () Bool)

(assert (=> b!4118521 (= e!2555544 None!9573)))

(assert (= (and d!1221166 c!707327) b!4118521))

(assert (= (and d!1221166 (not c!707327)) b!4118519))

(assert (= (and b!4118519 (not res!1682357)) b!4118518))

(assert (= (and d!1221166 (not res!1682354)) b!4118514))

(assert (= (and b!4118514 res!1682353) b!4118520))

(assert (= (and b!4118520 res!1682355) b!4118513))

(assert (= (and b!4118513 res!1682359) b!4118516))

(assert (= (and b!4118516 res!1682356) b!4118515))

(assert (= (and b!4118515 res!1682358) b!4118517))

(declare-fun m!4717993 () Bool)

(assert (=> b!4118516 m!4717993))

(assert (=> b!4118520 m!4717993))

(declare-fun m!4717995 () Bool)

(assert (=> b!4118520 m!4717995))

(assert (=> b!4118520 m!4717995))

(declare-fun m!4717997 () Bool)

(assert (=> b!4118520 m!4717997))

(assert (=> b!4118520 m!4717997))

(declare-fun m!4717999 () Bool)

(assert (=> b!4118520 m!4717999))

(assert (=> b!4118515 m!4717993))

(declare-fun m!4718001 () Bool)

(assert (=> b!4118515 m!4718001))

(assert (=> b!4118515 m!4718001))

(declare-fun m!4718003 () Bool)

(assert (=> b!4118515 m!4718003))

(assert (=> b!4118517 m!4717993))

(declare-fun m!4718005 () Bool)

(assert (=> b!4118517 m!4718005))

(declare-fun m!4718007 () Bool)

(assert (=> d!1221166 m!4718007))

(declare-fun m!4718009 () Bool)

(assert (=> d!1221166 m!4718009))

(declare-fun m!4718011 () Bool)

(assert (=> d!1221166 m!4718011))

(assert (=> d!1221166 m!4717873))

(declare-fun m!4718013 () Bool)

(assert (=> b!4118519 m!4718013))

(declare-fun m!4718015 () Bool)

(assert (=> b!4118519 m!4718015))

(assert (=> b!4118519 m!4717939))

(declare-fun m!4718017 () Bool)

(assert (=> b!4118519 m!4718017))

(assert (=> b!4118519 m!4717939))

(declare-fun m!4718019 () Bool)

(assert (=> b!4118519 m!4718019))

(declare-fun m!4718021 () Bool)

(assert (=> b!4118519 m!4718021))

(assert (=> b!4118519 m!4718013))

(declare-fun m!4718023 () Bool)

(assert (=> b!4118519 m!4718023))

(assert (=> b!4118519 m!4718015))

(assert (=> b!4118519 m!4718013))

(declare-fun m!4718025 () Bool)

(assert (=> b!4118519 m!4718025))

(assert (=> b!4118519 m!4718013))

(declare-fun m!4718027 () Bool)

(assert (=> b!4118519 m!4718027))

(assert (=> b!4118513 m!4717993))

(declare-fun m!4718029 () Bool)

(assert (=> b!4118513 m!4718029))

(assert (=> b!4118513 m!4717939))

(assert (=> b!4118514 m!4717993))

(assert (=> b!4118514 m!4717995))

(assert (=> b!4118514 m!4717995))

(assert (=> b!4118514 m!4717997))

(assert (=> b!4118514 m!4717997))

(declare-fun m!4718031 () Bool)

(assert (=> b!4118514 m!4718031))

(assert (=> b!4118518 m!4718015))

(assert (=> b!4118518 m!4717939))

(assert (=> b!4118518 m!4718015))

(assert (=> b!4118518 m!4717939))

(assert (=> b!4118518 m!4718017))

(declare-fun m!4718033 () Bool)

(assert (=> b!4118518 m!4718033))

(assert (=> b!4118385 d!1221166))

(declare-fun d!1221178 () Bool)

(assert (=> d!1221178 (not (= rBis!149 r!4008))))

(declare-fun lt!1469302 () Unit!63875)

(declare-fun choose!25160 (LexerInterface!6855 List!44643 Rule!14332 Rule!14332) Unit!63875)

(assert (=> d!1221178 (= lt!1469302 (choose!25160 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1221178 (contains!8938 rules!3756 rBis!149)))

(assert (=> d!1221178 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!6 thiss!25645 rules!3756 rBis!149 r!4008) lt!1469302)))

(declare-fun bs!594643 () Bool)

(assert (= bs!594643 d!1221178))

(declare-fun m!4718035 () Bool)

(assert (=> bs!594643 m!4718035))

(assert (=> bs!594643 m!4717869))

(assert (=> b!4118385 d!1221178))

(declare-fun d!1221180 () Bool)

(assert (=> d!1221180 (contains!8938 (tail!6415 rules!3756) r!4008)))

(declare-fun lt!1469305 () Unit!63875)

(declare-fun choose!25161 (List!44643 Rule!14332 Rule!14332) Unit!63875)

(assert (=> d!1221180 (= lt!1469305 (choose!25161 rules!3756 rBis!149 r!4008))))

(declare-fun e!2555556 () Bool)

(assert (=> d!1221180 e!2555556))

(declare-fun res!1682364 () Bool)

(assert (=> d!1221180 (=> (not res!1682364) (not e!2555556))))

(assert (=> d!1221180 (= res!1682364 (contains!8938 rules!3756 rBis!149))))

(assert (=> d!1221180 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!8 rules!3756 rBis!149 r!4008) lt!1469305)))

(declare-fun b!4118534 () Bool)

(assert (=> b!4118534 (= e!2555556 (contains!8938 rules!3756 r!4008))))

(assert (= (and d!1221180 res!1682364) b!4118534))

(assert (=> d!1221180 m!4717907))

(assert (=> d!1221180 m!4717907))

(assert (=> d!1221180 m!4717909))

(declare-fun m!4718037 () Bool)

(assert (=> d!1221180 m!4718037))

(assert (=> d!1221180 m!4717869))

(assert (=> b!4118534 m!4717905))

(assert (=> b!4118385 d!1221180))

(declare-fun d!1221182 () Bool)

(assert (=> d!1221182 (= (isEmpty!26474 lt!1469262) (not ((_ is Some!9573) lt!1469262)))))

(assert (=> b!4118385 d!1221182))

(declare-fun d!1221184 () Bool)

(declare-fun dynLambda!18998 (Int BalanceConc!26548) TokenValue!7496)

(assert (=> d!1221184 (= (apply!10339 (transformation!7266 r!4008) lt!1469264) (dynLambda!18998 (toValue!9918 (transformation!7266 r!4008)) lt!1469264))))

(declare-fun b_lambda!120815 () Bool)

(assert (=> (not b_lambda!120815) (not d!1221184)))

(declare-fun tb!247127 () Bool)

(declare-fun t!340548 () Bool)

(assert (=> (and b!4118371 (= (toValue!9918 (transformation!7266 (h!49939 rules!3756))) (toValue!9918 (transformation!7266 r!4008))) t!340548) tb!247127))

(declare-fun result!300192 () Bool)

(declare-fun inv!21 (TokenValue!7496) Bool)

(assert (=> tb!247127 (= result!300192 (inv!21 (dynLambda!18998 (toValue!9918 (transformation!7266 r!4008)) lt!1469264)))))

(declare-fun m!4718043 () Bool)

(assert (=> tb!247127 m!4718043))

(assert (=> d!1221184 t!340548))

(declare-fun b_and!318433 () Bool)

(assert (= b_and!318421 (and (=> t!340548 result!300192) b_and!318433)))

(declare-fun t!340550 () Bool)

(declare-fun tb!247129 () Bool)

(assert (=> (and b!4118369 (= (toValue!9918 (transformation!7266 r!4008)) (toValue!9918 (transformation!7266 r!4008))) t!340550) tb!247129))

(declare-fun result!300196 () Bool)

(assert (= result!300196 result!300192))

(assert (=> d!1221184 t!340550))

(declare-fun b_and!318435 () Bool)

(assert (= b_and!318425 (and (=> t!340550 result!300196) b_and!318435)))

(declare-fun t!340552 () Bool)

(declare-fun tb!247131 () Bool)

(assert (=> (and b!4118386 (= (toValue!9918 (transformation!7266 rBis!149)) (toValue!9918 (transformation!7266 r!4008))) t!340552) tb!247131))

(declare-fun result!300198 () Bool)

(assert (= result!300198 result!300192))

(assert (=> d!1221184 t!340552))

(declare-fun b_and!318437 () Bool)

(assert (= b_and!318429 (and (=> t!340552 result!300198) b_and!318437)))

(declare-fun m!4718045 () Bool)

(assert (=> d!1221184 m!4718045))

(assert (=> b!4118374 d!1221184))

(declare-fun b!4118576 () Bool)

(declare-fun e!2555590 () Bool)

(assert (=> b!4118576 (= e!2555590 true)))

(declare-fun d!1221190 () Bool)

(assert (=> d!1221190 e!2555590))

(assert (= d!1221190 b!4118576))

(declare-fun order!23387 () Int)

(declare-fun order!23389 () Int)

(declare-fun lambda!128652 () Int)

(declare-fun dynLambda!18999 (Int Int) Int)

(declare-fun dynLambda!19000 (Int Int) Int)

(assert (=> b!4118576 (< (dynLambda!18999 order!23387 (toValue!9918 (transformation!7266 r!4008))) (dynLambda!19000 order!23389 lambda!128652))))

(declare-fun order!23391 () Int)

(declare-fun dynLambda!19001 (Int Int) Int)

(assert (=> b!4118576 (< (dynLambda!19001 order!23391 (toChars!9777 (transformation!7266 r!4008))) (dynLambda!19000 order!23389 lambda!128652))))

(declare-fun dynLambda!19002 (Int TokenValue!7496) BalanceConc!26548)

(assert (=> d!1221190 (= (list!16338 (dynLambda!19002 (toChars!9777 (transformation!7266 r!4008)) (dynLambda!18998 (toValue!9918 (transformation!7266 r!4008)) lt!1469264))) (list!16338 lt!1469264))))

(declare-fun lt!1469319 () Unit!63875)

(declare-fun ForallOf!910 (Int BalanceConc!26548) Unit!63875)

(assert (=> d!1221190 (= lt!1469319 (ForallOf!910 lambda!128652 lt!1469264))))

(assert (=> d!1221190 (= (lemmaSemiInverse!2124 (transformation!7266 r!4008) lt!1469264) lt!1469319)))

(declare-fun b_lambda!120817 () Bool)

(assert (=> (not b_lambda!120817) (not d!1221190)))

(declare-fun t!340554 () Bool)

(declare-fun tb!247133 () Bool)

(assert (=> (and b!4118371 (= (toChars!9777 (transformation!7266 (h!49939 rules!3756))) (toChars!9777 (transformation!7266 r!4008))) t!340554) tb!247133))

(declare-fun tp!1255031 () Bool)

(declare-fun b!4118581 () Bool)

(declare-fun e!2555593 () Bool)

(declare-fun inv!59101 (Conc!13477) Bool)

(assert (=> b!4118581 (= e!2555593 (and (inv!59101 (c!707308 (dynLambda!19002 (toChars!9777 (transformation!7266 r!4008)) (dynLambda!18998 (toValue!9918 (transformation!7266 r!4008)) lt!1469264)))) tp!1255031))))

(declare-fun result!300200 () Bool)

(declare-fun inv!59102 (BalanceConc!26548) Bool)

(assert (=> tb!247133 (= result!300200 (and (inv!59102 (dynLambda!19002 (toChars!9777 (transformation!7266 r!4008)) (dynLambda!18998 (toValue!9918 (transformation!7266 r!4008)) lt!1469264))) e!2555593))))

(assert (= tb!247133 b!4118581))

(declare-fun m!4718077 () Bool)

(assert (=> b!4118581 m!4718077))

(declare-fun m!4718079 () Bool)

(assert (=> tb!247133 m!4718079))

(assert (=> d!1221190 t!340554))

(declare-fun b_and!318439 () Bool)

(assert (= b_and!318423 (and (=> t!340554 result!300200) b_and!318439)))

(declare-fun t!340556 () Bool)

(declare-fun tb!247135 () Bool)

(assert (=> (and b!4118369 (= (toChars!9777 (transformation!7266 r!4008)) (toChars!9777 (transformation!7266 r!4008))) t!340556) tb!247135))

(declare-fun result!300204 () Bool)

(assert (= result!300204 result!300200))

(assert (=> d!1221190 t!340556))

(declare-fun b_and!318441 () Bool)

(assert (= b_and!318427 (and (=> t!340556 result!300204) b_and!318441)))

(declare-fun tb!247137 () Bool)

(declare-fun t!340558 () Bool)

(assert (=> (and b!4118386 (= (toChars!9777 (transformation!7266 rBis!149)) (toChars!9777 (transformation!7266 r!4008))) t!340558) tb!247137))

(declare-fun result!300206 () Bool)

(assert (= result!300206 result!300200))

(assert (=> d!1221190 t!340558))

(declare-fun b_and!318443 () Bool)

(assert (= b_and!318431 (and (=> t!340558 result!300206) b_and!318443)))

(declare-fun b_lambda!120819 () Bool)

(assert (=> (not b_lambda!120819) (not d!1221190)))

(assert (=> d!1221190 t!340548))

(declare-fun b_and!318445 () Bool)

(assert (= b_and!318433 (and (=> t!340548 result!300192) b_and!318445)))

(assert (=> d!1221190 t!340550))

(declare-fun b_and!318447 () Bool)

(assert (= b_and!318435 (and (=> t!340550 result!300196) b_and!318447)))

(assert (=> d!1221190 t!340552))

(declare-fun b_and!318449 () Bool)

(assert (= b_and!318437 (and (=> t!340552 result!300198) b_and!318449)))

(assert (=> d!1221190 m!4718045))

(declare-fun m!4718081 () Bool)

(assert (=> d!1221190 m!4718081))

(declare-fun m!4718083 () Bool)

(assert (=> d!1221190 m!4718083))

(declare-fun m!4718085 () Bool)

(assert (=> d!1221190 m!4718085))

(declare-fun m!4718087 () Bool)

(assert (=> d!1221190 m!4718087))

(assert (=> d!1221190 m!4718045))

(assert (=> d!1221190 m!4718083))

(assert (=> b!4118374 d!1221190))

(declare-fun d!1221210 () Bool)

(declare-fun lt!1469322 () List!44642)

(assert (=> d!1221210 (= (++!11543 p!2912 lt!1469322) input!3238)))

(declare-fun e!2555596 () List!44642)

(assert (=> d!1221210 (= lt!1469322 e!2555596)))

(declare-fun c!707340 () Bool)

(assert (=> d!1221210 (= c!707340 ((_ is Cons!44518) p!2912))))

(assert (=> d!1221210 (>= (size!32942 input!3238) (size!32942 p!2912))))

(assert (=> d!1221210 (= (getSuffix!2530 input!3238 p!2912) lt!1469322)))

(declare-fun b!4118586 () Bool)

(assert (=> b!4118586 (= e!2555596 (getSuffix!2530 (tail!6416 input!3238) (t!340545 p!2912)))))

(declare-fun b!4118587 () Bool)

(assert (=> b!4118587 (= e!2555596 input!3238)))

(assert (= (and d!1221210 c!707340) b!4118586))

(assert (= (and d!1221210 (not c!707340)) b!4118587))

(declare-fun m!4718089 () Bool)

(assert (=> d!1221210 m!4718089))

(assert (=> d!1221210 m!4717939))

(assert (=> d!1221210 m!4717929))

(assert (=> b!4118586 m!4717947))

(assert (=> b!4118586 m!4717947))

(declare-fun m!4718091 () Bool)

(assert (=> b!4118586 m!4718091))

(assert (=> b!4118374 d!1221210))

(declare-fun b!4118624 () Bool)

(declare-fun e!2555615 () Bool)

(declare-fun lt!1469341 () Option!9574)

(assert (=> b!4118624 (= e!2555615 (contains!8938 rules!3756 (rule!10332 (_1!24629 (get!14516 lt!1469341)))))))

(declare-fun b!4118625 () Bool)

(declare-fun res!1682409 () Bool)

(assert (=> b!4118625 (=> (not res!1682409) (not e!2555615))))

(assert (=> b!4118625 (= res!1682409 (= (++!11543 (list!16338 (charsOf!4887 (_1!24629 (get!14516 lt!1469341)))) (_2!24629 (get!14516 lt!1469341))) input!3238))))

(declare-fun d!1221212 () Bool)

(declare-fun e!2555616 () Bool)

(assert (=> d!1221212 e!2555616))

(declare-fun res!1682407 () Bool)

(assert (=> d!1221212 (=> res!1682407 e!2555616)))

(assert (=> d!1221212 (= res!1682407 (isEmpty!26474 lt!1469341))))

(declare-fun e!2555617 () Option!9574)

(assert (=> d!1221212 (= lt!1469341 e!2555617)))

(declare-fun c!707346 () Bool)

(assert (=> d!1221212 (= c!707346 (and ((_ is Cons!44519) rules!3756) ((_ is Nil!44519) (t!340546 rules!3756))))))

(declare-fun lt!1469340 () Unit!63875)

(declare-fun lt!1469339 () Unit!63875)

(assert (=> d!1221212 (= lt!1469340 lt!1469339)))

(assert (=> d!1221212 (isPrefix!4201 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2723 (List!44642 List!44642) Unit!63875)

(assert (=> d!1221212 (= lt!1469339 (lemmaIsPrefixRefl!2723 input!3238 input!3238))))

(declare-fun rulesValidInductive!2678 (LexerInterface!6855 List!44643) Bool)

(assert (=> d!1221212 (rulesValidInductive!2678 thiss!25645 rules!3756)))

(assert (=> d!1221212 (= (maxPrefix!4047 thiss!25645 rules!3756 input!3238) lt!1469341)))

(declare-fun b!4118626 () Bool)

(declare-fun res!1682406 () Bool)

(assert (=> b!4118626 (=> (not res!1682406) (not e!2555615))))

(assert (=> b!4118626 (= res!1682406 (< (size!32942 (_2!24629 (get!14516 lt!1469341))) (size!32942 input!3238)))))

(declare-fun b!4118627 () Bool)

(declare-fun call!289901 () Option!9574)

(assert (=> b!4118627 (= e!2555617 call!289901)))

(declare-fun b!4118628 () Bool)

(declare-fun lt!1469337 () Option!9574)

(declare-fun lt!1469338 () Option!9574)

(assert (=> b!4118628 (= e!2555617 (ite (and ((_ is None!9573) lt!1469337) ((_ is None!9573) lt!1469338)) None!9573 (ite ((_ is None!9573) lt!1469338) lt!1469337 (ite ((_ is None!9573) lt!1469337) lt!1469338 (ite (>= (size!32941 (_1!24629 (v!40151 lt!1469337))) (size!32941 (_1!24629 (v!40151 lt!1469338)))) lt!1469337 lt!1469338)))))))

(assert (=> b!4118628 (= lt!1469337 call!289901)))

(assert (=> b!4118628 (= lt!1469338 (maxPrefix!4047 thiss!25645 (t!340546 rules!3756) input!3238))))

(declare-fun b!4118629 () Bool)

(declare-fun res!1682408 () Bool)

(assert (=> b!4118629 (=> (not res!1682408) (not e!2555615))))

(assert (=> b!4118629 (= res!1682408 (matchR!6002 (regex!7266 (rule!10332 (_1!24629 (get!14516 lt!1469341)))) (list!16338 (charsOf!4887 (_1!24629 (get!14516 lt!1469341))))))))

(declare-fun b!4118630 () Bool)

(assert (=> b!4118630 (= e!2555616 e!2555615)))

(declare-fun res!1682411 () Bool)

(assert (=> b!4118630 (=> (not res!1682411) (not e!2555615))))

(declare-fun isDefined!7221 (Option!9574) Bool)

(assert (=> b!4118630 (= res!1682411 (isDefined!7221 lt!1469341))))

(declare-fun bm!289896 () Bool)

(assert (=> bm!289896 (= call!289901 (maxPrefixOneRule!2997 thiss!25645 (h!49939 rules!3756) input!3238))))

(declare-fun b!4118631 () Bool)

(declare-fun res!1682412 () Bool)

(assert (=> b!4118631 (=> (not res!1682412) (not e!2555615))))

(assert (=> b!4118631 (= res!1682412 (= (list!16338 (charsOf!4887 (_1!24629 (get!14516 lt!1469341)))) (originalCharacters!7762 (_1!24629 (get!14516 lt!1469341)))))))

(declare-fun b!4118632 () Bool)

(declare-fun res!1682410 () Bool)

(assert (=> b!4118632 (=> (not res!1682410) (not e!2555615))))

(assert (=> b!4118632 (= res!1682410 (= (value!227635 (_1!24629 (get!14516 lt!1469341))) (apply!10339 (transformation!7266 (rule!10332 (_1!24629 (get!14516 lt!1469341)))) (seqFromList!5383 (originalCharacters!7762 (_1!24629 (get!14516 lt!1469341)))))))))

(assert (= (and d!1221212 c!707346) b!4118627))

(assert (= (and d!1221212 (not c!707346)) b!4118628))

(assert (= (or b!4118627 b!4118628) bm!289896))

(assert (= (and d!1221212 (not res!1682407)) b!4118630))

(assert (= (and b!4118630 res!1682411) b!4118631))

(assert (= (and b!4118631 res!1682412) b!4118626))

(assert (= (and b!4118626 res!1682406) b!4118625))

(assert (= (and b!4118625 res!1682409) b!4118632))

(assert (= (and b!4118632 res!1682410) b!4118629))

(assert (= (and b!4118629 res!1682408) b!4118624))

(declare-fun m!4718113 () Bool)

(assert (=> b!4118632 m!4718113))

(declare-fun m!4718115 () Bool)

(assert (=> b!4118632 m!4718115))

(assert (=> b!4118632 m!4718115))

(declare-fun m!4718117 () Bool)

(assert (=> b!4118632 m!4718117))

(assert (=> b!4118625 m!4718113))

(declare-fun m!4718119 () Bool)

(assert (=> b!4118625 m!4718119))

(assert (=> b!4118625 m!4718119))

(declare-fun m!4718121 () Bool)

(assert (=> b!4118625 m!4718121))

(assert (=> b!4118625 m!4718121))

(declare-fun m!4718123 () Bool)

(assert (=> b!4118625 m!4718123))

(assert (=> b!4118624 m!4718113))

(declare-fun m!4718125 () Bool)

(assert (=> b!4118624 m!4718125))

(assert (=> b!4118631 m!4718113))

(assert (=> b!4118631 m!4718119))

(assert (=> b!4118631 m!4718119))

(assert (=> b!4118631 m!4718121))

(assert (=> b!4118626 m!4718113))

(declare-fun m!4718127 () Bool)

(assert (=> b!4118626 m!4718127))

(assert (=> b!4118626 m!4717939))

(declare-fun m!4718129 () Bool)

(assert (=> b!4118630 m!4718129))

(declare-fun m!4718131 () Bool)

(assert (=> d!1221212 m!4718131))

(declare-fun m!4718133 () Bool)

(assert (=> d!1221212 m!4718133))

(declare-fun m!4718135 () Bool)

(assert (=> d!1221212 m!4718135))

(declare-fun m!4718137 () Bool)

(assert (=> d!1221212 m!4718137))

(assert (=> b!4118629 m!4718113))

(assert (=> b!4118629 m!4718119))

(assert (=> b!4118629 m!4718119))

(assert (=> b!4118629 m!4718121))

(assert (=> b!4118629 m!4718121))

(declare-fun m!4718139 () Bool)

(assert (=> b!4118629 m!4718139))

(declare-fun m!4718141 () Bool)

(assert (=> bm!289896 m!4718141))

(declare-fun m!4718143 () Bool)

(assert (=> b!4118628 m!4718143))

(assert (=> b!4118374 d!1221212))

(declare-fun d!1221220 () Bool)

(declare-fun fromListB!2460 (List!44642) BalanceConc!26548)

(assert (=> d!1221220 (= (seqFromList!5383 p!2912) (fromListB!2460 p!2912))))

(declare-fun bs!594644 () Bool)

(assert (= bs!594644 d!1221220))

(declare-fun m!4718145 () Bool)

(assert (=> bs!594644 m!4718145))

(assert (=> b!4118374 d!1221220))

(declare-fun d!1221222 () Bool)

(declare-fun lt!1469344 () Int)

(assert (=> d!1221222 (>= lt!1469344 0)))

(declare-fun e!2555620 () Int)

(assert (=> d!1221222 (= lt!1469344 e!2555620)))

(declare-fun c!707349 () Bool)

(assert (=> d!1221222 (= c!707349 ((_ is Nil!44518) p!2912))))

(assert (=> d!1221222 (= (size!32942 p!2912) lt!1469344)))

(declare-fun b!4118637 () Bool)

(assert (=> b!4118637 (= e!2555620 0)))

(declare-fun b!4118638 () Bool)

(assert (=> b!4118638 (= e!2555620 (+ 1 (size!32942 (t!340545 p!2912))))))

(assert (= (and d!1221222 c!707349) b!4118637))

(assert (= (and d!1221222 (not c!707349)) b!4118638))

(declare-fun m!4718147 () Bool)

(assert (=> b!4118638 m!4718147))

(assert (=> b!4118374 d!1221222))

(declare-fun d!1221224 () Bool)

(declare-fun res!1682415 () Bool)

(declare-fun e!2555623 () Bool)

(assert (=> d!1221224 (=> (not res!1682415) (not e!2555623))))

(declare-fun rulesValid!2841 (LexerInterface!6855 List!44643) Bool)

(assert (=> d!1221224 (= res!1682415 (rulesValid!2841 thiss!25645 rules!3756))))

(assert (=> d!1221224 (= (rulesInvariant!6152 thiss!25645 rules!3756) e!2555623)))

(declare-fun b!4118641 () Bool)

(declare-datatypes ((List!44644 0))(
  ( (Nil!44520) (Cons!44520 (h!49940 String!51230) (t!340579 List!44644)) )
))
(declare-fun noDuplicateTag!2920 (LexerInterface!6855 List!44643 List!44644) Bool)

(assert (=> b!4118641 (= e!2555623 (noDuplicateTag!2920 thiss!25645 rules!3756 Nil!44520))))

(assert (= (and d!1221224 res!1682415) b!4118641))

(declare-fun m!4718149 () Bool)

(assert (=> d!1221224 m!4718149))

(declare-fun m!4718151 () Bool)

(assert (=> b!4118641 m!4718151))

(assert (=> b!4118389 d!1221224))

(declare-fun b!4118660 () Bool)

(declare-fun e!2555639 () Bool)

(declare-fun e!2555641 () Bool)

(assert (=> b!4118660 (= e!2555639 e!2555641)))

(declare-fun c!707355 () Bool)

(assert (=> b!4118660 (= c!707355 ((_ is Star!12171) (regex!7266 rBis!149)))))

(declare-fun b!4118661 () Bool)

(declare-fun e!2555642 () Bool)

(declare-fun call!289908 () Bool)

(assert (=> b!4118661 (= e!2555642 call!289908)))

(declare-fun b!4118662 () Bool)

(declare-fun e!2555640 () Bool)

(declare-fun e!2555638 () Bool)

(assert (=> b!4118662 (= e!2555640 e!2555638)))

(declare-fun res!1682429 () Bool)

(assert (=> b!4118662 (=> (not res!1682429) (not e!2555638))))

(declare-fun call!289909 () Bool)

(assert (=> b!4118662 (= res!1682429 call!289909)))

(declare-fun bm!289903 () Bool)

(declare-fun call!289910 () Bool)

(assert (=> bm!289903 (= call!289909 call!289910)))

(declare-fun b!4118663 () Bool)

(declare-fun e!2555644 () Bool)

(assert (=> b!4118663 (= e!2555641 e!2555644)))

(declare-fun c!707354 () Bool)

(assert (=> b!4118663 (= c!707354 ((_ is Union!12171) (regex!7266 rBis!149)))))

(declare-fun bm!289905 () Bool)

(assert (=> bm!289905 (= call!289910 (validRegex!5466 (ite c!707355 (reg!12500 (regex!7266 rBis!149)) (ite c!707354 (regOne!24855 (regex!7266 rBis!149)) (regOne!24854 (regex!7266 rBis!149))))))))

(declare-fun b!4118664 () Bool)

(declare-fun e!2555643 () Bool)

(assert (=> b!4118664 (= e!2555641 e!2555643)))

(declare-fun res!1682428 () Bool)

(assert (=> b!4118664 (= res!1682428 (not (nullable!4265 (reg!12500 (regex!7266 rBis!149)))))))

(assert (=> b!4118664 (=> (not res!1682428) (not e!2555643))))

(declare-fun bm!289904 () Bool)

(assert (=> bm!289904 (= call!289908 (validRegex!5466 (ite c!707354 (regTwo!24855 (regex!7266 rBis!149)) (regTwo!24854 (regex!7266 rBis!149)))))))

(declare-fun d!1221226 () Bool)

(declare-fun res!1682430 () Bool)

(assert (=> d!1221226 (=> res!1682430 e!2555639)))

(assert (=> d!1221226 (= res!1682430 ((_ is ElementMatch!12171) (regex!7266 rBis!149)))))

(assert (=> d!1221226 (= (validRegex!5466 (regex!7266 rBis!149)) e!2555639)))

(declare-fun b!4118665 () Bool)

(assert (=> b!4118665 (= e!2555643 call!289910)))

(declare-fun b!4118666 () Bool)

(declare-fun res!1682427 () Bool)

(assert (=> b!4118666 (=> (not res!1682427) (not e!2555642))))

(assert (=> b!4118666 (= res!1682427 call!289909)))

(assert (=> b!4118666 (= e!2555644 e!2555642)))

(declare-fun b!4118667 () Bool)

(assert (=> b!4118667 (= e!2555638 call!289908)))

(declare-fun b!4118668 () Bool)

(declare-fun res!1682426 () Bool)

(assert (=> b!4118668 (=> res!1682426 e!2555640)))

(assert (=> b!4118668 (= res!1682426 (not ((_ is Concat!19668) (regex!7266 rBis!149))))))

(assert (=> b!4118668 (= e!2555644 e!2555640)))

(assert (= (and d!1221226 (not res!1682430)) b!4118660))

(assert (= (and b!4118660 c!707355) b!4118664))

(assert (= (and b!4118660 (not c!707355)) b!4118663))

(assert (= (and b!4118664 res!1682428) b!4118665))

(assert (= (and b!4118663 c!707354) b!4118666))

(assert (= (and b!4118663 (not c!707354)) b!4118668))

(assert (= (and b!4118666 res!1682427) b!4118661))

(assert (= (and b!4118668 (not res!1682426)) b!4118662))

(assert (= (and b!4118662 res!1682429) b!4118667))

(assert (= (or b!4118666 b!4118662) bm!289903))

(assert (= (or b!4118661 b!4118667) bm!289904))

(assert (= (or b!4118665 bm!289903) bm!289905))

(declare-fun m!4718153 () Bool)

(assert (=> bm!289905 m!4718153))

(declare-fun m!4718155 () Bool)

(assert (=> b!4118664 m!4718155))

(declare-fun m!4718157 () Bool)

(assert (=> bm!289904 m!4718157))

(assert (=> b!4118368 d!1221226))

(declare-fun b!4118724 () Bool)

(declare-fun res!1682473 () Bool)

(declare-fun e!2555673 () Bool)

(assert (=> b!4118724 (=> (not res!1682473) (not e!2555673))))

(declare-fun call!289916 () Bool)

(assert (=> b!4118724 (= res!1682473 (not call!289916))))

(declare-fun d!1221228 () Bool)

(declare-fun e!2555671 () Bool)

(assert (=> d!1221228 e!2555671))

(declare-fun c!707365 () Bool)

(assert (=> d!1221228 (= c!707365 ((_ is EmptyExpr!12171) (regex!7266 rBis!149)))))

(declare-fun lt!1469362 () Bool)

(declare-fun e!2555674 () Bool)

(assert (=> d!1221228 (= lt!1469362 e!2555674)))

(declare-fun c!707366 () Bool)

(assert (=> d!1221228 (= c!707366 (isEmpty!26473 p!2912))))

(assert (=> d!1221228 (validRegex!5466 (regex!7266 rBis!149))))

(assert (=> d!1221228 (= (matchR!6002 (regex!7266 rBis!149) p!2912) lt!1469362)))

(declare-fun b!4118725 () Bool)

(declare-fun derivativeStep!3661 (Regex!12171 C!24528) Regex!12171)

(assert (=> b!4118725 (= e!2555674 (matchR!6002 (derivativeStep!3661 (regex!7266 rBis!149) (head!8673 p!2912)) (tail!6416 p!2912)))))

(declare-fun b!4118726 () Bool)

(assert (=> b!4118726 (= e!2555671 (= lt!1469362 call!289916))))

(declare-fun b!4118727 () Bool)

(declare-fun res!1682474 () Bool)

(assert (=> b!4118727 (=> (not res!1682474) (not e!2555673))))

(assert (=> b!4118727 (= res!1682474 (isEmpty!26473 (tail!6416 p!2912)))))

(declare-fun b!4118728 () Bool)

(declare-fun res!1682470 () Bool)

(declare-fun e!2555669 () Bool)

(assert (=> b!4118728 (=> res!1682470 e!2555669)))

(assert (=> b!4118728 (= res!1682470 (not ((_ is ElementMatch!12171) (regex!7266 rBis!149))))))

(declare-fun e!2555668 () Bool)

(assert (=> b!4118728 (= e!2555668 e!2555669)))

(declare-fun b!4118729 () Bool)

(declare-fun e!2555672 () Bool)

(assert (=> b!4118729 (= e!2555672 (not (= (head!8673 p!2912) (c!707309 (regex!7266 rBis!149)))))))

(declare-fun b!4118730 () Bool)

(assert (=> b!4118730 (= e!2555674 (nullable!4265 (regex!7266 rBis!149)))))

(declare-fun b!4118731 () Bool)

(declare-fun e!2555670 () Bool)

(assert (=> b!4118731 (= e!2555670 e!2555672)))

(declare-fun res!1682469 () Bool)

(assert (=> b!4118731 (=> res!1682469 e!2555672)))

(assert (=> b!4118731 (= res!1682469 call!289916)))

(declare-fun b!4118732 () Bool)

(declare-fun res!1682472 () Bool)

(assert (=> b!4118732 (=> res!1682472 e!2555669)))

(assert (=> b!4118732 (= res!1682472 e!2555673)))

(declare-fun res!1682471 () Bool)

(assert (=> b!4118732 (=> (not res!1682471) (not e!2555673))))

(assert (=> b!4118732 (= res!1682471 lt!1469362)))

(declare-fun b!4118733 () Bool)

(assert (=> b!4118733 (= e!2555671 e!2555668)))

(declare-fun c!707367 () Bool)

(assert (=> b!4118733 (= c!707367 ((_ is EmptyLang!12171) (regex!7266 rBis!149)))))

(declare-fun b!4118734 () Bool)

(declare-fun res!1682475 () Bool)

(assert (=> b!4118734 (=> res!1682475 e!2555672)))

(assert (=> b!4118734 (= res!1682475 (not (isEmpty!26473 (tail!6416 p!2912))))))

(declare-fun b!4118735 () Bool)

(assert (=> b!4118735 (= e!2555673 (= (head!8673 p!2912) (c!707309 (regex!7266 rBis!149))))))

(declare-fun b!4118736 () Bool)

(assert (=> b!4118736 (= e!2555668 (not lt!1469362))))

(declare-fun bm!289911 () Bool)

(assert (=> bm!289911 (= call!289916 (isEmpty!26473 p!2912))))

(declare-fun b!4118737 () Bool)

(assert (=> b!4118737 (= e!2555669 e!2555670)))

(declare-fun res!1682468 () Bool)

(assert (=> b!4118737 (=> (not res!1682468) (not e!2555670))))

(assert (=> b!4118737 (= res!1682468 (not lt!1469362))))

(assert (= (and d!1221228 c!707366) b!4118730))

(assert (= (and d!1221228 (not c!707366)) b!4118725))

(assert (= (and d!1221228 c!707365) b!4118726))

(assert (= (and d!1221228 (not c!707365)) b!4118733))

(assert (= (and b!4118733 c!707367) b!4118736))

(assert (= (and b!4118733 (not c!707367)) b!4118728))

(assert (= (and b!4118728 (not res!1682470)) b!4118732))

(assert (= (and b!4118732 res!1682471) b!4118724))

(assert (= (and b!4118724 res!1682473) b!4118727))

(assert (= (and b!4118727 res!1682474) b!4118735))

(assert (= (and b!4118732 (not res!1682472)) b!4118737))

(assert (= (and b!4118737 res!1682468) b!4118731))

(assert (= (and b!4118731 (not res!1682469)) b!4118734))

(assert (= (and b!4118734 (not res!1682475)) b!4118729))

(assert (= (or b!4118726 b!4118724 b!4118731) bm!289911))

(assert (=> b!4118735 m!4717941))

(assert (=> b!4118725 m!4717941))

(assert (=> b!4118725 m!4717941))

(declare-fun m!4718191 () Bool)

(assert (=> b!4118725 m!4718191))

(assert (=> b!4118725 m!4717945))

(assert (=> b!4118725 m!4718191))

(assert (=> b!4118725 m!4717945))

(declare-fun m!4718193 () Bool)

(assert (=> b!4118725 m!4718193))

(assert (=> b!4118727 m!4717945))

(assert (=> b!4118727 m!4717945))

(declare-fun m!4718195 () Bool)

(assert (=> b!4118727 m!4718195))

(declare-fun m!4718197 () Bool)

(assert (=> b!4118730 m!4718197))

(assert (=> bm!289911 m!4717919))

(assert (=> b!4118729 m!4717941))

(assert (=> d!1221228 m!4717919))

(assert (=> d!1221228 m!4717895))

(assert (=> b!4118734 m!4717945))

(assert (=> b!4118734 m!4717945))

(assert (=> b!4118734 m!4718195))

(assert (=> b!4118368 d!1221228))

(declare-fun d!1221232 () Bool)

(assert (=> d!1221232 (not (matchR!6002 (regex!7266 rBis!149) p!2912))))

(declare-fun lt!1469369 () Unit!63875)

(declare-fun choose!25163 (LexerInterface!6855 Rule!14332 List!44642 List!44642) Unit!63875)

(assert (=> d!1221232 (= lt!1469369 (choose!25163 thiss!25645 rBis!149 p!2912 input!3238))))

(assert (=> d!1221232 (isPrefix!4201 p!2912 input!3238)))

(assert (=> d!1221232 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!580 thiss!25645 rBis!149 p!2912 input!3238) lt!1469369)))

(declare-fun bs!594646 () Bool)

(assert (= bs!594646 d!1221232))

(assert (=> bs!594646 m!4717897))

(declare-fun m!4718203 () Bool)

(assert (=> bs!594646 m!4718203))

(assert (=> bs!594646 m!4717887))

(assert (=> b!4118368 d!1221232))

(declare-fun b!4118758 () Bool)

(declare-fun res!1682489 () Bool)

(declare-fun e!2555690 () Bool)

(assert (=> b!4118758 (=> (not res!1682489) (not e!2555690))))

(declare-fun call!289918 () Bool)

(assert (=> b!4118758 (= res!1682489 (not call!289918))))

(declare-fun d!1221238 () Bool)

(declare-fun e!2555688 () Bool)

(assert (=> d!1221238 e!2555688))

(declare-fun c!707374 () Bool)

(assert (=> d!1221238 (= c!707374 ((_ is EmptyExpr!12171) (regex!7266 r!4008)))))

(declare-fun lt!1469370 () Bool)

(declare-fun e!2555691 () Bool)

(assert (=> d!1221238 (= lt!1469370 e!2555691)))

(declare-fun c!707375 () Bool)

(assert (=> d!1221238 (= c!707375 (isEmpty!26473 p!2912))))

(assert (=> d!1221238 (validRegex!5466 (regex!7266 r!4008))))

(assert (=> d!1221238 (= (matchR!6002 (regex!7266 r!4008) p!2912) lt!1469370)))

(declare-fun b!4118759 () Bool)

(assert (=> b!4118759 (= e!2555691 (matchR!6002 (derivativeStep!3661 (regex!7266 r!4008) (head!8673 p!2912)) (tail!6416 p!2912)))))

(declare-fun b!4118760 () Bool)

(assert (=> b!4118760 (= e!2555688 (= lt!1469370 call!289918))))

(declare-fun b!4118761 () Bool)

(declare-fun res!1682490 () Bool)

(assert (=> b!4118761 (=> (not res!1682490) (not e!2555690))))

(assert (=> b!4118761 (= res!1682490 (isEmpty!26473 (tail!6416 p!2912)))))

(declare-fun b!4118762 () Bool)

(declare-fun res!1682486 () Bool)

(declare-fun e!2555686 () Bool)

(assert (=> b!4118762 (=> res!1682486 e!2555686)))

(assert (=> b!4118762 (= res!1682486 (not ((_ is ElementMatch!12171) (regex!7266 r!4008))))))

(declare-fun e!2555685 () Bool)

(assert (=> b!4118762 (= e!2555685 e!2555686)))

(declare-fun b!4118763 () Bool)

(declare-fun e!2555689 () Bool)

(assert (=> b!4118763 (= e!2555689 (not (= (head!8673 p!2912) (c!707309 (regex!7266 r!4008)))))))

(declare-fun b!4118764 () Bool)

(assert (=> b!4118764 (= e!2555691 (nullable!4265 (regex!7266 r!4008)))))

(declare-fun b!4118765 () Bool)

(declare-fun e!2555687 () Bool)

(assert (=> b!4118765 (= e!2555687 e!2555689)))

(declare-fun res!1682485 () Bool)

(assert (=> b!4118765 (=> res!1682485 e!2555689)))

(assert (=> b!4118765 (= res!1682485 call!289918)))

(declare-fun b!4118766 () Bool)

(declare-fun res!1682488 () Bool)

(assert (=> b!4118766 (=> res!1682488 e!2555686)))

(assert (=> b!4118766 (= res!1682488 e!2555690)))

(declare-fun res!1682487 () Bool)

(assert (=> b!4118766 (=> (not res!1682487) (not e!2555690))))

(assert (=> b!4118766 (= res!1682487 lt!1469370)))

(declare-fun b!4118767 () Bool)

(assert (=> b!4118767 (= e!2555688 e!2555685)))

(declare-fun c!707376 () Bool)

(assert (=> b!4118767 (= c!707376 ((_ is EmptyLang!12171) (regex!7266 r!4008)))))

(declare-fun b!4118768 () Bool)

(declare-fun res!1682491 () Bool)

(assert (=> b!4118768 (=> res!1682491 e!2555689)))

(assert (=> b!4118768 (= res!1682491 (not (isEmpty!26473 (tail!6416 p!2912))))))

(declare-fun b!4118769 () Bool)

(assert (=> b!4118769 (= e!2555690 (= (head!8673 p!2912) (c!707309 (regex!7266 r!4008))))))

(declare-fun b!4118770 () Bool)

(assert (=> b!4118770 (= e!2555685 (not lt!1469370))))

(declare-fun bm!289913 () Bool)

(assert (=> bm!289913 (= call!289918 (isEmpty!26473 p!2912))))

(declare-fun b!4118771 () Bool)

(assert (=> b!4118771 (= e!2555686 e!2555687)))

(declare-fun res!1682484 () Bool)

(assert (=> b!4118771 (=> (not res!1682484) (not e!2555687))))

(assert (=> b!4118771 (= res!1682484 (not lt!1469370))))

(assert (= (and d!1221238 c!707375) b!4118764))

(assert (= (and d!1221238 (not c!707375)) b!4118759))

(assert (= (and d!1221238 c!707374) b!4118760))

(assert (= (and d!1221238 (not c!707374)) b!4118767))

(assert (= (and b!4118767 c!707376) b!4118770))

(assert (= (and b!4118767 (not c!707376)) b!4118762))

(assert (= (and b!4118762 (not res!1682486)) b!4118766))

(assert (= (and b!4118766 res!1682487) b!4118758))

(assert (= (and b!4118758 res!1682489) b!4118761))

(assert (= (and b!4118761 res!1682490) b!4118769))

(assert (= (and b!4118766 (not res!1682488)) b!4118771))

(assert (= (and b!4118771 res!1682484) b!4118765))

(assert (= (and b!4118765 (not res!1682485)) b!4118768))

(assert (= (and b!4118768 (not res!1682491)) b!4118763))

(assert (= (or b!4118760 b!4118758 b!4118765) bm!289913))

(assert (=> b!4118769 m!4717941))

(assert (=> b!4118759 m!4717941))

(assert (=> b!4118759 m!4717941))

(declare-fun m!4718209 () Bool)

(assert (=> b!4118759 m!4718209))

(assert (=> b!4118759 m!4717945))

(assert (=> b!4118759 m!4718209))

(assert (=> b!4118759 m!4717945))

(declare-fun m!4718211 () Bool)

(assert (=> b!4118759 m!4718211))

(assert (=> b!4118761 m!4717945))

(assert (=> b!4118761 m!4717945))

(assert (=> b!4118761 m!4718195))

(assert (=> b!4118764 m!4717957))

(assert (=> bm!289913 m!4717919))

(assert (=> b!4118763 m!4717941))

(assert (=> d!1221238 m!4717919))

(assert (=> d!1221238 m!4717955))

(assert (=> b!4118768 m!4717945))

(assert (=> b!4118768 m!4717945))

(assert (=> b!4118768 m!4718195))

(assert (=> b!4118378 d!1221238))

(declare-fun d!1221244 () Bool)

(assert (=> d!1221244 (= (isEmpty!26472 rules!3756) ((_ is Nil!44519) rules!3756))))

(assert (=> b!4118377 d!1221244))

(declare-fun d!1221250 () Bool)

(assert (=> d!1221250 (= (inv!59098 (tag!8126 rBis!149)) (= (mod (str.len (value!227634 (tag!8126 rBis!149))) 2) 0))))

(assert (=> b!4118388 d!1221250))

(declare-fun d!1221252 () Bool)

(declare-fun res!1682495 () Bool)

(declare-fun e!2555695 () Bool)

(assert (=> d!1221252 (=> (not res!1682495) (not e!2555695))))

(assert (=> d!1221252 (= res!1682495 (semiInverseModEq!3127 (toChars!9777 (transformation!7266 rBis!149)) (toValue!9918 (transformation!7266 rBis!149))))))

(assert (=> d!1221252 (= (inv!59100 (transformation!7266 rBis!149)) e!2555695)))

(declare-fun b!4118775 () Bool)

(assert (=> b!4118775 (= e!2555695 (equivClasses!3026 (toChars!9777 (transformation!7266 rBis!149)) (toValue!9918 (transformation!7266 rBis!149))))))

(assert (= (and d!1221252 res!1682495) b!4118775))

(declare-fun m!4718223 () Bool)

(assert (=> d!1221252 m!4718223))

(declare-fun m!4718225 () Bool)

(assert (=> b!4118775 m!4718225))

(assert (=> b!4118388 d!1221252))

(declare-fun d!1221256 () Bool)

(assert (=> d!1221256 (ruleValid!3074 thiss!25645 r!4008)))

(declare-fun lt!1469376 () Unit!63875)

(declare-fun choose!25164 (LexerInterface!6855 Rule!14332 List!44643) Unit!63875)

(assert (=> d!1221256 (= lt!1469376 (choose!25164 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1221256 (contains!8938 rules!3756 r!4008)))

(assert (=> d!1221256 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2118 thiss!25645 r!4008 rules!3756) lt!1469376)))

(declare-fun bs!594647 () Bool)

(assert (= bs!594647 d!1221256))

(assert (=> bs!594647 m!4717889))

(declare-fun m!4718227 () Bool)

(assert (=> bs!594647 m!4718227))

(assert (=> bs!594647 m!4717905))

(assert (=> b!4118381 d!1221256))

(declare-fun d!1221260 () Bool)

(declare-fun res!1682498 () Bool)

(declare-fun e!2555698 () Bool)

(assert (=> d!1221260 (=> (not res!1682498) (not e!2555698))))

(assert (=> d!1221260 (= res!1682498 (validRegex!5466 (regex!7266 rBis!149)))))

(assert (=> d!1221260 (= (ruleValid!3074 thiss!25645 rBis!149) e!2555698)))

(declare-fun b!4118778 () Bool)

(declare-fun res!1682499 () Bool)

(assert (=> b!4118778 (=> (not res!1682499) (not e!2555698))))

(assert (=> b!4118778 (= res!1682499 (not (nullable!4265 (regex!7266 rBis!149))))))

(declare-fun b!4118779 () Bool)

(assert (=> b!4118779 (= e!2555698 (not (= (tag!8126 rBis!149) (String!51231 ""))))))

(assert (= (and d!1221260 res!1682498) b!4118778))

(assert (= (and b!4118778 res!1682499) b!4118779))

(assert (=> d!1221260 m!4717895))

(assert (=> b!4118778 m!4718197))

(assert (=> b!4118381 d!1221260))

(declare-fun d!1221262 () Bool)

(assert (=> d!1221262 (ruleValid!3074 thiss!25645 rBis!149)))

(declare-fun lt!1469377 () Unit!63875)

(assert (=> d!1221262 (= lt!1469377 (choose!25164 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1221262 (contains!8938 rules!3756 rBis!149)))

(assert (=> d!1221262 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2118 thiss!25645 rBis!149 rules!3756) lt!1469377)))

(declare-fun bs!594648 () Bool)

(assert (= bs!594648 d!1221262))

(assert (=> bs!594648 m!4717873))

(declare-fun m!4718229 () Bool)

(assert (=> bs!594648 m!4718229))

(assert (=> bs!594648 m!4717869))

(assert (=> b!4118381 d!1221262))

(declare-fun b!4118790 () Bool)

(declare-fun e!2555706 () Int)

(declare-fun e!2555705 () Int)

(assert (=> b!4118790 (= e!2555706 e!2555705)))

(declare-fun c!707382 () Bool)

(assert (=> b!4118790 (= c!707382 (and ((_ is Cons!44519) rules!3756) (not (= (h!49939 rules!3756) rBis!149))))))

(declare-fun d!1221264 () Bool)

(declare-fun lt!1469381 () Int)

(assert (=> d!1221264 (>= lt!1469381 0)))

(assert (=> d!1221264 (= lt!1469381 e!2555706)))

(declare-fun c!707381 () Bool)

(assert (=> d!1221264 (= c!707381 (and ((_ is Cons!44519) rules!3756) (= (h!49939 rules!3756) rBis!149)))))

(assert (=> d!1221264 (contains!8938 rules!3756 rBis!149)))

(assert (=> d!1221264 (= (getIndex!614 rules!3756 rBis!149) lt!1469381)))

(declare-fun b!4118792 () Bool)

(assert (=> b!4118792 (= e!2555705 (- 1))))

(declare-fun b!4118791 () Bool)

(assert (=> b!4118791 (= e!2555705 (+ 1 (getIndex!614 (t!340546 rules!3756) rBis!149)))))

(declare-fun b!4118789 () Bool)

(assert (=> b!4118789 (= e!2555706 0)))

(assert (= (and d!1221264 c!707381) b!4118789))

(assert (= (and d!1221264 (not c!707381)) b!4118790))

(assert (= (and b!4118790 c!707382) b!4118791))

(assert (= (and b!4118790 (not c!707382)) b!4118792))

(assert (=> d!1221264 m!4717869))

(declare-fun m!4718233 () Bool)

(assert (=> b!4118791 m!4718233))

(assert (=> b!4118370 d!1221264))

(declare-fun b!4118794 () Bool)

(declare-fun e!2555708 () Int)

(declare-fun e!2555707 () Int)

(assert (=> b!4118794 (= e!2555708 e!2555707)))

(declare-fun c!707384 () Bool)

(assert (=> b!4118794 (= c!707384 (and ((_ is Cons!44519) rules!3756) (not (= (h!49939 rules!3756) r!4008))))))

(declare-fun d!1221268 () Bool)

(declare-fun lt!1469382 () Int)

(assert (=> d!1221268 (>= lt!1469382 0)))

(assert (=> d!1221268 (= lt!1469382 e!2555708)))

(declare-fun c!707383 () Bool)

(assert (=> d!1221268 (= c!707383 (and ((_ is Cons!44519) rules!3756) (= (h!49939 rules!3756) r!4008)))))

(assert (=> d!1221268 (contains!8938 rules!3756 r!4008)))

(assert (=> d!1221268 (= (getIndex!614 rules!3756 r!4008) lt!1469382)))

(declare-fun b!4118796 () Bool)

(assert (=> b!4118796 (= e!2555707 (- 1))))

(declare-fun b!4118795 () Bool)

(assert (=> b!4118795 (= e!2555707 (+ 1 (getIndex!614 (t!340546 rules!3756) r!4008)))))

(declare-fun b!4118793 () Bool)

(assert (=> b!4118793 (= e!2555708 0)))

(assert (= (and d!1221268 c!707383) b!4118793))

(assert (= (and d!1221268 (not c!707383)) b!4118794))

(assert (= (and b!4118794 c!707384) b!4118795))

(assert (= (and b!4118794 (not c!707384)) b!4118796))

(assert (=> d!1221268 m!4717905))

(declare-fun m!4718235 () Bool)

(assert (=> b!4118795 m!4718235))

(assert (=> b!4118370 d!1221268))

(declare-fun d!1221270 () Bool)

(assert (=> d!1221270 (= (inv!59098 (tag!8126 r!4008)) (= (mod (str.len (value!227634 (tag!8126 r!4008))) 2) 0))))

(assert (=> b!4118379 d!1221270))

(declare-fun d!1221272 () Bool)

(declare-fun res!1682501 () Bool)

(declare-fun e!2555709 () Bool)

(assert (=> d!1221272 (=> (not res!1682501) (not e!2555709))))

(assert (=> d!1221272 (= res!1682501 (semiInverseModEq!3127 (toChars!9777 (transformation!7266 r!4008)) (toValue!9918 (transformation!7266 r!4008))))))

(assert (=> d!1221272 (= (inv!59100 (transformation!7266 r!4008)) e!2555709)))

(declare-fun b!4118797 () Bool)

(assert (=> b!4118797 (= e!2555709 (equivClasses!3026 (toChars!9777 (transformation!7266 r!4008)) (toValue!9918 (transformation!7266 r!4008))))))

(assert (= (and d!1221272 res!1682501) b!4118797))

(declare-fun m!4718237 () Bool)

(assert (=> d!1221272 m!4718237))

(declare-fun m!4718239 () Bool)

(assert (=> b!4118797 m!4718239))

(assert (=> b!4118379 d!1221272))

(declare-fun b!4118802 () Bool)

(declare-fun e!2555712 () Bool)

(declare-fun tp!1255037 () Bool)

(assert (=> b!4118802 (= e!2555712 (and tp_is_empty!21265 tp!1255037))))

(assert (=> b!4118384 (= tp!1255027 e!2555712)))

(assert (= (and b!4118384 ((_ is Cons!44518) (t!340545 input!3238))) b!4118802))

(declare-fun b!4118813 () Bool)

(declare-fun e!2555715 () Bool)

(assert (=> b!4118813 (= e!2555715 tp_is_empty!21265)))

(declare-fun b!4118816 () Bool)

(declare-fun tp!1255052 () Bool)

(declare-fun tp!1255050 () Bool)

(assert (=> b!4118816 (= e!2555715 (and tp!1255052 tp!1255050))))

(declare-fun b!4118814 () Bool)

(declare-fun tp!1255051 () Bool)

(declare-fun tp!1255048 () Bool)

(assert (=> b!4118814 (= e!2555715 (and tp!1255051 tp!1255048))))

(declare-fun b!4118815 () Bool)

(declare-fun tp!1255049 () Bool)

(assert (=> b!4118815 (= e!2555715 tp!1255049)))

(assert (=> b!4118388 (= tp!1255028 e!2555715)))

(assert (= (and b!4118388 ((_ is ElementMatch!12171) (regex!7266 rBis!149))) b!4118813))

(assert (= (and b!4118388 ((_ is Concat!19668) (regex!7266 rBis!149))) b!4118814))

(assert (= (and b!4118388 ((_ is Star!12171) (regex!7266 rBis!149))) b!4118815))

(assert (= (and b!4118388 ((_ is Union!12171) (regex!7266 rBis!149))) b!4118816))

(declare-fun b!4118817 () Bool)

(declare-fun e!2555716 () Bool)

(assert (=> b!4118817 (= e!2555716 tp_is_empty!21265)))

(declare-fun b!4118820 () Bool)

(declare-fun tp!1255057 () Bool)

(declare-fun tp!1255055 () Bool)

(assert (=> b!4118820 (= e!2555716 (and tp!1255057 tp!1255055))))

(declare-fun b!4118818 () Bool)

(declare-fun tp!1255056 () Bool)

(declare-fun tp!1255053 () Bool)

(assert (=> b!4118818 (= e!2555716 (and tp!1255056 tp!1255053))))

(declare-fun b!4118819 () Bool)

(declare-fun tp!1255054 () Bool)

(assert (=> b!4118819 (= e!2555716 tp!1255054)))

(assert (=> b!4118372 (= tp!1255017 e!2555716)))

(assert (= (and b!4118372 ((_ is ElementMatch!12171) (regex!7266 (h!49939 rules!3756)))) b!4118817))

(assert (= (and b!4118372 ((_ is Concat!19668) (regex!7266 (h!49939 rules!3756)))) b!4118818))

(assert (= (and b!4118372 ((_ is Star!12171) (regex!7266 (h!49939 rules!3756)))) b!4118819))

(assert (= (and b!4118372 ((_ is Union!12171) (regex!7266 (h!49939 rules!3756)))) b!4118820))

(declare-fun b!4118831 () Bool)

(declare-fun b_free!116351 () Bool)

(declare-fun b_next!117055 () Bool)

(assert (=> b!4118831 (= b_free!116351 (not b_next!117055))))

(declare-fun tb!247151 () Bool)

(declare-fun t!340572 () Bool)

(assert (=> (and b!4118831 (= (toValue!9918 (transformation!7266 (h!49939 (t!340546 rules!3756)))) (toValue!9918 (transformation!7266 r!4008))) t!340572) tb!247151))

(declare-fun result!300230 () Bool)

(assert (= result!300230 result!300192))

(assert (=> d!1221184 t!340572))

(assert (=> d!1221190 t!340572))

(declare-fun b_and!318469 () Bool)

(declare-fun tp!1255066 () Bool)

(assert (=> b!4118831 (= tp!1255066 (and (=> t!340572 result!300230) b_and!318469))))

(declare-fun b_free!116353 () Bool)

(declare-fun b_next!117057 () Bool)

(assert (=> b!4118831 (= b_free!116353 (not b_next!117057))))

(declare-fun t!340574 () Bool)

(declare-fun tb!247153 () Bool)

(assert (=> (and b!4118831 (= (toChars!9777 (transformation!7266 (h!49939 (t!340546 rules!3756)))) (toChars!9777 (transformation!7266 r!4008))) t!340574) tb!247153))

(declare-fun result!300232 () Bool)

(assert (= result!300232 result!300200))

(assert (=> d!1221190 t!340574))

(declare-fun b_and!318471 () Bool)

(declare-fun tp!1255068 () Bool)

(assert (=> b!4118831 (= tp!1255068 (and (=> t!340574 result!300232) b_and!318471))))

(declare-fun e!2555725 () Bool)

(assert (=> b!4118831 (= e!2555725 (and tp!1255066 tp!1255068))))

(declare-fun tp!1255069 () Bool)

(declare-fun b!4118830 () Bool)

(declare-fun e!2555727 () Bool)

(assert (=> b!4118830 (= e!2555727 (and tp!1255069 (inv!59098 (tag!8126 (h!49939 (t!340546 rules!3756)))) (inv!59100 (transformation!7266 (h!49939 (t!340546 rules!3756)))) e!2555725))))

(declare-fun b!4118829 () Bool)

(declare-fun e!2555726 () Bool)

(declare-fun tp!1255067 () Bool)

(assert (=> b!4118829 (= e!2555726 (and e!2555727 tp!1255067))))

(assert (=> b!4118380 (= tp!1255020 e!2555726)))

(assert (= b!4118830 b!4118831))

(assert (= b!4118829 b!4118830))

(assert (= (and b!4118380 ((_ is Cons!44519) (t!340546 rules!3756))) b!4118829))

(declare-fun m!4718241 () Bool)

(assert (=> b!4118830 m!4718241))

(declare-fun m!4718243 () Bool)

(assert (=> b!4118830 m!4718243))

(declare-fun b!4118832 () Bool)

(declare-fun e!2555729 () Bool)

(assert (=> b!4118832 (= e!2555729 tp_is_empty!21265)))

(declare-fun b!4118835 () Bool)

(declare-fun tp!1255074 () Bool)

(declare-fun tp!1255072 () Bool)

(assert (=> b!4118835 (= e!2555729 (and tp!1255074 tp!1255072))))

(declare-fun b!4118833 () Bool)

(declare-fun tp!1255073 () Bool)

(declare-fun tp!1255070 () Bool)

(assert (=> b!4118833 (= e!2555729 (and tp!1255073 tp!1255070))))

(declare-fun b!4118834 () Bool)

(declare-fun tp!1255071 () Bool)

(assert (=> b!4118834 (= e!2555729 tp!1255071)))

(assert (=> b!4118379 (= tp!1255024 e!2555729)))

(assert (= (and b!4118379 ((_ is ElementMatch!12171) (regex!7266 r!4008))) b!4118832))

(assert (= (and b!4118379 ((_ is Concat!19668) (regex!7266 r!4008))) b!4118833))

(assert (= (and b!4118379 ((_ is Star!12171) (regex!7266 r!4008))) b!4118834))

(assert (= (and b!4118379 ((_ is Union!12171) (regex!7266 r!4008))) b!4118835))

(declare-fun b!4118836 () Bool)

(declare-fun e!2555730 () Bool)

(declare-fun tp!1255075 () Bool)

(assert (=> b!4118836 (= e!2555730 (and tp_is_empty!21265 tp!1255075))))

(assert (=> b!4118390 (= tp!1255018 e!2555730)))

(assert (= (and b!4118390 ((_ is Cons!44518) (t!340545 p!2912))) b!4118836))

(declare-fun b_lambda!120827 () Bool)

(assert (= b_lambda!120817 (or (and b!4118371 b_free!116341 (= (toChars!9777 (transformation!7266 (h!49939 rules!3756))) (toChars!9777 (transformation!7266 r!4008)))) (and b!4118369 b_free!116345) (and b!4118386 b_free!116349 (= (toChars!9777 (transformation!7266 rBis!149)) (toChars!9777 (transformation!7266 r!4008)))) (and b!4118831 b_free!116353 (= (toChars!9777 (transformation!7266 (h!49939 (t!340546 rules!3756)))) (toChars!9777 (transformation!7266 r!4008)))) b_lambda!120827)))

(declare-fun b_lambda!120829 () Bool)

(assert (= b_lambda!120815 (or (and b!4118371 b_free!116339 (= (toValue!9918 (transformation!7266 (h!49939 rules!3756))) (toValue!9918 (transformation!7266 r!4008)))) (and b!4118369 b_free!116343) (and b!4118386 b_free!116347 (= (toValue!9918 (transformation!7266 rBis!149)) (toValue!9918 (transformation!7266 r!4008)))) (and b!4118831 b_free!116351 (= (toValue!9918 (transformation!7266 (h!49939 (t!340546 rules!3756)))) (toValue!9918 (transformation!7266 r!4008)))) b_lambda!120829)))

(declare-fun b_lambda!120831 () Bool)

(assert (= b_lambda!120819 (or (and b!4118371 b_free!116339 (= (toValue!9918 (transformation!7266 (h!49939 rules!3756))) (toValue!9918 (transformation!7266 r!4008)))) (and b!4118369 b_free!116343) (and b!4118386 b_free!116347 (= (toValue!9918 (transformation!7266 rBis!149)) (toValue!9918 (transformation!7266 r!4008)))) (and b!4118831 b_free!116351 (= (toValue!9918 (transformation!7266 (h!49939 (t!340546 rules!3756)))) (toValue!9918 (transformation!7266 r!4008)))) b_lambda!120831)))

(check-sat (not b!4118727) (not b!4118815) (not b_next!117055) (not d!1221162) (not b!4118735) (not b!4118407) (not b!4118632) (not d!1221220) (not d!1221272) (not b!4118829) (not b!4118819) (not d!1221154) (not b_next!117057) b_and!318447 tp_is_empty!21265 (not b!4118518) b_and!318443 (not b!4118791) (not d!1221224) (not d!1221264) (not bm!289911) (not b!4118814) b_and!318441 (not b!4118520) (not bm!289896) (not b!4118638) (not d!1221210) (not b_lambda!120831) (not b!4118408) (not b!4118396) (not b!4118725) (not b!4118816) (not b!4118629) (not b!4118626) (not b!4118764) (not bm!289904) (not d!1221252) (not b!4118411) (not b!4118761) (not d!1221238) (not d!1221228) (not b!4118797) (not b!4118768) b_and!318469 b_and!318471 (not b!4118775) (not b!4118534) (not d!1221148) (not b!4118834) (not d!1221268) (not b!4118631) (not b!4118835) (not b!4118802) (not b!4118519) (not b_next!117049) (not b!4118516) (not d!1221160) (not b_next!117053) b_and!318445 (not d!1221178) (not b!4118769) (not b!4118830) (not b_next!117045) (not b_next!117047) (not d!1221256) (not b!4118730) (not b!4118763) (not b!4118833) (not b!4118416) (not d!1221180) (not b!4118624) b_and!318449 (not b!4118664) (not b_lambda!120827) (not b!4118421) (not b!4118818) (not d!1221190) (not d!1221158) (not b!4118515) (not bm!289913) (not b!4118778) (not d!1221166) (not d!1221232) (not b!4118836) (not b!4118729) (not b!4118406) (not b!4118514) (not b!4118795) (not d!1221212) (not b_lambda!120829) (not b_next!117051) (not d!1221260) (not b!4118628) (not b!4118641) (not d!1221262) (not tb!247127) (not b!4118513) (not b!4118517) (not bm!289905) b_and!318439 (not b!4118625) (not tb!247133) (not b!4118581) (not b!4118586) (not b!4118419) (not b!4118820) (not b!4118759) (not b!4118734) (not b_next!117043) (not b!4118630))
(check-sat (not b_next!117055) b_and!318441 (not b_next!117049) (not b_next!117053) b_and!318449 (not b_next!117051) b_and!318439 (not b_next!117043) (not b_next!117057) b_and!318447 b_and!318443 b_and!318469 b_and!318471 b_and!318445 (not b_next!117045) (not b_next!117047))
