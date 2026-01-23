; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394302 () Bool)

(assert start!394302)

(declare-fun b!4145510 () Bool)

(declare-fun b_free!118235 () Bool)

(declare-fun b_next!118939 () Bool)

(assert (=> b!4145510 (= b_free!118235 (not b_next!118939))))

(declare-fun tp!1263577 () Bool)

(declare-fun b_and!322153 () Bool)

(assert (=> b!4145510 (= tp!1263577 b_and!322153)))

(declare-fun b_free!118237 () Bool)

(declare-fun b_next!118941 () Bool)

(assert (=> b!4145510 (= b_free!118237 (not b_next!118941))))

(declare-fun tp!1263570 () Bool)

(declare-fun b_and!322155 () Bool)

(assert (=> b!4145510 (= tp!1263570 b_and!322155)))

(declare-fun b!4145511 () Bool)

(declare-fun b_free!118239 () Bool)

(declare-fun b_next!118943 () Bool)

(assert (=> b!4145511 (= b_free!118239 (not b_next!118943))))

(declare-fun tp!1263567 () Bool)

(declare-fun b_and!322157 () Bool)

(assert (=> b!4145511 (= tp!1263567 b_and!322157)))

(declare-fun b_free!118241 () Bool)

(declare-fun b_next!118945 () Bool)

(assert (=> b!4145511 (= b_free!118241 (not b_next!118945))))

(declare-fun tp!1263575 () Bool)

(declare-fun b_and!322159 () Bool)

(assert (=> b!4145511 (= tp!1263575 b_and!322159)))

(declare-fun b!4145518 () Bool)

(declare-fun b_free!118243 () Bool)

(declare-fun b_next!118947 () Bool)

(assert (=> b!4145518 (= b_free!118243 (not b_next!118947))))

(declare-fun tp!1263574 () Bool)

(declare-fun b_and!322161 () Bool)

(assert (=> b!4145518 (= tp!1263574 b_and!322161)))

(declare-fun b_free!118245 () Bool)

(declare-fun b_next!118949 () Bool)

(assert (=> b!4145518 (= b_free!118245 (not b_next!118949))))

(declare-fun tp!1263571 () Bool)

(declare-fun b_and!322163 () Bool)

(assert (=> b!4145518 (= tp!1263571 b_and!322163)))

(declare-fun b!4145508 () Bool)

(declare-fun e!2572169 () Bool)

(declare-fun tp_is_empty!21529 () Bool)

(declare-fun tp!1263572 () Bool)

(assert (=> b!4145508 (= e!2572169 (and tp_is_empty!21529 tp!1263572))))

(declare-fun b!4145509 () Bool)

(declare-fun res!1696708 () Bool)

(declare-fun e!2572176 () Bool)

(assert (=> b!4145509 (=> (not res!1696708) (not e!2572176))))

(declare-datatypes ((List!45111 0))(
  ( (Nil!44987) (Cons!44987 (h!50407 (_ BitVec 16)) (t!342726 List!45111)) )
))
(declare-datatypes ((TokenValue!7628 0))(
  ( (FloatLiteralValue!15256 (text!53841 List!45111)) (TokenValueExt!7627 (__x!27473 Int)) (Broken!38140 (value!231371 List!45111)) (Object!7751) (End!7628) (Def!7628) (Underscore!7628) (Match!7628) (Else!7628) (Error!7628) (Case!7628) (If!7628) (Extends!7628) (Abstract!7628) (Class!7628) (Val!7628) (DelimiterValue!15256 (del!7688 List!45111)) (KeywordValue!7634 (value!231372 List!45111)) (CommentValue!15256 (value!231373 List!45111)) (WhitespaceValue!15256 (value!231374 List!45111)) (IndentationValue!7628 (value!231375 List!45111)) (String!51889) (Int32!7628) (Broken!38141 (value!231376 List!45111)) (Boolean!7629) (Unit!64276) (OperatorValue!7631 (op!7688 List!45111)) (IdentifierValue!15256 (value!231377 List!45111)) (IdentifierValue!15257 (value!231378 List!45111)) (WhitespaceValue!15257 (value!231379 List!45111)) (True!15256) (False!15256) (Broken!38142 (value!231380 List!45111)) (Broken!38143 (value!231381 List!45111)) (True!15257) (RightBrace!7628) (RightBracket!7628) (Colon!7628) (Null!7628) (Comma!7628) (LeftBracket!7628) (False!15257) (LeftBrace!7628) (ImaginaryLiteralValue!7628 (text!53842 List!45111)) (StringLiteralValue!22884 (value!231382 List!45111)) (EOFValue!7628 (value!231383 List!45111)) (IdentValue!7628 (value!231384 List!45111)) (DelimiterValue!15257 (value!231385 List!45111)) (DedentValue!7628 (value!231386 List!45111)) (NewLineValue!7628 (value!231387 List!45111)) (IntegerValue!22884 (value!231388 (_ BitVec 32)) (text!53843 List!45111)) (IntegerValue!22885 (value!231389 Int) (text!53844 List!45111)) (Times!7628) (Or!7628) (Equal!7628) (Minus!7628) (Broken!38144 (value!231390 List!45111)) (And!7628) (Div!7628) (LessEqual!7628) (Mod!7628) (Concat!19931) (Not!7628) (Plus!7628) (SpaceValue!7628 (value!231391 List!45111)) (IntegerValue!22886 (value!231392 Int) (text!53845 List!45111)) (StringLiteralValue!22885 (text!53846 List!45111)) (FloatLiteralValue!15257 (text!53847 List!45111)) (BytesLiteralValue!7628 (value!231393 List!45111)) (CommentValue!15257 (value!231394 List!45111)) (StringLiteralValue!22886 (value!231395 List!45111)) (ErrorTokenValue!7628 (msg!7689 List!45111)) )
))
(declare-datatypes ((C!24792 0))(
  ( (C!24793 (val!14506 Int)) )
))
(declare-datatypes ((List!45112 0))(
  ( (Nil!44988) (Cons!44988 (h!50408 C!24792) (t!342727 List!45112)) )
))
(declare-datatypes ((IArray!27223 0))(
  ( (IArray!27224 (innerList!13669 List!45112)) )
))
(declare-datatypes ((Conc!13609 0))(
  ( (Node!13609 (left!33686 Conc!13609) (right!34016 Conc!13609) (csize!27448 Int) (cheight!13820 Int)) (Leaf!21023 (xs!16915 IArray!27223) (csize!27449 Int)) (Empty!13609) )
))
(declare-datatypes ((BalanceConc!26812 0))(
  ( (BalanceConc!26813 (c!710354 Conc!13609)) )
))
(declare-datatypes ((Regex!12303 0))(
  ( (ElementMatch!12303 (c!710355 C!24792)) (Concat!19932 (regOne!25118 Regex!12303) (regTwo!25118 Regex!12303)) (EmptyExpr!12303) (Star!12303 (reg!12632 Regex!12303)) (EmptyLang!12303) (Union!12303 (regOne!25119 Regex!12303) (regTwo!25119 Regex!12303)) )
))
(declare-datatypes ((String!51890 0))(
  ( (String!51891 (value!231396 String)) )
))
(declare-datatypes ((TokenValueInjection!14684 0))(
  ( (TokenValueInjection!14685 (toValue!10062 Int) (toChars!9921 Int)) )
))
(declare-datatypes ((Rule!14596 0))(
  ( (Rule!14597 (regex!7398 Regex!12303) (tag!8258 String!51890) (isSeparator!7398 Bool) (transformation!7398 TokenValueInjection!14684)) )
))
(declare-fun r!4008 () Rule!14596)

(declare-fun p!2912 () List!45112)

(declare-fun matchR!6132 (Regex!12303 List!45112) Bool)

(assert (=> b!4145509 (= res!1696708 (matchR!6132 (regex!7398 r!4008) p!2912))))

(declare-fun e!2572183 () Bool)

(assert (=> b!4145510 (= e!2572183 (and tp!1263577 tp!1263570))))

(declare-fun res!1696706 () Bool)

(declare-fun e!2572179 () Bool)

(assert (=> start!394302 (=> (not res!1696706) (not e!2572179))))

(declare-datatypes ((LexerInterface!6987 0))(
  ( (LexerInterfaceExt!6984 (__x!27474 Int)) (Lexer!6985) )
))
(declare-fun thiss!25645 () LexerInterface!6987)

(get-info :version)

(assert (=> start!394302 (= res!1696706 ((_ is Lexer!6985) thiss!25645))))

(assert (=> start!394302 e!2572179))

(declare-fun e!2572168 () Bool)

(assert (=> start!394302 e!2572168))

(assert (=> start!394302 e!2572169))

(assert (=> start!394302 true))

(declare-fun e!2572180 () Bool)

(assert (=> start!394302 e!2572180))

(declare-fun e!2572182 () Bool)

(assert (=> start!394302 e!2572182))

(declare-fun e!2572170 () Bool)

(assert (=> start!394302 e!2572170))

(declare-fun e!2572184 () Bool)

(assert (=> b!4145511 (= e!2572184 (and tp!1263567 tp!1263575))))

(declare-fun b!4145512 () Bool)

(declare-fun res!1696700 () Bool)

(assert (=> b!4145512 (=> (not res!1696700) (not e!2572179))))

(declare-datatypes ((List!45113 0))(
  ( (Nil!44989) (Cons!44989 (h!50409 Rule!14596) (t!342728 List!45113)) )
))
(declare-fun rules!3756 () List!45113)

(declare-fun rulesInvariant!6284 (LexerInterface!6987 List!45113) Bool)

(assert (=> b!4145512 (= res!1696700 (rulesInvariant!6284 thiss!25645 rules!3756))))

(declare-fun b!4145513 () Bool)

(declare-fun res!1696703 () Bool)

(assert (=> b!4145513 (=> (not res!1696703) (not e!2572179))))

(declare-fun input!3238 () List!45112)

(declare-fun isPrefix!4333 (List!45112 List!45112) Bool)

(assert (=> b!4145513 (= res!1696703 (isPrefix!4333 p!2912 input!3238))))

(declare-fun b!4145514 () Bool)

(declare-fun res!1696707 () Bool)

(assert (=> b!4145514 (=> (not res!1696707) (not e!2572176))))

(declare-fun rBis!149 () Rule!14596)

(declare-fun getIndex!744 (List!45113 Rule!14596) Int)

(assert (=> b!4145514 (= res!1696707 (< (getIndex!744 rules!3756 rBis!149) (getIndex!744 rules!3756 r!4008)))))

(declare-fun b!4145515 () Bool)

(declare-fun res!1696713 () Bool)

(assert (=> b!4145515 (=> (not res!1696713) (not e!2572179))))

(declare-fun isEmpty!26847 (List!45112) Bool)

(assert (=> b!4145515 (= res!1696713 (not (isEmpty!26847 p!2912)))))

(declare-fun b!4145516 () Bool)

(assert (=> b!4145516 (= e!2572179 e!2572176)))

(declare-fun res!1696710 () Bool)

(assert (=> b!4145516 (=> (not res!1696710) (not e!2572176))))

(declare-datatypes ((Token!13726 0))(
  ( (Token!13727 (value!231397 TokenValue!7628) (rule!10520 Rule!14596) (size!33346 Int) (originalCharacters!7894 List!45112)) )
))
(declare-fun lt!1478606 () Token!13726)

(declare-datatypes ((tuple2!43362 0))(
  ( (tuple2!43363 (_1!24815 Token!13726) (_2!24815 List!45112)) )
))
(declare-datatypes ((Option!9704 0))(
  ( (None!9703) (Some!9703 (v!40353 tuple2!43362)) )
))
(declare-fun maxPrefix!4177 (LexerInterface!6987 List!45113 List!45112) Option!9704)

(declare-fun getSuffix!2660 (List!45112 List!45112) List!45112)

(assert (=> b!4145516 (= res!1696710 (= (maxPrefix!4177 thiss!25645 rules!3756 input!3238) (Some!9703 (tuple2!43363 lt!1478606 (getSuffix!2660 input!3238 p!2912)))))))

(declare-fun lt!1478598 () TokenValue!7628)

(declare-fun lt!1478604 () Int)

(assert (=> b!4145516 (= lt!1478606 (Token!13727 lt!1478598 r!4008 lt!1478604 p!2912))))

(declare-fun size!33347 (List!45112) Int)

(assert (=> b!4145516 (= lt!1478604 (size!33347 p!2912))))

(declare-fun lt!1478601 () BalanceConc!26812)

(declare-fun apply!10471 (TokenValueInjection!14684 BalanceConc!26812) TokenValue!7628)

(assert (=> b!4145516 (= lt!1478598 (apply!10471 (transformation!7398 r!4008) lt!1478601))))

(declare-datatypes ((Unit!64277 0))(
  ( (Unit!64278) )
))
(declare-fun lt!1478597 () Unit!64277)

(declare-fun lemmaSemiInverse!2256 (TokenValueInjection!14684 BalanceConc!26812) Unit!64277)

(assert (=> b!4145516 (= lt!1478597 (lemmaSemiInverse!2256 (transformation!7398 r!4008) lt!1478601))))

(declare-fun seqFromList!5515 (List!45112) BalanceConc!26812)

(assert (=> b!4145516 (= lt!1478601 (seqFromList!5515 p!2912))))

(declare-fun b!4145517 () Bool)

(declare-fun e!2572173 () Bool)

(declare-fun tp!1263578 () Bool)

(assert (=> b!4145517 (= e!2572168 (and e!2572173 tp!1263578))))

(declare-fun e!2572171 () Bool)

(assert (=> b!4145518 (= e!2572171 (and tp!1263574 tp!1263571))))

(declare-fun b!4145519 () Bool)

(declare-fun res!1696711 () Bool)

(assert (=> b!4145519 (=> (not res!1696711) (not e!2572179))))

(declare-fun contains!9080 (List!45113 Rule!14596) Bool)

(assert (=> b!4145519 (= res!1696711 (contains!9080 rules!3756 r!4008))))

(declare-fun b!4145520 () Bool)

(declare-fun tp!1263568 () Bool)

(assert (=> b!4145520 (= e!2572182 (and tp_is_empty!21529 tp!1263568))))

(declare-fun b!4145521 () Bool)

(declare-fun e!2572174 () Bool)

(declare-fun e!2572172 () Bool)

(assert (=> b!4145521 (= e!2572174 e!2572172)))

(declare-fun res!1696704 () Bool)

(assert (=> b!4145521 (=> res!1696704 e!2572172)))

(declare-fun lt!1478599 () Int)

(assert (=> b!4145521 (= res!1696704 (or (> lt!1478599 lt!1478604) (< lt!1478599 lt!1478604)))))

(declare-fun lt!1478605 () Option!9704)

(declare-fun size!33348 (BalanceConc!26812) Int)

(declare-fun charsOf!4997 (Token!13726) BalanceConc!26812)

(declare-fun get!14692 (Option!9704) tuple2!43362)

(assert (=> b!4145521 (= lt!1478599 (size!33348 (charsOf!4997 (_1!24815 (get!14692 lt!1478605)))))))

(declare-fun b!4145522 () Bool)

(declare-fun e!2572175 () Bool)

(assert (=> b!4145522 (= e!2572175 e!2572174)))

(declare-fun res!1696701 () Bool)

(assert (=> b!4145522 (=> res!1696701 e!2572174)))

(declare-fun isEmpty!26848 (Option!9704) Bool)

(assert (=> b!4145522 (= res!1696701 (isEmpty!26848 lt!1478605))))

(declare-fun maxPrefixOneRule!3116 (LexerInterface!6987 Rule!14596 List!45112) Option!9704)

(assert (=> b!4145522 (= lt!1478605 (maxPrefixOneRule!3116 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4145522 (not (= rBis!149 r!4008))))

(declare-fun lt!1478595 () Unit!64277)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!96 (LexerInterface!6987 List!45113 Rule!14596 Rule!14596) Unit!64277)

(assert (=> b!4145522 (= lt!1478595 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!96 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6581 (List!45113) List!45113)

(assert (=> b!4145522 (contains!9080 (tail!6581 rules!3756) r!4008)))

(declare-fun lt!1478602 () Unit!64277)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!102 (List!45113 Rule!14596 Rule!14596) Unit!64277)

(assert (=> b!4145522 (= lt!1478602 (lemmaGetIndexBiggerAndHeadEqThenTailContains!102 rules!3756 rBis!149 r!4008))))

(declare-fun tp!1263573 () Bool)

(declare-fun b!4145523 () Bool)

(declare-fun inv!59594 (String!51890) Bool)

(declare-fun inv!59597 (TokenValueInjection!14684) Bool)

(assert (=> b!4145523 (= e!2572180 (and tp!1263573 (inv!59594 (tag!8258 r!4008)) (inv!59597 (transformation!7398 r!4008)) e!2572184))))

(declare-fun tp!1263576 () Bool)

(declare-fun b!4145524 () Bool)

(assert (=> b!4145524 (= e!2572173 (and tp!1263576 (inv!59594 (tag!8258 (h!50409 rules!3756))) (inv!59597 (transformation!7398 (h!50409 rules!3756))) e!2572171))))

(declare-fun b!4145525 () Bool)

(declare-fun inv!59598 (Token!13726) Bool)

(assert (=> b!4145525 (= e!2572172 (inv!59598 lt!1478606))))

(assert (=> b!4145525 (not (= (tag!8258 rBis!149) (tag!8258 r!4008)))))

(declare-fun lt!1478600 () Unit!64277)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!60 (LexerInterface!6987 List!45113 Rule!14596 Rule!14596) Unit!64277)

(assert (=> b!4145525 (= lt!1478600 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!60 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun b!4145526 () Bool)

(assert (=> b!4145526 (= e!2572176 (not e!2572175))))

(declare-fun res!1696712 () Bool)

(assert (=> b!4145526 (=> res!1696712 e!2572175)))

(assert (=> b!4145526 (= res!1696712 (or (not ((_ is Cons!44989) rules!3756)) (not (= (h!50409 rules!3756) rBis!149))))))

(declare-fun lt!1478603 () Unit!64277)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2244 (LexerInterface!6987 Rule!14596 List!45113) Unit!64277)

(assert (=> b!4145526 (= lt!1478603 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2244 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3204 (LexerInterface!6987 Rule!14596) Bool)

(assert (=> b!4145526 (ruleValid!3204 thiss!25645 rBis!149)))

(declare-fun lt!1478596 () Unit!64277)

(assert (=> b!4145526 (= lt!1478596 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2244 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4145527 () Bool)

(declare-fun res!1696702 () Bool)

(assert (=> b!4145527 (=> (not res!1696702) (not e!2572176))))

(assert (=> b!4145527 (= res!1696702 (ruleValid!3204 thiss!25645 r!4008))))

(declare-fun b!4145528 () Bool)

(declare-fun res!1696705 () Bool)

(assert (=> b!4145528 (=> (not res!1696705) (not e!2572179))))

(assert (=> b!4145528 (= res!1696705 (contains!9080 rules!3756 rBis!149))))

(declare-fun b!4145529 () Bool)

(declare-fun res!1696709 () Bool)

(assert (=> b!4145529 (=> (not res!1696709) (not e!2572179))))

(declare-fun isEmpty!26849 (List!45113) Bool)

(assert (=> b!4145529 (= res!1696709 (not (isEmpty!26849 rules!3756)))))

(declare-fun tp!1263569 () Bool)

(declare-fun b!4145530 () Bool)

(assert (=> b!4145530 (= e!2572170 (and tp!1263569 (inv!59594 (tag!8258 rBis!149)) (inv!59597 (transformation!7398 rBis!149)) e!2572183))))

(assert (= (and start!394302 res!1696706) b!4145513))

(assert (= (and b!4145513 res!1696703) b!4145529))

(assert (= (and b!4145529 res!1696709) b!4145512))

(assert (= (and b!4145512 res!1696700) b!4145519))

(assert (= (and b!4145519 res!1696711) b!4145528))

(assert (= (and b!4145528 res!1696705) b!4145515))

(assert (= (and b!4145515 res!1696713) b!4145516))

(assert (= (and b!4145516 res!1696710) b!4145509))

(assert (= (and b!4145509 res!1696708) b!4145514))

(assert (= (and b!4145514 res!1696707) b!4145527))

(assert (= (and b!4145527 res!1696702) b!4145526))

(assert (= (and b!4145526 (not res!1696712)) b!4145522))

(assert (= (and b!4145522 (not res!1696701)) b!4145521))

(assert (= (and b!4145521 (not res!1696704)) b!4145525))

(assert (= b!4145524 b!4145518))

(assert (= b!4145517 b!4145524))

(assert (= (and start!394302 ((_ is Cons!44989) rules!3756)) b!4145517))

(assert (= (and start!394302 ((_ is Cons!44988) p!2912)) b!4145508))

(assert (= b!4145523 b!4145511))

(assert (= start!394302 b!4145523))

(assert (= (and start!394302 ((_ is Cons!44988) input!3238)) b!4145520))

(assert (= b!4145530 b!4145510))

(assert (= start!394302 b!4145530))

(declare-fun m!4741581 () Bool)

(assert (=> b!4145509 m!4741581))

(declare-fun m!4741583 () Bool)

(assert (=> b!4145515 m!4741583))

(declare-fun m!4741585 () Bool)

(assert (=> b!4145512 m!4741585))

(declare-fun m!4741587 () Bool)

(assert (=> b!4145524 m!4741587))

(declare-fun m!4741589 () Bool)

(assert (=> b!4145524 m!4741589))

(declare-fun m!4741591 () Bool)

(assert (=> b!4145526 m!4741591))

(declare-fun m!4741593 () Bool)

(assert (=> b!4145526 m!4741593))

(declare-fun m!4741595 () Bool)

(assert (=> b!4145526 m!4741595))

(declare-fun m!4741597 () Bool)

(assert (=> b!4145528 m!4741597))

(declare-fun m!4741599 () Bool)

(assert (=> b!4145523 m!4741599))

(declare-fun m!4741601 () Bool)

(assert (=> b!4145523 m!4741601))

(declare-fun m!4741603 () Bool)

(assert (=> b!4145516 m!4741603))

(declare-fun m!4741605 () Bool)

(assert (=> b!4145516 m!4741605))

(declare-fun m!4741607 () Bool)

(assert (=> b!4145516 m!4741607))

(declare-fun m!4741609 () Bool)

(assert (=> b!4145516 m!4741609))

(declare-fun m!4741611 () Bool)

(assert (=> b!4145516 m!4741611))

(declare-fun m!4741613 () Bool)

(assert (=> b!4145516 m!4741613))

(declare-fun m!4741615 () Bool)

(assert (=> b!4145525 m!4741615))

(declare-fun m!4741617 () Bool)

(assert (=> b!4145525 m!4741617))

(declare-fun m!4741619 () Bool)

(assert (=> b!4145529 m!4741619))

(declare-fun m!4741621 () Bool)

(assert (=> b!4145519 m!4741621))

(declare-fun m!4741623 () Bool)

(assert (=> b!4145527 m!4741623))

(declare-fun m!4741625 () Bool)

(assert (=> b!4145514 m!4741625))

(declare-fun m!4741627 () Bool)

(assert (=> b!4145514 m!4741627))

(declare-fun m!4741629 () Bool)

(assert (=> b!4145521 m!4741629))

(declare-fun m!4741631 () Bool)

(assert (=> b!4145521 m!4741631))

(assert (=> b!4145521 m!4741631))

(declare-fun m!4741633 () Bool)

(assert (=> b!4145521 m!4741633))

(declare-fun m!4741635 () Bool)

(assert (=> b!4145522 m!4741635))

(declare-fun m!4741637 () Bool)

(assert (=> b!4145522 m!4741637))

(declare-fun m!4741639 () Bool)

(assert (=> b!4145522 m!4741639))

(assert (=> b!4145522 m!4741635))

(declare-fun m!4741641 () Bool)

(assert (=> b!4145522 m!4741641))

(declare-fun m!4741643 () Bool)

(assert (=> b!4145522 m!4741643))

(declare-fun m!4741645 () Bool)

(assert (=> b!4145522 m!4741645))

(declare-fun m!4741647 () Bool)

(assert (=> b!4145513 m!4741647))

(declare-fun m!4741649 () Bool)

(assert (=> b!4145530 m!4741649))

(declare-fun m!4741651 () Bool)

(assert (=> b!4145530 m!4741651))

(check-sat (not b!4145516) (not b!4145527) (not b_next!118949) (not b!4145519) b_and!322155 (not b!4145509) (not b!4145529) b_and!322153 tp_is_empty!21529 (not b!4145515) (not b!4145525) (not b!4145523) (not b_next!118943) b_and!322157 b_and!322159 (not b!4145508) (not b_next!118947) (not b_next!118941) (not b!4145526) (not b!4145520) (not b!4145513) (not b!4145514) b_and!322163 (not b!4145522) (not b!4145528) b_and!322161 (not b!4145517) (not b_next!118945) (not b_next!118939) (not b!4145530) (not b!4145524) (not b!4145521) (not b!4145512))
(check-sat (not b_next!118949) b_and!322163 b_and!322161 b_and!322155 b_and!322153 (not b_next!118943) b_and!322157 b_and!322159 (not b_next!118947) (not b_next!118941) (not b_next!118945) (not b_next!118939))
(get-model)

(declare-fun d!1226852 () Bool)

(declare-fun lt!1478612 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6960 (List!45113) (InoxSet Rule!14596))

(assert (=> d!1226852 (= lt!1478612 (select (content!6960 rules!3756) rBis!149))))

(declare-fun e!2572198 () Bool)

(assert (=> d!1226852 (= lt!1478612 e!2572198)))

(declare-fun res!1696738 () Bool)

(assert (=> d!1226852 (=> (not res!1696738) (not e!2572198))))

(assert (=> d!1226852 (= res!1696738 ((_ is Cons!44989) rules!3756))))

(assert (=> d!1226852 (= (contains!9080 rules!3756 rBis!149) lt!1478612)))

(declare-fun b!4145547 () Bool)

(declare-fun e!2572199 () Bool)

(assert (=> b!4145547 (= e!2572198 e!2572199)))

(declare-fun res!1696737 () Bool)

(assert (=> b!4145547 (=> res!1696737 e!2572199)))

(assert (=> b!4145547 (= res!1696737 (= (h!50409 rules!3756) rBis!149))))

(declare-fun b!4145548 () Bool)

(assert (=> b!4145548 (= e!2572199 (contains!9080 (t!342728 rules!3756) rBis!149))))

(assert (= (and d!1226852 res!1696738) b!4145547))

(assert (= (and b!4145547 (not res!1696737)) b!4145548))

(declare-fun m!4741665 () Bool)

(assert (=> d!1226852 m!4741665))

(declare-fun m!4741667 () Bool)

(assert (=> d!1226852 m!4741667))

(declare-fun m!4741669 () Bool)

(assert (=> b!4145548 m!4741669))

(assert (=> b!4145528 d!1226852))

(declare-fun d!1226858 () Bool)

(declare-fun lt!1478613 () Bool)

(assert (=> d!1226858 (= lt!1478613 (select (content!6960 rules!3756) r!4008))))

(declare-fun e!2572200 () Bool)

(assert (=> d!1226858 (= lt!1478613 e!2572200)))

(declare-fun res!1696740 () Bool)

(assert (=> d!1226858 (=> (not res!1696740) (not e!2572200))))

(assert (=> d!1226858 (= res!1696740 ((_ is Cons!44989) rules!3756))))

(assert (=> d!1226858 (= (contains!9080 rules!3756 r!4008) lt!1478613)))

(declare-fun b!4145549 () Bool)

(declare-fun e!2572201 () Bool)

(assert (=> b!4145549 (= e!2572200 e!2572201)))

(declare-fun res!1696739 () Bool)

(assert (=> b!4145549 (=> res!1696739 e!2572201)))

(assert (=> b!4145549 (= res!1696739 (= (h!50409 rules!3756) r!4008))))

(declare-fun b!4145550 () Bool)

(assert (=> b!4145550 (= e!2572201 (contains!9080 (t!342728 rules!3756) r!4008))))

(assert (= (and d!1226858 res!1696740) b!4145549))

(assert (= (and b!4145549 (not res!1696739)) b!4145550))

(assert (=> d!1226858 m!4741665))

(declare-fun m!4741671 () Bool)

(assert (=> d!1226858 m!4741671))

(declare-fun m!4741673 () Bool)

(assert (=> b!4145550 m!4741673))

(assert (=> b!4145519 d!1226858))

(declare-fun d!1226860 () Bool)

(assert (=> d!1226860 (= (isEmpty!26849 rules!3756) ((_ is Nil!44989) rules!3756))))

(assert (=> b!4145529 d!1226860))

(declare-fun d!1226862 () Bool)

(declare-fun e!2572223 () Bool)

(assert (=> d!1226862 e!2572223))

(declare-fun c!710364 () Bool)

(assert (=> d!1226862 (= c!710364 ((_ is EmptyExpr!12303) (regex!7398 r!4008)))))

(declare-fun lt!1478622 () Bool)

(declare-fun e!2572224 () Bool)

(assert (=> d!1226862 (= lt!1478622 e!2572224)))

(declare-fun c!710363 () Bool)

(assert (=> d!1226862 (= c!710363 (isEmpty!26847 p!2912))))

(declare-fun validRegex!5544 (Regex!12303) Bool)

(assert (=> d!1226862 (validRegex!5544 (regex!7398 r!4008))))

(assert (=> d!1226862 (= (matchR!6132 (regex!7398 r!4008) p!2912) lt!1478622)))

(declare-fun b!4145582 () Bool)

(declare-fun e!2572220 () Bool)

(assert (=> b!4145582 (= e!2572220 (not lt!1478622))))

(declare-fun b!4145583 () Bool)

(declare-fun nullable!4334 (Regex!12303) Bool)

(assert (=> b!4145583 (= e!2572224 (nullable!4334 (regex!7398 r!4008)))))

(declare-fun b!4145584 () Bool)

(declare-fun e!2572221 () Bool)

(declare-fun head!8747 (List!45112) C!24792)

(assert (=> b!4145584 (= e!2572221 (not (= (head!8747 p!2912) (c!710355 (regex!7398 r!4008)))))))

(declare-fun b!4145585 () Bool)

(declare-fun res!1696763 () Bool)

(declare-fun e!2572222 () Bool)

(assert (=> b!4145585 (=> res!1696763 e!2572222)))

(declare-fun e!2572219 () Bool)

(assert (=> b!4145585 (= res!1696763 e!2572219)))

(declare-fun res!1696762 () Bool)

(assert (=> b!4145585 (=> (not res!1696762) (not e!2572219))))

(assert (=> b!4145585 (= res!1696762 lt!1478622)))

(declare-fun bm!290628 () Bool)

(declare-fun call!290633 () Bool)

(assert (=> bm!290628 (= call!290633 (isEmpty!26847 p!2912))))

(declare-fun b!4145586 () Bool)

(declare-fun res!1696764 () Bool)

(assert (=> b!4145586 (=> res!1696764 e!2572221)))

(declare-fun tail!6582 (List!45112) List!45112)

(assert (=> b!4145586 (= res!1696764 (not (isEmpty!26847 (tail!6582 p!2912))))))

(declare-fun b!4145587 () Bool)

(declare-fun res!1696766 () Bool)

(assert (=> b!4145587 (=> (not res!1696766) (not e!2572219))))

(assert (=> b!4145587 (= res!1696766 (isEmpty!26847 (tail!6582 p!2912)))))

(declare-fun b!4145588 () Bool)

(declare-fun res!1696761 () Bool)

(assert (=> b!4145588 (=> res!1696761 e!2572222)))

(assert (=> b!4145588 (= res!1696761 (not ((_ is ElementMatch!12303) (regex!7398 r!4008))))))

(assert (=> b!4145588 (= e!2572220 e!2572222)))

(declare-fun b!4145589 () Bool)

(declare-fun res!1696765 () Bool)

(assert (=> b!4145589 (=> (not res!1696765) (not e!2572219))))

(assert (=> b!4145589 (= res!1696765 (not call!290633))))

(declare-fun b!4145590 () Bool)

(declare-fun derivativeStep!3728 (Regex!12303 C!24792) Regex!12303)

(assert (=> b!4145590 (= e!2572224 (matchR!6132 (derivativeStep!3728 (regex!7398 r!4008) (head!8747 p!2912)) (tail!6582 p!2912)))))

(declare-fun b!4145591 () Bool)

(declare-fun e!2572225 () Bool)

(assert (=> b!4145591 (= e!2572225 e!2572221)))

(declare-fun res!1696760 () Bool)

(assert (=> b!4145591 (=> res!1696760 e!2572221)))

(assert (=> b!4145591 (= res!1696760 call!290633)))

(declare-fun b!4145592 () Bool)

(assert (=> b!4145592 (= e!2572223 e!2572220)))

(declare-fun c!710362 () Bool)

(assert (=> b!4145592 (= c!710362 ((_ is EmptyLang!12303) (regex!7398 r!4008)))))

(declare-fun b!4145593 () Bool)

(assert (=> b!4145593 (= e!2572219 (= (head!8747 p!2912) (c!710355 (regex!7398 r!4008))))))

(declare-fun b!4145594 () Bool)

(assert (=> b!4145594 (= e!2572222 e!2572225)))

(declare-fun res!1696767 () Bool)

(assert (=> b!4145594 (=> (not res!1696767) (not e!2572225))))

(assert (=> b!4145594 (= res!1696767 (not lt!1478622))))

(declare-fun b!4145595 () Bool)

(assert (=> b!4145595 (= e!2572223 (= lt!1478622 call!290633))))

(assert (= (and d!1226862 c!710363) b!4145583))

(assert (= (and d!1226862 (not c!710363)) b!4145590))

(assert (= (and d!1226862 c!710364) b!4145595))

(assert (= (and d!1226862 (not c!710364)) b!4145592))

(assert (= (and b!4145592 c!710362) b!4145582))

(assert (= (and b!4145592 (not c!710362)) b!4145588))

(assert (= (and b!4145588 (not res!1696761)) b!4145585))

(assert (= (and b!4145585 res!1696762) b!4145589))

(assert (= (and b!4145589 res!1696765) b!4145587))

(assert (= (and b!4145587 res!1696766) b!4145593))

(assert (= (and b!4145585 (not res!1696763)) b!4145594))

(assert (= (and b!4145594 res!1696767) b!4145591))

(assert (= (and b!4145591 (not res!1696760)) b!4145586))

(assert (= (and b!4145586 (not res!1696764)) b!4145584))

(assert (= (or b!4145595 b!4145589 b!4145591) bm!290628))

(declare-fun m!4741685 () Bool)

(assert (=> b!4145593 m!4741685))

(declare-fun m!4741687 () Bool)

(assert (=> b!4145586 m!4741687))

(assert (=> b!4145586 m!4741687))

(declare-fun m!4741689 () Bool)

(assert (=> b!4145586 m!4741689))

(assert (=> b!4145587 m!4741687))

(assert (=> b!4145587 m!4741687))

(assert (=> b!4145587 m!4741689))

(assert (=> d!1226862 m!4741583))

(declare-fun m!4741691 () Bool)

(assert (=> d!1226862 m!4741691))

(assert (=> bm!290628 m!4741583))

(assert (=> b!4145590 m!4741685))

(assert (=> b!4145590 m!4741685))

(declare-fun m!4741693 () Bool)

(assert (=> b!4145590 m!4741693))

(assert (=> b!4145590 m!4741687))

(assert (=> b!4145590 m!4741693))

(assert (=> b!4145590 m!4741687))

(declare-fun m!4741695 () Bool)

(assert (=> b!4145590 m!4741695))

(declare-fun m!4741697 () Bool)

(assert (=> b!4145583 m!4741697))

(assert (=> b!4145584 m!4741685))

(assert (=> b!4145509 d!1226862))

(declare-fun d!1226870 () Bool)

(assert (=> d!1226870 (= (inv!59594 (tag!8258 rBis!149)) (= (mod (str.len (value!231396 (tag!8258 rBis!149))) 2) 0))))

(assert (=> b!4145530 d!1226870))

(declare-fun d!1226872 () Bool)

(declare-fun res!1696770 () Bool)

(declare-fun e!2572231 () Bool)

(assert (=> d!1226872 (=> (not res!1696770) (not e!2572231))))

(declare-fun semiInverseModEq!3198 (Int Int) Bool)

(assert (=> d!1226872 (= res!1696770 (semiInverseModEq!3198 (toChars!9921 (transformation!7398 rBis!149)) (toValue!10062 (transformation!7398 rBis!149))))))

(assert (=> d!1226872 (= (inv!59597 (transformation!7398 rBis!149)) e!2572231)))

(declare-fun b!4145603 () Bool)

(declare-fun equivClasses!3097 (Int Int) Bool)

(assert (=> b!4145603 (= e!2572231 (equivClasses!3097 (toChars!9921 (transformation!7398 rBis!149)) (toValue!10062 (transformation!7398 rBis!149))))))

(assert (= (and d!1226872 res!1696770) b!4145603))

(declare-fun m!4741707 () Bool)

(assert (=> d!1226872 m!4741707))

(declare-fun m!4741709 () Bool)

(assert (=> b!4145603 m!4741709))

(assert (=> b!4145530 d!1226872))

(declare-fun d!1226878 () Bool)

(declare-fun lt!1478625 () Int)

(declare-fun list!16478 (BalanceConc!26812) List!45112)

(assert (=> d!1226878 (= lt!1478625 (size!33347 (list!16478 (charsOf!4997 (_1!24815 (get!14692 lt!1478605))))))))

(declare-fun size!33349 (Conc!13609) Int)

(assert (=> d!1226878 (= lt!1478625 (size!33349 (c!710354 (charsOf!4997 (_1!24815 (get!14692 lt!1478605))))))))

(assert (=> d!1226878 (= (size!33348 (charsOf!4997 (_1!24815 (get!14692 lt!1478605)))) lt!1478625)))

(declare-fun bs!595337 () Bool)

(assert (= bs!595337 d!1226878))

(assert (=> bs!595337 m!4741631))

(declare-fun m!4741711 () Bool)

(assert (=> bs!595337 m!4741711))

(assert (=> bs!595337 m!4741711))

(declare-fun m!4741713 () Bool)

(assert (=> bs!595337 m!4741713))

(declare-fun m!4741715 () Bool)

(assert (=> bs!595337 m!4741715))

(assert (=> b!4145521 d!1226878))

(declare-fun d!1226880 () Bool)

(declare-fun lt!1478630 () BalanceConc!26812)

(assert (=> d!1226880 (= (list!16478 lt!1478630) (originalCharacters!7894 (_1!24815 (get!14692 lt!1478605))))))

(declare-fun dynLambda!19368 (Int TokenValue!7628) BalanceConc!26812)

(assert (=> d!1226880 (= lt!1478630 (dynLambda!19368 (toChars!9921 (transformation!7398 (rule!10520 (_1!24815 (get!14692 lt!1478605))))) (value!231397 (_1!24815 (get!14692 lt!1478605)))))))

(assert (=> d!1226880 (= (charsOf!4997 (_1!24815 (get!14692 lt!1478605))) lt!1478630)))

(declare-fun b_lambda!121881 () Bool)

(assert (=> (not b_lambda!121881) (not d!1226880)))

(declare-fun t!342736 () Bool)

(declare-fun tb!248841 () Bool)

(assert (=> (and b!4145510 (= (toChars!9921 (transformation!7398 rBis!149)) (toChars!9921 (transformation!7398 (rule!10520 (_1!24815 (get!14692 lt!1478605)))))) t!342736) tb!248841))

(declare-fun b!4145616 () Bool)

(declare-fun e!2572239 () Bool)

(declare-fun tp!1263584 () Bool)

(declare-fun inv!59599 (Conc!13609) Bool)

(assert (=> b!4145616 (= e!2572239 (and (inv!59599 (c!710354 (dynLambda!19368 (toChars!9921 (transformation!7398 (rule!10520 (_1!24815 (get!14692 lt!1478605))))) (value!231397 (_1!24815 (get!14692 lt!1478605)))))) tp!1263584))))

(declare-fun result!302640 () Bool)

(declare-fun inv!59600 (BalanceConc!26812) Bool)

(assert (=> tb!248841 (= result!302640 (and (inv!59600 (dynLambda!19368 (toChars!9921 (transformation!7398 (rule!10520 (_1!24815 (get!14692 lt!1478605))))) (value!231397 (_1!24815 (get!14692 lt!1478605))))) e!2572239))))

(assert (= tb!248841 b!4145616))

(declare-fun m!4741717 () Bool)

(assert (=> b!4145616 m!4741717))

(declare-fun m!4741719 () Bool)

(assert (=> tb!248841 m!4741719))

(assert (=> d!1226880 t!342736))

(declare-fun b_and!322171 () Bool)

(assert (= b_and!322155 (and (=> t!342736 result!302640) b_and!322171)))

(declare-fun t!342738 () Bool)

(declare-fun tb!248843 () Bool)

(assert (=> (and b!4145511 (= (toChars!9921 (transformation!7398 r!4008)) (toChars!9921 (transformation!7398 (rule!10520 (_1!24815 (get!14692 lt!1478605)))))) t!342738) tb!248843))

(declare-fun result!302644 () Bool)

(assert (= result!302644 result!302640))

(assert (=> d!1226880 t!342738))

(declare-fun b_and!322173 () Bool)

(assert (= b_and!322159 (and (=> t!342738 result!302644) b_and!322173)))

(declare-fun tb!248845 () Bool)

(declare-fun t!342740 () Bool)

(assert (=> (and b!4145518 (= (toChars!9921 (transformation!7398 (h!50409 rules!3756))) (toChars!9921 (transformation!7398 (rule!10520 (_1!24815 (get!14692 lt!1478605)))))) t!342740) tb!248845))

(declare-fun result!302646 () Bool)

(assert (= result!302646 result!302640))

(assert (=> d!1226880 t!342740))

(declare-fun b_and!322175 () Bool)

(assert (= b_and!322163 (and (=> t!342740 result!302646) b_and!322175)))

(declare-fun m!4741721 () Bool)

(assert (=> d!1226880 m!4741721))

(declare-fun m!4741723 () Bool)

(assert (=> d!1226880 m!4741723))

(assert (=> b!4145521 d!1226880))

(declare-fun d!1226882 () Bool)

(assert (=> d!1226882 (= (get!14692 lt!1478605) (v!40353 lt!1478605))))

(assert (=> b!4145521 d!1226882))

(declare-fun d!1226884 () Bool)

(assert (=> d!1226884 (= (inv!59594 (tag!8258 r!4008)) (= (mod (str.len (value!231396 (tag!8258 r!4008))) 2) 0))))

(assert (=> b!4145523 d!1226884))

(declare-fun d!1226886 () Bool)

(declare-fun res!1696771 () Bool)

(declare-fun e!2572242 () Bool)

(assert (=> d!1226886 (=> (not res!1696771) (not e!2572242))))

(assert (=> d!1226886 (= res!1696771 (semiInverseModEq!3198 (toChars!9921 (transformation!7398 r!4008)) (toValue!10062 (transformation!7398 r!4008))))))

(assert (=> d!1226886 (= (inv!59597 (transformation!7398 r!4008)) e!2572242)))

(declare-fun b!4145621 () Bool)

(assert (=> b!4145621 (= e!2572242 (equivClasses!3097 (toChars!9921 (transformation!7398 r!4008)) (toValue!10062 (transformation!7398 r!4008))))))

(assert (= (and d!1226886 res!1696771) b!4145621))

(declare-fun m!4741725 () Bool)

(assert (=> d!1226886 m!4741725))

(declare-fun m!4741727 () Bool)

(assert (=> b!4145621 m!4741727))

(assert (=> b!4145523 d!1226886))

(declare-fun d!1226888 () Bool)

(declare-fun res!1696774 () Bool)

(declare-fun e!2572247 () Bool)

(assert (=> d!1226888 (=> (not res!1696774) (not e!2572247))))

(declare-fun rulesValid!2911 (LexerInterface!6987 List!45113) Bool)

(assert (=> d!1226888 (= res!1696774 (rulesValid!2911 thiss!25645 rules!3756))))

(assert (=> d!1226888 (= (rulesInvariant!6284 thiss!25645 rules!3756) e!2572247)))

(declare-fun b!4145628 () Bool)

(declare-datatypes ((List!45114 0))(
  ( (Nil!44990) (Cons!44990 (h!50410 String!51890) (t!342793 List!45114)) )
))
(declare-fun noDuplicateTag!2994 (LexerInterface!6987 List!45113 List!45114) Bool)

(assert (=> b!4145628 (= e!2572247 (noDuplicateTag!2994 thiss!25645 rules!3756 Nil!44990))))

(assert (= (and d!1226888 res!1696774) b!4145628))

(declare-fun m!4741733 () Bool)

(assert (=> d!1226888 m!4741733))

(declare-fun m!4741735 () Bool)

(assert (=> b!4145628 m!4741735))

(assert (=> b!4145512 d!1226888))

(declare-fun d!1226894 () Bool)

(declare-fun lt!1478633 () Bool)

(assert (=> d!1226894 (= lt!1478633 (select (content!6960 (tail!6581 rules!3756)) r!4008))))

(declare-fun e!2572248 () Bool)

(assert (=> d!1226894 (= lt!1478633 e!2572248)))

(declare-fun res!1696776 () Bool)

(assert (=> d!1226894 (=> (not res!1696776) (not e!2572248))))

(assert (=> d!1226894 (= res!1696776 ((_ is Cons!44989) (tail!6581 rules!3756)))))

(assert (=> d!1226894 (= (contains!9080 (tail!6581 rules!3756) r!4008) lt!1478633)))

(declare-fun b!4145629 () Bool)

(declare-fun e!2572249 () Bool)

(assert (=> b!4145629 (= e!2572248 e!2572249)))

(declare-fun res!1696775 () Bool)

(assert (=> b!4145629 (=> res!1696775 e!2572249)))

(assert (=> b!4145629 (= res!1696775 (= (h!50409 (tail!6581 rules!3756)) r!4008))))

(declare-fun b!4145630 () Bool)

(assert (=> b!4145630 (= e!2572249 (contains!9080 (t!342728 (tail!6581 rules!3756)) r!4008))))

(assert (= (and d!1226894 res!1696776) b!4145629))

(assert (= (and b!4145629 (not res!1696775)) b!4145630))

(assert (=> d!1226894 m!4741635))

(declare-fun m!4741737 () Bool)

(assert (=> d!1226894 m!4741737))

(declare-fun m!4741739 () Bool)

(assert (=> d!1226894 m!4741739))

(declare-fun m!4741741 () Bool)

(assert (=> b!4145630 m!4741741))

(assert (=> b!4145522 d!1226894))

(declare-fun d!1226896 () Bool)

(assert (=> d!1226896 (= (tail!6581 rules!3756) (t!342728 rules!3756))))

(assert (=> b!4145522 d!1226896))

(declare-fun d!1226898 () Bool)

(assert (=> d!1226898 (contains!9080 (tail!6581 rules!3756) r!4008)))

(declare-fun lt!1478636 () Unit!64277)

(declare-fun choose!25373 (List!45113 Rule!14596 Rule!14596) Unit!64277)

(assert (=> d!1226898 (= lt!1478636 (choose!25373 rules!3756 rBis!149 r!4008))))

(declare-fun e!2572255 () Bool)

(assert (=> d!1226898 e!2572255))

(declare-fun res!1696782 () Bool)

(assert (=> d!1226898 (=> (not res!1696782) (not e!2572255))))

(assert (=> d!1226898 (= res!1696782 (contains!9080 rules!3756 rBis!149))))

(assert (=> d!1226898 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!102 rules!3756 rBis!149 r!4008) lt!1478636)))

(declare-fun b!4145636 () Bool)

(assert (=> b!4145636 (= e!2572255 (contains!9080 rules!3756 r!4008))))

(assert (= (and d!1226898 res!1696782) b!4145636))

(assert (=> d!1226898 m!4741635))

(assert (=> d!1226898 m!4741635))

(assert (=> d!1226898 m!4741637))

(declare-fun m!4741747 () Bool)

(assert (=> d!1226898 m!4741747))

(assert (=> d!1226898 m!4741597))

(assert (=> b!4145636 m!4741621))

(assert (=> b!4145522 d!1226898))

(declare-fun d!1226902 () Bool)

(declare-fun e!2572269 () Bool)

(assert (=> d!1226902 e!2572269))

(declare-fun res!1696811 () Bool)

(assert (=> d!1226902 (=> res!1696811 e!2572269)))

(declare-fun lt!1478657 () Option!9704)

(assert (=> d!1226902 (= res!1696811 (isEmpty!26848 lt!1478657))))

(declare-fun e!2572271 () Option!9704)

(assert (=> d!1226902 (= lt!1478657 e!2572271)))

(declare-fun c!710376 () Bool)

(declare-datatypes ((tuple2!43364 0))(
  ( (tuple2!43365 (_1!24816 List!45112) (_2!24816 List!45112)) )
))
(declare-fun lt!1478656 () tuple2!43364)

(assert (=> d!1226902 (= c!710376 (isEmpty!26847 (_1!24816 lt!1478656)))))

(declare-fun findLongestMatch!1451 (Regex!12303 List!45112) tuple2!43364)

(assert (=> d!1226902 (= lt!1478656 (findLongestMatch!1451 (regex!7398 rBis!149) input!3238))))

(assert (=> d!1226902 (ruleValid!3204 thiss!25645 rBis!149)))

(assert (=> d!1226902 (= (maxPrefixOneRule!3116 thiss!25645 rBis!149 input!3238) lt!1478657)))

(declare-fun b!4145664 () Bool)

(declare-fun e!2572272 () Bool)

(assert (=> b!4145664 (= e!2572272 (= (size!33346 (_1!24815 (get!14692 lt!1478657))) (size!33347 (originalCharacters!7894 (_1!24815 (get!14692 lt!1478657))))))))

(declare-fun b!4145665 () Bool)

(assert (=> b!4145665 (= e!2572271 (Some!9703 (tuple2!43363 (Token!13727 (apply!10471 (transformation!7398 rBis!149) (seqFromList!5515 (_1!24816 lt!1478656))) rBis!149 (size!33348 (seqFromList!5515 (_1!24816 lt!1478656))) (_1!24816 lt!1478656)) (_2!24816 lt!1478656))))))

(declare-fun lt!1478654 () Unit!64277)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1511 (Regex!12303 List!45112) Unit!64277)

(assert (=> b!4145665 (= lt!1478654 (longestMatchIsAcceptedByMatchOrIsEmpty!1511 (regex!7398 rBis!149) input!3238))))

(declare-fun res!1696810 () Bool)

(declare-fun findLongestMatchInner!1538 (Regex!12303 List!45112 Int List!45112 List!45112 Int) tuple2!43364)

(assert (=> b!4145665 (= res!1696810 (isEmpty!26847 (_1!24816 (findLongestMatchInner!1538 (regex!7398 rBis!149) Nil!44988 (size!33347 Nil!44988) input!3238 input!3238 (size!33347 input!3238)))))))

(declare-fun e!2572270 () Bool)

(assert (=> b!4145665 (=> res!1696810 e!2572270)))

(assert (=> b!4145665 e!2572270))

(declare-fun lt!1478653 () Unit!64277)

(assert (=> b!4145665 (= lt!1478653 lt!1478654)))

(declare-fun lt!1478655 () Unit!64277)

(assert (=> b!4145665 (= lt!1478655 (lemmaSemiInverse!2256 (transformation!7398 rBis!149) (seqFromList!5515 (_1!24816 lt!1478656))))))

(declare-fun b!4145666 () Bool)

(assert (=> b!4145666 (= e!2572269 e!2572272)))

(declare-fun res!1696809 () Bool)

(assert (=> b!4145666 (=> (not res!1696809) (not e!2572272))))

(assert (=> b!4145666 (= res!1696809 (matchR!6132 (regex!7398 rBis!149) (list!16478 (charsOf!4997 (_1!24815 (get!14692 lt!1478657))))))))

(declare-fun b!4145667 () Bool)

(assert (=> b!4145667 (= e!2572270 (matchR!6132 (regex!7398 rBis!149) (_1!24816 (findLongestMatchInner!1538 (regex!7398 rBis!149) Nil!44988 (size!33347 Nil!44988) input!3238 input!3238 (size!33347 input!3238)))))))

(declare-fun b!4145668 () Bool)

(declare-fun res!1696812 () Bool)

(assert (=> b!4145668 (=> (not res!1696812) (not e!2572272))))

(assert (=> b!4145668 (= res!1696812 (= (value!231397 (_1!24815 (get!14692 lt!1478657))) (apply!10471 (transformation!7398 (rule!10520 (_1!24815 (get!14692 lt!1478657)))) (seqFromList!5515 (originalCharacters!7894 (_1!24815 (get!14692 lt!1478657)))))))))

(declare-fun b!4145669 () Bool)

(declare-fun res!1696807 () Bool)

(assert (=> b!4145669 (=> (not res!1696807) (not e!2572272))))

(declare-fun ++!11635 (List!45112 List!45112) List!45112)

(assert (=> b!4145669 (= res!1696807 (= (++!11635 (list!16478 (charsOf!4997 (_1!24815 (get!14692 lt!1478657)))) (_2!24815 (get!14692 lt!1478657))) input!3238))))

(declare-fun b!4145670 () Bool)

(assert (=> b!4145670 (= e!2572271 None!9703)))

(declare-fun b!4145671 () Bool)

(declare-fun res!1696806 () Bool)

(assert (=> b!4145671 (=> (not res!1696806) (not e!2572272))))

(assert (=> b!4145671 (= res!1696806 (= (rule!10520 (_1!24815 (get!14692 lt!1478657))) rBis!149))))

(declare-fun b!4145672 () Bool)

(declare-fun res!1696808 () Bool)

(assert (=> b!4145672 (=> (not res!1696808) (not e!2572272))))

(assert (=> b!4145672 (= res!1696808 (< (size!33347 (_2!24815 (get!14692 lt!1478657))) (size!33347 input!3238)))))

(assert (= (and d!1226902 c!710376) b!4145670))

(assert (= (and d!1226902 (not c!710376)) b!4145665))

(assert (= (and b!4145665 (not res!1696810)) b!4145667))

(assert (= (and d!1226902 (not res!1696811)) b!4145666))

(assert (= (and b!4145666 res!1696809) b!4145669))

(assert (= (and b!4145669 res!1696807) b!4145672))

(assert (= (and b!4145672 res!1696808) b!4145671))

(assert (= (and b!4145671 res!1696806) b!4145668))

(assert (= (and b!4145668 res!1696812) b!4145664))

(declare-fun m!4741765 () Bool)

(assert (=> b!4145666 m!4741765))

(declare-fun m!4741767 () Bool)

(assert (=> b!4145666 m!4741767))

(assert (=> b!4145666 m!4741767))

(declare-fun m!4741769 () Bool)

(assert (=> b!4145666 m!4741769))

(assert (=> b!4145666 m!4741769))

(declare-fun m!4741771 () Bool)

(assert (=> b!4145666 m!4741771))

(declare-fun m!4741773 () Bool)

(assert (=> d!1226902 m!4741773))

(declare-fun m!4741775 () Bool)

(assert (=> d!1226902 m!4741775))

(declare-fun m!4741777 () Bool)

(assert (=> d!1226902 m!4741777))

(assert (=> d!1226902 m!4741593))

(declare-fun m!4741779 () Bool)

(assert (=> b!4145665 m!4741779))

(declare-fun m!4741781 () Bool)

(assert (=> b!4145665 m!4741781))

(declare-fun m!4741783 () Bool)

(assert (=> b!4145665 m!4741783))

(declare-fun m!4741785 () Bool)

(assert (=> b!4145665 m!4741785))

(assert (=> b!4145665 m!4741783))

(declare-fun m!4741787 () Bool)

(assert (=> b!4145665 m!4741787))

(declare-fun m!4741789 () Bool)

(assert (=> b!4145665 m!4741789))

(assert (=> b!4145665 m!4741781))

(declare-fun m!4741791 () Bool)

(assert (=> b!4145665 m!4741791))

(declare-fun m!4741793 () Bool)

(assert (=> b!4145665 m!4741793))

(assert (=> b!4145665 m!4741791))

(assert (=> b!4145665 m!4741783))

(declare-fun m!4741795 () Bool)

(assert (=> b!4145665 m!4741795))

(assert (=> b!4145665 m!4741783))

(assert (=> b!4145669 m!4741765))

(assert (=> b!4145669 m!4741767))

(assert (=> b!4145669 m!4741767))

(assert (=> b!4145669 m!4741769))

(assert (=> b!4145669 m!4741769))

(declare-fun m!4741797 () Bool)

(assert (=> b!4145669 m!4741797))

(assert (=> b!4145664 m!4741765))

(declare-fun m!4741799 () Bool)

(assert (=> b!4145664 m!4741799))

(assert (=> b!4145668 m!4741765))

(declare-fun m!4741801 () Bool)

(assert (=> b!4145668 m!4741801))

(assert (=> b!4145668 m!4741801))

(declare-fun m!4741803 () Bool)

(assert (=> b!4145668 m!4741803))

(assert (=> b!4145672 m!4741765))

(declare-fun m!4741805 () Bool)

(assert (=> b!4145672 m!4741805))

(assert (=> b!4145672 m!4741791))

(assert (=> b!4145667 m!4741781))

(assert (=> b!4145667 m!4741791))

(assert (=> b!4145667 m!4741781))

(assert (=> b!4145667 m!4741791))

(assert (=> b!4145667 m!4741793))

(declare-fun m!4741807 () Bool)

(assert (=> b!4145667 m!4741807))

(assert (=> b!4145671 m!4741765))

(assert (=> b!4145522 d!1226902))

(declare-fun d!1226918 () Bool)

(assert (=> d!1226918 (not (= rBis!149 r!4008))))

(declare-fun lt!1478660 () Unit!64277)

(declare-fun choose!25375 (LexerInterface!6987 List!45113 Rule!14596 Rule!14596) Unit!64277)

(assert (=> d!1226918 (= lt!1478660 (choose!25375 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1226918 (contains!9080 rules!3756 rBis!149)))

(assert (=> d!1226918 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!96 thiss!25645 rules!3756 rBis!149 r!4008) lt!1478660)))

(declare-fun bs!595340 () Bool)

(assert (= bs!595340 d!1226918))

(declare-fun m!4741809 () Bool)

(assert (=> bs!595340 m!4741809))

(assert (=> bs!595340 m!4741597))

(assert (=> b!4145522 d!1226918))

(declare-fun d!1226920 () Bool)

(assert (=> d!1226920 (= (isEmpty!26848 lt!1478605) (not ((_ is Some!9703) lt!1478605)))))

(assert (=> b!4145522 d!1226920))

(declare-fun d!1226922 () Bool)

(assert (=> d!1226922 (= (inv!59594 (tag!8258 (h!50409 rules!3756))) (= (mod (str.len (value!231396 (tag!8258 (h!50409 rules!3756)))) 2) 0))))

(assert (=> b!4145524 d!1226922))

(declare-fun d!1226924 () Bool)

(declare-fun res!1696813 () Bool)

(declare-fun e!2572273 () Bool)

(assert (=> d!1226924 (=> (not res!1696813) (not e!2572273))))

(assert (=> d!1226924 (= res!1696813 (semiInverseModEq!3198 (toChars!9921 (transformation!7398 (h!50409 rules!3756))) (toValue!10062 (transformation!7398 (h!50409 rules!3756)))))))

(assert (=> d!1226924 (= (inv!59597 (transformation!7398 (h!50409 rules!3756))) e!2572273)))

(declare-fun b!4145673 () Bool)

(assert (=> b!4145673 (= e!2572273 (equivClasses!3097 (toChars!9921 (transformation!7398 (h!50409 rules!3756))) (toValue!10062 (transformation!7398 (h!50409 rules!3756)))))))

(assert (= (and d!1226924 res!1696813) b!4145673))

(declare-fun m!4741811 () Bool)

(assert (=> d!1226924 m!4741811))

(declare-fun m!4741813 () Bool)

(assert (=> b!4145673 m!4741813))

(assert (=> b!4145524 d!1226924))

(declare-fun b!4145685 () Bool)

(declare-fun e!2572281 () Bool)

(assert (=> b!4145685 (= e!2572281 (>= (size!33347 input!3238) (size!33347 p!2912)))))

(declare-fun b!4145684 () Bool)

(declare-fun e!2572280 () Bool)

(assert (=> b!4145684 (= e!2572280 (isPrefix!4333 (tail!6582 p!2912) (tail!6582 input!3238)))))

(declare-fun b!4145682 () Bool)

(declare-fun e!2572282 () Bool)

(assert (=> b!4145682 (= e!2572282 e!2572280)))

(declare-fun res!1696825 () Bool)

(assert (=> b!4145682 (=> (not res!1696825) (not e!2572280))))

(assert (=> b!4145682 (= res!1696825 (not ((_ is Nil!44988) input!3238)))))

(declare-fun d!1226926 () Bool)

(assert (=> d!1226926 e!2572281))

(declare-fun res!1696822 () Bool)

(assert (=> d!1226926 (=> res!1696822 e!2572281)))

(declare-fun lt!1478663 () Bool)

(assert (=> d!1226926 (= res!1696822 (not lt!1478663))))

(assert (=> d!1226926 (= lt!1478663 e!2572282)))

(declare-fun res!1696824 () Bool)

(assert (=> d!1226926 (=> res!1696824 e!2572282)))

(assert (=> d!1226926 (= res!1696824 ((_ is Nil!44988) p!2912))))

(assert (=> d!1226926 (= (isPrefix!4333 p!2912 input!3238) lt!1478663)))

(declare-fun b!4145683 () Bool)

(declare-fun res!1696823 () Bool)

(assert (=> b!4145683 (=> (not res!1696823) (not e!2572280))))

(assert (=> b!4145683 (= res!1696823 (= (head!8747 p!2912) (head!8747 input!3238)))))

(assert (= (and d!1226926 (not res!1696824)) b!4145682))

(assert (= (and b!4145682 res!1696825) b!4145683))

(assert (= (and b!4145683 res!1696823) b!4145684))

(assert (= (and d!1226926 (not res!1696822)) b!4145685))

(assert (=> b!4145685 m!4741791))

(assert (=> b!4145685 m!4741603))

(assert (=> b!4145684 m!4741687))

(declare-fun m!4741815 () Bool)

(assert (=> b!4145684 m!4741815))

(assert (=> b!4145684 m!4741687))

(assert (=> b!4145684 m!4741815))

(declare-fun m!4741817 () Bool)

(assert (=> b!4145684 m!4741817))

(assert (=> b!4145683 m!4741685))

(declare-fun m!4741819 () Bool)

(assert (=> b!4145683 m!4741819))

(assert (=> b!4145513 d!1226926))

(declare-fun d!1226928 () Bool)

(assert (=> d!1226928 (= (isEmpty!26847 p!2912) ((_ is Nil!44988) p!2912))))

(assert (=> b!4145515 d!1226928))

(declare-fun d!1226930 () Bool)

(declare-fun res!1696830 () Bool)

(declare-fun e!2572285 () Bool)

(assert (=> d!1226930 (=> (not res!1696830) (not e!2572285))))

(assert (=> d!1226930 (= res!1696830 (not (isEmpty!26847 (originalCharacters!7894 lt!1478606))))))

(assert (=> d!1226930 (= (inv!59598 lt!1478606) e!2572285)))

(declare-fun b!4145690 () Bool)

(declare-fun res!1696831 () Bool)

(assert (=> b!4145690 (=> (not res!1696831) (not e!2572285))))

(assert (=> b!4145690 (= res!1696831 (= (originalCharacters!7894 lt!1478606) (list!16478 (dynLambda!19368 (toChars!9921 (transformation!7398 (rule!10520 lt!1478606))) (value!231397 lt!1478606)))))))

(declare-fun b!4145691 () Bool)

(assert (=> b!4145691 (= e!2572285 (= (size!33346 lt!1478606) (size!33347 (originalCharacters!7894 lt!1478606))))))

(assert (= (and d!1226930 res!1696830) b!4145690))

(assert (= (and b!4145690 res!1696831) b!4145691))

(declare-fun b_lambda!121883 () Bool)

(assert (=> (not b_lambda!121883) (not b!4145690)))

(declare-fun tb!248847 () Bool)

(declare-fun t!342742 () Bool)

(assert (=> (and b!4145510 (= (toChars!9921 (transformation!7398 rBis!149)) (toChars!9921 (transformation!7398 (rule!10520 lt!1478606)))) t!342742) tb!248847))

(declare-fun b!4145692 () Bool)

(declare-fun e!2572286 () Bool)

(declare-fun tp!1263585 () Bool)

(assert (=> b!4145692 (= e!2572286 (and (inv!59599 (c!710354 (dynLambda!19368 (toChars!9921 (transformation!7398 (rule!10520 lt!1478606))) (value!231397 lt!1478606)))) tp!1263585))))

(declare-fun result!302648 () Bool)

(assert (=> tb!248847 (= result!302648 (and (inv!59600 (dynLambda!19368 (toChars!9921 (transformation!7398 (rule!10520 lt!1478606))) (value!231397 lt!1478606))) e!2572286))))

(assert (= tb!248847 b!4145692))

(declare-fun m!4741821 () Bool)

(assert (=> b!4145692 m!4741821))

(declare-fun m!4741823 () Bool)

(assert (=> tb!248847 m!4741823))

(assert (=> b!4145690 t!342742))

(declare-fun b_and!322177 () Bool)

(assert (= b_and!322171 (and (=> t!342742 result!302648) b_and!322177)))

(declare-fun tb!248849 () Bool)

(declare-fun t!342744 () Bool)

(assert (=> (and b!4145511 (= (toChars!9921 (transformation!7398 r!4008)) (toChars!9921 (transformation!7398 (rule!10520 lt!1478606)))) t!342744) tb!248849))

(declare-fun result!302650 () Bool)

(assert (= result!302650 result!302648))

(assert (=> b!4145690 t!342744))

(declare-fun b_and!322179 () Bool)

(assert (= b_and!322173 (and (=> t!342744 result!302650) b_and!322179)))

(declare-fun tb!248851 () Bool)

(declare-fun t!342746 () Bool)

(assert (=> (and b!4145518 (= (toChars!9921 (transformation!7398 (h!50409 rules!3756))) (toChars!9921 (transformation!7398 (rule!10520 lt!1478606)))) t!342746) tb!248851))

(declare-fun result!302652 () Bool)

(assert (= result!302652 result!302648))

(assert (=> b!4145690 t!342746))

(declare-fun b_and!322181 () Bool)

(assert (= b_and!322175 (and (=> t!342746 result!302652) b_and!322181)))

(declare-fun m!4741825 () Bool)

(assert (=> d!1226930 m!4741825))

(declare-fun m!4741827 () Bool)

(assert (=> b!4145690 m!4741827))

(assert (=> b!4145690 m!4741827))

(declare-fun m!4741829 () Bool)

(assert (=> b!4145690 m!4741829))

(declare-fun m!4741831 () Bool)

(assert (=> b!4145691 m!4741831))

(assert (=> b!4145525 d!1226930))

(declare-fun d!1226932 () Bool)

(assert (=> d!1226932 (not (= (tag!8258 rBis!149) (tag!8258 r!4008)))))

(declare-fun lt!1478666 () Unit!64277)

(declare-fun choose!25376 (LexerInterface!6987 List!45113 Rule!14596 Rule!14596) Unit!64277)

(assert (=> d!1226932 (= lt!1478666 (choose!25376 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1226932 (contains!9080 rules!3756 rBis!149)))

(assert (=> d!1226932 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!60 thiss!25645 rules!3756 rBis!149 r!4008) lt!1478666)))

(declare-fun bs!595341 () Bool)

(assert (= bs!595341 d!1226932))

(declare-fun m!4741833 () Bool)

(assert (=> bs!595341 m!4741833))

(assert (=> bs!595341 m!4741597))

(assert (=> b!4145525 d!1226932))

(declare-fun b!4145701 () Bool)

(declare-fun e!2572293 () Int)

(assert (=> b!4145701 (= e!2572293 0)))

(declare-fun b!4145702 () Bool)

(declare-fun e!2572292 () Int)

(assert (=> b!4145702 (= e!2572293 e!2572292)))

(declare-fun c!710382 () Bool)

(assert (=> b!4145702 (= c!710382 (and ((_ is Cons!44989) rules!3756) (not (= (h!50409 rules!3756) rBis!149))))))

(declare-fun d!1226934 () Bool)

(declare-fun lt!1478669 () Int)

(assert (=> d!1226934 (>= lt!1478669 0)))

(assert (=> d!1226934 (= lt!1478669 e!2572293)))

(declare-fun c!710381 () Bool)

(assert (=> d!1226934 (= c!710381 (and ((_ is Cons!44989) rules!3756) (= (h!50409 rules!3756) rBis!149)))))

(assert (=> d!1226934 (contains!9080 rules!3756 rBis!149)))

(assert (=> d!1226934 (= (getIndex!744 rules!3756 rBis!149) lt!1478669)))

(declare-fun b!4145704 () Bool)

(assert (=> b!4145704 (= e!2572292 (- 1))))

(declare-fun b!4145703 () Bool)

(assert (=> b!4145703 (= e!2572292 (+ 1 (getIndex!744 (t!342728 rules!3756) rBis!149)))))

(assert (= (and d!1226934 c!710381) b!4145701))

(assert (= (and d!1226934 (not c!710381)) b!4145702))

(assert (= (and b!4145702 c!710382) b!4145703))

(assert (= (and b!4145702 (not c!710382)) b!4145704))

(assert (=> d!1226934 m!4741597))

(declare-fun m!4741835 () Bool)

(assert (=> b!4145703 m!4741835))

(assert (=> b!4145514 d!1226934))

(declare-fun b!4145705 () Bool)

(declare-fun e!2572295 () Int)

(assert (=> b!4145705 (= e!2572295 0)))

(declare-fun b!4145706 () Bool)

(declare-fun e!2572294 () Int)

(assert (=> b!4145706 (= e!2572295 e!2572294)))

(declare-fun c!710384 () Bool)

(assert (=> b!4145706 (= c!710384 (and ((_ is Cons!44989) rules!3756) (not (= (h!50409 rules!3756) r!4008))))))

(declare-fun d!1226936 () Bool)

(declare-fun lt!1478670 () Int)

(assert (=> d!1226936 (>= lt!1478670 0)))

(assert (=> d!1226936 (= lt!1478670 e!2572295)))

(declare-fun c!710383 () Bool)

(assert (=> d!1226936 (= c!710383 (and ((_ is Cons!44989) rules!3756) (= (h!50409 rules!3756) r!4008)))))

(assert (=> d!1226936 (contains!9080 rules!3756 r!4008)))

(assert (=> d!1226936 (= (getIndex!744 rules!3756 r!4008) lt!1478670)))

(declare-fun b!4145708 () Bool)

(assert (=> b!4145708 (= e!2572294 (- 1))))

(declare-fun b!4145707 () Bool)

(assert (=> b!4145707 (= e!2572294 (+ 1 (getIndex!744 (t!342728 rules!3756) r!4008)))))

(assert (= (and d!1226936 c!710383) b!4145705))

(assert (= (and d!1226936 (not c!710383)) b!4145706))

(assert (= (and b!4145706 c!710384) b!4145707))

(assert (= (and b!4145706 (not c!710384)) b!4145708))

(assert (=> d!1226936 m!4741621))

(declare-fun m!4741837 () Bool)

(assert (=> b!4145707 m!4741837))

(assert (=> b!4145514 d!1226936))

(declare-fun d!1226938 () Bool)

(declare-fun res!1696836 () Bool)

(declare-fun e!2572298 () Bool)

(assert (=> d!1226938 (=> (not res!1696836) (not e!2572298))))

(assert (=> d!1226938 (= res!1696836 (validRegex!5544 (regex!7398 r!4008)))))

(assert (=> d!1226938 (= (ruleValid!3204 thiss!25645 r!4008) e!2572298)))

(declare-fun b!4145713 () Bool)

(declare-fun res!1696837 () Bool)

(assert (=> b!4145713 (=> (not res!1696837) (not e!2572298))))

(assert (=> b!4145713 (= res!1696837 (not (nullable!4334 (regex!7398 r!4008))))))

(declare-fun b!4145714 () Bool)

(assert (=> b!4145714 (= e!2572298 (not (= (tag!8258 r!4008) (String!51891 ""))))))

(assert (= (and d!1226938 res!1696836) b!4145713))

(assert (= (and b!4145713 res!1696837) b!4145714))

(assert (=> d!1226938 m!4741691))

(assert (=> b!4145713 m!4741697))

(assert (=> b!4145527 d!1226938))

(declare-fun b!4145814 () Bool)

(declare-fun e!2572350 () Bool)

(assert (=> b!4145814 (= e!2572350 true)))

(declare-fun d!1226940 () Bool)

(assert (=> d!1226940 e!2572350))

(assert (= d!1226940 b!4145814))

(declare-fun order!23837 () Int)

(declare-fun order!23839 () Int)

(declare-fun lambda!128985 () Int)

(declare-fun dynLambda!19374 (Int Int) Int)

(declare-fun dynLambda!19375 (Int Int) Int)

(assert (=> b!4145814 (< (dynLambda!19374 order!23837 (toValue!10062 (transformation!7398 r!4008))) (dynLambda!19375 order!23839 lambda!128985))))

(declare-fun order!23841 () Int)

(declare-fun dynLambda!19376 (Int Int) Int)

(assert (=> b!4145814 (< (dynLambda!19376 order!23841 (toChars!9921 (transformation!7398 r!4008))) (dynLambda!19375 order!23839 lambda!128985))))

(declare-fun dynLambda!19377 (Int BalanceConc!26812) TokenValue!7628)

(assert (=> d!1226940 (= (list!16478 (dynLambda!19368 (toChars!9921 (transformation!7398 r!4008)) (dynLambda!19377 (toValue!10062 (transformation!7398 r!4008)) lt!1478601))) (list!16478 lt!1478601))))

(declare-fun lt!1478701 () Unit!64277)

(declare-fun ForallOf!982 (Int BalanceConc!26812) Unit!64277)

(assert (=> d!1226940 (= lt!1478701 (ForallOf!982 lambda!128985 lt!1478601))))

(assert (=> d!1226940 (= (lemmaSemiInverse!2256 (transformation!7398 r!4008) lt!1478601) lt!1478701)))

(declare-fun b_lambda!121891 () Bool)

(assert (=> (not b_lambda!121891) (not d!1226940)))

(declare-fun tb!248865 () Bool)

(declare-fun t!342760 () Bool)

(assert (=> (and b!4145510 (= (toChars!9921 (transformation!7398 rBis!149)) (toChars!9921 (transformation!7398 r!4008))) t!342760) tb!248865))

(declare-fun tp!1263587 () Bool)

(declare-fun e!2572351 () Bool)

(declare-fun b!4145815 () Bool)

(assert (=> b!4145815 (= e!2572351 (and (inv!59599 (c!710354 (dynLambda!19368 (toChars!9921 (transformation!7398 r!4008)) (dynLambda!19377 (toValue!10062 (transformation!7398 r!4008)) lt!1478601)))) tp!1263587))))

(declare-fun result!302668 () Bool)

(assert (=> tb!248865 (= result!302668 (and (inv!59600 (dynLambda!19368 (toChars!9921 (transformation!7398 r!4008)) (dynLambda!19377 (toValue!10062 (transformation!7398 r!4008)) lt!1478601))) e!2572351))))

(assert (= tb!248865 b!4145815))

(declare-fun m!4741907 () Bool)

(assert (=> b!4145815 m!4741907))

(declare-fun m!4741909 () Bool)

(assert (=> tb!248865 m!4741909))

(assert (=> d!1226940 t!342760))

(declare-fun b_and!322201 () Bool)

(assert (= b_and!322177 (and (=> t!342760 result!302668) b_and!322201)))

(declare-fun t!342762 () Bool)

(declare-fun tb!248867 () Bool)

(assert (=> (and b!4145511 (= (toChars!9921 (transformation!7398 r!4008)) (toChars!9921 (transformation!7398 r!4008))) t!342762) tb!248867))

(declare-fun result!302670 () Bool)

(assert (= result!302670 result!302668))

(assert (=> d!1226940 t!342762))

(declare-fun b_and!322203 () Bool)

(assert (= b_and!322179 (and (=> t!342762 result!302670) b_and!322203)))

(declare-fun t!342764 () Bool)

(declare-fun tb!248869 () Bool)

(assert (=> (and b!4145518 (= (toChars!9921 (transformation!7398 (h!50409 rules!3756))) (toChars!9921 (transformation!7398 r!4008))) t!342764) tb!248869))

(declare-fun result!302672 () Bool)

(assert (= result!302672 result!302668))

(assert (=> d!1226940 t!342764))

(declare-fun b_and!322205 () Bool)

(assert (= b_and!322181 (and (=> t!342764 result!302672) b_and!322205)))

(declare-fun b_lambda!121893 () Bool)

(assert (=> (not b_lambda!121893) (not d!1226940)))

(declare-fun tb!248871 () Bool)

(declare-fun t!342766 () Bool)

(assert (=> (and b!4145510 (= (toValue!10062 (transformation!7398 rBis!149)) (toValue!10062 (transformation!7398 r!4008))) t!342766) tb!248871))

(declare-fun result!302674 () Bool)

(declare-fun inv!21 (TokenValue!7628) Bool)

(assert (=> tb!248871 (= result!302674 (inv!21 (dynLambda!19377 (toValue!10062 (transformation!7398 r!4008)) lt!1478601)))))

(declare-fun m!4741911 () Bool)

(assert (=> tb!248871 m!4741911))

(assert (=> d!1226940 t!342766))

(declare-fun b_and!322207 () Bool)

(assert (= b_and!322153 (and (=> t!342766 result!302674) b_and!322207)))

(declare-fun t!342768 () Bool)

(declare-fun tb!248873 () Bool)

(assert (=> (and b!4145511 (= (toValue!10062 (transformation!7398 r!4008)) (toValue!10062 (transformation!7398 r!4008))) t!342768) tb!248873))

(declare-fun result!302678 () Bool)

(assert (= result!302678 result!302674))

(assert (=> d!1226940 t!342768))

(declare-fun b_and!322209 () Bool)

(assert (= b_and!322157 (and (=> t!342768 result!302678) b_and!322209)))

(declare-fun tb!248875 () Bool)

(declare-fun t!342770 () Bool)

(assert (=> (and b!4145518 (= (toValue!10062 (transformation!7398 (h!50409 rules!3756))) (toValue!10062 (transformation!7398 r!4008))) t!342770) tb!248875))

(declare-fun result!302680 () Bool)

(assert (= result!302680 result!302674))

(assert (=> d!1226940 t!342770))

(declare-fun b_and!322211 () Bool)

(assert (= b_and!322161 (and (=> t!342770 result!302680) b_and!322211)))

(declare-fun m!4741913 () Bool)

(assert (=> d!1226940 m!4741913))

(declare-fun m!4741917 () Bool)

(assert (=> d!1226940 m!4741917))

(declare-fun m!4741919 () Bool)

(assert (=> d!1226940 m!4741919))

(declare-fun m!4741921 () Bool)

(assert (=> d!1226940 m!4741921))

(assert (=> d!1226940 m!4741917))

(assert (=> d!1226940 m!4741919))

(declare-fun m!4741923 () Bool)

(assert (=> d!1226940 m!4741923))

(assert (=> b!4145516 d!1226940))

(declare-fun d!1226964 () Bool)

(declare-fun lt!1478707 () List!45112)

(assert (=> d!1226964 (= (++!11635 p!2912 lt!1478707) input!3238)))

(declare-fun e!2572360 () List!45112)

(assert (=> d!1226964 (= lt!1478707 e!2572360)))

(declare-fun c!710406 () Bool)

(assert (=> d!1226964 (= c!710406 ((_ is Cons!44988) p!2912))))

(assert (=> d!1226964 (>= (size!33347 input!3238) (size!33347 p!2912))))

(assert (=> d!1226964 (= (getSuffix!2660 input!3238 p!2912) lt!1478707)))

(declare-fun b!4145825 () Bool)

(assert (=> b!4145825 (= e!2572360 (getSuffix!2660 (tail!6582 input!3238) (t!342727 p!2912)))))

(declare-fun b!4145826 () Bool)

(assert (=> b!4145826 (= e!2572360 input!3238)))

(assert (= (and d!1226964 c!710406) b!4145825))

(assert (= (and d!1226964 (not c!710406)) b!4145826))

(declare-fun m!4741925 () Bool)

(assert (=> d!1226964 m!4741925))

(assert (=> d!1226964 m!4741791))

(assert (=> d!1226964 m!4741603))

(assert (=> b!4145825 m!4741815))

(assert (=> b!4145825 m!4741815))

(declare-fun m!4741927 () Bool)

(assert (=> b!4145825 m!4741927))

(assert (=> b!4145516 d!1226964))

(declare-fun d!1226966 () Bool)

(declare-fun fromListB!2531 (List!45112) BalanceConc!26812)

(assert (=> d!1226966 (= (seqFromList!5515 p!2912) (fromListB!2531 p!2912))))

(declare-fun bs!595343 () Bool)

(assert (= bs!595343 d!1226966))

(declare-fun m!4741929 () Bool)

(assert (=> bs!595343 m!4741929))

(assert (=> b!4145516 d!1226966))

(declare-fun d!1226968 () Bool)

(declare-fun lt!1478710 () Int)

(assert (=> d!1226968 (>= lt!1478710 0)))

(declare-fun e!2572363 () Int)

(assert (=> d!1226968 (= lt!1478710 e!2572363)))

(declare-fun c!710409 () Bool)

(assert (=> d!1226968 (= c!710409 ((_ is Nil!44988) p!2912))))

(assert (=> d!1226968 (= (size!33347 p!2912) lt!1478710)))

(declare-fun b!4145831 () Bool)

(assert (=> b!4145831 (= e!2572363 0)))

(declare-fun b!4145832 () Bool)

(assert (=> b!4145832 (= e!2572363 (+ 1 (size!33347 (t!342727 p!2912))))))

(assert (= (and d!1226968 c!710409) b!4145831))

(assert (= (and d!1226968 (not c!710409)) b!4145832))

(declare-fun m!4741931 () Bool)

(assert (=> b!4145832 m!4741931))

(assert (=> b!4145516 d!1226968))

(declare-fun d!1226970 () Bool)

(declare-fun e!2572370 () Bool)

(assert (=> d!1226970 e!2572370))

(declare-fun res!1696909 () Bool)

(assert (=> d!1226970 (=> res!1696909 e!2572370)))

(declare-fun lt!1478722 () Option!9704)

(assert (=> d!1226970 (= res!1696909 (isEmpty!26848 lt!1478722))))

(declare-fun e!2572371 () Option!9704)

(assert (=> d!1226970 (= lt!1478722 e!2572371)))

(declare-fun c!710412 () Bool)

(assert (=> d!1226970 (= c!710412 (and ((_ is Cons!44989) rules!3756) ((_ is Nil!44989) (t!342728 rules!3756))))))

(declare-fun lt!1478725 () Unit!64277)

(declare-fun lt!1478721 () Unit!64277)

(assert (=> d!1226970 (= lt!1478725 lt!1478721)))

(assert (=> d!1226970 (isPrefix!4333 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2798 (List!45112 List!45112) Unit!64277)

(assert (=> d!1226970 (= lt!1478721 (lemmaIsPrefixRefl!2798 input!3238 input!3238))))

(declare-fun rulesValidInductive!2750 (LexerInterface!6987 List!45113) Bool)

(assert (=> d!1226970 (rulesValidInductive!2750 thiss!25645 rules!3756)))

(assert (=> d!1226970 (= (maxPrefix!4177 thiss!25645 rules!3756 input!3238) lt!1478722)))

(declare-fun b!4145851 () Bool)

(declare-fun res!1696906 () Bool)

(declare-fun e!2572372 () Bool)

(assert (=> b!4145851 (=> (not res!1696906) (not e!2572372))))

(assert (=> b!4145851 (= res!1696906 (matchR!6132 (regex!7398 (rule!10520 (_1!24815 (get!14692 lt!1478722)))) (list!16478 (charsOf!4997 (_1!24815 (get!14692 lt!1478722))))))))

(declare-fun bm!290637 () Bool)

(declare-fun call!290642 () Option!9704)

(assert (=> bm!290637 (= call!290642 (maxPrefixOneRule!3116 thiss!25645 (h!50409 rules!3756) input!3238))))

(declare-fun b!4145852 () Bool)

(declare-fun lt!1478724 () Option!9704)

(declare-fun lt!1478723 () Option!9704)

(assert (=> b!4145852 (= e!2572371 (ite (and ((_ is None!9703) lt!1478724) ((_ is None!9703) lt!1478723)) None!9703 (ite ((_ is None!9703) lt!1478723) lt!1478724 (ite ((_ is None!9703) lt!1478724) lt!1478723 (ite (>= (size!33346 (_1!24815 (v!40353 lt!1478724))) (size!33346 (_1!24815 (v!40353 lt!1478723)))) lt!1478724 lt!1478723)))))))

(assert (=> b!4145852 (= lt!1478724 call!290642)))

(assert (=> b!4145852 (= lt!1478723 (maxPrefix!4177 thiss!25645 (t!342728 rules!3756) input!3238))))

(declare-fun b!4145853 () Bool)

(assert (=> b!4145853 (= e!2572371 call!290642)))

(declare-fun b!4145854 () Bool)

(assert (=> b!4145854 (= e!2572372 (contains!9080 rules!3756 (rule!10520 (_1!24815 (get!14692 lt!1478722)))))))

(declare-fun b!4145855 () Bool)

(declare-fun res!1696910 () Bool)

(assert (=> b!4145855 (=> (not res!1696910) (not e!2572372))))

(assert (=> b!4145855 (= res!1696910 (< (size!33347 (_2!24815 (get!14692 lt!1478722))) (size!33347 input!3238)))))

(declare-fun b!4145856 () Bool)

(assert (=> b!4145856 (= e!2572370 e!2572372)))

(declare-fun res!1696912 () Bool)

(assert (=> b!4145856 (=> (not res!1696912) (not e!2572372))))

(declare-fun isDefined!7290 (Option!9704) Bool)

(assert (=> b!4145856 (= res!1696912 (isDefined!7290 lt!1478722))))

(declare-fun b!4145857 () Bool)

(declare-fun res!1696908 () Bool)

(assert (=> b!4145857 (=> (not res!1696908) (not e!2572372))))

(assert (=> b!4145857 (= res!1696908 (= (list!16478 (charsOf!4997 (_1!24815 (get!14692 lt!1478722)))) (originalCharacters!7894 (_1!24815 (get!14692 lt!1478722)))))))

(declare-fun b!4145858 () Bool)

(declare-fun res!1696907 () Bool)

(assert (=> b!4145858 (=> (not res!1696907) (not e!2572372))))

(assert (=> b!4145858 (= res!1696907 (= (value!231397 (_1!24815 (get!14692 lt!1478722))) (apply!10471 (transformation!7398 (rule!10520 (_1!24815 (get!14692 lt!1478722)))) (seqFromList!5515 (originalCharacters!7894 (_1!24815 (get!14692 lt!1478722)))))))))

(declare-fun b!4145859 () Bool)

(declare-fun res!1696911 () Bool)

(assert (=> b!4145859 (=> (not res!1696911) (not e!2572372))))

(assert (=> b!4145859 (= res!1696911 (= (++!11635 (list!16478 (charsOf!4997 (_1!24815 (get!14692 lt!1478722)))) (_2!24815 (get!14692 lt!1478722))) input!3238))))

(assert (= (and d!1226970 c!710412) b!4145853))

(assert (= (and d!1226970 (not c!710412)) b!4145852))

(assert (= (or b!4145853 b!4145852) bm!290637))

(assert (= (and d!1226970 (not res!1696909)) b!4145856))

(assert (= (and b!4145856 res!1696912) b!4145857))

(assert (= (and b!4145857 res!1696908) b!4145855))

(assert (= (and b!4145855 res!1696910) b!4145859))

(assert (= (and b!4145859 res!1696911) b!4145858))

(assert (= (and b!4145858 res!1696907) b!4145851))

(assert (= (and b!4145851 res!1696906) b!4145854))

(declare-fun m!4741933 () Bool)

(assert (=> d!1226970 m!4741933))

(declare-fun m!4741935 () Bool)

(assert (=> d!1226970 m!4741935))

(declare-fun m!4741937 () Bool)

(assert (=> d!1226970 m!4741937))

(declare-fun m!4741939 () Bool)

(assert (=> d!1226970 m!4741939))

(declare-fun m!4741941 () Bool)

(assert (=> bm!290637 m!4741941))

(declare-fun m!4741943 () Bool)

(assert (=> b!4145852 m!4741943))

(declare-fun m!4741945 () Bool)

(assert (=> b!4145856 m!4741945))

(declare-fun m!4741947 () Bool)

(assert (=> b!4145859 m!4741947))

(declare-fun m!4741949 () Bool)

(assert (=> b!4145859 m!4741949))

(assert (=> b!4145859 m!4741949))

(declare-fun m!4741951 () Bool)

(assert (=> b!4145859 m!4741951))

(assert (=> b!4145859 m!4741951))

(declare-fun m!4741953 () Bool)

(assert (=> b!4145859 m!4741953))

(assert (=> b!4145854 m!4741947))

(declare-fun m!4741955 () Bool)

(assert (=> b!4145854 m!4741955))

(assert (=> b!4145855 m!4741947))

(declare-fun m!4741957 () Bool)

(assert (=> b!4145855 m!4741957))

(assert (=> b!4145855 m!4741791))

(assert (=> b!4145858 m!4741947))

(declare-fun m!4741959 () Bool)

(assert (=> b!4145858 m!4741959))

(assert (=> b!4145858 m!4741959))

(declare-fun m!4741961 () Bool)

(assert (=> b!4145858 m!4741961))

(assert (=> b!4145857 m!4741947))

(assert (=> b!4145857 m!4741949))

(assert (=> b!4145857 m!4741949))

(assert (=> b!4145857 m!4741951))

(assert (=> b!4145851 m!4741947))

(assert (=> b!4145851 m!4741949))

(assert (=> b!4145851 m!4741949))

(assert (=> b!4145851 m!4741951))

(assert (=> b!4145851 m!4741951))

(declare-fun m!4741963 () Bool)

(assert (=> b!4145851 m!4741963))

(assert (=> b!4145516 d!1226970))

(declare-fun d!1226972 () Bool)

(assert (=> d!1226972 (= (apply!10471 (transformation!7398 r!4008) lt!1478601) (dynLambda!19377 (toValue!10062 (transformation!7398 r!4008)) lt!1478601))))

(declare-fun b_lambda!121895 () Bool)

(assert (=> (not b_lambda!121895) (not d!1226972)))

(assert (=> d!1226972 t!342766))

(declare-fun b_and!322213 () Bool)

(assert (= b_and!322207 (and (=> t!342766 result!302674) b_and!322213)))

(assert (=> d!1226972 t!342768))

(declare-fun b_and!322215 () Bool)

(assert (= b_and!322209 (and (=> t!342768 result!302678) b_and!322215)))

(assert (=> d!1226972 t!342770))

(declare-fun b_and!322217 () Bool)

(assert (= b_and!322211 (and (=> t!342770 result!302680) b_and!322217)))

(assert (=> d!1226972 m!4741917))

(assert (=> b!4145516 d!1226972))

(declare-fun d!1226974 () Bool)

(assert (=> d!1226974 (ruleValid!3204 thiss!25645 r!4008)))

(declare-fun lt!1478738 () Unit!64277)

(declare-fun choose!25378 (LexerInterface!6987 Rule!14596 List!45113) Unit!64277)

(assert (=> d!1226974 (= lt!1478738 (choose!25378 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1226974 (contains!9080 rules!3756 r!4008)))

(assert (=> d!1226974 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2244 thiss!25645 r!4008 rules!3756) lt!1478738)))

(declare-fun bs!595344 () Bool)

(assert (= bs!595344 d!1226974))

(assert (=> bs!595344 m!4741623))

(declare-fun m!4741965 () Bool)

(assert (=> bs!595344 m!4741965))

(assert (=> bs!595344 m!4741621))

(assert (=> b!4145526 d!1226974))

(declare-fun d!1226976 () Bool)

(declare-fun res!1696927 () Bool)

(declare-fun e!2572381 () Bool)

(assert (=> d!1226976 (=> (not res!1696927) (not e!2572381))))

(assert (=> d!1226976 (= res!1696927 (validRegex!5544 (regex!7398 rBis!149)))))

(assert (=> d!1226976 (= (ruleValid!3204 thiss!25645 rBis!149) e!2572381)))

(declare-fun b!4145878 () Bool)

(declare-fun res!1696928 () Bool)

(assert (=> b!4145878 (=> (not res!1696928) (not e!2572381))))

(assert (=> b!4145878 (= res!1696928 (not (nullable!4334 (regex!7398 rBis!149))))))

(declare-fun b!4145879 () Bool)

(assert (=> b!4145879 (= e!2572381 (not (= (tag!8258 rBis!149) (String!51891 ""))))))

(assert (= (and d!1226976 res!1696927) b!4145878))

(assert (= (and b!4145878 res!1696928) b!4145879))

(declare-fun m!4741967 () Bool)

(assert (=> d!1226976 m!4741967))

(declare-fun m!4741969 () Bool)

(assert (=> b!4145878 m!4741969))

(assert (=> b!4145526 d!1226976))

(declare-fun d!1226978 () Bool)

(assert (=> d!1226978 (ruleValid!3204 thiss!25645 rBis!149)))

(declare-fun lt!1478739 () Unit!64277)

(assert (=> d!1226978 (= lt!1478739 (choose!25378 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1226978 (contains!9080 rules!3756 rBis!149)))

(assert (=> d!1226978 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2244 thiss!25645 rBis!149 rules!3756) lt!1478739)))

(declare-fun bs!595345 () Bool)

(assert (= bs!595345 d!1226978))

(assert (=> bs!595345 m!4741593))

(declare-fun m!4741971 () Bool)

(assert (=> bs!595345 m!4741971))

(assert (=> bs!595345 m!4741597))

(assert (=> b!4145526 d!1226978))

(declare-fun b!4145892 () Bool)

(declare-fun e!2572384 () Bool)

(declare-fun tp!1263602 () Bool)

(assert (=> b!4145892 (= e!2572384 tp!1263602)))

(declare-fun b!4145891 () Bool)

(declare-fun tp!1263600 () Bool)

(declare-fun tp!1263599 () Bool)

(assert (=> b!4145891 (= e!2572384 (and tp!1263600 tp!1263599))))

(assert (=> b!4145523 (= tp!1263573 e!2572384)))

(declare-fun b!4145893 () Bool)

(declare-fun tp!1263601 () Bool)

(declare-fun tp!1263598 () Bool)

(assert (=> b!4145893 (= e!2572384 (and tp!1263601 tp!1263598))))

(declare-fun b!4145890 () Bool)

(assert (=> b!4145890 (= e!2572384 tp_is_empty!21529)))

(assert (= (and b!4145523 ((_ is ElementMatch!12303) (regex!7398 r!4008))) b!4145890))

(assert (= (and b!4145523 ((_ is Concat!19932) (regex!7398 r!4008))) b!4145891))

(assert (= (and b!4145523 ((_ is Star!12303) (regex!7398 r!4008))) b!4145892))

(assert (= (and b!4145523 ((_ is Union!12303) (regex!7398 r!4008))) b!4145893))

(declare-fun b!4145904 () Bool)

(declare-fun b_free!118247 () Bool)

(declare-fun b_next!118951 () Bool)

(assert (=> b!4145904 (= b_free!118247 (not b_next!118951))))

(declare-fun tb!248877 () Bool)

(declare-fun t!342772 () Bool)

(assert (=> (and b!4145904 (= (toValue!10062 (transformation!7398 (h!50409 (t!342728 rules!3756)))) (toValue!10062 (transformation!7398 r!4008))) t!342772) tb!248877))

(declare-fun result!302686 () Bool)

(assert (= result!302686 result!302674))

(assert (=> d!1226940 t!342772))

(assert (=> d!1226972 t!342772))

(declare-fun tp!1263611 () Bool)

(declare-fun b_and!322219 () Bool)

(assert (=> b!4145904 (= tp!1263611 (and (=> t!342772 result!302686) b_and!322219))))

(declare-fun b_free!118249 () Bool)

(declare-fun b_next!118953 () Bool)

(assert (=> b!4145904 (= b_free!118249 (not b_next!118953))))

(declare-fun t!342774 () Bool)

(declare-fun tb!248879 () Bool)

(assert (=> (and b!4145904 (= (toChars!9921 (transformation!7398 (h!50409 (t!342728 rules!3756)))) (toChars!9921 (transformation!7398 (rule!10520 (_1!24815 (get!14692 lt!1478605)))))) t!342774) tb!248879))

(declare-fun result!302688 () Bool)

(assert (= result!302688 result!302640))

(assert (=> d!1226880 t!342774))

(declare-fun tb!248881 () Bool)

(declare-fun t!342776 () Bool)

(assert (=> (and b!4145904 (= (toChars!9921 (transformation!7398 (h!50409 (t!342728 rules!3756)))) (toChars!9921 (transformation!7398 (rule!10520 lt!1478606)))) t!342776) tb!248881))

(declare-fun result!302690 () Bool)

(assert (= result!302690 result!302648))

(assert (=> b!4145690 t!342776))

(declare-fun t!342778 () Bool)

(declare-fun tb!248883 () Bool)

(assert (=> (and b!4145904 (= (toChars!9921 (transformation!7398 (h!50409 (t!342728 rules!3756)))) (toChars!9921 (transformation!7398 r!4008))) t!342778) tb!248883))

(declare-fun result!302692 () Bool)

(assert (= result!302692 result!302668))

(assert (=> d!1226940 t!342778))

(declare-fun tp!1263614 () Bool)

(declare-fun b_and!322221 () Bool)

(assert (=> b!4145904 (= tp!1263614 (and (=> t!342774 result!302688) (=> t!342776 result!302690) (=> t!342778 result!302692) b_and!322221))))

(declare-fun e!2572396 () Bool)

(assert (=> b!4145904 (= e!2572396 (and tp!1263611 tp!1263614))))

(declare-fun e!2572394 () Bool)

(declare-fun b!4145903 () Bool)

(declare-fun tp!1263612 () Bool)

(assert (=> b!4145903 (= e!2572394 (and tp!1263612 (inv!59594 (tag!8258 (h!50409 (t!342728 rules!3756)))) (inv!59597 (transformation!7398 (h!50409 (t!342728 rules!3756)))) e!2572396))))

(declare-fun b!4145902 () Bool)

(declare-fun e!2572395 () Bool)

(declare-fun tp!1263613 () Bool)

(assert (=> b!4145902 (= e!2572395 (and e!2572394 tp!1263613))))

(assert (=> b!4145517 (= tp!1263578 e!2572395)))

(assert (= b!4145903 b!4145904))

(assert (= b!4145902 b!4145903))

(assert (= (and b!4145517 ((_ is Cons!44989) (t!342728 rules!3756))) b!4145902))

(declare-fun m!4741973 () Bool)

(assert (=> b!4145903 m!4741973))

(declare-fun m!4741975 () Bool)

(assert (=> b!4145903 m!4741975))

(declare-fun b!4145909 () Bool)

(declare-fun e!2572399 () Bool)

(declare-fun tp!1263617 () Bool)

(assert (=> b!4145909 (= e!2572399 (and tp_is_empty!21529 tp!1263617))))

(assert (=> b!4145508 (= tp!1263572 e!2572399)))

(assert (= (and b!4145508 ((_ is Cons!44988) (t!342727 p!2912))) b!4145909))

(declare-fun b!4145912 () Bool)

(declare-fun e!2572400 () Bool)

(declare-fun tp!1263622 () Bool)

(assert (=> b!4145912 (= e!2572400 tp!1263622)))

(declare-fun b!4145911 () Bool)

(declare-fun tp!1263620 () Bool)

(declare-fun tp!1263619 () Bool)

(assert (=> b!4145911 (= e!2572400 (and tp!1263620 tp!1263619))))

(assert (=> b!4145524 (= tp!1263576 e!2572400)))

(declare-fun b!4145913 () Bool)

(declare-fun tp!1263621 () Bool)

(declare-fun tp!1263618 () Bool)

(assert (=> b!4145913 (= e!2572400 (and tp!1263621 tp!1263618))))

(declare-fun b!4145910 () Bool)

(assert (=> b!4145910 (= e!2572400 tp_is_empty!21529)))

(assert (= (and b!4145524 ((_ is ElementMatch!12303) (regex!7398 (h!50409 rules!3756)))) b!4145910))

(assert (= (and b!4145524 ((_ is Concat!19932) (regex!7398 (h!50409 rules!3756)))) b!4145911))

(assert (= (and b!4145524 ((_ is Star!12303) (regex!7398 (h!50409 rules!3756)))) b!4145912))

(assert (= (and b!4145524 ((_ is Union!12303) (regex!7398 (h!50409 rules!3756)))) b!4145913))

(declare-fun b!4145914 () Bool)

(declare-fun e!2572401 () Bool)

(declare-fun tp!1263623 () Bool)

(assert (=> b!4145914 (= e!2572401 (and tp_is_empty!21529 tp!1263623))))

(assert (=> b!4145520 (= tp!1263568 e!2572401)))

(assert (= (and b!4145520 ((_ is Cons!44988) (t!342727 input!3238))) b!4145914))

(declare-fun b!4145917 () Bool)

(declare-fun e!2572402 () Bool)

(declare-fun tp!1263628 () Bool)

(assert (=> b!4145917 (= e!2572402 tp!1263628)))

(declare-fun b!4145916 () Bool)

(declare-fun tp!1263626 () Bool)

(declare-fun tp!1263625 () Bool)

(assert (=> b!4145916 (= e!2572402 (and tp!1263626 tp!1263625))))

(assert (=> b!4145530 (= tp!1263569 e!2572402)))

(declare-fun b!4145918 () Bool)

(declare-fun tp!1263627 () Bool)

(declare-fun tp!1263624 () Bool)

(assert (=> b!4145918 (= e!2572402 (and tp!1263627 tp!1263624))))

(declare-fun b!4145915 () Bool)

(assert (=> b!4145915 (= e!2572402 tp_is_empty!21529)))

(assert (= (and b!4145530 ((_ is ElementMatch!12303) (regex!7398 rBis!149))) b!4145915))

(assert (= (and b!4145530 ((_ is Concat!19932) (regex!7398 rBis!149))) b!4145916))

(assert (= (and b!4145530 ((_ is Star!12303) (regex!7398 rBis!149))) b!4145917))

(assert (= (and b!4145530 ((_ is Union!12303) (regex!7398 rBis!149))) b!4145918))

(declare-fun b_lambda!121897 () Bool)

(assert (= b_lambda!121895 (or (and b!4145510 b_free!118235 (= (toValue!10062 (transformation!7398 rBis!149)) (toValue!10062 (transformation!7398 r!4008)))) (and b!4145511 b_free!118239) (and b!4145518 b_free!118243 (= (toValue!10062 (transformation!7398 (h!50409 rules!3756))) (toValue!10062 (transformation!7398 r!4008)))) (and b!4145904 b_free!118247 (= (toValue!10062 (transformation!7398 (h!50409 (t!342728 rules!3756)))) (toValue!10062 (transformation!7398 r!4008)))) b_lambda!121897)))

(declare-fun b_lambda!121899 () Bool)

(assert (= b_lambda!121891 (or (and b!4145510 b_free!118237 (= (toChars!9921 (transformation!7398 rBis!149)) (toChars!9921 (transformation!7398 r!4008)))) (and b!4145511 b_free!118241) (and b!4145518 b_free!118245 (= (toChars!9921 (transformation!7398 (h!50409 rules!3756))) (toChars!9921 (transformation!7398 r!4008)))) (and b!4145904 b_free!118249 (= (toChars!9921 (transformation!7398 (h!50409 (t!342728 rules!3756)))) (toChars!9921 (transformation!7398 r!4008)))) b_lambda!121899)))

(declare-fun b_lambda!121901 () Bool)

(assert (= b_lambda!121893 (or (and b!4145510 b_free!118235 (= (toValue!10062 (transformation!7398 rBis!149)) (toValue!10062 (transformation!7398 r!4008)))) (and b!4145511 b_free!118239) (and b!4145518 b_free!118243 (= (toValue!10062 (transformation!7398 (h!50409 rules!3756))) (toValue!10062 (transformation!7398 r!4008)))) (and b!4145904 b_free!118247 (= (toValue!10062 (transformation!7398 (h!50409 (t!342728 rules!3756)))) (toValue!10062 (transformation!7398 r!4008)))) b_lambda!121901)))

(check-sat (not b_next!118949) (not d!1226924) (not d!1226902) (not b!4145815) (not d!1226978) (not b_next!118947) (not b_next!118941) (not b!4145685) (not b!4145918) (not d!1226898) (not b!4145636) (not b!4145590) (not d!1226932) (not b!4145586) (not d!1226888) (not bm!290628) (not d!1226852) (not b!4145550) (not d!1226976) (not b!4145690) (not d!1226862) (not b!4145855) (not b!4145664) (not d!1226878) (not b!4145893) (not b!4145914) (not b!4145857) (not b!4145684) (not b!4145667) (not b!4145692) b_and!322205 (not d!1226894) (not b!4145671) (not d!1226966) (not b!4145878) (not b!4145668) (not bm!290637) (not b_next!118945) (not b_next!118939) (not tb!248871) (not d!1226930) (not b!4145683) (not b_lambda!121899) (not d!1226938) (not b!4145548) (not b!4145593) (not b!4145630) (not b_lambda!121901) (not d!1226970) (not b!4145858) (not b!4145666) (not b!4145673) tp_is_empty!21529 b_and!322219 (not b!4145859) (not tb!248847) (not b!4145902) (not b!4145891) (not b!4145851) (not b_next!118953) b_and!322213 (not b!4145916) (not b!4145691) (not b!4145912) (not d!1226886) (not d!1226872) (not d!1226936) (not d!1226934) (not b!4145825) (not b!4145665) (not b!4145707) (not d!1226964) (not b_lambda!121897) (not b!4145903) (not b!4145672) (not b!4145909) (not b!4145913) (not b!4145911) (not d!1226918) (not d!1226974) (not b!4145669) (not d!1226880) (not b_next!118951) (not b_lambda!121881) b_and!322217 (not b!4145583) (not tb!248841) (not b!4145628) b_and!322203 b_and!322201 (not b!4145917) (not b!4145587) (not b!4145856) (not b!4145832) (not b_next!118943) (not b_lambda!121883) (not b!4145621) b_and!322215 (not d!1226940) (not b!4145616) (not b!4145852) (not b!4145892) b_and!322221 (not b!4145703) (not d!1226858) (not b!4145713) (not b!4145584) (not b!4145854) (not tb!248865) (not b!4145603))
(check-sat (not b_next!118949) b_and!322205 b_and!322219 (not b_next!118953) b_and!322213 (not b_next!118951) b_and!322217 (not b_next!118943) b_and!322215 b_and!322221 (not b_next!118947) (not b_next!118941) (not b_next!118945) (not b_next!118939) b_and!322203 b_and!322201)
