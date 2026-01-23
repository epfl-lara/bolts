; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!180130 () Bool)

(assert start!180130)

(declare-fun b!1819412 () Bool)

(declare-fun b_free!50399 () Bool)

(declare-fun b_next!51103 () Bool)

(assert (=> b!1819412 (= b_free!50399 (not b_next!51103))))

(declare-fun tp!514178 () Bool)

(declare-fun b_and!141013 () Bool)

(assert (=> b!1819412 (= tp!514178 b_and!141013)))

(declare-fun b_free!50401 () Bool)

(declare-fun b_next!51105 () Bool)

(assert (=> b!1819412 (= b_free!50401 (not b_next!51105))))

(declare-fun tp!514174 () Bool)

(declare-fun b_and!141015 () Bool)

(assert (=> b!1819412 (= tp!514174 b_and!141015)))

(declare-fun b!1819417 () Bool)

(declare-fun b_free!50403 () Bool)

(declare-fun b_next!51107 () Bool)

(assert (=> b!1819417 (= b_free!50403 (not b_next!51107))))

(declare-fun tp!514169 () Bool)

(declare-fun b_and!141017 () Bool)

(assert (=> b!1819417 (= tp!514169 b_and!141017)))

(declare-fun b_free!50405 () Bool)

(declare-fun b_next!51109 () Bool)

(assert (=> b!1819417 (= b_free!50405 (not b_next!51109))))

(declare-fun tp!514179 () Bool)

(declare-fun b_and!141019 () Bool)

(assert (=> b!1819417 (= tp!514179 b_and!141019)))

(declare-fun b!1819406 () Bool)

(declare-fun b_free!50407 () Bool)

(declare-fun b_next!51111 () Bool)

(assert (=> b!1819406 (= b_free!50407 (not b_next!51111))))

(declare-fun tp!514168 () Bool)

(declare-fun b_and!141021 () Bool)

(assert (=> b!1819406 (= tp!514168 b_and!141021)))

(declare-fun b_free!50409 () Bool)

(declare-fun b_next!51113 () Bool)

(assert (=> b!1819406 (= b_free!50409 (not b_next!51113))))

(declare-fun tp!514175 () Bool)

(declare-fun b_and!141023 () Bool)

(assert (=> b!1819406 (= tp!514175 b_and!141023)))

(declare-fun tp!514172 () Bool)

(declare-datatypes ((List!19976 0))(
  ( (Nil!19906) (Cons!19906 (h!25307 (_ BitVec 16)) (t!169789 List!19976)) )
))
(declare-datatypes ((TokenValue!3675 0))(
  ( (FloatLiteralValue!7350 (text!26170 List!19976)) (TokenValueExt!3674 (__x!12652 Int)) (Broken!18375 (value!111813 List!19976)) (Object!3744) (End!3675) (Def!3675) (Underscore!3675) (Match!3675) (Else!3675) (Error!3675) (Case!3675) (If!3675) (Extends!3675) (Abstract!3675) (Class!3675) (Val!3675) (DelimiterValue!7350 (del!3735 List!19976)) (KeywordValue!3681 (value!111814 List!19976)) (CommentValue!7350 (value!111815 List!19976)) (WhitespaceValue!7350 (value!111816 List!19976)) (IndentationValue!3675 (value!111817 List!19976)) (String!22706) (Int32!3675) (Broken!18376 (value!111818 List!19976)) (Boolean!3676) (Unit!34588) (OperatorValue!3678 (op!3735 List!19976)) (IdentifierValue!7350 (value!111819 List!19976)) (IdentifierValue!7351 (value!111820 List!19976)) (WhitespaceValue!7351 (value!111821 List!19976)) (True!7350) (False!7350) (Broken!18377 (value!111822 List!19976)) (Broken!18378 (value!111823 List!19976)) (True!7351) (RightBrace!3675) (RightBracket!3675) (Colon!3675) (Null!3675) (Comma!3675) (LeftBracket!3675) (False!7351) (LeftBrace!3675) (ImaginaryLiteralValue!3675 (text!26171 List!19976)) (StringLiteralValue!11025 (value!111824 List!19976)) (EOFValue!3675 (value!111825 List!19976)) (IdentValue!3675 (value!111826 List!19976)) (DelimiterValue!7351 (value!111827 List!19976)) (DedentValue!3675 (value!111828 List!19976)) (NewLineValue!3675 (value!111829 List!19976)) (IntegerValue!11025 (value!111830 (_ BitVec 32)) (text!26172 List!19976)) (IntegerValue!11026 (value!111831 Int) (text!26173 List!19976)) (Times!3675) (Or!3675) (Equal!3675) (Minus!3675) (Broken!18379 (value!111832 List!19976)) (And!3675) (Div!3675) (LessEqual!3675) (Mod!3675) (Concat!8588) (Not!3675) (Plus!3675) (SpaceValue!3675 (value!111833 List!19976)) (IntegerValue!11027 (value!111834 Int) (text!26174 List!19976)) (StringLiteralValue!11026 (text!26175 List!19976)) (FloatLiteralValue!7351 (text!26176 List!19976)) (BytesLiteralValue!3675 (value!111835 List!19976)) (CommentValue!7351 (value!111836 List!19976)) (StringLiteralValue!11027 (value!111837 List!19976)) (ErrorTokenValue!3675 (msg!3736 List!19976)) )
))
(declare-datatypes ((C!10000 0))(
  ( (C!10001 (val!5596 Int)) )
))
(declare-datatypes ((List!19977 0))(
  ( (Nil!19907) (Cons!19907 (h!25308 C!10000) (t!169790 List!19977)) )
))
(declare-datatypes ((IArray!13239 0))(
  ( (IArray!13240 (innerList!6677 List!19977)) )
))
(declare-datatypes ((Conc!6617 0))(
  ( (Node!6617 (left!15951 Conc!6617) (right!16281 Conc!6617) (csize!13464 Int) (cheight!6828 Int)) (Leaf!9630 (xs!9493 IArray!13239) (csize!13465 Int)) (Empty!6617) )
))
(declare-datatypes ((BalanceConc!13178 0))(
  ( (BalanceConc!13179 (c!296956 Conc!6617)) )
))
(declare-datatypes ((TokenValueInjection!7010 0))(
  ( (TokenValueInjection!7011 (toValue!5120 Int) (toChars!4979 Int)) )
))
(declare-datatypes ((Regex!4913 0))(
  ( (ElementMatch!4913 (c!296957 C!10000)) (Concat!8589 (regOne!10338 Regex!4913) (regTwo!10338 Regex!4913)) (EmptyExpr!4913) (Star!4913 (reg!5242 Regex!4913)) (EmptyLang!4913) (Union!4913 (regOne!10339 Regex!4913) (regTwo!10339 Regex!4913)) )
))
(declare-datatypes ((String!22707 0))(
  ( (String!22708 (value!111838 String)) )
))
(declare-datatypes ((Rule!6970 0))(
  ( (Rule!6971 (regex!3585 Regex!4913) (tag!3999 String!22707) (isSeparator!3585 Bool) (transformation!3585 TokenValueInjection!7010)) )
))
(declare-datatypes ((Token!6724 0))(
  ( (Token!6725 (value!111839 TokenValue!3675) (rule!5705 Rule!6970) (size!15801 Int) (originalCharacters!4393 List!19977)) )
))
(declare-fun token!556 () Token!6724)

(declare-fun b!1819402 () Bool)

(declare-fun e!1162566 () Bool)

(declare-fun e!1162564 () Bool)

(declare-fun inv!21 (TokenValue!3675) Bool)

(assert (=> b!1819402 (= e!1162566 (and (inv!21 (value!111839 token!556)) e!1162564 tp!514172))))

(declare-fun b!1819403 () Bool)

(declare-fun res!818144 () Bool)

(declare-fun e!1162569 () Bool)

(assert (=> b!1819403 (=> res!818144 e!1162569)))

(declare-fun lambda!71160 () Int)

(declare-datatypes ((List!19978 0))(
  ( (Nil!19908) (Cons!19908 (h!25309 Rule!6970) (t!169791 List!19978)) )
))
(declare-fun rules!4538 () List!19978)

(declare-fun lt!706880 () Regex!4913)

(declare-datatypes ((List!19979 0))(
  ( (Nil!19909) (Cons!19909 (h!25310 Regex!4913) (t!169792 List!19979)) )
))
(declare-fun generalisedUnion!440 (List!19979) Regex!4913)

(declare-fun map!4108 (List!19978 Int) List!19979)

(assert (=> b!1819403 (= res!818144 (not (= lt!706880 (generalisedUnion!440 (map!4108 rules!4538 lambda!71160)))))))

(declare-fun b!1819404 () Bool)

(declare-fun res!818148 () Bool)

(declare-fun e!1162568 () Bool)

(assert (=> b!1819404 (=> (not res!818148) (not e!1162568))))

(declare-datatypes ((LexerInterface!3214 0))(
  ( (LexerInterfaceExt!3211 (__x!12653 Int)) (Lexer!3212) )
))
(declare-fun thiss!28068 () LexerInterface!3214)

(declare-fun rulesInvariant!2883 (LexerInterface!3214 List!19978) Bool)

(assert (=> b!1819404 (= res!818148 (rulesInvariant!2883 thiss!28068 rules!4538))))

(declare-fun b!1819405 () Bool)

(declare-fun e!1162567 () Bool)

(declare-fun tp!514173 () Bool)

(declare-fun inv!25940 (String!22707) Bool)

(declare-fun inv!25943 (TokenValueInjection!7010) Bool)

(assert (=> b!1819405 (= e!1162564 (and tp!514173 (inv!25940 (tag!3999 (rule!5705 token!556))) (inv!25943 (transformation!3585 (rule!5705 token!556))) e!1162567))))

(assert (=> b!1819406 (= e!1162567 (and tp!514168 tp!514175))))

(declare-fun b!1819407 () Bool)

(declare-fun e!1162552 () Bool)

(assert (=> b!1819407 (= e!1162552 e!1162569)))

(declare-fun res!818145 () Bool)

(assert (=> b!1819407 (=> res!818145 e!1162569)))

(declare-fun lt!706874 () List!19979)

(assert (=> b!1819407 (= res!818145 (not (= lt!706880 (generalisedUnion!440 lt!706874))))))

(declare-fun rulesRegex!917 (LexerInterface!3214 List!19978) Regex!4913)

(assert (=> b!1819407 (= lt!706880 (rulesRegex!917 thiss!28068 rules!4538))))

(assert (=> b!1819407 (= lt!706874 (map!4108 rules!4538 lambda!71160))))

(declare-fun suffix!1667 () List!19977)

(declare-fun rule!559 () Rule!6970)

(declare-fun input!3612 () List!19977)

(declare-datatypes ((Unit!34589 0))(
  ( (Unit!34590) )
))
(declare-fun lt!706876 () Unit!34589)

(declare-fun lemma!438 (List!19977 Rule!6970 List!19978 List!19977 LexerInterface!3214 Token!6724 List!19978) Unit!34589)

(assert (=> b!1819407 (= lt!706876 (lemma!438 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1819408 () Bool)

(declare-fun tp!514171 () Bool)

(declare-fun e!1162553 () Bool)

(declare-fun e!1162562 () Bool)

(assert (=> b!1819408 (= e!1162562 (and tp!514171 (inv!25940 (tag!3999 (h!25309 rules!4538))) (inv!25943 (transformation!3585 (h!25309 rules!4538))) e!1162553))))

(declare-fun b!1819409 () Bool)

(declare-fun rulesValid!1361 (LexerInterface!3214 List!19978) Bool)

(assert (=> b!1819409 (= e!1162569 (rulesValid!1361 thiss!28068 rules!4538))))

(declare-fun res!818142 () Bool)

(assert (=> start!180130 (=> (not res!818142) (not e!1162568))))

(get-info :version)

(assert (=> start!180130 (= res!818142 ((_ is Lexer!3212) thiss!28068))))

(assert (=> start!180130 e!1162568))

(declare-fun e!1162561 () Bool)

(assert (=> start!180130 e!1162561))

(assert (=> start!180130 true))

(declare-fun e!1162554 () Bool)

(assert (=> start!180130 e!1162554))

(declare-fun inv!25944 (Token!6724) Bool)

(assert (=> start!180130 (and (inv!25944 token!556) e!1162566)))

(declare-fun e!1162551 () Bool)

(assert (=> start!180130 e!1162551))

(declare-fun e!1162555 () Bool)

(assert (=> start!180130 e!1162555))

(declare-fun e!1162557 () Bool)

(declare-fun tp!514170 () Bool)

(declare-fun b!1819410 () Bool)

(assert (=> b!1819410 (= e!1162551 (and tp!514170 (inv!25940 (tag!3999 rule!559)) (inv!25943 (transformation!3585 rule!559)) e!1162557))))

(declare-fun b!1819411 () Bool)

(declare-fun res!818139 () Bool)

(assert (=> b!1819411 (=> (not res!818139) (not e!1162568))))

(declare-fun contains!3621 (List!19978 Rule!6970) Bool)

(assert (=> b!1819411 (= res!818139 (contains!3621 rules!4538 rule!559))))

(assert (=> b!1819412 (= e!1162557 (and tp!514178 tp!514174))))

(declare-fun b!1819413 () Bool)

(declare-fun e!1162556 () Bool)

(declare-fun e!1162563 () Bool)

(assert (=> b!1819413 (= e!1162556 (not e!1162563))))

(declare-fun res!818138 () Bool)

(assert (=> b!1819413 (=> res!818138 e!1162563)))

(declare-fun lt!706875 () List!19977)

(declare-fun matchR!2378 (Regex!4913 List!19977) Bool)

(assert (=> b!1819413 (= res!818138 (not (matchR!2378 (regex!3585 rule!559) lt!706875)))))

(declare-fun ruleValid!1077 (LexerInterface!3214 Rule!6970) Bool)

(assert (=> b!1819413 (ruleValid!1077 thiss!28068 rule!559)))

(declare-fun lt!706879 () Unit!34589)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!598 (LexerInterface!3214 Rule!6970 List!19978) Unit!34589)

(assert (=> b!1819413 (= lt!706879 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!598 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1819414 () Bool)

(declare-fun e!1162570 () Bool)

(assert (=> b!1819414 (= e!1162568 e!1162570)))

(declare-fun res!818147 () Bool)

(assert (=> b!1819414 (=> (not res!818147) (not e!1162570))))

(declare-datatypes ((tuple2!19446 0))(
  ( (tuple2!19447 (_1!11125 Token!6724) (_2!11125 List!19977)) )
))
(declare-datatypes ((Option!4165 0))(
  ( (None!4164) (Some!4164 (v!25699 tuple2!19446)) )
))
(declare-fun lt!706877 () Option!4165)

(declare-fun maxPrefix!1762 (LexerInterface!3214 List!19978 List!19977) Option!4165)

(assert (=> b!1819414 (= res!818147 (= (maxPrefix!1762 thiss!28068 rules!4538 input!3612) lt!706877))))

(assert (=> b!1819414 (= lt!706877 (Some!4164 (tuple2!19447 token!556 suffix!1667)))))

(declare-fun b!1819415 () Bool)

(declare-fun res!818141 () Bool)

(assert (=> b!1819415 (=> (not res!818141) (not e!1162570))))

(assert (=> b!1819415 (= res!818141 (= (rule!5705 token!556) rule!559))))

(declare-fun b!1819416 () Bool)

(assert (=> b!1819416 (= e!1162563 e!1162552)))

(declare-fun res!818140 () Bool)

(assert (=> b!1819416 (=> res!818140 e!1162552)))

(declare-fun lt!706878 () Option!4165)

(assert (=> b!1819416 (= res!818140 (not (= lt!706878 lt!706877)))))

(declare-fun lt!706881 () TokenValue!3675)

(declare-fun lt!706873 () Int)

(assert (=> b!1819416 (= lt!706878 (Some!4164 (tuple2!19447 (Token!6725 lt!706881 rule!559 lt!706873 lt!706875) suffix!1667)))))

(declare-fun maxPrefixOneRule!1127 (LexerInterface!3214 Rule!6970 List!19977) Option!4165)

(assert (=> b!1819416 (= lt!706878 (maxPrefixOneRule!1127 thiss!28068 rule!559 input!3612))))

(declare-fun size!15802 (List!19977) Int)

(assert (=> b!1819416 (= lt!706873 (size!15802 lt!706875))))

(declare-fun apply!5377 (TokenValueInjection!7010 BalanceConc!13178) TokenValue!3675)

(declare-fun seqFromList!2546 (List!19977) BalanceConc!13178)

(assert (=> b!1819416 (= lt!706881 (apply!5377 (transformation!3585 rule!559) (seqFromList!2546 lt!706875)))))

(declare-fun lt!706882 () Unit!34589)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!503 (LexerInterface!3214 List!19978 List!19977 List!19977 List!19977 Rule!6970) Unit!34589)

(assert (=> b!1819416 (= lt!706882 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!503 thiss!28068 rules!4538 lt!706875 input!3612 suffix!1667 rule!559))))

(assert (=> b!1819417 (= e!1162553 (and tp!514169 tp!514179))))

(declare-fun b!1819418 () Bool)

(declare-fun tp!514177 () Bool)

(assert (=> b!1819418 (= e!1162554 (and e!1162562 tp!514177))))

(declare-fun b!1819419 () Bool)

(declare-fun tp_is_empty!8061 () Bool)

(declare-fun tp!514180 () Bool)

(assert (=> b!1819419 (= e!1162561 (and tp_is_empty!8061 tp!514180))))

(declare-fun b!1819420 () Bool)

(assert (=> b!1819420 (= e!1162570 e!1162556)))

(declare-fun res!818143 () Bool)

(assert (=> b!1819420 (=> (not res!818143) (not e!1162556))))

(declare-fun ++!5409 (List!19977 List!19977) List!19977)

(assert (=> b!1819420 (= res!818143 (= input!3612 (++!5409 lt!706875 suffix!1667)))))

(declare-fun list!8097 (BalanceConc!13178) List!19977)

(declare-fun charsOf!2228 (Token!6724) BalanceConc!13178)

(assert (=> b!1819420 (= lt!706875 (list!8097 (charsOf!2228 token!556)))))

(declare-fun b!1819421 () Bool)

(declare-fun res!818146 () Bool)

(assert (=> b!1819421 (=> (not res!818146) (not e!1162568))))

(declare-fun isEmpty!12587 (List!19978) Bool)

(assert (=> b!1819421 (= res!818146 (not (isEmpty!12587 rules!4538)))))

(declare-fun b!1819422 () Bool)

(declare-fun tp!514176 () Bool)

(assert (=> b!1819422 (= e!1162555 (and tp_is_empty!8061 tp!514176))))

(assert (= (and start!180130 res!818142) b!1819421))

(assert (= (and b!1819421 res!818146) b!1819404))

(assert (= (and b!1819404 res!818148) b!1819411))

(assert (= (and b!1819411 res!818139) b!1819414))

(assert (= (and b!1819414 res!818147) b!1819415))

(assert (= (and b!1819415 res!818141) b!1819420))

(assert (= (and b!1819420 res!818143) b!1819413))

(assert (= (and b!1819413 (not res!818138)) b!1819416))

(assert (= (and b!1819416 (not res!818140)) b!1819407))

(assert (= (and b!1819407 (not res!818145)) b!1819403))

(assert (= (and b!1819403 (not res!818144)) b!1819409))

(assert (= (and start!180130 ((_ is Cons!19907) suffix!1667)) b!1819419))

(assert (= b!1819408 b!1819417))

(assert (= b!1819418 b!1819408))

(assert (= (and start!180130 ((_ is Cons!19908) rules!4538)) b!1819418))

(assert (= b!1819405 b!1819406))

(assert (= b!1819402 b!1819405))

(assert (= start!180130 b!1819402))

(assert (= b!1819410 b!1819412))

(assert (= start!180130 b!1819410))

(assert (= (and start!180130 ((_ is Cons!19907) input!3612)) b!1819422))

(declare-fun m!2248419 () Bool)

(assert (=> b!1819414 m!2248419))

(declare-fun m!2248421 () Bool)

(assert (=> b!1819409 m!2248421))

(declare-fun m!2248423 () Bool)

(assert (=> b!1819410 m!2248423))

(declare-fun m!2248425 () Bool)

(assert (=> b!1819410 m!2248425))

(declare-fun m!2248427 () Bool)

(assert (=> b!1819411 m!2248427))

(declare-fun m!2248429 () Bool)

(assert (=> b!1819421 m!2248429))

(declare-fun m!2248431 () Bool)

(assert (=> b!1819403 m!2248431))

(assert (=> b!1819403 m!2248431))

(declare-fun m!2248433 () Bool)

(assert (=> b!1819403 m!2248433))

(declare-fun m!2248435 () Bool)

(assert (=> b!1819416 m!2248435))

(declare-fun m!2248437 () Bool)

(assert (=> b!1819416 m!2248437))

(declare-fun m!2248439 () Bool)

(assert (=> b!1819416 m!2248439))

(declare-fun m!2248441 () Bool)

(assert (=> b!1819416 m!2248441))

(assert (=> b!1819416 m!2248437))

(declare-fun m!2248443 () Bool)

(assert (=> b!1819416 m!2248443))

(declare-fun m!2248445 () Bool)

(assert (=> b!1819407 m!2248445))

(declare-fun m!2248447 () Bool)

(assert (=> b!1819407 m!2248447))

(assert (=> b!1819407 m!2248431))

(declare-fun m!2248449 () Bool)

(assert (=> b!1819407 m!2248449))

(declare-fun m!2248451 () Bool)

(assert (=> b!1819402 m!2248451))

(declare-fun m!2248453 () Bool)

(assert (=> b!1819408 m!2248453))

(declare-fun m!2248455 () Bool)

(assert (=> b!1819408 m!2248455))

(declare-fun m!2248457 () Bool)

(assert (=> b!1819413 m!2248457))

(declare-fun m!2248459 () Bool)

(assert (=> b!1819413 m!2248459))

(declare-fun m!2248461 () Bool)

(assert (=> b!1819413 m!2248461))

(declare-fun m!2248463 () Bool)

(assert (=> b!1819404 m!2248463))

(declare-fun m!2248465 () Bool)

(assert (=> b!1819420 m!2248465))

(declare-fun m!2248467 () Bool)

(assert (=> b!1819420 m!2248467))

(assert (=> b!1819420 m!2248467))

(declare-fun m!2248469 () Bool)

(assert (=> b!1819420 m!2248469))

(declare-fun m!2248471 () Bool)

(assert (=> b!1819405 m!2248471))

(declare-fun m!2248473 () Bool)

(assert (=> b!1819405 m!2248473))

(declare-fun m!2248475 () Bool)

(assert (=> start!180130 m!2248475))

(check-sat (not b!1819414) (not b!1819419) (not b_next!51113) (not b_next!51107) (not b!1819408) (not b!1819405) (not b_next!51109) (not b!1819404) (not b!1819416) (not b!1819402) (not b!1819409) b_and!141015 b_and!141013 (not b!1819422) (not b!1819420) (not b!1819421) b_and!141019 (not b_next!51105) b_and!141023 tp_is_empty!8061 (not b_next!51103) (not b!1819418) b_and!141021 (not b!1819410) (not b!1819413) (not b!1819407) (not b!1819411) (not start!180130) b_and!141017 (not b_next!51111) (not b!1819403))
(check-sat (not b_next!51113) (not b_next!51107) b_and!141019 (not b_next!51103) b_and!141021 (not b_next!51109) b_and!141015 b_and!141013 (not b_next!51105) b_and!141023 b_and!141017 (not b_next!51111))
(get-model)

(declare-fun d!557527 () Bool)

(declare-fun res!818155 () Bool)

(declare-fun e!1162573 () Bool)

(assert (=> d!557527 (=> (not res!818155) (not e!1162573))))

(assert (=> d!557527 (= res!818155 (rulesValid!1361 thiss!28068 rules!4538))))

(assert (=> d!557527 (= (rulesInvariant!2883 thiss!28068 rules!4538) e!1162573)))

(declare-fun b!1819425 () Bool)

(declare-datatypes ((List!19981 0))(
  ( (Nil!19911) (Cons!19911 (h!25312 String!22707) (t!169826 List!19981)) )
))
(declare-fun noDuplicateTag!1361 (LexerInterface!3214 List!19978 List!19981) Bool)

(assert (=> b!1819425 (= e!1162573 (noDuplicateTag!1361 thiss!28068 rules!4538 Nil!19911))))

(assert (= (and d!557527 res!818155) b!1819425))

(assert (=> d!557527 m!2248421))

(declare-fun m!2248477 () Bool)

(assert (=> b!1819425 m!2248477))

(assert (=> b!1819404 d!557527))

(declare-fun b!1819543 () Bool)

(declare-fun e!1162646 () Bool)

(declare-fun lt!706927 () Regex!4913)

(declare-fun isEmptyLang!109 (Regex!4913) Bool)

(assert (=> b!1819543 (= e!1162646 (isEmptyLang!109 lt!706927))))

(declare-fun b!1819544 () Bool)

(declare-fun e!1162641 () Bool)

(declare-fun head!4236 (List!19979) Regex!4913)

(assert (=> b!1819544 (= e!1162641 (= lt!706927 (head!4236 (map!4108 rules!4538 lambda!71160))))))

(declare-fun b!1819545 () Bool)

(declare-fun e!1162643 () Regex!4913)

(assert (=> b!1819545 (= e!1162643 EmptyLang!4913)))

(declare-fun b!1819546 () Bool)

(declare-fun isUnion!109 (Regex!4913) Bool)

(assert (=> b!1819546 (= e!1162641 (isUnion!109 lt!706927))))

(declare-fun b!1819547 () Bool)

(assert (=> b!1819547 (= e!1162643 (Union!4913 (h!25310 (map!4108 rules!4538 lambda!71160)) (generalisedUnion!440 (t!169792 (map!4108 rules!4538 lambda!71160)))))))

(declare-fun b!1819548 () Bool)

(declare-fun e!1162644 () Bool)

(declare-fun isEmpty!12591 (List!19979) Bool)

(assert (=> b!1819548 (= e!1162644 (isEmpty!12591 (t!169792 (map!4108 rules!4538 lambda!71160))))))

(declare-fun b!1819549 () Bool)

(declare-fun e!1162642 () Bool)

(assert (=> b!1819549 (= e!1162642 e!1162646)))

(declare-fun c!296996 () Bool)

(assert (=> b!1819549 (= c!296996 (isEmpty!12591 (map!4108 rules!4538 lambda!71160)))))

(declare-fun b!1819550 () Bool)

(assert (=> b!1819550 (= e!1162646 e!1162641)))

(declare-fun c!296995 () Bool)

(declare-fun tail!2695 (List!19979) List!19979)

(assert (=> b!1819550 (= c!296995 (isEmpty!12591 (tail!2695 (map!4108 rules!4538 lambda!71160))))))

(declare-fun d!557531 () Bool)

(assert (=> d!557531 e!1162642))

(declare-fun res!818204 () Bool)

(assert (=> d!557531 (=> (not res!818204) (not e!1162642))))

(declare-fun validRegex!1995 (Regex!4913) Bool)

(assert (=> d!557531 (= res!818204 (validRegex!1995 lt!706927))))

(declare-fun e!1162645 () Regex!4913)

(assert (=> d!557531 (= lt!706927 e!1162645)))

(declare-fun c!296994 () Bool)

(assert (=> d!557531 (= c!296994 e!1162644)))

(declare-fun res!818203 () Bool)

(assert (=> d!557531 (=> (not res!818203) (not e!1162644))))

(assert (=> d!557531 (= res!818203 ((_ is Cons!19909) (map!4108 rules!4538 lambda!71160)))))

(declare-fun lambda!71174 () Int)

(declare-fun forall!4297 (List!19979 Int) Bool)

(assert (=> d!557531 (forall!4297 (map!4108 rules!4538 lambda!71160) lambda!71174)))

(assert (=> d!557531 (= (generalisedUnion!440 (map!4108 rules!4538 lambda!71160)) lt!706927)))

(declare-fun b!1819551 () Bool)

(assert (=> b!1819551 (= e!1162645 e!1162643)))

(declare-fun c!296993 () Bool)

(assert (=> b!1819551 (= c!296993 ((_ is Cons!19909) (map!4108 rules!4538 lambda!71160)))))

(declare-fun b!1819552 () Bool)

(assert (=> b!1819552 (= e!1162645 (h!25310 (map!4108 rules!4538 lambda!71160)))))

(assert (= (and d!557531 res!818203) b!1819548))

(assert (= (and d!557531 c!296994) b!1819552))

(assert (= (and d!557531 (not c!296994)) b!1819551))

(assert (= (and b!1819551 c!296993) b!1819547))

(assert (= (and b!1819551 (not c!296993)) b!1819545))

(assert (= (and d!557531 res!818204) b!1819549))

(assert (= (and b!1819549 c!296996) b!1819543))

(assert (= (and b!1819549 (not c!296996)) b!1819550))

(assert (= (and b!1819550 c!296995) b!1819544))

(assert (= (and b!1819550 (not c!296995)) b!1819546))

(declare-fun m!2248577 () Bool)

(assert (=> b!1819547 m!2248577))

(assert (=> b!1819549 m!2248431))

(declare-fun m!2248583 () Bool)

(assert (=> b!1819549 m!2248583))

(declare-fun m!2248585 () Bool)

(assert (=> d!557531 m!2248585))

(assert (=> d!557531 m!2248431))

(declare-fun m!2248587 () Bool)

(assert (=> d!557531 m!2248587))

(assert (=> b!1819550 m!2248431))

(declare-fun m!2248589 () Bool)

(assert (=> b!1819550 m!2248589))

(assert (=> b!1819550 m!2248589))

(declare-fun m!2248593 () Bool)

(assert (=> b!1819550 m!2248593))

(declare-fun m!2248597 () Bool)

(assert (=> b!1819543 m!2248597))

(declare-fun m!2248599 () Bool)

(assert (=> b!1819546 m!2248599))

(declare-fun m!2248601 () Bool)

(assert (=> b!1819548 m!2248601))

(assert (=> b!1819544 m!2248431))

(declare-fun m!2248603 () Bool)

(assert (=> b!1819544 m!2248603))

(assert (=> b!1819403 d!557531))

(declare-fun d!557559 () Bool)

(declare-fun lt!706930 () List!19979)

(declare-fun size!15806 (List!19979) Int)

(declare-fun size!15807 (List!19978) Int)

(assert (=> d!557559 (= (size!15806 lt!706930) (size!15807 rules!4538))))

(declare-fun e!1162649 () List!19979)

(assert (=> d!557559 (= lt!706930 e!1162649)))

(declare-fun c!296999 () Bool)

(assert (=> d!557559 (= c!296999 ((_ is Nil!19908) rules!4538))))

(assert (=> d!557559 (= (map!4108 rules!4538 lambda!71160) lt!706930)))

(declare-fun b!1819557 () Bool)

(assert (=> b!1819557 (= e!1162649 Nil!19909)))

(declare-fun b!1819558 () Bool)

(declare-fun $colon$colon!442 (List!19979 Regex!4913) List!19979)

(declare-fun dynLambda!9915 (Int Rule!6970) Regex!4913)

(assert (=> b!1819558 (= e!1162649 ($colon$colon!442 (map!4108 (t!169791 rules!4538) lambda!71160) (dynLambda!9915 lambda!71160 (h!25309 rules!4538))))))

(assert (= (and d!557559 c!296999) b!1819557))

(assert (= (and d!557559 (not c!296999)) b!1819558))

(declare-fun b_lambda!60067 () Bool)

(assert (=> (not b_lambda!60067) (not b!1819558)))

(declare-fun m!2248605 () Bool)

(assert (=> d!557559 m!2248605))

(declare-fun m!2248607 () Bool)

(assert (=> d!557559 m!2248607))

(declare-fun m!2248609 () Bool)

(assert (=> b!1819558 m!2248609))

(declare-fun m!2248611 () Bool)

(assert (=> b!1819558 m!2248611))

(assert (=> b!1819558 m!2248609))

(assert (=> b!1819558 m!2248611))

(declare-fun m!2248613 () Bool)

(assert (=> b!1819558 m!2248613))

(assert (=> b!1819403 d!557559))

(declare-fun b!1819577 () Bool)

(declare-fun res!818220 () Bool)

(declare-fun e!1162656 () Bool)

(assert (=> b!1819577 (=> (not res!818220) (not e!1162656))))

(declare-fun lt!706942 () Option!4165)

(declare-fun get!6165 (Option!4165) tuple2!19446)

(assert (=> b!1819577 (= res!818220 (= (value!111839 (_1!11125 (get!6165 lt!706942))) (apply!5377 (transformation!3585 (rule!5705 (_1!11125 (get!6165 lt!706942)))) (seqFromList!2546 (originalCharacters!4393 (_1!11125 (get!6165 lt!706942)))))))))

(declare-fun call!114288 () Option!4165)

(declare-fun bm!114283 () Bool)

(assert (=> bm!114283 (= call!114288 (maxPrefixOneRule!1127 thiss!28068 (h!25309 rules!4538) input!3612))))

(declare-fun b!1819578 () Bool)

(declare-fun res!818225 () Bool)

(assert (=> b!1819578 (=> (not res!818225) (not e!1162656))))

(assert (=> b!1819578 (= res!818225 (= (list!8097 (charsOf!2228 (_1!11125 (get!6165 lt!706942)))) (originalCharacters!4393 (_1!11125 (get!6165 lt!706942)))))))

(declare-fun b!1819579 () Bool)

(declare-fun e!1162658 () Option!4165)

(assert (=> b!1819579 (= e!1162658 call!114288)))

(declare-fun b!1819580 () Bool)

(declare-fun e!1162657 () Bool)

(assert (=> b!1819580 (= e!1162657 e!1162656)))

(declare-fun res!818224 () Bool)

(assert (=> b!1819580 (=> (not res!818224) (not e!1162656))))

(declare-fun isDefined!3498 (Option!4165) Bool)

(assert (=> b!1819580 (= res!818224 (isDefined!3498 lt!706942))))

(declare-fun d!557561 () Bool)

(assert (=> d!557561 e!1162657))

(declare-fun res!818219 () Bool)

(assert (=> d!557561 (=> res!818219 e!1162657)))

(declare-fun isEmpty!12592 (Option!4165) Bool)

(assert (=> d!557561 (= res!818219 (isEmpty!12592 lt!706942))))

(assert (=> d!557561 (= lt!706942 e!1162658)))

(declare-fun c!297002 () Bool)

(assert (=> d!557561 (= c!297002 (and ((_ is Cons!19908) rules!4538) ((_ is Nil!19908) (t!169791 rules!4538))))))

(declare-fun lt!706945 () Unit!34589)

(declare-fun lt!706943 () Unit!34589)

(assert (=> d!557561 (= lt!706945 lt!706943)))

(declare-fun isPrefix!1811 (List!19977 List!19977) Bool)

(assert (=> d!557561 (isPrefix!1811 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1188 (List!19977 List!19977) Unit!34589)

(assert (=> d!557561 (= lt!706943 (lemmaIsPrefixRefl!1188 input!3612 input!3612))))

(declare-fun rulesValidInductive!1230 (LexerInterface!3214 List!19978) Bool)

(assert (=> d!557561 (rulesValidInductive!1230 thiss!28068 rules!4538)))

(assert (=> d!557561 (= (maxPrefix!1762 thiss!28068 rules!4538 input!3612) lt!706942)))

(declare-fun b!1819581 () Bool)

(declare-fun lt!706944 () Option!4165)

(declare-fun lt!706941 () Option!4165)

(assert (=> b!1819581 (= e!1162658 (ite (and ((_ is None!4164) lt!706944) ((_ is None!4164) lt!706941)) None!4164 (ite ((_ is None!4164) lt!706941) lt!706944 (ite ((_ is None!4164) lt!706944) lt!706941 (ite (>= (size!15801 (_1!11125 (v!25699 lt!706944))) (size!15801 (_1!11125 (v!25699 lt!706941)))) lt!706944 lt!706941)))))))

(assert (=> b!1819581 (= lt!706944 call!114288)))

(assert (=> b!1819581 (= lt!706941 (maxPrefix!1762 thiss!28068 (t!169791 rules!4538) input!3612))))

(declare-fun b!1819582 () Bool)

(assert (=> b!1819582 (= e!1162656 (contains!3621 rules!4538 (rule!5705 (_1!11125 (get!6165 lt!706942)))))))

(declare-fun b!1819583 () Bool)

(declare-fun res!818222 () Bool)

(assert (=> b!1819583 (=> (not res!818222) (not e!1162656))))

(assert (=> b!1819583 (= res!818222 (matchR!2378 (regex!3585 (rule!5705 (_1!11125 (get!6165 lt!706942)))) (list!8097 (charsOf!2228 (_1!11125 (get!6165 lt!706942))))))))

(declare-fun b!1819584 () Bool)

(declare-fun res!818223 () Bool)

(assert (=> b!1819584 (=> (not res!818223) (not e!1162656))))

(assert (=> b!1819584 (= res!818223 (= (++!5409 (list!8097 (charsOf!2228 (_1!11125 (get!6165 lt!706942)))) (_2!11125 (get!6165 lt!706942))) input!3612))))

(declare-fun b!1819585 () Bool)

(declare-fun res!818221 () Bool)

(assert (=> b!1819585 (=> (not res!818221) (not e!1162656))))

(assert (=> b!1819585 (= res!818221 (< (size!15802 (_2!11125 (get!6165 lt!706942))) (size!15802 input!3612)))))

(assert (= (and d!557561 c!297002) b!1819579))

(assert (= (and d!557561 (not c!297002)) b!1819581))

(assert (= (or b!1819579 b!1819581) bm!114283))

(assert (= (and d!557561 (not res!818219)) b!1819580))

(assert (= (and b!1819580 res!818224) b!1819578))

(assert (= (and b!1819578 res!818225) b!1819585))

(assert (= (and b!1819585 res!818221) b!1819584))

(assert (= (and b!1819584 res!818223) b!1819577))

(assert (= (and b!1819577 res!818220) b!1819583))

(assert (= (and b!1819583 res!818222) b!1819582))

(declare-fun m!2248615 () Bool)

(assert (=> b!1819582 m!2248615))

(declare-fun m!2248617 () Bool)

(assert (=> b!1819582 m!2248617))

(assert (=> b!1819578 m!2248615))

(declare-fun m!2248619 () Bool)

(assert (=> b!1819578 m!2248619))

(assert (=> b!1819578 m!2248619))

(declare-fun m!2248621 () Bool)

(assert (=> b!1819578 m!2248621))

(declare-fun m!2248623 () Bool)

(assert (=> b!1819581 m!2248623))

(declare-fun m!2248625 () Bool)

(assert (=> d!557561 m!2248625))

(declare-fun m!2248627 () Bool)

(assert (=> d!557561 m!2248627))

(declare-fun m!2248629 () Bool)

(assert (=> d!557561 m!2248629))

(declare-fun m!2248631 () Bool)

(assert (=> d!557561 m!2248631))

(assert (=> b!1819585 m!2248615))

(declare-fun m!2248633 () Bool)

(assert (=> b!1819585 m!2248633))

(declare-fun m!2248635 () Bool)

(assert (=> b!1819585 m!2248635))

(assert (=> b!1819577 m!2248615))

(declare-fun m!2248637 () Bool)

(assert (=> b!1819577 m!2248637))

(assert (=> b!1819577 m!2248637))

(declare-fun m!2248639 () Bool)

(assert (=> b!1819577 m!2248639))

(declare-fun m!2248641 () Bool)

(assert (=> bm!114283 m!2248641))

(assert (=> b!1819584 m!2248615))

(assert (=> b!1819584 m!2248619))

(assert (=> b!1819584 m!2248619))

(assert (=> b!1819584 m!2248621))

(assert (=> b!1819584 m!2248621))

(declare-fun m!2248643 () Bool)

(assert (=> b!1819584 m!2248643))

(declare-fun m!2248645 () Bool)

(assert (=> b!1819580 m!2248645))

(assert (=> b!1819583 m!2248615))

(assert (=> b!1819583 m!2248619))

(assert (=> b!1819583 m!2248619))

(assert (=> b!1819583 m!2248621))

(assert (=> b!1819583 m!2248621))

(declare-fun m!2248647 () Bool)

(assert (=> b!1819583 m!2248647))

(assert (=> b!1819414 d!557561))

(declare-fun b!1819632 () Bool)

(declare-fun e!1162684 () Bool)

(declare-fun nullable!1520 (Regex!4913) Bool)

(assert (=> b!1819632 (= e!1162684 (nullable!1520 (regex!3585 rule!559)))))

(declare-fun b!1819633 () Bool)

(declare-fun derivativeStep!1285 (Regex!4913 C!10000) Regex!4913)

(declare-fun head!4237 (List!19977) C!10000)

(declare-fun tail!2696 (List!19977) List!19977)

(assert (=> b!1819633 (= e!1162684 (matchR!2378 (derivativeStep!1285 (regex!3585 rule!559) (head!4237 lt!706875)) (tail!2696 lt!706875)))))

(declare-fun b!1819634 () Bool)

(declare-fun e!1162683 () Bool)

(declare-fun e!1162685 () Bool)

(assert (=> b!1819634 (= e!1162683 e!1162685)))

(declare-fun res!818261 () Bool)

(assert (=> b!1819634 (=> res!818261 e!1162685)))

(declare-fun call!114291 () Bool)

(assert (=> b!1819634 (= res!818261 call!114291)))

(declare-fun b!1819635 () Bool)

(declare-fun res!818263 () Bool)

(assert (=> b!1819635 (=> res!818263 e!1162685)))

(declare-fun isEmpty!12593 (List!19977) Bool)

(assert (=> b!1819635 (= res!818263 (not (isEmpty!12593 (tail!2696 lt!706875))))))

(declare-fun b!1819636 () Bool)

(declare-fun e!1162681 () Bool)

(declare-fun lt!706958 () Bool)

(assert (=> b!1819636 (= e!1162681 (= lt!706958 call!114291))))

(declare-fun b!1819637 () Bool)

(declare-fun res!818258 () Bool)

(declare-fun e!1162682 () Bool)

(assert (=> b!1819637 (=> res!818258 e!1162682)))

(declare-fun e!1162687 () Bool)

(assert (=> b!1819637 (= res!818258 e!1162687)))

(declare-fun res!818260 () Bool)

(assert (=> b!1819637 (=> (not res!818260) (not e!1162687))))

(assert (=> b!1819637 (= res!818260 lt!706958)))

(declare-fun b!1819638 () Bool)

(declare-fun e!1162686 () Bool)

(assert (=> b!1819638 (= e!1162681 e!1162686)))

(declare-fun c!297011 () Bool)

(assert (=> b!1819638 (= c!297011 ((_ is EmptyLang!4913) (regex!3585 rule!559)))))

(declare-fun d!557563 () Bool)

(assert (=> d!557563 e!1162681))

(declare-fun c!297012 () Bool)

(assert (=> d!557563 (= c!297012 ((_ is EmptyExpr!4913) (regex!3585 rule!559)))))

(assert (=> d!557563 (= lt!706958 e!1162684)))

(declare-fun c!297013 () Bool)

(assert (=> d!557563 (= c!297013 (isEmpty!12593 lt!706875))))

(assert (=> d!557563 (validRegex!1995 (regex!3585 rule!559))))

(assert (=> d!557563 (= (matchR!2378 (regex!3585 rule!559) lt!706875) lt!706958)))

(declare-fun b!1819639 () Bool)

(declare-fun res!818256 () Bool)

(assert (=> b!1819639 (=> (not res!818256) (not e!1162687))))

(assert (=> b!1819639 (= res!818256 (not call!114291))))

(declare-fun b!1819640 () Bool)

(assert (=> b!1819640 (= e!1162682 e!1162683)))

(declare-fun res!818262 () Bool)

(assert (=> b!1819640 (=> (not res!818262) (not e!1162683))))

(assert (=> b!1819640 (= res!818262 (not lt!706958))))

(declare-fun bm!114286 () Bool)

(assert (=> bm!114286 (= call!114291 (isEmpty!12593 lt!706875))))

(declare-fun b!1819641 () Bool)

(assert (=> b!1819641 (= e!1162685 (not (= (head!4237 lt!706875) (c!296957 (regex!3585 rule!559)))))))

(declare-fun b!1819642 () Bool)

(declare-fun res!818259 () Bool)

(assert (=> b!1819642 (=> res!818259 e!1162682)))

(assert (=> b!1819642 (= res!818259 (not ((_ is ElementMatch!4913) (regex!3585 rule!559))))))

(assert (=> b!1819642 (= e!1162686 e!1162682)))

(declare-fun b!1819643 () Bool)

(declare-fun res!818257 () Bool)

(assert (=> b!1819643 (=> (not res!818257) (not e!1162687))))

(assert (=> b!1819643 (= res!818257 (isEmpty!12593 (tail!2696 lt!706875)))))

(declare-fun b!1819644 () Bool)

(assert (=> b!1819644 (= e!1162686 (not lt!706958))))

(declare-fun b!1819645 () Bool)

(assert (=> b!1819645 (= e!1162687 (= (head!4237 lt!706875) (c!296957 (regex!3585 rule!559))))))

(assert (= (and d!557563 c!297013) b!1819632))

(assert (= (and d!557563 (not c!297013)) b!1819633))

(assert (= (and d!557563 c!297012) b!1819636))

(assert (= (and d!557563 (not c!297012)) b!1819638))

(assert (= (and b!1819638 c!297011) b!1819644))

(assert (= (and b!1819638 (not c!297011)) b!1819642))

(assert (= (and b!1819642 (not res!818259)) b!1819637))

(assert (= (and b!1819637 res!818260) b!1819639))

(assert (= (and b!1819639 res!818256) b!1819643))

(assert (= (and b!1819643 res!818257) b!1819645))

(assert (= (and b!1819637 (not res!818258)) b!1819640))

(assert (= (and b!1819640 res!818262) b!1819634))

(assert (= (and b!1819634 (not res!818261)) b!1819635))

(assert (= (and b!1819635 (not res!818263)) b!1819641))

(assert (= (or b!1819636 b!1819634 b!1819639) bm!114286))

(declare-fun m!2248649 () Bool)

(assert (=> b!1819635 m!2248649))

(assert (=> b!1819635 m!2248649))

(declare-fun m!2248651 () Bool)

(assert (=> b!1819635 m!2248651))

(declare-fun m!2248653 () Bool)

(assert (=> d!557563 m!2248653))

(declare-fun m!2248655 () Bool)

(assert (=> d!557563 m!2248655))

(declare-fun m!2248657 () Bool)

(assert (=> b!1819633 m!2248657))

(assert (=> b!1819633 m!2248657))

(declare-fun m!2248659 () Bool)

(assert (=> b!1819633 m!2248659))

(assert (=> b!1819633 m!2248649))

(assert (=> b!1819633 m!2248659))

(assert (=> b!1819633 m!2248649))

(declare-fun m!2248661 () Bool)

(assert (=> b!1819633 m!2248661))

(declare-fun m!2248663 () Bool)

(assert (=> b!1819632 m!2248663))

(assert (=> b!1819645 m!2248657))

(assert (=> bm!114286 m!2248653))

(assert (=> b!1819641 m!2248657))

(assert (=> b!1819643 m!2248649))

(assert (=> b!1819643 m!2248649))

(assert (=> b!1819643 m!2248651))

(assert (=> b!1819413 d!557563))

(declare-fun d!557565 () Bool)

(declare-fun res!818275 () Bool)

(declare-fun e!1162694 () Bool)

(assert (=> d!557565 (=> (not res!818275) (not e!1162694))))

(assert (=> d!557565 (= res!818275 (validRegex!1995 (regex!3585 rule!559)))))

(assert (=> d!557565 (= (ruleValid!1077 thiss!28068 rule!559) e!1162694)))

(declare-fun b!1819659 () Bool)

(declare-fun res!818276 () Bool)

(assert (=> b!1819659 (=> (not res!818276) (not e!1162694))))

(assert (=> b!1819659 (= res!818276 (not (nullable!1520 (regex!3585 rule!559))))))

(declare-fun b!1819660 () Bool)

(assert (=> b!1819660 (= e!1162694 (not (= (tag!3999 rule!559) (String!22708 ""))))))

(assert (= (and d!557565 res!818275) b!1819659))

(assert (= (and b!1819659 res!818276) b!1819660))

(assert (=> d!557565 m!2248655))

(assert (=> b!1819659 m!2248663))

(assert (=> b!1819413 d!557565))

(declare-fun d!557567 () Bool)

(assert (=> d!557567 (ruleValid!1077 thiss!28068 rule!559)))

(declare-fun lt!706966 () Unit!34589)

(declare-fun choose!11469 (LexerInterface!3214 Rule!6970 List!19978) Unit!34589)

(assert (=> d!557567 (= lt!706966 (choose!11469 thiss!28068 rule!559 rules!4538))))

(assert (=> d!557567 (contains!3621 rules!4538 rule!559)))

(assert (=> d!557567 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!598 thiss!28068 rule!559 rules!4538) lt!706966)))

(declare-fun bs!407283 () Bool)

(assert (= bs!407283 d!557567))

(assert (=> bs!407283 m!2248459))

(declare-fun m!2248707 () Bool)

(assert (=> bs!407283 m!2248707))

(assert (=> bs!407283 m!2248427))

(assert (=> b!1819413 d!557567))

(declare-fun d!557571 () Bool)

(declare-fun c!297023 () Bool)

(assert (=> d!557571 (= c!297023 ((_ is IntegerValue!11025) (value!111839 token!556)))))

(declare-fun e!1162708 () Bool)

(assert (=> d!557571 (= (inv!21 (value!111839 token!556)) e!1162708)))

(declare-fun b!1819679 () Bool)

(declare-fun res!818279 () Bool)

(declare-fun e!1162709 () Bool)

(assert (=> b!1819679 (=> res!818279 e!1162709)))

(assert (=> b!1819679 (= res!818279 (not ((_ is IntegerValue!11027) (value!111839 token!556))))))

(declare-fun e!1162707 () Bool)

(assert (=> b!1819679 (= e!1162707 e!1162709)))

(declare-fun b!1819680 () Bool)

(declare-fun inv!15 (TokenValue!3675) Bool)

(assert (=> b!1819680 (= e!1162709 (inv!15 (value!111839 token!556)))))

(declare-fun b!1819681 () Bool)

(assert (=> b!1819681 (= e!1162708 e!1162707)))

(declare-fun c!297022 () Bool)

(assert (=> b!1819681 (= c!297022 ((_ is IntegerValue!11026) (value!111839 token!556)))))

(declare-fun b!1819682 () Bool)

(declare-fun inv!16 (TokenValue!3675) Bool)

(assert (=> b!1819682 (= e!1162708 (inv!16 (value!111839 token!556)))))

(declare-fun b!1819683 () Bool)

(declare-fun inv!17 (TokenValue!3675) Bool)

(assert (=> b!1819683 (= e!1162707 (inv!17 (value!111839 token!556)))))

(assert (= (and d!557571 c!297023) b!1819682))

(assert (= (and d!557571 (not c!297023)) b!1819681))

(assert (= (and b!1819681 c!297022) b!1819683))

(assert (= (and b!1819681 (not c!297022)) b!1819679))

(assert (= (and b!1819679 (not res!818279)) b!1819680))

(declare-fun m!2248715 () Bool)

(assert (=> b!1819680 m!2248715))

(declare-fun m!2248717 () Bool)

(assert (=> b!1819682 m!2248717))

(declare-fun m!2248719 () Bool)

(assert (=> b!1819683 m!2248719))

(assert (=> b!1819402 d!557571))

(declare-fun d!557577 () Bool)

(declare-fun lt!706972 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2919 (List!19978) (InoxSet Rule!6970))

(assert (=> d!557577 (= lt!706972 (select (content!2919 rules!4538) rule!559))))

(declare-fun e!1162715 () Bool)

(assert (=> d!557577 (= lt!706972 e!1162715)))

(declare-fun res!818284 () Bool)

(assert (=> d!557577 (=> (not res!818284) (not e!1162715))))

(assert (=> d!557577 (= res!818284 ((_ is Cons!19908) rules!4538))))

(assert (=> d!557577 (= (contains!3621 rules!4538 rule!559) lt!706972)))

(declare-fun b!1819688 () Bool)

(declare-fun e!1162714 () Bool)

(assert (=> b!1819688 (= e!1162715 e!1162714)))

(declare-fun res!818285 () Bool)

(assert (=> b!1819688 (=> res!818285 e!1162714)))

(assert (=> b!1819688 (= res!818285 (= (h!25309 rules!4538) rule!559))))

(declare-fun b!1819689 () Bool)

(assert (=> b!1819689 (= e!1162714 (contains!3621 (t!169791 rules!4538) rule!559))))

(assert (= (and d!557577 res!818284) b!1819688))

(assert (= (and b!1819688 (not res!818285)) b!1819689))

(declare-fun m!2248721 () Bool)

(assert (=> d!557577 m!2248721))

(declare-fun m!2248723 () Bool)

(assert (=> d!557577 m!2248723))

(declare-fun m!2248725 () Bool)

(assert (=> b!1819689 m!2248725))

(assert (=> b!1819411 d!557577))

(declare-fun d!557579 () Bool)

(assert (=> d!557579 (= (isEmpty!12587 rules!4538) ((_ is Nil!19908) rules!4538))))

(assert (=> b!1819421 d!557579))

(declare-fun d!557581 () Bool)

(assert (=> d!557581 (= (inv!25940 (tag!3999 rule!559)) (= (mod (str.len (value!111838 (tag!3999 rule!559))) 2) 0))))

(assert (=> b!1819410 d!557581))

(declare-fun d!557583 () Bool)

(declare-fun res!818288 () Bool)

(declare-fun e!1162718 () Bool)

(assert (=> d!557583 (=> (not res!818288) (not e!1162718))))

(declare-fun semiInverseModEq!1436 (Int Int) Bool)

(assert (=> d!557583 (= res!818288 (semiInverseModEq!1436 (toChars!4979 (transformation!3585 rule!559)) (toValue!5120 (transformation!3585 rule!559))))))

(assert (=> d!557583 (= (inv!25943 (transformation!3585 rule!559)) e!1162718)))

(declare-fun b!1819692 () Bool)

(declare-fun equivClasses!1377 (Int Int) Bool)

(assert (=> b!1819692 (= e!1162718 (equivClasses!1377 (toChars!4979 (transformation!3585 rule!559)) (toValue!5120 (transformation!3585 rule!559))))))

(assert (= (and d!557583 res!818288) b!1819692))

(declare-fun m!2248727 () Bool)

(assert (=> d!557583 m!2248727))

(declare-fun m!2248729 () Bool)

(assert (=> b!1819692 m!2248729))

(assert (=> b!1819410 d!557583))

(declare-fun d!557585 () Bool)

(assert (=> d!557585 true))

(declare-fun lt!706975 () Bool)

(assert (=> d!557585 (= lt!706975 (rulesValidInductive!1230 thiss!28068 rules!4538))))

(declare-fun lambda!71178 () Int)

(declare-fun forall!4299 (List!19978 Int) Bool)

(assert (=> d!557585 (= lt!706975 (forall!4299 rules!4538 lambda!71178))))

(assert (=> d!557585 (= (rulesValid!1361 thiss!28068 rules!4538) lt!706975)))

(declare-fun bs!407284 () Bool)

(assert (= bs!407284 d!557585))

(assert (=> bs!407284 m!2248631))

(declare-fun m!2248731 () Bool)

(assert (=> bs!407284 m!2248731))

(assert (=> b!1819409 d!557585))

(declare-fun b!1819704 () Bool)

(declare-fun e!1162723 () List!19977)

(assert (=> b!1819704 (= e!1162723 (Cons!19907 (h!25308 lt!706875) (++!5409 (t!169790 lt!706875) suffix!1667)))))

(declare-fun b!1819703 () Bool)

(assert (=> b!1819703 (= e!1162723 suffix!1667)))

(declare-fun b!1819705 () Bool)

(declare-fun res!818293 () Bool)

(declare-fun e!1162724 () Bool)

(assert (=> b!1819705 (=> (not res!818293) (not e!1162724))))

(declare-fun lt!706981 () List!19977)

(assert (=> b!1819705 (= res!818293 (= (size!15802 lt!706981) (+ (size!15802 lt!706875) (size!15802 suffix!1667))))))

(declare-fun d!557587 () Bool)

(assert (=> d!557587 e!1162724))

(declare-fun res!818294 () Bool)

(assert (=> d!557587 (=> (not res!818294) (not e!1162724))))

(declare-fun content!2921 (List!19977) (InoxSet C!10000))

(assert (=> d!557587 (= res!818294 (= (content!2921 lt!706981) ((_ map or) (content!2921 lt!706875) (content!2921 suffix!1667))))))

(assert (=> d!557587 (= lt!706981 e!1162723)))

(declare-fun c!297026 () Bool)

(assert (=> d!557587 (= c!297026 ((_ is Nil!19907) lt!706875))))

(assert (=> d!557587 (= (++!5409 lt!706875 suffix!1667) lt!706981)))

(declare-fun b!1819706 () Bool)

(assert (=> b!1819706 (= e!1162724 (or (not (= suffix!1667 Nil!19907)) (= lt!706981 lt!706875)))))

(assert (= (and d!557587 c!297026) b!1819703))

(assert (= (and d!557587 (not c!297026)) b!1819704))

(assert (= (and d!557587 res!818294) b!1819705))

(assert (= (and b!1819705 res!818293) b!1819706))

(declare-fun m!2248737 () Bool)

(assert (=> b!1819704 m!2248737))

(declare-fun m!2248739 () Bool)

(assert (=> b!1819705 m!2248739))

(assert (=> b!1819705 m!2248441))

(declare-fun m!2248741 () Bool)

(assert (=> b!1819705 m!2248741))

(declare-fun m!2248743 () Bool)

(assert (=> d!557587 m!2248743))

(declare-fun m!2248745 () Bool)

(assert (=> d!557587 m!2248745))

(declare-fun m!2248747 () Bool)

(assert (=> d!557587 m!2248747))

(assert (=> b!1819420 d!557587))

(declare-fun d!557593 () Bool)

(declare-fun list!8099 (Conc!6617) List!19977)

(assert (=> d!557593 (= (list!8097 (charsOf!2228 token!556)) (list!8099 (c!296956 (charsOf!2228 token!556))))))

(declare-fun bs!407287 () Bool)

(assert (= bs!407287 d!557593))

(declare-fun m!2248749 () Bool)

(assert (=> bs!407287 m!2248749))

(assert (=> b!1819420 d!557593))

(declare-fun d!557595 () Bool)

(declare-fun lt!706984 () BalanceConc!13178)

(assert (=> d!557595 (= (list!8097 lt!706984) (originalCharacters!4393 token!556))))

(declare-fun dynLambda!9918 (Int TokenValue!3675) BalanceConc!13178)

(assert (=> d!557595 (= lt!706984 (dynLambda!9918 (toChars!4979 (transformation!3585 (rule!5705 token!556))) (value!111839 token!556)))))

(assert (=> d!557595 (= (charsOf!2228 token!556) lt!706984)))

(declare-fun b_lambda!60073 () Bool)

(assert (=> (not b_lambda!60073) (not d!557595)))

(declare-fun t!169802 () Bool)

(declare-fun tb!111213 () Bool)

(assert (=> (and b!1819412 (= (toChars!4979 (transformation!3585 rule!559)) (toChars!4979 (transformation!3585 (rule!5705 token!556)))) t!169802) tb!111213))

(declare-fun b!1819722 () Bool)

(declare-fun e!1162733 () Bool)

(declare-fun tp!514186 () Bool)

(declare-fun inv!25947 (Conc!6617) Bool)

(assert (=> b!1819722 (= e!1162733 (and (inv!25947 (c!296956 (dynLambda!9918 (toChars!4979 (transformation!3585 (rule!5705 token!556))) (value!111839 token!556)))) tp!514186))))

(declare-fun result!133632 () Bool)

(declare-fun inv!25948 (BalanceConc!13178) Bool)

(assert (=> tb!111213 (= result!133632 (and (inv!25948 (dynLambda!9918 (toChars!4979 (transformation!3585 (rule!5705 token!556))) (value!111839 token!556))) e!1162733))))

(assert (= tb!111213 b!1819722))

(declare-fun m!2248763 () Bool)

(assert (=> b!1819722 m!2248763))

(declare-fun m!2248765 () Bool)

(assert (=> tb!111213 m!2248765))

(assert (=> d!557595 t!169802))

(declare-fun b_and!141037 () Bool)

(assert (= b_and!141015 (and (=> t!169802 result!133632) b_and!141037)))

(declare-fun t!169808 () Bool)

(declare-fun tb!111219 () Bool)

(assert (=> (and b!1819417 (= (toChars!4979 (transformation!3585 (h!25309 rules!4538))) (toChars!4979 (transformation!3585 (rule!5705 token!556)))) t!169808) tb!111219))

(declare-fun result!133640 () Bool)

(assert (= result!133640 result!133632))

(assert (=> d!557595 t!169808))

(declare-fun b_and!141039 () Bool)

(assert (= b_and!141019 (and (=> t!169808 result!133640) b_and!141039)))

(declare-fun t!169810 () Bool)

(declare-fun tb!111221 () Bool)

(assert (=> (and b!1819406 (= (toChars!4979 (transformation!3585 (rule!5705 token!556))) (toChars!4979 (transformation!3585 (rule!5705 token!556)))) t!169810) tb!111221))

(declare-fun result!133642 () Bool)

(assert (= result!133642 result!133632))

(assert (=> d!557595 t!169810))

(declare-fun b_and!141041 () Bool)

(assert (= b_and!141023 (and (=> t!169810 result!133642) b_and!141041)))

(declare-fun m!2248767 () Bool)

(assert (=> d!557595 m!2248767))

(declare-fun m!2248769 () Bool)

(assert (=> d!557595 m!2248769))

(assert (=> b!1819420 d!557595))

(declare-fun d!557599 () Bool)

(assert (=> d!557599 (= (inv!25940 (tag!3999 (h!25309 rules!4538))) (= (mod (str.len (value!111838 (tag!3999 (h!25309 rules!4538)))) 2) 0))))

(assert (=> b!1819408 d!557599))

(declare-fun d!557601 () Bool)

(declare-fun res!818303 () Bool)

(declare-fun e!1162740 () Bool)

(assert (=> d!557601 (=> (not res!818303) (not e!1162740))))

(assert (=> d!557601 (= res!818303 (semiInverseModEq!1436 (toChars!4979 (transformation!3585 (h!25309 rules!4538))) (toValue!5120 (transformation!3585 (h!25309 rules!4538)))))))

(assert (=> d!557601 (= (inv!25943 (transformation!3585 (h!25309 rules!4538))) e!1162740)))

(declare-fun b!1819733 () Bool)

(assert (=> b!1819733 (= e!1162740 (equivClasses!1377 (toChars!4979 (transformation!3585 (h!25309 rules!4538))) (toValue!5120 (transformation!3585 (h!25309 rules!4538)))))))

(assert (= (and d!557601 res!818303) b!1819733))

(declare-fun m!2248771 () Bool)

(assert (=> d!557601 m!2248771))

(declare-fun m!2248773 () Bool)

(assert (=> b!1819733 m!2248773))

(assert (=> b!1819408 d!557601))

(declare-fun bs!407290 () Bool)

(declare-fun d!557603 () Bool)

(assert (= bs!407290 (and d!557603 d!557531)))

(declare-fun lambda!71180 () Int)

(assert (=> bs!407290 (= lambda!71180 lambda!71174)))

(declare-fun b!1819734 () Bool)

(declare-fun e!1162746 () Bool)

(declare-fun lt!706986 () Regex!4913)

(assert (=> b!1819734 (= e!1162746 (isEmptyLang!109 lt!706986))))

(declare-fun b!1819735 () Bool)

(declare-fun e!1162741 () Bool)

(assert (=> b!1819735 (= e!1162741 (= lt!706986 (head!4236 lt!706874)))))

(declare-fun b!1819736 () Bool)

(declare-fun e!1162743 () Regex!4913)

(assert (=> b!1819736 (= e!1162743 EmptyLang!4913)))

(declare-fun b!1819737 () Bool)

(assert (=> b!1819737 (= e!1162741 (isUnion!109 lt!706986))))

(declare-fun b!1819738 () Bool)

(assert (=> b!1819738 (= e!1162743 (Union!4913 (h!25310 lt!706874) (generalisedUnion!440 (t!169792 lt!706874))))))

(declare-fun b!1819739 () Bool)

(declare-fun e!1162744 () Bool)

(assert (=> b!1819739 (= e!1162744 (isEmpty!12591 (t!169792 lt!706874)))))

(declare-fun b!1819740 () Bool)

(declare-fun e!1162742 () Bool)

(assert (=> b!1819740 (= e!1162742 e!1162746)))

(declare-fun c!297034 () Bool)

(assert (=> b!1819740 (= c!297034 (isEmpty!12591 lt!706874))))

(declare-fun b!1819741 () Bool)

(assert (=> b!1819741 (= e!1162746 e!1162741)))

(declare-fun c!297033 () Bool)

(assert (=> b!1819741 (= c!297033 (isEmpty!12591 (tail!2695 lt!706874)))))

(assert (=> d!557603 e!1162742))

(declare-fun res!818305 () Bool)

(assert (=> d!557603 (=> (not res!818305) (not e!1162742))))

(assert (=> d!557603 (= res!818305 (validRegex!1995 lt!706986))))

(declare-fun e!1162745 () Regex!4913)

(assert (=> d!557603 (= lt!706986 e!1162745)))

(declare-fun c!297032 () Bool)

(assert (=> d!557603 (= c!297032 e!1162744)))

(declare-fun res!818304 () Bool)

(assert (=> d!557603 (=> (not res!818304) (not e!1162744))))

(assert (=> d!557603 (= res!818304 ((_ is Cons!19909) lt!706874))))

(assert (=> d!557603 (forall!4297 lt!706874 lambda!71180)))

(assert (=> d!557603 (= (generalisedUnion!440 lt!706874) lt!706986)))

(declare-fun b!1819742 () Bool)

(assert (=> b!1819742 (= e!1162745 e!1162743)))

(declare-fun c!297031 () Bool)

(assert (=> b!1819742 (= c!297031 ((_ is Cons!19909) lt!706874))))

(declare-fun b!1819743 () Bool)

(assert (=> b!1819743 (= e!1162745 (h!25310 lt!706874))))

(assert (= (and d!557603 res!818304) b!1819739))

(assert (= (and d!557603 c!297032) b!1819743))

(assert (= (and d!557603 (not c!297032)) b!1819742))

(assert (= (and b!1819742 c!297031) b!1819738))

(assert (= (and b!1819742 (not c!297031)) b!1819736))

(assert (= (and d!557603 res!818305) b!1819740))

(assert (= (and b!1819740 c!297034) b!1819734))

(assert (= (and b!1819740 (not c!297034)) b!1819741))

(assert (= (and b!1819741 c!297033) b!1819735))

(assert (= (and b!1819741 (not c!297033)) b!1819737))

(declare-fun m!2248795 () Bool)

(assert (=> b!1819738 m!2248795))

(declare-fun m!2248797 () Bool)

(assert (=> b!1819740 m!2248797))

(declare-fun m!2248799 () Bool)

(assert (=> d!557603 m!2248799))

(declare-fun m!2248803 () Bool)

(assert (=> d!557603 m!2248803))

(declare-fun m!2248805 () Bool)

(assert (=> b!1819741 m!2248805))

(assert (=> b!1819741 m!2248805))

(declare-fun m!2248809 () Bool)

(assert (=> b!1819741 m!2248809))

(declare-fun m!2248811 () Bool)

(assert (=> b!1819734 m!2248811))

(declare-fun m!2248813 () Bool)

(assert (=> b!1819737 m!2248813))

(declare-fun m!2248815 () Bool)

(assert (=> b!1819739 m!2248815))

(declare-fun m!2248817 () Bool)

(assert (=> b!1819735 m!2248817))

(assert (=> b!1819407 d!557603))

(declare-fun bs!407292 () Bool)

(declare-fun d!557611 () Bool)

(assert (= bs!407292 (and d!557611 b!1819407)))

(declare-fun lambda!71186 () Int)

(assert (=> bs!407292 (= lambda!71186 lambda!71160)))

(declare-fun lt!706992 () Unit!34589)

(declare-fun lemma!440 (List!19978 LexerInterface!3214 List!19978) Unit!34589)

(assert (=> d!557611 (= lt!706992 (lemma!440 rules!4538 thiss!28068 rules!4538))))

(assert (=> d!557611 (= (rulesRegex!917 thiss!28068 rules!4538) (generalisedUnion!440 (map!4108 rules!4538 lambda!71186)))))

(declare-fun bs!407293 () Bool)

(assert (= bs!407293 d!557611))

(declare-fun m!2248821 () Bool)

(assert (=> bs!407293 m!2248821))

(declare-fun m!2248823 () Bool)

(assert (=> bs!407293 m!2248823))

(assert (=> bs!407293 m!2248823))

(declare-fun m!2248825 () Bool)

(assert (=> bs!407293 m!2248825))

(assert (=> b!1819407 d!557611))

(assert (=> b!1819407 d!557559))

(declare-fun bs!407295 () Bool)

(declare-fun d!557615 () Bool)

(assert (= bs!407295 (and d!557615 b!1819407)))

(declare-fun lambda!71191 () Int)

(assert (=> bs!407295 (= lambda!71191 lambda!71160)))

(declare-fun bs!407296 () Bool)

(assert (= bs!407296 (and d!557615 d!557611)))

(assert (=> bs!407296 (= lambda!71191 lambda!71186)))

(declare-fun bs!407297 () Bool)

(assert (= bs!407297 (and d!557615 d!557531)))

(declare-fun lambda!71192 () Int)

(assert (=> bs!407297 (= lambda!71192 lambda!71174)))

(declare-fun bs!407298 () Bool)

(assert (= bs!407298 (and d!557615 d!557603)))

(assert (=> bs!407298 (= lambda!71192 lambda!71180)))

(assert (=> d!557615 (forall!4297 (map!4108 rules!4538 lambda!71191) lambda!71192)))

(declare-fun lt!707016 () Unit!34589)

(declare-fun e!1162777 () Unit!34589)

(assert (=> d!557615 (= lt!707016 e!1162777)))

(declare-fun c!297049 () Bool)

(assert (=> d!557615 (= c!297049 ((_ is Nil!19908) rules!4538))))

(assert (=> d!557615 (rulesValid!1361 thiss!28068 rules!4538)))

(declare-fun lt!707012 () Unit!34589)

(declare-fun lt!707013 () Unit!34589)

(assert (=> d!557615 (= lt!707012 lt!707013)))

(declare-fun lt!707015 () List!19977)

(assert (=> d!557615 (= (maxPrefixOneRule!1127 thiss!28068 rule!559 input!3612) (Some!4164 (tuple2!19447 (Token!6725 (apply!5377 (transformation!3585 rule!559) (seqFromList!2546 lt!707015)) rule!559 (size!15802 lt!707015) lt!707015) suffix!1667)))))

(assert (=> d!557615 (= lt!707013 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!503 thiss!28068 rules!4538 lt!707015 input!3612 suffix!1667 rule!559))))

(assert (=> d!557615 (= lt!707015 (list!8097 (charsOf!2228 token!556)))))

(assert (=> d!557615 (= (lemma!438 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!707016)))

(declare-fun b!1819805 () Bool)

(declare-fun Unit!34593 () Unit!34589)

(assert (=> b!1819805 (= e!1162777 Unit!34593)))

(declare-fun b!1819806 () Bool)

(declare-fun Unit!34594 () Unit!34589)

(assert (=> b!1819806 (= e!1162777 Unit!34594)))

(declare-fun lt!707014 () Unit!34589)

(assert (=> b!1819806 (= lt!707014 (lemma!438 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!169791 rules!4538)))))

(assert (= (and d!557615 c!297049) b!1819805))

(assert (= (and d!557615 (not c!297049)) b!1819806))

(declare-fun m!2248859 () Bool)

(assert (=> d!557615 m!2248859))

(declare-fun m!2248861 () Bool)

(assert (=> d!557615 m!2248861))

(declare-fun m!2248863 () Bool)

(assert (=> d!557615 m!2248863))

(assert (=> d!557615 m!2248467))

(assert (=> d!557615 m!2248469))

(assert (=> d!557615 m!2248859))

(declare-fun m!2248865 () Bool)

(assert (=> d!557615 m!2248865))

(declare-fun m!2248867 () Bool)

(assert (=> d!557615 m!2248867))

(assert (=> d!557615 m!2248861))

(assert (=> d!557615 m!2248421))

(assert (=> d!557615 m!2248439))

(declare-fun m!2248869 () Bool)

(assert (=> d!557615 m!2248869))

(assert (=> d!557615 m!2248467))

(declare-fun m!2248871 () Bool)

(assert (=> b!1819806 m!2248871))

(assert (=> b!1819407 d!557615))

(declare-fun d!557625 () Bool)

(declare-fun res!818347 () Bool)

(declare-fun e!1162783 () Bool)

(assert (=> d!557625 (=> (not res!818347) (not e!1162783))))

(assert (=> d!557625 (= res!818347 (not (isEmpty!12593 (originalCharacters!4393 token!556))))))

(assert (=> d!557625 (= (inv!25944 token!556) e!1162783)))

(declare-fun b!1819817 () Bool)

(declare-fun res!818348 () Bool)

(assert (=> b!1819817 (=> (not res!818348) (not e!1162783))))

(assert (=> b!1819817 (= res!818348 (= (originalCharacters!4393 token!556) (list!8097 (dynLambda!9918 (toChars!4979 (transformation!3585 (rule!5705 token!556))) (value!111839 token!556)))))))

(declare-fun b!1819818 () Bool)

(assert (=> b!1819818 (= e!1162783 (= (size!15801 token!556) (size!15802 (originalCharacters!4393 token!556))))))

(assert (= (and d!557625 res!818347) b!1819817))

(assert (= (and b!1819817 res!818348) b!1819818))

(declare-fun b_lambda!60077 () Bool)

(assert (=> (not b_lambda!60077) (not b!1819817)))

(assert (=> b!1819817 t!169802))

(declare-fun b_and!141049 () Bool)

(assert (= b_and!141037 (and (=> t!169802 result!133632) b_and!141049)))

(assert (=> b!1819817 t!169808))

(declare-fun b_and!141051 () Bool)

(assert (= b_and!141039 (and (=> t!169808 result!133640) b_and!141051)))

(assert (=> b!1819817 t!169810))

(declare-fun b_and!141053 () Bool)

(assert (= b_and!141041 (and (=> t!169810 result!133642) b_and!141053)))

(declare-fun m!2248873 () Bool)

(assert (=> d!557625 m!2248873))

(assert (=> b!1819817 m!2248769))

(assert (=> b!1819817 m!2248769))

(declare-fun m!2248875 () Bool)

(assert (=> b!1819817 m!2248875))

(declare-fun m!2248877 () Bool)

(assert (=> b!1819818 m!2248877))

(assert (=> start!180130 d!557625))

(declare-fun d!557629 () Bool)

(assert (=> d!557629 (= (inv!25940 (tag!3999 (rule!5705 token!556))) (= (mod (str.len (value!111838 (tag!3999 (rule!5705 token!556)))) 2) 0))))

(assert (=> b!1819405 d!557629))

(declare-fun d!557631 () Bool)

(declare-fun res!818349 () Bool)

(declare-fun e!1162784 () Bool)

(assert (=> d!557631 (=> (not res!818349) (not e!1162784))))

(assert (=> d!557631 (= res!818349 (semiInverseModEq!1436 (toChars!4979 (transformation!3585 (rule!5705 token!556))) (toValue!5120 (transformation!3585 (rule!5705 token!556)))))))

(assert (=> d!557631 (= (inv!25943 (transformation!3585 (rule!5705 token!556))) e!1162784)))

(declare-fun b!1819819 () Bool)

(assert (=> b!1819819 (= e!1162784 (equivClasses!1377 (toChars!4979 (transformation!3585 (rule!5705 token!556))) (toValue!5120 (transformation!3585 (rule!5705 token!556)))))))

(assert (= (and d!557631 res!818349) b!1819819))

(declare-fun m!2248879 () Bool)

(assert (=> d!557631 m!2248879))

(declare-fun m!2248883 () Bool)

(assert (=> b!1819819 m!2248883))

(assert (=> b!1819405 d!557631))

(declare-fun d!557633 () Bool)

(declare-fun e!1162816 () Bool)

(assert (=> d!557633 e!1162816))

(declare-fun res!818365 () Bool)

(assert (=> d!557633 (=> res!818365 e!1162816)))

(declare-fun lt!707034 () Option!4165)

(assert (=> d!557633 (= res!818365 (isEmpty!12592 lt!707034))))

(declare-fun e!1162815 () Option!4165)

(assert (=> d!557633 (= lt!707034 e!1162815)))

(declare-fun c!297052 () Bool)

(declare-datatypes ((tuple2!19450 0))(
  ( (tuple2!19451 (_1!11127 List!19977) (_2!11127 List!19977)) )
))
(declare-fun lt!707031 () tuple2!19450)

(assert (=> d!557633 (= c!297052 (isEmpty!12593 (_1!11127 lt!707031)))))

(declare-fun findLongestMatch!422 (Regex!4913 List!19977) tuple2!19450)

(assert (=> d!557633 (= lt!707031 (findLongestMatch!422 (regex!3585 rule!559) input!3612))))

(assert (=> d!557633 (ruleValid!1077 thiss!28068 rule!559)))

(assert (=> d!557633 (= (maxPrefixOneRule!1127 thiss!28068 rule!559 input!3612) lt!707034)))

(declare-fun b!1819878 () Bool)

(declare-fun res!818367 () Bool)

(declare-fun e!1162818 () Bool)

(assert (=> b!1819878 (=> (not res!818367) (not e!1162818))))

(assert (=> b!1819878 (= res!818367 (= (rule!5705 (_1!11125 (get!6165 lt!707034))) rule!559))))

(declare-fun b!1819879 () Bool)

(assert (=> b!1819879 (= e!1162815 None!4164)))

(declare-fun b!1819880 () Bool)

(declare-fun res!818366 () Bool)

(assert (=> b!1819880 (=> (not res!818366) (not e!1162818))))

(assert (=> b!1819880 (= res!818366 (= (++!5409 (list!8097 (charsOf!2228 (_1!11125 (get!6165 lt!707034)))) (_2!11125 (get!6165 lt!707034))) input!3612))))

(declare-fun b!1819881 () Bool)

(declare-fun e!1162817 () Bool)

(declare-fun findLongestMatchInner!495 (Regex!4913 List!19977 Int List!19977 List!19977 Int) tuple2!19450)

(assert (=> b!1819881 (= e!1162817 (matchR!2378 (regex!3585 rule!559) (_1!11127 (findLongestMatchInner!495 (regex!3585 rule!559) Nil!19907 (size!15802 Nil!19907) input!3612 input!3612 (size!15802 input!3612)))))))

(declare-fun b!1819882 () Bool)

(assert (=> b!1819882 (= e!1162818 (= (size!15801 (_1!11125 (get!6165 lt!707034))) (size!15802 (originalCharacters!4393 (_1!11125 (get!6165 lt!707034))))))))

(declare-fun b!1819883 () Bool)

(declare-fun size!15808 (BalanceConc!13178) Int)

(assert (=> b!1819883 (= e!1162815 (Some!4164 (tuple2!19447 (Token!6725 (apply!5377 (transformation!3585 rule!559) (seqFromList!2546 (_1!11127 lt!707031))) rule!559 (size!15808 (seqFromList!2546 (_1!11127 lt!707031))) (_1!11127 lt!707031)) (_2!11127 lt!707031))))))

(declare-fun lt!707030 () Unit!34589)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!479 (Regex!4913 List!19977) Unit!34589)

(assert (=> b!1819883 (= lt!707030 (longestMatchIsAcceptedByMatchOrIsEmpty!479 (regex!3585 rule!559) input!3612))))

(declare-fun res!818368 () Bool)

(assert (=> b!1819883 (= res!818368 (isEmpty!12593 (_1!11127 (findLongestMatchInner!495 (regex!3585 rule!559) Nil!19907 (size!15802 Nil!19907) input!3612 input!3612 (size!15802 input!3612)))))))

(assert (=> b!1819883 (=> res!818368 e!1162817)))

(assert (=> b!1819883 e!1162817))

(declare-fun lt!707033 () Unit!34589)

(assert (=> b!1819883 (= lt!707033 lt!707030)))

(declare-fun lt!707032 () Unit!34589)

(declare-fun lemmaSemiInverse!709 (TokenValueInjection!7010 BalanceConc!13178) Unit!34589)

(assert (=> b!1819883 (= lt!707032 (lemmaSemiInverse!709 (transformation!3585 rule!559) (seqFromList!2546 (_1!11127 lt!707031))))))

(declare-fun b!1819884 () Bool)

(assert (=> b!1819884 (= e!1162816 e!1162818)))

(declare-fun res!818369 () Bool)

(assert (=> b!1819884 (=> (not res!818369) (not e!1162818))))

(assert (=> b!1819884 (= res!818369 (matchR!2378 (regex!3585 rule!559) (list!8097 (charsOf!2228 (_1!11125 (get!6165 lt!707034))))))))

(declare-fun b!1819885 () Bool)

(declare-fun res!818370 () Bool)

(assert (=> b!1819885 (=> (not res!818370) (not e!1162818))))

(assert (=> b!1819885 (= res!818370 (< (size!15802 (_2!11125 (get!6165 lt!707034))) (size!15802 input!3612)))))

(declare-fun b!1819886 () Bool)

(declare-fun res!818364 () Bool)

(assert (=> b!1819886 (=> (not res!818364) (not e!1162818))))

(assert (=> b!1819886 (= res!818364 (= (value!111839 (_1!11125 (get!6165 lt!707034))) (apply!5377 (transformation!3585 (rule!5705 (_1!11125 (get!6165 lt!707034)))) (seqFromList!2546 (originalCharacters!4393 (_1!11125 (get!6165 lt!707034)))))))))

(assert (= (and d!557633 c!297052) b!1819879))

(assert (= (and d!557633 (not c!297052)) b!1819883))

(assert (= (and b!1819883 (not res!818368)) b!1819881))

(assert (= (and d!557633 (not res!818365)) b!1819884))

(assert (= (and b!1819884 res!818369) b!1819880))

(assert (= (and b!1819880 res!818366) b!1819885))

(assert (= (and b!1819885 res!818370) b!1819878))

(assert (= (and b!1819878 res!818367) b!1819886))

(assert (= (and b!1819886 res!818364) b!1819882))

(declare-fun m!2248889 () Bool)

(assert (=> b!1819884 m!2248889))

(declare-fun m!2248891 () Bool)

(assert (=> b!1819884 m!2248891))

(assert (=> b!1819884 m!2248891))

(declare-fun m!2248893 () Bool)

(assert (=> b!1819884 m!2248893))

(assert (=> b!1819884 m!2248893))

(declare-fun m!2248895 () Bool)

(assert (=> b!1819884 m!2248895))

(assert (=> b!1819886 m!2248889))

(declare-fun m!2248897 () Bool)

(assert (=> b!1819886 m!2248897))

(assert (=> b!1819886 m!2248897))

(declare-fun m!2248899 () Bool)

(assert (=> b!1819886 m!2248899))

(assert (=> b!1819883 m!2248635))

(declare-fun m!2248901 () Bool)

(assert (=> b!1819883 m!2248901))

(declare-fun m!2248903 () Bool)

(assert (=> b!1819883 m!2248903))

(assert (=> b!1819883 m!2248901))

(declare-fun m!2248905 () Bool)

(assert (=> b!1819883 m!2248905))

(assert (=> b!1819883 m!2248901))

(declare-fun m!2248907 () Bool)

(assert (=> b!1819883 m!2248907))

(declare-fun m!2248909 () Bool)

(assert (=> b!1819883 m!2248909))

(declare-fun m!2248911 () Bool)

(assert (=> b!1819883 m!2248911))

(assert (=> b!1819883 m!2248909))

(assert (=> b!1819883 m!2248635))

(declare-fun m!2248913 () Bool)

(assert (=> b!1819883 m!2248913))

(declare-fun m!2248915 () Bool)

(assert (=> b!1819883 m!2248915))

(assert (=> b!1819883 m!2248901))

(assert (=> b!1819878 m!2248889))

(assert (=> b!1819880 m!2248889))

(assert (=> b!1819880 m!2248891))

(assert (=> b!1819880 m!2248891))

(assert (=> b!1819880 m!2248893))

(assert (=> b!1819880 m!2248893))

(declare-fun m!2248917 () Bool)

(assert (=> b!1819880 m!2248917))

(assert (=> b!1819885 m!2248889))

(declare-fun m!2248919 () Bool)

(assert (=> b!1819885 m!2248919))

(assert (=> b!1819885 m!2248635))

(assert (=> b!1819882 m!2248889))

(declare-fun m!2248921 () Bool)

(assert (=> b!1819882 m!2248921))

(assert (=> b!1819881 m!2248909))

(assert (=> b!1819881 m!2248635))

(assert (=> b!1819881 m!2248909))

(assert (=> b!1819881 m!2248635))

(assert (=> b!1819881 m!2248913))

(declare-fun m!2248923 () Bool)

(assert (=> b!1819881 m!2248923))

(declare-fun m!2248925 () Bool)

(assert (=> d!557633 m!2248925))

(declare-fun m!2248927 () Bool)

(assert (=> d!557633 m!2248927))

(declare-fun m!2248929 () Bool)

(assert (=> d!557633 m!2248929))

(assert (=> d!557633 m!2248459))

(assert (=> b!1819416 d!557633))

(declare-fun d!557637 () Bool)

(assert (=> d!557637 (= (maxPrefixOneRule!1127 thiss!28068 rule!559 input!3612) (Some!4164 (tuple2!19447 (Token!6725 (apply!5377 (transformation!3585 rule!559) (seqFromList!2546 lt!706875)) rule!559 (size!15802 lt!706875) lt!706875) suffix!1667)))))

(declare-fun lt!707037 () Unit!34589)

(declare-fun choose!11471 (LexerInterface!3214 List!19978 List!19977 List!19977 List!19977 Rule!6970) Unit!34589)

(assert (=> d!557637 (= lt!707037 (choose!11471 thiss!28068 rules!4538 lt!706875 input!3612 suffix!1667 rule!559))))

(assert (=> d!557637 (not (isEmpty!12587 rules!4538))))

(assert (=> d!557637 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!503 thiss!28068 rules!4538 lt!706875 input!3612 suffix!1667 rule!559) lt!707037)))

(declare-fun bs!407301 () Bool)

(assert (= bs!407301 d!557637))

(assert (=> bs!407301 m!2248439))

(assert (=> bs!407301 m!2248437))

(assert (=> bs!407301 m!2248443))

(declare-fun m!2248931 () Bool)

(assert (=> bs!407301 m!2248931))

(assert (=> bs!407301 m!2248429))

(assert (=> bs!407301 m!2248437))

(assert (=> bs!407301 m!2248441))

(assert (=> b!1819416 d!557637))

(declare-fun d!557639 () Bool)

(declare-fun fromListB!1166 (List!19977) BalanceConc!13178)

(assert (=> d!557639 (= (seqFromList!2546 lt!706875) (fromListB!1166 lt!706875))))

(declare-fun bs!407302 () Bool)

(assert (= bs!407302 d!557639))

(declare-fun m!2248933 () Bool)

(assert (=> bs!407302 m!2248933))

(assert (=> b!1819416 d!557639))

(declare-fun d!557641 () Bool)

(declare-fun lt!707040 () Int)

(assert (=> d!557641 (>= lt!707040 0)))

(declare-fun e!1162821 () Int)

(assert (=> d!557641 (= lt!707040 e!1162821)))

(declare-fun c!297055 () Bool)

(assert (=> d!557641 (= c!297055 ((_ is Nil!19907) lt!706875))))

(assert (=> d!557641 (= (size!15802 lt!706875) lt!707040)))

(declare-fun b!1819891 () Bool)

(assert (=> b!1819891 (= e!1162821 0)))

(declare-fun b!1819892 () Bool)

(assert (=> b!1819892 (= e!1162821 (+ 1 (size!15802 (t!169790 lt!706875))))))

(assert (= (and d!557641 c!297055) b!1819891))

(assert (= (and d!557641 (not c!297055)) b!1819892))

(declare-fun m!2248935 () Bool)

(assert (=> b!1819892 m!2248935))

(assert (=> b!1819416 d!557641))

(declare-fun d!557643 () Bool)

(declare-fun dynLambda!9919 (Int BalanceConc!13178) TokenValue!3675)

(assert (=> d!557643 (= (apply!5377 (transformation!3585 rule!559) (seqFromList!2546 lt!706875)) (dynLambda!9919 (toValue!5120 (transformation!3585 rule!559)) (seqFromList!2546 lt!706875)))))

(declare-fun b_lambda!60087 () Bool)

(assert (=> (not b_lambda!60087) (not d!557643)))

(declare-fun t!169817 () Bool)

(declare-fun tb!111227 () Bool)

(assert (=> (and b!1819412 (= (toValue!5120 (transformation!3585 rule!559)) (toValue!5120 (transformation!3585 rule!559))) t!169817) tb!111227))

(declare-fun result!133654 () Bool)

(assert (=> tb!111227 (= result!133654 (inv!21 (dynLambda!9919 (toValue!5120 (transformation!3585 rule!559)) (seqFromList!2546 lt!706875))))))

(declare-fun m!2248937 () Bool)

(assert (=> tb!111227 m!2248937))

(assert (=> d!557643 t!169817))

(declare-fun b_and!141059 () Bool)

(assert (= b_and!141013 (and (=> t!169817 result!133654) b_and!141059)))

(declare-fun tb!111229 () Bool)

(declare-fun t!169819 () Bool)

(assert (=> (and b!1819417 (= (toValue!5120 (transformation!3585 (h!25309 rules!4538))) (toValue!5120 (transformation!3585 rule!559))) t!169819) tb!111229))

(declare-fun result!133658 () Bool)

(assert (= result!133658 result!133654))

(assert (=> d!557643 t!169819))

(declare-fun b_and!141061 () Bool)

(assert (= b_and!141017 (and (=> t!169819 result!133658) b_and!141061)))

(declare-fun t!169821 () Bool)

(declare-fun tb!111231 () Bool)

(assert (=> (and b!1819406 (= (toValue!5120 (transformation!3585 (rule!5705 token!556))) (toValue!5120 (transformation!3585 rule!559))) t!169821) tb!111231))

(declare-fun result!133660 () Bool)

(assert (= result!133660 result!133654))

(assert (=> d!557643 t!169821))

(declare-fun b_and!141063 () Bool)

(assert (= b_and!141021 (and (=> t!169821 result!133660) b_and!141063)))

(assert (=> d!557643 m!2248437))

(declare-fun m!2248939 () Bool)

(assert (=> d!557643 m!2248939))

(assert (=> b!1819416 d!557643))

(declare-fun b!1819899 () Bool)

(declare-fun e!1162827 () Bool)

(declare-fun tp!514231 () Bool)

(assert (=> b!1819899 (= e!1162827 (and tp_is_empty!8061 tp!514231))))

(assert (=> b!1819419 (= tp!514180 e!1162827)))

(assert (= (and b!1819419 ((_ is Cons!19907) (t!169790 suffix!1667))) b!1819899))

(declare-fun b!1819912 () Bool)

(declare-fun e!1162830 () Bool)

(declare-fun tp!514246 () Bool)

(assert (=> b!1819912 (= e!1162830 tp!514246)))

(declare-fun b!1819911 () Bool)

(declare-fun tp!514242 () Bool)

(declare-fun tp!514243 () Bool)

(assert (=> b!1819911 (= e!1162830 (and tp!514242 tp!514243))))

(declare-fun b!1819910 () Bool)

(assert (=> b!1819910 (= e!1162830 tp_is_empty!8061)))

(declare-fun b!1819913 () Bool)

(declare-fun tp!514244 () Bool)

(declare-fun tp!514245 () Bool)

(assert (=> b!1819913 (= e!1162830 (and tp!514244 tp!514245))))

(assert (=> b!1819408 (= tp!514171 e!1162830)))

(assert (= (and b!1819408 ((_ is ElementMatch!4913) (regex!3585 (h!25309 rules!4538)))) b!1819910))

(assert (= (and b!1819408 ((_ is Concat!8589) (regex!3585 (h!25309 rules!4538)))) b!1819911))

(assert (= (and b!1819408 ((_ is Star!4913) (regex!3585 (h!25309 rules!4538)))) b!1819912))

(assert (= (and b!1819408 ((_ is Union!4913) (regex!3585 (h!25309 rules!4538)))) b!1819913))

(declare-fun b!1819924 () Bool)

(declare-fun b_free!50415 () Bool)

(declare-fun b_next!51119 () Bool)

(assert (=> b!1819924 (= b_free!50415 (not b_next!51119))))

(declare-fun tb!111233 () Bool)

(declare-fun t!169823 () Bool)

(assert (=> (and b!1819924 (= (toValue!5120 (transformation!3585 (h!25309 (t!169791 rules!4538)))) (toValue!5120 (transformation!3585 rule!559))) t!169823) tb!111233))

(declare-fun result!133668 () Bool)

(assert (= result!133668 result!133654))

(assert (=> d!557643 t!169823))

(declare-fun b_and!141065 () Bool)

(declare-fun tp!514256 () Bool)

(assert (=> b!1819924 (= tp!514256 (and (=> t!169823 result!133668) b_and!141065))))

(declare-fun b_free!50417 () Bool)

(declare-fun b_next!51121 () Bool)

(assert (=> b!1819924 (= b_free!50417 (not b_next!51121))))

(declare-fun t!169825 () Bool)

(declare-fun tb!111235 () Bool)

(assert (=> (and b!1819924 (= (toChars!4979 (transformation!3585 (h!25309 (t!169791 rules!4538)))) (toChars!4979 (transformation!3585 (rule!5705 token!556)))) t!169825) tb!111235))

(declare-fun result!133670 () Bool)

(assert (= result!133670 result!133632))

(assert (=> d!557595 t!169825))

(assert (=> b!1819817 t!169825))

(declare-fun b_and!141067 () Bool)

(declare-fun tp!514257 () Bool)

(assert (=> b!1819924 (= tp!514257 (and (=> t!169825 result!133670) b_and!141067))))

(declare-fun e!1162841 () Bool)

(assert (=> b!1819924 (= e!1162841 (and tp!514256 tp!514257))))

(declare-fun b!1819923 () Bool)

(declare-fun tp!514255 () Bool)

(declare-fun e!1162840 () Bool)

(assert (=> b!1819923 (= e!1162840 (and tp!514255 (inv!25940 (tag!3999 (h!25309 (t!169791 rules!4538)))) (inv!25943 (transformation!3585 (h!25309 (t!169791 rules!4538)))) e!1162841))))

(declare-fun b!1819922 () Bool)

(declare-fun e!1162839 () Bool)

(declare-fun tp!514258 () Bool)

(assert (=> b!1819922 (= e!1162839 (and e!1162840 tp!514258))))

(assert (=> b!1819418 (= tp!514177 e!1162839)))

(assert (= b!1819923 b!1819924))

(assert (= b!1819922 b!1819923))

(assert (= (and b!1819418 ((_ is Cons!19908) (t!169791 rules!4538))) b!1819922))

(declare-fun m!2248941 () Bool)

(assert (=> b!1819923 m!2248941))

(declare-fun m!2248943 () Bool)

(assert (=> b!1819923 m!2248943))

(declare-fun b!1819925 () Bool)

(declare-fun e!1162843 () Bool)

(declare-fun tp!514259 () Bool)

(assert (=> b!1819925 (= e!1162843 (and tp_is_empty!8061 tp!514259))))

(assert (=> b!1819402 (= tp!514172 e!1162843)))

(assert (= (and b!1819402 ((_ is Cons!19907) (originalCharacters!4393 token!556))) b!1819925))

(declare-fun b!1819926 () Bool)

(declare-fun e!1162844 () Bool)

(declare-fun tp!514260 () Bool)

(assert (=> b!1819926 (= e!1162844 (and tp_is_empty!8061 tp!514260))))

(assert (=> b!1819422 (= tp!514176 e!1162844)))

(assert (= (and b!1819422 ((_ is Cons!19907) (t!169790 input!3612))) b!1819926))

(declare-fun b!1819929 () Bool)

(declare-fun e!1162845 () Bool)

(declare-fun tp!514265 () Bool)

(assert (=> b!1819929 (= e!1162845 tp!514265)))

(declare-fun b!1819928 () Bool)

(declare-fun tp!514261 () Bool)

(declare-fun tp!514262 () Bool)

(assert (=> b!1819928 (= e!1162845 (and tp!514261 tp!514262))))

(declare-fun b!1819927 () Bool)

(assert (=> b!1819927 (= e!1162845 tp_is_empty!8061)))

(declare-fun b!1819930 () Bool)

(declare-fun tp!514263 () Bool)

(declare-fun tp!514264 () Bool)

(assert (=> b!1819930 (= e!1162845 (and tp!514263 tp!514264))))

(assert (=> b!1819405 (= tp!514173 e!1162845)))

(assert (= (and b!1819405 ((_ is ElementMatch!4913) (regex!3585 (rule!5705 token!556)))) b!1819927))

(assert (= (and b!1819405 ((_ is Concat!8589) (regex!3585 (rule!5705 token!556)))) b!1819928))

(assert (= (and b!1819405 ((_ is Star!4913) (regex!3585 (rule!5705 token!556)))) b!1819929))

(assert (= (and b!1819405 ((_ is Union!4913) (regex!3585 (rule!5705 token!556)))) b!1819930))

(declare-fun b!1819933 () Bool)

(declare-fun e!1162846 () Bool)

(declare-fun tp!514270 () Bool)

(assert (=> b!1819933 (= e!1162846 tp!514270)))

(declare-fun b!1819932 () Bool)

(declare-fun tp!514266 () Bool)

(declare-fun tp!514267 () Bool)

(assert (=> b!1819932 (= e!1162846 (and tp!514266 tp!514267))))

(declare-fun b!1819931 () Bool)

(assert (=> b!1819931 (= e!1162846 tp_is_empty!8061)))

(declare-fun b!1819934 () Bool)

(declare-fun tp!514268 () Bool)

(declare-fun tp!514269 () Bool)

(assert (=> b!1819934 (= e!1162846 (and tp!514268 tp!514269))))

(assert (=> b!1819410 (= tp!514170 e!1162846)))

(assert (= (and b!1819410 ((_ is ElementMatch!4913) (regex!3585 rule!559))) b!1819931))

(assert (= (and b!1819410 ((_ is Concat!8589) (regex!3585 rule!559))) b!1819932))

(assert (= (and b!1819410 ((_ is Star!4913) (regex!3585 rule!559))) b!1819933))

(assert (= (and b!1819410 ((_ is Union!4913) (regex!3585 rule!559))) b!1819934))

(declare-fun b_lambda!60089 () Bool)

(assert (= b_lambda!60077 (or (and b!1819412 b_free!50401 (= (toChars!4979 (transformation!3585 rule!559)) (toChars!4979 (transformation!3585 (rule!5705 token!556))))) (and b!1819417 b_free!50405 (= (toChars!4979 (transformation!3585 (h!25309 rules!4538))) (toChars!4979 (transformation!3585 (rule!5705 token!556))))) (and b!1819406 b_free!50409) (and b!1819924 b_free!50417 (= (toChars!4979 (transformation!3585 (h!25309 (t!169791 rules!4538)))) (toChars!4979 (transformation!3585 (rule!5705 token!556))))) b_lambda!60089)))

(declare-fun b_lambda!60091 () Bool)

(assert (= b_lambda!60087 (or (and b!1819412 b_free!50399) (and b!1819417 b_free!50403 (= (toValue!5120 (transformation!3585 (h!25309 rules!4538))) (toValue!5120 (transformation!3585 rule!559)))) (and b!1819406 b_free!50407 (= (toValue!5120 (transformation!3585 (rule!5705 token!556))) (toValue!5120 (transformation!3585 rule!559)))) (and b!1819924 b_free!50415 (= (toValue!5120 (transformation!3585 (h!25309 (t!169791 rules!4538)))) (toValue!5120 (transformation!3585 rule!559)))) b_lambda!60091)))

(declare-fun b_lambda!60093 () Bool)

(assert (= b_lambda!60067 (or b!1819407 b_lambda!60093)))

(declare-fun bs!407303 () Bool)

(declare-fun d!557645 () Bool)

(assert (= bs!407303 (and d!557645 b!1819407)))

(assert (=> bs!407303 (= (dynLambda!9915 lambda!71160 (h!25309 rules!4538)) (regex!3585 (h!25309 rules!4538)))))

(assert (=> b!1819558 d!557645))

(declare-fun b_lambda!60095 () Bool)

(assert (= b_lambda!60073 (or (and b!1819412 b_free!50401 (= (toChars!4979 (transformation!3585 rule!559)) (toChars!4979 (transformation!3585 (rule!5705 token!556))))) (and b!1819417 b_free!50405 (= (toChars!4979 (transformation!3585 (h!25309 rules!4538))) (toChars!4979 (transformation!3585 (rule!5705 token!556))))) (and b!1819406 b_free!50409) (and b!1819924 b_free!50417 (= (toChars!4979 (transformation!3585 (h!25309 (t!169791 rules!4538)))) (toChars!4979 (transformation!3585 (rule!5705 token!556))))) b_lambda!60095)))

(check-sat (not b!1819633) (not b!1819582) b_and!141051 (not b!1819549) (not b!1819911) (not b!1819932) (not b!1819543) (not d!557587) (not b!1819929) (not d!557603) (not b!1819735) (not b!1819930) (not b!1819632) (not b!1819913) (not b!1819641) b_and!141049 (not d!557531) b_and!141067 (not d!557559) (not tb!111227) (not b!1819912) (not d!557615) (not b!1819558) (not b!1819680) (not b!1819883) (not b!1819925) (not b!1819884) (not d!557637) (not d!557527) (not d!557583) (not b!1819692) (not b!1819899) (not b!1819739) (not b!1819578) (not b!1819581) (not b!1819880) (not b!1819689) (not b!1819643) (not b!1819741) (not b_next!51113) (not b!1819933) (not b!1819547) b_and!141065 (not b!1819584) (not b_next!51107) (not b!1819733) (not d!557639) (not b_lambda!60089) (not b!1819583) (not b!1819881) (not b!1819704) (not b_next!51119) b_and!141053 (not b!1819544) (not b!1819705) (not d!557565) (not b!1819882) b_and!141059 (not b!1819580) (not b!1819546) (not b!1819734) (not b_next!51105) (not b!1819550) tp_is_empty!8061 (not b!1819922) (not b_next!51103) (not b!1819585) (not b!1819817) (not b_lambda!60091) (not b!1819818) b_and!141063 (not b!1819923) (not b!1819892) (not d!557561) (not b_lambda!60093) (not b!1819934) (not b!1819737) (not d!557625) (not d!557577) (not b!1819577) (not b_lambda!60095) (not b!1819645) (not b!1819928) (not bm!114286) (not b!1819819) b_and!141061 (not b!1819878) (not d!557585) (not b_next!51111) (not d!557633) (not b!1819659) (not d!557563) (not d!557631) (not b!1819738) (not b!1819806) (not b!1819885) (not d!557593) (not b!1819926) (not bm!114283) (not b!1819683) (not b_next!51109) (not b!1819722) (not d!557595) (not d!557601) (not b!1819886) (not b!1819548) (not b!1819740) (not b!1819635) (not b_next!51121) (not d!557611) (not b!1819682) (not tb!111213) (not b!1819425) (not d!557567))
(check-sat b_and!141051 (not b_next!51113) b_and!141065 (not b_next!51107) b_and!141059 (not b_next!51105) b_and!141061 (not b_next!51111) (not b_next!51109) (not b_next!51121) b_and!141049 b_and!141067 (not b_next!51119) b_and!141053 (not b_next!51103) b_and!141063)
