; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!367784 () Bool)

(assert start!367784)

(declare-fun b!3922410 () Bool)

(declare-fun b_free!106757 () Bool)

(declare-fun b_next!107461 () Bool)

(assert (=> b!3922410 (= b_free!106757 (not b_next!107461))))

(declare-fun tp!1194065 () Bool)

(declare-fun b_and!299015 () Bool)

(assert (=> b!3922410 (= tp!1194065 b_and!299015)))

(declare-fun b_free!106759 () Bool)

(declare-fun b_next!107463 () Bool)

(assert (=> b!3922410 (= b_free!106759 (not b_next!107463))))

(declare-fun tp!1194064 () Bool)

(declare-fun b_and!299017 () Bool)

(assert (=> b!3922410 (= tp!1194064 b_and!299017)))

(declare-fun b!3922418 () Bool)

(declare-fun b_free!106761 () Bool)

(declare-fun b_next!107465 () Bool)

(assert (=> b!3922418 (= b_free!106761 (not b_next!107465))))

(declare-fun tp!1194059 () Bool)

(declare-fun b_and!299019 () Bool)

(assert (=> b!3922418 (= tp!1194059 b_and!299019)))

(declare-fun b_free!106763 () Bool)

(declare-fun b_next!107467 () Bool)

(assert (=> b!3922418 (= b_free!106763 (not b_next!107467))))

(declare-fun tp!1194072 () Bool)

(declare-fun b_and!299021 () Bool)

(assert (=> b!3922418 (= tp!1194072 b_and!299021)))

(declare-fun b!3922403 () Bool)

(declare-fun b_free!106765 () Bool)

(declare-fun b_next!107469 () Bool)

(assert (=> b!3922403 (= b_free!106765 (not b_next!107469))))

(declare-fun tp!1194062 () Bool)

(declare-fun b_and!299023 () Bool)

(assert (=> b!3922403 (= tp!1194062 b_and!299023)))

(declare-fun b_free!106767 () Bool)

(declare-fun b_next!107471 () Bool)

(assert (=> b!3922403 (= b_free!106767 (not b_next!107471))))

(declare-fun tp!1194057 () Bool)

(declare-fun b_and!299025 () Bool)

(assert (=> b!3922403 (= tp!1194057 b_and!299025)))

(declare-fun b!3922395 () Bool)

(declare-datatypes ((Unit!59815 0))(
  ( (Unit!59816) )
))
(declare-fun e!2425710 () Unit!59815)

(declare-fun Unit!59817 () Unit!59815)

(assert (=> b!3922395 (= e!2425710 Unit!59817)))

(declare-fun lt!1367580 () Unit!59815)

(declare-datatypes ((C!22968 0))(
  ( (C!22969 (val!13578 Int)) )
))
(declare-datatypes ((List!41729 0))(
  ( (Nil!41605) (Cons!41605 (h!47025 C!22968) (t!324672 List!41729)) )
))
(declare-fun prefix!426 () List!41729)

(declare-fun suffix!1176 () List!41729)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2444 (List!41729 List!41729) Unit!59815)

(assert (=> b!3922395 (= lt!1367580 (lemmaConcatTwoListThenFirstIsPrefix!2444 prefix!426 suffix!1176))))

(declare-fun lt!1367563 () List!41729)

(declare-fun isPrefix!3581 (List!41729 List!41729) Bool)

(assert (=> b!3922395 (isPrefix!3581 prefix!426 lt!1367563)))

(declare-fun lt!1367561 () Unit!59815)

(declare-fun lt!1367556 () List!41729)

(declare-fun lemmaIsPrefixSameLengthThenSameList!777 (List!41729 List!41729 List!41729) Unit!59815)

(assert (=> b!3922395 (= lt!1367561 (lemmaIsPrefixSameLengthThenSameList!777 lt!1367556 prefix!426 lt!1367563))))

(assert (=> b!3922395 (= lt!1367556 prefix!426)))

(declare-fun lt!1367571 () Unit!59815)

(declare-datatypes ((List!41730 0))(
  ( (Nil!41606) (Cons!41606 (h!47026 (_ BitVec 16)) (t!324673 List!41730)) )
))
(declare-datatypes ((TokenValue!6716 0))(
  ( (FloatLiteralValue!13432 (text!47457 List!41730)) (TokenValueExt!6715 (__x!25649 Int)) (Broken!33580 (value!205459 List!41730)) (Object!6839) (End!6716) (Def!6716) (Underscore!6716) (Match!6716) (Else!6716) (Error!6716) (Case!6716) (If!6716) (Extends!6716) (Abstract!6716) (Class!6716) (Val!6716) (DelimiterValue!13432 (del!6776 List!41730)) (KeywordValue!6722 (value!205460 List!41730)) (CommentValue!13432 (value!205461 List!41730)) (WhitespaceValue!13432 (value!205462 List!41730)) (IndentationValue!6716 (value!205463 List!41730)) (String!47297) (Int32!6716) (Broken!33581 (value!205464 List!41730)) (Boolean!6717) (Unit!59818) (OperatorValue!6719 (op!6776 List!41730)) (IdentifierValue!13432 (value!205465 List!41730)) (IdentifierValue!13433 (value!205466 List!41730)) (WhitespaceValue!13433 (value!205467 List!41730)) (True!13432) (False!13432) (Broken!33582 (value!205468 List!41730)) (Broken!33583 (value!205469 List!41730)) (True!13433) (RightBrace!6716) (RightBracket!6716) (Colon!6716) (Null!6716) (Comma!6716) (LeftBracket!6716) (False!13433) (LeftBrace!6716) (ImaginaryLiteralValue!6716 (text!47458 List!41730)) (StringLiteralValue!20148 (value!205470 List!41730)) (EOFValue!6716 (value!205471 List!41730)) (IdentValue!6716 (value!205472 List!41730)) (DelimiterValue!13433 (value!205473 List!41730)) (DedentValue!6716 (value!205474 List!41730)) (NewLineValue!6716 (value!205475 List!41730)) (IntegerValue!20148 (value!205476 (_ BitVec 32)) (text!47459 List!41730)) (IntegerValue!20149 (value!205477 Int) (text!47460 List!41730)) (Times!6716) (Or!6716) (Equal!6716) (Minus!6716) (Broken!33584 (value!205478 List!41730)) (And!6716) (Div!6716) (LessEqual!6716) (Mod!6716) (Concat!18107) (Not!6716) (Plus!6716) (SpaceValue!6716 (value!205479 List!41730)) (IntegerValue!20150 (value!205480 Int) (text!47461 List!41730)) (StringLiteralValue!20149 (text!47462 List!41730)) (FloatLiteralValue!13433 (text!47463 List!41730)) (BytesLiteralValue!6716 (value!205481 List!41730)) (CommentValue!13433 (value!205482 List!41730)) (StringLiteralValue!20150 (value!205483 List!41730)) (ErrorTokenValue!6716 (msg!6777 List!41730)) )
))
(declare-datatypes ((Regex!11391 0))(
  ( (ElementMatch!11391 (c!681620 C!22968)) (Concat!18108 (regOne!23294 Regex!11391) (regTwo!23294 Regex!11391)) (EmptyExpr!11391) (Star!11391 (reg!11720 Regex!11391)) (EmptyLang!11391) (Union!11391 (regOne!23295 Regex!11391) (regTwo!23295 Regex!11391)) )
))
(declare-datatypes ((String!47298 0))(
  ( (String!47299 (value!205484 String)) )
))
(declare-datatypes ((IArray!25399 0))(
  ( (IArray!25400 (innerList!12757 List!41729)) )
))
(declare-datatypes ((Conc!12697 0))(
  ( (Node!12697 (left!31790 Conc!12697) (right!32120 Conc!12697) (csize!25624 Int) (cheight!12908 Int)) (Leaf!19647 (xs!16003 IArray!25399) (csize!25625 Int)) (Empty!12697) )
))
(declare-datatypes ((BalanceConc!24988 0))(
  ( (BalanceConc!24989 (c!681621 Conc!12697)) )
))
(declare-datatypes ((TokenValueInjection!12860 0))(
  ( (TokenValueInjection!12861 (toValue!8938 Int) (toChars!8797 Int)) )
))
(declare-datatypes ((Rule!12772 0))(
  ( (Rule!12773 (regex!6486 Regex!11391) (tag!7346 String!47298) (isSeparator!6486 Bool) (transformation!6486 TokenValueInjection!12860)) )
))
(declare-datatypes ((Token!12110 0))(
  ( (Token!12111 (value!205485 TokenValue!6716) (rule!9420 Rule!12772) (size!31229 Int) (originalCharacters!7086 List!41729)) )
))
(declare-datatypes ((tuple2!40870 0))(
  ( (tuple2!40871 (_1!23569 Token!12110) (_2!23569 List!41729)) )
))
(declare-datatypes ((Option!8906 0))(
  ( (None!8905) (Some!8905 (v!39231 tuple2!40870)) )
))
(declare-fun lt!1367557 () Option!8906)

(declare-fun lemmaSamePrefixThenSameSuffix!1802 (List!41729 List!41729 List!41729 List!41729 List!41729) Unit!59815)

(assert (=> b!3922395 (= lt!1367571 (lemmaSamePrefixThenSameSuffix!1802 lt!1367556 (_2!23569 (v!39231 lt!1367557)) prefix!426 suffix!1176 lt!1367563))))

(assert (=> b!3922395 false))

(declare-fun b!3922396 () Bool)

(declare-fun e!2425719 () Bool)

(declare-fun lt!1367573 () Int)

(declare-fun size!31230 (List!41729) Int)

(assert (=> b!3922396 (= e!2425719 (< lt!1367573 (size!31230 prefix!426)))))

(assert (=> b!3922396 (isPrefix!3581 lt!1367556 prefix!426)))

(declare-fun lt!1367564 () Unit!59815)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!259 (List!41729 List!41729 List!41729) Unit!59815)

(assert (=> b!3922396 (= lt!1367564 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!259 prefix!426 lt!1367556 lt!1367563))))

(assert (=> b!3922396 (isPrefix!3581 prefix!426 lt!1367563)))

(declare-fun lt!1367568 () Unit!59815)

(assert (=> b!3922396 (= lt!1367568 (lemmaConcatTwoListThenFirstIsPrefix!2444 prefix!426 suffix!1176))))

(declare-fun b!3922397 () Bool)

(declare-fun e!2425705 () Unit!59815)

(declare-fun Unit!59819 () Unit!59815)

(assert (=> b!3922397 (= e!2425705 Unit!59819)))

(declare-fun lt!1367553 () tuple2!40870)

(declare-fun suffixResult!91 () List!41729)

(declare-datatypes ((LexerInterface!6075 0))(
  ( (LexerInterfaceExt!6072 (__x!25650 Int)) (Lexer!6073) )
))
(declare-fun thiss!20629 () LexerInterface!6075)

(declare-datatypes ((List!41731 0))(
  ( (Nil!41607) (Cons!41607 (h!47027 Rule!12772) (t!324674 List!41731)) )
))
(declare-fun rules!2768 () List!41731)

(declare-datatypes ((List!41732 0))(
  ( (Nil!41608) (Cons!41608 (h!47028 Token!12110) (t!324675 List!41732)) )
))
(declare-fun suffixTokens!72 () List!41732)

(declare-fun lt!1367575 () Unit!59815)

(declare-fun lt!1367572 () List!41732)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!86 (LexerInterface!6075 List!41731 List!41729 List!41729 List!41732 List!41729 List!41732) Unit!59815)

(assert (=> b!3922397 (= lt!1367575 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!86 thiss!20629 rules!2768 suffix!1176 (_2!23569 lt!1367553) suffixTokens!72 suffixResult!91 lt!1367572))))

(declare-datatypes ((tuple2!40872 0))(
  ( (tuple2!40873 (_1!23570 List!41732) (_2!23570 List!41729)) )
))
(declare-fun call!284650 () tuple2!40872)

(declare-fun res!1586713 () Bool)

(declare-fun ++!10729 (List!41732 List!41732) List!41732)

(assert (=> b!3922397 (= res!1586713 (not (= call!284650 (tuple2!40873 (++!10729 lt!1367572 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2425693 () Bool)

(assert (=> b!3922397 (=> (not res!1586713) (not e!2425693))))

(assert (=> b!3922397 e!2425693))

(declare-fun tp!1194071 () Bool)

(declare-fun b!3922398 () Bool)

(declare-fun e!2425722 () Bool)

(declare-fun e!2425695 () Bool)

(declare-fun inv!55798 (String!47298) Bool)

(declare-fun inv!55801 (TokenValueInjection!12860) Bool)

(assert (=> b!3922398 (= e!2425722 (and tp!1194071 (inv!55798 (tag!7346 (h!47027 rules!2768))) (inv!55801 (transformation!6486 (h!47027 rules!2768))) e!2425695))))

(declare-fun b!3922399 () Bool)

(declare-fun res!1586703 () Bool)

(declare-fun e!2425714 () Bool)

(assert (=> b!3922399 (=> (not res!1586703) (not e!2425714))))

(declare-fun prefixTokens!80 () List!41732)

(declare-fun isEmpty!24778 (List!41732) Bool)

(assert (=> b!3922399 (= res!1586703 (not (isEmpty!24778 prefixTokens!80)))))

(declare-fun b!3922400 () Bool)

(declare-fun Unit!59820 () Unit!59815)

(assert (=> b!3922400 (= e!2425710 Unit!59820)))

(declare-fun b!3922401 () Bool)

(declare-fun e!2425697 () Bool)

(declare-fun tp_is_empty!19753 () Bool)

(declare-fun tp!1194069 () Bool)

(assert (=> b!3922401 (= e!2425697 (and tp_is_empty!19753 tp!1194069))))

(declare-fun e!2425703 () Bool)

(declare-fun b!3922402 () Bool)

(declare-fun tp!1194061 () Bool)

(declare-fun e!2425707 () Bool)

(assert (=> b!3922402 (= e!2425707 (and tp!1194061 (inv!55798 (tag!7346 (rule!9420 (h!47028 prefixTokens!80)))) (inv!55801 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))) e!2425703))))

(assert (=> b!3922403 (= e!2425703 (and tp!1194062 tp!1194057))))

(declare-fun b!3922404 () Bool)

(declare-fun Unit!59821 () Unit!59815)

(assert (=> b!3922404 (= e!2425705 Unit!59821)))

(declare-fun lt!1367583 () Unit!59815)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!534 (List!41729 List!41729 List!41729 List!41729) Unit!59815)

(assert (=> b!3922404 (= lt!1367583 (lemmaConcatSameAndSameSizesThenSameLists!534 lt!1367556 (_2!23569 (v!39231 lt!1367557)) lt!1367556 (_2!23569 lt!1367553)))))

(assert (=> b!3922404 (= (_2!23569 (v!39231 lt!1367557)) (_2!23569 lt!1367553))))

(declare-fun lt!1367560 () Unit!59815)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!86 (LexerInterface!6075 List!41731 List!41729 List!41729 List!41732 List!41729) Unit!59815)

(assert (=> b!3922404 (= lt!1367560 (lemmaLexWithSmallerInputCannotProduceSameResults!86 thiss!20629 rules!2768 suffix!1176 (_2!23569 lt!1367553) suffixTokens!72 suffixResult!91))))

(declare-fun res!1586702 () Bool)

(declare-fun lt!1367570 () tuple2!40872)

(assert (=> b!3922404 (= res!1586702 (not (= call!284650 lt!1367570)))))

(declare-fun e!2425709 () Bool)

(assert (=> b!3922404 (=> (not res!1586702) (not e!2425709))))

(assert (=> b!3922404 e!2425709))

(declare-fun b!3922405 () Bool)

(assert (=> b!3922405 (= e!2425709 false)))

(declare-fun b!3922406 () Bool)

(declare-fun e!2425712 () Bool)

(assert (=> b!3922406 (= e!2425712 (= (size!31229 (_1!23569 (v!39231 lt!1367557))) (size!31230 (originalCharacters!7086 (_1!23569 (v!39231 lt!1367557))))))))

(declare-fun b!3922407 () Bool)

(declare-fun e!2425716 () Bool)

(declare-fun tp!1194056 () Bool)

(assert (=> b!3922407 (= e!2425716 (and tp_is_empty!19753 tp!1194056))))

(declare-fun b!3922408 () Bool)

(declare-fun e!2425700 () Bool)

(declare-fun tp!1194068 () Bool)

(assert (=> b!3922408 (= e!2425700 (and e!2425722 tp!1194068))))

(declare-fun b!3922409 () Bool)

(declare-fun e!2425691 () Bool)

(declare-fun e!2425706 () Bool)

(declare-fun tp!1194063 () Bool)

(declare-fun inv!21 (TokenValue!6716) Bool)

(assert (=> b!3922409 (= e!2425706 (and (inv!21 (value!205485 (h!47028 suffixTokens!72))) e!2425691 tp!1194063))))

(assert (=> b!3922410 (= e!2425695 (and tp!1194065 tp!1194064))))

(declare-fun b!3922411 () Bool)

(declare-fun e!2425692 () Unit!59815)

(declare-fun Unit!59822 () Unit!59815)

(assert (=> b!3922411 (= e!2425692 Unit!59822)))

(declare-fun b!3922412 () Bool)

(declare-fun e!2425717 () Bool)

(assert (=> b!3922412 (= e!2425717 e!2425719)))

(declare-fun res!1586710 () Bool)

(assert (=> b!3922412 (=> res!1586710 e!2425719)))

(declare-fun lt!1367569 () Int)

(declare-fun lt!1367554 () Int)

(assert (=> b!3922412 (= res!1586710 (<= lt!1367569 lt!1367554))))

(declare-fun lt!1367555 () Unit!59815)

(assert (=> b!3922412 (= lt!1367555 e!2425710)))

(declare-fun c!681616 () Bool)

(assert (=> b!3922412 (= c!681616 (= lt!1367569 lt!1367554))))

(declare-fun lt!1367581 () Unit!59815)

(assert (=> b!3922412 (= lt!1367581 e!2425692)))

(declare-fun c!681618 () Bool)

(assert (=> b!3922412 (= c!681618 (< lt!1367569 lt!1367554))))

(assert (=> b!3922412 (= lt!1367554 (size!31230 suffix!1176))))

(assert (=> b!3922412 (= lt!1367569 (size!31230 (_2!23569 (v!39231 lt!1367557))))))

(declare-fun b!3922413 () Bool)

(declare-fun res!1586711 () Bool)

(assert (=> b!3922413 (=> res!1586711 e!2425717)))

(declare-fun lt!1367582 () tuple2!40872)

(assert (=> b!3922413 (= res!1586711 (or (not (= lt!1367582 (tuple2!40873 (_1!23570 lt!1367582) (_2!23570 lt!1367582)))) (= (_2!23569 (v!39231 lt!1367557)) suffix!1176)))))

(declare-fun bm!284645 () Bool)

(declare-fun lexList!1843 (LexerInterface!6075 List!41731 List!41729) tuple2!40872)

(assert (=> bm!284645 (= call!284650 (lexList!1843 thiss!20629 rules!2768 (_2!23569 lt!1367553)))))

(declare-fun res!1586706 () Bool)

(assert (=> start!367784 (=> (not res!1586706) (not e!2425714))))

(get-info :version)

(assert (=> start!367784 (= res!1586706 ((_ is Lexer!6073) thiss!20629))))

(assert (=> start!367784 e!2425714))

(assert (=> start!367784 e!2425716))

(assert (=> start!367784 true))

(assert (=> start!367784 e!2425697))

(assert (=> start!367784 e!2425700))

(declare-fun e!2425696 () Bool)

(assert (=> start!367784 e!2425696))

(declare-fun e!2425715 () Bool)

(assert (=> start!367784 e!2425715))

(declare-fun e!2425698 () Bool)

(assert (=> start!367784 e!2425698))

(declare-fun b!3922414 () Bool)

(declare-fun e!2425721 () Bool)

(declare-fun e!2425720 () Bool)

(assert (=> b!3922414 (= e!2425721 e!2425720)))

(declare-fun res!1586704 () Bool)

(assert (=> b!3922414 (=> (not res!1586704) (not e!2425720))))

(assert (=> b!3922414 (= res!1586704 ((_ is Some!8905) lt!1367557))))

(declare-fun maxPrefix!3379 (LexerInterface!6075 List!41731 List!41729) Option!8906)

(assert (=> b!3922414 (= lt!1367557 (maxPrefix!3379 thiss!20629 rules!2768 lt!1367563))))

(declare-fun b!3922415 () Bool)

(declare-fun e!2425699 () Bool)

(assert (=> b!3922415 (= e!2425699 e!2425721)))

(declare-fun res!1586708 () Bool)

(assert (=> b!3922415 (=> (not res!1586708) (not e!2425721))))

(assert (=> b!3922415 (= res!1586708 (= (lexList!1843 thiss!20629 rules!2768 suffix!1176) lt!1367570))))

(assert (=> b!3922415 (= lt!1367570 (tuple2!40873 suffixTokens!72 suffixResult!91))))

(declare-fun b!3922416 () Bool)

(declare-fun res!1586701 () Bool)

(assert (=> b!3922416 (=> (not res!1586701) (not e!2425714))))

(declare-fun rulesInvariant!5418 (LexerInterface!6075 List!41731) Bool)

(assert (=> b!3922416 (= res!1586701 (rulesInvariant!5418 thiss!20629 rules!2768))))

(declare-fun e!2425701 () Bool)

(declare-fun tp!1194058 () Bool)

(declare-fun b!3922417 () Bool)

(declare-fun inv!55802 (Token!12110) Bool)

(assert (=> b!3922417 (= e!2425696 (and (inv!55802 (h!47028 prefixTokens!80)) e!2425701 tp!1194058))))

(declare-fun e!2425711 () Bool)

(assert (=> b!3922418 (= e!2425711 (and tp!1194059 tp!1194072))))

(declare-fun tp!1194060 () Bool)

(declare-fun b!3922419 () Bool)

(assert (=> b!3922419 (= e!2425691 (and tp!1194060 (inv!55798 (tag!7346 (rule!9420 (h!47028 suffixTokens!72)))) (inv!55801 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))) e!2425711))))

(declare-fun b!3922420 () Bool)

(declare-fun res!1586700 () Bool)

(assert (=> b!3922420 (=> res!1586700 e!2425717)))

(declare-fun lt!1367577 () tuple2!40872)

(assert (=> b!3922420 (= res!1586700 (not (= lt!1367577 (tuple2!40873 (++!10729 (Cons!41608 (_1!23569 (v!39231 lt!1367557)) Nil!41608) (_1!23570 lt!1367582)) (_2!23570 lt!1367582)))))))

(declare-fun b!3922421 () Bool)

(declare-fun c!681617 () Bool)

(assert (=> b!3922421 (= c!681617 (isEmpty!24778 lt!1367572))))

(declare-fun tail!6027 (List!41732) List!41732)

(assert (=> b!3922421 (= lt!1367572 (tail!6027 prefixTokens!80))))

(declare-fun e!2425713 () Unit!59815)

(assert (=> b!3922421 (= e!2425713 e!2425705)))

(declare-fun b!3922422 () Bool)

(declare-fun res!1586709 () Bool)

(assert (=> b!3922422 (=> (not res!1586709) (not e!2425714))))

(declare-fun isEmpty!24779 (List!41731) Bool)

(assert (=> b!3922422 (= res!1586709 (not (isEmpty!24779 rules!2768)))))

(declare-fun b!3922423 () Bool)

(assert (=> b!3922423 (= e!2425693 false)))

(declare-fun b!3922424 () Bool)

(assert (=> b!3922424 (= e!2425714 e!2425699)))

(declare-fun res!1586707 () Bool)

(assert (=> b!3922424 (=> (not res!1586707) (not e!2425699))))

(declare-fun lt!1367579 () List!41732)

(assert (=> b!3922424 (= res!1586707 (= lt!1367577 (tuple2!40873 lt!1367579 suffixResult!91)))))

(assert (=> b!3922424 (= lt!1367577 (lexList!1843 thiss!20629 rules!2768 lt!1367563))))

(assert (=> b!3922424 (= lt!1367579 (++!10729 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10730 (List!41729 List!41729) List!41729)

(assert (=> b!3922424 (= lt!1367563 (++!10730 prefix!426 suffix!1176))))

(declare-fun b!3922425 () Bool)

(declare-fun tp!1194066 () Bool)

(assert (=> b!3922425 (= e!2425715 (and (inv!55802 (h!47028 suffixTokens!72)) e!2425706 tp!1194066))))

(declare-fun b!3922426 () Bool)

(declare-fun res!1586712 () Bool)

(assert (=> b!3922426 (=> (not res!1586712) (not e!2425714))))

(declare-fun isEmpty!24780 (List!41729) Bool)

(assert (=> b!3922426 (= res!1586712 (not (isEmpty!24780 prefix!426)))))

(declare-fun tp!1194067 () Bool)

(declare-fun b!3922427 () Bool)

(assert (=> b!3922427 (= e!2425701 (and (inv!21 (value!205485 (h!47028 prefixTokens!80))) e!2425707 tp!1194067))))

(declare-fun b!3922428 () Bool)

(declare-fun tp!1194070 () Bool)

(assert (=> b!3922428 (= e!2425698 (and tp_is_empty!19753 tp!1194070))))

(declare-fun b!3922429 () Bool)

(assert (=> b!3922429 (= e!2425720 (not e!2425717))))

(declare-fun res!1586705 () Bool)

(assert (=> b!3922429 (=> res!1586705 e!2425717)))

(declare-fun lt!1367552 () List!41729)

(assert (=> b!3922429 (= res!1586705 (not (= lt!1367552 lt!1367563)))))

(assert (=> b!3922429 (= lt!1367582 (lexList!1843 thiss!20629 rules!2768 (_2!23569 (v!39231 lt!1367557))))))

(declare-fun lt!1367559 () List!41729)

(declare-fun lt!1367576 () TokenValue!6716)

(assert (=> b!3922429 (and (= (size!31229 (_1!23569 (v!39231 lt!1367557))) lt!1367573) (= (originalCharacters!7086 (_1!23569 (v!39231 lt!1367557))) lt!1367556) (= (v!39231 lt!1367557) (tuple2!40871 (Token!12111 lt!1367576 (rule!9420 (_1!23569 (v!39231 lt!1367557))) lt!1367573 lt!1367556) lt!1367559)))))

(assert (=> b!3922429 (= lt!1367573 (size!31230 lt!1367556))))

(assert (=> b!3922429 e!2425712))

(declare-fun res!1586715 () Bool)

(assert (=> b!3922429 (=> (not res!1586715) (not e!2425712))))

(assert (=> b!3922429 (= res!1586715 (= (value!205485 (_1!23569 (v!39231 lt!1367557))) lt!1367576))))

(declare-fun apply!9725 (TokenValueInjection!12860 BalanceConc!24988) TokenValue!6716)

(declare-fun seqFromList!4753 (List!41729) BalanceConc!24988)

(assert (=> b!3922429 (= lt!1367576 (apply!9725 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))) (seqFromList!4753 lt!1367556)))))

(assert (=> b!3922429 (= (_2!23569 (v!39231 lt!1367557)) lt!1367559)))

(declare-fun lt!1367566 () Unit!59815)

(assert (=> b!3922429 (= lt!1367566 (lemmaSamePrefixThenSameSuffix!1802 lt!1367556 (_2!23569 (v!39231 lt!1367557)) lt!1367556 lt!1367559 lt!1367563))))

(declare-fun getSuffix!2036 (List!41729 List!41729) List!41729)

(assert (=> b!3922429 (= lt!1367559 (getSuffix!2036 lt!1367563 lt!1367556))))

(assert (=> b!3922429 (isPrefix!3581 lt!1367556 lt!1367552)))

(assert (=> b!3922429 (= lt!1367552 (++!10730 lt!1367556 (_2!23569 (v!39231 lt!1367557))))))

(declare-fun lt!1367558 () Unit!59815)

(assert (=> b!3922429 (= lt!1367558 (lemmaConcatTwoListThenFirstIsPrefix!2444 lt!1367556 (_2!23569 (v!39231 lt!1367557))))))

(declare-fun list!15465 (BalanceConc!24988) List!41729)

(declare-fun charsOf!4310 (Token!12110) BalanceConc!24988)

(assert (=> b!3922429 (= lt!1367556 (list!15465 (charsOf!4310 (_1!23569 (v!39231 lt!1367557)))))))

(declare-fun ruleValid!2434 (LexerInterface!6075 Rule!12772) Bool)

(assert (=> b!3922429 (ruleValid!2434 thiss!20629 (rule!9420 (_1!23569 (v!39231 lt!1367557))))))

(declare-fun lt!1367565 () Unit!59815)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1514 (LexerInterface!6075 Rule!12772 List!41731) Unit!59815)

(assert (=> b!3922429 (= lt!1367565 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1514 thiss!20629 (rule!9420 (_1!23569 (v!39231 lt!1367557))) rules!2768))))

(declare-fun lt!1367578 () Unit!59815)

(declare-fun lemmaCharactersSize!1143 (Token!12110) Unit!59815)

(assert (=> b!3922429 (= lt!1367578 (lemmaCharactersSize!1143 (_1!23569 (v!39231 lt!1367557))))))

(declare-fun b!3922430 () Bool)

(declare-fun Unit!59823 () Unit!59815)

(assert (=> b!3922430 (= e!2425713 Unit!59823)))

(declare-fun b!3922431 () Bool)

(declare-fun Unit!59824 () Unit!59815)

(assert (=> b!3922431 (= e!2425692 Unit!59824)))

(declare-fun lt!1367562 () Int)

(assert (=> b!3922431 (= lt!1367562 (size!31230 lt!1367563))))

(declare-fun lt!1367567 () Unit!59815)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1317 (LexerInterface!6075 List!41731 List!41729 List!41729 List!41729 Rule!12772) Unit!59815)

(assert (=> b!3922431 (= lt!1367567 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1317 thiss!20629 rules!2768 lt!1367556 lt!1367563 (_2!23569 (v!39231 lt!1367557)) (rule!9420 (_1!23569 (v!39231 lt!1367557)))))))

(declare-fun maxPrefixOneRule!2449 (LexerInterface!6075 Rule!12772 List!41729) Option!8906)

(assert (=> b!3922431 (= (maxPrefixOneRule!2449 thiss!20629 (rule!9420 (_1!23569 (v!39231 lt!1367557))) lt!1367563) (Some!8905 (tuple2!40871 (Token!12111 lt!1367576 (rule!9420 (_1!23569 (v!39231 lt!1367557))) lt!1367573 lt!1367556) (_2!23569 (v!39231 lt!1367557)))))))

(declare-fun get!13749 (Option!8906) tuple2!40870)

(assert (=> b!3922431 (= lt!1367553 (get!13749 lt!1367557))))

(declare-fun c!681619 () Bool)

(assert (=> b!3922431 (= c!681619 (< (size!31230 (_2!23569 lt!1367553)) lt!1367554))))

(declare-fun lt!1367574 () Unit!59815)

(assert (=> b!3922431 (= lt!1367574 e!2425713)))

(assert (=> b!3922431 false))

(declare-fun b!3922432 () Bool)

(declare-fun res!1586714 () Bool)

(assert (=> b!3922432 (=> res!1586714 e!2425719)))

(declare-fun head!8301 (List!41732) Token!12110)

(assert (=> b!3922432 (= res!1586714 (not (= (head!8301 prefixTokens!80) (_1!23569 (v!39231 lt!1367557)))))))

(assert (= (and start!367784 res!1586706) b!3922422))

(assert (= (and b!3922422 res!1586709) b!3922416))

(assert (= (and b!3922416 res!1586701) b!3922399))

(assert (= (and b!3922399 res!1586703) b!3922426))

(assert (= (and b!3922426 res!1586712) b!3922424))

(assert (= (and b!3922424 res!1586707) b!3922415))

(assert (= (and b!3922415 res!1586708) b!3922414))

(assert (= (and b!3922414 res!1586704) b!3922429))

(assert (= (and b!3922429 res!1586715) b!3922406))

(assert (= (and b!3922429 (not res!1586705)) b!3922420))

(assert (= (and b!3922420 (not res!1586700)) b!3922413))

(assert (= (and b!3922413 (not res!1586711)) b!3922412))

(assert (= (and b!3922412 c!681618) b!3922431))

(assert (= (and b!3922412 (not c!681618)) b!3922411))

(assert (= (and b!3922431 c!681619) b!3922421))

(assert (= (and b!3922431 (not c!681619)) b!3922430))

(assert (= (and b!3922421 c!681617) b!3922404))

(assert (= (and b!3922421 (not c!681617)) b!3922397))

(assert (= (and b!3922404 res!1586702) b!3922405))

(assert (= (and b!3922397 res!1586713) b!3922423))

(assert (= (or b!3922404 b!3922397) bm!284645))

(assert (= (and b!3922412 c!681616) b!3922395))

(assert (= (and b!3922412 (not c!681616)) b!3922400))

(assert (= (and b!3922412 (not res!1586710)) b!3922432))

(assert (= (and b!3922432 (not res!1586714)) b!3922396))

(assert (= (and start!367784 ((_ is Cons!41605) suffixResult!91)) b!3922407))

(assert (= (and start!367784 ((_ is Cons!41605) suffix!1176)) b!3922401))

(assert (= b!3922398 b!3922410))

(assert (= b!3922408 b!3922398))

(assert (= (and start!367784 ((_ is Cons!41607) rules!2768)) b!3922408))

(assert (= b!3922402 b!3922403))

(assert (= b!3922427 b!3922402))

(assert (= b!3922417 b!3922427))

(assert (= (and start!367784 ((_ is Cons!41608) prefixTokens!80)) b!3922417))

(assert (= b!3922419 b!3922418))

(assert (= b!3922409 b!3922419))

(assert (= b!3922425 b!3922409))

(assert (= (and start!367784 ((_ is Cons!41608) suffixTokens!72)) b!3922425))

(assert (= (and start!367784 ((_ is Cons!41605) prefix!426)) b!3922428))

(declare-fun m!4486219 () Bool)

(assert (=> b!3922395 m!4486219))

(declare-fun m!4486221 () Bool)

(assert (=> b!3922395 m!4486221))

(declare-fun m!4486223 () Bool)

(assert (=> b!3922395 m!4486223))

(declare-fun m!4486225 () Bool)

(assert (=> b!3922395 m!4486225))

(declare-fun m!4486227 () Bool)

(assert (=> b!3922422 m!4486227))

(declare-fun m!4486229 () Bool)

(assert (=> b!3922421 m!4486229))

(declare-fun m!4486231 () Bool)

(assert (=> b!3922421 m!4486231))

(declare-fun m!4486233 () Bool)

(assert (=> b!3922406 m!4486233))

(declare-fun m!4486235 () Bool)

(assert (=> b!3922416 m!4486235))

(declare-fun m!4486237 () Bool)

(assert (=> b!3922414 m!4486237))

(declare-fun m!4486239 () Bool)

(assert (=> b!3922424 m!4486239))

(declare-fun m!4486241 () Bool)

(assert (=> b!3922424 m!4486241))

(declare-fun m!4486243 () Bool)

(assert (=> b!3922424 m!4486243))

(declare-fun m!4486245 () Bool)

(assert (=> b!3922431 m!4486245))

(declare-fun m!4486247 () Bool)

(assert (=> b!3922431 m!4486247))

(declare-fun m!4486249 () Bool)

(assert (=> b!3922431 m!4486249))

(declare-fun m!4486251 () Bool)

(assert (=> b!3922431 m!4486251))

(declare-fun m!4486253 () Bool)

(assert (=> b!3922431 m!4486253))

(declare-fun m!4486255 () Bool)

(assert (=> b!3922432 m!4486255))

(declare-fun m!4486257 () Bool)

(assert (=> b!3922397 m!4486257))

(declare-fun m!4486259 () Bool)

(assert (=> b!3922397 m!4486259))

(declare-fun m!4486261 () Bool)

(assert (=> b!3922404 m!4486261))

(declare-fun m!4486263 () Bool)

(assert (=> b!3922404 m!4486263))

(declare-fun m!4486265 () Bool)

(assert (=> b!3922417 m!4486265))

(declare-fun m!4486267 () Bool)

(assert (=> b!3922412 m!4486267))

(declare-fun m!4486269 () Bool)

(assert (=> b!3922412 m!4486269))

(declare-fun m!4486271 () Bool)

(assert (=> b!3922402 m!4486271))

(declare-fun m!4486273 () Bool)

(assert (=> b!3922402 m!4486273))

(declare-fun m!4486275 () Bool)

(assert (=> b!3922427 m!4486275))

(declare-fun m!4486277 () Bool)

(assert (=> bm!284645 m!4486277))

(declare-fun m!4486279 () Bool)

(assert (=> b!3922426 m!4486279))

(declare-fun m!4486281 () Bool)

(assert (=> b!3922398 m!4486281))

(declare-fun m!4486283 () Bool)

(assert (=> b!3922398 m!4486283))

(declare-fun m!4486285 () Bool)

(assert (=> b!3922420 m!4486285))

(declare-fun m!4486287 () Bool)

(assert (=> b!3922425 m!4486287))

(declare-fun m!4486289 () Bool)

(assert (=> b!3922419 m!4486289))

(declare-fun m!4486291 () Bool)

(assert (=> b!3922419 m!4486291))

(declare-fun m!4486293 () Bool)

(assert (=> b!3922399 m!4486293))

(declare-fun m!4486295 () Bool)

(assert (=> b!3922429 m!4486295))

(declare-fun m!4486297 () Bool)

(assert (=> b!3922429 m!4486297))

(declare-fun m!4486299 () Bool)

(assert (=> b!3922429 m!4486299))

(declare-fun m!4486301 () Bool)

(assert (=> b!3922429 m!4486301))

(declare-fun m!4486303 () Bool)

(assert (=> b!3922429 m!4486303))

(declare-fun m!4486305 () Bool)

(assert (=> b!3922429 m!4486305))

(declare-fun m!4486307 () Bool)

(assert (=> b!3922429 m!4486307))

(declare-fun m!4486309 () Bool)

(assert (=> b!3922429 m!4486309))

(declare-fun m!4486311 () Bool)

(assert (=> b!3922429 m!4486311))

(declare-fun m!4486313 () Bool)

(assert (=> b!3922429 m!4486313))

(declare-fun m!4486315 () Bool)

(assert (=> b!3922429 m!4486315))

(assert (=> b!3922429 m!4486313))

(declare-fun m!4486317 () Bool)

(assert (=> b!3922429 m!4486317))

(declare-fun m!4486319 () Bool)

(assert (=> b!3922429 m!4486319))

(assert (=> b!3922429 m!4486303))

(declare-fun m!4486321 () Bool)

(assert (=> b!3922429 m!4486321))

(declare-fun m!4486323 () Bool)

(assert (=> b!3922409 m!4486323))

(assert (=> b!3922396 m!4486221))

(assert (=> b!3922396 m!4486219))

(declare-fun m!4486325 () Bool)

(assert (=> b!3922396 m!4486325))

(declare-fun m!4486327 () Bool)

(assert (=> b!3922396 m!4486327))

(declare-fun m!4486329 () Bool)

(assert (=> b!3922396 m!4486329))

(declare-fun m!4486331 () Bool)

(assert (=> b!3922415 m!4486331))

(check-sat (not b!3922399) (not b!3922424) (not b!3922416) (not b!3922428) (not b!3922421) (not b!3922419) (not b!3922395) b_and!299021 (not b!3922412) (not bm!284645) (not b_next!107467) (not b!3922402) (not b!3922425) (not b_next!107463) (not b!3922407) tp_is_empty!19753 (not b!3922427) (not b!3922404) (not b!3922426) b_and!299025 (not b!3922397) (not b!3922432) b_and!299023 (not b!3922398) (not b!3922417) (not b!3922408) (not b!3922415) (not b!3922409) (not b!3922414) (not b!3922431) (not b!3922422) (not b_next!107465) (not b!3922396) (not b_next!107471) b_and!299017 (not b!3922429) b_and!299015 (not b!3922401) (not b_next!107469) (not b!3922406) (not b!3922420) b_and!299019 (not b_next!107461))
(check-sat b_and!299025 b_and!299023 b_and!299015 b_and!299021 (not b_next!107467) (not b_next!107469) (not b_next!107463) (not b_next!107465) (not b_next!107471) b_and!299017 b_and!299019 (not b_next!107461))
(get-model)

(declare-fun d!1163150 () Bool)

(assert (=> d!1163150 (= (isEmpty!24780 prefix!426) ((_ is Nil!41605) prefix!426))))

(assert (=> b!3922426 d!1163150))

(declare-fun d!1163152 () Bool)

(declare-fun res!1586724 () Bool)

(declare-fun e!2425725 () Bool)

(assert (=> d!1163152 (=> (not res!1586724) (not e!2425725))))

(assert (=> d!1163152 (= res!1586724 (not (isEmpty!24780 (originalCharacters!7086 (h!47028 suffixTokens!72)))))))

(assert (=> d!1163152 (= (inv!55802 (h!47028 suffixTokens!72)) e!2425725)))

(declare-fun b!3922437 () Bool)

(declare-fun res!1586725 () Bool)

(assert (=> b!3922437 (=> (not res!1586725) (not e!2425725))))

(declare-fun dynLambda!17857 (Int TokenValue!6716) BalanceConc!24988)

(assert (=> b!3922437 (= res!1586725 (= (originalCharacters!7086 (h!47028 suffixTokens!72)) (list!15465 (dynLambda!17857 (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))) (value!205485 (h!47028 suffixTokens!72))))))))

(declare-fun b!3922438 () Bool)

(assert (=> b!3922438 (= e!2425725 (= (size!31229 (h!47028 suffixTokens!72)) (size!31230 (originalCharacters!7086 (h!47028 suffixTokens!72)))))))

(assert (= (and d!1163152 res!1586724) b!3922437))

(assert (= (and b!3922437 res!1586725) b!3922438))

(declare-fun b_lambda!114823 () Bool)

(assert (=> (not b_lambda!114823) (not b!3922437)))

(declare-fun t!324677 () Bool)

(declare-fun tb!234221 () Bool)

(assert (=> (and b!3922410 (= (toChars!8797 (transformation!6486 (h!47027 rules!2768))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72))))) t!324677) tb!234221))

(declare-fun b!3922443 () Bool)

(declare-fun e!2425728 () Bool)

(declare-fun tp!1194075 () Bool)

(declare-fun inv!55805 (Conc!12697) Bool)

(assert (=> b!3922443 (= e!2425728 (and (inv!55805 (c!681621 (dynLambda!17857 (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))) (value!205485 (h!47028 suffixTokens!72))))) tp!1194075))))

(declare-fun result!283822 () Bool)

(declare-fun inv!55806 (BalanceConc!24988) Bool)

(assert (=> tb!234221 (= result!283822 (and (inv!55806 (dynLambda!17857 (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))) (value!205485 (h!47028 suffixTokens!72)))) e!2425728))))

(assert (= tb!234221 b!3922443))

(declare-fun m!4486333 () Bool)

(assert (=> b!3922443 m!4486333))

(declare-fun m!4486335 () Bool)

(assert (=> tb!234221 m!4486335))

(assert (=> b!3922437 t!324677))

(declare-fun b_and!299027 () Bool)

(assert (= b_and!299017 (and (=> t!324677 result!283822) b_and!299027)))

(declare-fun t!324679 () Bool)

(declare-fun tb!234223 () Bool)

(assert (=> (and b!3922418 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72))))) t!324679) tb!234223))

(declare-fun result!283826 () Bool)

(assert (= result!283826 result!283822))

(assert (=> b!3922437 t!324679))

(declare-fun b_and!299029 () Bool)

(assert (= b_and!299021 (and (=> t!324679 result!283826) b_and!299029)))

(declare-fun tb!234225 () Bool)

(declare-fun t!324681 () Bool)

(assert (=> (and b!3922403 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72))))) t!324681) tb!234225))

(declare-fun result!283828 () Bool)

(assert (= result!283828 result!283822))

(assert (=> b!3922437 t!324681))

(declare-fun b_and!299031 () Bool)

(assert (= b_and!299025 (and (=> t!324681 result!283828) b_and!299031)))

(declare-fun m!4486337 () Bool)

(assert (=> d!1163152 m!4486337))

(declare-fun m!4486339 () Bool)

(assert (=> b!3922437 m!4486339))

(assert (=> b!3922437 m!4486339))

(declare-fun m!4486341 () Bool)

(assert (=> b!3922437 m!4486341))

(declare-fun m!4486343 () Bool)

(assert (=> b!3922438 m!4486343))

(assert (=> b!3922425 d!1163152))

(declare-fun b!3922454 () Bool)

(declare-fun e!2425736 () Bool)

(declare-fun e!2425735 () Bool)

(assert (=> b!3922454 (= e!2425736 e!2425735)))

(declare-fun c!681626 () Bool)

(assert (=> b!3922454 (= c!681626 ((_ is IntegerValue!20149) (value!205485 (h!47028 prefixTokens!80))))))

(declare-fun b!3922455 () Bool)

(declare-fun inv!17 (TokenValue!6716) Bool)

(assert (=> b!3922455 (= e!2425735 (inv!17 (value!205485 (h!47028 prefixTokens!80))))))

(declare-fun b!3922456 () Bool)

(declare-fun inv!16 (TokenValue!6716) Bool)

(assert (=> b!3922456 (= e!2425736 (inv!16 (value!205485 (h!47028 prefixTokens!80))))))

(declare-fun b!3922457 () Bool)

(declare-fun res!1586731 () Bool)

(declare-fun e!2425737 () Bool)

(assert (=> b!3922457 (=> res!1586731 e!2425737)))

(assert (=> b!3922457 (= res!1586731 (not ((_ is IntegerValue!20150) (value!205485 (h!47028 prefixTokens!80)))))))

(assert (=> b!3922457 (= e!2425735 e!2425737)))

(declare-fun d!1163154 () Bool)

(declare-fun c!681627 () Bool)

(assert (=> d!1163154 (= c!681627 ((_ is IntegerValue!20148) (value!205485 (h!47028 prefixTokens!80))))))

(assert (=> d!1163154 (= (inv!21 (value!205485 (h!47028 prefixTokens!80))) e!2425736)))

(declare-fun b!3922458 () Bool)

(declare-fun inv!15 (TokenValue!6716) Bool)

(assert (=> b!3922458 (= e!2425737 (inv!15 (value!205485 (h!47028 prefixTokens!80))))))

(assert (= (and d!1163154 c!681627) b!3922456))

(assert (= (and d!1163154 (not c!681627)) b!3922454))

(assert (= (and b!3922454 c!681626) b!3922455))

(assert (= (and b!3922454 (not c!681626)) b!3922457))

(assert (= (and b!3922457 (not res!1586731)) b!3922458))

(declare-fun m!4486345 () Bool)

(assert (=> b!3922455 m!4486345))

(declare-fun m!4486347 () Bool)

(assert (=> b!3922456 m!4486347))

(declare-fun m!4486349 () Bool)

(assert (=> b!3922458 m!4486349))

(assert (=> b!3922427 d!1163154))

(declare-fun d!1163162 () Bool)

(declare-fun lt!1367586 () Int)

(assert (=> d!1163162 (>= lt!1367586 0)))

(declare-fun e!2425740 () Int)

(assert (=> d!1163162 (= lt!1367586 e!2425740)))

(declare-fun c!681630 () Bool)

(assert (=> d!1163162 (= c!681630 ((_ is Nil!41605) (originalCharacters!7086 (_1!23569 (v!39231 lt!1367557)))))))

(assert (=> d!1163162 (= (size!31230 (originalCharacters!7086 (_1!23569 (v!39231 lt!1367557)))) lt!1367586)))

(declare-fun b!3922463 () Bool)

(assert (=> b!3922463 (= e!2425740 0)))

(declare-fun b!3922464 () Bool)

(assert (=> b!3922464 (= e!2425740 (+ 1 (size!31230 (t!324672 (originalCharacters!7086 (_1!23569 (v!39231 lt!1367557)))))))))

(assert (= (and d!1163162 c!681630) b!3922463))

(assert (= (and d!1163162 (not c!681630)) b!3922464))

(declare-fun m!4486351 () Bool)

(assert (=> b!3922464 m!4486351))

(assert (=> b!3922406 d!1163162))

(declare-fun d!1163164 () Bool)

(declare-fun fromListB!2198 (List!41729) BalanceConc!24988)

(assert (=> d!1163164 (= (seqFromList!4753 lt!1367556) (fromListB!2198 lt!1367556))))

(declare-fun bs!585899 () Bool)

(assert (= bs!585899 d!1163164))

(declare-fun m!4486353 () Bool)

(assert (=> bs!585899 m!4486353))

(assert (=> b!3922429 d!1163164))

(declare-fun d!1163166 () Bool)

(declare-fun e!2425755 () Bool)

(assert (=> d!1163166 e!2425755))

(declare-fun res!1586740 () Bool)

(assert (=> d!1163166 (=> (not res!1586740) (not e!2425755))))

(declare-fun lt!1367598 () List!41729)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6262 (List!41729) (InoxSet C!22968))

(assert (=> d!1163166 (= res!1586740 (= (content!6262 lt!1367598) ((_ map or) (content!6262 lt!1367556) (content!6262 (_2!23569 (v!39231 lt!1367557))))))))

(declare-fun e!2425754 () List!41729)

(assert (=> d!1163166 (= lt!1367598 e!2425754)))

(declare-fun c!681639 () Bool)

(assert (=> d!1163166 (= c!681639 ((_ is Nil!41605) lt!1367556))))

(assert (=> d!1163166 (= (++!10730 lt!1367556 (_2!23569 (v!39231 lt!1367557))) lt!1367598)))

(declare-fun b!3922491 () Bool)

(assert (=> b!3922491 (= e!2425755 (or (not (= (_2!23569 (v!39231 lt!1367557)) Nil!41605)) (= lt!1367598 lt!1367556)))))

(declare-fun b!3922490 () Bool)

(declare-fun res!1586739 () Bool)

(assert (=> b!3922490 (=> (not res!1586739) (not e!2425755))))

(assert (=> b!3922490 (= res!1586739 (= (size!31230 lt!1367598) (+ (size!31230 lt!1367556) (size!31230 (_2!23569 (v!39231 lt!1367557))))))))

(declare-fun b!3922489 () Bool)

(assert (=> b!3922489 (= e!2425754 (Cons!41605 (h!47025 lt!1367556) (++!10730 (t!324672 lt!1367556) (_2!23569 (v!39231 lt!1367557)))))))

(declare-fun b!3922488 () Bool)

(assert (=> b!3922488 (= e!2425754 (_2!23569 (v!39231 lt!1367557)))))

(assert (= (and d!1163166 c!681639) b!3922488))

(assert (= (and d!1163166 (not c!681639)) b!3922489))

(assert (= (and d!1163166 res!1586740) b!3922490))

(assert (= (and b!3922490 res!1586739) b!3922491))

(declare-fun m!4486367 () Bool)

(assert (=> d!1163166 m!4486367))

(declare-fun m!4486369 () Bool)

(assert (=> d!1163166 m!4486369))

(declare-fun m!4486371 () Bool)

(assert (=> d!1163166 m!4486371))

(declare-fun m!4486373 () Bool)

(assert (=> b!3922490 m!4486373))

(assert (=> b!3922490 m!4486295))

(assert (=> b!3922490 m!4486269))

(declare-fun m!4486377 () Bool)

(assert (=> b!3922489 m!4486377))

(assert (=> b!3922429 d!1163166))

(declare-fun d!1163172 () Bool)

(assert (=> d!1163172 (isPrefix!3581 lt!1367556 (++!10730 lt!1367556 (_2!23569 (v!39231 lt!1367557))))))

(declare-fun lt!1367607 () Unit!59815)

(declare-fun choose!23256 (List!41729 List!41729) Unit!59815)

(assert (=> d!1163172 (= lt!1367607 (choose!23256 lt!1367556 (_2!23569 (v!39231 lt!1367557))))))

(assert (=> d!1163172 (= (lemmaConcatTwoListThenFirstIsPrefix!2444 lt!1367556 (_2!23569 (v!39231 lt!1367557))) lt!1367607)))

(declare-fun bs!585902 () Bool)

(assert (= bs!585902 d!1163172))

(assert (=> bs!585902 m!4486297))

(assert (=> bs!585902 m!4486297))

(declare-fun m!4486385 () Bool)

(assert (=> bs!585902 m!4486385))

(declare-fun m!4486387 () Bool)

(assert (=> bs!585902 m!4486387))

(assert (=> b!3922429 d!1163172))

(declare-fun d!1163178 () Bool)

(assert (=> d!1163178 (= (size!31229 (_1!23569 (v!39231 lt!1367557))) (size!31230 (originalCharacters!7086 (_1!23569 (v!39231 lt!1367557)))))))

(declare-fun Unit!59826 () Unit!59815)

(assert (=> d!1163178 (= (lemmaCharactersSize!1143 (_1!23569 (v!39231 lt!1367557))) Unit!59826)))

(declare-fun bs!585903 () Bool)

(assert (= bs!585903 d!1163178))

(assert (=> bs!585903 m!4486233))

(assert (=> b!3922429 d!1163178))

(declare-fun d!1163182 () Bool)

(declare-fun dynLambda!17858 (Int BalanceConc!24988) TokenValue!6716)

(assert (=> d!1163182 (= (apply!9725 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))) (seqFromList!4753 lt!1367556)) (dynLambda!17858 (toValue!8938 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557))))) (seqFromList!4753 lt!1367556)))))

(declare-fun b_lambda!114829 () Bool)

(assert (=> (not b_lambda!114829) (not d!1163182)))

(declare-fun tb!234239 () Bool)

(declare-fun t!324695 () Bool)

(assert (=> (and b!3922410 (= (toValue!8938 (transformation!6486 (h!47027 rules!2768))) (toValue!8938 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))))) t!324695) tb!234239))

(declare-fun result!283846 () Bool)

(assert (=> tb!234239 (= result!283846 (inv!21 (dynLambda!17858 (toValue!8938 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557))))) (seqFromList!4753 lt!1367556))))))

(declare-fun m!4486413 () Bool)

(assert (=> tb!234239 m!4486413))

(assert (=> d!1163182 t!324695))

(declare-fun b_and!299045 () Bool)

(assert (= b_and!299015 (and (=> t!324695 result!283846) b_and!299045)))

(declare-fun t!324697 () Bool)

(declare-fun tb!234241 () Bool)

(assert (=> (and b!3922418 (= (toValue!8938 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))) (toValue!8938 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))))) t!324697) tb!234241))

(declare-fun result!283850 () Bool)

(assert (= result!283850 result!283846))

(assert (=> d!1163182 t!324697))

(declare-fun b_and!299047 () Bool)

(assert (= b_and!299019 (and (=> t!324697 result!283850) b_and!299047)))

(declare-fun tb!234243 () Bool)

(declare-fun t!324699 () Bool)

(assert (=> (and b!3922403 (= (toValue!8938 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))) (toValue!8938 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))))) t!324699) tb!234243))

(declare-fun result!283852 () Bool)

(assert (= result!283852 result!283846))

(assert (=> d!1163182 t!324699))

(declare-fun b_and!299049 () Bool)

(assert (= b_and!299023 (and (=> t!324699 result!283852) b_and!299049)))

(assert (=> d!1163182 m!4486303))

(declare-fun m!4486415 () Bool)

(assert (=> d!1163182 m!4486415))

(assert (=> b!3922429 d!1163182))

(declare-fun d!1163190 () Bool)

(assert (=> d!1163190 (ruleValid!2434 thiss!20629 (rule!9420 (_1!23569 (v!39231 lt!1367557))))))

(declare-fun lt!1367622 () Unit!59815)

(declare-fun choose!23257 (LexerInterface!6075 Rule!12772 List!41731) Unit!59815)

(assert (=> d!1163190 (= lt!1367622 (choose!23257 thiss!20629 (rule!9420 (_1!23569 (v!39231 lt!1367557))) rules!2768))))

(declare-fun contains!8353 (List!41731 Rule!12772) Bool)

(assert (=> d!1163190 (contains!8353 rules!2768 (rule!9420 (_1!23569 (v!39231 lt!1367557))))))

(assert (=> d!1163190 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1514 thiss!20629 (rule!9420 (_1!23569 (v!39231 lt!1367557))) rules!2768) lt!1367622)))

(declare-fun bs!585907 () Bool)

(assert (= bs!585907 d!1163190))

(assert (=> bs!585907 m!4486311))

(declare-fun m!4486435 () Bool)

(assert (=> bs!585907 m!4486435))

(declare-fun m!4486437 () Bool)

(assert (=> bs!585907 m!4486437))

(assert (=> b!3922429 d!1163190))

(declare-fun d!1163198 () Bool)

(declare-fun e!2425798 () Bool)

(assert (=> d!1163198 e!2425798))

(declare-fun res!1586774 () Bool)

(assert (=> d!1163198 (=> res!1586774 e!2425798)))

(declare-fun lt!1367634 () Bool)

(assert (=> d!1163198 (= res!1586774 (not lt!1367634))))

(declare-fun e!2425799 () Bool)

(assert (=> d!1163198 (= lt!1367634 e!2425799)))

(declare-fun res!1586775 () Bool)

(assert (=> d!1163198 (=> res!1586775 e!2425799)))

(assert (=> d!1163198 (= res!1586775 ((_ is Nil!41605) lt!1367556))))

(assert (=> d!1163198 (= (isPrefix!3581 lt!1367556 lt!1367552) lt!1367634)))

(declare-fun b!3922558 () Bool)

(declare-fun e!2425800 () Bool)

(declare-fun tail!6029 (List!41729) List!41729)

(assert (=> b!3922558 (= e!2425800 (isPrefix!3581 (tail!6029 lt!1367556) (tail!6029 lt!1367552)))))

(declare-fun b!3922559 () Bool)

(assert (=> b!3922559 (= e!2425798 (>= (size!31230 lt!1367552) (size!31230 lt!1367556)))))

(declare-fun b!3922556 () Bool)

(assert (=> b!3922556 (= e!2425799 e!2425800)))

(declare-fun res!1586776 () Bool)

(assert (=> b!3922556 (=> (not res!1586776) (not e!2425800))))

(assert (=> b!3922556 (= res!1586776 (not ((_ is Nil!41605) lt!1367552)))))

(declare-fun b!3922557 () Bool)

(declare-fun res!1586777 () Bool)

(assert (=> b!3922557 (=> (not res!1586777) (not e!2425800))))

(declare-fun head!8303 (List!41729) C!22968)

(assert (=> b!3922557 (= res!1586777 (= (head!8303 lt!1367556) (head!8303 lt!1367552)))))

(assert (= (and d!1163198 (not res!1586775)) b!3922556))

(assert (= (and b!3922556 res!1586776) b!3922557))

(assert (= (and b!3922557 res!1586777) b!3922558))

(assert (= (and d!1163198 (not res!1586774)) b!3922559))

(declare-fun m!4486465 () Bool)

(assert (=> b!3922558 m!4486465))

(declare-fun m!4486467 () Bool)

(assert (=> b!3922558 m!4486467))

(assert (=> b!3922558 m!4486465))

(assert (=> b!3922558 m!4486467))

(declare-fun m!4486469 () Bool)

(assert (=> b!3922558 m!4486469))

(declare-fun m!4486471 () Bool)

(assert (=> b!3922559 m!4486471))

(assert (=> b!3922559 m!4486295))

(declare-fun m!4486473 () Bool)

(assert (=> b!3922557 m!4486473))

(declare-fun m!4486475 () Bool)

(assert (=> b!3922557 m!4486475))

(assert (=> b!3922429 d!1163198))

(declare-fun d!1163214 () Bool)

(declare-fun lt!1367640 () BalanceConc!24988)

(assert (=> d!1163214 (= (list!15465 lt!1367640) (originalCharacters!7086 (_1!23569 (v!39231 lt!1367557))))))

(assert (=> d!1163214 (= lt!1367640 (dynLambda!17857 (toChars!8797 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557))))) (value!205485 (_1!23569 (v!39231 lt!1367557)))))))

(assert (=> d!1163214 (= (charsOf!4310 (_1!23569 (v!39231 lt!1367557))) lt!1367640)))

(declare-fun b_lambda!114831 () Bool)

(assert (=> (not b_lambda!114831) (not d!1163214)))

(declare-fun t!324701 () Bool)

(declare-fun tb!234245 () Bool)

(assert (=> (and b!3922410 (= (toChars!8797 (transformation!6486 (h!47027 rules!2768))) (toChars!8797 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))))) t!324701) tb!234245))

(declare-fun b!3922566 () Bool)

(declare-fun e!2425804 () Bool)

(declare-fun tp!1194079 () Bool)

(assert (=> b!3922566 (= e!2425804 (and (inv!55805 (c!681621 (dynLambda!17857 (toChars!8797 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557))))) (value!205485 (_1!23569 (v!39231 lt!1367557)))))) tp!1194079))))

(declare-fun result!283854 () Bool)

(assert (=> tb!234245 (= result!283854 (and (inv!55806 (dynLambda!17857 (toChars!8797 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557))))) (value!205485 (_1!23569 (v!39231 lt!1367557))))) e!2425804))))

(assert (= tb!234245 b!3922566))

(declare-fun m!4486477 () Bool)

(assert (=> b!3922566 m!4486477))

(declare-fun m!4486479 () Bool)

(assert (=> tb!234245 m!4486479))

(assert (=> d!1163214 t!324701))

(declare-fun b_and!299051 () Bool)

(assert (= b_and!299027 (and (=> t!324701 result!283854) b_and!299051)))

(declare-fun t!324703 () Bool)

(declare-fun tb!234247 () Bool)

(assert (=> (and b!3922418 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))) (toChars!8797 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))))) t!324703) tb!234247))

(declare-fun result!283856 () Bool)

(assert (= result!283856 result!283854))

(assert (=> d!1163214 t!324703))

(declare-fun b_and!299053 () Bool)

(assert (= b_and!299029 (and (=> t!324703 result!283856) b_and!299053)))

(declare-fun tb!234249 () Bool)

(declare-fun t!324705 () Bool)

(assert (=> (and b!3922403 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))) (toChars!8797 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))))) t!324705) tb!234249))

(declare-fun result!283858 () Bool)

(assert (= result!283858 result!283854))

(assert (=> d!1163214 t!324705))

(declare-fun b_and!299055 () Bool)

(assert (= b_and!299031 (and (=> t!324705 result!283858) b_and!299055)))

(declare-fun m!4486481 () Bool)

(assert (=> d!1163214 m!4486481))

(declare-fun m!4486483 () Bool)

(assert (=> d!1163214 m!4486483))

(assert (=> b!3922429 d!1163214))

(declare-fun d!1163216 () Bool)

(declare-fun lt!1367643 () List!41729)

(assert (=> d!1163216 (= (++!10730 lt!1367556 lt!1367643) lt!1367563)))

(declare-fun e!2425807 () List!41729)

(assert (=> d!1163216 (= lt!1367643 e!2425807)))

(declare-fun c!681656 () Bool)

(assert (=> d!1163216 (= c!681656 ((_ is Cons!41605) lt!1367556))))

(assert (=> d!1163216 (>= (size!31230 lt!1367563) (size!31230 lt!1367556))))

(assert (=> d!1163216 (= (getSuffix!2036 lt!1367563 lt!1367556) lt!1367643)))

(declare-fun b!3922571 () Bool)

(assert (=> b!3922571 (= e!2425807 (getSuffix!2036 (tail!6029 lt!1367563) (t!324672 lt!1367556)))))

(declare-fun b!3922572 () Bool)

(assert (=> b!3922572 (= e!2425807 lt!1367563)))

(assert (= (and d!1163216 c!681656) b!3922571))

(assert (= (and d!1163216 (not c!681656)) b!3922572))

(declare-fun m!4486485 () Bool)

(assert (=> d!1163216 m!4486485))

(assert (=> d!1163216 m!4486247))

(assert (=> d!1163216 m!4486295))

(declare-fun m!4486487 () Bool)

(assert (=> b!3922571 m!4486487))

(assert (=> b!3922571 m!4486487))

(declare-fun m!4486489 () Bool)

(assert (=> b!3922571 m!4486489))

(assert (=> b!3922429 d!1163216))

(declare-fun d!1163218 () Bool)

(assert (=> d!1163218 (= (_2!23569 (v!39231 lt!1367557)) lt!1367559)))

(declare-fun lt!1367646 () Unit!59815)

(declare-fun choose!23259 (List!41729 List!41729 List!41729 List!41729 List!41729) Unit!59815)

(assert (=> d!1163218 (= lt!1367646 (choose!23259 lt!1367556 (_2!23569 (v!39231 lt!1367557)) lt!1367556 lt!1367559 lt!1367563))))

(assert (=> d!1163218 (isPrefix!3581 lt!1367556 lt!1367563)))

(assert (=> d!1163218 (= (lemmaSamePrefixThenSameSuffix!1802 lt!1367556 (_2!23569 (v!39231 lt!1367557)) lt!1367556 lt!1367559 lt!1367563) lt!1367646)))

(declare-fun bs!585909 () Bool)

(assert (= bs!585909 d!1163218))

(declare-fun m!4486491 () Bool)

(assert (=> bs!585909 m!4486491))

(declare-fun m!4486493 () Bool)

(assert (=> bs!585909 m!4486493))

(assert (=> b!3922429 d!1163218))

(declare-fun d!1163220 () Bool)

(declare-fun lt!1367647 () Int)

(assert (=> d!1163220 (>= lt!1367647 0)))

(declare-fun e!2425808 () Int)

(assert (=> d!1163220 (= lt!1367647 e!2425808)))

(declare-fun c!681657 () Bool)

(assert (=> d!1163220 (= c!681657 ((_ is Nil!41605) lt!1367556))))

(assert (=> d!1163220 (= (size!31230 lt!1367556) lt!1367647)))

(declare-fun b!3922573 () Bool)

(assert (=> b!3922573 (= e!2425808 0)))

(declare-fun b!3922574 () Bool)

(assert (=> b!3922574 (= e!2425808 (+ 1 (size!31230 (t!324672 lt!1367556))))))

(assert (= (and d!1163220 c!681657) b!3922573))

(assert (= (and d!1163220 (not c!681657)) b!3922574))

(declare-fun m!4486495 () Bool)

(assert (=> b!3922574 m!4486495))

(assert (=> b!3922429 d!1163220))

(declare-fun b!3922648 () Bool)

(declare-fun e!2425848 () Bool)

(declare-fun lt!1367681 () tuple2!40872)

(assert (=> b!3922648 (= e!2425848 (= (_2!23570 lt!1367681) (_2!23569 (v!39231 lt!1367557))))))

(declare-fun b!3922649 () Bool)

(declare-fun e!2425846 () Bool)

(assert (=> b!3922649 (= e!2425848 e!2425846)))

(declare-fun res!1586816 () Bool)

(assert (=> b!3922649 (= res!1586816 (< (size!31230 (_2!23570 lt!1367681)) (size!31230 (_2!23569 (v!39231 lt!1367557)))))))

(assert (=> b!3922649 (=> (not res!1586816) (not e!2425846))))

(declare-fun b!3922650 () Bool)

(declare-fun e!2425847 () tuple2!40872)

(assert (=> b!3922650 (= e!2425847 (tuple2!40873 Nil!41608 (_2!23569 (v!39231 lt!1367557))))))

(declare-fun b!3922651 () Bool)

(declare-fun lt!1367683 () Option!8906)

(declare-fun lt!1367682 () tuple2!40872)

(assert (=> b!3922651 (= e!2425847 (tuple2!40873 (Cons!41608 (_1!23569 (v!39231 lt!1367683)) (_1!23570 lt!1367682)) (_2!23570 lt!1367682)))))

(assert (=> b!3922651 (= lt!1367682 (lexList!1843 thiss!20629 rules!2768 (_2!23569 (v!39231 lt!1367683))))))

(declare-fun d!1163222 () Bool)

(assert (=> d!1163222 e!2425848))

(declare-fun c!681675 () Bool)

(declare-fun size!31232 (List!41732) Int)

(assert (=> d!1163222 (= c!681675 (> (size!31232 (_1!23570 lt!1367681)) 0))))

(assert (=> d!1163222 (= lt!1367681 e!2425847)))

(declare-fun c!681676 () Bool)

(assert (=> d!1163222 (= c!681676 ((_ is Some!8905) lt!1367683))))

(assert (=> d!1163222 (= lt!1367683 (maxPrefix!3379 thiss!20629 rules!2768 (_2!23569 (v!39231 lt!1367557))))))

(assert (=> d!1163222 (= (lexList!1843 thiss!20629 rules!2768 (_2!23569 (v!39231 lt!1367557))) lt!1367681)))

(declare-fun b!3922652 () Bool)

(assert (=> b!3922652 (= e!2425846 (not (isEmpty!24778 (_1!23570 lt!1367681))))))

(assert (= (and d!1163222 c!681676) b!3922651))

(assert (= (and d!1163222 (not c!681676)) b!3922650))

(assert (= (and d!1163222 c!681675) b!3922649))

(assert (= (and d!1163222 (not c!681675)) b!3922648))

(assert (= (and b!3922649 res!1586816) b!3922652))

(declare-fun m!4486583 () Bool)

(assert (=> b!3922649 m!4486583))

(assert (=> b!3922649 m!4486269))

(declare-fun m!4486585 () Bool)

(assert (=> b!3922651 m!4486585))

(declare-fun m!4486587 () Bool)

(assert (=> d!1163222 m!4486587))

(declare-fun m!4486589 () Bool)

(assert (=> d!1163222 m!4486589))

(declare-fun m!4486591 () Bool)

(assert (=> b!3922652 m!4486591))

(assert (=> b!3922429 d!1163222))

(declare-fun d!1163248 () Bool)

(declare-fun res!1586821 () Bool)

(declare-fun e!2425851 () Bool)

(assert (=> d!1163248 (=> (not res!1586821) (not e!2425851))))

(declare-fun validRegex!5188 (Regex!11391) Bool)

(assert (=> d!1163248 (= res!1586821 (validRegex!5188 (regex!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557))))))))

(assert (=> d!1163248 (= (ruleValid!2434 thiss!20629 (rule!9420 (_1!23569 (v!39231 lt!1367557)))) e!2425851)))

(declare-fun b!3922657 () Bool)

(declare-fun res!1586822 () Bool)

(assert (=> b!3922657 (=> (not res!1586822) (not e!2425851))))

(declare-fun nullable!3989 (Regex!11391) Bool)

(assert (=> b!3922657 (= res!1586822 (not (nullable!3989 (regex!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))))))))

(declare-fun b!3922658 () Bool)

(assert (=> b!3922658 (= e!2425851 (not (= (tag!7346 (rule!9420 (_1!23569 (v!39231 lt!1367557)))) (String!47299 ""))))))

(assert (= (and d!1163248 res!1586821) b!3922657))

(assert (= (and b!3922657 res!1586822) b!3922658))

(declare-fun m!4486595 () Bool)

(assert (=> d!1163248 m!4486595))

(declare-fun m!4486597 () Bool)

(assert (=> b!3922657 m!4486597))

(assert (=> b!3922429 d!1163248))

(declare-fun d!1163254 () Bool)

(declare-fun list!15467 (Conc!12697) List!41729)

(assert (=> d!1163254 (= (list!15465 (charsOf!4310 (_1!23569 (v!39231 lt!1367557)))) (list!15467 (c!681621 (charsOf!4310 (_1!23569 (v!39231 lt!1367557))))))))

(declare-fun bs!585915 () Bool)

(assert (= bs!585915 d!1163254))

(declare-fun m!4486603 () Bool)

(assert (=> bs!585915 m!4486603))

(assert (=> b!3922429 d!1163254))

(declare-fun b!3922663 () Bool)

(declare-fun e!2425857 () Bool)

(declare-fun e!2425856 () Bool)

(assert (=> b!3922663 (= e!2425857 e!2425856)))

(declare-fun c!681677 () Bool)

(assert (=> b!3922663 (= c!681677 ((_ is IntegerValue!20149) (value!205485 (h!47028 suffixTokens!72))))))

(declare-fun b!3922664 () Bool)

(assert (=> b!3922664 (= e!2425856 (inv!17 (value!205485 (h!47028 suffixTokens!72))))))

(declare-fun b!3922665 () Bool)

(assert (=> b!3922665 (= e!2425857 (inv!16 (value!205485 (h!47028 suffixTokens!72))))))

(declare-fun b!3922666 () Bool)

(declare-fun res!1586827 () Bool)

(declare-fun e!2425858 () Bool)

(assert (=> b!3922666 (=> res!1586827 e!2425858)))

(assert (=> b!3922666 (= res!1586827 (not ((_ is IntegerValue!20150) (value!205485 (h!47028 suffixTokens!72)))))))

(assert (=> b!3922666 (= e!2425856 e!2425858)))

(declare-fun d!1163262 () Bool)

(declare-fun c!681678 () Bool)

(assert (=> d!1163262 (= c!681678 ((_ is IntegerValue!20148) (value!205485 (h!47028 suffixTokens!72))))))

(assert (=> d!1163262 (= (inv!21 (value!205485 (h!47028 suffixTokens!72))) e!2425857)))

(declare-fun b!3922667 () Bool)

(assert (=> b!3922667 (= e!2425858 (inv!15 (value!205485 (h!47028 suffixTokens!72))))))

(assert (= (and d!1163262 c!681678) b!3922665))

(assert (= (and d!1163262 (not c!681678)) b!3922663))

(assert (= (and b!3922663 c!681677) b!3922664))

(assert (= (and b!3922663 (not c!681677)) b!3922666))

(assert (= (and b!3922666 (not res!1586827)) b!3922667))

(declare-fun m!4486609 () Bool)

(assert (=> b!3922664 m!4486609))

(declare-fun m!4486611 () Bool)

(assert (=> b!3922665 m!4486611))

(declare-fun m!4486613 () Bool)

(assert (=> b!3922667 m!4486613))

(assert (=> b!3922409 d!1163262))

(declare-fun d!1163266 () Bool)

(declare-fun lt!1367687 () Int)

(assert (=> d!1163266 (>= lt!1367687 0)))

(declare-fun e!2425859 () Int)

(assert (=> d!1163266 (= lt!1367687 e!2425859)))

(declare-fun c!681679 () Bool)

(assert (=> d!1163266 (= c!681679 ((_ is Nil!41605) lt!1367563))))

(assert (=> d!1163266 (= (size!31230 lt!1367563) lt!1367687)))

(declare-fun b!3922668 () Bool)

(assert (=> b!3922668 (= e!2425859 0)))

(declare-fun b!3922669 () Bool)

(assert (=> b!3922669 (= e!2425859 (+ 1 (size!31230 (t!324672 lt!1367563))))))

(assert (= (and d!1163266 c!681679) b!3922668))

(assert (= (and d!1163266 (not c!681679)) b!3922669))

(declare-fun m!4486615 () Bool)

(assert (=> b!3922669 m!4486615))

(assert (=> b!3922431 d!1163266))

(declare-fun b!3922705 () Bool)

(declare-fun res!1586853 () Bool)

(declare-fun e!2425879 () Bool)

(assert (=> b!3922705 (=> (not res!1586853) (not e!2425879))))

(declare-fun lt!1367712 () Option!8906)

(assert (=> b!3922705 (= res!1586853 (= (rule!9420 (_1!23569 (get!13749 lt!1367712))) (rule!9420 (_1!23569 (v!39231 lt!1367557)))))))

(declare-fun b!3922706 () Bool)

(declare-fun res!1586854 () Bool)

(assert (=> b!3922706 (=> (not res!1586854) (not e!2425879))))

(assert (=> b!3922706 (= res!1586854 (= (value!205485 (_1!23569 (get!13749 lt!1367712))) (apply!9725 (transformation!6486 (rule!9420 (_1!23569 (get!13749 lt!1367712)))) (seqFromList!4753 (originalCharacters!7086 (_1!23569 (get!13749 lt!1367712)))))))))

(declare-fun b!3922707 () Bool)

(assert (=> b!3922707 (= e!2425879 (= (size!31229 (_1!23569 (get!13749 lt!1367712))) (size!31230 (originalCharacters!7086 (_1!23569 (get!13749 lt!1367712))))))))

(declare-fun b!3922708 () Bool)

(declare-fun e!2425877 () Option!8906)

(declare-datatypes ((tuple2!40874 0))(
  ( (tuple2!40875 (_1!23571 List!41729) (_2!23571 List!41729)) )
))
(declare-fun lt!1367713 () tuple2!40874)

(declare-fun size!31233 (BalanceConc!24988) Int)

(assert (=> b!3922708 (= e!2425877 (Some!8905 (tuple2!40871 (Token!12111 (apply!9725 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))) (seqFromList!4753 (_1!23571 lt!1367713))) (rule!9420 (_1!23569 (v!39231 lt!1367557))) (size!31233 (seqFromList!4753 (_1!23571 lt!1367713))) (_1!23571 lt!1367713)) (_2!23571 lt!1367713))))))

(declare-fun lt!1367709 () Unit!59815)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1222 (Regex!11391 List!41729) Unit!59815)

(assert (=> b!3922708 (= lt!1367709 (longestMatchIsAcceptedByMatchOrIsEmpty!1222 (regex!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))) lt!1367563))))

(declare-fun res!1586855 () Bool)

(declare-fun findLongestMatchInner!1249 (Regex!11391 List!41729 Int List!41729 List!41729 Int) tuple2!40874)

(assert (=> b!3922708 (= res!1586855 (isEmpty!24780 (_1!23571 (findLongestMatchInner!1249 (regex!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))) Nil!41605 (size!31230 Nil!41605) lt!1367563 lt!1367563 (size!31230 lt!1367563)))))))

(declare-fun e!2425880 () Bool)

(assert (=> b!3922708 (=> res!1586855 e!2425880)))

(assert (=> b!3922708 e!2425880))

(declare-fun lt!1367711 () Unit!59815)

(assert (=> b!3922708 (= lt!1367711 lt!1367709)))

(declare-fun lt!1367710 () Unit!59815)

(declare-fun lemmaSemiInverse!1755 (TokenValueInjection!12860 BalanceConc!24988) Unit!59815)

(assert (=> b!3922708 (= lt!1367710 (lemmaSemiInverse!1755 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))) (seqFromList!4753 (_1!23571 lt!1367713))))))

(declare-fun b!3922709 () Bool)

(declare-fun res!1586852 () Bool)

(assert (=> b!3922709 (=> (not res!1586852) (not e!2425879))))

(assert (=> b!3922709 (= res!1586852 (= (++!10730 (list!15465 (charsOf!4310 (_1!23569 (get!13749 lt!1367712)))) (_2!23569 (get!13749 lt!1367712))) lt!1367563))))

(declare-fun d!1163268 () Bool)

(declare-fun e!2425878 () Bool)

(assert (=> d!1163268 e!2425878))

(declare-fun res!1586849 () Bool)

(assert (=> d!1163268 (=> res!1586849 e!2425878)))

(declare-fun isEmpty!24782 (Option!8906) Bool)

(assert (=> d!1163268 (= res!1586849 (isEmpty!24782 lt!1367712))))

(assert (=> d!1163268 (= lt!1367712 e!2425877)))

(declare-fun c!681687 () Bool)

(assert (=> d!1163268 (= c!681687 (isEmpty!24780 (_1!23571 lt!1367713)))))

(declare-fun findLongestMatch!1162 (Regex!11391 List!41729) tuple2!40874)

(assert (=> d!1163268 (= lt!1367713 (findLongestMatch!1162 (regex!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))) lt!1367563))))

(assert (=> d!1163268 (ruleValid!2434 thiss!20629 (rule!9420 (_1!23569 (v!39231 lt!1367557))))))

(assert (=> d!1163268 (= (maxPrefixOneRule!2449 thiss!20629 (rule!9420 (_1!23569 (v!39231 lt!1367557))) lt!1367563) lt!1367712)))

(declare-fun b!3922710 () Bool)

(declare-fun matchR!5470 (Regex!11391 List!41729) Bool)

(assert (=> b!3922710 (= e!2425880 (matchR!5470 (regex!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))) (_1!23571 (findLongestMatchInner!1249 (regex!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))) Nil!41605 (size!31230 Nil!41605) lt!1367563 lt!1367563 (size!31230 lt!1367563)))))))

(declare-fun b!3922711 () Bool)

(assert (=> b!3922711 (= e!2425878 e!2425879)))

(declare-fun res!1586850 () Bool)

(assert (=> b!3922711 (=> (not res!1586850) (not e!2425879))))

(assert (=> b!3922711 (= res!1586850 (matchR!5470 (regex!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))) (list!15465 (charsOf!4310 (_1!23569 (get!13749 lt!1367712))))))))

(declare-fun b!3922712 () Bool)

(assert (=> b!3922712 (= e!2425877 None!8905)))

(declare-fun b!3922713 () Bool)

(declare-fun res!1586851 () Bool)

(assert (=> b!3922713 (=> (not res!1586851) (not e!2425879))))

(assert (=> b!3922713 (= res!1586851 (< (size!31230 (_2!23569 (get!13749 lt!1367712))) (size!31230 lt!1367563)))))

(assert (= (and d!1163268 c!681687) b!3922712))

(assert (= (and d!1163268 (not c!681687)) b!3922708))

(assert (= (and b!3922708 (not res!1586855)) b!3922710))

(assert (= (and d!1163268 (not res!1586849)) b!3922711))

(assert (= (and b!3922711 res!1586850) b!3922709))

(assert (= (and b!3922709 res!1586852) b!3922713))

(assert (= (and b!3922713 res!1586851) b!3922705))

(assert (= (and b!3922705 res!1586853) b!3922706))

(assert (= (and b!3922706 res!1586854) b!3922707))

(declare-fun m!4486643 () Bool)

(assert (=> b!3922711 m!4486643))

(declare-fun m!4486645 () Bool)

(assert (=> b!3922711 m!4486645))

(assert (=> b!3922711 m!4486645))

(declare-fun m!4486647 () Bool)

(assert (=> b!3922711 m!4486647))

(assert (=> b!3922711 m!4486647))

(declare-fun m!4486649 () Bool)

(assert (=> b!3922711 m!4486649))

(assert (=> b!3922706 m!4486643))

(declare-fun m!4486651 () Bool)

(assert (=> b!3922706 m!4486651))

(assert (=> b!3922706 m!4486651))

(declare-fun m!4486653 () Bool)

(assert (=> b!3922706 m!4486653))

(declare-fun m!4486655 () Bool)

(assert (=> b!3922710 m!4486655))

(assert (=> b!3922710 m!4486247))

(assert (=> b!3922710 m!4486655))

(assert (=> b!3922710 m!4486247))

(declare-fun m!4486657 () Bool)

(assert (=> b!3922710 m!4486657))

(declare-fun m!4486659 () Bool)

(assert (=> b!3922710 m!4486659))

(assert (=> b!3922707 m!4486643))

(declare-fun m!4486661 () Bool)

(assert (=> b!3922707 m!4486661))

(declare-fun m!4486663 () Bool)

(assert (=> d!1163268 m!4486663))

(declare-fun m!4486665 () Bool)

(assert (=> d!1163268 m!4486665))

(declare-fun m!4486667 () Bool)

(assert (=> d!1163268 m!4486667))

(assert (=> d!1163268 m!4486311))

(declare-fun m!4486669 () Bool)

(assert (=> b!3922708 m!4486669))

(assert (=> b!3922708 m!4486247))

(declare-fun m!4486671 () Bool)

(assert (=> b!3922708 m!4486671))

(declare-fun m!4486673 () Bool)

(assert (=> b!3922708 m!4486673))

(assert (=> b!3922708 m!4486655))

(assert (=> b!3922708 m!4486671))

(declare-fun m!4486675 () Bool)

(assert (=> b!3922708 m!4486675))

(assert (=> b!3922708 m!4486655))

(assert (=> b!3922708 m!4486247))

(assert (=> b!3922708 m!4486657))

(assert (=> b!3922708 m!4486671))

(declare-fun m!4486677 () Bool)

(assert (=> b!3922708 m!4486677))

(assert (=> b!3922708 m!4486671))

(declare-fun m!4486679 () Bool)

(assert (=> b!3922708 m!4486679))

(assert (=> b!3922709 m!4486643))

(assert (=> b!3922709 m!4486645))

(assert (=> b!3922709 m!4486645))

(assert (=> b!3922709 m!4486647))

(assert (=> b!3922709 m!4486647))

(declare-fun m!4486681 () Bool)

(assert (=> b!3922709 m!4486681))

(assert (=> b!3922705 m!4486643))

(assert (=> b!3922713 m!4486643))

(declare-fun m!4486683 () Bool)

(assert (=> b!3922713 m!4486683))

(assert (=> b!3922713 m!4486247))

(assert (=> b!3922431 d!1163268))

(declare-fun d!1163286 () Bool)

(declare-fun lt!1367714 () Int)

(assert (=> d!1163286 (>= lt!1367714 0)))

(declare-fun e!2425881 () Int)

(assert (=> d!1163286 (= lt!1367714 e!2425881)))

(declare-fun c!681688 () Bool)

(assert (=> d!1163286 (= c!681688 ((_ is Nil!41605) (_2!23569 lt!1367553)))))

(assert (=> d!1163286 (= (size!31230 (_2!23569 lt!1367553)) lt!1367714)))

(declare-fun b!3922714 () Bool)

(assert (=> b!3922714 (= e!2425881 0)))

(declare-fun b!3922715 () Bool)

(assert (=> b!3922715 (= e!2425881 (+ 1 (size!31230 (t!324672 (_2!23569 lt!1367553)))))))

(assert (= (and d!1163286 c!681688) b!3922714))

(assert (= (and d!1163286 (not c!681688)) b!3922715))

(declare-fun m!4486685 () Bool)

(assert (=> b!3922715 m!4486685))

(assert (=> b!3922431 d!1163286))

(declare-fun d!1163288 () Bool)

(assert (=> d!1163288 (= (get!13749 lt!1367557) (v!39231 lt!1367557))))

(assert (=> b!3922431 d!1163288))

(declare-fun d!1163290 () Bool)

(assert (=> d!1163290 (= (maxPrefixOneRule!2449 thiss!20629 (rule!9420 (_1!23569 (v!39231 lt!1367557))) lt!1367563) (Some!8905 (tuple2!40871 (Token!12111 (apply!9725 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))) (seqFromList!4753 lt!1367556)) (rule!9420 (_1!23569 (v!39231 lt!1367557))) (size!31230 lt!1367556) lt!1367556) (_2!23569 (v!39231 lt!1367557)))))))

(declare-fun lt!1367727 () Unit!59815)

(declare-fun choose!23264 (LexerInterface!6075 List!41731 List!41729 List!41729 List!41729 Rule!12772) Unit!59815)

(assert (=> d!1163290 (= lt!1367727 (choose!23264 thiss!20629 rules!2768 lt!1367556 lt!1367563 (_2!23569 (v!39231 lt!1367557)) (rule!9420 (_1!23569 (v!39231 lt!1367557)))))))

(assert (=> d!1163290 (not (isEmpty!24779 rules!2768))))

(assert (=> d!1163290 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1317 thiss!20629 rules!2768 lt!1367556 lt!1367563 (_2!23569 (v!39231 lt!1367557)) (rule!9420 (_1!23569 (v!39231 lt!1367557)))) lt!1367727)))

(declare-fun bs!585918 () Bool)

(assert (= bs!585918 d!1163290))

(assert (=> bs!585918 m!4486227))

(assert (=> bs!585918 m!4486303))

(assert (=> bs!585918 m!4486303))

(assert (=> bs!585918 m!4486321))

(assert (=> bs!585918 m!4486295))

(assert (=> bs!585918 m!4486253))

(declare-fun m!4486687 () Bool)

(assert (=> bs!585918 m!4486687))

(assert (=> b!3922431 d!1163290))

(declare-fun d!1163292 () Bool)

(declare-fun lt!1367733 () Int)

(assert (=> d!1163292 (>= lt!1367733 0)))

(declare-fun e!2425894 () Int)

(assert (=> d!1163292 (= lt!1367733 e!2425894)))

(declare-fun c!681692 () Bool)

(assert (=> d!1163292 (= c!681692 ((_ is Nil!41605) suffix!1176))))

(assert (=> d!1163292 (= (size!31230 suffix!1176) lt!1367733)))

(declare-fun b!3922743 () Bool)

(assert (=> b!3922743 (= e!2425894 0)))

(declare-fun b!3922744 () Bool)

(assert (=> b!3922744 (= e!2425894 (+ 1 (size!31230 (t!324672 suffix!1176))))))

(assert (= (and d!1163292 c!681692) b!3922743))

(assert (= (and d!1163292 (not c!681692)) b!3922744))

(declare-fun m!4486689 () Bool)

(assert (=> b!3922744 m!4486689))

(assert (=> b!3922412 d!1163292))

(declare-fun d!1163294 () Bool)

(declare-fun lt!1367734 () Int)

(assert (=> d!1163294 (>= lt!1367734 0)))

(declare-fun e!2425895 () Int)

(assert (=> d!1163294 (= lt!1367734 e!2425895)))

(declare-fun c!681693 () Bool)

(assert (=> d!1163294 (= c!681693 ((_ is Nil!41605) (_2!23569 (v!39231 lt!1367557))))))

(assert (=> d!1163294 (= (size!31230 (_2!23569 (v!39231 lt!1367557))) lt!1367734)))

(declare-fun b!3922745 () Bool)

(assert (=> b!3922745 (= e!2425895 0)))

(declare-fun b!3922746 () Bool)

(assert (=> b!3922746 (= e!2425895 (+ 1 (size!31230 (t!324672 (_2!23569 (v!39231 lt!1367557))))))))

(assert (= (and d!1163294 c!681693) b!3922745))

(assert (= (and d!1163294 (not c!681693)) b!3922746))

(declare-fun m!4486691 () Bool)

(assert (=> b!3922746 m!4486691))

(assert (=> b!3922412 d!1163294))

(declare-fun d!1163296 () Bool)

(assert (=> d!1163296 (= (head!8301 prefixTokens!80) (h!47028 prefixTokens!80))))

(assert (=> b!3922432 d!1163296))

(declare-fun b!3922854 () Bool)

(declare-fun res!1586909 () Bool)

(declare-fun e!2425970 () Bool)

(assert (=> b!3922854 (=> (not res!1586909) (not e!2425970))))

(declare-fun lt!1367757 () Option!8906)

(assert (=> b!3922854 (= res!1586909 (matchR!5470 (regex!6486 (rule!9420 (_1!23569 (get!13749 lt!1367757)))) (list!15465 (charsOf!4310 (_1!23569 (get!13749 lt!1367757))))))))

(declare-fun b!3922855 () Bool)

(declare-fun res!1586913 () Bool)

(assert (=> b!3922855 (=> (not res!1586913) (not e!2425970))))

(assert (=> b!3922855 (= res!1586913 (= (++!10730 (list!15465 (charsOf!4310 (_1!23569 (get!13749 lt!1367757)))) (_2!23569 (get!13749 lt!1367757))) lt!1367563))))

(declare-fun b!3922856 () Bool)

(declare-fun e!2425969 () Option!8906)

(declare-fun lt!1367759 () Option!8906)

(declare-fun lt!1367758 () Option!8906)

(assert (=> b!3922856 (= e!2425969 (ite (and ((_ is None!8905) lt!1367759) ((_ is None!8905) lt!1367758)) None!8905 (ite ((_ is None!8905) lt!1367758) lt!1367759 (ite ((_ is None!8905) lt!1367759) lt!1367758 (ite (>= (size!31229 (_1!23569 (v!39231 lt!1367759))) (size!31229 (_1!23569 (v!39231 lt!1367758)))) lt!1367759 lt!1367758)))))))

(declare-fun call!284656 () Option!8906)

(assert (=> b!3922856 (= lt!1367759 call!284656)))

(assert (=> b!3922856 (= lt!1367758 (maxPrefix!3379 thiss!20629 (t!324674 rules!2768) lt!1367563))))

(declare-fun d!1163298 () Bool)

(declare-fun e!2425968 () Bool)

(assert (=> d!1163298 e!2425968))

(declare-fun res!1586911 () Bool)

(assert (=> d!1163298 (=> res!1586911 e!2425968)))

(assert (=> d!1163298 (= res!1586911 (isEmpty!24782 lt!1367757))))

(assert (=> d!1163298 (= lt!1367757 e!2425969)))

(declare-fun c!681702 () Bool)

(assert (=> d!1163298 (= c!681702 (and ((_ is Cons!41607) rules!2768) ((_ is Nil!41607) (t!324674 rules!2768))))))

(declare-fun lt!1367760 () Unit!59815)

(declare-fun lt!1367756 () Unit!59815)

(assert (=> d!1163298 (= lt!1367760 lt!1367756)))

(assert (=> d!1163298 (isPrefix!3581 lt!1367563 lt!1367563)))

(declare-fun lemmaIsPrefixRefl!2268 (List!41729 List!41729) Unit!59815)

(assert (=> d!1163298 (= lt!1367756 (lemmaIsPrefixRefl!2268 lt!1367563 lt!1367563))))

(declare-fun rulesValidInductive!2338 (LexerInterface!6075 List!41731) Bool)

(assert (=> d!1163298 (rulesValidInductive!2338 thiss!20629 rules!2768)))

(assert (=> d!1163298 (= (maxPrefix!3379 thiss!20629 rules!2768 lt!1367563) lt!1367757)))

(declare-fun b!3922857 () Bool)

(assert (=> b!3922857 (= e!2425968 e!2425970)))

(declare-fun res!1586907 () Bool)

(assert (=> b!3922857 (=> (not res!1586907) (not e!2425970))))

(declare-fun isDefined!6937 (Option!8906) Bool)

(assert (=> b!3922857 (= res!1586907 (isDefined!6937 lt!1367757))))

(declare-fun b!3922858 () Bool)

(assert (=> b!3922858 (= e!2425970 (contains!8353 rules!2768 (rule!9420 (_1!23569 (get!13749 lt!1367757)))))))

(declare-fun b!3922859 () Bool)

(declare-fun res!1586910 () Bool)

(assert (=> b!3922859 (=> (not res!1586910) (not e!2425970))))

(assert (=> b!3922859 (= res!1586910 (< (size!31230 (_2!23569 (get!13749 lt!1367757))) (size!31230 lt!1367563)))))

(declare-fun b!3922860 () Bool)

(declare-fun res!1586912 () Bool)

(assert (=> b!3922860 (=> (not res!1586912) (not e!2425970))))

(assert (=> b!3922860 (= res!1586912 (= (list!15465 (charsOf!4310 (_1!23569 (get!13749 lt!1367757)))) (originalCharacters!7086 (_1!23569 (get!13749 lt!1367757)))))))

(declare-fun b!3922861 () Bool)

(assert (=> b!3922861 (= e!2425969 call!284656)))

(declare-fun b!3922862 () Bool)

(declare-fun res!1586908 () Bool)

(assert (=> b!3922862 (=> (not res!1586908) (not e!2425970))))

(assert (=> b!3922862 (= res!1586908 (= (value!205485 (_1!23569 (get!13749 lt!1367757))) (apply!9725 (transformation!6486 (rule!9420 (_1!23569 (get!13749 lt!1367757)))) (seqFromList!4753 (originalCharacters!7086 (_1!23569 (get!13749 lt!1367757)))))))))

(declare-fun bm!284651 () Bool)

(assert (=> bm!284651 (= call!284656 (maxPrefixOneRule!2449 thiss!20629 (h!47027 rules!2768) lt!1367563))))

(assert (= (and d!1163298 c!681702) b!3922861))

(assert (= (and d!1163298 (not c!681702)) b!3922856))

(assert (= (or b!3922861 b!3922856) bm!284651))

(assert (= (and d!1163298 (not res!1586911)) b!3922857))

(assert (= (and b!3922857 res!1586907) b!3922860))

(assert (= (and b!3922860 res!1586912) b!3922859))

(assert (= (and b!3922859 res!1586910) b!3922855))

(assert (= (and b!3922855 res!1586913) b!3922862))

(assert (= (and b!3922862 res!1586908) b!3922854))

(assert (= (and b!3922854 res!1586909) b!3922858))

(declare-fun m!4486819 () Bool)

(assert (=> b!3922856 m!4486819))

(declare-fun m!4486821 () Bool)

(assert (=> b!3922854 m!4486821))

(declare-fun m!4486823 () Bool)

(assert (=> b!3922854 m!4486823))

(assert (=> b!3922854 m!4486823))

(declare-fun m!4486825 () Bool)

(assert (=> b!3922854 m!4486825))

(assert (=> b!3922854 m!4486825))

(declare-fun m!4486827 () Bool)

(assert (=> b!3922854 m!4486827))

(assert (=> b!3922855 m!4486821))

(assert (=> b!3922855 m!4486823))

(assert (=> b!3922855 m!4486823))

(assert (=> b!3922855 m!4486825))

(assert (=> b!3922855 m!4486825))

(declare-fun m!4486829 () Bool)

(assert (=> b!3922855 m!4486829))

(declare-fun m!4486831 () Bool)

(assert (=> b!3922857 m!4486831))

(declare-fun m!4486833 () Bool)

(assert (=> bm!284651 m!4486833))

(assert (=> b!3922860 m!4486821))

(assert (=> b!3922860 m!4486823))

(assert (=> b!3922860 m!4486823))

(assert (=> b!3922860 m!4486825))

(assert (=> b!3922862 m!4486821))

(declare-fun m!4486835 () Bool)

(assert (=> b!3922862 m!4486835))

(assert (=> b!3922862 m!4486835))

(declare-fun m!4486837 () Bool)

(assert (=> b!3922862 m!4486837))

(assert (=> b!3922859 m!4486821))

(declare-fun m!4486839 () Bool)

(assert (=> b!3922859 m!4486839))

(assert (=> b!3922859 m!4486247))

(assert (=> b!3922858 m!4486821))

(declare-fun m!4486841 () Bool)

(assert (=> b!3922858 m!4486841))

(declare-fun m!4486843 () Bool)

(assert (=> d!1163298 m!4486843))

(declare-fun m!4486845 () Bool)

(assert (=> d!1163298 m!4486845))

(declare-fun m!4486847 () Bool)

(assert (=> d!1163298 m!4486847))

(declare-fun m!4486849 () Bool)

(assert (=> d!1163298 m!4486849))

(assert (=> b!3922414 d!1163298))

(declare-fun b!3922863 () Bool)

(declare-fun e!2425973 () Bool)

(declare-fun lt!1367761 () tuple2!40872)

(assert (=> b!3922863 (= e!2425973 (= (_2!23570 lt!1367761) (_2!23569 lt!1367553)))))

(declare-fun b!3922864 () Bool)

(declare-fun e!2425971 () Bool)

(assert (=> b!3922864 (= e!2425973 e!2425971)))

(declare-fun res!1586914 () Bool)

(assert (=> b!3922864 (= res!1586914 (< (size!31230 (_2!23570 lt!1367761)) (size!31230 (_2!23569 lt!1367553))))))

(assert (=> b!3922864 (=> (not res!1586914) (not e!2425971))))

(declare-fun b!3922865 () Bool)

(declare-fun e!2425972 () tuple2!40872)

(assert (=> b!3922865 (= e!2425972 (tuple2!40873 Nil!41608 (_2!23569 lt!1367553)))))

(declare-fun b!3922866 () Bool)

(declare-fun lt!1367763 () Option!8906)

(declare-fun lt!1367762 () tuple2!40872)

(assert (=> b!3922866 (= e!2425972 (tuple2!40873 (Cons!41608 (_1!23569 (v!39231 lt!1367763)) (_1!23570 lt!1367762)) (_2!23570 lt!1367762)))))

(assert (=> b!3922866 (= lt!1367762 (lexList!1843 thiss!20629 rules!2768 (_2!23569 (v!39231 lt!1367763))))))

(declare-fun d!1163320 () Bool)

(assert (=> d!1163320 e!2425973))

(declare-fun c!681703 () Bool)

(assert (=> d!1163320 (= c!681703 (> (size!31232 (_1!23570 lt!1367761)) 0))))

(assert (=> d!1163320 (= lt!1367761 e!2425972)))

(declare-fun c!681704 () Bool)

(assert (=> d!1163320 (= c!681704 ((_ is Some!8905) lt!1367763))))

(assert (=> d!1163320 (= lt!1367763 (maxPrefix!3379 thiss!20629 rules!2768 (_2!23569 lt!1367553)))))

(assert (=> d!1163320 (= (lexList!1843 thiss!20629 rules!2768 (_2!23569 lt!1367553)) lt!1367761)))

(declare-fun b!3922867 () Bool)

(assert (=> b!3922867 (= e!2425971 (not (isEmpty!24778 (_1!23570 lt!1367761))))))

(assert (= (and d!1163320 c!681704) b!3922866))

(assert (= (and d!1163320 (not c!681704)) b!3922865))

(assert (= (and d!1163320 c!681703) b!3922864))

(assert (= (and d!1163320 (not c!681703)) b!3922863))

(assert (= (and b!3922864 res!1586914) b!3922867))

(declare-fun m!4486851 () Bool)

(assert (=> b!3922864 m!4486851))

(assert (=> b!3922864 m!4486249))

(declare-fun m!4486853 () Bool)

(assert (=> b!3922866 m!4486853))

(declare-fun m!4486855 () Bool)

(assert (=> d!1163320 m!4486855))

(declare-fun m!4486857 () Bool)

(assert (=> d!1163320 m!4486857))

(declare-fun m!4486859 () Bool)

(assert (=> b!3922867 m!4486859))

(assert (=> bm!284645 d!1163320))

(declare-fun b!3922868 () Bool)

(declare-fun e!2425976 () Bool)

(declare-fun lt!1367764 () tuple2!40872)

(assert (=> b!3922868 (= e!2425976 (= (_2!23570 lt!1367764) suffix!1176))))

(declare-fun b!3922869 () Bool)

(declare-fun e!2425974 () Bool)

(assert (=> b!3922869 (= e!2425976 e!2425974)))

(declare-fun res!1586915 () Bool)

(assert (=> b!3922869 (= res!1586915 (< (size!31230 (_2!23570 lt!1367764)) (size!31230 suffix!1176)))))

(assert (=> b!3922869 (=> (not res!1586915) (not e!2425974))))

(declare-fun b!3922870 () Bool)

(declare-fun e!2425975 () tuple2!40872)

(assert (=> b!3922870 (= e!2425975 (tuple2!40873 Nil!41608 suffix!1176))))

(declare-fun b!3922871 () Bool)

(declare-fun lt!1367766 () Option!8906)

(declare-fun lt!1367765 () tuple2!40872)

(assert (=> b!3922871 (= e!2425975 (tuple2!40873 (Cons!41608 (_1!23569 (v!39231 lt!1367766)) (_1!23570 lt!1367765)) (_2!23570 lt!1367765)))))

(assert (=> b!3922871 (= lt!1367765 (lexList!1843 thiss!20629 rules!2768 (_2!23569 (v!39231 lt!1367766))))))

(declare-fun d!1163322 () Bool)

(assert (=> d!1163322 e!2425976))

(declare-fun c!681705 () Bool)

(assert (=> d!1163322 (= c!681705 (> (size!31232 (_1!23570 lt!1367764)) 0))))

(assert (=> d!1163322 (= lt!1367764 e!2425975)))

(declare-fun c!681706 () Bool)

(assert (=> d!1163322 (= c!681706 ((_ is Some!8905) lt!1367766))))

(assert (=> d!1163322 (= lt!1367766 (maxPrefix!3379 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1163322 (= (lexList!1843 thiss!20629 rules!2768 suffix!1176) lt!1367764)))

(declare-fun b!3922872 () Bool)

(assert (=> b!3922872 (= e!2425974 (not (isEmpty!24778 (_1!23570 lt!1367764))))))

(assert (= (and d!1163322 c!681706) b!3922871))

(assert (= (and d!1163322 (not c!681706)) b!3922870))

(assert (= (and d!1163322 c!681705) b!3922869))

(assert (= (and d!1163322 (not c!681705)) b!3922868))

(assert (= (and b!3922869 res!1586915) b!3922872))

(declare-fun m!4486861 () Bool)

(assert (=> b!3922869 m!4486861))

(assert (=> b!3922869 m!4486267))

(declare-fun m!4486863 () Bool)

(assert (=> b!3922871 m!4486863))

(declare-fun m!4486865 () Bool)

(assert (=> d!1163322 m!4486865))

(declare-fun m!4486867 () Bool)

(assert (=> d!1163322 m!4486867))

(declare-fun m!4486869 () Bool)

(assert (=> b!3922872 m!4486869))

(assert (=> b!3922415 d!1163322))

(declare-fun d!1163324 () Bool)

(assert (=> d!1163324 (isPrefix!3581 prefix!426 (++!10730 prefix!426 suffix!1176))))

(declare-fun lt!1367767 () Unit!59815)

(assert (=> d!1163324 (= lt!1367767 (choose!23256 prefix!426 suffix!1176))))

(assert (=> d!1163324 (= (lemmaConcatTwoListThenFirstIsPrefix!2444 prefix!426 suffix!1176) lt!1367767)))

(declare-fun bs!585920 () Bool)

(assert (= bs!585920 d!1163324))

(assert (=> bs!585920 m!4486243))

(assert (=> bs!585920 m!4486243))

(declare-fun m!4486871 () Bool)

(assert (=> bs!585920 m!4486871))

(declare-fun m!4486873 () Bool)

(assert (=> bs!585920 m!4486873))

(assert (=> b!3922395 d!1163324))

(declare-fun d!1163326 () Bool)

(declare-fun e!2425977 () Bool)

(assert (=> d!1163326 e!2425977))

(declare-fun res!1586916 () Bool)

(assert (=> d!1163326 (=> res!1586916 e!2425977)))

(declare-fun lt!1367768 () Bool)

(assert (=> d!1163326 (= res!1586916 (not lt!1367768))))

(declare-fun e!2425978 () Bool)

(assert (=> d!1163326 (= lt!1367768 e!2425978)))

(declare-fun res!1586917 () Bool)

(assert (=> d!1163326 (=> res!1586917 e!2425978)))

(assert (=> d!1163326 (= res!1586917 ((_ is Nil!41605) prefix!426))))

(assert (=> d!1163326 (= (isPrefix!3581 prefix!426 lt!1367563) lt!1367768)))

(declare-fun b!3922875 () Bool)

(declare-fun e!2425979 () Bool)

(assert (=> b!3922875 (= e!2425979 (isPrefix!3581 (tail!6029 prefix!426) (tail!6029 lt!1367563)))))

(declare-fun b!3922876 () Bool)

(assert (=> b!3922876 (= e!2425977 (>= (size!31230 lt!1367563) (size!31230 prefix!426)))))

(declare-fun b!3922873 () Bool)

(assert (=> b!3922873 (= e!2425978 e!2425979)))

(declare-fun res!1586918 () Bool)

(assert (=> b!3922873 (=> (not res!1586918) (not e!2425979))))

(assert (=> b!3922873 (= res!1586918 (not ((_ is Nil!41605) lt!1367563)))))

(declare-fun b!3922874 () Bool)

(declare-fun res!1586919 () Bool)

(assert (=> b!3922874 (=> (not res!1586919) (not e!2425979))))

(assert (=> b!3922874 (= res!1586919 (= (head!8303 prefix!426) (head!8303 lt!1367563)))))

(assert (= (and d!1163326 (not res!1586917)) b!3922873))

(assert (= (and b!3922873 res!1586918) b!3922874))

(assert (= (and b!3922874 res!1586919) b!3922875))

(assert (= (and d!1163326 (not res!1586916)) b!3922876))

(declare-fun m!4486875 () Bool)

(assert (=> b!3922875 m!4486875))

(assert (=> b!3922875 m!4486487))

(assert (=> b!3922875 m!4486875))

(assert (=> b!3922875 m!4486487))

(declare-fun m!4486877 () Bool)

(assert (=> b!3922875 m!4486877))

(assert (=> b!3922876 m!4486247))

(assert (=> b!3922876 m!4486329))

(declare-fun m!4486879 () Bool)

(assert (=> b!3922874 m!4486879))

(declare-fun m!4486881 () Bool)

(assert (=> b!3922874 m!4486881))

(assert (=> b!3922395 d!1163326))

(declare-fun d!1163328 () Bool)

(assert (=> d!1163328 (= lt!1367556 prefix!426)))

(declare-fun lt!1367771 () Unit!59815)

(declare-fun choose!23266 (List!41729 List!41729 List!41729) Unit!59815)

(assert (=> d!1163328 (= lt!1367771 (choose!23266 lt!1367556 prefix!426 lt!1367563))))

(assert (=> d!1163328 (isPrefix!3581 lt!1367556 lt!1367563)))

(assert (=> d!1163328 (= (lemmaIsPrefixSameLengthThenSameList!777 lt!1367556 prefix!426 lt!1367563) lt!1367771)))

(declare-fun bs!585921 () Bool)

(assert (= bs!585921 d!1163328))

(declare-fun m!4486883 () Bool)

(assert (=> bs!585921 m!4486883))

(assert (=> bs!585921 m!4486493))

(assert (=> b!3922395 d!1163328))

(declare-fun d!1163330 () Bool)

(assert (=> d!1163330 (= (_2!23569 (v!39231 lt!1367557)) suffix!1176)))

(declare-fun lt!1367772 () Unit!59815)

(assert (=> d!1163330 (= lt!1367772 (choose!23259 lt!1367556 (_2!23569 (v!39231 lt!1367557)) prefix!426 suffix!1176 lt!1367563))))

(assert (=> d!1163330 (isPrefix!3581 lt!1367556 lt!1367563)))

(assert (=> d!1163330 (= (lemmaSamePrefixThenSameSuffix!1802 lt!1367556 (_2!23569 (v!39231 lt!1367557)) prefix!426 suffix!1176 lt!1367563) lt!1367772)))

(declare-fun bs!585922 () Bool)

(assert (= bs!585922 d!1163330))

(declare-fun m!4486885 () Bool)

(assert (=> bs!585922 m!4486885))

(assert (=> bs!585922 m!4486493))

(assert (=> b!3922395 d!1163330))

(declare-fun d!1163332 () Bool)

(declare-fun e!2425980 () Bool)

(assert (=> d!1163332 e!2425980))

(declare-fun res!1586920 () Bool)

(assert (=> d!1163332 (=> res!1586920 e!2425980)))

(declare-fun lt!1367773 () Bool)

(assert (=> d!1163332 (= res!1586920 (not lt!1367773))))

(declare-fun e!2425981 () Bool)

(assert (=> d!1163332 (= lt!1367773 e!2425981)))

(declare-fun res!1586921 () Bool)

(assert (=> d!1163332 (=> res!1586921 e!2425981)))

(assert (=> d!1163332 (= res!1586921 ((_ is Nil!41605) lt!1367556))))

(assert (=> d!1163332 (= (isPrefix!3581 lt!1367556 prefix!426) lt!1367773)))

(declare-fun b!3922879 () Bool)

(declare-fun e!2425982 () Bool)

(assert (=> b!3922879 (= e!2425982 (isPrefix!3581 (tail!6029 lt!1367556) (tail!6029 prefix!426)))))

(declare-fun b!3922880 () Bool)

(assert (=> b!3922880 (= e!2425980 (>= (size!31230 prefix!426) (size!31230 lt!1367556)))))

(declare-fun b!3922877 () Bool)

(assert (=> b!3922877 (= e!2425981 e!2425982)))

(declare-fun res!1586922 () Bool)

(assert (=> b!3922877 (=> (not res!1586922) (not e!2425982))))

(assert (=> b!3922877 (= res!1586922 (not ((_ is Nil!41605) prefix!426)))))

(declare-fun b!3922878 () Bool)

(declare-fun res!1586923 () Bool)

(assert (=> b!3922878 (=> (not res!1586923) (not e!2425982))))

(assert (=> b!3922878 (= res!1586923 (= (head!8303 lt!1367556) (head!8303 prefix!426)))))

(assert (= (and d!1163332 (not res!1586921)) b!3922877))

(assert (= (and b!3922877 res!1586922) b!3922878))

(assert (= (and b!3922878 res!1586923) b!3922879))

(assert (= (and d!1163332 (not res!1586920)) b!3922880))

(assert (=> b!3922879 m!4486465))

(assert (=> b!3922879 m!4486875))

(assert (=> b!3922879 m!4486465))

(assert (=> b!3922879 m!4486875))

(declare-fun m!4486887 () Bool)

(assert (=> b!3922879 m!4486887))

(assert (=> b!3922880 m!4486329))

(assert (=> b!3922880 m!4486295))

(assert (=> b!3922878 m!4486473))

(assert (=> b!3922878 m!4486879))

(assert (=> b!3922396 d!1163332))

(declare-fun d!1163334 () Bool)

(assert (=> d!1163334 (isPrefix!3581 lt!1367556 prefix!426)))

(declare-fun lt!1367776 () Unit!59815)

(declare-fun choose!23267 (List!41729 List!41729 List!41729) Unit!59815)

(assert (=> d!1163334 (= lt!1367776 (choose!23267 prefix!426 lt!1367556 lt!1367563))))

(assert (=> d!1163334 (isPrefix!3581 prefix!426 lt!1367563)))

(assert (=> d!1163334 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!259 prefix!426 lt!1367556 lt!1367563) lt!1367776)))

(declare-fun bs!585923 () Bool)

(assert (= bs!585923 d!1163334))

(assert (=> bs!585923 m!4486327))

(declare-fun m!4486889 () Bool)

(assert (=> bs!585923 m!4486889))

(assert (=> bs!585923 m!4486221))

(assert (=> b!3922396 d!1163334))

(assert (=> b!3922396 d!1163324))

(assert (=> b!3922396 d!1163326))

(declare-fun d!1163336 () Bool)

(declare-fun lt!1367777 () Int)

(assert (=> d!1163336 (>= lt!1367777 0)))

(declare-fun e!2425983 () Int)

(assert (=> d!1163336 (= lt!1367777 e!2425983)))

(declare-fun c!681707 () Bool)

(assert (=> d!1163336 (= c!681707 ((_ is Nil!41605) prefix!426))))

(assert (=> d!1163336 (= (size!31230 prefix!426) lt!1367777)))

(declare-fun b!3922881 () Bool)

(assert (=> b!3922881 (= e!2425983 0)))

(declare-fun b!3922882 () Bool)

(assert (=> b!3922882 (= e!2425983 (+ 1 (size!31230 (t!324672 prefix!426))))))

(assert (= (and d!1163336 c!681707) b!3922881))

(assert (= (and d!1163336 (not c!681707)) b!3922882))

(declare-fun m!4486891 () Bool)

(assert (=> b!3922882 m!4486891))

(assert (=> b!3922396 d!1163336))

(declare-fun d!1163338 () Bool)

(declare-fun res!1586926 () Bool)

(declare-fun e!2425986 () Bool)

(assert (=> d!1163338 (=> (not res!1586926) (not e!2425986))))

(declare-fun rulesValid!2523 (LexerInterface!6075 List!41731) Bool)

(assert (=> d!1163338 (= res!1586926 (rulesValid!2523 thiss!20629 rules!2768))))

(assert (=> d!1163338 (= (rulesInvariant!5418 thiss!20629 rules!2768) e!2425986)))

(declare-fun b!3922885 () Bool)

(declare-datatypes ((List!41734 0))(
  ( (Nil!41610) (Cons!41610 (h!47030 String!47298) (t!324773 List!41734)) )
))
(declare-fun noDuplicateTag!2524 (LexerInterface!6075 List!41731 List!41734) Bool)

(assert (=> b!3922885 (= e!2425986 (noDuplicateTag!2524 thiss!20629 rules!2768 Nil!41610))))

(assert (= (and d!1163338 res!1586926) b!3922885))

(declare-fun m!4486893 () Bool)

(assert (=> d!1163338 m!4486893))

(declare-fun m!4486895 () Bool)

(assert (=> b!3922885 m!4486895))

(assert (=> b!3922416 d!1163338))

(declare-fun d!1163340 () Bool)

(declare-fun res!1586927 () Bool)

(declare-fun e!2425987 () Bool)

(assert (=> d!1163340 (=> (not res!1586927) (not e!2425987))))

(assert (=> d!1163340 (= res!1586927 (not (isEmpty!24780 (originalCharacters!7086 (h!47028 prefixTokens!80)))))))

(assert (=> d!1163340 (= (inv!55802 (h!47028 prefixTokens!80)) e!2425987)))

(declare-fun b!3922886 () Bool)

(declare-fun res!1586928 () Bool)

(assert (=> b!3922886 (=> (not res!1586928) (not e!2425987))))

(assert (=> b!3922886 (= res!1586928 (= (originalCharacters!7086 (h!47028 prefixTokens!80)) (list!15465 (dynLambda!17857 (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))) (value!205485 (h!47028 prefixTokens!80))))))))

(declare-fun b!3922887 () Bool)

(assert (=> b!3922887 (= e!2425987 (= (size!31229 (h!47028 prefixTokens!80)) (size!31230 (originalCharacters!7086 (h!47028 prefixTokens!80)))))))

(assert (= (and d!1163340 res!1586927) b!3922886))

(assert (= (and b!3922886 res!1586928) b!3922887))

(declare-fun b_lambda!114841 () Bool)

(assert (=> (not b_lambda!114841) (not b!3922886)))

(declare-fun tb!234287 () Bool)

(declare-fun t!324743 () Bool)

(assert (=> (and b!3922410 (= (toChars!8797 (transformation!6486 (h!47027 rules!2768))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80))))) t!324743) tb!234287))

(declare-fun b!3922888 () Bool)

(declare-fun e!2425988 () Bool)

(declare-fun tp!1194146 () Bool)

(assert (=> b!3922888 (= e!2425988 (and (inv!55805 (c!681621 (dynLambda!17857 (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))) (value!205485 (h!47028 prefixTokens!80))))) tp!1194146))))

(declare-fun result!283904 () Bool)

(assert (=> tb!234287 (= result!283904 (and (inv!55806 (dynLambda!17857 (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))) (value!205485 (h!47028 prefixTokens!80)))) e!2425988))))

(assert (= tb!234287 b!3922888))

(declare-fun m!4486897 () Bool)

(assert (=> b!3922888 m!4486897))

(declare-fun m!4486899 () Bool)

(assert (=> tb!234287 m!4486899))

(assert (=> b!3922886 t!324743))

(declare-fun b_and!299081 () Bool)

(assert (= b_and!299051 (and (=> t!324743 result!283904) b_and!299081)))

(declare-fun t!324745 () Bool)

(declare-fun tb!234289 () Bool)

(assert (=> (and b!3922418 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80))))) t!324745) tb!234289))

(declare-fun result!283906 () Bool)

(assert (= result!283906 result!283904))

(assert (=> b!3922886 t!324745))

(declare-fun b_and!299083 () Bool)

(assert (= b_and!299053 (and (=> t!324745 result!283906) b_and!299083)))

(declare-fun t!324747 () Bool)

(declare-fun tb!234291 () Bool)

(assert (=> (and b!3922403 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80))))) t!324747) tb!234291))

(declare-fun result!283908 () Bool)

(assert (= result!283908 result!283904))

(assert (=> b!3922886 t!324747))

(declare-fun b_and!299085 () Bool)

(assert (= b_and!299055 (and (=> t!324747 result!283908) b_and!299085)))

(declare-fun m!4486901 () Bool)

(assert (=> d!1163340 m!4486901))

(declare-fun m!4486903 () Bool)

(assert (=> b!3922886 m!4486903))

(assert (=> b!3922886 m!4486903))

(declare-fun m!4486905 () Bool)

(assert (=> b!3922886 m!4486905))

(declare-fun m!4486907 () Bool)

(assert (=> b!3922887 m!4486907))

(assert (=> b!3922417 d!1163340))

(declare-fun d!1163342 () Bool)

(assert (=> d!1163342 (not (= (lexList!1843 thiss!20629 rules!2768 (_2!23569 lt!1367553)) (tuple2!40873 (++!10729 lt!1367572 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1367780 () Unit!59815)

(declare-fun choose!23268 (LexerInterface!6075 List!41731 List!41729 List!41729 List!41732 List!41729 List!41732) Unit!59815)

(assert (=> d!1163342 (= lt!1367780 (choose!23268 thiss!20629 rules!2768 suffix!1176 (_2!23569 lt!1367553) suffixTokens!72 suffixResult!91 lt!1367572))))

(assert (=> d!1163342 (not (isEmpty!24779 rules!2768))))

(assert (=> d!1163342 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!86 thiss!20629 rules!2768 suffix!1176 (_2!23569 lt!1367553) suffixTokens!72 suffixResult!91 lt!1367572) lt!1367780)))

(declare-fun bs!585924 () Bool)

(assert (= bs!585924 d!1163342))

(assert (=> bs!585924 m!4486277))

(assert (=> bs!585924 m!4486259))

(declare-fun m!4486909 () Bool)

(assert (=> bs!585924 m!4486909))

(assert (=> bs!585924 m!4486227))

(assert (=> b!3922397 d!1163342))

(declare-fun e!2425994 () Bool)

(declare-fun lt!1367783 () List!41732)

(declare-fun b!3922900 () Bool)

(assert (=> b!3922900 (= e!2425994 (or (not (= suffixTokens!72 Nil!41608)) (= lt!1367783 lt!1367572)))))

(declare-fun b!3922897 () Bool)

(declare-fun e!2425993 () List!41732)

(assert (=> b!3922897 (= e!2425993 suffixTokens!72)))

(declare-fun d!1163344 () Bool)

(assert (=> d!1163344 e!2425994))

(declare-fun res!1586933 () Bool)

(assert (=> d!1163344 (=> (not res!1586933) (not e!2425994))))

(declare-fun content!6264 (List!41732) (InoxSet Token!12110))

(assert (=> d!1163344 (= res!1586933 (= (content!6264 lt!1367783) ((_ map or) (content!6264 lt!1367572) (content!6264 suffixTokens!72))))))

(assert (=> d!1163344 (= lt!1367783 e!2425993)))

(declare-fun c!681710 () Bool)

(assert (=> d!1163344 (= c!681710 ((_ is Nil!41608) lt!1367572))))

(assert (=> d!1163344 (= (++!10729 lt!1367572 suffixTokens!72) lt!1367783)))

(declare-fun b!3922898 () Bool)

(assert (=> b!3922898 (= e!2425993 (Cons!41608 (h!47028 lt!1367572) (++!10729 (t!324675 lt!1367572) suffixTokens!72)))))

(declare-fun b!3922899 () Bool)

(declare-fun res!1586934 () Bool)

(assert (=> b!3922899 (=> (not res!1586934) (not e!2425994))))

(assert (=> b!3922899 (= res!1586934 (= (size!31232 lt!1367783) (+ (size!31232 lt!1367572) (size!31232 suffixTokens!72))))))

(assert (= (and d!1163344 c!681710) b!3922897))

(assert (= (and d!1163344 (not c!681710)) b!3922898))

(assert (= (and d!1163344 res!1586933) b!3922899))

(assert (= (and b!3922899 res!1586934) b!3922900))

(declare-fun m!4486911 () Bool)

(assert (=> d!1163344 m!4486911))

(declare-fun m!4486913 () Bool)

(assert (=> d!1163344 m!4486913))

(declare-fun m!4486915 () Bool)

(assert (=> d!1163344 m!4486915))

(declare-fun m!4486917 () Bool)

(assert (=> b!3922898 m!4486917))

(declare-fun m!4486919 () Bool)

(assert (=> b!3922899 m!4486919))

(declare-fun m!4486921 () Bool)

(assert (=> b!3922899 m!4486921))

(declare-fun m!4486923 () Bool)

(assert (=> b!3922899 m!4486923))

(assert (=> b!3922397 d!1163344))

(declare-fun d!1163346 () Bool)

(assert (=> d!1163346 (= (inv!55798 (tag!7346 (rule!9420 (h!47028 suffixTokens!72)))) (= (mod (str.len (value!205484 (tag!7346 (rule!9420 (h!47028 suffixTokens!72))))) 2) 0))))

(assert (=> b!3922419 d!1163346))

(declare-fun d!1163348 () Bool)

(declare-fun res!1586937 () Bool)

(declare-fun e!2425997 () Bool)

(assert (=> d!1163348 (=> (not res!1586937) (not e!2425997))))

(declare-fun semiInverseModEq!2789 (Int Int) Bool)

(assert (=> d!1163348 (= res!1586937 (semiInverseModEq!2789 (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))) (toValue!8938 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72))))))))

(assert (=> d!1163348 (= (inv!55801 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))) e!2425997)))

(declare-fun b!3922903 () Bool)

(declare-fun equivClasses!2688 (Int Int) Bool)

(assert (=> b!3922903 (= e!2425997 (equivClasses!2688 (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))) (toValue!8938 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72))))))))

(assert (= (and d!1163348 res!1586937) b!3922903))

(declare-fun m!4486925 () Bool)

(assert (=> d!1163348 m!4486925))

(declare-fun m!4486927 () Bool)

(assert (=> b!3922903 m!4486927))

(assert (=> b!3922419 d!1163348))

(declare-fun d!1163350 () Bool)

(assert (=> d!1163350 (= (isEmpty!24778 prefixTokens!80) ((_ is Nil!41608) prefixTokens!80))))

(assert (=> b!3922399 d!1163350))

(declare-fun d!1163352 () Bool)

(assert (=> d!1163352 (= (inv!55798 (tag!7346 (h!47027 rules!2768))) (= (mod (str.len (value!205484 (tag!7346 (h!47027 rules!2768)))) 2) 0))))

(assert (=> b!3922398 d!1163352))

(declare-fun d!1163354 () Bool)

(declare-fun res!1586938 () Bool)

(declare-fun e!2425998 () Bool)

(assert (=> d!1163354 (=> (not res!1586938) (not e!2425998))))

(assert (=> d!1163354 (= res!1586938 (semiInverseModEq!2789 (toChars!8797 (transformation!6486 (h!47027 rules!2768))) (toValue!8938 (transformation!6486 (h!47027 rules!2768)))))))

(assert (=> d!1163354 (= (inv!55801 (transformation!6486 (h!47027 rules!2768))) e!2425998)))

(declare-fun b!3922904 () Bool)

(assert (=> b!3922904 (= e!2425998 (equivClasses!2688 (toChars!8797 (transformation!6486 (h!47027 rules!2768))) (toValue!8938 (transformation!6486 (h!47027 rules!2768)))))))

(assert (= (and d!1163354 res!1586938) b!3922904))

(declare-fun m!4486929 () Bool)

(assert (=> d!1163354 m!4486929))

(declare-fun m!4486931 () Bool)

(assert (=> b!3922904 m!4486931))

(assert (=> b!3922398 d!1163354))

(declare-fun lt!1367784 () List!41732)

(declare-fun e!2426000 () Bool)

(declare-fun b!3922908 () Bool)

(assert (=> b!3922908 (= e!2426000 (or (not (= (_1!23570 lt!1367582) Nil!41608)) (= lt!1367784 (Cons!41608 (_1!23569 (v!39231 lt!1367557)) Nil!41608))))))

(declare-fun b!3922905 () Bool)

(declare-fun e!2425999 () List!41732)

(assert (=> b!3922905 (= e!2425999 (_1!23570 lt!1367582))))

(declare-fun d!1163356 () Bool)

(assert (=> d!1163356 e!2426000))

(declare-fun res!1586939 () Bool)

(assert (=> d!1163356 (=> (not res!1586939) (not e!2426000))))

(assert (=> d!1163356 (= res!1586939 (= (content!6264 lt!1367784) ((_ map or) (content!6264 (Cons!41608 (_1!23569 (v!39231 lt!1367557)) Nil!41608)) (content!6264 (_1!23570 lt!1367582)))))))

(assert (=> d!1163356 (= lt!1367784 e!2425999)))

(declare-fun c!681711 () Bool)

(assert (=> d!1163356 (= c!681711 ((_ is Nil!41608) (Cons!41608 (_1!23569 (v!39231 lt!1367557)) Nil!41608)))))

(assert (=> d!1163356 (= (++!10729 (Cons!41608 (_1!23569 (v!39231 lt!1367557)) Nil!41608) (_1!23570 lt!1367582)) lt!1367784)))

(declare-fun b!3922906 () Bool)

(assert (=> b!3922906 (= e!2425999 (Cons!41608 (h!47028 (Cons!41608 (_1!23569 (v!39231 lt!1367557)) Nil!41608)) (++!10729 (t!324675 (Cons!41608 (_1!23569 (v!39231 lt!1367557)) Nil!41608)) (_1!23570 lt!1367582))))))

(declare-fun b!3922907 () Bool)

(declare-fun res!1586940 () Bool)

(assert (=> b!3922907 (=> (not res!1586940) (not e!2426000))))

(assert (=> b!3922907 (= res!1586940 (= (size!31232 lt!1367784) (+ (size!31232 (Cons!41608 (_1!23569 (v!39231 lt!1367557)) Nil!41608)) (size!31232 (_1!23570 lt!1367582)))))))

(assert (= (and d!1163356 c!681711) b!3922905))

(assert (= (and d!1163356 (not c!681711)) b!3922906))

(assert (= (and d!1163356 res!1586939) b!3922907))

(assert (= (and b!3922907 res!1586940) b!3922908))

(declare-fun m!4486933 () Bool)

(assert (=> d!1163356 m!4486933))

(declare-fun m!4486935 () Bool)

(assert (=> d!1163356 m!4486935))

(declare-fun m!4486937 () Bool)

(assert (=> d!1163356 m!4486937))

(declare-fun m!4486939 () Bool)

(assert (=> b!3922906 m!4486939))

(declare-fun m!4486941 () Bool)

(assert (=> b!3922907 m!4486941))

(declare-fun m!4486943 () Bool)

(assert (=> b!3922907 m!4486943))

(declare-fun m!4486945 () Bool)

(assert (=> b!3922907 m!4486945))

(assert (=> b!3922420 d!1163356))

(declare-fun d!1163358 () Bool)

(assert (=> d!1163358 (= (isEmpty!24779 rules!2768) ((_ is Nil!41607) rules!2768))))

(assert (=> b!3922422 d!1163358))

(declare-fun d!1163360 () Bool)

(assert (=> d!1163360 (= (isEmpty!24778 lt!1367572) ((_ is Nil!41608) lt!1367572))))

(assert (=> b!3922421 d!1163360))

(declare-fun d!1163362 () Bool)

(assert (=> d!1163362 (= (tail!6027 prefixTokens!80) (t!324675 prefixTokens!80))))

(assert (=> b!3922421 d!1163362))

(declare-fun d!1163364 () Bool)

(assert (=> d!1163364 (= (inv!55798 (tag!7346 (rule!9420 (h!47028 prefixTokens!80)))) (= (mod (str.len (value!205484 (tag!7346 (rule!9420 (h!47028 prefixTokens!80))))) 2) 0))))

(assert (=> b!3922402 d!1163364))

(declare-fun d!1163366 () Bool)

(declare-fun res!1586941 () Bool)

(declare-fun e!2426001 () Bool)

(assert (=> d!1163366 (=> (not res!1586941) (not e!2426001))))

(assert (=> d!1163366 (= res!1586941 (semiInverseModEq!2789 (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))) (toValue!8938 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80))))))))

(assert (=> d!1163366 (= (inv!55801 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))) e!2426001)))

(declare-fun b!3922909 () Bool)

(assert (=> b!3922909 (= e!2426001 (equivClasses!2688 (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))) (toValue!8938 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80))))))))

(assert (= (and d!1163366 res!1586941) b!3922909))

(declare-fun m!4486947 () Bool)

(assert (=> d!1163366 m!4486947))

(declare-fun m!4486949 () Bool)

(assert (=> b!3922909 m!4486949))

(assert (=> b!3922402 d!1163366))

(declare-fun d!1163368 () Bool)

(assert (=> d!1163368 (and (= lt!1367556 lt!1367556) (= (_2!23569 (v!39231 lt!1367557)) (_2!23569 lt!1367553)))))

(declare-fun lt!1367787 () Unit!59815)

(declare-fun choose!23269 (List!41729 List!41729 List!41729 List!41729) Unit!59815)

(assert (=> d!1163368 (= lt!1367787 (choose!23269 lt!1367556 (_2!23569 (v!39231 lt!1367557)) lt!1367556 (_2!23569 lt!1367553)))))

(assert (=> d!1163368 (= (++!10730 lt!1367556 (_2!23569 (v!39231 lt!1367557))) (++!10730 lt!1367556 (_2!23569 lt!1367553)))))

(assert (=> d!1163368 (= (lemmaConcatSameAndSameSizesThenSameLists!534 lt!1367556 (_2!23569 (v!39231 lt!1367557)) lt!1367556 (_2!23569 lt!1367553)) lt!1367787)))

(declare-fun bs!585925 () Bool)

(assert (= bs!585925 d!1163368))

(declare-fun m!4486951 () Bool)

(assert (=> bs!585925 m!4486951))

(assert (=> bs!585925 m!4486297))

(declare-fun m!4486953 () Bool)

(assert (=> bs!585925 m!4486953))

(assert (=> b!3922404 d!1163368))

(declare-fun d!1163370 () Bool)

(assert (=> d!1163370 (not (= (lexList!1843 thiss!20629 rules!2768 (_2!23569 lt!1367553)) (tuple2!40873 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1367790 () Unit!59815)

(declare-fun choose!23270 (LexerInterface!6075 List!41731 List!41729 List!41729 List!41732 List!41729) Unit!59815)

(assert (=> d!1163370 (= lt!1367790 (choose!23270 thiss!20629 rules!2768 suffix!1176 (_2!23569 lt!1367553) suffixTokens!72 suffixResult!91))))

(assert (=> d!1163370 (not (isEmpty!24779 rules!2768))))

(assert (=> d!1163370 (= (lemmaLexWithSmallerInputCannotProduceSameResults!86 thiss!20629 rules!2768 suffix!1176 (_2!23569 lt!1367553) suffixTokens!72 suffixResult!91) lt!1367790)))

(declare-fun bs!585926 () Bool)

(assert (= bs!585926 d!1163370))

(assert (=> bs!585926 m!4486277))

(declare-fun m!4486955 () Bool)

(assert (=> bs!585926 m!4486955))

(assert (=> bs!585926 m!4486227))

(assert (=> b!3922404 d!1163370))

(declare-fun b!3922910 () Bool)

(declare-fun e!2426004 () Bool)

(declare-fun lt!1367791 () tuple2!40872)

(assert (=> b!3922910 (= e!2426004 (= (_2!23570 lt!1367791) lt!1367563))))

(declare-fun b!3922911 () Bool)

(declare-fun e!2426002 () Bool)

(assert (=> b!3922911 (= e!2426004 e!2426002)))

(declare-fun res!1586942 () Bool)

(assert (=> b!3922911 (= res!1586942 (< (size!31230 (_2!23570 lt!1367791)) (size!31230 lt!1367563)))))

(assert (=> b!3922911 (=> (not res!1586942) (not e!2426002))))

(declare-fun b!3922912 () Bool)

(declare-fun e!2426003 () tuple2!40872)

(assert (=> b!3922912 (= e!2426003 (tuple2!40873 Nil!41608 lt!1367563))))

(declare-fun b!3922913 () Bool)

(declare-fun lt!1367793 () Option!8906)

(declare-fun lt!1367792 () tuple2!40872)

(assert (=> b!3922913 (= e!2426003 (tuple2!40873 (Cons!41608 (_1!23569 (v!39231 lt!1367793)) (_1!23570 lt!1367792)) (_2!23570 lt!1367792)))))

(assert (=> b!3922913 (= lt!1367792 (lexList!1843 thiss!20629 rules!2768 (_2!23569 (v!39231 lt!1367793))))))

(declare-fun d!1163372 () Bool)

(assert (=> d!1163372 e!2426004))

(declare-fun c!681712 () Bool)

(assert (=> d!1163372 (= c!681712 (> (size!31232 (_1!23570 lt!1367791)) 0))))

(assert (=> d!1163372 (= lt!1367791 e!2426003)))

(declare-fun c!681713 () Bool)

(assert (=> d!1163372 (= c!681713 ((_ is Some!8905) lt!1367793))))

(assert (=> d!1163372 (= lt!1367793 (maxPrefix!3379 thiss!20629 rules!2768 lt!1367563))))

(assert (=> d!1163372 (= (lexList!1843 thiss!20629 rules!2768 lt!1367563) lt!1367791)))

(declare-fun b!3922914 () Bool)

(assert (=> b!3922914 (= e!2426002 (not (isEmpty!24778 (_1!23570 lt!1367791))))))

(assert (= (and d!1163372 c!681713) b!3922913))

(assert (= (and d!1163372 (not c!681713)) b!3922912))

(assert (= (and d!1163372 c!681712) b!3922911))

(assert (= (and d!1163372 (not c!681712)) b!3922910))

(assert (= (and b!3922911 res!1586942) b!3922914))

(declare-fun m!4486957 () Bool)

(assert (=> b!3922911 m!4486957))

(assert (=> b!3922911 m!4486247))

(declare-fun m!4486959 () Bool)

(assert (=> b!3922913 m!4486959))

(declare-fun m!4486961 () Bool)

(assert (=> d!1163372 m!4486961))

(assert (=> d!1163372 m!4486237))

(declare-fun m!4486963 () Bool)

(assert (=> b!3922914 m!4486963))

(assert (=> b!3922424 d!1163372))

(declare-fun e!2426006 () Bool)

(declare-fun lt!1367794 () List!41732)

(declare-fun b!3922918 () Bool)

(assert (=> b!3922918 (= e!2426006 (or (not (= suffixTokens!72 Nil!41608)) (= lt!1367794 prefixTokens!80)))))

(declare-fun b!3922915 () Bool)

(declare-fun e!2426005 () List!41732)

(assert (=> b!3922915 (= e!2426005 suffixTokens!72)))

(declare-fun d!1163374 () Bool)

(assert (=> d!1163374 e!2426006))

(declare-fun res!1586943 () Bool)

(assert (=> d!1163374 (=> (not res!1586943) (not e!2426006))))

(assert (=> d!1163374 (= res!1586943 (= (content!6264 lt!1367794) ((_ map or) (content!6264 prefixTokens!80) (content!6264 suffixTokens!72))))))

(assert (=> d!1163374 (= lt!1367794 e!2426005)))

(declare-fun c!681714 () Bool)

(assert (=> d!1163374 (= c!681714 ((_ is Nil!41608) prefixTokens!80))))

(assert (=> d!1163374 (= (++!10729 prefixTokens!80 suffixTokens!72) lt!1367794)))

(declare-fun b!3922916 () Bool)

(assert (=> b!3922916 (= e!2426005 (Cons!41608 (h!47028 prefixTokens!80) (++!10729 (t!324675 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3922917 () Bool)

(declare-fun res!1586944 () Bool)

(assert (=> b!3922917 (=> (not res!1586944) (not e!2426006))))

(assert (=> b!3922917 (= res!1586944 (= (size!31232 lt!1367794) (+ (size!31232 prefixTokens!80) (size!31232 suffixTokens!72))))))

(assert (= (and d!1163374 c!681714) b!3922915))

(assert (= (and d!1163374 (not c!681714)) b!3922916))

(assert (= (and d!1163374 res!1586943) b!3922917))

(assert (= (and b!3922917 res!1586944) b!3922918))

(declare-fun m!4486965 () Bool)

(assert (=> d!1163374 m!4486965))

(declare-fun m!4486967 () Bool)

(assert (=> d!1163374 m!4486967))

(assert (=> d!1163374 m!4486915))

(declare-fun m!4486969 () Bool)

(assert (=> b!3922916 m!4486969))

(declare-fun m!4486971 () Bool)

(assert (=> b!3922917 m!4486971))

(declare-fun m!4486973 () Bool)

(assert (=> b!3922917 m!4486973))

(assert (=> b!3922917 m!4486923))

(assert (=> b!3922424 d!1163374))

(declare-fun d!1163376 () Bool)

(declare-fun e!2426008 () Bool)

(assert (=> d!1163376 e!2426008))

(declare-fun res!1586946 () Bool)

(assert (=> d!1163376 (=> (not res!1586946) (not e!2426008))))

(declare-fun lt!1367795 () List!41729)

(assert (=> d!1163376 (= res!1586946 (= (content!6262 lt!1367795) ((_ map or) (content!6262 prefix!426) (content!6262 suffix!1176))))))

(declare-fun e!2426007 () List!41729)

(assert (=> d!1163376 (= lt!1367795 e!2426007)))

(declare-fun c!681715 () Bool)

(assert (=> d!1163376 (= c!681715 ((_ is Nil!41605) prefix!426))))

(assert (=> d!1163376 (= (++!10730 prefix!426 suffix!1176) lt!1367795)))

(declare-fun b!3922922 () Bool)

(assert (=> b!3922922 (= e!2426008 (or (not (= suffix!1176 Nil!41605)) (= lt!1367795 prefix!426)))))

(declare-fun b!3922921 () Bool)

(declare-fun res!1586945 () Bool)

(assert (=> b!3922921 (=> (not res!1586945) (not e!2426008))))

(assert (=> b!3922921 (= res!1586945 (= (size!31230 lt!1367795) (+ (size!31230 prefix!426) (size!31230 suffix!1176))))))

(declare-fun b!3922920 () Bool)

(assert (=> b!3922920 (= e!2426007 (Cons!41605 (h!47025 prefix!426) (++!10730 (t!324672 prefix!426) suffix!1176)))))

(declare-fun b!3922919 () Bool)

(assert (=> b!3922919 (= e!2426007 suffix!1176)))

(assert (= (and d!1163376 c!681715) b!3922919))

(assert (= (and d!1163376 (not c!681715)) b!3922920))

(assert (= (and d!1163376 res!1586946) b!3922921))

(assert (= (and b!3922921 res!1586945) b!3922922))

(declare-fun m!4486975 () Bool)

(assert (=> d!1163376 m!4486975))

(declare-fun m!4486977 () Bool)

(assert (=> d!1163376 m!4486977))

(declare-fun m!4486979 () Bool)

(assert (=> d!1163376 m!4486979))

(declare-fun m!4486981 () Bool)

(assert (=> b!3922921 m!4486981))

(assert (=> b!3922921 m!4486329))

(assert (=> b!3922921 m!4486267))

(declare-fun m!4486983 () Bool)

(assert (=> b!3922920 m!4486983))

(assert (=> b!3922424 d!1163376))

(declare-fun b!3922936 () Bool)

(declare-fun b_free!106781 () Bool)

(declare-fun b_next!107485 () Bool)

(assert (=> b!3922936 (= b_free!106781 (not b_next!107485))))

(declare-fun tb!234293 () Bool)

(declare-fun t!324749 () Bool)

(assert (=> (and b!3922936 (= (toValue!8938 (transformation!6486 (rule!9420 (h!47028 (t!324675 suffixTokens!72))))) (toValue!8938 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))))) t!324749) tb!234293))

(declare-fun result!283912 () Bool)

(assert (= result!283912 result!283846))

(assert (=> d!1163182 t!324749))

(declare-fun tp!1194161 () Bool)

(declare-fun b_and!299087 () Bool)

(assert (=> b!3922936 (= tp!1194161 (and (=> t!324749 result!283912) b_and!299087))))

(declare-fun b_free!106783 () Bool)

(declare-fun b_next!107487 () Bool)

(assert (=> b!3922936 (= b_free!106783 (not b_next!107487))))

(declare-fun t!324751 () Bool)

(declare-fun tb!234295 () Bool)

(assert (=> (and b!3922936 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 (t!324675 suffixTokens!72))))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72))))) t!324751) tb!234295))

(declare-fun result!283914 () Bool)

(assert (= result!283914 result!283822))

(assert (=> b!3922437 t!324751))

(declare-fun tb!234297 () Bool)

(declare-fun t!324753 () Bool)

(assert (=> (and b!3922936 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 (t!324675 suffixTokens!72))))) (toChars!8797 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))))) t!324753) tb!234297))

(declare-fun result!283916 () Bool)

(assert (= result!283916 result!283854))

(assert (=> d!1163214 t!324753))

(declare-fun tb!234299 () Bool)

(declare-fun t!324755 () Bool)

(assert (=> (and b!3922936 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 (t!324675 suffixTokens!72))))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80))))) t!324755) tb!234299))

(declare-fun result!283918 () Bool)

(assert (= result!283918 result!283904))

(assert (=> b!3922886 t!324755))

(declare-fun tp!1194158 () Bool)

(declare-fun b_and!299089 () Bool)

(assert (=> b!3922936 (= tp!1194158 (and (=> t!324751 result!283914) (=> t!324753 result!283916) (=> t!324755 result!283918) b_and!299089))))

(declare-fun e!2426026 () Bool)

(assert (=> b!3922425 (= tp!1194066 e!2426026)))

(declare-fun b!3922934 () Bool)

(declare-fun e!2426024 () Bool)

(declare-fun e!2426025 () Bool)

(declare-fun tp!1194160 () Bool)

(assert (=> b!3922934 (= e!2426024 (and (inv!21 (value!205485 (h!47028 (t!324675 suffixTokens!72)))) e!2426025 tp!1194160))))

(declare-fun e!2426021 () Bool)

(assert (=> b!3922936 (= e!2426021 (and tp!1194161 tp!1194158))))

(declare-fun b!3922933 () Bool)

(declare-fun tp!1194159 () Bool)

(assert (=> b!3922933 (= e!2426026 (and (inv!55802 (h!47028 (t!324675 suffixTokens!72))) e!2426024 tp!1194159))))

(declare-fun b!3922935 () Bool)

(declare-fun tp!1194157 () Bool)

(assert (=> b!3922935 (= e!2426025 (and tp!1194157 (inv!55798 (tag!7346 (rule!9420 (h!47028 (t!324675 suffixTokens!72))))) (inv!55801 (transformation!6486 (rule!9420 (h!47028 (t!324675 suffixTokens!72))))) e!2426021))))

(assert (= b!3922935 b!3922936))

(assert (= b!3922934 b!3922935))

(assert (= b!3922933 b!3922934))

(assert (= (and b!3922425 ((_ is Cons!41608) (t!324675 suffixTokens!72))) b!3922933))

(declare-fun m!4486985 () Bool)

(assert (=> b!3922934 m!4486985))

(declare-fun m!4486987 () Bool)

(assert (=> b!3922933 m!4486987))

(declare-fun m!4486989 () Bool)

(assert (=> b!3922935 m!4486989))

(declare-fun m!4486991 () Bool)

(assert (=> b!3922935 m!4486991))

(declare-fun b!3922941 () Bool)

(declare-fun e!2426029 () Bool)

(declare-fun tp!1194164 () Bool)

(assert (=> b!3922941 (= e!2426029 (and tp_is_empty!19753 tp!1194164))))

(assert (=> b!3922427 (= tp!1194067 e!2426029)))

(assert (= (and b!3922427 ((_ is Cons!41605) (originalCharacters!7086 (h!47028 prefixTokens!80)))) b!3922941))

(declare-fun b!3922942 () Bool)

(declare-fun e!2426030 () Bool)

(declare-fun tp!1194165 () Bool)

(assert (=> b!3922942 (= e!2426030 (and tp_is_empty!19753 tp!1194165))))

(assert (=> b!3922407 (= tp!1194056 e!2426030)))

(assert (= (and b!3922407 ((_ is Cons!41605) (t!324672 suffixResult!91))) b!3922942))

(declare-fun b!3922953 () Bool)

(declare-fun b_free!106785 () Bool)

(declare-fun b_next!107489 () Bool)

(assert (=> b!3922953 (= b_free!106785 (not b_next!107489))))

(declare-fun t!324757 () Bool)

(declare-fun tb!234301 () Bool)

(assert (=> (and b!3922953 (= (toValue!8938 (transformation!6486 (h!47027 (t!324674 rules!2768)))) (toValue!8938 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))))) t!324757) tb!234301))

(declare-fun result!283924 () Bool)

(assert (= result!283924 result!283846))

(assert (=> d!1163182 t!324757))

(declare-fun b_and!299091 () Bool)

(declare-fun tp!1194174 () Bool)

(assert (=> b!3922953 (= tp!1194174 (and (=> t!324757 result!283924) b_and!299091))))

(declare-fun b_free!106787 () Bool)

(declare-fun b_next!107491 () Bool)

(assert (=> b!3922953 (= b_free!106787 (not b_next!107491))))

(declare-fun t!324759 () Bool)

(declare-fun tb!234303 () Bool)

(assert (=> (and b!3922953 (= (toChars!8797 (transformation!6486 (h!47027 (t!324674 rules!2768)))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72))))) t!324759) tb!234303))

(declare-fun result!283926 () Bool)

(assert (= result!283926 result!283822))

(assert (=> b!3922437 t!324759))

(declare-fun tb!234305 () Bool)

(declare-fun t!324761 () Bool)

(assert (=> (and b!3922953 (= (toChars!8797 (transformation!6486 (h!47027 (t!324674 rules!2768)))) (toChars!8797 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))))) t!324761) tb!234305))

(declare-fun result!283928 () Bool)

(assert (= result!283928 result!283854))

(assert (=> d!1163214 t!324761))

(declare-fun t!324763 () Bool)

(declare-fun tb!234307 () Bool)

(assert (=> (and b!3922953 (= (toChars!8797 (transformation!6486 (h!47027 (t!324674 rules!2768)))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80))))) t!324763) tb!234307))

(declare-fun result!283930 () Bool)

(assert (= result!283930 result!283904))

(assert (=> b!3922886 t!324763))

(declare-fun tp!1194177 () Bool)

(declare-fun b_and!299093 () Bool)

(assert (=> b!3922953 (= tp!1194177 (and (=> t!324759 result!283926) (=> t!324761 result!283928) (=> t!324763 result!283930) b_and!299093))))

(declare-fun e!2426039 () Bool)

(assert (=> b!3922953 (= e!2426039 (and tp!1194174 tp!1194177))))

(declare-fun e!2426040 () Bool)

(declare-fun b!3922952 () Bool)

(declare-fun tp!1194176 () Bool)

(assert (=> b!3922952 (= e!2426040 (and tp!1194176 (inv!55798 (tag!7346 (h!47027 (t!324674 rules!2768)))) (inv!55801 (transformation!6486 (h!47027 (t!324674 rules!2768)))) e!2426039))))

(declare-fun b!3922951 () Bool)

(declare-fun e!2426042 () Bool)

(declare-fun tp!1194175 () Bool)

(assert (=> b!3922951 (= e!2426042 (and e!2426040 tp!1194175))))

(assert (=> b!3922408 (= tp!1194068 e!2426042)))

(assert (= b!3922952 b!3922953))

(assert (= b!3922951 b!3922952))

(assert (= (and b!3922408 ((_ is Cons!41607) (t!324674 rules!2768))) b!3922951))

(declare-fun m!4486993 () Bool)

(assert (=> b!3922952 m!4486993))

(declare-fun m!4486995 () Bool)

(assert (=> b!3922952 m!4486995))

(declare-fun b!3922957 () Bool)

(declare-fun b_free!106789 () Bool)

(declare-fun b_next!107493 () Bool)

(assert (=> b!3922957 (= b_free!106789 (not b_next!107493))))

(declare-fun tb!234309 () Bool)

(declare-fun t!324765 () Bool)

(assert (=> (and b!3922957 (= (toValue!8938 (transformation!6486 (rule!9420 (h!47028 (t!324675 prefixTokens!80))))) (toValue!8938 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))))) t!324765) tb!234309))

(declare-fun result!283932 () Bool)

(assert (= result!283932 result!283846))

(assert (=> d!1163182 t!324765))

(declare-fun tp!1194182 () Bool)

(declare-fun b_and!299095 () Bool)

(assert (=> b!3922957 (= tp!1194182 (and (=> t!324765 result!283932) b_and!299095))))

(declare-fun b_free!106791 () Bool)

(declare-fun b_next!107495 () Bool)

(assert (=> b!3922957 (= b_free!106791 (not b_next!107495))))

(declare-fun t!324767 () Bool)

(declare-fun tb!234311 () Bool)

(assert (=> (and b!3922957 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 (t!324675 prefixTokens!80))))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72))))) t!324767) tb!234311))

(declare-fun result!283934 () Bool)

(assert (= result!283934 result!283822))

(assert (=> b!3922437 t!324767))

(declare-fun t!324769 () Bool)

(declare-fun tb!234313 () Bool)

(assert (=> (and b!3922957 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 (t!324675 prefixTokens!80))))) (toChars!8797 (transformation!6486 (rule!9420 (_1!23569 (v!39231 lt!1367557)))))) t!324769) tb!234313))

(declare-fun result!283936 () Bool)

(assert (= result!283936 result!283854))

(assert (=> d!1163214 t!324769))

(declare-fun t!324771 () Bool)

(declare-fun tb!234315 () Bool)

(assert (=> (and b!3922957 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 (t!324675 prefixTokens!80))))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80))))) t!324771) tb!234315))

(declare-fun result!283938 () Bool)

(assert (= result!283938 result!283904))

(assert (=> b!3922886 t!324771))

(declare-fun tp!1194179 () Bool)

(declare-fun b_and!299097 () Bool)

(assert (=> b!3922957 (= tp!1194179 (and (=> t!324767 result!283934) (=> t!324769 result!283936) (=> t!324771 result!283938) b_and!299097))))

(declare-fun e!2426048 () Bool)

(assert (=> b!3922417 (= tp!1194058 e!2426048)))

(declare-fun b!3922955 () Bool)

(declare-fun e!2426046 () Bool)

(declare-fun tp!1194181 () Bool)

(declare-fun e!2426047 () Bool)

(assert (=> b!3922955 (= e!2426046 (and (inv!21 (value!205485 (h!47028 (t!324675 prefixTokens!80)))) e!2426047 tp!1194181))))

(declare-fun e!2426043 () Bool)

(assert (=> b!3922957 (= e!2426043 (and tp!1194182 tp!1194179))))

(declare-fun b!3922954 () Bool)

(declare-fun tp!1194180 () Bool)

(assert (=> b!3922954 (= e!2426048 (and (inv!55802 (h!47028 (t!324675 prefixTokens!80))) e!2426046 tp!1194180))))

(declare-fun b!3922956 () Bool)

(declare-fun tp!1194178 () Bool)

(assert (=> b!3922956 (= e!2426047 (and tp!1194178 (inv!55798 (tag!7346 (rule!9420 (h!47028 (t!324675 prefixTokens!80))))) (inv!55801 (transformation!6486 (rule!9420 (h!47028 (t!324675 prefixTokens!80))))) e!2426043))))

(assert (= b!3922956 b!3922957))

(assert (= b!3922955 b!3922956))

(assert (= b!3922954 b!3922955))

(assert (= (and b!3922417 ((_ is Cons!41608) (t!324675 prefixTokens!80))) b!3922954))

(declare-fun m!4486997 () Bool)

(assert (=> b!3922955 m!4486997))

(declare-fun m!4486999 () Bool)

(assert (=> b!3922954 m!4486999))

(declare-fun m!4487001 () Bool)

(assert (=> b!3922956 m!4487001))

(declare-fun m!4487003 () Bool)

(assert (=> b!3922956 m!4487003))

(declare-fun b!3922958 () Bool)

(declare-fun e!2426049 () Bool)

(declare-fun tp!1194183 () Bool)

(assert (=> b!3922958 (= e!2426049 (and tp_is_empty!19753 tp!1194183))))

(assert (=> b!3922428 (= tp!1194070 e!2426049)))

(assert (= (and b!3922428 ((_ is Cons!41605) (t!324672 prefix!426))) b!3922958))

(declare-fun b!3922971 () Bool)

(declare-fun e!2426052 () Bool)

(declare-fun tp!1194197 () Bool)

(assert (=> b!3922971 (= e!2426052 tp!1194197)))

(declare-fun b!3922972 () Bool)

(declare-fun tp!1194196 () Bool)

(declare-fun tp!1194195 () Bool)

(assert (=> b!3922972 (= e!2426052 (and tp!1194196 tp!1194195))))

(declare-fun b!3922969 () Bool)

(assert (=> b!3922969 (= e!2426052 tp_is_empty!19753)))

(declare-fun b!3922970 () Bool)

(declare-fun tp!1194194 () Bool)

(declare-fun tp!1194198 () Bool)

(assert (=> b!3922970 (= e!2426052 (and tp!1194194 tp!1194198))))

(assert (=> b!3922419 (= tp!1194060 e!2426052)))

(assert (= (and b!3922419 ((_ is ElementMatch!11391) (regex!6486 (rule!9420 (h!47028 suffixTokens!72))))) b!3922969))

(assert (= (and b!3922419 ((_ is Concat!18108) (regex!6486 (rule!9420 (h!47028 suffixTokens!72))))) b!3922970))

(assert (= (and b!3922419 ((_ is Star!11391) (regex!6486 (rule!9420 (h!47028 suffixTokens!72))))) b!3922971))

(assert (= (and b!3922419 ((_ is Union!11391) (regex!6486 (rule!9420 (h!47028 suffixTokens!72))))) b!3922972))

(declare-fun b!3922975 () Bool)

(declare-fun e!2426053 () Bool)

(declare-fun tp!1194202 () Bool)

(assert (=> b!3922975 (= e!2426053 tp!1194202)))

(declare-fun b!3922976 () Bool)

(declare-fun tp!1194201 () Bool)

(declare-fun tp!1194200 () Bool)

(assert (=> b!3922976 (= e!2426053 (and tp!1194201 tp!1194200))))

(declare-fun b!3922973 () Bool)

(assert (=> b!3922973 (= e!2426053 tp_is_empty!19753)))

(declare-fun b!3922974 () Bool)

(declare-fun tp!1194199 () Bool)

(declare-fun tp!1194203 () Bool)

(assert (=> b!3922974 (= e!2426053 (and tp!1194199 tp!1194203))))

(assert (=> b!3922398 (= tp!1194071 e!2426053)))

(assert (= (and b!3922398 ((_ is ElementMatch!11391) (regex!6486 (h!47027 rules!2768)))) b!3922973))

(assert (= (and b!3922398 ((_ is Concat!18108) (regex!6486 (h!47027 rules!2768)))) b!3922974))

(assert (= (and b!3922398 ((_ is Star!11391) (regex!6486 (h!47027 rules!2768)))) b!3922975))

(assert (= (and b!3922398 ((_ is Union!11391) (regex!6486 (h!47027 rules!2768)))) b!3922976))

(declare-fun b!3922977 () Bool)

(declare-fun e!2426054 () Bool)

(declare-fun tp!1194204 () Bool)

(assert (=> b!3922977 (= e!2426054 (and tp_is_empty!19753 tp!1194204))))

(assert (=> b!3922409 (= tp!1194063 e!2426054)))

(assert (= (and b!3922409 ((_ is Cons!41605) (originalCharacters!7086 (h!47028 suffixTokens!72)))) b!3922977))

(declare-fun b!3922978 () Bool)

(declare-fun e!2426055 () Bool)

(declare-fun tp!1194205 () Bool)

(assert (=> b!3922978 (= e!2426055 (and tp_is_empty!19753 tp!1194205))))

(assert (=> b!3922401 (= tp!1194069 e!2426055)))

(assert (= (and b!3922401 ((_ is Cons!41605) (t!324672 suffix!1176))) b!3922978))

(declare-fun b!3922981 () Bool)

(declare-fun e!2426056 () Bool)

(declare-fun tp!1194209 () Bool)

(assert (=> b!3922981 (= e!2426056 tp!1194209)))

(declare-fun b!3922982 () Bool)

(declare-fun tp!1194208 () Bool)

(declare-fun tp!1194207 () Bool)

(assert (=> b!3922982 (= e!2426056 (and tp!1194208 tp!1194207))))

(declare-fun b!3922979 () Bool)

(assert (=> b!3922979 (= e!2426056 tp_is_empty!19753)))

(declare-fun b!3922980 () Bool)

(declare-fun tp!1194206 () Bool)

(declare-fun tp!1194210 () Bool)

(assert (=> b!3922980 (= e!2426056 (and tp!1194206 tp!1194210))))

(assert (=> b!3922402 (= tp!1194061 e!2426056)))

(assert (= (and b!3922402 ((_ is ElementMatch!11391) (regex!6486 (rule!9420 (h!47028 prefixTokens!80))))) b!3922979))

(assert (= (and b!3922402 ((_ is Concat!18108) (regex!6486 (rule!9420 (h!47028 prefixTokens!80))))) b!3922980))

(assert (= (and b!3922402 ((_ is Star!11391) (regex!6486 (rule!9420 (h!47028 prefixTokens!80))))) b!3922981))

(assert (= (and b!3922402 ((_ is Union!11391) (regex!6486 (rule!9420 (h!47028 prefixTokens!80))))) b!3922982))

(declare-fun b_lambda!114843 () Bool)

(assert (= b_lambda!114841 (or (and b!3922953 b_free!106787 (= (toChars!8797 (transformation!6486 (h!47027 (t!324674 rules!2768)))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))))) (and b!3922936 b_free!106783 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 (t!324675 suffixTokens!72))))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))))) (and b!3922418 b_free!106763 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))))) (and b!3922410 b_free!106759 (= (toChars!8797 (transformation!6486 (h!47027 rules!2768))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))))) (and b!3922957 b_free!106791 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 (t!324675 prefixTokens!80))))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))))) (and b!3922403 b_free!106767) b_lambda!114843)))

(declare-fun b_lambda!114845 () Bool)

(assert (= b_lambda!114823 (or (and b!3922936 b_free!106783 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 (t!324675 suffixTokens!72))))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))))) (and b!3922953 b_free!106787 (= (toChars!8797 (transformation!6486 (h!47027 (t!324674 rules!2768)))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))))) (and b!3922410 b_free!106759 (= (toChars!8797 (transformation!6486 (h!47027 rules!2768))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))))) (and b!3922403 b_free!106767 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 prefixTokens!80)))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))))) (and b!3922957 b_free!106791 (= (toChars!8797 (transformation!6486 (rule!9420 (h!47028 (t!324675 prefixTokens!80))))) (toChars!8797 (transformation!6486 (rule!9420 (h!47028 suffixTokens!72)))))) (and b!3922418 b_free!106763) b_lambda!114845)))

(check-sat (not b!3922888) tp_is_empty!19753 (not b!3922933) (not b!3922956) (not b!3922711) (not d!1163190) (not b!3922906) (not b!3922664) (not b_lambda!114829) (not b!3922981) (not b!3922977) (not b_next!107487) (not b!3922971) (not b!3922887) (not d!1163342) (not b!3922855) (not b!3922651) (not b_next!107485) (not b!3922669) (not b!3922907) (not b!3922913) (not d!1163172) (not d!1163356) (not b!3922854) (not d!1163322) (not d!1163344) (not d!1163324) (not b!3922935) (not b!3922443) (not b!3922458) (not b!3922866) (not d!1163348) (not b!3922942) (not b!3922972) (not d!1163376) (not b!3922574) (not b!3922489) (not tb!234239) (not tb!234287) (not b!3922976) (not b!3922920) (not d!1163374) (not b!3922886) (not b!3922951) (not b!3922746) (not b!3922899) (not d!1163222) (not b!3922885) (not b_lambda!114845) (not b!3922862) (not b_next!107493) (not d!1163178) (not bm!284651) (not d!1163164) (not b!3922667) (not b!3922916) (not b_next!107471) (not b_next!107465) (not b!3922954) (not b!3922952) (not b!3922557) (not d!1163298) (not b!3922706) (not b!3922860) (not b!3922559) (not d!1163254) (not b!3922882) (not d!1163330) (not b!3922665) (not d!1163334) (not d!1163338) (not b!3922456) (not b!3922864) (not b!3922955) (not d!1163372) (not b!3922970) (not b!3922917) b_and!299091 (not b!3922713) (not b!3922974) (not b!3922898) (not d!1163328) (not b!3922858) (not b!3922859) (not tb!234221) (not b_lambda!114843) (not b!3922982) (not d!1163354) (not b!3922975) (not b!3922904) (not d!1163216) b_and!299083 (not b!3922566) b_and!299095 (not b!3922857) (not d!1163268) (not d!1163218) (not b!3922921) (not b!3922934) b_and!299087 (not b!3922437) (not b_next!107491) (not b!3922455) (not d!1163366) (not b!3922879) b_and!299049 (not d!1163214) (not d!1163368) (not b!3922871) (not d!1163320) b_and!299093 (not b!3922710) b_and!299047 (not b!3922652) (not b!3922872) (not b_lambda!114831) (not b!3922903) (not b!3922571) (not b!3922657) (not d!1163340) b_and!299081 (not b!3922911) (not b_next!107489) (not b!3922649) b_and!299089 (not b!3922909) (not b!3922709) (not b!3922867) (not b!3922958) (not b_next!107467) b_and!299097 (not tb!234245) (not d!1163290) (not b!3922876) (not b!3922464) (not d!1163152) (not b_next!107469) (not b!3922914) (not b!3922705) (not b!3922708) (not d!1163166) (not b_next!107461) (not b!3922715) (not b!3922438) (not b!3922744) (not b!3922880) (not b!3922875) (not d!1163370) (not b!3922558) b_and!299085 (not b!3922980) (not b!3922856) (not b!3922874) (not d!1163248) (not b!3922978) (not b_next!107495) (not b!3922707) (not b_next!107463) (not b!3922941) (not b!3922878) b_and!299045 (not b!3922490) (not b!3922869))
(check-sat (not b_next!107487) (not b_next!107485) (not b_next!107493) b_and!299091 b_and!299083 b_and!299095 b_and!299049 b_and!299081 (not b_next!107469) (not b_next!107461) (not b_next!107471) (not b_next!107465) b_and!299087 (not b_next!107491) b_and!299093 b_and!299047 (not b_next!107489) b_and!299089 (not b_next!107467) b_and!299097 (not b_next!107495) b_and!299085 (not b_next!107463) b_and!299045)
