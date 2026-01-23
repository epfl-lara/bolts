; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!224508 () Bool)

(assert start!224508)

(declare-fun b!2288460 () Bool)

(declare-fun b_free!68669 () Bool)

(declare-fun b_next!69373 () Bool)

(assert (=> b!2288460 (= b_free!68669 (not b_next!69373))))

(declare-fun tp!725550 () Bool)

(declare-fun b_and!181441 () Bool)

(assert (=> b!2288460 (= tp!725550 b_and!181441)))

(declare-fun b_free!68671 () Bool)

(declare-fun b_next!69375 () Bool)

(assert (=> b!2288460 (= b_free!68671 (not b_next!69375))))

(declare-fun tp!725557 () Bool)

(declare-fun b_and!181443 () Bool)

(assert (=> b!2288460 (= tp!725557 b_and!181443)))

(declare-fun b!2288450 () Bool)

(declare-fun b_free!68673 () Bool)

(declare-fun b_next!69377 () Bool)

(assert (=> b!2288450 (= b_free!68673 (not b_next!69377))))

(declare-fun tp!725545 () Bool)

(declare-fun b_and!181445 () Bool)

(assert (=> b!2288450 (= tp!725545 b_and!181445)))

(declare-fun b_free!68675 () Bool)

(declare-fun b_next!69379 () Bool)

(assert (=> b!2288450 (= b_free!68675 (not b_next!69379))))

(declare-fun tp!725549 () Bool)

(declare-fun b_and!181447 () Bool)

(assert (=> b!2288450 (= tp!725549 b_and!181447)))

(declare-fun b!2288463 () Bool)

(declare-fun b_free!68677 () Bool)

(declare-fun b_next!69381 () Bool)

(assert (=> b!2288463 (= b_free!68677 (not b_next!69381))))

(declare-fun tp!725553 () Bool)

(declare-fun b_and!181449 () Bool)

(assert (=> b!2288463 (= tp!725553 b_and!181449)))

(declare-fun b_free!68679 () Bool)

(declare-fun b_next!69383 () Bool)

(assert (=> b!2288463 (= b_free!68679 (not b_next!69383))))

(declare-fun tp!725548 () Bool)

(declare-fun b_and!181451 () Bool)

(assert (=> b!2288463 (= tp!725548 b_and!181451)))

(declare-fun b!2288459 () Bool)

(declare-fun b_free!68681 () Bool)

(declare-fun b_next!69385 () Bool)

(assert (=> b!2288459 (= b_free!68681 (not b_next!69385))))

(declare-fun tp!725555 () Bool)

(declare-fun b_and!181453 () Bool)

(assert (=> b!2288459 (= tp!725555 b_and!181453)))

(declare-fun b_free!68683 () Bool)

(declare-fun b_next!69387 () Bool)

(assert (=> b!2288459 (= b_free!68683 (not b_next!69387))))

(declare-fun tp!725552 () Bool)

(declare-fun b_and!181455 () Bool)

(assert (=> b!2288459 (= tp!725552 b_and!181455)))

(declare-fun b!2288449 () Bool)

(declare-fun e!1466263 () Bool)

(declare-datatypes ((List!27333 0))(
  ( (Nil!27239) (Cons!27239 (h!32640 (_ BitVec 16)) (t!204385 List!27333)) )
))
(declare-datatypes ((TokenValue!4519 0))(
  ( (FloatLiteralValue!9038 (text!32078 List!27333)) (TokenValueExt!4518 (__x!18098 Int)) (Broken!22595 (value!137968 List!27333)) (Object!4612) (End!4519) (Def!4519) (Underscore!4519) (Match!4519) (Else!4519) (Error!4519) (Case!4519) (If!4519) (Extends!4519) (Abstract!4519) (Class!4519) (Val!4519) (DelimiterValue!9038 (del!4579 List!27333)) (KeywordValue!4525 (value!137969 List!27333)) (CommentValue!9038 (value!137970 List!27333)) (WhitespaceValue!9038 (value!137971 List!27333)) (IndentationValue!4519 (value!137972 List!27333)) (String!29698) (Int32!4519) (Broken!22596 (value!137973 List!27333)) (Boolean!4520) (Unit!40133) (OperatorValue!4522 (op!4579 List!27333)) (IdentifierValue!9038 (value!137974 List!27333)) (IdentifierValue!9039 (value!137975 List!27333)) (WhitespaceValue!9039 (value!137976 List!27333)) (True!9038) (False!9038) (Broken!22597 (value!137977 List!27333)) (Broken!22598 (value!137978 List!27333)) (True!9039) (RightBrace!4519) (RightBracket!4519) (Colon!4519) (Null!4519) (Comma!4519) (LeftBracket!4519) (False!9039) (LeftBrace!4519) (ImaginaryLiteralValue!4519 (text!32079 List!27333)) (StringLiteralValue!13557 (value!137979 List!27333)) (EOFValue!4519 (value!137980 List!27333)) (IdentValue!4519 (value!137981 List!27333)) (DelimiterValue!9039 (value!137982 List!27333)) (DedentValue!4519 (value!137983 List!27333)) (NewLineValue!4519 (value!137984 List!27333)) (IntegerValue!13557 (value!137985 (_ BitVec 32)) (text!32080 List!27333)) (IntegerValue!13558 (value!137986 Int) (text!32081 List!27333)) (Times!4519) (Or!4519) (Equal!4519) (Minus!4519) (Broken!22599 (value!137987 List!27333)) (And!4519) (Div!4519) (LessEqual!4519) (Mod!4519) (Concat!11224) (Not!4519) (Plus!4519) (SpaceValue!4519 (value!137988 List!27333)) (IntegerValue!13559 (value!137989 Int) (text!32082 List!27333)) (StringLiteralValue!13558 (text!32083 List!27333)) (FloatLiteralValue!9039 (text!32084 List!27333)) (BytesLiteralValue!4519 (value!137990 List!27333)) (CommentValue!9039 (value!137991 List!27333)) (StringLiteralValue!13559 (value!137992 List!27333)) (ErrorTokenValue!4519 (msg!4580 List!27333)) )
))
(declare-datatypes ((C!13556 0))(
  ( (C!13557 (val!7826 Int)) )
))
(declare-datatypes ((List!27334 0))(
  ( (Nil!27240) (Cons!27240 (h!32641 C!13556) (t!204386 List!27334)) )
))
(declare-datatypes ((IArray!17729 0))(
  ( (IArray!17730 (innerList!8922 List!27334)) )
))
(declare-datatypes ((Conc!8862 0))(
  ( (Node!8862 (left!20653 Conc!8862) (right!20983 Conc!8862) (csize!17954 Int) (cheight!9073 Int)) (Leaf!13026 (xs!11804 IArray!17729) (csize!17955 Int)) (Empty!8862) )
))
(declare-datatypes ((BalanceConc!17452 0))(
  ( (BalanceConc!17453 (c!362956 Conc!8862)) )
))
(declare-datatypes ((String!29699 0))(
  ( (String!29700 (value!137993 String)) )
))
(declare-datatypes ((Regex!6705 0))(
  ( (ElementMatch!6705 (c!362957 C!13556)) (Concat!11225 (regOne!13922 Regex!6705) (regTwo!13922 Regex!6705)) (EmptyExpr!6705) (Star!6705 (reg!7034 Regex!6705)) (EmptyLang!6705) (Union!6705 (regOne!13923 Regex!6705) (regTwo!13923 Regex!6705)) )
))
(declare-datatypes ((TokenValueInjection!8578 0))(
  ( (TokenValueInjection!8579 (toValue!6147 Int) (toChars!6006 Int)) )
))
(declare-datatypes ((Rule!8514 0))(
  ( (Rule!8515 (regex!4357 Regex!6705) (tag!4847 String!29699) (isSeparator!4357 Bool) (transformation!4357 TokenValueInjection!8578)) )
))
(declare-fun r!2363 () Rule!8514)

(declare-datatypes ((Token!8192 0))(
  ( (Token!8193 (value!137994 TokenValue!4519) (rule!6687 Rule!8514) (size!21438 Int) (originalCharacters!5127 List!27334)) )
))
(declare-datatypes ((List!27335 0))(
  ( (Nil!27241) (Cons!27241 (h!32642 Token!8192) (t!204387 List!27335)) )
))
(declare-fun tokens!456 () List!27335)

(declare-fun matchR!2962 (Regex!6705 List!27334) Bool)

(declare-fun list!10656 (BalanceConc!17452) List!27334)

(declare-fun charsOf!2745 (Token!8192) BalanceConc!17452)

(declare-fun head!4980 (List!27335) Token!8192)

(assert (=> b!2288449 (= e!1466263 (not (matchR!2962 (regex!4357 r!2363) (list!10656 (charsOf!2745 (head!4980 tokens!456))))))))

(declare-fun e!1466267 () Bool)

(assert (=> b!2288450 (= e!1466267 (and tp!725545 tp!725549))))

(declare-fun b!2288451 () Bool)

(declare-fun e!1466259 () Bool)

(declare-fun otherP!12 () List!27334)

(declare-fun size!21439 (BalanceConc!17452) Int)

(declare-fun size!21440 (List!27334) Int)

(assert (=> b!2288451 (= e!1466259 (<= (size!21439 (charsOf!2745 (head!4980 tokens!456))) (size!21440 otherP!12)))))

(declare-fun b!2288452 () Bool)

(declare-fun e!1466247 () Bool)

(declare-fun e!1466268 () Bool)

(assert (=> b!2288452 (= e!1466247 e!1466268)))

(declare-fun res!978375 () Bool)

(assert (=> b!2288452 (=> res!978375 e!1466268)))

(declare-fun otherR!12 () Rule!8514)

(declare-datatypes ((List!27336 0))(
  ( (Nil!27242) (Cons!27242 (h!32643 Rule!8514) (t!204388 List!27336)) )
))
(declare-fun rules!1750 () List!27336)

(declare-fun getIndex!370 (List!27336 Rule!8514) Int)

(assert (=> b!2288452 (= res!978375 (<= (getIndex!370 rules!1750 r!2363) (getIndex!370 rules!1750 otherR!12)))))

(declare-datatypes ((LexerInterface!3954 0))(
  ( (LexerInterfaceExt!3951 (__x!18099 Int)) (Lexer!3952) )
))
(declare-fun thiss!16613 () LexerInterface!3954)

(declare-fun ruleValid!1447 (LexerInterface!3954 Rule!8514) Bool)

(assert (=> b!2288452 (ruleValid!1447 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!40134 0))(
  ( (Unit!40135) )
))
(declare-fun lt!849103 () Unit!40134)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!852 (LexerInterface!3954 Rule!8514 List!27336) Unit!40134)

(assert (=> b!2288452 (= lt!849103 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!852 thiss!16613 otherR!12 rules!1750))))

(declare-fun e!1466261 () Bool)

(declare-fun e!1466257 () Bool)

(declare-fun b!2288453 () Bool)

(declare-fun tp!725556 () Bool)

(declare-fun inv!36835 (String!29699) Bool)

(declare-fun inv!36838 (TokenValueInjection!8578) Bool)

(assert (=> b!2288453 (= e!1466261 (and tp!725556 (inv!36835 (tag!4847 r!2363)) (inv!36838 (transformation!4357 r!2363)) e!1466257))))

(declare-fun b!2288454 () Bool)

(declare-fun e!1466253 () Bool)

(declare-fun e!1466258 () Bool)

(assert (=> b!2288454 (= e!1466253 e!1466258)))

(declare-fun res!978384 () Bool)

(assert (=> b!2288454 (=> (not res!978384) (not e!1466258))))

(declare-datatypes ((IArray!17731 0))(
  ( (IArray!17732 (innerList!8923 List!27335)) )
))
(declare-datatypes ((Conc!8863 0))(
  ( (Node!8863 (left!20654 Conc!8863) (right!20984 Conc!8863) (csize!17956 Int) (cheight!9074 Int)) (Leaf!13027 (xs!11805 IArray!17731) (csize!17957 Int)) (Empty!8863) )
))
(declare-datatypes ((BalanceConc!17454 0))(
  ( (BalanceConc!17455 (c!362958 Conc!8863)) )
))
(declare-datatypes ((tuple2!27030 0))(
  ( (tuple2!27031 (_1!16025 BalanceConc!17454) (_2!16025 BalanceConc!17452)) )
))
(declare-fun lt!849101 () tuple2!27030)

(declare-fun suffix!886 () List!27334)

(declare-datatypes ((tuple2!27032 0))(
  ( (tuple2!27033 (_1!16026 List!27335) (_2!16026 List!27334)) )
))
(declare-fun list!10657 (BalanceConc!17454) List!27335)

(assert (=> b!2288454 (= res!978384 (= (tuple2!27033 (list!10657 (_1!16025 lt!849101)) (list!10656 (_2!16025 lt!849101))) (tuple2!27033 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!27334)

(declare-fun lex!1793 (LexerInterface!3954 List!27336 BalanceConc!17452) tuple2!27030)

(declare-fun seqFromList!3061 (List!27334) BalanceConc!17452)

(assert (=> b!2288454 (= lt!849101 (lex!1793 thiss!16613 rules!1750 (seqFromList!3061 input!1722)))))

(declare-fun b!2288455 () Bool)

(declare-fun e!1466254 () Bool)

(declare-fun tp_is_empty!10631 () Bool)

(declare-fun tp!725542 () Bool)

(assert (=> b!2288455 (= e!1466254 (and tp_is_empty!10631 tp!725542))))

(declare-fun e!1466272 () Bool)

(declare-fun b!2288456 () Bool)

(declare-fun e!1466255 () Bool)

(declare-fun tp!725546 () Bool)

(assert (=> b!2288456 (= e!1466255 (and tp!725546 (inv!36835 (tag!4847 (rule!6687 (h!32642 tokens!456)))) (inv!36838 (transformation!4357 (rule!6687 (h!32642 tokens!456)))) e!1466272))))

(declare-fun b!2288457 () Bool)

(declare-fun res!978378 () Bool)

(declare-fun e!1466249 () Bool)

(assert (=> b!2288457 (=> (not res!978378) (not e!1466249))))

(declare-fun isPrefix!2347 (List!27334 List!27334) Bool)

(assert (=> b!2288457 (= res!978378 (isPrefix!2347 otherP!12 input!1722))))

(declare-fun b!2288458 () Bool)

(declare-fun res!978385 () Bool)

(assert (=> b!2288458 (=> (not res!978385) (not e!1466253))))

(declare-fun isEmpty!15501 (List!27336) Bool)

(assert (=> b!2288458 (= res!978385 (not (isEmpty!15501 rules!1750)))))

(assert (=> b!2288459 (= e!1466257 (and tp!725555 tp!725552))))

(declare-fun res!978370 () Bool)

(assert (=> start!224508 (=> (not res!978370) (not e!1466253))))

(get-info :version)

(assert (=> start!224508 (= res!978370 ((_ is Lexer!3952) thiss!16613))))

(assert (=> start!224508 e!1466253))

(assert (=> start!224508 true))

(declare-fun e!1466271 () Bool)

(assert (=> start!224508 e!1466271))

(declare-fun e!1466265 () Bool)

(assert (=> start!224508 e!1466265))

(assert (=> start!224508 e!1466254))

(declare-fun e!1466273 () Bool)

(assert (=> start!224508 e!1466273))

(declare-fun e!1466275 () Bool)

(assert (=> start!224508 e!1466275))

(assert (=> start!224508 e!1466261))

(declare-fun e!1466269 () Bool)

(assert (=> start!224508 e!1466269))

(assert (=> b!2288460 (= e!1466272 (and tp!725550 tp!725557))))

(declare-fun b!2288461 () Bool)

(declare-fun res!978383 () Bool)

(assert (=> b!2288461 (=> (not res!978383) (not e!1466253))))

(declare-fun rulesInvariant!3456 (LexerInterface!3954 List!27336) Bool)

(assert (=> b!2288461 (= res!978383 (rulesInvariant!3456 thiss!16613 rules!1750))))

(declare-fun b!2288462 () Bool)

(declare-fun e!1466250 () Bool)

(declare-fun tp!725551 () Bool)

(assert (=> b!2288462 (= e!1466275 (and e!1466250 tp!725551))))

(declare-fun e!1466248 () Bool)

(assert (=> b!2288463 (= e!1466248 (and tp!725553 tp!725548))))

(declare-fun b!2288464 () Bool)

(declare-fun tp!725544 () Bool)

(assert (=> b!2288464 (= e!1466271 (and tp_is_empty!10631 tp!725544))))

(declare-fun b!2288465 () Bool)

(declare-fun res!978380 () Bool)

(assert (=> b!2288465 (=> res!978380 e!1466268)))

(assert (=> b!2288465 (= res!978380 ((_ is Nil!27241) tokens!456))))

(declare-fun b!2288466 () Bool)

(declare-fun tp!725554 () Bool)

(assert (=> b!2288466 (= e!1466250 (and tp!725554 (inv!36835 (tag!4847 (h!32643 rules!1750))) (inv!36838 (transformation!4357 (h!32643 rules!1750))) e!1466248))))

(declare-fun tp!725543 () Bool)

(declare-fun b!2288467 () Bool)

(assert (=> b!2288467 (= e!1466265 (and tp!725543 (inv!36835 (tag!4847 otherR!12)) (inv!36838 (transformation!4357 otherR!12)) e!1466267))))

(declare-fun b!2288468 () Bool)

(declare-fun res!978372 () Bool)

(assert (=> b!2288468 (=> (not res!978372) (not e!1466249))))

(assert (=> b!2288468 (= res!978372 (not (= r!2363 otherR!12)))))

(declare-fun b!2288469 () Bool)

(declare-fun e!1466274 () Bool)

(declare-fun e!1466252 () Bool)

(assert (=> b!2288469 (= e!1466274 e!1466252)))

(declare-fun res!978373 () Bool)

(assert (=> b!2288469 (=> res!978373 e!1466252)))

(declare-fun lt!849110 () Int)

(declare-fun lt!849107 () Int)

(assert (=> b!2288469 (= res!978373 (= lt!849110 lt!849107))))

(declare-fun lt!849106 () List!27334)

(assert (=> b!2288469 (= lt!849107 (size!21440 lt!849106))))

(assert (=> b!2288469 (= lt!849110 (size!21440 otherP!12))))

(declare-datatypes ((tuple2!27034 0))(
  ( (tuple2!27035 (_1!16027 Token!8192) (_2!16027 List!27334)) )
))
(declare-fun lt!849111 () tuple2!27034)

(declare-fun lt!849112 () List!27334)

(assert (=> b!2288469 (= (_2!16027 lt!849111) lt!849112)))

(declare-fun lt!849104 () Unit!40134)

(declare-fun lemmaSamePrefixThenSameSuffix!1048 (List!27334 List!27334 List!27334 List!27334 List!27334) Unit!40134)

(assert (=> b!2288469 (= lt!849104 (lemmaSamePrefixThenSameSuffix!1048 lt!849106 (_2!16027 lt!849111) lt!849106 lt!849112 input!1722))))

(declare-fun getSuffix!1138 (List!27334 List!27334) List!27334)

(assert (=> b!2288469 (= lt!849112 (getSuffix!1138 input!1722 lt!849106))))

(declare-fun ++!6657 (List!27334 List!27334) List!27334)

(assert (=> b!2288469 (isPrefix!2347 lt!849106 (++!6657 lt!849106 (_2!16027 lt!849111)))))

(declare-fun lt!849108 () Unit!40134)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1552 (List!27334 List!27334) Unit!40134)

(assert (=> b!2288469 (= lt!849108 (lemmaConcatTwoListThenFirstIsPrefix!1552 lt!849106 (_2!16027 lt!849111)))))

(assert (=> b!2288469 (= lt!849106 (list!10656 (charsOf!2745 (h!32642 tokens!456))))))

(declare-fun b!2288470 () Bool)

(declare-fun res!978386 () Bool)

(assert (=> b!2288470 (=> (not res!978386) (not e!1466253))))

(declare-fun contains!4733 (List!27336 Rule!8514) Bool)

(assert (=> b!2288470 (= res!978386 (contains!4733 rules!1750 otherR!12))))

(declare-fun e!1466270 () Bool)

(declare-fun tp!725547 () Bool)

(declare-fun b!2288471 () Bool)

(declare-fun inv!21 (TokenValue!4519) Bool)

(assert (=> b!2288471 (= e!1466270 (and (inv!21 (value!137994 (h!32642 tokens!456))) e!1466255 tp!725547))))

(declare-fun b!2288472 () Bool)

(declare-fun tp!725540 () Bool)

(assert (=> b!2288472 (= e!1466273 (and tp_is_empty!10631 tp!725540))))

(declare-fun b!2288473 () Bool)

(assert (=> b!2288473 (= e!1466249 (not e!1466247))))

(declare-fun res!978377 () Bool)

(assert (=> b!2288473 (=> res!978377 e!1466247)))

(assert (=> b!2288473 (= res!978377 e!1466263)))

(declare-fun res!978379 () Bool)

(assert (=> b!2288473 (=> (not res!978379) (not e!1466263))))

(declare-fun lt!849105 () Bool)

(assert (=> b!2288473 (= res!978379 (not lt!849105))))

(assert (=> b!2288473 (ruleValid!1447 thiss!16613 r!2363)))

(declare-fun lt!849109 () Unit!40134)

(assert (=> b!2288473 (= lt!849109 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!852 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2288474 () Bool)

(assert (=> b!2288474 (= e!1466268 e!1466274)))

(declare-fun res!978382 () Bool)

(assert (=> b!2288474 (=> res!978382 e!1466274)))

(assert (=> b!2288474 (= res!978382 (not (= (h!32642 tokens!456) (_1!16027 lt!849111))))))

(declare-datatypes ((Option!5347 0))(
  ( (None!5346) (Some!5346 (v!30422 tuple2!27034)) )
))
(declare-fun get!8215 (Option!5347) tuple2!27034)

(declare-fun maxPrefix!2218 (LexerInterface!3954 List!27336 List!27334) Option!5347)

(assert (=> b!2288474 (= lt!849111 (get!8215 (maxPrefix!2218 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2288475 () Bool)

(declare-fun e!1466266 () Bool)

(assert (=> b!2288475 (= e!1466266 (= (rule!6687 (head!4980 tokens!456)) r!2363))))

(declare-fun b!2288476 () Bool)

(assert (=> b!2288476 (= e!1466258 e!1466249)))

(declare-fun res!978371 () Bool)

(assert (=> b!2288476 (=> (not res!978371) (not e!1466249))))

(assert (=> b!2288476 (= res!978371 e!1466259)))

(declare-fun res!978376 () Bool)

(assert (=> b!2288476 (=> res!978376 e!1466259)))

(assert (=> b!2288476 (= res!978376 lt!849105)))

(declare-fun isEmpty!15502 (List!27335) Bool)

(assert (=> b!2288476 (= lt!849105 (isEmpty!15502 tokens!456))))

(declare-fun tp!725541 () Bool)

(declare-fun b!2288477 () Bool)

(declare-fun inv!36839 (Token!8192) Bool)

(assert (=> b!2288477 (= e!1466269 (and (inv!36839 (h!32642 tokens!456)) e!1466270 tp!725541))))

(declare-fun b!2288478 () Bool)

(declare-fun res!978387 () Bool)

(assert (=> b!2288478 (=> (not res!978387) (not e!1466249))))

(assert (=> b!2288478 (= res!978387 e!1466266)))

(declare-fun res!978374 () Bool)

(assert (=> b!2288478 (=> res!978374 e!1466266)))

(assert (=> b!2288478 (= res!978374 lt!849105)))

(declare-fun b!2288479 () Bool)

(assert (=> b!2288479 (= e!1466252 (isPrefix!2347 lt!849106 input!1722))))

(declare-fun maxPrefixOneRule!1388 (LexerInterface!3954 Rule!8514 List!27334) Option!5347)

(declare-fun apply!6629 (TokenValueInjection!8578 BalanceConc!17452) TokenValue!4519)

(assert (=> b!2288479 (= (maxPrefixOneRule!1388 thiss!16613 r!2363 input!1722) (Some!5346 (tuple2!27035 (Token!8193 (apply!6629 (transformation!4357 r!2363) (seqFromList!3061 lt!849106)) r!2363 lt!849107 lt!849106) (_2!16027 lt!849111))))))

(declare-fun lt!849102 () Unit!40134)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!581 (LexerInterface!3954 List!27336 List!27334 List!27334 List!27334 Rule!8514) Unit!40134)

(assert (=> b!2288479 (= lt!849102 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!581 thiss!16613 rules!1750 lt!849106 input!1722 (_2!16027 lt!849111) r!2363))))

(declare-fun b!2288480 () Bool)

(declare-fun res!978381 () Bool)

(assert (=> b!2288480 (=> (not res!978381) (not e!1466253))))

(assert (=> b!2288480 (= res!978381 (contains!4733 rules!1750 r!2363))))

(assert (= (and start!224508 res!978370) b!2288458))

(assert (= (and b!2288458 res!978385) b!2288461))

(assert (= (and b!2288461 res!978383) b!2288480))

(assert (= (and b!2288480 res!978381) b!2288470))

(assert (= (and b!2288470 res!978386) b!2288454))

(assert (= (and b!2288454 res!978384) b!2288476))

(assert (= (and b!2288476 (not res!978376)) b!2288451))

(assert (= (and b!2288476 res!978371) b!2288478))

(assert (= (and b!2288478 (not res!978374)) b!2288475))

(assert (= (and b!2288478 res!978387) b!2288457))

(assert (= (and b!2288457 res!978378) b!2288468))

(assert (= (and b!2288468 res!978372) b!2288473))

(assert (= (and b!2288473 res!978379) b!2288449))

(assert (= (and b!2288473 (not res!978377)) b!2288452))

(assert (= (and b!2288452 (not res!978375)) b!2288465))

(assert (= (and b!2288465 (not res!978380)) b!2288474))

(assert (= (and b!2288474 (not res!978382)) b!2288469))

(assert (= (and b!2288469 (not res!978373)) b!2288479))

(assert (= (and start!224508 ((_ is Cons!27240) input!1722)) b!2288464))

(assert (= b!2288467 b!2288450))

(assert (= start!224508 b!2288467))

(assert (= (and start!224508 ((_ is Cons!27240) suffix!886)) b!2288455))

(assert (= (and start!224508 ((_ is Cons!27240) otherP!12)) b!2288472))

(assert (= b!2288466 b!2288463))

(assert (= b!2288462 b!2288466))

(assert (= (and start!224508 ((_ is Cons!27242) rules!1750)) b!2288462))

(assert (= b!2288453 b!2288459))

(assert (= start!224508 b!2288453))

(assert (= b!2288456 b!2288460))

(assert (= b!2288471 b!2288456))

(assert (= b!2288477 b!2288471))

(assert (= (and start!224508 ((_ is Cons!27241) tokens!456)) b!2288477))

(declare-fun m!2716189 () Bool)

(assert (=> b!2288474 m!2716189))

(assert (=> b!2288474 m!2716189))

(declare-fun m!2716191 () Bool)

(assert (=> b!2288474 m!2716191))

(declare-fun m!2716193 () Bool)

(assert (=> b!2288473 m!2716193))

(declare-fun m!2716195 () Bool)

(assert (=> b!2288473 m!2716195))

(declare-fun m!2716197 () Bool)

(assert (=> b!2288457 m!2716197))

(declare-fun m!2716199 () Bool)

(assert (=> b!2288453 m!2716199))

(declare-fun m!2716201 () Bool)

(assert (=> b!2288453 m!2716201))

(declare-fun m!2716203 () Bool)

(assert (=> b!2288469 m!2716203))

(declare-fun m!2716205 () Bool)

(assert (=> b!2288469 m!2716205))

(declare-fun m!2716207 () Bool)

(assert (=> b!2288469 m!2716207))

(declare-fun m!2716209 () Bool)

(assert (=> b!2288469 m!2716209))

(declare-fun m!2716211 () Bool)

(assert (=> b!2288469 m!2716211))

(declare-fun m!2716213 () Bool)

(assert (=> b!2288469 m!2716213))

(declare-fun m!2716215 () Bool)

(assert (=> b!2288469 m!2716215))

(declare-fun m!2716217 () Bool)

(assert (=> b!2288469 m!2716217))

(assert (=> b!2288469 m!2716209))

(assert (=> b!2288469 m!2716213))

(declare-fun m!2716219 () Bool)

(assert (=> b!2288469 m!2716219))

(declare-fun m!2716221 () Bool)

(assert (=> b!2288452 m!2716221))

(declare-fun m!2716223 () Bool)

(assert (=> b!2288452 m!2716223))

(declare-fun m!2716225 () Bool)

(assert (=> b!2288452 m!2716225))

(declare-fun m!2716227 () Bool)

(assert (=> b!2288452 m!2716227))

(declare-fun m!2716229 () Bool)

(assert (=> b!2288456 m!2716229))

(declare-fun m!2716231 () Bool)

(assert (=> b!2288456 m!2716231))

(declare-fun m!2716233 () Bool)

(assert (=> b!2288479 m!2716233))

(declare-fun m!2716235 () Bool)

(assert (=> b!2288479 m!2716235))

(declare-fun m!2716237 () Bool)

(assert (=> b!2288479 m!2716237))

(declare-fun m!2716239 () Bool)

(assert (=> b!2288479 m!2716239))

(declare-fun m!2716241 () Bool)

(assert (=> b!2288479 m!2716241))

(assert (=> b!2288479 m!2716233))

(declare-fun m!2716243 () Bool)

(assert (=> b!2288454 m!2716243))

(declare-fun m!2716245 () Bool)

(assert (=> b!2288454 m!2716245))

(declare-fun m!2716247 () Bool)

(assert (=> b!2288454 m!2716247))

(assert (=> b!2288454 m!2716247))

(declare-fun m!2716249 () Bool)

(assert (=> b!2288454 m!2716249))

(declare-fun m!2716251 () Bool)

(assert (=> b!2288466 m!2716251))

(declare-fun m!2716253 () Bool)

(assert (=> b!2288466 m!2716253))

(declare-fun m!2716255 () Bool)

(assert (=> b!2288451 m!2716255))

(assert (=> b!2288451 m!2716255))

(declare-fun m!2716257 () Bool)

(assert (=> b!2288451 m!2716257))

(assert (=> b!2288451 m!2716257))

(declare-fun m!2716259 () Bool)

(assert (=> b!2288451 m!2716259))

(assert (=> b!2288451 m!2716205))

(declare-fun m!2716261 () Bool)

(assert (=> b!2288461 m!2716261))

(declare-fun m!2716263 () Bool)

(assert (=> b!2288476 m!2716263))

(assert (=> b!2288449 m!2716255))

(assert (=> b!2288449 m!2716255))

(assert (=> b!2288449 m!2716257))

(assert (=> b!2288449 m!2716257))

(declare-fun m!2716265 () Bool)

(assert (=> b!2288449 m!2716265))

(assert (=> b!2288449 m!2716265))

(declare-fun m!2716267 () Bool)

(assert (=> b!2288449 m!2716267))

(assert (=> b!2288475 m!2716255))

(declare-fun m!2716269 () Bool)

(assert (=> b!2288458 m!2716269))

(declare-fun m!2716271 () Bool)

(assert (=> b!2288467 m!2716271))

(declare-fun m!2716273 () Bool)

(assert (=> b!2288467 m!2716273))

(declare-fun m!2716275 () Bool)

(assert (=> b!2288480 m!2716275))

(declare-fun m!2716277 () Bool)

(assert (=> b!2288477 m!2716277))

(declare-fun m!2716279 () Bool)

(assert (=> b!2288470 m!2716279))

(declare-fun m!2716281 () Bool)

(assert (=> b!2288471 m!2716281))

(check-sat (not b!2288455) (not b_next!69387) (not b!2288474) (not b!2288479) (not b!2288457) (not b_next!69383) (not b!2288471) (not b!2288464) b_and!181449 b_and!181441 (not b!2288473) (not b!2288469) (not b!2288449) (not b!2288453) (not b!2288466) (not b!2288452) (not b!2288480) (not b_next!69373) (not b!2288467) (not b_next!69385) b_and!181447 b_and!181445 (not b!2288470) (not b_next!69379) b_and!181455 (not b!2288461) (not b_next!69377) (not b!2288454) (not b!2288475) b_and!181443 (not b!2288462) (not b_next!69381) (not b!2288456) tp_is_empty!10631 (not b!2288458) (not b_next!69375) b_and!181453 (not b!2288476) (not b!2288472) b_and!181451 (not b!2288451) (not b!2288477))
(check-sat (not b_next!69373) (not b_next!69387) (not b_next!69377) b_and!181443 (not b_next!69383) (not b_next!69381) b_and!181449 b_and!181441 (not b_next!69375) b_and!181453 b_and!181451 (not b_next!69385) b_and!181447 b_and!181445 (not b_next!69379) b_and!181455)
(get-model)

(declare-fun d!677068 () Bool)

(assert (=> d!677068 (= (head!4980 tokens!456) (h!32642 tokens!456))))

(assert (=> b!2288475 d!677068))

(declare-fun d!677070 () Bool)

(assert (=> d!677070 (= (get!8215 (maxPrefix!2218 thiss!16613 rules!1750 input!1722)) (v!30422 (maxPrefix!2218 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2288474 d!677070))

(declare-fun b!2288554 () Bool)

(declare-fun e!1466314 () Option!5347)

(declare-fun lt!849154 () Option!5347)

(declare-fun lt!849156 () Option!5347)

(assert (=> b!2288554 (= e!1466314 (ite (and ((_ is None!5346) lt!849154) ((_ is None!5346) lt!849156)) None!5346 (ite ((_ is None!5346) lt!849156) lt!849154 (ite ((_ is None!5346) lt!849154) lt!849156 (ite (>= (size!21438 (_1!16027 (v!30422 lt!849154))) (size!21438 (_1!16027 (v!30422 lt!849156)))) lt!849154 lt!849156)))))))

(declare-fun call!136614 () Option!5347)

(assert (=> b!2288554 (= lt!849154 call!136614)))

(assert (=> b!2288554 (= lt!849156 (maxPrefix!2218 thiss!16613 (t!204388 rules!1750) input!1722))))

(declare-fun b!2288556 () Bool)

(declare-fun e!1466313 () Bool)

(declare-fun e!1466312 () Bool)

(assert (=> b!2288556 (= e!1466313 e!1466312)))

(declare-fun res!978452 () Bool)

(assert (=> b!2288556 (=> (not res!978452) (not e!1466312))))

(declare-fun lt!849155 () Option!5347)

(declare-fun isDefined!4228 (Option!5347) Bool)

(assert (=> b!2288556 (= res!978452 (isDefined!4228 lt!849155))))

(declare-fun b!2288557 () Bool)

(declare-fun res!978451 () Bool)

(assert (=> b!2288557 (=> (not res!978451) (not e!1466312))))

(assert (=> b!2288557 (= res!978451 (= (++!6657 (list!10656 (charsOf!2745 (_1!16027 (get!8215 lt!849155)))) (_2!16027 (get!8215 lt!849155))) input!1722))))

(declare-fun b!2288558 () Bool)

(declare-fun res!978450 () Bool)

(assert (=> b!2288558 (=> (not res!978450) (not e!1466312))))

(assert (=> b!2288558 (= res!978450 (matchR!2962 (regex!4357 (rule!6687 (_1!16027 (get!8215 lt!849155)))) (list!10656 (charsOf!2745 (_1!16027 (get!8215 lt!849155))))))))

(declare-fun b!2288559 () Bool)

(assert (=> b!2288559 (= e!1466314 call!136614)))

(declare-fun b!2288560 () Bool)

(declare-fun res!978455 () Bool)

(assert (=> b!2288560 (=> (not res!978455) (not e!1466312))))

(assert (=> b!2288560 (= res!978455 (= (value!137994 (_1!16027 (get!8215 lt!849155))) (apply!6629 (transformation!4357 (rule!6687 (_1!16027 (get!8215 lt!849155)))) (seqFromList!3061 (originalCharacters!5127 (_1!16027 (get!8215 lt!849155)))))))))

(declare-fun b!2288561 () Bool)

(declare-fun res!978449 () Bool)

(assert (=> b!2288561 (=> (not res!978449) (not e!1466312))))

(assert (=> b!2288561 (= res!978449 (= (list!10656 (charsOf!2745 (_1!16027 (get!8215 lt!849155)))) (originalCharacters!5127 (_1!16027 (get!8215 lt!849155)))))))

(declare-fun b!2288562 () Bool)

(assert (=> b!2288562 (= e!1466312 (contains!4733 rules!1750 (rule!6687 (_1!16027 (get!8215 lt!849155)))))))

(declare-fun bm!136609 () Bool)

(assert (=> bm!136609 (= call!136614 (maxPrefixOneRule!1388 thiss!16613 (h!32643 rules!1750) input!1722))))

(declare-fun d!677072 () Bool)

(assert (=> d!677072 e!1466313))

(declare-fun res!978454 () Bool)

(assert (=> d!677072 (=> res!978454 e!1466313)))

(declare-fun isEmpty!15505 (Option!5347) Bool)

(assert (=> d!677072 (= res!978454 (isEmpty!15505 lt!849155))))

(assert (=> d!677072 (= lt!849155 e!1466314)))

(declare-fun c!362967 () Bool)

(assert (=> d!677072 (= c!362967 (and ((_ is Cons!27242) rules!1750) ((_ is Nil!27242) (t!204388 rules!1750))))))

(declare-fun lt!849153 () Unit!40134)

(declare-fun lt!849157 () Unit!40134)

(assert (=> d!677072 (= lt!849153 lt!849157)))

(assert (=> d!677072 (isPrefix!2347 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1491 (List!27334 List!27334) Unit!40134)

(assert (=> d!677072 (= lt!849157 (lemmaIsPrefixRefl!1491 input!1722 input!1722))))

(declare-fun rulesValidInductive!1533 (LexerInterface!3954 List!27336) Bool)

(assert (=> d!677072 (rulesValidInductive!1533 thiss!16613 rules!1750)))

(assert (=> d!677072 (= (maxPrefix!2218 thiss!16613 rules!1750 input!1722) lt!849155)))

(declare-fun b!2288555 () Bool)

(declare-fun res!978453 () Bool)

(assert (=> b!2288555 (=> (not res!978453) (not e!1466312))))

(assert (=> b!2288555 (= res!978453 (< (size!21440 (_2!16027 (get!8215 lt!849155))) (size!21440 input!1722)))))

(assert (= (and d!677072 c!362967) b!2288559))

(assert (= (and d!677072 (not c!362967)) b!2288554))

(assert (= (or b!2288559 b!2288554) bm!136609))

(assert (= (and d!677072 (not res!978454)) b!2288556))

(assert (= (and b!2288556 res!978452) b!2288561))

(assert (= (and b!2288561 res!978449) b!2288555))

(assert (= (and b!2288555 res!978453) b!2288557))

(assert (= (and b!2288557 res!978451) b!2288560))

(assert (= (and b!2288560 res!978455) b!2288558))

(assert (= (and b!2288558 res!978450) b!2288562))

(declare-fun m!2716353 () Bool)

(assert (=> b!2288558 m!2716353))

(declare-fun m!2716355 () Bool)

(assert (=> b!2288558 m!2716355))

(assert (=> b!2288558 m!2716355))

(declare-fun m!2716357 () Bool)

(assert (=> b!2288558 m!2716357))

(assert (=> b!2288558 m!2716357))

(declare-fun m!2716359 () Bool)

(assert (=> b!2288558 m!2716359))

(declare-fun m!2716361 () Bool)

(assert (=> d!677072 m!2716361))

(declare-fun m!2716363 () Bool)

(assert (=> d!677072 m!2716363))

(declare-fun m!2716365 () Bool)

(assert (=> d!677072 m!2716365))

(declare-fun m!2716367 () Bool)

(assert (=> d!677072 m!2716367))

(assert (=> b!2288561 m!2716353))

(assert (=> b!2288561 m!2716355))

(assert (=> b!2288561 m!2716355))

(assert (=> b!2288561 m!2716357))

(declare-fun m!2716369 () Bool)

(assert (=> bm!136609 m!2716369))

(assert (=> b!2288557 m!2716353))

(assert (=> b!2288557 m!2716355))

(assert (=> b!2288557 m!2716355))

(assert (=> b!2288557 m!2716357))

(assert (=> b!2288557 m!2716357))

(declare-fun m!2716371 () Bool)

(assert (=> b!2288557 m!2716371))

(declare-fun m!2716373 () Bool)

(assert (=> b!2288554 m!2716373))

(assert (=> b!2288555 m!2716353))

(declare-fun m!2716375 () Bool)

(assert (=> b!2288555 m!2716375))

(declare-fun m!2716377 () Bool)

(assert (=> b!2288555 m!2716377))

(declare-fun m!2716379 () Bool)

(assert (=> b!2288556 m!2716379))

(assert (=> b!2288560 m!2716353))

(declare-fun m!2716381 () Bool)

(assert (=> b!2288560 m!2716381))

(assert (=> b!2288560 m!2716381))

(declare-fun m!2716383 () Bool)

(assert (=> b!2288560 m!2716383))

(assert (=> b!2288562 m!2716353))

(declare-fun m!2716385 () Bool)

(assert (=> b!2288562 m!2716385))

(assert (=> b!2288474 d!677072))

(declare-fun d!677100 () Bool)

(assert (=> d!677100 (= (inv!36835 (tag!4847 r!2363)) (= (mod (str.len (value!137993 (tag!4847 r!2363))) 2) 0))))

(assert (=> b!2288453 d!677100))

(declare-fun d!677102 () Bool)

(declare-fun res!978458 () Bool)

(declare-fun e!1466317 () Bool)

(assert (=> d!677102 (=> (not res!978458) (not e!1466317))))

(declare-fun semiInverseModEq!1764 (Int Int) Bool)

(assert (=> d!677102 (= res!978458 (semiInverseModEq!1764 (toChars!6006 (transformation!4357 r!2363)) (toValue!6147 (transformation!4357 r!2363))))))

(assert (=> d!677102 (= (inv!36838 (transformation!4357 r!2363)) e!1466317)))

(declare-fun b!2288565 () Bool)

(declare-fun equivClasses!1683 (Int Int) Bool)

(assert (=> b!2288565 (= e!1466317 (equivClasses!1683 (toChars!6006 (transformation!4357 r!2363)) (toValue!6147 (transformation!4357 r!2363))))))

(assert (= (and d!677102 res!978458) b!2288565))

(declare-fun m!2716387 () Bool)

(assert (=> d!677102 m!2716387))

(declare-fun m!2716389 () Bool)

(assert (=> b!2288565 m!2716389))

(assert (=> b!2288453 d!677102))

(declare-fun d!677104 () Bool)

(declare-fun lt!849160 () Int)

(assert (=> d!677104 (>= lt!849160 0)))

(declare-fun e!1466324 () Int)

(assert (=> d!677104 (= lt!849160 e!1466324)))

(declare-fun c!362973 () Bool)

(assert (=> d!677104 (= c!362973 (and ((_ is Cons!27242) rules!1750) (= (h!32643 rules!1750) r!2363)))))

(assert (=> d!677104 (contains!4733 rules!1750 r!2363)))

(assert (=> d!677104 (= (getIndex!370 rules!1750 r!2363) lt!849160)))

(declare-fun b!2288577 () Bool)

(declare-fun e!1466323 () Int)

(assert (=> b!2288577 (= e!1466323 (- 1))))

(declare-fun b!2288574 () Bool)

(assert (=> b!2288574 (= e!1466324 0)))

(declare-fun b!2288576 () Bool)

(assert (=> b!2288576 (= e!1466323 (+ 1 (getIndex!370 (t!204388 rules!1750) r!2363)))))

(declare-fun b!2288575 () Bool)

(assert (=> b!2288575 (= e!1466324 e!1466323)))

(declare-fun c!362972 () Bool)

(assert (=> b!2288575 (= c!362972 (and ((_ is Cons!27242) rules!1750) (not (= (h!32643 rules!1750) r!2363))))))

(assert (= (and d!677104 c!362973) b!2288574))

(assert (= (and d!677104 (not c!362973)) b!2288575))

(assert (= (and b!2288575 c!362972) b!2288576))

(assert (= (and b!2288575 (not c!362972)) b!2288577))

(assert (=> d!677104 m!2716275))

(declare-fun m!2716391 () Bool)

(assert (=> b!2288576 m!2716391))

(assert (=> b!2288452 d!677104))

(declare-fun d!677106 () Bool)

(declare-fun lt!849161 () Int)

(assert (=> d!677106 (>= lt!849161 0)))

(declare-fun e!1466326 () Int)

(assert (=> d!677106 (= lt!849161 e!1466326)))

(declare-fun c!362975 () Bool)

(assert (=> d!677106 (= c!362975 (and ((_ is Cons!27242) rules!1750) (= (h!32643 rules!1750) otherR!12)))))

(assert (=> d!677106 (contains!4733 rules!1750 otherR!12)))

(assert (=> d!677106 (= (getIndex!370 rules!1750 otherR!12) lt!849161)))

(declare-fun b!2288581 () Bool)

(declare-fun e!1466325 () Int)

(assert (=> b!2288581 (= e!1466325 (- 1))))

(declare-fun b!2288578 () Bool)

(assert (=> b!2288578 (= e!1466326 0)))

(declare-fun b!2288580 () Bool)

(assert (=> b!2288580 (= e!1466325 (+ 1 (getIndex!370 (t!204388 rules!1750) otherR!12)))))

(declare-fun b!2288579 () Bool)

(assert (=> b!2288579 (= e!1466326 e!1466325)))

(declare-fun c!362974 () Bool)

(assert (=> b!2288579 (= c!362974 (and ((_ is Cons!27242) rules!1750) (not (= (h!32643 rules!1750) otherR!12))))))

(assert (= (and d!677106 c!362975) b!2288578))

(assert (= (and d!677106 (not c!362975)) b!2288579))

(assert (= (and b!2288579 c!362974) b!2288580))

(assert (= (and b!2288579 (not c!362974)) b!2288581))

(assert (=> d!677106 m!2716279))

(declare-fun m!2716393 () Bool)

(assert (=> b!2288580 m!2716393))

(assert (=> b!2288452 d!677106))

(declare-fun d!677108 () Bool)

(declare-fun res!978463 () Bool)

(declare-fun e!1466329 () Bool)

(assert (=> d!677108 (=> (not res!978463) (not e!1466329))))

(declare-fun validRegex!2524 (Regex!6705) Bool)

(assert (=> d!677108 (= res!978463 (validRegex!2524 (regex!4357 otherR!12)))))

(assert (=> d!677108 (= (ruleValid!1447 thiss!16613 otherR!12) e!1466329)))

(declare-fun b!2288586 () Bool)

(declare-fun res!978464 () Bool)

(assert (=> b!2288586 (=> (not res!978464) (not e!1466329))))

(declare-fun nullable!1862 (Regex!6705) Bool)

(assert (=> b!2288586 (= res!978464 (not (nullable!1862 (regex!4357 otherR!12))))))

(declare-fun b!2288587 () Bool)

(assert (=> b!2288587 (= e!1466329 (not (= (tag!4847 otherR!12) (String!29700 ""))))))

(assert (= (and d!677108 res!978463) b!2288586))

(assert (= (and b!2288586 res!978464) b!2288587))

(declare-fun m!2716395 () Bool)

(assert (=> d!677108 m!2716395))

(declare-fun m!2716397 () Bool)

(assert (=> b!2288586 m!2716397))

(assert (=> b!2288452 d!677108))

(declare-fun d!677110 () Bool)

(assert (=> d!677110 (ruleValid!1447 thiss!16613 otherR!12)))

(declare-fun lt!849174 () Unit!40134)

(declare-fun choose!13356 (LexerInterface!3954 Rule!8514 List!27336) Unit!40134)

(assert (=> d!677110 (= lt!849174 (choose!13356 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!677110 (contains!4733 rules!1750 otherR!12)))

(assert (=> d!677110 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!852 thiss!16613 otherR!12 rules!1750) lt!849174)))

(declare-fun bs!456961 () Bool)

(assert (= bs!456961 d!677110))

(assert (=> bs!456961 m!2716225))

(declare-fun m!2716399 () Bool)

(assert (=> bs!456961 m!2716399))

(assert (=> bs!456961 m!2716279))

(assert (=> b!2288452 d!677110))

(declare-fun d!677112 () Bool)

(declare-fun res!978475 () Bool)

(declare-fun e!1466338 () Bool)

(assert (=> d!677112 (=> (not res!978475) (not e!1466338))))

(assert (=> d!677112 (= res!978475 (validRegex!2524 (regex!4357 r!2363)))))

(assert (=> d!677112 (= (ruleValid!1447 thiss!16613 r!2363) e!1466338)))

(declare-fun b!2288600 () Bool)

(declare-fun res!978476 () Bool)

(assert (=> b!2288600 (=> (not res!978476) (not e!1466338))))

(assert (=> b!2288600 (= res!978476 (not (nullable!1862 (regex!4357 r!2363))))))

(declare-fun b!2288603 () Bool)

(assert (=> b!2288603 (= e!1466338 (not (= (tag!4847 r!2363) (String!29700 ""))))))

(assert (= (and d!677112 res!978475) b!2288600))

(assert (= (and b!2288600 res!978476) b!2288603))

(declare-fun m!2716401 () Bool)

(assert (=> d!677112 m!2716401))

(declare-fun m!2716403 () Bool)

(assert (=> b!2288600 m!2716403))

(assert (=> b!2288473 d!677112))

(declare-fun d!677114 () Bool)

(assert (=> d!677114 (ruleValid!1447 thiss!16613 r!2363)))

(declare-fun lt!849175 () Unit!40134)

(assert (=> d!677114 (= lt!849175 (choose!13356 thiss!16613 r!2363 rules!1750))))

(assert (=> d!677114 (contains!4733 rules!1750 r!2363)))

(assert (=> d!677114 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!852 thiss!16613 r!2363 rules!1750) lt!849175)))

(declare-fun bs!456962 () Bool)

(assert (= bs!456962 d!677114))

(assert (=> bs!456962 m!2716193))

(declare-fun m!2716405 () Bool)

(assert (=> bs!456962 m!2716405))

(assert (=> bs!456962 m!2716275))

(assert (=> b!2288473 d!677114))

(declare-fun d!677116 () Bool)

(declare-fun lt!849178 () Int)

(assert (=> d!677116 (= lt!849178 (size!21440 (list!10656 (charsOf!2745 (head!4980 tokens!456)))))))

(declare-fun size!21442 (Conc!8862) Int)

(assert (=> d!677116 (= lt!849178 (size!21442 (c!362956 (charsOf!2745 (head!4980 tokens!456)))))))

(assert (=> d!677116 (= (size!21439 (charsOf!2745 (head!4980 tokens!456))) lt!849178)))

(declare-fun bs!456963 () Bool)

(assert (= bs!456963 d!677116))

(assert (=> bs!456963 m!2716257))

(assert (=> bs!456963 m!2716265))

(assert (=> bs!456963 m!2716265))

(declare-fun m!2716407 () Bool)

(assert (=> bs!456963 m!2716407))

(declare-fun m!2716409 () Bool)

(assert (=> bs!456963 m!2716409))

(assert (=> b!2288451 d!677116))

(declare-fun d!677118 () Bool)

(declare-fun lt!849186 () BalanceConc!17452)

(assert (=> d!677118 (= (list!10656 lt!849186) (originalCharacters!5127 (head!4980 tokens!456)))))

(declare-fun dynLambda!11826 (Int TokenValue!4519) BalanceConc!17452)

(assert (=> d!677118 (= lt!849186 (dynLambda!11826 (toChars!6006 (transformation!4357 (rule!6687 (head!4980 tokens!456)))) (value!137994 (head!4980 tokens!456))))))

(assert (=> d!677118 (= (charsOf!2745 (head!4980 tokens!456)) lt!849186)))

(declare-fun b_lambda!72893 () Bool)

(assert (=> (not b_lambda!72893) (not d!677118)))

(declare-fun t!204406 () Bool)

(declare-fun tb!136319 () Bool)

(assert (=> (and b!2288460 (= (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))) (toChars!6006 (transformation!4357 (rule!6687 (head!4980 tokens!456))))) t!204406) tb!136319))

(declare-fun b!2288621 () Bool)

(declare-fun e!1466345 () Bool)

(declare-fun tp!725563 () Bool)

(declare-fun inv!36842 (Conc!8862) Bool)

(assert (=> b!2288621 (= e!1466345 (and (inv!36842 (c!362956 (dynLambda!11826 (toChars!6006 (transformation!4357 (rule!6687 (head!4980 tokens!456)))) (value!137994 (head!4980 tokens!456))))) tp!725563))))

(declare-fun result!166210 () Bool)

(declare-fun inv!36843 (BalanceConc!17452) Bool)

(assert (=> tb!136319 (= result!166210 (and (inv!36843 (dynLambda!11826 (toChars!6006 (transformation!4357 (rule!6687 (head!4980 tokens!456)))) (value!137994 (head!4980 tokens!456)))) e!1466345))))

(assert (= tb!136319 b!2288621))

(declare-fun m!2716453 () Bool)

(assert (=> b!2288621 m!2716453))

(declare-fun m!2716455 () Bool)

(assert (=> tb!136319 m!2716455))

(assert (=> d!677118 t!204406))

(declare-fun b_and!181473 () Bool)

(assert (= b_and!181443 (and (=> t!204406 result!166210) b_and!181473)))

(declare-fun tb!136321 () Bool)

(declare-fun t!204408 () Bool)

(assert (=> (and b!2288450 (= (toChars!6006 (transformation!4357 otherR!12)) (toChars!6006 (transformation!4357 (rule!6687 (head!4980 tokens!456))))) t!204408) tb!136321))

(declare-fun result!166214 () Bool)

(assert (= result!166214 result!166210))

(assert (=> d!677118 t!204408))

(declare-fun b_and!181475 () Bool)

(assert (= b_and!181447 (and (=> t!204408 result!166214) b_and!181475)))

(declare-fun t!204410 () Bool)

(declare-fun tb!136323 () Bool)

(assert (=> (and b!2288463 (= (toChars!6006 (transformation!4357 (h!32643 rules!1750))) (toChars!6006 (transformation!4357 (rule!6687 (head!4980 tokens!456))))) t!204410) tb!136323))

(declare-fun result!166216 () Bool)

(assert (= result!166216 result!166210))

(assert (=> d!677118 t!204410))

(declare-fun b_and!181477 () Bool)

(assert (= b_and!181451 (and (=> t!204410 result!166216) b_and!181477)))

(declare-fun t!204412 () Bool)

(declare-fun tb!136325 () Bool)

(assert (=> (and b!2288459 (= (toChars!6006 (transformation!4357 r!2363)) (toChars!6006 (transformation!4357 (rule!6687 (head!4980 tokens!456))))) t!204412) tb!136325))

(declare-fun result!166218 () Bool)

(assert (= result!166218 result!166210))

(assert (=> d!677118 t!204412))

(declare-fun b_and!181479 () Bool)

(assert (= b_and!181455 (and (=> t!204412 result!166218) b_and!181479)))

(declare-fun m!2716463 () Bool)

(assert (=> d!677118 m!2716463))

(declare-fun m!2716465 () Bool)

(assert (=> d!677118 m!2716465))

(assert (=> b!2288451 d!677118))

(assert (=> b!2288451 d!677068))

(declare-fun d!677124 () Bool)

(declare-fun lt!849192 () Int)

(assert (=> d!677124 (>= lt!849192 0)))

(declare-fun e!1466356 () Int)

(assert (=> d!677124 (= lt!849192 e!1466356)))

(declare-fun c!362985 () Bool)

(assert (=> d!677124 (= c!362985 ((_ is Nil!27240) otherP!12))))

(assert (=> d!677124 (= (size!21440 otherP!12) lt!849192)))

(declare-fun b!2288638 () Bool)

(assert (=> b!2288638 (= e!1466356 0)))

(declare-fun b!2288639 () Bool)

(assert (=> b!2288639 (= e!1466356 (+ 1 (size!21440 (t!204386 otherP!12))))))

(assert (= (and d!677124 c!362985) b!2288638))

(assert (= (and d!677124 (not c!362985)) b!2288639))

(declare-fun m!2716467 () Bool)

(assert (=> b!2288639 m!2716467))

(assert (=> b!2288451 d!677124))

(declare-fun d!677126 () Bool)

(declare-fun res!978500 () Bool)

(declare-fun e!1466366 () Bool)

(assert (=> d!677126 (=> (not res!978500) (not e!1466366))))

(declare-fun rulesValid!1607 (LexerInterface!3954 List!27336) Bool)

(assert (=> d!677126 (= res!978500 (rulesValid!1607 thiss!16613 rules!1750))))

(assert (=> d!677126 (= (rulesInvariant!3456 thiss!16613 rules!1750) e!1466366)))

(declare-fun b!2288656 () Bool)

(declare-datatypes ((List!27337 0))(
  ( (Nil!27243) (Cons!27243 (h!32644 String!29699) (t!204461 List!27337)) )
))
(declare-fun noDuplicateTag!1605 (LexerInterface!3954 List!27336 List!27337) Bool)

(assert (=> b!2288656 (= e!1466366 (noDuplicateTag!1605 thiss!16613 rules!1750 Nil!27243))))

(assert (= (and d!677126 res!978500) b!2288656))

(declare-fun m!2716477 () Bool)

(assert (=> d!677126 m!2716477))

(declare-fun m!2716479 () Bool)

(assert (=> b!2288656 m!2716479))

(assert (=> b!2288461 d!677126))

(declare-fun d!677134 () Bool)

(declare-fun c!362994 () Bool)

(assert (=> d!677134 (= c!362994 ((_ is IntegerValue!13557) (value!137994 (h!32642 tokens!456))))))

(declare-fun e!1466383 () Bool)

(assert (=> d!677134 (= (inv!21 (value!137994 (h!32642 tokens!456))) e!1466383)))

(declare-fun b!2288677 () Bool)

(declare-fun res!978513 () Bool)

(declare-fun e!1466381 () Bool)

(assert (=> b!2288677 (=> res!978513 e!1466381)))

(assert (=> b!2288677 (= res!978513 (not ((_ is IntegerValue!13559) (value!137994 (h!32642 tokens!456)))))))

(declare-fun e!1466382 () Bool)

(assert (=> b!2288677 (= e!1466382 e!1466381)))

(declare-fun b!2288678 () Bool)

(assert (=> b!2288678 (= e!1466383 e!1466382)))

(declare-fun c!362995 () Bool)

(assert (=> b!2288678 (= c!362995 ((_ is IntegerValue!13558) (value!137994 (h!32642 tokens!456))))))

(declare-fun b!2288679 () Bool)

(declare-fun inv!16 (TokenValue!4519) Bool)

(assert (=> b!2288679 (= e!1466383 (inv!16 (value!137994 (h!32642 tokens!456))))))

(declare-fun b!2288680 () Bool)

(declare-fun inv!17 (TokenValue!4519) Bool)

(assert (=> b!2288680 (= e!1466382 (inv!17 (value!137994 (h!32642 tokens!456))))))

(declare-fun b!2288681 () Bool)

(declare-fun inv!15 (TokenValue!4519) Bool)

(assert (=> b!2288681 (= e!1466381 (inv!15 (value!137994 (h!32642 tokens!456))))))

(assert (= (and d!677134 c!362994) b!2288679))

(assert (= (and d!677134 (not c!362994)) b!2288678))

(assert (= (and b!2288678 c!362995) b!2288680))

(assert (= (and b!2288678 (not c!362995)) b!2288677))

(assert (= (and b!2288677 (not res!978513)) b!2288681))

(declare-fun m!2716489 () Bool)

(assert (=> b!2288679 m!2716489))

(declare-fun m!2716491 () Bool)

(assert (=> b!2288680 m!2716491))

(declare-fun m!2716493 () Bool)

(assert (=> b!2288681 m!2716493))

(assert (=> b!2288471 d!677134))

(declare-fun d!677140 () Bool)

(declare-fun lt!849208 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3654 (List!27336) (InoxSet Rule!8514))

(assert (=> d!677140 (= lt!849208 (select (content!3654 rules!1750) otherR!12))))

(declare-fun e!1466394 () Bool)

(assert (=> d!677140 (= lt!849208 e!1466394)))

(declare-fun res!978525 () Bool)

(assert (=> d!677140 (=> (not res!978525) (not e!1466394))))

(assert (=> d!677140 (= res!978525 ((_ is Cons!27242) rules!1750))))

(assert (=> d!677140 (= (contains!4733 rules!1750 otherR!12) lt!849208)))

(declare-fun b!2288695 () Bool)

(declare-fun e!1466395 () Bool)

(assert (=> b!2288695 (= e!1466394 e!1466395)))

(declare-fun res!978524 () Bool)

(assert (=> b!2288695 (=> res!978524 e!1466395)))

(assert (=> b!2288695 (= res!978524 (= (h!32643 rules!1750) otherR!12))))

(declare-fun b!2288696 () Bool)

(assert (=> b!2288696 (= e!1466395 (contains!4733 (t!204388 rules!1750) otherR!12))))

(assert (= (and d!677140 res!978525) b!2288695))

(assert (= (and b!2288695 (not res!978524)) b!2288696))

(declare-fun m!2716519 () Bool)

(assert (=> d!677140 m!2716519))

(declare-fun m!2716521 () Bool)

(assert (=> d!677140 m!2716521))

(declare-fun m!2716523 () Bool)

(assert (=> b!2288696 m!2716523))

(assert (=> b!2288470 d!677140))

(declare-fun b!2288743 () Bool)

(declare-fun res!978553 () Bool)

(declare-fun e!1466425 () Bool)

(assert (=> b!2288743 (=> (not res!978553) (not e!1466425))))

(declare-fun isEmpty!15506 (List!27334) Bool)

(declare-fun tail!3305 (List!27334) List!27334)

(assert (=> b!2288743 (= res!978553 (isEmpty!15506 (tail!3305 (list!10656 (charsOf!2745 (head!4980 tokens!456))))))))

(declare-fun b!2288744 () Bool)

(declare-fun res!978551 () Bool)

(declare-fun e!1466421 () Bool)

(assert (=> b!2288744 (=> res!978551 e!1466421)))

(assert (=> b!2288744 (= res!978551 (not ((_ is ElementMatch!6705) (regex!4357 r!2363))))))

(declare-fun e!1466420 () Bool)

(assert (=> b!2288744 (= e!1466420 e!1466421)))

(declare-fun b!2288745 () Bool)

(declare-fun lt!849221 () Bool)

(assert (=> b!2288745 (= e!1466420 (not lt!849221))))

(declare-fun b!2288746 () Bool)

(declare-fun e!1466423 () Bool)

(declare-fun call!136617 () Bool)

(assert (=> b!2288746 (= e!1466423 (= lt!849221 call!136617))))

(declare-fun b!2288747 () Bool)

(assert (=> b!2288747 (= e!1466423 e!1466420)))

(declare-fun c!363009 () Bool)

(assert (=> b!2288747 (= c!363009 ((_ is EmptyLang!6705) (regex!4357 r!2363)))))

(declare-fun b!2288748 () Bool)

(declare-fun res!978554 () Bool)

(assert (=> b!2288748 (=> res!978554 e!1466421)))

(assert (=> b!2288748 (= res!978554 e!1466425)))

(declare-fun res!978555 () Bool)

(assert (=> b!2288748 (=> (not res!978555) (not e!1466425))))

(assert (=> b!2288748 (= res!978555 lt!849221)))

(declare-fun b!2288749 () Bool)

(declare-fun res!978550 () Bool)

(declare-fun e!1466424 () Bool)

(assert (=> b!2288749 (=> res!978550 e!1466424)))

(assert (=> b!2288749 (= res!978550 (not (isEmpty!15506 (tail!3305 (list!10656 (charsOf!2745 (head!4980 tokens!456)))))))))

(declare-fun b!2288750 () Bool)

(declare-fun e!1466422 () Bool)

(assert (=> b!2288750 (= e!1466422 (nullable!1862 (regex!4357 r!2363)))))

(declare-fun b!2288751 () Bool)

(declare-fun head!4982 (List!27334) C!13556)

(assert (=> b!2288751 (= e!1466424 (not (= (head!4982 (list!10656 (charsOf!2745 (head!4980 tokens!456)))) (c!362957 (regex!4357 r!2363)))))))

(declare-fun b!2288752 () Bool)

(declare-fun e!1466419 () Bool)

(assert (=> b!2288752 (= e!1466421 e!1466419)))

(declare-fun res!978552 () Bool)

(assert (=> b!2288752 (=> (not res!978552) (not e!1466419))))

(assert (=> b!2288752 (= res!978552 (not lt!849221))))

(declare-fun b!2288753 () Bool)

(assert (=> b!2288753 (= e!1466419 e!1466424)))

(declare-fun res!978548 () Bool)

(assert (=> b!2288753 (=> res!978548 e!1466424)))

(assert (=> b!2288753 (= res!978548 call!136617)))

(declare-fun b!2288754 () Bool)

(declare-fun derivativeStep!1521 (Regex!6705 C!13556) Regex!6705)

(assert (=> b!2288754 (= e!1466422 (matchR!2962 (derivativeStep!1521 (regex!4357 r!2363) (head!4982 (list!10656 (charsOf!2745 (head!4980 tokens!456))))) (tail!3305 (list!10656 (charsOf!2745 (head!4980 tokens!456))))))))

(declare-fun b!2288755 () Bool)

(assert (=> b!2288755 (= e!1466425 (= (head!4982 (list!10656 (charsOf!2745 (head!4980 tokens!456)))) (c!362957 (regex!4357 r!2363))))))

(declare-fun b!2288756 () Bool)

(declare-fun res!978549 () Bool)

(assert (=> b!2288756 (=> (not res!978549) (not e!1466425))))

(assert (=> b!2288756 (= res!978549 (not call!136617))))

(declare-fun d!677150 () Bool)

(assert (=> d!677150 e!1466423))

(declare-fun c!363010 () Bool)

(assert (=> d!677150 (= c!363010 ((_ is EmptyExpr!6705) (regex!4357 r!2363)))))

(assert (=> d!677150 (= lt!849221 e!1466422)))

(declare-fun c!363011 () Bool)

(assert (=> d!677150 (= c!363011 (isEmpty!15506 (list!10656 (charsOf!2745 (head!4980 tokens!456)))))))

(assert (=> d!677150 (validRegex!2524 (regex!4357 r!2363))))

(assert (=> d!677150 (= (matchR!2962 (regex!4357 r!2363) (list!10656 (charsOf!2745 (head!4980 tokens!456)))) lt!849221)))

(declare-fun bm!136612 () Bool)

(assert (=> bm!136612 (= call!136617 (isEmpty!15506 (list!10656 (charsOf!2745 (head!4980 tokens!456)))))))

(assert (= (and d!677150 c!363011) b!2288750))

(assert (= (and d!677150 (not c!363011)) b!2288754))

(assert (= (and d!677150 c!363010) b!2288746))

(assert (= (and d!677150 (not c!363010)) b!2288747))

(assert (= (and b!2288747 c!363009) b!2288745))

(assert (= (and b!2288747 (not c!363009)) b!2288744))

(assert (= (and b!2288744 (not res!978551)) b!2288748))

(assert (= (and b!2288748 res!978555) b!2288756))

(assert (= (and b!2288756 res!978549) b!2288743))

(assert (= (and b!2288743 res!978553) b!2288755))

(assert (= (and b!2288748 (not res!978554)) b!2288752))

(assert (= (and b!2288752 res!978552) b!2288753))

(assert (= (and b!2288753 (not res!978548)) b!2288749))

(assert (= (and b!2288749 (not res!978550)) b!2288751))

(assert (= (or b!2288746 b!2288753 b!2288756) bm!136612))

(assert (=> b!2288750 m!2716403))

(assert (=> b!2288751 m!2716265))

(declare-fun m!2716551 () Bool)

(assert (=> b!2288751 m!2716551))

(assert (=> b!2288754 m!2716265))

(assert (=> b!2288754 m!2716551))

(assert (=> b!2288754 m!2716551))

(declare-fun m!2716553 () Bool)

(assert (=> b!2288754 m!2716553))

(assert (=> b!2288754 m!2716265))

(declare-fun m!2716555 () Bool)

(assert (=> b!2288754 m!2716555))

(assert (=> b!2288754 m!2716553))

(assert (=> b!2288754 m!2716555))

(declare-fun m!2716557 () Bool)

(assert (=> b!2288754 m!2716557))

(assert (=> bm!136612 m!2716265))

(declare-fun m!2716559 () Bool)

(assert (=> bm!136612 m!2716559))

(assert (=> b!2288743 m!2716265))

(assert (=> b!2288743 m!2716555))

(assert (=> b!2288743 m!2716555))

(declare-fun m!2716561 () Bool)

(assert (=> b!2288743 m!2716561))

(assert (=> b!2288755 m!2716265))

(assert (=> b!2288755 m!2716551))

(assert (=> d!677150 m!2716265))

(assert (=> d!677150 m!2716559))

(assert (=> d!677150 m!2716401))

(assert (=> b!2288749 m!2716265))

(assert (=> b!2288749 m!2716555))

(assert (=> b!2288749 m!2716555))

(assert (=> b!2288749 m!2716561))

(assert (=> b!2288449 d!677150))

(declare-fun d!677166 () Bool)

(declare-fun list!10660 (Conc!8862) List!27334)

(assert (=> d!677166 (= (list!10656 (charsOf!2745 (head!4980 tokens!456))) (list!10660 (c!362956 (charsOf!2745 (head!4980 tokens!456)))))))

(declare-fun bs!456970 () Bool)

(assert (= bs!456970 d!677166))

(declare-fun m!2716563 () Bool)

(assert (=> bs!456970 m!2716563))

(assert (=> b!2288449 d!677166))

(assert (=> b!2288449 d!677118))

(assert (=> b!2288449 d!677068))

(declare-fun d!677168 () Bool)

(declare-fun lt!849222 () Bool)

(assert (=> d!677168 (= lt!849222 (select (content!3654 rules!1750) r!2363))))

(declare-fun e!1466426 () Bool)

(assert (=> d!677168 (= lt!849222 e!1466426)))

(declare-fun res!978557 () Bool)

(assert (=> d!677168 (=> (not res!978557) (not e!1466426))))

(assert (=> d!677168 (= res!978557 ((_ is Cons!27242) rules!1750))))

(assert (=> d!677168 (= (contains!4733 rules!1750 r!2363) lt!849222)))

(declare-fun b!2288757 () Bool)

(declare-fun e!1466427 () Bool)

(assert (=> b!2288757 (= e!1466426 e!1466427)))

(declare-fun res!978556 () Bool)

(assert (=> b!2288757 (=> res!978556 e!1466427)))

(assert (=> b!2288757 (= res!978556 (= (h!32643 rules!1750) r!2363))))

(declare-fun b!2288758 () Bool)

(assert (=> b!2288758 (= e!1466427 (contains!4733 (t!204388 rules!1750) r!2363))))

(assert (= (and d!677168 res!978557) b!2288757))

(assert (= (and b!2288757 (not res!978556)) b!2288758))

(assert (=> d!677168 m!2716519))

(declare-fun m!2716565 () Bool)

(assert (=> d!677168 m!2716565))

(declare-fun m!2716567 () Bool)

(assert (=> b!2288758 m!2716567))

(assert (=> b!2288480 d!677168))

(declare-fun d!677170 () Bool)

(assert (=> d!677170 (= (isEmpty!15501 rules!1750) ((_ is Nil!27242) rules!1750))))

(assert (=> b!2288458 d!677170))

(declare-fun b!2288768 () Bool)

(declare-fun res!978568 () Bool)

(declare-fun e!1466435 () Bool)

(assert (=> b!2288768 (=> (not res!978568) (not e!1466435))))

(assert (=> b!2288768 (= res!978568 (= (head!4982 lt!849106) (head!4982 (++!6657 lt!849106 (_2!16027 lt!849111)))))))

(declare-fun b!2288767 () Bool)

(declare-fun e!1466434 () Bool)

(assert (=> b!2288767 (= e!1466434 e!1466435)))

(declare-fun res!978566 () Bool)

(assert (=> b!2288767 (=> (not res!978566) (not e!1466435))))

(assert (=> b!2288767 (= res!978566 (not ((_ is Nil!27240) (++!6657 lt!849106 (_2!16027 lt!849111)))))))

(declare-fun b!2288769 () Bool)

(assert (=> b!2288769 (= e!1466435 (isPrefix!2347 (tail!3305 lt!849106) (tail!3305 (++!6657 lt!849106 (_2!16027 lt!849111)))))))

(declare-fun b!2288770 () Bool)

(declare-fun e!1466436 () Bool)

(assert (=> b!2288770 (= e!1466436 (>= (size!21440 (++!6657 lt!849106 (_2!16027 lt!849111))) (size!21440 lt!849106)))))

(declare-fun d!677172 () Bool)

(assert (=> d!677172 e!1466436))

(declare-fun res!978567 () Bool)

(assert (=> d!677172 (=> res!978567 e!1466436)))

(declare-fun lt!849225 () Bool)

(assert (=> d!677172 (= res!978567 (not lt!849225))))

(assert (=> d!677172 (= lt!849225 e!1466434)))

(declare-fun res!978569 () Bool)

(assert (=> d!677172 (=> res!978569 e!1466434)))

(assert (=> d!677172 (= res!978569 ((_ is Nil!27240) lt!849106))))

(assert (=> d!677172 (= (isPrefix!2347 lt!849106 (++!6657 lt!849106 (_2!16027 lt!849111))) lt!849225)))

(assert (= (and d!677172 (not res!978569)) b!2288767))

(assert (= (and b!2288767 res!978566) b!2288768))

(assert (= (and b!2288768 res!978568) b!2288769))

(assert (= (and d!677172 (not res!978567)) b!2288770))

(declare-fun m!2716569 () Bool)

(assert (=> b!2288768 m!2716569))

(assert (=> b!2288768 m!2716213))

(declare-fun m!2716571 () Bool)

(assert (=> b!2288768 m!2716571))

(declare-fun m!2716573 () Bool)

(assert (=> b!2288769 m!2716573))

(assert (=> b!2288769 m!2716213))

(declare-fun m!2716575 () Bool)

(assert (=> b!2288769 m!2716575))

(assert (=> b!2288769 m!2716573))

(assert (=> b!2288769 m!2716575))

(declare-fun m!2716577 () Bool)

(assert (=> b!2288769 m!2716577))

(assert (=> b!2288770 m!2716213))

(declare-fun m!2716579 () Bool)

(assert (=> b!2288770 m!2716579))

(assert (=> b!2288770 m!2716215))

(assert (=> b!2288469 d!677172))

(declare-fun e!1466442 () Bool)

(declare-fun lt!849228 () List!27334)

(declare-fun b!2288782 () Bool)

(assert (=> b!2288782 (= e!1466442 (or (not (= (_2!16027 lt!849111) Nil!27240)) (= lt!849228 lt!849106)))))

(declare-fun b!2288781 () Bool)

(declare-fun res!978575 () Bool)

(assert (=> b!2288781 (=> (not res!978575) (not e!1466442))))

(assert (=> b!2288781 (= res!978575 (= (size!21440 lt!849228) (+ (size!21440 lt!849106) (size!21440 (_2!16027 lt!849111)))))))

(declare-fun d!677174 () Bool)

(assert (=> d!677174 e!1466442))

(declare-fun res!978574 () Bool)

(assert (=> d!677174 (=> (not res!978574) (not e!1466442))))

(declare-fun content!3655 (List!27334) (InoxSet C!13556))

(assert (=> d!677174 (= res!978574 (= (content!3655 lt!849228) ((_ map or) (content!3655 lt!849106) (content!3655 (_2!16027 lt!849111)))))))

(declare-fun e!1466441 () List!27334)

(assert (=> d!677174 (= lt!849228 e!1466441)))

(declare-fun c!363014 () Bool)

(assert (=> d!677174 (= c!363014 ((_ is Nil!27240) lt!849106))))

(assert (=> d!677174 (= (++!6657 lt!849106 (_2!16027 lt!849111)) lt!849228)))

(declare-fun b!2288780 () Bool)

(assert (=> b!2288780 (= e!1466441 (Cons!27240 (h!32641 lt!849106) (++!6657 (t!204386 lt!849106) (_2!16027 lt!849111))))))

(declare-fun b!2288779 () Bool)

(assert (=> b!2288779 (= e!1466441 (_2!16027 lt!849111))))

(assert (= (and d!677174 c!363014) b!2288779))

(assert (= (and d!677174 (not c!363014)) b!2288780))

(assert (= (and d!677174 res!978574) b!2288781))

(assert (= (and b!2288781 res!978575) b!2288782))

(declare-fun m!2716581 () Bool)

(assert (=> b!2288781 m!2716581))

(assert (=> b!2288781 m!2716215))

(declare-fun m!2716583 () Bool)

(assert (=> b!2288781 m!2716583))

(declare-fun m!2716585 () Bool)

(assert (=> d!677174 m!2716585))

(declare-fun m!2716587 () Bool)

(assert (=> d!677174 m!2716587))

(declare-fun m!2716589 () Bool)

(assert (=> d!677174 m!2716589))

(declare-fun m!2716591 () Bool)

(assert (=> b!2288780 m!2716591))

(assert (=> b!2288469 d!677174))

(declare-fun d!677176 () Bool)

(assert (=> d!677176 (isPrefix!2347 lt!849106 (++!6657 lt!849106 (_2!16027 lt!849111)))))

(declare-fun lt!849231 () Unit!40134)

(declare-fun choose!13359 (List!27334 List!27334) Unit!40134)

(assert (=> d!677176 (= lt!849231 (choose!13359 lt!849106 (_2!16027 lt!849111)))))

(assert (=> d!677176 (= (lemmaConcatTwoListThenFirstIsPrefix!1552 lt!849106 (_2!16027 lt!849111)) lt!849231)))

(declare-fun bs!456971 () Bool)

(assert (= bs!456971 d!677176))

(assert (=> bs!456971 m!2716213))

(assert (=> bs!456971 m!2716213))

(assert (=> bs!456971 m!2716219))

(declare-fun m!2716593 () Bool)

(assert (=> bs!456971 m!2716593))

(assert (=> b!2288469 d!677176))

(assert (=> b!2288469 d!677124))

(declare-fun d!677178 () Bool)

(assert (=> d!677178 (= (list!10656 (charsOf!2745 (h!32642 tokens!456))) (list!10660 (c!362956 (charsOf!2745 (h!32642 tokens!456)))))))

(declare-fun bs!456972 () Bool)

(assert (= bs!456972 d!677178))

(declare-fun m!2716595 () Bool)

(assert (=> bs!456972 m!2716595))

(assert (=> b!2288469 d!677178))

(declare-fun d!677180 () Bool)

(assert (=> d!677180 (= (_2!16027 lt!849111) lt!849112)))

(declare-fun lt!849234 () Unit!40134)

(declare-fun choose!13360 (List!27334 List!27334 List!27334 List!27334 List!27334) Unit!40134)

(assert (=> d!677180 (= lt!849234 (choose!13360 lt!849106 (_2!16027 lt!849111) lt!849106 lt!849112 input!1722))))

(assert (=> d!677180 (isPrefix!2347 lt!849106 input!1722)))

(assert (=> d!677180 (= (lemmaSamePrefixThenSameSuffix!1048 lt!849106 (_2!16027 lt!849111) lt!849106 lt!849112 input!1722) lt!849234)))

(declare-fun bs!456973 () Bool)

(assert (= bs!456973 d!677180))

(declare-fun m!2716597 () Bool)

(assert (=> bs!456973 m!2716597))

(assert (=> bs!456973 m!2716239))

(assert (=> b!2288469 d!677180))

(declare-fun d!677182 () Bool)

(declare-fun lt!849235 () Int)

(assert (=> d!677182 (>= lt!849235 0)))

(declare-fun e!1466443 () Int)

(assert (=> d!677182 (= lt!849235 e!1466443)))

(declare-fun c!363015 () Bool)

(assert (=> d!677182 (= c!363015 ((_ is Nil!27240) lt!849106))))

(assert (=> d!677182 (= (size!21440 lt!849106) lt!849235)))

(declare-fun b!2288783 () Bool)

(assert (=> b!2288783 (= e!1466443 0)))

(declare-fun b!2288784 () Bool)

(assert (=> b!2288784 (= e!1466443 (+ 1 (size!21440 (t!204386 lt!849106))))))

(assert (= (and d!677182 c!363015) b!2288783))

(assert (= (and d!677182 (not c!363015)) b!2288784))

(declare-fun m!2716599 () Bool)

(assert (=> b!2288784 m!2716599))

(assert (=> b!2288469 d!677182))

(declare-fun d!677184 () Bool)

(declare-fun lt!849238 () List!27334)

(assert (=> d!677184 (= (++!6657 lt!849106 lt!849238) input!1722)))

(declare-fun e!1466446 () List!27334)

(assert (=> d!677184 (= lt!849238 e!1466446)))

(declare-fun c!363018 () Bool)

(assert (=> d!677184 (= c!363018 ((_ is Cons!27240) lt!849106))))

(assert (=> d!677184 (>= (size!21440 input!1722) (size!21440 lt!849106))))

(assert (=> d!677184 (= (getSuffix!1138 input!1722 lt!849106) lt!849238)))

(declare-fun b!2288789 () Bool)

(assert (=> b!2288789 (= e!1466446 (getSuffix!1138 (tail!3305 input!1722) (t!204386 lt!849106)))))

(declare-fun b!2288790 () Bool)

(assert (=> b!2288790 (= e!1466446 input!1722)))

(assert (= (and d!677184 c!363018) b!2288789))

(assert (= (and d!677184 (not c!363018)) b!2288790))

(declare-fun m!2716601 () Bool)

(assert (=> d!677184 m!2716601))

(assert (=> d!677184 m!2716377))

(assert (=> d!677184 m!2716215))

(declare-fun m!2716603 () Bool)

(assert (=> b!2288789 m!2716603))

(assert (=> b!2288789 m!2716603))

(declare-fun m!2716605 () Bool)

(assert (=> b!2288789 m!2716605))

(assert (=> b!2288469 d!677184))

(declare-fun d!677186 () Bool)

(declare-fun lt!849239 () BalanceConc!17452)

(assert (=> d!677186 (= (list!10656 lt!849239) (originalCharacters!5127 (h!32642 tokens!456)))))

(assert (=> d!677186 (= lt!849239 (dynLambda!11826 (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))) (value!137994 (h!32642 tokens!456))))))

(assert (=> d!677186 (= (charsOf!2745 (h!32642 tokens!456)) lt!849239)))

(declare-fun b_lambda!72899 () Bool)

(assert (=> (not b_lambda!72899) (not d!677186)))

(declare-fun t!204422 () Bool)

(declare-fun tb!136335 () Bool)

(assert (=> (and b!2288460 (= (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456))))) t!204422) tb!136335))

(declare-fun b!2288791 () Bool)

(declare-fun e!1466447 () Bool)

(declare-fun tp!725565 () Bool)

(assert (=> b!2288791 (= e!1466447 (and (inv!36842 (c!362956 (dynLambda!11826 (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))) (value!137994 (h!32642 tokens!456))))) tp!725565))))

(declare-fun result!166228 () Bool)

(assert (=> tb!136335 (= result!166228 (and (inv!36843 (dynLambda!11826 (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))) (value!137994 (h!32642 tokens!456)))) e!1466447))))

(assert (= tb!136335 b!2288791))

(declare-fun m!2716607 () Bool)

(assert (=> b!2288791 m!2716607))

(declare-fun m!2716609 () Bool)

(assert (=> tb!136335 m!2716609))

(assert (=> d!677186 t!204422))

(declare-fun b_and!181497 () Bool)

(assert (= b_and!181473 (and (=> t!204422 result!166228) b_and!181497)))

(declare-fun tb!136337 () Bool)

(declare-fun t!204424 () Bool)

(assert (=> (and b!2288450 (= (toChars!6006 (transformation!4357 otherR!12)) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456))))) t!204424) tb!136337))

(declare-fun result!166230 () Bool)

(assert (= result!166230 result!166228))

(assert (=> d!677186 t!204424))

(declare-fun b_and!181499 () Bool)

(assert (= b_and!181475 (and (=> t!204424 result!166230) b_and!181499)))

(declare-fun tb!136339 () Bool)

(declare-fun t!204426 () Bool)

(assert (=> (and b!2288463 (= (toChars!6006 (transformation!4357 (h!32643 rules!1750))) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456))))) t!204426) tb!136339))

(declare-fun result!166232 () Bool)

(assert (= result!166232 result!166228))

(assert (=> d!677186 t!204426))

(declare-fun b_and!181501 () Bool)

(assert (= b_and!181477 (and (=> t!204426 result!166232) b_and!181501)))

(declare-fun tb!136341 () Bool)

(declare-fun t!204428 () Bool)

(assert (=> (and b!2288459 (= (toChars!6006 (transformation!4357 r!2363)) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456))))) t!204428) tb!136341))

(declare-fun result!166234 () Bool)

(assert (= result!166234 result!166228))

(assert (=> d!677186 t!204428))

(declare-fun b_and!181503 () Bool)

(assert (= b_and!181479 (and (=> t!204428 result!166234) b_and!181503)))

(declare-fun m!2716611 () Bool)

(assert (=> d!677186 m!2716611))

(declare-fun m!2716613 () Bool)

(assert (=> d!677186 m!2716613))

(assert (=> b!2288469 d!677186))

(declare-fun d!677188 () Bool)

(declare-fun dynLambda!11827 (Int BalanceConc!17452) TokenValue!4519)

(assert (=> d!677188 (= (apply!6629 (transformation!4357 r!2363) (seqFromList!3061 lt!849106)) (dynLambda!11827 (toValue!6147 (transformation!4357 r!2363)) (seqFromList!3061 lt!849106)))))

(declare-fun b_lambda!72901 () Bool)

(assert (=> (not b_lambda!72901) (not d!677188)))

(declare-fun tb!136343 () Bool)

(declare-fun t!204430 () Bool)

(assert (=> (and b!2288460 (= (toValue!6147 (transformation!4357 (rule!6687 (h!32642 tokens!456)))) (toValue!6147 (transformation!4357 r!2363))) t!204430) tb!136343))

(declare-fun result!166236 () Bool)

(assert (=> tb!136343 (= result!166236 (inv!21 (dynLambda!11827 (toValue!6147 (transformation!4357 r!2363)) (seqFromList!3061 lt!849106))))))

(declare-fun m!2716615 () Bool)

(assert (=> tb!136343 m!2716615))

(assert (=> d!677188 t!204430))

(declare-fun b_and!181505 () Bool)

(assert (= b_and!181441 (and (=> t!204430 result!166236) b_and!181505)))

(declare-fun t!204432 () Bool)

(declare-fun tb!136345 () Bool)

(assert (=> (and b!2288450 (= (toValue!6147 (transformation!4357 otherR!12)) (toValue!6147 (transformation!4357 r!2363))) t!204432) tb!136345))

(declare-fun result!166240 () Bool)

(assert (= result!166240 result!166236))

(assert (=> d!677188 t!204432))

(declare-fun b_and!181507 () Bool)

(assert (= b_and!181445 (and (=> t!204432 result!166240) b_and!181507)))

(declare-fun t!204434 () Bool)

(declare-fun tb!136347 () Bool)

(assert (=> (and b!2288463 (= (toValue!6147 (transformation!4357 (h!32643 rules!1750))) (toValue!6147 (transformation!4357 r!2363))) t!204434) tb!136347))

(declare-fun result!166242 () Bool)

(assert (= result!166242 result!166236))

(assert (=> d!677188 t!204434))

(declare-fun b_and!181509 () Bool)

(assert (= b_and!181449 (and (=> t!204434 result!166242) b_and!181509)))

(declare-fun t!204436 () Bool)

(declare-fun tb!136349 () Bool)

(assert (=> (and b!2288459 (= (toValue!6147 (transformation!4357 r!2363)) (toValue!6147 (transformation!4357 r!2363))) t!204436) tb!136349))

(declare-fun result!166244 () Bool)

(assert (= result!166244 result!166236))

(assert (=> d!677188 t!204436))

(declare-fun b_and!181511 () Bool)

(assert (= b_and!181453 (and (=> t!204436 result!166244) b_and!181511)))

(assert (=> d!677188 m!2716233))

(declare-fun m!2716617 () Bool)

(assert (=> d!677188 m!2716617))

(assert (=> b!2288479 d!677188))

(declare-fun b!2288795 () Bool)

(declare-fun res!978578 () Bool)

(declare-fun e!1466452 () Bool)

(assert (=> b!2288795 (=> (not res!978578) (not e!1466452))))

(assert (=> b!2288795 (= res!978578 (= (head!4982 lt!849106) (head!4982 input!1722)))))

(declare-fun b!2288794 () Bool)

(declare-fun e!1466451 () Bool)

(assert (=> b!2288794 (= e!1466451 e!1466452)))

(declare-fun res!978576 () Bool)

(assert (=> b!2288794 (=> (not res!978576) (not e!1466452))))

(assert (=> b!2288794 (= res!978576 (not ((_ is Nil!27240) input!1722)))))

(declare-fun b!2288796 () Bool)

(assert (=> b!2288796 (= e!1466452 (isPrefix!2347 (tail!3305 lt!849106) (tail!3305 input!1722)))))

(declare-fun b!2288797 () Bool)

(declare-fun e!1466453 () Bool)

(assert (=> b!2288797 (= e!1466453 (>= (size!21440 input!1722) (size!21440 lt!849106)))))

(declare-fun d!677190 () Bool)

(assert (=> d!677190 e!1466453))

(declare-fun res!978577 () Bool)

(assert (=> d!677190 (=> res!978577 e!1466453)))

(declare-fun lt!849240 () Bool)

(assert (=> d!677190 (= res!978577 (not lt!849240))))

(assert (=> d!677190 (= lt!849240 e!1466451)))

(declare-fun res!978579 () Bool)

(assert (=> d!677190 (=> res!978579 e!1466451)))

(assert (=> d!677190 (= res!978579 ((_ is Nil!27240) lt!849106))))

(assert (=> d!677190 (= (isPrefix!2347 lt!849106 input!1722) lt!849240)))

(assert (= (and d!677190 (not res!978579)) b!2288794))

(assert (= (and b!2288794 res!978576) b!2288795))

(assert (= (and b!2288795 res!978578) b!2288796))

(assert (= (and d!677190 (not res!978577)) b!2288797))

(assert (=> b!2288795 m!2716569))

(declare-fun m!2716619 () Bool)

(assert (=> b!2288795 m!2716619))

(assert (=> b!2288796 m!2716573))

(assert (=> b!2288796 m!2716603))

(assert (=> b!2288796 m!2716573))

(assert (=> b!2288796 m!2716603))

(declare-fun m!2716621 () Bool)

(assert (=> b!2288796 m!2716621))

(assert (=> b!2288797 m!2716377))

(assert (=> b!2288797 m!2716215))

(assert (=> b!2288479 d!677190))

(declare-fun b!2288856 () Bool)

(declare-fun e!1466492 () Bool)

(declare-datatypes ((tuple2!27038 0))(
  ( (tuple2!27039 (_1!16029 List!27334) (_2!16029 List!27334)) )
))
(declare-fun findLongestMatchInner!717 (Regex!6705 List!27334 Int List!27334 List!27334 Int) tuple2!27038)

(assert (=> b!2288856 (= e!1466492 (matchR!2962 (regex!4357 r!2363) (_1!16029 (findLongestMatchInner!717 (regex!4357 r!2363) Nil!27240 (size!21440 Nil!27240) input!1722 input!1722 (size!21440 input!1722)))))))

(declare-fun b!2288857 () Bool)

(declare-fun res!978621 () Bool)

(declare-fun e!1466491 () Bool)

(assert (=> b!2288857 (=> (not res!978621) (not e!1466491))))

(declare-fun lt!849257 () Option!5347)

(assert (=> b!2288857 (= res!978621 (= (value!137994 (_1!16027 (get!8215 lt!849257))) (apply!6629 (transformation!4357 (rule!6687 (_1!16027 (get!8215 lt!849257)))) (seqFromList!3061 (originalCharacters!5127 (_1!16027 (get!8215 lt!849257)))))))))

(declare-fun b!2288858 () Bool)

(declare-fun res!978616 () Bool)

(assert (=> b!2288858 (=> (not res!978616) (not e!1466491))))

(assert (=> b!2288858 (= res!978616 (= (++!6657 (list!10656 (charsOf!2745 (_1!16027 (get!8215 lt!849257)))) (_2!16027 (get!8215 lt!849257))) input!1722))))

(declare-fun b!2288859 () Bool)

(declare-fun e!1466489 () Bool)

(assert (=> b!2288859 (= e!1466489 e!1466491)))

(declare-fun res!978619 () Bool)

(assert (=> b!2288859 (=> (not res!978619) (not e!1466491))))

(assert (=> b!2288859 (= res!978619 (matchR!2962 (regex!4357 r!2363) (list!10656 (charsOf!2745 (_1!16027 (get!8215 lt!849257))))))))

(declare-fun b!2288860 () Bool)

(declare-fun res!978618 () Bool)

(assert (=> b!2288860 (=> (not res!978618) (not e!1466491))))

(assert (=> b!2288860 (= res!978618 (= (rule!6687 (_1!16027 (get!8215 lt!849257))) r!2363))))

(declare-fun b!2288861 () Bool)

(assert (=> b!2288861 (= e!1466491 (= (size!21438 (_1!16027 (get!8215 lt!849257))) (size!21440 (originalCharacters!5127 (_1!16027 (get!8215 lt!849257))))))))

(declare-fun b!2288862 () Bool)

(declare-fun res!978617 () Bool)

(assert (=> b!2288862 (=> (not res!978617) (not e!1466491))))

(assert (=> b!2288862 (= res!978617 (< (size!21440 (_2!16027 (get!8215 lt!849257))) (size!21440 input!1722)))))

(declare-fun d!677192 () Bool)

(assert (=> d!677192 e!1466489))

(declare-fun res!978622 () Bool)

(assert (=> d!677192 (=> res!978622 e!1466489)))

(assert (=> d!677192 (= res!978622 (isEmpty!15505 lt!849257))))

(declare-fun e!1466490 () Option!5347)

(assert (=> d!677192 (= lt!849257 e!1466490)))

(declare-fun c!363030 () Bool)

(declare-fun lt!849256 () tuple2!27038)

(assert (=> d!677192 (= c!363030 (isEmpty!15506 (_1!16029 lt!849256)))))

(declare-fun findLongestMatch!646 (Regex!6705 List!27334) tuple2!27038)

(assert (=> d!677192 (= lt!849256 (findLongestMatch!646 (regex!4357 r!2363) input!1722))))

(assert (=> d!677192 (ruleValid!1447 thiss!16613 r!2363)))

(assert (=> d!677192 (= (maxPrefixOneRule!1388 thiss!16613 r!2363 input!1722) lt!849257)))

(declare-fun b!2288863 () Bool)

(assert (=> b!2288863 (= e!1466490 None!5346)))

(declare-fun b!2288864 () Bool)

(assert (=> b!2288864 (= e!1466490 (Some!5346 (tuple2!27035 (Token!8193 (apply!6629 (transformation!4357 r!2363) (seqFromList!3061 (_1!16029 lt!849256))) r!2363 (size!21439 (seqFromList!3061 (_1!16029 lt!849256))) (_1!16029 lt!849256)) (_2!16029 lt!849256))))))

(declare-fun lt!849260 () Unit!40134)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!690 (Regex!6705 List!27334) Unit!40134)

(assert (=> b!2288864 (= lt!849260 (longestMatchIsAcceptedByMatchOrIsEmpty!690 (regex!4357 r!2363) input!1722))))

(declare-fun res!978620 () Bool)

(assert (=> b!2288864 (= res!978620 (isEmpty!15506 (_1!16029 (findLongestMatchInner!717 (regex!4357 r!2363) Nil!27240 (size!21440 Nil!27240) input!1722 input!1722 (size!21440 input!1722)))))))

(assert (=> b!2288864 (=> res!978620 e!1466492)))

(assert (=> b!2288864 e!1466492))

(declare-fun lt!849258 () Unit!40134)

(assert (=> b!2288864 (= lt!849258 lt!849260)))

(declare-fun lt!849259 () Unit!40134)

(declare-fun lemmaSemiInverse!1058 (TokenValueInjection!8578 BalanceConc!17452) Unit!40134)

(assert (=> b!2288864 (= lt!849259 (lemmaSemiInverse!1058 (transformation!4357 r!2363) (seqFromList!3061 (_1!16029 lt!849256))))))

(assert (= (and d!677192 c!363030) b!2288863))

(assert (= (and d!677192 (not c!363030)) b!2288864))

(assert (= (and b!2288864 (not res!978620)) b!2288856))

(assert (= (and d!677192 (not res!978622)) b!2288859))

(assert (= (and b!2288859 res!978619) b!2288858))

(assert (= (and b!2288858 res!978616) b!2288862))

(assert (= (and b!2288862 res!978617) b!2288860))

(assert (= (and b!2288860 res!978618) b!2288857))

(assert (= (and b!2288857 res!978621) b!2288861))

(declare-fun m!2716675 () Bool)

(assert (=> b!2288864 m!2716675))

(assert (=> b!2288864 m!2716377))

(declare-fun m!2716677 () Bool)

(assert (=> b!2288864 m!2716677))

(declare-fun m!2716679 () Bool)

(assert (=> b!2288864 m!2716679))

(assert (=> b!2288864 m!2716677))

(declare-fun m!2716681 () Bool)

(assert (=> b!2288864 m!2716681))

(declare-fun m!2716683 () Bool)

(assert (=> b!2288864 m!2716683))

(assert (=> b!2288864 m!2716677))

(declare-fun m!2716685 () Bool)

(assert (=> b!2288864 m!2716685))

(assert (=> b!2288864 m!2716677))

(declare-fun m!2716687 () Bool)

(assert (=> b!2288864 m!2716687))

(assert (=> b!2288864 m!2716675))

(assert (=> b!2288864 m!2716377))

(declare-fun m!2716689 () Bool)

(assert (=> b!2288864 m!2716689))

(declare-fun m!2716691 () Bool)

(assert (=> b!2288857 m!2716691))

(declare-fun m!2716693 () Bool)

(assert (=> b!2288857 m!2716693))

(assert (=> b!2288857 m!2716693))

(declare-fun m!2716695 () Bool)

(assert (=> b!2288857 m!2716695))

(declare-fun m!2716697 () Bool)

(assert (=> d!677192 m!2716697))

(declare-fun m!2716699 () Bool)

(assert (=> d!677192 m!2716699))

(declare-fun m!2716701 () Bool)

(assert (=> d!677192 m!2716701))

(assert (=> d!677192 m!2716193))

(assert (=> b!2288860 m!2716691))

(assert (=> b!2288858 m!2716691))

(declare-fun m!2716703 () Bool)

(assert (=> b!2288858 m!2716703))

(assert (=> b!2288858 m!2716703))

(declare-fun m!2716705 () Bool)

(assert (=> b!2288858 m!2716705))

(assert (=> b!2288858 m!2716705))

(declare-fun m!2716707 () Bool)

(assert (=> b!2288858 m!2716707))

(assert (=> b!2288859 m!2716691))

(assert (=> b!2288859 m!2716703))

(assert (=> b!2288859 m!2716703))

(assert (=> b!2288859 m!2716705))

(assert (=> b!2288859 m!2716705))

(declare-fun m!2716709 () Bool)

(assert (=> b!2288859 m!2716709))

(assert (=> b!2288856 m!2716675))

(assert (=> b!2288856 m!2716377))

(assert (=> b!2288856 m!2716675))

(assert (=> b!2288856 m!2716377))

(assert (=> b!2288856 m!2716689))

(declare-fun m!2716711 () Bool)

(assert (=> b!2288856 m!2716711))

(assert (=> b!2288861 m!2716691))

(declare-fun m!2716713 () Bool)

(assert (=> b!2288861 m!2716713))

(assert (=> b!2288862 m!2716691))

(declare-fun m!2716715 () Bool)

(assert (=> b!2288862 m!2716715))

(assert (=> b!2288862 m!2716377))

(assert (=> b!2288479 d!677192))

(declare-fun d!677224 () Bool)

(assert (=> d!677224 (= (maxPrefixOneRule!1388 thiss!16613 r!2363 input!1722) (Some!5346 (tuple2!27035 (Token!8193 (apply!6629 (transformation!4357 r!2363) (seqFromList!3061 lt!849106)) r!2363 (size!21440 lt!849106) lt!849106) (_2!16027 lt!849111))))))

(declare-fun lt!849266 () Unit!40134)

(declare-fun choose!13361 (LexerInterface!3954 List!27336 List!27334 List!27334 List!27334 Rule!8514) Unit!40134)

(assert (=> d!677224 (= lt!849266 (choose!13361 thiss!16613 rules!1750 lt!849106 input!1722 (_2!16027 lt!849111) r!2363))))

(assert (=> d!677224 (not (isEmpty!15501 rules!1750))))

(assert (=> d!677224 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!581 thiss!16613 rules!1750 lt!849106 input!1722 (_2!16027 lt!849111) r!2363) lt!849266)))

(declare-fun bs!456977 () Bool)

(assert (= bs!456977 d!677224))

(assert (=> bs!456977 m!2716233))

(assert (=> bs!456977 m!2716233))

(assert (=> bs!456977 m!2716235))

(assert (=> bs!456977 m!2716269))

(declare-fun m!2716731 () Bool)

(assert (=> bs!456977 m!2716731))

(assert (=> bs!456977 m!2716215))

(assert (=> bs!456977 m!2716241))

(assert (=> b!2288479 d!677224))

(declare-fun d!677228 () Bool)

(declare-fun fromListB!1374 (List!27334) BalanceConc!17452)

(assert (=> d!677228 (= (seqFromList!3061 lt!849106) (fromListB!1374 lt!849106))))

(declare-fun bs!456978 () Bool)

(assert (= bs!456978 d!677228))

(declare-fun m!2716741 () Bool)

(assert (=> bs!456978 m!2716741))

(assert (=> b!2288479 d!677228))

(declare-fun b!2288942 () Bool)

(declare-fun res!978649 () Bool)

(declare-fun e!1466540 () Bool)

(assert (=> b!2288942 (=> (not res!978649) (not e!1466540))))

(assert (=> b!2288942 (= res!978649 (= (head!4982 otherP!12) (head!4982 input!1722)))))

(declare-fun b!2288941 () Bool)

(declare-fun e!1466539 () Bool)

(assert (=> b!2288941 (= e!1466539 e!1466540)))

(declare-fun res!978647 () Bool)

(assert (=> b!2288941 (=> (not res!978647) (not e!1466540))))

(assert (=> b!2288941 (= res!978647 (not ((_ is Nil!27240) input!1722)))))

(declare-fun b!2288943 () Bool)

(assert (=> b!2288943 (= e!1466540 (isPrefix!2347 (tail!3305 otherP!12) (tail!3305 input!1722)))))

(declare-fun b!2288944 () Bool)

(declare-fun e!1466541 () Bool)

(assert (=> b!2288944 (= e!1466541 (>= (size!21440 input!1722) (size!21440 otherP!12)))))

(declare-fun d!677230 () Bool)

(assert (=> d!677230 e!1466541))

(declare-fun res!978648 () Bool)

(assert (=> d!677230 (=> res!978648 e!1466541)))

(declare-fun lt!849267 () Bool)

(assert (=> d!677230 (= res!978648 (not lt!849267))))

(assert (=> d!677230 (= lt!849267 e!1466539)))

(declare-fun res!978650 () Bool)

(assert (=> d!677230 (=> res!978650 e!1466539)))

(assert (=> d!677230 (= res!978650 ((_ is Nil!27240) otherP!12))))

(assert (=> d!677230 (= (isPrefix!2347 otherP!12 input!1722) lt!849267)))

(assert (= (and d!677230 (not res!978650)) b!2288941))

(assert (= (and b!2288941 res!978647) b!2288942))

(assert (= (and b!2288942 res!978649) b!2288943))

(assert (= (and d!677230 (not res!978648)) b!2288944))

(declare-fun m!2716743 () Bool)

(assert (=> b!2288942 m!2716743))

(assert (=> b!2288942 m!2716619))

(declare-fun m!2716745 () Bool)

(assert (=> b!2288943 m!2716745))

(assert (=> b!2288943 m!2716603))

(assert (=> b!2288943 m!2716745))

(assert (=> b!2288943 m!2716603))

(declare-fun m!2716747 () Bool)

(assert (=> b!2288943 m!2716747))

(assert (=> b!2288944 m!2716377))

(assert (=> b!2288944 m!2716205))

(assert (=> b!2288457 d!677230))

(declare-fun d!677232 () Bool)

(assert (=> d!677232 (= (inv!36835 (tag!4847 (rule!6687 (h!32642 tokens!456)))) (= (mod (str.len (value!137993 (tag!4847 (rule!6687 (h!32642 tokens!456))))) 2) 0))))

(assert (=> b!2288456 d!677232))

(declare-fun d!677234 () Bool)

(declare-fun res!978651 () Bool)

(declare-fun e!1466546 () Bool)

(assert (=> d!677234 (=> (not res!978651) (not e!1466546))))

(assert (=> d!677234 (= res!978651 (semiInverseModEq!1764 (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))) (toValue!6147 (transformation!4357 (rule!6687 (h!32642 tokens!456))))))))

(assert (=> d!677234 (= (inv!36838 (transformation!4357 (rule!6687 (h!32642 tokens!456)))) e!1466546)))

(declare-fun b!2288957 () Bool)

(assert (=> b!2288957 (= e!1466546 (equivClasses!1683 (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))) (toValue!6147 (transformation!4357 (rule!6687 (h!32642 tokens!456))))))))

(assert (= (and d!677234 res!978651) b!2288957))

(declare-fun m!2716749 () Bool)

(assert (=> d!677234 m!2716749))

(declare-fun m!2716751 () Bool)

(assert (=> b!2288957 m!2716751))

(assert (=> b!2288456 d!677234))

(declare-fun d!677236 () Bool)

(assert (=> d!677236 (= (inv!36835 (tag!4847 otherR!12)) (= (mod (str.len (value!137993 (tag!4847 otherR!12))) 2) 0))))

(assert (=> b!2288467 d!677236))

(declare-fun d!677238 () Bool)

(declare-fun res!978652 () Bool)

(declare-fun e!1466551 () Bool)

(assert (=> d!677238 (=> (not res!978652) (not e!1466551))))

(assert (=> d!677238 (= res!978652 (semiInverseModEq!1764 (toChars!6006 (transformation!4357 otherR!12)) (toValue!6147 (transformation!4357 otherR!12))))))

(assert (=> d!677238 (= (inv!36838 (transformation!4357 otherR!12)) e!1466551)))

(declare-fun b!2288962 () Bool)

(assert (=> b!2288962 (= e!1466551 (equivClasses!1683 (toChars!6006 (transformation!4357 otherR!12)) (toValue!6147 (transformation!4357 otherR!12))))))

(assert (= (and d!677238 res!978652) b!2288962))

(declare-fun m!2716753 () Bool)

(assert (=> d!677238 m!2716753))

(declare-fun m!2716755 () Bool)

(assert (=> b!2288962 m!2716755))

(assert (=> b!2288467 d!677238))

(declare-fun d!677240 () Bool)

(assert (=> d!677240 (= (inv!36835 (tag!4847 (h!32643 rules!1750))) (= (mod (str.len (value!137993 (tag!4847 (h!32643 rules!1750)))) 2) 0))))

(assert (=> b!2288466 d!677240))

(declare-fun d!677242 () Bool)

(declare-fun res!978653 () Bool)

(declare-fun e!1466554 () Bool)

(assert (=> d!677242 (=> (not res!978653) (not e!1466554))))

(assert (=> d!677242 (= res!978653 (semiInverseModEq!1764 (toChars!6006 (transformation!4357 (h!32643 rules!1750))) (toValue!6147 (transformation!4357 (h!32643 rules!1750)))))))

(assert (=> d!677242 (= (inv!36838 (transformation!4357 (h!32643 rules!1750))) e!1466554)))

(declare-fun b!2288963 () Bool)

(assert (=> b!2288963 (= e!1466554 (equivClasses!1683 (toChars!6006 (transformation!4357 (h!32643 rules!1750))) (toValue!6147 (transformation!4357 (h!32643 rules!1750)))))))

(assert (= (and d!677242 res!978653) b!2288963))

(declare-fun m!2716757 () Bool)

(assert (=> d!677242 m!2716757))

(declare-fun m!2716759 () Bool)

(assert (=> b!2288963 m!2716759))

(assert (=> b!2288466 d!677242))

(declare-fun d!677244 () Bool)

(declare-fun res!978658 () Bool)

(declare-fun e!1466564 () Bool)

(assert (=> d!677244 (=> (not res!978658) (not e!1466564))))

(assert (=> d!677244 (= res!978658 (not (isEmpty!15506 (originalCharacters!5127 (h!32642 tokens!456)))))))

(assert (=> d!677244 (= (inv!36839 (h!32642 tokens!456)) e!1466564)))

(declare-fun b!2288977 () Bool)

(declare-fun res!978659 () Bool)

(assert (=> b!2288977 (=> (not res!978659) (not e!1466564))))

(assert (=> b!2288977 (= res!978659 (= (originalCharacters!5127 (h!32642 tokens!456)) (list!10656 (dynLambda!11826 (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))) (value!137994 (h!32642 tokens!456))))))))

(declare-fun b!2288978 () Bool)

(assert (=> b!2288978 (= e!1466564 (= (size!21438 (h!32642 tokens!456)) (size!21440 (originalCharacters!5127 (h!32642 tokens!456)))))))

(assert (= (and d!677244 res!978658) b!2288977))

(assert (= (and b!2288977 res!978659) b!2288978))

(declare-fun b_lambda!72909 () Bool)

(assert (=> (not b_lambda!72909) (not b!2288977)))

(assert (=> b!2288977 t!204422))

(declare-fun b_and!181521 () Bool)

(assert (= b_and!181497 (and (=> t!204422 result!166228) b_and!181521)))

(assert (=> b!2288977 t!204424))

(declare-fun b_and!181523 () Bool)

(assert (= b_and!181499 (and (=> t!204424 result!166230) b_and!181523)))

(assert (=> b!2288977 t!204426))

(declare-fun b_and!181525 () Bool)

(assert (= b_and!181501 (and (=> t!204426 result!166232) b_and!181525)))

(assert (=> b!2288977 t!204428))

(declare-fun b_and!181527 () Bool)

(assert (= b_and!181503 (and (=> t!204428 result!166234) b_and!181527)))

(declare-fun m!2716765 () Bool)

(assert (=> d!677244 m!2716765))

(assert (=> b!2288977 m!2716613))

(assert (=> b!2288977 m!2716613))

(declare-fun m!2716767 () Bool)

(assert (=> b!2288977 m!2716767))

(declare-fun m!2716769 () Bool)

(assert (=> b!2288978 m!2716769))

(assert (=> b!2288477 d!677244))

(declare-fun d!677246 () Bool)

(assert (=> d!677246 (= (isEmpty!15502 tokens!456) ((_ is Nil!27241) tokens!456))))

(assert (=> b!2288476 d!677246))

(declare-fun d!677248 () Bool)

(declare-fun list!10661 (Conc!8863) List!27335)

(assert (=> d!677248 (= (list!10657 (_1!16025 lt!849101)) (list!10661 (c!362958 (_1!16025 lt!849101))))))

(declare-fun bs!456979 () Bool)

(assert (= bs!456979 d!677248))

(declare-fun m!2716771 () Bool)

(assert (=> bs!456979 m!2716771))

(assert (=> b!2288454 d!677248))

(declare-fun d!677250 () Bool)

(assert (=> d!677250 (= (list!10656 (_2!16025 lt!849101)) (list!10660 (c!362956 (_2!16025 lt!849101))))))

(declare-fun bs!456980 () Bool)

(assert (= bs!456980 d!677250))

(declare-fun m!2716773 () Bool)

(assert (=> bs!456980 m!2716773))

(assert (=> b!2288454 d!677250))

(declare-fun e!1466571 () Bool)

(declare-fun b!2288989 () Bool)

(declare-fun lt!849270 () tuple2!27030)

(declare-fun lexList!1108 (LexerInterface!3954 List!27336 List!27334) tuple2!27032)

(assert (=> b!2288989 (= e!1466571 (= (list!10656 (_2!16025 lt!849270)) (_2!16026 (lexList!1108 thiss!16613 rules!1750 (list!10656 (seqFromList!3061 input!1722))))))))

(declare-fun b!2288990 () Bool)

(declare-fun e!1466572 () Bool)

(declare-fun isEmpty!15508 (BalanceConc!17454) Bool)

(assert (=> b!2288990 (= e!1466572 (not (isEmpty!15508 (_1!16025 lt!849270))))))

(declare-fun d!677252 () Bool)

(assert (=> d!677252 e!1466571))

(declare-fun res!978666 () Bool)

(assert (=> d!677252 (=> (not res!978666) (not e!1466571))))

(declare-fun e!1466573 () Bool)

(assert (=> d!677252 (= res!978666 e!1466573)))

(declare-fun c!363042 () Bool)

(declare-fun size!21444 (BalanceConc!17454) Int)

(assert (=> d!677252 (= c!363042 (> (size!21444 (_1!16025 lt!849270)) 0))))

(declare-fun lexTailRecV2!783 (LexerInterface!3954 List!27336 BalanceConc!17452 BalanceConc!17452 BalanceConc!17452 BalanceConc!17454) tuple2!27030)

(assert (=> d!677252 (= lt!849270 (lexTailRecV2!783 thiss!16613 rules!1750 (seqFromList!3061 input!1722) (BalanceConc!17453 Empty!8862) (seqFromList!3061 input!1722) (BalanceConc!17455 Empty!8863)))))

(assert (=> d!677252 (= (lex!1793 thiss!16613 rules!1750 (seqFromList!3061 input!1722)) lt!849270)))

(declare-fun b!2288991 () Bool)

(assert (=> b!2288991 (= e!1466573 e!1466572)))

(declare-fun res!978668 () Bool)

(assert (=> b!2288991 (= res!978668 (< (size!21439 (_2!16025 lt!849270)) (size!21439 (seqFromList!3061 input!1722))))))

(assert (=> b!2288991 (=> (not res!978668) (not e!1466572))))

(declare-fun b!2288992 () Bool)

(declare-fun res!978667 () Bool)

(assert (=> b!2288992 (=> (not res!978667) (not e!1466571))))

(assert (=> b!2288992 (= res!978667 (= (list!10657 (_1!16025 lt!849270)) (_1!16026 (lexList!1108 thiss!16613 rules!1750 (list!10656 (seqFromList!3061 input!1722))))))))

(declare-fun b!2288993 () Bool)

(assert (=> b!2288993 (= e!1466573 (= (_2!16025 lt!849270) (seqFromList!3061 input!1722)))))

(assert (= (and d!677252 c!363042) b!2288991))

(assert (= (and d!677252 (not c!363042)) b!2288993))

(assert (= (and b!2288991 res!978668) b!2288990))

(assert (= (and d!677252 res!978666) b!2288992))

(assert (= (and b!2288992 res!978667) b!2288989))

(declare-fun m!2716775 () Bool)

(assert (=> b!2288989 m!2716775))

(assert (=> b!2288989 m!2716247))

(declare-fun m!2716777 () Bool)

(assert (=> b!2288989 m!2716777))

(assert (=> b!2288989 m!2716777))

(declare-fun m!2716779 () Bool)

(assert (=> b!2288989 m!2716779))

(declare-fun m!2716781 () Bool)

(assert (=> b!2288991 m!2716781))

(assert (=> b!2288991 m!2716247))

(declare-fun m!2716783 () Bool)

(assert (=> b!2288991 m!2716783))

(declare-fun m!2716785 () Bool)

(assert (=> b!2288990 m!2716785))

(declare-fun m!2716787 () Bool)

(assert (=> d!677252 m!2716787))

(assert (=> d!677252 m!2716247))

(assert (=> d!677252 m!2716247))

(declare-fun m!2716789 () Bool)

(assert (=> d!677252 m!2716789))

(declare-fun m!2716791 () Bool)

(assert (=> b!2288992 m!2716791))

(assert (=> b!2288992 m!2716247))

(assert (=> b!2288992 m!2716777))

(assert (=> b!2288992 m!2716777))

(assert (=> b!2288992 m!2716779))

(assert (=> b!2288454 d!677252))

(declare-fun d!677254 () Bool)

(assert (=> d!677254 (= (seqFromList!3061 input!1722) (fromListB!1374 input!1722))))

(declare-fun bs!456981 () Bool)

(assert (= bs!456981 d!677254))

(declare-fun m!2716793 () Bool)

(assert (=> bs!456981 m!2716793))

(assert (=> b!2288454 d!677254))

(declare-fun b!2288998 () Bool)

(declare-fun e!1466576 () Bool)

(declare-fun tp!725631 () Bool)

(assert (=> b!2288998 (= e!1466576 (and tp_is_empty!10631 tp!725631))))

(assert (=> b!2288464 (= tp!725544 e!1466576)))

(assert (= (and b!2288464 ((_ is Cons!27240) (t!204386 input!1722))) b!2288998))

(declare-fun b!2289012 () Bool)

(declare-fun e!1466579 () Bool)

(declare-fun tp!725644 () Bool)

(declare-fun tp!725643 () Bool)

(assert (=> b!2289012 (= e!1466579 (and tp!725644 tp!725643))))

(declare-fun b!2289010 () Bool)

(declare-fun tp!725645 () Bool)

(declare-fun tp!725642 () Bool)

(assert (=> b!2289010 (= e!1466579 (and tp!725645 tp!725642))))

(declare-fun b!2289011 () Bool)

(declare-fun tp!725646 () Bool)

(assert (=> b!2289011 (= e!1466579 tp!725646)))

(assert (=> b!2288453 (= tp!725556 e!1466579)))

(declare-fun b!2289009 () Bool)

(assert (=> b!2289009 (= e!1466579 tp_is_empty!10631)))

(assert (= (and b!2288453 ((_ is ElementMatch!6705) (regex!4357 r!2363))) b!2289009))

(assert (= (and b!2288453 ((_ is Concat!11225) (regex!4357 r!2363))) b!2289010))

(assert (= (and b!2288453 ((_ is Star!6705) (regex!4357 r!2363))) b!2289011))

(assert (= (and b!2288453 ((_ is Union!6705) (regex!4357 r!2363))) b!2289012))

(declare-fun b!2289023 () Bool)

(declare-fun b_free!68693 () Bool)

(declare-fun b_next!69397 () Bool)

(assert (=> b!2289023 (= b_free!68693 (not b_next!69397))))

(declare-fun tb!136363 () Bool)

(declare-fun t!204450 () Bool)

(assert (=> (and b!2289023 (= (toValue!6147 (transformation!4357 (h!32643 (t!204388 rules!1750)))) (toValue!6147 (transformation!4357 r!2363))) t!204450) tb!136363))

(declare-fun result!166272 () Bool)

(assert (= result!166272 result!166236))

(assert (=> d!677188 t!204450))

(declare-fun b_and!181529 () Bool)

(declare-fun tp!725657 () Bool)

(assert (=> b!2289023 (= tp!725657 (and (=> t!204450 result!166272) b_and!181529))))

(declare-fun b_free!68695 () Bool)

(declare-fun b_next!69399 () Bool)

(assert (=> b!2289023 (= b_free!68695 (not b_next!69399))))

(declare-fun tb!136365 () Bool)

(declare-fun t!204452 () Bool)

(assert (=> (and b!2289023 (= (toChars!6006 (transformation!4357 (h!32643 (t!204388 rules!1750)))) (toChars!6006 (transformation!4357 (rule!6687 (head!4980 tokens!456))))) t!204452) tb!136365))

(declare-fun result!166274 () Bool)

(assert (= result!166274 result!166210))

(assert (=> d!677118 t!204452))

(declare-fun tb!136367 () Bool)

(declare-fun t!204454 () Bool)

(assert (=> (and b!2289023 (= (toChars!6006 (transformation!4357 (h!32643 (t!204388 rules!1750)))) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456))))) t!204454) tb!136367))

(declare-fun result!166276 () Bool)

(assert (= result!166276 result!166228))

(assert (=> d!677186 t!204454))

(assert (=> b!2288977 t!204454))

(declare-fun b_and!181531 () Bool)

(declare-fun tp!725656 () Bool)

(assert (=> b!2289023 (= tp!725656 (and (=> t!204452 result!166274) (=> t!204454 result!166276) b_and!181531))))

(declare-fun e!1466591 () Bool)

(assert (=> b!2289023 (= e!1466591 (and tp!725657 tp!725656))))

(declare-fun b!2289022 () Bool)

(declare-fun e!1466589 () Bool)

(declare-fun tp!725658 () Bool)

(assert (=> b!2289022 (= e!1466589 (and tp!725658 (inv!36835 (tag!4847 (h!32643 (t!204388 rules!1750)))) (inv!36838 (transformation!4357 (h!32643 (t!204388 rules!1750)))) e!1466591))))

(declare-fun b!2289021 () Bool)

(declare-fun e!1466590 () Bool)

(declare-fun tp!725655 () Bool)

(assert (=> b!2289021 (= e!1466590 (and e!1466589 tp!725655))))

(assert (=> b!2288462 (= tp!725551 e!1466590)))

(assert (= b!2289022 b!2289023))

(assert (= b!2289021 b!2289022))

(assert (= (and b!2288462 ((_ is Cons!27242) (t!204388 rules!1750))) b!2289021))

(declare-fun m!2716795 () Bool)

(assert (=> b!2289022 m!2716795))

(declare-fun m!2716797 () Bool)

(assert (=> b!2289022 m!2716797))

(declare-fun b!2289024 () Bool)

(declare-fun e!1466592 () Bool)

(declare-fun tp!725659 () Bool)

(assert (=> b!2289024 (= e!1466592 (and tp_is_empty!10631 tp!725659))))

(assert (=> b!2288472 (= tp!725540 e!1466592)))

(assert (= (and b!2288472 ((_ is Cons!27240) (t!204386 otherP!12))) b!2289024))

(declare-fun b!2289025 () Bool)

(declare-fun e!1466593 () Bool)

(declare-fun tp!725660 () Bool)

(assert (=> b!2289025 (= e!1466593 (and tp_is_empty!10631 tp!725660))))

(assert (=> b!2288471 (= tp!725547 e!1466593)))

(assert (= (and b!2288471 ((_ is Cons!27240) (originalCharacters!5127 (h!32642 tokens!456)))) b!2289025))

(declare-fun b!2289029 () Bool)

(declare-fun e!1466594 () Bool)

(declare-fun tp!725663 () Bool)

(declare-fun tp!725662 () Bool)

(assert (=> b!2289029 (= e!1466594 (and tp!725663 tp!725662))))

(declare-fun b!2289027 () Bool)

(declare-fun tp!725664 () Bool)

(declare-fun tp!725661 () Bool)

(assert (=> b!2289027 (= e!1466594 (and tp!725664 tp!725661))))

(declare-fun b!2289028 () Bool)

(declare-fun tp!725665 () Bool)

(assert (=> b!2289028 (= e!1466594 tp!725665)))

(assert (=> b!2288456 (= tp!725546 e!1466594)))

(declare-fun b!2289026 () Bool)

(assert (=> b!2289026 (= e!1466594 tp_is_empty!10631)))

(assert (= (and b!2288456 ((_ is ElementMatch!6705) (regex!4357 (rule!6687 (h!32642 tokens!456))))) b!2289026))

(assert (= (and b!2288456 ((_ is Concat!11225) (regex!4357 (rule!6687 (h!32642 tokens!456))))) b!2289027))

(assert (= (and b!2288456 ((_ is Star!6705) (regex!4357 (rule!6687 (h!32642 tokens!456))))) b!2289028))

(assert (= (and b!2288456 ((_ is Union!6705) (regex!4357 (rule!6687 (h!32642 tokens!456))))) b!2289029))

(declare-fun b!2289033 () Bool)

(declare-fun e!1466595 () Bool)

(declare-fun tp!725668 () Bool)

(declare-fun tp!725667 () Bool)

(assert (=> b!2289033 (= e!1466595 (and tp!725668 tp!725667))))

(declare-fun b!2289031 () Bool)

(declare-fun tp!725669 () Bool)

(declare-fun tp!725666 () Bool)

(assert (=> b!2289031 (= e!1466595 (and tp!725669 tp!725666))))

(declare-fun b!2289032 () Bool)

(declare-fun tp!725670 () Bool)

(assert (=> b!2289032 (= e!1466595 tp!725670)))

(assert (=> b!2288467 (= tp!725543 e!1466595)))

(declare-fun b!2289030 () Bool)

(assert (=> b!2289030 (= e!1466595 tp_is_empty!10631)))

(assert (= (and b!2288467 ((_ is ElementMatch!6705) (regex!4357 otherR!12))) b!2289030))

(assert (= (and b!2288467 ((_ is Concat!11225) (regex!4357 otherR!12))) b!2289031))

(assert (= (and b!2288467 ((_ is Star!6705) (regex!4357 otherR!12))) b!2289032))

(assert (= (and b!2288467 ((_ is Union!6705) (regex!4357 otherR!12))) b!2289033))

(declare-fun b!2289037 () Bool)

(declare-fun e!1466596 () Bool)

(declare-fun tp!725673 () Bool)

(declare-fun tp!725672 () Bool)

(assert (=> b!2289037 (= e!1466596 (and tp!725673 tp!725672))))

(declare-fun b!2289035 () Bool)

(declare-fun tp!725674 () Bool)

(declare-fun tp!725671 () Bool)

(assert (=> b!2289035 (= e!1466596 (and tp!725674 tp!725671))))

(declare-fun b!2289036 () Bool)

(declare-fun tp!725675 () Bool)

(assert (=> b!2289036 (= e!1466596 tp!725675)))

(assert (=> b!2288466 (= tp!725554 e!1466596)))

(declare-fun b!2289034 () Bool)

(assert (=> b!2289034 (= e!1466596 tp_is_empty!10631)))

(assert (= (and b!2288466 ((_ is ElementMatch!6705) (regex!4357 (h!32643 rules!1750)))) b!2289034))

(assert (= (and b!2288466 ((_ is Concat!11225) (regex!4357 (h!32643 rules!1750)))) b!2289035))

(assert (= (and b!2288466 ((_ is Star!6705) (regex!4357 (h!32643 rules!1750)))) b!2289036))

(assert (= (and b!2288466 ((_ is Union!6705) (regex!4357 (h!32643 rules!1750)))) b!2289037))

(declare-fun b!2289051 () Bool)

(declare-fun b_free!68697 () Bool)

(declare-fun b_next!69401 () Bool)

(assert (=> b!2289051 (= b_free!68697 (not b_next!69401))))

(declare-fun tb!136369 () Bool)

(declare-fun t!204456 () Bool)

(assert (=> (and b!2289051 (= (toValue!6147 (transformation!4357 (rule!6687 (h!32642 (t!204387 tokens!456))))) (toValue!6147 (transformation!4357 r!2363))) t!204456) tb!136369))

(declare-fun result!166280 () Bool)

(assert (= result!166280 result!166236))

(assert (=> d!677188 t!204456))

(declare-fun tp!725688 () Bool)

(declare-fun b_and!181533 () Bool)

(assert (=> b!2289051 (= tp!725688 (and (=> t!204456 result!166280) b_and!181533))))

(declare-fun b_free!68699 () Bool)

(declare-fun b_next!69403 () Bool)

(assert (=> b!2289051 (= b_free!68699 (not b_next!69403))))

(declare-fun t!204458 () Bool)

(declare-fun tb!136371 () Bool)

(assert (=> (and b!2289051 (= (toChars!6006 (transformation!4357 (rule!6687 (h!32642 (t!204387 tokens!456))))) (toChars!6006 (transformation!4357 (rule!6687 (head!4980 tokens!456))))) t!204458) tb!136371))

(declare-fun result!166282 () Bool)

(assert (= result!166282 result!166210))

(assert (=> d!677118 t!204458))

(declare-fun t!204460 () Bool)

(declare-fun tb!136373 () Bool)

(assert (=> (and b!2289051 (= (toChars!6006 (transformation!4357 (rule!6687 (h!32642 (t!204387 tokens!456))))) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456))))) t!204460) tb!136373))

(declare-fun result!166284 () Bool)

(assert (= result!166284 result!166228))

(assert (=> d!677186 t!204460))

(assert (=> b!2288977 t!204460))

(declare-fun b_and!181535 () Bool)

(declare-fun tp!725687 () Bool)

(assert (=> b!2289051 (= tp!725687 (and (=> t!204458 result!166282) (=> t!204460 result!166284) b_and!181535))))

(declare-fun e!1466614 () Bool)

(assert (=> b!2288477 (= tp!725541 e!1466614)))

(declare-fun e!1466609 () Bool)

(declare-fun tp!725690 () Bool)

(declare-fun e!1466610 () Bool)

(declare-fun b!2289049 () Bool)

(assert (=> b!2289049 (= e!1466609 (and (inv!21 (value!137994 (h!32642 (t!204387 tokens!456)))) e!1466610 tp!725690))))

(declare-fun e!1466612 () Bool)

(assert (=> b!2289051 (= e!1466612 (and tp!725688 tp!725687))))

(declare-fun tp!725686 () Bool)

(declare-fun b!2289048 () Bool)

(assert (=> b!2289048 (= e!1466614 (and (inv!36839 (h!32642 (t!204387 tokens!456))) e!1466609 tp!725686))))

(declare-fun b!2289050 () Bool)

(declare-fun tp!725689 () Bool)

(assert (=> b!2289050 (= e!1466610 (and tp!725689 (inv!36835 (tag!4847 (rule!6687 (h!32642 (t!204387 tokens!456))))) (inv!36838 (transformation!4357 (rule!6687 (h!32642 (t!204387 tokens!456))))) e!1466612))))

(assert (= b!2289050 b!2289051))

(assert (= b!2289049 b!2289050))

(assert (= b!2289048 b!2289049))

(assert (= (and b!2288477 ((_ is Cons!27241) (t!204387 tokens!456))) b!2289048))

(declare-fun m!2716799 () Bool)

(assert (=> b!2289049 m!2716799))

(declare-fun m!2716801 () Bool)

(assert (=> b!2289048 m!2716801))

(declare-fun m!2716803 () Bool)

(assert (=> b!2289050 m!2716803))

(declare-fun m!2716805 () Bool)

(assert (=> b!2289050 m!2716805))

(declare-fun b!2289052 () Bool)

(declare-fun e!1466615 () Bool)

(declare-fun tp!725691 () Bool)

(assert (=> b!2289052 (= e!1466615 (and tp_is_empty!10631 tp!725691))))

(assert (=> b!2288455 (= tp!725542 e!1466615)))

(assert (= (and b!2288455 ((_ is Cons!27240) (t!204386 suffix!886))) b!2289052))

(declare-fun b_lambda!72911 () Bool)

(assert (= b_lambda!72899 (or (and b!2288450 b_free!68675 (= (toChars!6006 (transformation!4357 otherR!12)) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))))) (and b!2288463 b_free!68679 (= (toChars!6006 (transformation!4357 (h!32643 rules!1750))) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))))) (and b!2288460 b_free!68671) (and b!2289051 b_free!68699 (= (toChars!6006 (transformation!4357 (rule!6687 (h!32642 (t!204387 tokens!456))))) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))))) (and b!2288459 b_free!68683 (= (toChars!6006 (transformation!4357 r!2363)) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))))) (and b!2289023 b_free!68695 (= (toChars!6006 (transformation!4357 (h!32643 (t!204388 rules!1750)))) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))))) b_lambda!72911)))

(declare-fun b_lambda!72913 () Bool)

(assert (= b_lambda!72909 (or (and b!2288450 b_free!68675 (= (toChars!6006 (transformation!4357 otherR!12)) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))))) (and b!2288463 b_free!68679 (= (toChars!6006 (transformation!4357 (h!32643 rules!1750))) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))))) (and b!2288460 b_free!68671) (and b!2289051 b_free!68699 (= (toChars!6006 (transformation!4357 (rule!6687 (h!32642 (t!204387 tokens!456))))) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))))) (and b!2288459 b_free!68683 (= (toChars!6006 (transformation!4357 r!2363)) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))))) (and b!2289023 b_free!68695 (= (toChars!6006 (transformation!4357 (h!32643 (t!204388 rules!1750)))) (toChars!6006 (transformation!4357 (rule!6687 (h!32642 tokens!456)))))) b_lambda!72913)))

(declare-fun b_lambda!72915 () Bool)

(assert (= b_lambda!72901 (or (and b!2288460 b_free!68669 (= (toValue!6147 (transformation!4357 (rule!6687 (h!32642 tokens!456)))) (toValue!6147 (transformation!4357 r!2363)))) (and b!2289051 b_free!68697 (= (toValue!6147 (transformation!4357 (rule!6687 (h!32642 (t!204387 tokens!456))))) (toValue!6147 (transformation!4357 r!2363)))) (and b!2288463 b_free!68677 (= (toValue!6147 (transformation!4357 (h!32643 rules!1750))) (toValue!6147 (transformation!4357 r!2363)))) (and b!2288450 b_free!68673 (= (toValue!6147 (transformation!4357 otherR!12)) (toValue!6147 (transformation!4357 r!2363)))) (and b!2289023 b_free!68693 (= (toValue!6147 (transformation!4357 (h!32643 (t!204388 rules!1750)))) (toValue!6147 (transformation!4357 r!2363)))) (and b!2288459 b_free!68681) b_lambda!72915)))

(check-sat (not b!2288680) (not b!2288743) (not b_next!69403) (not b!2288781) (not b_next!69373) (not b!2289024) (not d!677242) b_and!181505 (not b!2288989) (not d!677180) (not b!2289012) (not b!2288621) (not b!2288856) (not b_next!69385) b_and!181525 (not b!2289036) (not b!2289049) (not tb!136335) (not d!677252) (not b!2288791) (not b!2288656) (not b!2288561) (not b!2288768) (not b!2289032) (not b!2288576) (not b!2289052) (not b!2288600) (not b!2289029) (not b!2288769) (not d!677112) (not b_next!69387) b_and!181535 (not b!2288942) (not b!2288562) (not b!2288957) (not d!677250) (not b_next!69379) b_and!181509 (not d!677110) (not d!677072) (not b!2289025) b_and!181511 b_and!181521 (not d!677104) (not b!2288754) (not b_next!69377) (not bm!136612) (not d!677140) b_and!181529 (not b!2288784) (not b!2288554) (not b!2288557) (not d!677244) (not d!677224) (not b!2288860) (not d!677108) (not d!677234) (not d!677126) (not b_lambda!72915) (not b!2288978) (not tb!136343) (not b_next!69383) (not b!2288859) (not b!2288696) (not b!2288679) (not b!2288770) (not b_next!69381) (not b!2288755) tp_is_empty!10631 (not b_next!69399) (not d!677106) (not tb!136319) (not b!2288943) (not d!677118) (not b!2288681) (not d!677166) (not b!2289010) (not d!677254) (not b!2288944) (not b!2289048) (not d!677168) (not b!2289022) (not b!2288998) (not b!2288565) (not d!677174) (not b!2288639) (not b!2288556) (not b!2289037) (not d!677184) (not d!677102) (not b!2289050) (not b_lambda!72911) (not d!677186) (not b_next!69375) (not b!2288555) (not b!2288992) (not d!677228) (not b!2288560) (not d!677238) (not b!2289035) b_and!181531 (not d!677176) (not d!677116) (not b!2288749) (not b!2288991) (not b!2289033) (not b_lambda!72893) (not b!2288586) (not b!2288858) (not b!2289031) (not b!2288795) (not b!2288990) (not b_next!69401) (not d!677248) (not b!2288780) (not b!2288962) (not bm!136609) (not d!677192) (not b!2288857) b_and!181523 b_and!181533 (not b!2288758) (not b!2288977) (not b!2288864) (not b!2288796) (not d!677150) b_and!181527 b_and!181507 (not b!2288797) (not b!2288963) (not b!2289028) (not b!2288558) (not d!677114) (not b!2288861) (not b_next!69397) (not b!2288751) (not b!2289011) (not b_lambda!72913) (not b!2289027) (not b!2288750) (not b!2288789) (not b!2289021) (not b!2288862) (not d!677178) (not b!2288580))
(check-sat (not b_next!69387) b_and!181535 (not b_next!69377) b_and!181529 (not b_next!69383) (not b_next!69375) b_and!181531 (not b_next!69401) b_and!181523 b_and!181533 b_and!181527 (not b_next!69403) (not b_next!69373) b_and!181505 (not b_next!69385) b_and!181525 (not b_next!69379) b_and!181509 b_and!181511 b_and!181521 (not b_next!69381) (not b_next!69399) b_and!181507 (not b_next!69397))
