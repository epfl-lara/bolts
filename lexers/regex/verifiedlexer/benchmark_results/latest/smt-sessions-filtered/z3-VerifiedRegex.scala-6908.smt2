; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!364148 () Bool)

(assert start!364148)

(declare-fun b!3878661 () Bool)

(declare-fun b_free!104965 () Bool)

(declare-fun b_next!105669 () Bool)

(assert (=> b!3878661 (= b_free!104965 (not b_next!105669))))

(declare-fun tp!1175808 () Bool)

(declare-fun b_and!290859 () Bool)

(assert (=> b!3878661 (= tp!1175808 b_and!290859)))

(declare-fun b_free!104967 () Bool)

(declare-fun b_next!105671 () Bool)

(assert (=> b!3878661 (= b_free!104967 (not b_next!105671))))

(declare-fun tp!1175812 () Bool)

(declare-fun b_and!290861 () Bool)

(assert (=> b!3878661 (= tp!1175812 b_and!290861)))

(declare-fun b!3878683 () Bool)

(declare-fun b_free!104969 () Bool)

(declare-fun b_next!105673 () Bool)

(assert (=> b!3878683 (= b_free!104969 (not b_next!105673))))

(declare-fun tp!1175805 () Bool)

(declare-fun b_and!290863 () Bool)

(assert (=> b!3878683 (= tp!1175805 b_and!290863)))

(declare-fun b_free!104971 () Bool)

(declare-fun b_next!105675 () Bool)

(assert (=> b!3878683 (= b_free!104971 (not b_next!105675))))

(declare-fun tp!1175813 () Bool)

(declare-fun b_and!290865 () Bool)

(assert (=> b!3878683 (= tp!1175813 b_and!290865)))

(declare-fun b!3878652 () Bool)

(declare-fun b_free!104973 () Bool)

(declare-fun b_next!105677 () Bool)

(assert (=> b!3878652 (= b_free!104973 (not b_next!105677))))

(declare-fun tp!1175803 () Bool)

(declare-fun b_and!290867 () Bool)

(assert (=> b!3878652 (= tp!1175803 b_and!290867)))

(declare-fun b_free!104975 () Bool)

(declare-fun b_next!105679 () Bool)

(assert (=> b!3878652 (= b_free!104975 (not b_next!105679))))

(declare-fun tp!1175804 () Bool)

(declare-fun b_and!290869 () Bool)

(assert (=> b!3878652 (= tp!1175804 b_and!290869)))

(declare-fun b!3878638 () Bool)

(declare-fun e!2399834 () Bool)

(declare-fun e!2399817 () Bool)

(declare-datatypes ((List!41360 0))(
  ( (Nil!41236) (Cons!41236 (h!46656 (_ BitVec 16)) (t!315099 List!41360)) )
))
(declare-datatypes ((TokenValue!6634 0))(
  ( (FloatLiteralValue!13268 (text!46883 List!41360)) (TokenValueExt!6633 (__x!25485 Int)) (Broken!33170 (value!203122 List!41360)) (Object!6757) (End!6634) (Def!6634) (Underscore!6634) (Match!6634) (Else!6634) (Error!6634) (Case!6634) (If!6634) (Extends!6634) (Abstract!6634) (Class!6634) (Val!6634) (DelimiterValue!13268 (del!6694 List!41360)) (KeywordValue!6640 (value!203123 List!41360)) (CommentValue!13268 (value!203124 List!41360)) (WhitespaceValue!13268 (value!203125 List!41360)) (IndentationValue!6634 (value!203126 List!41360)) (String!46887) (Int32!6634) (Broken!33171 (value!203127 List!41360)) (Boolean!6635) (Unit!59280) (OperatorValue!6637 (op!6694 List!41360)) (IdentifierValue!13268 (value!203128 List!41360)) (IdentifierValue!13269 (value!203129 List!41360)) (WhitespaceValue!13269 (value!203130 List!41360)) (True!13268) (False!13268) (Broken!33172 (value!203131 List!41360)) (Broken!33173 (value!203132 List!41360)) (True!13269) (RightBrace!6634) (RightBracket!6634) (Colon!6634) (Null!6634) (Comma!6634) (LeftBracket!6634) (False!13269) (LeftBrace!6634) (ImaginaryLiteralValue!6634 (text!46884 List!41360)) (StringLiteralValue!19902 (value!203133 List!41360)) (EOFValue!6634 (value!203134 List!41360)) (IdentValue!6634 (value!203135 List!41360)) (DelimiterValue!13269 (value!203136 List!41360)) (DedentValue!6634 (value!203137 List!41360)) (NewLineValue!6634 (value!203138 List!41360)) (IntegerValue!19902 (value!203139 (_ BitVec 32)) (text!46885 List!41360)) (IntegerValue!19903 (value!203140 Int) (text!46886 List!41360)) (Times!6634) (Or!6634) (Equal!6634) (Minus!6634) (Broken!33174 (value!203141 List!41360)) (And!6634) (Div!6634) (LessEqual!6634) (Mod!6634) (Concat!17943) (Not!6634) (Plus!6634) (SpaceValue!6634 (value!203142 List!41360)) (IntegerValue!19904 (value!203143 Int) (text!46887 List!41360)) (StringLiteralValue!19903 (text!46888 List!41360)) (FloatLiteralValue!13269 (text!46889 List!41360)) (BytesLiteralValue!6634 (value!203144 List!41360)) (CommentValue!13269 (value!203145 List!41360)) (StringLiteralValue!19904 (value!203146 List!41360)) (ErrorTokenValue!6634 (msg!6695 List!41360)) )
))
(declare-datatypes ((C!22804 0))(
  ( (C!22805 (val!13496 Int)) )
))
(declare-datatypes ((Regex!11309 0))(
  ( (ElementMatch!11309 (c!674754 C!22804)) (Concat!17944 (regOne!23130 Regex!11309) (regTwo!23130 Regex!11309)) (EmptyExpr!11309) (Star!11309 (reg!11638 Regex!11309)) (EmptyLang!11309) (Union!11309 (regOne!23131 Regex!11309) (regTwo!23131 Regex!11309)) )
))
(declare-datatypes ((String!46888 0))(
  ( (String!46889 (value!203147 String)) )
))
(declare-datatypes ((List!41361 0))(
  ( (Nil!41237) (Cons!41237 (h!46657 C!22804) (t!315100 List!41361)) )
))
(declare-datatypes ((IArray!25235 0))(
  ( (IArray!25236 (innerList!12675 List!41361)) )
))
(declare-datatypes ((Conc!12615 0))(
  ( (Node!12615 (left!31643 Conc!12615) (right!31973 Conc!12615) (csize!25460 Int) (cheight!12826 Int)) (Leaf!19524 (xs!15921 IArray!25235) (csize!25461 Int)) (Empty!12615) )
))
(declare-datatypes ((BalanceConc!24824 0))(
  ( (BalanceConc!24825 (c!674755 Conc!12615)) )
))
(declare-datatypes ((TokenValueInjection!12696 0))(
  ( (TokenValueInjection!12697 (toValue!8832 Int) (toChars!8691 Int)) )
))
(declare-datatypes ((Rule!12608 0))(
  ( (Rule!12609 (regex!6404 Regex!11309) (tag!7264 String!46888) (isSeparator!6404 Bool) (transformation!6404 TokenValueInjection!12696)) )
))
(declare-datatypes ((Token!11946 0))(
  ( (Token!11947 (value!203148 TokenValue!6634) (rule!9302 Rule!12608) (size!30981 Int) (originalCharacters!7004 List!41361)) )
))
(declare-datatypes ((List!41362 0))(
  ( (Nil!41238) (Cons!41238 (h!46658 Token!11946) (t!315101 List!41362)) )
))
(declare-fun prefixTokens!80 () List!41362)

(declare-fun tp!1175801 () Bool)

(declare-fun inv!55391 (String!46888) Bool)

(declare-fun inv!55394 (TokenValueInjection!12696) Bool)

(assert (=> b!3878638 (= e!2399817 (and tp!1175801 (inv!55391 (tag!7264 (rule!9302 (h!46658 prefixTokens!80)))) (inv!55394 (transformation!6404 (rule!9302 (h!46658 prefixTokens!80)))) e!2399834))))

(declare-fun b!3878639 () Bool)

(declare-fun tp!1175807 () Bool)

(declare-fun suffixTokens!72 () List!41362)

(declare-fun e!2399813 () Bool)

(declare-fun e!2399806 () Bool)

(assert (=> b!3878639 (= e!2399806 (and tp!1175807 (inv!55391 (tag!7264 (rule!9302 (h!46658 suffixTokens!72)))) (inv!55394 (transformation!6404 (rule!9302 (h!46658 suffixTokens!72)))) e!2399813))))

(declare-fun b!3878640 () Bool)

(declare-fun e!2399831 () Bool)

(declare-fun e!2399804 () Bool)

(assert (=> b!3878640 (= e!2399831 e!2399804)))

(declare-fun res!1571647 () Bool)

(assert (=> b!3878640 (=> res!1571647 e!2399804)))

(declare-fun lt!1353112 () List!41361)

(declare-fun lt!1353125 () List!41361)

(declare-fun lt!1353106 () List!41361)

(declare-fun lt!1353089 () List!41361)

(assert (=> b!3878640 (= res!1571647 (or (not (= lt!1353112 lt!1353125)) (not (= lt!1353112 lt!1353106)) (not (= lt!1353089 lt!1353106))))))

(assert (=> b!3878640 (= lt!1353125 lt!1353106)))

(declare-fun lt!1353093 () List!41361)

(declare-fun lt!1353122 () List!41361)

(declare-fun ++!10565 (List!41361 List!41361) List!41361)

(assert (=> b!3878640 (= lt!1353106 (++!10565 lt!1353093 lt!1353122))))

(declare-fun lt!1353086 () List!41361)

(declare-fun suffix!1176 () List!41361)

(assert (=> b!3878640 (= lt!1353122 (++!10565 lt!1353086 suffix!1176))))

(declare-datatypes ((Unit!59281 0))(
  ( (Unit!59282) )
))
(declare-fun lt!1353119 () Unit!59281)

(declare-fun lemmaConcatAssociativity!2279 (List!41361 List!41361 List!41361) Unit!59281)

(assert (=> b!3878640 (= lt!1353119 (lemmaConcatAssociativity!2279 lt!1353093 lt!1353086 suffix!1176))))

(declare-fun b!3878641 () Bool)

(declare-fun e!2399827 () Unit!59281)

(declare-fun Unit!59283 () Unit!59281)

(assert (=> b!3878641 (= e!2399827 Unit!59283)))

(declare-datatypes ((tuple2!40470 0))(
  ( (tuple2!40471 (_1!23369 Token!11946) (_2!23369 List!41361)) )
))
(declare-fun lt!1353081 () tuple2!40470)

(declare-datatypes ((tuple2!40472 0))(
  ( (tuple2!40473 (_1!23370 List!41362) (_2!23370 List!41361)) )
))
(declare-fun call!282842 () tuple2!40472)

(declare-datatypes ((LexerInterface!5993 0))(
  ( (LexerInterfaceExt!5990 (__x!25486 Int)) (Lexer!5991) )
))
(declare-fun thiss!20629 () LexerInterface!5993)

(declare-datatypes ((List!41363 0))(
  ( (Nil!41239) (Cons!41239 (h!46659 Rule!12608) (t!315102 List!41363)) )
))
(declare-fun rules!2768 () List!41363)

(declare-fun bm!282837 () Bool)

(declare-fun lexList!1761 (LexerInterface!5993 List!41363 List!41361) tuple2!40472)

(assert (=> bm!282837 (= call!282842 (lexList!1761 thiss!20629 rules!2768 (_2!23369 lt!1353081)))))

(declare-fun e!2399816 () Bool)

(declare-fun e!2399832 () Bool)

(declare-fun tp!1175806 () Bool)

(declare-fun b!3878642 () Bool)

(assert (=> b!3878642 (= e!2399816 (and tp!1175806 (inv!55391 (tag!7264 (h!46659 rules!2768))) (inv!55394 (transformation!6404 (h!46659 rules!2768))) e!2399832))))

(declare-fun b!3878643 () Bool)

(declare-fun e!2399841 () Bool)

(assert (=> b!3878643 (= e!2399841 true)))

(declare-fun lt!1353098 () Bool)

(declare-fun rulesValidInductive!2294 (LexerInterface!5993 List!41363) Bool)

(assert (=> b!3878643 (= lt!1353098 (rulesValidInductive!2294 thiss!20629 rules!2768))))

(declare-fun lt!1353088 () List!41361)

(declare-datatypes ((Option!8822 0))(
  ( (None!8821) (Some!8821 (v!39119 tuple2!40470)) )
))
(declare-fun lt!1353120 () Option!8822)

(declare-fun maxPrefix!3297 (LexerInterface!5993 List!41363 List!41361) Option!8822)

(assert (=> b!3878643 (= (maxPrefix!3297 thiss!20629 rules!2768 lt!1353088) (Some!8821 (tuple2!40471 (_1!23369 (v!39119 lt!1353120)) lt!1353086)))))

(declare-fun prefix!426 () List!41361)

(declare-fun lt!1353102 () Unit!59281)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!28 (LexerInterface!5993 List!41363 List!41361 List!41361 List!41361 Token!11946 List!41361 List!41361) Unit!59281)

(assert (=> b!3878643 (= lt!1353102 (lemmaMaxPrefixThenWithShorterSuffix!28 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41237 (_1!23369 (v!39119 lt!1353120)) (_2!23369 (v!39119 lt!1353120)) lt!1353086))))

(declare-fun b!3878644 () Bool)

(declare-fun e!2399814 () Bool)

(declare-fun e!2399818 () Bool)

(assert (=> b!3878644 (= e!2399814 (not e!2399818))))

(declare-fun res!1571630 () Bool)

(assert (=> b!3878644 (=> res!1571630 e!2399818)))

(assert (=> b!3878644 (= res!1571630 (not (= lt!1353089 lt!1353112)))))

(declare-fun lt!1353079 () tuple2!40472)

(assert (=> b!3878644 (= lt!1353079 (lexList!1761 thiss!20629 rules!2768 (_2!23369 (v!39119 lt!1353120))))))

(declare-fun lt!1353074 () List!41361)

(declare-fun lt!1353091 () TokenValue!6634)

(declare-fun lt!1353105 () Int)

(assert (=> b!3878644 (and (= (size!30981 (_1!23369 (v!39119 lt!1353120))) lt!1353105) (= (originalCharacters!7004 (_1!23369 (v!39119 lt!1353120))) lt!1353093) (= (tuple2!40471 (_1!23369 (v!39119 lt!1353120)) (_2!23369 (v!39119 lt!1353120))) (tuple2!40471 (Token!11947 lt!1353091 (rule!9302 (_1!23369 (v!39119 lt!1353120))) lt!1353105 lt!1353093) lt!1353074)))))

(declare-fun size!30982 (List!41361) Int)

(assert (=> b!3878644 (= lt!1353105 (size!30982 lt!1353093))))

(declare-fun e!2399821 () Bool)

(assert (=> b!3878644 e!2399821))

(declare-fun res!1571643 () Bool)

(assert (=> b!3878644 (=> (not res!1571643) (not e!2399821))))

(assert (=> b!3878644 (= res!1571643 (= (value!203148 (_1!23369 (v!39119 lt!1353120))) lt!1353091))))

(declare-fun apply!9647 (TokenValueInjection!12696 BalanceConc!24824) TokenValue!6634)

(declare-fun seqFromList!4675 (List!41361) BalanceConc!24824)

(assert (=> b!3878644 (= lt!1353091 (apply!9647 (transformation!6404 (rule!9302 (_1!23369 (v!39119 lt!1353120)))) (seqFromList!4675 lt!1353093)))))

(assert (=> b!3878644 (= (_2!23369 (v!39119 lt!1353120)) lt!1353074)))

(declare-fun lt!1353083 () Unit!59281)

(declare-fun lemmaSamePrefixThenSameSuffix!1724 (List!41361 List!41361 List!41361 List!41361 List!41361) Unit!59281)

(assert (=> b!3878644 (= lt!1353083 (lemmaSamePrefixThenSameSuffix!1724 lt!1353093 (_2!23369 (v!39119 lt!1353120)) lt!1353093 lt!1353074 lt!1353112))))

(declare-fun getSuffix!1958 (List!41361 List!41361) List!41361)

(assert (=> b!3878644 (= lt!1353074 (getSuffix!1958 lt!1353112 lt!1353093))))

(declare-fun isPrefix!3503 (List!41361 List!41361) Bool)

(assert (=> b!3878644 (isPrefix!3503 lt!1353093 lt!1353089)))

(assert (=> b!3878644 (= lt!1353089 (++!10565 lt!1353093 (_2!23369 (v!39119 lt!1353120))))))

(declare-fun lt!1353096 () Unit!59281)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2366 (List!41361 List!41361) Unit!59281)

(assert (=> b!3878644 (= lt!1353096 (lemmaConcatTwoListThenFirstIsPrefix!2366 lt!1353093 (_2!23369 (v!39119 lt!1353120))))))

(declare-fun list!15334 (BalanceConc!24824) List!41361)

(declare-fun charsOf!4232 (Token!11946) BalanceConc!24824)

(assert (=> b!3878644 (= lt!1353093 (list!15334 (charsOf!4232 (_1!23369 (v!39119 lt!1353120)))))))

(declare-fun ruleValid!2356 (LexerInterface!5993 Rule!12608) Bool)

(assert (=> b!3878644 (ruleValid!2356 thiss!20629 (rule!9302 (_1!23369 (v!39119 lt!1353120))))))

(declare-fun lt!1353084 () Unit!59281)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1436 (LexerInterface!5993 Rule!12608 List!41363) Unit!59281)

(assert (=> b!3878644 (= lt!1353084 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1436 thiss!20629 (rule!9302 (_1!23369 (v!39119 lt!1353120))) rules!2768))))

(declare-fun lt!1353111 () Unit!59281)

(declare-fun lemmaCharactersSize!1065 (Token!11946) Unit!59281)

(assert (=> b!3878644 (= lt!1353111 (lemmaCharactersSize!1065 (_1!23369 (v!39119 lt!1353120))))))

(declare-fun b!3878645 () Bool)

(declare-fun e!2399833 () Unit!59281)

(declare-fun Unit!59284 () Unit!59281)

(assert (=> b!3878645 (= e!2399833 Unit!59284)))

(declare-fun b!3878646 () Bool)

(declare-fun tp!1175800 () Bool)

(declare-fun e!2399812 () Bool)

(declare-fun inv!21 (TokenValue!6634) Bool)

(assert (=> b!3878646 (= e!2399812 (and (inv!21 (value!203148 (h!46658 prefixTokens!80))) e!2399817 tp!1175800))))

(declare-fun b!3878647 () Bool)

(declare-fun res!1571644 () Bool)

(declare-fun e!2399823 () Bool)

(assert (=> b!3878647 (=> res!1571644 e!2399823)))

(assert (=> b!3878647 (= res!1571644 (not (isPrefix!3503 lt!1353086 (_2!23369 (v!39119 lt!1353120)))))))

(declare-fun b!3878648 () Bool)

(declare-fun e!2399840 () Bool)

(declare-fun e!2399843 () Bool)

(assert (=> b!3878648 (= e!2399840 e!2399843)))

(declare-fun res!1571635 () Bool)

(assert (=> b!3878648 (=> res!1571635 e!2399843)))

(declare-fun lt!1353101 () List!41361)

(assert (=> b!3878648 (= res!1571635 (not (= lt!1353101 prefix!426)))))

(assert (=> b!3878648 (= lt!1353101 (++!10565 lt!1353093 lt!1353086))))

(assert (=> b!3878648 (= lt!1353086 (getSuffix!1958 prefix!426 lt!1353093))))

(declare-fun b!3878649 () Bool)

(declare-fun e!2399844 () Bool)

(assert (=> b!3878649 (= e!2399844 false)))

(declare-fun b!3878650 () Bool)

(declare-fun e!2399822 () Bool)

(assert (=> b!3878650 (= e!2399822 e!2399841)))

(declare-fun res!1571629 () Bool)

(assert (=> b!3878650 (=> res!1571629 e!2399841)))

(assert (=> b!3878650 (= res!1571629 (not (= lt!1353101 lt!1353088)))))

(assert (=> b!3878650 (= lt!1353088 (++!10565 prefix!426 Nil!41237))))

(declare-fun b!3878651 () Bool)

(declare-fun e!2399807 () Bool)

(declare-fun e!2399805 () Bool)

(assert (=> b!3878651 (= e!2399807 e!2399805)))

(declare-fun res!1571641 () Bool)

(assert (=> b!3878651 (=> res!1571641 e!2399805)))

(declare-fun lt!1353118 () Int)

(declare-fun lt!1353075 () Int)

(assert (=> b!3878651 (= res!1571641 (<= lt!1353118 lt!1353075))))

(declare-fun lt!1353127 () Unit!59281)

(assert (=> b!3878651 (= lt!1353127 e!2399833)))

(declare-fun c!674751 () Bool)

(assert (=> b!3878651 (= c!674751 (= lt!1353118 lt!1353075))))

(declare-fun lt!1353077 () Unit!59281)

(assert (=> b!3878651 (= lt!1353077 e!2399827)))

(declare-fun c!674749 () Bool)

(assert (=> b!3878651 (= c!674749 (< lt!1353118 lt!1353075))))

(assert (=> b!3878651 (= lt!1353075 (size!30982 suffix!1176))))

(assert (=> b!3878651 (= lt!1353118 (size!30982 (_2!23369 (v!39119 lt!1353120))))))

(assert (=> b!3878652 (= e!2399834 (and tp!1175803 tp!1175804))))

(declare-fun b!3878653 () Bool)

(assert (=> b!3878653 (= e!2399818 e!2399807)))

(declare-fun res!1571626 () Bool)

(assert (=> b!3878653 (=> res!1571626 e!2399807)))

(declare-fun lt!1353080 () List!41362)

(declare-fun lt!1353109 () tuple2!40472)

(declare-fun ++!10566 (List!41362 List!41362) List!41362)

(assert (=> b!3878653 (= res!1571626 (not (= lt!1353109 (tuple2!40473 (++!10566 lt!1353080 (_1!23370 lt!1353079)) (_2!23370 lt!1353079)))))))

(assert (=> b!3878653 (= lt!1353080 (Cons!41238 (_1!23369 (v!39119 lt!1353120)) Nil!41238))))

(declare-fun b!3878654 () Bool)

(declare-fun res!1571631 () Bool)

(declare-fun e!2399815 () Bool)

(assert (=> b!3878654 (=> (not res!1571631) (not e!2399815))))

(declare-fun rulesInvariant!5336 (LexerInterface!5993 List!41363) Bool)

(assert (=> b!3878654 (= res!1571631 (rulesInvariant!5336 thiss!20629 rules!2768))))

(declare-fun b!3878655 () Bool)

(declare-fun e!2399809 () Unit!59281)

(declare-fun Unit!59285 () Unit!59281)

(assert (=> b!3878655 (= e!2399809 Unit!59285)))

(declare-fun b!3878656 () Bool)

(declare-fun res!1571653 () Bool)

(assert (=> b!3878656 (=> (not res!1571653) (not e!2399815))))

(declare-fun isEmpty!24484 (List!41363) Bool)

(assert (=> b!3878656 (= res!1571653 (not (isEmpty!24484 rules!2768)))))

(declare-fun b!3878657 () Bool)

(declare-fun Unit!59286 () Unit!59281)

(assert (=> b!3878657 (= e!2399827 Unit!59286)))

(declare-fun lt!1353087 () Int)

(assert (=> b!3878657 (= lt!1353087 (size!30982 lt!1353112))))

(declare-fun lt!1353094 () Unit!59281)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1277 (LexerInterface!5993 List!41363 List!41361 List!41361 List!41361 Rule!12608) Unit!59281)

(assert (=> b!3878657 (= lt!1353094 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1277 thiss!20629 rules!2768 lt!1353093 lt!1353112 (_2!23369 (v!39119 lt!1353120)) (rule!9302 (_1!23369 (v!39119 lt!1353120)))))))

(declare-fun maxPrefixOneRule!2379 (LexerInterface!5993 Rule!12608 List!41361) Option!8822)

(assert (=> b!3878657 (= (maxPrefixOneRule!2379 thiss!20629 (rule!9302 (_1!23369 (v!39119 lt!1353120))) lt!1353112) (Some!8821 (tuple2!40471 (Token!11947 lt!1353091 (rule!9302 (_1!23369 (v!39119 lt!1353120))) lt!1353105 lt!1353093) (_2!23369 (v!39119 lt!1353120)))))))

(declare-fun get!13646 (Option!8822) tuple2!40470)

(assert (=> b!3878657 (= lt!1353081 (get!13646 lt!1353120))))

(declare-fun c!674752 () Bool)

(assert (=> b!3878657 (= c!674752 (< (size!30982 (_2!23369 lt!1353081)) lt!1353075))))

(declare-fun lt!1353114 () Unit!59281)

(assert (=> b!3878657 (= lt!1353114 e!2399809)))

(assert (=> b!3878657 false))

(declare-fun b!3878658 () Bool)

(declare-fun e!2399828 () Bool)

(assert (=> b!3878658 (= e!2399828 e!2399823)))

(declare-fun res!1571640 () Bool)

(assert (=> b!3878658 (=> res!1571640 e!2399823)))

(assert (=> b!3878658 (= res!1571640 (not (= lt!1353120 (Some!8821 (tuple2!40471 (_1!23369 (v!39119 lt!1353120)) (_2!23369 (v!39119 lt!1353120)))))))))

(declare-fun lt!1353116 () List!41362)

(assert (=> b!3878658 (= (lexList!1761 thiss!20629 rules!2768 lt!1353086) (tuple2!40473 lt!1353116 Nil!41237))))

(declare-fun suffixResult!91 () List!41361)

(declare-fun lt!1353123 () Unit!59281)

(declare-fun lemmaLexThenLexPrefix!593 (LexerInterface!5993 List!41363 List!41361 List!41361 List!41362 List!41362 List!41361) Unit!59281)

(assert (=> b!3878658 (= lt!1353123 (lemmaLexThenLexPrefix!593 thiss!20629 rules!2768 lt!1353086 suffix!1176 lt!1353116 suffixTokens!72 suffixResult!91))))

(declare-fun tp!1175810 () Bool)

(declare-fun e!2399839 () Bool)

(declare-fun b!3878659 () Bool)

(assert (=> b!3878659 (= e!2399839 (and (inv!21 (value!203148 (h!46658 suffixTokens!72))) e!2399806 tp!1175810))))

(declare-fun b!3878660 () Bool)

(declare-fun res!1571625 () Bool)

(assert (=> b!3878660 (=> res!1571625 e!2399805)))

(declare-fun head!8232 (List!41362) Token!11946)

(assert (=> b!3878660 (= res!1571625 (not (= (head!8232 prefixTokens!80) (_1!23369 (v!39119 lt!1353120)))))))

(assert (=> b!3878661 (= e!2399832 (and tp!1175808 tp!1175812))))

(declare-fun b!3878662 () Bool)

(assert (=> b!3878662 (= e!2399805 e!2399840)))

(declare-fun res!1571652 () Bool)

(assert (=> b!3878662 (=> res!1571652 e!2399840)))

(declare-fun lt!1353090 () Int)

(assert (=> b!3878662 (= res!1571652 (>= lt!1353105 lt!1353090))))

(assert (=> b!3878662 (= lt!1353090 (size!30982 prefix!426))))

(assert (=> b!3878662 (isPrefix!3503 lt!1353093 prefix!426)))

(declare-fun lt!1353110 () Unit!59281)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!253 (List!41361 List!41361 List!41361) Unit!59281)

(assert (=> b!3878662 (= lt!1353110 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!253 prefix!426 lt!1353093 lt!1353112))))

(assert (=> b!3878662 (isPrefix!3503 prefix!426 lt!1353112)))

(declare-fun lt!1353085 () Unit!59281)

(assert (=> b!3878662 (= lt!1353085 (lemmaConcatTwoListThenFirstIsPrefix!2366 prefix!426 suffix!1176))))

(declare-fun b!3878663 () Bool)

(declare-fun res!1571632 () Bool)

(assert (=> b!3878663 (=> (not res!1571632) (not e!2399815))))

(declare-fun isEmpty!24485 (List!41362) Bool)

(assert (=> b!3878663 (= res!1571632 (not (isEmpty!24485 prefixTokens!80)))))

(declare-fun b!3878664 () Bool)

(declare-fun e!2399808 () Unit!59281)

(declare-fun Unit!59287 () Unit!59281)

(assert (=> b!3878664 (= e!2399808 Unit!59287)))

(declare-fun lt!1353082 () Unit!59281)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!488 (List!41361 List!41361 List!41361 List!41361) Unit!59281)

(assert (=> b!3878664 (= lt!1353082 (lemmaConcatSameAndSameSizesThenSameLists!488 lt!1353093 (_2!23369 (v!39119 lt!1353120)) lt!1353093 (_2!23369 lt!1353081)))))

(assert (=> b!3878664 (= (_2!23369 (v!39119 lt!1353120)) (_2!23369 lt!1353081))))

(declare-fun lt!1353115 () Unit!59281)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!64 (LexerInterface!5993 List!41363 List!41361 List!41361 List!41362 List!41361) Unit!59281)

(assert (=> b!3878664 (= lt!1353115 (lemmaLexWithSmallerInputCannotProduceSameResults!64 thiss!20629 rules!2768 suffix!1176 (_2!23369 lt!1353081) suffixTokens!72 suffixResult!91))))

(declare-fun res!1571651 () Bool)

(declare-fun lt!1353100 () tuple2!40472)

(assert (=> b!3878664 (= res!1571651 (not (= call!282842 lt!1353100)))))

(declare-fun e!2399801 () Bool)

(assert (=> b!3878664 (=> (not res!1571651) (not e!2399801))))

(assert (=> b!3878664 e!2399801))

(declare-fun res!1571633 () Bool)

(assert (=> start!364148 (=> (not res!1571633) (not e!2399815))))

(get-info :version)

(assert (=> start!364148 (= res!1571633 ((_ is Lexer!5991) thiss!20629))))

(assert (=> start!364148 e!2399815))

(declare-fun e!2399803 () Bool)

(assert (=> start!364148 e!2399803))

(assert (=> start!364148 true))

(declare-fun e!2399825 () Bool)

(assert (=> start!364148 e!2399825))

(declare-fun e!2399811 () Bool)

(assert (=> start!364148 e!2399811))

(declare-fun e!2399842 () Bool)

(assert (=> start!364148 e!2399842))

(declare-fun e!2399836 () Bool)

(assert (=> start!364148 e!2399836))

(declare-fun e!2399826 () Bool)

(assert (=> start!364148 e!2399826))

(declare-fun b!3878665 () Bool)

(declare-fun res!1571650 () Bool)

(assert (=> b!3878665 (=> res!1571650 e!2399823)))

(assert (=> b!3878665 (= res!1571650 (<= lt!1353075 (size!30982 Nil!41237)))))

(declare-fun b!3878666 () Bool)

(declare-fun Unit!59288 () Unit!59281)

(assert (=> b!3878666 (= e!2399808 Unit!59288)))

(declare-fun lt!1353092 () Unit!59281)

(declare-fun lt!1353113 () List!41362)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!64 (LexerInterface!5993 List!41363 List!41361 List!41361 List!41362 List!41361 List!41362) Unit!59281)

(assert (=> b!3878666 (= lt!1353092 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!64 thiss!20629 rules!2768 suffix!1176 (_2!23369 lt!1353081) suffixTokens!72 suffixResult!91 lt!1353113))))

(declare-fun res!1571648 () Bool)

(assert (=> b!3878666 (= res!1571648 (not (= call!282842 (tuple2!40473 (++!10566 lt!1353113 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3878666 (=> (not res!1571648) (not e!2399844))))

(assert (=> b!3878666 e!2399844))

(declare-fun b!3878667 () Bool)

(declare-fun tp_is_empty!19589 () Bool)

(declare-fun tp!1175799 () Bool)

(assert (=> b!3878667 (= e!2399825 (and tp_is_empty!19589 tp!1175799))))

(declare-fun b!3878668 () Bool)

(declare-fun e!2399830 () Bool)

(declare-fun e!2399824 () Bool)

(assert (=> b!3878668 (= e!2399830 e!2399824)))

(declare-fun res!1571624 () Bool)

(assert (=> b!3878668 (=> (not res!1571624) (not e!2399824))))

(assert (=> b!3878668 (= res!1571624 (= (lexList!1761 thiss!20629 rules!2768 suffix!1176) lt!1353100))))

(assert (=> b!3878668 (= lt!1353100 (tuple2!40473 suffixTokens!72 suffixResult!91))))

(declare-fun b!3878669 () Bool)

(assert (=> b!3878669 (= e!2399801 false)))

(declare-fun b!3878670 () Bool)

(assert (=> b!3878670 (= e!2399821 (= (size!30981 (_1!23369 (v!39119 lt!1353120))) (size!30982 (originalCharacters!7004 (_1!23369 (v!39119 lt!1353120))))))))

(declare-fun b!3878671 () Bool)

(declare-fun e!2399837 () Bool)

(assert (=> b!3878671 (= e!2399837 e!2399828)))

(declare-fun res!1571636 () Bool)

(assert (=> b!3878671 (=> res!1571636 e!2399828)))

(declare-fun lt!1353121 () List!41362)

(declare-fun lt!1353078 () List!41362)

(assert (=> b!3878671 (= res!1571636 (not (= lt!1353121 lt!1353078)))))

(declare-fun lt!1353117 () List!41362)

(assert (=> b!3878671 (= lt!1353121 (++!10566 lt!1353080 lt!1353117))))

(assert (=> b!3878671 (= lt!1353121 (++!10566 (++!10566 lt!1353080 lt!1353116) suffixTokens!72))))

(declare-fun lt!1353073 () Unit!59281)

(declare-fun lemmaConcatAssociativity!2280 (List!41362 List!41362 List!41362) Unit!59281)

(assert (=> b!3878671 (= lt!1353073 (lemmaConcatAssociativity!2280 lt!1353080 lt!1353116 suffixTokens!72))))

(declare-fun lt!1353108 () Unit!59281)

(declare-fun e!2399810 () Unit!59281)

(assert (=> b!3878671 (= lt!1353108 e!2399810)))

(declare-fun c!674753 () Bool)

(assert (=> b!3878671 (= c!674753 (isEmpty!24485 lt!1353116))))

(declare-fun b!3878672 () Bool)

(declare-fun res!1571645 () Bool)

(assert (=> b!3878672 (=> res!1571645 e!2399822)))

(assert (=> b!3878672 (= res!1571645 (<= lt!1353090 lt!1353105))))

(declare-fun b!3878673 () Bool)

(declare-fun res!1571649 () Bool)

(assert (=> b!3878673 (=> res!1571649 e!2399807)))

(assert (=> b!3878673 (= res!1571649 (or (not (= lt!1353079 (tuple2!40473 (_1!23370 lt!1353079) (_2!23370 lt!1353079)))) (= (_2!23369 (v!39119 lt!1353120)) suffix!1176)))))

(declare-fun b!3878674 () Bool)

(declare-fun e!2399819 () Bool)

(assert (=> b!3878674 (= e!2399819 e!2399837)))

(declare-fun res!1571642 () Bool)

(assert (=> b!3878674 (=> res!1571642 e!2399837)))

(declare-fun lt!1353104 () tuple2!40472)

(assert (=> b!3878674 (= res!1571642 (not (= lt!1353079 lt!1353104)))))

(assert (=> b!3878674 (= lt!1353104 (tuple2!40473 lt!1353117 suffixResult!91))))

(assert (=> b!3878674 (= lt!1353117 (++!10566 lt!1353116 suffixTokens!72))))

(declare-fun tail!5949 (List!41362) List!41362)

(assert (=> b!3878674 (= lt!1353116 (tail!5949 prefixTokens!80))))

(assert (=> b!3878674 (isPrefix!3503 lt!1353086 lt!1353122)))

(declare-fun lt!1353099 () Unit!59281)

(assert (=> b!3878674 (= lt!1353099 (lemmaConcatTwoListThenFirstIsPrefix!2366 lt!1353086 suffix!1176))))

(declare-fun b!3878675 () Bool)

(declare-fun tp!1175809 () Bool)

(assert (=> b!3878675 (= e!2399803 (and tp_is_empty!19589 tp!1175809))))

(declare-fun b!3878676 () Bool)

(declare-fun tp!1175814 () Bool)

(assert (=> b!3878676 (= e!2399811 (and e!2399816 tp!1175814))))

(declare-fun b!3878677 () Bool)

(declare-fun res!1571634 () Bool)

(assert (=> b!3878677 (=> (not res!1571634) (not e!2399815))))

(declare-fun isEmpty!24486 (List!41361) Bool)

(assert (=> b!3878677 (= res!1571634 (not (isEmpty!24486 prefix!426)))))

(declare-fun b!3878678 () Bool)

(declare-fun Unit!59289 () Unit!59281)

(assert (=> b!3878678 (= e!2399810 Unit!59289)))

(declare-fun b!3878679 () Bool)

(assert (=> b!3878679 (= e!2399824 e!2399814)))

(declare-fun res!1571646 () Bool)

(assert (=> b!3878679 (=> (not res!1571646) (not e!2399814))))

(assert (=> b!3878679 (= res!1571646 ((_ is Some!8821) lt!1353120))))

(assert (=> b!3878679 (= lt!1353120 (maxPrefix!3297 thiss!20629 rules!2768 lt!1353112))))

(declare-fun b!3878680 () Bool)

(assert (=> b!3878680 (= e!2399823 e!2399822)))

(declare-fun res!1571638 () Bool)

(assert (=> b!3878680 (=> res!1571638 e!2399822)))

(assert (=> b!3878680 (= res!1571638 (not (isPrefix!3503 Nil!41237 suffix!1176)))))

(assert (=> b!3878680 (isPrefix!3503 Nil!41237 (++!10565 Nil!41237 suffix!1176))))

(declare-fun lt!1353095 () Unit!59281)

(assert (=> b!3878680 (= lt!1353095 (lemmaConcatTwoListThenFirstIsPrefix!2366 Nil!41237 suffix!1176))))

(declare-fun b!3878681 () Bool)

(assert (=> b!3878681 (= e!2399815 e!2399830)))

(declare-fun res!1571623 () Bool)

(assert (=> b!3878681 (=> (not res!1571623) (not e!2399830))))

(assert (=> b!3878681 (= res!1571623 (= lt!1353109 (tuple2!40473 lt!1353078 suffixResult!91)))))

(assert (=> b!3878681 (= lt!1353109 (lexList!1761 thiss!20629 rules!2768 lt!1353112))))

(assert (=> b!3878681 (= lt!1353078 (++!10566 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3878681 (= lt!1353112 (++!10565 prefix!426 suffix!1176))))

(declare-fun b!3878682 () Bool)

(declare-fun tp!1175802 () Bool)

(assert (=> b!3878682 (= e!2399826 (and tp_is_empty!19589 tp!1175802))))

(assert (=> b!3878683 (= e!2399813 (and tp!1175805 tp!1175813))))

(declare-fun b!3878684 () Bool)

(assert (=> b!3878684 (= e!2399843 e!2399831)))

(declare-fun res!1571628 () Bool)

(assert (=> b!3878684 (=> res!1571628 e!2399831)))

(assert (=> b!3878684 (= res!1571628 (or (not (= lt!1353125 lt!1353112)) (not (= lt!1353125 lt!1353089))))))

(assert (=> b!3878684 (= lt!1353125 (++!10565 lt!1353101 suffix!1176))))

(declare-fun b!3878685 () Bool)

(declare-fun res!1571627 () Bool)

(assert (=> b!3878685 (=> res!1571627 e!2399823)))

(assert (=> b!3878685 (= res!1571627 (isEmpty!24486 suffix!1176))))

(declare-fun b!3878686 () Bool)

(declare-fun tp!1175798 () Bool)

(declare-fun inv!55395 (Token!11946) Bool)

(assert (=> b!3878686 (= e!2399842 (and (inv!55395 (h!46658 prefixTokens!80)) e!2399812 tp!1175798))))

(declare-fun tp!1175811 () Bool)

(declare-fun b!3878687 () Bool)

(assert (=> b!3878687 (= e!2399836 (and (inv!55395 (h!46658 suffixTokens!72)) e!2399839 tp!1175811))))

(declare-fun b!3878688 () Bool)

(declare-fun Unit!59290 () Unit!59281)

(assert (=> b!3878688 (= e!2399810 Unit!59290)))

(declare-fun lt!1353107 () Unit!59281)

(assert (=> b!3878688 (= lt!1353107 (lemmaLexWithSmallerInputCannotProduceSameResults!64 thiss!20629 rules!2768 (_2!23369 (v!39119 lt!1353120)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3878688 false))

(declare-fun b!3878689 () Bool)

(declare-fun Unit!59291 () Unit!59281)

(assert (=> b!3878689 (= e!2399833 Unit!59291)))

(declare-fun lt!1353097 () Unit!59281)

(assert (=> b!3878689 (= lt!1353097 (lemmaConcatTwoListThenFirstIsPrefix!2366 prefix!426 suffix!1176))))

(assert (=> b!3878689 (isPrefix!3503 prefix!426 lt!1353112)))

(declare-fun lt!1353126 () Unit!59281)

(declare-fun lemmaIsPrefixSameLengthThenSameList!755 (List!41361 List!41361 List!41361) Unit!59281)

(assert (=> b!3878689 (= lt!1353126 (lemmaIsPrefixSameLengthThenSameList!755 lt!1353093 prefix!426 lt!1353112))))

(assert (=> b!3878689 (= lt!1353093 prefix!426)))

(declare-fun lt!1353124 () Unit!59281)

(assert (=> b!3878689 (= lt!1353124 (lemmaSamePrefixThenSameSuffix!1724 lt!1353093 (_2!23369 (v!39119 lt!1353120)) prefix!426 suffix!1176 lt!1353112))))

(assert (=> b!3878689 false))

(declare-fun b!3878690 () Bool)

(assert (=> b!3878690 (= e!2399804 e!2399819)))

(declare-fun res!1571637 () Bool)

(assert (=> b!3878690 (=> res!1571637 e!2399819)))

(assert (=> b!3878690 (= res!1571637 (not (= lt!1353122 (_2!23369 (v!39119 lt!1353120)))))))

(assert (=> b!3878690 (= (_2!23369 (v!39119 lt!1353120)) lt!1353122)))

(declare-fun lt!1353103 () Unit!59281)

(assert (=> b!3878690 (= lt!1353103 (lemmaSamePrefixThenSameSuffix!1724 lt!1353093 (_2!23369 (v!39119 lt!1353120)) lt!1353093 lt!1353122 lt!1353112))))

(assert (=> b!3878690 (isPrefix!3503 lt!1353093 lt!1353106)))

(declare-fun lt!1353076 () Unit!59281)

(assert (=> b!3878690 (= lt!1353076 (lemmaConcatTwoListThenFirstIsPrefix!2366 lt!1353093 lt!1353122))))

(declare-fun b!3878691 () Bool)

(declare-fun c!674750 () Bool)

(assert (=> b!3878691 (= c!674750 (isEmpty!24485 lt!1353113))))

(assert (=> b!3878691 (= lt!1353113 (tail!5949 prefixTokens!80))))

(assert (=> b!3878691 (= e!2399809 e!2399808)))

(declare-fun b!3878692 () Bool)

(declare-fun res!1571639 () Bool)

(assert (=> b!3878692 (=> res!1571639 e!2399828)))

(assert (=> b!3878692 (= res!1571639 (not (= (lexList!1761 thiss!20629 rules!2768 lt!1353122) lt!1353104)))))

(assert (= (and start!364148 res!1571633) b!3878656))

(assert (= (and b!3878656 res!1571653) b!3878654))

(assert (= (and b!3878654 res!1571631) b!3878663))

(assert (= (and b!3878663 res!1571632) b!3878677))

(assert (= (and b!3878677 res!1571634) b!3878681))

(assert (= (and b!3878681 res!1571623) b!3878668))

(assert (= (and b!3878668 res!1571624) b!3878679))

(assert (= (and b!3878679 res!1571646) b!3878644))

(assert (= (and b!3878644 res!1571643) b!3878670))

(assert (= (and b!3878644 (not res!1571630)) b!3878653))

(assert (= (and b!3878653 (not res!1571626)) b!3878673))

(assert (= (and b!3878673 (not res!1571649)) b!3878651))

(assert (= (and b!3878651 c!674749) b!3878657))

(assert (= (and b!3878651 (not c!674749)) b!3878641))

(assert (= (and b!3878657 c!674752) b!3878691))

(assert (= (and b!3878657 (not c!674752)) b!3878655))

(assert (= (and b!3878691 c!674750) b!3878664))

(assert (= (and b!3878691 (not c!674750)) b!3878666))

(assert (= (and b!3878664 res!1571651) b!3878669))

(assert (= (and b!3878666 res!1571648) b!3878649))

(assert (= (or b!3878664 b!3878666) bm!282837))

(assert (= (and b!3878651 c!674751) b!3878689))

(assert (= (and b!3878651 (not c!674751)) b!3878645))

(assert (= (and b!3878651 (not res!1571641)) b!3878660))

(assert (= (and b!3878660 (not res!1571625)) b!3878662))

(assert (= (and b!3878662 (not res!1571652)) b!3878648))

(assert (= (and b!3878648 (not res!1571635)) b!3878684))

(assert (= (and b!3878684 (not res!1571628)) b!3878640))

(assert (= (and b!3878640 (not res!1571647)) b!3878690))

(assert (= (and b!3878690 (not res!1571637)) b!3878674))

(assert (= (and b!3878674 (not res!1571642)) b!3878671))

(assert (= (and b!3878671 c!674753) b!3878688))

(assert (= (and b!3878671 (not c!674753)) b!3878678))

(assert (= (and b!3878671 (not res!1571636)) b!3878692))

(assert (= (and b!3878692 (not res!1571639)) b!3878658))

(assert (= (and b!3878658 (not res!1571640)) b!3878685))

(assert (= (and b!3878685 (not res!1571627)) b!3878647))

(assert (= (and b!3878647 (not res!1571644)) b!3878665))

(assert (= (and b!3878665 (not res!1571650)) b!3878680))

(assert (= (and b!3878680 (not res!1571638)) b!3878672))

(assert (= (and b!3878672 (not res!1571645)) b!3878650))

(assert (= (and b!3878650 (not res!1571629)) b!3878643))

(assert (= (and start!364148 ((_ is Cons!41237) suffixResult!91)) b!3878675))

(assert (= (and start!364148 ((_ is Cons!41237) suffix!1176)) b!3878667))

(assert (= b!3878642 b!3878661))

(assert (= b!3878676 b!3878642))

(assert (= (and start!364148 ((_ is Cons!41239) rules!2768)) b!3878676))

(assert (= b!3878638 b!3878652))

(assert (= b!3878646 b!3878638))

(assert (= b!3878686 b!3878646))

(assert (= (and start!364148 ((_ is Cons!41238) prefixTokens!80)) b!3878686))

(assert (= b!3878639 b!3878683))

(assert (= b!3878659 b!3878639))

(assert (= b!3878687 b!3878659))

(assert (= (and start!364148 ((_ is Cons!41238) suffixTokens!72)) b!3878687))

(assert (= (and start!364148 ((_ is Cons!41237) prefix!426)) b!3878682))

(declare-fun m!4437043 () Bool)

(assert (=> bm!282837 m!4437043))

(declare-fun m!4437045 () Bool)

(assert (=> b!3878670 m!4437045))

(declare-fun m!4437047 () Bool)

(assert (=> b!3878650 m!4437047))

(declare-fun m!4437049 () Bool)

(assert (=> b!3878671 m!4437049))

(declare-fun m!4437051 () Bool)

(assert (=> b!3878671 m!4437051))

(declare-fun m!4437053 () Bool)

(assert (=> b!3878671 m!4437053))

(declare-fun m!4437055 () Bool)

(assert (=> b!3878671 m!4437055))

(assert (=> b!3878671 m!4437049))

(declare-fun m!4437057 () Bool)

(assert (=> b!3878671 m!4437057))

(declare-fun m!4437059 () Bool)

(assert (=> b!3878679 m!4437059))

(declare-fun m!4437061 () Bool)

(assert (=> b!3878662 m!4437061))

(declare-fun m!4437063 () Bool)

(assert (=> b!3878662 m!4437063))

(declare-fun m!4437065 () Bool)

(assert (=> b!3878662 m!4437065))

(declare-fun m!4437067 () Bool)

(assert (=> b!3878662 m!4437067))

(declare-fun m!4437069 () Bool)

(assert (=> b!3878662 m!4437069))

(declare-fun m!4437071 () Bool)

(assert (=> b!3878648 m!4437071))

(declare-fun m!4437073 () Bool)

(assert (=> b!3878648 m!4437073))

(declare-fun m!4437075 () Bool)

(assert (=> b!3878639 m!4437075))

(declare-fun m!4437077 () Bool)

(assert (=> b!3878639 m!4437077))

(declare-fun m!4437079 () Bool)

(assert (=> b!3878647 m!4437079))

(declare-fun m!4437081 () Bool)

(assert (=> b!3878643 m!4437081))

(declare-fun m!4437083 () Bool)

(assert (=> b!3878643 m!4437083))

(declare-fun m!4437085 () Bool)

(assert (=> b!3878643 m!4437085))

(declare-fun m!4437087 () Bool)

(assert (=> b!3878638 m!4437087))

(declare-fun m!4437089 () Bool)

(assert (=> b!3878638 m!4437089))

(declare-fun m!4437091 () Bool)

(assert (=> b!3878680 m!4437091))

(declare-fun m!4437093 () Bool)

(assert (=> b!3878680 m!4437093))

(assert (=> b!3878680 m!4437093))

(declare-fun m!4437095 () Bool)

(assert (=> b!3878680 m!4437095))

(declare-fun m!4437097 () Bool)

(assert (=> b!3878680 m!4437097))

(declare-fun m!4437099 () Bool)

(assert (=> b!3878651 m!4437099))

(declare-fun m!4437101 () Bool)

(assert (=> b!3878651 m!4437101))

(declare-fun m!4437103 () Bool)

(assert (=> b!3878653 m!4437103))

(declare-fun m!4437105 () Bool)

(assert (=> b!3878674 m!4437105))

(declare-fun m!4437107 () Bool)

(assert (=> b!3878674 m!4437107))

(declare-fun m!4437109 () Bool)

(assert (=> b!3878674 m!4437109))

(declare-fun m!4437111 () Bool)

(assert (=> b!3878674 m!4437111))

(declare-fun m!4437113 () Bool)

(assert (=> b!3878660 m!4437113))

(declare-fun m!4437115 () Bool)

(assert (=> b!3878654 m!4437115))

(declare-fun m!4437117 () Bool)

(assert (=> b!3878685 m!4437117))

(declare-fun m!4437119 () Bool)

(assert (=> b!3878656 m!4437119))

(declare-fun m!4437121 () Bool)

(assert (=> b!3878688 m!4437121))

(declare-fun m!4437123 () Bool)

(assert (=> b!3878666 m!4437123))

(declare-fun m!4437125 () Bool)

(assert (=> b!3878666 m!4437125))

(declare-fun m!4437127 () Bool)

(assert (=> b!3878681 m!4437127))

(declare-fun m!4437129 () Bool)

(assert (=> b!3878681 m!4437129))

(declare-fun m!4437131 () Bool)

(assert (=> b!3878681 m!4437131))

(declare-fun m!4437133 () Bool)

(assert (=> b!3878663 m!4437133))

(declare-fun m!4437135 () Bool)

(assert (=> b!3878640 m!4437135))

(declare-fun m!4437137 () Bool)

(assert (=> b!3878640 m!4437137))

(declare-fun m!4437139 () Bool)

(assert (=> b!3878640 m!4437139))

(declare-fun m!4437141 () Bool)

(assert (=> b!3878690 m!4437141))

(declare-fun m!4437143 () Bool)

(assert (=> b!3878690 m!4437143))

(declare-fun m!4437145 () Bool)

(assert (=> b!3878690 m!4437145))

(assert (=> b!3878689 m!4437067))

(assert (=> b!3878689 m!4437063))

(declare-fun m!4437147 () Bool)

(assert (=> b!3878689 m!4437147))

(declare-fun m!4437149 () Bool)

(assert (=> b!3878689 m!4437149))

(declare-fun m!4437151 () Bool)

(assert (=> b!3878657 m!4437151))

(declare-fun m!4437153 () Bool)

(assert (=> b!3878657 m!4437153))

(declare-fun m!4437155 () Bool)

(assert (=> b!3878657 m!4437155))

(declare-fun m!4437157 () Bool)

(assert (=> b!3878657 m!4437157))

(declare-fun m!4437159 () Bool)

(assert (=> b!3878657 m!4437159))

(declare-fun m!4437161 () Bool)

(assert (=> b!3878664 m!4437161))

(declare-fun m!4437163 () Bool)

(assert (=> b!3878664 m!4437163))

(declare-fun m!4437165 () Bool)

(assert (=> b!3878665 m!4437165))

(declare-fun m!4437167 () Bool)

(assert (=> b!3878687 m!4437167))

(declare-fun m!4437169 () Bool)

(assert (=> b!3878686 m!4437169))

(declare-fun m!4437171 () Bool)

(assert (=> b!3878677 m!4437171))

(declare-fun m!4437173 () Bool)

(assert (=> b!3878684 m!4437173))

(declare-fun m!4437175 () Bool)

(assert (=> b!3878692 m!4437175))

(declare-fun m!4437177 () Bool)

(assert (=> b!3878658 m!4437177))

(declare-fun m!4437179 () Bool)

(assert (=> b!3878658 m!4437179))

(declare-fun m!4437181 () Bool)

(assert (=> b!3878646 m!4437181))

(declare-fun m!4437183 () Bool)

(assert (=> b!3878642 m!4437183))

(declare-fun m!4437185 () Bool)

(assert (=> b!3878642 m!4437185))

(declare-fun m!4437187 () Bool)

(assert (=> b!3878668 m!4437187))

(declare-fun m!4437189 () Bool)

(assert (=> b!3878691 m!4437189))

(assert (=> b!3878691 m!4437107))

(declare-fun m!4437191 () Bool)

(assert (=> b!3878659 m!4437191))

(declare-fun m!4437193 () Bool)

(assert (=> b!3878644 m!4437193))

(declare-fun m!4437195 () Bool)

(assert (=> b!3878644 m!4437195))

(declare-fun m!4437197 () Bool)

(assert (=> b!3878644 m!4437197))

(assert (=> b!3878644 m!4437195))

(declare-fun m!4437199 () Bool)

(assert (=> b!3878644 m!4437199))

(declare-fun m!4437201 () Bool)

(assert (=> b!3878644 m!4437201))

(declare-fun m!4437203 () Bool)

(assert (=> b!3878644 m!4437203))

(declare-fun m!4437205 () Bool)

(assert (=> b!3878644 m!4437205))

(declare-fun m!4437207 () Bool)

(assert (=> b!3878644 m!4437207))

(declare-fun m!4437209 () Bool)

(assert (=> b!3878644 m!4437209))

(declare-fun m!4437211 () Bool)

(assert (=> b!3878644 m!4437211))

(declare-fun m!4437213 () Bool)

(assert (=> b!3878644 m!4437213))

(declare-fun m!4437215 () Bool)

(assert (=> b!3878644 m!4437215))

(declare-fun m!4437217 () Bool)

(assert (=> b!3878644 m!4437217))

(assert (=> b!3878644 m!4437199))

(declare-fun m!4437219 () Bool)

(assert (=> b!3878644 m!4437219))

(check-sat (not b!3878667) (not b_next!105671) (not b_next!105673) (not b!3878670) (not b!3878674) (not b!3878640) (not b!3878691) b_and!290869 (not b!3878651) (not b!3878647) (not b!3878690) (not b!3878658) (not b!3878650) (not b!3878663) (not b!3878684) (not b!3878653) b_and!290861 (not b!3878638) (not b!3878643) (not b!3878657) (not b!3878660) (not b_next!105669) (not b!3878685) (not b!3878665) (not b!3878666) (not b!3878689) (not b!3878686) (not b!3878668) (not b!3878688) b_and!290863 (not b_next!105679) (not b!3878639) tp_is_empty!19589 (not b!3878692) b_and!290859 (not b!3878676) (not b!3878679) (not b_next!105677) (not b!3878662) (not b_next!105675) (not b!3878671) b_and!290867 (not b!3878656) (not b!3878646) (not b!3878644) (not b!3878680) (not b!3878681) (not b!3878654) (not b!3878642) (not b!3878648) (not b!3878682) (not b!3878677) (not bm!282837) (not b!3878664) (not b!3878675) (not b!3878687) b_and!290865 (not b!3878659))
(check-sat b_and!290869 b_and!290861 (not b_next!105671) (not b_next!105669) (not b_next!105673) b_and!290859 (not b_next!105677) (not b_next!105675) b_and!290867 b_and!290865 b_and!290863 (not b_next!105679))
