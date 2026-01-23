; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!379636 () Bool)

(assert start!379636)

(declare-fun b!4029871 () Bool)

(declare-fun b_free!112281 () Bool)

(declare-fun b_next!112985 () Bool)

(assert (=> b!4029871 (= b_free!112281 (not b_next!112985))))

(declare-fun tp!1224841 () Bool)

(declare-fun b_and!309671 () Bool)

(assert (=> b!4029871 (= tp!1224841 b_and!309671)))

(declare-fun b_free!112283 () Bool)

(declare-fun b_next!112987 () Bool)

(assert (=> b!4029871 (= b_free!112283 (not b_next!112987))))

(declare-fun tp!1224834 () Bool)

(declare-fun b_and!309673 () Bool)

(assert (=> b!4029871 (= tp!1224834 b_and!309673)))

(declare-fun b!4029878 () Bool)

(declare-fun b_free!112285 () Bool)

(declare-fun b_next!112989 () Bool)

(assert (=> b!4029878 (= b_free!112285 (not b_next!112989))))

(declare-fun tp!1224836 () Bool)

(declare-fun b_and!309675 () Bool)

(assert (=> b!4029878 (= tp!1224836 b_and!309675)))

(declare-fun b_free!112287 () Bool)

(declare-fun b_next!112991 () Bool)

(assert (=> b!4029878 (= b_free!112287 (not b_next!112991))))

(declare-fun tp!1224844 () Bool)

(declare-fun b_and!309677 () Bool)

(assert (=> b!4029878 (= tp!1224844 b_and!309677)))

(declare-fun b!4029850 () Bool)

(declare-fun e!2500378 () Bool)

(declare-fun tp_is_empty!20585 () Bool)

(declare-fun tp!1224842 () Bool)

(assert (=> b!4029850 (= e!2500378 (and tp_is_empty!20585 tp!1224842))))

(declare-fun b!4029851 () Bool)

(declare-fun e!2500376 () Bool)

(declare-fun e!2500394 () Bool)

(assert (=> b!4029851 (= e!2500376 e!2500394)))

(declare-fun res!1640343 () Bool)

(assert (=> b!4029851 (=> (not res!1640343) (not e!2500394))))

(declare-datatypes ((C!23800 0))(
  ( (C!23801 (val!13994 Int)) )
))
(declare-datatypes ((List!43293 0))(
  ( (Nil!43169) (Cons!43169 (h!48589 C!23800) (t!334134 List!43293)) )
))
(declare-fun lt!1432385 () List!43293)

(declare-fun lt!1432375 () List!43293)

(assert (=> b!4029851 (= res!1640343 (= lt!1432385 lt!1432375))))

(declare-fun prefix!494 () List!43293)

(declare-fun newSuffix!27 () List!43293)

(declare-fun ++!11304 (List!43293 List!43293) List!43293)

(assert (=> b!4029851 (= lt!1432375 (++!11304 prefix!494 newSuffix!27))))

(declare-fun lt!1432381 () List!43293)

(declare-fun newSuffixResult!27 () List!43293)

(assert (=> b!4029851 (= lt!1432385 (++!11304 lt!1432381 newSuffixResult!27))))

(declare-fun b!4029852 () Bool)

(declare-fun res!1640348 () Bool)

(declare-fun e!2500395 () Bool)

(assert (=> b!4029852 (=> (not res!1640348) (not e!2500395))))

(declare-fun suffix!1299 () List!43293)

(declare-fun isPrefix!3989 (List!43293 List!43293) Bool)

(assert (=> b!4029852 (= res!1640348 (isPrefix!3989 newSuffix!27 suffix!1299))))

(declare-fun b!4029853 () Bool)

(declare-fun e!2500382 () Bool)

(declare-fun e!2500380 () Bool)

(assert (=> b!4029853 (= e!2500382 e!2500380)))

(declare-fun res!1640336 () Bool)

(assert (=> b!4029853 (=> res!1640336 e!2500380)))

(declare-datatypes ((List!43294 0))(
  ( (Nil!43170) (Cons!43170 (h!48590 (_ BitVec 16)) (t!334135 List!43294)) )
))
(declare-datatypes ((TokenValue!7132 0))(
  ( (FloatLiteralValue!14264 (text!50369 List!43294)) (TokenValueExt!7131 (__x!26481 Int)) (Broken!35660 (value!217315 List!43294)) (Object!7255) (End!7132) (Def!7132) (Underscore!7132) (Match!7132) (Else!7132) (Error!7132) (Case!7132) (If!7132) (Extends!7132) (Abstract!7132) (Class!7132) (Val!7132) (DelimiterValue!14264 (del!7192 List!43294)) (KeywordValue!7138 (value!217316 List!43294)) (CommentValue!14264 (value!217317 List!43294)) (WhitespaceValue!14264 (value!217318 List!43294)) (IndentationValue!7132 (value!217319 List!43294)) (String!49377) (Int32!7132) (Broken!35661 (value!217320 List!43294)) (Boolean!7133) (Unit!62331) (OperatorValue!7135 (op!7192 List!43294)) (IdentifierValue!14264 (value!217321 List!43294)) (IdentifierValue!14265 (value!217322 List!43294)) (WhitespaceValue!14265 (value!217323 List!43294)) (True!14264) (False!14264) (Broken!35662 (value!217324 List!43294)) (Broken!35663 (value!217325 List!43294)) (True!14265) (RightBrace!7132) (RightBracket!7132) (Colon!7132) (Null!7132) (Comma!7132) (LeftBracket!7132) (False!14265) (LeftBrace!7132) (ImaginaryLiteralValue!7132 (text!50370 List!43294)) (StringLiteralValue!21396 (value!217326 List!43294)) (EOFValue!7132 (value!217327 List!43294)) (IdentValue!7132 (value!217328 List!43294)) (DelimiterValue!14265 (value!217329 List!43294)) (DedentValue!7132 (value!217330 List!43294)) (NewLineValue!7132 (value!217331 List!43294)) (IntegerValue!21396 (value!217332 (_ BitVec 32)) (text!50371 List!43294)) (IntegerValue!21397 (value!217333 Int) (text!50372 List!43294)) (Times!7132) (Or!7132) (Equal!7132) (Minus!7132) (Broken!35664 (value!217334 List!43294)) (And!7132) (Div!7132) (LessEqual!7132) (Mod!7132) (Concat!18939) (Not!7132) (Plus!7132) (SpaceValue!7132 (value!217335 List!43294)) (IntegerValue!21398 (value!217336 Int) (text!50373 List!43294)) (StringLiteralValue!21397 (text!50374 List!43294)) (FloatLiteralValue!14265 (text!50375 List!43294)) (BytesLiteralValue!7132 (value!217337 List!43294)) (CommentValue!14265 (value!217338 List!43294)) (StringLiteralValue!21398 (value!217339 List!43294)) (ErrorTokenValue!7132 (msg!7193 List!43294)) )
))
(declare-datatypes ((Regex!11807 0))(
  ( (ElementMatch!11807 (c!696106 C!23800)) (Concat!18940 (regOne!24126 Regex!11807) (regTwo!24126 Regex!11807)) (EmptyExpr!11807) (Star!11807 (reg!12136 Regex!11807)) (EmptyLang!11807) (Union!11807 (regOne!24127 Regex!11807) (regTwo!24127 Regex!11807)) )
))
(declare-datatypes ((String!49378 0))(
  ( (String!49379 (value!217340 String)) )
))
(declare-datatypes ((IArray!26231 0))(
  ( (IArray!26232 (innerList!13173 List!43293)) )
))
(declare-datatypes ((Conc!13113 0))(
  ( (Node!13113 (left!32518 Conc!13113) (right!32848 Conc!13113) (csize!26456 Int) (cheight!13324 Int)) (Leaf!20271 (xs!16419 IArray!26231) (csize!26457 Int)) (Empty!13113) )
))
(declare-datatypes ((BalanceConc!25820 0))(
  ( (BalanceConc!25821 (c!696107 Conc!13113)) )
))
(declare-datatypes ((TokenValueInjection!13692 0))(
  ( (TokenValueInjection!13693 (toValue!9426 Int) (toChars!9285 Int)) )
))
(declare-datatypes ((Rule!13604 0))(
  ( (Rule!13605 (regex!6902 Regex!11807) (tag!7762 String!49378) (isSeparator!6902 Bool) (transformation!6902 TokenValueInjection!13692)) )
))
(declare-datatypes ((Token!12942 0))(
  ( (Token!12943 (value!217341 TokenValue!7132) (rule!9962 Rule!13604) (size!32265 Int) (originalCharacters!7502 List!43293)) )
))
(declare-fun token!484 () Token!12942)

(declare-fun matchR!5760 (Regex!11807 List!43293) Bool)

(assert (=> b!4029853 (= res!1640336 (not (matchR!5760 (regex!6902 (rule!9962 token!484)) lt!1432381)))))

(assert (=> b!4029853 (isPrefix!3989 lt!1432381 lt!1432375)))

(declare-datatypes ((Unit!62332 0))(
  ( (Unit!62333) )
))
(declare-fun lt!1432391 () Unit!62332)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!782 (List!43293 List!43293 List!43293) Unit!62332)

(assert (=> b!4029853 (= lt!1432391 (lemmaPrefixStaysPrefixWhenAddingToSuffix!782 lt!1432381 prefix!494 newSuffix!27))))

(declare-fun lt!1432382 () Unit!62332)

(assert (=> b!4029853 (= lt!1432382 (lemmaPrefixStaysPrefixWhenAddingToSuffix!782 lt!1432381 prefix!494 suffix!1299))))

(declare-fun b!4029854 () Bool)

(assert (=> b!4029854 (= e!2500395 e!2500376)))

(declare-fun res!1640349 () Bool)

(assert (=> b!4029854 (=> (not res!1640349) (not e!2500376))))

(declare-fun lt!1432386 () Int)

(declare-fun lt!1432371 () Int)

(assert (=> b!4029854 (= res!1640349 (>= lt!1432386 lt!1432371))))

(declare-fun size!32266 (List!43293) Int)

(assert (=> b!4029854 (= lt!1432371 (size!32266 lt!1432381))))

(assert (=> b!4029854 (= lt!1432386 (size!32266 prefix!494))))

(declare-fun list!16060 (BalanceConc!25820) List!43293)

(declare-fun charsOf!4718 (Token!12942) BalanceConc!25820)

(assert (=> b!4029854 (= lt!1432381 (list!16060 (charsOf!4718 token!484)))))

(declare-fun b!4029855 () Bool)

(declare-fun e!2500377 () Bool)

(declare-fun e!2500391 () Bool)

(assert (=> b!4029855 (= e!2500377 e!2500391)))

(declare-fun res!1640335 () Bool)

(assert (=> b!4029855 (=> res!1640335 e!2500391)))

(declare-fun lt!1432379 () List!43293)

(declare-fun lt!1432362 () List!43293)

(declare-fun lt!1432372 () List!43293)

(assert (=> b!4029855 (= res!1640335 (or (not (= lt!1432362 lt!1432372)) (not (= lt!1432362 lt!1432379))))))

(assert (=> b!4029855 (= lt!1432372 lt!1432379)))

(declare-fun lt!1432366 () List!43293)

(assert (=> b!4029855 (= lt!1432379 (++!11304 lt!1432381 lt!1432366))))

(declare-fun lt!1432384 () List!43293)

(assert (=> b!4029855 (= lt!1432372 (++!11304 lt!1432384 suffix!1299))))

(declare-fun lt!1432383 () List!43293)

(assert (=> b!4029855 (= lt!1432366 (++!11304 lt!1432383 suffix!1299))))

(declare-fun lt!1432364 () Unit!62332)

(declare-fun lemmaConcatAssociativity!2606 (List!43293 List!43293 List!43293) Unit!62332)

(assert (=> b!4029855 (= lt!1432364 (lemmaConcatAssociativity!2606 lt!1432381 lt!1432383 suffix!1299))))

(declare-fun b!4029856 () Bool)

(declare-fun e!2500375 () Bool)

(declare-fun e!2500372 () Bool)

(assert (=> b!4029856 (= e!2500375 e!2500372)))

(declare-fun res!1640347 () Bool)

(assert (=> b!4029856 (=> res!1640347 e!2500372)))

(assert (=> b!4029856 (= res!1640347 (not (isPrefix!3989 lt!1432381 lt!1432362)))))

(assert (=> b!4029856 (isPrefix!3989 prefix!494 lt!1432362)))

(declare-fun lt!1432367 () Unit!62332)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2824 (List!43293 List!43293) Unit!62332)

(assert (=> b!4029856 (= lt!1432367 (lemmaConcatTwoListThenFirstIsPrefix!2824 prefix!494 suffix!1299))))

(declare-fun lt!1432377 () List!43293)

(assert (=> b!4029856 (isPrefix!3989 lt!1432381 lt!1432377)))

(declare-fun lt!1432360 () Unit!62332)

(declare-fun suffixResult!105 () List!43293)

(assert (=> b!4029856 (= lt!1432360 (lemmaConcatTwoListThenFirstIsPrefix!2824 lt!1432381 suffixResult!105))))

(declare-fun res!1640339 () Bool)

(assert (=> start!379636 (=> (not res!1640339) (not e!2500395))))

(declare-datatypes ((LexerInterface!6491 0))(
  ( (LexerInterfaceExt!6488 (__x!26482 Int)) (Lexer!6489) )
))
(declare-fun thiss!21717 () LexerInterface!6491)

(get-info :version)

(assert (=> start!379636 (= res!1640339 ((_ is Lexer!6489) thiss!21717))))

(assert (=> start!379636 e!2500395))

(assert (=> start!379636 e!2500378))

(declare-fun e!2500388 () Bool)

(declare-fun inv!57671 (Token!12942) Bool)

(assert (=> start!379636 (and (inv!57671 token!484) e!2500388)))

(declare-fun e!2500383 () Bool)

(assert (=> start!379636 e!2500383))

(declare-fun e!2500390 () Bool)

(assert (=> start!379636 e!2500390))

(declare-fun e!2500371 () Bool)

(assert (=> start!379636 e!2500371))

(assert (=> start!379636 true))

(declare-fun e!2500381 () Bool)

(assert (=> start!379636 e!2500381))

(declare-fun e!2500384 () Bool)

(assert (=> start!379636 e!2500384))

(declare-fun b!4029857 () Bool)

(declare-fun res!1640342 () Bool)

(assert (=> b!4029857 (=> (not res!1640342) (not e!2500395))))

(assert (=> b!4029857 (= res!1640342 (>= (size!32266 suffix!1299) (size!32266 newSuffix!27)))))

(declare-fun b!4029858 () Bool)

(declare-fun e!2500379 () Bool)

(declare-fun tp!1224835 () Bool)

(assert (=> b!4029858 (= e!2500381 (and e!2500379 tp!1224835))))

(declare-fun b!4029859 () Bool)

(assert (=> b!4029859 (= e!2500372 e!2500377)))

(declare-fun res!1640340 () Bool)

(assert (=> b!4029859 (=> res!1640340 e!2500377)))

(assert (=> b!4029859 (= res!1640340 (not (= lt!1432384 prefix!494)))))

(assert (=> b!4029859 (= lt!1432384 (++!11304 lt!1432381 lt!1432383))))

(declare-fun getSuffix!2406 (List!43293 List!43293) List!43293)

(assert (=> b!4029859 (= lt!1432383 (getSuffix!2406 prefix!494 lt!1432381))))

(assert (=> b!4029859 (isPrefix!3989 lt!1432381 prefix!494)))

(declare-fun lt!1432388 () Unit!62332)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!553 (List!43293 List!43293 List!43293) Unit!62332)

(assert (=> b!4029859 (= lt!1432388 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!553 prefix!494 lt!1432381 lt!1432362))))

(declare-fun b!4029860 () Bool)

(declare-fun res!1640332 () Bool)

(declare-fun e!2500385 () Bool)

(assert (=> b!4029860 (=> (not res!1640332) (not e!2500385))))

(declare-fun lt!1432378 () TokenValue!7132)

(assert (=> b!4029860 (= res!1640332 (= (value!217341 token!484) lt!1432378))))

(declare-fun tp!1224838 () Bool)

(declare-fun e!2500389 () Bool)

(declare-fun b!4029861 () Bool)

(declare-fun inv!21 (TokenValue!7132) Bool)

(assert (=> b!4029861 (= e!2500388 (and (inv!21 (value!217341 token!484)) e!2500389 tp!1224838))))

(declare-fun b!4029862 () Bool)

(declare-fun tp!1224840 () Bool)

(assert (=> b!4029862 (= e!2500384 (and tp_is_empty!20585 tp!1224840))))

(declare-fun b!4029863 () Bool)

(declare-fun res!1640334 () Bool)

(assert (=> b!4029863 (=> (not res!1640334) (not e!2500395))))

(declare-datatypes ((List!43295 0))(
  ( (Nil!43171) (Cons!43171 (h!48591 Rule!13604) (t!334136 List!43295)) )
))
(declare-fun rules!2999 () List!43295)

(declare-fun rulesInvariant!5834 (LexerInterface!6491 List!43295) Bool)

(assert (=> b!4029863 (= res!1640334 (rulesInvariant!5834 thiss!21717 rules!2999))))

(declare-fun b!4029864 () Bool)

(declare-fun e!2500374 () Bool)

(assert (=> b!4029864 (= e!2500380 e!2500374)))

(declare-fun res!1640338 () Bool)

(assert (=> b!4029864 (=> res!1640338 e!2500374)))

(declare-fun lt!1432387 () List!43293)

(assert (=> b!4029864 (= res!1640338 (not (= lt!1432387 lt!1432362)))))

(declare-fun lt!1432361 () List!43293)

(assert (=> b!4029864 (= lt!1432387 (++!11304 lt!1432381 lt!1432361))))

(assert (=> b!4029864 (= lt!1432361 (getSuffix!2406 lt!1432362 lt!1432381))))

(assert (=> b!4029864 e!2500385))

(declare-fun res!1640341 () Bool)

(assert (=> b!4029864 (=> (not res!1640341) (not e!2500385))))

(assert (=> b!4029864 (= res!1640341 (isPrefix!3989 lt!1432362 lt!1432362))))

(declare-fun lt!1432389 () Unit!62332)

(declare-fun lemmaIsPrefixRefl!2556 (List!43293 List!43293) Unit!62332)

(assert (=> b!4029864 (= lt!1432389 (lemmaIsPrefixRefl!2556 lt!1432362 lt!1432362))))

(declare-fun b!4029865 () Bool)

(declare-fun e!2500387 () Bool)

(assert (=> b!4029865 (= e!2500394 e!2500387)))

(declare-fun res!1640344 () Bool)

(assert (=> b!4029865 (=> (not res!1640344) (not e!2500387))))

(declare-datatypes ((tuple2!42258 0))(
  ( (tuple2!42259 (_1!24263 Token!12942) (_2!24263 List!43293)) )
))
(declare-datatypes ((Option!9316 0))(
  ( (None!9315) (Some!9315 (v!39703 tuple2!42258)) )
))
(declare-fun lt!1432365 () Option!9316)

(declare-fun maxPrefix!3789 (LexerInterface!6491 List!43295 List!43293) Option!9316)

(assert (=> b!4029865 (= res!1640344 (= (maxPrefix!3789 thiss!21717 rules!2999 lt!1432362) lt!1432365))))

(assert (=> b!4029865 (= lt!1432365 (Some!9315 (tuple2!42259 token!484 suffixResult!105)))))

(assert (=> b!4029865 (= lt!1432362 (++!11304 prefix!494 suffix!1299))))

(declare-fun b!4029866 () Bool)

(declare-fun lt!1432369 () Token!12942)

(assert (=> b!4029866 (= e!2500374 (inv!57671 lt!1432369))))

(assert (=> b!4029866 (= suffixResult!105 lt!1432361)))

(declare-fun lt!1432374 () Unit!62332)

(declare-fun lemmaSamePrefixThenSameSuffix!2150 (List!43293 List!43293 List!43293 List!43293 List!43293) Unit!62332)

(assert (=> b!4029866 (= lt!1432374 (lemmaSamePrefixThenSameSuffix!2150 lt!1432381 suffixResult!105 lt!1432381 lt!1432361 lt!1432362))))

(assert (=> b!4029866 (isPrefix!3989 lt!1432381 lt!1432387)))

(declare-fun lt!1432376 () Unit!62332)

(assert (=> b!4029866 (= lt!1432376 (lemmaConcatTwoListThenFirstIsPrefix!2824 lt!1432381 lt!1432361))))

(declare-fun b!4029867 () Bool)

(assert (=> b!4029867 (= e!2500387 (not e!2500375))))

(declare-fun res!1640346 () Bool)

(assert (=> b!4029867 (=> res!1640346 e!2500375)))

(assert (=> b!4029867 (= res!1640346 (not (= lt!1432377 lt!1432362)))))

(assert (=> b!4029867 (= lt!1432377 (++!11304 lt!1432381 suffixResult!105))))

(declare-fun lt!1432390 () Unit!62332)

(declare-fun lemmaInv!1111 (TokenValueInjection!13692) Unit!62332)

(assert (=> b!4029867 (= lt!1432390 (lemmaInv!1111 (transformation!6902 (rule!9962 token!484))))))

(declare-fun ruleValid!2832 (LexerInterface!6491 Rule!13604) Bool)

(assert (=> b!4029867 (ruleValid!2832 thiss!21717 (rule!9962 token!484))))

(declare-fun lt!1432363 () Unit!62332)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1902 (LexerInterface!6491 Rule!13604 List!43295) Unit!62332)

(assert (=> b!4029867 (= lt!1432363 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1902 thiss!21717 (rule!9962 token!484) rules!2999))))

(declare-fun b!4029868 () Bool)

(declare-fun res!1640337 () Bool)

(assert (=> b!4029868 (=> (not res!1640337) (not e!2500385))))

(assert (=> b!4029868 (= res!1640337 (= (size!32265 token!484) (size!32266 (originalCharacters!7502 token!484))))))

(declare-fun tp!1224833 () Bool)

(declare-fun e!2500386 () Bool)

(declare-fun b!4029869 () Bool)

(declare-fun inv!57668 (String!49378) Bool)

(declare-fun inv!57672 (TokenValueInjection!13692) Bool)

(assert (=> b!4029869 (= e!2500389 (and tp!1224833 (inv!57668 (tag!7762 (rule!9962 token!484))) (inv!57672 (transformation!6902 (rule!9962 token!484))) e!2500386))))

(declare-fun b!4029870 () Bool)

(assert (=> b!4029870 (= e!2500391 e!2500382)))

(declare-fun res!1640333 () Bool)

(assert (=> b!4029870 (=> res!1640333 e!2500382)))

(declare-fun lt!1432368 () Option!9316)

(assert (=> b!4029870 (= res!1640333 (not (= lt!1432368 lt!1432365)))))

(assert (=> b!4029870 (= lt!1432368 (Some!9315 (tuple2!42259 lt!1432369 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2801 (LexerInterface!6491 Rule!13604 List!43293) Option!9316)

(assert (=> b!4029870 (= lt!1432368 (maxPrefixOneRule!2801 thiss!21717 (rule!9962 token!484) lt!1432362))))

(assert (=> b!4029870 (= lt!1432369 (Token!12943 lt!1432378 (rule!9962 token!484) lt!1432371 lt!1432381))))

(declare-fun apply!10091 (TokenValueInjection!13692 BalanceConc!25820) TokenValue!7132)

(declare-fun seqFromList!5119 (List!43293) BalanceConc!25820)

(assert (=> b!4029870 (= lt!1432378 (apply!10091 (transformation!6902 (rule!9962 token!484)) (seqFromList!5119 lt!1432381)))))

(declare-fun lt!1432380 () Unit!62332)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1607 (LexerInterface!6491 List!43295 List!43293 List!43293 List!43293 Rule!13604) Unit!62332)

(assert (=> b!4029870 (= lt!1432380 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1607 thiss!21717 rules!2999 lt!1432381 lt!1432362 suffixResult!105 (rule!9962 token!484)))))

(assert (=> b!4029870 (= lt!1432366 suffixResult!105)))

(declare-fun lt!1432373 () Unit!62332)

(assert (=> b!4029870 (= lt!1432373 (lemmaSamePrefixThenSameSuffix!2150 lt!1432381 lt!1432366 lt!1432381 suffixResult!105 lt!1432362))))

(assert (=> b!4029870 (isPrefix!3989 lt!1432381 lt!1432379)))

(declare-fun lt!1432370 () Unit!62332)

(assert (=> b!4029870 (= lt!1432370 (lemmaConcatTwoListThenFirstIsPrefix!2824 lt!1432381 lt!1432366))))

(declare-fun e!2500396 () Bool)

(assert (=> b!4029871 (= e!2500396 (and tp!1224841 tp!1224834))))

(declare-fun b!4029872 () Bool)

(declare-fun tp!1224839 () Bool)

(assert (=> b!4029872 (= e!2500390 (and tp_is_empty!20585 tp!1224839))))

(declare-fun b!4029873 () Bool)

(declare-fun tp!1224843 () Bool)

(assert (=> b!4029873 (= e!2500383 (and tp_is_empty!20585 tp!1224843))))

(declare-fun b!4029874 () Bool)

(assert (=> b!4029874 (= e!2500385 (and (= (size!32265 token!484) lt!1432371) (= (originalCharacters!7502 token!484) lt!1432381)))))

(declare-fun b!4029875 () Bool)

(declare-fun res!1640345 () Bool)

(assert (=> b!4029875 (=> (not res!1640345) (not e!2500395))))

(declare-fun isEmpty!25763 (List!43295) Bool)

(assert (=> b!4029875 (= res!1640345 (not (isEmpty!25763 rules!2999)))))

(declare-fun b!4029876 () Bool)

(declare-fun tp!1224832 () Bool)

(assert (=> b!4029876 (= e!2500379 (and tp!1224832 (inv!57668 (tag!7762 (h!48591 rules!2999))) (inv!57672 (transformation!6902 (h!48591 rules!2999))) e!2500396))))

(declare-fun b!4029877 () Bool)

(declare-fun tp!1224837 () Bool)

(assert (=> b!4029877 (= e!2500371 (and tp_is_empty!20585 tp!1224837))))

(assert (=> b!4029878 (= e!2500386 (and tp!1224836 tp!1224844))))

(assert (= (and start!379636 res!1640339) b!4029875))

(assert (= (and b!4029875 res!1640345) b!4029863))

(assert (= (and b!4029863 res!1640334) b!4029857))

(assert (= (and b!4029857 res!1640342) b!4029852))

(assert (= (and b!4029852 res!1640348) b!4029854))

(assert (= (and b!4029854 res!1640349) b!4029851))

(assert (= (and b!4029851 res!1640343) b!4029865))

(assert (= (and b!4029865 res!1640344) b!4029867))

(assert (= (and b!4029867 (not res!1640346)) b!4029856))

(assert (= (and b!4029856 (not res!1640347)) b!4029859))

(assert (= (and b!4029859 (not res!1640340)) b!4029855))

(assert (= (and b!4029855 (not res!1640335)) b!4029870))

(assert (= (and b!4029870 (not res!1640333)) b!4029853))

(assert (= (and b!4029853 (not res!1640336)) b!4029864))

(assert (= (and b!4029864 res!1640341) b!4029860))

(assert (= (and b!4029860 res!1640332) b!4029868))

(assert (= (and b!4029868 res!1640337) b!4029874))

(assert (= (and b!4029864 (not res!1640338)) b!4029866))

(assert (= (and start!379636 ((_ is Cons!43169) prefix!494)) b!4029850))

(assert (= b!4029869 b!4029878))

(assert (= b!4029861 b!4029869))

(assert (= start!379636 b!4029861))

(assert (= (and start!379636 ((_ is Cons!43169) suffixResult!105)) b!4029873))

(assert (= (and start!379636 ((_ is Cons!43169) suffix!1299)) b!4029872))

(assert (= (and start!379636 ((_ is Cons!43169) newSuffix!27)) b!4029877))

(assert (= b!4029876 b!4029871))

(assert (= b!4029858 b!4029876))

(assert (= (and start!379636 ((_ is Cons!43171) rules!2999)) b!4029858))

(assert (= (and start!379636 ((_ is Cons!43169) newSuffixResult!27)) b!4029862))

(declare-fun m!4621817 () Bool)

(assert (=> b!4029857 m!4621817))

(declare-fun m!4621819 () Bool)

(assert (=> b!4029857 m!4621819))

(declare-fun m!4621821 () Bool)

(assert (=> b!4029863 m!4621821))

(declare-fun m!4621823 () Bool)

(assert (=> b!4029859 m!4621823))

(declare-fun m!4621825 () Bool)

(assert (=> b!4029859 m!4621825))

(declare-fun m!4621827 () Bool)

(assert (=> b!4029859 m!4621827))

(declare-fun m!4621829 () Bool)

(assert (=> b!4029859 m!4621829))

(declare-fun m!4621831 () Bool)

(assert (=> b!4029856 m!4621831))

(declare-fun m!4621833 () Bool)

(assert (=> b!4029856 m!4621833))

(declare-fun m!4621835 () Bool)

(assert (=> b!4029856 m!4621835))

(declare-fun m!4621837 () Bool)

(assert (=> b!4029856 m!4621837))

(declare-fun m!4621839 () Bool)

(assert (=> b!4029856 m!4621839))

(declare-fun m!4621841 () Bool)

(assert (=> b!4029865 m!4621841))

(declare-fun m!4621843 () Bool)

(assert (=> b!4029865 m!4621843))

(declare-fun m!4621845 () Bool)

(assert (=> b!4029853 m!4621845))

(declare-fun m!4621847 () Bool)

(assert (=> b!4029853 m!4621847))

(declare-fun m!4621849 () Bool)

(assert (=> b!4029853 m!4621849))

(declare-fun m!4621851 () Bool)

(assert (=> b!4029853 m!4621851))

(declare-fun m!4621853 () Bool)

(assert (=> b!4029875 m!4621853))

(declare-fun m!4621855 () Bool)

(assert (=> b!4029868 m!4621855))

(declare-fun m!4621857 () Bool)

(assert (=> b!4029852 m!4621857))

(declare-fun m!4621859 () Bool)

(assert (=> b!4029855 m!4621859))

(declare-fun m!4621861 () Bool)

(assert (=> b!4029855 m!4621861))

(declare-fun m!4621863 () Bool)

(assert (=> b!4029855 m!4621863))

(declare-fun m!4621865 () Bool)

(assert (=> b!4029855 m!4621865))

(declare-fun m!4621867 () Bool)

(assert (=> b!4029861 m!4621867))

(declare-fun m!4621869 () Bool)

(assert (=> b!4029876 m!4621869))

(declare-fun m!4621871 () Bool)

(assert (=> b!4029876 m!4621871))

(declare-fun m!4621873 () Bool)

(assert (=> b!4029869 m!4621873))

(declare-fun m!4621875 () Bool)

(assert (=> b!4029869 m!4621875))

(declare-fun m!4621877 () Bool)

(assert (=> b!4029854 m!4621877))

(declare-fun m!4621879 () Bool)

(assert (=> b!4029854 m!4621879))

(declare-fun m!4621881 () Bool)

(assert (=> b!4029854 m!4621881))

(assert (=> b!4029854 m!4621881))

(declare-fun m!4621883 () Bool)

(assert (=> b!4029854 m!4621883))

(declare-fun m!4621885 () Bool)

(assert (=> start!379636 m!4621885))

(declare-fun m!4621887 () Bool)

(assert (=> b!4029870 m!4621887))

(declare-fun m!4621889 () Bool)

(assert (=> b!4029870 m!4621889))

(declare-fun m!4621891 () Bool)

(assert (=> b!4029870 m!4621891))

(assert (=> b!4029870 m!4621891))

(declare-fun m!4621893 () Bool)

(assert (=> b!4029870 m!4621893))

(declare-fun m!4621895 () Bool)

(assert (=> b!4029870 m!4621895))

(declare-fun m!4621897 () Bool)

(assert (=> b!4029870 m!4621897))

(declare-fun m!4621899 () Bool)

(assert (=> b!4029870 m!4621899))

(declare-fun m!4621901 () Bool)

(assert (=> b!4029864 m!4621901))

(declare-fun m!4621903 () Bool)

(assert (=> b!4029864 m!4621903))

(declare-fun m!4621905 () Bool)

(assert (=> b!4029864 m!4621905))

(declare-fun m!4621907 () Bool)

(assert (=> b!4029864 m!4621907))

(declare-fun m!4621909 () Bool)

(assert (=> b!4029851 m!4621909))

(declare-fun m!4621911 () Bool)

(assert (=> b!4029851 m!4621911))

(declare-fun m!4621913 () Bool)

(assert (=> b!4029867 m!4621913))

(declare-fun m!4621915 () Bool)

(assert (=> b!4029867 m!4621915))

(declare-fun m!4621917 () Bool)

(assert (=> b!4029867 m!4621917))

(declare-fun m!4621919 () Bool)

(assert (=> b!4029867 m!4621919))

(declare-fun m!4621921 () Bool)

(assert (=> b!4029866 m!4621921))

(declare-fun m!4621923 () Bool)

(assert (=> b!4029866 m!4621923))

(declare-fun m!4621925 () Bool)

(assert (=> b!4029866 m!4621925))

(declare-fun m!4621927 () Bool)

(assert (=> b!4029866 m!4621927))

(check-sat (not b!4029861) (not b!4029872) tp_is_empty!20585 (not b_next!112989) (not b!4029852) (not b!4029863) (not b!4029873) (not b_next!112991) (not b!4029877) (not b!4029866) b_and!309677 (not b_next!112985) (not b!4029851) b_and!309675 (not b_next!112987) (not b!4029865) (not b!4029858) (not b!4029856) (not b!4029875) b_and!309673 (not b!4029870) (not b!4029850) (not start!379636) (not b!4029853) (not b!4029876) (not b!4029855) b_and!309671 (not b!4029854) (not b!4029857) (not b!4029869) (not b!4029864) (not b!4029867) (not b!4029868) (not b!4029862) (not b!4029859))
(check-sat b_and!309675 (not b_next!112987) b_and!309673 b_and!309671 (not b_next!112989) (not b_next!112991) b_and!309677 (not b_next!112985))
