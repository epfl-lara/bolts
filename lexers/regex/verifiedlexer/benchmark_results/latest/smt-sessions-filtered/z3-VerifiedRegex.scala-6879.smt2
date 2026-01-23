; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362328 () Bool)

(assert start!362328)

(declare-fun b!3863285 () Bool)

(declare-fun b_free!103981 () Bool)

(declare-fun b_next!104685 () Bool)

(assert (=> b!3863285 (= b_free!103981 (not b_next!104685))))

(declare-fun tp!1171189 () Bool)

(declare-fun b_and!289299 () Bool)

(assert (=> b!3863285 (= tp!1171189 b_and!289299)))

(declare-fun b_free!103983 () Bool)

(declare-fun b_next!104687 () Bool)

(assert (=> b!3863285 (= b_free!103983 (not b_next!104687))))

(declare-fun tp!1171191 () Bool)

(declare-fun b_and!289301 () Bool)

(assert (=> b!3863285 (= tp!1171191 b_and!289301)))

(declare-fun b!3863302 () Bool)

(declare-fun b_free!103985 () Bool)

(declare-fun b_next!104689 () Bool)

(assert (=> b!3863302 (= b_free!103985 (not b_next!104689))))

(declare-fun tp!1171197 () Bool)

(declare-fun b_and!289303 () Bool)

(assert (=> b!3863302 (= tp!1171197 b_and!289303)))

(declare-fun b_free!103987 () Bool)

(declare-fun b_next!104691 () Bool)

(assert (=> b!3863302 (= b_free!103987 (not b_next!104691))))

(declare-fun tp!1171193 () Bool)

(declare-fun b_and!289305 () Bool)

(assert (=> b!3863302 (= tp!1171193 b_and!289305)))

(declare-fun b!3863268 () Bool)

(declare-fun b_free!103989 () Bool)

(declare-fun b_next!104693 () Bool)

(assert (=> b!3863268 (= b_free!103989 (not b_next!104693))))

(declare-fun tp!1171190 () Bool)

(declare-fun b_and!289307 () Bool)

(assert (=> b!3863268 (= tp!1171190 b_and!289307)))

(declare-fun b_free!103991 () Bool)

(declare-fun b_next!104695 () Bool)

(assert (=> b!3863268 (= b_free!103991 (not b_next!104695))))

(declare-fun tp!1171198 () Bool)

(declare-fun b_and!289309 () Bool)

(assert (=> b!3863268 (= tp!1171198 b_and!289309)))

(declare-fun e!2388635 () Bool)

(assert (=> b!3863268 (= e!2388635 (and tp!1171190 tp!1171198))))

(declare-fun tp!1171185 () Bool)

(declare-fun e!2388639 () Bool)

(declare-datatypes ((String!46597 0))(
  ( (String!46598 (value!201469 String)) )
))
(declare-datatypes ((List!41104 0))(
  ( (Nil!40980) (Cons!40980 (h!46400 (_ BitVec 16)) (t!313691 List!41104)) )
))
(declare-datatypes ((TokenValue!6576 0))(
  ( (FloatLiteralValue!13152 (text!46477 List!41104)) (TokenValueExt!6575 (__x!25369 Int)) (Broken!32880 (value!201470 List!41104)) (Object!6699) (End!6576) (Def!6576) (Underscore!6576) (Match!6576) (Else!6576) (Error!6576) (Case!6576) (If!6576) (Extends!6576) (Abstract!6576) (Class!6576) (Val!6576) (DelimiterValue!13152 (del!6636 List!41104)) (KeywordValue!6582 (value!201471 List!41104)) (CommentValue!13152 (value!201472 List!41104)) (WhitespaceValue!13152 (value!201473 List!41104)) (IndentationValue!6576 (value!201474 List!41104)) (String!46599) (Int32!6576) (Broken!32881 (value!201475 List!41104)) (Boolean!6577) (Unit!58642) (OperatorValue!6579 (op!6636 List!41104)) (IdentifierValue!13152 (value!201476 List!41104)) (IdentifierValue!13153 (value!201477 List!41104)) (WhitespaceValue!13153 (value!201478 List!41104)) (True!13152) (False!13152) (Broken!32882 (value!201479 List!41104)) (Broken!32883 (value!201480 List!41104)) (True!13153) (RightBrace!6576) (RightBracket!6576) (Colon!6576) (Null!6576) (Comma!6576) (LeftBracket!6576) (False!13153) (LeftBrace!6576) (ImaginaryLiteralValue!6576 (text!46478 List!41104)) (StringLiteralValue!19728 (value!201481 List!41104)) (EOFValue!6576 (value!201482 List!41104)) (IdentValue!6576 (value!201483 List!41104)) (DelimiterValue!13153 (value!201484 List!41104)) (DedentValue!6576 (value!201485 List!41104)) (NewLineValue!6576 (value!201486 List!41104)) (IntegerValue!19728 (value!201487 (_ BitVec 32)) (text!46479 List!41104)) (IntegerValue!19729 (value!201488 Int) (text!46480 List!41104)) (Times!6576) (Or!6576) (Equal!6576) (Minus!6576) (Broken!32884 (value!201489 List!41104)) (And!6576) (Div!6576) (LessEqual!6576) (Mod!6576) (Concat!17827) (Not!6576) (Plus!6576) (SpaceValue!6576 (value!201490 List!41104)) (IntegerValue!19730 (value!201491 Int) (text!46481 List!41104)) (StringLiteralValue!19729 (text!46482 List!41104)) (FloatLiteralValue!13153 (text!46483 List!41104)) (BytesLiteralValue!6576 (value!201492 List!41104)) (CommentValue!13153 (value!201493 List!41104)) (StringLiteralValue!19730 (value!201494 List!41104)) (ErrorTokenValue!6576 (msg!6637 List!41104)) )
))
(declare-datatypes ((C!22688 0))(
  ( (C!22689 (val!13438 Int)) )
))
(declare-datatypes ((Regex!11251 0))(
  ( (ElementMatch!11251 (c!672484 C!22688)) (Concat!17828 (regOne!23014 Regex!11251) (regTwo!23014 Regex!11251)) (EmptyExpr!11251) (Star!11251 (reg!11580 Regex!11251)) (EmptyLang!11251) (Union!11251 (regOne!23015 Regex!11251) (regTwo!23015 Regex!11251)) )
))
(declare-datatypes ((List!41105 0))(
  ( (Nil!40981) (Cons!40981 (h!46401 C!22688) (t!313692 List!41105)) )
))
(declare-datatypes ((IArray!25119 0))(
  ( (IArray!25120 (innerList!12617 List!41105)) )
))
(declare-datatypes ((Conc!12557 0))(
  ( (Node!12557 (left!31548 Conc!12557) (right!31878 Conc!12557) (csize!25344 Int) (cheight!12768 Int)) (Leaf!19437 (xs!15863 IArray!25119) (csize!25345 Int)) (Empty!12557) )
))
(declare-datatypes ((BalanceConc!24708 0))(
  ( (BalanceConc!24709 (c!672485 Conc!12557)) )
))
(declare-datatypes ((TokenValueInjection!12580 0))(
  ( (TokenValueInjection!12581 (toValue!8774 Int) (toChars!8633 Int)) )
))
(declare-datatypes ((Rule!12492 0))(
  ( (Rule!12493 (regex!6346 Regex!11251) (tag!7206 String!46597) (isSeparator!6346 Bool) (transformation!6346 TokenValueInjection!12580)) )
))
(declare-datatypes ((Token!11830 0))(
  ( (Token!11831 (value!201495 TokenValue!6576) (rule!9220 Rule!12492) (size!30817 Int) (originalCharacters!6946 List!41105)) )
))
(declare-datatypes ((List!41106 0))(
  ( (Nil!40982) (Cons!40982 (h!46402 Token!11830) (t!313693 List!41106)) )
))
(declare-fun prefixTokens!80 () List!41106)

(declare-fun e!2388638 () Bool)

(declare-fun b!3863269 () Bool)

(declare-fun inv!21 (TokenValue!6576) Bool)

(assert (=> b!3863269 (= e!2388638 (and (inv!21 (value!201495 (h!46402 prefixTokens!80))) e!2388639 tp!1171185))))

(declare-fun b!3863270 () Bool)

(declare-fun e!2388647 () Bool)

(declare-fun e!2388655 () Bool)

(assert (=> b!3863270 (= e!2388647 e!2388655)))

(declare-fun res!1564450 () Bool)

(assert (=> b!3863270 (=> res!1564450 e!2388655)))

(declare-datatypes ((tuple2!40190 0))(
  ( (tuple2!40191 (_1!23229 Token!11830) (_2!23229 List!41105)) )
))
(declare-datatypes ((Option!8764 0))(
  ( (None!8763) (Some!8763 (v!39061 tuple2!40190)) )
))
(declare-fun lt!1342706 () Option!8764)

(declare-fun lt!1342697 () List!41105)

(declare-fun matchR!5398 (Regex!11251 List!41105) Bool)

(assert (=> b!3863270 (= res!1564450 (not (matchR!5398 (regex!6346 (rule!9220 (_1!23229 (v!39061 lt!1342706)))) lt!1342697)))))

(declare-fun lt!1342713 () Int)

(declare-fun lt!1342694 () List!41105)

(declare-fun lt!1342688 () TokenValue!6576)

(declare-datatypes ((LexerInterface!5935 0))(
  ( (LexerInterfaceExt!5932 (__x!25370 Int)) (Lexer!5933) )
))
(declare-fun thiss!20629 () LexerInterface!5935)

(declare-fun maxPrefixOneRule!2321 (LexerInterface!5935 Rule!12492 List!41105) Option!8764)

(assert (=> b!3863270 (= (maxPrefixOneRule!2321 thiss!20629 (rule!9220 (_1!23229 (v!39061 lt!1342706))) lt!1342694) (Some!8763 (tuple2!40191 (Token!11831 lt!1342688 (rule!9220 (_1!23229 (v!39061 lt!1342706))) lt!1342713 lt!1342697) (_2!23229 (v!39061 lt!1342706)))))))

(declare-datatypes ((List!41107 0))(
  ( (Nil!40983) (Cons!40983 (h!46403 Rule!12492) (t!313694 List!41107)) )
))
(declare-fun rules!2768 () List!41107)

(declare-datatypes ((Unit!58643 0))(
  ( (Unit!58644) )
))
(declare-fun lt!1342705 () Unit!58643)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1219 (LexerInterface!5935 List!41107 List!41105 List!41105 List!41105 Rule!12492) Unit!58643)

(assert (=> b!3863270 (= lt!1342705 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1219 thiss!20629 rules!2768 lt!1342697 lt!1342694 (_2!23229 (v!39061 lt!1342706)) (rule!9220 (_1!23229 (v!39061 lt!1342706)))))))

(declare-fun b!3863271 () Bool)

(declare-fun e!2388624 () Bool)

(declare-fun e!2388650 () Bool)

(declare-fun tp!1171194 () Bool)

(assert (=> b!3863271 (= e!2388624 (and e!2388650 tp!1171194))))

(declare-fun res!1564459 () Bool)

(declare-fun e!2388645 () Bool)

(assert (=> start!362328 (=> (not res!1564459) (not e!2388645))))

(get-info :version)

(assert (=> start!362328 (= res!1564459 ((_ is Lexer!5933) thiss!20629))))

(assert (=> start!362328 e!2388645))

(declare-fun e!2388625 () Bool)

(assert (=> start!362328 e!2388625))

(assert (=> start!362328 true))

(declare-fun e!2388632 () Bool)

(assert (=> start!362328 e!2388632))

(assert (=> start!362328 e!2388624))

(declare-fun e!2388648 () Bool)

(assert (=> start!362328 e!2388648))

(declare-fun e!2388651 () Bool)

(assert (=> start!362328 e!2388651))

(declare-fun e!2388636 () Bool)

(assert (=> start!362328 e!2388636))

(declare-fun e!2388623 () Bool)

(declare-fun b!3863272 () Bool)

(declare-fun e!2388626 () Bool)

(declare-fun suffixTokens!72 () List!41106)

(declare-fun tp!1171188 () Bool)

(declare-fun inv!55140 (String!46597) Bool)

(declare-fun inv!55143 (TokenValueInjection!12580) Bool)

(assert (=> b!3863272 (= e!2388623 (and tp!1171188 (inv!55140 (tag!7206 (rule!9220 (h!46402 suffixTokens!72)))) (inv!55143 (transformation!6346 (rule!9220 (h!46402 suffixTokens!72)))) e!2388626))))

(declare-fun b!3863273 () Bool)

(declare-fun e!2388633 () Bool)

(declare-fun e!2388646 () Bool)

(assert (=> b!3863273 (= e!2388633 e!2388646)))

(declare-fun res!1564466 () Bool)

(assert (=> b!3863273 (=> res!1564466 e!2388646)))

(declare-fun lt!1342690 () Int)

(declare-fun lt!1342693 () Int)

(assert (=> b!3863273 (= res!1564466 (not (= (+ lt!1342713 lt!1342693) lt!1342690)))))

(declare-fun size!30818 (List!41105) Int)

(assert (=> b!3863273 (= lt!1342690 (size!30818 lt!1342694))))

(declare-fun tp!1171199 () Bool)

(declare-fun e!2388634 () Bool)

(declare-fun b!3863274 () Bool)

(assert (=> b!3863274 (= e!2388650 (and tp!1171199 (inv!55140 (tag!7206 (h!46403 rules!2768))) (inv!55143 (transformation!6346 (h!46403 rules!2768))) e!2388634))))

(declare-fun lt!1342711 () tuple2!40190)

(declare-fun bm!282577 () Bool)

(declare-datatypes ((tuple2!40192 0))(
  ( (tuple2!40193 (_1!23230 List!41106) (_2!23230 List!41105)) )
))
(declare-fun call!282582 () tuple2!40192)

(declare-fun lexList!1703 (LexerInterface!5935 List!41107 List!41105) tuple2!40192)

(assert (=> bm!282577 (= call!282582 (lexList!1703 thiss!20629 rules!2768 (_2!23229 lt!1342711)))))

(declare-fun b!3863275 () Bool)

(declare-fun tp_is_empty!19473 () Bool)

(declare-fun tp!1171187 () Bool)

(assert (=> b!3863275 (= e!2388625 (and tp_is_empty!19473 tp!1171187))))

(declare-fun b!3863276 () Bool)

(declare-fun e!2388628 () Bool)

(assert (=> b!3863276 e!2388628))

(declare-fun res!1564461 () Bool)

(assert (=> b!3863276 (=> (not res!1564461) (not e!2388628))))

(declare-fun lt!1342702 () tuple2!40192)

(assert (=> b!3863276 (= res!1564461 (not (= call!282582 lt!1342702)))))

(declare-fun suffixResult!91 () List!41105)

(declare-fun suffix!1176 () List!41105)

(declare-fun lt!1342707 () Unit!58643)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!6 (LexerInterface!5935 List!41107 List!41105 List!41105 List!41106 List!41105) Unit!58643)

(assert (=> b!3863276 (= lt!1342707 (lemmaLexWithSmallerInputCannotProduceSameResults!6 thiss!20629 rules!2768 suffix!1176 (_2!23229 lt!1342711) suffixTokens!72 suffixResult!91))))

(assert (=> b!3863276 (= (_2!23229 (v!39061 lt!1342706)) (_2!23229 lt!1342711))))

(declare-fun lt!1342700 () Unit!58643)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!430 (List!41105 List!41105 List!41105 List!41105) Unit!58643)

(assert (=> b!3863276 (= lt!1342700 (lemmaConcatSameAndSameSizesThenSameLists!430 lt!1342697 (_2!23229 (v!39061 lt!1342706)) lt!1342697 (_2!23229 lt!1342711)))))

(declare-fun e!2388653 () Unit!58643)

(declare-fun Unit!58645 () Unit!58643)

(assert (=> b!3863276 (= e!2388653 Unit!58645)))

(declare-fun b!3863277 () Bool)

(declare-fun res!1564453 () Bool)

(declare-fun e!2388652 () Bool)

(assert (=> b!3863277 (=> res!1564453 e!2388652)))

(declare-fun lt!1342704 () tuple2!40192)

(declare-fun lt!1342708 () tuple2!40192)

(declare-fun ++!10449 (List!41106 List!41106) List!41106)

(assert (=> b!3863277 (= res!1564453 (not (= lt!1342704 (tuple2!40193 (++!10449 (Cons!40982 (_1!23229 (v!39061 lt!1342706)) Nil!40982) (_1!23230 lt!1342708)) (_2!23230 lt!1342708)))))))

(declare-fun b!3863278 () Bool)

(declare-fun e!2388640 () Bool)

(declare-fun e!2388643 () Bool)

(assert (=> b!3863278 (= e!2388640 e!2388643)))

(declare-fun res!1564468 () Bool)

(assert (=> b!3863278 (=> (not res!1564468) (not e!2388643))))

(assert (=> b!3863278 (= res!1564468 ((_ is Some!8763) lt!1342706))))

(declare-fun maxPrefix!3239 (LexerInterface!5935 List!41107 List!41105) Option!8764)

(assert (=> b!3863278 (= lt!1342706 (maxPrefix!3239 thiss!20629 rules!2768 lt!1342694))))

(declare-fun b!3863279 () Bool)

(assert (=> b!3863279 (= e!2388652 e!2388633)))

(declare-fun res!1564455 () Bool)

(assert (=> b!3863279 (=> res!1564455 e!2388633)))

(declare-fun lt!1342712 () Int)

(assert (=> b!3863279 (= res!1564455 (>= lt!1342693 lt!1342712))))

(assert (=> b!3863279 (= lt!1342712 (size!30818 suffix!1176))))

(assert (=> b!3863279 (= lt!1342693 (size!30818 (_2!23229 (v!39061 lt!1342706))))))

(declare-fun b!3863280 () Bool)

(assert (=> b!3863280 (= e!2388628 false)))

(declare-fun b!3863281 () Bool)

(declare-fun res!1564458 () Bool)

(assert (=> b!3863281 (=> (not res!1564458) (not e!2388645))))

(declare-fun rulesInvariant!5278 (LexerInterface!5935 List!41107) Bool)

(assert (=> b!3863281 (= res!1564458 (rulesInvariant!5278 thiss!20629 rules!2768))))

(declare-fun b!3863282 () Bool)

(declare-fun tp!1171184 () Bool)

(assert (=> b!3863282 (= e!2388636 (and tp_is_empty!19473 tp!1171184))))

(declare-fun b!3863283 () Bool)

(declare-fun res!1564457 () Bool)

(assert (=> b!3863283 (=> (not res!1564457) (not e!2388645))))

(declare-fun isEmpty!24286 (List!41107) Bool)

(assert (=> b!3863283 (= res!1564457 (not (isEmpty!24286 rules!2768)))))

(declare-fun b!3863284 () Bool)

(declare-fun tp!1171192 () Bool)

(declare-fun e!2388629 () Bool)

(assert (=> b!3863284 (= e!2388629 (and (inv!21 (value!201495 (h!46402 suffixTokens!72))) e!2388623 tp!1171192))))

(assert (=> b!3863285 (= e!2388626 (and tp!1171189 tp!1171191))))

(declare-fun b!3863286 () Bool)

(declare-fun e!2388649 () Unit!58643)

(declare-fun Unit!58646 () Unit!58643)

(assert (=> b!3863286 (= e!2388649 Unit!58646)))

(declare-fun b!3863287 () Bool)

(declare-fun e!2388637 () Bool)

(assert (=> b!3863287 (= e!2388637 (= (size!30817 (_1!23229 (v!39061 lt!1342706))) (size!30818 (originalCharacters!6946 (_1!23229 (v!39061 lt!1342706))))))))

(declare-fun b!3863288 () Bool)

(assert (=> b!3863288 (= e!2388646 e!2388647)))

(declare-fun res!1564456 () Bool)

(assert (=> b!3863288 (=> res!1564456 e!2388647)))

(declare-fun lt!1342692 () Int)

(assert (=> b!3863288 (= res!1564456 (or (not (= (+ lt!1342692 lt!1342712) lt!1342690)) (<= lt!1342713 lt!1342692)))))

(declare-fun prefix!426 () List!41105)

(assert (=> b!3863288 (= lt!1342692 (size!30818 prefix!426))))

(declare-fun b!3863289 () Bool)

(declare-fun e!2388631 () Bool)

(assert (=> b!3863289 (= e!2388655 e!2388631)))

(declare-fun res!1564460 () Bool)

(assert (=> b!3863289 (=> res!1564460 e!2388631)))

(declare-fun head!8156 (List!41106) Token!11830)

(assert (=> b!3863289 (= res!1564460 (not (= (_1!23229 lt!1342711) (head!8156 prefixTokens!80))))))

(declare-fun get!13559 (Option!8764) tuple2!40190)

(assert (=> b!3863289 (= lt!1342711 (get!13559 lt!1342706))))

(declare-fun b!3863290 () Bool)

(declare-fun e!2388644 () Bool)

(assert (=> b!3863290 (= e!2388644 e!2388640)))

(declare-fun res!1564451 () Bool)

(assert (=> b!3863290 (=> (not res!1564451) (not e!2388640))))

(assert (=> b!3863290 (= res!1564451 (= (lexList!1703 thiss!20629 rules!2768 suffix!1176) lt!1342702))))

(assert (=> b!3863290 (= lt!1342702 (tuple2!40193 suffixTokens!72 suffixResult!91))))

(declare-fun b!3863291 () Bool)

(declare-fun res!1564452 () Bool)

(assert (=> b!3863291 (=> res!1564452 e!2388652)))

(assert (=> b!3863291 (= res!1564452 (or (not (= lt!1342708 (tuple2!40193 (_1!23230 lt!1342708) (_2!23230 lt!1342708)))) (= (_2!23229 (v!39061 lt!1342706)) suffix!1176)))))

(declare-fun tp!1171186 () Bool)

(declare-fun b!3863292 () Bool)

(declare-fun inv!55144 (Token!11830) Bool)

(assert (=> b!3863292 (= e!2388651 (and (inv!55144 (h!46402 suffixTokens!72)) e!2388629 tp!1171186))))

(declare-fun b!3863293 () Bool)

(declare-fun e!2388641 () Bool)

(assert (=> b!3863293 e!2388641))

(declare-fun res!1564462 () Bool)

(assert (=> b!3863293 (=> (not res!1564462) (not e!2388641))))

(declare-fun lt!1342695 () List!41106)

(assert (=> b!3863293 (= res!1564462 (not (= call!282582 (tuple2!40193 (++!10449 lt!1342695 suffixTokens!72) suffixResult!91))))))

(declare-fun lt!1342701 () Unit!58643)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!6 (LexerInterface!5935 List!41107 List!41105 List!41105 List!41106 List!41105 List!41106) Unit!58643)

(assert (=> b!3863293 (= lt!1342701 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!6 thiss!20629 rules!2768 suffix!1176 (_2!23229 lt!1342711) suffixTokens!72 suffixResult!91 lt!1342695))))

(declare-fun Unit!58647 () Unit!58643)

(assert (=> b!3863293 (= e!2388653 Unit!58647)))

(declare-fun b!3863294 () Bool)

(declare-fun res!1564463 () Bool)

(assert (=> b!3863294 (=> (not res!1564463) (not e!2388645))))

(declare-fun isEmpty!24287 (List!41105) Bool)

(assert (=> b!3863294 (= res!1564463 (not (isEmpty!24287 prefix!426)))))

(declare-fun b!3863295 () Bool)

(declare-fun tp!1171200 () Bool)

(assert (=> b!3863295 (= e!2388632 (and tp_is_empty!19473 tp!1171200))))

(declare-fun b!3863296 () Bool)

(assert (=> b!3863296 (= e!2388641 false)))

(declare-fun b!3863297 () Bool)

(assert (=> b!3863297 (= e!2388631 true)))

(declare-fun lt!1342689 () Bool)

(declare-fun rulesValidInductive!2266 (LexerInterface!5935 List!41107) Bool)

(assert (=> b!3863297 (= lt!1342689 (rulesValidInductive!2266 thiss!20629 rules!2768))))

(declare-fun lt!1342709 () Unit!58643)

(assert (=> b!3863297 (= lt!1342709 e!2388649)))

(declare-fun c!672483 () Bool)

(assert (=> b!3863297 (= c!672483 (< (size!30818 (_2!23229 lt!1342711)) lt!1342712))))

(declare-fun b!3863298 () Bool)

(declare-fun tp!1171195 () Bool)

(assert (=> b!3863298 (= e!2388648 (and (inv!55144 (h!46402 prefixTokens!80)) e!2388638 tp!1171195))))

(declare-fun b!3863299 () Bool)

(declare-fun res!1564465 () Bool)

(assert (=> b!3863299 (=> (not res!1564465) (not e!2388645))))

(declare-fun isEmpty!24288 (List!41106) Bool)

(assert (=> b!3863299 (= res!1564465 (not (isEmpty!24288 prefixTokens!80)))))

(declare-fun b!3863300 () Bool)

(assert (=> b!3863300 (= e!2388649 e!2388653)))

(declare-fun tail!5867 (List!41106) List!41106)

(assert (=> b!3863300 (= lt!1342695 (tail!5867 prefixTokens!80))))

(declare-fun c!672482 () Bool)

(assert (=> b!3863300 (= c!672482 (isEmpty!24288 lt!1342695))))

(declare-fun b!3863301 () Bool)

(assert (=> b!3863301 (= e!2388645 e!2388644)))

(declare-fun res!1564464 () Bool)

(assert (=> b!3863301 (=> (not res!1564464) (not e!2388644))))

(declare-fun lt!1342696 () List!41106)

(assert (=> b!3863301 (= res!1564464 (= lt!1342704 (tuple2!40193 lt!1342696 suffixResult!91)))))

(assert (=> b!3863301 (= lt!1342704 (lexList!1703 thiss!20629 rules!2768 lt!1342694))))

(assert (=> b!3863301 (= lt!1342696 (++!10449 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10450 (List!41105 List!41105) List!41105)

(assert (=> b!3863301 (= lt!1342694 (++!10450 prefix!426 suffix!1176))))

(assert (=> b!3863302 (= e!2388634 (and tp!1171197 tp!1171193))))

(declare-fun tp!1171196 () Bool)

(declare-fun b!3863303 () Bool)

(assert (=> b!3863303 (= e!2388639 (and tp!1171196 (inv!55140 (tag!7206 (rule!9220 (h!46402 prefixTokens!80)))) (inv!55143 (transformation!6346 (rule!9220 (h!46402 prefixTokens!80)))) e!2388635))))

(declare-fun b!3863304 () Bool)

(assert (=> b!3863304 (= e!2388643 (not e!2388652))))

(declare-fun res!1564454 () Bool)

(assert (=> b!3863304 (=> res!1564454 e!2388652)))

(declare-fun lt!1342710 () List!41105)

(assert (=> b!3863304 (= res!1564454 (not (= lt!1342710 lt!1342694)))))

(assert (=> b!3863304 (= lt!1342708 (lexList!1703 thiss!20629 rules!2768 (_2!23229 (v!39061 lt!1342706))))))

(declare-fun lt!1342699 () List!41105)

(assert (=> b!3863304 (and (= (size!30817 (_1!23229 (v!39061 lt!1342706))) lt!1342713) (= (originalCharacters!6946 (_1!23229 (v!39061 lt!1342706))) lt!1342697) (= (v!39061 lt!1342706) (tuple2!40191 (Token!11831 lt!1342688 (rule!9220 (_1!23229 (v!39061 lt!1342706))) lt!1342713 lt!1342697) lt!1342699)))))

(assert (=> b!3863304 (= lt!1342713 (size!30818 lt!1342697))))

(assert (=> b!3863304 e!2388637))

(declare-fun res!1564467 () Bool)

(assert (=> b!3863304 (=> (not res!1564467) (not e!2388637))))

(assert (=> b!3863304 (= res!1564467 (= (value!201495 (_1!23229 (v!39061 lt!1342706))) lt!1342688))))

(declare-fun apply!9589 (TokenValueInjection!12580 BalanceConc!24708) TokenValue!6576)

(declare-fun seqFromList!4617 (List!41105) BalanceConc!24708)

(assert (=> b!3863304 (= lt!1342688 (apply!9589 (transformation!6346 (rule!9220 (_1!23229 (v!39061 lt!1342706)))) (seqFromList!4617 lt!1342697)))))

(assert (=> b!3863304 (= (_2!23229 (v!39061 lt!1342706)) lt!1342699)))

(declare-fun lt!1342687 () Unit!58643)

(declare-fun lemmaSamePrefixThenSameSuffix!1666 (List!41105 List!41105 List!41105 List!41105 List!41105) Unit!58643)

(assert (=> b!3863304 (= lt!1342687 (lemmaSamePrefixThenSameSuffix!1666 lt!1342697 (_2!23229 (v!39061 lt!1342706)) lt!1342697 lt!1342699 lt!1342694))))

(declare-fun getSuffix!1900 (List!41105 List!41105) List!41105)

(assert (=> b!3863304 (= lt!1342699 (getSuffix!1900 lt!1342694 lt!1342697))))

(declare-fun isPrefix!3445 (List!41105 List!41105) Bool)

(assert (=> b!3863304 (isPrefix!3445 lt!1342697 lt!1342710)))

(assert (=> b!3863304 (= lt!1342710 (++!10450 lt!1342697 (_2!23229 (v!39061 lt!1342706))))))

(declare-fun lt!1342691 () Unit!58643)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2308 (List!41105 List!41105) Unit!58643)

(assert (=> b!3863304 (= lt!1342691 (lemmaConcatTwoListThenFirstIsPrefix!2308 lt!1342697 (_2!23229 (v!39061 lt!1342706))))))

(declare-fun list!15252 (BalanceConc!24708) List!41105)

(declare-fun charsOf!4174 (Token!11830) BalanceConc!24708)

(assert (=> b!3863304 (= lt!1342697 (list!15252 (charsOf!4174 (_1!23229 (v!39061 lt!1342706)))))))

(declare-fun ruleValid!2298 (LexerInterface!5935 Rule!12492) Bool)

(assert (=> b!3863304 (ruleValid!2298 thiss!20629 (rule!9220 (_1!23229 (v!39061 lt!1342706))))))

(declare-fun lt!1342698 () Unit!58643)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1378 (LexerInterface!5935 Rule!12492 List!41107) Unit!58643)

(assert (=> b!3863304 (= lt!1342698 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1378 thiss!20629 (rule!9220 (_1!23229 (v!39061 lt!1342706))) rules!2768))))

(declare-fun lt!1342703 () Unit!58643)

(declare-fun lemmaCharactersSize!1007 (Token!11830) Unit!58643)

(assert (=> b!3863304 (= lt!1342703 (lemmaCharactersSize!1007 (_1!23229 (v!39061 lt!1342706))))))

(assert (= (and start!362328 res!1564459) b!3863283))

(assert (= (and b!3863283 res!1564457) b!3863281))

(assert (= (and b!3863281 res!1564458) b!3863299))

(assert (= (and b!3863299 res!1564465) b!3863294))

(assert (= (and b!3863294 res!1564463) b!3863301))

(assert (= (and b!3863301 res!1564464) b!3863290))

(assert (= (and b!3863290 res!1564451) b!3863278))

(assert (= (and b!3863278 res!1564468) b!3863304))

(assert (= (and b!3863304 res!1564467) b!3863287))

(assert (= (and b!3863304 (not res!1564454)) b!3863277))

(assert (= (and b!3863277 (not res!1564453)) b!3863291))

(assert (= (and b!3863291 (not res!1564452)) b!3863279))

(assert (= (and b!3863279 (not res!1564455)) b!3863273))

(assert (= (and b!3863273 (not res!1564466)) b!3863288))

(assert (= (and b!3863288 (not res!1564456)) b!3863270))

(assert (= (and b!3863270 (not res!1564450)) b!3863289))

(assert (= (and b!3863289 (not res!1564460)) b!3863297))

(assert (= (and b!3863297 c!672483) b!3863300))

(assert (= (and b!3863297 (not c!672483)) b!3863286))

(assert (= (and b!3863300 c!672482) b!3863276))

(assert (= (and b!3863300 (not c!672482)) b!3863293))

(assert (= (and b!3863276 res!1564461) b!3863280))

(assert (= (and b!3863293 res!1564462) b!3863296))

(assert (= (or b!3863276 b!3863293) bm!282577))

(assert (= (and start!362328 ((_ is Cons!40981) suffixResult!91)) b!3863275))

(assert (= (and start!362328 ((_ is Cons!40981) suffix!1176)) b!3863295))

(assert (= b!3863274 b!3863302))

(assert (= b!3863271 b!3863274))

(assert (= (and start!362328 ((_ is Cons!40983) rules!2768)) b!3863271))

(assert (= b!3863303 b!3863268))

(assert (= b!3863269 b!3863303))

(assert (= b!3863298 b!3863269))

(assert (= (and start!362328 ((_ is Cons!40982) prefixTokens!80)) b!3863298))

(assert (= b!3863272 b!3863285))

(assert (= b!3863284 b!3863272))

(assert (= b!3863292 b!3863284))

(assert (= (and start!362328 ((_ is Cons!40982) suffixTokens!72)) b!3863292))

(assert (= (and start!362328 ((_ is Cons!40981) prefix!426)) b!3863282))

(declare-fun m!4418703 () Bool)

(assert (=> b!3863292 m!4418703))

(declare-fun m!4418705 () Bool)

(assert (=> b!3863304 m!4418705))

(declare-fun m!4418707 () Bool)

(assert (=> b!3863304 m!4418707))

(declare-fun m!4418709 () Bool)

(assert (=> b!3863304 m!4418709))

(declare-fun m!4418711 () Bool)

(assert (=> b!3863304 m!4418711))

(declare-fun m!4418713 () Bool)

(assert (=> b!3863304 m!4418713))

(declare-fun m!4418715 () Bool)

(assert (=> b!3863304 m!4418715))

(declare-fun m!4418717 () Bool)

(assert (=> b!3863304 m!4418717))

(declare-fun m!4418719 () Bool)

(assert (=> b!3863304 m!4418719))

(assert (=> b!3863304 m!4418709))

(declare-fun m!4418721 () Bool)

(assert (=> b!3863304 m!4418721))

(declare-fun m!4418723 () Bool)

(assert (=> b!3863304 m!4418723))

(declare-fun m!4418725 () Bool)

(assert (=> b!3863304 m!4418725))

(declare-fun m!4418727 () Bool)

(assert (=> b!3863304 m!4418727))

(declare-fun m!4418729 () Bool)

(assert (=> b!3863304 m!4418729))

(declare-fun m!4418731 () Bool)

(assert (=> b!3863304 m!4418731))

(assert (=> b!3863304 m!4418705))

(declare-fun m!4418733 () Bool)

(assert (=> b!3863270 m!4418733))

(declare-fun m!4418735 () Bool)

(assert (=> b!3863270 m!4418735))

(declare-fun m!4418737 () Bool)

(assert (=> b!3863270 m!4418737))

(declare-fun m!4418739 () Bool)

(assert (=> b!3863283 m!4418739))

(declare-fun m!4418741 () Bool)

(assert (=> b!3863297 m!4418741))

(declare-fun m!4418743 () Bool)

(assert (=> b!3863297 m!4418743))

(declare-fun m!4418745 () Bool)

(assert (=> b!3863269 m!4418745))

(declare-fun m!4418747 () Bool)

(assert (=> bm!282577 m!4418747))

(declare-fun m!4418749 () Bool)

(assert (=> b!3863298 m!4418749))

(declare-fun m!4418751 () Bool)

(assert (=> b!3863300 m!4418751))

(declare-fun m!4418753 () Bool)

(assert (=> b!3863300 m!4418753))

(declare-fun m!4418755 () Bool)

(assert (=> b!3863272 m!4418755))

(declare-fun m!4418757 () Bool)

(assert (=> b!3863272 m!4418757))

(declare-fun m!4418759 () Bool)

(assert (=> b!3863293 m!4418759))

(declare-fun m!4418761 () Bool)

(assert (=> b!3863293 m!4418761))

(declare-fun m!4418763 () Bool)

(assert (=> b!3863278 m!4418763))

(declare-fun m!4418765 () Bool)

(assert (=> b!3863277 m!4418765))

(declare-fun m!4418767 () Bool)

(assert (=> b!3863288 m!4418767))

(declare-fun m!4418769 () Bool)

(assert (=> b!3863281 m!4418769))

(declare-fun m!4418771 () Bool)

(assert (=> b!3863290 m!4418771))

(declare-fun m!4418773 () Bool)

(assert (=> b!3863303 m!4418773))

(declare-fun m!4418775 () Bool)

(assert (=> b!3863303 m!4418775))

(declare-fun m!4418777 () Bool)

(assert (=> b!3863284 m!4418777))

(declare-fun m!4418779 () Bool)

(assert (=> b!3863294 m!4418779))

(declare-fun m!4418781 () Bool)

(assert (=> b!3863287 m!4418781))

(declare-fun m!4418783 () Bool)

(assert (=> b!3863276 m!4418783))

(declare-fun m!4418785 () Bool)

(assert (=> b!3863276 m!4418785))

(declare-fun m!4418787 () Bool)

(assert (=> b!3863274 m!4418787))

(declare-fun m!4418789 () Bool)

(assert (=> b!3863274 m!4418789))

(declare-fun m!4418791 () Bool)

(assert (=> b!3863279 m!4418791))

(declare-fun m!4418793 () Bool)

(assert (=> b!3863279 m!4418793))

(declare-fun m!4418795 () Bool)

(assert (=> b!3863299 m!4418795))

(declare-fun m!4418797 () Bool)

(assert (=> b!3863289 m!4418797))

(declare-fun m!4418799 () Bool)

(assert (=> b!3863289 m!4418799))

(declare-fun m!4418801 () Bool)

(assert (=> b!3863273 m!4418801))

(declare-fun m!4418803 () Bool)

(assert (=> b!3863301 m!4418803))

(declare-fun m!4418805 () Bool)

(assert (=> b!3863301 m!4418805))

(declare-fun m!4418807 () Bool)

(assert (=> b!3863301 m!4418807))

(check-sat (not b!3863297) (not b_next!104689) (not b!3863283) (not b!3863273) tp_is_empty!19473 (not b!3863275) b_and!289305 (not bm!282577) (not b!3863301) (not b!3863276) (not b!3863284) (not b!3863269) (not b!3863288) (not b!3863290) (not b!3863299) (not b!3863304) (not b!3863293) (not b_next!104687) (not b!3863270) (not b!3863287) (not b!3863271) (not b!3863298) (not b!3863292) b_and!289299 (not b!3863303) b_and!289301 (not b_next!104691) (not b!3863282) (not b_next!104693) (not b!3863272) (not b_next!104695) (not b!3863278) (not b_next!104685) (not b!3863277) (not b!3863300) (not b!3863279) (not b!3863294) (not b!3863289) b_and!289309 b_and!289303 (not b!3863281) b_and!289307 (not b!3863295) (not b!3863274))
(check-sat (not b_next!104689) (not b_next!104687) b_and!289305 (not b_next!104685) b_and!289309 b_and!289303 b_and!289307 b_and!289299 b_and!289301 (not b_next!104691) (not b_next!104693) (not b_next!104695))
